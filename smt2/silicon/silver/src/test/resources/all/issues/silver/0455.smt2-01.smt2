(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 02:02:29
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
(declare-sort $FVF<next> 0)
(declare-sort $PSF<list2> 0)
(declare-sort $PSF<list> 0)
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
(declare-fun $SortWrappers.$FVF<next>To$Snap ($FVF<next>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<next> ($Snap) $FVF<next>)
(assert (forall ((x $FVF<next>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<next>($SortWrappers.$FVF<next>To$Snap x)))
    :pattern (($SortWrappers.$FVF<next>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<next>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<next>To$Snap($SortWrappers.$SnapTo$FVF<next> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<next> x))
    :qid |$Snap.$FVF<next>To$SnapTo$FVF<next>|
    )))
; Declaring additional sort wrappers
(declare-fun $SortWrappers.$PSF<list2>To$Snap ($PSF<list2>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<list2> ($Snap) $PSF<list2>)
(assert (forall ((x $PSF<list2>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<list2>($SortWrappers.$PSF<list2>To$Snap x)))
    :pattern (($SortWrappers.$PSF<list2>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<list2>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<list2>To$Snap($SortWrappers.$SnapTo$PSF<list2> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<list2> x))
    :qid |$Snap.$PSF<list2>To$SnapTo$PSF<list2>|
    )))
(declare-fun $SortWrappers.$PSF<list>To$Snap ($PSF<list>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<list> ($Snap) $PSF<list>)
(assert (forall ((x $PSF<list>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<list>($SortWrappers.$PSF<list>To$Snap x)))
    :pattern (($SortWrappers.$PSF<list>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<list>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<list>To$Snap($SortWrappers.$SnapTo$PSF<list> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<list> x))
    :qid |$Snap.$PSF<list>To$SnapTo$PSF<list>|
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
; /field_value_functions_declarations.smt2 [next: Ref]
(declare-fun $FVF.domain_next ($FVF<next>) Set<$Ref>)
(declare-fun $FVF.lookup_next ($FVF<next> $Ref) $Ref)
(declare-fun $FVF.after_next ($FVF<next> $FVF<next>) Bool)
(declare-fun $FVF.loc_next ($Ref $Ref) Bool)
(declare-fun $FVF.perm_next ($FPM $Ref) $Perm)
(declare-const $fvfTOP_next $FVF<next>)
; /predicate_snap_functions_declarations.smt2 [list2: Snap]
(declare-fun $PSF.domain_list2 ($PSF<list2>) Set<$Snap>)
(declare-fun $PSF.lookup_list2 ($PSF<list2> $Snap) $Snap)
(declare-fun $PSF.after_list2 ($PSF<list2> $PSF<list2>) Bool)
(declare-fun $PSF.loc_list2 ($Snap $Snap) Bool)
(declare-fun $PSF.perm_list2 ($PPM $Snap) $Perm)
(declare-const $psfTOP_list2 $PSF<list2>)
; /predicate_snap_functions_declarations.smt2 [list: Snap]
(declare-fun $PSF.domain_list ($PSF<list>) Set<$Snap>)
(declare-fun $PSF.lookup_list ($PSF<list> $Snap) $Snap)
(declare-fun $PSF.after_list ($PSF<list> $PSF<list>) Bool)
(declare-fun $PSF.loc_list ($Snap $Snap) Bool)
(declare-fun $PSF.perm_list ($PPM $Snap) $Perm)
(declare-const $psfTOP_list $PSF<list>)
; Declaring symbols related to program functions (from program analysis)
(declare-fun length2_impl ($Snap Set<$Ref> $Ref Int Int) Bool)
(declare-fun length2_impl%limited ($Snap Set<$Ref> $Ref Int Int) Bool)
(declare-fun length2_impl%stateless (Set<$Ref> $Ref Int Int) Bool)
(declare-fun length2_impl%precondition ($Snap Set<$Ref> $Ref Int Int) Bool)
(declare-fun length_impl ($Snap Set<$Ref> $Ref Int Int) Bool)
(declare-fun length_impl%limited ($Snap Set<$Ref> $Ref Int Int) Bool)
(declare-fun length_impl%stateless (Set<$Ref> $Ref Int Int) Bool)
(declare-fun length_impl%precondition ($Snap Set<$Ref> $Ref Int Int) Bool)
(declare-fun length3_impl ($Snap Set<$Ref> $Ref Int Int) Bool)
(declare-fun length3_impl%limited ($Snap Set<$Ref> $Ref Int Int) Bool)
(declare-fun length3_impl%stateless (Set<$Ref> $Ref Int Int) Bool)
(declare-fun length3_impl%precondition ($Snap Set<$Ref> $Ref Int Int) Bool)
(declare-fun foo ($Snap $Ref Int) Bool)
(declare-fun foo%limited ($Snap $Ref Int) Bool)
(declare-fun foo%stateless ($Ref Int) Bool)
(declare-fun foo%precondition ($Snap $Ref Int) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun list2%trigger ($Snap $Ref Int) Bool)
(declare-fun list%trigger ($Snap $Ref) Bool)
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
; /field_value_functions_axioms.smt2 [next: Ref]
(assert (forall ((vs $FVF<next>) (ws $FVF<next>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_next vs) ($FVF.domain_next ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_next vs))
            (= ($FVF.lookup_next vs x) ($FVF.lookup_next ws x)))
          :pattern (($FVF.lookup_next vs x) ($FVF.lookup_next ws x))
          :qid |qp.$FVF<next>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<next>To$Snap vs)
              ($SortWrappers.$FVF<next>To$Snap ws)
              )
    :qid |qp.$FVF<next>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_next pm r))
    :pattern (($FVF.perm_next pm r)))))
(assert (forall ((r $Ref) (f $Ref)) (!
    (= ($FVF.loc_next f r) true)
    :pattern (($FVF.loc_next f r)))))
; /predicate_snap_functions_axioms.smt2 [list2: Snap]
(assert (forall ((vs $PSF<list2>) (ws $PSF<list2>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_list2 vs) ($PSF.domain_list2 ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_list2 vs))
            (= ($PSF.lookup_list2 vs x) ($PSF.lookup_list2 ws x)))
          :pattern (($PSF.lookup_list2 vs x) ($PSF.lookup_list2 ws x))
          :qid |qp.$PSF<list2>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<list2>To$Snap vs)
              ($SortWrappers.$PSF<list2>To$Snap ws)
              )
    :qid |qp.$PSF<list2>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_list2 pm s))
    :pattern (($PSF.perm_list2 pm s)))))
(assert (forall ((s $Snap) (f $Snap)) (!
    (= ($PSF.loc_list2 f s) true)
    :pattern (($PSF.loc_list2 f s)))))
; /predicate_snap_functions_axioms.smt2 [list: Snap]
(assert (forall ((vs $PSF<list>) (ws $PSF<list>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_list vs) ($PSF.domain_list ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_list vs))
            (= ($PSF.lookup_list vs x) ($PSF.lookup_list ws x)))
          :pattern (($PSF.lookup_list vs x) ($PSF.lookup_list ws x))
          :qid |qp.$PSF<list>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<list>To$Snap vs)
              ($SortWrappers.$PSF<list>To$Snap ws)
              )
    :qid |qp.$PSF<list>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_list pm s))
    :pattern (($PSF.perm_list pm s)))))
(assert (forall ((s $Snap) (f $Snap)) (!
    (= ($PSF.loc_list f s) true)
    :pattern (($PSF.loc_list f s)))))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
(declare-fun $k@19@00 () $Perm)
(declare-fun inv@20@00 ($Snap Set<$Ref> $Ref Int Int $Ref) $Ref)
(declare-fun img@21@00 ($Snap Set<$Ref> $Ref Int Int $Ref) Bool)
(declare-fun joined_unfolding@46@00 ($Snap Set<$Ref> $Ref Int Int $Ref) Bool)
(declare-fun $k@25@00 () $Perm)
(declare-fun $k@26@00 () $Perm)
(declare-fun $k@33@00 () $Perm)
(declare-fun $k@41@00 () $Perm)
(declare-fun inv@34@00 ($Snap Set<$Ref> $Ref Int Int $Ref) $Ref)
(declare-fun img@35@00 ($Snap Set<$Ref> $Ref Int Int $Ref) Bool)
(declare-fun inv@42@00 ($Snap Set<$Ref> $Ref Int Int $Ref) $Ref)
(declare-fun img@43@00 ($Snap Set<$Ref> $Ref Int Int $Ref) Bool)
(declare-fun sm@22@00 ($Snap Set<$Ref> $Ref Int Int) $PSF<list>)
(declare-fun sm@27@00 ($Snap Set<$Ref> $Ref Int Int $Ref) $FVF<next>)
(declare-fun sm@28@00 ($Snap Set<$Ref> $Ref Int Int) $FVF<next>)
(declare-fun sm@29@00 ($Snap Set<$Ref> $Ref Int Int $Ref) $PSF<list>)
(declare-fun sm@38@00 ($Snap Set<$Ref> $Ref Int Int) $PSF<list>)
(declare-fun sm@44@00 ($Snap Set<$Ref> $Ref Int Int) $PSF<list>)
(declare-fun sm@47@00 ($Snap Set<$Ref> $Ref Int Int) $FVF<next>)
(declare-fun sm@48@00 ($Snap Set<$Ref> $Ref Int Int) $PSF<list>)
(declare-fun joined_unfolding@59@00 ($Snap Set<$Ref> $Ref Int Int $Ref) Bool)
(declare-fun sm@52@00 ($Snap Set<$Ref> $Ref Int Int) $PSF<list>)
(declare-fun sm@54@00 ($Snap Set<$Ref> $Ref Int Int $Ref) $FVF<next>)
(declare-fun sm@55@00 ($Snap Set<$Ref> $Ref Int Int) $FVF<next>)
(declare-fun sm@56@00 ($Snap Set<$Ref> $Ref Int Int $Ref) $PSF<list>)
(declare-fun sm@57@00 ($Snap Set<$Ref> $Ref Int Int) $PSF<list>)
(declare-fun sm@60@00 ($Snap Set<$Ref> $Ref Int Int) $FVF<next>)
(declare-fun $k@62@00 () $Perm)
(declare-fun inv@65@00 ($Snap Set<$Ref> $Ref Int Int $Ref) $Ref)
(declare-fun img@66@00 ($Snap Set<$Ref> $Ref Int Int $Ref) Bool)
(declare-fun sm@63@00 ($Snap Set<$Ref> $Ref Int Int) $PSF<list>)
(declare-fun joined_unfolding@91@00 ($Snap Set<$Ref> $Ref Int Int $Ref) Bool)
(declare-fun $k@70@00 () $Perm)
(declare-fun $k@71@00 () $Perm)
(declare-fun $k@78@00 () $Perm)
(declare-fun $k@86@00 () $Perm)
(declare-fun inv@79@00 ($Snap Set<$Ref> $Ref Int Int $Ref) $Ref)
(declare-fun img@80@00 ($Snap Set<$Ref> $Ref Int Int $Ref) Bool)
(declare-fun inv@87@00 ($Snap Set<$Ref> $Ref Int Int $Ref) $Ref)
(declare-fun img@88@00 ($Snap Set<$Ref> $Ref Int Int $Ref) Bool)
(declare-fun sm@67@00 ($Snap Set<$Ref> $Ref Int Int) $PSF<list>)
(declare-fun sm@72@00 ($Snap Set<$Ref> $Ref Int Int $Ref) $FVF<next>)
(declare-fun sm@73@00 ($Snap Set<$Ref> $Ref Int Int) $FVF<next>)
(declare-fun sm@74@00 ($Snap Set<$Ref> $Ref Int Int $Ref) $PSF<list>)
(declare-fun sm@83@00 ($Snap Set<$Ref> $Ref Int Int) $PSF<list>)
(declare-fun sm@89@00 ($Snap Set<$Ref> $Ref Int Int) $PSF<list>)
(declare-fun sm@92@00 ($Snap Set<$Ref> $Ref Int Int) $FVF<next>)
(declare-fun sm@93@00 ($Snap $Ref Int) $PSF<list2>)
(declare-fun joined_unfolding@102@00 ($Snap $Ref Int Int) Bool)
(declare-fun sm@97@00 ($Snap $Ref Int) $PSF<list2>)
(declare-fun sm@99@00 ($Snap $Ref Int Int) $PSF<list2>)
(declare-fun sm@100@00 ($Snap $Ref Int) $PSF<list2>)
(assert (forall ((s@$ $Snap) (xs@0@00 Set<$Ref>) (y@1@00 $Ref) (akk@2@00 Int) (res@3@00 Int)) (!
  (=
    (length2_impl%limited s@$ xs@0@00 y@1@00 akk@2@00 res@3@00)
    (length2_impl s@$ xs@0@00 y@1@00 akk@2@00 res@3@00))
  :pattern ((length2_impl s@$ xs@0@00 y@1@00 akk@2@00 res@3@00))
  :qid |quant-u-26280|)))
(assert (forall ((s@$ $Snap) (xs@0@00 Set<$Ref>) (y@1@00 $Ref) (akk@2@00 Int) (res@3@00 Int)) (!
  (length2_impl%stateless xs@0@00 y@1@00 akk@2@00 res@3@00)
  :pattern ((length2_impl%limited s@$ xs@0@00 y@1@00 akk@2@00 res@3@00))
  :qid |quant-u-26281|)))
(assert (forall ((s@$ $Snap) (xs@0@00 Set<$Ref>) (y@1@00 $Ref) (akk@2@00 Int) (res@3@00 Int)) (!
  (and
    (forall ((x@18@00 $Ref)) (!
      (=>
        (and (Set_in x@18@00 xs@0@00) (< $Perm.No $k@19@00))
        (and
          (= (inv@20@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 x@18@00) x@18@00)
          (img@21@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 x@18@00)))
      :pattern ((Set_in x@18@00 xs@0@00))
      :pattern ((inv@20@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 x@18@00))
      :pattern ((img@21@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 x@18@00))
      :qid |quant-u-26289|))
    (forall ((x $Ref)) (!
      (=>
        (and
          (img@21@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 x)
          (and
            (Set_in (inv@20@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 x) xs@0@00)
            (< $Perm.No $k@19@00)))
        (= (inv@20@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 x) x))
      :pattern ((inv@20@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 x))
      :qid |list-fctOfInv|))
    (forall ((x@32@00 $Ref)) (!
      (=>
        (and (Set_in x@32@00 xs@0@00) (< $Perm.No $k@33@00))
        (and
          (= (inv@34@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 x@32@00) x@32@00)
          (img@35@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 x@32@00)))
      :pattern ((Set_in x@32@00 xs@0@00))
      :pattern ((inv@34@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 x@32@00))
      :pattern ((img@35@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 x@32@00))
      :qid |list-invOfFct|))
    (forall ((x $Ref)) (!
      (=>
        (and
          (img@35@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 x)
          (and
            (Set_in (inv@34@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 x) xs@0@00)
            (< $Perm.No $k@33@00)))
        (= (inv@34@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 x) x))
      :pattern ((inv@34@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 x))
      :qid |list-fctOfInv|))
    (forall ((x@40@00 $Ref)) (!
      (=>
        (and (Set_in x@40@00 xs@0@00) (< $Perm.No $k@41@00))
        (and
          (= (inv@42@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 x@40@00) x@40@00)
          (img@43@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 x@40@00)))
      :pattern ((Set_in x@40@00 xs@0@00))
      :pattern ((inv@42@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 x@40@00))
      :pattern ((img@43@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 x@40@00))
      :qid |list-invOfFct|))
    (forall ((x $Ref)) (!
      (=>
        (and
          (img@43@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 x)
          (and
            (Set_in (inv@42@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 x) xs@0@00)
            (< $Perm.No $k@41@00)))
        (= (inv@42@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 x) x))
      :pattern ((inv@42@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 x))
      :qid |list-fctOfInv|))
    (forall ((s@23@00 $Snap)) (!
      (=>
        (ite
          (and
            (img@21@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 ($SortWrappers.$SnapTo$Ref s@23@00))
            (Set_in (inv@20@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 ($SortWrappers.$SnapTo$Ref s@23@00)) xs@0@00))
          (< $Perm.No $k@19@00)
          false)
        (and
          (not (= s@23@00 $Snap.unit))
          (=
            ($PSF.lookup_list (sm@22@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00) s@23@00)
            ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> s@$) s@23@00))))
      :pattern (($PSF.lookup_list (sm@22@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00) s@23@00))
      :pattern (($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> s@$) s@23@00))
      :qid |qp.psmValDef0|))
    (forall ((s@23@00 $Snap)) (!
      ($PSF.loc_list ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> s@$) s@23@00) s@23@00)
      :pattern (($PSF.lookup_list (sm@22@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00) s@23@00))
      :qid |qp.psmResTrgDef1|))
    (forall ((s@39@00 $Snap)) (!
      (and
        (=>
          (Set_in s@39@00 ($PSF.domain_list (sm@38@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00)))
          (and
            (Set_in (inv@34@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 ($SortWrappers.$SnapTo$Ref s@39@00)) xs@0@00)
            (< $Perm.No $k@33@00)
            (img@35@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 ($SortWrappers.$SnapTo$Ref s@39@00))))
        (=>
          (and
            (Set_in (inv@34@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 ($SortWrappers.$SnapTo$Ref s@39@00)) xs@0@00)
            (< $Perm.No $k@33@00)
            (img@35@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 ($SortWrappers.$SnapTo$Ref s@39@00)))
          (Set_in s@39@00 ($PSF.domain_list (sm@38@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00)))))
      :pattern ((Set_in s@39@00 ($PSF.domain_list (sm@38@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00))))
      :qid |qp.psmDomDef11|))
    (forall ((s@39@00 $Snap)) (!
      (=>
        (and
          (and
            (Set_in (inv@34@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 ($SortWrappers.$SnapTo$Ref s@39@00)) xs@0@00)
            (< $Perm.No $k@33@00)
            (img@35@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 ($SortWrappers.$SnapTo$Ref s@39@00)))
          (ite
            (and
              (img@21@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 ($SortWrappers.$SnapTo$Ref s@39@00))
              (Set_in (inv@20@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 ($SortWrappers.$SnapTo$Ref s@39@00)) xs@0@00))
            (< $Perm.No $k@19@00)
            false))
        (and
          (not (= s@39@00 $Snap.unit))
          (=
            ($PSF.lookup_list (sm@38@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00) s@39@00)
            ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> s@$) s@39@00))))
      :pattern (($PSF.lookup_list (sm@38@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00) s@39@00))
      :pattern (($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> s@$) s@39@00))
      :qid |qp.psmValDef8|))
    (forall ((s@45@00 $Snap)) (!
      (and
        (=>
          (Set_in s@45@00 ($PSF.domain_list (sm@44@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00)))
          (and
            (Set_in (inv@42@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 ($SortWrappers.$SnapTo$Ref s@45@00)) xs@0@00)
            (< $Perm.No $k@41@00)
            (img@43@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 ($SortWrappers.$SnapTo$Ref s@45@00))))
        (=>
          (and
            (Set_in (inv@42@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 ($SortWrappers.$SnapTo$Ref s@45@00)) xs@0@00)
            (< $Perm.No $k@41@00)
            (img@43@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 ($SortWrappers.$SnapTo$Ref s@45@00)))
          (Set_in s@45@00 ($PSF.domain_list (sm@44@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00)))))
      :pattern ((Set_in s@45@00 ($PSF.domain_list (sm@44@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00))))
      :qid |qp.psmDomDef14|))
    (forall ((s@45@00 $Snap)) (!
      (=>
        (and
          (and
            (Set_in (inv@42@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 ($SortWrappers.$SnapTo$Ref s@45@00)) xs@0@00)
            (< $Perm.No $k@41@00)
            (img@43@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 ($SortWrappers.$SnapTo$Ref s@45@00)))
          (ite
            (and
              (img@21@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 ($SortWrappers.$SnapTo$Ref s@45@00))
              (Set_in (inv@20@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00 ($SortWrappers.$SnapTo$Ref s@45@00)) xs@0@00))
            (< $Perm.No $k@19@00)
            false))
        (and
          (not (= s@45@00 $Snap.unit))
          (=
            ($PSF.lookup_list (sm@44@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00) s@45@00)
            ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> s@$) s@45@00))))
      :pattern (($PSF.lookup_list (sm@44@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00) s@45@00))
      :pattern (($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> s@$) s@45@00))
      :qid |qp.psmValDef12|))
    (forall ((s@45@00 $Snap)) (!
      ($PSF.loc_list ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> s@$) s@45@00) s@45@00)
      :pattern (($PSF.lookup_list (sm@44@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00) s@45@00))
      :qid |qp.psmResTrgDef13|))
    (forall ((r $Ref)) (!
      true
      :pattern (($FVF.lookup_next (sm@47@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00) r))
      :qid |qp.fvfResTrgDef15|))
    ($Perm.isReadVar $k@19@00)
    ($Perm.isReadVar $k@25@00)
    ($Perm.isReadVar $k@26@00)
    ($Perm.isReadVar $k@33@00)
    ($Perm.isReadVar $k@41@00)
    (=>
      (length2_impl%precondition s@$ xs@0@00 y@1@00 akk@2@00 res@3@00)
      (=
        (length2_impl s@$ xs@0@00 y@1@00 akk@2@00 res@3@00)
        (forall ((x $Ref)) (!
          (=>
            (and (Set_in x xs@0@00) (= x y@1@00))
            (ite
              (=
                ($FVF.lookup_next (sm@28@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00) x)
                $Ref.null)
              (= res@3@00 akk@2@00)
              (length2_impl%limited (ite
                (not
                  (=
                    ($FVF.lookup_next (sm@28@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00) x)
                    $Ref.null))
                ($SortWrappers.$PSF<list>To$Snap (sm@38@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00))
                ($SortWrappers.$PSF<list>To$Snap (sm@44@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00))) xs@0@00 ($FVF.lookup_next (sm@28@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00) x) (+
                akk@2@00
                1) res@3@00)))
          :pattern ((Set_in x xs@0@00))
          :pattern (($SortWrappers.$SnapToBool ($PSF.lookup_list (sm@22@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00) ($SortWrappers.$RefTo$Snap x))))
          :pattern (($FVF.lookup_next (sm@28@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00) x))
          )))))
  :pattern ((length2_impl s@$ xs@0@00 y@1@00 akk@2@00 res@3@00))
  :qid |quant-u-26298|)))
(assert (forall ((s@$ $Snap) (xs@0@00 Set<$Ref>) (y@1@00 $Ref) (akk@2@00 Int) (res@3@00 Int)) (!
  (=>
    (length2_impl%precondition s@$ xs@0@00 y@1@00 akk@2@00 res@3@00)
    (forall ((x $Ref)) (!
      (=>
        (and (Set_in x xs@0@00) (= x y@1@00))
        (ite
          (=
            ($FVF.lookup_next (sm@28@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00) x)
            $Ref.null)
          true
          (length2_impl%precondition (ite
            (not
              (=
                ($FVF.lookup_next (sm@28@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00) x)
                $Ref.null))
            ($SortWrappers.$PSF<list>To$Snap (sm@38@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00))
            ($SortWrappers.$PSF<list>To$Snap (sm@44@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00))) xs@0@00 ($FVF.lookup_next (sm@28@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00) x) (+
            akk@2@00
            1) res@3@00)))
      :pattern ((Set_in x xs@0@00))
      :pattern (($SortWrappers.$SnapToBool ($PSF.lookup_list (sm@22@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00) ($SortWrappers.$RefTo$Snap x))))
      :pattern (($FVF.lookup_next (sm@28@00 s@$ xs@0@00 y@1@00 akk@2@00 res@3@00) x))
      )))
  :pattern ((length2_impl s@$ xs@0@00 y@1@00 akk@2@00 res@3@00))
  :qid |quant-u-26299|)))
(assert (forall ((s@$ $Snap) (xs@5@00 Set<$Ref>) (y@6@00 $Ref) (akk@7@00 Int) (res@8@00 Int)) (!
  (=
    (length_impl%limited s@$ xs@5@00 y@6@00 akk@7@00 res@8@00)
    (length_impl s@$ xs@5@00 y@6@00 akk@7@00 res@8@00))
  :pattern ((length_impl s@$ xs@5@00 y@6@00 akk@7@00 res@8@00))
  :qid |quant-u-26282|)))
(assert (forall ((s@$ $Snap) (xs@5@00 Set<$Ref>) (y@6@00 $Ref) (akk@7@00 Int) (res@8@00 Int)) (!
  (length_impl%stateless xs@5@00 y@6@00 akk@7@00 res@8@00)
  :pattern ((length_impl%limited s@$ xs@5@00 y@6@00 akk@7@00 res@8@00))
  :qid |quant-u-26283|)))
(assert (forall ((s@$ $Snap) (xs@5@00 Set<$Ref>) (y@6@00 $Ref) (akk@7@00 Int) (res@8@00 Int)) (!
  (and
    (=
      ($PSF.lookup_list (sm@48@00 s@$ xs@5@00 y@6@00 akk@7@00 res@8@00) ($SortWrappers.$RefTo$Snap y@6@00))
      s@$)
    (forall ((s@53@00 $Snap)) (!
      (=>
        (= ($SortWrappers.$SnapTo$Ref s@53@00) y@6@00)
        (and
          (not (= s@53@00 $Snap.unit))
          (=
            ($PSF.lookup_list (sm@52@00 s@$ xs@5@00 y@6@00 akk@7@00 res@8@00) s@53@00)
            ($PSF.lookup_list (sm@48@00 s@$ xs@5@00 y@6@00 akk@7@00 res@8@00) s@53@00))))
      :pattern (($PSF.lookup_list (sm@52@00 s@$ xs@5@00 y@6@00 akk@7@00 res@8@00) s@53@00))
      :pattern (($PSF.lookup_list (sm@48@00 s@$ xs@5@00 y@6@00 akk@7@00 res@8@00) s@53@00))
      :qid |qp.psmValDef17|))
    (forall ((s@53@00 $Snap)) (!
      ($PSF.loc_list ($PSF.lookup_list (sm@48@00 s@$ xs@5@00 y@6@00 akk@7@00 res@8@00) s@53@00) s@53@00)
      :pattern (($PSF.lookup_list (sm@52@00 s@$ xs@5@00 y@6@00 akk@7@00 res@8@00) s@53@00))
      :qid |qp.psmResTrgDef18|))
    (forall ((s@58@00 $Snap)) (!
      (=>
        (= ($SortWrappers.$SnapTo$Ref s@58@00) y@6@00)
        (and
          (not (= s@58@00 $Snap.unit))
          (=
            ($PSF.lookup_list (sm@57@00 s@$ xs@5@00 y@6@00 akk@7@00 res@8@00) s@58@00)
            ($PSF.lookup_list (sm@48@00 s@$ xs@5@00 y@6@00 akk@7@00 res@8@00) s@58@00))))
      :pattern (($PSF.lookup_list (sm@57@00 s@$ xs@5@00 y@6@00 akk@7@00 res@8@00) s@58@00))
      :pattern (($PSF.lookup_list (sm@48@00 s@$ xs@5@00 y@6@00 akk@7@00 res@8@00) s@58@00))
      :qid |qp.psmValDef21|))
    (forall ((r $Ref)) (!
      true
      :pattern (($FVF.lookup_next (sm@60@00 s@$ xs@5@00 y@6@00 akk@7@00 res@8@00) r))
      :qid |qp.fvfResTrgDef24|))
    (=>
      (length_impl%precondition s@$ xs@5@00 y@6@00 akk@7@00 res@8@00)
      (=
        (length_impl s@$ xs@5@00 y@6@00 akk@7@00 res@8@00)
        (forall ((x $Ref)) (!
          (=>
            (and (Set_in x xs@5@00) (= x y@6@00))
            (ite
              (=
                ($FVF.lookup_next (sm@55@00 s@$ xs@5@00 y@6@00 akk@7@00 res@8@00) x)
                $Ref.null)
              (= res@8@00 akk@7@00)
              (length_impl%limited (ite
                (not
                  (=
                    ($FVF.lookup_next (sm@55@00 s@$ xs@5@00 y@6@00 akk@7@00 res@8@00) x)
                    $Ref.null))
                ($PSF.lookup_list (sm@57@00 s@$ xs@5@00 y@6@00 akk@7@00 res@8@00) ($SortWrappers.$RefTo$Snap ($FVF.lookup_next (sm@55@00 s@$ xs@5@00 y@6@00 akk@7@00 res@8@00) x)))
                ($PSF.lookup_list (sm@52@00 s@$ xs@5@00 y@6@00 akk@7@00 res@8@00) ($SortWrappers.$RefTo$Snap ($FVF.lookup_next (sm@55@00 s@$ xs@5@00 y@6@00 akk@7@00 res@8@00) x)))) xs@5@00 ($FVF.lookup_next (sm@55@00 s@$ xs@5@00 y@6@00 akk@7@00 res@8@00) x) (+
                akk@7@00
                1) res@8@00)))
          :pattern ((Set_in x xs@5@00))
          :pattern (($SortWrappers.$SnapToBool ($PSF.lookup_list (sm@52@00 s@$ xs@5@00 y@6@00 akk@7@00 res@8@00) ($SortWrappers.$RefTo$Snap x))))
          :pattern (($FVF.lookup_next (sm@55@00 s@$ xs@5@00 y@6@00 akk@7@00 res@8@00) x))
          )))))
  :pattern ((length_impl s@$ xs@5@00 y@6@00 akk@7@00 res@8@00))
  :qid |quant-u-26303|)))
