(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-08 21:19:45
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
(declare-sort $FVF<val> 0)
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
; Declaring additional sort wrappers
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
; /field_value_functions_declarations.smt2 [val: Int]
(declare-fun $FVF.domain_val ($FVF<val>) Set<$Ref>)
(declare-fun $FVF.lookup_val ($FVF<val> $Ref) Int)
(declare-fun $FVF.after_val ($FVF<val> $FVF<val>) Bool)
(declare-fun $FVF.loc_val (Int $Ref) Bool)
(declare-fun $FVF.perm_val ($FPM $Ref) $Perm)
(declare-const $fvfTOP_val $FVF<val>)
; /predicate_snap_functions_declarations.smt2 [list: Snap]
(declare-fun $PSF.domain_list ($PSF<list>) Set<$Snap>)
(declare-fun $PSF.lookup_list ($PSF<list> $Snap) $Snap)
(declare-fun $PSF.after_list ($PSF<list> $PSF<list>) Bool)
(declare-fun $PSF.loc_list ($Snap $Snap) Bool)
(declare-fun $PSF.perm_list ($PPM $Snap) $Perm)
(declare-const $psfTOP_list $PSF<list>)
; Declaring symbols related to program functions (from program analysis)
(declare-fun allSet ($Snap $Ref Int Int) Bool)
(declare-fun allSet%limited ($Snap $Ref Int Int) Bool)
(declare-fun allSet%stateless ($Ref Int Int) Bool)
(declare-fun allSet%precondition ($Snap $Ref Int Int) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun list%trigger ($Snap $Ref Int) Bool)
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
(assert (forall ((s@$ $Snap) (r@0@00 $Ref) (i@1@00 Int) (v@2@00 Int)) (!
  (= (allSet%limited s@$ r@0@00 i@1@00 v@2@00) (allSet s@$ r@0@00 i@1@00 v@2@00))
  :pattern ((allSet s@$ r@0@00 i@1@00 v@2@00))
  :qid |quant-u-16906|)))
(assert (forall ((s@$ $Snap) (r@0@00 $Ref) (i@1@00 Int) (v@2@00 Int)) (!
  (allSet%stateless r@0@00 i@1@00 v@2@00)
  :pattern ((allSet%limited s@$ r@0@00 i@1@00 v@2@00))
  :qid |quant-u-16907|)))
(assert (forall ((s@$ $Snap) (r@0@00 $Ref) (i@1@00 Int) (v@2@00 Int)) (!
  (=>
    (allSet%precondition s@$ r@0@00 i@1@00 v@2@00)
    (=
      (allSet s@$ r@0@00 i@1@00 v@2@00)
      (ite
        (<= i@1@00 0)
        true
        (and
          (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) v@2@00)
          (allSet%limited ($Snap.second ($Snap.second s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) (-
            i@1@00
            1) v@2@00)))))
  :pattern ((allSet s@$ r@0@00 i@1@00 v@2@00))
  :pattern ((allSet%stateless r@0@00 i@1@00 v@2@00) (list%trigger s@$ r@0@00 i@1@00))
  :qid |quant-u-16908|)))
(assert (forall ((s@$ $Snap) (r@0@00 $Ref) (i@1@00 Int) (v@2@00 Int)) (!
  (=>
    (allSet%precondition s@$ r@0@00 i@1@00 v@2@00)
    (ite
      (<= i@1@00 0)
      true
      (=>
        (= ($SortWrappers.$SnapToInt ($Snap.first s@$)) v@2@00)
        (allSet%precondition ($Snap.second ($Snap.second s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) (-
          i@1@00
          1) v@2@00))))
  :pattern ((allSet s@$ r@0@00 i@1@00 v@2@00))
  :qid |quant-u-16909|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- m1 ----------
(declare-const lists@0@01 Set<$Ref>)
(declare-const length@1@01 Int)
(declare-const v@2@01 Int)
(declare-const lists@3@01 Set<$Ref>)
(declare-const length@4@01 Int)
(declare-const v@5@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@6@01 $Snap)
(assert (= $t@6@01 ($Snap.combine ($Snap.first $t@6@01) ($Snap.second $t@6@01))))
(assert (= ($Snap.first $t@6@01) $Snap.unit))
; [eval] length > 0
(assert (> length@4@01 0))
(declare-const r@7@01 $Ref)
(push) ; 2
; [eval] (r in lists)
(assert (Set_in r@7@01 lists@3@01))
(pop) ; 2
(declare-fun inv@8@01 ($Ref Int) $Ref)
(declare-fun img@9@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((r1@7@01 $Ref) (r2@7@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@7@01 lists@3@01)
      (Set_in r2@7@01 lists@3@01)
      (= r1@7@01 r2@7@01))
    (= r1@7@01 r2@7@01))
  
  :qid |list-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@7@01 $Ref)) (!
  (=>
    (Set_in r@7@01 lists@3@01)
    (and (= (inv@8@01 r@7@01 length@4@01) r@7@01) (img@9@01 r@7@01 length@4@01)))
  :pattern ((Set_in r@7@01 lists@3@01))
  :pattern ((inv@8@01 r@7@01 length@4@01))
  :pattern ((img@9@01 r@7@01 length@4@01))
  :qid |quant-u-16911|)))
(assert (forall ((r $Ref) (i Int)) (!
  (=>
    (and (img@9@01 r i) (Set_in (inv@8@01 r i) lists@3@01))
    (and (= (inv@8@01 r i) r) (= length@4@01 i)))
  :pattern ((inv@8@01 r i))
  :qid |list-fctOfInv|)))
; Permissions are non-negative
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@10@01 $Snap)
(assert (= $t@10@01 ($Snap.combine ($Snap.first $t@10@01) ($Snap.second $t@10@01))))
(declare-const r@11@01 $Ref)
(push) ; 3
; [eval] (r in lists)
(assert (Set_in r@11@01 lists@3@01))
(pop) ; 3
(declare-fun inv@12@01 ($Ref Int) $Ref)
(declare-fun img@13@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((r1@11@01 $Ref) (r2@11@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@11@01 lists@3@01)
      (Set_in r2@11@01 lists@3@01)
      (= r1@11@01 r2@11@01))
    (= r1@11@01 r2@11@01))
  
  :qid |list-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@11@01 $Ref)) (!
  (=>
    (Set_in r@11@01 lists@3@01)
    (and
      (= (inv@12@01 r@11@01 length@4@01) r@11@01)
      (img@13@01 r@11@01 length@4@01)))
  :pattern ((Set_in r@11@01 lists@3@01))
  :pattern ((inv@12@01 r@11@01 length@4@01))
  :pattern ((img@13@01 r@11@01 length@4@01))
  :qid |quant-u-16913|)))
(assert (forall ((r $Ref) (i Int)) (!
  (=>
    (and (img@13@01 r i) (Set_in (inv@12@01 r i) lists@3@01))
    (and (= (inv@12@01 r i) r) (= length@4@01 i)))
  :pattern ((inv@12@01 r i))
  :qid |list-fctOfInv|)))
; Permissions are non-negative
(assert (= ($Snap.second $t@10@01) $Snap.unit))
; [eval] (forall r: Ref :: { (r in lists) } { allSet(r, length, v) } (r in lists) ==> allSet(r, length, v))
(declare-const r@14@01 $Ref)
(push) ; 3
; [eval] (r in lists) ==> allSet(r, length, v)
; [eval] (r in lists)
(push) ; 4
; [then-branch: 0 | r@14@01 in lists@3@01 | live]
; [else-branch: 0 | !(r@14@01 in lists@3@01) | live]
(push) ; 5
; [then-branch: 0 | r@14@01 in lists@3@01]
(assert (Set_in r@14@01 lists@3@01))
; [eval] allSet(r, length, v)
(push) ; 6
(push) ; 7
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and (= r r@14@01) (= i length@4@01))
    (>
      (ite
        (and (img@13@01 r i) (Set_in (inv@12@01 r i) lists@3@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-16914|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@15@01 $PSF<list>)
(declare-const s@16@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@13@01 r@14@01 length@4@01)
    (Set_in (inv@12@01 r@14@01 length@4@01) lists@3@01))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@14@01)
          ($SortWrappers.IntTo$Snap length@4@01))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@15@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@14@01)
        ($SortWrappers.IntTo$Snap length@4@01)))
      ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@10@01)) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@14@01)
        ($SortWrappers.IntTo$Snap length@4@01)))))))
(assert (allSet%precondition ($PSF.lookup_list (as sm@15@01  $PSF<list>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap r@14@01)
  ($SortWrappers.IntTo$Snap length@4@01))) r@14@01 length@4@01 v@5@01))
(pop) ; 6
; Joined path conditions
(assert (and
  (=>
    (and
      (img@13@01 r@14@01 length@4@01)
      (Set_in (inv@12@01 r@14@01 length@4@01) lists@3@01))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@14@01)
            ($SortWrappers.IntTo$Snap length@4@01))
          $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@15@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@14@01)
          ($SortWrappers.IntTo$Snap length@4@01)))
        ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@10@01)) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@14@01)
          ($SortWrappers.IntTo$Snap length@4@01))))))
  (allSet%precondition ($PSF.lookup_list (as sm@15@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@14@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@14@01 length@4@01 v@5@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 0 | !(r@14@01 in lists@3@01)]
(assert (not (Set_in r@14@01 lists@3@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (Set_in r@14@01 lists@3@01)
  (and
    (Set_in r@14@01 lists@3@01)
    (=>
      (and
        (img@13@01 r@14@01 length@4@01)
        (Set_in (inv@12@01 r@14@01 length@4@01) lists@3@01))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap r@14@01)
              ($SortWrappers.IntTo$Snap length@4@01))
            $Snap.unit))
        (=
          ($PSF.lookup_list (as sm@15@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@14@01)
            ($SortWrappers.IntTo$Snap length@4@01)))
          ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@10@01)) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@14@01)
            ($SortWrappers.IntTo$Snap length@4@01))))))
    (allSet%precondition ($PSF.lookup_list (as sm@15@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@14@01)
      ($SortWrappers.IntTo$Snap length@4@01))) r@14@01 length@4@01 v@5@01))))
; Joined path conditions
(assert (or (not (Set_in r@14@01 lists@3@01)) (Set_in r@14@01 lists@3@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@14@01 $Ref)) (!
  (and
    (=>
      (Set_in r@14@01 lists@3@01)
      (and
        (Set_in r@14@01 lists@3@01)
        (=>
          (and
            (img@13@01 r@14@01 length@4@01)
            (Set_in (inv@12@01 r@14@01 length@4@01) lists@3@01))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@14@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@15@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@14@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@10@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@14@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (allSet%precondition ($PSF.lookup_list (as sm@15@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@14@01)
          ($SortWrappers.IntTo$Snap length@4@01))) r@14@01 length@4@01 v@5@01)))
    (or (not (Set_in r@14@01 lists@3@01)) (Set_in r@14@01 lists@3@01)))
  :pattern ((Set_in r@14@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@26@9@26@85-aux|)))
(assert (forall ((r@14@01 $Ref)) (!
  (and
    (=>
      (Set_in r@14@01 lists@3@01)
      (and
        (Set_in r@14@01 lists@3@01)
        (=>
          (and
            (img@13@01 r@14@01 length@4@01)
            (Set_in (inv@12@01 r@14@01 length@4@01) lists@3@01))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@14@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@15@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@14@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@10@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@14@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (allSet%precondition ($PSF.lookup_list (as sm@15@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@14@01)
          ($SortWrappers.IntTo$Snap length@4@01))) r@14@01 length@4@01 v@5@01)))
    (or (not (Set_in r@14@01 lists@3@01)) (Set_in r@14@01 lists@3@01)))
  :pattern ((allSet%limited ($PSF.lookup_list (as sm@15@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@14@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@14@01 length@4@01 v@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@26@9@26@85-aux|)))
(assert (forall ((r@14@01 $Ref)) (!
  (=>
    (Set_in r@14@01 lists@3@01)
    (allSet ($PSF.lookup_list (as sm@15@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@14@01)
      ($SortWrappers.IntTo$Snap length@4@01))) r@14@01 length@4@01 v@5@01))
  :pattern ((Set_in r@14@01 lists@3@01))
  :pattern ((allSet%limited ($PSF.lookup_list (as sm@15@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@14@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@14@01 length@4@01 v@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@26@9@26@85|)))
(pop) ; 2
(push) ; 2
; [exec]
; var s: Set[Ref]
(declare-const s@17@01 Set<$Ref>)
; [exec]
; var sNext: Set[Ref]
(declare-const sNext@18@01 Set<$Ref>)
; [exec]
; s := lists
; [exec]
; sNext := Set[Ref]()
; [eval] Set[Ref]()
(declare-const s@19@01 Set<$Ref>)
(declare-const sNext@20@01 Set<$Ref>)
(push) ; 3
; Loop head block: Check well-definedness of invariant
(declare-const $t@21@01 $Snap)
(assert (= $t@21@01 ($Snap.combine ($Snap.first $t@21@01) ($Snap.second $t@21@01))))
(declare-const r@22@01 $Ref)
(push) ; 4
; [eval] (r in s)
(assert (Set_in r@22@01 s@19@01))
(pop) ; 4
(declare-fun inv@23@01 ($Ref Int) $Ref)
(declare-fun img@24@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((r1@22@01 $Ref) (r2@22@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@22@01 s@19@01)
      (Set_in r2@22@01 s@19@01)
      (= r1@22@01 r2@22@01))
    (= r1@22@01 r2@22@01))
  
  :qid |list-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@22@01 $Ref)) (!
  (=>
    (Set_in r@22@01 s@19@01)
    (and
      (= (inv@23@01 r@22@01 length@4@01) r@22@01)
      (img@24@01 r@22@01 length@4@01)))
  :pattern ((Set_in r@22@01 s@19@01))
  :pattern ((inv@23@01 r@22@01 length@4@01))
  :pattern ((img@24@01 r@22@01 length@4@01))
  :qid |quant-u-16916|)))
(assert (forall ((r $Ref) (i Int)) (!
  (=>
    (and (img@24@01 r i) (Set_in (inv@23@01 r i) s@19@01))
    (and (= (inv@23@01 r i) r) (= length@4@01 i)))
  :pattern ((inv@23@01 r i))
  :qid |list-fctOfInv|)))
; Permissions are non-negative
(assert (=
  ($Snap.second $t@21@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@21@01))
    ($Snap.second ($Snap.second $t@21@01)))))
(declare-const r@25@01 $Ref)
(push) ; 4
; [eval] (r in lists) && !((r in s))
; [eval] (r in lists)
(push) ; 5
; [then-branch: 1 | !(r@25@01 in lists@3@01) | live]
; [else-branch: 1 | r@25@01 in lists@3@01 | live]
(push) ; 6
; [then-branch: 1 | !(r@25@01 in lists@3@01)]
(assert (not (Set_in r@25@01 lists@3@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 1 | r@25@01 in lists@3@01]
(assert (Set_in r@25@01 lists@3@01))
; [eval] !((r in s))
; [eval] (r in s)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (Set_in r@25@01 lists@3@01) (not (Set_in r@25@01 lists@3@01))))
(assert (and (Set_in r@25@01 lists@3@01) (not (Set_in r@25@01 s@19@01))))
(pop) ; 4
(declare-fun inv@26@01 ($Ref) $Ref)
(declare-fun img@27@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((r@25@01 $Ref)) (!
  (=>
    (and (Set_in r@25@01 lists@3@01) (not (Set_in r@25@01 s@19@01)))
    (or (Set_in r@25@01 lists@3@01) (not (Set_in r@25@01 lists@3@01))))
  :pattern ((Set_in r@25@01 lists@3@01))
  :pattern ((Set_in r@25@01 s@19@01))
  :pattern ((inv@26@01 r@25@01))
  :pattern ((img@27@01 r@25@01))
  :qid |next-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((r1@25@01 $Ref) (r2@25@01 $Ref)) (!
  (=>
    (and
      (and (Set_in r1@25@01 lists@3@01) (not (Set_in r1@25@01 s@19@01)))
      (and (Set_in r2@25@01 lists@3@01) (not (Set_in r2@25@01 s@19@01)))
      (= r1@25@01 r2@25@01))
    (= r1@25@01 r2@25@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@25@01 $Ref)) (!
  (=>
    (and (Set_in r@25@01 lists@3@01) (not (Set_in r@25@01 s@19@01)))
    (and (= (inv@26@01 r@25@01) r@25@01) (img@27@01 r@25@01)))
  :pattern ((Set_in r@25@01 lists@3@01))
  :pattern ((Set_in r@25@01 s@19@01))
  :pattern ((inv@26@01 r@25@01))
  :pattern ((img@27@01 r@25@01))
  :qid |quant-u-16918|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@27@01 r)
      (and
        (Set_in (inv@26@01 r) lists@3@01)
        (not (Set_in (inv@26@01 r) s@19@01))))
    (= (inv@26@01 r) r))
  :pattern ((inv@26@01 r))
  :qid |next-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((r@25@01 $Ref)) (!
  (=>
    (and (Set_in r@25@01 lists@3@01) (not (Set_in r@25@01 s@19@01)))
    (not (= r@25@01 $Ref.null)))
  :pattern ((Set_in r@25@01 lists@3@01))
  :pattern ((Set_in r@25@01 s@19@01))
  :pattern ((inv@26@01 r@25@01))
  :pattern ((img@27@01 r@25@01))
  :qid |next-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second $t@21@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@21@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))
(declare-const r@28@01 $Ref)
(push) ; 4
; [eval] (r in sNext)
(assert (Set_in r@28@01 sNext@20@01))
; [eval] length - 1
(pop) ; 4
(declare-fun inv@29@01 ($Ref Int) $Ref)
(declare-fun img@30@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((r1@28@01 $Ref) (r2@28@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@28@01 sNext@20@01)
      (Set_in r2@28@01 sNext@20@01)
      (= r1@28@01 r2@28@01))
    (= r1@28@01 r2@28@01))
  
  :qid |list-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@28@01 $Ref)) (!
  (=>
    (Set_in r@28@01 sNext@20@01)
    (and
      (= (inv@29@01 r@28@01 (- length@4@01 1)) r@28@01)
      (img@30@01 r@28@01 (- length@4@01 1))))
  :pattern ((Set_in r@28@01 sNext@20@01))
  :pattern ((inv@29@01 r@28@01 (- length@4@01 1)))
  :pattern ((img@30@01 r@28@01 (- length@4@01 1)))
  :qid |quant-u-16920|)))
(assert (forall ((r $Ref) (i Int)) (!
  (=>
    (and (img@30@01 r i) (Set_in (inv@29@01 r i) sNext@20@01))
    (and (= (inv@29@01 r i) r) (= (- length@4@01 1) i)))
  :pattern ((inv@29@01 r i))
  :qid |list-fctOfInv|)))
; Permissions are non-negative
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref) (i Int)) (!
  (and
    (= r@28@01 r@22@01)
    (=
      (and (img@30@01 r i) (Set_in (inv@29@01 r i) sNext@20@01))
      (and (img@24@01 r i) (Set_in (inv@23@01 r i) s@19@01))))
  
  :qid |quant-u-16921|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@21@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@21@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))
(declare-const r@31@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] (r in lists) && !((r in s))
; [eval] (r in lists)
(push) ; 5
; [then-branch: 2 | !(r@31@01 in lists@3@01) | live]
; [else-branch: 2 | r@31@01 in lists@3@01 | live]
(push) ; 6
; [then-branch: 2 | !(r@31@01 in lists@3@01)]
(assert (not (Set_in r@31@01 lists@3@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 2 | r@31@01 in lists@3@01]
(assert (Set_in r@31@01 lists@3@01))
; [eval] !((r in s))
; [eval] (r in s)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (Set_in r@31@01 lists@3@01) (not (Set_in r@31@01 lists@3@01))))
(assert (and (Set_in r@31@01 lists@3@01) (not (Set_in r@31@01 s@19@01))))
(pop) ; 4
(declare-fun inv@32@01 ($Ref) $Ref)
(declare-fun img@33@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((r@31@01 $Ref)) (!
  (=>
    (and (Set_in r@31@01 lists@3@01) (not (Set_in r@31@01 s@19@01)))
    (or (Set_in r@31@01 lists@3@01) (not (Set_in r@31@01 lists@3@01))))
  :pattern ((Set_in r@31@01 lists@3@01))
  :pattern ((Set_in r@31@01 s@19@01))
  :pattern ((inv@32@01 r@31@01))
  :pattern ((img@33@01 r@31@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((r1@31@01 $Ref) (r2@31@01 $Ref)) (!
  (=>
    (and
      (and (Set_in r1@31@01 lists@3@01) (not (Set_in r1@31@01 s@19@01)))
      (and (Set_in r2@31@01 lists@3@01) (not (Set_in r2@31@01 s@19@01)))
      (= r1@31@01 r2@31@01))
    (= r1@31@01 r2@31@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@31@01 $Ref)) (!
  (=>
    (and (Set_in r@31@01 lists@3@01) (not (Set_in r@31@01 s@19@01)))
    (and (= (inv@32@01 r@31@01) r@31@01) (img@33@01 r@31@01)))
  :pattern ((Set_in r@31@01 lists@3@01))
  :pattern ((Set_in r@31@01 s@19@01))
  :pattern ((inv@32@01 r@31@01))
  :pattern ((img@33@01 r@31@01))
  :qid |quant-u-16923|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@33@01 r)
      (and
        (Set_in (inv@32@01 r) lists@3@01)
        (not (Set_in (inv@32@01 r) s@19@01))))
    (= (inv@32@01 r) r))
  :pattern ((inv@32@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((r@31@01 $Ref)) (!
  (=>
    (and (Set_in r@31@01 lists@3@01) (not (Set_in r@31@01 s@19@01)))
    (not (= r@31@01 $Ref.null)))
  :pattern ((Set_in r@31@01 lists@3@01))
  :pattern ((Set_in r@31@01 s@19@01))
  :pattern ((inv@32@01 r@31@01))
  :pattern ((img@33@01 r@31@01))
  :qid |val-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))
  $Snap.unit))
; [eval] (forall r: Ref :: { (r in lists) } { (r in s) } (r in lists) && !((r in s)) ==> r.val == v)
(declare-const r@34@01 $Ref)
(push) ; 4
; [eval] (r in lists) && !((r in s)) ==> r.val == v
; [eval] (r in lists) && !((r in s))
; [eval] (r in lists)
(push) ; 5
; [then-branch: 3 | !(r@34@01 in lists@3@01) | live]
; [else-branch: 3 | r@34@01 in lists@3@01 | live]
(push) ; 6
; [then-branch: 3 | !(r@34@01 in lists@3@01)]
(assert (not (Set_in r@34@01 lists@3@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 3 | r@34@01 in lists@3@01]
(assert (Set_in r@34@01 lists@3@01))
; [eval] !((r in s))
; [eval] (r in s)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (Set_in r@34@01 lists@3@01) (not (Set_in r@34@01 lists@3@01))))
(push) ; 5
; [then-branch: 4 | r@34@01 in lists@3@01 && !(r@34@01 in s@19@01) | live]
; [else-branch: 4 | !(r@34@01 in lists@3@01 && !(r@34@01 in s@19@01)) | live]
(push) ; 6
; [then-branch: 4 | r@34@01 in lists@3@01 && !(r@34@01 in s@19@01)]
(assert (and (Set_in r@34@01 lists@3@01) (not (Set_in r@34@01 s@19@01))))
; [eval] r.val == v
(push) ; 7
(assert (not (and
  (img@33@01 r@34@01)
  (and
    (Set_in (inv@32@01 r@34@01) lists@3@01)
    (not (Set_in (inv@32@01 r@34@01) s@19@01))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 4 | !(r@34@01 in lists@3@01 && !(r@34@01 in s@19@01))]
(assert (not (and (Set_in r@34@01 lists@3@01) (not (Set_in r@34@01 s@19@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (Set_in r@34@01 lists@3@01) (not (Set_in r@34@01 s@19@01))))
  (and (Set_in r@34@01 lists@3@01) (not (Set_in r@34@01 s@19@01)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@34@01 $Ref)) (!
  (and
    (or (Set_in r@34@01 lists@3@01) (not (Set_in r@34@01 lists@3@01)))
    (or
      (not (and (Set_in r@34@01 lists@3@01) (not (Set_in r@34@01 s@19@01))))
      (and (Set_in r@34@01 lists@3@01) (not (Set_in r@34@01 s@19@01)))))
  :pattern ((Set_in r@34@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@34@15@34@84-aux|)))
(assert (forall ((r@34@01 $Ref)) (!
  (and
    (or (Set_in r@34@01 lists@3@01) (not (Set_in r@34@01 lists@3@01)))
    (or
      (not (and (Set_in r@34@01 lists@3@01) (not (Set_in r@34@01 s@19@01))))
      (and (Set_in r@34@01 lists@3@01) (not (Set_in r@34@01 s@19@01)))))
  :pattern ((Set_in r@34@01 s@19@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@34@15@34@84-aux|)))
(assert (forall ((r@34@01 $Ref)) (!
  (=>
    (and (Set_in r@34@01 lists@3@01) (not (Set_in r@34@01 s@19@01)))
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@21@01))))) r@34@01)
      v@5@01))
  :pattern ((Set_in r@34@01 lists@3@01))
  :pattern ((Set_in r@34@01 s@19@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@34@15@34@84|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))
  $Snap.unit))
; [eval] (forall r: Ref :: { (r in lists) } { (r in s) } { (r.next in sNext) } (r in lists) && !((r in s)) ==> (r.next in sNext))
(declare-const r@35@01 $Ref)
(push) ; 4
; [eval] (r in lists) && !((r in s)) ==> (r.next in sNext)
; [eval] (r in lists) && !((r in s))
; [eval] (r in lists)
(push) ; 5
; [then-branch: 5 | !(r@35@01 in lists@3@01) | live]
; [else-branch: 5 | r@35@01 in lists@3@01 | live]
(push) ; 6
; [then-branch: 5 | !(r@35@01 in lists@3@01)]
(assert (not (Set_in r@35@01 lists@3@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 5 | r@35@01 in lists@3@01]
(assert (Set_in r@35@01 lists@3@01))
; [eval] !((r in s))
; [eval] (r in s)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (Set_in r@35@01 lists@3@01) (not (Set_in r@35@01 lists@3@01))))
(push) ; 5
; [then-branch: 6 | r@35@01 in lists@3@01 && !(r@35@01 in s@19@01) | live]
; [else-branch: 6 | !(r@35@01 in lists@3@01 && !(r@35@01 in s@19@01)) | live]
(push) ; 6
; [then-branch: 6 | r@35@01 in lists@3@01 && !(r@35@01 in s@19@01)]
(assert (and (Set_in r@35@01 lists@3@01) (not (Set_in r@35@01 s@19@01))))
; [eval] (r.next in sNext)
(push) ; 7
(assert (not (and
  (img@27@01 r@35@01)
  (and
    (Set_in (inv@26@01 r@35@01) lists@3@01)
    (not (Set_in (inv@26@01 r@35@01) s@19@01))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 6 | !(r@35@01 in lists@3@01 && !(r@35@01 in s@19@01))]
(assert (not (and (Set_in r@35@01 lists@3@01) (not (Set_in r@35@01 s@19@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (Set_in r@35@01 lists@3@01) (not (Set_in r@35@01 s@19@01))))
  (and (Set_in r@35@01 lists@3@01) (not (Set_in r@35@01 s@19@01)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@35@01 $Ref)) (!
  (and
    (or (Set_in r@35@01 lists@3@01) (not (Set_in r@35@01 lists@3@01)))
    (or
      (not (and (Set_in r@35@01 lists@3@01) (not (Set_in r@35@01 s@19@01))))
      (and (Set_in r@35@01 lists@3@01) (not (Set_in r@35@01 s@19@01)))))
  :pattern ((Set_in r@35@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@35@15@35@75-aux|)))
(assert (forall ((r@35@01 $Ref)) (!
  (and
    (or (Set_in r@35@01 lists@3@01) (not (Set_in r@35@01 lists@3@01)))
    (or
      (not (and (Set_in r@35@01 lists@3@01) (not (Set_in r@35@01 s@19@01))))
      (and (Set_in r@35@01 lists@3@01) (not (Set_in r@35@01 s@19@01)))))
  :pattern ((Set_in r@35@01 s@19@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@35@15@35@75-aux|)))
(assert (forall ((r@35@01 $Ref)) (!
  (and
    (or (Set_in r@35@01 lists@3@01) (not (Set_in r@35@01 lists@3@01)))
    (or
      (not (and (Set_in r@35@01 lists@3@01) (not (Set_in r@35@01 s@19@01))))
      (and (Set_in r@35@01 lists@3@01) (not (Set_in r@35@01 s@19@01)))))
  :pattern ((Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@35@01) sNext@20@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@35@15@35@75-aux|)))
(assert (forall ((r@35@01 $Ref)) (!
  (=>
    (and (Set_in r@35@01 lists@3@01) (not (Set_in r@35@01 s@19@01)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@35@01) sNext@20@01))
  :pattern ((Set_in r@35@01 lists@3@01))
  :pattern ((Set_in r@35@01 s@19@01))
  :pattern ((Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@35@01) sNext@20@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@35@15@35@75|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))
  $Snap.unit))
; [eval] (forall r1: Ref, r2: Ref :: { (r1 in lists), (r2 in lists) } { (r1 in lists), (r2 in s) } { (r1 in s), (r2 in lists) } { (r1 in s), (r2 in s) } (r1 in lists) && (!((r1 in s)) && ((r2 in lists) && (!((r2 in s)) && r1 != r2))) ==> r1.next != r2.next)
(declare-const r1@36@01 $Ref)
(declare-const r2@37@01 $Ref)
(push) ; 4
; [eval] (r1 in lists) && (!((r1 in s)) && ((r2 in lists) && (!((r2 in s)) && r1 != r2))) ==> r1.next != r2.next
; [eval] (r1 in lists) && (!((r1 in s)) && ((r2 in lists) && (!((r2 in s)) && r1 != r2)))
; [eval] (r1 in lists)
(push) ; 5
; [then-branch: 7 | !(r1@36@01 in lists@3@01) | live]
; [else-branch: 7 | r1@36@01 in lists@3@01 | live]
(push) ; 6
; [then-branch: 7 | !(r1@36@01 in lists@3@01)]
(assert (not (Set_in r1@36@01 lists@3@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 7 | r1@36@01 in lists@3@01]
(assert (Set_in r1@36@01 lists@3@01))
; [eval] !((r1 in s))
; [eval] (r1 in s)
(push) ; 7
; [then-branch: 8 | r1@36@01 in s@19@01 | live]
; [else-branch: 8 | !(r1@36@01 in s@19@01) | live]
(push) ; 8
; [then-branch: 8 | r1@36@01 in s@19@01]
(assert (Set_in r1@36@01 s@19@01))
(pop) ; 8
(push) ; 8
; [else-branch: 8 | !(r1@36@01 in s@19@01)]
(assert (not (Set_in r1@36@01 s@19@01)))
; [eval] (r2 in lists)
(push) ; 9
; [then-branch: 9 | !(r2@37@01 in lists@3@01) | live]
; [else-branch: 9 | r2@37@01 in lists@3@01 | live]
(push) ; 10
; [then-branch: 9 | !(r2@37@01 in lists@3@01)]
(assert (not (Set_in r2@37@01 lists@3@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 9 | r2@37@01 in lists@3@01]
(assert (Set_in r2@37@01 lists@3@01))
; [eval] !((r2 in s))
; [eval] (r2 in s)
(push) ; 11
; [then-branch: 10 | r2@37@01 in s@19@01 | live]
; [else-branch: 10 | !(r2@37@01 in s@19@01) | live]
(push) ; 12
; [then-branch: 10 | r2@37@01 in s@19@01]
(assert (Set_in r2@37@01 s@19@01))
(pop) ; 12
(push) ; 12
; [else-branch: 10 | !(r2@37@01 in s@19@01)]
(assert (not (Set_in r2@37@01 s@19@01)))
; [eval] r1 != r2
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in r2@37@01 s@19@01)) (Set_in r2@37@01 s@19@01)))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in r2@37@01 lists@3@01)
  (and
    (Set_in r2@37@01 lists@3@01)
    (or (not (Set_in r2@37@01 s@19@01)) (Set_in r2@37@01 s@19@01)))))
(assert (or (Set_in r2@37@01 lists@3@01) (not (Set_in r2@37@01 lists@3@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (Set_in r1@36@01 s@19@01))
  (and
    (not (Set_in r1@36@01 s@19@01))
    (=>
      (Set_in r2@37@01 lists@3@01)
      (and
        (Set_in r2@37@01 lists@3@01)
        (or (not (Set_in r2@37@01 s@19@01)) (Set_in r2@37@01 s@19@01))))
    (or (Set_in r2@37@01 lists@3@01) (not (Set_in r2@37@01 lists@3@01))))))
(assert (or (not (Set_in r1@36@01 s@19@01)) (Set_in r1@36@01 s@19@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in r1@36@01 lists@3@01)
  (and
    (Set_in r1@36@01 lists@3@01)
    (=>
      (not (Set_in r1@36@01 s@19@01))
      (and
        (not (Set_in r1@36@01 s@19@01))
        (=>
          (Set_in r2@37@01 lists@3@01)
          (and
            (Set_in r2@37@01 lists@3@01)
            (or (not (Set_in r2@37@01 s@19@01)) (Set_in r2@37@01 s@19@01))))
        (or (Set_in r2@37@01 lists@3@01) (not (Set_in r2@37@01 lists@3@01)))))
    (or (not (Set_in r1@36@01 s@19@01)) (Set_in r1@36@01 s@19@01)))))
(assert (or (Set_in r1@36@01 lists@3@01) (not (Set_in r1@36@01 lists@3@01))))
(push) ; 5
; [then-branch: 11 | r1@36@01 in lists@3@01 && !(r1@36@01 in s@19@01) && r2@37@01 in lists@3@01 && !(r2@37@01 in s@19@01) && r1@36@01 != r2@37@01 | live]
; [else-branch: 11 | !(r1@36@01 in lists@3@01 && !(r1@36@01 in s@19@01) && r2@37@01 in lists@3@01 && !(r2@37@01 in s@19@01) && r1@36@01 != r2@37@01) | live]
(push) ; 6
; [then-branch: 11 | r1@36@01 in lists@3@01 && !(r1@36@01 in s@19@01) && r2@37@01 in lists@3@01 && !(r2@37@01 in s@19@01) && r1@36@01 != r2@37@01]
(assert (and
  (Set_in r1@36@01 lists@3@01)
  (and
    (not (Set_in r1@36@01 s@19@01))
    (and
      (Set_in r2@37@01 lists@3@01)
      (and (not (Set_in r2@37@01 s@19@01)) (not (= r1@36@01 r2@37@01)))))))
; [eval] r1.next != r2.next
(push) ; 7
(assert (not (and
  (img@27@01 r1@36@01)
  (and
    (Set_in (inv@26@01 r1@36@01) lists@3@01)
    (not (Set_in (inv@26@01 r1@36@01) s@19@01))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (and
  (img@27@01 r2@37@01)
  (and
    (Set_in (inv@26@01 r2@37@01) lists@3@01)
    (not (Set_in (inv@26@01 r2@37@01) s@19@01))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 11 | !(r1@36@01 in lists@3@01 && !(r1@36@01 in s@19@01) && r2@37@01 in lists@3@01 && !(r2@37@01 in s@19@01) && r1@36@01 != r2@37@01)]
(assert (not
  (and
    (Set_in r1@36@01 lists@3@01)
    (and
      (not (Set_in r1@36@01 s@19@01))
      (and
        (Set_in r2@37@01 lists@3@01)
        (and (not (Set_in r2@37@01 s@19@01)) (not (= r1@36@01 r2@37@01))))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Set_in r1@36@01 lists@3@01)
    (and
      (not (Set_in r1@36@01 s@19@01))
      (and
        (Set_in r2@37@01 lists@3@01)
        (and (not (Set_in r2@37@01 s@19@01)) (not (= r1@36@01 r2@37@01))))))
  (and
    (Set_in r1@36@01 lists@3@01)
    (not (Set_in r1@36@01 s@19@01))
    (Set_in r2@37@01 lists@3@01)
    (not (Set_in r2@37@01 s@19@01))
    (not (= r1@36@01 r2@37@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in r1@36@01 lists@3@01)
      (and
        (not (Set_in r1@36@01 s@19@01))
        (and
          (Set_in r2@37@01 lists@3@01)
          (and (not (Set_in r2@37@01 s@19@01)) (not (= r1@36@01 r2@37@01)))))))
  (and
    (Set_in r1@36@01 lists@3@01)
    (and
      (not (Set_in r1@36@01 s@19@01))
      (and
        (Set_in r2@37@01 lists@3@01)
        (and (not (Set_in r2@37@01 s@19@01)) (not (= r1@36@01 r2@37@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r1@36@01 $Ref) (r2@37@01 $Ref)) (!
  (and
    (=>
      (Set_in r1@36@01 lists@3@01)
      (and
        (Set_in r1@36@01 lists@3@01)
        (=>
          (not (Set_in r1@36@01 s@19@01))
          (and
            (not (Set_in r1@36@01 s@19@01))
            (=>
              (Set_in r2@37@01 lists@3@01)
              (and
                (Set_in r2@37@01 lists@3@01)
                (or (not (Set_in r2@37@01 s@19@01)) (Set_in r2@37@01 s@19@01))))
            (or (Set_in r2@37@01 lists@3@01) (not (Set_in r2@37@01 lists@3@01)))))
        (or (not (Set_in r1@36@01 s@19@01)) (Set_in r1@36@01 s@19@01))))
    (or (Set_in r1@36@01 lists@3@01) (not (Set_in r1@36@01 lists@3@01)))
    (=>
      (and
        (Set_in r1@36@01 lists@3@01)
        (and
          (not (Set_in r1@36@01 s@19@01))
          (and
            (Set_in r2@37@01 lists@3@01)
            (and (not (Set_in r2@37@01 s@19@01)) (not (= r1@36@01 r2@37@01))))))
      (and
        (Set_in r1@36@01 lists@3@01)
        (not (Set_in r1@36@01 s@19@01))
        (Set_in r2@37@01 lists@3@01)
        (not (Set_in r2@37@01 s@19@01))
        (not (= r1@36@01 r2@37@01))))
    (or
      (not
        (and
          (Set_in r1@36@01 lists@3@01)
          (and
            (not (Set_in r1@36@01 s@19@01))
            (and
              (Set_in r2@37@01 lists@3@01)
              (and (not (Set_in r2@37@01 s@19@01)) (not (= r1@36@01 r2@37@01)))))))
      (and
        (Set_in r1@36@01 lists@3@01)
        (and
          (not (Set_in r1@36@01 s@19@01))
          (and
            (Set_in r2@37@01 lists@3@01)
            (and (not (Set_in r2@37@01 s@19@01)) (not (= r1@36@01 r2@37@01))))))))
  :pattern ((Set_in r1@36@01 lists@3@01) (Set_in r2@37@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@36@15@36@131-aux|)))
(assert (forall ((r1@36@01 $Ref) (r2@37@01 $Ref)) (!
  (and
    (=>
      (Set_in r1@36@01 lists@3@01)
      (and
        (Set_in r1@36@01 lists@3@01)
        (=>
          (not (Set_in r1@36@01 s@19@01))
          (and
            (not (Set_in r1@36@01 s@19@01))
            (=>
              (Set_in r2@37@01 lists@3@01)
              (and
                (Set_in r2@37@01 lists@3@01)
                (or (not (Set_in r2@37@01 s@19@01)) (Set_in r2@37@01 s@19@01))))
            (or (Set_in r2@37@01 lists@3@01) (not (Set_in r2@37@01 lists@3@01)))))
        (or (not (Set_in r1@36@01 s@19@01)) (Set_in r1@36@01 s@19@01))))
    (or (Set_in r1@36@01 lists@3@01) (not (Set_in r1@36@01 lists@3@01)))
    (=>
      (and
        (Set_in r1@36@01 lists@3@01)
        (and
          (not (Set_in r1@36@01 s@19@01))
          (and
            (Set_in r2@37@01 lists@3@01)
            (and (not (Set_in r2@37@01 s@19@01)) (not (= r1@36@01 r2@37@01))))))
      (and
        (Set_in r1@36@01 lists@3@01)
        (not (Set_in r1@36@01 s@19@01))
        (Set_in r2@37@01 lists@3@01)
        (not (Set_in r2@37@01 s@19@01))
        (not (= r1@36@01 r2@37@01))))
    (or
      (not
        (and
          (Set_in r1@36@01 lists@3@01)
          (and
            (not (Set_in r1@36@01 s@19@01))
            (and
              (Set_in r2@37@01 lists@3@01)
              (and (not (Set_in r2@37@01 s@19@01)) (not (= r1@36@01 r2@37@01)))))))
      (and
        (Set_in r1@36@01 lists@3@01)
        (and
          (not (Set_in r1@36@01 s@19@01))
          (and
            (Set_in r2@37@01 lists@3@01)
            (and (not (Set_in r2@37@01 s@19@01)) (not (= r1@36@01 r2@37@01))))))))
  :pattern ((Set_in r1@36@01 lists@3@01) (Set_in r2@37@01 s@19@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@36@15@36@131-aux|)))
(assert (forall ((r1@36@01 $Ref) (r2@37@01 $Ref)) (!
  (and
    (=>
      (Set_in r1@36@01 lists@3@01)
      (and
        (Set_in r1@36@01 lists@3@01)
        (=>
          (not (Set_in r1@36@01 s@19@01))
          (and
            (not (Set_in r1@36@01 s@19@01))
            (=>
              (Set_in r2@37@01 lists@3@01)
              (and
                (Set_in r2@37@01 lists@3@01)
                (or (not (Set_in r2@37@01 s@19@01)) (Set_in r2@37@01 s@19@01))))
            (or (Set_in r2@37@01 lists@3@01) (not (Set_in r2@37@01 lists@3@01)))))
        (or (not (Set_in r1@36@01 s@19@01)) (Set_in r1@36@01 s@19@01))))
    (or (Set_in r1@36@01 lists@3@01) (not (Set_in r1@36@01 lists@3@01)))
    (=>
      (and
        (Set_in r1@36@01 lists@3@01)
        (and
          (not (Set_in r1@36@01 s@19@01))
          (and
            (Set_in r2@37@01 lists@3@01)
            (and (not (Set_in r2@37@01 s@19@01)) (not (= r1@36@01 r2@37@01))))))
      (and
        (Set_in r1@36@01 lists@3@01)
        (not (Set_in r1@36@01 s@19@01))
        (Set_in r2@37@01 lists@3@01)
        (not (Set_in r2@37@01 s@19@01))
        (not (= r1@36@01 r2@37@01))))
    (or
      (not
        (and
          (Set_in r1@36@01 lists@3@01)
          (and
            (not (Set_in r1@36@01 s@19@01))
            (and
              (Set_in r2@37@01 lists@3@01)
              (and (not (Set_in r2@37@01 s@19@01)) (not (= r1@36@01 r2@37@01)))))))
      (and
        (Set_in r1@36@01 lists@3@01)
        (and
          (not (Set_in r1@36@01 s@19@01))
          (and
            (Set_in r2@37@01 lists@3@01)
            (and (not (Set_in r2@37@01 s@19@01)) (not (= r1@36@01 r2@37@01))))))))
  :pattern ((Set_in r1@36@01 s@19@01) (Set_in r2@37@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@36@15@36@131-aux|)))
(assert (forall ((r1@36@01 $Ref) (r2@37@01 $Ref)) (!
  (and
    (=>
      (Set_in r1@36@01 lists@3@01)
      (and
        (Set_in r1@36@01 lists@3@01)
        (=>
          (not (Set_in r1@36@01 s@19@01))
          (and
            (not (Set_in r1@36@01 s@19@01))
            (=>
              (Set_in r2@37@01 lists@3@01)
              (and
                (Set_in r2@37@01 lists@3@01)
                (or (not (Set_in r2@37@01 s@19@01)) (Set_in r2@37@01 s@19@01))))
            (or (Set_in r2@37@01 lists@3@01) (not (Set_in r2@37@01 lists@3@01)))))
        (or (not (Set_in r1@36@01 s@19@01)) (Set_in r1@36@01 s@19@01))))
    (or (Set_in r1@36@01 lists@3@01) (not (Set_in r1@36@01 lists@3@01)))
    (=>
      (and
        (Set_in r1@36@01 lists@3@01)
        (and
          (not (Set_in r1@36@01 s@19@01))
          (and
            (Set_in r2@37@01 lists@3@01)
            (and (not (Set_in r2@37@01 s@19@01)) (not (= r1@36@01 r2@37@01))))))
      (and
        (Set_in r1@36@01 lists@3@01)
        (not (Set_in r1@36@01 s@19@01))
        (Set_in r2@37@01 lists@3@01)
        (not (Set_in r2@37@01 s@19@01))
        (not (= r1@36@01 r2@37@01))))
    (or
      (not
        (and
          (Set_in r1@36@01 lists@3@01)
          (and
            (not (Set_in r1@36@01 s@19@01))
            (and
              (Set_in r2@37@01 lists@3@01)
              (and (not (Set_in r2@37@01 s@19@01)) (not (= r1@36@01 r2@37@01)))))))
      (and
        (Set_in r1@36@01 lists@3@01)
        (and
          (not (Set_in r1@36@01 s@19@01))
          (and
            (Set_in r2@37@01 lists@3@01)
            (and (not (Set_in r2@37@01 s@19@01)) (not (= r1@36@01 r2@37@01))))))))
  :pattern ((Set_in r1@36@01 s@19@01) (Set_in r2@37@01 s@19@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@36@15@36@131-aux|)))
(assert (forall ((r1@36@01 $Ref) (r2@37@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@36@01 lists@3@01)
      (and
        (not (Set_in r1@36@01 s@19@01))
        (and
          (Set_in r2@37@01 lists@3@01)
          (and (not (Set_in r2@37@01 s@19@01)) (not (= r1@36@01 r2@37@01))))))
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r1@36@01)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r2@37@01))))
  :pattern ((Set_in r1@36@01 lists@3@01) (Set_in r2@37@01 lists@3@01))
  :pattern ((Set_in r1@36@01 lists@3@01) (Set_in r2@37@01 s@19@01))
  :pattern ((Set_in r1@36@01 s@19@01) (Set_in r2@37@01 lists@3@01))
  :pattern ((Set_in r1@36@01 s@19@01) (Set_in r2@37@01 s@19@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@36@15@36@131|)))
(pop) ; 3
(push) ; 3
; Loop head block: Establish invariant
(declare-const r@38@01 $Ref)
(push) ; 4
; [eval] (r in s)
(assert (Set_in r@38@01 lists@3@01))
(pop) ; 4
(declare-fun inv@39@01 ($Ref Int) $Ref)
(declare-fun img@40@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((r1@38@01 $Ref) (r2@38@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@38@01 lists@3@01)
      (Set_in r2@38@01 lists@3@01)
      (= r1@38@01 r2@38@01))
    (= r1@38@01 r2@38@01))
  
  :qid |list-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@38@01 $Ref)) (!
  (=>
    (Set_in r@38@01 lists@3@01)
    (and
      (= (inv@39@01 r@38@01 length@4@01) r@38@01)
      (img@40@01 r@38@01 length@4@01)))
  :pattern ((Set_in r@38@01 lists@3@01))
  :pattern ((inv@39@01 r@38@01 length@4@01))
  :pattern ((img@40@01 r@38@01 length@4@01))
  :qid |list-invOfFct|)))
(assert (forall ((r $Ref) (i Int)) (!
  (=>
    (and (img@40@01 r i) (Set_in (inv@39@01 r i) lists@3@01))
    (and (= (inv@39@01 r i) r) (= length@4@01 i)))
  :pattern ((inv@39@01 r i))
  :qid |list-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@41@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and
      (Set_in (inv@39@01 r i) lists@3@01)
      (img@40@01 r i)
      (and (= r (inv@39@01 r i)) (= i length@4@01)))
    ($Perm.min
      (ite
        (and (img@9@01 r i) (Set_in (inv@8@01 r i) lists@3@01))
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
(assert (not (forall ((r $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and (img@9@01 r i) (Set_in (inv@8@01 r i) lists@3@01))
        $Perm.Write
        $Perm.No)
      (pTaken@41@01 r i))
    $Perm.No)
  
  :qid |quant-u-16926|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and
      (Set_in (inv@39@01 r i) lists@3@01)
      (img@40@01 r i)
      (and (= r (inv@39@01 r i)) (= i length@4@01)))
    (= (- $Perm.Write (pTaken@41@01 r i)) $Perm.No))
  
  :qid |quant-u-16927|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const r@42@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] (r in lists) && !((r in s))
; [eval] (r in lists)
(push) ; 5
; [then-branch: 12 | !(r@42@01 in lists@3@01) | live]
; [else-branch: 12 | r@42@01 in lists@3@01 | live]
(push) ; 6
; [then-branch: 12 | !(r@42@01 in lists@3@01)]
(assert (not (Set_in r@42@01 lists@3@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 12 | r@42@01 in lists@3@01]
(assert (Set_in r@42@01 lists@3@01))
; [eval] !((r in s))
; [eval] (r in s)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (Set_in r@42@01 lists@3@01) (not (Set_in r@42@01 lists@3@01))))
(assert (and (Set_in r@42@01 lists@3@01) (not (Set_in r@42@01 lists@3@01))))
(pop) ; 4
(declare-fun inv@43@01 ($Ref) $Ref)
(declare-fun img@44@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((r@42@01 $Ref)) (!
  (=>
    (and (Set_in r@42@01 lists@3@01) (not (Set_in r@42@01 lists@3@01)))
    (or (Set_in r@42@01 lists@3@01) (not (Set_in r@42@01 lists@3@01))))
  :pattern ((Set_in r@42@01 lists@3@01))
  :pattern ((inv@43@01 r@42@01))
  :pattern ((img@44@01 r@42@01))
  :qid |next-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((r1@42@01 $Ref) (r2@42@01 $Ref)) (!
  (=>
    (and
      (and (Set_in r1@42@01 lists@3@01) (not (Set_in r1@42@01 lists@3@01)))
      (and (Set_in r2@42@01 lists@3@01) (not (Set_in r2@42@01 lists@3@01)))
      (= r1@42@01 r2@42@01))
    (= r1@42@01 r2@42@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@42@01 $Ref)) (!
  (=>
    (and (Set_in r@42@01 lists@3@01) (not (Set_in r@42@01 lists@3@01)))
    (and (= (inv@43@01 r@42@01) r@42@01) (img@44@01 r@42@01)))
  :pattern ((Set_in r@42@01 lists@3@01))
  :pattern ((inv@43@01 r@42@01))
  :pattern ((img@44@01 r@42@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@44@01 r)
      (and
        (Set_in (inv@43@01 r) lists@3@01)
        (not (Set_in (inv@43@01 r) lists@3@01))))
    (= (inv@43@01 r) r))
  :pattern ((inv@43@01 r))
  :qid |next-fctOfInv|)))
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@43@01 r) lists@3@01)
        (not (Set_in (inv@43@01 r) lists@3@01)))
      (img@44@01 r)
      (= r (inv@43@01 r)))
    false)
  
  :qid |quant-u-16929|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const r@45@01 $Ref)
(push) ; 4
; [eval] (r in sNext)
(assert (Set_in r@45@01 (as Set_empty  Set<$Ref>)))
; [eval] length - 1
(pop) ; 4
(declare-fun inv@46@01 ($Ref Int) $Ref)
(declare-fun img@47@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((r1@45@01 $Ref) (r2@45@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@45@01 (as Set_empty  Set<$Ref>))
      (Set_in r2@45@01 (as Set_empty  Set<$Ref>))
      (= r1@45@01 r2@45@01))
    (= r1@45@01 r2@45@01))
  
  :qid |list-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@45@01 $Ref)) (!
  (=>
    (Set_in r@45@01 (as Set_empty  Set<$Ref>))
    (and
      (= (inv@46@01 r@45@01 (- length@4@01 1)) r@45@01)
      (img@47@01 r@45@01 (- length@4@01 1))))
  :pattern ((Set_in r@45@01 (as Set_empty  Set<$Ref>)))
  :pattern ((inv@46@01 r@45@01 (- length@4@01 1)))
  :pattern ((img@47@01 r@45@01 (- length@4@01 1)))
  :qid |list-invOfFct|)))
(assert (forall ((r $Ref) (i Int)) (!
  (=>
    (and (img@47@01 r i) (Set_in (inv@46@01 r i) (as Set_empty  Set<$Ref>)))
    (and (= (inv@46@01 r i) r) (= (- length@4@01 1) i)))
  :pattern ((inv@46@01 r i))
  :qid |list-fctOfInv|)))
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and
      (Set_in (inv@46@01 r i) (as Set_empty  Set<$Ref>))
      (img@47@01 r i)
      (and (= r (inv@46@01 r i)) (= i (- length@4@01 1))))
    false)
  
  :qid |quant-u-16931|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const r@48@01 $Ref)
(push) ; 4
; [eval] (r in lists) && !((r in s))
; [eval] (r in lists)
(push) ; 5
; [then-branch: 13 | !(r@48@01 in lists@3@01) | live]
; [else-branch: 13 | r@48@01 in lists@3@01 | live]
(push) ; 6
; [then-branch: 13 | !(r@48@01 in lists@3@01)]
(assert (not (Set_in r@48@01 lists@3@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 13 | r@48@01 in lists@3@01]
(assert (Set_in r@48@01 lists@3@01))
; [eval] !((r in s))
; [eval] (r in s)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (Set_in r@48@01 lists@3@01) (not (Set_in r@48@01 lists@3@01))))
(assert (and (Set_in r@48@01 lists@3@01) (not (Set_in r@48@01 lists@3@01))))
(pop) ; 4
(declare-fun inv@49@01 ($Ref) $Ref)
(declare-fun img@50@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((r@48@01 $Ref)) (!
  (=>
    (and (Set_in r@48@01 lists@3@01) (not (Set_in r@48@01 lists@3@01)))
    (or (Set_in r@48@01 lists@3@01) (not (Set_in r@48@01 lists@3@01))))
  :pattern ((Set_in r@48@01 lists@3@01))
  :pattern ((inv@49@01 r@48@01))
  :pattern ((img@50@01 r@48@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((r1@48@01 $Ref) (r2@48@01 $Ref)) (!
  (=>
    (and
      (and (Set_in r1@48@01 lists@3@01) (not (Set_in r1@48@01 lists@3@01)))
      (and (Set_in r2@48@01 lists@3@01) (not (Set_in r2@48@01 lists@3@01)))
      (= r1@48@01 r2@48@01))
    (= r1@48@01 r2@48@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@48@01 $Ref)) (!
  (=>
    (and (Set_in r@48@01 lists@3@01) (not (Set_in r@48@01 lists@3@01)))
    (and (= (inv@49@01 r@48@01) r@48@01) (img@50@01 r@48@01)))
  :pattern ((Set_in r@48@01 lists@3@01))
  :pattern ((inv@49@01 r@48@01))
  :pattern ((img@50@01 r@48@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@50@01 r)
      (and
        (Set_in (inv@49@01 r) lists@3@01)
        (not (Set_in (inv@49@01 r) lists@3@01))))
    (= (inv@49@01 r) r))
  :pattern ((inv@49@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Set_in (inv@49@01 r) lists@3@01)
        (not (Set_in (inv@49@01 r) lists@3@01)))
      (img@50@01 r)
      (= r (inv@49@01 r)))
    false)
  
  :qid |quant-u-16933|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
; [eval] (forall r: Ref :: { (r in lists) } { (r in s) } (r in lists) && !((r in s)) ==> r.val == v)
(declare-const r@51@01 $Ref)
(push) ; 4
; [eval] (r in lists) && !((r in s)) ==> r.val == v
; [eval] (r in lists) && !((r in s))
; [eval] (r in lists)
(push) ; 5
; [then-branch: 14 | !(r@51@01 in lists@3@01) | live]
; [else-branch: 14 | r@51@01 in lists@3@01 | live]
(push) ; 6
; [then-branch: 14 | !(r@51@01 in lists@3@01)]
(assert (not (Set_in r@51@01 lists@3@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 14 | r@51@01 in lists@3@01]
(assert (Set_in r@51@01 lists@3@01))
; [eval] !((r in s))
; [eval] (r in s)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (Set_in r@51@01 lists@3@01) (not (Set_in r@51@01 lists@3@01))))
(push) ; 5
; [then-branch: 15 | r@51@01 in lists@3@01 && !(r@51@01 in lists@3@01) | live]
; [else-branch: 15 | !(r@51@01 in lists@3@01 && !(r@51@01 in lists@3@01)) | live]
(push) ; 6
; [then-branch: 15 | r@51@01 in lists@3@01 && !(r@51@01 in lists@3@01)]
(assert (and (Set_in r@51@01 lists@3@01) (not (Set_in r@51@01 lists@3@01))))
; [eval] r.val == v
(declare-const sm@52@01 $FVF<val>)
; Definitional axioms for snapshot map values
(declare-const pm@53@01 $FPM)
(assert (forall ((r $Ref)) (!
  (= ($FVF.perm_val (as pm@53@01  $FPM) r) $Perm.No)
  :pattern (($FVF.perm_val (as pm@53@01  $FPM) r))
  :qid |qp.resPrmSumDef1|)))
(push) ; 7
(assert (not (< $Perm.No ($FVF.perm_val (as pm@53@01  $FPM) r@51@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 15 | !(r@51@01 in lists@3@01 && !(r@51@01 in lists@3@01))]
(assert (not (and (Set_in r@51@01 lists@3@01) (not (Set_in r@51@01 lists@3@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (= ($FVF.perm_val (as pm@53@01  $FPM) r) $Perm.No)
  :pattern (($FVF.perm_val (as pm@53@01  $FPM) r))
  :qid |qp.resPrmSumDef1|)))
; Joined path conditions
(assert (or
  (not (and (Set_in r@51@01 lists@3@01) (not (Set_in r@51@01 lists@3@01))))
  (and (Set_in r@51@01 lists@3@01) (not (Set_in r@51@01 lists@3@01)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (= ($FVF.perm_val (as pm@53@01  $FPM) r) $Perm.No)
  :pattern (($FVF.perm_val (as pm@53@01  $FPM) r))
  :qid |qp.resPrmSumDef1|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@51@01 $Ref)) (!
  (and
    (or (Set_in r@51@01 lists@3@01) (not (Set_in r@51@01 lists@3@01)))
    (or
      (not (and (Set_in r@51@01 lists@3@01) (not (Set_in r@51@01 lists@3@01))))
      (and (Set_in r@51@01 lists@3@01) (not (Set_in r@51@01 lists@3@01)))))
  :pattern ((Set_in r@51@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@34@15@34@84-aux|)))
(push) ; 4
(assert (not (forall ((r@51@01 $Ref)) (!
  (=>
    (and (Set_in r@51@01 lists@3@01) (not (Set_in r@51@01 lists@3@01)))
    (= ($FVF.lookup_val (as sm@52@01  $FVF<val>) r@51@01) v@5@01))
  :pattern ((Set_in r@51@01 lists@3@01))
  :pattern ((Set_in r@51@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@34@15@34@84|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((r@51@01 $Ref)) (!
  (=>
    (and (Set_in r@51@01 lists@3@01) (not (Set_in r@51@01 lists@3@01)))
    (= ($FVF.lookup_val (as sm@52@01  $FVF<val>) r@51@01) v@5@01))
  :pattern ((Set_in r@51@01 lists@3@01))
  :pattern ((Set_in r@51@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@34@15@34@84|)))
; [eval] (forall r: Ref :: { (r in lists) } { (r in s) } { (r.next in sNext) } (r in lists) && !((r in s)) ==> (r.next in sNext))
(declare-const r@54@01 $Ref)
(push) ; 4
; [eval] (r in lists) && !((r in s)) ==> (r.next in sNext)
; [eval] (r in lists) && !((r in s))
; [eval] (r in lists)
(push) ; 5
; [then-branch: 16 | !(r@54@01 in lists@3@01) | live]
; [else-branch: 16 | r@54@01 in lists@3@01 | live]
(push) ; 6
; [then-branch: 16 | !(r@54@01 in lists@3@01)]
(assert (not (Set_in r@54@01 lists@3@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 16 | r@54@01 in lists@3@01]
(assert (Set_in r@54@01 lists@3@01))
; [eval] !((r in s))
; [eval] (r in s)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (Set_in r@54@01 lists@3@01) (not (Set_in r@54@01 lists@3@01))))
(push) ; 5
; [then-branch: 17 | r@54@01 in lists@3@01 && !(r@54@01 in lists@3@01) | live]
; [else-branch: 17 | !(r@54@01 in lists@3@01 && !(r@54@01 in lists@3@01)) | live]
(push) ; 6
; [then-branch: 17 | r@54@01 in lists@3@01 && !(r@54@01 in lists@3@01)]
(assert (and (Set_in r@54@01 lists@3@01) (not (Set_in r@54@01 lists@3@01))))
; [eval] (r.next in sNext)
(declare-const sm@55@01 $FVF<next>)
; Definitional axioms for snapshot map values
(declare-const pm@56@01 $FPM)
(assert (forall ((r $Ref)) (!
  (= ($FVF.perm_next (as pm@56@01  $FPM) r) $Perm.No)
  :pattern (($FVF.perm_next (as pm@56@01  $FPM) r))
  :qid |qp.resPrmSumDef2|)))
(push) ; 7
(assert (not (< $Perm.No ($FVF.perm_next (as pm@56@01  $FPM) r@54@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 17 | !(r@54@01 in lists@3@01 && !(r@54@01 in lists@3@01))]
(assert (not (and (Set_in r@54@01 lists@3@01) (not (Set_in r@54@01 lists@3@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (= ($FVF.perm_next (as pm@56@01  $FPM) r) $Perm.No)
  :pattern (($FVF.perm_next (as pm@56@01  $FPM) r))
  :qid |qp.resPrmSumDef2|)))
; Joined path conditions
(assert (or
  (not (and (Set_in r@54@01 lists@3@01) (not (Set_in r@54@01 lists@3@01))))
  (and (Set_in r@54@01 lists@3@01) (not (Set_in r@54@01 lists@3@01)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (= ($FVF.perm_next (as pm@56@01  $FPM) r) $Perm.No)
  :pattern (($FVF.perm_next (as pm@56@01  $FPM) r))
  :qid |qp.resPrmSumDef2|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@54@01 $Ref)) (!
  (and
    (or (Set_in r@54@01 lists@3@01) (not (Set_in r@54@01 lists@3@01)))
    (or
      (not (and (Set_in r@54@01 lists@3@01) (not (Set_in r@54@01 lists@3@01))))
      (and (Set_in r@54@01 lists@3@01) (not (Set_in r@54@01 lists@3@01)))))
  :pattern ((Set_in r@54@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@35@15@35@75-aux|)))
(assert (forall ((r@54@01 $Ref)) (!
  (and
    (or (Set_in r@54@01 lists@3@01) (not (Set_in r@54@01 lists@3@01)))
    (or
      (not (and (Set_in r@54@01 lists@3@01) (not (Set_in r@54@01 lists@3@01))))
      (and (Set_in r@54@01 lists@3@01) (not (Set_in r@54@01 lists@3@01)))))
  :pattern ((Set_in ($FVF.lookup_next (as sm@55@01  $FVF<next>) r@54@01) (as Set_empty  Set<$Ref>)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@35@15@35@75-aux|)))
(push) ; 4
(assert (not (forall ((r@54@01 $Ref)) (!
  (=>
    (and (Set_in r@54@01 lists@3@01) (not (Set_in r@54@01 lists@3@01)))
    (Set_in ($FVF.lookup_next (as sm@55@01  $FVF<next>) r@54@01) (as Set_empty  Set<$Ref>)))
  :pattern ((Set_in r@54@01 lists@3@01))
  :pattern ((Set_in r@54@01 lists@3@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@55@01  $FVF<next>) r@54@01) (as Set_empty  Set<$Ref>)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@35@15@35@75|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((r@54@01 $Ref)) (!
  (=>
    (and (Set_in r@54@01 lists@3@01) (not (Set_in r@54@01 lists@3@01)))
    (Set_in ($FVF.lookup_next (as sm@55@01  $FVF<next>) r@54@01) (as Set_empty  Set<$Ref>)))
  :pattern ((Set_in r@54@01 lists@3@01))
  :pattern ((Set_in r@54@01 lists@3@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@55@01  $FVF<next>) r@54@01) (as Set_empty  Set<$Ref>)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@35@15@35@75|)))
; [eval] (forall r1: Ref, r2: Ref :: { (r1 in lists), (r2 in lists) } { (r1 in lists), (r2 in s) } { (r1 in s), (r2 in lists) } { (r1 in s), (r2 in s) } (r1 in lists) && (!((r1 in s)) && ((r2 in lists) && (!((r2 in s)) && r1 != r2))) ==> r1.next != r2.next)
(declare-const r1@57@01 $Ref)
(declare-const r2@58@01 $Ref)
(push) ; 4
; [eval] (r1 in lists) && (!((r1 in s)) && ((r2 in lists) && (!((r2 in s)) && r1 != r2))) ==> r1.next != r2.next
; [eval] (r1 in lists) && (!((r1 in s)) && ((r2 in lists) && (!((r2 in s)) && r1 != r2)))
; [eval] (r1 in lists)
(push) ; 5
; [then-branch: 18 | !(r1@57@01 in lists@3@01) | live]
; [else-branch: 18 | r1@57@01 in lists@3@01 | live]
(push) ; 6
; [then-branch: 18 | !(r1@57@01 in lists@3@01)]
(assert (not (Set_in r1@57@01 lists@3@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 18 | r1@57@01 in lists@3@01]
(assert (Set_in r1@57@01 lists@3@01))
; [eval] !((r1 in s))
; [eval] (r1 in s)
(push) ; 7
; [then-branch: 19 | r1@57@01 in lists@3@01 | live]
; [else-branch: 19 | !(r1@57@01 in lists@3@01) | live]
(push) ; 8
; [then-branch: 19 | r1@57@01 in lists@3@01]
(pop) ; 8
(push) ; 8
; [else-branch: 19 | !(r1@57@01 in lists@3@01)]
(assert (not (Set_in r1@57@01 lists@3@01)))
; [eval] (r2 in lists)
(push) ; 9
; [then-branch: 20 | !(r2@58@01 in lists@3@01) | live]
; [else-branch: 20 | r2@58@01 in lists@3@01 | live]
(push) ; 10
; [then-branch: 20 | !(r2@58@01 in lists@3@01)]
(assert (not (Set_in r2@58@01 lists@3@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 20 | r2@58@01 in lists@3@01]
(assert (Set_in r2@58@01 lists@3@01))
; [eval] !((r2 in s))
; [eval] (r2 in s)
(push) ; 11
; [then-branch: 21 | r2@58@01 in lists@3@01 | live]
; [else-branch: 21 | !(r2@58@01 in lists@3@01) | live]
(push) ; 12
; [then-branch: 21 | r2@58@01 in lists@3@01]
(pop) ; 12
(push) ; 12
; [else-branch: 21 | !(r2@58@01 in lists@3@01)]
(assert (not (Set_in r2@58@01 lists@3@01)))
; [eval] r1 != r2
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in r2@58@01 lists@3@01)) (Set_in r2@58@01 lists@3@01)))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in r2@58@01 lists@3@01)
  (and
    (Set_in r2@58@01 lists@3@01)
    (or (not (Set_in r2@58@01 lists@3@01)) (Set_in r2@58@01 lists@3@01)))))
(assert (or (Set_in r2@58@01 lists@3@01) (not (Set_in r2@58@01 lists@3@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (Set_in r1@57@01 lists@3@01))
  (and
    (not (Set_in r1@57@01 lists@3@01))
    (=>
      (Set_in r2@58@01 lists@3@01)
      (and
        (Set_in r2@58@01 lists@3@01)
        (or (not (Set_in r2@58@01 lists@3@01)) (Set_in r2@58@01 lists@3@01))))
    (or (Set_in r2@58@01 lists@3@01) (not (Set_in r2@58@01 lists@3@01))))))
(assert (or (not (Set_in r1@57@01 lists@3@01)) (Set_in r1@57@01 lists@3@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in r1@57@01 lists@3@01)
  (and
    (Set_in r1@57@01 lists@3@01)
    (=>
      (not (Set_in r1@57@01 lists@3@01))
      (and
        (not (Set_in r1@57@01 lists@3@01))
        (=>
          (Set_in r2@58@01 lists@3@01)
          (and
            (Set_in r2@58@01 lists@3@01)
            (or (not (Set_in r2@58@01 lists@3@01)) (Set_in r2@58@01 lists@3@01))))
        (or (Set_in r2@58@01 lists@3@01) (not (Set_in r2@58@01 lists@3@01)))))
    (or (not (Set_in r1@57@01 lists@3@01)) (Set_in r1@57@01 lists@3@01)))))
(assert (or (Set_in r1@57@01 lists@3@01) (not (Set_in r1@57@01 lists@3@01))))
(push) ; 5
; [then-branch: 22 | r1@57@01 in lists@3@01 && !(r1@57@01 in lists@3@01) && r2@58@01 in lists@3@01 && !(r2@58@01 in lists@3@01) && r1@57@01 != r2@58@01 | live]
; [else-branch: 22 | !(r1@57@01 in lists@3@01 && !(r1@57@01 in lists@3@01) && r2@58@01 in lists@3@01 && !(r2@58@01 in lists@3@01) && r1@57@01 != r2@58@01) | live]
(push) ; 6
; [then-branch: 22 | r1@57@01 in lists@3@01 && !(r1@57@01 in lists@3@01) && r2@58@01 in lists@3@01 && !(r2@58@01 in lists@3@01) && r1@57@01 != r2@58@01]
(assert (and
  (Set_in r1@57@01 lists@3@01)
  (and
    (not (Set_in r1@57@01 lists@3@01))
    (and
      (Set_in r2@58@01 lists@3@01)
      (and (not (Set_in r2@58@01 lists@3@01)) (not (= r1@57@01 r2@58@01)))))))
; [eval] r1.next != r2.next
(push) ; 7
(assert (not false))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not false))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 22 | !(r1@57@01 in lists@3@01 && !(r1@57@01 in lists@3@01) && r2@58@01 in lists@3@01 && !(r2@58@01 in lists@3@01) && r1@57@01 != r2@58@01)]
(assert (not
  (and
    (Set_in r1@57@01 lists@3@01)
    (and
      (not (Set_in r1@57@01 lists@3@01))
      (and
        (Set_in r2@58@01 lists@3@01)
        (and (not (Set_in r2@58@01 lists@3@01)) (not (= r1@57@01 r2@58@01))))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Set_in r1@57@01 lists@3@01)
    (and
      (not (Set_in r1@57@01 lists@3@01))
      (and
        (Set_in r2@58@01 lists@3@01)
        (and (not (Set_in r2@58@01 lists@3@01)) (not (= r1@57@01 r2@58@01))))))
  (and
    (Set_in r1@57@01 lists@3@01)
    (not (Set_in r1@57@01 lists@3@01))
    (Set_in r2@58@01 lists@3@01)
    (not (Set_in r2@58@01 lists@3@01))
    (not (= r1@57@01 r2@58@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in r1@57@01 lists@3@01)
      (and
        (not (Set_in r1@57@01 lists@3@01))
        (and
          (Set_in r2@58@01 lists@3@01)
          (and (not (Set_in r2@58@01 lists@3@01)) (not (= r1@57@01 r2@58@01)))))))
  (and
    (Set_in r1@57@01 lists@3@01)
    (and
      (not (Set_in r1@57@01 lists@3@01))
      (and
        (Set_in r2@58@01 lists@3@01)
        (and (not (Set_in r2@58@01 lists@3@01)) (not (= r1@57@01 r2@58@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r1@57@01 $Ref) (r2@58@01 $Ref)) (!
  (and
    (=>
      (Set_in r1@57@01 lists@3@01)
      (and
        (Set_in r1@57@01 lists@3@01)
        (=>
          (not (Set_in r1@57@01 lists@3@01))
          (and
            (not (Set_in r1@57@01 lists@3@01))
            (=>
              (Set_in r2@58@01 lists@3@01)
              (and
                (Set_in r2@58@01 lists@3@01)
                (or
                  (not (Set_in r2@58@01 lists@3@01))
                  (Set_in r2@58@01 lists@3@01))))
            (or (Set_in r2@58@01 lists@3@01) (not (Set_in r2@58@01 lists@3@01)))))
        (or (not (Set_in r1@57@01 lists@3@01)) (Set_in r1@57@01 lists@3@01))))
    (or (Set_in r1@57@01 lists@3@01) (not (Set_in r1@57@01 lists@3@01)))
    (=>
      (and
        (Set_in r1@57@01 lists@3@01)
        (and
          (not (Set_in r1@57@01 lists@3@01))
          (and
            (Set_in r2@58@01 lists@3@01)
            (and (not (Set_in r2@58@01 lists@3@01)) (not (= r1@57@01 r2@58@01))))))
      (and
        (Set_in r1@57@01 lists@3@01)
        (not (Set_in r1@57@01 lists@3@01))
        (Set_in r2@58@01 lists@3@01)
        (not (Set_in r2@58@01 lists@3@01))
        (not (= r1@57@01 r2@58@01))))
    (or
      (not
        (and
          (Set_in r1@57@01 lists@3@01)
          (and
            (not (Set_in r1@57@01 lists@3@01))
            (and
              (Set_in r2@58@01 lists@3@01)
              (and
                (not (Set_in r2@58@01 lists@3@01))
                (not (= r1@57@01 r2@58@01)))))))
      (and
        (Set_in r1@57@01 lists@3@01)
        (and
          (not (Set_in r1@57@01 lists@3@01))
          (and
            (Set_in r2@58@01 lists@3@01)
            (and (not (Set_in r2@58@01 lists@3@01)) (not (= r1@57@01 r2@58@01))))))))
  :pattern ((Set_in r1@57@01 lists@3@01) (Set_in r2@58@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@36@15@36@131-aux|)))
(push) ; 4
(assert (not (forall ((r1@57@01 $Ref) (r2@58@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@57@01 lists@3@01)
      (and
        (not (Set_in r1@57@01 lists@3@01))
        (and
          (Set_in r2@58@01 lists@3@01)
          (and (not (Set_in r2@58@01 lists@3@01)) (not (= r1@57@01 r2@58@01))))))
    (not
      (=
        ($FVF.lookup_next (as sm@55@01  $FVF<next>) r1@57@01)
        ($FVF.lookup_next (as sm@55@01  $FVF<next>) r2@58@01))))
  :pattern ((Set_in r1@57@01 lists@3@01) (Set_in r2@58@01 lists@3@01))
  :pattern ((Set_in r1@57@01 lists@3@01) (Set_in r2@58@01 lists@3@01))
  :pattern ((Set_in r1@57@01 lists@3@01) (Set_in r2@58@01 lists@3@01))
  :pattern ((Set_in r1@57@01 lists@3@01) (Set_in r2@58@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@36@15@36@131|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((r1@57@01 $Ref) (r2@58@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@57@01 lists@3@01)
      (and
        (not (Set_in r1@57@01 lists@3@01))
        (and
          (Set_in r2@58@01 lists@3@01)
          (and (not (Set_in r2@58@01 lists@3@01)) (not (= r1@57@01 r2@58@01))))))
    (not
      (=
        ($FVF.lookup_next (as sm@55@01  $FVF<next>) r1@57@01)
        ($FVF.lookup_next (as sm@55@01  $FVF<next>) r2@58@01))))
  :pattern ((Set_in r1@57@01 lists@3@01) (Set_in r2@58@01 lists@3@01))
  :pattern ((Set_in r1@57@01 lists@3@01) (Set_in r2@58@01 lists@3@01))
  :pattern ((Set_in r1@57@01 lists@3@01) (Set_in r2@58@01 lists@3@01))
  :pattern ((Set_in r1@57@01 lists@3@01) (Set_in r2@58@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@36@15@36@131|)))
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 4
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@33@01 r)
      (and
        (Set_in (inv@32@01 r) lists@3@01)
        (not (Set_in (inv@32@01 r) s@19@01))))
    (= (inv@32@01 r) r))
  :pattern ((inv@32@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r@31@01 $Ref)) (!
  (=>
    (and (Set_in r@31@01 lists@3@01) (not (Set_in r@31@01 s@19@01)))
    (and (= (inv@32@01 r@31@01) r@31@01) (img@33@01 r@31@01)))
  :pattern ((Set_in r@31@01 lists@3@01))
  :pattern ((Set_in r@31@01 s@19@01))
  :pattern ((inv@32@01 r@31@01))
  :pattern ((img@33@01 r@31@01))
  :qid |quant-u-16923|)))
(assert (forall ((r@31@01 $Ref)) (!
  (=>
    (and (Set_in r@31@01 lists@3@01) (not (Set_in r@31@01 s@19@01)))
    (not (= r@31@01 $Ref.null)))
  :pattern ((Set_in r@31@01 lists@3@01))
  :pattern ((Set_in r@31@01 s@19@01))
  :pattern ((inv@32@01 r@31@01))
  :pattern ((img@33@01 r@31@01))
  :qid |val-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))
  $Snap.unit))
(assert (forall ((r@34@01 $Ref)) (!
  (and
    (or (Set_in r@34@01 lists@3@01) (not (Set_in r@34@01 lists@3@01)))
    (or
      (not (and (Set_in r@34@01 lists@3@01) (not (Set_in r@34@01 s@19@01))))
      (and (Set_in r@34@01 lists@3@01) (not (Set_in r@34@01 s@19@01)))))
  :pattern ((Set_in r@34@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@34@15@34@84-aux|)))
(assert (forall ((r@34@01 $Ref)) (!
  (and
    (or (Set_in r@34@01 lists@3@01) (not (Set_in r@34@01 lists@3@01)))
    (or
      (not (and (Set_in r@34@01 lists@3@01) (not (Set_in r@34@01 s@19@01))))
      (and (Set_in r@34@01 lists@3@01) (not (Set_in r@34@01 s@19@01)))))
  :pattern ((Set_in r@34@01 s@19@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@34@15@34@84-aux|)))
(assert (forall ((r@34@01 $Ref)) (!
  (=>
    (and (Set_in r@34@01 lists@3@01) (not (Set_in r@34@01 s@19@01)))
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@21@01))))) r@34@01)
      v@5@01))
  :pattern ((Set_in r@34@01 lists@3@01))
  :pattern ((Set_in r@34@01 s@19@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@34@15@34@84|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))
  $Snap.unit))
(assert (forall ((r@35@01 $Ref)) (!
  (and
    (or (Set_in r@35@01 lists@3@01) (not (Set_in r@35@01 lists@3@01)))
    (or
      (not (and (Set_in r@35@01 lists@3@01) (not (Set_in r@35@01 s@19@01))))
      (and (Set_in r@35@01 lists@3@01) (not (Set_in r@35@01 s@19@01)))))
  :pattern ((Set_in r@35@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@35@15@35@75-aux|)))
(assert (forall ((r@35@01 $Ref)) (!
  (and
    (or (Set_in r@35@01 lists@3@01) (not (Set_in r@35@01 lists@3@01)))
    (or
      (not (and (Set_in r@35@01 lists@3@01) (not (Set_in r@35@01 s@19@01))))
      (and (Set_in r@35@01 lists@3@01) (not (Set_in r@35@01 s@19@01)))))
  :pattern ((Set_in r@35@01 s@19@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@35@15@35@75-aux|)))
(assert (forall ((r@35@01 $Ref)) (!
  (and
    (or (Set_in r@35@01 lists@3@01) (not (Set_in r@35@01 lists@3@01)))
    (or
      (not (and (Set_in r@35@01 lists@3@01) (not (Set_in r@35@01 s@19@01))))
      (and (Set_in r@35@01 lists@3@01) (not (Set_in r@35@01 s@19@01)))))
  :pattern ((Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@35@01) sNext@20@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@35@15@35@75-aux|)))
(assert (forall ((r@35@01 $Ref)) (!
  (=>
    (and (Set_in r@35@01 lists@3@01) (not (Set_in r@35@01 s@19@01)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@35@01) sNext@20@01))
  :pattern ((Set_in r@35@01 lists@3@01))
  :pattern ((Set_in r@35@01 s@19@01))
  :pattern ((Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@35@01) sNext@20@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@35@15@35@75|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))
  $Snap.unit))
(assert (forall ((r1@36@01 $Ref) (r2@37@01 $Ref)) (!
  (and
    (=>
      (Set_in r1@36@01 lists@3@01)
      (and
        (Set_in r1@36@01 lists@3@01)
        (=>
          (not (Set_in r1@36@01 s@19@01))
          (and
            (not (Set_in r1@36@01 s@19@01))
            (=>
              (Set_in r2@37@01 lists@3@01)
              (and
                (Set_in r2@37@01 lists@3@01)
                (or (not (Set_in r2@37@01 s@19@01)) (Set_in r2@37@01 s@19@01))))
            (or (Set_in r2@37@01 lists@3@01) (not (Set_in r2@37@01 lists@3@01)))))
        (or (not (Set_in r1@36@01 s@19@01)) (Set_in r1@36@01 s@19@01))))
    (or (Set_in r1@36@01 lists@3@01) (not (Set_in r1@36@01 lists@3@01)))
    (=>
      (and
        (Set_in r1@36@01 lists@3@01)
        (and
          (not (Set_in r1@36@01 s@19@01))
          (and
            (Set_in r2@37@01 lists@3@01)
            (and (not (Set_in r2@37@01 s@19@01)) (not (= r1@36@01 r2@37@01))))))
      (and
        (Set_in r1@36@01 lists@3@01)
        (not (Set_in r1@36@01 s@19@01))
        (Set_in r2@37@01 lists@3@01)
        (not (Set_in r2@37@01 s@19@01))
        (not (= r1@36@01 r2@37@01))))
    (or
      (not
        (and
          (Set_in r1@36@01 lists@3@01)
          (and
            (not (Set_in r1@36@01 s@19@01))
            (and
              (Set_in r2@37@01 lists@3@01)
              (and (not (Set_in r2@37@01 s@19@01)) (not (= r1@36@01 r2@37@01)))))))
      (and
        (Set_in r1@36@01 lists@3@01)
        (and
          (not (Set_in r1@36@01 s@19@01))
          (and
            (Set_in r2@37@01 lists@3@01)
            (and (not (Set_in r2@37@01 s@19@01)) (not (= r1@36@01 r2@37@01))))))))
  :pattern ((Set_in r1@36@01 lists@3@01) (Set_in r2@37@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@36@15@36@131-aux|)))
(assert (forall ((r1@36@01 $Ref) (r2@37@01 $Ref)) (!
  (and
    (=>
      (Set_in r1@36@01 lists@3@01)
      (and
        (Set_in r1@36@01 lists@3@01)
        (=>
          (not (Set_in r1@36@01 s@19@01))
          (and
            (not (Set_in r1@36@01 s@19@01))
            (=>
              (Set_in r2@37@01 lists@3@01)
              (and
                (Set_in r2@37@01 lists@3@01)
                (or (not (Set_in r2@37@01 s@19@01)) (Set_in r2@37@01 s@19@01))))
            (or (Set_in r2@37@01 lists@3@01) (not (Set_in r2@37@01 lists@3@01)))))
        (or (not (Set_in r1@36@01 s@19@01)) (Set_in r1@36@01 s@19@01))))
    (or (Set_in r1@36@01 lists@3@01) (not (Set_in r1@36@01 lists@3@01)))
    (=>
      (and
        (Set_in r1@36@01 lists@3@01)
        (and
          (not (Set_in r1@36@01 s@19@01))
          (and
            (Set_in r2@37@01 lists@3@01)
            (and (not (Set_in r2@37@01 s@19@01)) (not (= r1@36@01 r2@37@01))))))
      (and
        (Set_in r1@36@01 lists@3@01)
        (not (Set_in r1@36@01 s@19@01))
        (Set_in r2@37@01 lists@3@01)
        (not (Set_in r2@37@01 s@19@01))
        (not (= r1@36@01 r2@37@01))))
    (or
      (not
        (and
          (Set_in r1@36@01 lists@3@01)
          (and
            (not (Set_in r1@36@01 s@19@01))
            (and
              (Set_in r2@37@01 lists@3@01)
              (and (not (Set_in r2@37@01 s@19@01)) (not (= r1@36@01 r2@37@01)))))))
      (and
        (Set_in r1@36@01 lists@3@01)
        (and
          (not (Set_in r1@36@01 s@19@01))
          (and
            (Set_in r2@37@01 lists@3@01)
            (and (not (Set_in r2@37@01 s@19@01)) (not (= r1@36@01 r2@37@01))))))))
  :pattern ((Set_in r1@36@01 lists@3@01) (Set_in r2@37@01 s@19@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@36@15@36@131-aux|)))
(assert (forall ((r1@36@01 $Ref) (r2@37@01 $Ref)) (!
  (and
    (=>
      (Set_in r1@36@01 lists@3@01)
      (and
        (Set_in r1@36@01 lists@3@01)
        (=>
          (not (Set_in r1@36@01 s@19@01))
          (and
            (not (Set_in r1@36@01 s@19@01))
            (=>
              (Set_in r2@37@01 lists@3@01)
              (and
                (Set_in r2@37@01 lists@3@01)
                (or (not (Set_in r2@37@01 s@19@01)) (Set_in r2@37@01 s@19@01))))
            (or (Set_in r2@37@01 lists@3@01) (not (Set_in r2@37@01 lists@3@01)))))
        (or (not (Set_in r1@36@01 s@19@01)) (Set_in r1@36@01 s@19@01))))
    (or (Set_in r1@36@01 lists@3@01) (not (Set_in r1@36@01 lists@3@01)))
    (=>
      (and
        (Set_in r1@36@01 lists@3@01)
        (and
          (not (Set_in r1@36@01 s@19@01))
          (and
            (Set_in r2@37@01 lists@3@01)
            (and (not (Set_in r2@37@01 s@19@01)) (not (= r1@36@01 r2@37@01))))))
      (and
        (Set_in r1@36@01 lists@3@01)
        (not (Set_in r1@36@01 s@19@01))
        (Set_in r2@37@01 lists@3@01)
        (not (Set_in r2@37@01 s@19@01))
        (not (= r1@36@01 r2@37@01))))
    (or
      (not
        (and
          (Set_in r1@36@01 lists@3@01)
          (and
            (not (Set_in r1@36@01 s@19@01))
            (and
              (Set_in r2@37@01 lists@3@01)
              (and (not (Set_in r2@37@01 s@19@01)) (not (= r1@36@01 r2@37@01)))))))
      (and
        (Set_in r1@36@01 lists@3@01)
        (and
          (not (Set_in r1@36@01 s@19@01))
          (and
            (Set_in r2@37@01 lists@3@01)
            (and (not (Set_in r2@37@01 s@19@01)) (not (= r1@36@01 r2@37@01))))))))
  :pattern ((Set_in r1@36@01 s@19@01) (Set_in r2@37@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@36@15@36@131-aux|)))
(assert (forall ((r1@36@01 $Ref) (r2@37@01 $Ref)) (!
  (and
    (=>
      (Set_in r1@36@01 lists@3@01)
      (and
        (Set_in r1@36@01 lists@3@01)
        (=>
          (not (Set_in r1@36@01 s@19@01))
          (and
            (not (Set_in r1@36@01 s@19@01))
            (=>
              (Set_in r2@37@01 lists@3@01)
              (and
                (Set_in r2@37@01 lists@3@01)
                (or (not (Set_in r2@37@01 s@19@01)) (Set_in r2@37@01 s@19@01))))
            (or (Set_in r2@37@01 lists@3@01) (not (Set_in r2@37@01 lists@3@01)))))
        (or (not (Set_in r1@36@01 s@19@01)) (Set_in r1@36@01 s@19@01))))
    (or (Set_in r1@36@01 lists@3@01) (not (Set_in r1@36@01 lists@3@01)))
    (=>
      (and
        (Set_in r1@36@01 lists@3@01)
        (and
          (not (Set_in r1@36@01 s@19@01))
          (and
            (Set_in r2@37@01 lists@3@01)
            (and (not (Set_in r2@37@01 s@19@01)) (not (= r1@36@01 r2@37@01))))))
      (and
        (Set_in r1@36@01 lists@3@01)
        (not (Set_in r1@36@01 s@19@01))
        (Set_in r2@37@01 lists@3@01)
        (not (Set_in r2@37@01 s@19@01))
        (not (= r1@36@01 r2@37@01))))
    (or
      (not
        (and
          (Set_in r1@36@01 lists@3@01)
          (and
            (not (Set_in r1@36@01 s@19@01))
            (and
              (Set_in r2@37@01 lists@3@01)
              (and (not (Set_in r2@37@01 s@19@01)) (not (= r1@36@01 r2@37@01)))))))
      (and
        (Set_in r1@36@01 lists@3@01)
        (and
          (not (Set_in r1@36@01 s@19@01))
          (and
            (Set_in r2@37@01 lists@3@01)
            (and (not (Set_in r2@37@01 s@19@01)) (not (= r1@36@01 r2@37@01))))))))
  :pattern ((Set_in r1@36@01 s@19@01) (Set_in r2@37@01 s@19@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@36@15@36@131-aux|)))
(assert (forall ((r1@36@01 $Ref) (r2@37@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@36@01 lists@3@01)
      (and
        (not (Set_in r1@36@01 s@19@01))
        (and
          (Set_in r2@37@01 lists@3@01)
          (and (not (Set_in r2@37@01 s@19@01)) (not (= r1@36@01 r2@37@01))))))
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r1@36@01)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r2@37@01))))
  :pattern ((Set_in r1@36@01 lists@3@01) (Set_in r2@37@01 lists@3@01))
  :pattern ((Set_in r1@36@01 lists@3@01) (Set_in r2@37@01 s@19@01))
  :pattern ((Set_in r1@36@01 s@19@01) (Set_in r2@37@01 lists@3@01))
  :pattern ((Set_in r1@36@01 s@19@01) (Set_in r2@37@01 s@19@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@36@15@36@131|)))
(assert (forall ((r $Ref) (i Int)) (!
  (=>
    (and (img@30@01 r i) (Set_in (inv@29@01 r i) sNext@20@01))
    (and (= (inv@29@01 r i) r) (= (- length@4@01 1) i)))
  :pattern ((inv@29@01 r i))
  :qid |list-fctOfInv|)))
(assert (forall ((r@28@01 $Ref)) (!
  (=>
    (Set_in r@28@01 sNext@20@01)
    (and
      (= (inv@29@01 r@28@01 (- length@4@01 1)) r@28@01)
      (img@30@01 r@28@01 (- length@4@01 1))))
  :pattern ((Set_in r@28@01 sNext@20@01))
  :pattern ((inv@29@01 r@28@01 (- length@4@01 1)))
  :pattern ((img@30@01 r@28@01 (- length@4@01 1)))
  :qid |quant-u-16920|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@21@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@21@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@21@01)))))))
(assert (forall ((r@31@01 $Ref)) (!
  (=>
    (and (Set_in r@31@01 lists@3@01) (not (Set_in r@31@01 s@19@01)))
    (or (Set_in r@31@01 lists@3@01) (not (Set_in r@31@01 lists@3@01))))
  :pattern ((Set_in r@31@01 lists@3@01))
  :pattern ((Set_in r@31@01 s@19@01))
  :pattern ((inv@32@01 r@31@01))
  :pattern ((img@33@01 r@31@01))
  :qid |val-aux|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@27@01 r)
      (and
        (Set_in (inv@26@01 r) lists@3@01)
        (not (Set_in (inv@26@01 r) s@19@01))))
    (= (inv@26@01 r) r))
  :pattern ((inv@26@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r@25@01 $Ref)) (!
  (=>
    (and (Set_in r@25@01 lists@3@01) (not (Set_in r@25@01 s@19@01)))
    (and (= (inv@26@01 r@25@01) r@25@01) (img@27@01 r@25@01)))
  :pattern ((Set_in r@25@01 lists@3@01))
  :pattern ((Set_in r@25@01 s@19@01))
  :pattern ((inv@26@01 r@25@01))
  :pattern ((img@27@01 r@25@01))
  :qid |quant-u-16918|)))
(assert (forall ((r@25@01 $Ref)) (!
  (=>
    (and (Set_in r@25@01 lists@3@01) (not (Set_in r@25@01 s@19@01)))
    (not (= r@25@01 $Ref.null)))
  :pattern ((Set_in r@25@01 lists@3@01))
  :pattern ((Set_in r@25@01 s@19@01))
  :pattern ((inv@26@01 r@25@01))
  :pattern ((img@27@01 r@25@01))
  :qid |next-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second $t@21@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@21@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@21@01))))))
(assert (forall ((r $Ref) (i Int)) (!
  (=>
    (and (img@24@01 r i) (Set_in (inv@23@01 r i) s@19@01))
    (and (= (inv@23@01 r i) r) (= length@4@01 i)))
  :pattern ((inv@23@01 r i))
  :qid |list-fctOfInv|)))
(assert (forall ((r@22@01 $Ref)) (!
  (=>
    (Set_in r@22@01 s@19@01)
    (and
      (= (inv@23@01 r@22@01 length@4@01) r@22@01)
      (img@24@01 r@22@01 length@4@01)))
  :pattern ((Set_in r@22@01 s@19@01))
  :pattern ((inv@23@01 r@22@01 length@4@01))
  :pattern ((img@24@01 r@22@01 length@4@01))
  :qid |quant-u-16916|)))
(assert (=
  ($Snap.second $t@21@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@21@01))
    ($Snap.second ($Snap.second $t@21@01)))))
(assert (forall ((r@25@01 $Ref)) (!
  (=>
    (and (Set_in r@25@01 lists@3@01) (not (Set_in r@25@01 s@19@01)))
    (or (Set_in r@25@01 lists@3@01) (not (Set_in r@25@01 lists@3@01))))
  :pattern ((Set_in r@25@01 lists@3@01))
  :pattern ((Set_in r@25@01 s@19@01))
  :pattern ((inv@26@01 r@25@01))
  :pattern ((img@27@01 r@25@01))
  :qid |next-aux|)))
(assert (= $t@21@01 ($Snap.combine ($Snap.first $t@21@01) ($Snap.second $t@21@01))))
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
; [eval] |s| > 0
; [eval] |s|
(pop) ; 5
(push) ; 5
; [eval] !(|s| > 0)
; [eval] |s| > 0
; [eval] |s|
(pop) ; 5
; Loop head block: Follow loop-internal edges
; [eval] |s| > 0
; [eval] |s|
(push) ; 5
(set-option :timeout 10)
(assert (not (not (> (Set_card s@19@01) 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (> (Set_card s@19@01) 0)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 23 | |s@19@01| > 0 | live]
; [else-branch: 23 | !(|s@19@01| > 0) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 23 | |s@19@01| > 0]
(assert (> (Set_card s@19@01) 0))
; [exec]
; var l: Ref
(declare-const l@59@01 $Ref)
; [exec]
; inhale (l in s)
(declare-const $t@60@01 $Snap)
(assert (= $t@60@01 $Snap.unit))
; [eval] (l in s)
(assert (Set_in l@59@01 s@19@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(list(l, length), write)
; Precomputing data for removing quantified permissions
(define-fun pTaken@61@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and (= r l@59@01) (= i length@4@01))
    ($Perm.min
      (ite
        (and (img@24@01 r i) (Set_in (inv@23@01 r i) s@19@01))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@62@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and (= r l@59@01) (= i length@4@01))
    ($Perm.min
      (ite
        (and (img@30@01 r i) (Set_in (inv@29@01 r i) sNext@20@01))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@61@01 r i)))
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
(assert (not (forall ((r $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and (img@24@01 r i) (Set_in (inv@23@01 r i) s@19@01))
        $Perm.Write
        $Perm.No)
      (pTaken@61@01 r i))
    $Perm.No)
  
  :qid |quant-u-16935|))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (forall ((r $Ref) (i Int)) (!
  (= (pTaken@61@01 r i) $Perm.No)
  
  :qid |quant-u-16936|))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and (= r l@59@01) (= i length@4@01))
    (= (- $Perm.Write (pTaken@61@01 r i)) $Perm.No))
  
  :qid |quant-u-16937|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@63@01 $PSF<list>)
(declare-const s@64@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@24@01 l@59@01 length@4@01)
    (Set_in (inv@23@01 l@59@01 length@4@01) s@19@01))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap l@59@01)
          ($SortWrappers.IntTo$Snap length@4@01))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@63@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap l@59@01)
        ($SortWrappers.IntTo$Snap length@4@01)))
      ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@21@01)) ($Snap.combine
        ($SortWrappers.$RefTo$Snap l@59@01)
        ($SortWrappers.IntTo$Snap length@4@01)))))))
(assert (=>
  (and
    (img@30@01 l@59@01 length@4@01)
    (Set_in (inv@29@01 l@59@01 length@4@01) sNext@20@01))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap l@59@01)
          ($SortWrappers.IntTo$Snap length@4@01))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@63@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap l@59@01)
        ($SortWrappers.IntTo$Snap length@4@01)))
      ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second $t@21@01)))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap l@59@01)
        ($SortWrappers.IntTo$Snap length@4@01)))))))
; [eval] i > 0
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (> length@4@01 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 24 | length@4@01 > 0 | live]
; [else-branch: 24 | !(length@4@01 > 0) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 24 | length@4@01 > 0]
(assert (=
  ($PSF.lookup_list (as sm@63@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap l@59@01)
    ($SortWrappers.IntTo$Snap length@4@01)))
  ($Snap.combine
    ($Snap.first ($PSF.lookup_list (as sm@63@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap l@59@01)
      ($SortWrappers.IntTo$Snap length@4@01))))
    ($Snap.second ($PSF.lookup_list (as sm@63@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap l@59@01)
      ($SortWrappers.IntTo$Snap length@4@01)))))))
(declare-const sm@65@01 $FVF<val>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_val (as sm@65@01  $FVF<val>) l@59@01)
  ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_list (as sm@63@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap l@59@01)
    ($SortWrappers.IntTo$Snap length@4@01)))))))
(assert (not (= l@59@01 $Ref.null)))
(assert (=
  ($Snap.second ($PSF.lookup_list (as sm@63@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap l@59@01)
    ($SortWrappers.IntTo$Snap length@4@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($PSF.lookup_list (as sm@63@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap l@59@01)
      ($SortWrappers.IntTo$Snap length@4@01)))))
    ($Snap.second ($Snap.second ($PSF.lookup_list (as sm@63@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap l@59@01)
      ($SortWrappers.IntTo$Snap length@4@01))))))))
(declare-const sm@66@01 $FVF<next>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_next (as sm@66@01  $FVF<next>) l@59@01)
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($PSF.lookup_list (as sm@63@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap l@59@01)
    ($SortWrappers.IntTo$Snap length@4@01))))))))
(declare-const sm@67@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@27@01 r)
      (and
        (Set_in (inv@26@01 r) lists@3@01)
        (not (Set_in (inv@26@01 r) s@19@01))))
    (=
      ($FVF.lookup_next (as sm@67@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r)))
  :pattern (($FVF.lookup_next (as sm@67@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r))
  :qid |qp.fvfValDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r l@59@01)
    (=
      ($FVF.lookup_next (as sm@67@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@66@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@67@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@66@01  $FVF<next>) r))
  :qid |qp.fvfValDef6|)))
(declare-const pm@68@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_next (as pm@68@01  $FPM) r)
    (+
      (ite
        (and
          (img@27@01 r)
          (and
            (Set_in (inv@26@01 r) lists@3@01)
            (not (Set_in (inv@26@01 r) s@19@01))))
        $Perm.Write
        $Perm.No)
      (ite (= r l@59@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_next (as pm@68@01  $FPM) r))
  :qid |qp.resPrmSumDef7|)))
(push) ; 7
(assert (not (< $Perm.No ($FVF.perm_next (as pm@68@01  $FPM) l@59@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] i - 1
(declare-const sm@69@01 $PSF<list>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_list (as sm@69@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap ($FVF.lookup_next (as sm@67@01  $FVF<next>) l@59@01))
    ($SortWrappers.IntTo$Snap (- length@4@01 1))))
  ($Snap.second ($Snap.second ($PSF.lookup_list (as sm@63@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap l@59@01)
    ($SortWrappers.IntTo$Snap length@4@01)))))))
(assert (<=
  $Perm.No
  (ite
    (and
      (=
        ($FVF.lookup_next (as sm@67@01  $FVF<next>) l@59@01)
        ($FVF.lookup_next (as sm@67@01  $FVF<next>) l@59@01))
      (= (- length@4@01 1) (- length@4@01 1)))
    $Perm.Write
    $Perm.No)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (list%trigger ($PSF.lookup_list (as sm@63@01  $PSF<list>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap l@59@01)
  ($SortWrappers.IntTo$Snap length@4@01))) l@59@01 length@4@01))
; [exec]
; inhale (forall r: Ref ::
;     { (r in lists) }
;     { (r in s) }
;     (r in lists) && !((r in s)) ==> r.next != l.next)
(declare-const $t@70@01 $Snap)
(assert (= $t@70@01 $Snap.unit))
; [eval] (forall r: Ref :: { (r in lists) } { (r in s) } (r in lists) && !((r in s)) ==> r.next != l.next)
(declare-const r@71@01 $Ref)
(set-option :timeout 0)
(push) ; 7
; [eval] (r in lists) && !((r in s)) ==> r.next != l.next
; [eval] (r in lists) && !((r in s))
; [eval] (r in lists)
(push) ; 8
; [then-branch: 25 | !(r@71@01 in lists@3@01) | live]
; [else-branch: 25 | r@71@01 in lists@3@01 | live]
(push) ; 9
; [then-branch: 25 | !(r@71@01 in lists@3@01)]
(assert (not (Set_in r@71@01 lists@3@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 25 | r@71@01 in lists@3@01]
(assert (Set_in r@71@01 lists@3@01))
; [eval] !((r in s))
; [eval] (r in s)
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (Set_in r@71@01 lists@3@01) (not (Set_in r@71@01 lists@3@01))))
(push) ; 8
; [then-branch: 26 | r@71@01 in lists@3@01 && !(r@71@01 in s@19@01) | live]
; [else-branch: 26 | !(r@71@01 in lists@3@01 && !(r@71@01 in s@19@01)) | live]
(push) ; 9
; [then-branch: 26 | r@71@01 in lists@3@01 && !(r@71@01 in s@19@01)]
(assert (and (Set_in r@71@01 lists@3@01) (not (Set_in r@71@01 s@19@01))))
; [eval] r.next != l.next
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@27@01 r)
        (and
          (Set_in (inv@26@01 r) lists@3@01)
          (not (Set_in (inv@26@01 r) s@19@01))))
      (=
        ($FVF.lookup_next (as sm@67@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r)))
    :pattern (($FVF.lookup_next (as sm@67@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r))
    :qid |qp.fvfValDef5|))
  (forall ((r $Ref)) (!
    (=>
      (= r l@59@01)
      (=
        ($FVF.lookup_next (as sm@67@01  $FVF<next>) r)
        ($FVF.lookup_next (as sm@66@01  $FVF<next>) r)))
    :pattern (($FVF.lookup_next (as sm@67@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next (as sm@66@01  $FVF<next>) r))
    :qid |qp.fvfValDef6|))))
(push) ; 10
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@27@01 r@71@01)
        (and
          (Set_in (inv@26@01 r@71@01) lists@3@01)
          (not (Set_in (inv@26@01 r@71@01) s@19@01))))
      $Perm.Write
      $Perm.No)
    (ite (= r@71@01 l@59@01) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@27@01 r)
        (and
          (Set_in (inv@26@01 r) lists@3@01)
          (not (Set_in (inv@26@01 r) s@19@01))))
      (=
        ($FVF.lookup_next (as sm@67@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r)))
    :pattern (($FVF.lookup_next (as sm@67@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r))
    :qid |qp.fvfValDef5|))
  (forall ((r $Ref)) (!
    (=>
      (= r l@59@01)
      (=
        ($FVF.lookup_next (as sm@67@01  $FVF<next>) r)
        ($FVF.lookup_next (as sm@66@01  $FVF<next>) r)))
    :pattern (($FVF.lookup_next (as sm@67@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next (as sm@66@01  $FVF<next>) r))
    :qid |qp.fvfValDef6|))))
(push) ; 10
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@27@01 l@59@01)
        (and
          (Set_in (inv@26@01 l@59@01) lists@3@01)
          (not (Set_in (inv@26@01 l@59@01) s@19@01))))
      $Perm.Write
      $Perm.No)
    $Perm.Write))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 26 | !(r@71@01 in lists@3@01 && !(r@71@01 in s@19@01))]
(assert (not (and (Set_in r@71@01 lists@3@01) (not (Set_in r@71@01 s@19@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@27@01 r)
      (and
        (Set_in (inv@26@01 r) lists@3@01)
        (not (Set_in (inv@26@01 r) s@19@01))))
    (=
      ($FVF.lookup_next (as sm@67@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r)))
  :pattern (($FVF.lookup_next (as sm@67@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r))
  :qid |qp.fvfValDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r l@59@01)
    (=
      ($FVF.lookup_next (as sm@67@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@66@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@67@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@66@01  $FVF<next>) r))
  :qid |qp.fvfValDef6|)))
; Joined path conditions
(assert (or
  (not (and (Set_in r@71@01 lists@3@01) (not (Set_in r@71@01 s@19@01))))
  (and (Set_in r@71@01 lists@3@01) (not (Set_in r@71@01 s@19@01)))))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@27@01 r)
      (and
        (Set_in (inv@26@01 r) lists@3@01)
        (not (Set_in (inv@26@01 r) s@19@01))))
    (=
      ($FVF.lookup_next (as sm@67@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r)))
  :pattern (($FVF.lookup_next (as sm@67@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r))
  :qid |qp.fvfValDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r l@59@01)
    (=
      ($FVF.lookup_next (as sm@67@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@66@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@67@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@66@01  $FVF<next>) r))
  :qid |qp.fvfValDef6|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@71@01 $Ref)) (!
  (and
    (or (Set_in r@71@01 lists@3@01) (not (Set_in r@71@01 lists@3@01)))
    (or
      (not (and (Set_in r@71@01 lists@3@01) (not (Set_in r@71@01 s@19@01))))
      (and (Set_in r@71@01 lists@3@01) (not (Set_in r@71@01 s@19@01)))))
  :pattern ((Set_in r@71@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@41@16@41@77-aux|)))
(assert (forall ((r@71@01 $Ref)) (!
  (and
    (or (Set_in r@71@01 lists@3@01) (not (Set_in r@71@01 lists@3@01)))
    (or
      (not (and (Set_in r@71@01 lists@3@01) (not (Set_in r@71@01 s@19@01))))
      (and (Set_in r@71@01 lists@3@01) (not (Set_in r@71@01 s@19@01)))))
  :pattern ((Set_in r@71@01 s@19@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@41@16@41@77-aux|)))
(assert (forall ((r@71@01 $Ref)) (!
  (=>
    (and (Set_in r@71@01 lists@3@01) (not (Set_in r@71@01 s@19@01)))
    (not
      (=
        ($FVF.lookup_next (as sm@67@01  $FVF<next>) r@71@01)
        ($FVF.lookup_next (as sm@67@01  $FVF<next>) l@59@01))))
  :pattern ((Set_in r@71@01 lists@3@01))
  :pattern ((Set_in r@71@01 s@19@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@41@16@41@77|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; s := (s setminus Set(l))
; [eval] (s setminus Set(l))
; [eval] Set(l)
(declare-const s@72@01 Set<$Ref>)
(assert (= s@72@01 (Set_difference s@19@01 (Set_singleton l@59@01))))
; [exec]
; sNext := (sNext union Set(l.next))
; [eval] (sNext union Set(l.next))
; [eval] Set(l.next)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@27@01 r)
        (and
          (Set_in (inv@26@01 r) lists@3@01)
          (not (Set_in (inv@26@01 r) s@19@01))))
      (=
        ($FVF.lookup_next (as sm@67@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r)))
    :pattern (($FVF.lookup_next (as sm@67@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r))
    :qid |qp.fvfValDef5|))
  (forall ((r $Ref)) (!
    (=>
      (= r l@59@01)
      (=
        ($FVF.lookup_next (as sm@67@01  $FVF<next>) r)
        ($FVF.lookup_next (as sm@66@01  $FVF<next>) r)))
    :pattern (($FVF.lookup_next (as sm@67@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next (as sm@66@01  $FVF<next>) r))
    :qid |qp.fvfValDef6|))))
(set-option :timeout 0)
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@27@01 l@59@01)
        (and
          (Set_in (inv@26@01 l@59@01) lists@3@01)
          (not (Set_in (inv@26@01 l@59@01) s@19@01))))
      $Perm.Write
      $Perm.No)
    $Perm.Write))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sNext@73@01 Set<$Ref>)
(assert (=
  sNext@73@01
  (Set_union sNext@20@01 (Set_singleton ($FVF.lookup_next (as sm@67@01  $FVF<next>) l@59@01)))))
; [exec]
; l.val := v
; Precomputing data for removing quantified permissions
(define-fun pTaken@74@01 ((r $Ref)) $Perm
  (ite
    (= r l@59@01)
    ($Perm.min (ite (= r l@59@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
(define-fun pTaken@75@01 ((r $Ref)) $Perm
  (ite
    (= r l@59@01)
    ($Perm.min
      (ite
        (and
          (img@33@01 r)
          (and
            (Set_in (inv@32@01 r) lists@3@01)
            (not (Set_in (inv@32@01 r) s@19@01))))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@74@01 r)))
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
(assert (not (= (- $Perm.Write (pTaken@74@01 l@59@01)) $Perm.No)))
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
  (=> (= r l@59@01) (= (- $Perm.Write (pTaken@74@01 r)) $Perm.No))
  
  :qid |quant-u-16940|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@76@01 $FVF<val>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_val (as sm@76@01  $FVF<val>) l@59@01) v@5@01))
; Loop head block: Re-establish invariant
(declare-const r@77@01 $Ref)
(set-option :timeout 0)
(push) ; 7
; [eval] (r in s)
(assert (Set_in r@77@01 s@72@01))
(pop) ; 7
(declare-fun inv@78@01 ($Ref Int) $Ref)
(declare-fun img@79@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((r1@77@01 $Ref) (r2@77@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@77@01 s@72@01)
      (Set_in r2@77@01 s@72@01)
      (= r1@77@01 r2@77@01))
    (= r1@77@01 r2@77@01))
  
  :qid |list-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@77@01 $Ref)) (!
  (=>
    (Set_in r@77@01 s@72@01)
    (and
      (= (inv@78@01 r@77@01 length@4@01) r@77@01)
      (img@79@01 r@77@01 length@4@01)))
  :pattern ((Set_in r@77@01 s@72@01))
  :pattern ((inv@78@01 r@77@01 length@4@01))
  :pattern ((img@79@01 r@77@01 length@4@01))
  :qid |list-invOfFct|)))
(assert (forall ((r $Ref) (i Int)) (!
  (=>
    (and (img@79@01 r i) (Set_in (inv@78@01 r i) s@72@01))
    (and (= (inv@78@01 r i) r) (= length@4@01 i)))
  :pattern ((inv@78@01 r i))
  :qid |list-fctOfInv|)))
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r@77@01 $Ref)) (!
  (= length@4@01 (- length@4@01 1))
  
  :qid |quant-u-16942|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@80@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and
      (Set_in (inv@78@01 r i) s@72@01)
      (img@79@01 r i)
      (and (= r (inv@78@01 r i)) (= i length@4@01)))
    ($Perm.min
      (ite
        (and (img@24@01 r i) (Set_in (inv@23@01 r i) s@19@01))
        (- $Perm.Write (pTaken@61@01 r i))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@81@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and
      (Set_in (inv@78@01 r i) s@72@01)
      (img@79@01 r i)
      (and (= r (inv@78@01 r i)) (= i length@4@01)))
    ($Perm.min
      (ite
        (and
          (= r ($FVF.lookup_next (as sm@67@01  $FVF<next>) l@59@01))
          (= i (- length@4@01 1)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@80@01 r i)))
    $Perm.No))
(define-fun pTaken@82@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and
      (Set_in (inv@78@01 r i) s@72@01)
      (img@79@01 r i)
      (and (= r (inv@78@01 r i)) (= i length@4@01)))
    ($Perm.min
      (ite
        (and (img@30@01 r i) (Set_in (inv@29@01 r i) sNext@20@01))
        $Perm.Write
        $Perm.No)
      (- (- $Perm.Write (pTaken@80@01 r i)) (pTaken@81@01 r i)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and (img@24@01 r i) (Set_in (inv@23@01 r i) s@19@01))
        (- $Perm.Write (pTaken@61@01 r i))
        $Perm.No)
      (pTaken@80@01 r i))
    $Perm.No)
  
  :qid |quant-u-16944|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and
      (Set_in (inv@78@01 r i) s@72@01)
      (img@79@01 r i)
      (and (= r (inv@78@01 r i)) (= i length@4@01)))
    (= (- $Perm.Write (pTaken@80@01 r i)) $Perm.No))
  
  :qid |quant-u-16945|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const r@83@01 $Ref)
(set-option :timeout 0)
(push) ; 7
; [eval] (r in lists) && !((r in s))
; [eval] (r in lists)
(push) ; 8
; [then-branch: 27 | !(r@83@01 in lists@3@01) | live]
; [else-branch: 27 | r@83@01 in lists@3@01 | live]
(push) ; 9
; [then-branch: 27 | !(r@83@01 in lists@3@01)]
(assert (not (Set_in r@83@01 lists@3@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 27 | r@83@01 in lists@3@01]
(assert (Set_in r@83@01 lists@3@01))
; [eval] !((r in s))
; [eval] (r in s)
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (Set_in r@83@01 lists@3@01) (not (Set_in r@83@01 lists@3@01))))
(assert (and (Set_in r@83@01 lists@3@01) (not (Set_in r@83@01 s@72@01))))
(pop) ; 7
(declare-fun inv@84@01 ($Ref) $Ref)
(declare-fun img@85@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((r@83@01 $Ref)) (!
  (=>
    (and (Set_in r@83@01 lists@3@01) (not (Set_in r@83@01 s@72@01)))
    (or (Set_in r@83@01 lists@3@01) (not (Set_in r@83@01 lists@3@01))))
  :pattern ((Set_in r@83@01 lists@3@01))
  :pattern ((Set_in r@83@01 s@72@01))
  :pattern ((inv@84@01 r@83@01))
  :pattern ((img@85@01 r@83@01))
  :qid |next-aux|)))
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((r1@83@01 $Ref) (r2@83@01 $Ref)) (!
  (=>
    (and
      (and (Set_in r1@83@01 lists@3@01) (not (Set_in r1@83@01 s@72@01)))
      (and (Set_in r2@83@01 lists@3@01) (not (Set_in r2@83@01 s@72@01)))
      (= r1@83@01 r2@83@01))
    (= r1@83@01 r2@83@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@83@01 $Ref)) (!
  (=>
    (and (Set_in r@83@01 lists@3@01) (not (Set_in r@83@01 s@72@01)))
    (and (= (inv@84@01 r@83@01) r@83@01) (img@85@01 r@83@01)))
  :pattern ((Set_in r@83@01 lists@3@01))
  :pattern ((Set_in r@83@01 s@72@01))
  :pattern ((inv@84@01 r@83@01))
  :pattern ((img@85@01 r@83@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@85@01 r)
      (and
        (Set_in (inv@84@01 r) lists@3@01)
        (not (Set_in (inv@84@01 r) s@72@01))))
    (= (inv@84@01 r) r))
  :pattern ((inv@84@01 r))
  :qid |next-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@86@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (Set_in (inv@84@01 r) lists@3@01)
        (not (Set_in (inv@84@01 r) s@72@01)))
      (img@85@01 r)
      (= r (inv@84@01 r)))
    ($Perm.min
      (ite
        (and
          (img@27@01 r)
          (and
            (Set_in (inv@26@01 r) lists@3@01)
            (not (Set_in (inv@26@01 r) s@19@01))))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@87@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (Set_in (inv@84@01 r) lists@3@01)
        (not (Set_in (inv@84@01 r) s@72@01)))
      (img@85@01 r)
      (= r (inv@84@01 r)))
    ($Perm.min
      (ite (= r l@59@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@86@01 r)))
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
          (and
            (Set_in (inv@26@01 r) lists@3@01)
            (not (Set_in (inv@26@01 r) s@19@01))))
        $Perm.Write
        $Perm.No)
      (pTaken@86@01 r))
    $Perm.No)
  
  :qid |quant-u-16948|))))
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
      (and
        (Set_in (inv@84@01 r) lists@3@01)
        (not (Set_in (inv@84@01 r) s@72@01)))
      (img@85@01 r)
      (= r (inv@84@01 r)))
    (= (- $Perm.Write (pTaken@86@01 r)) $Perm.No))
  
  :qid |quant-u-16949|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@87@01 l@59@01)) $Perm.No)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@87@01 r) $Perm.No)
  
  :qid |quant-u-16951|))))
(check-sat)
; unknown
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
      (and
        (Set_in (inv@84@01 r) lists@3@01)
        (not (Set_in (inv@84@01 r) s@72@01)))
      (img@85@01 r)
      (= r (inv@84@01 r)))
    (= (- (- $Perm.Write (pTaken@86@01 r)) (pTaken@87@01 r)) $Perm.No))
  
  :qid |quant-u-16952|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const r@88@01 $Ref)
(set-option :timeout 0)
(push) ; 7
; [eval] (r in sNext)
(assert (Set_in r@88@01 sNext@73@01))
; [eval] length - 1
(pop) ; 7
(declare-fun inv@89@01 ($Ref Int) $Ref)
(declare-fun img@90@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((r1@88@01 $Ref) (r2@88@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@88@01 sNext@73@01)
      (Set_in r2@88@01 sNext@73@01)
      (= r1@88@01 r2@88@01))
    (= r1@88@01 r2@88@01))
  
  :qid |list-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@88@01 $Ref)) (!
  (=>
    (Set_in r@88@01 sNext@73@01)
    (and
      (= (inv@89@01 r@88@01 (- length@4@01 1)) r@88@01)
      (img@90@01 r@88@01 (- length@4@01 1))))
  :pattern ((Set_in r@88@01 sNext@73@01))
  :pattern ((inv@89@01 r@88@01 (- length@4@01 1)))
  :pattern ((img@90@01 r@88@01 (- length@4@01 1)))
  :qid |list-invOfFct|)))
(assert (forall ((r $Ref) (i Int)) (!
  (=>
    (and (img@90@01 r i) (Set_in (inv@89@01 r i) sNext@73@01))
    (and (= (inv@89@01 r i) r) (= (- length@4@01 1) i)))
  :pattern ((inv@89@01 r i))
  :qid |list-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@91@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and
      (Set_in (inv@89@01 r i) sNext@73@01)
      (img@90@01 r i)
      (and (= r (inv@89@01 r i)) (= i (- length@4@01 1))))
    ($Perm.min
      (ite
        (and (img@30@01 r i) (Set_in (inv@29@01 r i) sNext@20@01))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@92@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and
      (Set_in (inv@89@01 r i) sNext@73@01)
      (img@90@01 r i)
      (and (= r (inv@89@01 r i)) (= i (- length@4@01 1))))
    ($Perm.min
      (ite
        (and
          (= r ($FVF.lookup_next (as sm@67@01  $FVF<next>) l@59@01))
          (= i (- length@4@01 1)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@91@01 r i)))
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
(assert (not (forall ((r $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and (img@30@01 r i) (Set_in (inv@29@01 r i) sNext@20@01))
        $Perm.Write
        $Perm.No)
      (pTaken@91@01 r i))
    $Perm.No)
  
  :qid |quant-u-16955|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and
      (Set_in (inv@89@01 r i) sNext@73@01)
      (img@90@01 r i)
      (and (= r (inv@89@01 r i)) (= i (- length@4@01 1))))
    (= (- $Perm.Write (pTaken@91@01 r i)) $Perm.No))
  
  :qid |quant-u-16956|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (and
        (=
          ($FVF.lookup_next (as sm@67@01  $FVF<next>) l@59@01)
          ($FVF.lookup_next (as sm@67@01  $FVF<next>) l@59@01))
        (= (- length@4@01 1) (- length@4@01 1)))
      $Perm.Write
      $Perm.No)
    (pTaken@92@01 ($FVF.lookup_next (as sm@67@01  $FVF<next>) l@59@01) (-
      length@4@01
      1)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref) (i Int)) (!
  (= (pTaken@92@01 r i) $Perm.No)
  
  :qid |quant-u-16958|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and
      (Set_in (inv@89@01 r i) sNext@73@01)
      (img@90@01 r i)
      (and (= r (inv@89@01 r i)) (= i (- length@4@01 1))))
    (= (- (- $Perm.Write (pTaken@91@01 r i)) (pTaken@92@01 r i)) $Perm.No))
  
  :qid |quant-u-16959|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const r@93@01 $Ref)
(set-option :timeout 0)
(push) ; 7
; [eval] (r in lists) && !((r in s))
; [eval] (r in lists)
(push) ; 8
; [then-branch: 28 | !(r@93@01 in lists@3@01) | live]
; [else-branch: 28 | r@93@01 in lists@3@01 | live]
(push) ; 9
; [then-branch: 28 | !(r@93@01 in lists@3@01)]
(assert (not (Set_in r@93@01 lists@3@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 28 | r@93@01 in lists@3@01]
(assert (Set_in r@93@01 lists@3@01))
; [eval] !((r in s))
; [eval] (r in s)
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (Set_in r@93@01 lists@3@01) (not (Set_in r@93@01 lists@3@01))))
(assert (and (Set_in r@93@01 lists@3@01) (not (Set_in r@93@01 s@72@01))))
(pop) ; 7
(declare-fun inv@94@01 ($Ref) $Ref)
(declare-fun img@95@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((r@93@01 $Ref)) (!
  (=>
    (and (Set_in r@93@01 lists@3@01) (not (Set_in r@93@01 s@72@01)))
    (or (Set_in r@93@01 lists@3@01) (not (Set_in r@93@01 lists@3@01))))
  :pattern ((Set_in r@93@01 lists@3@01))
  :pattern ((Set_in r@93@01 s@72@01))
  :pattern ((inv@94@01 r@93@01))
  :pattern ((img@95@01 r@93@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((r1@93@01 $Ref) (r2@93@01 $Ref)) (!
  (=>
    (and
      (and (Set_in r1@93@01 lists@3@01) (not (Set_in r1@93@01 s@72@01)))
      (and (Set_in r2@93@01 lists@3@01) (not (Set_in r2@93@01 s@72@01)))
      (= r1@93@01 r2@93@01))
    (= r1@93@01 r2@93@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@93@01 $Ref)) (!
  (=>
    (and (Set_in r@93@01 lists@3@01) (not (Set_in r@93@01 s@72@01)))
    (and (= (inv@94@01 r@93@01) r@93@01) (img@95@01 r@93@01)))
  :pattern ((Set_in r@93@01 lists@3@01))
  :pattern ((Set_in r@93@01 s@72@01))
  :pattern ((inv@94@01 r@93@01))
  :pattern ((img@95@01 r@93@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@95@01 r)
      (and
        (Set_in (inv@94@01 r) lists@3@01)
        (not (Set_in (inv@94@01 r) s@72@01))))
    (= (inv@94@01 r) r))
  :pattern ((inv@94@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@96@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (Set_in (inv@94@01 r) lists@3@01)
        (not (Set_in (inv@94@01 r) s@72@01)))
      (img@95@01 r)
      (= r (inv@94@01 r)))
    ($Perm.min
      (ite
        (and
          (img@33@01 r)
          (and
            (Set_in (inv@32@01 r) lists@3@01)
            (not (Set_in (inv@32@01 r) s@19@01))))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@97@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (Set_in (inv@94@01 r) lists@3@01)
        (not (Set_in (inv@94@01 r) s@72@01)))
      (img@95@01 r)
      (= r (inv@94@01 r)))
    ($Perm.min
      (ite (= r l@59@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@96@01 r)))
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
          (img@33@01 r)
          (and
            (Set_in (inv@32@01 r) lists@3@01)
            (not (Set_in (inv@32@01 r) s@19@01))))
        $Perm.Write
        $Perm.No)
      (pTaken@96@01 r))
    $Perm.No)
  
  :qid |quant-u-16962|))))
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
      (and
        (Set_in (inv@94@01 r) lists@3@01)
        (not (Set_in (inv@94@01 r) s@72@01)))
      (img@95@01 r)
      (= r (inv@94@01 r)))
    (= (- $Perm.Write (pTaken@96@01 r)) $Perm.No))
  
  :qid |quant-u-16963|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@97@01 l@59@01)) $Perm.No)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@97@01 r) $Perm.No)
  
  :qid |quant-u-16965|))))
(check-sat)
; unknown
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
      (and
        (Set_in (inv@94@01 r) lists@3@01)
        (not (Set_in (inv@94@01 r) s@72@01)))
      (img@95@01 r)
      (= r (inv@94@01 r)))
    (= (- (- $Perm.Write (pTaken@96@01 r)) (pTaken@97@01 r)) $Perm.No))
  
  :qid |quant-u-16966|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall r: Ref :: { (r in lists) } { (r in s) } (r in lists) && !((r in s)) ==> r.val == v)
(declare-const r@98@01 $Ref)
(set-option :timeout 0)
(push) ; 7
; [eval] (r in lists) && !((r in s)) ==> r.val == v
; [eval] (r in lists) && !((r in s))
; [eval] (r in lists)
(push) ; 8
; [then-branch: 29 | !(r@98@01 in lists@3@01) | live]
; [else-branch: 29 | r@98@01 in lists@3@01 | live]
(push) ; 9
; [then-branch: 29 | !(r@98@01 in lists@3@01)]
(assert (not (Set_in r@98@01 lists@3@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 29 | r@98@01 in lists@3@01]
(assert (Set_in r@98@01 lists@3@01))
; [eval] !((r in s))
; [eval] (r in s)
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (Set_in r@98@01 lists@3@01) (not (Set_in r@98@01 lists@3@01))))
(push) ; 8
; [then-branch: 30 | r@98@01 in lists@3@01 && !(r@98@01 in s@72@01) | live]
; [else-branch: 30 | !(r@98@01 in lists@3@01 && !(r@98@01 in s@72@01)) | live]
(push) ; 9
; [then-branch: 30 | r@98@01 in lists@3@01 && !(r@98@01 in s@72@01)]
(assert (and (Set_in r@98@01 lists@3@01) (not (Set_in r@98@01 s@72@01))))
; [eval] r.val == v
(declare-const sm@99@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r l@59@01)
    (=
      ($FVF.lookup_val (as sm@99@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@76@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@99@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@76@01  $FVF<val>) r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@33@01 r)
      (and
        (Set_in (inv@32@01 r) lists@3@01)
        (not (Set_in (inv@32@01 r) s@19@01))))
    (=
      ($FVF.lookup_val (as sm@99@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@21@01))))) r)))
  :pattern (($FVF.lookup_val (as sm@99@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@21@01))))) r))
  :qid |qp.fvfValDef9|)))
(declare-const pm@100@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@100@01  $FPM) r)
    (+
      (ite (= r l@59@01) $Perm.Write $Perm.No)
      (ite
        (and
          (img@33@01 r)
          (and
            (Set_in (inv@32@01 r) lists@3@01)
            (not (Set_in (inv@32@01 r) s@19@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@100@01  $FPM) r))
  :qid |qp.resPrmSumDef10|)))
(push) ; 10
(assert (not (< $Perm.No ($FVF.perm_val (as pm@100@01  $FPM) r@98@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 30 | !(r@98@01 in lists@3@01 && !(r@98@01 in s@72@01))]
(assert (not (and (Set_in r@98@01 lists@3@01) (not (Set_in r@98@01 s@72@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r l@59@01)
    (=
      ($FVF.lookup_val (as sm@99@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@76@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@99@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@76@01  $FVF<val>) r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@33@01 r)
      (and
        (Set_in (inv@32@01 r) lists@3@01)
        (not (Set_in (inv@32@01 r) s@19@01))))
    (=
      ($FVF.lookup_val (as sm@99@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@21@01))))) r)))
  :pattern (($FVF.lookup_val (as sm@99@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@21@01))))) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@100@01  $FPM) r)
    (+
      (ite (= r l@59@01) $Perm.Write $Perm.No)
      (ite
        (and
          (img@33@01 r)
          (and
            (Set_in (inv@32@01 r) lists@3@01)
            (not (Set_in (inv@32@01 r) s@19@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@100@01  $FPM) r))
  :qid |qp.resPrmSumDef10|)))
; Joined path conditions
(assert (or
  (not (and (Set_in r@98@01 lists@3@01) (not (Set_in r@98@01 s@72@01))))
  (and (Set_in r@98@01 lists@3@01) (not (Set_in r@98@01 s@72@01)))))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (= r l@59@01)
    (=
      ($FVF.lookup_val (as sm@99@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@76@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@99@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@76@01  $FVF<val>) r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@33@01 r)
      (and
        (Set_in (inv@32@01 r) lists@3@01)
        (not (Set_in (inv@32@01 r) s@19@01))))
    (=
      ($FVF.lookup_val (as sm@99@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@21@01))))) r)))
  :pattern (($FVF.lookup_val (as sm@99@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@21@01))))) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@100@01  $FPM) r)
    (+
      (ite (= r l@59@01) $Perm.Write $Perm.No)
      (ite
        (and
          (img@33@01 r)
          (and
            (Set_in (inv@32@01 r) lists@3@01)
            (not (Set_in (inv@32@01 r) s@19@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@100@01  $FPM) r))
  :qid |qp.resPrmSumDef10|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@98@01 $Ref)) (!
  (and
    (or (Set_in r@98@01 lists@3@01) (not (Set_in r@98@01 lists@3@01)))
    (or
      (not (and (Set_in r@98@01 lists@3@01) (not (Set_in r@98@01 s@72@01))))
      (and (Set_in r@98@01 lists@3@01) (not (Set_in r@98@01 s@72@01)))))
  :pattern ((Set_in r@98@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@34@15@34@84-aux|)))
(assert (forall ((r@98@01 $Ref)) (!
  (and
    (or (Set_in r@98@01 lists@3@01) (not (Set_in r@98@01 lists@3@01)))
    (or
      (not (and (Set_in r@98@01 lists@3@01) (not (Set_in r@98@01 s@72@01))))
      (and (Set_in r@98@01 lists@3@01) (not (Set_in r@98@01 s@72@01)))))
  :pattern ((Set_in r@98@01 s@72@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@34@15@34@84-aux|)))
(push) ; 7
(assert (not (forall ((r@98@01 $Ref)) (!
  (=>
    (and (Set_in r@98@01 lists@3@01) (not (Set_in r@98@01 s@72@01)))
    (= ($FVF.lookup_val (as sm@99@01  $FVF<val>) r@98@01) v@5@01))
  :pattern ((Set_in r@98@01 lists@3@01))
  :pattern ((Set_in r@98@01 s@72@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@34@15@34@84|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (forall ((r@98@01 $Ref)) (!
  (=>
    (and (Set_in r@98@01 lists@3@01) (not (Set_in r@98@01 s@72@01)))
    (= ($FVF.lookup_val (as sm@99@01  $FVF<val>) r@98@01) v@5@01))
  :pattern ((Set_in r@98@01 lists@3@01))
  :pattern ((Set_in r@98@01 s@72@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@34@15@34@84|)))
; [eval] (forall r: Ref :: { (r in lists) } { (r in s) } { (r.next in sNext) } (r in lists) && !((r in s)) ==> (r.next in sNext))
(declare-const r@101@01 $Ref)
(push) ; 7
; [eval] (r in lists) && !((r in s)) ==> (r.next in sNext)
; [eval] (r in lists) && !((r in s))
; [eval] (r in lists)
(push) ; 8
; [then-branch: 31 | !(r@101@01 in lists@3@01) | live]
; [else-branch: 31 | r@101@01 in lists@3@01 | live]
(push) ; 9
; [then-branch: 31 | !(r@101@01 in lists@3@01)]
(assert (not (Set_in r@101@01 lists@3@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 31 | r@101@01 in lists@3@01]
(assert (Set_in r@101@01 lists@3@01))
; [eval] !((r in s))
; [eval] (r in s)
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (Set_in r@101@01 lists@3@01) (not (Set_in r@101@01 lists@3@01))))
(push) ; 8
; [then-branch: 32 | r@101@01 in lists@3@01 && !(r@101@01 in s@72@01) | live]
; [else-branch: 32 | !(r@101@01 in lists@3@01 && !(r@101@01 in s@72@01)) | live]
(push) ; 9
; [then-branch: 32 | r@101@01 in lists@3@01 && !(r@101@01 in s@72@01)]
(assert (and (Set_in r@101@01 lists@3@01) (not (Set_in r@101@01 s@72@01))))
; [eval] (r.next in sNext)
(declare-const sm@102@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r l@59@01)
    (=
      ($FVF.lookup_next (as sm@102@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@66@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@102@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@66@01  $FVF<next>) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@27@01 r)
      (and
        (Set_in (inv@26@01 r) lists@3@01)
        (not (Set_in (inv@26@01 r) s@19@01))))
    (=
      ($FVF.lookup_next (as sm@102@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r)))
  :pattern (($FVF.lookup_next (as sm@102@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r))
  :qid |qp.fvfValDef12|)))
(declare-const pm@103@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_next (as pm@103@01  $FPM) r)
    (+
      (ite (= r l@59@01) $Perm.Write $Perm.No)
      (ite
        (and
          (img@27@01 r)
          (and
            (Set_in (inv@26@01 r) lists@3@01)
            (not (Set_in (inv@26@01 r) s@19@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_next (as pm@103@01  $FPM) r))
  :qid |qp.resPrmSumDef13|)))
(push) ; 10
(assert (not (< $Perm.No ($FVF.perm_next (as pm@103@01  $FPM) r@101@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 32 | !(r@101@01 in lists@3@01 && !(r@101@01 in s@72@01))]
(assert (not (and (Set_in r@101@01 lists@3@01) (not (Set_in r@101@01 s@72@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r l@59@01)
    (=
      ($FVF.lookup_next (as sm@102@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@66@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@102@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@66@01  $FVF<next>) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@27@01 r)
      (and
        (Set_in (inv@26@01 r) lists@3@01)
        (not (Set_in (inv@26@01 r) s@19@01))))
    (=
      ($FVF.lookup_next (as sm@102@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r)))
  :pattern (($FVF.lookup_next (as sm@102@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_next (as pm@103@01  $FPM) r)
    (+
      (ite (= r l@59@01) $Perm.Write $Perm.No)
      (ite
        (and
          (img@27@01 r)
          (and
            (Set_in (inv@26@01 r) lists@3@01)
            (not (Set_in (inv@26@01 r) s@19@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_next (as pm@103@01  $FPM) r))
  :qid |qp.resPrmSumDef13|)))
; Joined path conditions
(assert (or
  (not (and (Set_in r@101@01 lists@3@01) (not (Set_in r@101@01 s@72@01))))
  (and (Set_in r@101@01 lists@3@01) (not (Set_in r@101@01 s@72@01)))))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (= r l@59@01)
    (=
      ($FVF.lookup_next (as sm@102@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@66@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@102@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@66@01  $FVF<next>) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@27@01 r)
      (and
        (Set_in (inv@26@01 r) lists@3@01)
        (not (Set_in (inv@26@01 r) s@19@01))))
    (=
      ($FVF.lookup_next (as sm@102@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r)))
  :pattern (($FVF.lookup_next (as sm@102@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_next (as pm@103@01  $FPM) r)
    (+
      (ite (= r l@59@01) $Perm.Write $Perm.No)
      (ite
        (and
          (img@27@01 r)
          (and
            (Set_in (inv@26@01 r) lists@3@01)
            (not (Set_in (inv@26@01 r) s@19@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_next (as pm@103@01  $FPM) r))
  :qid |qp.resPrmSumDef13|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@101@01 $Ref)) (!
  (and
    (or (Set_in r@101@01 lists@3@01) (not (Set_in r@101@01 lists@3@01)))
    (or
      (not (and (Set_in r@101@01 lists@3@01) (not (Set_in r@101@01 s@72@01))))
      (and (Set_in r@101@01 lists@3@01) (not (Set_in r@101@01 s@72@01)))))
  :pattern ((Set_in r@101@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@35@15@35@75-aux|)))
(assert (forall ((r@101@01 $Ref)) (!
  (and
    (or (Set_in r@101@01 lists@3@01) (not (Set_in r@101@01 lists@3@01)))
    (or
      (not (and (Set_in r@101@01 lists@3@01) (not (Set_in r@101@01 s@72@01))))
      (and (Set_in r@101@01 lists@3@01) (not (Set_in r@101@01 s@72@01)))))
  :pattern ((Set_in r@101@01 s@72@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@35@15@35@75-aux|)))
(assert (forall ((r@101@01 $Ref)) (!
  (and
    (or (Set_in r@101@01 lists@3@01) (not (Set_in r@101@01 lists@3@01)))
    (or
      (not (and (Set_in r@101@01 lists@3@01) (not (Set_in r@101@01 s@72@01))))
      (and (Set_in r@101@01 lists@3@01) (not (Set_in r@101@01 s@72@01)))))
  :pattern ((Set_in ($FVF.lookup_next (as sm@102@01  $FVF<next>) r@101@01) sNext@73@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@35@15@35@75-aux|)))
(push) ; 7
(assert (not (forall ((r@101@01 $Ref)) (!
  (=>
    (and (Set_in r@101@01 lists@3@01) (not (Set_in r@101@01 s@72@01)))
    (Set_in ($FVF.lookup_next (as sm@102@01  $FVF<next>) r@101@01) sNext@73@01))
  :pattern ((Set_in r@101@01 lists@3@01))
  :pattern ((Set_in r@101@01 s@72@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@102@01  $FVF<next>) r@101@01) sNext@73@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@35@15@35@75|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (forall ((r@101@01 $Ref)) (!
  (=>
    (and (Set_in r@101@01 lists@3@01) (not (Set_in r@101@01 s@72@01)))
    (Set_in ($FVF.lookup_next (as sm@102@01  $FVF<next>) r@101@01) sNext@73@01))
  :pattern ((Set_in r@101@01 lists@3@01))
  :pattern ((Set_in r@101@01 s@72@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@102@01  $FVF<next>) r@101@01) sNext@73@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@35@15@35@75|)))
; [eval] (forall r1: Ref, r2: Ref :: { (r1 in lists), (r2 in lists) } { (r1 in lists), (r2 in s) } { (r1 in s), (r2 in lists) } { (r1 in s), (r2 in s) } (r1 in lists) && (!((r1 in s)) && ((r2 in lists) && (!((r2 in s)) && r1 != r2))) ==> r1.next != r2.next)
(declare-const r1@104@01 $Ref)
(declare-const r2@105@01 $Ref)
(push) ; 7
; [eval] (r1 in lists) && (!((r1 in s)) && ((r2 in lists) && (!((r2 in s)) && r1 != r2))) ==> r1.next != r2.next
; [eval] (r1 in lists) && (!((r1 in s)) && ((r2 in lists) && (!((r2 in s)) && r1 != r2)))
; [eval] (r1 in lists)
(push) ; 8
; [then-branch: 33 | !(r1@104@01 in lists@3@01) | live]
; [else-branch: 33 | r1@104@01 in lists@3@01 | live]
(push) ; 9
; [then-branch: 33 | !(r1@104@01 in lists@3@01)]
(assert (not (Set_in r1@104@01 lists@3@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 33 | r1@104@01 in lists@3@01]
(assert (Set_in r1@104@01 lists@3@01))
; [eval] !((r1 in s))
; [eval] (r1 in s)
(push) ; 10
; [then-branch: 34 | r1@104@01 in s@72@01 | live]
; [else-branch: 34 | !(r1@104@01 in s@72@01) | live]
(push) ; 11
; [then-branch: 34 | r1@104@01 in s@72@01]
(assert (Set_in r1@104@01 s@72@01))
(pop) ; 11
(push) ; 11
; [else-branch: 34 | !(r1@104@01 in s@72@01)]
(assert (not (Set_in r1@104@01 s@72@01)))
; [eval] (r2 in lists)
(push) ; 12
; [then-branch: 35 | !(r2@105@01 in lists@3@01) | live]
; [else-branch: 35 | r2@105@01 in lists@3@01 | live]
(push) ; 13
; [then-branch: 35 | !(r2@105@01 in lists@3@01)]
(assert (not (Set_in r2@105@01 lists@3@01)))
(pop) ; 13
(push) ; 13
; [else-branch: 35 | r2@105@01 in lists@3@01]
(assert (Set_in r2@105@01 lists@3@01))
; [eval] !((r2 in s))
; [eval] (r2 in s)
(push) ; 14
; [then-branch: 36 | r2@105@01 in s@72@01 | live]
; [else-branch: 36 | !(r2@105@01 in s@72@01) | live]
(push) ; 15
; [then-branch: 36 | r2@105@01 in s@72@01]
(assert (Set_in r2@105@01 s@72@01))
(pop) ; 15
(push) ; 15
; [else-branch: 36 | !(r2@105@01 in s@72@01)]
(assert (not (Set_in r2@105@01 s@72@01)))
; [eval] r1 != r2
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in r2@105@01 s@72@01)) (Set_in r2@105@01 s@72@01)))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in r2@105@01 lists@3@01)
  (and
    (Set_in r2@105@01 lists@3@01)
    (or (not (Set_in r2@105@01 s@72@01)) (Set_in r2@105@01 s@72@01)))))
(assert (or (Set_in r2@105@01 lists@3@01) (not (Set_in r2@105@01 lists@3@01))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (Set_in r1@104@01 s@72@01))
  (and
    (not (Set_in r1@104@01 s@72@01))
    (=>
      (Set_in r2@105@01 lists@3@01)
      (and
        (Set_in r2@105@01 lists@3@01)
        (or (not (Set_in r2@105@01 s@72@01)) (Set_in r2@105@01 s@72@01))))
    (or (Set_in r2@105@01 lists@3@01) (not (Set_in r2@105@01 lists@3@01))))))
(assert (or (not (Set_in r1@104@01 s@72@01)) (Set_in r1@104@01 s@72@01)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in r1@104@01 lists@3@01)
  (and
    (Set_in r1@104@01 lists@3@01)
    (=>
      (not (Set_in r1@104@01 s@72@01))
      (and
        (not (Set_in r1@104@01 s@72@01))
        (=>
          (Set_in r2@105@01 lists@3@01)
          (and
            (Set_in r2@105@01 lists@3@01)
            (or (not (Set_in r2@105@01 s@72@01)) (Set_in r2@105@01 s@72@01))))
        (or (Set_in r2@105@01 lists@3@01) (not (Set_in r2@105@01 lists@3@01)))))
    (or (not (Set_in r1@104@01 s@72@01)) (Set_in r1@104@01 s@72@01)))))
(assert (or (Set_in r1@104@01 lists@3@01) (not (Set_in r1@104@01 lists@3@01))))
(push) ; 8
; [then-branch: 37 | r1@104@01 in lists@3@01 && !(r1@104@01 in s@72@01) && r2@105@01 in lists@3@01 && !(r2@105@01 in s@72@01) && r1@104@01 != r2@105@01 | live]
; [else-branch: 37 | !(r1@104@01 in lists@3@01 && !(r1@104@01 in s@72@01) && r2@105@01 in lists@3@01 && !(r2@105@01 in s@72@01) && r1@104@01 != r2@105@01) | live]
(push) ; 9
; [then-branch: 37 | r1@104@01 in lists@3@01 && !(r1@104@01 in s@72@01) && r2@105@01 in lists@3@01 && !(r2@105@01 in s@72@01) && r1@104@01 != r2@105@01]
(assert (and
  (Set_in r1@104@01 lists@3@01)
  (and
    (not (Set_in r1@104@01 s@72@01))
    (and
      (Set_in r2@105@01 lists@3@01)
      (and (not (Set_in r2@105@01 s@72@01)) (not (= r1@104@01 r2@105@01)))))))
; [eval] r1.next != r2.next
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r l@59@01)
      (=
        ($FVF.lookup_next (as sm@102@01  $FVF<next>) r)
        ($FVF.lookup_next (as sm@66@01  $FVF<next>) r)))
    :pattern (($FVF.lookup_next (as sm@102@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next (as sm@66@01  $FVF<next>) r))
    :qid |qp.fvfValDef11|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@27@01 r)
        (and
          (Set_in (inv@26@01 r) lists@3@01)
          (not (Set_in (inv@26@01 r) s@19@01))))
      (=
        ($FVF.lookup_next (as sm@102@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r)))
    :pattern (($FVF.lookup_next (as sm@102@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r))
    :qid |qp.fvfValDef12|))))
(push) ; 10
(assert (not (<
  $Perm.No
  (+
    (ite (= r1@104@01 l@59@01) $Perm.Write $Perm.No)
    (ite
      (and
        (img@27@01 r1@104@01)
        (and
          (Set_in (inv@26@01 r1@104@01) lists@3@01)
          (not (Set_in (inv@26@01 r1@104@01) s@19@01))))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r l@59@01)
      (=
        ($FVF.lookup_next (as sm@102@01  $FVF<next>) r)
        ($FVF.lookup_next (as sm@66@01  $FVF<next>) r)))
    :pattern (($FVF.lookup_next (as sm@102@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next (as sm@66@01  $FVF<next>) r))
    :qid |qp.fvfValDef11|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@27@01 r)
        (and
          (Set_in (inv@26@01 r) lists@3@01)
          (not (Set_in (inv@26@01 r) s@19@01))))
      (=
        ($FVF.lookup_next (as sm@102@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r)))
    :pattern (($FVF.lookup_next (as sm@102@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r))
    :qid |qp.fvfValDef12|))))
(push) ; 10
(assert (not (<
  $Perm.No
  (+
    (ite (= r2@105@01 l@59@01) $Perm.Write $Perm.No)
    (ite
      (and
        (img@27@01 r2@105@01)
        (and
          (Set_in (inv@26@01 r2@105@01) lists@3@01)
          (not (Set_in (inv@26@01 r2@105@01) s@19@01))))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 37 | !(r1@104@01 in lists@3@01 && !(r1@104@01 in s@72@01) && r2@105@01 in lists@3@01 && !(r2@105@01 in s@72@01) && r1@104@01 != r2@105@01)]
(assert (not
  (and
    (Set_in r1@104@01 lists@3@01)
    (and
      (not (Set_in r1@104@01 s@72@01))
      (and
        (Set_in r2@105@01 lists@3@01)
        (and (not (Set_in r2@105@01 s@72@01)) (not (= r1@104@01 r2@105@01))))))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r l@59@01)
    (=
      ($FVF.lookup_next (as sm@102@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@66@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@102@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@66@01  $FVF<next>) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@27@01 r)
      (and
        (Set_in (inv@26@01 r) lists@3@01)
        (not (Set_in (inv@26@01 r) s@19@01))))
    (=
      ($FVF.lookup_next (as sm@102@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r)))
  :pattern (($FVF.lookup_next (as sm@102@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r))
  :qid |qp.fvfValDef12|)))
(assert (=>
  (and
    (Set_in r1@104@01 lists@3@01)
    (and
      (not (Set_in r1@104@01 s@72@01))
      (and
        (Set_in r2@105@01 lists@3@01)
        (and (not (Set_in r2@105@01 s@72@01)) (not (= r1@104@01 r2@105@01))))))
  (and
    (Set_in r1@104@01 lists@3@01)
    (not (Set_in r1@104@01 s@72@01))
    (Set_in r2@105@01 lists@3@01)
    (not (Set_in r2@105@01 s@72@01))
    (not (= r1@104@01 r2@105@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in r1@104@01 lists@3@01)
      (and
        (not (Set_in r1@104@01 s@72@01))
        (and
          (Set_in r2@105@01 lists@3@01)
          (and (not (Set_in r2@105@01 s@72@01)) (not (= r1@104@01 r2@105@01)))))))
  (and
    (Set_in r1@104@01 lists@3@01)
    (and
      (not (Set_in r1@104@01 s@72@01))
      (and
        (Set_in r2@105@01 lists@3@01)
        (and (not (Set_in r2@105@01 s@72@01)) (not (= r1@104@01 r2@105@01))))))))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (= r l@59@01)
    (=
      ($FVF.lookup_next (as sm@102@01  $FVF<next>) r)
      ($FVF.lookup_next (as sm@66@01  $FVF<next>) r)))
  :pattern (($FVF.lookup_next (as sm@102@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next (as sm@66@01  $FVF<next>) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@27@01 r)
      (and
        (Set_in (inv@26@01 r) lists@3@01)
        (not (Set_in (inv@26@01 r) s@19@01))))
    (=
      ($FVF.lookup_next (as sm@102@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r)))
  :pattern (($FVF.lookup_next (as sm@102@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r))
  :qid |qp.fvfValDef12|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r1@104@01 $Ref) (r2@105@01 $Ref)) (!
  (and
    (=>
      (Set_in r1@104@01 lists@3@01)
      (and
        (Set_in r1@104@01 lists@3@01)
        (=>
          (not (Set_in r1@104@01 s@72@01))
          (and
            (not (Set_in r1@104@01 s@72@01))
            (=>
              (Set_in r2@105@01 lists@3@01)
              (and
                (Set_in r2@105@01 lists@3@01)
                (or (not (Set_in r2@105@01 s@72@01)) (Set_in r2@105@01 s@72@01))))
            (or
              (Set_in r2@105@01 lists@3@01)
              (not (Set_in r2@105@01 lists@3@01)))))
        (or (not (Set_in r1@104@01 s@72@01)) (Set_in r1@104@01 s@72@01))))
    (or (Set_in r1@104@01 lists@3@01) (not (Set_in r1@104@01 lists@3@01)))
    (=>
      (and
        (Set_in r1@104@01 lists@3@01)
        (and
          (not (Set_in r1@104@01 s@72@01))
          (and
            (Set_in r2@105@01 lists@3@01)
            (and (not (Set_in r2@105@01 s@72@01)) (not (= r1@104@01 r2@105@01))))))
      (and
        (Set_in r1@104@01 lists@3@01)
        (not (Set_in r1@104@01 s@72@01))
        (Set_in r2@105@01 lists@3@01)
        (not (Set_in r2@105@01 s@72@01))
        (not (= r1@104@01 r2@105@01))))
    (or
      (not
        (and
          (Set_in r1@104@01 lists@3@01)
          (and
            (not (Set_in r1@104@01 s@72@01))
            (and
              (Set_in r2@105@01 lists@3@01)
              (and
                (not (Set_in r2@105@01 s@72@01))
                (not (= r1@104@01 r2@105@01)))))))
      (and
        (Set_in r1@104@01 lists@3@01)
        (and
          (not (Set_in r1@104@01 s@72@01))
          (and
            (Set_in r2@105@01 lists@3@01)
            (and (not (Set_in r2@105@01 s@72@01)) (not (= r1@104@01 r2@105@01))))))))
  :pattern ((Set_in r1@104@01 lists@3@01) (Set_in r2@105@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@36@15@36@131-aux|)))
(assert (forall ((r1@104@01 $Ref) (r2@105@01 $Ref)) (!
  (and
    (=>
      (Set_in r1@104@01 lists@3@01)
      (and
        (Set_in r1@104@01 lists@3@01)
        (=>
          (not (Set_in r1@104@01 s@72@01))
          (and
            (not (Set_in r1@104@01 s@72@01))
            (=>
              (Set_in r2@105@01 lists@3@01)
              (and
                (Set_in r2@105@01 lists@3@01)
                (or (not (Set_in r2@105@01 s@72@01)) (Set_in r2@105@01 s@72@01))))
            (or
              (Set_in r2@105@01 lists@3@01)
              (not (Set_in r2@105@01 lists@3@01)))))
        (or (not (Set_in r1@104@01 s@72@01)) (Set_in r1@104@01 s@72@01))))
    (or (Set_in r1@104@01 lists@3@01) (not (Set_in r1@104@01 lists@3@01)))
    (=>
      (and
        (Set_in r1@104@01 lists@3@01)
        (and
          (not (Set_in r1@104@01 s@72@01))
          (and
            (Set_in r2@105@01 lists@3@01)
            (and (not (Set_in r2@105@01 s@72@01)) (not (= r1@104@01 r2@105@01))))))
      (and
        (Set_in r1@104@01 lists@3@01)
        (not (Set_in r1@104@01 s@72@01))
        (Set_in r2@105@01 lists@3@01)
        (not (Set_in r2@105@01 s@72@01))
        (not (= r1@104@01 r2@105@01))))
    (or
      (not
        (and
          (Set_in r1@104@01 lists@3@01)
          (and
            (not (Set_in r1@104@01 s@72@01))
            (and
              (Set_in r2@105@01 lists@3@01)
              (and
                (not (Set_in r2@105@01 s@72@01))
                (not (= r1@104@01 r2@105@01)))))))
      (and
        (Set_in r1@104@01 lists@3@01)
        (and
          (not (Set_in r1@104@01 s@72@01))
          (and
            (Set_in r2@105@01 lists@3@01)
            (and (not (Set_in r2@105@01 s@72@01)) (not (= r1@104@01 r2@105@01))))))))
  :pattern ((Set_in r1@104@01 lists@3@01) (Set_in r2@105@01 s@72@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@36@15@36@131-aux|)))
(assert (forall ((r1@104@01 $Ref) (r2@105@01 $Ref)) (!
  (and
    (=>
      (Set_in r1@104@01 lists@3@01)
      (and
        (Set_in r1@104@01 lists@3@01)
        (=>
          (not (Set_in r1@104@01 s@72@01))
          (and
            (not (Set_in r1@104@01 s@72@01))
            (=>
              (Set_in r2@105@01 lists@3@01)
              (and
                (Set_in r2@105@01 lists@3@01)
                (or (not (Set_in r2@105@01 s@72@01)) (Set_in r2@105@01 s@72@01))))
            (or
              (Set_in r2@105@01 lists@3@01)
              (not (Set_in r2@105@01 lists@3@01)))))
        (or (not (Set_in r1@104@01 s@72@01)) (Set_in r1@104@01 s@72@01))))
    (or (Set_in r1@104@01 lists@3@01) (not (Set_in r1@104@01 lists@3@01)))
    (=>
      (and
        (Set_in r1@104@01 lists@3@01)
        (and
          (not (Set_in r1@104@01 s@72@01))
          (and
            (Set_in r2@105@01 lists@3@01)
            (and (not (Set_in r2@105@01 s@72@01)) (not (= r1@104@01 r2@105@01))))))
      (and
        (Set_in r1@104@01 lists@3@01)
        (not (Set_in r1@104@01 s@72@01))
        (Set_in r2@105@01 lists@3@01)
        (not (Set_in r2@105@01 s@72@01))
        (not (= r1@104@01 r2@105@01))))
    (or
      (not
        (and
          (Set_in r1@104@01 lists@3@01)
          (and
            (not (Set_in r1@104@01 s@72@01))
            (and
              (Set_in r2@105@01 lists@3@01)
              (and
                (not (Set_in r2@105@01 s@72@01))
                (not (= r1@104@01 r2@105@01)))))))
      (and
        (Set_in r1@104@01 lists@3@01)
        (and
          (not (Set_in r1@104@01 s@72@01))
          (and
            (Set_in r2@105@01 lists@3@01)
            (and (not (Set_in r2@105@01 s@72@01)) (not (= r1@104@01 r2@105@01))))))))
  :pattern ((Set_in r1@104@01 s@72@01) (Set_in r2@105@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@36@15@36@131-aux|)))
(assert (forall ((r1@104@01 $Ref) (r2@105@01 $Ref)) (!
  (and
    (=>
      (Set_in r1@104@01 lists@3@01)
      (and
        (Set_in r1@104@01 lists@3@01)
        (=>
          (not (Set_in r1@104@01 s@72@01))
          (and
            (not (Set_in r1@104@01 s@72@01))
            (=>
              (Set_in r2@105@01 lists@3@01)
              (and
                (Set_in r2@105@01 lists@3@01)
                (or (not (Set_in r2@105@01 s@72@01)) (Set_in r2@105@01 s@72@01))))
            (or
              (Set_in r2@105@01 lists@3@01)
              (not (Set_in r2@105@01 lists@3@01)))))
        (or (not (Set_in r1@104@01 s@72@01)) (Set_in r1@104@01 s@72@01))))
    (or (Set_in r1@104@01 lists@3@01) (not (Set_in r1@104@01 lists@3@01)))
    (=>
      (and
        (Set_in r1@104@01 lists@3@01)
        (and
          (not (Set_in r1@104@01 s@72@01))
          (and
            (Set_in r2@105@01 lists@3@01)
            (and (not (Set_in r2@105@01 s@72@01)) (not (= r1@104@01 r2@105@01))))))
      (and
        (Set_in r1@104@01 lists@3@01)
        (not (Set_in r1@104@01 s@72@01))
        (Set_in r2@105@01 lists@3@01)
        (not (Set_in r2@105@01 s@72@01))
        (not (= r1@104@01 r2@105@01))))
    (or
      (not
        (and
          (Set_in r1@104@01 lists@3@01)
          (and
            (not (Set_in r1@104@01 s@72@01))
            (and
              (Set_in r2@105@01 lists@3@01)
              (and
                (not (Set_in r2@105@01 s@72@01))
                (not (= r1@104@01 r2@105@01)))))))
      (and
        (Set_in r1@104@01 lists@3@01)
        (and
          (not (Set_in r1@104@01 s@72@01))
          (and
            (Set_in r2@105@01 lists@3@01)
            (and (not (Set_in r2@105@01 s@72@01)) (not (= r1@104@01 r2@105@01))))))))
  :pattern ((Set_in r1@104@01 s@72@01) (Set_in r2@105@01 s@72@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@36@15@36@131-aux|)))
(push) ; 7
(assert (not (forall ((r1@104@01 $Ref) (r2@105@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@104@01 lists@3@01)
      (and
        (not (Set_in r1@104@01 s@72@01))
        (and
          (Set_in r2@105@01 lists@3@01)
          (and (not (Set_in r2@105@01 s@72@01)) (not (= r1@104@01 r2@105@01))))))
    (not
      (=
        ($FVF.lookup_next (as sm@102@01  $FVF<next>) r1@104@01)
        ($FVF.lookup_next (as sm@102@01  $FVF<next>) r2@105@01))))
  :pattern ((Set_in r1@104@01 lists@3@01) (Set_in r2@105@01 lists@3@01))
  :pattern ((Set_in r1@104@01 lists@3@01) (Set_in r2@105@01 s@72@01))
  :pattern ((Set_in r1@104@01 s@72@01) (Set_in r2@105@01 lists@3@01))
  :pattern ((Set_in r1@104@01 s@72@01) (Set_in r2@105@01 s@72@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@36@15@36@131|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (forall ((r1@104@01 $Ref) (r2@105@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@104@01 lists@3@01)
      (and
        (not (Set_in r1@104@01 s@72@01))
        (and
          (Set_in r2@105@01 lists@3@01)
          (and (not (Set_in r2@105@01 s@72@01)) (not (= r1@104@01 r2@105@01))))))
    (not
      (=
        ($FVF.lookup_next (as sm@102@01  $FVF<next>) r1@104@01)
        ($FVF.lookup_next (as sm@102@01  $FVF<next>) r2@105@01))))
  :pattern ((Set_in r1@104@01 lists@3@01) (Set_in r2@105@01 lists@3@01))
  :pattern ((Set_in r1@104@01 lists@3@01) (Set_in r2@105@01 s@72@01))
  :pattern ((Set_in r1@104@01 s@72@01) (Set_in r2@105@01 lists@3@01))
  :pattern ((Set_in r1@104@01 s@72@01) (Set_in r2@105@01 s@72@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@36@15@36@131|)))
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 23 | !(|s@19@01| > 0)]
(assert (not (> (Set_card s@19@01) 0)))
(pop) ; 5
; [eval] !(|s| > 0)
; [eval] |s| > 0
; [eval] |s|
(push) ; 5
(set-option :timeout 10)
(assert (not (> (Set_card s@19@01) 0)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (> (Set_card s@19@01) 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 38 | !(|s@19@01| > 0) | live]
; [else-branch: 38 | |s@19@01| > 0 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 38 | !(|s@19@01| > 0)]
(assert (not (> (Set_card s@19@01) 0)))
; [eval] length - 1 > 0
; [eval] length - 1
(push) ; 6
(set-option :timeout 10)
(assert (not (not (> (- length@4@01 1) 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (> (- length@4@01 1) 0)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 39 | length@4@01 - 1 > 0 | live]
; [else-branch: 39 | !(length@4@01 - 1 > 0) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 39 | length@4@01 - 1 > 0]
(assert (> (- length@4@01 1) 0))
; [exec]
; m1(sNext, length - 1, v)
; [eval] length - 1
; [eval] length > 0
(declare-const r@106@01 $Ref)
(push) ; 7
; [eval] (r in lists)
(assert (Set_in r@106@01 sNext@20@01))
(pop) ; 7
(declare-fun inv@107@01 ($Ref Int) $Ref)
(declare-fun img@108@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((r1@106@01 $Ref) (r2@106@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@106@01 sNext@20@01)
      (Set_in r2@106@01 sNext@20@01)
      (= r1@106@01 r2@106@01))
    (= r1@106@01 r2@106@01))
  
  :qid |list-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@106@01 $Ref)) (!
  (=>
    (Set_in r@106@01 sNext@20@01)
    (and
      (= (inv@107@01 r@106@01 (- length@4@01 1)) r@106@01)
      (img@108@01 r@106@01 (- length@4@01 1))))
  :pattern ((Set_in r@106@01 sNext@20@01))
  :pattern ((inv@107@01 r@106@01 (- length@4@01 1)))
  :pattern ((img@108@01 r@106@01 (- length@4@01 1)))
  :qid |list-invOfFct|)))
(assert (forall ((r $Ref) (i Int)) (!
  (=>
    (and (img@108@01 r i) (Set_in (inv@107@01 r i) sNext@20@01))
    (and (= (inv@107@01 r i) r) (= (- length@4@01 1) i)))
  :pattern ((inv@107@01 r i))
  :qid |list-fctOfInv|)))
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r@106@01 $Ref)) (!
  (= (- length@4@01 1) length@4@01)
  
  :qid |quant-u-16968|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@109@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and
      (Set_in (inv@107@01 r i) sNext@20@01)
      (img@108@01 r i)
      (and (= r (inv@107@01 r i)) (= i (- length@4@01 1))))
    ($Perm.min
      (ite
        (and (img@30@01 r i) (Set_in (inv@29@01 r i) sNext@20@01))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@110@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and
      (Set_in (inv@107@01 r i) sNext@20@01)
      (img@108@01 r i)
      (and (= r (inv@107@01 r i)) (= i (- length@4@01 1))))
    ($Perm.min
      (ite
        (and (img@24@01 r i) (Set_in (inv@23@01 r i) s@19@01))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@109@01 r i)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and (img@30@01 r i) (Set_in (inv@29@01 r i) sNext@20@01))
        $Perm.Write
        $Perm.No)
      (pTaken@109@01 r i))
    $Perm.No)
  
  :qid |quant-u-16970|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and
      (Set_in (inv@107@01 r i) sNext@20@01)
      (img@108@01 r i)
      (and (= r (inv@107@01 r i)) (= i (- length@4@01 1))))
    (= (- $Perm.Write (pTaken@109@01 r i)) $Perm.No))
  
  :qid |quant-u-16971|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const $t@111@01 $Snap)
(assert (= $t@111@01 ($Snap.combine ($Snap.first $t@111@01) ($Snap.second $t@111@01))))
(declare-const r@112@01 $Ref)
(set-option :timeout 0)
(push) ; 7
; [eval] (r in lists)
(assert (Set_in r@112@01 sNext@20@01))
(pop) ; 7
(declare-fun inv@113@01 ($Ref Int) $Ref)
(declare-fun img@114@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((r1@112@01 $Ref) (r2@112@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@112@01 sNext@20@01)
      (Set_in r2@112@01 sNext@20@01)
      (= r1@112@01 r2@112@01))
    (= r1@112@01 r2@112@01))
  
  :qid |list-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@112@01 $Ref)) (!
  (=>
    (Set_in r@112@01 sNext@20@01)
    (and
      (= (inv@113@01 r@112@01 (- length@4@01 1)) r@112@01)
      (img@114@01 r@112@01 (- length@4@01 1))))
  :pattern ((Set_in r@112@01 sNext@20@01))
  :pattern ((inv@113@01 r@112@01 (- length@4@01 1)))
  :pattern ((img@114@01 r@112@01 (- length@4@01 1)))
  :qid |quant-u-16973|)))
(assert (forall ((r $Ref) (i Int)) (!
  (=>
    (and (img@114@01 r i) (Set_in (inv@113@01 r i) sNext@20@01))
    (and (= (inv@113@01 r i) r) (= (- length@4@01 1) i)))
  :pattern ((inv@113@01 r i))
  :qid |list-fctOfInv|)))
; Permissions are non-negative
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref) (i Int)) (!
  (and
    (= r@112@01 r@22@01)
    (=
      (and (img@114@01 r i) (Set_in (inv@113@01 r i) sNext@20@01))
      (and (img@24@01 r i) (Set_in (inv@23@01 r i) s@19@01))))
  
  :qid |quant-u-16974|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (= ($Snap.second $t@111@01) $Snap.unit))
; [eval] (forall r: Ref :: { (r in lists) } { allSet(r, length, v) } (r in lists) ==> allSet(r, length, v))
(declare-const r@115@01 $Ref)
(set-option :timeout 0)
(push) ; 7
; [eval] (r in lists) ==> allSet(r, length, v)
; [eval] (r in lists)
(push) ; 8
; [then-branch: 40 | r@115@01 in sNext@20@01 | live]
; [else-branch: 40 | !(r@115@01 in sNext@20@01) | live]
(push) ; 9
; [then-branch: 40 | r@115@01 in sNext@20@01]
(assert (Set_in r@115@01 sNext@20@01))
; [eval] allSet(r, length, v)
(push) ; 10
(push) ; 11
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and (= r r@115@01) (= i (- length@4@01 1)))
    (>
      (+
        (ite
          (and (img@24@01 r i) (Set_in (inv@23@01 r i) s@19@01))
          $Perm.Write
          $Perm.No)
        (ite
          (and (img@114@01 r i) (Set_in (inv@113@01 r i) sNext@20@01))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-16975|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(declare-const sm@116@01 $PSF<list>)
(declare-const s@117@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@24@01 r@115@01 (- length@4@01 1))
    (Set_in (inv@23@01 r@115@01 (- length@4@01 1)) s@19@01))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@115@01)
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@115@01)
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))
      ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@21@01)) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@115@01)
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))))))
(assert (=>
  (and
    (img@114@01 r@115@01 (- length@4@01 1))
    (Set_in (inv@113@01 r@115@01 (- length@4@01 1)) sNext@20@01))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@115@01)
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@115@01)
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))
      ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@111@01)) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@115@01)
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))))))
(assert (allSet%precondition ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap r@115@01)
  ($SortWrappers.IntTo$Snap (- length@4@01 1)))) r@115@01 (- length@4@01 1) v@5@01))
(pop) ; 10
; Joined path conditions
(assert (and
  (=>
    (and
      (img@24@01 r@115@01 (- length@4@01 1))
      (Set_in (inv@23@01 r@115@01 (- length@4@01 1)) s@19@01))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@115@01)
            ($SortWrappers.IntTo$Snap (- length@4@01 1)))
          $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@115@01)
          ($SortWrappers.IntTo$Snap (- length@4@01 1))))
        ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@21@01)) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@115@01)
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
  (=>
    (and
      (img@114@01 r@115@01 (- length@4@01 1))
      (Set_in (inv@113@01 r@115@01 (- length@4@01 1)) sNext@20@01))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@115@01)
            ($SortWrappers.IntTo$Snap (- length@4@01 1)))
          $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@115@01)
          ($SortWrappers.IntTo$Snap (- length@4@01 1))))
        ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@111@01)) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@115@01)
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
  (allSet%precondition ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@115@01)
    ($SortWrappers.IntTo$Snap (- length@4@01 1)))) r@115@01 (- length@4@01 1) v@5@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 40 | !(r@115@01 in sNext@20@01)]
(assert (not (Set_in r@115@01 sNext@20@01)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  (Set_in r@115@01 sNext@20@01)
  (and
    (Set_in r@115@01 sNext@20@01)
    (=>
      (and
        (img@24@01 r@115@01 (- length@4@01 1))
        (Set_in (inv@23@01 r@115@01 (- length@4@01 1)) s@19@01))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap r@115@01)
              ($SortWrappers.IntTo$Snap (- length@4@01 1)))
            $Snap.unit))
        (=
          ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@115@01)
            ($SortWrappers.IntTo$Snap (- length@4@01 1))))
          ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@21@01)) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@115@01)
            ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
    (=>
      (and
        (img@114@01 r@115@01 (- length@4@01 1))
        (Set_in (inv@113@01 r@115@01 (- length@4@01 1)) sNext@20@01))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap r@115@01)
              ($SortWrappers.IntTo$Snap (- length@4@01 1)))
            $Snap.unit))
        (=
          ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@115@01)
            ($SortWrappers.IntTo$Snap (- length@4@01 1))))
          ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@111@01)) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@115@01)
            ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
    (allSet%precondition ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@115@01)
      ($SortWrappers.IntTo$Snap (- length@4@01 1)))) r@115@01 (- length@4@01 1) v@5@01))))
; Joined path conditions
(assert (or (not (Set_in r@115@01 sNext@20@01)) (Set_in r@115@01 sNext@20@01)))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@115@01 $Ref)) (!
  (and
    (=>
      (Set_in r@115@01 sNext@20@01)
      (and
        (Set_in r@115@01 sNext@20@01)
        (=>
          (and
            (img@24@01 r@115@01 (- length@4@01 1))
            (Set_in (inv@23@01 r@115@01 (- length@4@01 1)) s@19@01))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@115@01)
                  ($SortWrappers.IntTo$Snap (- length@4@01 1)))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@115@01)
                ($SortWrappers.IntTo$Snap (- length@4@01 1))))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@21@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@115@01)
                ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
        (=>
          (and
            (img@114@01 r@115@01 (- length@4@01 1))
            (Set_in (inv@113@01 r@115@01 (- length@4@01 1)) sNext@20@01))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@115@01)
                  ($SortWrappers.IntTo$Snap (- length@4@01 1)))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@115@01)
                ($SortWrappers.IntTo$Snap (- length@4@01 1))))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@111@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@115@01)
                ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
        (allSet%precondition ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@115@01)
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))) r@115@01 (-
          length@4@01
          1) v@5@01)))
    (or (not (Set_in r@115@01 sNext@20@01)) (Set_in r@115@01 sNext@20@01)))
  :pattern ((Set_in r@115@01 sNext@20@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@26@9@26@85-aux|)))
(assert (forall ((r@115@01 $Ref)) (!
  (and
    (=>
      (Set_in r@115@01 sNext@20@01)
      (and
        (Set_in r@115@01 sNext@20@01)
        (=>
          (and
            (img@24@01 r@115@01 (- length@4@01 1))
            (Set_in (inv@23@01 r@115@01 (- length@4@01 1)) s@19@01))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@115@01)
                  ($SortWrappers.IntTo$Snap (- length@4@01 1)))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@115@01)
                ($SortWrappers.IntTo$Snap (- length@4@01 1))))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@21@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@115@01)
                ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
        (=>
          (and
            (img@114@01 r@115@01 (- length@4@01 1))
            (Set_in (inv@113@01 r@115@01 (- length@4@01 1)) sNext@20@01))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@115@01)
                  ($SortWrappers.IntTo$Snap (- length@4@01 1)))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@115@01)
                ($SortWrappers.IntTo$Snap (- length@4@01 1))))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@111@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@115@01)
                ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
        (allSet%precondition ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@115@01)
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))) r@115@01 (-
          length@4@01
          1) v@5@01)))
    (or (not (Set_in r@115@01 sNext@20@01)) (Set_in r@115@01 sNext@20@01)))
  :pattern ((allSet%limited ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@115@01)
    ($SortWrappers.IntTo$Snap (- length@4@01 1)))) r@115@01 (- length@4@01 1) v@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@26@9@26@85-aux|)))
(assert (forall ((r@115@01 $Ref)) (!
  (=>
    (Set_in r@115@01 sNext@20@01)
    (allSet ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@115@01)
      ($SortWrappers.IntTo$Snap (- length@4@01 1)))) r@115@01 (- length@4@01 1) v@5@01))
  :pattern ((Set_in r@115@01 sNext@20@01))
  :pattern ((allSet%limited ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@115@01)
    ($SortWrappers.IntTo$Snap (- length@4@01 1)))) r@115@01 (- length@4@01 1) v@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@26@9@26@85|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; s := lists
(declare-const s@118@01 Set<$Ref>)
(set-option :timeout 0)
(push) ; 7
; Loop head block: Check well-definedness of invariant
(declare-const $t@119@01 $Snap)
(assert (= $t@119@01 ($Snap.combine ($Snap.first $t@119@01) ($Snap.second $t@119@01))))
(declare-const r@120@01 $Ref)
(push) ; 8
; [eval] (r in lists) && !((r in s))
; [eval] (r in lists)
(push) ; 9
; [then-branch: 41 | !(r@120@01 in lists@3@01) | live]
; [else-branch: 41 | r@120@01 in lists@3@01 | live]
(push) ; 10
; [then-branch: 41 | !(r@120@01 in lists@3@01)]
(assert (not (Set_in r@120@01 lists@3@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 41 | r@120@01 in lists@3@01]
(assert (Set_in r@120@01 lists@3@01))
; [eval] !((r in s))
; [eval] (r in s)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (Set_in r@120@01 lists@3@01) (not (Set_in r@120@01 lists@3@01))))
(assert (and (Set_in r@120@01 lists@3@01) (not (Set_in r@120@01 s@118@01))))
(pop) ; 8
(declare-fun inv@121@01 ($Ref Int) $Ref)
(declare-fun img@122@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((r@120@01 $Ref)) (!
  (=>
    (and (Set_in r@120@01 lists@3@01) (not (Set_in r@120@01 s@118@01)))
    (or (Set_in r@120@01 lists@3@01) (not (Set_in r@120@01 lists@3@01))))
  :pattern ((Set_in r@120@01 lists@3@01))
  :pattern ((Set_in r@120@01 s@118@01))
  :pattern ((inv@121@01 r@120@01 length@4@01))
  :pattern ((img@122@01 r@120@01 length@4@01))
  :qid |list-aux|)))
; Check receiver injectivity
(push) ; 8
(assert (not (forall ((r1@120@01 $Ref) (r2@120@01 $Ref)) (!
  (=>
    (and
      (and (Set_in r1@120@01 lists@3@01) (not (Set_in r1@120@01 s@118@01)))
      (and (Set_in r2@120@01 lists@3@01) (not (Set_in r2@120@01 s@118@01)))
      (= r1@120@01 r2@120@01))
    (= r1@120@01 r2@120@01))
  
  :qid |list-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@120@01 $Ref)) (!
  (=>
    (and (Set_in r@120@01 lists@3@01) (not (Set_in r@120@01 s@118@01)))
    (and
      (= (inv@121@01 r@120@01 length@4@01) r@120@01)
      (img@122@01 r@120@01 length@4@01)))
  :pattern ((Set_in r@120@01 lists@3@01))
  :pattern ((Set_in r@120@01 s@118@01))
  :pattern ((inv@121@01 r@120@01 length@4@01))
  :pattern ((img@122@01 r@120@01 length@4@01))
  :qid |quant-u-16977|)))
(assert (forall ((r $Ref) (i Int)) (!
  (=>
    (and
      (img@122@01 r i)
      (and
        (Set_in (inv@121@01 r i) lists@3@01)
        (not (Set_in (inv@121@01 r i) s@118@01))))
    (and (= (inv@121@01 r i) r) (= length@4@01 i)))
  :pattern ((inv@121@01 r i))
  :qid |list-fctOfInv|)))
; Permissions are non-negative
(assert (=
  ($Snap.second $t@119@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@119@01))
    ($Snap.second ($Snap.second $t@119@01)))))
(assert (= ($Snap.first ($Snap.second $t@119@01)) $Snap.unit))
; [eval] (forall r: Ref :: { (r in lists) } { (r in s) } { allSet(r, length, v) } (r in lists) && !((r in s)) ==> allSet(r, length, v))
(declare-const r@123@01 $Ref)
(push) ; 8
; [eval] (r in lists) && !((r in s)) ==> allSet(r, length, v)
; [eval] (r in lists) && !((r in s))
; [eval] (r in lists)
(push) ; 9
; [then-branch: 42 | !(r@123@01 in lists@3@01) | live]
; [else-branch: 42 | r@123@01 in lists@3@01 | live]
(push) ; 10
; [then-branch: 42 | !(r@123@01 in lists@3@01)]
(assert (not (Set_in r@123@01 lists@3@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 42 | r@123@01 in lists@3@01]
(assert (Set_in r@123@01 lists@3@01))
; [eval] !((r in s))
; [eval] (r in s)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (Set_in r@123@01 lists@3@01) (not (Set_in r@123@01 lists@3@01))))
(push) ; 9
; [then-branch: 43 | r@123@01 in lists@3@01 && !(r@123@01 in s@118@01) | live]
; [else-branch: 43 | !(r@123@01 in lists@3@01 && !(r@123@01 in s@118@01)) | live]
(push) ; 10
; [then-branch: 43 | r@123@01 in lists@3@01 && !(r@123@01 in s@118@01)]
(assert (and (Set_in r@123@01 lists@3@01) (not (Set_in r@123@01 s@118@01))))
; [eval] allSet(r, length, v)
(push) ; 11
(push) ; 12
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and (= r r@123@01) (= i length@4@01))
    (>
      (ite
        (and
          (img@122@01 r i)
          (and
            (Set_in (inv@121@01 r i) lists@3@01)
            (not (Set_in (inv@121@01 r i) s@118@01))))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-16978|))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(declare-const sm@124@01 $PSF<list>)
(declare-const s@125@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@122@01 r@123@01 length@4@01)
    (and
      (Set_in (inv@121@01 r@123@01 length@4@01) lists@3@01)
      (not (Set_in (inv@121@01 r@123@01 length@4@01) s@118@01))))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@123@01)
          ($SortWrappers.IntTo$Snap length@4@01))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@124@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@123@01)
        ($SortWrappers.IntTo$Snap length@4@01)))
      ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@119@01)) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@123@01)
        ($SortWrappers.IntTo$Snap length@4@01)))))))
(assert (allSet%precondition ($PSF.lookup_list (as sm@124@01  $PSF<list>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap r@123@01)
  ($SortWrappers.IntTo$Snap length@4@01))) r@123@01 length@4@01 v@5@01))
(pop) ; 11
; Joined path conditions
(assert (and
  (=>
    (and
      (img@122@01 r@123@01 length@4@01)
      (and
        (Set_in (inv@121@01 r@123@01 length@4@01) lists@3@01)
        (not (Set_in (inv@121@01 r@123@01 length@4@01) s@118@01))))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@123@01)
            ($SortWrappers.IntTo$Snap length@4@01))
          $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@124@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@123@01)
          ($SortWrappers.IntTo$Snap length@4@01)))
        ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@119@01)) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@123@01)
          ($SortWrappers.IntTo$Snap length@4@01))))))
  (allSet%precondition ($PSF.lookup_list (as sm@124@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@123@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@123@01 length@4@01 v@5@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 43 | !(r@123@01 in lists@3@01 && !(r@123@01 in s@118@01))]
(assert (not (and (Set_in r@123@01 lists@3@01) (not (Set_in r@123@01 s@118@01)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (and (Set_in r@123@01 lists@3@01) (not (Set_in r@123@01 s@118@01)))
  (and
    (Set_in r@123@01 lists@3@01)
    (not (Set_in r@123@01 s@118@01))
    (=>
      (and
        (img@122@01 r@123@01 length@4@01)
        (and
          (Set_in (inv@121@01 r@123@01 length@4@01) lists@3@01)
          (not (Set_in (inv@121@01 r@123@01 length@4@01) s@118@01))))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap r@123@01)
              ($SortWrappers.IntTo$Snap length@4@01))
            $Snap.unit))
        (=
          ($PSF.lookup_list (as sm@124@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@123@01)
            ($SortWrappers.IntTo$Snap length@4@01)))
          ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@119@01)) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@123@01)
            ($SortWrappers.IntTo$Snap length@4@01))))))
    (allSet%precondition ($PSF.lookup_list (as sm@124@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@123@01)
      ($SortWrappers.IntTo$Snap length@4@01))) r@123@01 length@4@01 v@5@01))))
; Joined path conditions
(assert (or
  (not (and (Set_in r@123@01 lists@3@01) (not (Set_in r@123@01 s@118@01))))
  (and (Set_in r@123@01 lists@3@01) (not (Set_in r@123@01 s@118@01)))))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@123@01 $Ref)) (!
  (and
    (or (Set_in r@123@01 lists@3@01) (not (Set_in r@123@01 lists@3@01)))
    (=>
      (and (Set_in r@123@01 lists@3@01) (not (Set_in r@123@01 s@118@01)))
      (and
        (Set_in r@123@01 lists@3@01)
        (not (Set_in r@123@01 s@118@01))
        (=>
          (and
            (img@122@01 r@123@01 length@4@01)
            (and
              (Set_in (inv@121@01 r@123@01 length@4@01) lists@3@01)
              (not (Set_in (inv@121@01 r@123@01 length@4@01) s@118@01))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@123@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@124@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@123@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@119@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@123@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (allSet%precondition ($PSF.lookup_list (as sm@124@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@123@01)
          ($SortWrappers.IntTo$Snap length@4@01))) r@123@01 length@4@01 v@5@01)))
    (or
      (not (and (Set_in r@123@01 lists@3@01) (not (Set_in r@123@01 s@118@01))))
      (and (Set_in r@123@01 lists@3@01) (not (Set_in r@123@01 s@118@01)))))
  :pattern ((Set_in r@123@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85-aux|)))
(assert (forall ((r@123@01 $Ref)) (!
  (and
    (or (Set_in r@123@01 lists@3@01) (not (Set_in r@123@01 lists@3@01)))
    (=>
      (and (Set_in r@123@01 lists@3@01) (not (Set_in r@123@01 s@118@01)))
      (and
        (Set_in r@123@01 lists@3@01)
        (not (Set_in r@123@01 s@118@01))
        (=>
          (and
            (img@122@01 r@123@01 length@4@01)
            (and
              (Set_in (inv@121@01 r@123@01 length@4@01) lists@3@01)
              (not (Set_in (inv@121@01 r@123@01 length@4@01) s@118@01))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@123@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@124@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@123@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@119@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@123@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (allSet%precondition ($PSF.lookup_list (as sm@124@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@123@01)
          ($SortWrappers.IntTo$Snap length@4@01))) r@123@01 length@4@01 v@5@01)))
    (or
      (not (and (Set_in r@123@01 lists@3@01) (not (Set_in r@123@01 s@118@01))))
      (and (Set_in r@123@01 lists@3@01) (not (Set_in r@123@01 s@118@01)))))
  :pattern ((Set_in r@123@01 s@118@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85-aux|)))
(assert (forall ((r@123@01 $Ref)) (!
  (and
    (or (Set_in r@123@01 lists@3@01) (not (Set_in r@123@01 lists@3@01)))
    (=>
      (and (Set_in r@123@01 lists@3@01) (not (Set_in r@123@01 s@118@01)))
      (and
        (Set_in r@123@01 lists@3@01)
        (not (Set_in r@123@01 s@118@01))
        (=>
          (and
            (img@122@01 r@123@01 length@4@01)
            (and
              (Set_in (inv@121@01 r@123@01 length@4@01) lists@3@01)
              (not (Set_in (inv@121@01 r@123@01 length@4@01) s@118@01))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@123@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@124@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@123@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@119@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@123@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (allSet%precondition ($PSF.lookup_list (as sm@124@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@123@01)
          ($SortWrappers.IntTo$Snap length@4@01))) r@123@01 length@4@01 v@5@01)))
    (or
      (not (and (Set_in r@123@01 lists@3@01) (not (Set_in r@123@01 s@118@01))))
      (and (Set_in r@123@01 lists@3@01) (not (Set_in r@123@01 s@118@01)))))
  :pattern ((allSet%limited ($PSF.lookup_list (as sm@124@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@123@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@123@01 length@4@01 v@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85-aux|)))
(assert (forall ((r@123@01 $Ref)) (!
  (=>
    (and (Set_in r@123@01 lists@3@01) (not (Set_in r@123@01 s@118@01)))
    (allSet ($PSF.lookup_list (as sm@124@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@123@01)
      ($SortWrappers.IntTo$Snap length@4@01))) r@123@01 length@4@01 v@5@01))
  :pattern ((Set_in r@123@01 lists@3@01))
  :pattern ((Set_in r@123@01 s@118@01))
  :pattern ((allSet%limited ($PSF.lookup_list (as sm@124@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@123@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@123@01 length@4@01 v@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85|)))
(assert (=
  ($Snap.second ($Snap.second $t@119@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@119@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@119@01))))))
(declare-const r@126@01 $Ref)
(push) ; 8
; [eval] (r in s)
(assert (Set_in r@126@01 s@118@01))
(pop) ; 8
(declare-fun inv@127@01 ($Ref) $Ref)
(declare-fun img@128@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 8
(assert (not (forall ((r1@126@01 $Ref) (r2@126@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@126@01 s@118@01)
      (Set_in r2@126@01 s@118@01)
      (= r1@126@01 r2@126@01))
    (= r1@126@01 r2@126@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@126@01 $Ref)) (!
  (=>
    (Set_in r@126@01 s@118@01)
    (and (= (inv@127@01 r@126@01) r@126@01) (img@128@01 r@126@01)))
  :pattern ((Set_in r@126@01 s@118@01))
  :pattern ((inv@127@01 r@126@01))
  :pattern ((img@128@01 r@126@01))
  :qid |quant-u-16980|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@128@01 r) (Set_in (inv@127@01 r) s@118@01)) (= (inv@127@01 r) r))
  :pattern ((inv@127@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((r@126@01 $Ref)) (!
  (=> (Set_in r@126@01 s@118@01) (not (= r@126@01 $Ref.null)))
  :pattern ((Set_in r@126@01 s@118@01))
  :pattern ((inv@127@01 r@126@01))
  :pattern ((img@128@01 r@126@01))
  :qid |val-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@119@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@119@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@119@01))))
  $Snap.unit))
; [eval] (forall r: Ref :: { (r in s) } (r in s) ==> r.val == v)
(declare-const r@129@01 $Ref)
(push) ; 8
; [eval] (r in s) ==> r.val == v
; [eval] (r in s)
(push) ; 9
; [then-branch: 44 | r@129@01 in s@118@01 | live]
; [else-branch: 44 | !(r@129@01 in s@118@01) | live]
(push) ; 10
; [then-branch: 44 | r@129@01 in s@118@01]
(assert (Set_in r@129@01 s@118@01))
; [eval] r.val == v
(push) ; 11
(assert (not (and (img@128@01 r@129@01) (Set_in (inv@127@01 r@129@01) s@118@01))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(pop) ; 10
(push) ; 10
; [else-branch: 44 | !(r@129@01 in s@118@01)]
(assert (not (Set_in r@129@01 s@118@01)))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in r@129@01 s@118@01)) (Set_in r@129@01 s@118@01)))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@129@01 $Ref)) (!
  (or (not (Set_in r@129@01 s@118@01)) (Set_in r@129@01 s@118@01))
  :pattern ((Set_in r@129@01 s@118@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@54@19@54@86-aux|)))
(assert (forall ((r@129@01 $Ref)) (!
  (=>
    (Set_in r@129@01 s@118@01)
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@119@01)))) r@129@01)
      v@5@01))
  :pattern ((Set_in r@129@01 s@118@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@54@19@54@86|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01))))))))
(declare-const r@130@01 $Ref)
(push) ; 8
; [eval] (r in s)
(assert (Set_in r@130@01 s@118@01))
(pop) ; 8
(declare-fun inv@131@01 ($Ref) $Ref)
(declare-fun img@132@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 8
(assert (not (forall ((r1@130@01 $Ref) (r2@130@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@130@01 s@118@01)
      (Set_in r2@130@01 s@118@01)
      (= r1@130@01 r2@130@01))
    (= r1@130@01 r2@130@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@130@01 $Ref)) (!
  (=>
    (Set_in r@130@01 s@118@01)
    (and (= (inv@131@01 r@130@01) r@130@01) (img@132@01 r@130@01)))
  :pattern ((Set_in r@130@01 s@118@01))
  :pattern ((inv@131@01 r@130@01))
  :pattern ((img@132@01 r@130@01))
  :qid |quant-u-16982|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@132@01 r) (Set_in (inv@131@01 r) s@118@01)) (= (inv@131@01 r) r))
  :pattern ((inv@131@01 r))
  :qid |next-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((r@130@01 $Ref)) (!
  (=> (Set_in r@130@01 s@118@01) (not (= r@130@01 $Ref.null)))
  :pattern ((Set_in r@130@01 s@118@01))
  :pattern ((inv@131@01 r@130@01))
  :pattern ((img@132@01 r@130@01))
  :qid |next-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01))))))
  $Snap.unit))
; [eval] (forall r1: Ref, r2: Ref :: { (r1 in s), (r2 in s) } (r1 in s) && ((r2 in s) && r1 != r2) ==> r1.next != r2.next)
(declare-const r1@133@01 $Ref)
(declare-const r2@134@01 $Ref)
(push) ; 8
; [eval] (r1 in s) && ((r2 in s) && r1 != r2) ==> r1.next != r2.next
; [eval] (r1 in s) && ((r2 in s) && r1 != r2)
; [eval] (r1 in s)
(push) ; 9
; [then-branch: 45 | !(r1@133@01 in s@118@01) | live]
; [else-branch: 45 | r1@133@01 in s@118@01 | live]
(push) ; 10
; [then-branch: 45 | !(r1@133@01 in s@118@01)]
(assert (not (Set_in r1@133@01 s@118@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 45 | r1@133@01 in s@118@01]
(assert (Set_in r1@133@01 s@118@01))
; [eval] (r2 in s)
(push) ; 11
; [then-branch: 46 | !(r2@134@01 in s@118@01) | live]
; [else-branch: 46 | r2@134@01 in s@118@01 | live]
(push) ; 12
; [then-branch: 46 | !(r2@134@01 in s@118@01)]
(assert (not (Set_in r2@134@01 s@118@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 46 | r2@134@01 in s@118@01]
(assert (Set_in r2@134@01 s@118@01))
; [eval] r1 != r2
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (Set_in r2@134@01 s@118@01) (not (Set_in r2@134@01 s@118@01))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in r1@133@01 s@118@01)
  (and
    (Set_in r1@133@01 s@118@01)
    (or (Set_in r2@134@01 s@118@01) (not (Set_in r2@134@01 s@118@01))))))
(assert (or (Set_in r1@133@01 s@118@01) (not (Set_in r1@133@01 s@118@01))))
(push) ; 9
; [then-branch: 47 | r1@133@01 in s@118@01 && r2@134@01 in s@118@01 && r1@133@01 != r2@134@01 | live]
; [else-branch: 47 | !(r1@133@01 in s@118@01 && r2@134@01 in s@118@01 && r1@133@01 != r2@134@01) | live]
(push) ; 10
; [then-branch: 47 | r1@133@01 in s@118@01 && r2@134@01 in s@118@01 && r1@133@01 != r2@134@01]
(assert (and
  (Set_in r1@133@01 s@118@01)
  (and (Set_in r2@134@01 s@118@01) (not (= r1@133@01 r2@134@01)))))
; [eval] r1.next != r2.next
(push) ; 11
(assert (not (and (img@132@01 r1@133@01) (Set_in (inv@131@01 r1@133@01) s@118@01))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (and (img@132@01 r2@134@01) (Set_in (inv@131@01 r2@134@01) s@118@01))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(pop) ; 10
(push) ; 10
; [else-branch: 47 | !(r1@133@01 in s@118@01 && r2@134@01 in s@118@01 && r1@133@01 != r2@134@01)]
(assert (not
  (and
    (Set_in r1@133@01 s@118@01)
    (and (Set_in r2@134@01 s@118@01) (not (= r1@133@01 r2@134@01))))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (and
    (Set_in r1@133@01 s@118@01)
    (and (Set_in r2@134@01 s@118@01) (not (= r1@133@01 r2@134@01))))
  (and
    (Set_in r1@133@01 s@118@01)
    (Set_in r2@134@01 s@118@01)
    (not (= r1@133@01 r2@134@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in r1@133@01 s@118@01)
      (and (Set_in r2@134@01 s@118@01) (not (= r1@133@01 r2@134@01)))))
  (and
    (Set_in r1@133@01 s@118@01)
    (and (Set_in r2@134@01 s@118@01) (not (= r1@133@01 r2@134@01))))))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r1@133@01 $Ref) (r2@134@01 $Ref)) (!
  (and
    (=>
      (Set_in r1@133@01 s@118@01)
      (and
        (Set_in r1@133@01 s@118@01)
        (or (Set_in r2@134@01 s@118@01) (not (Set_in r2@134@01 s@118@01)))))
    (or (Set_in r1@133@01 s@118@01) (not (Set_in r1@133@01 s@118@01)))
    (=>
      (and
        (Set_in r1@133@01 s@118@01)
        (and (Set_in r2@134@01 s@118@01) (not (= r1@133@01 r2@134@01))))
      (and
        (Set_in r1@133@01 s@118@01)
        (Set_in r2@134@01 s@118@01)
        (not (= r1@133@01 r2@134@01))))
    (or
      (not
        (and
          (Set_in r1@133@01 s@118@01)
          (and (Set_in r2@134@01 s@118@01) (not (= r1@133@01 r2@134@01)))))
      (and
        (Set_in r1@133@01 s@118@01)
        (and (Set_in r2@134@01 s@118@01) (not (= r1@133@01 r2@134@01))))))
  :pattern ((Set_in r1@133@01 s@118@01) (Set_in r2@134@01 s@118@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@55@19@55@99-aux|)))
(assert (forall ((r1@133@01 $Ref) (r2@134@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@133@01 s@118@01)
      (and (Set_in r2@134@01 s@118@01) (not (= r1@133@01 r2@134@01))))
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r1@133@01)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r2@134@01))))
  :pattern ((Set_in r1@133@01 s@118@01) (Set_in r2@134@01 s@118@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@55@19@55@99|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01))))))))))
(declare-const r@135@01 $Ref)
(push) ; 8
; [eval] (r in s)
(assert (Set_in r@135@01 s@118@01))
(push) ; 9
(assert (not (and (img@132@01 r@135@01) (Set_in (inv@131@01 r@135@01) s@118@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] length - 1
(pop) ; 8
(declare-fun inv@136@01 ($Ref Int) $Ref)
(declare-fun img@137@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 8
(assert (not (forall ((r1@135@01 $Ref) (r2@135@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@135@01 s@118@01)
      (Set_in r2@135@01 s@118@01)
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r1@135@01)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r2@135@01)))
    (= r1@135@01 r2@135@01))
  
  :qid |list-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@135@01 $Ref)) (!
  (=>
    (Set_in r@135@01 s@118@01)
    (and
      (=
        (inv@136@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@135@01) (-
          length@4@01
          1))
        r@135@01)
      (img@137@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@135@01) (-
        length@4@01
        1))))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@135@01))
  :qid |quant-u-16984|)))
(assert (forall ((r $Ref) (i Int)) (!
  (=>
    (and (img@137@01 r i) (Set_in (inv@136@01 r i) s@118@01))
    (and
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) (inv@136@01 r i))
        r)
      (= (- length@4@01 1) i)))
  :pattern ((inv@136@01 r i))
  :qid |list-fctOfInv|)))
; Permissions are non-negative
(push) ; 8
(set-option :timeout 10)
(assert (not (forall ((r $Ref) (i Int)) (!
  (and
    (=
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@135@01)
      r@120@01)
    (=
      (and (img@137@01 r i) (Set_in (inv@136@01 r i) s@118@01))
      (and
        (img@122@01 r i)
        (and
          (Set_in (inv@121@01 r i) lists@3@01)
          (not (Set_in (inv@121@01 r i) s@118@01))))))
  
  :qid |quant-u-16985|))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))))
  $Snap.unit))
; [eval] (forall r: Ref :: { (r in s) } (r in s) ==> allSet(r.next, length - 1, v))
(declare-const r@138@01 $Ref)
(set-option :timeout 0)
(push) ; 8
; [eval] (r in s) ==> allSet(r.next, length - 1, v)
; [eval] (r in s)
(push) ; 9
; [then-branch: 48 | r@138@01 in s@118@01 | live]
; [else-branch: 48 | !(r@138@01 in s@118@01) | live]
(push) ; 10
; [then-branch: 48 | r@138@01 in s@118@01]
(assert (Set_in r@138@01 s@118@01))
; [eval] allSet(r.next, length - 1, v)
(push) ; 11
(assert (not (and (img@132@01 r@138@01) (Set_in (inv@131@01 r@138@01) s@118@01))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] length - 1
(push) ; 11
(push) ; 12
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and
      (=
        r
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
      (= i (- length@4@01 1)))
    (>
      (+
        (ite
          (and
            (img@122@01 r i)
            (and
              (Set_in (inv@121@01 r i) lists@3@01)
              (not (Set_in (inv@121@01 r i) s@118@01))))
          $Perm.Write
          $Perm.No)
        (ite
          (and (img@137@01 r i) (Set_in (inv@136@01 r i) s@118@01))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-16986|))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(declare-const sm@139@01 $PSF<list>)
(declare-const s@140@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@122@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01) (-
      length@4@01
      1))
    (and
      (Set_in (inv@121@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01) (-
        length@4@01
        1)) lists@3@01)
      (not
        (Set_in (inv@121@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01) (-
          length@4@01
          1)) s@118@01))))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@139@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))
      ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@119@01)) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))))))
(assert (=>
  (and
    (img@137@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01) (-
      length@4@01
      1))
    (Set_in (inv@136@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01) (-
      length@4@01
      1)) s@118@01))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@139@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))
      ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))))))
(assert (allSet%precondition ($PSF.lookup_list (as sm@139@01  $PSF<list>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
  ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01) (-
  length@4@01
  1) v@5@01))
(pop) ; 11
; Joined path conditions
(assert (and
  (=>
    (and
      (img@122@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01) (-
        length@4@01
        1))
      (and
        (Set_in (inv@121@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01) (-
          length@4@01
          1)) lists@3@01)
        (not
          (Set_in (inv@121@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01) (-
            length@4@01
            1)) s@118@01))))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1)))
          $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@139@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1))))
        ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@119@01)) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
  (=>
    (and
      (img@137@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01) (-
        length@4@01
        1))
      (Set_in (inv@136@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01) (-
        length@4@01
        1)) s@118@01))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1)))
          $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@139@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1))))
        ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))))) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
  (allSet%precondition ($PSF.lookup_list (as sm@139@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
    ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01) (-
    length@4@01
    1) v@5@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 48 | !(r@138@01 in s@118@01)]
(assert (not (Set_in r@138@01 s@118@01)))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (Set_in r@138@01 s@118@01)
  (and
    (Set_in r@138@01 s@118@01)
    (=>
      (and
        (img@122@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01) (-
          length@4@01
          1))
        (and
          (Set_in (inv@121@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01) (-
            length@4@01
            1)) lists@3@01)
          (not
            (Set_in (inv@121@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01) (-
              length@4@01
              1)) s@118@01))))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
              ($SortWrappers.IntTo$Snap (- length@4@01 1)))
            $Snap.unit))
        (=
          ($PSF.lookup_list (as sm@139@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1))))
          ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@119@01)) ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
    (=>
      (and
        (img@137@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01) (-
          length@4@01
          1))
        (Set_in (inv@136@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01) (-
          length@4@01
          1)) s@118@01))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
              ($SortWrappers.IntTo$Snap (- length@4@01 1)))
            $Snap.unit))
        (=
          ($PSF.lookup_list (as sm@139@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1))))
          ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))))) ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
    (allSet%precondition ($PSF.lookup_list (as sm@139@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
      ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01) (-
      length@4@01
      1) v@5@01))))
; Joined path conditions
(assert (or (not (Set_in r@138@01 s@118@01)) (Set_in r@138@01 s@118@01)))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@138@01 $Ref)) (!
  (and
    (=>
      (Set_in r@138@01 s@118@01)
      (and
        (Set_in r@138@01 s@118@01)
        (=>
          (and
            (img@122@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01) (-
              length@4@01
              1))
            (and
              (Set_in (inv@121@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01) (-
                length@4@01
                1)) lists@3@01)
              (not
                (Set_in (inv@121@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01) (-
                  length@4@01
                  1)) s@118@01))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
                  ($SortWrappers.IntTo$Snap (- length@4@01 1)))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@139@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
                ($SortWrappers.IntTo$Snap (- length@4@01 1))))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@119@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
                ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
        (=>
          (and
            (img@137@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01) (-
              length@4@01
              1))
            (Set_in (inv@136@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01) (-
              length@4@01
              1)) s@118@01))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
                  ($SortWrappers.IntTo$Snap (- length@4@01 1)))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@139@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
                ($SortWrappers.IntTo$Snap (- length@4@01 1))))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))))) ($Snap.combine
                ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
                ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
        (allSet%precondition ($PSF.lookup_list (as sm@139@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01) (-
          length@4@01
          1) v@5@01)))
    (or (not (Set_in r@138@01 s@118@01)) (Set_in r@138@01 s@118@01)))
  :pattern ((Set_in r@138@01 s@118@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@57@19@57@75-aux|)))
(assert (forall ((r@138@01 $Ref)) (!
  (=>
    (Set_in r@138@01 s@118@01)
    (allSet ($PSF.lookup_list (as sm@139@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
      ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01) (-
      length@4@01
      1) v@5@01))
  :pattern ((Set_in r@138@01 s@118@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@57@19@57@75|)))
(pop) ; 7
(push) ; 7
; Loop head block: Establish invariant
(declare-const r@141@01 $Ref)
(push) ; 8
; [eval] (r in lists) && !((r in s))
; [eval] (r in lists)
(push) ; 9
; [then-branch: 49 | !(r@141@01 in lists@3@01) | live]
; [else-branch: 49 | r@141@01 in lists@3@01 | live]
(push) ; 10
; [then-branch: 49 | !(r@141@01 in lists@3@01)]
(assert (not (Set_in r@141@01 lists@3@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 49 | r@141@01 in lists@3@01]
(assert (Set_in r@141@01 lists@3@01))
; [eval] !((r in s))
; [eval] (r in s)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (Set_in r@141@01 lists@3@01) (not (Set_in r@141@01 lists@3@01))))
(assert (and (Set_in r@141@01 lists@3@01) (not (Set_in r@141@01 lists@3@01))))
(pop) ; 8
(declare-fun inv@142@01 ($Ref Int) $Ref)
(declare-fun img@143@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((r@141@01 $Ref)) (!
  (=>
    (and (Set_in r@141@01 lists@3@01) (not (Set_in r@141@01 lists@3@01)))
    (or (Set_in r@141@01 lists@3@01) (not (Set_in r@141@01 lists@3@01))))
  :pattern ((Set_in r@141@01 lists@3@01))
  :pattern ((inv@142@01 r@141@01 length@4@01))
  :pattern ((img@143@01 r@141@01 length@4@01))
  :qid |list-aux|)))
; Check receiver injectivity
(push) ; 8
(assert (not (forall ((r1@141@01 $Ref) (r2@141@01 $Ref)) (!
  (=>
    (and
      (and (Set_in r1@141@01 lists@3@01) (not (Set_in r1@141@01 lists@3@01)))
      (and (Set_in r2@141@01 lists@3@01) (not (Set_in r2@141@01 lists@3@01)))
      (= r1@141@01 r2@141@01))
    (= r1@141@01 r2@141@01))
  
  :qid |list-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@141@01 $Ref)) (!
  (=>
    (and (Set_in r@141@01 lists@3@01) (not (Set_in r@141@01 lists@3@01)))
    (and
      (= (inv@142@01 r@141@01 length@4@01) r@141@01)
      (img@143@01 r@141@01 length@4@01)))
  :pattern ((Set_in r@141@01 lists@3@01))
  :pattern ((inv@142@01 r@141@01 length@4@01))
  :pattern ((img@143@01 r@141@01 length@4@01))
  :qid |list-invOfFct|)))
(assert (forall ((r $Ref) (i Int)) (!
  (=>
    (and
      (img@143@01 r i)
      (and
        (Set_in (inv@142@01 r i) lists@3@01)
        (not (Set_in (inv@142@01 r i) lists@3@01))))
    (and (= (inv@142@01 r i) r) (= length@4@01 i)))
  :pattern ((inv@142@01 r i))
  :qid |list-fctOfInv|)))
(push) ; 8
(set-option :timeout 10)
(assert (not (forall ((r@141@01 $Ref)) (!
  (= length@4@01 (- length@4@01 1))
  
  :qid |quant-u-16988|))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@144@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and
      (and
        (Set_in (inv@142@01 r i) lists@3@01)
        (not (Set_in (inv@142@01 r i) lists@3@01)))
      (img@143@01 r i)
      (and (= r (inv@142@01 r i)) (= i length@4@01)))
    ($Perm.min
      (ite
        (and (img@24@01 r i) (Set_in (inv@23@01 r i) s@19@01))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@145@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and
      (and
        (Set_in (inv@142@01 r i) lists@3@01)
        (not (Set_in (inv@142@01 r i) lists@3@01)))
      (img@143@01 r i)
      (and (= r (inv@142@01 r i)) (= i length@4@01)))
    ($Perm.min
      (ite
        (and (img@114@01 r i) (Set_in (inv@113@01 r i) sNext@20@01))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@144@01 r i)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and (img@24@01 r i) (Set_in (inv@23@01 r i) s@19@01))
        $Perm.Write
        $Perm.No)
      (pTaken@144@01 r i))
    $Perm.No)
  
  :qid |quant-u-16990|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and
      (and
        (Set_in (inv@142@01 r i) lists@3@01)
        (not (Set_in (inv@142@01 r i) lists@3@01)))
      (img@143@01 r i)
      (and (= r (inv@142@01 r i)) (= i length@4@01)))
    (= (- $Perm.Write (pTaken@144@01 r i)) $Perm.No))
  
  :qid |quant-u-16991|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall r: Ref :: { (r in lists) } { (r in s) } { allSet(r, length, v) } (r in lists) && !((r in s)) ==> allSet(r, length, v))
(declare-const r@146@01 $Ref)
(set-option :timeout 0)
(push) ; 8
; [eval] (r in lists) && !((r in s)) ==> allSet(r, length, v)
; [eval] (r in lists) && !((r in s))
; [eval] (r in lists)
(push) ; 9
; [then-branch: 50 | !(r@146@01 in lists@3@01) | live]
; [else-branch: 50 | r@146@01 in lists@3@01 | live]
(push) ; 10
; [then-branch: 50 | !(r@146@01 in lists@3@01)]
(assert (not (Set_in r@146@01 lists@3@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 50 | r@146@01 in lists@3@01]
(assert (Set_in r@146@01 lists@3@01))
; [eval] !((r in s))
; [eval] (r in s)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (Set_in r@146@01 lists@3@01) (not (Set_in r@146@01 lists@3@01))))
(push) ; 9
; [then-branch: 51 | r@146@01 in lists@3@01 && !(r@146@01 in lists@3@01) | live]
; [else-branch: 51 | !(r@146@01 in lists@3@01 && !(r@146@01 in lists@3@01)) | live]
(push) ; 10
; [then-branch: 51 | r@146@01 in lists@3@01 && !(r@146@01 in lists@3@01)]
(assert (and (Set_in r@146@01 lists@3@01) (not (Set_in r@146@01 lists@3@01))))
; [eval] allSet(r, length, v)
(push) ; 11
(push) ; 12
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and (= r r@146@01) (= i length@4@01))
    (>
      (+
        (ite
          (and (img@24@01 r i) (Set_in (inv@23@01 r i) s@19@01))
          $Perm.Write
          $Perm.No)
        (ite
          (and (img@114@01 r i) (Set_in (inv@113@01 r i) sNext@20@01))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-16992|))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@24@01 r@146@01 length@4@01)
    (Set_in (inv@23@01 r@146@01 length@4@01) s@19@01))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@146@01)
          ($SortWrappers.IntTo$Snap length@4@01))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@146@01)
        ($SortWrappers.IntTo$Snap length@4@01)))
      ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@21@01)) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@146@01)
        ($SortWrappers.IntTo$Snap length@4@01)))))))
(assert (=>
  (and
    (img@114@01 r@146@01 length@4@01)
    (Set_in (inv@113@01 r@146@01 length@4@01) sNext@20@01))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@146@01)
          ($SortWrappers.IntTo$Snap length@4@01))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@146@01)
        ($SortWrappers.IntTo$Snap length@4@01)))
      ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@111@01)) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@146@01)
        ($SortWrappers.IntTo$Snap length@4@01)))))))
(assert (allSet%precondition ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap r@146@01)
  ($SortWrappers.IntTo$Snap length@4@01))) r@146@01 length@4@01 v@5@01))
(pop) ; 11
; Joined path conditions
(assert (and
  (=>
    (and
      (img@24@01 r@146@01 length@4@01)
      (Set_in (inv@23@01 r@146@01 length@4@01) s@19@01))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@146@01)
            ($SortWrappers.IntTo$Snap length@4@01))
          $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@146@01)
          ($SortWrappers.IntTo$Snap length@4@01)))
        ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@21@01)) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@146@01)
          ($SortWrappers.IntTo$Snap length@4@01))))))
  (=>
    (and
      (img@114@01 r@146@01 length@4@01)
      (Set_in (inv@113@01 r@146@01 length@4@01) sNext@20@01))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@146@01)
            ($SortWrappers.IntTo$Snap length@4@01))
          $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@146@01)
          ($SortWrappers.IntTo$Snap length@4@01)))
        ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@111@01)) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@146@01)
          ($SortWrappers.IntTo$Snap length@4@01))))))
  (allSet%precondition ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@146@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@146@01 length@4@01 v@5@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 51 | !(r@146@01 in lists@3@01 && !(r@146@01 in lists@3@01))]
(assert (not (and (Set_in r@146@01 lists@3@01) (not (Set_in r@146@01 lists@3@01)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (and (Set_in r@146@01 lists@3@01) (not (Set_in r@146@01 lists@3@01)))
  (and
    (Set_in r@146@01 lists@3@01)
    (not (Set_in r@146@01 lists@3@01))
    (=>
      (and
        (img@24@01 r@146@01 length@4@01)
        (Set_in (inv@23@01 r@146@01 length@4@01) s@19@01))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap r@146@01)
              ($SortWrappers.IntTo$Snap length@4@01))
            $Snap.unit))
        (=
          ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@146@01)
            ($SortWrappers.IntTo$Snap length@4@01)))
          ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@21@01)) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@146@01)
            ($SortWrappers.IntTo$Snap length@4@01))))))
    (=>
      (and
        (img@114@01 r@146@01 length@4@01)
        (Set_in (inv@113@01 r@146@01 length@4@01) sNext@20@01))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap r@146@01)
              ($SortWrappers.IntTo$Snap length@4@01))
            $Snap.unit))
        (=
          ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@146@01)
            ($SortWrappers.IntTo$Snap length@4@01)))
          ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@111@01)) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@146@01)
            ($SortWrappers.IntTo$Snap length@4@01))))))
    (allSet%precondition ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@146@01)
      ($SortWrappers.IntTo$Snap length@4@01))) r@146@01 length@4@01 v@5@01))))
; Joined path conditions
(assert (or
  (not (and (Set_in r@146@01 lists@3@01) (not (Set_in r@146@01 lists@3@01))))
  (and (Set_in r@146@01 lists@3@01) (not (Set_in r@146@01 lists@3@01)))))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@146@01 $Ref)) (!
  (and
    (or (Set_in r@146@01 lists@3@01) (not (Set_in r@146@01 lists@3@01)))
    (=>
      (and (Set_in r@146@01 lists@3@01) (not (Set_in r@146@01 lists@3@01)))
      (and
        (Set_in r@146@01 lists@3@01)
        (not (Set_in r@146@01 lists@3@01))
        (=>
          (and
            (img@24@01 r@146@01 length@4@01)
            (Set_in (inv@23@01 r@146@01 length@4@01) s@19@01))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@146@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@146@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@21@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@146@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (=>
          (and
            (img@114@01 r@146@01 length@4@01)
            (Set_in (inv@113@01 r@146@01 length@4@01) sNext@20@01))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@146@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@146@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@111@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@146@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (allSet%precondition ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@146@01)
          ($SortWrappers.IntTo$Snap length@4@01))) r@146@01 length@4@01 v@5@01)))
    (or
      (not (and (Set_in r@146@01 lists@3@01) (not (Set_in r@146@01 lists@3@01))))
      (and (Set_in r@146@01 lists@3@01) (not (Set_in r@146@01 lists@3@01)))))
  :pattern ((Set_in r@146@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85-aux|)))
(assert (forall ((r@146@01 $Ref)) (!
  (and
    (or (Set_in r@146@01 lists@3@01) (not (Set_in r@146@01 lists@3@01)))
    (=>
      (and (Set_in r@146@01 lists@3@01) (not (Set_in r@146@01 lists@3@01)))
      (and
        (Set_in r@146@01 lists@3@01)
        (not (Set_in r@146@01 lists@3@01))
        (=>
          (and
            (img@24@01 r@146@01 length@4@01)
            (Set_in (inv@23@01 r@146@01 length@4@01) s@19@01))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@146@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@146@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@21@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@146@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (=>
          (and
            (img@114@01 r@146@01 length@4@01)
            (Set_in (inv@113@01 r@146@01 length@4@01) sNext@20@01))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@146@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@146@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@111@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@146@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (allSet%precondition ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@146@01)
          ($SortWrappers.IntTo$Snap length@4@01))) r@146@01 length@4@01 v@5@01)))
    (or
      (not (and (Set_in r@146@01 lists@3@01) (not (Set_in r@146@01 lists@3@01))))
      (and (Set_in r@146@01 lists@3@01) (not (Set_in r@146@01 lists@3@01)))))
  :pattern ((allSet%limited ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@146@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@146@01 length@4@01 v@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85-aux|)))
(assert (forall ((r@146@01 $Ref)) (!
  (=>
    (and (Set_in r@146@01 lists@3@01) (not (Set_in r@146@01 lists@3@01)))
    (allSet%precondition ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@146@01)
      ($SortWrappers.IntTo$Snap length@4@01))) r@146@01 length@4@01 v@5@01))
  :pattern ((Set_in r@146@01 lists@3@01))
  :pattern ((Set_in r@146@01 lists@3@01))
  :pattern ((allSet%limited ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@146@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@146@01 length@4@01 v@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85_precondition|)))
(push) ; 8
(assert (not (forall ((r@146@01 $Ref)) (!
  (=>
    (and
      (=>
        (and (Set_in r@146@01 lists@3@01) (not (Set_in r@146@01 lists@3@01)))
        (allSet%precondition ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@146@01)
          ($SortWrappers.IntTo$Snap length@4@01))) r@146@01 length@4@01 v@5@01))
      (and (Set_in r@146@01 lists@3@01) (not (Set_in r@146@01 lists@3@01))))
    (allSet ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@146@01)
      ($SortWrappers.IntTo$Snap length@4@01))) r@146@01 length@4@01 v@5@01))
  :pattern ((Set_in r@146@01 lists@3@01))
  :pattern ((Set_in r@146@01 lists@3@01))
  :pattern ((allSet%limited ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@146@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@146@01 length@4@01 v@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (forall ((r@146@01 $Ref)) (!
  (=>
    (and (Set_in r@146@01 lists@3@01) (not (Set_in r@146@01 lists@3@01)))
    (allSet ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@146@01)
      ($SortWrappers.IntTo$Snap length@4@01))) r@146@01 length@4@01 v@5@01))
  :pattern ((Set_in r@146@01 lists@3@01))
  :pattern ((Set_in r@146@01 lists@3@01))
  :pattern ((allSet%limited ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@146@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@146@01 length@4@01 v@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85|)))
(declare-const r@147@01 $Ref)
(push) ; 8
; [eval] (r in s)
(assert (Set_in r@147@01 lists@3@01))
(pop) ; 8
(declare-fun inv@148@01 ($Ref) $Ref)
(declare-fun img@149@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 8
(assert (not (forall ((r1@147@01 $Ref) (r2@147@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@147@01 lists@3@01)
      (Set_in r2@147@01 lists@3@01)
      (= r1@147@01 r2@147@01))
    (= r1@147@01 r2@147@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@147@01 $Ref)) (!
  (=>
    (Set_in r@147@01 lists@3@01)
    (and (= (inv@148@01 r@147@01) r@147@01) (img@149@01 r@147@01)))
  :pattern ((Set_in r@147@01 lists@3@01))
  :pattern ((inv@148@01 r@147@01))
  :pattern ((img@149@01 r@147@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@149@01 r) (Set_in (inv@148@01 r) lists@3@01))
    (= (inv@148@01 r) r))
  :pattern ((inv@148@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@150@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@148@01 r) lists@3@01) (img@149@01 r) (= r (inv@148@01 r)))
    ($Perm.min
      (ite
        (and
          (img@33@01 r)
          (and
            (Set_in (inv@32@01 r) lists@3@01)
            (not (Set_in (inv@32@01 r) s@19@01))))
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
          (img@33@01 r)
          (and
            (Set_in (inv@32@01 r) lists@3@01)
            (not (Set_in (inv@32@01 r) s@19@01))))
        $Perm.Write
        $Perm.No)
      (pTaken@150@01 r))
    $Perm.No)
  
  :qid |quant-u-16995|))))
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
    (and (Set_in (inv@148@01 r) lists@3@01) (img@149@01 r) (= r (inv@148@01 r)))
    (= (- $Perm.Write (pTaken@150@01 r)) $Perm.No))
  
  :qid |quant-u-16996|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall r: Ref :: { (r in s) } (r in s) ==> r.val == v)
(declare-const r@151@01 $Ref)
(set-option :timeout 0)
(push) ; 8
; [eval] (r in s) ==> r.val == v
; [eval] (r in s)
(push) ; 9
; [then-branch: 52 | r@151@01 in lists@3@01 | live]
; [else-branch: 52 | !(r@151@01 in lists@3@01) | live]
(push) ; 10
; [then-branch: 52 | r@151@01 in lists@3@01]
(assert (Set_in r@151@01 lists@3@01))
; [eval] r.val == v
(push) ; 11
(assert (not (and
  (img@33@01 r@151@01)
  (and
    (Set_in (inv@32@01 r@151@01) lists@3@01)
    (not (Set_in (inv@32@01 r@151@01) s@19@01))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(pop) ; 10
(push) ; 10
; [else-branch: 52 | !(r@151@01 in lists@3@01)]
(assert (not (Set_in r@151@01 lists@3@01)))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in r@151@01 lists@3@01)) (Set_in r@151@01 lists@3@01)))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@151@01 $Ref)) (!
  (or (not (Set_in r@151@01 lists@3@01)) (Set_in r@151@01 lists@3@01))
  :pattern ((Set_in r@151@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@54@19@54@86-aux|)))
(push) ; 8
(assert (not (forall ((r@151@01 $Ref)) (!
  (=>
    (Set_in r@151@01 lists@3@01)
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@21@01))))) r@151@01)
      v@5@01))
  :pattern ((Set_in r@151@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@54@19@54@86|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (forall ((r@151@01 $Ref)) (!
  (=>
    (Set_in r@151@01 lists@3@01)
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@21@01))))) r@151@01)
      v@5@01))
  :pattern ((Set_in r@151@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@54@19@54@86|)))
(declare-const r@152@01 $Ref)
(push) ; 8
; [eval] (r in s)
(assert (Set_in r@152@01 lists@3@01))
(pop) ; 8
(declare-fun inv@153@01 ($Ref) $Ref)
(declare-fun img@154@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 8
(assert (not (forall ((r1@152@01 $Ref) (r2@152@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@152@01 lists@3@01)
      (Set_in r2@152@01 lists@3@01)
      (= r1@152@01 r2@152@01))
    (= r1@152@01 r2@152@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@152@01 $Ref)) (!
  (=>
    (Set_in r@152@01 lists@3@01)
    (and (= (inv@153@01 r@152@01) r@152@01) (img@154@01 r@152@01)))
  :pattern ((Set_in r@152@01 lists@3@01))
  :pattern ((inv@153@01 r@152@01))
  :pattern ((img@154@01 r@152@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@154@01 r) (Set_in (inv@153@01 r) lists@3@01))
    (= (inv@153@01 r) r))
  :pattern ((inv@153@01 r))
  :qid |next-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@155@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@153@01 r) lists@3@01) (img@154@01 r) (= r (inv@153@01 r)))
    ($Perm.min
      (ite
        (and
          (img@27@01 r)
          (and
            (Set_in (inv@26@01 r) lists@3@01)
            (not (Set_in (inv@26@01 r) s@19@01))))
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
          (and
            (Set_in (inv@26@01 r) lists@3@01)
            (not (Set_in (inv@26@01 r) s@19@01))))
        $Perm.Write
        $Perm.No)
      (pTaken@155@01 r))
    $Perm.No)
  
  :qid |quant-u-16999|))))
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
    (and (Set_in (inv@153@01 r) lists@3@01) (img@154@01 r) (= r (inv@153@01 r)))
    (= (- $Perm.Write (pTaken@155@01 r)) $Perm.No))
  
  :qid |quant-u-17000|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall r1: Ref, r2: Ref :: { (r1 in s), (r2 in s) } (r1 in s) && ((r2 in s) && r1 != r2) ==> r1.next != r2.next)
(declare-const r1@156@01 $Ref)
(declare-const r2@157@01 $Ref)
(set-option :timeout 0)
(push) ; 8
; [eval] (r1 in s) && ((r2 in s) && r1 != r2) ==> r1.next != r2.next
; [eval] (r1 in s) && ((r2 in s) && r1 != r2)
; [eval] (r1 in s)
(push) ; 9
; [then-branch: 53 | !(r1@156@01 in lists@3@01) | live]
; [else-branch: 53 | r1@156@01 in lists@3@01 | live]
(push) ; 10
; [then-branch: 53 | !(r1@156@01 in lists@3@01)]
(assert (not (Set_in r1@156@01 lists@3@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 53 | r1@156@01 in lists@3@01]
(assert (Set_in r1@156@01 lists@3@01))
; [eval] (r2 in s)
(push) ; 11
; [then-branch: 54 | !(r2@157@01 in lists@3@01) | live]
; [else-branch: 54 | r2@157@01 in lists@3@01 | live]
(push) ; 12
; [then-branch: 54 | !(r2@157@01 in lists@3@01)]
(assert (not (Set_in r2@157@01 lists@3@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 54 | r2@157@01 in lists@3@01]
(assert (Set_in r2@157@01 lists@3@01))
; [eval] r1 != r2
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (Set_in r2@157@01 lists@3@01) (not (Set_in r2@157@01 lists@3@01))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in r1@156@01 lists@3@01)
  (and
    (Set_in r1@156@01 lists@3@01)
    (or (Set_in r2@157@01 lists@3@01) (not (Set_in r2@157@01 lists@3@01))))))
(assert (or (Set_in r1@156@01 lists@3@01) (not (Set_in r1@156@01 lists@3@01))))
(push) ; 9
; [then-branch: 55 | r1@156@01 in lists@3@01 && r2@157@01 in lists@3@01 && r1@156@01 != r2@157@01 | live]
; [else-branch: 55 | !(r1@156@01 in lists@3@01 && r2@157@01 in lists@3@01 && r1@156@01 != r2@157@01) | live]
(push) ; 10
; [then-branch: 55 | r1@156@01 in lists@3@01 && r2@157@01 in lists@3@01 && r1@156@01 != r2@157@01]
(assert (and
  (Set_in r1@156@01 lists@3@01)
  (and (Set_in r2@157@01 lists@3@01) (not (= r1@156@01 r2@157@01)))))
; [eval] r1.next != r2.next
(push) ; 11
(assert (not (and
  (img@27@01 r1@156@01)
  (and
    (Set_in (inv@26@01 r1@156@01) lists@3@01)
    (not (Set_in (inv@26@01 r1@156@01) s@19@01))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (and
  (img@27@01 r2@157@01)
  (and
    (Set_in (inv@26@01 r2@157@01) lists@3@01)
    (not (Set_in (inv@26@01 r2@157@01) s@19@01))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(pop) ; 10
(push) ; 10
; [else-branch: 55 | !(r1@156@01 in lists@3@01 && r2@157@01 in lists@3@01 && r1@156@01 != r2@157@01)]
(assert (not
  (and
    (Set_in r1@156@01 lists@3@01)
    (and (Set_in r2@157@01 lists@3@01) (not (= r1@156@01 r2@157@01))))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (and
    (Set_in r1@156@01 lists@3@01)
    (and (Set_in r2@157@01 lists@3@01) (not (= r1@156@01 r2@157@01))))
  (and
    (Set_in r1@156@01 lists@3@01)
    (Set_in r2@157@01 lists@3@01)
    (not (= r1@156@01 r2@157@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in r1@156@01 lists@3@01)
      (and (Set_in r2@157@01 lists@3@01) (not (= r1@156@01 r2@157@01)))))
  (and
    (Set_in r1@156@01 lists@3@01)
    (and (Set_in r2@157@01 lists@3@01) (not (= r1@156@01 r2@157@01))))))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r1@156@01 $Ref) (r2@157@01 $Ref)) (!
  (and
    (=>
      (Set_in r1@156@01 lists@3@01)
      (and
        (Set_in r1@156@01 lists@3@01)
        (or (Set_in r2@157@01 lists@3@01) (not (Set_in r2@157@01 lists@3@01)))))
    (or (Set_in r1@156@01 lists@3@01) (not (Set_in r1@156@01 lists@3@01)))
    (=>
      (and
        (Set_in r1@156@01 lists@3@01)
        (and (Set_in r2@157@01 lists@3@01) (not (= r1@156@01 r2@157@01))))
      (and
        (Set_in r1@156@01 lists@3@01)
        (Set_in r2@157@01 lists@3@01)
        (not (= r1@156@01 r2@157@01))))
    (or
      (not
        (and
          (Set_in r1@156@01 lists@3@01)
          (and (Set_in r2@157@01 lists@3@01) (not (= r1@156@01 r2@157@01)))))
      (and
        (Set_in r1@156@01 lists@3@01)
        (and (Set_in r2@157@01 lists@3@01) (not (= r1@156@01 r2@157@01))))))
  :pattern ((Set_in r1@156@01 lists@3@01) (Set_in r2@157@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@55@19@55@99-aux|)))
(push) ; 8
(assert (not (forall ((r1@156@01 $Ref) (r2@157@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@156@01 lists@3@01)
      (and (Set_in r2@157@01 lists@3@01) (not (= r1@156@01 r2@157@01))))
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r1@156@01)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r2@157@01))))
  :pattern ((Set_in r1@156@01 lists@3@01) (Set_in r2@157@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@55@19@55@99|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (forall ((r1@156@01 $Ref) (r2@157@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@156@01 lists@3@01)
      (and (Set_in r2@157@01 lists@3@01) (not (= r1@156@01 r2@157@01))))
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r1@156@01)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r2@157@01))))
  :pattern ((Set_in r1@156@01 lists@3@01) (Set_in r2@157@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@55@19@55@99|)))
(declare-const r@158@01 $Ref)
(push) ; 8
; [eval] (r in s)
(assert (Set_in r@158@01 lists@3@01))
(push) ; 9
(assert (not (and
  (img@27@01 r@158@01)
  (and
    (Set_in (inv@26@01 r@158@01) lists@3@01)
    (not (Set_in (inv@26@01 r@158@01) s@19@01))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] length - 1
(pop) ; 8
(declare-fun inv@159@01 ($Ref Int) $Ref)
(declare-fun img@160@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 8
(assert (not (forall ((r1@158@01 $Ref) (r2@158@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@158@01 lists@3@01)
      (Set_in r2@158@01 lists@3@01)
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r1@158@01)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r2@158@01)))
    (= r1@158@01 r2@158@01))
  
  :qid |list-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@158@01 $Ref)) (!
  (=>
    (Set_in r@158@01 lists@3@01)
    (and
      (=
        (inv@159@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@158@01) (-
          length@4@01
          1))
        r@158@01)
      (img@160@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@158@01) (-
        length@4@01
        1))))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@158@01))
  :qid |list-invOfFct|)))
(assert (forall ((r $Ref) (i Int)) (!
  (=>
    (and (img@160@01 r i) (Set_in (inv@159@01 r i) lists@3@01))
    (and
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) (inv@159@01 r i))
        r)
      (= (- length@4@01 1) i)))
  :pattern ((inv@159@01 r i))
  :qid |list-fctOfInv|)))
(push) ; 8
(set-option :timeout 10)
(assert (not (forall ((r@158@01 $Ref)) (!
  (=
    ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@158@01)
    r@158@01)
  
  :qid |quant-u-17002|))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@161@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and
      (Set_in (inv@159@01 r i) lists@3@01)
      (img@160@01 r i)
      (and
        (=
          r
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) (inv@159@01 r i)))
        (= i (- length@4@01 1))))
    ($Perm.min
      (ite
        (and (img@114@01 r i) (Set_in (inv@113@01 r i) sNext@20@01))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and (img@114@01 r i) (Set_in (inv@113@01 r i) sNext@20@01))
        $Perm.Write
        $Perm.No)
      (pTaken@161@01 r i))
    $Perm.No)
  
  :qid |quant-u-17004|))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (forall ((r $Ref) (i Int)) (!
  (= (pTaken@161@01 r i) $Perm.No)
  
  :qid |quant-u-17005|))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and
      (Set_in (inv@159@01 r i) lists@3@01)
      (img@160@01 r i)
      (and
        (=
          r
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) (inv@159@01 r i)))
        (= i (- length@4@01 1))))
    (= (- $Perm.Write (pTaken@161@01 r i)) $Perm.No))
  
  :qid |quant-u-17006|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall r: Ref :: { (r in s) } (r in s) ==> allSet(r.next, length - 1, v))
(declare-const r@162@01 $Ref)
(set-option :timeout 0)
(push) ; 8
; [eval] (r in s) ==> allSet(r.next, length - 1, v)
; [eval] (r in s)
(push) ; 9
; [then-branch: 56 | r@162@01 in lists@3@01 | live]
; [else-branch: 56 | !(r@162@01 in lists@3@01) | live]
(push) ; 10
; [then-branch: 56 | r@162@01 in lists@3@01]
(assert (Set_in r@162@01 lists@3@01))
; [eval] allSet(r.next, length - 1, v)
(push) ; 11
(assert (not (and
  (img@27@01 r@162@01)
  (and
    (Set_in (inv@26@01 r@162@01) lists@3@01)
    (not (Set_in (inv@26@01 r@162@01) s@19@01))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] length - 1
(push) ; 11
(push) ; 12
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and
      (=
        r
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01))
      (= i (- length@4@01 1)))
    (>
      (+
        (ite
          (and (img@24@01 r i) (Set_in (inv@23@01 r i) s@19@01))
          $Perm.Write
          $Perm.No)
        (ite
          (and (img@114@01 r i) (Set_in (inv@113@01 r i) sNext@20@01))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-17007|))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@24@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01) (-
      length@4@01
      1))
    (Set_in (inv@23@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01) (-
      length@4@01
      1)) s@19@01))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))
      ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@21@01)) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))))))
(assert (=>
  (and
    (img@114@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01) (-
      length@4@01
      1))
    (Set_in (inv@113@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01) (-
      length@4@01
      1)) sNext@20@01))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))
      ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@111@01)) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))))))
(assert (allSet%precondition ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01))
  ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01) (-
  length@4@01
  1) v@5@01))
(pop) ; 11
; Joined path conditions
(assert (and
  (=>
    (and
      (img@24@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01) (-
        length@4@01
        1))
      (Set_in (inv@23@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01) (-
        length@4@01
        1)) s@19@01))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1)))
          $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1))))
        ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@21@01)) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
  (=>
    (and
      (img@114@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01) (-
        length@4@01
        1))
      (Set_in (inv@113@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01) (-
        length@4@01
        1)) sNext@20@01))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1)))
          $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1))))
        ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@111@01)) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
  (allSet%precondition ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01))
    ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01) (-
    length@4@01
    1) v@5@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 56 | !(r@162@01 in lists@3@01)]
(assert (not (Set_in r@162@01 lists@3@01)))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (Set_in r@162@01 lists@3@01)
  (and
    (Set_in r@162@01 lists@3@01)
    (=>
      (and
        (img@24@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01) (-
          length@4@01
          1))
        (Set_in (inv@23@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01) (-
          length@4@01
          1)) s@19@01))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01))
              ($SortWrappers.IntTo$Snap (- length@4@01 1)))
            $Snap.unit))
        (=
          ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1))))
          ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@21@01)) ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
    (=>
      (and
        (img@114@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01) (-
          length@4@01
          1))
        (Set_in (inv@113@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01) (-
          length@4@01
          1)) sNext@20@01))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01))
              ($SortWrappers.IntTo$Snap (- length@4@01 1)))
            $Snap.unit))
        (=
          ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1))))
          ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@111@01)) ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
    (allSet%precondition ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01))
      ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01) (-
      length@4@01
      1) v@5@01))))
; Joined path conditions
(assert (or (not (Set_in r@162@01 lists@3@01)) (Set_in r@162@01 lists@3@01)))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@162@01 $Ref)) (!
  (and
    (=>
      (Set_in r@162@01 lists@3@01)
      (and
        (Set_in r@162@01 lists@3@01)
        (=>
          (and
            (img@24@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01) (-
              length@4@01
              1))
            (Set_in (inv@23@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01) (-
              length@4@01
              1)) s@19@01))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01))
                  ($SortWrappers.IntTo$Snap (- length@4@01 1)))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01))
                ($SortWrappers.IntTo$Snap (- length@4@01 1))))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@21@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01))
                ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
        (=>
          (and
            (img@114@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01) (-
              length@4@01
              1))
            (Set_in (inv@113@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01) (-
              length@4@01
              1)) sNext@20@01))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01))
                  ($SortWrappers.IntTo$Snap (- length@4@01 1)))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01))
                ($SortWrappers.IntTo$Snap (- length@4@01 1))))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@111@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01))
                ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
        (allSet%precondition ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01) (-
          length@4@01
          1) v@5@01)))
    (or (not (Set_in r@162@01 lists@3@01)) (Set_in r@162@01 lists@3@01)))
  :pattern ((Set_in r@162@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@57@19@57@75-aux|)))
(assert (forall ((r@162@01 $Ref)) (!
  (=>
    (Set_in r@162@01 lists@3@01)
    (allSet%precondition ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01))
      ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01) (-
      length@4@01
      1) v@5@01))
  :pattern ((Set_in r@162@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@57@19@57@75_precondition|)))
(push) ; 8
(assert (not (forall ((r@162@01 $Ref)) (!
  (=>
    (and
      (=>
        (Set_in r@162@01 lists@3@01)
        (allSet%precondition ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01) (-
          length@4@01
          1) v@5@01))
      (Set_in r@162@01 lists@3@01))
    (allSet ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01))
      ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01) (-
      length@4@01
      1) v@5@01))
  :pattern ((Set_in r@162@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@57@19@57@75|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (forall ((r@162@01 $Ref)) (!
  (=>
    (Set_in r@162@01 lists@3@01)
    (allSet ($PSF.lookup_list (as sm@116@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01))
      ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@162@01) (-
      length@4@01
      1) v@5@01))
  :pattern ((Set_in r@162@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@57@19@57@75|)))
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 8
(assert (forall ((r $Ref) (i Int)) (!
  (=>
    (and (img@137@01 r i) (Set_in (inv@136@01 r i) s@118@01))
    (and
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) (inv@136@01 r i))
        r)
      (= (- length@4@01 1) i)))
  :pattern ((inv@136@01 r i))
  :qid |list-fctOfInv|)))
(assert (forall ((r@135@01 $Ref)) (!
  (=>
    (Set_in r@135@01 s@118@01)
    (and
      (=
        (inv@136@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@135@01) (-
          length@4@01
          1))
        r@135@01)
      (img@137@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@135@01) (-
        length@4@01
        1))))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@135@01))
  :qid |quant-u-16984|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))))
  $Snap.unit))
(assert (forall ((r@138@01 $Ref)) (!
  (and
    (=>
      (Set_in r@138@01 s@118@01)
      (and
        (Set_in r@138@01 s@118@01)
        (=>
          (and
            (img@122@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01) (-
              length@4@01
              1))
            (and
              (Set_in (inv@121@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01) (-
                length@4@01
                1)) lists@3@01)
              (not
                (Set_in (inv@121@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01) (-
                  length@4@01
                  1)) s@118@01))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
                  ($SortWrappers.IntTo$Snap (- length@4@01 1)))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@139@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
                ($SortWrappers.IntTo$Snap (- length@4@01 1))))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@119@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
                ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
        (=>
          (and
            (img@137@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01) (-
              length@4@01
              1))
            (Set_in (inv@136@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01) (-
              length@4@01
              1)) s@118@01))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
                  ($SortWrappers.IntTo$Snap (- length@4@01 1)))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@139@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
                ($SortWrappers.IntTo$Snap (- length@4@01 1))))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))))) ($Snap.combine
                ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
                ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
        (allSet%precondition ($PSF.lookup_list (as sm@139@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01) (-
          length@4@01
          1) v@5@01)))
    (or (not (Set_in r@138@01 s@118@01)) (Set_in r@138@01 s@118@01)))
  :pattern ((Set_in r@138@01 s@118@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@57@19@57@75-aux|)))
(assert (forall ((r@138@01 $Ref)) (!
  (=>
    (Set_in r@138@01 s@118@01)
    (allSet ($PSF.lookup_list (as sm@139@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01))
      ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@138@01) (-
      length@4@01
      1) v@5@01))
  :pattern ((Set_in r@138@01 s@118@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@57@19@57@75|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@132@01 r) (Set_in (inv@131@01 r) s@118@01)) (= (inv@131@01 r) r))
  :pattern ((inv@131@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r@130@01 $Ref)) (!
  (=>
    (Set_in r@130@01 s@118@01)
    (and (= (inv@131@01 r@130@01) r@130@01) (img@132@01 r@130@01)))
  :pattern ((Set_in r@130@01 s@118@01))
  :pattern ((inv@131@01 r@130@01))
  :pattern ((img@132@01 r@130@01))
  :qid |quant-u-16982|)))
(assert (forall ((r@130@01 $Ref)) (!
  (=> (Set_in r@130@01 s@118@01) (not (= r@130@01 $Ref.null)))
  :pattern ((Set_in r@130@01 s@118@01))
  :pattern ((inv@131@01 r@130@01))
  :pattern ((img@132@01 r@130@01))
  :qid |next-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01))))))
  $Snap.unit))
(assert (forall ((r1@133@01 $Ref) (r2@134@01 $Ref)) (!
  (and
    (=>
      (Set_in r1@133@01 s@118@01)
      (and
        (Set_in r1@133@01 s@118@01)
        (or (Set_in r2@134@01 s@118@01) (not (Set_in r2@134@01 s@118@01)))))
    (or (Set_in r1@133@01 s@118@01) (not (Set_in r1@133@01 s@118@01)))
    (=>
      (and
        (Set_in r1@133@01 s@118@01)
        (and (Set_in r2@134@01 s@118@01) (not (= r1@133@01 r2@134@01))))
      (and
        (Set_in r1@133@01 s@118@01)
        (Set_in r2@134@01 s@118@01)
        (not (= r1@133@01 r2@134@01))))
    (or
      (not
        (and
          (Set_in r1@133@01 s@118@01)
          (and (Set_in r2@134@01 s@118@01) (not (= r1@133@01 r2@134@01)))))
      (and
        (Set_in r1@133@01 s@118@01)
        (and (Set_in r2@134@01 s@118@01) (not (= r1@133@01 r2@134@01))))))
  :pattern ((Set_in r1@133@01 s@118@01) (Set_in r2@134@01 s@118@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@55@19@55@99-aux|)))
(assert (forall ((r1@133@01 $Ref) (r2@134@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@133@01 s@118@01)
      (and (Set_in r2@134@01 s@118@01) (not (= r1@133@01 r2@134@01))))
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r1@133@01)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r2@134@01))))
  :pattern ((Set_in r1@133@01 s@118@01) (Set_in r2@134@01 s@118@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@55@19@55@99|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01))))))))))
(assert (forall ((r $Ref)) (!
  (=> (and (img@128@01 r) (Set_in (inv@127@01 r) s@118@01)) (= (inv@127@01 r) r))
  :pattern ((inv@127@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r@126@01 $Ref)) (!
  (=>
    (Set_in r@126@01 s@118@01)
    (and (= (inv@127@01 r@126@01) r@126@01) (img@128@01 r@126@01)))
  :pattern ((Set_in r@126@01 s@118@01))
  :pattern ((inv@127@01 r@126@01))
  :pattern ((img@128@01 r@126@01))
  :qid |quant-u-16980|)))
(assert (forall ((r@126@01 $Ref)) (!
  (=> (Set_in r@126@01 s@118@01) (not (= r@126@01 $Ref.null)))
  :pattern ((Set_in r@126@01 s@118@01))
  :pattern ((inv@127@01 r@126@01))
  :pattern ((img@128@01 r@126@01))
  :qid |val-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@119@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@119@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@119@01))))
  $Snap.unit))
(assert (forall ((r@129@01 $Ref)) (!
  (or (not (Set_in r@129@01 s@118@01)) (Set_in r@129@01 s@118@01))
  :pattern ((Set_in r@129@01 s@118@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@54@19@54@86-aux|)))
(assert (forall ((r@129@01 $Ref)) (!
  (=>
    (Set_in r@129@01 s@118@01)
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@119@01)))) r@129@01)
      v@5@01))
  :pattern ((Set_in r@129@01 s@118@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@54@19@54@86|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01))))))))
(assert (forall ((r $Ref) (i Int)) (!
  (=>
    (and
      (img@122@01 r i)
      (and
        (Set_in (inv@121@01 r i) lists@3@01)
        (not (Set_in (inv@121@01 r i) s@118@01))))
    (and (= (inv@121@01 r i) r) (= length@4@01 i)))
  :pattern ((inv@121@01 r i))
  :qid |list-fctOfInv|)))
(assert (forall ((r@120@01 $Ref)) (!
  (=>
    (and (Set_in r@120@01 lists@3@01) (not (Set_in r@120@01 s@118@01)))
    (and
      (= (inv@121@01 r@120@01 length@4@01) r@120@01)
      (img@122@01 r@120@01 length@4@01)))
  :pattern ((Set_in r@120@01 lists@3@01))
  :pattern ((Set_in r@120@01 s@118@01))
  :pattern ((inv@121@01 r@120@01 length@4@01))
  :pattern ((img@122@01 r@120@01 length@4@01))
  :qid |quant-u-16977|)))
(assert (=
  ($Snap.second $t@119@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@119@01))
    ($Snap.second ($Snap.second $t@119@01)))))
(assert (= ($Snap.first ($Snap.second $t@119@01)) $Snap.unit))
(assert (forall ((r@123@01 $Ref)) (!
  (and
    (or (Set_in r@123@01 lists@3@01) (not (Set_in r@123@01 lists@3@01)))
    (=>
      (and (Set_in r@123@01 lists@3@01) (not (Set_in r@123@01 s@118@01)))
      (and
        (Set_in r@123@01 lists@3@01)
        (not (Set_in r@123@01 s@118@01))
        (=>
          (and
            (img@122@01 r@123@01 length@4@01)
            (and
              (Set_in (inv@121@01 r@123@01 length@4@01) lists@3@01)
              (not (Set_in (inv@121@01 r@123@01 length@4@01) s@118@01))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@123@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@124@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@123@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@119@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@123@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (allSet%precondition ($PSF.lookup_list (as sm@124@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@123@01)
          ($SortWrappers.IntTo$Snap length@4@01))) r@123@01 length@4@01 v@5@01)))
    (or
      (not (and (Set_in r@123@01 lists@3@01) (not (Set_in r@123@01 s@118@01))))
      (and (Set_in r@123@01 lists@3@01) (not (Set_in r@123@01 s@118@01)))))
  :pattern ((Set_in r@123@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85-aux|)))
(assert (forall ((r@123@01 $Ref)) (!
  (and
    (or (Set_in r@123@01 lists@3@01) (not (Set_in r@123@01 lists@3@01)))
    (=>
      (and (Set_in r@123@01 lists@3@01) (not (Set_in r@123@01 s@118@01)))
      (and
        (Set_in r@123@01 lists@3@01)
        (not (Set_in r@123@01 s@118@01))
        (=>
          (and
            (img@122@01 r@123@01 length@4@01)
            (and
              (Set_in (inv@121@01 r@123@01 length@4@01) lists@3@01)
              (not (Set_in (inv@121@01 r@123@01 length@4@01) s@118@01))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@123@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@124@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@123@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@119@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@123@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (allSet%precondition ($PSF.lookup_list (as sm@124@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@123@01)
          ($SortWrappers.IntTo$Snap length@4@01))) r@123@01 length@4@01 v@5@01)))
    (or
      (not (and (Set_in r@123@01 lists@3@01) (not (Set_in r@123@01 s@118@01))))
      (and (Set_in r@123@01 lists@3@01) (not (Set_in r@123@01 s@118@01)))))
  :pattern ((Set_in r@123@01 s@118@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85-aux|)))
(assert (forall ((r@123@01 $Ref)) (!
  (and
    (or (Set_in r@123@01 lists@3@01) (not (Set_in r@123@01 lists@3@01)))
    (=>
      (and (Set_in r@123@01 lists@3@01) (not (Set_in r@123@01 s@118@01)))
      (and
        (Set_in r@123@01 lists@3@01)
        (not (Set_in r@123@01 s@118@01))
        (=>
          (and
            (img@122@01 r@123@01 length@4@01)
            (and
              (Set_in (inv@121@01 r@123@01 length@4@01) lists@3@01)
              (not (Set_in (inv@121@01 r@123@01 length@4@01) s@118@01))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@123@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@124@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@123@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@119@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@123@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (allSet%precondition ($PSF.lookup_list (as sm@124@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@123@01)
          ($SortWrappers.IntTo$Snap length@4@01))) r@123@01 length@4@01 v@5@01)))
    (or
      (not (and (Set_in r@123@01 lists@3@01) (not (Set_in r@123@01 s@118@01))))
      (and (Set_in r@123@01 lists@3@01) (not (Set_in r@123@01 s@118@01)))))
  :pattern ((allSet%limited ($PSF.lookup_list (as sm@124@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@123@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@123@01 length@4@01 v@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85-aux|)))
(assert (forall ((r@123@01 $Ref)) (!
  (=>
    (and (Set_in r@123@01 lists@3@01) (not (Set_in r@123@01 s@118@01)))
    (allSet ($PSF.lookup_list (as sm@124@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@123@01)
      ($SortWrappers.IntTo$Snap length@4@01))) r@123@01 length@4@01 v@5@01))
  :pattern ((Set_in r@123@01 lists@3@01))
  :pattern ((Set_in r@123@01 s@118@01))
  :pattern ((allSet%limited ($PSF.lookup_list (as sm@124@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@123@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@123@01 length@4@01 v@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85|)))
(assert (=
  ($Snap.second ($Snap.second $t@119@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@119@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@119@01))))))
(assert (= $t@119@01 ($Snap.combine ($Snap.first $t@119@01) ($Snap.second $t@119@01))))
(assert (forall ((r@120@01 $Ref)) (!
  (=>
    (and (Set_in r@120@01 lists@3@01) (not (Set_in r@120@01 s@118@01)))
    (or (Set_in r@120@01 lists@3@01) (not (Set_in r@120@01 lists@3@01))))
  :pattern ((Set_in r@120@01 lists@3@01))
  :pattern ((Set_in r@120@01 s@118@01))
  :pattern ((inv@121@01 r@120@01 length@4@01))
  :pattern ((img@122@01 r@120@01 length@4@01))
  :qid |list-aux|)))
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
; [eval] |s| > 0
; [eval] |s|
(pop) ; 9
(push) ; 9
; [eval] !(|s| > 0)
; [eval] |s| > 0
; [eval] |s|
(pop) ; 9
; Loop head block: Follow loop-internal edges
; [eval] |s| > 0
; [eval] |s|
(push) ; 9
(set-option :timeout 10)
(assert (not (not (> (Set_card s@118@01) 0))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (> (Set_card s@118@01) 0)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 57 | |s@118@01| > 0 | live]
; [else-branch: 57 | !(|s@118@01| > 0) | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 57 | |s@118@01| > 0]
(assert (> (Set_card s@118@01) 0))
; [exec]
; var l2: Ref
(declare-const l2@163@01 $Ref)
; [exec]
; inhale (l2 in s)
(declare-const $t@164@01 $Snap)
(assert (= $t@164@01 $Snap.unit))
; [eval] (l2 in s)
(assert (Set_in l2@163@01 s@118@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; fold acc(list(l2, length), write)
; [eval] i > 0
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (not (> length@4@01 0))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 58 | length@4@01 > 0 | live]
; [else-branch: 58 | !(length@4@01 > 0) | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 58 | length@4@01 > 0]
; Precomputing data for removing quantified permissions
(define-fun pTaken@165@01 ((r $Ref)) $Perm
  (ite
    (= r l2@163@01)
    ($Perm.min
      (ite
        (and (img@128@01 r) (Set_in (inv@127@01 r) s@118@01))
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
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@128@01 r) (Set_in (inv@127@01 r) s@118@01))
        $Perm.Write
        $Perm.No)
      (pTaken@165@01 r))
    $Perm.No)
  
  :qid |quant-u-17009|))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@165@01 r) $Perm.No)
  
  :qid |quant-u-17010|))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=> (= r l2@163@01) (= (- $Perm.Write (pTaken@165@01 r)) $Perm.No))
  
  :qid |quant-u-17011|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@166@01 $FVF<val>)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and (img@128@01 l2@163@01) (Set_in (inv@127@01 l2@163@01) s@118@01))
  (=
    ($FVF.lookup_val (as sm@166@01  $FVF<val>) l2@163@01)
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@119@01)))) l2@163@01))))
; Precomputing data for removing quantified permissions
(define-fun pTaken@167@01 ((r $Ref)) $Perm
  (ite
    (= r l2@163@01)
    ($Perm.min
      (ite
        (and (img@132@01 r) (Set_in (inv@131@01 r) s@118@01))
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
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@132@01 r) (Set_in (inv@131@01 r) s@118@01))
        $Perm.Write
        $Perm.No)
      (pTaken@167@01 r))
    $Perm.No)
  
  :qid |quant-u-17013|))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@167@01 r) $Perm.No)
  
  :qid |quant-u-17014|))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=> (= r l2@163@01) (= (- $Perm.Write (pTaken@167@01 r)) $Perm.No))
  
  :qid |quant-u-17015|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@168@01 $FVF<next>)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and (img@132@01 l2@163@01) (Set_in (inv@131@01 l2@163@01) s@118@01))
  (=
    ($FVF.lookup_next (as sm@168@01  $FVF<next>) l2@163@01)
    ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) l2@163@01))))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@132@01 r) (Set_in (inv@131@01 r) s@118@01))
    (=
      ($FVF.lookup_next (as sm@168@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@168@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r))
  :qid |qp.fvfValDef20|)))
(set-option :timeout 0)
(push) ; 11
(assert (not (and (img@132@01 l2@163@01) (Set_in (inv@131@01 l2@163@01) s@118@01))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] i - 1
; Precomputing data for removing quantified permissions
(define-fun pTaken@169@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and
      (= r ($FVF.lookup_next (as sm@168@01  $FVF<next>) l2@163@01))
      (= i (- length@4@01 1)))
    ($Perm.min
      (ite
        (and
          (img@122@01 r i)
          (and
            (Set_in (inv@121@01 r i) lists@3@01)
            (not (Set_in (inv@121@01 r i) s@118@01))))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@170@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and
      (= r ($FVF.lookup_next (as sm@168@01  $FVF<next>) l2@163@01))
      (= i (- length@4@01 1)))
    ($Perm.min
      (ite
        (and (img@137@01 r i) (Set_in (inv@136@01 r i) s@118@01))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@169@01 r i)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@122@01 r i)
          (and
            (Set_in (inv@121@01 r i) lists@3@01)
            (not (Set_in (inv@121@01 r i) s@118@01))))
        $Perm.Write
        $Perm.No)
      (pTaken@169@01 r i))
    $Perm.No)
  
  :qid |quant-u-17017|))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (forall ((r $Ref) (i Int)) (!
  (= (pTaken@169@01 r i) $Perm.No)
  
  :qid |quant-u-17018|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and
      (= r ($FVF.lookup_next (as sm@168@01  $FVF<next>) l2@163@01))
      (= i (- length@4@01 1)))
    (= (- $Perm.Write (pTaken@169@01 r i)) $Perm.No))
  
  :qid |quant-u-17019|))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and (img@137@01 r i) (Set_in (inv@136@01 r i) s@118@01))
        $Perm.Write
        $Perm.No)
      (pTaken@170@01 r i))
    $Perm.No)
  
  :qid |quant-u-17020|))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (forall ((r $Ref) (i Int)) (!
  (= (pTaken@170@01 r i) $Perm.No)
  
  :qid |quant-u-17021|))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and
      (= r ($FVF.lookup_next (as sm@168@01  $FVF<next>) l2@163@01))
      (= i (- length@4@01 1)))
    (= (- (- $Perm.Write (pTaken@169@01 r i)) (pTaken@170@01 r i)) $Perm.No))
  
  :qid |quant-u-17022|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@122@01 ($FVF.lookup_next (as sm@168@01  $FVF<next>) l2@163@01) (-
      length@4@01
      1))
    (and
      (Set_in (inv@121@01 ($FVF.lookup_next (as sm@168@01  $FVF<next>) l2@163@01) (-
        length@4@01
        1)) lists@3@01)
      (not
        (Set_in (inv@121@01 ($FVF.lookup_next (as sm@168@01  $FVF<next>) l2@163@01) (-
          length@4@01
          1)) s@118@01))))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next (as sm@168@01  $FVF<next>) l2@163@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@139@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next (as sm@168@01  $FVF<next>) l2@163@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))
      ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@119@01)) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next (as sm@168@01  $FVF<next>) l2@163@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))))))
(assert (=>
  (and
    (img@137@01 ($FVF.lookup_next (as sm@168@01  $FVF<next>) l2@163@01) (-
      length@4@01
      1))
    (Set_in (inv@136@01 ($FVF.lookup_next (as sm@168@01  $FVF<next>) l2@163@01) (-
      length@4@01
      1)) s@118@01))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next (as sm@168@01  $FVF<next>) l2@163@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@139@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next (as sm@168@01  $FVF<next>) l2@163@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))
      ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next (as sm@168@01  $FVF<next>) l2@163@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))))))
(assert (list%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap ($FVF.lookup_val (as sm@166@01  $FVF<val>) l2@163@01))
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap ($FVF.lookup_next (as sm@168@01  $FVF<next>) l2@163@01))
    ($PSF.lookup_list (as sm@139@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap ($FVF.lookup_next (as sm@168@01  $FVF<next>) l2@163@01))
      ($SortWrappers.IntTo$Snap (- length@4@01 1)))))) l2@163@01 length@4@01))
(declare-const sm@171@01 $PSF<list>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_list (as sm@171@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap l2@163@01)
    ($SortWrappers.IntTo$Snap length@4@01)))
  ($Snap.combine
    ($SortWrappers.IntTo$Snap ($FVF.lookup_val (as sm@166@01  $FVF<val>) l2@163@01))
    ($Snap.combine
      ($SortWrappers.$RefTo$Snap ($FVF.lookup_next (as sm@168@01  $FVF<next>) l2@163@01))
      ($PSF.lookup_list (as sm@139@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next (as sm@168@01  $FVF<next>) l2@163@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))))))
; [exec]
; s := (s setminus Set(l2))
; [eval] (s setminus Set(l2))
; [eval] Set(l2)
(declare-const s@172@01 Set<$Ref>)
(assert (= s@172@01 (Set_difference s@118@01 (Set_singleton l2@163@01))))
; Loop head block: Re-establish invariant
(declare-const r@173@01 $Ref)
(set-option :timeout 0)
(push) ; 11
; [eval] (r in lists) && !((r in s))
; [eval] (r in lists)
(push) ; 12
; [then-branch: 59 | !(r@173@01 in lists@3@01) | live]
; [else-branch: 59 | r@173@01 in lists@3@01 | live]
(push) ; 13
; [then-branch: 59 | !(r@173@01 in lists@3@01)]
(assert (not (Set_in r@173@01 lists@3@01)))
(pop) ; 13
(push) ; 13
; [else-branch: 59 | r@173@01 in lists@3@01]
(assert (Set_in r@173@01 lists@3@01))
; [eval] !((r in s))
; [eval] (r in s)
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (or (Set_in r@173@01 lists@3@01) (not (Set_in r@173@01 lists@3@01))))
(assert (and (Set_in r@173@01 lists@3@01) (not (Set_in r@173@01 s@172@01))))
(pop) ; 11
(declare-fun inv@174@01 ($Ref Int) $Ref)
(declare-fun img@175@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((r@173@01 $Ref)) (!
  (=>
    (and (Set_in r@173@01 lists@3@01) (not (Set_in r@173@01 s@172@01)))
    (or (Set_in r@173@01 lists@3@01) (not (Set_in r@173@01 lists@3@01))))
  :pattern ((Set_in r@173@01 lists@3@01))
  :pattern ((Set_in r@173@01 s@172@01))
  :pattern ((inv@174@01 r@173@01 length@4@01))
  :pattern ((img@175@01 r@173@01 length@4@01))
  :qid |list-aux|)))
; Check receiver injectivity
(push) ; 11
(assert (not (forall ((r1@173@01 $Ref) (r2@173@01 $Ref)) (!
  (=>
    (and
      (and (Set_in r1@173@01 lists@3@01) (not (Set_in r1@173@01 s@172@01)))
      (and (Set_in r2@173@01 lists@3@01) (not (Set_in r2@173@01 s@172@01)))
      (= r1@173@01 r2@173@01))
    (= r1@173@01 r2@173@01))
  
  :qid |list-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@173@01 $Ref)) (!
  (=>
    (and (Set_in r@173@01 lists@3@01) (not (Set_in r@173@01 s@172@01)))
    (and
      (= (inv@174@01 r@173@01 length@4@01) r@173@01)
      (img@175@01 r@173@01 length@4@01)))
  :pattern ((Set_in r@173@01 lists@3@01))
  :pattern ((Set_in r@173@01 s@172@01))
  :pattern ((inv@174@01 r@173@01 length@4@01))
  :pattern ((img@175@01 r@173@01 length@4@01))
  :qid |list-invOfFct|)))
(assert (forall ((r $Ref) (i Int)) (!
  (=>
    (and
      (img@175@01 r i)
      (and
        (Set_in (inv@174@01 r i) lists@3@01)
        (not (Set_in (inv@174@01 r i) s@172@01))))
    (and (= (inv@174@01 r i) r) (= length@4@01 i)))
  :pattern ((inv@174@01 r i))
  :qid |list-fctOfInv|)))
(push) ; 11
(set-option :timeout 10)
(assert (not (forall ((r@173@01 $Ref)) (!
  (=
    r@173@01
    ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@173@01))
  
  :qid |quant-u-17024|))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@176@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and
      (and
        (Set_in (inv@174@01 r i) lists@3@01)
        (not (Set_in (inv@174@01 r i) s@172@01)))
      (img@175@01 r i)
      (and (= r (inv@174@01 r i)) (= i length@4@01)))
    ($Perm.min
      (ite
        (and
          (img@122@01 r i)
          (and
            (Set_in (inv@121@01 r i) lists@3@01)
            (not (Set_in (inv@121@01 r i) s@118@01))))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@177@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and
      (and
        (Set_in (inv@174@01 r i) lists@3@01)
        (not (Set_in (inv@174@01 r i) s@172@01)))
      (img@175@01 r i)
      (and (= r (inv@174@01 r i)) (= i length@4@01)))
    ($Perm.min
      (ite (and (= r l2@163@01) (= i length@4@01)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@176@01 r i)))
    $Perm.No))
(define-fun pTaken@178@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and
      (and
        (Set_in (inv@174@01 r i) lists@3@01)
        (not (Set_in (inv@174@01 r i) s@172@01)))
      (img@175@01 r i)
      (and (= r (inv@174@01 r i)) (= i length@4@01)))
    ($Perm.min
      (ite
        (and (img@137@01 r i) (Set_in (inv@136@01 r i) s@118@01))
        (- $Perm.Write (pTaken@170@01 r i))
        $Perm.No)
      (- (- $Perm.Write (pTaken@176@01 r i)) (pTaken@177@01 r i)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@122@01 r i)
          (and
            (Set_in (inv@121@01 r i) lists@3@01)
            (not (Set_in (inv@121@01 r i) s@118@01))))
        $Perm.Write
        $Perm.No)
      (pTaken@176@01 r i))
    $Perm.No)
  
  :qid |quant-u-17026|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and
      (and
        (Set_in (inv@174@01 r i) lists@3@01)
        (not (Set_in (inv@174@01 r i) s@172@01)))
      (img@175@01 r i)
      (and (= r (inv@174@01 r i)) (= i length@4@01)))
    (= (- $Perm.Write (pTaken@176@01 r i)) $Perm.No))
  
  :qid |quant-u-17027|))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@177@01 l2@163@01 length@4@01)) $Perm.No)))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (forall ((r $Ref) (i Int)) (!
  (= (pTaken@177@01 r i) $Perm.No)
  
  :qid |quant-u-17029|))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and
      (and
        (Set_in (inv@174@01 r i) lists@3@01)
        (not (Set_in (inv@174@01 r i) s@172@01)))
      (img@175@01 r i)
      (and (= r (inv@174@01 r i)) (= i length@4@01)))
    (= (- (- $Perm.Write (pTaken@176@01 r i)) (pTaken@177@01 r i)) $Perm.No))
  
  :qid |quant-u-17030|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall r: Ref :: { (r in lists) } { (r in s) } { allSet(r, length, v) } (r in lists) && !((r in s)) ==> allSet(r, length, v))
(declare-const r@179@01 $Ref)
(set-option :timeout 0)
(push) ; 11
; [eval] (r in lists) && !((r in s)) ==> allSet(r, length, v)
; [eval] (r in lists) && !((r in s))
; [eval] (r in lists)
(push) ; 12
; [then-branch: 60 | !(r@179@01 in lists@3@01) | live]
; [else-branch: 60 | r@179@01 in lists@3@01 | live]
(push) ; 13
; [then-branch: 60 | !(r@179@01 in lists@3@01)]
(assert (not (Set_in r@179@01 lists@3@01)))
(pop) ; 13
(push) ; 13
; [else-branch: 60 | r@179@01 in lists@3@01]
(assert (Set_in r@179@01 lists@3@01))
; [eval] !((r in s))
; [eval] (r in s)
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (or (Set_in r@179@01 lists@3@01) (not (Set_in r@179@01 lists@3@01))))
(push) ; 12
; [then-branch: 61 | r@179@01 in lists@3@01 && !(r@179@01 in s@172@01) | live]
; [else-branch: 61 | !(r@179@01 in lists@3@01 && !(r@179@01 in s@172@01)) | live]
(push) ; 13
; [then-branch: 61 | r@179@01 in lists@3@01 && !(r@179@01 in s@172@01)]
(assert (and (Set_in r@179@01 lists@3@01) (not (Set_in r@179@01 s@172@01))))
; [eval] allSet(r, length, v)
(push) ; 14
(push) ; 15
(set-option :timeout 10)
(assert (not (= l2@163@01 r@179@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and (= r r@179@01) (= i length@4@01))
    (>
      (+
        (+
          (ite
            (and (img@137@01 r i) (Set_in (inv@136@01 r i) s@118@01))
            (- $Perm.Write (pTaken@170@01 r i))
            $Perm.No)
          (ite
            (and
              (img@122@01 r i)
              (and
                (Set_in (inv@121@01 r i) lists@3@01)
                (not (Set_in (inv@121@01 r i) s@118@01))))
            $Perm.Write
            $Perm.No))
        (ite (and (= r l2@163@01) (= i length@4@01)) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-17031|))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(declare-const sm@180@01 $PSF<list>)
(declare-const s@181@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (= r@179@01 l2@163@01)
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@179@01)
          ($SortWrappers.IntTo$Snap length@4@01))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@179@01)
        ($SortWrappers.IntTo$Snap length@4@01)))
      ($PSF.lookup_list (as sm@171@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@179@01)
        ($SortWrappers.IntTo$Snap length@4@01)))))))
(assert (=>
  (ite
    (and
      (img@137@01 r@179@01 length@4@01)
      (Set_in (inv@136@01 r@179@01 length@4@01) s@118@01))
    (< $Perm.No (- $Perm.Write (pTaken@170@01 r@179@01 length@4@01)))
    false)
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@179@01)
          ($SortWrappers.IntTo$Snap length@4@01))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@179@01)
        ($SortWrappers.IntTo$Snap length@4@01)))
      ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@179@01)
        ($SortWrappers.IntTo$Snap length@4@01)))))))
(assert (=>
  (and
    (img@122@01 r@179@01 length@4@01)
    (and
      (Set_in (inv@121@01 r@179@01 length@4@01) lists@3@01)
      (not (Set_in (inv@121@01 r@179@01 length@4@01) s@118@01))))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@179@01)
          ($SortWrappers.IntTo$Snap length@4@01))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@179@01)
        ($SortWrappers.IntTo$Snap length@4@01)))
      ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@119@01)) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@179@01)
        ($SortWrappers.IntTo$Snap length@4@01)))))))
(assert (allSet%precondition ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap r@179@01)
  ($SortWrappers.IntTo$Snap length@4@01))) r@179@01 length@4@01 v@5@01))
(pop) ; 14
; Joined path conditions
(assert (and
  (=>
    (= r@179@01 l2@163@01)
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@179@01)
            ($SortWrappers.IntTo$Snap length@4@01))
          $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@179@01)
          ($SortWrappers.IntTo$Snap length@4@01)))
        ($PSF.lookup_list (as sm@171@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@179@01)
          ($SortWrappers.IntTo$Snap length@4@01))))))
  (=>
    (ite
      (and
        (img@137@01 r@179@01 length@4@01)
        (Set_in (inv@136@01 r@179@01 length@4@01) s@118@01))
      (< $Perm.No (- $Perm.Write (pTaken@170@01 r@179@01 length@4@01)))
      false)
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@179@01)
            ($SortWrappers.IntTo$Snap length@4@01))
          $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@179@01)
          ($SortWrappers.IntTo$Snap length@4@01)))
        ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))))) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@179@01)
          ($SortWrappers.IntTo$Snap length@4@01))))))
  (=>
    (and
      (img@122@01 r@179@01 length@4@01)
      (and
        (Set_in (inv@121@01 r@179@01 length@4@01) lists@3@01)
        (not (Set_in (inv@121@01 r@179@01 length@4@01) s@118@01))))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@179@01)
            ($SortWrappers.IntTo$Snap length@4@01))
          $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@179@01)
          ($SortWrappers.IntTo$Snap length@4@01)))
        ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@119@01)) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@179@01)
          ($SortWrappers.IntTo$Snap length@4@01))))))
  (allSet%precondition ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@179@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@179@01 length@4@01 v@5@01)))
(pop) ; 13
(push) ; 13
; [else-branch: 61 | !(r@179@01 in lists@3@01 && !(r@179@01 in s@172@01))]
(assert (not (and (Set_in r@179@01 lists@3@01) (not (Set_in r@179@01 s@172@01)))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (=>
  (and (Set_in r@179@01 lists@3@01) (not (Set_in r@179@01 s@172@01)))
  (and
    (Set_in r@179@01 lists@3@01)
    (not (Set_in r@179@01 s@172@01))
    (=>
      (= r@179@01 l2@163@01)
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap r@179@01)
              ($SortWrappers.IntTo$Snap length@4@01))
            $Snap.unit))
        (=
          ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@179@01)
            ($SortWrappers.IntTo$Snap length@4@01)))
          ($PSF.lookup_list (as sm@171@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@179@01)
            ($SortWrappers.IntTo$Snap length@4@01))))))
    (=>
      (ite
        (and
          (img@137@01 r@179@01 length@4@01)
          (Set_in (inv@136@01 r@179@01 length@4@01) s@118@01))
        (< $Perm.No (- $Perm.Write (pTaken@170@01 r@179@01 length@4@01)))
        false)
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap r@179@01)
              ($SortWrappers.IntTo$Snap length@4@01))
            $Snap.unit))
        (=
          ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@179@01)
            ($SortWrappers.IntTo$Snap length@4@01)))
          ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))))) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@179@01)
            ($SortWrappers.IntTo$Snap length@4@01))))))
    (=>
      (and
        (img@122@01 r@179@01 length@4@01)
        (and
          (Set_in (inv@121@01 r@179@01 length@4@01) lists@3@01)
          (not (Set_in (inv@121@01 r@179@01 length@4@01) s@118@01))))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap r@179@01)
              ($SortWrappers.IntTo$Snap length@4@01))
            $Snap.unit))
        (=
          ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@179@01)
            ($SortWrappers.IntTo$Snap length@4@01)))
          ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@119@01)) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@179@01)
            ($SortWrappers.IntTo$Snap length@4@01))))))
    (allSet%precondition ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@179@01)
      ($SortWrappers.IntTo$Snap length@4@01))) r@179@01 length@4@01 v@5@01))))
; Joined path conditions
(assert (or
  (not (and (Set_in r@179@01 lists@3@01) (not (Set_in r@179@01 s@172@01))))
  (and (Set_in r@179@01 lists@3@01) (not (Set_in r@179@01 s@172@01)))))
(pop) ; 11
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@179@01 $Ref)) (!
  (and
    (or (Set_in r@179@01 lists@3@01) (not (Set_in r@179@01 lists@3@01)))
    (=>
      (and (Set_in r@179@01 lists@3@01) (not (Set_in r@179@01 s@172@01)))
      (and
        (Set_in r@179@01 lists@3@01)
        (not (Set_in r@179@01 s@172@01))
        (=>
          (= r@179@01 l2@163@01)
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@179@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@179@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list (as sm@171@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@179@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (=>
          (ite
            (and
              (img@137@01 r@179@01 length@4@01)
              (Set_in (inv@136@01 r@179@01 length@4@01) s@118@01))
            (< $Perm.No (- $Perm.Write (pTaken@170@01 r@179@01 length@4@01)))
            false)
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@179@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@179@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))))) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@179@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (=>
          (and
            (img@122@01 r@179@01 length@4@01)
            (and
              (Set_in (inv@121@01 r@179@01 length@4@01) lists@3@01)
              (not (Set_in (inv@121@01 r@179@01 length@4@01) s@118@01))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@179@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@179@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@119@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@179@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (allSet%precondition ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@179@01)
          ($SortWrappers.IntTo$Snap length@4@01))) r@179@01 length@4@01 v@5@01)))
    (or
      (not (and (Set_in r@179@01 lists@3@01) (not (Set_in r@179@01 s@172@01))))
      (and (Set_in r@179@01 lists@3@01) (not (Set_in r@179@01 s@172@01)))))
  :pattern ((Set_in r@179@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85-aux|)))
(assert (forall ((r@179@01 $Ref)) (!
  (and
    (or (Set_in r@179@01 lists@3@01) (not (Set_in r@179@01 lists@3@01)))
    (=>
      (and (Set_in r@179@01 lists@3@01) (not (Set_in r@179@01 s@172@01)))
      (and
        (Set_in r@179@01 lists@3@01)
        (not (Set_in r@179@01 s@172@01))
        (=>
          (= r@179@01 l2@163@01)
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@179@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@179@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list (as sm@171@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@179@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (=>
          (ite
            (and
              (img@137@01 r@179@01 length@4@01)
              (Set_in (inv@136@01 r@179@01 length@4@01) s@118@01))
            (< $Perm.No (- $Perm.Write (pTaken@170@01 r@179@01 length@4@01)))
            false)
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@179@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@179@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))))) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@179@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (=>
          (and
            (img@122@01 r@179@01 length@4@01)
            (and
              (Set_in (inv@121@01 r@179@01 length@4@01) lists@3@01)
              (not (Set_in (inv@121@01 r@179@01 length@4@01) s@118@01))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@179@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@179@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@119@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@179@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (allSet%precondition ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@179@01)
          ($SortWrappers.IntTo$Snap length@4@01))) r@179@01 length@4@01 v@5@01)))
    (or
      (not (and (Set_in r@179@01 lists@3@01) (not (Set_in r@179@01 s@172@01))))
      (and (Set_in r@179@01 lists@3@01) (not (Set_in r@179@01 s@172@01)))))
  :pattern ((Set_in r@179@01 s@172@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85-aux|)))
(assert (forall ((r@179@01 $Ref)) (!
  (and
    (or (Set_in r@179@01 lists@3@01) (not (Set_in r@179@01 lists@3@01)))
    (=>
      (and (Set_in r@179@01 lists@3@01) (not (Set_in r@179@01 s@172@01)))
      (and
        (Set_in r@179@01 lists@3@01)
        (not (Set_in r@179@01 s@172@01))
        (=>
          (= r@179@01 l2@163@01)
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@179@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@179@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list (as sm@171@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@179@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (=>
          (ite
            (and
              (img@137@01 r@179@01 length@4@01)
              (Set_in (inv@136@01 r@179@01 length@4@01) s@118@01))
            (< $Perm.No (- $Perm.Write (pTaken@170@01 r@179@01 length@4@01)))
            false)
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@179@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@179@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))))) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@179@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (=>
          (and
            (img@122@01 r@179@01 length@4@01)
            (and
              (Set_in (inv@121@01 r@179@01 length@4@01) lists@3@01)
              (not (Set_in (inv@121@01 r@179@01 length@4@01) s@118@01))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@179@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@179@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@119@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@179@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (allSet%precondition ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@179@01)
          ($SortWrappers.IntTo$Snap length@4@01))) r@179@01 length@4@01 v@5@01)))
    (or
      (not (and (Set_in r@179@01 lists@3@01) (not (Set_in r@179@01 s@172@01))))
      (and (Set_in r@179@01 lists@3@01) (not (Set_in r@179@01 s@172@01)))))
  :pattern ((allSet%limited ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@179@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@179@01 length@4@01 v@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85-aux|)))
(assert (forall ((r@179@01 $Ref)) (!
  (=>
    (and (Set_in r@179@01 lists@3@01) (not (Set_in r@179@01 s@172@01)))
    (allSet%precondition ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@179@01)
      ($SortWrappers.IntTo$Snap length@4@01))) r@179@01 length@4@01 v@5@01))
  :pattern ((Set_in r@179@01 lists@3@01))
  :pattern ((Set_in r@179@01 s@172@01))
  :pattern ((allSet%limited ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@179@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@179@01 length@4@01 v@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85_precondition|)))
(push) ; 11
(assert (not (forall ((r@179@01 $Ref)) (!
  (=>
    (and
      (=>
        (and (Set_in r@179@01 lists@3@01) (not (Set_in r@179@01 s@172@01)))
        (allSet%precondition ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@179@01)
          ($SortWrappers.IntTo$Snap length@4@01))) r@179@01 length@4@01 v@5@01))
      (and (Set_in r@179@01 lists@3@01) (not (Set_in r@179@01 s@172@01))))
    (allSet ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@179@01)
      ($SortWrappers.IntTo$Snap length@4@01))) r@179@01 length@4@01 v@5@01))
  :pattern ((Set_in r@179@01 lists@3@01))
  :pattern ((Set_in r@179@01 s@172@01))
  :pattern ((allSet%limited ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@179@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@179@01 length@4@01 v@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (forall ((r@179@01 $Ref)) (!
  (=>
    (and (Set_in r@179@01 lists@3@01) (not (Set_in r@179@01 s@172@01)))
    (allSet ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@179@01)
      ($SortWrappers.IntTo$Snap length@4@01))) r@179@01 length@4@01 v@5@01))
  :pattern ((Set_in r@179@01 lists@3@01))
  :pattern ((Set_in r@179@01 s@172@01))
  :pattern ((allSet%limited ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@179@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@179@01 length@4@01 v@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85|)))
(declare-const r@182@01 $Ref)
(push) ; 11
; [eval] (r in s)
(assert (Set_in r@182@01 s@172@01))
(pop) ; 11
(declare-fun inv@183@01 ($Ref) $Ref)
(declare-fun img@184@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 11
(assert (not (forall ((r1@182@01 $Ref) (r2@182@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@182@01 s@172@01)
      (Set_in r2@182@01 s@172@01)
      (= r1@182@01 r2@182@01))
    (= r1@182@01 r2@182@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@182@01 $Ref)) (!
  (=>
    (Set_in r@182@01 s@172@01)
    (and (= (inv@183@01 r@182@01) r@182@01) (img@184@01 r@182@01)))
  :pattern ((Set_in r@182@01 s@172@01))
  :pattern ((inv@183@01 r@182@01))
  :pattern ((img@184@01 r@182@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@184@01 r) (Set_in (inv@183@01 r) s@172@01)) (= (inv@183@01 r) r))
  :pattern ((inv@183@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@185@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@183@01 r) s@172@01) (img@184@01 r) (= r (inv@183@01 r)))
    ($Perm.min
      (ite
        (and (img@128@01 r) (Set_in (inv@127@01 r) s@118@01))
        (- $Perm.Write (pTaken@165@01 r))
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
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@128@01 r) (Set_in (inv@127@01 r) s@118@01))
        (- $Perm.Write (pTaken@165@01 r))
        $Perm.No)
      (pTaken@185@01 r))
    $Perm.No)
  
  :qid |quant-u-17034|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@183@01 r) s@172@01) (img@184@01 r) (= r (inv@183@01 r)))
    (= (- $Perm.Write (pTaken@185@01 r)) $Perm.No))
  
  :qid |quant-u-17035|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall r: Ref :: { (r in s) } (r in s) ==> r.val == v)
(declare-const r@186@01 $Ref)
(set-option :timeout 0)
(push) ; 11
; [eval] (r in s) ==> r.val == v
; [eval] (r in s)
(push) ; 12
; [then-branch: 62 | r@186@01 in s@172@01 | live]
; [else-branch: 62 | !(r@186@01 in s@172@01) | live]
(push) ; 13
; [then-branch: 62 | r@186@01 in s@172@01]
(assert (Set_in r@186@01 s@172@01))
; [eval] r.val == v
(push) ; 14
(assert (not (ite
  (and (img@128@01 r@186@01) (Set_in (inv@127@01 r@186@01) s@118@01))
  (< $Perm.No (- $Perm.Write (pTaken@165@01 r@186@01)))
  false)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(pop) ; 13
(push) ; 13
; [else-branch: 62 | !(r@186@01 in s@172@01)]
(assert (not (Set_in r@186@01 s@172@01)))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in r@186@01 s@172@01)) (Set_in r@186@01 s@172@01)))
(pop) ; 11
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@186@01 $Ref)) (!
  (or (not (Set_in r@186@01 s@172@01)) (Set_in r@186@01 s@172@01))
  :pattern ((Set_in r@186@01 s@172@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@54@19@54@86-aux|)))
(push) ; 11
(assert (not (forall ((r@186@01 $Ref)) (!
  (=>
    (Set_in r@186@01 s@172@01)
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@119@01)))) r@186@01)
      v@5@01))
  :pattern ((Set_in r@186@01 s@172@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@54@19@54@86|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (forall ((r@186@01 $Ref)) (!
  (=>
    (Set_in r@186@01 s@172@01)
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@119@01)))) r@186@01)
      v@5@01))
  :pattern ((Set_in r@186@01 s@172@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@54@19@54@86|)))
(declare-const r@187@01 $Ref)
(push) ; 11
; [eval] (r in s)
(assert (Set_in r@187@01 s@172@01))
(pop) ; 11
(declare-fun inv@188@01 ($Ref) $Ref)
(declare-fun img@189@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 11
(assert (not (forall ((r1@187@01 $Ref) (r2@187@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@187@01 s@172@01)
      (Set_in r2@187@01 s@172@01)
      (= r1@187@01 r2@187@01))
    (= r1@187@01 r2@187@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@187@01 $Ref)) (!
  (=>
    (Set_in r@187@01 s@172@01)
    (and (= (inv@188@01 r@187@01) r@187@01) (img@189@01 r@187@01)))
  :pattern ((Set_in r@187@01 s@172@01))
  :pattern ((inv@188@01 r@187@01))
  :pattern ((img@189@01 r@187@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@189@01 r) (Set_in (inv@188@01 r) s@172@01)) (= (inv@188@01 r) r))
  :pattern ((inv@188@01 r))
  :qid |next-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@190@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@188@01 r) s@172@01) (img@189@01 r) (= r (inv@188@01 r)))
    ($Perm.min
      (ite
        (and (img@132@01 r) (Set_in (inv@131@01 r) s@118@01))
        (- $Perm.Write (pTaken@167@01 r))
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
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@132@01 r) (Set_in (inv@131@01 r) s@118@01))
        (- $Perm.Write (pTaken@167@01 r))
        $Perm.No)
      (pTaken@190@01 r))
    $Perm.No)
  
  :qid |quant-u-17038|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@188@01 r) s@172@01) (img@189@01 r) (= r (inv@188@01 r)))
    (= (- $Perm.Write (pTaken@190@01 r)) $Perm.No))
  
  :qid |quant-u-17039|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall r1: Ref, r2: Ref :: { (r1 in s), (r2 in s) } (r1 in s) && ((r2 in s) && r1 != r2) ==> r1.next != r2.next)
(declare-const r1@191@01 $Ref)
(declare-const r2@192@01 $Ref)
(set-option :timeout 0)
(push) ; 11
; [eval] (r1 in s) && ((r2 in s) && r1 != r2) ==> r1.next != r2.next
; [eval] (r1 in s) && ((r2 in s) && r1 != r2)
; [eval] (r1 in s)
(push) ; 12
; [then-branch: 63 | !(r1@191@01 in s@172@01) | live]
; [else-branch: 63 | r1@191@01 in s@172@01 | live]
(push) ; 13
; [then-branch: 63 | !(r1@191@01 in s@172@01)]
(assert (not (Set_in r1@191@01 s@172@01)))
(pop) ; 13
(push) ; 13
; [else-branch: 63 | r1@191@01 in s@172@01]
(assert (Set_in r1@191@01 s@172@01))
; [eval] (r2 in s)
(push) ; 14
; [then-branch: 64 | !(r2@192@01 in s@172@01) | live]
; [else-branch: 64 | r2@192@01 in s@172@01 | live]
(push) ; 15
; [then-branch: 64 | !(r2@192@01 in s@172@01)]
(assert (not (Set_in r2@192@01 s@172@01)))
(pop) ; 15
(push) ; 15
; [else-branch: 64 | r2@192@01 in s@172@01]
(assert (Set_in r2@192@01 s@172@01))
; [eval] r1 != r2
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or (Set_in r2@192@01 s@172@01) (not (Set_in r2@192@01 s@172@01))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in r1@191@01 s@172@01)
  (and
    (Set_in r1@191@01 s@172@01)
    (or (Set_in r2@192@01 s@172@01) (not (Set_in r2@192@01 s@172@01))))))
(assert (or (Set_in r1@191@01 s@172@01) (not (Set_in r1@191@01 s@172@01))))
(push) ; 12
; [then-branch: 65 | r1@191@01 in s@172@01 && r2@192@01 in s@172@01 && r1@191@01 != r2@192@01 | live]
; [else-branch: 65 | !(r1@191@01 in s@172@01 && r2@192@01 in s@172@01 && r1@191@01 != r2@192@01) | live]
(push) ; 13
; [then-branch: 65 | r1@191@01 in s@172@01 && r2@192@01 in s@172@01 && r1@191@01 != r2@192@01]
(assert (and
  (Set_in r1@191@01 s@172@01)
  (and (Set_in r2@192@01 s@172@01) (not (= r1@191@01 r2@192@01)))))
; [eval] r1.next != r2.next
(push) ; 14
(assert (not (ite
  (and (img@132@01 r1@191@01) (Set_in (inv@131@01 r1@191@01) s@118@01))
  (< $Perm.No (- $Perm.Write (pTaken@167@01 r1@191@01)))
  false)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(push) ; 14
(assert (not (ite
  (and (img@132@01 r2@192@01) (Set_in (inv@131@01 r2@192@01) s@118@01))
  (< $Perm.No (- $Perm.Write (pTaken@167@01 r2@192@01)))
  false)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(pop) ; 13
(push) ; 13
; [else-branch: 65 | !(r1@191@01 in s@172@01 && r2@192@01 in s@172@01 && r1@191@01 != r2@192@01)]
(assert (not
  (and
    (Set_in r1@191@01 s@172@01)
    (and (Set_in r2@192@01 s@172@01) (not (= r1@191@01 r2@192@01))))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (=>
  (and
    (Set_in r1@191@01 s@172@01)
    (and (Set_in r2@192@01 s@172@01) (not (= r1@191@01 r2@192@01))))
  (and
    (Set_in r1@191@01 s@172@01)
    (Set_in r2@192@01 s@172@01)
    (not (= r1@191@01 r2@192@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in r1@191@01 s@172@01)
      (and (Set_in r2@192@01 s@172@01) (not (= r1@191@01 r2@192@01)))))
  (and
    (Set_in r1@191@01 s@172@01)
    (and (Set_in r2@192@01 s@172@01) (not (= r1@191@01 r2@192@01))))))
(pop) ; 11
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r1@191@01 $Ref) (r2@192@01 $Ref)) (!
  (and
    (=>
      (Set_in r1@191@01 s@172@01)
      (and
        (Set_in r1@191@01 s@172@01)
        (or (Set_in r2@192@01 s@172@01) (not (Set_in r2@192@01 s@172@01)))))
    (or (Set_in r1@191@01 s@172@01) (not (Set_in r1@191@01 s@172@01)))
    (=>
      (and
        (Set_in r1@191@01 s@172@01)
        (and (Set_in r2@192@01 s@172@01) (not (= r1@191@01 r2@192@01))))
      (and
        (Set_in r1@191@01 s@172@01)
        (Set_in r2@192@01 s@172@01)
        (not (= r1@191@01 r2@192@01))))
    (or
      (not
        (and
          (Set_in r1@191@01 s@172@01)
          (and (Set_in r2@192@01 s@172@01) (not (= r1@191@01 r2@192@01)))))
      (and
        (Set_in r1@191@01 s@172@01)
        (and (Set_in r2@192@01 s@172@01) (not (= r1@191@01 r2@192@01))))))
  :pattern ((Set_in r1@191@01 s@172@01) (Set_in r2@192@01 s@172@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@55@19@55@99-aux|)))
(push) ; 11
(assert (not (forall ((r1@191@01 $Ref) (r2@192@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@191@01 s@172@01)
      (and (Set_in r2@192@01 s@172@01) (not (= r1@191@01 r2@192@01))))
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r1@191@01)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r2@192@01))))
  :pattern ((Set_in r1@191@01 s@172@01) (Set_in r2@192@01 s@172@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@55@19@55@99|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (forall ((r1@191@01 $Ref) (r2@192@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@191@01 s@172@01)
      (and (Set_in r2@192@01 s@172@01) (not (= r1@191@01 r2@192@01))))
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r1@191@01)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r2@192@01))))
  :pattern ((Set_in r1@191@01 s@172@01) (Set_in r2@192@01 s@172@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@55@19@55@99|)))
(declare-const r@193@01 $Ref)
(push) ; 11
; [eval] (r in s)
(assert (Set_in r@193@01 s@172@01))
(push) ; 12
(assert (not (ite
  (and (img@132@01 r@193@01) (Set_in (inv@131@01 r@193@01) s@118@01))
  (< $Perm.No (- $Perm.Write (pTaken@167@01 r@193@01)))
  false)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [eval] length - 1
(pop) ; 11
(declare-fun inv@194@01 ($Ref Int) $Ref)
(declare-fun img@195@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 11
(assert (not (forall ((r1@193@01 $Ref) (r2@193@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@193@01 s@172@01)
      (Set_in r2@193@01 s@172@01)
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r1@193@01)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r2@193@01)))
    (= r1@193@01 r2@193@01))
  
  :qid |list-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@193@01 $Ref)) (!
  (=>
    (Set_in r@193@01 s@172@01)
    (and
      (=
        (inv@194@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@193@01) (-
          length@4@01
          1))
        r@193@01)
      (img@195@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@193@01) (-
        length@4@01
        1))))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@193@01))
  :qid |list-invOfFct|)))
(assert (forall ((r $Ref) (i Int)) (!
  (=>
    (and (img@195@01 r i) (Set_in (inv@194@01 r i) s@172@01))
    (and
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) (inv@194@01 r i))
        r)
      (= (- length@4@01 1) i)))
  :pattern ((inv@194@01 r i))
  :qid |list-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@196@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and
      (Set_in (inv@194@01 r i) s@172@01)
      (img@195@01 r i)
      (and
        (=
          r
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) (inv@194@01 r i)))
        (= i (- length@4@01 1))))
    ($Perm.min
      (ite
        (and (img@137@01 r i) (Set_in (inv@136@01 r i) s@118@01))
        (- $Perm.Write (pTaken@170@01 r i))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@197@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and
      (Set_in (inv@194@01 r i) s@172@01)
      (img@195@01 r i)
      (and
        (=
          r
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) (inv@194@01 r i)))
        (= i (- length@4@01 1))))
    ($Perm.min
      (ite
        (and (= r l2@163@01) (= i length@4@01))
        (- $Perm.Write (pTaken@177@01 r i))
        $Perm.No)
      (- $Perm.Write (pTaken@196@01 r i)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and (img@137@01 r i) (Set_in (inv@136@01 r i) s@118@01))
        (- $Perm.Write (pTaken@170@01 r i))
        $Perm.No)
      (pTaken@196@01 r i))
    $Perm.No)
  
  :qid |quant-u-17042|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and
      (Set_in (inv@194@01 r i) s@172@01)
      (img@195@01 r i)
      (and
        (=
          r
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) (inv@194@01 r i)))
        (= i (- length@4@01 1))))
    (= (- $Perm.Write (pTaken@196@01 r i)) $Perm.No))
  
  :qid |quant-u-17043|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall r: Ref :: { (r in s) } (r in s) ==> allSet(r.next, length - 1, v))
(declare-const r@198@01 $Ref)
(set-option :timeout 0)
(push) ; 11
; [eval] (r in s) ==> allSet(r.next, length - 1, v)
; [eval] (r in s)
(push) ; 12
; [then-branch: 66 | r@198@01 in s@172@01 | live]
; [else-branch: 66 | !(r@198@01 in s@172@01) | live]
(push) ; 13
; [then-branch: 66 | r@198@01 in s@172@01]
(assert (Set_in r@198@01 s@172@01))
; [eval] allSet(r.next, length - 1, v)
(push) ; 14
(assert (not (ite
  (and (img@132@01 r@198@01) (Set_in (inv@131@01 r@198@01) s@118@01))
  (< $Perm.No (- $Perm.Write (pTaken@167@01 r@198@01)))
  false)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [eval] length - 1
(push) ; 14
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  l2@163@01
  ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and
      (=
        r
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
      (= i (- length@4@01 1)))
    (>
      (+
        (+
          (ite
            (and (img@137@01 r i) (Set_in (inv@136@01 r i) s@118@01))
            (- $Perm.Write (pTaken@170@01 r i))
            $Perm.No)
          (ite
            (and
              (img@122@01 r i)
              (and
                (Set_in (inv@121@01 r i) lists@3@01)
                (not (Set_in (inv@121@01 r i) s@118@01))))
            $Perm.Write
            $Perm.No))
        (ite (and (= r l2@163@01) (= i length@4@01)) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-17044|))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (=
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01)
      l2@163@01)
    (= (- length@4@01 1) length@4@01))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))
      ($PSF.lookup_list (as sm@171@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))))))
(assert (=>
  (ite
    (and
      (img@137@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01) (-
        length@4@01
        1))
      (Set_in (inv@136@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01) (-
        length@4@01
        1)) s@118@01))
    (<
      $Perm.No
      (-
        $Perm.Write
        (pTaken@170@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01) (-
          length@4@01
          1))))
    false)
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))
      ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))))))
(assert (=>
  (and
    (img@122@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01) (-
      length@4@01
      1))
    (and
      (Set_in (inv@121@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01) (-
        length@4@01
        1)) lists@3@01)
      (not
        (Set_in (inv@121@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01) (-
          length@4@01
          1)) s@118@01))))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))
      ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@119@01)) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))))))
(assert (allSet%precondition ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
  ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01) (-
  length@4@01
  1) v@5@01))
(pop) ; 14
; Joined path conditions
(assert (and
  (=>
    (and
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01)
        l2@163@01)
      (= (- length@4@01 1) length@4@01))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1)))
          $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1))))
        ($PSF.lookup_list (as sm@171@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
  (=>
    (ite
      (and
        (img@137@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01) (-
          length@4@01
          1))
        (Set_in (inv@136@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01) (-
          length@4@01
          1)) s@118@01))
      (<
        $Perm.No
        (-
          $Perm.Write
          (pTaken@170@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01) (-
            length@4@01
            1))))
      false)
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1)))
          $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1))))
        ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))))) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
  (=>
    (and
      (img@122@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01) (-
        length@4@01
        1))
      (and
        (Set_in (inv@121@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01) (-
          length@4@01
          1)) lists@3@01)
        (not
          (Set_in (inv@121@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01) (-
            length@4@01
            1)) s@118@01))))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1)))
          $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1))))
        ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@119@01)) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
  (allSet%precondition ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
    ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01) (-
    length@4@01
    1) v@5@01)))
(pop) ; 13
(push) ; 13
; [else-branch: 66 | !(r@198@01 in s@172@01)]
(assert (not (Set_in r@198@01 s@172@01)))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (=>
  (Set_in r@198@01 s@172@01)
  (and
    (Set_in r@198@01 s@172@01)
    (=>
      (and
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01)
          l2@163@01)
        (= (- length@4@01 1) length@4@01))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
              ($SortWrappers.IntTo$Snap (- length@4@01 1)))
            $Snap.unit))
        (=
          ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1))))
          ($PSF.lookup_list (as sm@171@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
    (=>
      (ite
        (and
          (img@137@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01) (-
            length@4@01
            1))
          (Set_in (inv@136@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01) (-
            length@4@01
            1)) s@118@01))
        (<
          $Perm.No
          (-
            $Perm.Write
            (pTaken@170@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01) (-
              length@4@01
              1))))
        false)
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
              ($SortWrappers.IntTo$Snap (- length@4@01 1)))
            $Snap.unit))
        (=
          ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1))))
          ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))))) ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
    (=>
      (and
        (img@122@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01) (-
          length@4@01
          1))
        (and
          (Set_in (inv@121@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01) (-
            length@4@01
            1)) lists@3@01)
          (not
            (Set_in (inv@121@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01) (-
              length@4@01
              1)) s@118@01))))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
              ($SortWrappers.IntTo$Snap (- length@4@01 1)))
            $Snap.unit))
        (=
          ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1))))
          ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@119@01)) ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
    (allSet%precondition ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
      ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01) (-
      length@4@01
      1) v@5@01))))
; Joined path conditions
(assert (or (not (Set_in r@198@01 s@172@01)) (Set_in r@198@01 s@172@01)))
(pop) ; 11
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@198@01 $Ref)) (!
  (and
    (=>
      (Set_in r@198@01 s@172@01)
      (and
        (Set_in r@198@01 s@172@01)
        (=>
          (and
            (=
              ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01)
              l2@163@01)
            (= (- length@4@01 1) length@4@01))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
                  ($SortWrappers.IntTo$Snap (- length@4@01 1)))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
                ($SortWrappers.IntTo$Snap (- length@4@01 1))))
              ($PSF.lookup_list (as sm@171@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
                ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
        (=>
          (ite
            (and
              (img@137@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01) (-
                length@4@01
                1))
              (Set_in (inv@136@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01) (-
                length@4@01
                1)) s@118@01))
            (<
              $Perm.No
              (-
                $Perm.Write
                (pTaken@170@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01) (-
                  length@4@01
                  1))))
            false)
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
                  ($SortWrappers.IntTo$Snap (- length@4@01 1)))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
                ($SortWrappers.IntTo$Snap (- length@4@01 1))))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))))) ($Snap.combine
                ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
                ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
        (=>
          (and
            (img@122@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01) (-
              length@4@01
              1))
            (and
              (Set_in (inv@121@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01) (-
                length@4@01
                1)) lists@3@01)
              (not
                (Set_in (inv@121@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01) (-
                  length@4@01
                  1)) s@118@01))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
                  ($SortWrappers.IntTo$Snap (- length@4@01 1)))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
                ($SortWrappers.IntTo$Snap (- length@4@01 1))))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@119@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
                ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
        (allSet%precondition ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01) (-
          length@4@01
          1) v@5@01)))
    (or (not (Set_in r@198@01 s@172@01)) (Set_in r@198@01 s@172@01)))
  :pattern ((Set_in r@198@01 s@172@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@57@19@57@75-aux|)))
(assert (forall ((r@198@01 $Ref)) (!
  (=>
    (Set_in r@198@01 s@172@01)
    (allSet%precondition ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
      ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01) (-
      length@4@01
      1) v@5@01))
  :pattern ((Set_in r@198@01 s@172@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@57@19@57@75_precondition|)))
(push) ; 11
(assert (not (forall ((r@198@01 $Ref)) (!
  (=>
    (and
      (=>
        (Set_in r@198@01 s@172@01)
        (allSet%precondition ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01) (-
          length@4@01
          1) v@5@01))
      (Set_in r@198@01 s@172@01))
    (allSet ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
      ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01) (-
      length@4@01
      1) v@5@01))
  :pattern ((Set_in r@198@01 s@172@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@57@19@57@75|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (forall ((r@198@01 $Ref)) (!
  (=>
    (Set_in r@198@01 s@172@01)
    (allSet ($PSF.lookup_list (as sm@180@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01))
      ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@198@01) (-
      length@4@01
      1) v@5@01))
  :pattern ((Set_in r@198@01 s@172@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@57@19@57@75|)))
(pop) ; 10
(pop) ; 9
(push) ; 9
; [else-branch: 57 | !(|s@118@01| > 0)]
(assert (not (> (Set_card s@118@01) 0)))
(pop) ; 9
(push) ; 9
(set-option :timeout 10)
(assert (not (forall ((r $Ref) (i Int)) (!
  (and
    (=
      r@112@01
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@135@01))
    (=
      (and (img@114@01 r i) (Set_in (inv@113@01 r i) sNext@20@01))
      (and (img@137@01 r i) (Set_in (inv@136@01 r i) s@118@01))))
  
  :qid |quant-u-17045|))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (forall ((r $Ref) (i Int)) (!
  (and
    (= r@112@01 r@120@01)
    (=
      (and (img@114@01 r i) (Set_in (inv@113@01 r i) sNext@20@01))
      (and
        (img@122@01 r i)
        (and
          (Set_in (inv@121@01 r i) lists@3@01)
          (not (Set_in (inv@121@01 r i) s@118@01))))))
  
  :qid |quant-u-17046|))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] !(|s| > 0)
; [eval] |s| > 0
; [eval] |s|
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (> (Set_card s@118@01) 0)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (not (> (Set_card s@118@01) 0))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 67 | !(|s@118@01| > 0) | live]
; [else-branch: 67 | |s@118@01| > 0 | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 67 | !(|s@118@01| > 0)]
(assert (not (> (Set_card s@118@01) 0)))
(declare-const r@199@01 $Ref)
(push) ; 10
; [eval] (r in lists)
(assert (Set_in r@199@01 lists@3@01))
(pop) ; 10
(declare-fun inv@200@01 ($Ref Int) $Ref)
(declare-fun img@201@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 10
(assert (not (forall ((r1@199@01 $Ref) (r2@199@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@199@01 lists@3@01)
      (Set_in r2@199@01 lists@3@01)
      (= r1@199@01 r2@199@01))
    (= r1@199@01 r2@199@01))
  
  :qid |list-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@199@01 $Ref)) (!
  (=>
    (Set_in r@199@01 lists@3@01)
    (and
      (= (inv@200@01 r@199@01 length@4@01) r@199@01)
      (img@201@01 r@199@01 length@4@01)))
  :pattern ((Set_in r@199@01 lists@3@01))
  :pattern ((inv@200@01 r@199@01 length@4@01))
  :pattern ((img@201@01 r@199@01 length@4@01))
  :qid |list-invOfFct|)))
(assert (forall ((r $Ref) (i Int)) (!
  (=>
    (and (img@201@01 r i) (Set_in (inv@200@01 r i) lists@3@01))
    (and (= (inv@200@01 r i) r) (= length@4@01 i)))
  :pattern ((inv@200@01 r i))
  :qid |list-fctOfInv|)))
(push) ; 10
(set-option :timeout 10)
(assert (not (forall ((r@199@01 $Ref)) (!
  (=
    r@199@01
    ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))) r@199@01))
  
  :qid |quant-u-17048|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (forall ((r@199@01 $Ref)) (!
  (= length@4@01 (- length@4@01 1))
  
  :qid |quant-u-17049|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@202@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and
      (Set_in (inv@200@01 r i) lists@3@01)
      (img@201@01 r i)
      (and (= r (inv@200@01 r i)) (= i length@4@01)))
    ($Perm.min
      (ite
        (and
          (img@122@01 r i)
          (and
            (Set_in (inv@121@01 r i) lists@3@01)
            (not (Set_in (inv@121@01 r i) s@118@01))))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@203@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and
      (Set_in (inv@200@01 r i) lists@3@01)
      (img@201@01 r i)
      (and (= r (inv@200@01 r i)) (= i length@4@01)))
    ($Perm.min
      (ite
        (and (img@137@01 r i) (Set_in (inv@136@01 r i) s@118@01))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@202@01 r i)))
    $Perm.No))
(define-fun pTaken@204@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and
      (Set_in (inv@200@01 r i) lists@3@01)
      (img@201@01 r i)
      (and (= r (inv@200@01 r i)) (= i length@4@01)))
    ($Perm.min
      (ite
        (and (img@114@01 r i) (Set_in (inv@113@01 r i) sNext@20@01))
        (- $Perm.Write (pTaken@161@01 r i))
        $Perm.No)
      (- (- $Perm.Write (pTaken@202@01 r i)) (pTaken@203@01 r i)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@122@01 r i)
          (and
            (Set_in (inv@121@01 r i) lists@3@01)
            (not (Set_in (inv@121@01 r i) s@118@01))))
        $Perm.Write
        $Perm.No)
      (pTaken@202@01 r i))
    $Perm.No)
  
  :qid |quant-u-17051|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and
      (Set_in (inv@200@01 r i) lists@3@01)
      (img@201@01 r i)
      (and (= r (inv@200@01 r i)) (= i length@4@01)))
    (= (- $Perm.Write (pTaken@202@01 r i)) $Perm.No))
  
  :qid |quant-u-17052|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall r: Ref :: { (r in lists) } { allSet(r, length, v) } (r in lists) ==> allSet(r, length, v))
(declare-const r@205@01 $Ref)
(set-option :timeout 0)
(push) ; 10
; [eval] (r in lists) ==> allSet(r, length, v)
; [eval] (r in lists)
(push) ; 11
; [then-branch: 68 | r@205@01 in lists@3@01 | live]
; [else-branch: 68 | !(r@205@01 in lists@3@01) | live]
(push) ; 12
; [then-branch: 68 | r@205@01 in lists@3@01]
(assert (Set_in r@205@01 lists@3@01))
; [eval] allSet(r, length, v)
(push) ; 13
(push) ; 14
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and (= r r@205@01) (= i length@4@01))
    (>
      (+
        (+
          (ite
            (and
              (img@122@01 r i)
              (and
                (Set_in (inv@121@01 r i) lists@3@01)
                (not (Set_in (inv@121@01 r i) s@118@01))))
            $Perm.Write
            $Perm.No)
          (ite
            (and (img@137@01 r i) (Set_in (inv@136@01 r i) s@118@01))
            $Perm.Write
            $Perm.No))
        (ite
          (and (img@114@01 r i) (Set_in (inv@113@01 r i) sNext@20@01))
          (- $Perm.Write (pTaken@161@01 r i))
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-17053|))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(declare-const sm@206@01 $PSF<list>)
(declare-const s@207@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@122@01 r@205@01 length@4@01)
    (and
      (Set_in (inv@121@01 r@205@01 length@4@01) lists@3@01)
      (not (Set_in (inv@121@01 r@205@01 length@4@01) s@118@01))))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@205@01)
          ($SortWrappers.IntTo$Snap length@4@01))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@206@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@205@01)
        ($SortWrappers.IntTo$Snap length@4@01)))
      ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@119@01)) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@205@01)
        ($SortWrappers.IntTo$Snap length@4@01)))))))
(assert (=>
  (and
    (img@137@01 r@205@01 length@4@01)
    (Set_in (inv@136@01 r@205@01 length@4@01) s@118@01))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@205@01)
          ($SortWrappers.IntTo$Snap length@4@01))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@206@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@205@01)
        ($SortWrappers.IntTo$Snap length@4@01)))
      ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@205@01)
        ($SortWrappers.IntTo$Snap length@4@01)))))))
(assert (=>
  (ite
    (and
      (img@114@01 r@205@01 length@4@01)
      (Set_in (inv@113@01 r@205@01 length@4@01) sNext@20@01))
    (< $Perm.No (- $Perm.Write (pTaken@161@01 r@205@01 length@4@01)))
    false)
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@205@01)
          ($SortWrappers.IntTo$Snap length@4@01))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@206@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@205@01)
        ($SortWrappers.IntTo$Snap length@4@01)))
      ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@111@01)) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@205@01)
        ($SortWrappers.IntTo$Snap length@4@01)))))))
(assert (allSet%precondition ($PSF.lookup_list (as sm@206@01  $PSF<list>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap r@205@01)
  ($SortWrappers.IntTo$Snap length@4@01))) r@205@01 length@4@01 v@5@01))
(pop) ; 13
; Joined path conditions
(assert (and
  (=>
    (and
      (img@122@01 r@205@01 length@4@01)
      (and
        (Set_in (inv@121@01 r@205@01 length@4@01) lists@3@01)
        (not (Set_in (inv@121@01 r@205@01 length@4@01) s@118@01))))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@205@01)
            ($SortWrappers.IntTo$Snap length@4@01))
          $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@206@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@205@01)
          ($SortWrappers.IntTo$Snap length@4@01)))
        ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@119@01)) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@205@01)
          ($SortWrappers.IntTo$Snap length@4@01))))))
  (=>
    (and
      (img@137@01 r@205@01 length@4@01)
      (Set_in (inv@136@01 r@205@01 length@4@01) s@118@01))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@205@01)
            ($SortWrappers.IntTo$Snap length@4@01))
          $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@206@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@205@01)
          ($SortWrappers.IntTo$Snap length@4@01)))
        ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))))) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@205@01)
          ($SortWrappers.IntTo$Snap length@4@01))))))
  (=>
    (ite
      (and
        (img@114@01 r@205@01 length@4@01)
        (Set_in (inv@113@01 r@205@01 length@4@01) sNext@20@01))
      (< $Perm.No (- $Perm.Write (pTaken@161@01 r@205@01 length@4@01)))
      false)
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@205@01)
            ($SortWrappers.IntTo$Snap length@4@01))
          $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@206@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@205@01)
          ($SortWrappers.IntTo$Snap length@4@01)))
        ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@111@01)) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@205@01)
          ($SortWrappers.IntTo$Snap length@4@01))))))
  (allSet%precondition ($PSF.lookup_list (as sm@206@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@205@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@205@01 length@4@01 v@5@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 68 | !(r@205@01 in lists@3@01)]
(assert (not (Set_in r@205@01 lists@3@01)))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=>
  (Set_in r@205@01 lists@3@01)
  (and
    (Set_in r@205@01 lists@3@01)
    (=>
      (and
        (img@122@01 r@205@01 length@4@01)
        (and
          (Set_in (inv@121@01 r@205@01 length@4@01) lists@3@01)
          (not (Set_in (inv@121@01 r@205@01 length@4@01) s@118@01))))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap r@205@01)
              ($SortWrappers.IntTo$Snap length@4@01))
            $Snap.unit))
        (=
          ($PSF.lookup_list (as sm@206@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@205@01)
            ($SortWrappers.IntTo$Snap length@4@01)))
          ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@119@01)) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@205@01)
            ($SortWrappers.IntTo$Snap length@4@01))))))
    (=>
      (and
        (img@137@01 r@205@01 length@4@01)
        (Set_in (inv@136@01 r@205@01 length@4@01) s@118@01))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap r@205@01)
              ($SortWrappers.IntTo$Snap length@4@01))
            $Snap.unit))
        (=
          ($PSF.lookup_list (as sm@206@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@205@01)
            ($SortWrappers.IntTo$Snap length@4@01)))
          ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))))) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@205@01)
            ($SortWrappers.IntTo$Snap length@4@01))))))
    (=>
      (ite
        (and
          (img@114@01 r@205@01 length@4@01)
          (Set_in (inv@113@01 r@205@01 length@4@01) sNext@20@01))
        (< $Perm.No (- $Perm.Write (pTaken@161@01 r@205@01 length@4@01)))
        false)
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap r@205@01)
              ($SortWrappers.IntTo$Snap length@4@01))
            $Snap.unit))
        (=
          ($PSF.lookup_list (as sm@206@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@205@01)
            ($SortWrappers.IntTo$Snap length@4@01)))
          ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@111@01)) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@205@01)
            ($SortWrappers.IntTo$Snap length@4@01))))))
    (allSet%precondition ($PSF.lookup_list (as sm@206@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@205@01)
      ($SortWrappers.IntTo$Snap length@4@01))) r@205@01 length@4@01 v@5@01))))
; Joined path conditions
(assert (or (not (Set_in r@205@01 lists@3@01)) (Set_in r@205@01 lists@3@01)))
(pop) ; 10
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@205@01 $Ref)) (!
  (and
    (=>
      (Set_in r@205@01 lists@3@01)
      (and
        (Set_in r@205@01 lists@3@01)
        (=>
          (and
            (img@122@01 r@205@01 length@4@01)
            (and
              (Set_in (inv@121@01 r@205@01 length@4@01) lists@3@01)
              (not (Set_in (inv@121@01 r@205@01 length@4@01) s@118@01))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@205@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@206@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@205@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@119@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@205@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (=>
          (and
            (img@137@01 r@205@01 length@4@01)
            (Set_in (inv@136@01 r@205@01 length@4@01) s@118@01))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@205@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@206@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@205@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))))) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@205@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (=>
          (ite
            (and
              (img@114@01 r@205@01 length@4@01)
              (Set_in (inv@113@01 r@205@01 length@4@01) sNext@20@01))
            (< $Perm.No (- $Perm.Write (pTaken@161@01 r@205@01 length@4@01)))
            false)
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@205@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@206@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@205@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@111@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@205@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (allSet%precondition ($PSF.lookup_list (as sm@206@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@205@01)
          ($SortWrappers.IntTo$Snap length@4@01))) r@205@01 length@4@01 v@5@01)))
    (or (not (Set_in r@205@01 lists@3@01)) (Set_in r@205@01 lists@3@01)))
  :pattern ((Set_in r@205@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@26@9@26@85-aux|)))
(assert (forall ((r@205@01 $Ref)) (!
  (and
    (=>
      (Set_in r@205@01 lists@3@01)
      (and
        (Set_in r@205@01 lists@3@01)
        (=>
          (and
            (img@122@01 r@205@01 length@4@01)
            (and
              (Set_in (inv@121@01 r@205@01 length@4@01) lists@3@01)
              (not (Set_in (inv@121@01 r@205@01 length@4@01) s@118@01))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@205@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@206@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@205@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@119@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@205@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (=>
          (and
            (img@137@01 r@205@01 length@4@01)
            (Set_in (inv@136@01 r@205@01 length@4@01) s@118@01))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@205@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@206@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@205@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))))) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@205@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (=>
          (ite
            (and
              (img@114@01 r@205@01 length@4@01)
              (Set_in (inv@113@01 r@205@01 length@4@01) sNext@20@01))
            (< $Perm.No (- $Perm.Write (pTaken@161@01 r@205@01 length@4@01)))
            false)
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@205@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@206@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@205@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@111@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@205@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (allSet%precondition ($PSF.lookup_list (as sm@206@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@205@01)
          ($SortWrappers.IntTo$Snap length@4@01))) r@205@01 length@4@01 v@5@01)))
    (or (not (Set_in r@205@01 lists@3@01)) (Set_in r@205@01 lists@3@01)))
  :pattern ((allSet%limited ($PSF.lookup_list (as sm@206@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@205@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@205@01 length@4@01 v@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@26@9@26@85-aux|)))
(assert (forall ((r@205@01 $Ref)) (!
  (=>
    (Set_in r@205@01 lists@3@01)
    (allSet%precondition ($PSF.lookup_list (as sm@206@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@205@01)
      ($SortWrappers.IntTo$Snap length@4@01))) r@205@01 length@4@01 v@5@01))
  :pattern ((Set_in r@205@01 lists@3@01))
  :pattern ((allSet%limited ($PSF.lookup_list (as sm@206@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@205@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@205@01 length@4@01 v@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@26@9@26@85_precondition|)))
(push) ; 10
(assert (not (forall ((r@205@01 $Ref)) (!
  (=>
    (and
      (=>
        (Set_in r@205@01 lists@3@01)
        (allSet%precondition ($PSF.lookup_list (as sm@206@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@205@01)
          ($SortWrappers.IntTo$Snap length@4@01))) r@205@01 length@4@01 v@5@01))
      (Set_in r@205@01 lists@3@01))
    (allSet ($PSF.lookup_list (as sm@206@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@205@01)
      ($SortWrappers.IntTo$Snap length@4@01))) r@205@01 length@4@01 v@5@01))
  :pattern ((Set_in r@205@01 lists@3@01))
  :pattern ((allSet%limited ($PSF.lookup_list (as sm@206@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@205@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@205@01 length@4@01 v@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@26@9@26@85|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (forall ((r@205@01 $Ref)) (!
  (=>
    (Set_in r@205@01 lists@3@01)
    (allSet ($PSF.lookup_list (as sm@206@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@205@01)
      ($SortWrappers.IntTo$Snap length@4@01))) r@205@01 length@4@01 v@5@01))
  :pattern ((Set_in r@205@01 lists@3@01))
  :pattern ((allSet%limited ($PSF.lookup_list (as sm@206@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@205@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@205@01 length@4@01 v@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@26@9@26@85|)))
(pop) ; 9
(push) ; 9
; [else-branch: 67 | |s@118@01| > 0]
(assert (> (Set_card s@118@01) 0))
(pop) ; 9
(pop) ; 8
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 39 | !(length@4@01 - 1 > 0)]
(assert (not (> (- length@4@01 1) 0)))
(pop) ; 6
; [eval] !(length - 1 > 0)
; [eval] length - 1 > 0
; [eval] length - 1
(push) ; 6
(set-option :timeout 10)
(assert (not (> (- length@4@01 1) 0)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (> (- length@4@01 1) 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 69 | !(length@4@01 - 1 > 0) | live]
; [else-branch: 69 | length@4@01 - 1 > 0 | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 69 | !(length@4@01 - 1 > 0)]
(assert (not (> (- length@4@01 1) 0)))
; [exec]
; s := lists
(declare-const s@208@01 Set<$Ref>)
(push) ; 7
; Loop head block: Check well-definedness of invariant
(declare-const $t@209@01 $Snap)
(assert (= $t@209@01 ($Snap.combine ($Snap.first $t@209@01) ($Snap.second $t@209@01))))
(declare-const r@210@01 $Ref)
(push) ; 8
; [eval] (r in lists) && !((r in s))
; [eval] (r in lists)
(push) ; 9
; [then-branch: 70 | !(r@210@01 in lists@3@01) | live]
; [else-branch: 70 | r@210@01 in lists@3@01 | live]
(push) ; 10
; [then-branch: 70 | !(r@210@01 in lists@3@01)]
(assert (not (Set_in r@210@01 lists@3@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 70 | r@210@01 in lists@3@01]
(assert (Set_in r@210@01 lists@3@01))
; [eval] !((r in s))
; [eval] (r in s)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (Set_in r@210@01 lists@3@01) (not (Set_in r@210@01 lists@3@01))))
(assert (and (Set_in r@210@01 lists@3@01) (not (Set_in r@210@01 s@208@01))))
(pop) ; 8
(declare-fun inv@211@01 ($Ref Int) $Ref)
(declare-fun img@212@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((r@210@01 $Ref)) (!
  (=>
    (and (Set_in r@210@01 lists@3@01) (not (Set_in r@210@01 s@208@01)))
    (or (Set_in r@210@01 lists@3@01) (not (Set_in r@210@01 lists@3@01))))
  :pattern ((Set_in r@210@01 lists@3@01))
  :pattern ((Set_in r@210@01 s@208@01))
  :pattern ((inv@211@01 r@210@01 length@4@01))
  :pattern ((img@212@01 r@210@01 length@4@01))
  :qid |list-aux|)))
; Check receiver injectivity
(push) ; 8
(assert (not (forall ((r1@210@01 $Ref) (r2@210@01 $Ref)) (!
  (=>
    (and
      (and (Set_in r1@210@01 lists@3@01) (not (Set_in r1@210@01 s@208@01)))
      (and (Set_in r2@210@01 lists@3@01) (not (Set_in r2@210@01 s@208@01)))
      (= r1@210@01 r2@210@01))
    (= r1@210@01 r2@210@01))
  
  :qid |list-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@210@01 $Ref)) (!
  (=>
    (and (Set_in r@210@01 lists@3@01) (not (Set_in r@210@01 s@208@01)))
    (and
      (= (inv@211@01 r@210@01 length@4@01) r@210@01)
      (img@212@01 r@210@01 length@4@01)))
  :pattern ((Set_in r@210@01 lists@3@01))
  :pattern ((Set_in r@210@01 s@208@01))
  :pattern ((inv@211@01 r@210@01 length@4@01))
  :pattern ((img@212@01 r@210@01 length@4@01))
  :qid |quant-u-17055|)))
(assert (forall ((r $Ref) (i Int)) (!
  (=>
    (and
      (img@212@01 r i)
      (and
        (Set_in (inv@211@01 r i) lists@3@01)
        (not (Set_in (inv@211@01 r i) s@208@01))))
    (and (= (inv@211@01 r i) r) (= length@4@01 i)))
  :pattern ((inv@211@01 r i))
  :qid |list-fctOfInv|)))
; Permissions are non-negative
(assert (=
  ($Snap.second $t@209@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@209@01))
    ($Snap.second ($Snap.second $t@209@01)))))
(assert (= ($Snap.first ($Snap.second $t@209@01)) $Snap.unit))
; [eval] (forall r: Ref :: { (r in lists) } { (r in s) } { allSet(r, length, v) } (r in lists) && !((r in s)) ==> allSet(r, length, v))
(declare-const r@213@01 $Ref)
(push) ; 8
; [eval] (r in lists) && !((r in s)) ==> allSet(r, length, v)
; [eval] (r in lists) && !((r in s))
; [eval] (r in lists)
(push) ; 9
; [then-branch: 71 | !(r@213@01 in lists@3@01) | live]
; [else-branch: 71 | r@213@01 in lists@3@01 | live]
(push) ; 10
; [then-branch: 71 | !(r@213@01 in lists@3@01)]
(assert (not (Set_in r@213@01 lists@3@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 71 | r@213@01 in lists@3@01]
(assert (Set_in r@213@01 lists@3@01))
; [eval] !((r in s))
; [eval] (r in s)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (Set_in r@213@01 lists@3@01) (not (Set_in r@213@01 lists@3@01))))
(push) ; 9
; [then-branch: 72 | r@213@01 in lists@3@01 && !(r@213@01 in s@208@01) | live]
; [else-branch: 72 | !(r@213@01 in lists@3@01 && !(r@213@01 in s@208@01)) | live]
(push) ; 10
; [then-branch: 72 | r@213@01 in lists@3@01 && !(r@213@01 in s@208@01)]
(assert (and (Set_in r@213@01 lists@3@01) (not (Set_in r@213@01 s@208@01))))
; [eval] allSet(r, length, v)
(push) ; 11
(push) ; 12
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and (= r r@213@01) (= i length@4@01))
    (>
      (ite
        (and
          (img@212@01 r i)
          (and
            (Set_in (inv@211@01 r i) lists@3@01)
            (not (Set_in (inv@211@01 r i) s@208@01))))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-17056|))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(declare-const sm@214@01 $PSF<list>)
(declare-const s@215@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@212@01 r@213@01 length@4@01)
    (and
      (Set_in (inv@211@01 r@213@01 length@4@01) lists@3@01)
      (not (Set_in (inv@211@01 r@213@01 length@4@01) s@208@01))))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@213@01)
          ($SortWrappers.IntTo$Snap length@4@01))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@213@01)
        ($SortWrappers.IntTo$Snap length@4@01)))
      ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@209@01)) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@213@01)
        ($SortWrappers.IntTo$Snap length@4@01)))))))
(assert (allSet%precondition ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap r@213@01)
  ($SortWrappers.IntTo$Snap length@4@01))) r@213@01 length@4@01 v@5@01))
(pop) ; 11
; Joined path conditions
(assert (and
  (=>
    (and
      (img@212@01 r@213@01 length@4@01)
      (and
        (Set_in (inv@211@01 r@213@01 length@4@01) lists@3@01)
        (not (Set_in (inv@211@01 r@213@01 length@4@01) s@208@01))))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@213@01)
            ($SortWrappers.IntTo$Snap length@4@01))
          $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@213@01)
          ($SortWrappers.IntTo$Snap length@4@01)))
        ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@209@01)) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@213@01)
          ($SortWrappers.IntTo$Snap length@4@01))))))
  (allSet%precondition ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@213@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@213@01 length@4@01 v@5@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 72 | !(r@213@01 in lists@3@01 && !(r@213@01 in s@208@01))]
(assert (not (and (Set_in r@213@01 lists@3@01) (not (Set_in r@213@01 s@208@01)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (and (Set_in r@213@01 lists@3@01) (not (Set_in r@213@01 s@208@01)))
  (and
    (Set_in r@213@01 lists@3@01)
    (not (Set_in r@213@01 s@208@01))
    (=>
      (and
        (img@212@01 r@213@01 length@4@01)
        (and
          (Set_in (inv@211@01 r@213@01 length@4@01) lists@3@01)
          (not (Set_in (inv@211@01 r@213@01 length@4@01) s@208@01))))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap r@213@01)
              ($SortWrappers.IntTo$Snap length@4@01))
            $Snap.unit))
        (=
          ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@213@01)
            ($SortWrappers.IntTo$Snap length@4@01)))
          ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@209@01)) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@213@01)
            ($SortWrappers.IntTo$Snap length@4@01))))))
    (allSet%precondition ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@213@01)
      ($SortWrappers.IntTo$Snap length@4@01))) r@213@01 length@4@01 v@5@01))))
; Joined path conditions
(assert (or
  (not (and (Set_in r@213@01 lists@3@01) (not (Set_in r@213@01 s@208@01))))
  (and (Set_in r@213@01 lists@3@01) (not (Set_in r@213@01 s@208@01)))))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@213@01 $Ref)) (!
  (and
    (or (Set_in r@213@01 lists@3@01) (not (Set_in r@213@01 lists@3@01)))
    (=>
      (and (Set_in r@213@01 lists@3@01) (not (Set_in r@213@01 s@208@01)))
      (and
        (Set_in r@213@01 lists@3@01)
        (not (Set_in r@213@01 s@208@01))
        (=>
          (and
            (img@212@01 r@213@01 length@4@01)
            (and
              (Set_in (inv@211@01 r@213@01 length@4@01) lists@3@01)
              (not (Set_in (inv@211@01 r@213@01 length@4@01) s@208@01))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@213@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@213@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@209@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@213@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (allSet%precondition ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@213@01)
          ($SortWrappers.IntTo$Snap length@4@01))) r@213@01 length@4@01 v@5@01)))
    (or
      (not (and (Set_in r@213@01 lists@3@01) (not (Set_in r@213@01 s@208@01))))
      (and (Set_in r@213@01 lists@3@01) (not (Set_in r@213@01 s@208@01)))))
  :pattern ((Set_in r@213@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85-aux|)))
(assert (forall ((r@213@01 $Ref)) (!
  (and
    (or (Set_in r@213@01 lists@3@01) (not (Set_in r@213@01 lists@3@01)))
    (=>
      (and (Set_in r@213@01 lists@3@01) (not (Set_in r@213@01 s@208@01)))
      (and
        (Set_in r@213@01 lists@3@01)
        (not (Set_in r@213@01 s@208@01))
        (=>
          (and
            (img@212@01 r@213@01 length@4@01)
            (and
              (Set_in (inv@211@01 r@213@01 length@4@01) lists@3@01)
              (not (Set_in (inv@211@01 r@213@01 length@4@01) s@208@01))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@213@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@213@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@209@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@213@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (allSet%precondition ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@213@01)
          ($SortWrappers.IntTo$Snap length@4@01))) r@213@01 length@4@01 v@5@01)))
    (or
      (not (and (Set_in r@213@01 lists@3@01) (not (Set_in r@213@01 s@208@01))))
      (and (Set_in r@213@01 lists@3@01) (not (Set_in r@213@01 s@208@01)))))
  :pattern ((Set_in r@213@01 s@208@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85-aux|)))
(assert (forall ((r@213@01 $Ref)) (!
  (and
    (or (Set_in r@213@01 lists@3@01) (not (Set_in r@213@01 lists@3@01)))
    (=>
      (and (Set_in r@213@01 lists@3@01) (not (Set_in r@213@01 s@208@01)))
      (and
        (Set_in r@213@01 lists@3@01)
        (not (Set_in r@213@01 s@208@01))
        (=>
          (and
            (img@212@01 r@213@01 length@4@01)
            (and
              (Set_in (inv@211@01 r@213@01 length@4@01) lists@3@01)
              (not (Set_in (inv@211@01 r@213@01 length@4@01) s@208@01))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@213@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@213@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@209@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@213@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (allSet%precondition ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@213@01)
          ($SortWrappers.IntTo$Snap length@4@01))) r@213@01 length@4@01 v@5@01)))
    (or
      (not (and (Set_in r@213@01 lists@3@01) (not (Set_in r@213@01 s@208@01))))
      (and (Set_in r@213@01 lists@3@01) (not (Set_in r@213@01 s@208@01)))))
  :pattern ((allSet%limited ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@213@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@213@01 length@4@01 v@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85-aux|)))
(assert (forall ((r@213@01 $Ref)) (!
  (=>
    (and (Set_in r@213@01 lists@3@01) (not (Set_in r@213@01 s@208@01)))
    (allSet ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@213@01)
      ($SortWrappers.IntTo$Snap length@4@01))) r@213@01 length@4@01 v@5@01))
  :pattern ((Set_in r@213@01 lists@3@01))
  :pattern ((Set_in r@213@01 s@208@01))
  :pattern ((allSet%limited ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@213@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@213@01 length@4@01 v@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85|)))
(assert (=
  ($Snap.second ($Snap.second $t@209@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@209@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@209@01))))))
(declare-const r@216@01 $Ref)
(push) ; 8
; [eval] (r in s)
(assert (Set_in r@216@01 s@208@01))
(pop) ; 8
(declare-fun inv@217@01 ($Ref) $Ref)
(declare-fun img@218@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 8
(assert (not (forall ((r1@216@01 $Ref) (r2@216@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@216@01 s@208@01)
      (Set_in r2@216@01 s@208@01)
      (= r1@216@01 r2@216@01))
    (= r1@216@01 r2@216@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@216@01 $Ref)) (!
  (=>
    (Set_in r@216@01 s@208@01)
    (and (= (inv@217@01 r@216@01) r@216@01) (img@218@01 r@216@01)))
  :pattern ((Set_in r@216@01 s@208@01))
  :pattern ((inv@217@01 r@216@01))
  :pattern ((img@218@01 r@216@01))
  :qid |quant-u-17058|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@218@01 r) (Set_in (inv@217@01 r) s@208@01)) (= (inv@217@01 r) r))
  :pattern ((inv@217@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((r@216@01 $Ref)) (!
  (=> (Set_in r@216@01 s@208@01) (not (= r@216@01 $Ref.null)))
  :pattern ((Set_in r@216@01 s@208@01))
  :pattern ((inv@217@01 r@216@01))
  :pattern ((img@218@01 r@216@01))
  :qid |val-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@209@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@209@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@209@01))))
  $Snap.unit))
; [eval] (forall r: Ref :: { (r in s) } (r in s) ==> r.val == v)
(declare-const r@219@01 $Ref)
(push) ; 8
; [eval] (r in s) ==> r.val == v
; [eval] (r in s)
(push) ; 9
; [then-branch: 73 | r@219@01 in s@208@01 | live]
; [else-branch: 73 | !(r@219@01 in s@208@01) | live]
(push) ; 10
; [then-branch: 73 | r@219@01 in s@208@01]
(assert (Set_in r@219@01 s@208@01))
; [eval] r.val == v
(push) ; 11
(assert (not (and (img@218@01 r@219@01) (Set_in (inv@217@01 r@219@01) s@208@01))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(pop) ; 10
(push) ; 10
; [else-branch: 73 | !(r@219@01 in s@208@01)]
(assert (not (Set_in r@219@01 s@208@01)))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in r@219@01 s@208@01)) (Set_in r@219@01 s@208@01)))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@219@01 $Ref)) (!
  (or (not (Set_in r@219@01 s@208@01)) (Set_in r@219@01 s@208@01))
  :pattern ((Set_in r@219@01 s@208@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@54@19@54@86-aux|)))
(assert (forall ((r@219@01 $Ref)) (!
  (=>
    (Set_in r@219@01 s@208@01)
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@209@01)))) r@219@01)
      v@5@01))
  :pattern ((Set_in r@219@01 s@208@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@54@19@54@86|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01))))))))
(declare-const r@220@01 $Ref)
(push) ; 8
; [eval] (r in s)
(assert (Set_in r@220@01 s@208@01))
(pop) ; 8
(declare-fun inv@221@01 ($Ref) $Ref)
(declare-fun img@222@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 8
(assert (not (forall ((r1@220@01 $Ref) (r2@220@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@220@01 s@208@01)
      (Set_in r2@220@01 s@208@01)
      (= r1@220@01 r2@220@01))
    (= r1@220@01 r2@220@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@220@01 $Ref)) (!
  (=>
    (Set_in r@220@01 s@208@01)
    (and (= (inv@221@01 r@220@01) r@220@01) (img@222@01 r@220@01)))
  :pattern ((Set_in r@220@01 s@208@01))
  :pattern ((inv@221@01 r@220@01))
  :pattern ((img@222@01 r@220@01))
  :qid |quant-u-17060|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@222@01 r) (Set_in (inv@221@01 r) s@208@01)) (= (inv@221@01 r) r))
  :pattern ((inv@221@01 r))
  :qid |next-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((r@220@01 $Ref)) (!
  (=> (Set_in r@220@01 s@208@01) (not (= r@220@01 $Ref.null)))
  :pattern ((Set_in r@220@01 s@208@01))
  :pattern ((inv@221@01 r@220@01))
  :pattern ((img@222@01 r@220@01))
  :qid |next-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01))))))
  $Snap.unit))
; [eval] (forall r1: Ref, r2: Ref :: { (r1 in s), (r2 in s) } (r1 in s) && ((r2 in s) && r1 != r2) ==> r1.next != r2.next)
(declare-const r1@223@01 $Ref)
(declare-const r2@224@01 $Ref)
(push) ; 8
; [eval] (r1 in s) && ((r2 in s) && r1 != r2) ==> r1.next != r2.next
; [eval] (r1 in s) && ((r2 in s) && r1 != r2)
; [eval] (r1 in s)
(push) ; 9
; [then-branch: 74 | !(r1@223@01 in s@208@01) | live]
; [else-branch: 74 | r1@223@01 in s@208@01 | live]
(push) ; 10
; [then-branch: 74 | !(r1@223@01 in s@208@01)]
(assert (not (Set_in r1@223@01 s@208@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 74 | r1@223@01 in s@208@01]
(assert (Set_in r1@223@01 s@208@01))
; [eval] (r2 in s)
(push) ; 11
; [then-branch: 75 | !(r2@224@01 in s@208@01) | live]
; [else-branch: 75 | r2@224@01 in s@208@01 | live]
(push) ; 12
; [then-branch: 75 | !(r2@224@01 in s@208@01)]
(assert (not (Set_in r2@224@01 s@208@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 75 | r2@224@01 in s@208@01]
(assert (Set_in r2@224@01 s@208@01))
; [eval] r1 != r2
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (Set_in r2@224@01 s@208@01) (not (Set_in r2@224@01 s@208@01))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in r1@223@01 s@208@01)
  (and
    (Set_in r1@223@01 s@208@01)
    (or (Set_in r2@224@01 s@208@01) (not (Set_in r2@224@01 s@208@01))))))
(assert (or (Set_in r1@223@01 s@208@01) (not (Set_in r1@223@01 s@208@01))))
(push) ; 9
; [then-branch: 76 | r1@223@01 in s@208@01 && r2@224@01 in s@208@01 && r1@223@01 != r2@224@01 | live]
; [else-branch: 76 | !(r1@223@01 in s@208@01 && r2@224@01 in s@208@01 && r1@223@01 != r2@224@01) | live]
(push) ; 10
; [then-branch: 76 | r1@223@01 in s@208@01 && r2@224@01 in s@208@01 && r1@223@01 != r2@224@01]
(assert (and
  (Set_in r1@223@01 s@208@01)
  (and (Set_in r2@224@01 s@208@01) (not (= r1@223@01 r2@224@01)))))
; [eval] r1.next != r2.next
(push) ; 11
(assert (not (and (img@222@01 r1@223@01) (Set_in (inv@221@01 r1@223@01) s@208@01))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (and (img@222@01 r2@224@01) (Set_in (inv@221@01 r2@224@01) s@208@01))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(pop) ; 10
(push) ; 10
; [else-branch: 76 | !(r1@223@01 in s@208@01 && r2@224@01 in s@208@01 && r1@223@01 != r2@224@01)]
(assert (not
  (and
    (Set_in r1@223@01 s@208@01)
    (and (Set_in r2@224@01 s@208@01) (not (= r1@223@01 r2@224@01))))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (and
    (Set_in r1@223@01 s@208@01)
    (and (Set_in r2@224@01 s@208@01) (not (= r1@223@01 r2@224@01))))
  (and
    (Set_in r1@223@01 s@208@01)
    (Set_in r2@224@01 s@208@01)
    (not (= r1@223@01 r2@224@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in r1@223@01 s@208@01)
      (and (Set_in r2@224@01 s@208@01) (not (= r1@223@01 r2@224@01)))))
  (and
    (Set_in r1@223@01 s@208@01)
    (and (Set_in r2@224@01 s@208@01) (not (= r1@223@01 r2@224@01))))))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r1@223@01 $Ref) (r2@224@01 $Ref)) (!
  (and
    (=>
      (Set_in r1@223@01 s@208@01)
      (and
        (Set_in r1@223@01 s@208@01)
        (or (Set_in r2@224@01 s@208@01) (not (Set_in r2@224@01 s@208@01)))))
    (or (Set_in r1@223@01 s@208@01) (not (Set_in r1@223@01 s@208@01)))
    (=>
      (and
        (Set_in r1@223@01 s@208@01)
        (and (Set_in r2@224@01 s@208@01) (not (= r1@223@01 r2@224@01))))
      (and
        (Set_in r1@223@01 s@208@01)
        (Set_in r2@224@01 s@208@01)
        (not (= r1@223@01 r2@224@01))))
    (or
      (not
        (and
          (Set_in r1@223@01 s@208@01)
          (and (Set_in r2@224@01 s@208@01) (not (= r1@223@01 r2@224@01)))))
      (and
        (Set_in r1@223@01 s@208@01)
        (and (Set_in r2@224@01 s@208@01) (not (= r1@223@01 r2@224@01))))))
  :pattern ((Set_in r1@223@01 s@208@01) (Set_in r2@224@01 s@208@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@55@19@55@99-aux|)))
(assert (forall ((r1@223@01 $Ref) (r2@224@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@223@01 s@208@01)
      (and (Set_in r2@224@01 s@208@01) (not (= r1@223@01 r2@224@01))))
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r1@223@01)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r2@224@01))))
  :pattern ((Set_in r1@223@01 s@208@01) (Set_in r2@224@01 s@208@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@55@19@55@99|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01))))))))))
(declare-const r@225@01 $Ref)
(push) ; 8
; [eval] (r in s)
(assert (Set_in r@225@01 s@208@01))
(push) ; 9
(assert (not (and (img@222@01 r@225@01) (Set_in (inv@221@01 r@225@01) s@208@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] length - 1
(pop) ; 8
(declare-fun inv@226@01 ($Ref Int) $Ref)
(declare-fun img@227@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 8
(assert (not (forall ((r1@225@01 $Ref) (r2@225@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@225@01 s@208@01)
      (Set_in r2@225@01 s@208@01)
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r1@225@01)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r2@225@01)))
    (= r1@225@01 r2@225@01))
  
  :qid |list-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@225@01 $Ref)) (!
  (=>
    (Set_in r@225@01 s@208@01)
    (and
      (=
        (inv@226@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@225@01) (-
          length@4@01
          1))
        r@225@01)
      (img@227@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@225@01) (-
        length@4@01
        1))))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@225@01))
  :qid |quant-u-17062|)))
(assert (forall ((r $Ref) (i Int)) (!
  (=>
    (and (img@227@01 r i) (Set_in (inv@226@01 r i) s@208@01))
    (and
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) (inv@226@01 r i))
        r)
      (= (- length@4@01 1) i)))
  :pattern ((inv@226@01 r i))
  :qid |list-fctOfInv|)))
; Permissions are non-negative
(push) ; 8
(set-option :timeout 10)
(assert (not (forall ((r $Ref) (i Int)) (!
  (and
    (=
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@225@01)
      r@210@01)
    (=
      (and (img@227@01 r i) (Set_in (inv@226@01 r i) s@208@01))
      (and
        (img@212@01 r i)
        (and
          (Set_in (inv@211@01 r i) lists@3@01)
          (not (Set_in (inv@211@01 r i) s@208@01))))))
  
  :qid |quant-u-17063|))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))))
  $Snap.unit))
; [eval] (forall r: Ref :: { (r in s) } (r in s) ==> allSet(r.next, length - 1, v))
(declare-const r@228@01 $Ref)
(set-option :timeout 0)
(push) ; 8
; [eval] (r in s) ==> allSet(r.next, length - 1, v)
; [eval] (r in s)
(push) ; 9
; [then-branch: 77 | r@228@01 in s@208@01 | live]
; [else-branch: 77 | !(r@228@01 in s@208@01) | live]
(push) ; 10
; [then-branch: 77 | r@228@01 in s@208@01]
(assert (Set_in r@228@01 s@208@01))
; [eval] allSet(r.next, length - 1, v)
(push) ; 11
(assert (not (and (img@222@01 r@228@01) (Set_in (inv@221@01 r@228@01) s@208@01))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] length - 1
(push) ; 11
(push) ; 12
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and
      (=
        r
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
      (= i (- length@4@01 1)))
    (>
      (+
        (ite
          (and
            (img@212@01 r i)
            (and
              (Set_in (inv@211@01 r i) lists@3@01)
              (not (Set_in (inv@211@01 r i) s@208@01))))
          $Perm.Write
          $Perm.No)
        (ite
          (and (img@227@01 r i) (Set_in (inv@226@01 r i) s@208@01))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-17064|))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(declare-const sm@229@01 $PSF<list>)
(declare-const s@230@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@212@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01) (-
      length@4@01
      1))
    (and
      (Set_in (inv@211@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01) (-
        length@4@01
        1)) lists@3@01)
      (not
        (Set_in (inv@211@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01) (-
          length@4@01
          1)) s@208@01))))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@229@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))
      ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@209@01)) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))))))
(assert (=>
  (and
    (img@227@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01) (-
      length@4@01
      1))
    (Set_in (inv@226@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01) (-
      length@4@01
      1)) s@208@01))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@229@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))
      ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))))))
(assert (allSet%precondition ($PSF.lookup_list (as sm@229@01  $PSF<list>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
  ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01) (-
  length@4@01
  1) v@5@01))
(pop) ; 11
; Joined path conditions
(assert (and
  (=>
    (and
      (img@212@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01) (-
        length@4@01
        1))
      (and
        (Set_in (inv@211@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01) (-
          length@4@01
          1)) lists@3@01)
        (not
          (Set_in (inv@211@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01) (-
            length@4@01
            1)) s@208@01))))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1)))
          $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@229@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1))))
        ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@209@01)) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
  (=>
    (and
      (img@227@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01) (-
        length@4@01
        1))
      (Set_in (inv@226@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01) (-
        length@4@01
        1)) s@208@01))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1)))
          $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@229@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1))))
        ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))))) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
  (allSet%precondition ($PSF.lookup_list (as sm@229@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
    ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01) (-
    length@4@01
    1) v@5@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 77 | !(r@228@01 in s@208@01)]
(assert (not (Set_in r@228@01 s@208@01)))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (Set_in r@228@01 s@208@01)
  (and
    (Set_in r@228@01 s@208@01)
    (=>
      (and
        (img@212@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01) (-
          length@4@01
          1))
        (and
          (Set_in (inv@211@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01) (-
            length@4@01
            1)) lists@3@01)
          (not
            (Set_in (inv@211@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01) (-
              length@4@01
              1)) s@208@01))))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
              ($SortWrappers.IntTo$Snap (- length@4@01 1)))
            $Snap.unit))
        (=
          ($PSF.lookup_list (as sm@229@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1))))
          ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@209@01)) ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
    (=>
      (and
        (img@227@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01) (-
          length@4@01
          1))
        (Set_in (inv@226@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01) (-
          length@4@01
          1)) s@208@01))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
              ($SortWrappers.IntTo$Snap (- length@4@01 1)))
            $Snap.unit))
        (=
          ($PSF.lookup_list (as sm@229@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1))))
          ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))))) ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
    (allSet%precondition ($PSF.lookup_list (as sm@229@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
      ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01) (-
      length@4@01
      1) v@5@01))))
; Joined path conditions
(assert (or (not (Set_in r@228@01 s@208@01)) (Set_in r@228@01 s@208@01)))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@228@01 $Ref)) (!
  (and
    (=>
      (Set_in r@228@01 s@208@01)
      (and
        (Set_in r@228@01 s@208@01)
        (=>
          (and
            (img@212@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01) (-
              length@4@01
              1))
            (and
              (Set_in (inv@211@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01) (-
                length@4@01
                1)) lists@3@01)
              (not
                (Set_in (inv@211@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01) (-
                  length@4@01
                  1)) s@208@01))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
                  ($SortWrappers.IntTo$Snap (- length@4@01 1)))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@229@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
                ($SortWrappers.IntTo$Snap (- length@4@01 1))))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@209@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
                ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
        (=>
          (and
            (img@227@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01) (-
              length@4@01
              1))
            (Set_in (inv@226@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01) (-
              length@4@01
              1)) s@208@01))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
                  ($SortWrappers.IntTo$Snap (- length@4@01 1)))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@229@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
                ($SortWrappers.IntTo$Snap (- length@4@01 1))))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))))) ($Snap.combine
                ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
                ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
        (allSet%precondition ($PSF.lookup_list (as sm@229@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01) (-
          length@4@01
          1) v@5@01)))
    (or (not (Set_in r@228@01 s@208@01)) (Set_in r@228@01 s@208@01)))
  :pattern ((Set_in r@228@01 s@208@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@57@19@57@75-aux|)))
(assert (forall ((r@228@01 $Ref)) (!
  (=>
    (Set_in r@228@01 s@208@01)
    (allSet ($PSF.lookup_list (as sm@229@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
      ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01) (-
      length@4@01
      1) v@5@01))
  :pattern ((Set_in r@228@01 s@208@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@57@19@57@75|)))
(pop) ; 7
(push) ; 7
; Loop head block: Establish invariant
(declare-const r@231@01 $Ref)
(push) ; 8
; [eval] (r in lists) && !((r in s))
; [eval] (r in lists)
(push) ; 9
; [then-branch: 78 | !(r@231@01 in lists@3@01) | live]
; [else-branch: 78 | r@231@01 in lists@3@01 | live]
(push) ; 10
; [then-branch: 78 | !(r@231@01 in lists@3@01)]
(assert (not (Set_in r@231@01 lists@3@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 78 | r@231@01 in lists@3@01]
(assert (Set_in r@231@01 lists@3@01))
; [eval] !((r in s))
; [eval] (r in s)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (Set_in r@231@01 lists@3@01) (not (Set_in r@231@01 lists@3@01))))
(assert (and (Set_in r@231@01 lists@3@01) (not (Set_in r@231@01 lists@3@01))))
(pop) ; 8
(declare-fun inv@232@01 ($Ref Int) $Ref)
(declare-fun img@233@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((r@231@01 $Ref)) (!
  (=>
    (and (Set_in r@231@01 lists@3@01) (not (Set_in r@231@01 lists@3@01)))
    (or (Set_in r@231@01 lists@3@01) (not (Set_in r@231@01 lists@3@01))))
  :pattern ((Set_in r@231@01 lists@3@01))
  :pattern ((inv@232@01 r@231@01 length@4@01))
  :pattern ((img@233@01 r@231@01 length@4@01))
  :qid |list-aux|)))
; Check receiver injectivity
(push) ; 8
(assert (not (forall ((r1@231@01 $Ref) (r2@231@01 $Ref)) (!
  (=>
    (and
      (and (Set_in r1@231@01 lists@3@01) (not (Set_in r1@231@01 lists@3@01)))
      (and (Set_in r2@231@01 lists@3@01) (not (Set_in r2@231@01 lists@3@01)))
      (= r1@231@01 r2@231@01))
    (= r1@231@01 r2@231@01))
  
  :qid |list-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@231@01 $Ref)) (!
  (=>
    (and (Set_in r@231@01 lists@3@01) (not (Set_in r@231@01 lists@3@01)))
    (and
      (= (inv@232@01 r@231@01 length@4@01) r@231@01)
      (img@233@01 r@231@01 length@4@01)))
  :pattern ((Set_in r@231@01 lists@3@01))
  :pattern ((inv@232@01 r@231@01 length@4@01))
  :pattern ((img@233@01 r@231@01 length@4@01))
  :qid |list-invOfFct|)))
(assert (forall ((r $Ref) (i Int)) (!
  (=>
    (and
      (img@233@01 r i)
      (and
        (Set_in (inv@232@01 r i) lists@3@01)
        (not (Set_in (inv@232@01 r i) lists@3@01))))
    (and (= (inv@232@01 r i) r) (= length@4@01 i)))
  :pattern ((inv@232@01 r i))
  :qid |list-fctOfInv|)))
(push) ; 8
(set-option :timeout 10)
(assert (not (forall ((r@231@01 $Ref)) (!
  (= length@4@01 (- length@4@01 1))
  
  :qid |quant-u-17066|))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@234@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and
      (and
        (Set_in (inv@232@01 r i) lists@3@01)
        (not (Set_in (inv@232@01 r i) lists@3@01)))
      (img@233@01 r i)
      (and (= r (inv@232@01 r i)) (= i length@4@01)))
    ($Perm.min
      (ite
        (and (img@24@01 r i) (Set_in (inv@23@01 r i) s@19@01))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@235@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and
      (and
        (Set_in (inv@232@01 r i) lists@3@01)
        (not (Set_in (inv@232@01 r i) lists@3@01)))
      (img@233@01 r i)
      (and (= r (inv@232@01 r i)) (= i length@4@01)))
    ($Perm.min
      (ite
        (and (img@30@01 r i) (Set_in (inv@29@01 r i) sNext@20@01))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@234@01 r i)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and (img@24@01 r i) (Set_in (inv@23@01 r i) s@19@01))
        $Perm.Write
        $Perm.No)
      (pTaken@234@01 r i))
    $Perm.No)
  
  :qid |quant-u-17068|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and
      (and
        (Set_in (inv@232@01 r i) lists@3@01)
        (not (Set_in (inv@232@01 r i) lists@3@01)))
      (img@233@01 r i)
      (and (= r (inv@232@01 r i)) (= i length@4@01)))
    (= (- $Perm.Write (pTaken@234@01 r i)) $Perm.No))
  
  :qid |quant-u-17069|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall r: Ref :: { (r in lists) } { (r in s) } { allSet(r, length, v) } (r in lists) && !((r in s)) ==> allSet(r, length, v))
(declare-const r@236@01 $Ref)
(set-option :timeout 0)
(push) ; 8
; [eval] (r in lists) && !((r in s)) ==> allSet(r, length, v)
; [eval] (r in lists) && !((r in s))
; [eval] (r in lists)
(push) ; 9
; [then-branch: 79 | !(r@236@01 in lists@3@01) | live]
; [else-branch: 79 | r@236@01 in lists@3@01 | live]
(push) ; 10
; [then-branch: 79 | !(r@236@01 in lists@3@01)]
(assert (not (Set_in r@236@01 lists@3@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 79 | r@236@01 in lists@3@01]
(assert (Set_in r@236@01 lists@3@01))
; [eval] !((r in s))
; [eval] (r in s)
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (Set_in r@236@01 lists@3@01) (not (Set_in r@236@01 lists@3@01))))
(push) ; 9
; [then-branch: 80 | r@236@01 in lists@3@01 && !(r@236@01 in lists@3@01) | live]
; [else-branch: 80 | !(r@236@01 in lists@3@01 && !(r@236@01 in lists@3@01)) | live]
(push) ; 10
; [then-branch: 80 | r@236@01 in lists@3@01 && !(r@236@01 in lists@3@01)]
(assert (and (Set_in r@236@01 lists@3@01) (not (Set_in r@236@01 lists@3@01))))
; [eval] allSet(r, length, v)
(push) ; 11
(push) ; 12
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and (= r r@236@01) (= i length@4@01))
    (>
      (+
        (ite
          (and (img@24@01 r i) (Set_in (inv@23@01 r i) s@19@01))
          $Perm.Write
          $Perm.No)
        (ite
          (and (img@30@01 r i) (Set_in (inv@29@01 r i) sNext@20@01))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-17070|))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(declare-const sm@237@01 $PSF<list>)
(declare-const s@238@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@24@01 r@236@01 length@4@01)
    (Set_in (inv@23@01 r@236@01 length@4@01) s@19@01))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@236@01)
          ($SortWrappers.IntTo$Snap length@4@01))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@236@01)
        ($SortWrappers.IntTo$Snap length@4@01)))
      ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@21@01)) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@236@01)
        ($SortWrappers.IntTo$Snap length@4@01)))))))
(assert (=>
  (and
    (img@30@01 r@236@01 length@4@01)
    (Set_in (inv@29@01 r@236@01 length@4@01) sNext@20@01))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@236@01)
          ($SortWrappers.IntTo$Snap length@4@01))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@236@01)
        ($SortWrappers.IntTo$Snap length@4@01)))
      ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second $t@21@01)))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@236@01)
        ($SortWrappers.IntTo$Snap length@4@01)))))))
(assert (allSet%precondition ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap r@236@01)
  ($SortWrappers.IntTo$Snap length@4@01))) r@236@01 length@4@01 v@5@01))
(pop) ; 11
; Joined path conditions
(assert (and
  (=>
    (and
      (img@24@01 r@236@01 length@4@01)
      (Set_in (inv@23@01 r@236@01 length@4@01) s@19@01))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@236@01)
            ($SortWrappers.IntTo$Snap length@4@01))
          $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@236@01)
          ($SortWrappers.IntTo$Snap length@4@01)))
        ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@21@01)) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@236@01)
          ($SortWrappers.IntTo$Snap length@4@01))))))
  (=>
    (and
      (img@30@01 r@236@01 length@4@01)
      (Set_in (inv@29@01 r@236@01 length@4@01) sNext@20@01))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@236@01)
            ($SortWrappers.IntTo$Snap length@4@01))
          $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@236@01)
          ($SortWrappers.IntTo$Snap length@4@01)))
        ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second $t@21@01)))) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@236@01)
          ($SortWrappers.IntTo$Snap length@4@01))))))
  (allSet%precondition ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@236@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@236@01 length@4@01 v@5@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 80 | !(r@236@01 in lists@3@01 && !(r@236@01 in lists@3@01))]
(assert (not (and (Set_in r@236@01 lists@3@01) (not (Set_in r@236@01 lists@3@01)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (and (Set_in r@236@01 lists@3@01) (not (Set_in r@236@01 lists@3@01)))
  (and
    (Set_in r@236@01 lists@3@01)
    (not (Set_in r@236@01 lists@3@01))
    (=>
      (and
        (img@24@01 r@236@01 length@4@01)
        (Set_in (inv@23@01 r@236@01 length@4@01) s@19@01))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap r@236@01)
              ($SortWrappers.IntTo$Snap length@4@01))
            $Snap.unit))
        (=
          ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@236@01)
            ($SortWrappers.IntTo$Snap length@4@01)))
          ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@21@01)) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@236@01)
            ($SortWrappers.IntTo$Snap length@4@01))))))
    (=>
      (and
        (img@30@01 r@236@01 length@4@01)
        (Set_in (inv@29@01 r@236@01 length@4@01) sNext@20@01))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap r@236@01)
              ($SortWrappers.IntTo$Snap length@4@01))
            $Snap.unit))
        (=
          ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@236@01)
            ($SortWrappers.IntTo$Snap length@4@01)))
          ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second $t@21@01)))) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@236@01)
            ($SortWrappers.IntTo$Snap length@4@01))))))
    (allSet%precondition ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@236@01)
      ($SortWrappers.IntTo$Snap length@4@01))) r@236@01 length@4@01 v@5@01))))
; Joined path conditions
(assert (or
  (not (and (Set_in r@236@01 lists@3@01) (not (Set_in r@236@01 lists@3@01))))
  (and (Set_in r@236@01 lists@3@01) (not (Set_in r@236@01 lists@3@01)))))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@236@01 $Ref)) (!
  (and
    (or (Set_in r@236@01 lists@3@01) (not (Set_in r@236@01 lists@3@01)))
    (=>
      (and (Set_in r@236@01 lists@3@01) (not (Set_in r@236@01 lists@3@01)))
      (and
        (Set_in r@236@01 lists@3@01)
        (not (Set_in r@236@01 lists@3@01))
        (=>
          (and
            (img@24@01 r@236@01 length@4@01)
            (Set_in (inv@23@01 r@236@01 length@4@01) s@19@01))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@236@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@236@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@21@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@236@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (=>
          (and
            (img@30@01 r@236@01 length@4@01)
            (Set_in (inv@29@01 r@236@01 length@4@01) sNext@20@01))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@236@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@236@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second $t@21@01)))) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@236@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (allSet%precondition ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@236@01)
          ($SortWrappers.IntTo$Snap length@4@01))) r@236@01 length@4@01 v@5@01)))
    (or
      (not (and (Set_in r@236@01 lists@3@01) (not (Set_in r@236@01 lists@3@01))))
      (and (Set_in r@236@01 lists@3@01) (not (Set_in r@236@01 lists@3@01)))))
  :pattern ((Set_in r@236@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85-aux|)))
(assert (forall ((r@236@01 $Ref)) (!
  (and
    (or (Set_in r@236@01 lists@3@01) (not (Set_in r@236@01 lists@3@01)))
    (=>
      (and (Set_in r@236@01 lists@3@01) (not (Set_in r@236@01 lists@3@01)))
      (and
        (Set_in r@236@01 lists@3@01)
        (not (Set_in r@236@01 lists@3@01))
        (=>
          (and
            (img@24@01 r@236@01 length@4@01)
            (Set_in (inv@23@01 r@236@01 length@4@01) s@19@01))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@236@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@236@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@21@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@236@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (=>
          (and
            (img@30@01 r@236@01 length@4@01)
            (Set_in (inv@29@01 r@236@01 length@4@01) sNext@20@01))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@236@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@236@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second $t@21@01)))) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@236@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (allSet%precondition ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@236@01)
          ($SortWrappers.IntTo$Snap length@4@01))) r@236@01 length@4@01 v@5@01)))
    (or
      (not (and (Set_in r@236@01 lists@3@01) (not (Set_in r@236@01 lists@3@01))))
      (and (Set_in r@236@01 lists@3@01) (not (Set_in r@236@01 lists@3@01)))))
  :pattern ((allSet%limited ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@236@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@236@01 length@4@01 v@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85-aux|)))
(assert (forall ((r@236@01 $Ref)) (!
  (=>
    (and (Set_in r@236@01 lists@3@01) (not (Set_in r@236@01 lists@3@01)))
    (allSet%precondition ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@236@01)
      ($SortWrappers.IntTo$Snap length@4@01))) r@236@01 length@4@01 v@5@01))
  :pattern ((Set_in r@236@01 lists@3@01))
  :pattern ((Set_in r@236@01 lists@3@01))
  :pattern ((allSet%limited ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@236@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@236@01 length@4@01 v@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85_precondition|)))
(push) ; 8
(assert (not (forall ((r@236@01 $Ref)) (!
  (=>
    (and
      (=>
        (and (Set_in r@236@01 lists@3@01) (not (Set_in r@236@01 lists@3@01)))
        (allSet%precondition ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@236@01)
          ($SortWrappers.IntTo$Snap length@4@01))) r@236@01 length@4@01 v@5@01))
      (and (Set_in r@236@01 lists@3@01) (not (Set_in r@236@01 lists@3@01))))
    (allSet ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@236@01)
      ($SortWrappers.IntTo$Snap length@4@01))) r@236@01 length@4@01 v@5@01))
  :pattern ((Set_in r@236@01 lists@3@01))
  :pattern ((Set_in r@236@01 lists@3@01))
  :pattern ((allSet%limited ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@236@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@236@01 length@4@01 v@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (forall ((r@236@01 $Ref)) (!
  (=>
    (and (Set_in r@236@01 lists@3@01) (not (Set_in r@236@01 lists@3@01)))
    (allSet ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@236@01)
      ($SortWrappers.IntTo$Snap length@4@01))) r@236@01 length@4@01 v@5@01))
  :pattern ((Set_in r@236@01 lists@3@01))
  :pattern ((Set_in r@236@01 lists@3@01))
  :pattern ((allSet%limited ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@236@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@236@01 length@4@01 v@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85|)))
(declare-const r@239@01 $Ref)
(push) ; 8
; [eval] (r in s)
(assert (Set_in r@239@01 lists@3@01))
(pop) ; 8
(declare-fun inv@240@01 ($Ref) $Ref)
(declare-fun img@241@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 8
(assert (not (forall ((r1@239@01 $Ref) (r2@239@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@239@01 lists@3@01)
      (Set_in r2@239@01 lists@3@01)
      (= r1@239@01 r2@239@01))
    (= r1@239@01 r2@239@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@239@01 $Ref)) (!
  (=>
    (Set_in r@239@01 lists@3@01)
    (and (= (inv@240@01 r@239@01) r@239@01) (img@241@01 r@239@01)))
  :pattern ((Set_in r@239@01 lists@3@01))
  :pattern ((inv@240@01 r@239@01))
  :pattern ((img@241@01 r@239@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@241@01 r) (Set_in (inv@240@01 r) lists@3@01))
    (= (inv@240@01 r) r))
  :pattern ((inv@240@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@242@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@240@01 r) lists@3@01) (img@241@01 r) (= r (inv@240@01 r)))
    ($Perm.min
      (ite
        (and
          (img@33@01 r)
          (and
            (Set_in (inv@32@01 r) lists@3@01)
            (not (Set_in (inv@32@01 r) s@19@01))))
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
          (img@33@01 r)
          (and
            (Set_in (inv@32@01 r) lists@3@01)
            (not (Set_in (inv@32@01 r) s@19@01))))
        $Perm.Write
        $Perm.No)
      (pTaken@242@01 r))
    $Perm.No)
  
  :qid |quant-u-17073|))))
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
    (and (Set_in (inv@240@01 r) lists@3@01) (img@241@01 r) (= r (inv@240@01 r)))
    (= (- $Perm.Write (pTaken@242@01 r)) $Perm.No))
  
  :qid |quant-u-17074|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall r: Ref :: { (r in s) } (r in s) ==> r.val == v)
(declare-const r@243@01 $Ref)
(set-option :timeout 0)
(push) ; 8
; [eval] (r in s) ==> r.val == v
; [eval] (r in s)
(push) ; 9
; [then-branch: 81 | r@243@01 in lists@3@01 | live]
; [else-branch: 81 | !(r@243@01 in lists@3@01) | live]
(push) ; 10
; [then-branch: 81 | r@243@01 in lists@3@01]
(assert (Set_in r@243@01 lists@3@01))
; [eval] r.val == v
(push) ; 11
(assert (not (and
  (img@33@01 r@243@01)
  (and
    (Set_in (inv@32@01 r@243@01) lists@3@01)
    (not (Set_in (inv@32@01 r@243@01) s@19@01))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(pop) ; 10
(push) ; 10
; [else-branch: 81 | !(r@243@01 in lists@3@01)]
(assert (not (Set_in r@243@01 lists@3@01)))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in r@243@01 lists@3@01)) (Set_in r@243@01 lists@3@01)))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@243@01 $Ref)) (!
  (or (not (Set_in r@243@01 lists@3@01)) (Set_in r@243@01 lists@3@01))
  :pattern ((Set_in r@243@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@54@19@54@86-aux|)))
(push) ; 8
(assert (not (forall ((r@243@01 $Ref)) (!
  (=>
    (Set_in r@243@01 lists@3@01)
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@21@01))))) r@243@01)
      v@5@01))
  :pattern ((Set_in r@243@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@54@19@54@86|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (forall ((r@243@01 $Ref)) (!
  (=>
    (Set_in r@243@01 lists@3@01)
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@21@01))))) r@243@01)
      v@5@01))
  :pattern ((Set_in r@243@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@54@19@54@86|)))
(declare-const r@244@01 $Ref)
(push) ; 8
; [eval] (r in s)
(assert (Set_in r@244@01 lists@3@01))
(pop) ; 8
(declare-fun inv@245@01 ($Ref) $Ref)
(declare-fun img@246@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 8
(assert (not (forall ((r1@244@01 $Ref) (r2@244@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@244@01 lists@3@01)
      (Set_in r2@244@01 lists@3@01)
      (= r1@244@01 r2@244@01))
    (= r1@244@01 r2@244@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@244@01 $Ref)) (!
  (=>
    (Set_in r@244@01 lists@3@01)
    (and (= (inv@245@01 r@244@01) r@244@01) (img@246@01 r@244@01)))
  :pattern ((Set_in r@244@01 lists@3@01))
  :pattern ((inv@245@01 r@244@01))
  :pattern ((img@246@01 r@244@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@246@01 r) (Set_in (inv@245@01 r) lists@3@01))
    (= (inv@245@01 r) r))
  :pattern ((inv@245@01 r))
  :qid |next-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@247@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@245@01 r) lists@3@01) (img@246@01 r) (= r (inv@245@01 r)))
    ($Perm.min
      (ite
        (and
          (img@27@01 r)
          (and
            (Set_in (inv@26@01 r) lists@3@01)
            (not (Set_in (inv@26@01 r) s@19@01))))
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
          (and
            (Set_in (inv@26@01 r) lists@3@01)
            (not (Set_in (inv@26@01 r) s@19@01))))
        $Perm.Write
        $Perm.No)
      (pTaken@247@01 r))
    $Perm.No)
  
  :qid |quant-u-17077|))))
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
    (and (Set_in (inv@245@01 r) lists@3@01) (img@246@01 r) (= r (inv@245@01 r)))
    (= (- $Perm.Write (pTaken@247@01 r)) $Perm.No))
  
  :qid |quant-u-17078|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall r1: Ref, r2: Ref :: { (r1 in s), (r2 in s) } (r1 in s) && ((r2 in s) && r1 != r2) ==> r1.next != r2.next)
(declare-const r1@248@01 $Ref)
(declare-const r2@249@01 $Ref)
(set-option :timeout 0)
(push) ; 8
; [eval] (r1 in s) && ((r2 in s) && r1 != r2) ==> r1.next != r2.next
; [eval] (r1 in s) && ((r2 in s) && r1 != r2)
; [eval] (r1 in s)
(push) ; 9
; [then-branch: 82 | !(r1@248@01 in lists@3@01) | live]
; [else-branch: 82 | r1@248@01 in lists@3@01 | live]
(push) ; 10
; [then-branch: 82 | !(r1@248@01 in lists@3@01)]
(assert (not (Set_in r1@248@01 lists@3@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 82 | r1@248@01 in lists@3@01]
(assert (Set_in r1@248@01 lists@3@01))
; [eval] (r2 in s)
(push) ; 11
; [then-branch: 83 | !(r2@249@01 in lists@3@01) | live]
; [else-branch: 83 | r2@249@01 in lists@3@01 | live]
(push) ; 12
; [then-branch: 83 | !(r2@249@01 in lists@3@01)]
(assert (not (Set_in r2@249@01 lists@3@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 83 | r2@249@01 in lists@3@01]
(assert (Set_in r2@249@01 lists@3@01))
; [eval] r1 != r2
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (Set_in r2@249@01 lists@3@01) (not (Set_in r2@249@01 lists@3@01))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in r1@248@01 lists@3@01)
  (and
    (Set_in r1@248@01 lists@3@01)
    (or (Set_in r2@249@01 lists@3@01) (not (Set_in r2@249@01 lists@3@01))))))
(assert (or (Set_in r1@248@01 lists@3@01) (not (Set_in r1@248@01 lists@3@01))))
(push) ; 9
; [then-branch: 84 | r1@248@01 in lists@3@01 && r2@249@01 in lists@3@01 && r1@248@01 != r2@249@01 | live]
; [else-branch: 84 | !(r1@248@01 in lists@3@01 && r2@249@01 in lists@3@01 && r1@248@01 != r2@249@01) | live]
(push) ; 10
; [then-branch: 84 | r1@248@01 in lists@3@01 && r2@249@01 in lists@3@01 && r1@248@01 != r2@249@01]
(assert (and
  (Set_in r1@248@01 lists@3@01)
  (and (Set_in r2@249@01 lists@3@01) (not (= r1@248@01 r2@249@01)))))
; [eval] r1.next != r2.next
(push) ; 11
(assert (not (and
  (img@27@01 r1@248@01)
  (and
    (Set_in (inv@26@01 r1@248@01) lists@3@01)
    (not (Set_in (inv@26@01 r1@248@01) s@19@01))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(push) ; 11
(assert (not (and
  (img@27@01 r2@249@01)
  (and
    (Set_in (inv@26@01 r2@249@01) lists@3@01)
    (not (Set_in (inv@26@01 r2@249@01) s@19@01))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(pop) ; 10
(push) ; 10
; [else-branch: 84 | !(r1@248@01 in lists@3@01 && r2@249@01 in lists@3@01 && r1@248@01 != r2@249@01)]
(assert (not
  (and
    (Set_in r1@248@01 lists@3@01)
    (and (Set_in r2@249@01 lists@3@01) (not (= r1@248@01 r2@249@01))))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (and
    (Set_in r1@248@01 lists@3@01)
    (and (Set_in r2@249@01 lists@3@01) (not (= r1@248@01 r2@249@01))))
  (and
    (Set_in r1@248@01 lists@3@01)
    (Set_in r2@249@01 lists@3@01)
    (not (= r1@248@01 r2@249@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in r1@248@01 lists@3@01)
      (and (Set_in r2@249@01 lists@3@01) (not (= r1@248@01 r2@249@01)))))
  (and
    (Set_in r1@248@01 lists@3@01)
    (and (Set_in r2@249@01 lists@3@01) (not (= r1@248@01 r2@249@01))))))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r1@248@01 $Ref) (r2@249@01 $Ref)) (!
  (and
    (=>
      (Set_in r1@248@01 lists@3@01)
      (and
        (Set_in r1@248@01 lists@3@01)
        (or (Set_in r2@249@01 lists@3@01) (not (Set_in r2@249@01 lists@3@01)))))
    (or (Set_in r1@248@01 lists@3@01) (not (Set_in r1@248@01 lists@3@01)))
    (=>
      (and
        (Set_in r1@248@01 lists@3@01)
        (and (Set_in r2@249@01 lists@3@01) (not (= r1@248@01 r2@249@01))))
      (and
        (Set_in r1@248@01 lists@3@01)
        (Set_in r2@249@01 lists@3@01)
        (not (= r1@248@01 r2@249@01))))
    (or
      (not
        (and
          (Set_in r1@248@01 lists@3@01)
          (and (Set_in r2@249@01 lists@3@01) (not (= r1@248@01 r2@249@01)))))
      (and
        (Set_in r1@248@01 lists@3@01)
        (and (Set_in r2@249@01 lists@3@01) (not (= r1@248@01 r2@249@01))))))
  :pattern ((Set_in r1@248@01 lists@3@01) (Set_in r2@249@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@55@19@55@99-aux|)))
(push) ; 8
(assert (not (forall ((r1@248@01 $Ref) (r2@249@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@248@01 lists@3@01)
      (and (Set_in r2@249@01 lists@3@01) (not (= r1@248@01 r2@249@01))))
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r1@248@01)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r2@249@01))))
  :pattern ((Set_in r1@248@01 lists@3@01) (Set_in r2@249@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@55@19@55@99|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (forall ((r1@248@01 $Ref) (r2@249@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@248@01 lists@3@01)
      (and (Set_in r2@249@01 lists@3@01) (not (= r1@248@01 r2@249@01))))
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r1@248@01)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r2@249@01))))
  :pattern ((Set_in r1@248@01 lists@3@01) (Set_in r2@249@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@55@19@55@99|)))
(declare-const r@250@01 $Ref)
(push) ; 8
; [eval] (r in s)
(assert (Set_in r@250@01 lists@3@01))
(push) ; 9
(assert (not (and
  (img@27@01 r@250@01)
  (and
    (Set_in (inv@26@01 r@250@01) lists@3@01)
    (not (Set_in (inv@26@01 r@250@01) s@19@01))))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] length - 1
(pop) ; 8
(declare-fun inv@251@01 ($Ref Int) $Ref)
(declare-fun img@252@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 8
(assert (not (forall ((r1@250@01 $Ref) (r2@250@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@250@01 lists@3@01)
      (Set_in r2@250@01 lists@3@01)
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r1@250@01)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r2@250@01)))
    (= r1@250@01 r2@250@01))
  
  :qid |list-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@250@01 $Ref)) (!
  (=>
    (Set_in r@250@01 lists@3@01)
    (and
      (=
        (inv@251@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@250@01) (-
          length@4@01
          1))
        r@250@01)
      (img@252@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@250@01) (-
        length@4@01
        1))))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@250@01))
  :qid |list-invOfFct|)))
(assert (forall ((r $Ref) (i Int)) (!
  (=>
    (and (img@252@01 r i) (Set_in (inv@251@01 r i) lists@3@01))
    (and
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) (inv@251@01 r i))
        r)
      (= (- length@4@01 1) i)))
  :pattern ((inv@251@01 r i))
  :qid |list-fctOfInv|)))
(push) ; 8
(set-option :timeout 10)
(assert (not (forall ((r@250@01 $Ref)) (!
  (=
    ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@250@01)
    r@250@01)
  
  :qid |quant-u-17080|))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@253@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and
      (Set_in (inv@251@01 r i) lists@3@01)
      (img@252@01 r i)
      (and
        (=
          r
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) (inv@251@01 r i)))
        (= i (- length@4@01 1))))
    ($Perm.min
      (ite
        (and (img@30@01 r i) (Set_in (inv@29@01 r i) sNext@20@01))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and (img@30@01 r i) (Set_in (inv@29@01 r i) sNext@20@01))
        $Perm.Write
        $Perm.No)
      (pTaken@253@01 r i))
    $Perm.No)
  
  :qid |quant-u-17082|))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (forall ((r $Ref) (i Int)) (!
  (= (pTaken@253@01 r i) $Perm.No)
  
  :qid |quant-u-17083|))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and
      (Set_in (inv@251@01 r i) lists@3@01)
      (img@252@01 r i)
      (and
        (=
          r
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) (inv@251@01 r i)))
        (= i (- length@4@01 1))))
    (= (- $Perm.Write (pTaken@253@01 r i)) $Perm.No))
  
  :qid |quant-u-17084|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall r: Ref :: { (r in s) } (r in s) ==> allSet(r.next, length - 1, v))
(declare-const r@254@01 $Ref)
(set-option :timeout 0)
(push) ; 8
; [eval] (r in s) ==> allSet(r.next, length - 1, v)
; [eval] (r in s)
(push) ; 9
; [then-branch: 85 | r@254@01 in lists@3@01 | live]
; [else-branch: 85 | !(r@254@01 in lists@3@01) | live]
(push) ; 10
; [then-branch: 85 | r@254@01 in lists@3@01]
(assert (Set_in r@254@01 lists@3@01))
; [eval] allSet(r.next, length - 1, v)
(push) ; 11
(assert (not (and
  (img@27@01 r@254@01)
  (and
    (Set_in (inv@26@01 r@254@01) lists@3@01)
    (not (Set_in (inv@26@01 r@254@01) s@19@01))))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] length - 1
(push) ; 11
(push) ; 12
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and
      (=
        r
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01))
      (= i (- length@4@01 1)))
    (>
      (+
        (ite
          (and (img@24@01 r i) (Set_in (inv@23@01 r i) s@19@01))
          $Perm.Write
          $Perm.No)
        (ite
          (and (img@30@01 r i) (Set_in (inv@29@01 r i) sNext@20@01))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-17085|))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@24@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01) (-
      length@4@01
      1))
    (Set_in (inv@23@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01) (-
      length@4@01
      1)) s@19@01))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))
      ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@21@01)) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))))))
(assert (=>
  (and
    (img@30@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01) (-
      length@4@01
      1))
    (Set_in (inv@29@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01) (-
      length@4@01
      1)) sNext@20@01))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))
      ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second $t@21@01)))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))))))
(assert (allSet%precondition ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01))
  ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01) (-
  length@4@01
  1) v@5@01))
(pop) ; 11
; Joined path conditions
(assert (and
  (=>
    (and
      (img@24@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01) (-
        length@4@01
        1))
      (Set_in (inv@23@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01) (-
        length@4@01
        1)) s@19@01))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1)))
          $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1))))
        ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@21@01)) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
  (=>
    (and
      (img@30@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01) (-
        length@4@01
        1))
      (Set_in (inv@29@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01) (-
        length@4@01
        1)) sNext@20@01))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1)))
          $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1))))
        ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second $t@21@01)))) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
  (allSet%precondition ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01))
    ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01) (-
    length@4@01
    1) v@5@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 85 | !(r@254@01 in lists@3@01)]
(assert (not (Set_in r@254@01 lists@3@01)))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (Set_in r@254@01 lists@3@01)
  (and
    (Set_in r@254@01 lists@3@01)
    (=>
      (and
        (img@24@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01) (-
          length@4@01
          1))
        (Set_in (inv@23@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01) (-
          length@4@01
          1)) s@19@01))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01))
              ($SortWrappers.IntTo$Snap (- length@4@01 1)))
            $Snap.unit))
        (=
          ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1))))
          ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@21@01)) ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
    (=>
      (and
        (img@30@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01) (-
          length@4@01
          1))
        (Set_in (inv@29@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01) (-
          length@4@01
          1)) sNext@20@01))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01))
              ($SortWrappers.IntTo$Snap (- length@4@01 1)))
            $Snap.unit))
        (=
          ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1))))
          ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second $t@21@01)))) ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
    (allSet%precondition ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01))
      ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01) (-
      length@4@01
      1) v@5@01))))
; Joined path conditions
(assert (or (not (Set_in r@254@01 lists@3@01)) (Set_in r@254@01 lists@3@01)))
(pop) ; 8
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@254@01 $Ref)) (!
  (and
    (=>
      (Set_in r@254@01 lists@3@01)
      (and
        (Set_in r@254@01 lists@3@01)
        (=>
          (and
            (img@24@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01) (-
              length@4@01
              1))
            (Set_in (inv@23@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01) (-
              length@4@01
              1)) s@19@01))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01))
                  ($SortWrappers.IntTo$Snap (- length@4@01 1)))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01))
                ($SortWrappers.IntTo$Snap (- length@4@01 1))))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@21@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01))
                ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
        (=>
          (and
            (img@30@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01) (-
              length@4@01
              1))
            (Set_in (inv@29@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01) (-
              length@4@01
              1)) sNext@20@01))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01))
                  ($SortWrappers.IntTo$Snap (- length@4@01 1)))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01))
                ($SortWrappers.IntTo$Snap (- length@4@01 1))))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second $t@21@01)))) ($Snap.combine
                ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01))
                ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
        (allSet%precondition ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01) (-
          length@4@01
          1) v@5@01)))
    (or (not (Set_in r@254@01 lists@3@01)) (Set_in r@254@01 lists@3@01)))
  :pattern ((Set_in r@254@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@57@19@57@75-aux|)))
(assert (forall ((r@254@01 $Ref)) (!
  (=>
    (Set_in r@254@01 lists@3@01)
    (allSet%precondition ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01))
      ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01) (-
      length@4@01
      1) v@5@01))
  :pattern ((Set_in r@254@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@57@19@57@75_precondition|)))
(push) ; 8
(assert (not (forall ((r@254@01 $Ref)) (!
  (=>
    (and
      (=>
        (Set_in r@254@01 lists@3@01)
        (allSet%precondition ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01) (-
          length@4@01
          1) v@5@01))
      (Set_in r@254@01 lists@3@01))
    (allSet ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01))
      ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01) (-
      length@4@01
      1) v@5@01))
  :pattern ((Set_in r@254@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@57@19@57@75|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (forall ((r@254@01 $Ref)) (!
  (=>
    (Set_in r@254@01 lists@3@01)
    (allSet ($PSF.lookup_list (as sm@237@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01))
      ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@21@01))) r@254@01) (-
      length@4@01
      1) v@5@01))
  :pattern ((Set_in r@254@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@57@19@57@75|)))
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 8
(assert (forall ((r $Ref) (i Int)) (!
  (=>
    (and (img@227@01 r i) (Set_in (inv@226@01 r i) s@208@01))
    (and
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) (inv@226@01 r i))
        r)
      (= (- length@4@01 1) i)))
  :pattern ((inv@226@01 r i))
  :qid |list-fctOfInv|)))
(assert (forall ((r@225@01 $Ref)) (!
  (=>
    (Set_in r@225@01 s@208@01)
    (and
      (=
        (inv@226@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@225@01) (-
          length@4@01
          1))
        r@225@01)
      (img@227@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@225@01) (-
        length@4@01
        1))))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@225@01))
  :qid |quant-u-17062|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))))
  $Snap.unit))
(assert (forall ((r@228@01 $Ref)) (!
  (and
    (=>
      (Set_in r@228@01 s@208@01)
      (and
        (Set_in r@228@01 s@208@01)
        (=>
          (and
            (img@212@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01) (-
              length@4@01
              1))
            (and
              (Set_in (inv@211@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01) (-
                length@4@01
                1)) lists@3@01)
              (not
                (Set_in (inv@211@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01) (-
                  length@4@01
                  1)) s@208@01))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
                  ($SortWrappers.IntTo$Snap (- length@4@01 1)))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@229@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
                ($SortWrappers.IntTo$Snap (- length@4@01 1))))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@209@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
                ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
        (=>
          (and
            (img@227@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01) (-
              length@4@01
              1))
            (Set_in (inv@226@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01) (-
              length@4@01
              1)) s@208@01))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
                  ($SortWrappers.IntTo$Snap (- length@4@01 1)))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@229@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
                ($SortWrappers.IntTo$Snap (- length@4@01 1))))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))))) ($Snap.combine
                ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
                ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
        (allSet%precondition ($PSF.lookup_list (as sm@229@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01) (-
          length@4@01
          1) v@5@01)))
    (or (not (Set_in r@228@01 s@208@01)) (Set_in r@228@01 s@208@01)))
  :pattern ((Set_in r@228@01 s@208@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@57@19@57@75-aux|)))
(assert (forall ((r@228@01 $Ref)) (!
  (=>
    (Set_in r@228@01 s@208@01)
    (allSet ($PSF.lookup_list (as sm@229@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01))
      ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@228@01) (-
      length@4@01
      1) v@5@01))
  :pattern ((Set_in r@228@01 s@208@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@57@19@57@75|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@222@01 r) (Set_in (inv@221@01 r) s@208@01)) (= (inv@221@01 r) r))
  :pattern ((inv@221@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r@220@01 $Ref)) (!
  (=>
    (Set_in r@220@01 s@208@01)
    (and (= (inv@221@01 r@220@01) r@220@01) (img@222@01 r@220@01)))
  :pattern ((Set_in r@220@01 s@208@01))
  :pattern ((inv@221@01 r@220@01))
  :pattern ((img@222@01 r@220@01))
  :qid |quant-u-17060|)))
(assert (forall ((r@220@01 $Ref)) (!
  (=> (Set_in r@220@01 s@208@01) (not (= r@220@01 $Ref.null)))
  :pattern ((Set_in r@220@01 s@208@01))
  :pattern ((inv@221@01 r@220@01))
  :pattern ((img@222@01 r@220@01))
  :qid |next-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01))))))
  $Snap.unit))
(assert (forall ((r1@223@01 $Ref) (r2@224@01 $Ref)) (!
  (and
    (=>
      (Set_in r1@223@01 s@208@01)
      (and
        (Set_in r1@223@01 s@208@01)
        (or (Set_in r2@224@01 s@208@01) (not (Set_in r2@224@01 s@208@01)))))
    (or (Set_in r1@223@01 s@208@01) (not (Set_in r1@223@01 s@208@01)))
    (=>
      (and
        (Set_in r1@223@01 s@208@01)
        (and (Set_in r2@224@01 s@208@01) (not (= r1@223@01 r2@224@01))))
      (and
        (Set_in r1@223@01 s@208@01)
        (Set_in r2@224@01 s@208@01)
        (not (= r1@223@01 r2@224@01))))
    (or
      (not
        (and
          (Set_in r1@223@01 s@208@01)
          (and (Set_in r2@224@01 s@208@01) (not (= r1@223@01 r2@224@01)))))
      (and
        (Set_in r1@223@01 s@208@01)
        (and (Set_in r2@224@01 s@208@01) (not (= r1@223@01 r2@224@01))))))
  :pattern ((Set_in r1@223@01 s@208@01) (Set_in r2@224@01 s@208@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@55@19@55@99-aux|)))
(assert (forall ((r1@223@01 $Ref) (r2@224@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@223@01 s@208@01)
      (and (Set_in r2@224@01 s@208@01) (not (= r1@223@01 r2@224@01))))
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r1@223@01)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r2@224@01))))
  :pattern ((Set_in r1@223@01 s@208@01) (Set_in r2@224@01 s@208@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@55@19@55@99|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01))))))))))
(assert (forall ((r $Ref)) (!
  (=> (and (img@218@01 r) (Set_in (inv@217@01 r) s@208@01)) (= (inv@217@01 r) r))
  :pattern ((inv@217@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r@216@01 $Ref)) (!
  (=>
    (Set_in r@216@01 s@208@01)
    (and (= (inv@217@01 r@216@01) r@216@01) (img@218@01 r@216@01)))
  :pattern ((Set_in r@216@01 s@208@01))
  :pattern ((inv@217@01 r@216@01))
  :pattern ((img@218@01 r@216@01))
  :qid |quant-u-17058|)))
(assert (forall ((r@216@01 $Ref)) (!
  (=> (Set_in r@216@01 s@208@01) (not (= r@216@01 $Ref.null)))
  :pattern ((Set_in r@216@01 s@208@01))
  :pattern ((inv@217@01 r@216@01))
  :pattern ((img@218@01 r@216@01))
  :qid |val-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@209@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@209@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@209@01))))
  $Snap.unit))
(assert (forall ((r@219@01 $Ref)) (!
  (or (not (Set_in r@219@01 s@208@01)) (Set_in r@219@01 s@208@01))
  :pattern ((Set_in r@219@01 s@208@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@54@19@54@86-aux|)))
(assert (forall ((r@219@01 $Ref)) (!
  (=>
    (Set_in r@219@01 s@208@01)
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@209@01)))) r@219@01)
      v@5@01))
  :pattern ((Set_in r@219@01 s@208@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@54@19@54@86|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01))))))))
(assert (forall ((r $Ref) (i Int)) (!
  (=>
    (and
      (img@212@01 r i)
      (and
        (Set_in (inv@211@01 r i) lists@3@01)
        (not (Set_in (inv@211@01 r i) s@208@01))))
    (and (= (inv@211@01 r i) r) (= length@4@01 i)))
  :pattern ((inv@211@01 r i))
  :qid |list-fctOfInv|)))
(assert (forall ((r@210@01 $Ref)) (!
  (=>
    (and (Set_in r@210@01 lists@3@01) (not (Set_in r@210@01 s@208@01)))
    (and
      (= (inv@211@01 r@210@01 length@4@01) r@210@01)
      (img@212@01 r@210@01 length@4@01)))
  :pattern ((Set_in r@210@01 lists@3@01))
  :pattern ((Set_in r@210@01 s@208@01))
  :pattern ((inv@211@01 r@210@01 length@4@01))
  :pattern ((img@212@01 r@210@01 length@4@01))
  :qid |quant-u-17055|)))
(assert (=
  ($Snap.second $t@209@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@209@01))
    ($Snap.second ($Snap.second $t@209@01)))))
(assert (= ($Snap.first ($Snap.second $t@209@01)) $Snap.unit))
(assert (forall ((r@213@01 $Ref)) (!
  (and
    (or (Set_in r@213@01 lists@3@01) (not (Set_in r@213@01 lists@3@01)))
    (=>
      (and (Set_in r@213@01 lists@3@01) (not (Set_in r@213@01 s@208@01)))
      (and
        (Set_in r@213@01 lists@3@01)
        (not (Set_in r@213@01 s@208@01))
        (=>
          (and
            (img@212@01 r@213@01 length@4@01)
            (and
              (Set_in (inv@211@01 r@213@01 length@4@01) lists@3@01)
              (not (Set_in (inv@211@01 r@213@01 length@4@01) s@208@01))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@213@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@213@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@209@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@213@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (allSet%precondition ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@213@01)
          ($SortWrappers.IntTo$Snap length@4@01))) r@213@01 length@4@01 v@5@01)))
    (or
      (not (and (Set_in r@213@01 lists@3@01) (not (Set_in r@213@01 s@208@01))))
      (and (Set_in r@213@01 lists@3@01) (not (Set_in r@213@01 s@208@01)))))
  :pattern ((Set_in r@213@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85-aux|)))
(assert (forall ((r@213@01 $Ref)) (!
  (and
    (or (Set_in r@213@01 lists@3@01) (not (Set_in r@213@01 lists@3@01)))
    (=>
      (and (Set_in r@213@01 lists@3@01) (not (Set_in r@213@01 s@208@01)))
      (and
        (Set_in r@213@01 lists@3@01)
        (not (Set_in r@213@01 s@208@01))
        (=>
          (and
            (img@212@01 r@213@01 length@4@01)
            (and
              (Set_in (inv@211@01 r@213@01 length@4@01) lists@3@01)
              (not (Set_in (inv@211@01 r@213@01 length@4@01) s@208@01))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@213@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@213@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@209@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@213@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (allSet%precondition ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@213@01)
          ($SortWrappers.IntTo$Snap length@4@01))) r@213@01 length@4@01 v@5@01)))
    (or
      (not (and (Set_in r@213@01 lists@3@01) (not (Set_in r@213@01 s@208@01))))
      (and (Set_in r@213@01 lists@3@01) (not (Set_in r@213@01 s@208@01)))))
  :pattern ((Set_in r@213@01 s@208@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85-aux|)))
(assert (forall ((r@213@01 $Ref)) (!
  (and
    (or (Set_in r@213@01 lists@3@01) (not (Set_in r@213@01 lists@3@01)))
    (=>
      (and (Set_in r@213@01 lists@3@01) (not (Set_in r@213@01 s@208@01)))
      (and
        (Set_in r@213@01 lists@3@01)
        (not (Set_in r@213@01 s@208@01))
        (=>
          (and
            (img@212@01 r@213@01 length@4@01)
            (and
              (Set_in (inv@211@01 r@213@01 length@4@01) lists@3@01)
              (not (Set_in (inv@211@01 r@213@01 length@4@01) s@208@01))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@213@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@213@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@209@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@213@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (allSet%precondition ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@213@01)
          ($SortWrappers.IntTo$Snap length@4@01))) r@213@01 length@4@01 v@5@01)))
    (or
      (not (and (Set_in r@213@01 lists@3@01) (not (Set_in r@213@01 s@208@01))))
      (and (Set_in r@213@01 lists@3@01) (not (Set_in r@213@01 s@208@01)))))
  :pattern ((allSet%limited ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@213@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@213@01 length@4@01 v@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85-aux|)))
(assert (forall ((r@213@01 $Ref)) (!
  (=>
    (and (Set_in r@213@01 lists@3@01) (not (Set_in r@213@01 s@208@01)))
    (allSet ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@213@01)
      ($SortWrappers.IntTo$Snap length@4@01))) r@213@01 length@4@01 v@5@01))
  :pattern ((Set_in r@213@01 lists@3@01))
  :pattern ((Set_in r@213@01 s@208@01))
  :pattern ((allSet%limited ($PSF.lookup_list (as sm@214@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@213@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@213@01 length@4@01 v@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85|)))
(assert (=
  ($Snap.second ($Snap.second $t@209@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@209@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@209@01))))))
(assert (= $t@209@01 ($Snap.combine ($Snap.first $t@209@01) ($Snap.second $t@209@01))))
(assert (forall ((r@210@01 $Ref)) (!
  (=>
    (and (Set_in r@210@01 lists@3@01) (not (Set_in r@210@01 s@208@01)))
    (or (Set_in r@210@01 lists@3@01) (not (Set_in r@210@01 lists@3@01))))
  :pattern ((Set_in r@210@01 lists@3@01))
  :pattern ((Set_in r@210@01 s@208@01))
  :pattern ((inv@211@01 r@210@01 length@4@01))
  :pattern ((img@212@01 r@210@01 length@4@01))
  :qid |list-aux|)))
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
; [eval] |s| > 0
; [eval] |s|
(pop) ; 9
(push) ; 9
; [eval] !(|s| > 0)
; [eval] |s| > 0
; [eval] |s|
(pop) ; 9
; Loop head block: Follow loop-internal edges
; [eval] |s| > 0
; [eval] |s|
(push) ; 9
(set-option :timeout 10)
(assert (not (not (> (Set_card s@208@01) 0))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (> (Set_card s@208@01) 0)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 86 | |s@208@01| > 0 | live]
; [else-branch: 86 | !(|s@208@01| > 0) | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 86 | |s@208@01| > 0]
(assert (> (Set_card s@208@01) 0))
; [exec]
; var l2: Ref
(declare-const l2@255@01 $Ref)
; [exec]
; inhale (l2 in s)
(declare-const $t@256@01 $Snap)
(assert (= $t@256@01 $Snap.unit))
; [eval] (l2 in s)
(assert (Set_in l2@255@01 s@208@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; fold acc(list(l2, length), write)
; [eval] i > 0
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (not (> length@4@01 0))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 87 | length@4@01 > 0 | live]
; [else-branch: 87 | !(length@4@01 > 0) | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 87 | length@4@01 > 0]
; Precomputing data for removing quantified permissions
(define-fun pTaken@257@01 ((r $Ref)) $Perm
  (ite
    (= r l2@255@01)
    ($Perm.min
      (ite
        (and (img@218@01 r) (Set_in (inv@217@01 r) s@208@01))
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
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@218@01 r) (Set_in (inv@217@01 r) s@208@01))
        $Perm.Write
        $Perm.No)
      (pTaken@257@01 r))
    $Perm.No)
  
  :qid |quant-u-17087|))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@257@01 r) $Perm.No)
  
  :qid |quant-u-17088|))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=> (= r l2@255@01) (= (- $Perm.Write (pTaken@257@01 r)) $Perm.No))
  
  :qid |quant-u-17089|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@258@01 $FVF<val>)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and (img@218@01 l2@255@01) (Set_in (inv@217@01 l2@255@01) s@208@01))
  (=
    ($FVF.lookup_val (as sm@258@01  $FVF<val>) l2@255@01)
    ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@209@01)))) l2@255@01))))
; Precomputing data for removing quantified permissions
(define-fun pTaken@259@01 ((r $Ref)) $Perm
  (ite
    (= r l2@255@01)
    ($Perm.min
      (ite
        (and (img@222@01 r) (Set_in (inv@221@01 r) s@208@01))
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
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@222@01 r) (Set_in (inv@221@01 r) s@208@01))
        $Perm.Write
        $Perm.No)
      (pTaken@259@01 r))
    $Perm.No)
  
  :qid |quant-u-17091|))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@259@01 r) $Perm.No)
  
  :qid |quant-u-17092|))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=> (= r l2@255@01) (= (- $Perm.Write (pTaken@259@01 r)) $Perm.No))
  
  :qid |quant-u-17093|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@260@01 $FVF<next>)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and (img@222@01 l2@255@01) (Set_in (inv@221@01 l2@255@01) s@208@01))
  (=
    ($FVF.lookup_next (as sm@260@01  $FVF<next>) l2@255@01)
    ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) l2@255@01))))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@222@01 r) (Set_in (inv@221@01 r) s@208@01))
    (=
      ($FVF.lookup_next (as sm@260@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r)))
  :pattern (($FVF.lookup_next (as sm@260@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r))
  :qid |qp.fvfValDef33|)))
(set-option :timeout 0)
(push) ; 11
(assert (not (and (img@222@01 l2@255@01) (Set_in (inv@221@01 l2@255@01) s@208@01))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] i - 1
; Precomputing data for removing quantified permissions
(define-fun pTaken@261@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and
      (= r ($FVF.lookup_next (as sm@260@01  $FVF<next>) l2@255@01))
      (= i (- length@4@01 1)))
    ($Perm.min
      (ite
        (and
          (img@212@01 r i)
          (and
            (Set_in (inv@211@01 r i) lists@3@01)
            (not (Set_in (inv@211@01 r i) s@208@01))))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@262@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and
      (= r ($FVF.lookup_next (as sm@260@01  $FVF<next>) l2@255@01))
      (= i (- length@4@01 1)))
    ($Perm.min
      (ite
        (and (img@227@01 r i) (Set_in (inv@226@01 r i) s@208@01))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@261@01 r i)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@212@01 r i)
          (and
            (Set_in (inv@211@01 r i) lists@3@01)
            (not (Set_in (inv@211@01 r i) s@208@01))))
        $Perm.Write
        $Perm.No)
      (pTaken@261@01 r i))
    $Perm.No)
  
  :qid |quant-u-17095|))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (forall ((r $Ref) (i Int)) (!
  (= (pTaken@261@01 r i) $Perm.No)
  
  :qid |quant-u-17096|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and
      (= r ($FVF.lookup_next (as sm@260@01  $FVF<next>) l2@255@01))
      (= i (- length@4@01 1)))
    (= (- $Perm.Write (pTaken@261@01 r i)) $Perm.No))
  
  :qid |quant-u-17097|))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and (img@227@01 r i) (Set_in (inv@226@01 r i) s@208@01))
        $Perm.Write
        $Perm.No)
      (pTaken@262@01 r i))
    $Perm.No)
  
  :qid |quant-u-17098|))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (forall ((r $Ref) (i Int)) (!
  (= (pTaken@262@01 r i) $Perm.No)
  
  :qid |quant-u-17099|))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and
      (= r ($FVF.lookup_next (as sm@260@01  $FVF<next>) l2@255@01))
      (= i (- length@4@01 1)))
    (= (- (- $Perm.Write (pTaken@261@01 r i)) (pTaken@262@01 r i)) $Perm.No))
  
  :qid |quant-u-17100|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@212@01 ($FVF.lookup_next (as sm@260@01  $FVF<next>) l2@255@01) (-
      length@4@01
      1))
    (and
      (Set_in (inv@211@01 ($FVF.lookup_next (as sm@260@01  $FVF<next>) l2@255@01) (-
        length@4@01
        1)) lists@3@01)
      (not
        (Set_in (inv@211@01 ($FVF.lookup_next (as sm@260@01  $FVF<next>) l2@255@01) (-
          length@4@01
          1)) s@208@01))))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next (as sm@260@01  $FVF<next>) l2@255@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@229@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next (as sm@260@01  $FVF<next>) l2@255@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))
      ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@209@01)) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next (as sm@260@01  $FVF<next>) l2@255@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))))))
(assert (=>
  (and
    (img@227@01 ($FVF.lookup_next (as sm@260@01  $FVF<next>) l2@255@01) (-
      length@4@01
      1))
    (Set_in (inv@226@01 ($FVF.lookup_next (as sm@260@01  $FVF<next>) l2@255@01) (-
      length@4@01
      1)) s@208@01))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next (as sm@260@01  $FVF<next>) l2@255@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@229@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next (as sm@260@01  $FVF<next>) l2@255@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))
      ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next (as sm@260@01  $FVF<next>) l2@255@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))))))
(assert (list%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap ($FVF.lookup_val (as sm@258@01  $FVF<val>) l2@255@01))
  ($Snap.combine
    ($SortWrappers.$RefTo$Snap ($FVF.lookup_next (as sm@260@01  $FVF<next>) l2@255@01))
    ($PSF.lookup_list (as sm@229@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap ($FVF.lookup_next (as sm@260@01  $FVF<next>) l2@255@01))
      ($SortWrappers.IntTo$Snap (- length@4@01 1)))))) l2@255@01 length@4@01))
(declare-const sm@263@01 $PSF<list>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_list (as sm@263@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap l2@255@01)
    ($SortWrappers.IntTo$Snap length@4@01)))
  ($Snap.combine
    ($SortWrappers.IntTo$Snap ($FVF.lookup_val (as sm@258@01  $FVF<val>) l2@255@01))
    ($Snap.combine
      ($SortWrappers.$RefTo$Snap ($FVF.lookup_next (as sm@260@01  $FVF<next>) l2@255@01))
      ($PSF.lookup_list (as sm@229@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next (as sm@260@01  $FVF<next>) l2@255@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))))))
; [exec]
; s := (s setminus Set(l2))
; [eval] (s setminus Set(l2))
; [eval] Set(l2)
(declare-const s@264@01 Set<$Ref>)
(assert (= s@264@01 (Set_difference s@208@01 (Set_singleton l2@255@01))))
; Loop head block: Re-establish invariant
(declare-const r@265@01 $Ref)
(set-option :timeout 0)
(push) ; 11
; [eval] (r in lists) && !((r in s))
; [eval] (r in lists)
(push) ; 12
; [then-branch: 88 | !(r@265@01 in lists@3@01) | live]
; [else-branch: 88 | r@265@01 in lists@3@01 | live]
(push) ; 13
; [then-branch: 88 | !(r@265@01 in lists@3@01)]
(assert (not (Set_in r@265@01 lists@3@01)))
(pop) ; 13
(push) ; 13
; [else-branch: 88 | r@265@01 in lists@3@01]
(assert (Set_in r@265@01 lists@3@01))
; [eval] !((r in s))
; [eval] (r in s)
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (or (Set_in r@265@01 lists@3@01) (not (Set_in r@265@01 lists@3@01))))
(assert (and (Set_in r@265@01 lists@3@01) (not (Set_in r@265@01 s@264@01))))
(pop) ; 11
(declare-fun inv@266@01 ($Ref Int) $Ref)
(declare-fun img@267@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((r@265@01 $Ref)) (!
  (=>
    (and (Set_in r@265@01 lists@3@01) (not (Set_in r@265@01 s@264@01)))
    (or (Set_in r@265@01 lists@3@01) (not (Set_in r@265@01 lists@3@01))))
  :pattern ((Set_in r@265@01 lists@3@01))
  :pattern ((Set_in r@265@01 s@264@01))
  :pattern ((inv@266@01 r@265@01 length@4@01))
  :pattern ((img@267@01 r@265@01 length@4@01))
  :qid |list-aux|)))
; Check receiver injectivity
(push) ; 11
(assert (not (forall ((r1@265@01 $Ref) (r2@265@01 $Ref)) (!
  (=>
    (and
      (and (Set_in r1@265@01 lists@3@01) (not (Set_in r1@265@01 s@264@01)))
      (and (Set_in r2@265@01 lists@3@01) (not (Set_in r2@265@01 s@264@01)))
      (= r1@265@01 r2@265@01))
    (= r1@265@01 r2@265@01))
  
  :qid |list-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@265@01 $Ref)) (!
  (=>
    (and (Set_in r@265@01 lists@3@01) (not (Set_in r@265@01 s@264@01)))
    (and
      (= (inv@266@01 r@265@01 length@4@01) r@265@01)
      (img@267@01 r@265@01 length@4@01)))
  :pattern ((Set_in r@265@01 lists@3@01))
  :pattern ((Set_in r@265@01 s@264@01))
  :pattern ((inv@266@01 r@265@01 length@4@01))
  :pattern ((img@267@01 r@265@01 length@4@01))
  :qid |list-invOfFct|)))
(assert (forall ((r $Ref) (i Int)) (!
  (=>
    (and
      (img@267@01 r i)
      (and
        (Set_in (inv@266@01 r i) lists@3@01)
        (not (Set_in (inv@266@01 r i) s@264@01))))
    (and (= (inv@266@01 r i) r) (= length@4@01 i)))
  :pattern ((inv@266@01 r i))
  :qid |list-fctOfInv|)))
(push) ; 11
(set-option :timeout 10)
(assert (not (forall ((r@265@01 $Ref)) (!
  (=
    r@265@01
    ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@265@01))
  
  :qid |quant-u-17102|))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@268@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and
      (and
        (Set_in (inv@266@01 r i) lists@3@01)
        (not (Set_in (inv@266@01 r i) s@264@01)))
      (img@267@01 r i)
      (and (= r (inv@266@01 r i)) (= i length@4@01)))
    ($Perm.min
      (ite
        (and
          (img@212@01 r i)
          (and
            (Set_in (inv@211@01 r i) lists@3@01)
            (not (Set_in (inv@211@01 r i) s@208@01))))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@269@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and
      (and
        (Set_in (inv@266@01 r i) lists@3@01)
        (not (Set_in (inv@266@01 r i) s@264@01)))
      (img@267@01 r i)
      (and (= r (inv@266@01 r i)) (= i length@4@01)))
    ($Perm.min
      (ite (and (= r l2@255@01) (= i length@4@01)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@268@01 r i)))
    $Perm.No))
(define-fun pTaken@270@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and
      (and
        (Set_in (inv@266@01 r i) lists@3@01)
        (not (Set_in (inv@266@01 r i) s@264@01)))
      (img@267@01 r i)
      (and (= r (inv@266@01 r i)) (= i length@4@01)))
    ($Perm.min
      (ite
        (and (img@227@01 r i) (Set_in (inv@226@01 r i) s@208@01))
        (- $Perm.Write (pTaken@262@01 r i))
        $Perm.No)
      (- (- $Perm.Write (pTaken@268@01 r i)) (pTaken@269@01 r i)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@212@01 r i)
          (and
            (Set_in (inv@211@01 r i) lists@3@01)
            (not (Set_in (inv@211@01 r i) s@208@01))))
        $Perm.Write
        $Perm.No)
      (pTaken@268@01 r i))
    $Perm.No)
  
  :qid |quant-u-17104|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and
      (and
        (Set_in (inv@266@01 r i) lists@3@01)
        (not (Set_in (inv@266@01 r i) s@264@01)))
      (img@267@01 r i)
      (and (= r (inv@266@01 r i)) (= i length@4@01)))
    (= (- $Perm.Write (pTaken@268@01 r i)) $Perm.No))
  
  :qid |quant-u-17105|))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@269@01 l2@255@01 length@4@01)) $Perm.No)))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (forall ((r $Ref) (i Int)) (!
  (= (pTaken@269@01 r i) $Perm.No)
  
  :qid |quant-u-17107|))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and
      (and
        (Set_in (inv@266@01 r i) lists@3@01)
        (not (Set_in (inv@266@01 r i) s@264@01)))
      (img@267@01 r i)
      (and (= r (inv@266@01 r i)) (= i length@4@01)))
    (= (- (- $Perm.Write (pTaken@268@01 r i)) (pTaken@269@01 r i)) $Perm.No))
  
  :qid |quant-u-17108|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall r: Ref :: { (r in lists) } { (r in s) } { allSet(r, length, v) } (r in lists) && !((r in s)) ==> allSet(r, length, v))
(declare-const r@271@01 $Ref)
(set-option :timeout 0)
(push) ; 11
; [eval] (r in lists) && !((r in s)) ==> allSet(r, length, v)
; [eval] (r in lists) && !((r in s))
; [eval] (r in lists)
(push) ; 12
; [then-branch: 89 | !(r@271@01 in lists@3@01) | live]
; [else-branch: 89 | r@271@01 in lists@3@01 | live]
(push) ; 13
; [then-branch: 89 | !(r@271@01 in lists@3@01)]
(assert (not (Set_in r@271@01 lists@3@01)))
(pop) ; 13
(push) ; 13
; [else-branch: 89 | r@271@01 in lists@3@01]
(assert (Set_in r@271@01 lists@3@01))
; [eval] !((r in s))
; [eval] (r in s)
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (or (Set_in r@271@01 lists@3@01) (not (Set_in r@271@01 lists@3@01))))
(push) ; 12
; [then-branch: 90 | r@271@01 in lists@3@01 && !(r@271@01 in s@264@01) | live]
; [else-branch: 90 | !(r@271@01 in lists@3@01 && !(r@271@01 in s@264@01)) | live]
(push) ; 13
; [then-branch: 90 | r@271@01 in lists@3@01 && !(r@271@01 in s@264@01)]
(assert (and (Set_in r@271@01 lists@3@01) (not (Set_in r@271@01 s@264@01))))
; [eval] allSet(r, length, v)
(push) ; 14
(push) ; 15
(set-option :timeout 10)
(assert (not (= l2@255@01 r@271@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and (= r r@271@01) (= i length@4@01))
    (>
      (+
        (+
          (ite
            (and (img@227@01 r i) (Set_in (inv@226@01 r i) s@208@01))
            (- $Perm.Write (pTaken@262@01 r i))
            $Perm.No)
          (ite
            (and
              (img@212@01 r i)
              (and
                (Set_in (inv@211@01 r i) lists@3@01)
                (not (Set_in (inv@211@01 r i) s@208@01))))
            $Perm.Write
            $Perm.No))
        (ite (and (= r l2@255@01) (= i length@4@01)) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-17109|))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(declare-const sm@272@01 $PSF<list>)
(declare-const s@273@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (= r@271@01 l2@255@01)
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@271@01)
          ($SortWrappers.IntTo$Snap length@4@01))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@271@01)
        ($SortWrappers.IntTo$Snap length@4@01)))
      ($PSF.lookup_list (as sm@263@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@271@01)
        ($SortWrappers.IntTo$Snap length@4@01)))))))
(assert (=>
  (ite
    (and
      (img@227@01 r@271@01 length@4@01)
      (Set_in (inv@226@01 r@271@01 length@4@01) s@208@01))
    (< $Perm.No (- $Perm.Write (pTaken@262@01 r@271@01 length@4@01)))
    false)
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@271@01)
          ($SortWrappers.IntTo$Snap length@4@01))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@271@01)
        ($SortWrappers.IntTo$Snap length@4@01)))
      ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@271@01)
        ($SortWrappers.IntTo$Snap length@4@01)))))))
(assert (=>
  (and
    (img@212@01 r@271@01 length@4@01)
    (and
      (Set_in (inv@211@01 r@271@01 length@4@01) lists@3@01)
      (not (Set_in (inv@211@01 r@271@01 length@4@01) s@208@01))))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@271@01)
          ($SortWrappers.IntTo$Snap length@4@01))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@271@01)
        ($SortWrappers.IntTo$Snap length@4@01)))
      ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@209@01)) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@271@01)
        ($SortWrappers.IntTo$Snap length@4@01)))))))
(assert (allSet%precondition ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap r@271@01)
  ($SortWrappers.IntTo$Snap length@4@01))) r@271@01 length@4@01 v@5@01))
(pop) ; 14
; Joined path conditions
(assert (and
  (=>
    (= r@271@01 l2@255@01)
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@271@01)
            ($SortWrappers.IntTo$Snap length@4@01))
          $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@271@01)
          ($SortWrappers.IntTo$Snap length@4@01)))
        ($PSF.lookup_list (as sm@263@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@271@01)
          ($SortWrappers.IntTo$Snap length@4@01))))))
  (=>
    (ite
      (and
        (img@227@01 r@271@01 length@4@01)
        (Set_in (inv@226@01 r@271@01 length@4@01) s@208@01))
      (< $Perm.No (- $Perm.Write (pTaken@262@01 r@271@01 length@4@01)))
      false)
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@271@01)
            ($SortWrappers.IntTo$Snap length@4@01))
          $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@271@01)
          ($SortWrappers.IntTo$Snap length@4@01)))
        ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))))) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@271@01)
          ($SortWrappers.IntTo$Snap length@4@01))))))
  (=>
    (and
      (img@212@01 r@271@01 length@4@01)
      (and
        (Set_in (inv@211@01 r@271@01 length@4@01) lists@3@01)
        (not (Set_in (inv@211@01 r@271@01 length@4@01) s@208@01))))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@271@01)
            ($SortWrappers.IntTo$Snap length@4@01))
          $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@271@01)
          ($SortWrappers.IntTo$Snap length@4@01)))
        ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@209@01)) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@271@01)
          ($SortWrappers.IntTo$Snap length@4@01))))))
  (allSet%precondition ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@271@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@271@01 length@4@01 v@5@01)))
(pop) ; 13
(push) ; 13
; [else-branch: 90 | !(r@271@01 in lists@3@01 && !(r@271@01 in s@264@01))]
(assert (not (and (Set_in r@271@01 lists@3@01) (not (Set_in r@271@01 s@264@01)))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (=>
  (and (Set_in r@271@01 lists@3@01) (not (Set_in r@271@01 s@264@01)))
  (and
    (Set_in r@271@01 lists@3@01)
    (not (Set_in r@271@01 s@264@01))
    (=>
      (= r@271@01 l2@255@01)
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap r@271@01)
              ($SortWrappers.IntTo$Snap length@4@01))
            $Snap.unit))
        (=
          ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@271@01)
            ($SortWrappers.IntTo$Snap length@4@01)))
          ($PSF.lookup_list (as sm@263@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@271@01)
            ($SortWrappers.IntTo$Snap length@4@01))))))
    (=>
      (ite
        (and
          (img@227@01 r@271@01 length@4@01)
          (Set_in (inv@226@01 r@271@01 length@4@01) s@208@01))
        (< $Perm.No (- $Perm.Write (pTaken@262@01 r@271@01 length@4@01)))
        false)
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap r@271@01)
              ($SortWrappers.IntTo$Snap length@4@01))
            $Snap.unit))
        (=
          ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@271@01)
            ($SortWrappers.IntTo$Snap length@4@01)))
          ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))))) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@271@01)
            ($SortWrappers.IntTo$Snap length@4@01))))))
    (=>
      (and
        (img@212@01 r@271@01 length@4@01)
        (and
          (Set_in (inv@211@01 r@271@01 length@4@01) lists@3@01)
          (not (Set_in (inv@211@01 r@271@01 length@4@01) s@208@01))))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap r@271@01)
              ($SortWrappers.IntTo$Snap length@4@01))
            $Snap.unit))
        (=
          ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@271@01)
            ($SortWrappers.IntTo$Snap length@4@01)))
          ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@209@01)) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@271@01)
            ($SortWrappers.IntTo$Snap length@4@01))))))
    (allSet%precondition ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@271@01)
      ($SortWrappers.IntTo$Snap length@4@01))) r@271@01 length@4@01 v@5@01))))
; Joined path conditions
(assert (or
  (not (and (Set_in r@271@01 lists@3@01) (not (Set_in r@271@01 s@264@01))))
  (and (Set_in r@271@01 lists@3@01) (not (Set_in r@271@01 s@264@01)))))
(pop) ; 11
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@271@01 $Ref)) (!
  (and
    (or (Set_in r@271@01 lists@3@01) (not (Set_in r@271@01 lists@3@01)))
    (=>
      (and (Set_in r@271@01 lists@3@01) (not (Set_in r@271@01 s@264@01)))
      (and
        (Set_in r@271@01 lists@3@01)
        (not (Set_in r@271@01 s@264@01))
        (=>
          (= r@271@01 l2@255@01)
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@271@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@271@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list (as sm@263@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@271@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (=>
          (ite
            (and
              (img@227@01 r@271@01 length@4@01)
              (Set_in (inv@226@01 r@271@01 length@4@01) s@208@01))
            (< $Perm.No (- $Perm.Write (pTaken@262@01 r@271@01 length@4@01)))
            false)
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@271@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@271@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))))) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@271@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (=>
          (and
            (img@212@01 r@271@01 length@4@01)
            (and
              (Set_in (inv@211@01 r@271@01 length@4@01) lists@3@01)
              (not (Set_in (inv@211@01 r@271@01 length@4@01) s@208@01))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@271@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@271@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@209@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@271@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (allSet%precondition ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@271@01)
          ($SortWrappers.IntTo$Snap length@4@01))) r@271@01 length@4@01 v@5@01)))
    (or
      (not (and (Set_in r@271@01 lists@3@01) (not (Set_in r@271@01 s@264@01))))
      (and (Set_in r@271@01 lists@3@01) (not (Set_in r@271@01 s@264@01)))))
  :pattern ((Set_in r@271@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85-aux|)))
(assert (forall ((r@271@01 $Ref)) (!
  (and
    (or (Set_in r@271@01 lists@3@01) (not (Set_in r@271@01 lists@3@01)))
    (=>
      (and (Set_in r@271@01 lists@3@01) (not (Set_in r@271@01 s@264@01)))
      (and
        (Set_in r@271@01 lists@3@01)
        (not (Set_in r@271@01 s@264@01))
        (=>
          (= r@271@01 l2@255@01)
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@271@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@271@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list (as sm@263@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@271@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (=>
          (ite
            (and
              (img@227@01 r@271@01 length@4@01)
              (Set_in (inv@226@01 r@271@01 length@4@01) s@208@01))
            (< $Perm.No (- $Perm.Write (pTaken@262@01 r@271@01 length@4@01)))
            false)
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@271@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@271@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))))) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@271@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (=>
          (and
            (img@212@01 r@271@01 length@4@01)
            (and
              (Set_in (inv@211@01 r@271@01 length@4@01) lists@3@01)
              (not (Set_in (inv@211@01 r@271@01 length@4@01) s@208@01))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@271@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@271@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@209@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@271@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (allSet%precondition ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@271@01)
          ($SortWrappers.IntTo$Snap length@4@01))) r@271@01 length@4@01 v@5@01)))
    (or
      (not (and (Set_in r@271@01 lists@3@01) (not (Set_in r@271@01 s@264@01))))
      (and (Set_in r@271@01 lists@3@01) (not (Set_in r@271@01 s@264@01)))))
  :pattern ((Set_in r@271@01 s@264@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85-aux|)))
(assert (forall ((r@271@01 $Ref)) (!
  (and
    (or (Set_in r@271@01 lists@3@01) (not (Set_in r@271@01 lists@3@01)))
    (=>
      (and (Set_in r@271@01 lists@3@01) (not (Set_in r@271@01 s@264@01)))
      (and
        (Set_in r@271@01 lists@3@01)
        (not (Set_in r@271@01 s@264@01))
        (=>
          (= r@271@01 l2@255@01)
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@271@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@271@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list (as sm@263@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@271@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (=>
          (ite
            (and
              (img@227@01 r@271@01 length@4@01)
              (Set_in (inv@226@01 r@271@01 length@4@01) s@208@01))
            (< $Perm.No (- $Perm.Write (pTaken@262@01 r@271@01 length@4@01)))
            false)
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@271@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@271@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))))) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@271@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (=>
          (and
            (img@212@01 r@271@01 length@4@01)
            (and
              (Set_in (inv@211@01 r@271@01 length@4@01) lists@3@01)
              (not (Set_in (inv@211@01 r@271@01 length@4@01) s@208@01))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@271@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@271@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@209@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@271@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (allSet%precondition ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@271@01)
          ($SortWrappers.IntTo$Snap length@4@01))) r@271@01 length@4@01 v@5@01)))
    (or
      (not (and (Set_in r@271@01 lists@3@01) (not (Set_in r@271@01 s@264@01))))
      (and (Set_in r@271@01 lists@3@01) (not (Set_in r@271@01 s@264@01)))))
  :pattern ((allSet%limited ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@271@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@271@01 length@4@01 v@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85-aux|)))
(assert (forall ((r@271@01 $Ref)) (!
  (=>
    (and (Set_in r@271@01 lists@3@01) (not (Set_in r@271@01 s@264@01)))
    (allSet%precondition ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@271@01)
      ($SortWrappers.IntTo$Snap length@4@01))) r@271@01 length@4@01 v@5@01))
  :pattern ((Set_in r@271@01 lists@3@01))
  :pattern ((Set_in r@271@01 s@264@01))
  :pattern ((allSet%limited ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@271@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@271@01 length@4@01 v@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85_precondition|)))
(push) ; 11
(assert (not (forall ((r@271@01 $Ref)) (!
  (=>
    (and
      (=>
        (and (Set_in r@271@01 lists@3@01) (not (Set_in r@271@01 s@264@01)))
        (allSet%precondition ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@271@01)
          ($SortWrappers.IntTo$Snap length@4@01))) r@271@01 length@4@01 v@5@01))
      (and (Set_in r@271@01 lists@3@01) (not (Set_in r@271@01 s@264@01))))
    (allSet ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@271@01)
      ($SortWrappers.IntTo$Snap length@4@01))) r@271@01 length@4@01 v@5@01))
  :pattern ((Set_in r@271@01 lists@3@01))
  :pattern ((Set_in r@271@01 s@264@01))
  :pattern ((allSet%limited ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@271@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@271@01 length@4@01 v@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (forall ((r@271@01 $Ref)) (!
  (=>
    (and (Set_in r@271@01 lists@3@01) (not (Set_in r@271@01 s@264@01)))
    (allSet ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@271@01)
      ($SortWrappers.IntTo$Snap length@4@01))) r@271@01 length@4@01 v@5@01))
  :pattern ((Set_in r@271@01 lists@3@01))
  :pattern ((Set_in r@271@01 s@264@01))
  :pattern ((allSet%limited ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@271@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@271@01 length@4@01 v@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@53@19@53@85|)))
(declare-const r@274@01 $Ref)
(push) ; 11
; [eval] (r in s)
(assert (Set_in r@274@01 s@264@01))
(pop) ; 11
(declare-fun inv@275@01 ($Ref) $Ref)
(declare-fun img@276@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 11
(assert (not (forall ((r1@274@01 $Ref) (r2@274@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@274@01 s@264@01)
      (Set_in r2@274@01 s@264@01)
      (= r1@274@01 r2@274@01))
    (= r1@274@01 r2@274@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@274@01 $Ref)) (!
  (=>
    (Set_in r@274@01 s@264@01)
    (and (= (inv@275@01 r@274@01) r@274@01) (img@276@01 r@274@01)))
  :pattern ((Set_in r@274@01 s@264@01))
  :pattern ((inv@275@01 r@274@01))
  :pattern ((img@276@01 r@274@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@276@01 r) (Set_in (inv@275@01 r) s@264@01)) (= (inv@275@01 r) r))
  :pattern ((inv@275@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@277@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@275@01 r) s@264@01) (img@276@01 r) (= r (inv@275@01 r)))
    ($Perm.min
      (ite
        (and (img@218@01 r) (Set_in (inv@217@01 r) s@208@01))
        (- $Perm.Write (pTaken@257@01 r))
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
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@218@01 r) (Set_in (inv@217@01 r) s@208@01))
        (- $Perm.Write (pTaken@257@01 r))
        $Perm.No)
      (pTaken@277@01 r))
    $Perm.No)
  
  :qid |quant-u-17112|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@275@01 r) s@264@01) (img@276@01 r) (= r (inv@275@01 r)))
    (= (- $Perm.Write (pTaken@277@01 r)) $Perm.No))
  
  :qid |quant-u-17113|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall r: Ref :: { (r in s) } (r in s) ==> r.val == v)
(declare-const r@278@01 $Ref)
(set-option :timeout 0)
(push) ; 11
; [eval] (r in s) ==> r.val == v
; [eval] (r in s)
(push) ; 12
; [then-branch: 91 | r@278@01 in s@264@01 | live]
; [else-branch: 91 | !(r@278@01 in s@264@01) | live]
(push) ; 13
; [then-branch: 91 | r@278@01 in s@264@01]
(assert (Set_in r@278@01 s@264@01))
; [eval] r.val == v
(push) ; 14
(assert (not (ite
  (and (img@218@01 r@278@01) (Set_in (inv@217@01 r@278@01) s@208@01))
  (< $Perm.No (- $Perm.Write (pTaken@257@01 r@278@01)))
  false)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(pop) ; 13
(push) ; 13
; [else-branch: 91 | !(r@278@01 in s@264@01)]
(assert (not (Set_in r@278@01 s@264@01)))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in r@278@01 s@264@01)) (Set_in r@278@01 s@264@01)))
(pop) ; 11
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@278@01 $Ref)) (!
  (or (not (Set_in r@278@01 s@264@01)) (Set_in r@278@01 s@264@01))
  :pattern ((Set_in r@278@01 s@264@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@54@19@54@86-aux|)))
(push) ; 11
(assert (not (forall ((r@278@01 $Ref)) (!
  (=>
    (Set_in r@278@01 s@264@01)
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@209@01)))) r@278@01)
      v@5@01))
  :pattern ((Set_in r@278@01 s@264@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@54@19@54@86|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (forall ((r@278@01 $Ref)) (!
  (=>
    (Set_in r@278@01 s@264@01)
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@209@01)))) r@278@01)
      v@5@01))
  :pattern ((Set_in r@278@01 s@264@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@54@19@54@86|)))
(declare-const r@279@01 $Ref)
(push) ; 11
; [eval] (r in s)
(assert (Set_in r@279@01 s@264@01))
(pop) ; 11
(declare-fun inv@280@01 ($Ref) $Ref)
(declare-fun img@281@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 11
(assert (not (forall ((r1@279@01 $Ref) (r2@279@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@279@01 s@264@01)
      (Set_in r2@279@01 s@264@01)
      (= r1@279@01 r2@279@01))
    (= r1@279@01 r2@279@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@279@01 $Ref)) (!
  (=>
    (Set_in r@279@01 s@264@01)
    (and (= (inv@280@01 r@279@01) r@279@01) (img@281@01 r@279@01)))
  :pattern ((Set_in r@279@01 s@264@01))
  :pattern ((inv@280@01 r@279@01))
  :pattern ((img@281@01 r@279@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@281@01 r) (Set_in (inv@280@01 r) s@264@01)) (= (inv@280@01 r) r))
  :pattern ((inv@280@01 r))
  :qid |next-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@282@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@280@01 r) s@264@01) (img@281@01 r) (= r (inv@280@01 r)))
    ($Perm.min
      (ite
        (and (img@222@01 r) (Set_in (inv@221@01 r) s@208@01))
        (- $Perm.Write (pTaken@259@01 r))
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
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@222@01 r) (Set_in (inv@221@01 r) s@208@01))
        (- $Perm.Write (pTaken@259@01 r))
        $Perm.No)
      (pTaken@282@01 r))
    $Perm.No)
  
  :qid |quant-u-17116|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@280@01 r) s@264@01) (img@281@01 r) (= r (inv@280@01 r)))
    (= (- $Perm.Write (pTaken@282@01 r)) $Perm.No))
  
  :qid |quant-u-17117|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall r1: Ref, r2: Ref :: { (r1 in s), (r2 in s) } (r1 in s) && ((r2 in s) && r1 != r2) ==> r1.next != r2.next)
(declare-const r1@283@01 $Ref)
(declare-const r2@284@01 $Ref)
(set-option :timeout 0)
(push) ; 11
; [eval] (r1 in s) && ((r2 in s) && r1 != r2) ==> r1.next != r2.next
; [eval] (r1 in s) && ((r2 in s) && r1 != r2)
; [eval] (r1 in s)
(push) ; 12
; [then-branch: 92 | !(r1@283@01 in s@264@01) | live]
; [else-branch: 92 | r1@283@01 in s@264@01 | live]
(push) ; 13
; [then-branch: 92 | !(r1@283@01 in s@264@01)]
(assert (not (Set_in r1@283@01 s@264@01)))
(pop) ; 13
(push) ; 13
; [else-branch: 92 | r1@283@01 in s@264@01]
(assert (Set_in r1@283@01 s@264@01))
; [eval] (r2 in s)
(push) ; 14
; [then-branch: 93 | !(r2@284@01 in s@264@01) | live]
; [else-branch: 93 | r2@284@01 in s@264@01 | live]
(push) ; 15
; [then-branch: 93 | !(r2@284@01 in s@264@01)]
(assert (not (Set_in r2@284@01 s@264@01)))
(pop) ; 15
(push) ; 15
; [else-branch: 93 | r2@284@01 in s@264@01]
(assert (Set_in r2@284@01 s@264@01))
; [eval] r1 != r2
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or (Set_in r2@284@01 s@264@01) (not (Set_in r2@284@01 s@264@01))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in r1@283@01 s@264@01)
  (and
    (Set_in r1@283@01 s@264@01)
    (or (Set_in r2@284@01 s@264@01) (not (Set_in r2@284@01 s@264@01))))))
(assert (or (Set_in r1@283@01 s@264@01) (not (Set_in r1@283@01 s@264@01))))
(push) ; 12
; [then-branch: 94 | r1@283@01 in s@264@01 && r2@284@01 in s@264@01 && r1@283@01 != r2@284@01 | live]
; [else-branch: 94 | !(r1@283@01 in s@264@01 && r2@284@01 in s@264@01 && r1@283@01 != r2@284@01) | live]
(push) ; 13
; [then-branch: 94 | r1@283@01 in s@264@01 && r2@284@01 in s@264@01 && r1@283@01 != r2@284@01]
(assert (and
  (Set_in r1@283@01 s@264@01)
  (and (Set_in r2@284@01 s@264@01) (not (= r1@283@01 r2@284@01)))))
; [eval] r1.next != r2.next
(push) ; 14
(assert (not (ite
  (and (img@222@01 r1@283@01) (Set_in (inv@221@01 r1@283@01) s@208@01))
  (< $Perm.No (- $Perm.Write (pTaken@259@01 r1@283@01)))
  false)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(push) ; 14
(assert (not (ite
  (and (img@222@01 r2@284@01) (Set_in (inv@221@01 r2@284@01) s@208@01))
  (< $Perm.No (- $Perm.Write (pTaken@259@01 r2@284@01)))
  false)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(pop) ; 13
(push) ; 13
; [else-branch: 94 | !(r1@283@01 in s@264@01 && r2@284@01 in s@264@01 && r1@283@01 != r2@284@01)]
(assert (not
  (and
    (Set_in r1@283@01 s@264@01)
    (and (Set_in r2@284@01 s@264@01) (not (= r1@283@01 r2@284@01))))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (=>
  (and
    (Set_in r1@283@01 s@264@01)
    (and (Set_in r2@284@01 s@264@01) (not (= r1@283@01 r2@284@01))))
  (and
    (Set_in r1@283@01 s@264@01)
    (Set_in r2@284@01 s@264@01)
    (not (= r1@283@01 r2@284@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in r1@283@01 s@264@01)
      (and (Set_in r2@284@01 s@264@01) (not (= r1@283@01 r2@284@01)))))
  (and
    (Set_in r1@283@01 s@264@01)
    (and (Set_in r2@284@01 s@264@01) (not (= r1@283@01 r2@284@01))))))
(pop) ; 11
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r1@283@01 $Ref) (r2@284@01 $Ref)) (!
  (and
    (=>
      (Set_in r1@283@01 s@264@01)
      (and
        (Set_in r1@283@01 s@264@01)
        (or (Set_in r2@284@01 s@264@01) (not (Set_in r2@284@01 s@264@01)))))
    (or (Set_in r1@283@01 s@264@01) (not (Set_in r1@283@01 s@264@01)))
    (=>
      (and
        (Set_in r1@283@01 s@264@01)
        (and (Set_in r2@284@01 s@264@01) (not (= r1@283@01 r2@284@01))))
      (and
        (Set_in r1@283@01 s@264@01)
        (Set_in r2@284@01 s@264@01)
        (not (= r1@283@01 r2@284@01))))
    (or
      (not
        (and
          (Set_in r1@283@01 s@264@01)
          (and (Set_in r2@284@01 s@264@01) (not (= r1@283@01 r2@284@01)))))
      (and
        (Set_in r1@283@01 s@264@01)
        (and (Set_in r2@284@01 s@264@01) (not (= r1@283@01 r2@284@01))))))
  :pattern ((Set_in r1@283@01 s@264@01) (Set_in r2@284@01 s@264@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@55@19@55@99-aux|)))
(push) ; 11
(assert (not (forall ((r1@283@01 $Ref) (r2@284@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@283@01 s@264@01)
      (and (Set_in r2@284@01 s@264@01) (not (= r1@283@01 r2@284@01))))
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r1@283@01)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r2@284@01))))
  :pattern ((Set_in r1@283@01 s@264@01) (Set_in r2@284@01 s@264@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@55@19@55@99|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (forall ((r1@283@01 $Ref) (r2@284@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@283@01 s@264@01)
      (and (Set_in r2@284@01 s@264@01) (not (= r1@283@01 r2@284@01))))
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r1@283@01)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r2@284@01))))
  :pattern ((Set_in r1@283@01 s@264@01) (Set_in r2@284@01 s@264@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@55@19@55@99|)))
(declare-const r@285@01 $Ref)
(push) ; 11
; [eval] (r in s)
(assert (Set_in r@285@01 s@264@01))
(push) ; 12
(assert (not (ite
  (and (img@222@01 r@285@01) (Set_in (inv@221@01 r@285@01) s@208@01))
  (< $Perm.No (- $Perm.Write (pTaken@259@01 r@285@01)))
  false)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; [eval] length - 1
(pop) ; 11
(declare-fun inv@286@01 ($Ref Int) $Ref)
(declare-fun img@287@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 11
(assert (not (forall ((r1@285@01 $Ref) (r2@285@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@285@01 s@264@01)
      (Set_in r2@285@01 s@264@01)
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r1@285@01)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r2@285@01)))
    (= r1@285@01 r2@285@01))
  
  :qid |list-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@285@01 $Ref)) (!
  (=>
    (Set_in r@285@01 s@264@01)
    (and
      (=
        (inv@286@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@285@01) (-
          length@4@01
          1))
        r@285@01)
      (img@287@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@285@01) (-
        length@4@01
        1))))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@285@01))
  :qid |list-invOfFct|)))
(assert (forall ((r $Ref) (i Int)) (!
  (=>
    (and (img@287@01 r i) (Set_in (inv@286@01 r i) s@264@01))
    (and
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) (inv@286@01 r i))
        r)
      (= (- length@4@01 1) i)))
  :pattern ((inv@286@01 r i))
  :qid |list-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@288@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and
      (Set_in (inv@286@01 r i) s@264@01)
      (img@287@01 r i)
      (and
        (=
          r
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) (inv@286@01 r i)))
        (= i (- length@4@01 1))))
    ($Perm.min
      (ite
        (and (img@227@01 r i) (Set_in (inv@226@01 r i) s@208@01))
        (- $Perm.Write (pTaken@262@01 r i))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@289@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and
      (Set_in (inv@286@01 r i) s@264@01)
      (img@287@01 r i)
      (and
        (=
          r
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) (inv@286@01 r i)))
        (= i (- length@4@01 1))))
    ($Perm.min
      (ite
        (and (= r l2@255@01) (= i length@4@01))
        (- $Perm.Write (pTaken@269@01 r i))
        $Perm.No)
      (- $Perm.Write (pTaken@288@01 r i)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and (img@227@01 r i) (Set_in (inv@226@01 r i) s@208@01))
        (- $Perm.Write (pTaken@262@01 r i))
        $Perm.No)
      (pTaken@288@01 r i))
    $Perm.No)
  
  :qid |quant-u-17120|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and
      (Set_in (inv@286@01 r i) s@264@01)
      (img@287@01 r i)
      (and
        (=
          r
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) (inv@286@01 r i)))
        (= i (- length@4@01 1))))
    (= (- $Perm.Write (pTaken@288@01 r i)) $Perm.No))
  
  :qid |quant-u-17121|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall r: Ref :: { (r in s) } (r in s) ==> allSet(r.next, length - 1, v))
(declare-const r@290@01 $Ref)
(set-option :timeout 0)
(push) ; 11
; [eval] (r in s) ==> allSet(r.next, length - 1, v)
; [eval] (r in s)
(push) ; 12
; [then-branch: 95 | r@290@01 in s@264@01 | live]
; [else-branch: 95 | !(r@290@01 in s@264@01) | live]
(push) ; 13
; [then-branch: 95 | r@290@01 in s@264@01]
(assert (Set_in r@290@01 s@264@01))
; [eval] allSet(r.next, length - 1, v)
(push) ; 14
(assert (not (ite
  (and (img@222@01 r@290@01) (Set_in (inv@221@01 r@290@01) s@208@01))
  (< $Perm.No (- $Perm.Write (pTaken@259@01 r@290@01)))
  false)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [eval] length - 1
(push) ; 14
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  l2@255@01
  ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and
      (=
        r
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
      (= i (- length@4@01 1)))
    (>
      (+
        (+
          (ite
            (and (img@227@01 r i) (Set_in (inv@226@01 r i) s@208@01))
            (- $Perm.Write (pTaken@262@01 r i))
            $Perm.No)
          (ite
            (and
              (img@212@01 r i)
              (and
                (Set_in (inv@211@01 r i) lists@3@01)
                (not (Set_in (inv@211@01 r i) s@208@01))))
            $Perm.Write
            $Perm.No))
        (ite (and (= r l2@255@01) (= i length@4@01)) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-17122|))))
(check-sat)
; unsat
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (=
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01)
      l2@255@01)
    (= (- length@4@01 1) length@4@01))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))
      ($PSF.lookup_list (as sm@263@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))))))
(assert (=>
  (ite
    (and
      (img@227@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01) (-
        length@4@01
        1))
      (Set_in (inv@226@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01) (-
        length@4@01
        1)) s@208@01))
    (<
      $Perm.No
      (-
        $Perm.Write
        (pTaken@262@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01) (-
          length@4@01
          1))))
    false)
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))
      ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))))))
(assert (=>
  (and
    (img@212@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01) (-
      length@4@01
      1))
    (and
      (Set_in (inv@211@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01) (-
        length@4@01
        1)) lists@3@01)
      (not
        (Set_in (inv@211@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01) (-
          length@4@01
          1)) s@208@01))))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))
      ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@209@01)) ($Snap.combine
        ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
        ($SortWrappers.IntTo$Snap (- length@4@01 1))))))))
(assert (allSet%precondition ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
  ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01) (-
  length@4@01
  1) v@5@01))
(pop) ; 14
; Joined path conditions
(assert (and
  (=>
    (and
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01)
        l2@255@01)
      (= (- length@4@01 1) length@4@01))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1)))
          $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1))))
        ($PSF.lookup_list (as sm@263@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
  (=>
    (ite
      (and
        (img@227@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01) (-
          length@4@01
          1))
        (Set_in (inv@226@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01) (-
          length@4@01
          1)) s@208@01))
      (<
        $Perm.No
        (-
          $Perm.Write
          (pTaken@262@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01) (-
            length@4@01
            1))))
      false)
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1)))
          $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1))))
        ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))))) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
  (=>
    (and
      (img@212@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01) (-
        length@4@01
        1))
      (and
        (Set_in (inv@211@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01) (-
          length@4@01
          1)) lists@3@01)
        (not
          (Set_in (inv@211@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01) (-
            length@4@01
            1)) s@208@01))))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1)))
          $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1))))
        ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@209@01)) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
  (allSet%precondition ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
    ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01) (-
    length@4@01
    1) v@5@01)))
(pop) ; 13
(push) ; 13
; [else-branch: 95 | !(r@290@01 in s@264@01)]
(assert (not (Set_in r@290@01 s@264@01)))
(pop) ; 13
(pop) ; 12
; Joined path conditions
(assert (=>
  (Set_in r@290@01 s@264@01)
  (and
    (Set_in r@290@01 s@264@01)
    (=>
      (and
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01)
          l2@255@01)
        (= (- length@4@01 1) length@4@01))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
              ($SortWrappers.IntTo$Snap (- length@4@01 1)))
            $Snap.unit))
        (=
          ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1))))
          ($PSF.lookup_list (as sm@263@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
    (=>
      (ite
        (and
          (img@227@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01) (-
            length@4@01
            1))
          (Set_in (inv@226@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01) (-
            length@4@01
            1)) s@208@01))
        (<
          $Perm.No
          (-
            $Perm.Write
            (pTaken@262@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01) (-
              length@4@01
              1))))
        false)
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
              ($SortWrappers.IntTo$Snap (- length@4@01 1)))
            $Snap.unit))
        (=
          ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1))))
          ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))))) ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
    (=>
      (and
        (img@212@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01) (-
          length@4@01
          1))
        (and
          (Set_in (inv@211@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01) (-
            length@4@01
            1)) lists@3@01)
          (not
            (Set_in (inv@211@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01) (-
              length@4@01
              1)) s@208@01))))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
              ($SortWrappers.IntTo$Snap (- length@4@01 1)))
            $Snap.unit))
        (=
          ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1))))
          ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@209@01)) ($Snap.combine
            ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
            ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
    (allSet%precondition ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
      ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01) (-
      length@4@01
      1) v@5@01))))
; Joined path conditions
(assert (or (not (Set_in r@290@01 s@264@01)) (Set_in r@290@01 s@264@01)))
(pop) ; 11
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@290@01 $Ref)) (!
  (and
    (=>
      (Set_in r@290@01 s@264@01)
      (and
        (Set_in r@290@01 s@264@01)
        (=>
          (and
            (=
              ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01)
              l2@255@01)
            (= (- length@4@01 1) length@4@01))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
                  ($SortWrappers.IntTo$Snap (- length@4@01 1)))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
                ($SortWrappers.IntTo$Snap (- length@4@01 1))))
              ($PSF.lookup_list (as sm@263@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
                ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
        (=>
          (ite
            (and
              (img@227@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01) (-
                length@4@01
                1))
              (Set_in (inv@226@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01) (-
                length@4@01
                1)) s@208@01))
            (<
              $Perm.No
              (-
                $Perm.Write
                (pTaken@262@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01) (-
                  length@4@01
                  1))))
            false)
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
                  ($SortWrappers.IntTo$Snap (- length@4@01 1)))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
                ($SortWrappers.IntTo$Snap (- length@4@01 1))))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))))) ($Snap.combine
                ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
                ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
        (=>
          (and
            (img@212@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01) (-
              length@4@01
              1))
            (and
              (Set_in (inv@211@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01) (-
                length@4@01
                1)) lists@3@01)
              (not
                (Set_in (inv@211@01 ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01) (-
                  length@4@01
                  1)) s@208@01))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
                  ($SortWrappers.IntTo$Snap (- length@4@01 1)))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
                ($SortWrappers.IntTo$Snap (- length@4@01 1))))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@209@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
                ($SortWrappers.IntTo$Snap (- length@4@01 1)))))))
        (allSet%precondition ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01) (-
          length@4@01
          1) v@5@01)))
    (or (not (Set_in r@290@01 s@264@01)) (Set_in r@290@01 s@264@01)))
  :pattern ((Set_in r@290@01 s@264@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@57@19@57@75-aux|)))
(assert (forall ((r@290@01 $Ref)) (!
  (=>
    (Set_in r@290@01 s@264@01)
    (allSet%precondition ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
      ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01) (-
      length@4@01
      1) v@5@01))
  :pattern ((Set_in r@290@01 s@264@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@57@19@57@75_precondition|)))
(push) ; 11
(assert (not (forall ((r@290@01 $Ref)) (!
  (=>
    (and
      (=>
        (Set_in r@290@01 s@264@01)
        (allSet%precondition ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
          ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01) (-
          length@4@01
          1) v@5@01))
      (Set_in r@290@01 s@264@01))
    (allSet ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
      ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01) (-
      length@4@01
      1) v@5@01))
  :pattern ((Set_in r@290@01 s@264@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@57@19@57@75|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (forall ((r@290@01 $Ref)) (!
  (=>
    (Set_in r@290@01 s@264@01)
    (allSet ($PSF.lookup_list (as sm@272@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01))
      ($SortWrappers.IntTo$Snap (- length@4@01 1)))) ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@290@01) (-
      length@4@01
      1) v@5@01))
  :pattern ((Set_in r@290@01 s@264@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@57@19@57@75|)))
(pop) ; 10
(pop) ; 9
(push) ; 9
; [else-branch: 86 | !(|s@208@01| > 0)]
(assert (not (> (Set_card s@208@01) 0)))
(pop) ; 9
(push) ; 9
(set-option :timeout 10)
(assert (not (forall ((r $Ref) (i Int)) (!
  (and
    (=
      r@28@01
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@225@01))
    (=
      (and (img@30@01 r i) (Set_in (inv@29@01 r i) sNext@20@01))
      (and (img@227@01 r i) (Set_in (inv@226@01 r i) s@208@01))))
  
  :qid |quant-u-17123|))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (forall ((r $Ref) (i Int)) (!
  (and
    (= r@28@01 r@210@01)
    (=
      (and (img@30@01 r i) (Set_in (inv@29@01 r i) sNext@20@01))
      (and
        (img@212@01 r i)
        (and
          (Set_in (inv@211@01 r i) lists@3@01)
          (not (Set_in (inv@211@01 r i) s@208@01))))))
  
  :qid |quant-u-17124|))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] !(|s| > 0)
; [eval] |s| > 0
; [eval] |s|
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (> (Set_card s@208@01) 0)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (not (> (Set_card s@208@01) 0))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 96 | !(|s@208@01| > 0) | live]
; [else-branch: 96 | |s@208@01| > 0 | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 96 | !(|s@208@01| > 0)]
(assert (not (> (Set_card s@208@01) 0)))
(declare-const r@291@01 $Ref)
(push) ; 10
; [eval] (r in lists)
(assert (Set_in r@291@01 lists@3@01))
(pop) ; 10
(declare-fun inv@292@01 ($Ref Int) $Ref)
(declare-fun img@293@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 10
(assert (not (forall ((r1@291@01 $Ref) (r2@291@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@291@01 lists@3@01)
      (Set_in r2@291@01 lists@3@01)
      (= r1@291@01 r2@291@01))
    (= r1@291@01 r2@291@01))
  
  :qid |list-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@291@01 $Ref)) (!
  (=>
    (Set_in r@291@01 lists@3@01)
    (and
      (= (inv@292@01 r@291@01 length@4@01) r@291@01)
      (img@293@01 r@291@01 length@4@01)))
  :pattern ((Set_in r@291@01 lists@3@01))
  :pattern ((inv@292@01 r@291@01 length@4@01))
  :pattern ((img@293@01 r@291@01 length@4@01))
  :qid |list-invOfFct|)))
(assert (forall ((r $Ref) (i Int)) (!
  (=>
    (and (img@293@01 r i) (Set_in (inv@292@01 r i) lists@3@01))
    (and (= (inv@292@01 r i) r) (= length@4@01 i)))
  :pattern ((inv@292@01 r i))
  :qid |list-fctOfInv|)))
(push) ; 10
(set-option :timeout 10)
(assert (not (forall ((r@291@01 $Ref)) (!
  (=
    r@291@01
    ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))) r@291@01))
  
  :qid |quant-u-17126|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (forall ((r@291@01 $Ref)) (!
  (= length@4@01 (- length@4@01 1))
  
  :qid |quant-u-17127|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@294@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and
      (Set_in (inv@292@01 r i) lists@3@01)
      (img@293@01 r i)
      (and (= r (inv@292@01 r i)) (= i length@4@01)))
    ($Perm.min
      (ite
        (and
          (img@212@01 r i)
          (and
            (Set_in (inv@211@01 r i) lists@3@01)
            (not (Set_in (inv@211@01 r i) s@208@01))))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@295@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and
      (Set_in (inv@292@01 r i) lists@3@01)
      (img@293@01 r i)
      (and (= r (inv@292@01 r i)) (= i length@4@01)))
    ($Perm.min
      (ite
        (and (img@227@01 r i) (Set_in (inv@226@01 r i) s@208@01))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@294@01 r i)))
    $Perm.No))
(define-fun pTaken@296@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and
      (Set_in (inv@292@01 r i) lists@3@01)
      (img@293@01 r i)
      (and (= r (inv@292@01 r i)) (= i length@4@01)))
    ($Perm.min
      (ite
        (and (img@30@01 r i) (Set_in (inv@29@01 r i) sNext@20@01))
        (- $Perm.Write (pTaken@253@01 r i))
        $Perm.No)
      (- (- $Perm.Write (pTaken@294@01 r i)) (pTaken@295@01 r i)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@212@01 r i)
          (and
            (Set_in (inv@211@01 r i) lists@3@01)
            (not (Set_in (inv@211@01 r i) s@208@01))))
        $Perm.Write
        $Perm.No)
      (pTaken@294@01 r i))
    $Perm.No)
  
  :qid |quant-u-17129|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and
      (Set_in (inv@292@01 r i) lists@3@01)
      (img@293@01 r i)
      (and (= r (inv@292@01 r i)) (= i length@4@01)))
    (= (- $Perm.Write (pTaken@294@01 r i)) $Perm.No))
  
  :qid |quant-u-17130|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall r: Ref :: { (r in lists) } { allSet(r, length, v) } (r in lists) ==> allSet(r, length, v))
(declare-const r@297@01 $Ref)
(set-option :timeout 0)
(push) ; 10
; [eval] (r in lists) ==> allSet(r, length, v)
; [eval] (r in lists)
(push) ; 11
; [then-branch: 97 | r@297@01 in lists@3@01 | live]
; [else-branch: 97 | !(r@297@01 in lists@3@01) | live]
(push) ; 12
; [then-branch: 97 | r@297@01 in lists@3@01]
(assert (Set_in r@297@01 lists@3@01))
; [eval] allSet(r, length, v)
(push) ; 13
(push) ; 14
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and (= r r@297@01) (= i length@4@01))
    (>
      (+
        (+
          (ite
            (and
              (img@212@01 r i)
              (and
                (Set_in (inv@211@01 r i) lists@3@01)
                (not (Set_in (inv@211@01 r i) s@208@01))))
            $Perm.Write
            $Perm.No)
          (ite
            (and (img@227@01 r i) (Set_in (inv@226@01 r i) s@208@01))
            $Perm.Write
            $Perm.No))
        (ite
          (and (img@30@01 r i) (Set_in (inv@29@01 r i) sNext@20@01))
          (- $Perm.Write (pTaken@253@01 r i))
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-17131|))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(declare-const sm@298@01 $PSF<list>)
(declare-const s@299@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@212@01 r@297@01 length@4@01)
    (and
      (Set_in (inv@211@01 r@297@01 length@4@01) lists@3@01)
      (not (Set_in (inv@211@01 r@297@01 length@4@01) s@208@01))))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@297@01)
          ($SortWrappers.IntTo$Snap length@4@01))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@298@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@297@01)
        ($SortWrappers.IntTo$Snap length@4@01)))
      ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@209@01)) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@297@01)
        ($SortWrappers.IntTo$Snap length@4@01)))))))
(assert (=>
  (and
    (img@227@01 r@297@01 length@4@01)
    (Set_in (inv@226@01 r@297@01 length@4@01) s@208@01))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@297@01)
          ($SortWrappers.IntTo$Snap length@4@01))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@298@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@297@01)
        ($SortWrappers.IntTo$Snap length@4@01)))
      ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@297@01)
        ($SortWrappers.IntTo$Snap length@4@01)))))))
(assert (=>
  (ite
    (and
      (img@30@01 r@297@01 length@4@01)
      (Set_in (inv@29@01 r@297@01 length@4@01) sNext@20@01))
    (< $Perm.No (- $Perm.Write (pTaken@253@01 r@297@01 length@4@01)))
    false)
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@297@01)
          ($SortWrappers.IntTo$Snap length@4@01))
        $Snap.unit))
    (=
      ($PSF.lookup_list (as sm@298@01  $PSF<list>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@297@01)
        ($SortWrappers.IntTo$Snap length@4@01)))
      ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second $t@21@01)))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@297@01)
        ($SortWrappers.IntTo$Snap length@4@01)))))))
(assert (allSet%precondition ($PSF.lookup_list (as sm@298@01  $PSF<list>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap r@297@01)
  ($SortWrappers.IntTo$Snap length@4@01))) r@297@01 length@4@01 v@5@01))
(pop) ; 13
; Joined path conditions
(assert (and
  (=>
    (and
      (img@212@01 r@297@01 length@4@01)
      (and
        (Set_in (inv@211@01 r@297@01 length@4@01) lists@3@01)
        (not (Set_in (inv@211@01 r@297@01 length@4@01) s@208@01))))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@297@01)
            ($SortWrappers.IntTo$Snap length@4@01))
          $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@298@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@297@01)
          ($SortWrappers.IntTo$Snap length@4@01)))
        ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@209@01)) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@297@01)
          ($SortWrappers.IntTo$Snap length@4@01))))))
  (=>
    (and
      (img@227@01 r@297@01 length@4@01)
      (Set_in (inv@226@01 r@297@01 length@4@01) s@208@01))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@297@01)
            ($SortWrappers.IntTo$Snap length@4@01))
          $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@298@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@297@01)
          ($SortWrappers.IntTo$Snap length@4@01)))
        ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))))) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@297@01)
          ($SortWrappers.IntTo$Snap length@4@01))))))
  (=>
    (ite
      (and
        (img@30@01 r@297@01 length@4@01)
        (Set_in (inv@29@01 r@297@01 length@4@01) sNext@20@01))
      (< $Perm.No (- $Perm.Write (pTaken@253@01 r@297@01 length@4@01)))
      false)
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@297@01)
            ($SortWrappers.IntTo$Snap length@4@01))
          $Snap.unit))
      (=
        ($PSF.lookup_list (as sm@298@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@297@01)
          ($SortWrappers.IntTo$Snap length@4@01)))
        ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second $t@21@01)))) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@297@01)
          ($SortWrappers.IntTo$Snap length@4@01))))))
  (allSet%precondition ($PSF.lookup_list (as sm@298@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@297@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@297@01 length@4@01 v@5@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 97 | !(r@297@01 in lists@3@01)]
(assert (not (Set_in r@297@01 lists@3@01)))
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=>
  (Set_in r@297@01 lists@3@01)
  (and
    (Set_in r@297@01 lists@3@01)
    (=>
      (and
        (img@212@01 r@297@01 length@4@01)
        (and
          (Set_in (inv@211@01 r@297@01 length@4@01) lists@3@01)
          (not (Set_in (inv@211@01 r@297@01 length@4@01) s@208@01))))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap r@297@01)
              ($SortWrappers.IntTo$Snap length@4@01))
            $Snap.unit))
        (=
          ($PSF.lookup_list (as sm@298@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@297@01)
            ($SortWrappers.IntTo$Snap length@4@01)))
          ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@209@01)) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@297@01)
            ($SortWrappers.IntTo$Snap length@4@01))))))
    (=>
      (and
        (img@227@01 r@297@01 length@4@01)
        (Set_in (inv@226@01 r@297@01 length@4@01) s@208@01))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap r@297@01)
              ($SortWrappers.IntTo$Snap length@4@01))
            $Snap.unit))
        (=
          ($PSF.lookup_list (as sm@298@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@297@01)
            ($SortWrappers.IntTo$Snap length@4@01)))
          ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))))) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@297@01)
            ($SortWrappers.IntTo$Snap length@4@01))))))
    (=>
      (ite
        (and
          (img@30@01 r@297@01 length@4@01)
          (Set_in (inv@29@01 r@297@01 length@4@01) sNext@20@01))
        (< $Perm.No (- $Perm.Write (pTaken@253@01 r@297@01 length@4@01)))
        false)
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap r@297@01)
              ($SortWrappers.IntTo$Snap length@4@01))
            $Snap.unit))
        (=
          ($PSF.lookup_list (as sm@298@01  $PSF<list>) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@297@01)
            ($SortWrappers.IntTo$Snap length@4@01)))
          ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second $t@21@01)))) ($Snap.combine
            ($SortWrappers.$RefTo$Snap r@297@01)
            ($SortWrappers.IntTo$Snap length@4@01))))))
    (allSet%precondition ($PSF.lookup_list (as sm@298@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@297@01)
      ($SortWrappers.IntTo$Snap length@4@01))) r@297@01 length@4@01 v@5@01))))
; Joined path conditions
(assert (or (not (Set_in r@297@01 lists@3@01)) (Set_in r@297@01 lists@3@01)))
(pop) ; 10
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((r@297@01 $Ref)) (!
  (and
    (=>
      (Set_in r@297@01 lists@3@01)
      (and
        (Set_in r@297@01 lists@3@01)
        (=>
          (and
            (img@212@01 r@297@01 length@4@01)
            (and
              (Set_in (inv@211@01 r@297@01 length@4@01) lists@3@01)
              (not (Set_in (inv@211@01 r@297@01 length@4@01) s@208@01))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@297@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@298@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@297@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@209@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@297@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (=>
          (and
            (img@227@01 r@297@01 length@4@01)
            (Set_in (inv@226@01 r@297@01 length@4@01) s@208@01))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@297@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@298@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@297@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))))) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@297@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (=>
          (ite
            (and
              (img@30@01 r@297@01 length@4@01)
              (Set_in (inv@29@01 r@297@01 length@4@01) sNext@20@01))
            (< $Perm.No (- $Perm.Write (pTaken@253@01 r@297@01 length@4@01)))
            false)
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@297@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@298@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@297@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second $t@21@01)))) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@297@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (allSet%precondition ($PSF.lookup_list (as sm@298@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@297@01)
          ($SortWrappers.IntTo$Snap length@4@01))) r@297@01 length@4@01 v@5@01)))
    (or (not (Set_in r@297@01 lists@3@01)) (Set_in r@297@01 lists@3@01)))
  :pattern ((Set_in r@297@01 lists@3@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@26@9@26@85-aux|)))
(assert (forall ((r@297@01 $Ref)) (!
  (and
    (=>
      (Set_in r@297@01 lists@3@01)
      (and
        (Set_in r@297@01 lists@3@01)
        (=>
          (and
            (img@212@01 r@297@01 length@4@01)
            (and
              (Set_in (inv@211@01 r@297@01 length@4@01) lists@3@01)
              (not (Set_in (inv@211@01 r@297@01 length@4@01) s@208@01))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@297@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@298@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@297@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first $t@209@01)) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@297@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (=>
          (and
            (img@227@01 r@297@01 length@4@01)
            (Set_in (inv@226@01 r@297@01 length@4@01) s@208@01))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@297@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@298@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@297@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@209@01)))))))) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@297@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (=>
          (ite
            (and
              (img@30@01 r@297@01 length@4@01)
              (Set_in (inv@29@01 r@297@01 length@4@01) sNext@20@01))
            (< $Perm.No (- $Perm.Write (pTaken@253@01 r@297@01 length@4@01)))
            false)
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap r@297@01)
                  ($SortWrappers.IntTo$Snap length@4@01))
                $Snap.unit))
            (=
              ($PSF.lookup_list (as sm@298@01  $PSF<list>) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@297@01)
                ($SortWrappers.IntTo$Snap length@4@01)))
              ($PSF.lookup_list ($SortWrappers.$SnapTo$PSF<list> ($Snap.first ($Snap.second ($Snap.second $t@21@01)))) ($Snap.combine
                ($SortWrappers.$RefTo$Snap r@297@01)
                ($SortWrappers.IntTo$Snap length@4@01))))))
        (allSet%precondition ($PSF.lookup_list (as sm@298@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@297@01)
          ($SortWrappers.IntTo$Snap length@4@01))) r@297@01 length@4@01 v@5@01)))
    (or (not (Set_in r@297@01 lists@3@01)) (Set_in r@297@01 lists@3@01)))
  :pattern ((allSet%limited ($PSF.lookup_list (as sm@298@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@297@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@297@01 length@4@01 v@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@26@9@26@85-aux|)))
(assert (forall ((r@297@01 $Ref)) (!
  (=>
    (Set_in r@297@01 lists@3@01)
    (allSet%precondition ($PSF.lookup_list (as sm@298@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@297@01)
      ($SortWrappers.IntTo$Snap length@4@01))) r@297@01 length@4@01 v@5@01))
  :pattern ((Set_in r@297@01 lists@3@01))
  :pattern ((allSet%limited ($PSF.lookup_list (as sm@298@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@297@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@297@01 length@4@01 v@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@26@9@26@85_precondition|)))
(push) ; 10
(assert (not (forall ((r@297@01 $Ref)) (!
  (=>
    (and
      (=>
        (Set_in r@297@01 lists@3@01)
        (allSet%precondition ($PSF.lookup_list (as sm@298@01  $PSF<list>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@297@01)
          ($SortWrappers.IntTo$Snap length@4@01))) r@297@01 length@4@01 v@5@01))
      (Set_in r@297@01 lists@3@01))
    (allSet ($PSF.lookup_list (as sm@298@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@297@01)
      ($SortWrappers.IntTo$Snap length@4@01))) r@297@01 length@4@01 v@5@01))
  :pattern ((Set_in r@297@01 lists@3@01))
  :pattern ((allSet%limited ($PSF.lookup_list (as sm@298@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@297@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@297@01 length@4@01 v@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@26@9@26@85|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (forall ((r@297@01 $Ref)) (!
  (=>
    (Set_in r@297@01 lists@3@01)
    (allSet ($PSF.lookup_list (as sm@298@01  $PSF<list>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@297@01)
      ($SortWrappers.IntTo$Snap length@4@01))) r@297@01 length@4@01 v@5@01))
  :pattern ((Set_in r@297@01 lists@3@01))
  :pattern ((allSet%limited ($PSF.lookup_list (as sm@298@01  $PSF<list>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@297@01)
    ($SortWrappers.IntTo$Snap length@4@01))) r@297@01 length@4@01 v@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/examples/list.vpr@26@9@26@85|)))
(pop) ; 9
(push) ; 9
; [else-branch: 96 | |s@208@01| > 0]
(assert (> (Set_card s@208@01) 0))
(pop) ; 9
(pop) ; 8
(pop) ; 7
(pop) ; 6
(push) ; 6
; [else-branch: 69 | length@4@01 - 1 > 0]
(assert (> (- length@4@01 1) 0))
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 38 | |s@19@01| > 0]
(assert (> (Set_card s@19@01) 0))
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