(assert (forall ((s@$ $Snap) (xs@5@00 Set<$Ref>) (y@6@00 $Ref) (akk@7@00 Int) (res@8@00 Int)) (!
  (=>
    (length_impl%precondition s@$ xs@5@00 y@6@00 akk@7@00 res@8@00)
    (forall ((x $Ref)) (!
      (=>
        (and (Set_in x xs@5@00) (= x y@6@00))
        (ite
          (=
            ($FVF.lookup_next (sm@55@00 s@$ xs@5@00 y@6@00 akk@7@00 res@8@00) x)
            $Ref.null)
          true
          (length_impl%precondition (ite
            (not
              (=
                ($FVF.lookup_next (sm@55@00 s@$ xs@5@00 y@6@00 akk@7@00 res@8@00) x)
                $Ref.null))
            ($PSF.lookup_list (sm@57@00 s@$ xs@5@00 y@6@00 akk@7@00 res@8@00) ($SortWrappers.$RefTo$Snap ($FVF.lookup_next (sm@55@00 s@$ xs@5@00 y@6@00 akk@7@00 res@8@00) x)))
            ($PSF.lookup_list (sm@52@00 s@$ xs@5@00 y@6@00 akk@7@00 res@8@00) ($SortWrappers.$RefTo$Snap ($FVF.lookup_next (sm@55@00 s@$ xs@5@00 y@6@00 akk@7@00 res@8@00) x)))) xs@5@00 ($FVF.lookup_next (sm@55@00 s@$ xs@5@00 y@6@00 akk@7@00 res@8@00) x) (+
            akk@7@00
            1) res@8@00)))
      :pattern ((Set_in x xs@5@00))
      :pattern (($SortWrappers.$SnapToBool ($PSF.lookup_list (sm@52@00 s@$ xs@5@00 y@6@00 akk@7@00 res@8@00) ($SortWrappers.$RefTo$Snap x))))
      :pattern (($FVF.lookup_next (sm@55@00 s@$ xs@5@00 y@6@00 akk@7@00 res@8@00) x))
      )))
  :pattern ((length_impl s@$ xs@5@00 y@6@00 akk@7@00 res@8@00))
  :qid |quant-u-26304|)))
(assert (forall ((s@$ $Snap) (xs@10@00 Set<$Ref>) (y@11@00 $Ref) (akk@12@00 Int) (res@13@00 Int)) (!
  (=
    (length3_impl%limited s@$ xs@10@00 y@11@00 akk@12@00 res@13@00)
    (length3_impl s@$ xs@10@00 y@11@00 akk@12@00 res@13@00))
  :pattern ((length3_impl s@$ xs@10@00 y@11@00 akk@12@00 res@13@00))
  :qid |quant-u-26284|)))
(assert (forall ((s@$ $Snap) (xs@10@00 Set<$Ref>) (y@11@00 $Ref) (akk@12@00 Int) (res@13@00 Int)) (!
  (length3_impl%stateless xs@10@00 y@11@00 akk@12@00 res@13@00)
  :pattern ((length3_impl%limited s@$ xs@10@00 y@11@00 akk@12@00 res@13@00))
  :qid |quant-u-26285|)))
(assert (forall ((s@$ $Snap) (xs@10@00 Set<$Ref>) (y@11@00 $Ref) (akk@12@00 Int) (res@13@00 Int)) (!
  (and
    (forall ((x@61@00 $Ref)) (!
      (=>
        (and (Set_in x@61@00 xs@10@00) (< $Perm.No $k@62@00))
        (and
          (=
            (inv@65@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 x@61@00)
            x@61@00)
          (img@66@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 x@61@00)))
      :pattern ((Set_in x@61@00 xs@10@00))
      :pattern (($PSF.loc_list ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> s@$) ($SortWrappers.$RefTo$Snap x@61@00)) ($SortWrappers.$RefTo$Snap x@61@00)))
      :qid |quant-u-26306|))
    (forall ((x $Ref)) (!
      (=>
        (and
          (img@66@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 x)
          (and
            (Set_in (inv@65@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 x) xs@10@00)
            (< $Perm.No $k@62@00)))
        (= (inv@65@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 x) x))
      :pattern ((inv@65@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 x))
      :qid |list-fctOfInv|))
    (forall ((x@77@00 $Ref)) (!
      (=>
        (and (Set_in x@77@00 xs@10@00) (< $Perm.No $k@78@00))
        (and
          (=
            (inv@79@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 x@77@00)
            x@77@00)
          (img@80@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 x@77@00)))
      :pattern ((Set_in x@77@00 xs@10@00))
      :pattern ((inv@79@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 x@77@00))
      :pattern ((img@80@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 x@77@00))
      :qid |list-invOfFct|))
    (forall ((x $Ref)) (!
      (=>
        (and
          (img@80@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 x)
          (and
            (Set_in (inv@79@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 x) xs@10@00)
            (< $Perm.No $k@78@00)))
        (= (inv@79@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 x) x))
      :pattern ((inv@79@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 x))
      :qid |list-fctOfInv|))
    (forall ((x@85@00 $Ref)) (!
      (=>
        (and (Set_in x@85@00 xs@10@00) (< $Perm.No $k@86@00))
        (and
          (=
            (inv@87@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 x@85@00)
            x@85@00)
          (img@88@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 x@85@00)))
      :pattern ((Set_in x@85@00 xs@10@00))
      :pattern ((inv@87@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 x@85@00))
      :pattern ((img@88@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 x@85@00))
      :qid |list-invOfFct|))
    (forall ((x $Ref)) (!
      (=>
        (and
          (img@88@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 x)
          (and
            (Set_in (inv@87@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 x) xs@10@00)
            (< $Perm.No $k@86@00)))
        (= (inv@87@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 x) x))
      :pattern ((inv@87@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 x))
      :qid |list-fctOfInv|))
    (forall ((s@64@00 $Snap)) (!
      true
      :pattern (($PSF.lookup_list (sm@63@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00) s@64@00))
      :qid |qp.psmResTrgDef25|))
    (forall ((s@68@00 $Snap)) (!
      (=>
        (ite
          (and
            (img@66@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 ($SortWrappers.$SnapTo$Ref s@68@00))
            (Set_in (inv@65@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 ($SortWrappers.$SnapTo$Ref s@68@00)) xs@10@00))
          (< $Perm.No $k@62@00)
          false)
        (and
          (not (= s@68@00 $Snap.unit))
          (=
            ($PSF.lookup_list (sm@67@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00) s@68@00)
            ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> s@$) s@68@00))))
      :pattern (($PSF.lookup_list (sm@67@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00) s@68@00))
      :pattern (($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> s@$) s@68@00))
      :qid |qp.psmValDef26|))
    (forall ((s@68@00 $Snap)) (!
      ($PSF.loc_list ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> s@$) s@68@00) s@68@00)
      :pattern (($PSF.lookup_list (sm@67@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00) s@68@00))
      :qid |qp.psmResTrgDef27|))
    (forall ((s@84@00 $Snap)) (!
      (and
        (=>
          (Set_in s@84@00 ($PSF.domain_list (sm@83@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00)))
          (and
            (Set_in (inv@79@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 ($SortWrappers.$SnapTo$Ref s@84@00)) xs@10@00)
            (< $Perm.No $k@78@00)
            (img@80@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 ($SortWrappers.$SnapTo$Ref s@84@00))))
        (=>
          (and
            (Set_in (inv@79@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 ($SortWrappers.$SnapTo$Ref s@84@00)) xs@10@00)
            (< $Perm.No $k@78@00)
            (img@80@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 ($SortWrappers.$SnapTo$Ref s@84@00)))
          (Set_in s@84@00 ($PSF.domain_list (sm@83@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00)))))
      :pattern ((Set_in s@84@00 ($PSF.domain_list (sm@83@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00))))
      :qid |qp.psmDomDef37|))
    (forall ((s@84@00 $Snap)) (!
      (=>
        (and
          (and
            (Set_in (inv@79@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 ($SortWrappers.$SnapTo$Ref s@84@00)) xs@10@00)
            (< $Perm.No $k@78@00)
            (img@80@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 ($SortWrappers.$SnapTo$Ref s@84@00)))
          (ite
            (and
              (img@66@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 ($SortWrappers.$SnapTo$Ref s@84@00))
              (Set_in (inv@65@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 ($SortWrappers.$SnapTo$Ref s@84@00)) xs@10@00))
            (< $Perm.No $k@62@00)
            false))
        (and
          (not (= s@84@00 $Snap.unit))
          (=
            ($PSF.lookup_list (sm@83@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00) s@84@00)
            ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> s@$) s@84@00))))
      :pattern (($PSF.lookup_list (sm@83@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00) s@84@00))
      :pattern (($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> s@$) s@84@00))
      :qid |qp.psmValDef34|))
    (forall ((s@90@00 $Snap)) (!
      (and
        (=>
          (Set_in s@90@00 ($PSF.domain_list (sm@89@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00)))
          (and
            (Set_in (inv@87@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 ($SortWrappers.$SnapTo$Ref s@90@00)) xs@10@00)
            (< $Perm.No $k@86@00)
            (img@88@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 ($SortWrappers.$SnapTo$Ref s@90@00))))
        (=>
          (and
            (Set_in (inv@87@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 ($SortWrappers.$SnapTo$Ref s@90@00)) xs@10@00)
            (< $Perm.No $k@86@00)
            (img@88@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 ($SortWrappers.$SnapTo$Ref s@90@00)))
          (Set_in s@90@00 ($PSF.domain_list (sm@89@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00)))))
      :pattern ((Set_in s@90@00 ($PSF.domain_list (sm@89@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00))))
      :qid |qp.psmDomDef40|))
    (forall ((s@90@00 $Snap)) (!
      (=>
        (and
          (and
            (Set_in (inv@87@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 ($SortWrappers.$SnapTo$Ref s@90@00)) xs@10@00)
            (< $Perm.No $k@86@00)
            (img@88@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 ($SortWrappers.$SnapTo$Ref s@90@00)))
          (ite
            (and
              (img@66@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 ($SortWrappers.$SnapTo$Ref s@90@00))
              (Set_in (inv@65@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00 ($SortWrappers.$SnapTo$Ref s@90@00)) xs@10@00))
            (< $Perm.No $k@62@00)
            false))
        (and
          (not (= s@90@00 $Snap.unit))
          (=
            ($PSF.lookup_list (sm@89@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00) s@90@00)
            ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> s@$) s@90@00))))
      :pattern (($PSF.lookup_list (sm@89@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00) s@90@00))
      :pattern (($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> s@$) s@90@00))
      :qid |qp.psmValDef38|))
    (forall ((s@90@00 $Snap)) (!
      ($PSF.loc_list ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> s@$) s@90@00) s@90@00)
      :pattern (($PSF.lookup_list (sm@89@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00) s@90@00))
      :qid |qp.psmResTrgDef39|))
    (forall ((r $Ref)) (!
      true
      :pattern (($FVF.lookup_next (sm@92@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00) r))
      :qid |qp.fvfResTrgDef41|))
    ($Perm.isReadVar $k@62@00)
    ($Perm.isReadVar $k@70@00)
    ($Perm.isReadVar $k@71@00)
    ($Perm.isReadVar $k@78@00)
    ($Perm.isReadVar $k@86@00)
    (=>
      (length3_impl%precondition s@$ xs@10@00 y@11@00 akk@12@00 res@13@00)
      (=
        (length3_impl s@$ xs@10@00 y@11@00 akk@12@00 res@13@00)
        (forall ((x $Ref)) (!
          (=>
            (and (Set_in x xs@10@00) (= x y@11@00))
            (ite
              (=
                ($FVF.lookup_next (sm@73@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00) x)
                $Ref.null)
              (= res@13@00 akk@12@00)
              (length3_impl%limited (ite
                (not
                  (=
                    ($FVF.lookup_next (sm@73@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00) x)
                    $Ref.null))
                ($SortWrappers.$PSF<list>To$Snap (sm@83@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00))
                ($SortWrappers.$PSF<list>To$Snap (sm@89@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00))) xs@10@00 ($FVF.lookup_next (sm@73@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00) x) (+
                akk@12@00
                1) res@13@00)))
          :pattern ((Set_in x xs@10@00))
          :pattern (($SortWrappers.$SnapToBool ($PSF.lookup_list (sm@67@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00) ($SortWrappers.$RefTo$Snap x))))
          :pattern (($FVF.lookup_next (sm@73@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00) x))
          )))))
  :pattern ((length3_impl s@$ xs@10@00 y@11@00 akk@12@00 res@13@00))
  :qid |quant-u-26315|)))
(assert (forall ((s@$ $Snap) (xs@10@00 Set<$Ref>) (y@11@00 $Ref) (akk@12@00 Int) (res@13@00 Int)) (!
  (=>
    (length3_impl%precondition s@$ xs@10@00 y@11@00 akk@12@00 res@13@00)
    (forall ((x $Ref)) (!
      (=>
        (and (Set_in x xs@10@00) (= x y@11@00))
        (ite
          (=
            ($FVF.lookup_next (sm@73@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00) x)
            $Ref.null)
          true
          (length3_impl%precondition (ite
            (not
              (=
                ($FVF.lookup_next (sm@73@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00) x)
                $Ref.null))
            ($SortWrappers.$PSF<list>To$Snap (sm@83@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00))
            ($SortWrappers.$PSF<list>To$Snap (sm@89@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00))) xs@10@00 ($FVF.lookup_next (sm@73@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00) x) (+
            akk@12@00
            1) res@13@00)))
      :pattern ((Set_in x xs@10@00))
      :pattern (($SortWrappers.$SnapToBool ($PSF.lookup_list (sm@67@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00) ($SortWrappers.$RefTo$Snap x))))
      :pattern (($FVF.lookup_next (sm@73@00 s@$ xs@10@00 y@11@00 akk@12@00 res@13@00) x))
      )))
  :pattern ((length3_impl s@$ xs@10@00 y@11@00 akk@12@00 res@13@00))
  :qid |quant-u-26316|)))
(assert (forall ((s@$ $Snap) (l@15@00 $Ref) (i@16@00 Int)) (!
  (= (foo%limited s@$ l@15@00 i@16@00) (foo s@$ l@15@00 i@16@00))
  :pattern ((foo s@$ l@15@00 i@16@00))
  :qid |quant-u-26286|)))
(assert (forall ((s@$ $Snap) (l@15@00 $Ref) (i@16@00 Int)) (!
  (foo%stateless l@15@00 i@16@00)
  :pattern ((foo%limited s@$ l@15@00 i@16@00))
  :qid |quant-u-26287|)))
(assert (forall ((s@$ $Snap) (l@15@00 $Ref) (i@16@00 Int)) (!
  (and
    (=
      ($PSF.lookup_list2 (sm@93@00 s@$ l@15@00 i@16@00) ($Snap.combine
        ($SortWrappers.$RefTo$Snap l@15@00)
        ($SortWrappers.IntTo$Snap i@16@00)))
      s@$)
    (forall ((s@98@00 $Snap)) (!
      (=>
        (and
          (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@98@00)) l@15@00)
          (= ($SortWrappers.$SnapToInt ($Snap.second s@98@00)) i@16@00))
        (and
          (not (= s@98@00 $Snap.unit))
          (=
            ($PSF.lookup_list2 (sm@97@00 s@$ l@15@00 i@16@00) s@98@00)
            ($PSF.lookup_list2 (sm@93@00 s@$ l@15@00 i@16@00) s@98@00))))
      :pattern (($PSF.lookup_list2 (sm@97@00 s@$ l@15@00 i@16@00) s@98@00))
      :pattern (($PSF.lookup_list2 (sm@93@00 s@$ l@15@00 i@16@00) s@98@00))
      :qid |qp.psmValDef43|))
    (forall ((s@98@00 $Snap)) (!
      ($PSF.loc_list2 ($PSF.lookup_list2 (sm@93@00 s@$ l@15@00 i@16@00) s@98@00) s@98@00)
      :pattern (($PSF.lookup_list2 (sm@97@00 s@$ l@15@00 i@16@00) s@98@00))
      :qid |qp.psmResTrgDef44|))
    (forall ((s@101@00 $Snap)) (!
      (=>
        (and
          (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@101@00)) l@15@00)
          (= ($SortWrappers.$SnapToInt ($Snap.second s@101@00)) i@16@00))
        (and
          (not (= s@101@00 $Snap.unit))
          (=
            ($PSF.lookup_list2 (sm@100@00 s@$ l@15@00 i@16@00) s@101@00)
            ($PSF.lookup_list2 (sm@93@00 s@$ l@15@00 i@16@00) s@101@00))))
      :pattern (($PSF.lookup_list2 (sm@100@00 s@$ l@15@00 i@16@00) s@101@00))
      :pattern (($PSF.lookup_list2 (sm@93@00 s@$ l@15@00 i@16@00) s@101@00))
      :qid |qp.psmValDef45|))
    (=>
      (foo%precondition s@$ l@15@00 i@16@00)
      (=
        (foo s@$ l@15@00 i@16@00)
        (forall ((j Int)) (!
          (=>
            (= i@16@00 j)
            (ite
              (=
                ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($PSF.lookup_list2 (sm@97@00 s@$ l@15@00 i@16@00) ($Snap.combine
                  ($SortWrappers.$RefTo$Snap l@15@00)
                  ($SortWrappers.IntTo$Snap j))))))
                $Ref.null)
              true
              (foo%limited (ite
                (not
                  (=
                    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($PSF.lookup_list2 (sm@97@00 s@$ l@15@00 i@16@00) ($Snap.combine
                      ($SortWrappers.$RefTo$Snap l@15@00)
                      ($SortWrappers.IntTo$Snap j))))))
                    $Ref.null))
                ($PSF.lookup_list2 (sm@100@00 s@$ l@15@00 i@16@00) ($Snap.combine
                  ($Snap.first ($Snap.second ($PSF.lookup_list2 (sm@97@00 s@$ l@15@00 i@16@00) ($Snap.combine
                    ($SortWrappers.$RefTo$Snap l@15@00)
                    ($SortWrappers.IntTo$Snap j)))))
                  ($SortWrappers.IntTo$Snap j)))
                ($PSF.lookup_list2 (sm@97@00 s@$ l@15@00 i@16@00) ($Snap.combine
                  ($Snap.first ($Snap.second ($PSF.lookup_list2 (sm@97@00 s@$ l@15@00 i@16@00) ($Snap.combine
                    ($SortWrappers.$RefTo$Snap l@15@00)
                    ($SortWrappers.IntTo$Snap j)))))
                  ($SortWrappers.IntTo$Snap j)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($PSF.lookup_list2 (sm@97@00 s@$ l@15@00 i@16@00) ($Snap.combine
                ($SortWrappers.$RefTo$Snap l@15@00)
                ($SortWrappers.IntTo$Snap j)))))) j)))
          :pattern (($SortWrappers.$SnapToBool ($PSF.lookup_list2 (sm@97@00 s@$ l@15@00 i@16@00) ($Snap.combine
            ($SortWrappers.$RefTo$Snap l@15@00)
            ($SortWrappers.IntTo$Snap j)))))
          :pattern ((foo%limited (ite
            (not
              (=
                ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($PSF.lookup_list2 (sm@97@00 s@$ l@15@00 i@16@00) ($Snap.combine
                  ($SortWrappers.$RefTo$Snap l@15@00)
                  ($SortWrappers.IntTo$Snap j))))))
                $Ref.null))
            ($PSF.lookup_list2 (sm@100@00 s@$ l@15@00 i@16@00) ($Snap.combine
              ($Snap.first ($Snap.second ($PSF.lookup_list2 (sm@97@00 s@$ l@15@00 i@16@00) ($Snap.combine
                ($SortWrappers.$RefTo$Snap l@15@00)
                ($SortWrappers.IntTo$Snap j)))))
              ($SortWrappers.IntTo$Snap j)))
            ($PSF.lookup_list2 (sm@97@00 s@$ l@15@00 i@16@00) ($Snap.combine
              ($Snap.first ($Snap.second ($PSF.lookup_list2 (sm@97@00 s@$ l@15@00 i@16@00) ($Snap.combine
                ($SortWrappers.$RefTo$Snap l@15@00)
                ($SortWrappers.IntTo$Snap j)))))
              ($SortWrappers.IntTo$Snap j)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($PSF.lookup_list2 (sm@97@00 s@$ l@15@00 i@16@00) ($Snap.combine
            ($SortWrappers.$RefTo$Snap l@15@00)
            ($SortWrappers.IntTo$Snap j)))))) j))
          )))))
  :pattern ((foo s@$ l@15@00 i@16@00))
  :qid |quant-u-26320|)))
; WARNING: (1430,11): 'not' cannot be used in patterns.
; WARNING: (1430,11): 'if' cannot be used in patterns.
(assert (forall ((s@$ $Snap) (l@15@00 $Ref) (i@16@00 Int)) (!
  (=>
    (foo%precondition s@$ l@15@00 i@16@00)
    (forall ((j Int)) (!
      (=>
        (= i@16@00 j)
        (ite
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($PSF.lookup_list2 (sm@97@00 s@$ l@15@00 i@16@00) ($Snap.combine
              ($SortWrappers.$RefTo$Snap l@15@00)
              ($SortWrappers.IntTo$Snap j))))))
            $Ref.null)
          true
          (foo%precondition (ite
            (not
              (=
                ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($PSF.lookup_list2 (sm@97@00 s@$ l@15@00 i@16@00) ($Snap.combine
                  ($SortWrappers.$RefTo$Snap l@15@00)
                  ($SortWrappers.IntTo$Snap j))))))
                $Ref.null))
            ($PSF.lookup_list2 (sm@100@00 s@$ l@15@00 i@16@00) ($Snap.combine
              ($Snap.first ($Snap.second ($PSF.lookup_list2 (sm@97@00 s@$ l@15@00 i@16@00) ($Snap.combine
                ($SortWrappers.$RefTo$Snap l@15@00)
                ($SortWrappers.IntTo$Snap j)))))
              ($SortWrappers.IntTo$Snap j)))
            ($PSF.lookup_list2 (sm@97@00 s@$ l@15@00 i@16@00) ($Snap.combine
              ($Snap.first ($Snap.second ($PSF.lookup_list2 (sm@97@00 s@$ l@15@00 i@16@00) ($Snap.combine
                ($SortWrappers.$RefTo$Snap l@15@00)
                ($SortWrappers.IntTo$Snap j)))))
              ($SortWrappers.IntTo$Snap j)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($PSF.lookup_list2 (sm@97@00 s@$ l@15@00 i@16@00) ($Snap.combine
            ($SortWrappers.$RefTo$Snap l@15@00)
            ($SortWrappers.IntTo$Snap j)))))) j)))
      :pattern (($SortWrappers.$SnapToBool ($PSF.lookup_list2 (sm@97@00 s@$ l@15@00 i@16@00) ($Snap.combine
        ($SortWrappers.$RefTo$Snap l@15@00)
        ($SortWrappers.IntTo$Snap j)))))
      :pattern ((foo%limited (ite
        (not
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($PSF.lookup_list2 (sm@97@00 s@$ l@15@00 i@16@00) ($Snap.combine
              ($SortWrappers.$RefTo$Snap l@15@00)
              ($SortWrappers.IntTo$Snap j))))))
            $Ref.null))
        ($PSF.lookup_list2 (sm@100@00 s@$ l@15@00 i@16@00) ($Snap.combine
          ($Snap.first ($Snap.second ($PSF.lookup_list2 (sm@97@00 s@$ l@15@00 i@16@00) ($Snap.combine
            ($SortWrappers.$RefTo$Snap l@15@00)
            ($SortWrappers.IntTo$Snap j)))))
          ($SortWrappers.IntTo$Snap j)))
        ($PSF.lookup_list2 (sm@97@00 s@$ l@15@00 i@16@00) ($Snap.combine
          ($Snap.first ($Snap.second ($PSF.lookup_list2 (sm@97@00 s@$ l@15@00 i@16@00) ($Snap.combine
            ($SortWrappers.$RefTo$Snap l@15@00)
            ($SortWrappers.IntTo$Snap j)))))
          ($SortWrappers.IntTo$Snap j)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($PSF.lookup_list2 (sm@97@00 s@$ l@15@00 i@16@00) ($Snap.combine
        ($SortWrappers.$RefTo$Snap l@15@00)
        ($SortWrappers.IntTo$Snap j)))))) j))
      )))
  :pattern ((foo s@$ l@15@00 i@16@00))
  :qid |quant-u-26321|)))
; WARNING: (1487,7): 'not' cannot be used in patterns.
; WARNING: (1487,7): 'if' cannot be used in patterns.
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- test_foo1 ----------
(set-option :timeout 0)
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
; var x1: Ref
(declare-const x1@0@01 $Ref)
; [exec]
; x1 := new(elem, next)
(declare-const x1@1@01 $Ref)
(assert (not (= x1@1@01 $Ref.null)))
(declare-const elem@2@01 Int)
(declare-const next@3@01 $Ref)
(assert (not (= x1@1@01 x1@0@01)))
; [exec]
; x1.next := null
; [exec]
; fold acc(list2(x1, 77), write)
; [eval] this.next != null
; [then-branch: 0 | False | dead]
; [else-branch: 0 | True | live]
(push) ; 3
; [else-branch: 0 | True]
(assert (list2%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap elem@2@01)
  ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)) x1@1@01 77))
; [exec]
; assert foo(x1, 77)
; [eval] foo(x1, 77)
(push) ; 4
(assert (foo%precondition ($Snap.combine
  ($SortWrappers.IntTo$Snap elem@2@01)
  ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)) x1@1@01 77))
(pop) ; 4
; Joined path conditions
(assert (foo%precondition ($Snap.combine
  ($SortWrappers.IntTo$Snap elem@2@01)
  ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)) x1@1@01 77))
(push) ; 4
(assert (not (foo ($Snap.combine
  ($SortWrappers.IntTo$Snap elem@2@01)
  ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)) x1@1@01 77)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (foo ($Snap.combine
  ($SortWrappers.IntTo$Snap elem@2@01)
  ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)) x1@1@01 77))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test_foo2 ----------
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
; var x1: Ref
(declare-const x1@4@01 $Ref)
; [exec]
; var x2: Ref
(declare-const x2@5@01 $Ref)
; [exec]
; x1 := new(elem, next)
(declare-const x1@6@01 $Ref)
(assert (not (= x1@6@01 $Ref.null)))
(declare-const elem@7@01 Int)
(declare-const next@8@01 $Ref)
(assert (not (= x1@6@01 x2@5@01)))
(assert (not (= x1@6@01 x1@4@01)))
; [exec]
; x1.next := null
; [exec]
; fold acc(list2(x1, 77), write)
; [eval] this.next != null
; [then-branch: 1 | False | dead]
; [else-branch: 1 | True | live]
(push) ; 3
; [else-branch: 1 | True]
(assert (list2%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap elem@7@01)
  ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)) x1@6@01 77))
; [exec]
; x2 := new(elem, next)
(declare-const x2@9@01 $Ref)
(assert (not (= x2@9@01 $Ref.null)))
(declare-const elem@10@01 Int)
(declare-const next@11@01 $Ref)
(assert (not (= x2@9@01 x2@5@01)))
(assert (not (= x2@9@01 x1@6@01)))
; [exec]
; x2.next := x1
; [exec]
; fold acc(list2(x2, 77), write)
; [eval] this.next != null
(push) ; 4
(set-option :timeout 10)
(assert (not (= x1@6@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | x1@6@01 != Null | live]
; [else-branch: 2 | x1@6@01 == Null | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 2 | x1@6@01 != Null]
(assert (list2%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap elem@10@01)
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap x1@6@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap elem@7@01)
      ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)))) x2@9@01 77))
; [exec]
; assert foo(x2, 77)
; [eval] foo(x2, 77)
(push) ; 5
(assert (foo%precondition ($Snap.combine
  ($SortWrappers.IntTo$Snap elem@10@01)
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap x1@6@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap elem@7@01)
      ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)))) x2@9@01 77))
(pop) ; 5
; Joined path conditions
(assert (foo%precondition ($Snap.combine
  ($SortWrappers.IntTo$Snap elem@10@01)
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap x1@6@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap elem@7@01)
      ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)))) x2@9@01 77))
(push) ; 5
(assert (not (foo ($Snap.combine
  ($SortWrappers.IntTo$Snap elem@10@01)
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap x1@6@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap elem@7@01)
      ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)))) x2@9@01 77)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] foo(x2, 77)
(set-option :timeout 0)
(push) ; 5
(pop) ; 5
; Joined path conditions
(push) ; 5
(assert (not (foo ($Snap.combine
  ($SortWrappers.IntTo$Snap elem@10@01)
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap x1@6@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap elem@7@01)
      ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)))) x2@9@01 77)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] foo(x2, 77)
(set-option :timeout 0)
(push) ; 5
(pop) ; 5
; Joined path conditions
(push) ; 5
(assert (not (foo ($Snap.combine
  ($SortWrappers.IntTo$Snap elem@10@01)
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap x1@6@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap elem@7@01)
      ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)))) x2@9@01 77)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] foo(x2, 77)
(set-option :timeout 0)
(push) ; 5
(pop) ; 5
; Joined path conditions
(push) ; 5
(assert (not (foo ($Snap.combine
  ($SortWrappers.IntTo$Snap elem@10@01)
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap x1@6@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap elem@7@01)
      ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)))) x2@9@01 77)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test_foo4 ----------
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
; var x1: Ref
(declare-const x1@12@01 $Ref)
; [exec]
; var x2: Ref
(declare-const x2@13@01 $Ref)
; [exec]
; var x3: Ref
(declare-const x3@14@01 $Ref)
; [exec]
; var x4: Ref
(declare-const x4@15@01 $Ref)
; [exec]
; x1 := new(elem, next)
(declare-const x1@16@01 $Ref)
(assert (not (= x1@16@01 $Ref.null)))
(declare-const elem@17@01 Int)
(declare-const next@18@01 $Ref)
(assert (not (= x1@16@01 x3@14@01)))
(assert (not (= x1@16@01 x4@15@01)))
(assert (not (= x1@16@01 x2@13@01)))
(assert (not (= x1@16@01 x1@12@01)))
; [exec]
; x1.next := null
; [exec]
; fold acc(list2(x1, 77), write)
; [eval] this.next != null
; [then-branch: 3 | False | dead]
; [else-branch: 3 | True | live]
(push) ; 3
; [else-branch: 3 | True]
(assert (list2%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap elem@17@01)
  ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)) x1@16@01 77))
; [exec]
; x2 := new(elem, next)
(declare-const x2@19@01 $Ref)
(assert (not (= x2@19@01 $Ref.null)))
(declare-const elem@20@01 Int)
(declare-const next@21@01 $Ref)
(assert (not (= x2@19@01 x3@14@01)))
(assert (not (= x2@19@01 x4@15@01)))
(assert (not (= x2@19@01 x2@13@01)))
(assert (not (= x2@19@01 x1@16@01)))
; [exec]
; x2.next := x1
; [exec]
; fold acc(list2(x2, 77), write)
; [eval] this.next != null
(push) ; 4
(set-option :timeout 10)
(assert (not (= x1@16@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 4 | x1@16@01 != Null | live]
; [else-branch: 4 | x1@16@01 == Null | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 4 | x1@16@01 != Null]
(assert (list2%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap elem@20@01)
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap x1@16@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap elem@17@01)
      ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)))) x2@19@01 77))
; [exec]
; x3 := new(elem, next)
(declare-const x3@22@01 $Ref)
(assert (not (= x3@22@01 $Ref.null)))
(declare-const elem@23@01 Int)
(declare-const next@24@01 $Ref)
(assert (not (= x3@22@01 x3@14@01)))
(assert (not (= x3@22@01 x4@15@01)))
(assert (not (= x3@22@01 x2@19@01)))
(assert (not (= x3@22@01 x1@16@01)))
; [exec]
; x3.next := x2
; [exec]
; fold acc(list2(x3, 77), write)
; [eval] this.next != null
(push) ; 5
(set-option :timeout 10)
(assert (not (= x2@19@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 5 | x2@19@01 != Null | live]
; [else-branch: 5 | x2@19@01 == Null | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 5 | x2@19@01 != Null]
(assert (list2%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap elem@23@01)
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap x2@19@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap elem@20@01)
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap x1@16@01)
        ($Snap.combine
          ($SortWrappers.IntTo$Snap elem@17@01)
          ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)))))) x3@22@01 77))
; [exec]
; x4 := new(elem, next)
(declare-const x4@25@01 $Ref)
(assert (not (= x4@25@01 $Ref.null)))
(declare-const elem@26@01 Int)
(declare-const next@27@01 $Ref)
(assert (not (= x4@25@01 x4@15@01)))
(assert (not (= x4@25@01 x2@19@01)))
(assert (not (= x4@25@01 x3@22@01)))
(assert (not (= x4@25@01 x1@16@01)))
; [exec]
; x4.next := x3
; [exec]
; fold acc(list2(x4, 77), write)
; [eval] this.next != null
(push) ; 6
(set-option :timeout 10)
(assert (not (= x3@22@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 6 | x3@22@01 != Null | live]
; [else-branch: 6 | x3@22@01 == Null | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 6 | x3@22@01 != Null]
(assert (list2%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap elem@26@01)
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap x3@22@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap elem@23@01)
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap x2@19@01)
        ($Snap.combine
          ($SortWrappers.IntTo$Snap elem@20@01)
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap x1@16@01)
            ($Snap.combine
              ($SortWrappers.IntTo$Snap elem@17@01)
              ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)))))))) x4@25@01 77))
; [exec]
; assert foo(x4, 77)
; [eval] foo(x4, 77)
(push) ; 7
(assert (foo%precondition ($Snap.combine
  ($SortWrappers.IntTo$Snap elem@26@01)
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap x3@22@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap elem@23@01)
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap x2@19@01)
        ($Snap.combine
          ($SortWrappers.IntTo$Snap elem@20@01)
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap x1@16@01)
            ($Snap.combine
              ($SortWrappers.IntTo$Snap elem@17@01)
              ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)))))))) x4@25@01 77))
(pop) ; 7
; Joined path conditions
(assert (foo%precondition ($Snap.combine
  ($SortWrappers.IntTo$Snap elem@26@01)
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap x3@22@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap elem@23@01)
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap x2@19@01)
        ($Snap.combine
          ($SortWrappers.IntTo$Snap elem@20@01)
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap x1@16@01)
            ($Snap.combine
              ($SortWrappers.IntTo$Snap elem@17@01)
              ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)))))))) x4@25@01 77))
(push) ; 7
(assert (not (foo ($Snap.combine
  ($SortWrappers.IntTo$Snap elem@26@01)
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap x3@22@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap elem@23@01)
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap x2@19@01)
        ($Snap.combine
          ($SortWrappers.IntTo$Snap elem@20@01)
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap x1@16@01)
            ($Snap.combine
              ($SortWrappers.IntTo$Snap elem@17@01)
              ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)))))))) x4@25@01 77)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] foo(x4, 77)
(set-option :timeout 0)
(push) ; 7
(pop) ; 7
; Joined path conditions
(push) ; 7
(assert (not (foo ($Snap.combine
  ($SortWrappers.IntTo$Snap elem@26@01)
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap x3@22@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap elem@23@01)
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap x2@19@01)
        ($Snap.combine
          ($SortWrappers.IntTo$Snap elem@20@01)
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap x1@16@01)
            ($Snap.combine
              ($SortWrappers.IntTo$Snap elem@17@01)
              ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)))))))) x4@25@01 77)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] foo(x4, 77)
(set-option :timeout 0)
(push) ; 7
(pop) ; 7
; Joined path conditions
(push) ; 7
(assert (not (foo ($Snap.combine
  ($SortWrappers.IntTo$Snap elem@26@01)
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap x3@22@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap elem@23@01)
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap x2@19@01)
        ($Snap.combine
          ($SortWrappers.IntTo$Snap elem@20@01)
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap x1@16@01)
            ($Snap.combine
              ($SortWrappers.IntTo$Snap elem@17@01)
              ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)))))))) x4@25@01 77)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] foo(x4, 77)
(set-option :timeout 0)
(push) ; 7
(pop) ; 7
; Joined path conditions
(push) ; 7
(assert (not (foo ($Snap.combine
  ($SortWrappers.IntTo$Snap elem@26@01)
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap x3@22@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap elem@23@01)
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap x2@19@01)
        ($Snap.combine
          ($SortWrappers.IntTo$Snap elem@20@01)
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap x1@16@01)
            ($Snap.combine
              ($SortWrappers.IntTo$Snap elem@17@01)
              ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)))))))) x4@25@01 77)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test_length1 ----------
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
; var x1: Ref
(declare-const x1@28@01 $Ref)
; [exec]
; var xs: Set[Ref]
(declare-const xs@29@01 Set<$Ref>)
; [exec]
; var res: Int
(declare-const res@30@01 Int)
; [exec]
; x1 := new(next)
(declare-const x1@31@01 $Ref)
(assert (not (= x1@31@01 $Ref.null)))
(declare-const next@32@01 $Ref)
(assert (not (= x1@31@01 x1@28@01)))
(assert (not (Set_in x1@31@01 xs@29@01)))
; [exec]
; x1.next := null
; [exec]
; fold acc(list(x1), write)
; [eval] x.next != null
; [then-branch: 7 | False | dead]
; [else-branch: 7 | True | live]
(push) ; 3
; [else-branch: 7 | True]
(assert (list%trigger ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit) x1@31@01))
; [exec]
; xs := Set(x1)
; [eval] Set(x1)
(declare-const xs@33@01 Set<$Ref>)
(assert (= xs@33@01 (Set_singleton x1@31@01)))
; [exec]
; inhale length_impl(xs, x1, 1, res)
(declare-const $t@34@01 $Snap)
(assert (= $t@34@01 $Snap.unit))
; [eval] length_impl(xs, x1, 1, res)
(push) ; 4
(assert (length_impl%precondition ($Snap.combine
  ($SortWrappers.$RefTo$Snap $Ref.null)
  $Snap.unit) xs@33@01 x1@31@01 1 res@30@01))
(pop) ; 4
; Joined path conditions
(assert (length_impl%precondition ($Snap.combine
  ($SortWrappers.$RefTo$Snap $Ref.null)
  $Snap.unit) xs@33@01 x1@31@01 1 res@30@01))
(assert (length_impl ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit) xs@33@01 x1@31@01 1 res@30@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert res == 1
; [eval] res == 1
(set-option :timeout 0)
(push) ; 4
(assert (not (= res@30@01 1)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] res == 1
(set-option :timeout 0)
(push) ; 4
(assert (not (= res@30@01 1)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] res == 1
(set-option :timeout 0)
(push) ; 4
(assert (not (= res@30@01 1)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] res == 1
(set-option :timeout 0)
(push) ; 4
(assert (not (= res@30@01 1)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test_length2 ----------
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
; var x1: Ref
(declare-const x1@35@01 $Ref)
; [exec]
; var x2: Ref
(declare-const x2@36@01 $Ref)
; [exec]
; var xs: Set[Ref]
(declare-const xs@37@01 Set<$Ref>)
; [exec]
; var res: Int
(declare-const res@38@01 Int)
; [exec]
; x1 := new(next)
(declare-const x1@39@01 $Ref)
(assert (not (= x1@39@01 $Ref.null)))
(declare-const next@40@01 $Ref)
(assert (not (= x1@39@01 x1@35@01)))
(assert (not (= x1@39@01 x2@36@01)))
(assert (not (Set_in x1@39@01 xs@37@01)))
; [exec]
; x1.next := null
; [exec]
; fold acc(list(x1), write)
; [eval] x.next != null
; [then-branch: 8 | False | dead]
; [else-branch: 8 | True | live]
(push) ; 3
; [else-branch: 8 | True]
(assert (list%trigger ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit) x1@39@01))
; [exec]
; x2 := new(next)
(declare-const x2@41@01 $Ref)
(assert (not (= x2@41@01 $Ref.null)))
(declare-const next@42@01 $Ref)
(assert (not (= x2@41@01 x1@39@01)))
(assert (not (= x2@41@01 x2@36@01)))
(assert (not (Set_in x2@41@01 xs@37@01)))
; [exec]
; x2.next := x1
; [exec]
; fold acc(list(x2), write)
; [eval] x.next != null
(push) ; 4
(set-option :timeout 10)
(assert (not (= x1@39@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 9 | x1@39@01 != Null | live]
; [else-branch: 9 | x1@39@01 == Null | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 9 | x1@39@01 != Null]
(assert (list%trigger ($Snap.combine
  ($SortWrappers.$RefTo$Snap x1@39@01)
  ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)) x2@41@01))
; [exec]
; xs := Set(x1, x2)
; [eval] Set(x1, x2)
(declare-const xs@43@01 Set<$Ref>)
(assert (= xs@43@01 (Set_unionone (Set_singleton x1@39@01) x2@41@01)))
; [exec]
; assert (x1 in xs) && (x2 in xs)
; [eval] (x1 in xs)
(push) ; 5
(assert (not (Set_in x1@39@01 xs@43@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (Set_in x1@39@01 xs@43@01))
; [eval] (x2 in xs)
(push) ; 5
(assert (not (Set_in x2@41@01 xs@43@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (Set_in x2@41@01 xs@43@01))
; [exec]
; inhale length_impl(xs, x2, 1, res)
(declare-const $t@44@01 $Snap)
(assert (= $t@44@01 $Snap.unit))
; [eval] length_impl(xs, x2, 1, res)
(push) ; 5
(assert (length_impl%precondition ($Snap.combine
  ($SortWrappers.$RefTo$Snap x1@39@01)
  ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)) xs@43@01 x2@41@01 1 res@38@01))
(pop) ; 5
; Joined path conditions
(assert (length_impl%precondition ($Snap.combine
  ($SortWrappers.$RefTo$Snap x1@39@01)
  ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)) xs@43@01 x2@41@01 1 res@38@01))
(assert (length_impl ($Snap.combine
  ($SortWrappers.$RefTo$Snap x1@39@01)
  ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)) xs@43@01 x2@41@01 1 res@38@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert res == 2
; [eval] res == 2
(set-option :timeout 0)
(push) ; 5
(assert (not (= res@38@01 2)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] res == 2
(set-option :timeout 0)
(push) ; 5
(assert (not (= res@38@01 2)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] res == 2
(set-option :timeout 0)
(push) ; 5
(assert (not (= res@38@01 2)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] res == 2
(set-option :timeout 0)
(push) ; 5
(assert (not (= res@38@01 2)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test_length4 ----------
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
; var x1: Ref
(declare-const x1@45@01 $Ref)
; [exec]
; var x2: Ref
(declare-const x2@46@01 $Ref)
; [exec]
; var x3: Ref
(declare-const x3@47@01 $Ref)
; [exec]
; var x4: Ref
(declare-const x4@48@01 $Ref)
; [exec]
; var xs: Set[Ref]
(declare-const xs@49@01 Set<$Ref>)
; [exec]
; var res: Int
(declare-const res@50@01 Int)
; [exec]
; x1 := new(next)
(declare-const x1@51@01 $Ref)
(assert (not (= x1@51@01 $Ref.null)))
(declare-const next@52@01 $Ref)
(assert (not (= x1@51@01 x2@46@01)))
(assert (not (= x1@51@01 x4@48@01)))
(assert (not (= x1@51@01 x3@47@01)))
(assert (not (= x1@51@01 x1@45@01)))
(assert (not (Set_in x1@51@01 xs@49@01)))
; [exec]
; x1.next := null
; [exec]
; fold acc(list(x1), write)
; [eval] x.next != null
; [then-branch: 10 | False | dead]
; [else-branch: 10 | True | live]
(push) ; 3
; [else-branch: 10 | True]
(assert (list%trigger ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit) x1@51@01))
; [exec]
; x2 := new(next)
(declare-const x2@53@01 $Ref)
(assert (not (= x2@53@01 $Ref.null)))
(declare-const next@54@01 $Ref)
(assert (not (= x2@53@01 x2@46@01)))
(assert (not (= x2@53@01 x4@48@01)))
(assert (not (= x2@53@01 x3@47@01)))
(assert (not (= x2@53@01 x1@51@01)))
(assert (not (Set_in x2@53@01 xs@49@01)))
; [exec]
; x2.next := x1
; [exec]
; fold acc(list(x2), write)
; [eval] x.next != null
(push) ; 4
(set-option :timeout 10)
(assert (not (= x1@51@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 11 | x1@51@01 != Null | live]
; [else-branch: 11 | x1@51@01 == Null | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 11 | x1@51@01 != Null]
(assert (list%trigger ($Snap.combine
  ($SortWrappers.$RefTo$Snap x1@51@01)
  ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)) x2@53@01))
; [exec]
; x3 := new(next)
(declare-const x3@55@01 $Ref)
(assert (not (= x3@55@01 $Ref.null)))
(declare-const next@56@01 $Ref)
(assert (not (= x3@55@01 x4@48@01)))
(assert (not (= x3@55@01 x3@47@01)))
(assert (not (= x3@55@01 x2@53@01)))
(assert (not (= x3@55@01 x1@51@01)))
(assert (not (Set_in x3@55@01 xs@49@01)))
; [exec]
; x3.next := x2
; [exec]
; fold acc(list(x3), write)
; [eval] x.next != null
(push) ; 5
(set-option :timeout 10)
(assert (not (= x2@53@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 12 | x2@53@01 != Null | live]
; [else-branch: 12 | x2@53@01 == Null | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 12 | x2@53@01 != Null]
(assert (list%trigger ($Snap.combine
  ($SortWrappers.$RefTo$Snap x2@53@01)
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap x1@51@01)
    ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit))) x3@55@01))
; [exec]
; x4 := new(next)
(declare-const x4@57@01 $Ref)
(assert (not (= x4@57@01 $Ref.null)))
(declare-const next@58@01 $Ref)
(assert (not (= x4@57@01 x3@55@01)))
(assert (not (= x4@57@01 x4@48@01)))
(assert (not (= x4@57@01 x2@53@01)))
(assert (not (= x4@57@01 x1@51@01)))
(assert (not (Set_in x4@57@01 xs@49@01)))
; [exec]
; x4.next := x3
; [exec]
; fold acc(list(x4), write)
; [eval] x.next != null
(push) ; 6
(set-option :timeout 10)
(assert (not (= x3@55@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 13 | x3@55@01 != Null | live]
; [else-branch: 13 | x3@55@01 == Null | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 13 | x3@55@01 != Null]
(assert (list%trigger ($Snap.combine
  ($SortWrappers.$RefTo$Snap x3@55@01)
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap x2@53@01)
    ($Snap.combine
      ($SortWrappers.$RefTo$Snap x1@51@01)
      ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)))) x4@57@01))
; [exec]
; xs := Set(x1, x2, x4, x3)
; [eval] Set(x1, x2, x4, x3)
(declare-const xs@59@01 Set<$Ref>)
(assert (=
  xs@59@01
  (Set_unionone (Set_unionone (Set_unionone (Set_singleton x1@51@01) x2@53@01) x4@57@01) x3@55@01)))
; [exec]
; inhale length_impl(xs, x4, 1, res)
(declare-const $t@60@01 $Snap)
(assert (= $t@60@01 $Snap.unit))
; [eval] length_impl(xs, x4, 1, res)
(push) ; 7
(assert (length_impl%precondition ($Snap.combine
  ($SortWrappers.$RefTo$Snap x3@55@01)
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap x2@53@01)
    ($Snap.combine
      ($SortWrappers.$RefTo$Snap x1@51@01)
      ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)))) xs@59@01 x4@57@01 1 res@50@01))
(pop) ; 7
; Joined path conditions
(assert (length_impl%precondition ($Snap.combine
  ($SortWrappers.$RefTo$Snap x3@55@01)
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap x2@53@01)
    ($Snap.combine
      ($SortWrappers.$RefTo$Snap x1@51@01)
      ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)))) xs@59@01 x4@57@01 1 res@50@01))
(assert (length_impl ($Snap.combine
  ($SortWrappers.$RefTo$Snap x3@55@01)
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap x2@53@01)
    ($Snap.combine
      ($SortWrappers.$RefTo$Snap x1@51@01)
      ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)))) xs@59@01 x4@57@01 1 res@50@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert res == 4
; [eval] res == 4
(set-option :timeout 0)
(push) ; 7
(assert (not (= res@50@01 4)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] res == 4
(set-option :timeout 0)
(push) ; 7
(assert (not (= res@50@01 4)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] res == 4
(set-option :timeout 0)
(push) ; 7
(assert (not (= res@50@01 4)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] res == 4
(set-option :timeout 0)
(push) ; 7
(assert (not (= res@50@01 4)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test2_length1 ----------
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
; var x1: Ref
(declare-const x1@61@01 $Ref)
; [exec]
; var xs: Set[Ref]
(declare-const xs@62@01 Set<$Ref>)
; [exec]
; var res: Int
(declare-const res@63@01 Int)
; [exec]
; x1 := new(next)
(declare-const x1@64@01 $Ref)
(assert (not (= x1@64@01 $Ref.null)))
(declare-const next@65@01 $Ref)
(assert (not (= x1@64@01 x1@61@01)))
(assert (not (Set_in x1@64@01 xs@62@01)))
; [exec]
; x1.next := null
; [exec]
; fold acc(list(x1), write)
; [eval] x.next != null
; [then-branch: 14 | False | dead]
; [else-branch: 14 | True | live]
(push) ; 3
; [else-branch: 14 | True]
(assert (list%trigger ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit) x1@64@01))
(declare-const sm@66@01 $PSF<list>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_list (as sm@66@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@64@01))
  ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)))
; [exec]
; xs := Set(x1)
; [eval] Set(x1)
(declare-const xs@67@01 Set<$Ref>)
(assert (= xs@67@01 (Set_singleton x1@64@01)))
; [exec]
; inhale length2_impl(xs, x1, 1, res)
(declare-const $t@68@01 $Snap)
(assert (= $t@68@01 $Snap.unit))
; [eval] length2_impl(xs, x1, 1, res)
(push) ; 4
(declare-const x@69@01 $Ref)
(push) ; 5
; [eval] (x in xs)
(assert (Set_in x@69@01 xs@67@01))
(declare-const $k@70@01 $Perm)
(assert ($Perm.isReadVar $k@70@01))
(pop) ; 5
(declare-fun inv@71@01 ($Ref) $Ref)
(declare-fun img@72@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@70@01))
; Nested auxiliary terms: non-globals
(push) ; 5
(assert (not (forall ((x@69@01 $Ref)) (!
  (=> (Set_in x@69@01 xs@67@01) (or (= $k@70@01 $Perm.No) (< $Perm.No $k@70@01)))
  
  :qid |quant-u-26322|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((x1@69@01 $Ref) (x2@69@01 $Ref)) (!
  (=>
    (and
      (and (Set_in x1@69@01 xs@67@01) (< $Perm.No $k@70@01))
      (and (Set_in x2@69@01 xs@67@01) (< $Perm.No $k@70@01))
      (= x1@69@01 x2@69@01))
    (= x1@69@01 x2@69@01))
  
  :qid |list-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@69@01 $Ref)) (!
  (=>
    (and (Set_in x@69@01 xs@67@01) (< $Perm.No $k@70@01))
    (and (= (inv@71@01 x@69@01) x@69@01) (img@72@01 x@69@01)))
  :pattern ((Set_in x@69@01 xs@67@01))
  :pattern ((inv@71@01 x@69@01))
  :pattern ((img@72@01 x@69@01))
  :qid |list-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and
      (img@72@01 x)
      (and (Set_in (inv@71@01 x) xs@67@01) (< $Perm.No $k@70@01)))
    (= (inv@71@01 x) x))
  :pattern ((inv@71@01 x))
  :qid |list-fctOfInv|)))
(push) ; 5
(assert (not (forall ((x $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@71@01 x) xs@67@01) (img@72@01 x) (= x (inv@71@01 x)))
      (> $k@70@01 $Perm.No))
    (> (ite (= x x1@64@01) $Perm.Write $Perm.No) $Perm.No))
  
  :qid |quant-u-26323|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@73@01 $PSF<list>)
(declare-const s@74@01 $Snap)
; Definitional axioms for snapshot map domain
(assert (forall ((s@74@01 $Snap)) (!
  (and
    (=>
      (Set_in s@74@01 ($PSF.domain_list (as sm@73@01  $PSF<list>)))
      (and
        (Set_in (inv@71@01 ($SortWrappers.$SnapTo$Ref s@74@01)) xs@67@01)
        (< $Perm.No $k@70@01)
        (img@72@01 ($SortWrappers.$SnapTo$Ref s@74@01))))
    (=>
      (and
        (Set_in (inv@71@01 ($SortWrappers.$SnapTo$Ref s@74@01)) xs@67@01)
        (< $Perm.No $k@70@01)
        (img@72@01 ($SortWrappers.$SnapTo$Ref s@74@01)))
      (Set_in s@74@01 ($PSF.domain_list (as sm@73@01  $PSF<list>)))))
  :pattern ((Set_in s@74@01 ($PSF.domain_list (as sm@73@01  $PSF<list>))))
  :qid |qp.psmDomDef1|)))
; Definitional axioms for snapshot map values
(assert (forall ((s@74@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@71@01 ($SortWrappers.$SnapTo$Ref s@74@01)) xs@67@01)
        (< $Perm.No $k@70@01)
        (img@72@01 ($SortWrappers.$SnapTo$Ref s@74@01)))
      (= ($SortWrappers.$SnapTo$Ref s@74@01) x1@64@01))
    (and
      (not (= s@74@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@73@01  $PSF<list>) s@74@01)
        ($PSF.lookup_list (as sm@66@01  $PSF<list>) s@74@01))))
  :pattern (($PSF.lookup_list (as sm@73@01  $PSF<list>) s@74@01))
  :pattern (($PSF.lookup_list (as sm@66@01  $PSF<list>) s@74@01))
  :qid |qp.psmValDef0|)))
(assert (length2_impl%precondition ($SortWrappers.$PSF<list>To$Snap (as sm@73@01  $PSF<list>)) xs@67@01 x1@64@01 1 res@63@01))
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@70@01))
(assert (forall ((x@69@01 $Ref)) (!
  (=>
    (and (Set_in x@69@01 xs@67@01) (< $Perm.No $k@70@01))
    (and (= (inv@71@01 x@69@01) x@69@01) (img@72@01 x@69@01)))
  :pattern ((Set_in x@69@01 xs@67@01))
  :pattern ((inv@71@01 x@69@01))
  :pattern ((img@72@01 x@69@01))
  :qid |list-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and
      (img@72@01 x)
      (and (Set_in (inv@71@01 x) xs@67@01) (< $Perm.No $k@70@01)))
    (= (inv@71@01 x) x))
  :pattern ((inv@71@01 x))
  :qid |list-fctOfInv|)))
(assert (forall ((s@74@01 $Snap)) (!
  (and
    (=>
      (Set_in s@74@01 ($PSF.domain_list (as sm@73@01  $PSF<list>)))
      (and
        (Set_in (inv@71@01 ($SortWrappers.$SnapTo$Ref s@74@01)) xs@67@01)
        (< $Perm.No $k@70@01)
        (img@72@01 ($SortWrappers.$SnapTo$Ref s@74@01))))
    (=>
      (and
        (Set_in (inv@71@01 ($SortWrappers.$SnapTo$Ref s@74@01)) xs@67@01)
        (< $Perm.No $k@70@01)
        (img@72@01 ($SortWrappers.$SnapTo$Ref s@74@01)))
      (Set_in s@74@01 ($PSF.domain_list (as sm@73@01  $PSF<list>)))))
  :pattern ((Set_in s@74@01 ($PSF.domain_list (as sm@73@01  $PSF<list>))))
  :qid |qp.psmDomDef1|)))
(assert (forall ((s@74@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@71@01 ($SortWrappers.$SnapTo$Ref s@74@01)) xs@67@01)
        (< $Perm.No $k@70@01)
        (img@72@01 ($SortWrappers.$SnapTo$Ref s@74@01)))
      (= ($SortWrappers.$SnapTo$Ref s@74@01) x1@64@01))
    (and
      (not (= s@74@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@73@01  $PSF<list>) s@74@01)
        ($PSF.lookup_list (as sm@66@01  $PSF<list>) s@74@01))))
  :pattern (($PSF.lookup_list (as sm@73@01  $PSF<list>) s@74@01))
  :pattern (($PSF.lookup_list (as sm@66@01  $PSF<list>) s@74@01))
  :qid |qp.psmValDef0|)))
(assert (length2_impl%precondition ($SortWrappers.$PSF<list>To$Snap (as sm@73@01  $PSF<list>)) xs@67@01 x1@64@01 1 res@63@01))
(assert (length2_impl ($SortWrappers.$PSF<list>To$Snap (as sm@73@01  $PSF<list>)) xs@67@01 x1@64@01 1 res@63@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert res == 1
; [eval] res == 1
(set-option :timeout 0)
(push) ; 4
(assert (not (= res@63@01 1)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] res == 1
(set-option :timeout 0)
(push) ; 4
(assert (not (= res@63@01 1)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] res == 1
(set-option :timeout 0)
(push) ; 4
(assert (not (= res@63@01 1)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] res == 1
(set-option :timeout 0)
(push) ; 4
(assert (not (= res@63@01 1)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test2_length2 ----------
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
; var x1: Ref
(declare-const x1@75@01 $Ref)
; [exec]
; var x2: Ref
(declare-const x2@76@01 $Ref)
; [exec]
; var xs: Set[Ref]
(declare-const xs@77@01 Set<$Ref>)
; [exec]
; var res: Int
(declare-const res@78@01 Int)
; [exec]
; x1 := new(next)
(declare-const x1@79@01 $Ref)
(assert (not (= x1@79@01 $Ref.null)))
(declare-const next@80@01 $Ref)
(assert (not (= x1@79@01 x2@76@01)))
(assert (not (= x1@79@01 x1@75@01)))
(assert (not (Set_in x1@79@01 xs@77@01)))
; [exec]
; x1.next := null
; [exec]
; fold acc(list(x1), wildcard)
(declare-const $k@81@01 $Perm)
(assert ($Perm.isReadVar $k@81@01))
(assert (< $k@81@01 $Perm.Write))
(assert (<= $Perm.No (- $Perm.Write $k@81@01)))
(assert (<= (- $Perm.Write $k@81@01) $Perm.Write))
(assert (=> (< $Perm.No (- $Perm.Write $k@81@01)) (not (= x1@79@01 $Ref.null))))
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@81@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] x.next != null
; [then-branch: 15 | False | dead]
; [else-branch: 15 | True | live]
(set-option :timeout 0)
(push) ; 3
; [else-branch: 15 | True]
(assert (list%trigger ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit) x1@79@01))
(declare-const sm@82@01 $PSF<list>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_list (as sm@82@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@79@01))
  ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)))
; [exec]
; x2 := new(next)
(declare-const x2@83@01 $Ref)
(assert (not (= x2@83@01 $Ref.null)))
(declare-const next@84@01 $Ref)
(assert (not (= x2@83@01 x1@79@01)))
(assert (not (= x2@83@01 x2@76@01)))
(assert (not (Set_in x2@83@01 xs@77@01)))
; [exec]
; x2.next := x1
(push) ; 4
(set-option :timeout 10)
(assert (not (= x1@79@01 x2@83@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; fold acc(list(x2), wildcard)
(declare-const $k@85@01 $Perm)
(assert ($Perm.isReadVar $k@85@01))
(assert (< $k@85@01 $Perm.Write))
(assert (<= $Perm.No (- $Perm.Write $k@85@01)))
(assert (<= (- $Perm.Write $k@85@01) $Perm.Write))
(assert (=> (< $Perm.No (- $Perm.Write $k@85@01)) (not (= x2@83@01 $Ref.null))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@85@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] x.next != null
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= x1@79@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 16 | x1@79@01 != Null | live]
; [else-branch: 16 | x1@79@01 == Null | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 16 | x1@79@01 != Null]
; Precomputing data for removing quantified permissions
(define-fun pTaken@86@01 ((x $Ref)) $Perm
  (ite
    (= x x1@79@01)
    ($Perm.min (ite (= x x1@79@01) $k@81@01 $Perm.No) $k@85@01)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Constrain original permissions $k@85@01
(assert (=> (not (= $k@81@01 $Perm.No)) (< $k@85@01 $k@81@01)))
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=> (= x x1@79@01) (= (- $k@85@01 (pTaken@86@01 x)) $Perm.No))
  
  :qid |quant-u-26326|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@87@01 $PSF<list>)
(declare-const s@88@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (< $Perm.No $k@81@01)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x1@79@01) $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@87@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@79@01))
      ($PSF.lookup_list (as sm@82@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@79@01))))))
(assert (list%trigger ($Snap.combine
  ($SortWrappers.$RefTo$Snap x1@79@01)
  ($PSF.lookup_list (as sm@87@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@79@01))) x2@83@01))
(declare-const sm@89@01 $PSF<list>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_list (as sm@89@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@83@01))
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap x1@79@01)
    ($PSF.lookup_list (as sm@87@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@79@01)))))
; [exec]
; xs := Set(x1, x2)
; [eval] Set(x1, x2)
(declare-const xs@90@01 Set<$Ref>)
(assert (= xs@90@01 (Set_unionone (Set_singleton x1@79@01) x2@83@01)))
; [exec]
; assert (x1 in xs) && (x2 in xs)
; [eval] (x1 in xs)
(set-option :timeout 0)
(push) ; 5
(assert (not (Set_in x1@79@01 xs@90@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (Set_in x1@79@01 xs@90@01))
; [eval] (x2 in xs)
(push) ; 5
(assert (not (Set_in x2@83@01 xs@90@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (Set_in x2@83@01 xs@90@01))
; [exec]
; inhale length2_impl(xs, x2, 1, res)
(declare-const $t@91@01 $Snap)
(assert (= $t@91@01 $Snap.unit))
; [eval] length2_impl(xs, x2, 1, res)
(push) ; 5
(declare-const x@92@01 $Ref)
(push) ; 6
; [eval] (x in xs)
(assert (Set_in x@92@01 xs@90@01))
(declare-const $k@93@01 $Perm)
(assert ($Perm.isReadVar $k@93@01))
(pop) ; 6
(declare-fun inv@94@01 ($Ref) $Ref)
(declare-fun img@95@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@93@01))
; Nested auxiliary terms: non-globals
(push) ; 6
(assert (not (forall ((x@92@01 $Ref)) (!
  (=> (Set_in x@92@01 xs@90@01) (or (= $k@93@01 $Perm.No) (< $Perm.No $k@93@01)))
  
  :qid |quant-u-26327|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((x1@92@01 $Ref) (x2@92@01 $Ref)) (!
  (=>
    (and
      (and (Set_in x1@92@01 xs@90@01) (< $Perm.No $k@93@01))
      (and (Set_in x2@92@01 xs@90@01) (< $Perm.No $k@93@01))
      (= x1@92@01 x2@92@01))
    (= x1@92@01 x2@92@01))
  
  :qid |list-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@92@01 $Ref)) (!
  (=>
    (and (Set_in x@92@01 xs@90@01) (< $Perm.No $k@93@01))
    (and (= (inv@94@01 x@92@01) x@92@01) (img@95@01 x@92@01)))
  :pattern ((Set_in x@92@01 xs@90@01))
  :pattern ((inv@94@01 x@92@01))
  :pattern ((img@95@01 x@92@01))
  :qid |list-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and
      (img@95@01 x)
      (and (Set_in (inv@94@01 x) xs@90@01) (< $Perm.No $k@93@01)))
    (= (inv@94@01 x) x))
  :pattern ((inv@94@01 x))
  :qid |list-fctOfInv|)))
(push) ; 6
(assert (not (forall ((x $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@94@01 x) xs@90@01) (img@95@01 x) (= x (inv@94@01 x)))
      (> $k@93@01 $Perm.No))
    (>
      (+
        (ite (= x x2@83@01) $k@85@01 $Perm.No)
        (ite (= x x1@79@01) (- $k@81@01 (pTaken@86@01 x)) $Perm.No))
      $Perm.No))
  
  :qid |quant-u-26328|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@96@01 $PSF<list>)
(declare-const s@97@01 $Snap)
; Definitional axioms for snapshot map domain
(assert (forall ((s@97@01 $Snap)) (!
  (and
    (=>
      (Set_in s@97@01 ($PSF.domain_list (as sm@96@01  $PSF<list>)))
      (and
        (Set_in (inv@94@01 ($SortWrappers.$SnapTo$Ref s@97@01)) xs@90@01)
        (< $Perm.No $k@93@01)
        (img@95@01 ($SortWrappers.$SnapTo$Ref s@97@01))))
    (=>
      (and
        (Set_in (inv@94@01 ($SortWrappers.$SnapTo$Ref s@97@01)) xs@90@01)
        (< $Perm.No $k@93@01)
        (img@95@01 ($SortWrappers.$SnapTo$Ref s@97@01)))
      (Set_in s@97@01 ($PSF.domain_list (as sm@96@01  $PSF<list>)))))
  :pattern ((Set_in s@97@01 ($PSF.domain_list (as sm@96@01  $PSF<list>))))
  :qid |qp.psmDomDef6|)))
; Definitional axioms for snapshot map values
(assert (forall ((s@97@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@94@01 ($SortWrappers.$SnapTo$Ref s@97@01)) xs@90@01)
        (< $Perm.No $k@93@01)
        (img@95@01 ($SortWrappers.$SnapTo$Ref s@97@01)))
      (ite
        (= ($SortWrappers.$SnapTo$Ref s@97@01) x2@83@01)
        (< $Perm.No $k@85@01)
        false))
    (and
      (not (= s@97@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@96@01  $PSF<list>) s@97@01)
        ($PSF.lookup_list (as sm@89@01  $PSF<list>) s@97@01))))
  :pattern (($PSF.lookup_list (as sm@96@01  $PSF<list>) s@97@01))
  :pattern (($PSF.lookup_list (as sm@89@01  $PSF<list>) s@97@01))
  :qid |qp.psmValDef4|)))
(assert (forall ((s@97@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@94@01 ($SortWrappers.$SnapTo$Ref s@97@01)) xs@90@01)
        (< $Perm.No $k@93@01)
        (img@95@01 ($SortWrappers.$SnapTo$Ref s@97@01)))
      (ite
        (= ($SortWrappers.$SnapTo$Ref s@97@01) x1@79@01)
        (<
          $Perm.No
          (- $k@81@01 (pTaken@86@01 ($SortWrappers.$SnapTo$Ref s@97@01))))
        false))
    (and
      (not (= s@97@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@96@01  $PSF<list>) s@97@01)
        ($PSF.lookup_list (as sm@82@01  $PSF<list>) s@97@01))))
  :pattern (($PSF.lookup_list (as sm@96@01  $PSF<list>) s@97@01))
  :pattern (($PSF.lookup_list (as sm@82@01  $PSF<list>) s@97@01))
  :qid |qp.psmValDef5|)))
(assert (length2_impl%precondition ($SortWrappers.$PSF<list>To$Snap (as sm@96@01  $PSF<list>)) xs@90@01 x2@83@01 1 res@78@01))
(pop) ; 5
; Joined path conditions
(assert ($Perm.isReadVar $k@93@01))
(assert (forall ((x@92@01 $Ref)) (!
  (=>
    (and (Set_in x@92@01 xs@90@01) (< $Perm.No $k@93@01))
    (and (= (inv@94@01 x@92@01) x@92@01) (img@95@01 x@92@01)))
  :pattern ((Set_in x@92@01 xs@90@01))
  :pattern ((inv@94@01 x@92@01))
  :pattern ((img@95@01 x@92@01))
  :qid |list-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and
      (img@95@01 x)
      (and (Set_in (inv@94@01 x) xs@90@01) (< $Perm.No $k@93@01)))
    (= (inv@94@01 x) x))
  :pattern ((inv@94@01 x))
  :qid |list-fctOfInv|)))
(assert (forall ((s@97@01 $Snap)) (!
  (and
    (=>
      (Set_in s@97@01 ($PSF.domain_list (as sm@96@01  $PSF<list>)))
      (and
        (Set_in (inv@94@01 ($SortWrappers.$SnapTo$Ref s@97@01)) xs@90@01)
        (< $Perm.No $k@93@01)
        (img@95@01 ($SortWrappers.$SnapTo$Ref s@97@01))))
    (=>
      (and
        (Set_in (inv@94@01 ($SortWrappers.$SnapTo$Ref s@97@01)) xs@90@01)
        (< $Perm.No $k@93@01)
        (img@95@01 ($SortWrappers.$SnapTo$Ref s@97@01)))
      (Set_in s@97@01 ($PSF.domain_list (as sm@96@01  $PSF<list>)))))
  :pattern ((Set_in s@97@01 ($PSF.domain_list (as sm@96@01  $PSF<list>))))
  :qid |qp.psmDomDef6|)))
(assert (forall ((s@97@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@94@01 ($SortWrappers.$SnapTo$Ref s@97@01)) xs@90@01)
        (< $Perm.No $k@93@01)
        (img@95@01 ($SortWrappers.$SnapTo$Ref s@97@01)))
      (ite
        (= ($SortWrappers.$SnapTo$Ref s@97@01) x2@83@01)
        (< $Perm.No $k@85@01)
        false))
    (and
      (not (= s@97@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@96@01  $PSF<list>) s@97@01)
        ($PSF.lookup_list (as sm@89@01  $PSF<list>) s@97@01))))
  :pattern (($PSF.lookup_list (as sm@96@01  $PSF<list>) s@97@01))
  :pattern (($PSF.lookup_list (as sm@89@01  $PSF<list>) s@97@01))
  :qid |qp.psmValDef4|)))
(assert (forall ((s@97@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@94@01 ($SortWrappers.$SnapTo$Ref s@97@01)) xs@90@01)
        (< $Perm.No $k@93@01)
        (img@95@01 ($SortWrappers.$SnapTo$Ref s@97@01)))
      (ite
        (= ($SortWrappers.$SnapTo$Ref s@97@01) x1@79@01)
        (<
          $Perm.No
          (- $k@81@01 (pTaken@86@01 ($SortWrappers.$SnapTo$Ref s@97@01))))
        false))
    (and
      (not (= s@97@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@96@01  $PSF<list>) s@97@01)
        ($PSF.lookup_list (as sm@82@01  $PSF<list>) s@97@01))))
  :pattern (($PSF.lookup_list (as sm@96@01  $PSF<list>) s@97@01))
  :pattern (($PSF.lookup_list (as sm@82@01  $PSF<list>) s@97@01))
  :qid |qp.psmValDef5|)))
(assert (length2_impl%precondition ($SortWrappers.$PSF<list>To$Snap (as sm@96@01  $PSF<list>)) xs@90@01 x2@83@01 1 res@78@01))
(assert (length2_impl ($SortWrappers.$PSF<list>To$Snap (as sm@96@01  $PSF<list>)) xs@90@01 x2@83@01 1 res@78@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert res == 2
; [eval] res == 2
(set-option :timeout 0)
(push) ; 5
(assert (not (= res@78@01 2)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= x2@83@01 x1@79@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= x2@83@01 x1@79@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (and (< $Perm.No $k@85@01) (< $Perm.No (- $k@81@01 (pTaken@86@01 x1@79@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@89@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@83@01))
      ($PSF.lookup_list (as sm@82@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@79@01)))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (and (< $Perm.No (- $k@81@01 (pTaken@86@01 x1@79@01))) (< $Perm.No $k@85@01))
  (not
    (=
      ($PSF.lookup_list (as sm@82@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@79@01))
      ($PSF.lookup_list (as sm@89@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@83@01)))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (and (not (= x2@83@01 x1@79@01)) (not (= x1@79@01 x2@83@01))))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@81@01) (- $Perm.Write $k@85@01)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@85@01) (- $Perm.Write $k@81@01)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@81@01))
    (< $Perm.No (- $Perm.Write $k@85@01)))
  (not (= $Ref.null x1@79@01)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@85@01))
    (< $Perm.No (- $Perm.Write $k@81@01)))
  (not (= x1@79@01 $Ref.null)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (and (not (= x1@79@01 x2@83@01)) (not (= x2@83@01 x1@79@01))))
; [eval] res == 2
(set-option :timeout 0)
(push) ; 5
(assert (not (= res@78@01 2)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= x2@83@01 x1@79@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= x2@83@01 x1@79@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (and (< $Perm.No $k@85@01) (< $Perm.No (- $k@81@01 (pTaken@86@01 x1@79@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@89@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@83@01))
      ($PSF.lookup_list (as sm@82@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@79@01)))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (and (< $Perm.No (- $k@81@01 (pTaken@86@01 x1@79@01))) (< $Perm.No $k@85@01))
  (not
    (=
      ($PSF.lookup_list (as sm@82@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@79@01))
      ($PSF.lookup_list (as sm@89@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@83@01)))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (and (not (= x2@83@01 x1@79@01)) (not (= x1@79@01 x2@83@01))))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@81@01) (- $Perm.Write $k@85@01)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@85@01) (- $Perm.Write $k@81@01)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@81@01))
    (< $Perm.No (- $Perm.Write $k@85@01)))
  (not (= $Ref.null x1@79@01)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@85@01))
    (< $Perm.No (- $Perm.Write $k@81@01)))
  (not (= x1@79@01 $Ref.null)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (and (not (= x1@79@01 x2@83@01)) (not (= x2@83@01 x1@79@01))))
; [eval] res == 2
(set-option :timeout 0)
(push) ; 5
(assert (not (= res@78@01 2)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= x2@83@01 x1@79@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= x2@83@01 x1@79@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (and (< $Perm.No $k@85@01) (< $Perm.No (- $k@81@01 (pTaken@86@01 x1@79@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@89@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@83@01))
      ($PSF.lookup_list (as sm@82@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@79@01)))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (and (< $Perm.No (- $k@81@01 (pTaken@86@01 x1@79@01))) (< $Perm.No $k@85@01))
  (not
    (=
      ($PSF.lookup_list (as sm@82@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@79@01))
      ($PSF.lookup_list (as sm@89@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@83@01)))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (and (not (= x2@83@01 x1@79@01)) (not (= x1@79@01 x2@83@01))))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@81@01) (- $Perm.Write $k@85@01)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@85@01) (- $Perm.Write $k@81@01)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@81@01))
    (< $Perm.No (- $Perm.Write $k@85@01)))
  (not (= $Ref.null x1@79@01)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@85@01))
    (< $Perm.No (- $Perm.Write $k@81@01)))
  (not (= x1@79@01 $Ref.null)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (and (not (= x1@79@01 x2@83@01)) (not (= x2@83@01 x1@79@01))))
; [eval] res == 2
(set-option :timeout 0)
(push) ; 5
(assert (not (= res@78@01 2)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test2_length4 ----------
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
; var x1: Ref
(declare-const x1@98@01 $Ref)
; [exec]
; var x2: Ref
(declare-const x2@99@01 $Ref)
; [exec]
; var x3: Ref
(declare-const x3@100@01 $Ref)
; [exec]
; var x4: Ref
(declare-const x4@101@01 $Ref)
; [exec]
; var xs: Set[Ref]
(declare-const xs@102@01 Set<$Ref>)
; [exec]
; var res: Int
(declare-const res@103@01 Int)
; [exec]
; x1 := new(next)
(declare-const x1@104@01 $Ref)
(assert (not (= x1@104@01 $Ref.null)))
(declare-const next@105@01 $Ref)
(assert (not (= x1@104@01 x4@101@01)))
(assert (not (= x1@104@01 x1@98@01)))
(assert (not (= x1@104@01 x2@99@01)))
(assert (not (= x1@104@01 x3@100@01)))
(assert (not (Set_in x1@104@01 xs@102@01)))
; [exec]
; x1.next := null
; [exec]
; fold acc(list(x1), wildcard)
(declare-const $k@106@01 $Perm)
(assert ($Perm.isReadVar $k@106@01))
(assert (< $k@106@01 $Perm.Write))
(assert (<= $Perm.No (- $Perm.Write $k@106@01)))
(assert (<= (- $Perm.Write $k@106@01) $Perm.Write))
(assert (=> (< $Perm.No (- $Perm.Write $k@106@01)) (not (= x1@104@01 $Ref.null))))
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@106@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] x.next != null
; [then-branch: 17 | False | dead]
; [else-branch: 17 | True | live]
(set-option :timeout 0)
(push) ; 3
; [else-branch: 17 | True]
(assert (list%trigger ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit) x1@104@01))
(declare-const sm@107@01 $PSF<list>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_list (as sm@107@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@104@01))
  ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)))
; [exec]
; x2 := new(next)
(declare-const x2@108@01 $Ref)
(assert (not (= x2@108@01 $Ref.null)))
(declare-const next@109@01 $Ref)
(assert (not (= x2@108@01 x4@101@01)))
(assert (not (= x2@108@01 x1@104@01)))
(assert (not (= x2@108@01 x2@99@01)))
(assert (not (= x2@108@01 x3@100@01)))
(assert (not (Set_in x2@108@01 xs@102@01)))
; [exec]
; x2.next := x1
(push) ; 4
(set-option :timeout 10)
(assert (not (= x1@104@01 x2@108@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; fold acc(list(x2), wildcard)
(declare-const $k@110@01 $Perm)
(assert ($Perm.isReadVar $k@110@01))
(assert (< $k@110@01 $Perm.Write))
(assert (<= $Perm.No (- $Perm.Write $k@110@01)))
(assert (<= (- $Perm.Write $k@110@01) $Perm.Write))
(assert (=> (< $Perm.No (- $Perm.Write $k@110@01)) (not (= x2@108@01 $Ref.null))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@110@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] x.next != null
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= x1@104@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 18 | x1@104@01 != Null | live]
; [else-branch: 18 | x1@104@01 == Null | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 18 | x1@104@01 != Null]
; Precomputing data for removing quantified permissions
(define-fun pTaken@111@01 ((x $Ref)) $Perm
  (ite
    (= x x1@104@01)
    ($Perm.min (ite (= x x1@104@01) $k@106@01 $Perm.No) $k@110@01)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Constrain original permissions $k@110@01
(assert (=> (not (= $k@106@01 $Perm.No)) (< $k@110@01 $k@106@01)))
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=> (= x x1@104@01) (= (- $k@110@01 (pTaken@111@01 x)) $Perm.No))
  
  :qid |quant-u-26331|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@112@01 $PSF<list>)
(declare-const s@113@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (< $Perm.No $k@106@01)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x1@104@01) $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@112@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@104@01))
      ($PSF.lookup_list (as sm@107@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@104@01))))))
(assert (list%trigger ($Snap.combine
  ($SortWrappers.$RefTo$Snap x1@104@01)
  ($PSF.lookup_list (as sm@112@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@104@01))) x2@108@01))
(declare-const sm@114@01 $PSF<list>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_list (as sm@114@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@108@01))
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap x1@104@01)
    ($PSF.lookup_list (as sm@112@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@104@01)))))
; [exec]
; x3 := new(next)
(declare-const x3@115@01 $Ref)
(assert (not (= x3@115@01 $Ref.null)))
(declare-const next@116@01 $Ref)
(assert (not (= x3@115@01 x4@101@01)))
(assert (not (= x3@115@01 x1@104@01)))
(assert (not (= x3@115@01 x3@100@01)))
(assert (not (= x3@115@01 x2@108@01)))
(assert (not (Set_in x3@115@01 xs@102@01)))
; [exec]
; x3.next := x2
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= x2@108@01 x3@115@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= x1@104@01 x3@115@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [exec]
; fold acc(list(x3), wildcard)
(declare-const $k@117@01 $Perm)
(assert ($Perm.isReadVar $k@117@01))
(assert (< $k@117@01 $Perm.Write))
(assert (<= $Perm.No (- $Perm.Write $k@117@01)))
(assert (<= (- $Perm.Write $k@117@01) $Perm.Write))
(assert (=> (< $Perm.No (- $Perm.Write $k@117@01)) (not (= x3@115@01 $Ref.null))))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@117@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] x.next != null
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= x2@108@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 19 | x2@108@01 != Null | live]
; [else-branch: 19 | x2@108@01 == Null | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 19 | x2@108@01 != Null]
; Precomputing data for removing quantified permissions
(define-fun pTaken@118@01 ((x $Ref)) $Perm
  (ite
    (= x x2@108@01)
    ($Perm.min (ite (= x x2@108@01) $k@110@01 $Perm.No) $k@117@01)
    $Perm.No))
(define-fun pTaken@119@01 ((x $Ref)) $Perm
  (ite
    (= x x2@108@01)
    ($Perm.min
      (ite (= x x1@104@01) (- $k@106@01 (pTaken@111@01 x)) $Perm.No)
      (- $k@117@01 (pTaken@118@01 x)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Constrain original permissions $k@117@01
(assert (=> (not (= $k@110@01 $Perm.No)) (< $k@117@01 $k@110@01)))
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=> (= x x2@108@01) (= (- $k@117@01 (pTaken@118@01 x)) $Perm.No))
  
  :qid |quant-u-26334|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@120@01 $PSF<list>)
(declare-const s@121@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (< $Perm.No $k@110@01)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x2@108@01) $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@120@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@108@01))
      ($PSF.lookup_list (as sm@114@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@108@01))))))
(assert (=>
  (ite
    (= x2@108@01 x1@104@01)
    (< $Perm.No (- $k@106@01 (pTaken@111@01 x2@108@01)))
    false)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x2@108@01) $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@120@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@108@01))
      ($PSF.lookup_list (as sm@107@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@108@01))))))
(assert (list%trigger ($Snap.combine
  ($SortWrappers.$RefTo$Snap x2@108@01)
  ($PSF.lookup_list (as sm@120@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@108@01))) x3@115@01))
(declare-const sm@122@01 $PSF<list>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_list (as sm@122@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@115@01))
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap x2@108@01)
    ($PSF.lookup_list (as sm@120@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@108@01)))))
; [exec]
; x4 := new(next)
(declare-const x4@123@01 $Ref)
(assert (not (= x4@123@01 $Ref.null)))
(declare-const next@124@01 $Ref)
(assert (not (= x4@123@01 x4@101@01)))
(assert (not (= x4@123@01 x1@104@01)))
(assert (not (= x4@123@01 x3@115@01)))
(assert (not (= x4@123@01 x2@108@01)))
(assert (not (Set_in x4@123@01 xs@102@01)))
; [exec]
; x4.next := x3
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= x3@115@01 x4@123@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= x1@104@01 x4@123@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= x2@108@01 x4@123@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [exec]
; fold acc(list(x4), wildcard)
(declare-const $k@125@01 $Perm)
(assert ($Perm.isReadVar $k@125@01))
(assert (< $k@125@01 $Perm.Write))
(assert (<= $Perm.No (- $Perm.Write $k@125@01)))
(assert (<= (- $Perm.Write $k@125@01) $Perm.Write))
(assert (=> (< $Perm.No (- $Perm.Write $k@125@01)) (not (= x4@123@01 $Ref.null))))
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@125@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] x.next != null
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= x3@115@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 20 | x3@115@01 != Null | live]
; [else-branch: 20 | x3@115@01 == Null | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 20 | x3@115@01 != Null]
; Precomputing data for removing quantified permissions
(define-fun pTaken@126@01 ((x $Ref)) $Perm
  (ite
    (= x x3@115@01)
    ($Perm.min (ite (= x x3@115@01) $k@117@01 $Perm.No) $k@125@01)
    $Perm.No))
(define-fun pTaken@127@01 ((x $Ref)) $Perm
  (ite
    (= x x3@115@01)
    ($Perm.min
      (ite (= x x1@104@01) (- $k@106@01 (pTaken@111@01 x)) $Perm.No)
      (- $k@125@01 (pTaken@126@01 x)))
    $Perm.No))
(define-fun pTaken@128@01 ((x $Ref)) $Perm
  (ite
    (= x x3@115@01)
    ($Perm.min
      (ite (= x x2@108@01) (- $k@110@01 (pTaken@118@01 x)) $Perm.No)
      (- (- $k@125@01 (pTaken@126@01 x)) (pTaken@127@01 x)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Constrain original permissions $k@125@01
(assert (=> (not (= $k@117@01 $Perm.No)) (< $k@125@01 $k@117@01)))
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=> (= x x3@115@01) (= (- $k@125@01 (pTaken@126@01 x)) $Perm.No))
  
  :qid |quant-u-26337|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@129@01 $PSF<list>)
(declare-const s@130@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (< $Perm.No $k@117@01)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x3@115@01) $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@129@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@115@01))
      ($PSF.lookup_list (as sm@122@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@115@01))))))
(assert (=>
  (ite
    (= x3@115@01 x1@104@01)
    (< $Perm.No (- $k@106@01 (pTaken@111@01 x3@115@01)))
    false)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x3@115@01) $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@129@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@115@01))
      ($PSF.lookup_list (as sm@107@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@115@01))))))
(assert (=>
  (ite
    (= x3@115@01 x2@108@01)
    (< $Perm.No (- $k@110@01 (pTaken@118@01 x3@115@01)))
    false)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x3@115@01) $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@129@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@115@01))
      ($PSF.lookup_list (as sm@114@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@115@01))))))
(assert (list%trigger ($Snap.combine
  ($SortWrappers.$RefTo$Snap x3@115@01)
  ($PSF.lookup_list (as sm@129@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@115@01))) x4@123@01))
(declare-const sm@131@01 $PSF<list>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_list (as sm@131@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@123@01))
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap x3@115@01)
    ($PSF.lookup_list (as sm@129@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@115@01)))))
; [exec]
; xs := Set(x1, x2, x4, x3)
; [eval] Set(x1, x2, x4, x3)
(declare-const xs@132@01 Set<$Ref>)
(assert (=
  xs@132@01
  (Set_unionone (Set_unionone (Set_unionone (Set_singleton x1@104@01) x2@108@01) x4@123@01) x3@115@01)))
; [exec]
; inhale length2_impl(xs, x4, 1, res)
(declare-const $t@133@01 $Snap)
(assert (= $t@133@01 $Snap.unit))
; [eval] length2_impl(xs, x4, 1, res)
(set-option :timeout 0)
(push) ; 7
(declare-const x@134@01 $Ref)
(push) ; 8
; [eval] (x in xs)
(assert (Set_in x@134@01 xs@132@01))
(declare-const $k@135@01 $Perm)
(assert ($Perm.isReadVar $k@135@01))
(pop) ; 8
(declare-fun inv@136@01 ($Ref) $Ref)
(declare-fun img@137@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@135@01))
; Nested auxiliary terms: non-globals
(push) ; 8
(assert (not (forall ((x@134@01 $Ref)) (!
  (=>
    (Set_in x@134@01 xs@132@01)
    (or (= $k@135@01 $Perm.No) (< $Perm.No $k@135@01)))
  
  :qid |quant-u-26338|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 8
(assert (not (forall ((x1@134@01 $Ref) (x2@134@01 $Ref)) (!
  (=>
    (and
      (and (Set_in x1@134@01 xs@132@01) (< $Perm.No $k@135@01))
      (and (Set_in x2@134@01 xs@132@01) (< $Perm.No $k@135@01))
      (= x1@134@01 x2@134@01))
    (= x1@134@01 x2@134@01))
  
  :qid |list-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@134@01 $Ref)) (!
  (=>
    (and (Set_in x@134@01 xs@132@01) (< $Perm.No $k@135@01))
    (and (= (inv@136@01 x@134@01) x@134@01) (img@137@01 x@134@01)))
  :pattern ((Set_in x@134@01 xs@132@01))
  :pattern ((inv@136@01 x@134@01))
  :pattern ((img@137@01 x@134@01))
  :qid |list-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and
      (img@137@01 x)
      (and (Set_in (inv@136@01 x) xs@132@01) (< $Perm.No $k@135@01)))
    (= (inv@136@01 x) x))
  :pattern ((inv@136@01 x))
  :qid |list-fctOfInv|)))
(push) ; 8
(assert (not (forall ((x $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@136@01 x) xs@132@01) (img@137@01 x) (= x (inv@136@01 x)))
      (> $k@135@01 $Perm.No))
    (>
      (+
        (+
          (+
            (ite (= x x4@123@01) $k@125@01 $Perm.No)
            (ite (= x x2@108@01) (- $k@110@01 (pTaken@118@01 x)) $Perm.No))
          (ite (= x x1@104@01) (- $k@106@01 (pTaken@111@01 x)) $Perm.No))
        (ite (= x x3@115@01) (- $k@117@01 (pTaken@126@01 x)) $Perm.No))
      $Perm.No))
  
  :qid |quant-u-26339|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(declare-const sm@138@01 $PSF<list>)
(declare-const s@139@01 $Snap)
; Definitional axioms for snapshot map domain
(assert (forall ((s@139@01 $Snap)) (!
  (and
    (=>
      (Set_in s@139@01 ($PSF.domain_list (as sm@138@01  $PSF<list>)))
      (and
        (Set_in (inv@136@01 ($SortWrappers.$SnapTo$Ref s@139@01)) xs@132@01)
        (< $Perm.No $k@135@01)
        (img@137@01 ($SortWrappers.$SnapTo$Ref s@139@01))))
    (=>
      (and
        (Set_in (inv@136@01 ($SortWrappers.$SnapTo$Ref s@139@01)) xs@132@01)
        (< $Perm.No $k@135@01)
        (img@137@01 ($SortWrappers.$SnapTo$Ref s@139@01)))
      (Set_in s@139@01 ($PSF.domain_list (as sm@138@01  $PSF<list>)))))
  :pattern ((Set_in s@139@01 ($PSF.domain_list (as sm@138@01  $PSF<list>))))
  :qid |qp.psmDomDef20|)))
; Definitional axioms for snapshot map values
(assert (forall ((s@139@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@136@01 ($SortWrappers.$SnapTo$Ref s@139@01)) xs@132@01)
        (< $Perm.No $k@135@01)
        (img@137@01 ($SortWrappers.$SnapTo$Ref s@139@01)))
      (ite
        (= ($SortWrappers.$SnapTo$Ref s@139@01) x4@123@01)
        (< $Perm.No $k@125@01)
        false))
    (and
      (not (= s@139@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@138@01  $PSF<list>) s@139@01)
        ($PSF.lookup_list (as sm@131@01  $PSF<list>) s@139@01))))
  :pattern (($PSF.lookup_list (as sm@138@01  $PSF<list>) s@139@01))
  :pattern (($PSF.lookup_list (as sm@131@01  $PSF<list>) s@139@01))
  :qid |qp.psmValDef16|)))
(assert (forall ((s@139@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@136@01 ($SortWrappers.$SnapTo$Ref s@139@01)) xs@132@01)
        (< $Perm.No $k@135@01)
        (img@137@01 ($SortWrappers.$SnapTo$Ref s@139@01)))
      (ite
        (= ($SortWrappers.$SnapTo$Ref s@139@01) x2@108@01)
        (<
          $Perm.No
          (- $k@110@01 (pTaken@118@01 ($SortWrappers.$SnapTo$Ref s@139@01))))
        false))
    (and
      (not (= s@139@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@138@01  $PSF<list>) s@139@01)
        ($PSF.lookup_list (as sm@114@01  $PSF<list>) s@139@01))))
  :pattern (($PSF.lookup_list (as sm@138@01  $PSF<list>) s@139@01))
  :pattern (($PSF.lookup_list (as sm@114@01  $PSF<list>) s@139@01))
  :qid |qp.psmValDef17|)))
(assert (forall ((s@139@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@136@01 ($SortWrappers.$SnapTo$Ref s@139@01)) xs@132@01)
        (< $Perm.No $k@135@01)
        (img@137@01 ($SortWrappers.$SnapTo$Ref s@139@01)))
      (ite
        (= ($SortWrappers.$SnapTo$Ref s@139@01) x1@104@01)
        (<
          $Perm.No
          (- $k@106@01 (pTaken@111@01 ($SortWrappers.$SnapTo$Ref s@139@01))))
        false))
    (and
      (not (= s@139@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@138@01  $PSF<list>) s@139@01)
        ($PSF.lookup_list (as sm@107@01  $PSF<list>) s@139@01))))
  :pattern (($PSF.lookup_list (as sm@138@01  $PSF<list>) s@139@01))
  :pattern (($PSF.lookup_list (as sm@107@01  $PSF<list>) s@139@01))
  :qid |qp.psmValDef18|)))
(assert (forall ((s@139@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@136@01 ($SortWrappers.$SnapTo$Ref s@139@01)) xs@132@01)
        (< $Perm.No $k@135@01)
        (img@137@01 ($SortWrappers.$SnapTo$Ref s@139@01)))
      (ite
        (= ($SortWrappers.$SnapTo$Ref s@139@01) x3@115@01)
        (<
          $Perm.No
          (- $k@117@01 (pTaken@126@01 ($SortWrappers.$SnapTo$Ref s@139@01))))
        false))
    (and
      (not (= s@139@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@138@01  $PSF<list>) s@139@01)
        ($PSF.lookup_list (as sm@122@01  $PSF<list>) s@139@01))))
  :pattern (($PSF.lookup_list (as sm@138@01  $PSF<list>) s@139@01))
  :pattern (($PSF.lookup_list (as sm@122@01  $PSF<list>) s@139@01))
  :qid |qp.psmValDef19|)))
(assert (length2_impl%precondition ($SortWrappers.$PSF<list>To$Snap (as sm@138@01  $PSF<list>)) xs@132@01 x4@123@01 1 res@103@01))
(pop) ; 7
; Joined path conditions
(assert ($Perm.isReadVar $k@135@01))
(assert (forall ((x@134@01 $Ref)) (!
  (=>
    (and (Set_in x@134@01 xs@132@01) (< $Perm.No $k@135@01))
    (and (= (inv@136@01 x@134@01) x@134@01) (img@137@01 x@134@01)))
  :pattern ((Set_in x@134@01 xs@132@01))
  :pattern ((inv@136@01 x@134@01))
  :pattern ((img@137@01 x@134@01))
  :qid |list-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and
      (img@137@01 x)
      (and (Set_in (inv@136@01 x) xs@132@01) (< $Perm.No $k@135@01)))
    (= (inv@136@01 x) x))
  :pattern ((inv@136@01 x))
  :qid |list-fctOfInv|)))
(assert (forall ((s@139@01 $Snap)) (!
  (and
    (=>
      (Set_in s@139@01 ($PSF.domain_list (as sm@138@01  $PSF<list>)))
      (and
        (Set_in (inv@136@01 ($SortWrappers.$SnapTo$Ref s@139@01)) xs@132@01)
        (< $Perm.No $k@135@01)
        (img@137@01 ($SortWrappers.$SnapTo$Ref s@139@01))))
    (=>
      (and
        (Set_in (inv@136@01 ($SortWrappers.$SnapTo$Ref s@139@01)) xs@132@01)
        (< $Perm.No $k@135@01)
        (img@137@01 ($SortWrappers.$SnapTo$Ref s@139@01)))
      (Set_in s@139@01 ($PSF.domain_list (as sm@138@01  $PSF<list>)))))
  :pattern ((Set_in s@139@01 ($PSF.domain_list (as sm@138@01  $PSF<list>))))
  :qid |qp.psmDomDef20|)))
(assert (forall ((s@139@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@136@01 ($SortWrappers.$SnapTo$Ref s@139@01)) xs@132@01)
        (< $Perm.No $k@135@01)
        (img@137@01 ($SortWrappers.$SnapTo$Ref s@139@01)))
      (ite
        (= ($SortWrappers.$SnapTo$Ref s@139@01) x4@123@01)
        (< $Perm.No $k@125@01)
        false))
    (and
      (not (= s@139@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@138@01  $PSF<list>) s@139@01)
        ($PSF.lookup_list (as sm@131@01  $PSF<list>) s@139@01))))
  :pattern (($PSF.lookup_list (as sm@138@01  $PSF<list>) s@139@01))
  :pattern (($PSF.lookup_list (as sm@131@01  $PSF<list>) s@139@01))
  :qid |qp.psmValDef16|)))
(assert (forall ((s@139@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@136@01 ($SortWrappers.$SnapTo$Ref s@139@01)) xs@132@01)
        (< $Perm.No $k@135@01)
        (img@137@01 ($SortWrappers.$SnapTo$Ref s@139@01)))
      (ite
        (= ($SortWrappers.$SnapTo$Ref s@139@01) x2@108@01)
        (<
          $Perm.No
          (- $k@110@01 (pTaken@118@01 ($SortWrappers.$SnapTo$Ref s@139@01))))
        false))
    (and
      (not (= s@139@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@138@01  $PSF<list>) s@139@01)
        ($PSF.lookup_list (as sm@114@01  $PSF<list>) s@139@01))))
  :pattern (($PSF.lookup_list (as sm@138@01  $PSF<list>) s@139@01))
  :pattern (($PSF.lookup_list (as sm@114@01  $PSF<list>) s@139@01))
  :qid |qp.psmValDef17|)))
(assert (forall ((s@139@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@136@01 ($SortWrappers.$SnapTo$Ref s@139@01)) xs@132@01)
        (< $Perm.No $k@135@01)
        (img@137@01 ($SortWrappers.$SnapTo$Ref s@139@01)))
      (ite
        (= ($SortWrappers.$SnapTo$Ref s@139@01) x1@104@01)
        (<
          $Perm.No
          (- $k@106@01 (pTaken@111@01 ($SortWrappers.$SnapTo$Ref s@139@01))))
        false))
    (and
      (not (= s@139@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@138@01  $PSF<list>) s@139@01)
        ($PSF.lookup_list (as sm@107@01  $PSF<list>) s@139@01))))
  :pattern (($PSF.lookup_list (as sm@138@01  $PSF<list>) s@139@01))
  :pattern (($PSF.lookup_list (as sm@107@01  $PSF<list>) s@139@01))
  :qid |qp.psmValDef18|)))
(assert (forall ((s@139@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@136@01 ($SortWrappers.$SnapTo$Ref s@139@01)) xs@132@01)
        (< $Perm.No $k@135@01)
        (img@137@01 ($SortWrappers.$SnapTo$Ref s@139@01)))
      (ite
        (= ($SortWrappers.$SnapTo$Ref s@139@01) x3@115@01)
        (<
          $Perm.No
          (- $k@117@01 (pTaken@126@01 ($SortWrappers.$SnapTo$Ref s@139@01))))
        false))
    (and
      (not (= s@139@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@138@01  $PSF<list>) s@139@01)
        ($PSF.lookup_list (as sm@122@01  $PSF<list>) s@139@01))))
  :pattern (($PSF.lookup_list (as sm@138@01  $PSF<list>) s@139@01))
  :pattern (($PSF.lookup_list (as sm@122@01  $PSF<list>) s@139@01))
  :qid |qp.psmValDef19|)))
(assert (length2_impl%precondition ($SortWrappers.$PSF<list>To$Snap (as sm@138@01  $PSF<list>)) xs@132@01 x4@123@01 1 res@103@01))
(assert (length2_impl ($SortWrappers.$PSF<list>To$Snap (as sm@138@01  $PSF<list>)) xs@132@01 x4@123@01 1 res@103@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert res == 4
; [eval] res == 4
(set-option :timeout 0)
(push) ; 7
(assert (not (= res@103@01 4)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x1@104@01 x3@115@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x2@108@01 x1@104@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x2@108@01 x3@115@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x4@123@01 x2@108@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x2@108@01 x1@104@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x4@123@01 x1@104@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x1@104@01 x3@115@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x2@108@01 x3@115@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x4@123@01 x3@115@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x4@123@01 x2@108@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x4@123@01 x1@104@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x4@123@01 x3@115@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No $k@125@01)
    (< $Perm.No (- $k@110@01 (pTaken@118@01 x2@108@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@131@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@123@01))
      ($PSF.lookup_list (as sm@114@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@108@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No $k@125@01)
    (< $Perm.No (- $k@106@01 (pTaken@111@01 x1@104@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@131@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@123@01))
      ($PSF.lookup_list (as sm@107@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@104@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No $k@125@01)
    (< $Perm.No (- $k@117@01 (pTaken@126@01 x3@115@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@131@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@123@01))
      ($PSF.lookup_list (as sm@122@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@115@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@110@01 (pTaken@118@01 x2@108@01)))
    (< $Perm.No $k@125@01))
  (not
    (=
      ($PSF.lookup_list (as sm@114@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@108@01))
      ($PSF.lookup_list (as sm@131@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@123@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@110@01 (pTaken@118@01 x2@108@01)))
    (< $Perm.No (- $k@106@01 (pTaken@111@01 x1@104@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@114@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@108@01))
      ($PSF.lookup_list (as sm@107@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@104@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@110@01 (pTaken@118@01 x2@108@01)))
    (< $Perm.No (- $k@117@01 (pTaken@126@01 x3@115@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@114@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@108@01))
      ($PSF.lookup_list (as sm@122@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@115@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@106@01 (pTaken@111@01 x1@104@01)))
    (< $Perm.No $k@125@01))
  (not
    (=
      ($PSF.lookup_list (as sm@107@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@104@01))
      ($PSF.lookup_list (as sm@131@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@123@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@106@01 (pTaken@111@01 x1@104@01)))
    (< $Perm.No (- $k@110@01 (pTaken@118@01 x2@108@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@107@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@104@01))
      ($PSF.lookup_list (as sm@114@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@108@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@106@01 (pTaken@111@01 x1@104@01)))
    (< $Perm.No (- $k@117@01 (pTaken@126@01 x3@115@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@107@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@104@01))
      ($PSF.lookup_list (as sm@122@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@115@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@117@01 (pTaken@126@01 x3@115@01)))
    (< $Perm.No $k@125@01))
  (not
    (=
      ($PSF.lookup_list (as sm@122@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@115@01))
      ($PSF.lookup_list (as sm@131@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@123@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@117@01 (pTaken@126@01 x3@115@01)))
    (< $Perm.No (- $k@110@01 (pTaken@118@01 x2@108@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@122@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@115@01))
      ($PSF.lookup_list (as sm@114@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@108@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@117@01 (pTaken@126@01 x3@115@01)))
    (< $Perm.No (- $k@106@01 (pTaken@111@01 x1@104@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@122@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@115@01))
      ($PSF.lookup_list (as sm@107@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@104@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (and
    (not (= x4@123@01 x2@108@01))
    (not (= x4@123@01 x1@104@01))
    (not (= x4@123@01 x3@115@01)))
  (and
    (not (= x2@108@01 x4@123@01))
    (not (= x2@108@01 x1@104@01))
    (not (= x2@108@01 x3@115@01)))
  (and
    (not (= x1@104@01 x4@123@01))
    (not (= x1@104@01 x2@108@01))
    (not (= x1@104@01 x3@115@01)))
  (and
    (not (= x3@115@01 x4@123@01))
    (not (= x3@115@01 x2@108@01))
    (not (= x3@115@01 x1@104@01)))))
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@117@01) (- $Perm.Write $k@106@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@117@01) (- $Perm.Write $k@110@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@117@01) (- $Perm.Write $k@125@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@106@01) (- $Perm.Write $k@117@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@106@01) (- $Perm.Write $k@110@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@106@01) (- $Perm.Write $k@125@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@110@01) (- $Perm.Write $k@117@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@110@01) (- $Perm.Write $k@106@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@110@01) (- $Perm.Write $k@125@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@125@01) (- $Perm.Write $k@117@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@125@01) (- $Perm.Write $k@106@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@125@01) (- $Perm.Write $k@110@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@117@01))
    (< $Perm.No (- $Perm.Write $k@106@01)))
  (not (= x2@108@01 $Ref.null)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@117@01))
    (< $Perm.No (- $Perm.Write $k@110@01)))
  (not (= x2@108@01 x1@104@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@117@01))
    (< $Perm.No (- $Perm.Write $k@125@01)))
  (not (= x2@108@01 x3@115@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@106@01))
    (< $Perm.No (- $Perm.Write $k@117@01)))
  (not (= $Ref.null x2@108@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@106@01))
    (< $Perm.No (- $Perm.Write $k@110@01)))
  (not (= $Ref.null x1@104@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@106@01))
    (< $Perm.No (- $Perm.Write $k@125@01)))
  (not (= $Ref.null x3@115@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@110@01))
    (< $Perm.No (- $Perm.Write $k@117@01)))
  (not (= x1@104@01 x2@108@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@110@01))
    (< $Perm.No (- $Perm.Write $k@106@01)))
  (not (= x1@104@01 $Ref.null)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@110@01))
    (< $Perm.No (- $Perm.Write $k@125@01)))
  (not (= x1@104@01 x3@115@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@125@01))
    (< $Perm.No (- $Perm.Write $k@117@01)))
  (not (= x3@115@01 x2@108@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@125@01))
    (< $Perm.No (- $Perm.Write $k@106@01)))
  (not (= x3@115@01 $Ref.null)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@125@01))
    (< $Perm.No (- $Perm.Write $k@110@01)))
  (not (= x3@115@01 x1@104@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (and
    (not (= x3@115@01 x1@104@01))
    (not (= x3@115@01 x2@108@01))
    (not (= x3@115@01 x4@123@01)))
  (and
    (not (= x1@104@01 x3@115@01))
    (not (= x1@104@01 x2@108@01))
    (not (= x1@104@01 x4@123@01)))
  (and
    (not (= x2@108@01 x3@115@01))
    (not (= x2@108@01 x1@104@01))
    (not (= x2@108@01 x4@123@01)))
  (and
    (not (= x4@123@01 x3@115@01))
    (not (= x4@123@01 x1@104@01))
    (not (= x4@123@01 x2@108@01)))))
; [eval] res == 4
(set-option :timeout 0)
(push) ; 7
(assert (not (= res@103@01 4)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x1@104@01 x3@115@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x2@108@01 x1@104@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x2@108@01 x3@115@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x4@123@01 x2@108@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x2@108@01 x1@104@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x4@123@01 x1@104@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x1@104@01 x3@115@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x2@108@01 x3@115@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x4@123@01 x3@115@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x4@123@01 x2@108@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x4@123@01 x1@104@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x4@123@01 x3@115@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No $k@125@01)
    (< $Perm.No (- $k@110@01 (pTaken@118@01 x2@108@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@131@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@123@01))
      ($PSF.lookup_list (as sm@114@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@108@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No $k@125@01)
    (< $Perm.No (- $k@106@01 (pTaken@111@01 x1@104@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@131@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@123@01))
      ($PSF.lookup_list (as sm@107@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@104@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No $k@125@01)
    (< $Perm.No (- $k@117@01 (pTaken@126@01 x3@115@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@131@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@123@01))
      ($PSF.lookup_list (as sm@122@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@115@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@110@01 (pTaken@118@01 x2@108@01)))
    (< $Perm.No $k@125@01))
  (not
    (=
      ($PSF.lookup_list (as sm@114@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@108@01))
      ($PSF.lookup_list (as sm@131@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@123@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@110@01 (pTaken@118@01 x2@108@01)))
    (< $Perm.No (- $k@106@01 (pTaken@111@01 x1@104@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@114@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@108@01))
      ($PSF.lookup_list (as sm@107@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@104@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@110@01 (pTaken@118@01 x2@108@01)))
    (< $Perm.No (- $k@117@01 (pTaken@126@01 x3@115@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@114@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@108@01))
      ($PSF.lookup_list (as sm@122@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@115@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@106@01 (pTaken@111@01 x1@104@01)))
    (< $Perm.No $k@125@01))
  (not
    (=
      ($PSF.lookup_list (as sm@107@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@104@01))
      ($PSF.lookup_list (as sm@131@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@123@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@106@01 (pTaken@111@01 x1@104@01)))
    (< $Perm.No (- $k@110@01 (pTaken@118@01 x2@108@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@107@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@104@01))
      ($PSF.lookup_list (as sm@114@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@108@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@106@01 (pTaken@111@01 x1@104@01)))
    (< $Perm.No (- $k@117@01 (pTaken@126@01 x3@115@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@107@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@104@01))
      ($PSF.lookup_list (as sm@122@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@115@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@117@01 (pTaken@126@01 x3@115@01)))
    (< $Perm.No $k@125@01))
  (not
    (=
      ($PSF.lookup_list (as sm@122@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@115@01))
      ($PSF.lookup_list (as sm@131@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@123@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@117@01 (pTaken@126@01 x3@115@01)))
    (< $Perm.No (- $k@110@01 (pTaken@118@01 x2@108@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@122@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@115@01))
      ($PSF.lookup_list (as sm@114@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@108@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@117@01 (pTaken@126@01 x3@115@01)))
    (< $Perm.No (- $k@106@01 (pTaken@111@01 x1@104@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@122@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@115@01))
      ($PSF.lookup_list (as sm@107@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@104@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (and
    (not (= x4@123@01 x2@108@01))
    (not (= x4@123@01 x1@104@01))
    (not (= x4@123@01 x3@115@01)))
  (and
    (not (= x2@108@01 x4@123@01))
    (not (= x2@108@01 x1@104@01))
    (not (= x2@108@01 x3@115@01)))
  (and
    (not (= x1@104@01 x4@123@01))
    (not (= x1@104@01 x2@108@01))
    (not (= x1@104@01 x3@115@01)))
  (and
    (not (= x3@115@01 x4@123@01))
    (not (= x3@115@01 x2@108@01))
    (not (= x3@115@01 x1@104@01)))))
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@117@01) (- $Perm.Write $k@106@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@117@01) (- $Perm.Write $k@110@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@117@01) (- $Perm.Write $k@125@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@106@01) (- $Perm.Write $k@117@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@106@01) (- $Perm.Write $k@110@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@106@01) (- $Perm.Write $k@125@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@110@01) (- $Perm.Write $k@117@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@110@01) (- $Perm.Write $k@106@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@110@01) (- $Perm.Write $k@125@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@125@01) (- $Perm.Write $k@117@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@125@01) (- $Perm.Write $k@106@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@125@01) (- $Perm.Write $k@110@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@117@01))
    (< $Perm.No (- $Perm.Write $k@106@01)))
  (not (= x2@108@01 $Ref.null)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@117@01))
    (< $Perm.No (- $Perm.Write $k@110@01)))
  (not (= x2@108@01 x1@104@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@117@01))
    (< $Perm.No (- $Perm.Write $k@125@01)))
  (not (= x2@108@01 x3@115@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@106@01))
    (< $Perm.No (- $Perm.Write $k@117@01)))
  (not (= $Ref.null x2@108@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@106@01))
    (< $Perm.No (- $Perm.Write $k@110@01)))
  (not (= $Ref.null x1@104@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@106@01))
    (< $Perm.No (- $Perm.Write $k@125@01)))
  (not (= $Ref.null x3@115@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@110@01))
    (< $Perm.No (- $Perm.Write $k@117@01)))
  (not (= x1@104@01 x2@108@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@110@01))
    (< $Perm.No (- $Perm.Write $k@106@01)))
  (not (= x1@104@01 $Ref.null)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@110@01))
    (< $Perm.No (- $Perm.Write $k@125@01)))
  (not (= x1@104@01 x3@115@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@125@01))
    (< $Perm.No (- $Perm.Write $k@117@01)))
  (not (= x3@115@01 x2@108@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@125@01))
    (< $Perm.No (- $Perm.Write $k@106@01)))
  (not (= x3@115@01 $Ref.null)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@125@01))
    (< $Perm.No (- $Perm.Write $k@110@01)))
  (not (= x3@115@01 x1@104@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (and
    (not (= x3@115@01 x1@104@01))
    (not (= x3@115@01 x2@108@01))
    (not (= x3@115@01 x4@123@01)))
  (and
    (not (= x1@104@01 x3@115@01))
    (not (= x1@104@01 x2@108@01))
    (not (= x1@104@01 x4@123@01)))
  (and
    (not (= x2@108@01 x3@115@01))
    (not (= x2@108@01 x1@104@01))
    (not (= x2@108@01 x4@123@01)))
  (and
    (not (= x4@123@01 x3@115@01))
    (not (= x4@123@01 x1@104@01))
    (not (= x4@123@01 x2@108@01)))))
; [eval] res == 4
(set-option :timeout 0)
(push) ; 7
(assert (not (= res@103@01 4)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x1@104@01 x3@115@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x2@108@01 x1@104@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x2@108@01 x3@115@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x4@123@01 x2@108@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x2@108@01 x1@104@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x4@123@01 x1@104@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x1@104@01 x3@115@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x2@108@01 x3@115@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x4@123@01 x3@115@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x4@123@01 x2@108@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x4@123@01 x1@104@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x4@123@01 x3@115@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No $k@125@01)
    (< $Perm.No (- $k@110@01 (pTaken@118@01 x2@108@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@131@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@123@01))
      ($PSF.lookup_list (as sm@114@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@108@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No $k@125@01)
    (< $Perm.No (- $k@106@01 (pTaken@111@01 x1@104@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@131@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@123@01))
      ($PSF.lookup_list (as sm@107@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@104@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No $k@125@01)
    (< $Perm.No (- $k@117@01 (pTaken@126@01 x3@115@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@131@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@123@01))
      ($PSF.lookup_list (as sm@122@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@115@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@110@01 (pTaken@118@01 x2@108@01)))
    (< $Perm.No $k@125@01))
  (not
    (=
      ($PSF.lookup_list (as sm@114@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@108@01))
      ($PSF.lookup_list (as sm@131@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@123@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@110@01 (pTaken@118@01 x2@108@01)))
    (< $Perm.No (- $k@106@01 (pTaken@111@01 x1@104@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@114@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@108@01))
      ($PSF.lookup_list (as sm@107@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@104@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@110@01 (pTaken@118@01 x2@108@01)))
    (< $Perm.No (- $k@117@01 (pTaken@126@01 x3@115@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@114@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@108@01))
      ($PSF.lookup_list (as sm@122@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@115@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@106@01 (pTaken@111@01 x1@104@01)))
    (< $Perm.No $k@125@01))
  (not
    (=
      ($PSF.lookup_list (as sm@107@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@104@01))
      ($PSF.lookup_list (as sm@131@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@123@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@106@01 (pTaken@111@01 x1@104@01)))
    (< $Perm.No (- $k@110@01 (pTaken@118@01 x2@108@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@107@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@104@01))
      ($PSF.lookup_list (as sm@114@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@108@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@106@01 (pTaken@111@01 x1@104@01)))
    (< $Perm.No (- $k@117@01 (pTaken@126@01 x3@115@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@107@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@104@01))
      ($PSF.lookup_list (as sm@122@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@115@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@117@01 (pTaken@126@01 x3@115@01)))
    (< $Perm.No $k@125@01))
  (not
    (=
      ($PSF.lookup_list (as sm@122@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@115@01))
      ($PSF.lookup_list (as sm@131@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@123@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@117@01 (pTaken@126@01 x3@115@01)))
    (< $Perm.No (- $k@110@01 (pTaken@118@01 x2@108@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@122@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@115@01))
      ($PSF.lookup_list (as sm@114@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@108@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@117@01 (pTaken@126@01 x3@115@01)))
    (< $Perm.No (- $k@106@01 (pTaken@111@01 x1@104@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@122@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@115@01))
      ($PSF.lookup_list (as sm@107@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@104@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (and
    (not (= x4@123@01 x2@108@01))
    (not (= x4@123@01 x1@104@01))
    (not (= x4@123@01 x3@115@01)))
  (and
    (not (= x2@108@01 x4@123@01))
    (not (= x2@108@01 x1@104@01))
    (not (= x2@108@01 x3@115@01)))
  (and
    (not (= x1@104@01 x4@123@01))
    (not (= x1@104@01 x2@108@01))
    (not (= x1@104@01 x3@115@01)))
  (and
    (not (= x3@115@01 x4@123@01))
    (not (= x3@115@01 x2@108@01))
    (not (= x3@115@01 x1@104@01)))))
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@117@01) (- $Perm.Write $k@106@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@117@01) (- $Perm.Write $k@110@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@117@01) (- $Perm.Write $k@125@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@106@01) (- $Perm.Write $k@117@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@106@01) (- $Perm.Write $k@110@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@106@01) (- $Perm.Write $k@125@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@110@01) (- $Perm.Write $k@117@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@110@01) (- $Perm.Write $k@106@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@110@01) (- $Perm.Write $k@125@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@125@01) (- $Perm.Write $k@117@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@125@01) (- $Perm.Write $k@106@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@125@01) (- $Perm.Write $k@110@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@117@01))
    (< $Perm.No (- $Perm.Write $k@106@01)))
  (not (= x2@108@01 $Ref.null)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@117@01))
    (< $Perm.No (- $Perm.Write $k@110@01)))
  (not (= x2@108@01 x1@104@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@117@01))
    (< $Perm.No (- $Perm.Write $k@125@01)))
  (not (= x2@108@01 x3@115@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@106@01))
    (< $Perm.No (- $Perm.Write $k@117@01)))
  (not (= $Ref.null x2@108@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@106@01))
    (< $Perm.No (- $Perm.Write $k@110@01)))
  (not (= $Ref.null x1@104@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@106@01))
    (< $Perm.No (- $Perm.Write $k@125@01)))
  (not (= $Ref.null x3@115@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@110@01))
    (< $Perm.No (- $Perm.Write $k@117@01)))
  (not (= x1@104@01 x2@108@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@110@01))
    (< $Perm.No (- $Perm.Write $k@106@01)))
  (not (= x1@104@01 $Ref.null)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@110@01))
    (< $Perm.No (- $Perm.Write $k@125@01)))
  (not (= x1@104@01 x3@115@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@125@01))
    (< $Perm.No (- $Perm.Write $k@117@01)))
  (not (= x3@115@01 x2@108@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@125@01))
    (< $Perm.No (- $Perm.Write $k@106@01)))
  (not (= x3@115@01 $Ref.null)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@125@01))
    (< $Perm.No (- $Perm.Write $k@110@01)))
  (not (= x3@115@01 x1@104@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (and
    (not (= x3@115@01 x1@104@01))
    (not (= x3@115@01 x2@108@01))
    (not (= x3@115@01 x4@123@01)))
  (and
    (not (= x1@104@01 x3@115@01))
    (not (= x1@104@01 x2@108@01))
    (not (= x1@104@01 x4@123@01)))
  (and
    (not (= x2@108@01 x3@115@01))
    (not (= x2@108@01 x1@104@01))
    (not (= x2@108@01 x4@123@01)))
  (and
    (not (= x4@123@01 x3@115@01))
    (not (= x4@123@01 x1@104@01))
    (not (= x4@123@01 x2@108@01)))))
; [eval] res == 4
(set-option :timeout 0)
(push) ; 7
(assert (not (= res@103@01 4)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test3_length1 ----------
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
; var x1: Ref
(declare-const x1@140@01 $Ref)
; [exec]
; var xs: Set[Ref]
(declare-const xs@141@01 Set<$Ref>)
; [exec]
; var res: Int
(declare-const res@142@01 Int)
; [exec]
; x1 := new(next)
(declare-const x1@143@01 $Ref)
(assert (not (= x1@143@01 $Ref.null)))
(declare-const next@144@01 $Ref)
(assert (not (= x1@143@01 x1@140@01)))
(assert (not (Set_in x1@143@01 xs@141@01)))
; [exec]
; x1.next := null
; [exec]
; fold acc(list(x1), write)
; [eval] x.next != null
; [then-branch: 21 | False | dead]
; [else-branch: 21 | True | live]
(push) ; 3
; [else-branch: 21 | True]
(assert (list%trigger ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit) x1@143@01))
(declare-const sm@145@01 $PSF<list>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_list (as sm@145@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@143@01))
  ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)))
(declare-const sm@146@01 $PSF<list>)
(declare-const s@147@01 $Snap)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((s@147@01 $Snap)) (!
  (=>
    (= ($SortWrappers.$SnapTo$Ref s@147@01) x1@143@01)
    (and
      (not (= s@147@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@146@01  $PSF<list>) s@147@01)
        ($PSF.lookup_list (as sm@145@01  $PSF<list>) s@147@01))))
  :pattern (($PSF.lookup_list (as sm@146@01  $PSF<list>) s@147@01))
  :pattern (($PSF.lookup_list (as sm@145@01  $PSF<list>) s@147@01))
  :qid |qp.psmValDef21|)))
(assert (forall ((s@147@01 $Snap)) (!
  ($PSF.loc_list ($PSF.lookup_list (as sm@145@01  $PSF<list>) s@147@01) s@147@01)
  :pattern (($PSF.lookup_list (as sm@146@01  $PSF<list>) s@147@01))
  :qid |qp.psmResTrgDef22|)))
(assert ($PSF.loc_list ($PSF.lookup_list (as sm@146@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@143@01)) ($SortWrappers.$RefTo$Snap x1@143@01)))
; [exec]
; xs := Set(x1)
; [eval] Set(x1)
(declare-const xs@148@01 Set<$Ref>)
(assert (= xs@148@01 (Set_singleton x1@143@01)))
; [exec]
; inhale length3_impl(xs, x1, 1, res)
(declare-const $t@149@01 $Snap)
(assert (= $t@149@01 $Snap.unit))
; [eval] length3_impl(xs, x1, 1, res)
(push) ; 4
(declare-const x@150@01 $Ref)
(push) ; 5
; [eval] (x in xs)
(assert (Set_in x@150@01 xs@148@01))
(declare-const $k@151@01 $Perm)
(assert ($Perm.isReadVar $k@151@01))
(pop) ; 5
(declare-fun inv@152@01 ($Ref) $Ref)
(declare-fun img@153@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@151@01))
; Nested auxiliary terms: non-globals
(push) ; 5
(assert (not (forall ((x@150@01 $Ref)) (!
  (=>
    (Set_in x@150@01 xs@148@01)
    (or (= $k@151@01 $Perm.No) (< $Perm.No $k@151@01)))
  
  :qid |quant-u-26340|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((x1@150@01 $Ref) (x2@150@01 $Ref)) (!
  (=>
    (and
      (and
        (and
          (Set_in x1@150@01 xs@148@01)
          ($PSF.loc_list ($PSF.lookup_list (as sm@146@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@150@01)) ($SortWrappers.$RefTo$Snap x1@150@01)))
        (< $Perm.No $k@151@01))
      (and
        (and
          (Set_in x2@150@01 xs@148@01)
          ($PSF.loc_list ($PSF.lookup_list (as sm@146@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@150@01)) ($SortWrappers.$RefTo$Snap x2@150@01)))
        (< $Perm.No $k@151@01))
      (= x1@150@01 x2@150@01))
    (= x1@150@01 x2@150@01))
  
  :qid |list-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@150@01 $Ref)) (!
  (=>
    (and (Set_in x@150@01 xs@148@01) (< $Perm.No $k@151@01))
    (and (= (inv@152@01 x@150@01) x@150@01) (img@153@01 x@150@01)))
  :pattern ((Set_in x@150@01 xs@148@01))
  :pattern ((inv@152@01 x@150@01))
  :pattern ((img@153@01 x@150@01))
  :qid |list-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and
      (img@153@01 x)
      (and (Set_in (inv@152@01 x) xs@148@01) (< $Perm.No $k@151@01)))
    (= (inv@152@01 x) x))
  :pattern ((inv@152@01 x))
  :qid |list-fctOfInv|)))
(assert (forall ((x $Ref)) (!
  (=>
    (Set_in (inv@152@01 x) xs@148@01)
    ($PSF.loc_list ($PSF.lookup_list (as sm@146@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x)) ($SortWrappers.$RefTo$Snap x)))
  :pattern ((inv@152@01 x))
  :qid |quant-u-26341|)))
(push) ; 5
(assert (not (forall ((x $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@152@01 x) xs@148@01) (img@153@01 x) (= x (inv@152@01 x)))
      (> $k@151@01 $Perm.No))
    (> (ite (= x x1@143@01) $Perm.Write $Perm.No) $Perm.No))
  
  :qid |quant-u-26342|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@154@01 $PSF<list>)
(declare-const s@155@01 $Snap)
; Definitional axioms for snapshot map domain
(assert (forall ((s@155@01 $Snap)) (!
  (and
    (=>
      (Set_in s@155@01 ($PSF.domain_list (as sm@154@01  $PSF<list>)))
      (and
        (Set_in (inv@152@01 ($SortWrappers.$SnapTo$Ref s@155@01)) xs@148@01)
        (< $Perm.No $k@151@01)
        (img@153@01 ($SortWrappers.$SnapTo$Ref s@155@01))))
    (=>
      (and
        (Set_in (inv@152@01 ($SortWrappers.$SnapTo$Ref s@155@01)) xs@148@01)
        (< $Perm.No $k@151@01)
        (img@153@01 ($SortWrappers.$SnapTo$Ref s@155@01)))
      (Set_in s@155@01 ($PSF.domain_list (as sm@154@01  $PSF<list>)))))
  :pattern ((Set_in s@155@01 ($PSF.domain_list (as sm@154@01  $PSF<list>))))
  :qid |qp.psmDomDef25|)))
; Definitional axioms for snapshot map values
(assert (forall ((s@155@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@152@01 ($SortWrappers.$SnapTo$Ref s@155@01)) xs@148@01)
        (< $Perm.No $k@151@01)
        (img@153@01 ($SortWrappers.$SnapTo$Ref s@155@01)))
      (= ($SortWrappers.$SnapTo$Ref s@155@01) x1@143@01))
    (and
      (not (= s@155@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@154@01  $PSF<list>) s@155@01)
        ($PSF.lookup_list (as sm@145@01  $PSF<list>) s@155@01))))
  :pattern (($PSF.lookup_list (as sm@154@01  $PSF<list>) s@155@01))
  :pattern (($PSF.lookup_list (as sm@145@01  $PSF<list>) s@155@01))
  :qid |qp.psmValDef23|)))
(assert (forall ((s@155@01 $Snap)) (!
  ($PSF.loc_list ($PSF.lookup_list (as sm@145@01  $PSF<list>) s@155@01) s@155@01)
  :pattern (($PSF.lookup_list (as sm@154@01  $PSF<list>) s@155@01))
  :qid |qp.psmResTrgDef24|)))
(assert (length3_impl%precondition ($SortWrappers.$PSF<list>To$Snap (as sm@154@01  $PSF<list>)) xs@148@01 x1@143@01 1 res@142@01))
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@151@01))
(assert (forall ((x@150@01 $Ref)) (!
  (=>
    (and (Set_in x@150@01 xs@148@01) (< $Perm.No $k@151@01))
    (and (= (inv@152@01 x@150@01) x@150@01) (img@153@01 x@150@01)))
  :pattern ((Set_in x@150@01 xs@148@01))
  :pattern ((inv@152@01 x@150@01))
  :pattern ((img@153@01 x@150@01))
  :qid |list-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and
      (img@153@01 x)
      (and (Set_in (inv@152@01 x) xs@148@01) (< $Perm.No $k@151@01)))
    (= (inv@152@01 x) x))
  :pattern ((inv@152@01 x))
  :qid |list-fctOfInv|)))
(assert (forall ((s@155@01 $Snap)) (!
  (and
    (=>
      (Set_in s@155@01 ($PSF.domain_list (as sm@154@01  $PSF<list>)))
      (and
        (Set_in (inv@152@01 ($SortWrappers.$SnapTo$Ref s@155@01)) xs@148@01)
        (< $Perm.No $k@151@01)
        (img@153@01 ($SortWrappers.$SnapTo$Ref s@155@01))))
    (=>
      (and
        (Set_in (inv@152@01 ($SortWrappers.$SnapTo$Ref s@155@01)) xs@148@01)
        (< $Perm.No $k@151@01)
        (img@153@01 ($SortWrappers.$SnapTo$Ref s@155@01)))
      (Set_in s@155@01 ($PSF.domain_list (as sm@154@01  $PSF<list>)))))
  :pattern ((Set_in s@155@01 ($PSF.domain_list (as sm@154@01  $PSF<list>))))
  :qid |qp.psmDomDef25|)))
(assert (forall ((s@155@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@152@01 ($SortWrappers.$SnapTo$Ref s@155@01)) xs@148@01)
        (< $Perm.No $k@151@01)
        (img@153@01 ($SortWrappers.$SnapTo$Ref s@155@01)))
      (= ($SortWrappers.$SnapTo$Ref s@155@01) x1@143@01))
    (and
      (not (= s@155@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@154@01  $PSF<list>) s@155@01)
        ($PSF.lookup_list (as sm@145@01  $PSF<list>) s@155@01))))
  :pattern (($PSF.lookup_list (as sm@154@01  $PSF<list>) s@155@01))
  :pattern (($PSF.lookup_list (as sm@145@01  $PSF<list>) s@155@01))
  :qid |qp.psmValDef23|)))
(assert (forall ((s@155@01 $Snap)) (!
  ($PSF.loc_list ($PSF.lookup_list (as sm@145@01  $PSF<list>) s@155@01) s@155@01)
  :pattern (($PSF.lookup_list (as sm@154@01  $PSF<list>) s@155@01))
  :qid |qp.psmResTrgDef24|)))
(assert (and
  (forall ((x $Ref)) (!
    (=>
      (Set_in (inv@152@01 x) xs@148@01)
      ($PSF.loc_list ($PSF.lookup_list (as sm@146@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x)) ($SortWrappers.$RefTo$Snap x)))
    :pattern ((inv@152@01 x))
    :qid |quant-u-26341|))
  (length3_impl%precondition ($SortWrappers.$PSF<list>To$Snap (as sm@154@01  $PSF<list>)) xs@148@01 x1@143@01 1 res@142@01)))
(assert (length3_impl ($SortWrappers.$PSF<list>To$Snap (as sm@154@01  $PSF<list>)) xs@148@01 x1@143@01 1 res@142@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert res == 1
; [eval] res == 1
(set-option :timeout 0)
(push) ; 4
(assert (not (= res@142@01 1)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] res == 1
(set-option :timeout 0)
(push) ; 4
(assert (not (= res@142@01 1)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] res == 1
(set-option :timeout 0)
(push) ; 4
(assert (not (= res@142@01 1)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] res == 1
(set-option :timeout 0)
(push) ; 4
(assert (not (= res@142@01 1)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test3_length2 ----------
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
; var x1: Ref
(declare-const x1@156@01 $Ref)
; [exec]
; var x2: Ref
(declare-const x2@157@01 $Ref)
; [exec]
; var xs: Set[Ref]
(declare-const xs@158@01 Set<$Ref>)
; [exec]
; var res: Int
(declare-const res@159@01 Int)
; [exec]
; x1 := new(next)
(declare-const x1@160@01 $Ref)
(assert (not (= x1@160@01 $Ref.null)))
(declare-const next@161@01 $Ref)
(assert (not (= x1@160@01 x2@157@01)))
(assert (not (= x1@160@01 x1@156@01)))
(assert (not (Set_in x1@160@01 xs@158@01)))
; [exec]
; x1.next := null
; [exec]
; fold acc(list(x1), wildcard)
(declare-const $k@162@01 $Perm)
(assert ($Perm.isReadVar $k@162@01))
(assert (< $k@162@01 $Perm.Write))
(assert (<= $Perm.No (- $Perm.Write $k@162@01)))
(assert (<= (- $Perm.Write $k@162@01) $Perm.Write))
(assert (=> (< $Perm.No (- $Perm.Write $k@162@01)) (not (= x1@160@01 $Ref.null))))
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@162@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] x.next != null
; [then-branch: 22 | False | dead]
; [else-branch: 22 | True | live]
(set-option :timeout 0)
(push) ; 3
; [else-branch: 22 | True]
(assert (list%trigger ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit) x1@160@01))
(declare-const sm@163@01 $PSF<list>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_list (as sm@163@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@160@01))
  ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)))
(declare-const sm@164@01 $PSF<list>)
(declare-const s@165@01 $Snap)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((s@165@01 $Snap)) (!
  (=>
    (ite
      (= ($SortWrappers.$SnapTo$Ref s@165@01) x1@160@01)
      (< $Perm.No $k@162@01)
      false)
    (and
      (not (= s@165@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@164@01  $PSF<list>) s@165@01)
        ($PSF.lookup_list (as sm@163@01  $PSF<list>) s@165@01))))
  :pattern (($PSF.lookup_list (as sm@164@01  $PSF<list>) s@165@01))
  :pattern (($PSF.lookup_list (as sm@163@01  $PSF<list>) s@165@01))
  :qid |qp.psmValDef26|)))
(assert (forall ((s@165@01 $Snap)) (!
  ($PSF.loc_list ($PSF.lookup_list (as sm@163@01  $PSF<list>) s@165@01) s@165@01)
  :pattern (($PSF.lookup_list (as sm@164@01  $PSF<list>) s@165@01))
  :qid |qp.psmResTrgDef27|)))
(assert ($PSF.loc_list ($PSF.lookup_list (as sm@164@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@160@01)) ($SortWrappers.$RefTo$Snap x1@160@01)))
; [exec]
; x2 := new(next)
(declare-const x2@166@01 $Ref)
(assert (not (= x2@166@01 $Ref.null)))
(declare-const next@167@01 $Ref)
(assert (not (= x2@166@01 x1@160@01)))
(assert (not (= x2@166@01 x2@157@01)))
(assert (not (Set_in x2@166@01 xs@158@01)))
; [exec]
; x2.next := x1
(push) ; 4
(set-option :timeout 10)
(assert (not (= x1@160@01 x2@166@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; fold acc(list(x2), wildcard)
(declare-const $k@168@01 $Perm)
(assert ($Perm.isReadVar $k@168@01))
(assert (< $k@168@01 $Perm.Write))
(assert (<= $Perm.No (- $Perm.Write $k@168@01)))
(assert (<= (- $Perm.Write $k@168@01) $Perm.Write))
(assert (=> (< $Perm.No (- $Perm.Write $k@168@01)) (not (= x2@166@01 $Ref.null))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@168@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] x.next != null
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= x1@160@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 23 | x1@160@01 != Null | live]
; [else-branch: 23 | x1@160@01 == Null | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 23 | x1@160@01 != Null]
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Precomputing data for removing quantified permissions
(define-fun pTaken@169@01 ((x $Ref)) $Perm
  (ite
    (= x x1@160@01)
    ($Perm.min (ite (= x x1@160@01) $k@162@01 $Perm.No) $k@168@01)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Constrain original permissions $k@168@01
(assert (=> (not (= $k@162@01 $Perm.No)) (< $k@168@01 $k@162@01)))
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=> (= x x1@160@01) (= (- $k@168@01 (pTaken@169@01 x)) $Perm.No))
  
  :qid |quant-u-26345|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (< $Perm.No $k@162@01)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x1@160@01) $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@164@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@160@01))
      ($PSF.lookup_list (as sm@163@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@160@01))))))
(assert ($PSF.loc_list ($PSF.lookup_list (as sm@163@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@160@01)) ($SortWrappers.$RefTo$Snap x1@160@01)))
(assert (list%trigger ($Snap.combine
  ($SortWrappers.$RefTo$Snap x1@160@01)
  ($PSF.lookup_list (as sm@164@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@160@01))) x2@166@01))
(declare-const sm@170@01 $PSF<list>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_list (as sm@170@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@166@01))
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap x1@160@01)
    ($PSF.lookup_list (as sm@164@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@160@01)))))
(declare-const sm@171@01 $PSF<list>)
(declare-const s@172@01 $Snap)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((s@172@01 $Snap)) (!
  (=>
    (ite
      (= ($SortWrappers.$SnapTo$Ref s@172@01) x2@166@01)
      (< $Perm.No $k@168@01)
      false)
    (and
      (not (= s@172@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@171@01  $PSF<list>) s@172@01)
        ($PSF.lookup_list (as sm@170@01  $PSF<list>) s@172@01))))
  :pattern (($PSF.lookup_list (as sm@171@01  $PSF<list>) s@172@01))
  :pattern (($PSF.lookup_list (as sm@170@01  $PSF<list>) s@172@01))
  :qid |qp.psmValDef29|)))
(assert (forall ((s@172@01 $Snap)) (!
  (=>
    (ite
      (= ($SortWrappers.$SnapTo$Ref s@172@01) x1@160@01)
      (<
        $Perm.No
        (- $k@162@01 (pTaken@169@01 ($SortWrappers.$SnapTo$Ref s@172@01))))
      false)
    (and
      (not (= s@172@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@171@01  $PSF<list>) s@172@01)
        ($PSF.lookup_list (as sm@163@01  $PSF<list>) s@172@01))))
  :pattern (($PSF.lookup_list (as sm@171@01  $PSF<list>) s@172@01))
  :pattern (($PSF.lookup_list (as sm@163@01  $PSF<list>) s@172@01))
  :qid |qp.psmValDef30|)))
(assert (forall ((s@172@01 $Snap)) (!
  (and
    ($PSF.loc_list ($PSF.lookup_list (as sm@170@01  $PSF<list>) s@172@01) s@172@01)
    ($PSF.loc_list ($PSF.lookup_list (as sm@163@01  $PSF<list>) s@172@01) s@172@01))
  :pattern (($PSF.lookup_list (as sm@171@01  $PSF<list>) s@172@01))
  :qid |qp.psmResTrgDef31|)))
(assert ($PSF.loc_list ($PSF.lookup_list (as sm@171@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@166@01)) ($SortWrappers.$RefTo$Snap x2@166@01)))
; [exec]
; xs := Set(x1, x2)
; [eval] Set(x1, x2)
(declare-const xs@173@01 Set<$Ref>)
(assert (= xs@173@01 (Set_unionone (Set_singleton x1@160@01) x2@166@01)))
; [exec]
; assert (x1 in xs) && (x2 in xs)
; [eval] (x1 in xs)
(set-option :timeout 0)
(push) ; 5
(assert (not (Set_in x1@160@01 xs@173@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (Set_in x1@160@01 xs@173@01))
; [eval] (x2 in xs)
(push) ; 5
(assert (not (Set_in x2@166@01 xs@173@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (Set_in x2@166@01 xs@173@01))
; [exec]
; inhale length3_impl(xs, x2, 1, res)
(declare-const $t@174@01 $Snap)
(assert (= $t@174@01 $Snap.unit))
; [eval] length3_impl(xs, x2, 1, res)
(push) ; 5
(declare-const x@175@01 $Ref)
(push) ; 6
; [eval] (x in xs)
(assert (Set_in x@175@01 xs@173@01))
(declare-const $k@176@01 $Perm)
(assert ($Perm.isReadVar $k@176@01))
(pop) ; 6
(declare-fun inv@177@01 ($Ref) $Ref)
(declare-fun img@178@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@176@01))
; Nested auxiliary terms: non-globals
(push) ; 6
(assert (not (forall ((x@175@01 $Ref)) (!
  (=>
    (Set_in x@175@01 xs@173@01)
    (or (= $k@176@01 $Perm.No) (< $Perm.No $k@176@01)))
  
  :qid |quant-u-26346|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((x1@175@01 $Ref) (x2@175@01 $Ref)) (!
  (=>
    (and
      (and
        (and
          (Set_in x1@175@01 xs@173@01)
          ($PSF.loc_list ($PSF.lookup_list (as sm@171@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@175@01)) ($SortWrappers.$RefTo$Snap x1@175@01)))
        (< $Perm.No $k@176@01))
      (and
        (and
          (Set_in x2@175@01 xs@173@01)
          ($PSF.loc_list ($PSF.lookup_list (as sm@171@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@175@01)) ($SortWrappers.$RefTo$Snap x2@175@01)))
        (< $Perm.No $k@176@01))
      (= x1@175@01 x2@175@01))
    (= x1@175@01 x2@175@01))
  
  :qid |list-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@175@01 $Ref)) (!
  (=>
    (and (Set_in x@175@01 xs@173@01) (< $Perm.No $k@176@01))
    (and (= (inv@177@01 x@175@01) x@175@01) (img@178@01 x@175@01)))
  :pattern ((Set_in x@175@01 xs@173@01))
  :pattern ((inv@177@01 x@175@01))
  :pattern ((img@178@01 x@175@01))
  :qid |list-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and
      (img@178@01 x)
      (and (Set_in (inv@177@01 x) xs@173@01) (< $Perm.No $k@176@01)))
    (= (inv@177@01 x) x))
  :pattern ((inv@177@01 x))
  :qid |list-fctOfInv|)))
(assert (forall ((x $Ref)) (!
  (=>
    (Set_in (inv@177@01 x) xs@173@01)
    ($PSF.loc_list ($PSF.lookup_list (as sm@171@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x)) ($SortWrappers.$RefTo$Snap x)))
  :pattern ((inv@177@01 x))
  :qid |quant-u-26347|)))
(push) ; 6
(assert (not (forall ((x $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@177@01 x) xs@173@01) (img@178@01 x) (= x (inv@177@01 x)))
      (> $k@176@01 $Perm.No))
    (>
      (+
        (ite (= x x2@166@01) $k@168@01 $Perm.No)
        (ite (= x x1@160@01) (- $k@162@01 (pTaken@169@01 x)) $Perm.No))
      $Perm.No))
  
  :qid |quant-u-26348|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@179@01 $PSF<list>)
(declare-const s@180@01 $Snap)
; Definitional axioms for snapshot map domain
(assert (forall ((s@180@01 $Snap)) (!
  (and
    (=>
      (Set_in s@180@01 ($PSF.domain_list (as sm@179@01  $PSF<list>)))
      (and
        (Set_in (inv@177@01 ($SortWrappers.$SnapTo$Ref s@180@01)) xs@173@01)
        (< $Perm.No $k@176@01)
        (img@178@01 ($SortWrappers.$SnapTo$Ref s@180@01))))
    (=>
      (and
        (Set_in (inv@177@01 ($SortWrappers.$SnapTo$Ref s@180@01)) xs@173@01)
        (< $Perm.No $k@176@01)
        (img@178@01 ($SortWrappers.$SnapTo$Ref s@180@01)))
      (Set_in s@180@01 ($PSF.domain_list (as sm@179@01  $PSF<list>)))))
  :pattern ((Set_in s@180@01 ($PSF.domain_list (as sm@179@01  $PSF<list>))))
  :qid |qp.psmDomDef35|)))
; Definitional axioms for snapshot map values
(assert (forall ((s@180@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@177@01 ($SortWrappers.$SnapTo$Ref s@180@01)) xs@173@01)
        (< $Perm.No $k@176@01)
        (img@178@01 ($SortWrappers.$SnapTo$Ref s@180@01)))
      (ite
        (= ($SortWrappers.$SnapTo$Ref s@180@01) x2@166@01)
        (< $Perm.No $k@168@01)
        false))
    (and
      (not (= s@180@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@179@01  $PSF<list>) s@180@01)
        ($PSF.lookup_list (as sm@170@01  $PSF<list>) s@180@01))))
  :pattern (($PSF.lookup_list (as sm@179@01  $PSF<list>) s@180@01))
  :pattern (($PSF.lookup_list (as sm@170@01  $PSF<list>) s@180@01))
  :qid |qp.psmValDef32|)))
(assert (forall ((s@180@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@177@01 ($SortWrappers.$SnapTo$Ref s@180@01)) xs@173@01)
        (< $Perm.No $k@176@01)
        (img@178@01 ($SortWrappers.$SnapTo$Ref s@180@01)))
      (ite
        (= ($SortWrappers.$SnapTo$Ref s@180@01) x1@160@01)
        (<
          $Perm.No
          (- $k@162@01 (pTaken@169@01 ($SortWrappers.$SnapTo$Ref s@180@01))))
        false))
    (and
      (not (= s@180@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@179@01  $PSF<list>) s@180@01)
        ($PSF.lookup_list (as sm@163@01  $PSF<list>) s@180@01))))
  :pattern (($PSF.lookup_list (as sm@179@01  $PSF<list>) s@180@01))
  :pattern (($PSF.lookup_list (as sm@163@01  $PSF<list>) s@180@01))
  :qid |qp.psmValDef33|)))
(assert (forall ((s@180@01 $Snap)) (!
  (and
    ($PSF.loc_list ($PSF.lookup_list (as sm@170@01  $PSF<list>) s@180@01) s@180@01)
    ($PSF.loc_list ($PSF.lookup_list (as sm@163@01  $PSF<list>) s@180@01) s@180@01))
  :pattern (($PSF.lookup_list (as sm@179@01  $PSF<list>) s@180@01))
  :qid |qp.psmResTrgDef34|)))
(assert (length3_impl%precondition ($SortWrappers.$PSF<list>To$Snap (as sm@179@01  $PSF<list>)) xs@173@01 x2@166@01 1 res@159@01))
(pop) ; 5
; Joined path conditions
(assert ($Perm.isReadVar $k@176@01))
(assert (forall ((x@175@01 $Ref)) (!
  (=>
    (and (Set_in x@175@01 xs@173@01) (< $Perm.No $k@176@01))
    (and (= (inv@177@01 x@175@01) x@175@01) (img@178@01 x@175@01)))
  :pattern ((Set_in x@175@01 xs@173@01))
  :pattern ((inv@177@01 x@175@01))
  :pattern ((img@178@01 x@175@01))
  :qid |list-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and
      (img@178@01 x)
      (and (Set_in (inv@177@01 x) xs@173@01) (< $Perm.No $k@176@01)))
    (= (inv@177@01 x) x))
  :pattern ((inv@177@01 x))
  :qid |list-fctOfInv|)))
(assert (forall ((s@180@01 $Snap)) (!
  (and
    (=>
      (Set_in s@180@01 ($PSF.domain_list (as sm@179@01  $PSF<list>)))
      (and
        (Set_in (inv@177@01 ($SortWrappers.$SnapTo$Ref s@180@01)) xs@173@01)
        (< $Perm.No $k@176@01)
        (img@178@01 ($SortWrappers.$SnapTo$Ref s@180@01))))
    (=>
      (and
        (Set_in (inv@177@01 ($SortWrappers.$SnapTo$Ref s@180@01)) xs@173@01)
        (< $Perm.No $k@176@01)
        (img@178@01 ($SortWrappers.$SnapTo$Ref s@180@01)))
      (Set_in s@180@01 ($PSF.domain_list (as sm@179@01  $PSF<list>)))))
  :pattern ((Set_in s@180@01 ($PSF.domain_list (as sm@179@01  $PSF<list>))))
  :qid |qp.psmDomDef35|)))
(assert (forall ((s@180@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@177@01 ($SortWrappers.$SnapTo$Ref s@180@01)) xs@173@01)
        (< $Perm.No $k@176@01)
        (img@178@01 ($SortWrappers.$SnapTo$Ref s@180@01)))
      (ite
        (= ($SortWrappers.$SnapTo$Ref s@180@01) x2@166@01)
        (< $Perm.No $k@168@01)
        false))
    (and
      (not (= s@180@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@179@01  $PSF<list>) s@180@01)
        ($PSF.lookup_list (as sm@170@01  $PSF<list>) s@180@01))))
  :pattern (($PSF.lookup_list (as sm@179@01  $PSF<list>) s@180@01))
  :pattern (($PSF.lookup_list (as sm@170@01  $PSF<list>) s@180@01))
  :qid |qp.psmValDef32|)))
(assert (forall ((s@180@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@177@01 ($SortWrappers.$SnapTo$Ref s@180@01)) xs@173@01)
        (< $Perm.No $k@176@01)
        (img@178@01 ($SortWrappers.$SnapTo$Ref s@180@01)))
      (ite
        (= ($SortWrappers.$SnapTo$Ref s@180@01) x1@160@01)
        (<
          $Perm.No
          (- $k@162@01 (pTaken@169@01 ($SortWrappers.$SnapTo$Ref s@180@01))))
        false))
    (and
      (not (= s@180@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@179@01  $PSF<list>) s@180@01)
        ($PSF.lookup_list (as sm@163@01  $PSF<list>) s@180@01))))
  :pattern (($PSF.lookup_list (as sm@179@01  $PSF<list>) s@180@01))
  :pattern (($PSF.lookup_list (as sm@163@01  $PSF<list>) s@180@01))
  :qid |qp.psmValDef33|)))
(assert (forall ((s@180@01 $Snap)) (!
  (and
    ($PSF.loc_list ($PSF.lookup_list (as sm@170@01  $PSF<list>) s@180@01) s@180@01)
    ($PSF.loc_list ($PSF.lookup_list (as sm@163@01  $PSF<list>) s@180@01) s@180@01))
  :pattern (($PSF.lookup_list (as sm@179@01  $PSF<list>) s@180@01))
  :qid |qp.psmResTrgDef34|)))
(assert (and
  (forall ((x $Ref)) (!
    (=>
      (Set_in (inv@177@01 x) xs@173@01)
      ($PSF.loc_list ($PSF.lookup_list (as sm@171@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x)) ($SortWrappers.$RefTo$Snap x)))
    :pattern ((inv@177@01 x))
    :qid |quant-u-26347|))
  (length3_impl%precondition ($SortWrappers.$PSF<list>To$Snap (as sm@179@01  $PSF<list>)) xs@173@01 x2@166@01 1 res@159@01)))
(assert (length3_impl ($SortWrappers.$PSF<list>To$Snap (as sm@179@01  $PSF<list>)) xs@173@01 x2@166@01 1 res@159@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert res == 2
; [eval] res == 2
(set-option :timeout 0)
(push) ; 5
(assert (not (= res@159@01 2)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= x2@166@01 x1@160@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= x2@166@01 x1@160@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No $k@168@01)
    (< $Perm.No (- $k@162@01 (pTaken@169@01 x1@160@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@170@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@166@01))
      ($PSF.lookup_list (as sm@163@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@160@01)))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@162@01 (pTaken@169@01 x1@160@01)))
    (< $Perm.No $k@168@01))
  (not
    (=
      ($PSF.lookup_list (as sm@163@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@160@01))
      ($PSF.lookup_list (as sm@170@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@166@01)))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (and (not (= x2@166@01 x1@160@01)) (not (= x1@160@01 x2@166@01))))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@162@01) (- $Perm.Write $k@168@01)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@168@01) (- $Perm.Write $k@162@01)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@162@01))
    (< $Perm.No (- $Perm.Write $k@168@01)))
  (not (= $Ref.null x1@160@01)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@168@01))
    (< $Perm.No (- $Perm.Write $k@162@01)))
  (not (= x1@160@01 $Ref.null)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (and (not (= x1@160@01 x2@166@01)) (not (= x2@166@01 x1@160@01))))
; [eval] res == 2
(set-option :timeout 0)
(push) ; 5
(assert (not (= res@159@01 2)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= x2@166@01 x1@160@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= x2@166@01 x1@160@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No $k@168@01)
    (< $Perm.No (- $k@162@01 (pTaken@169@01 x1@160@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@170@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@166@01))
      ($PSF.lookup_list (as sm@163@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@160@01)))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@162@01 (pTaken@169@01 x1@160@01)))
    (< $Perm.No $k@168@01))
  (not
    (=
      ($PSF.lookup_list (as sm@163@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@160@01))
      ($PSF.lookup_list (as sm@170@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@166@01)))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (and (not (= x2@166@01 x1@160@01)) (not (= x1@160@01 x2@166@01))))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@162@01) (- $Perm.Write $k@168@01)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@168@01) (- $Perm.Write $k@162@01)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@162@01))
    (< $Perm.No (- $Perm.Write $k@168@01)))
  (not (= $Ref.null x1@160@01)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@168@01))
    (< $Perm.No (- $Perm.Write $k@162@01)))
  (not (= x1@160@01 $Ref.null)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (and (not (= x1@160@01 x2@166@01)) (not (= x2@166@01 x1@160@01))))
; [eval] res == 2
(set-option :timeout 0)
(push) ; 5
(assert (not (= res@159@01 2)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= x2@166@01 x1@160@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= x2@166@01 x1@160@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No $k@168@01)
    (< $Perm.No (- $k@162@01 (pTaken@169@01 x1@160@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@170@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@166@01))
      ($PSF.lookup_list (as sm@163@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@160@01)))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@162@01 (pTaken@169@01 x1@160@01)))
    (< $Perm.No $k@168@01))
  (not
    (=
      ($PSF.lookup_list (as sm@163@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@160@01))
      ($PSF.lookup_list (as sm@170@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@166@01)))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (and (not (= x2@166@01 x1@160@01)) (not (= x1@160@01 x2@166@01))))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@162@01) (- $Perm.Write $k@168@01)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@168@01) (- $Perm.Write $k@162@01)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@162@01))
    (< $Perm.No (- $Perm.Write $k@168@01)))
  (not (= $Ref.null x1@160@01)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@168@01))
    (< $Perm.No (- $Perm.Write $k@162@01)))
  (not (= x1@160@01 $Ref.null)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (and (not (= x1@160@01 x2@166@01)) (not (= x2@166@01 x1@160@01))))
; [eval] res == 2
(set-option :timeout 0)
(push) ; 5
(assert (not (= res@159@01 2)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test3_length4 ----------
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
; var x1: Ref
(declare-const x1@181@01 $Ref)
; [exec]
; var x2: Ref
(declare-const x2@182@01 $Ref)
; [exec]
; var x3: Ref
(declare-const x3@183@01 $Ref)
; [exec]
; var x4: Ref
(declare-const x4@184@01 $Ref)
; [exec]
; var xs: Set[Ref]
(declare-const xs@185@01 Set<$Ref>)
; [exec]
; var res: Int
(declare-const res@186@01 Int)
; [exec]
; x1 := new(next)
(declare-const x1@187@01 $Ref)
(assert (not (= x1@187@01 $Ref.null)))
(declare-const next@188@01 $Ref)
(assert (not (= x1@187@01 x2@182@01)))
(assert (not (= x1@187@01 x1@181@01)))
(assert (not (= x1@187@01 x3@183@01)))
(assert (not (= x1@187@01 x4@184@01)))
(assert (not (Set_in x1@187@01 xs@185@01)))
; [exec]
; x1.next := null
; [exec]
; fold acc(list(x1), wildcard)
(declare-const $k@189@01 $Perm)
(assert ($Perm.isReadVar $k@189@01))
(assert (< $k@189@01 $Perm.Write))
(assert (<= $Perm.No (- $Perm.Write $k@189@01)))
(assert (<= (- $Perm.Write $k@189@01) $Perm.Write))
(assert (=> (< $Perm.No (- $Perm.Write $k@189@01)) (not (= x1@187@01 $Ref.null))))
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@189@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] x.next != null
; [then-branch: 24 | False | dead]
; [else-branch: 24 | True | live]
(set-option :timeout 0)
(push) ; 3
; [else-branch: 24 | True]
(assert (list%trigger ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit) x1@187@01))
(declare-const sm@190@01 $PSF<list>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_list (as sm@190@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@187@01))
  ($Snap.combine ($SortWrappers.$RefTo$Snap $Ref.null) $Snap.unit)))
(declare-const sm@191@01 $PSF<list>)
(declare-const s@192@01 $Snap)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((s@192@01 $Snap)) (!
  (=>
    (ite
      (= ($SortWrappers.$SnapTo$Ref s@192@01) x1@187@01)
      (< $Perm.No $k@189@01)
      false)
    (and
      (not (= s@192@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@191@01  $PSF<list>) s@192@01)
        ($PSF.lookup_list (as sm@190@01  $PSF<list>) s@192@01))))
  :pattern (($PSF.lookup_list (as sm@191@01  $PSF<list>) s@192@01))
  :pattern (($PSF.lookup_list (as sm@190@01  $PSF<list>) s@192@01))
  :qid |qp.psmValDef36|)))
(assert (forall ((s@192@01 $Snap)) (!
  ($PSF.loc_list ($PSF.lookup_list (as sm@190@01  $PSF<list>) s@192@01) s@192@01)
  :pattern (($PSF.lookup_list (as sm@191@01  $PSF<list>) s@192@01))
  :qid |qp.psmResTrgDef37|)))
(assert ($PSF.loc_list ($PSF.lookup_list (as sm@191@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@187@01)) ($SortWrappers.$RefTo$Snap x1@187@01)))
; [exec]
; x2 := new(next)
(declare-const x2@193@01 $Ref)
(assert (not (= x2@193@01 $Ref.null)))
(declare-const next@194@01 $Ref)
(assert (not (= x2@193@01 x2@182@01)))
(assert (not (= x2@193@01 x1@187@01)))
(assert (not (= x2@193@01 x3@183@01)))
(assert (not (= x2@193@01 x4@184@01)))
(assert (not (Set_in x2@193@01 xs@185@01)))
; [exec]
; x2.next := x1
(push) ; 4
(set-option :timeout 10)
(assert (not (= x1@187@01 x2@193@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; fold acc(list(x2), wildcard)
(declare-const $k@195@01 $Perm)
(assert ($Perm.isReadVar $k@195@01))
(assert (< $k@195@01 $Perm.Write))
(assert (<= $Perm.No (- $Perm.Write $k@195@01)))
(assert (<= (- $Perm.Write $k@195@01) $Perm.Write))
(assert (=> (< $Perm.No (- $Perm.Write $k@195@01)) (not (= x2@193@01 $Ref.null))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@195@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] x.next != null
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= x1@187@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 25 | x1@187@01 != Null | live]
; [else-branch: 25 | x1@187@01 == Null | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 25 | x1@187@01 != Null]
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Precomputing data for removing quantified permissions
(define-fun pTaken@196@01 ((x $Ref)) $Perm
  (ite
    (= x x1@187@01)
    ($Perm.min (ite (= x x1@187@01) $k@189@01 $Perm.No) $k@195@01)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Constrain original permissions $k@195@01
(assert (=> (not (= $k@189@01 $Perm.No)) (< $k@195@01 $k@189@01)))
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=> (= x x1@187@01) (= (- $k@195@01 (pTaken@196@01 x)) $Perm.No))
  
  :qid |quant-u-26351|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (< $Perm.No $k@189@01)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x1@187@01) $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@191@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@187@01))
      ($PSF.lookup_list (as sm@190@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@187@01))))))
(assert ($PSF.loc_list ($PSF.lookup_list (as sm@190@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@187@01)) ($SortWrappers.$RefTo$Snap x1@187@01)))
(assert (list%trigger ($Snap.combine
  ($SortWrappers.$RefTo$Snap x1@187@01)
  ($PSF.lookup_list (as sm@191@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@187@01))) x2@193@01))
(declare-const sm@197@01 $PSF<list>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_list (as sm@197@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@193@01))
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap x1@187@01)
    ($PSF.lookup_list (as sm@191@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@187@01)))))
(declare-const sm@198@01 $PSF<list>)
(declare-const s@199@01 $Snap)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((s@199@01 $Snap)) (!
  (=>
    (ite
      (= ($SortWrappers.$SnapTo$Ref s@199@01) x2@193@01)
      (< $Perm.No $k@195@01)
      false)
    (and
      (not (= s@199@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@198@01  $PSF<list>) s@199@01)
        ($PSF.lookup_list (as sm@197@01  $PSF<list>) s@199@01))))
  :pattern (($PSF.lookup_list (as sm@198@01  $PSF<list>) s@199@01))
  :pattern (($PSF.lookup_list (as sm@197@01  $PSF<list>) s@199@01))
  :qid |qp.psmValDef39|)))
(assert (forall ((s@199@01 $Snap)) (!
  (=>
    (ite
      (= ($SortWrappers.$SnapTo$Ref s@199@01) x1@187@01)
      (<
        $Perm.No
        (- $k@189@01 (pTaken@196@01 ($SortWrappers.$SnapTo$Ref s@199@01))))
      false)
    (and
      (not (= s@199@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@198@01  $PSF<list>) s@199@01)
        ($PSF.lookup_list (as sm@190@01  $PSF<list>) s@199@01))))
  :pattern (($PSF.lookup_list (as sm@198@01  $PSF<list>) s@199@01))
  :pattern (($PSF.lookup_list (as sm@190@01  $PSF<list>) s@199@01))
  :qid |qp.psmValDef40|)))
(assert (forall ((s@199@01 $Snap)) (!
  (and
    ($PSF.loc_list ($PSF.lookup_list (as sm@197@01  $PSF<list>) s@199@01) s@199@01)
    ($PSF.loc_list ($PSF.lookup_list (as sm@190@01  $PSF<list>) s@199@01) s@199@01))
  :pattern (($PSF.lookup_list (as sm@198@01  $PSF<list>) s@199@01))
  :qid |qp.psmResTrgDef41|)))
(assert ($PSF.loc_list ($PSF.lookup_list (as sm@198@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@193@01)) ($SortWrappers.$RefTo$Snap x2@193@01)))
; [exec]
; x3 := new(next)
(declare-const x3@200@01 $Ref)
(assert (not (= x3@200@01 $Ref.null)))
(declare-const next@201@01 $Ref)
(assert (not (= x3@200@01 x1@187@01)))
(assert (not (= x3@200@01 x3@183@01)))
(assert (not (= x3@200@01 x2@193@01)))
(assert (not (= x3@200@01 x4@184@01)))
(assert (not (Set_in x3@200@01 xs@185@01)))
; [exec]
; x3.next := x2
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= x2@193@01 x3@200@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= x1@187@01 x3@200@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [exec]
; fold acc(list(x3), wildcard)
(declare-const $k@202@01 $Perm)
(assert ($Perm.isReadVar $k@202@01))
(assert (< $k@202@01 $Perm.Write))
(assert (<= $Perm.No (- $Perm.Write $k@202@01)))
(assert (<= (- $Perm.Write $k@202@01) $Perm.Write))
(assert (=> (< $Perm.No (- $Perm.Write $k@202@01)) (not (= x3@200@01 $Ref.null))))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@202@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] x.next != null
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= x2@193@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 26 | x2@193@01 != Null | live]
; [else-branch: 26 | x2@193@01 == Null | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 26 | x2@193@01 != Null]
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Precomputing data for removing quantified permissions
(define-fun pTaken@203@01 ((x $Ref)) $Perm
  (ite
    (= x x2@193@01)
    ($Perm.min (ite (= x x2@193@01) $k@195@01 $Perm.No) $k@202@01)
    $Perm.No))
(define-fun pTaken@204@01 ((x $Ref)) $Perm
  (ite
    (= x x2@193@01)
    ($Perm.min
      (ite (= x x1@187@01) (- $k@189@01 (pTaken@196@01 x)) $Perm.No)
      (- $k@202@01 (pTaken@203@01 x)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Constrain original permissions $k@202@01
(assert (=> (not (= $k@195@01 $Perm.No)) (< $k@202@01 $k@195@01)))
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=> (= x x2@193@01) (= (- $k@202@01 (pTaken@203@01 x)) $Perm.No))
  
  :qid |quant-u-26354|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (< $Perm.No $k@195@01)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x2@193@01) $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@198@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@193@01))
      ($PSF.lookup_list (as sm@197@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@193@01))))))
(assert (=>
  (ite
    (= x2@193@01 x1@187@01)
    (< $Perm.No (- $k@189@01 (pTaken@196@01 x2@193@01)))
    false)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x2@193@01) $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@198@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@193@01))
      ($PSF.lookup_list (as sm@190@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@193@01))))))
(assert (and
  ($PSF.loc_list ($PSF.lookup_list (as sm@197@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@193@01)) ($SortWrappers.$RefTo$Snap x2@193@01))
  ($PSF.loc_list ($PSF.lookup_list (as sm@190@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@193@01)) ($SortWrappers.$RefTo$Snap x2@193@01))))
(assert (list%trigger ($Snap.combine
  ($SortWrappers.$RefTo$Snap x2@193@01)
  ($PSF.lookup_list (as sm@198@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@193@01))) x3@200@01))
(declare-const sm@205@01 $PSF<list>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_list (as sm@205@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@200@01))
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap x2@193@01)
    ($PSF.lookup_list (as sm@198@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@193@01)))))
(declare-const sm@206@01 $PSF<list>)
(declare-const s@207@01 $Snap)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((s@207@01 $Snap)) (!
  (=>
    (ite
      (= ($SortWrappers.$SnapTo$Ref s@207@01) x3@200@01)
      (< $Perm.No $k@202@01)
      false)
    (and
      (not (= s@207@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@206@01  $PSF<list>) s@207@01)
        ($PSF.lookup_list (as sm@205@01  $PSF<list>) s@207@01))))
  :pattern (($PSF.lookup_list (as sm@206@01  $PSF<list>) s@207@01))
  :pattern (($PSF.lookup_list (as sm@205@01  $PSF<list>) s@207@01))
  :qid |qp.psmValDef43|)))
(assert (forall ((s@207@01 $Snap)) (!
  (=>
    (ite
      (= ($SortWrappers.$SnapTo$Ref s@207@01) x1@187@01)
      (<
        $Perm.No
        (- $k@189@01 (pTaken@196@01 ($SortWrappers.$SnapTo$Ref s@207@01))))
      false)
    (and
      (not (= s@207@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@206@01  $PSF<list>) s@207@01)
        ($PSF.lookup_list (as sm@190@01  $PSF<list>) s@207@01))))
  :pattern (($PSF.lookup_list (as sm@206@01  $PSF<list>) s@207@01))
  :pattern (($PSF.lookup_list (as sm@190@01  $PSF<list>) s@207@01))
  :qid |qp.psmValDef44|)))
(assert (forall ((s@207@01 $Snap)) (!
  (=>
    (ite
      (= ($SortWrappers.$SnapTo$Ref s@207@01) x2@193@01)
      (<
        $Perm.No
        (- $k@195@01 (pTaken@203@01 ($SortWrappers.$SnapTo$Ref s@207@01))))
      false)
    (and
      (not (= s@207@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@206@01  $PSF<list>) s@207@01)
        ($PSF.lookup_list (as sm@197@01  $PSF<list>) s@207@01))))
  :pattern (($PSF.lookup_list (as sm@206@01  $PSF<list>) s@207@01))
  :pattern (($PSF.lookup_list (as sm@197@01  $PSF<list>) s@207@01))
  :qid |qp.psmValDef45|)))
(assert (forall ((s@207@01 $Snap)) (!
  (and
    ($PSF.loc_list ($PSF.lookup_list (as sm@205@01  $PSF<list>) s@207@01) s@207@01)
    ($PSF.loc_list ($PSF.lookup_list (as sm@190@01  $PSF<list>) s@207@01) s@207@01)
    ($PSF.loc_list ($PSF.lookup_list (as sm@197@01  $PSF<list>) s@207@01) s@207@01))
  :pattern (($PSF.lookup_list (as sm@206@01  $PSF<list>) s@207@01))
  :qid |qp.psmResTrgDef46|)))
(assert ($PSF.loc_list ($PSF.lookup_list (as sm@206@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@200@01)) ($SortWrappers.$RefTo$Snap x3@200@01)))
; [exec]
; x4 := new(next)
(declare-const x4@208@01 $Ref)
(assert (not (= x4@208@01 $Ref.null)))
(declare-const next@209@01 $Ref)
(assert (not (= x4@208@01 x3@200@01)))
(assert (not (= x4@208@01 x1@187@01)))
(assert (not (= x4@208@01 x2@193@01)))
(assert (not (= x4@208@01 x4@184@01)))
(assert (not (Set_in x4@208@01 xs@185@01)))
; [exec]
; x4.next := x3
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= x3@200@01 x4@208@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= x1@187@01 x4@208@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= x2@193@01 x4@208@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [exec]
; fold acc(list(x4), wildcard)
(declare-const $k@210@01 $Perm)
(assert ($Perm.isReadVar $k@210@01))
(assert (< $k@210@01 $Perm.Write))
(assert (<= $Perm.No (- $Perm.Write $k@210@01)))
(assert (<= (- $Perm.Write $k@210@01) $Perm.Write))
(assert (=> (< $Perm.No (- $Perm.Write $k@210@01)) (not (= x4@208@01 $Ref.null))))
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@210@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] x.next != null
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= x3@200@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 27 | x3@200@01 != Null | live]
; [else-branch: 27 | x3@200@01 == Null | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 27 | x3@200@01 != Null]
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Precomputing data for removing quantified permissions
(define-fun pTaken@211@01 ((x $Ref)) $Perm
  (ite
    (= x x3@200@01)
    ($Perm.min (ite (= x x3@200@01) $k@202@01 $Perm.No) $k@210@01)
    $Perm.No))
(define-fun pTaken@212@01 ((x $Ref)) $Perm
  (ite
    (= x x3@200@01)
    ($Perm.min
      (ite (= x x1@187@01) (- $k@189@01 (pTaken@196@01 x)) $Perm.No)
      (- $k@210@01 (pTaken@211@01 x)))
    $Perm.No))
(define-fun pTaken@213@01 ((x $Ref)) $Perm
  (ite
    (= x x3@200@01)
    ($Perm.min
      (ite (= x x2@193@01) (- $k@195@01 (pTaken@203@01 x)) $Perm.No)
      (- (- $k@210@01 (pTaken@211@01 x)) (pTaken@212@01 x)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Constrain original permissions $k@210@01
(assert (=> (not (= $k@202@01 $Perm.No)) (< $k@210@01 $k@202@01)))
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=> (= x x3@200@01) (= (- $k@210@01 (pTaken@211@01 x)) $Perm.No))
  
  :qid |quant-u-26357|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (< $Perm.No $k@202@01)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x3@200@01) $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@206@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@200@01))
      ($PSF.lookup_list (as sm@205@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@200@01))))))
(assert (=>
  (ite
    (= x3@200@01 x1@187@01)
    (< $Perm.No (- $k@189@01 (pTaken@196@01 x3@200@01)))
    false)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x3@200@01) $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@206@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@200@01))
      ($PSF.lookup_list (as sm@190@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@200@01))))))
(assert (=>
  (ite
    (= x3@200@01 x2@193@01)
    (< $Perm.No (- $k@195@01 (pTaken@203@01 x3@200@01)))
    false)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x3@200@01) $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@206@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@200@01))
      ($PSF.lookup_list (as sm@197@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@200@01))))))
(assert (and
  ($PSF.loc_list ($PSF.lookup_list (as sm@205@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@200@01)) ($SortWrappers.$RefTo$Snap x3@200@01))
  ($PSF.loc_list ($PSF.lookup_list (as sm@190@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@200@01)) ($SortWrappers.$RefTo$Snap x3@200@01))
  ($PSF.loc_list ($PSF.lookup_list (as sm@197@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@200@01)) ($SortWrappers.$RefTo$Snap x3@200@01))))
(assert (list%trigger ($Snap.combine
  ($SortWrappers.$RefTo$Snap x3@200@01)
  ($PSF.lookup_list (as sm@206@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@200@01))) x4@208@01))
(declare-const sm@214@01 $PSF<list>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@208@01))
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap x3@200@01)
    ($PSF.lookup_list (as sm@206@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@200@01)))))
(declare-const sm@215@01 $PSF<list>)
(declare-const s@216@01 $Snap)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((s@216@01 $Snap)) (!
  (=>
    (ite
      (= ($SortWrappers.$SnapTo$Ref s@216@01) x4@208@01)
      (< $Perm.No $k@210@01)
      false)
    (and
      (not (= s@216@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@215@01  $PSF<list>) s@216@01)
        ($PSF.lookup_list (as sm@214@01  $PSF<list>) s@216@01))))
  :pattern (($PSF.lookup_list (as sm@215@01  $PSF<list>) s@216@01))
  :pattern (($PSF.lookup_list (as sm@214@01  $PSF<list>) s@216@01))
  :qid |qp.psmValDef48|)))
(assert (forall ((s@216@01 $Snap)) (!
  (=>
    (ite
      (= ($SortWrappers.$SnapTo$Ref s@216@01) x2@193@01)
      (<
        $Perm.No
        (- $k@195@01 (pTaken@203@01 ($SortWrappers.$SnapTo$Ref s@216@01))))
      false)
    (and
      (not (= s@216@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@215@01  $PSF<list>) s@216@01)
        ($PSF.lookup_list (as sm@197@01  $PSF<list>) s@216@01))))
  :pattern (($PSF.lookup_list (as sm@215@01  $PSF<list>) s@216@01))
  :pattern (($PSF.lookup_list (as sm@197@01  $PSF<list>) s@216@01))
  :qid |qp.psmValDef49|)))
(assert (forall ((s@216@01 $Snap)) (!
  (=>
    (ite
      (= ($SortWrappers.$SnapTo$Ref s@216@01) x1@187@01)
      (<
        $Perm.No
        (- $k@189@01 (pTaken@196@01 ($SortWrappers.$SnapTo$Ref s@216@01))))
      false)
    (and
      (not (= s@216@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@215@01  $PSF<list>) s@216@01)
        ($PSF.lookup_list (as sm@190@01  $PSF<list>) s@216@01))))
  :pattern (($PSF.lookup_list (as sm@215@01  $PSF<list>) s@216@01))
  :pattern (($PSF.lookup_list (as sm@190@01  $PSF<list>) s@216@01))
  :qid |qp.psmValDef50|)))
(assert (forall ((s@216@01 $Snap)) (!
  (=>
    (ite
      (= ($SortWrappers.$SnapTo$Ref s@216@01) x3@200@01)
      (<
        $Perm.No
        (- $k@202@01 (pTaken@211@01 ($SortWrappers.$SnapTo$Ref s@216@01))))
      false)
    (and
      (not (= s@216@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@215@01  $PSF<list>) s@216@01)
        ($PSF.lookup_list (as sm@205@01  $PSF<list>) s@216@01))))
  :pattern (($PSF.lookup_list (as sm@215@01  $PSF<list>) s@216@01))
  :pattern (($PSF.lookup_list (as sm@205@01  $PSF<list>) s@216@01))
  :qid |qp.psmValDef51|)))
(assert (forall ((s@216@01 $Snap)) (!
  (and
    ($PSF.loc_list ($PSF.lookup_list (as sm@214@01  $PSF<list>) s@216@01) s@216@01)
    ($PSF.loc_list ($PSF.lookup_list (as sm@197@01  $PSF<list>) s@216@01) s@216@01)
    ($PSF.loc_list ($PSF.lookup_list (as sm@190@01  $PSF<list>) s@216@01) s@216@01)
    ($PSF.loc_list ($PSF.lookup_list (as sm@205@01  $PSF<list>) s@216@01) s@216@01))
  :pattern (($PSF.lookup_list (as sm@215@01  $PSF<list>) s@216@01))
  :qid |qp.psmResTrgDef52|)))
(assert ($PSF.loc_list ($PSF.lookup_list (as sm@215@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@208@01)) ($SortWrappers.$RefTo$Snap x4@208@01)))
; [exec]
; xs := Set(x1, x2, x4, x3)
; [eval] Set(x1, x2, x4, x3)
(declare-const xs@217@01 Set<$Ref>)
(assert (=
  xs@217@01
  (Set_unionone (Set_unionone (Set_unionone (Set_singleton x1@187@01) x2@193@01) x4@208@01) x3@200@01)))
; [exec]
; inhale length3_impl(xs, x4, 1, res)
(declare-const $t@218@01 $Snap)
(assert (= $t@218@01 $Snap.unit))
; [eval] length3_impl(xs, x4, 1, res)
(set-option :timeout 0)
(push) ; 7
(declare-const x@219@01 $Ref)
(push) ; 8
; [eval] (x in xs)
(assert (Set_in x@219@01 xs@217@01))
(declare-const $k@220@01 $Perm)
(assert ($Perm.isReadVar $k@220@01))
(pop) ; 8
(declare-fun inv@221@01 ($Ref) $Ref)
(declare-fun img@222@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@220@01))
; Nested auxiliary terms: non-globals
(push) ; 8
(assert (not (forall ((x@219@01 $Ref)) (!
  (=>
    (Set_in x@219@01 xs@217@01)
    (or (= $k@220@01 $Perm.No) (< $Perm.No $k@220@01)))
  
  :qid |quant-u-26358|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 8
(assert (not (forall ((x1@219@01 $Ref) (x2@219@01 $Ref)) (!
  (=>
    (and
      (and
        (and
          (Set_in x1@219@01 xs@217@01)
          ($PSF.loc_list ($PSF.lookup_list (as sm@215@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@219@01)) ($SortWrappers.$RefTo$Snap x1@219@01)))
        (< $Perm.No $k@220@01))
      (and
        (and
          (Set_in x2@219@01 xs@217@01)
          ($PSF.loc_list ($PSF.lookup_list (as sm@215@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@219@01)) ($SortWrappers.$RefTo$Snap x2@219@01)))
        (< $Perm.No $k@220@01))
      (= x1@219@01 x2@219@01))
    (= x1@219@01 x2@219@01))
  
  :qid |list-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@219@01 $Ref)) (!
  (=>
    (and (Set_in x@219@01 xs@217@01) (< $Perm.No $k@220@01))
    (and (= (inv@221@01 x@219@01) x@219@01) (img@222@01 x@219@01)))
  :pattern ((Set_in x@219@01 xs@217@01))
  :pattern ((inv@221@01 x@219@01))
  :pattern ((img@222@01 x@219@01))
  :qid |list-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and
      (img@222@01 x)
      (and (Set_in (inv@221@01 x) xs@217@01) (< $Perm.No $k@220@01)))
    (= (inv@221@01 x) x))
  :pattern ((inv@221@01 x))
  :qid |list-fctOfInv|)))
(assert (forall ((x $Ref)) (!
  (=>
    (Set_in (inv@221@01 x) xs@217@01)
    ($PSF.loc_list ($PSF.lookup_list (as sm@215@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x)) ($SortWrappers.$RefTo$Snap x)))
  :pattern ((inv@221@01 x))
  :qid |quant-u-26359|)))
(push) ; 8
(assert (not (forall ((x $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@221@01 x) xs@217@01) (img@222@01 x) (= x (inv@221@01 x)))
      (> $k@220@01 $Perm.No))
    (>
      (+
        (+
          (+
            (ite (= x x4@208@01) $k@210@01 $Perm.No)
            (ite (= x x2@193@01) (- $k@195@01 (pTaken@203@01 x)) $Perm.No))
          (ite (= x x1@187@01) (- $k@189@01 (pTaken@196@01 x)) $Perm.No))
        (ite (= x x3@200@01) (- $k@202@01 (pTaken@211@01 x)) $Perm.No))
      $Perm.No))
  
  :qid |quant-u-26360|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(declare-const sm@223@01 $PSF<list>)
(declare-const s@224@01 $Snap)
; Definitional axioms for snapshot map domain
(assert (forall ((s@224@01 $Snap)) (!
  (and
    (=>
      (Set_in s@224@01 ($PSF.domain_list (as sm@223@01  $PSF<list>)))
      (and
        (Set_in (inv@221@01 ($SortWrappers.$SnapTo$Ref s@224@01)) xs@217@01)
        (< $Perm.No $k@220@01)
        (img@222@01 ($SortWrappers.$SnapTo$Ref s@224@01))))
    (=>
      (and
        (Set_in (inv@221@01 ($SortWrappers.$SnapTo$Ref s@224@01)) xs@217@01)
        (< $Perm.No $k@220@01)
        (img@222@01 ($SortWrappers.$SnapTo$Ref s@224@01)))
      (Set_in s@224@01 ($PSF.domain_list (as sm@223@01  $PSF<list>)))))
  :pattern ((Set_in s@224@01 ($PSF.domain_list (as sm@223@01  $PSF<list>))))
  :qid |qp.psmDomDef58|)))
; Definitional axioms for snapshot map values
(assert (forall ((s@224@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@221@01 ($SortWrappers.$SnapTo$Ref s@224@01)) xs@217@01)
        (< $Perm.No $k@220@01)
        (img@222@01 ($SortWrappers.$SnapTo$Ref s@224@01)))
      (ite
        (= ($SortWrappers.$SnapTo$Ref s@224@01) x4@208@01)
        (< $Perm.No $k@210@01)
        false))
    (and
      (not (= s@224@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@223@01  $PSF<list>) s@224@01)
        ($PSF.lookup_list (as sm@214@01  $PSF<list>) s@224@01))))
  :pattern (($PSF.lookup_list (as sm@223@01  $PSF<list>) s@224@01))
  :pattern (($PSF.lookup_list (as sm@214@01  $PSF<list>) s@224@01))
  :qid |qp.psmValDef53|)))
(assert (forall ((s@224@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@221@01 ($SortWrappers.$SnapTo$Ref s@224@01)) xs@217@01)
        (< $Perm.No $k@220@01)
        (img@222@01 ($SortWrappers.$SnapTo$Ref s@224@01)))
      (ite
        (= ($SortWrappers.$SnapTo$Ref s@224@01) x2@193@01)
        (<
          $Perm.No
          (- $k@195@01 (pTaken@203@01 ($SortWrappers.$SnapTo$Ref s@224@01))))
        false))
    (and
      (not (= s@224@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@223@01  $PSF<list>) s@224@01)
        ($PSF.lookup_list (as sm@197@01  $PSF<list>) s@224@01))))
  :pattern (($PSF.lookup_list (as sm@223@01  $PSF<list>) s@224@01))
  :pattern (($PSF.lookup_list (as sm@197@01  $PSF<list>) s@224@01))
  :qid |qp.psmValDef54|)))
(assert (forall ((s@224@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@221@01 ($SortWrappers.$SnapTo$Ref s@224@01)) xs@217@01)
        (< $Perm.No $k@220@01)
        (img@222@01 ($SortWrappers.$SnapTo$Ref s@224@01)))
      (ite
        (= ($SortWrappers.$SnapTo$Ref s@224@01) x1@187@01)
        (<
          $Perm.No
          (- $k@189@01 (pTaken@196@01 ($SortWrappers.$SnapTo$Ref s@224@01))))
        false))
    (and
      (not (= s@224@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@223@01  $PSF<list>) s@224@01)
        ($PSF.lookup_list (as sm@190@01  $PSF<list>) s@224@01))))
  :pattern (($PSF.lookup_list (as sm@223@01  $PSF<list>) s@224@01))
  :pattern (($PSF.lookup_list (as sm@190@01  $PSF<list>) s@224@01))
  :qid |qp.psmValDef55|)))
(assert (forall ((s@224@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@221@01 ($SortWrappers.$SnapTo$Ref s@224@01)) xs@217@01)
        (< $Perm.No $k@220@01)
        (img@222@01 ($SortWrappers.$SnapTo$Ref s@224@01)))
      (ite
        (= ($SortWrappers.$SnapTo$Ref s@224@01) x3@200@01)
        (<
          $Perm.No
          (- $k@202@01 (pTaken@211@01 ($SortWrappers.$SnapTo$Ref s@224@01))))
        false))
    (and
      (not (= s@224@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@223@01  $PSF<list>) s@224@01)
        ($PSF.lookup_list (as sm@205@01  $PSF<list>) s@224@01))))
  :pattern (($PSF.lookup_list (as sm@223@01  $PSF<list>) s@224@01))
  :pattern (($PSF.lookup_list (as sm@205@01  $PSF<list>) s@224@01))
  :qid |qp.psmValDef56|)))
(assert (forall ((s@224@01 $Snap)) (!
  (and
    ($PSF.loc_list ($PSF.lookup_list (as sm@214@01  $PSF<list>) s@224@01) s@224@01)
    ($PSF.loc_list ($PSF.lookup_list (as sm@197@01  $PSF<list>) s@224@01) s@224@01)
    ($PSF.loc_list ($PSF.lookup_list (as sm@190@01  $PSF<list>) s@224@01) s@224@01)
    ($PSF.loc_list ($PSF.lookup_list (as sm@205@01  $PSF<list>) s@224@01) s@224@01))
  :pattern (($PSF.lookup_list (as sm@223@01  $PSF<list>) s@224@01))
  :qid |qp.psmResTrgDef57|)))
(assert (length3_impl%precondition ($SortWrappers.$PSF<list>To$Snap (as sm@223@01  $PSF<list>)) xs@217@01 x4@208@01 1 res@186@01))
(pop) ; 7
; Joined path conditions
(assert ($Perm.isReadVar $k@220@01))
(assert (forall ((x@219@01 $Ref)) (!
  (=>
    (and (Set_in x@219@01 xs@217@01) (< $Perm.No $k@220@01))
    (and (= (inv@221@01 x@219@01) x@219@01) (img@222@01 x@219@01)))
  :pattern ((Set_in x@219@01 xs@217@01))
  :pattern ((inv@221@01 x@219@01))
  :pattern ((img@222@01 x@219@01))
  :qid |list-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and
      (img@222@01 x)
      (and (Set_in (inv@221@01 x) xs@217@01) (< $Perm.No $k@220@01)))
    (= (inv@221@01 x) x))
  :pattern ((inv@221@01 x))
  :qid |list-fctOfInv|)))
(assert (forall ((s@224@01 $Snap)) (!
  (and
    (=>
      (Set_in s@224@01 ($PSF.domain_list (as sm@223@01  $PSF<list>)))
      (and
        (Set_in (inv@221@01 ($SortWrappers.$SnapTo$Ref s@224@01)) xs@217@01)
        (< $Perm.No $k@220@01)
        (img@222@01 ($SortWrappers.$SnapTo$Ref s@224@01))))
    (=>
      (and
        (Set_in (inv@221@01 ($SortWrappers.$SnapTo$Ref s@224@01)) xs@217@01)
        (< $Perm.No $k@220@01)
        (img@222@01 ($SortWrappers.$SnapTo$Ref s@224@01)))
      (Set_in s@224@01 ($PSF.domain_list (as sm@223@01  $PSF<list>)))))
  :pattern ((Set_in s@224@01 ($PSF.domain_list (as sm@223@01  $PSF<list>))))
  :qid |qp.psmDomDef58|)))
(assert (forall ((s@224@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@221@01 ($SortWrappers.$SnapTo$Ref s@224@01)) xs@217@01)
        (< $Perm.No $k@220@01)
        (img@222@01 ($SortWrappers.$SnapTo$Ref s@224@01)))
      (ite
        (= ($SortWrappers.$SnapTo$Ref s@224@01) x4@208@01)
        (< $Perm.No $k@210@01)
        false))
    (and
      (not (= s@224@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@223@01  $PSF<list>) s@224@01)
        ($PSF.lookup_list (as sm@214@01  $PSF<list>) s@224@01))))
  :pattern (($PSF.lookup_list (as sm@223@01  $PSF<list>) s@224@01))
  :pattern (($PSF.lookup_list (as sm@214@01  $PSF<list>) s@224@01))
  :qid |qp.psmValDef53|)))
(assert (forall ((s@224@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@221@01 ($SortWrappers.$SnapTo$Ref s@224@01)) xs@217@01)
        (< $Perm.No $k@220@01)
        (img@222@01 ($SortWrappers.$SnapTo$Ref s@224@01)))
      (ite
        (= ($SortWrappers.$SnapTo$Ref s@224@01) x2@193@01)
        (<
          $Perm.No
          (- $k@195@01 (pTaken@203@01 ($SortWrappers.$SnapTo$Ref s@224@01))))
        false))
    (and
      (not (= s@224@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@223@01  $PSF<list>) s@224@01)
        ($PSF.lookup_list (as sm@197@01  $PSF<list>) s@224@01))))
  :pattern (($PSF.lookup_list (as sm@223@01  $PSF<list>) s@224@01))
  :pattern (($PSF.lookup_list (as sm@197@01  $PSF<list>) s@224@01))
  :qid |qp.psmValDef54|)))
(assert (forall ((s@224@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@221@01 ($SortWrappers.$SnapTo$Ref s@224@01)) xs@217@01)
        (< $Perm.No $k@220@01)
        (img@222@01 ($SortWrappers.$SnapTo$Ref s@224@01)))
      (ite
        (= ($SortWrappers.$SnapTo$Ref s@224@01) x1@187@01)
        (<
          $Perm.No
          (- $k@189@01 (pTaken@196@01 ($SortWrappers.$SnapTo$Ref s@224@01))))
        false))
    (and
      (not (= s@224@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@223@01  $PSF<list>) s@224@01)
        ($PSF.lookup_list (as sm@190@01  $PSF<list>) s@224@01))))
  :pattern (($PSF.lookup_list (as sm@223@01  $PSF<list>) s@224@01))
  :pattern (($PSF.lookup_list (as sm@190@01  $PSF<list>) s@224@01))
  :qid |qp.psmValDef55|)))
(assert (forall ((s@224@01 $Snap)) (!
  (=>
    (and
      (and
        (Set_in (inv@221@01 ($SortWrappers.$SnapTo$Ref s@224@01)) xs@217@01)
        (< $Perm.No $k@220@01)
        (img@222@01 ($SortWrappers.$SnapTo$Ref s@224@01)))
      (ite
        (= ($SortWrappers.$SnapTo$Ref s@224@01) x3@200@01)
        (<
          $Perm.No
          (- $k@202@01 (pTaken@211@01 ($SortWrappers.$SnapTo$Ref s@224@01))))
        false))
    (and
      (not (= s@224@01 $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@223@01  $PSF<list>) s@224@01)
        ($PSF.lookup_list (as sm@205@01  $PSF<list>) s@224@01))))
  :pattern (($PSF.lookup_list (as sm@223@01  $PSF<list>) s@224@01))
  :pattern (($PSF.lookup_list (as sm@205@01  $PSF<list>) s@224@01))
  :qid |qp.psmValDef56|)))
(assert (forall ((s@224@01 $Snap)) (!
  (and
    ($PSF.loc_list ($PSF.lookup_list (as sm@214@01  $PSF<list>) s@224@01) s@224@01)
    ($PSF.loc_list ($PSF.lookup_list (as sm@197@01  $PSF<list>) s@224@01) s@224@01)
    ($PSF.loc_list ($PSF.lookup_list (as sm@190@01  $PSF<list>) s@224@01) s@224@01)
    ($PSF.loc_list ($PSF.lookup_list (as sm@205@01  $PSF<list>) s@224@01) s@224@01))
  :pattern (($PSF.lookup_list (as sm@223@01  $PSF<list>) s@224@01))
  :qid |qp.psmResTrgDef57|)))
(assert (and
  (forall ((x $Ref)) (!
    (=>
      (Set_in (inv@221@01 x) xs@217@01)
      ($PSF.loc_list ($PSF.lookup_list (as sm@215@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x)) ($SortWrappers.$RefTo$Snap x)))
    :pattern ((inv@221@01 x))
    :qid |quant-u-26359|))
  (length3_impl%precondition ($SortWrappers.$PSF<list>To$Snap (as sm@223@01  $PSF<list>)) xs@217@01 x4@208@01 1 res@186@01)))
(assert (length3_impl ($SortWrappers.$PSF<list>To$Snap (as sm@223@01  $PSF<list>)) xs@217@01 x4@208@01 1 res@186@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert res == 4
; [eval] res == 4
(set-option :timeout 0)
(push) ; 7
(assert (not (= res@186@01 4)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x1@187@01 x3@200@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x2@193@01 x1@187@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x2@193@01 x3@200@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x4@208@01 x2@193@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x2@193@01 x1@187@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x4@208@01 x1@187@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x1@187@01 x3@200@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x2@193@01 x3@200@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x4@208@01 x3@200@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x4@208@01 x2@193@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x4@208@01 x1@187@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x4@208@01 x3@200@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No $k@210@01)
    (< $Perm.No (- $k@195@01 (pTaken@203@01 x2@193@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@208@01))
      ($PSF.lookup_list (as sm@197@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@193@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No $k@210@01)
    (< $Perm.No (- $k@189@01 (pTaken@196@01 x1@187@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@208@01))
      ($PSF.lookup_list (as sm@190@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@187@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No $k@210@01)
    (< $Perm.No (- $k@202@01 (pTaken@211@01 x3@200@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@208@01))
      ($PSF.lookup_list (as sm@205@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@200@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@195@01 (pTaken@203@01 x2@193@01)))
    (< $Perm.No $k@210@01))
  (not
    (=
      ($PSF.lookup_list (as sm@197@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@193@01))
      ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@208@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@195@01 (pTaken@203@01 x2@193@01)))
    (< $Perm.No (- $k@189@01 (pTaken@196@01 x1@187@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@197@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@193@01))
      ($PSF.lookup_list (as sm@190@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@187@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@195@01 (pTaken@203@01 x2@193@01)))
    (< $Perm.No (- $k@202@01 (pTaken@211@01 x3@200@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@197@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@193@01))
      ($PSF.lookup_list (as sm@205@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@200@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@189@01 (pTaken@196@01 x1@187@01)))
    (< $Perm.No $k@210@01))
  (not
    (=
      ($PSF.lookup_list (as sm@190@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@187@01))
      ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@208@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@189@01 (pTaken@196@01 x1@187@01)))
    (< $Perm.No (- $k@195@01 (pTaken@203@01 x2@193@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@190@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@187@01))
      ($PSF.lookup_list (as sm@197@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@193@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@189@01 (pTaken@196@01 x1@187@01)))
    (< $Perm.No (- $k@202@01 (pTaken@211@01 x3@200@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@190@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@187@01))
      ($PSF.lookup_list (as sm@205@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@200@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@202@01 (pTaken@211@01 x3@200@01)))
    (< $Perm.No $k@210@01))
  (not
    (=
      ($PSF.lookup_list (as sm@205@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@200@01))
      ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@208@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@202@01 (pTaken@211@01 x3@200@01)))
    (< $Perm.No (- $k@195@01 (pTaken@203@01 x2@193@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@205@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@200@01))
      ($PSF.lookup_list (as sm@197@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@193@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@202@01 (pTaken@211@01 x3@200@01)))
    (< $Perm.No (- $k@189@01 (pTaken@196@01 x1@187@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@205@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@200@01))
      ($PSF.lookup_list (as sm@190@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@187@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (and
    (not (= x4@208@01 x2@193@01))
    (not (= x4@208@01 x1@187@01))
    (not (= x4@208@01 x3@200@01)))
  (and
    (not (= x2@193@01 x4@208@01))
    (not (= x2@193@01 x1@187@01))
    (not (= x2@193@01 x3@200@01)))
  (and
    (not (= x1@187@01 x4@208@01))
    (not (= x1@187@01 x2@193@01))
    (not (= x1@187@01 x3@200@01)))
  (and
    (not (= x3@200@01 x4@208@01))
    (not (= x3@200@01 x2@193@01))
    (not (= x3@200@01 x1@187@01)))))
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@202@01) (- $Perm.Write $k@189@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@202@01) (- $Perm.Write $k@195@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@202@01) (- $Perm.Write $k@210@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@189@01) (- $Perm.Write $k@202@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@189@01) (- $Perm.Write $k@195@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@189@01) (- $Perm.Write $k@210@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@195@01) (- $Perm.Write $k@202@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@195@01) (- $Perm.Write $k@189@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@195@01) (- $Perm.Write $k@210@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@210@01) (- $Perm.Write $k@202@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@210@01) (- $Perm.Write $k@189@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@210@01) (- $Perm.Write $k@195@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@202@01))
    (< $Perm.No (- $Perm.Write $k@189@01)))
  (not (= x2@193@01 $Ref.null)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@202@01))
    (< $Perm.No (- $Perm.Write $k@195@01)))
  (not (= x2@193@01 x1@187@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@202@01))
    (< $Perm.No (- $Perm.Write $k@210@01)))
  (not (= x2@193@01 x3@200@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@189@01))
    (< $Perm.No (- $Perm.Write $k@202@01)))
  (not (= $Ref.null x2@193@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@189@01))
    (< $Perm.No (- $Perm.Write $k@195@01)))
  (not (= $Ref.null x1@187@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@189@01))
    (< $Perm.No (- $Perm.Write $k@210@01)))
  (not (= $Ref.null x3@200@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@195@01))
    (< $Perm.No (- $Perm.Write $k@202@01)))
  (not (= x1@187@01 x2@193@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@195@01))
    (< $Perm.No (- $Perm.Write $k@189@01)))
  (not (= x1@187@01 $Ref.null)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@195@01))
    (< $Perm.No (- $Perm.Write $k@210@01)))
  (not (= x1@187@01 x3@200@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@210@01))
    (< $Perm.No (- $Perm.Write $k@202@01)))
  (not (= x3@200@01 x2@193@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@210@01))
    (< $Perm.No (- $Perm.Write $k@189@01)))
  (not (= x3@200@01 $Ref.null)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@210@01))
    (< $Perm.No (- $Perm.Write $k@195@01)))
  (not (= x3@200@01 x1@187@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (and
    (not (= x3@200@01 x1@187@01))
    (not (= x3@200@01 x2@193@01))
    (not (= x3@200@01 x4@208@01)))
  (and
    (not (= x1@187@01 x3@200@01))
    (not (= x1@187@01 x2@193@01))
    (not (= x1@187@01 x4@208@01)))
  (and
    (not (= x2@193@01 x3@200@01))
    (not (= x2@193@01 x1@187@01))
    (not (= x2@193@01 x4@208@01)))
  (and
    (not (= x4@208@01 x3@200@01))
    (not (= x4@208@01 x1@187@01))
    (not (= x4@208@01 x2@193@01)))))
; [eval] res == 4
(set-option :timeout 0)
(push) ; 7
(assert (not (= res@186@01 4)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x1@187@01 x3@200@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x2@193@01 x1@187@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x2@193@01 x3@200@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x4@208@01 x2@193@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x2@193@01 x1@187@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x4@208@01 x1@187@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x1@187@01 x3@200@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x2@193@01 x3@200@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x4@208@01 x3@200@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x4@208@01 x2@193@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x4@208@01 x1@187@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x4@208@01 x3@200@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No $k@210@01)
    (< $Perm.No (- $k@195@01 (pTaken@203@01 x2@193@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@208@01))
      ($PSF.lookup_list (as sm@197@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@193@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No $k@210@01)
    (< $Perm.No (- $k@189@01 (pTaken@196@01 x1@187@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@208@01))
      ($PSF.lookup_list (as sm@190@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@187@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No $k@210@01)
    (< $Perm.No (- $k@202@01 (pTaken@211@01 x3@200@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@208@01))
      ($PSF.lookup_list (as sm@205@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@200@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@195@01 (pTaken@203@01 x2@193@01)))
    (< $Perm.No $k@210@01))
  (not
    (=
      ($PSF.lookup_list (as sm@197@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@193@01))
      ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@208@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@195@01 (pTaken@203@01 x2@193@01)))
    (< $Perm.No (- $k@189@01 (pTaken@196@01 x1@187@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@197@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@193@01))
      ($PSF.lookup_list (as sm@190@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@187@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@195@01 (pTaken@203@01 x2@193@01)))
    (< $Perm.No (- $k@202@01 (pTaken@211@01 x3@200@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@197@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@193@01))
      ($PSF.lookup_list (as sm@205@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@200@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@189@01 (pTaken@196@01 x1@187@01)))
    (< $Perm.No $k@210@01))
  (not
    (=
      ($PSF.lookup_list (as sm@190@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@187@01))
      ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@208@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@189@01 (pTaken@196@01 x1@187@01)))
    (< $Perm.No (- $k@195@01 (pTaken@203@01 x2@193@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@190@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@187@01))
      ($PSF.lookup_list (as sm@197@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@193@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@189@01 (pTaken@196@01 x1@187@01)))
    (< $Perm.No (- $k@202@01 (pTaken@211@01 x3@200@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@190@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@187@01))
      ($PSF.lookup_list (as sm@205@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@200@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@202@01 (pTaken@211@01 x3@200@01)))
    (< $Perm.No $k@210@01))
  (not
    (=
      ($PSF.lookup_list (as sm@205@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@200@01))
      ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@208@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@202@01 (pTaken@211@01 x3@200@01)))
    (< $Perm.No (- $k@195@01 (pTaken@203@01 x2@193@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@205@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@200@01))
      ($PSF.lookup_list (as sm@197@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@193@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@202@01 (pTaken@211@01 x3@200@01)))
    (< $Perm.No (- $k@189@01 (pTaken@196@01 x1@187@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@205@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@200@01))
      ($PSF.lookup_list (as sm@190@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@187@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (and
    (not (= x4@208@01 x2@193@01))
    (not (= x4@208@01 x1@187@01))
    (not (= x4@208@01 x3@200@01)))
  (and
    (not (= x2@193@01 x4@208@01))
    (not (= x2@193@01 x1@187@01))
    (not (= x2@193@01 x3@200@01)))
  (and
    (not (= x1@187@01 x4@208@01))
    (not (= x1@187@01 x2@193@01))
    (not (= x1@187@01 x3@200@01)))
  (and
    (not (= x3@200@01 x4@208@01))
    (not (= x3@200@01 x2@193@01))
    (not (= x3@200@01 x1@187@01)))))
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@202@01) (- $Perm.Write $k@189@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@202@01) (- $Perm.Write $k@195@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@202@01) (- $Perm.Write $k@210@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@189@01) (- $Perm.Write $k@202@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@189@01) (- $Perm.Write $k@195@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@189@01) (- $Perm.Write $k@210@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@195@01) (- $Perm.Write $k@202@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@195@01) (- $Perm.Write $k@189@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@195@01) (- $Perm.Write $k@210@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@210@01) (- $Perm.Write $k@202@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@210@01) (- $Perm.Write $k@189@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@210@01) (- $Perm.Write $k@195@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@202@01))
    (< $Perm.No (- $Perm.Write $k@189@01)))
  (not (= x2@193@01 $Ref.null)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@202@01))
    (< $Perm.No (- $Perm.Write $k@195@01)))
  (not (= x2@193@01 x1@187@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@202@01))
    (< $Perm.No (- $Perm.Write $k@210@01)))
  (not (= x2@193@01 x3@200@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@189@01))
    (< $Perm.No (- $Perm.Write $k@202@01)))
  (not (= $Ref.null x2@193@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@189@01))
    (< $Perm.No (- $Perm.Write $k@195@01)))
  (not (= $Ref.null x1@187@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@189@01))
    (< $Perm.No (- $Perm.Write $k@210@01)))
  (not (= $Ref.null x3@200@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@195@01))
    (< $Perm.No (- $Perm.Write $k@202@01)))
  (not (= x1@187@01 x2@193@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@195@01))
    (< $Perm.No (- $Perm.Write $k@189@01)))
  (not (= x1@187@01 $Ref.null)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@195@01))
    (< $Perm.No (- $Perm.Write $k@210@01)))
  (not (= x1@187@01 x3@200@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@210@01))
    (< $Perm.No (- $Perm.Write $k@202@01)))
  (not (= x3@200@01 x2@193@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@210@01))
    (< $Perm.No (- $Perm.Write $k@189@01)))
  (not (= x3@200@01 $Ref.null)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@210@01))
    (< $Perm.No (- $Perm.Write $k@195@01)))
  (not (= x3@200@01 x1@187@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (and
    (not (= x3@200@01 x1@187@01))
    (not (= x3@200@01 x2@193@01))
    (not (= x3@200@01 x4@208@01)))
  (and
    (not (= x1@187@01 x3@200@01))
    (not (= x1@187@01 x2@193@01))
    (not (= x1@187@01 x4@208@01)))
  (and
    (not (= x2@193@01 x3@200@01))
    (not (= x2@193@01 x1@187@01))
    (not (= x2@193@01 x4@208@01)))
  (and
    (not (= x4@208@01 x3@200@01))
    (not (= x4@208@01 x1@187@01))
    (not (= x4@208@01 x2@193@01)))))
; [eval] res == 4
(set-option :timeout 0)
(push) ; 7
(assert (not (= res@186@01 4)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x1@187@01 x3@200@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x2@193@01 x1@187@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x2@193@01 x3@200@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x4@208@01 x2@193@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x2@193@01 x1@187@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x4@208@01 x1@187@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x1@187@01 x3@200@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x2@193@01 x3@200@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x4@208@01 x3@200@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x4@208@01 x2@193@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x4@208@01 x1@187@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= x4@208@01 x3@200@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No $k@210@01)
    (< $Perm.No (- $k@195@01 (pTaken@203@01 x2@193@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@208@01))
      ($PSF.lookup_list (as sm@197@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@193@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No $k@210@01)
    (< $Perm.No (- $k@189@01 (pTaken@196@01 x1@187@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@208@01))
      ($PSF.lookup_list (as sm@190@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@187@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No $k@210@01)
    (< $Perm.No (- $k@202@01 (pTaken@211@01 x3@200@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@208@01))
      ($PSF.lookup_list (as sm@205@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@200@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@195@01 (pTaken@203@01 x2@193@01)))
    (< $Perm.No $k@210@01))
  (not
    (=
      ($PSF.lookup_list (as sm@197@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@193@01))
      ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@208@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@195@01 (pTaken@203@01 x2@193@01)))
    (< $Perm.No (- $k@189@01 (pTaken@196@01 x1@187@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@197@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@193@01))
      ($PSF.lookup_list (as sm@190@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@187@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@195@01 (pTaken@203@01 x2@193@01)))
    (< $Perm.No (- $k@202@01 (pTaken@211@01 x3@200@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@197@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@193@01))
      ($PSF.lookup_list (as sm@205@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@200@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@189@01 (pTaken@196@01 x1@187@01)))
    (< $Perm.No $k@210@01))
  (not
    (=
      ($PSF.lookup_list (as sm@190@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@187@01))
      ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@208@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@189@01 (pTaken@196@01 x1@187@01)))
    (< $Perm.No (- $k@195@01 (pTaken@203@01 x2@193@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@190@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@187@01))
      ($PSF.lookup_list (as sm@197@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@193@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@189@01 (pTaken@196@01 x1@187@01)))
    (< $Perm.No (- $k@202@01 (pTaken@211@01 x3@200@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@190@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@187@01))
      ($PSF.lookup_list (as sm@205@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@200@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@202@01 (pTaken@211@01 x3@200@01)))
    (< $Perm.No $k@210@01))
  (not
    (=
      ($PSF.lookup_list (as sm@205@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@200@01))
      ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x4@208@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@202@01 (pTaken@211@01 x3@200@01)))
    (< $Perm.No (- $k@195@01 (pTaken@203@01 x2@193@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@205@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@200@01))
      ($PSF.lookup_list (as sm@197@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x2@193@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $k@202@01 (pTaken@211@01 x3@200@01)))
    (< $Perm.No (- $k@189@01 (pTaken@196@01 x1@187@01))))
  (not
    (=
      ($PSF.lookup_list (as sm@205@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x3@200@01))
      ($PSF.lookup_list (as sm@190@01  $PSF<list>) ($SortWrappers.$RefTo$Snap x1@187@01)))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (and
    (not (= x4@208@01 x2@193@01))
    (not (= x4@208@01 x1@187@01))
    (not (= x4@208@01 x3@200@01)))
  (and
    (not (= x2@193@01 x4@208@01))
    (not (= x2@193@01 x1@187@01))
    (not (= x2@193@01 x3@200@01)))
  (and
    (not (= x1@187@01 x4@208@01))
    (not (= x1@187@01 x2@193@01))
    (not (= x1@187@01 x3@200@01)))
  (and
    (not (= x3@200@01 x4@208@01))
    (not (= x3@200@01 x2@193@01))
    (not (= x3@200@01 x1@187@01)))))
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@202@01) (- $Perm.Write $k@189@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@202@01) (- $Perm.Write $k@195@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@202@01) (- $Perm.Write $k@210@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@189@01) (- $Perm.Write $k@202@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@189@01) (- $Perm.Write $k@195@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@189@01) (- $Perm.Write $k@210@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@195@01) (- $Perm.Write $k@202@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@195@01) (- $Perm.Write $k@189@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@195@01) (- $Perm.Write $k@210@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@210@01) (- $Perm.Write $k@202@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@210@01) (- $Perm.Write $k@189@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.Write (+ (- $Perm.Write $k@210@01) (- $Perm.Write $k@195@01)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@202@01))
    (< $Perm.No (- $Perm.Write $k@189@01)))
  (not (= x2@193@01 $Ref.null)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@202@01))
    (< $Perm.No (- $Perm.Write $k@195@01)))
  (not (= x2@193@01 x1@187@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@202@01))
    (< $Perm.No (- $Perm.Write $k@210@01)))
  (not (= x2@193@01 x3@200@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@189@01))
    (< $Perm.No (- $Perm.Write $k@202@01)))
  (not (= $Ref.null x2@193@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@189@01))
    (< $Perm.No (- $Perm.Write $k@195@01)))
  (not (= $Ref.null x1@187@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@189@01))
    (< $Perm.No (- $Perm.Write $k@210@01)))
  (not (= $Ref.null x3@200@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@195@01))
    (< $Perm.No (- $Perm.Write $k@202@01)))
  (not (= x1@187@01 x2@193@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@195@01))
    (< $Perm.No (- $Perm.Write $k@189@01)))
  (not (= x1@187@01 $Ref.null)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@195@01))
    (< $Perm.No (- $Perm.Write $k@210@01)))
  (not (= x1@187@01 x3@200@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@210@01))
    (< $Perm.No (- $Perm.Write $k@202@01)))
  (not (= x3@200@01 x2@193@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@210@01))
    (< $Perm.No (- $Perm.Write $k@189@01)))
  (not (= x3@200@01 $Ref.null)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (< $Perm.No (- $Perm.Write $k@210@01))
    (< $Perm.No (- $Perm.Write $k@195@01)))
  (not (= x3@200@01 x1@187@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (and
    (not (= x3@200@01 x1@187@01))
    (not (= x3@200@01 x2@193@01))
    (not (= x3@200@01 x4@208@01)))
  (and
    (not (= x1@187@01 x3@200@01))
    (not (= x1@187@01 x2@193@01))
    (not (= x1@187@01 x4@208@01)))
  (and
    (not (= x2@193@01 x3@200@01))
    (not (= x2@193@01 x1@187@01))
    (not (= x2@193@01 x4@208@01)))
  (and
    (not (= x4@208@01 x3@200@01))
    (not (= x4@208@01 x1@187@01))
    (not (= x4@208@01 x2@193@01)))))
; [eval] res == 4
(set-option :timeout 0)
(push) ; 7
(assert (not (= res@186@01 4)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
