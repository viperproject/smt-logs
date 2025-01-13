(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-13 17:41:01
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
(declare-sort $PSF<access> 0)
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
; Declaring additional sort wrappers
(declare-fun $SortWrappers.$PSF<access>To$Snap ($PSF<access>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<access> ($Snap) $PSF<access>)
(assert (forall ((x $PSF<access>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<access>($SortWrappers.$PSF<access>To$Snap x)))
    :pattern (($SortWrappers.$PSF<access>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<access>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<access>To$Snap($SortWrappers.$SnapTo$PSF<access> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<access> x))
    :qid |$Snap.$PSF<access>To$SnapTo$PSF<access>|
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
; /predicate_snap_functions_declarations.smt2 [access: Snap]
(declare-fun $PSF.domain_access ($PSF<access>) Set<$Snap>)
(declare-fun $PSF.lookup_access ($PSF<access> $Snap) $Snap)
(declare-fun $PSF.after_access ($PSF<access> $PSF<access>) Bool)
(declare-fun $PSF.loc_access ($Snap $Snap) Bool)
(declare-fun $PSF.perm_access ($PPM $Snap) $Perm)
(declare-const $psfTOP_access $PSF<access>)
; Declaring symbols related to program functions (from program analysis)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun access%trigger ($Snap IArray Int) Bool)
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
; /predicate_snap_functions_axioms.smt2 [access: Snap]
(assert (forall ((vs $PSF<access>) (ws $PSF<access>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_access vs) ($PSF.domain_access ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_access vs))
            (= ($PSF.lookup_access vs x) ($PSF.lookup_access ws x)))
          :pattern (($PSF.lookup_access vs x) ($PSF.lookup_access ws x))
          :qid |qp.$PSF<access>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<access>To$Snap vs)
              ($SortWrappers.$PSF<access>To$Snap ws)
              )
    :qid |qp.$PSF<access>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_access pm s))
    :pattern (($PSF.perm_access pm s)))))
(assert (forall ((s $Snap) (f $Snap)) (!
    (= ($PSF.loc_access f s) true)
    :pattern (($PSF.loc_access f s)))))
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
; ---------- readTwo ----------
(declare-const a@0@01 IArray)
(declare-const i@1@01 Int)
(declare-const sum@2@01 Int)
(declare-const a@3@01 IArray)
(declare-const i@4@01 Int)
(declare-const sum@5@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@6@01 $Snap)
(assert (= $t@6@01 ($Snap.combine ($Snap.first $t@6@01) ($Snap.second $t@6@01))))
(assert (= ($Snap.second $t@6@01) $Snap.unit))
; [eval] i % 2 == 0
; [eval] i % 2
(assert (= (mod i@4@01 2) 0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; unfold acc(access(a, i), write)
; [eval] i % 2 == 0
; [eval] i % 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= (mod i@4@01 2) 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | i@4@01 % 2 == 0 | live]
; [else-branch: 0 | i@4@01 % 2 != 0 | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | i@4@01 % 2 == 0]
(assert (=
  ($Snap.first $t@6@01)
  ($Snap.combine
    ($Snap.first ($Snap.first $t@6@01))
    ($Snap.second ($Snap.first $t@6@01)))))
; [eval] loc(a, i)
(assert (not (= (loc<Ref> a@3@01 i@4@01) $Ref.null)))
; [eval] loc(a, i + 1)
; [eval] i + 1
(push) ; 4
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@3@01 i@4@01) (loc<Ref> a@3@01 (+ i@4@01 1)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= (loc<Ref> a@3@01 (+ i@4@01 1)) $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (access%trigger ($Snap.first $t@6@01) a@3@01 i@4@01))
; [exec]
; sum := loc(a, i).val + loc(a, i + 1).val
; [eval] loc(a, i).val + loc(a, i + 1).val
; [eval] loc(a, i)
; [eval] loc(a, i + 1)
; [eval] i + 1
(declare-const sum@7@01 Int)
(assert (=
  sum@7@01
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first $t@6@01)))
    ($SortWrappers.$SnapToInt ($Snap.second ($Snap.first $t@6@01))))))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- totalSum ----------
(declare-const a@8@01 IArray)
(declare-const i@9@01 Int)
(declare-const sum@10@01 Int)
(declare-const a@11@01 IArray)
(declare-const i@12@01 Int)
(declare-const sum@13@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@14@01 $Snap)
(assert (= $t@14@01 ($Snap.combine ($Snap.first $t@14@01) ($Snap.second $t@14@01))))
(assert (= ($Snap.first $t@14@01) $Snap.unit))
; [eval] i >= 0
(assert (>= i@12@01 0))
(assert (=
  ($Snap.second $t@14@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@14@01))
    ($Snap.second ($Snap.second $t@14@01)))))
(assert (= ($Snap.first ($Snap.second $t@14@01)) $Snap.unit))
; [eval] i + 1 < len(a)
; [eval] i + 1
; [eval] len(a)
(assert (< (+ i@12@01 1) (len<Int> a@11@01)))
(assert (=
  ($Snap.second ($Snap.second $t@14@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@14@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@14@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@14@01))) $Snap.unit))
; [eval] i % 2 == 0
; [eval] i % 2
(assert (= (mod i@12@01 2) 0))
(declare-const j@15@01 Int)
(push) ; 2
; [eval] j >= 0 && (j < len(a) && j % 2 == 0)
; [eval] j >= 0
(push) ; 3
; [then-branch: 1 | !(j@15@01 >= 0) | live]
; [else-branch: 1 | j@15@01 >= 0 | live]
(push) ; 4
; [then-branch: 1 | !(j@15@01 >= 0)]
(assert (not (>= j@15@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 1 | j@15@01 >= 0]
(assert (>= j@15@01 0))
; [eval] j < len(a)
; [eval] len(a)
(push) ; 5
; [then-branch: 2 | !(j@15@01 < len[Int](a@11@01)) | live]
; [else-branch: 2 | j@15@01 < len[Int](a@11@01) | live]
(push) ; 6
; [then-branch: 2 | !(j@15@01 < len[Int](a@11@01))]
(assert (not (< j@15@01 (len<Int> a@11@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 2 | j@15@01 < len[Int](a@11@01)]
(assert (< j@15@01 (len<Int> a@11@01)))
; [eval] j % 2 == 0
; [eval] j % 2
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (< j@15@01 (len<Int> a@11@01)) (not (< j@15@01 (len<Int> a@11@01)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@15@01 0)
  (and
    (>= j@15@01 0)
    (or (< j@15@01 (len<Int> a@11@01)) (not (< j@15@01 (len<Int> a@11@01)))))))
(assert (or (>= j@15@01 0) (not (>= j@15@01 0))))
(assert (and (>= j@15@01 0) (and (< j@15@01 (len<Int> a@11@01)) (= (mod j@15@01 2) 0))))
(pop) ; 2
(declare-fun inv@16@01 (IArray Int) Int)
(declare-fun img@17@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@15@01 Int)) (!
  (=>
    (and
      (>= j@15@01 0)
      (and (< j@15@01 (len<Int> a@11@01)) (= (mod j@15@01 2) 0)))
    (and
      (=>
        (>= j@15@01 0)
        (and
          (>= j@15@01 0)
          (or
            (< j@15@01 (len<Int> a@11@01))
            (not (< j@15@01 (len<Int> a@11@01))))))
      (or (>= j@15@01 0) (not (>= j@15@01 0)))))
  :pattern ((inv@16@01 a@11@01 j@15@01))
  :pattern ((img@17@01 a@11@01 j@15@01))
  :qid |access-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((j1@15@01 Int) (j2@15@01 Int)) (!
  (=>
    (and
      (and
        (>= j1@15@01 0)
        (and (< j1@15@01 (len<Int> a@11@01)) (= (mod j1@15@01 2) 0)))
      (and
        (>= j2@15@01 0)
        (and (< j2@15@01 (len<Int> a@11@01)) (= (mod j2@15@01 2) 0)))
      (= j1@15@01 j2@15@01))
    (= j1@15@01 j2@15@01))
  
  :qid |access-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@15@01 Int)) (!
  (=>
    (and
      (>= j@15@01 0)
      (and (< j@15@01 (len<Int> a@11@01)) (= (mod j@15@01 2) 0)))
    (and (= (inv@16@01 a@11@01 j@15@01) j@15@01) (img@17@01 a@11@01 j@15@01)))
  :pattern ((inv@16@01 a@11@01 j@15@01))
  :pattern ((img@17@01 a@11@01 j@15@01))
  :qid |quant-u-18190|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (img@17@01 a i)
      (and
        (>= (inv@16@01 a i) 0)
        (and
          (< (inv@16@01 a i) (len<Int> a@11@01))
          (= (mod (inv@16@01 a i) 2) 0))))
    (and (= a@11@01 a) (= (inv@16@01 a i) i)))
  :pattern ((inv@16@01 a i))
  :qid |access-fctOfInv|)))
; Permissions are non-negative
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@18@01 $Snap)
(assert (= $t@18@01 ($Snap.combine ($Snap.first $t@18@01) ($Snap.second $t@18@01))))
(assert (= ($Snap.first $t@18@01) $Snap.unit))
; [eval] i >= 0
(assert (=
  ($Snap.second $t@18@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@18@01))
    ($Snap.second ($Snap.second $t@18@01)))))
(assert (= ($Snap.first ($Snap.second $t@18@01)) $Snap.unit))
; [eval] i <= len(a)
; [eval] len(a)
(assert (<= i@12@01 (len<Int> a@11@01)))
(declare-const j@19@01 Int)
(push) ; 3
; [eval] j >= 0 && (j < len(a) && j % 2 == 0)
; [eval] j >= 0
(push) ; 4
; [then-branch: 3 | !(j@19@01 >= 0) | live]
; [else-branch: 3 | j@19@01 >= 0 | live]
(push) ; 5
; [then-branch: 3 | !(j@19@01 >= 0)]
(assert (not (>= j@19@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 3 | j@19@01 >= 0]
(assert (>= j@19@01 0))
; [eval] j < len(a)
; [eval] len(a)
(push) ; 6
; [then-branch: 4 | !(j@19@01 < len[Int](a@11@01)) | live]
; [else-branch: 4 | j@19@01 < len[Int](a@11@01) | live]
(push) ; 7
; [then-branch: 4 | !(j@19@01 < len[Int](a@11@01))]
(assert (not (< j@19@01 (len<Int> a@11@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 4 | j@19@01 < len[Int](a@11@01)]
(assert (< j@19@01 (len<Int> a@11@01)))
; [eval] j % 2 == 0
; [eval] j % 2
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (< j@19@01 (len<Int> a@11@01)) (not (< j@19@01 (len<Int> a@11@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@19@01 0)
  (and
    (>= j@19@01 0)
    (or (< j@19@01 (len<Int> a@11@01)) (not (< j@19@01 (len<Int> a@11@01)))))))
(assert (or (>= j@19@01 0) (not (>= j@19@01 0))))
(assert (and (>= j@19@01 0) (and (< j@19@01 (len<Int> a@11@01)) (= (mod j@19@01 2) 0))))
(pop) ; 3
(declare-fun inv@20@01 (IArray Int) Int)
(declare-fun img@21@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@19@01 Int)) (!
  (=>
    (and
      (>= j@19@01 0)
      (and (< j@19@01 (len<Int> a@11@01)) (= (mod j@19@01 2) 0)))
    (and
      (=>
        (>= j@19@01 0)
        (and
          (>= j@19@01 0)
          (or
            (< j@19@01 (len<Int> a@11@01))
            (not (< j@19@01 (len<Int> a@11@01))))))
      (or (>= j@19@01 0) (not (>= j@19@01 0)))))
  :pattern ((inv@20@01 a@11@01 j@19@01))
  :pattern ((img@21@01 a@11@01 j@19@01))
  :qid |access-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@19@01 Int) (j2@19@01 Int)) (!
  (=>
    (and
      (and
        (>= j1@19@01 0)
        (and (< j1@19@01 (len<Int> a@11@01)) (= (mod j1@19@01 2) 0)))
      (and
        (>= j2@19@01 0)
        (and (< j2@19@01 (len<Int> a@11@01)) (= (mod j2@19@01 2) 0)))
      (= j1@19@01 j2@19@01))
    (= j1@19@01 j2@19@01))
  
  :qid |access-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@19@01 Int)) (!
  (=>
    (and
      (>= j@19@01 0)
      (and (< j@19@01 (len<Int> a@11@01)) (= (mod j@19@01 2) 0)))
    (and (= (inv@20@01 a@11@01 j@19@01) j@19@01) (img@21@01 a@11@01 j@19@01)))
  :pattern ((inv@20@01 a@11@01 j@19@01))
  :pattern ((img@21@01 a@11@01 j@19@01))
  :qid |quant-u-18192|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (img@21@01 a i)
      (and
        (>= (inv@20@01 a i) 0)
        (and
          (< (inv@20@01 a i) (len<Int> a@11@01))
          (= (mod (inv@20@01 a i) 2) 0))))
    (and (= a@11@01 a) (= (inv@20@01 a i) i)))
  :pattern ((inv@20@01 a i))
  :qid |access-fctOfInv|)))
; Permissions are non-negative
(pop) ; 2
(push) ; 2
; [eval] i + 3 < len(a)
; [eval] i + 3
; [eval] len(a)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< (+ i@12@01 3) (len<Int> a@11@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< (+ i@12@01 3) (len<Int> a@11@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 5 | i@12@01 + 3 < len[Int](a@11@01) | live]
; [else-branch: 5 | !(i@12@01 + 3 < len[Int](a@11@01)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 5 | i@12@01 + 3 < len[Int](a@11@01)]
(assert (< (+ i@12@01 3) (len<Int> a@11@01)))
; [exec]
; sum := totalSum(a, i + 2)
; [eval] i + 2
; [eval] i >= 0
(push) ; 4
(assert (not (>= (+ i@12@01 2) 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (>= (+ i@12@01 2) 0))
; [eval] i + 1 < len(a)
; [eval] i + 1
; [eval] len(a)
(push) ; 4
(assert (not (< (+ (+ i@12@01 2) 1) (len<Int> a@11@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< (+ (+ i@12@01 2) 1) (len<Int> a@11@01)))
; [eval] i % 2 == 0
; [eval] i % 2
(push) ; 4
(assert (not (= (mod (+ i@12@01 2) 2) 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (= (mod (+ i@12@01 2) 2) 0))
(declare-const j@22@01 Int)
(push) ; 4
; [eval] j >= 0 && (j < len(a) && j % 2 == 0)
; [eval] j >= 0
(push) ; 5
; [then-branch: 6 | !(j@22@01 >= 0) | live]
; [else-branch: 6 | j@22@01 >= 0 | live]
(push) ; 6
; [then-branch: 6 | !(j@22@01 >= 0)]
(assert (not (>= j@22@01 0)))
(pop) ; 6
(push) ; 6
; [else-branch: 6 | j@22@01 >= 0]
(assert (>= j@22@01 0))
; [eval] j < len(a)
; [eval] len(a)
(push) ; 7
; [then-branch: 7 | !(j@22@01 < len[Int](a@11@01)) | live]
; [else-branch: 7 | j@22@01 < len[Int](a@11@01) | live]
(push) ; 8
; [then-branch: 7 | !(j@22@01 < len[Int](a@11@01))]
(assert (not (< j@22@01 (len<Int> a@11@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 7 | j@22@01 < len[Int](a@11@01)]
(assert (< j@22@01 (len<Int> a@11@01)))
; [eval] j % 2 == 0
; [eval] j % 2
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or (< j@22@01 (len<Int> a@11@01)) (not (< j@22@01 (len<Int> a@11@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@22@01 0)
  (and
    (>= j@22@01 0)
    (or (< j@22@01 (len<Int> a@11@01)) (not (< j@22@01 (len<Int> a@11@01)))))))
(assert (or (>= j@22@01 0) (not (>= j@22@01 0))))
(assert (and (>= j@22@01 0) (and (< j@22@01 (len<Int> a@11@01)) (= (mod j@22@01 2) 0))))
(pop) ; 4
(declare-fun inv@23@01 (IArray Int) Int)
(declare-fun img@24@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@22@01 Int)) (!
  (=>
    (and
      (>= j@22@01 0)
      (and (< j@22@01 (len<Int> a@11@01)) (= (mod j@22@01 2) 0)))
    (and
      (=>
        (>= j@22@01 0)
        (and
          (>= j@22@01 0)
          (or
            (< j@22@01 (len<Int> a@11@01))
            (not (< j@22@01 (len<Int> a@11@01))))))
      (or (>= j@22@01 0) (not (>= j@22@01 0)))))
  :pattern ((inv@23@01 a@11@01 j@22@01))
  :pattern ((img@24@01 a@11@01 j@22@01))
  :qid |access-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((j1@22@01 Int) (j2@22@01 Int)) (!
  (=>
    (and
      (and
        (>= j1@22@01 0)
        (and (< j1@22@01 (len<Int> a@11@01)) (= (mod j1@22@01 2) 0)))
      (and
        (>= j2@22@01 0)
        (and (< j2@22@01 (len<Int> a@11@01)) (= (mod j2@22@01 2) 0)))
      (= j1@22@01 j2@22@01))
    (= j1@22@01 j2@22@01))
  
  :qid |access-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@22@01 Int)) (!
  (=>
    (and
      (>= j@22@01 0)
      (and (< j@22@01 (len<Int> a@11@01)) (= (mod j@22@01 2) 0)))
    (and (= (inv@23@01 a@11@01 j@22@01) j@22@01) (img@24@01 a@11@01 j@22@01)))
  :pattern ((inv@23@01 a@11@01 j@22@01))
  :pattern ((img@24@01 a@11@01 j@22@01))
  :qid |access-invOfFct|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (img@24@01 a i)
      (and
        (>= (inv@23@01 a i) 0)
        (and
          (< (inv@23@01 a i) (len<Int> a@11@01))
          (= (mod (inv@23@01 a i) 2) 0))))
    (and (= a@11@01 a) (= (inv@23@01 a i) i)))
  :pattern ((inv@23@01 a i))
  :qid |access-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@25@01 ((a IArray) (i Int)) $Perm
  (ite
    (and
      (and
        (>= (inv@23@01 a i) 0)
        (and
          (< (inv@23@01 a i) (len<Int> a@11@01))
          (= (mod (inv@23@01 a i) 2) 0)))
      (img@24@01 a i)
      (and (= a a@11@01) (= i (inv@23@01 a i))))
    ($Perm.min
      (ite
        (and
          (img@17@01 a i)
          (and
            (>= (inv@16@01 a i) 0)
            (and
              (< (inv@16@01 a i) (len<Int> a@11@01))
              (= (mod (inv@16@01 a i) 2) 0))))
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
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@17@01 a i)
          (and
            (>= (inv@16@01 a i) 0)
            (and
              (< (inv@16@01 a i) (len<Int> a@11@01))
              (= (mod (inv@16@01 a i) 2) 0))))
        $Perm.Write
        $Perm.No)
      (pTaken@25@01 a i))
    $Perm.No)
  
  :qid |quant-u-18195|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (and
        (>= (inv@23@01 a i) 0)
        (and
          (< (inv@23@01 a i) (len<Int> a@11@01))
          (= (mod (inv@23@01 a i) 2) 0)))
      (img@24@01 a i)
      (and (= a a@11@01) (= i (inv@23@01 a i))))
    (= (- $Perm.Write (pTaken@25@01 a i)) $Perm.No))
  
  :qid |quant-u-18196|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sum@26@01 Int)
(declare-const $t@27@01 $Snap)
(assert (= $t@27@01 ($Snap.combine ($Snap.first $t@27@01) ($Snap.second $t@27@01))))
(assert (= ($Snap.first $t@27@01) $Snap.unit))
; [eval] i >= 0
(assert (=
  ($Snap.second $t@27@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@27@01))
    ($Snap.second ($Snap.second $t@27@01)))))
(assert (= ($Snap.first ($Snap.second $t@27@01)) $Snap.unit))
; [eval] i <= len(a)
; [eval] len(a)
(assert (<= (+ i@12@01 2) (len<Int> a@11@01)))
(declare-const j@28@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] j >= 0 && (j < len(a) && j % 2 == 0)
; [eval] j >= 0
(push) ; 5
; [then-branch: 8 | !(j@28@01 >= 0) | live]
; [else-branch: 8 | j@28@01 >= 0 | live]
(push) ; 6
; [then-branch: 8 | !(j@28@01 >= 0)]
(assert (not (>= j@28@01 0)))
(pop) ; 6
(push) ; 6
; [else-branch: 8 | j@28@01 >= 0]
(assert (>= j@28@01 0))
; [eval] j < len(a)
; [eval] len(a)
(push) ; 7
; [then-branch: 9 | !(j@28@01 < len[Int](a@11@01)) | live]
; [else-branch: 9 | j@28@01 < len[Int](a@11@01) | live]
(push) ; 8
; [then-branch: 9 | !(j@28@01 < len[Int](a@11@01))]
(assert (not (< j@28@01 (len<Int> a@11@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 9 | j@28@01 < len[Int](a@11@01)]
(assert (< j@28@01 (len<Int> a@11@01)))
; [eval] j % 2 == 0
; [eval] j % 2
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or (< j@28@01 (len<Int> a@11@01)) (not (< j@28@01 (len<Int> a@11@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@28@01 0)
  (and
    (>= j@28@01 0)
    (or (< j@28@01 (len<Int> a@11@01)) (not (< j@28@01 (len<Int> a@11@01)))))))
(assert (or (>= j@28@01 0) (not (>= j@28@01 0))))
(assert (and (>= j@28@01 0) (and (< j@28@01 (len<Int> a@11@01)) (= (mod j@28@01 2) 0))))
(pop) ; 4
(declare-fun inv@29@01 (IArray Int) Int)
(declare-fun img@30@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@28@01 Int)) (!
  (=>
    (and
      (>= j@28@01 0)
      (and (< j@28@01 (len<Int> a@11@01)) (= (mod j@28@01 2) 0)))
    (and
      (=>
        (>= j@28@01 0)
        (and
          (>= j@28@01 0)
          (or
            (< j@28@01 (len<Int> a@11@01))
            (not (< j@28@01 (len<Int> a@11@01))))))
      (or (>= j@28@01 0) (not (>= j@28@01 0)))))
  :pattern ((inv@29@01 a@11@01 j@28@01))
  :pattern ((img@30@01 a@11@01 j@28@01))
  :qid |access-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((j1@28@01 Int) (j2@28@01 Int)) (!
  (=>
    (and
      (and
        (>= j1@28@01 0)
        (and (< j1@28@01 (len<Int> a@11@01)) (= (mod j1@28@01 2) 0)))
      (and
        (>= j2@28@01 0)
        (and (< j2@28@01 (len<Int> a@11@01)) (= (mod j2@28@01 2) 0)))
      (= j1@28@01 j2@28@01))
    (= j1@28@01 j2@28@01))
  
  :qid |access-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@28@01 Int)) (!
  (=>
    (and
      (>= j@28@01 0)
      (and (< j@28@01 (len<Int> a@11@01)) (= (mod j@28@01 2) 0)))
    (and (= (inv@29@01 a@11@01 j@28@01) j@28@01) (img@30@01 a@11@01 j@28@01)))
  :pattern ((inv@29@01 a@11@01 j@28@01))
  :pattern ((img@30@01 a@11@01 j@28@01))
  :qid |quant-u-18198|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (img@30@01 a i)
      (and
        (>= (inv@29@01 a i) 0)
        (and
          (< (inv@29@01 a i) (len<Int> a@11@01))
          (= (mod (inv@29@01 a i) 2) 0))))
    (and (= a@11@01 a) (= (inv@29@01 a i) i)))
  :pattern ((inv@29@01 a i))
  :qid |access-fctOfInv|)))
; Permissions are non-negative
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; unfold acc(access(a, i), write)
; Precomputing data for removing quantified permissions
(define-fun pTaken@31@01 ((a IArray) (i Int)) $Perm
  (ite
    (and (= a a@11@01) (= i i@12@01))
    ($Perm.min
      (ite
        (and
          (img@30@01 a i)
          (and
            (>= (inv@29@01 a i) 0)
            (and
              (< (inv@29@01 a i) (len<Int> a@11@01))
              (= (mod (inv@29@01 a i) 2) 0))))
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
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@30@01 a i)
          (and
            (>= (inv@29@01 a i) 0)
            (and
              (< (inv@29@01 a i) (len<Int> a@11@01))
              (= (mod (inv@29@01 a i) 2) 0))))
        $Perm.Write
        $Perm.No)
      (pTaken@31@01 a i))
    $Perm.No)
  
  :qid |quant-u-18200|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@31@01 a i) $Perm.No)
  
  :qid |quant-u-18201|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and (= a a@11@01) (= i i@12@01))
    (= (- $Perm.Write (pTaken@31@01 a i)) $Perm.No))
  
  :qid |quant-u-18202|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@32@01 $PSF<access>)
(declare-const s@33@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@30@01 a@11@01 i@12@01)
    (and
      (>= (inv@29@01 a@11@01 i@12@01) 0)
      (and
        (< (inv@29@01 a@11@01 i@12@01) (len<Int> a@11@01))
        (= (mod (inv@29@01 a@11@01 i@12@01) 2) 0))))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@11@01)
          ($SortWrappers.IntTo$Snap i@12@01))
        $Snap.unit))
    (=
      ($PSF.lookup_access (as sm@32@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@11@01)
        ($SortWrappers.IntTo$Snap i@12@01)))
      ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.second ($Snap.second $t@27@01))) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@11@01)
        ($SortWrappers.IntTo$Snap i@12@01)))))))
; [eval] i % 2 == 0
; [eval] i % 2
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= (mod i@12@01 2) 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 10 | i@12@01 % 2 == 0 | live]
; [else-branch: 10 | i@12@01 % 2 != 0 | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 10 | i@12@01 % 2 == 0]
(assert (=
  ($PSF.lookup_access (as sm@32@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@11@01)
    ($SortWrappers.IntTo$Snap i@12@01)))
  ($Snap.combine
    ($Snap.first ($PSF.lookup_access (as sm@32@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@11@01)
      ($SortWrappers.IntTo$Snap i@12@01))))
    ($Snap.second ($PSF.lookup_access (as sm@32@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@11@01)
      ($SortWrappers.IntTo$Snap i@12@01)))))))
; [eval] loc(a, i)
(assert (not (= (loc<Ref> a@11@01 i@12@01) $Ref.null)))
; [eval] loc(a, i + 1)
; [eval] i + 1
(push) ; 5
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@11@01 i@12@01) (loc<Ref> a@11@01 (+ i@12@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (not (= (loc<Ref> a@11@01 (+ i@12@01 1)) $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (access%trigger ($PSF.lookup_access (as sm@32@01  $PSF<access>) ($Snap.combine
  ($SortWrappers.IArrayTo$Snap a@11@01)
  ($SortWrappers.IntTo$Snap i@12@01))) a@11@01 i@12@01))
; [exec]
; sum := sum + loc(a, i).val + loc(a, i + 1).val
; [eval] sum + loc(a, i).val + loc(a, i + 1).val
; [eval] sum + loc(a, i).val
; [eval] loc(a, i)
; [eval] loc(a, i + 1)
; [eval] i + 1
(declare-const sum@34@01 Int)
(assert (=
  sum@34@01
  (+
    (+
      sum@26@01
      ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_access (as sm@32@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@11@01)
        ($SortWrappers.IntTo$Snap i@12@01))))))
    ($SortWrappers.$SnapToInt ($Snap.second ($PSF.lookup_access (as sm@32@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@11@01)
      ($SortWrappers.IntTo$Snap i@12@01))))))))
; [exec]
; fold acc(access(a, i), write)
; [eval] i % 2 == 0
; [eval] i % 2
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= (mod i@12@01 2) 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 11 | i@12@01 % 2 == 0 | live]
; [else-branch: 11 | i@12@01 % 2 != 0 | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 11 | i@12@01 % 2 == 0]
; [eval] loc(a, i)
; [eval] loc(a, i + 1)
; [eval] i + 1
(assert (access%trigger ($Snap.combine
  ($Snap.first ($PSF.lookup_access (as sm@32@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@11@01)
    ($SortWrappers.IntTo$Snap i@12@01))))
  ($Snap.second ($PSF.lookup_access (as sm@32@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@11@01)
    ($SortWrappers.IntTo$Snap i@12@01))))) a@11@01 i@12@01))
(declare-const sm@35@01 $PSF<access>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_access (as sm@35@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@11@01)
    ($SortWrappers.IntTo$Snap i@12@01)))
  ($Snap.combine
    ($Snap.first ($PSF.lookup_access (as sm@32@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@11@01)
      ($SortWrappers.IntTo$Snap i@12@01))))
    ($Snap.second ($PSF.lookup_access (as sm@32@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@11@01)
      ($SortWrappers.IntTo$Snap i@12@01)))))))
; [eval] i >= 0
; [eval] i <= len(a)
; [eval] len(a)
(push) ; 6
(assert (not (<= i@12@01 (len<Int> a@11@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (<= i@12@01 (len<Int> a@11@01)))
(declare-const j@36@01 Int)
(push) ; 6
; [eval] j >= 0 && (j < len(a) && j % 2 == 0)
; [eval] j >= 0
(push) ; 7
; [then-branch: 12 | !(j@36@01 >= 0) | live]
; [else-branch: 12 | j@36@01 >= 0 | live]
(push) ; 8
; [then-branch: 12 | !(j@36@01 >= 0)]
(assert (not (>= j@36@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 12 | j@36@01 >= 0]
(assert (>= j@36@01 0))
; [eval] j < len(a)
; [eval] len(a)
(push) ; 9
; [then-branch: 13 | !(j@36@01 < len[Int](a@11@01)) | live]
; [else-branch: 13 | j@36@01 < len[Int](a@11@01) | live]
(push) ; 10
; [then-branch: 13 | !(j@36@01 < len[Int](a@11@01))]
(assert (not (< j@36@01 (len<Int> a@11@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 13 | j@36@01 < len[Int](a@11@01)]
(assert (< j@36@01 (len<Int> a@11@01)))
; [eval] j % 2 == 0
; [eval] j % 2
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< j@36@01 (len<Int> a@11@01)) (not (< j@36@01 (len<Int> a@11@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@36@01 0)
  (and
    (>= j@36@01 0)
    (or (< j@36@01 (len<Int> a@11@01)) (not (< j@36@01 (len<Int> a@11@01)))))))
(assert (or (>= j@36@01 0) (not (>= j@36@01 0))))
(assert (and (>= j@36@01 0) (and (< j@36@01 (len<Int> a@11@01)) (= (mod j@36@01 2) 0))))
(pop) ; 6
(declare-fun inv@37@01 (IArray Int) Int)
(declare-fun img@38@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@36@01 Int)) (!
  (=>
    (and
      (>= j@36@01 0)
      (and (< j@36@01 (len<Int> a@11@01)) (= (mod j@36@01 2) 0)))
    (and
      (=>
        (>= j@36@01 0)
        (and
          (>= j@36@01 0)
          (or
            (< j@36@01 (len<Int> a@11@01))
            (not (< j@36@01 (len<Int> a@11@01))))))
      (or (>= j@36@01 0) (not (>= j@36@01 0)))))
  :pattern ((inv@37@01 a@11@01 j@36@01))
  :pattern ((img@38@01 a@11@01 j@36@01))
  :qid |access-aux|)))
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((j1@36@01 Int) (j2@36@01 Int)) (!
  (=>
    (and
      (and
        (>= j1@36@01 0)
        (and (< j1@36@01 (len<Int> a@11@01)) (= (mod j1@36@01 2) 0)))
      (and
        (>= j2@36@01 0)
        (and (< j2@36@01 (len<Int> a@11@01)) (= (mod j2@36@01 2) 0)))
      (= j1@36@01 j2@36@01))
    (= j1@36@01 j2@36@01))
  
  :qid |access-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@36@01 Int)) (!
  (=>
    (and
      (>= j@36@01 0)
      (and (< j@36@01 (len<Int> a@11@01)) (= (mod j@36@01 2) 0)))
    (and (= (inv@37@01 a@11@01 j@36@01) j@36@01) (img@38@01 a@11@01 j@36@01)))
  :pattern ((inv@37@01 a@11@01 j@36@01))
  :pattern ((img@38@01 a@11@01 j@36@01))
  :qid |access-invOfFct|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (img@38@01 a i)
      (and
        (>= (inv@37@01 a i) 0)
        (and
          (< (inv@37@01 a i) (len<Int> a@11@01))
          (= (mod (inv@37@01 a i) 2) 0))))
    (and (= a@11@01 a) (= (inv@37@01 a i) i)))
  :pattern ((inv@37@01 a i))
  :qid |access-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@39@01 ((a IArray) (i Int)) $Perm
  (ite
    (and
      (and
        (>= (inv@37@01 a i) 0)
        (and
          (< (inv@37@01 a i) (len<Int> a@11@01))
          (= (mod (inv@37@01 a i) 2) 0)))
      (img@38@01 a i)
      (and (= a a@11@01) (= i (inv@37@01 a i))))
    ($Perm.min
      (ite
        (and
          (img@30@01 a i)
          (and
            (>= (inv@29@01 a i) 0)
            (and
              (< (inv@29@01 a i) (len<Int> a@11@01))
              (= (mod (inv@29@01 a i) 2) 0))))
        (- $Perm.Write (pTaken@31@01 a i))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@40@01 ((a IArray) (i Int)) $Perm
  (ite
    (and
      (and
        (>= (inv@37@01 a i) 0)
        (and
          (< (inv@37@01 a i) (len<Int> a@11@01))
          (= (mod (inv@37@01 a i) 2) 0)))
      (img@38@01 a i)
      (and (= a a@11@01) (= i (inv@37@01 a i))))
    ($Perm.min
      (ite (and (= a a@11@01) (= i i@12@01)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@39@01 a i)))
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
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@30@01 a i)
          (and
            (>= (inv@29@01 a i) 0)
            (and
              (< (inv@29@01 a i) (len<Int> a@11@01))
              (= (mod (inv@29@01 a i) 2) 0))))
        (- $Perm.Write (pTaken@31@01 a i))
        $Perm.No)
      (pTaken@39@01 a i))
    $Perm.No)
  
  :qid |quant-u-18205|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (and
        (>= (inv@37@01 a i) 0)
        (and
          (< (inv@37@01 a i) (len<Int> a@11@01))
          (= (mod (inv@37@01 a i) 2) 0)))
      (img@38@01 a i)
      (and (= a a@11@01) (= i (inv@37@01 a i))))
    (= (- $Perm.Write (pTaken@39@01 a i)) $Perm.No))
  
  :qid |quant-u-18206|))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@40@01 a@11@01 i@12@01)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (and
        (>= (inv@37@01 a i) 0)
        (and
          (< (inv@37@01 a i) (len<Int> a@11@01))
          (= (mod (inv@37@01 a i) 2) 0)))
      (img@38@01 a i)
      (and (= a a@11@01) (= i (inv@37@01 a i))))
    (= (- (- $Perm.Write (pTaken@39@01 a i)) (pTaken@40@01 a i)) $Perm.No))
  
  :qid |quant-u-18208|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 5
(pop) ; 4
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 5 | !(i@12@01 + 3 < len[Int](a@11@01))]
(assert (not (< (+ i@12@01 3) (len<Int> a@11@01))))
(pop) ; 3
; [eval] !(i + 3 < len(a))
; [eval] i + 3 < len(a)
; [eval] i + 3
; [eval] len(a)
(push) ; 3
(set-option :timeout 10)
(assert (not (< (+ i@12@01 3) (len<Int> a@11@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< (+ i@12@01 3) (len<Int> a@11@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 14 | !(i@12@01 + 3 < len[Int](a@11@01)) | live]
; [else-branch: 14 | i@12@01 + 3 < len[Int](a@11@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 14 | !(i@12@01 + 3 < len[Int](a@11@01))]
(assert (not (< (+ i@12@01 3) (len<Int> a@11@01))))
; [exec]
; unfold acc(access(a, i), write)
; Precomputing data for removing quantified permissions
(define-fun pTaken@41@01 ((a IArray) (i Int)) $Perm
  (ite
    (and (= a a@11@01) (= i i@12@01))
    ($Perm.min
      (ite
        (and
          (img@17@01 a i)
          (and
            (>= (inv@16@01 a i) 0)
            (and
              (< (inv@16@01 a i) (len<Int> a@11@01))
              (= (mod (inv@16@01 a i) 2) 0))))
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
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@17@01 a i)
          (and
            (>= (inv@16@01 a i) 0)
            (and
              (< (inv@16@01 a i) (len<Int> a@11@01))
              (= (mod (inv@16@01 a i) 2) 0))))
        $Perm.Write
        $Perm.No)
      (pTaken@41@01 a i))
    $Perm.No)
  
  :qid |quant-u-18210|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@41@01 a i) $Perm.No)
  
  :qid |quant-u-18211|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and (= a a@11@01) (= i i@12@01))
    (= (- $Perm.Write (pTaken@41@01 a i)) $Perm.No))
  
  :qid |quant-u-18212|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@42@01 $PSF<access>)
(declare-const s@43@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@17@01 a@11@01 i@12@01)
    (and
      (>= (inv@16@01 a@11@01 i@12@01) 0)
      (and
        (< (inv@16@01 a@11@01 i@12@01) (len<Int> a@11@01))
        (= (mod (inv@16@01 a@11@01 i@12@01) 2) 0))))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@11@01)
          ($SortWrappers.IntTo$Snap i@12@01))
        $Snap.unit))
    (=
      ($PSF.lookup_access (as sm@42@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@11@01)
        ($SortWrappers.IntTo$Snap i@12@01)))
      ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.second ($Snap.second ($Snap.second $t@14@01)))) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@11@01)
        ($SortWrappers.IntTo$Snap i@12@01)))))))
; [eval] i % 2 == 0
; [eval] i % 2
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= (mod i@12@01 2) 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 15 | i@12@01 % 2 == 0 | live]
; [else-branch: 15 | i@12@01 % 2 != 0 | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 15 | i@12@01 % 2 == 0]
(assert (=
  ($PSF.lookup_access (as sm@42@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@11@01)
    ($SortWrappers.IntTo$Snap i@12@01)))
  ($Snap.combine
    ($Snap.first ($PSF.lookup_access (as sm@42@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@11@01)
      ($SortWrappers.IntTo$Snap i@12@01))))
    ($Snap.second ($PSF.lookup_access (as sm@42@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@11@01)
      ($SortWrappers.IntTo$Snap i@12@01)))))))
; [eval] loc(a, i)
(assert (not (= (loc<Ref> a@11@01 i@12@01) $Ref.null)))
; [eval] loc(a, i + 1)
; [eval] i + 1
(push) ; 5
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@11@01 i@12@01) (loc<Ref> a@11@01 (+ i@12@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (not (= (loc<Ref> a@11@01 (+ i@12@01 1)) $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (access%trigger ($PSF.lookup_access (as sm@42@01  $PSF<access>) ($Snap.combine
  ($SortWrappers.IArrayTo$Snap a@11@01)
  ($SortWrappers.IntTo$Snap i@12@01))) a@11@01 i@12@01))
; [exec]
; sum := loc(a, i).val + loc(a, i + 1).val
; [eval] loc(a, i).val + loc(a, i + 1).val
; [eval] loc(a, i)
; [eval] loc(a, i + 1)
; [eval] i + 1
(declare-const sum@44@01 Int)
(assert (=
  sum@44@01
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_access (as sm@42@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@11@01)
      ($SortWrappers.IntTo$Snap i@12@01)))))
    ($SortWrappers.$SnapToInt ($Snap.second ($PSF.lookup_access (as sm@42@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@11@01)
      ($SortWrappers.IntTo$Snap i@12@01))))))))
; [exec]
; fold acc(access(a, i), write)
; [eval] i % 2 == 0
; [eval] i % 2
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= (mod i@12@01 2) 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 16 | i@12@01 % 2 == 0 | live]
; [else-branch: 16 | i@12@01 % 2 != 0 | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 16 | i@12@01 % 2 == 0]
; [eval] loc(a, i)
; [eval] loc(a, i + 1)
; [eval] i + 1
(assert (access%trigger ($Snap.combine
  ($Snap.first ($PSF.lookup_access (as sm@42@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@11@01)
    ($SortWrappers.IntTo$Snap i@12@01))))
  ($Snap.second ($PSF.lookup_access (as sm@42@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@11@01)
    ($SortWrappers.IntTo$Snap i@12@01))))) a@11@01 i@12@01))
(declare-const sm@45@01 $PSF<access>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_access (as sm@45@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@11@01)
    ($SortWrappers.IntTo$Snap i@12@01)))
  ($Snap.combine
    ($Snap.first ($PSF.lookup_access (as sm@42@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@11@01)
      ($SortWrappers.IntTo$Snap i@12@01))))
    ($Snap.second ($PSF.lookup_access (as sm@42@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@11@01)
      ($SortWrappers.IntTo$Snap i@12@01)))))))
; [eval] i >= 0
; [eval] i <= len(a)
; [eval] len(a)
(push) ; 6
(assert (not (<= i@12@01 (len<Int> a@11@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (<= i@12@01 (len<Int> a@11@01)))
(declare-const j@46@01 Int)
(push) ; 6
; [eval] j >= 0 && (j < len(a) && j % 2 == 0)
; [eval] j >= 0
(push) ; 7
; [then-branch: 17 | !(j@46@01 >= 0) | live]
; [else-branch: 17 | j@46@01 >= 0 | live]
(push) ; 8
; [then-branch: 17 | !(j@46@01 >= 0)]
(assert (not (>= j@46@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 17 | j@46@01 >= 0]
(assert (>= j@46@01 0))
; [eval] j < len(a)
; [eval] len(a)
(push) ; 9
; [then-branch: 18 | !(j@46@01 < len[Int](a@11@01)) | live]
; [else-branch: 18 | j@46@01 < len[Int](a@11@01) | live]
(push) ; 10
; [then-branch: 18 | !(j@46@01 < len[Int](a@11@01))]
(assert (not (< j@46@01 (len<Int> a@11@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 18 | j@46@01 < len[Int](a@11@01)]
(assert (< j@46@01 (len<Int> a@11@01)))
; [eval] j % 2 == 0
; [eval] j % 2
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< j@46@01 (len<Int> a@11@01)) (not (< j@46@01 (len<Int> a@11@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@46@01 0)
  (and
    (>= j@46@01 0)
    (or (< j@46@01 (len<Int> a@11@01)) (not (< j@46@01 (len<Int> a@11@01)))))))
(assert (or (>= j@46@01 0) (not (>= j@46@01 0))))
(assert (and (>= j@46@01 0) (and (< j@46@01 (len<Int> a@11@01)) (= (mod j@46@01 2) 0))))
(pop) ; 6
(declare-fun inv@47@01 (IArray Int) Int)
(declare-fun img@48@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@46@01 Int)) (!
  (=>
    (and
      (>= j@46@01 0)
      (and (< j@46@01 (len<Int> a@11@01)) (= (mod j@46@01 2) 0)))
    (and
      (=>
        (>= j@46@01 0)
        (and
          (>= j@46@01 0)
          (or
            (< j@46@01 (len<Int> a@11@01))
            (not (< j@46@01 (len<Int> a@11@01))))))
      (or (>= j@46@01 0) (not (>= j@46@01 0)))))
  :pattern ((inv@47@01 a@11@01 j@46@01))
  :pattern ((img@48@01 a@11@01 j@46@01))
  :qid |access-aux|)))
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((j1@46@01 Int) (j2@46@01 Int)) (!
  (=>
    (and
      (and
        (>= j1@46@01 0)
        (and (< j1@46@01 (len<Int> a@11@01)) (= (mod j1@46@01 2) 0)))
      (and
        (>= j2@46@01 0)
        (and (< j2@46@01 (len<Int> a@11@01)) (= (mod j2@46@01 2) 0)))
      (= j1@46@01 j2@46@01))
    (= j1@46@01 j2@46@01))
  
  :qid |access-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@46@01 Int)) (!
  (=>
    (and
      (>= j@46@01 0)
      (and (< j@46@01 (len<Int> a@11@01)) (= (mod j@46@01 2) 0)))
    (and (= (inv@47@01 a@11@01 j@46@01) j@46@01) (img@48@01 a@11@01 j@46@01)))
  :pattern ((inv@47@01 a@11@01 j@46@01))
  :pattern ((img@48@01 a@11@01 j@46@01))
  :qid |access-invOfFct|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (img@48@01 a i)
      (and
        (>= (inv@47@01 a i) 0)
        (and
          (< (inv@47@01 a i) (len<Int> a@11@01))
          (= (mod (inv@47@01 a i) 2) 0))))
    (and (= a@11@01 a) (= (inv@47@01 a i) i)))
  :pattern ((inv@47@01 a i))
  :qid |access-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@49@01 ((a IArray) (i Int)) $Perm
  (ite
    (and
      (and
        (>= (inv@47@01 a i) 0)
        (and
          (< (inv@47@01 a i) (len<Int> a@11@01))
          (= (mod (inv@47@01 a i) 2) 0)))
      (img@48@01 a i)
      (and (= a a@11@01) (= i (inv@47@01 a i))))
    ($Perm.min
      (ite
        (and
          (img@17@01 a i)
          (and
            (>= (inv@16@01 a i) 0)
            (and
              (< (inv@16@01 a i) (len<Int> a@11@01))
              (= (mod (inv@16@01 a i) 2) 0))))
        (- $Perm.Write (pTaken@41@01 a i))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@50@01 ((a IArray) (i Int)) $Perm
  (ite
    (and
      (and
        (>= (inv@47@01 a i) 0)
        (and
          (< (inv@47@01 a i) (len<Int> a@11@01))
          (= (mod (inv@47@01 a i) 2) 0)))
      (img@48@01 a i)
      (and (= a a@11@01) (= i (inv@47@01 a i))))
    ($Perm.min
      (ite (and (= a a@11@01) (= i i@12@01)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@49@01 a i)))
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
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@17@01 a i)
          (and
            (>= (inv@16@01 a i) 0)
            (and
              (< (inv@16@01 a i) (len<Int> a@11@01))
              (= (mod (inv@16@01 a i) 2) 0))))
        (- $Perm.Write (pTaken@41@01 a i))
        $Perm.No)
      (pTaken@49@01 a i))
    $Perm.No)
  
  :qid |quant-u-18215|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (and
        (>= (inv@47@01 a i) 0)
        (and
          (< (inv@47@01 a i) (len<Int> a@11@01))
          (= (mod (inv@47@01 a i) 2) 0)))
      (img@48@01 a i)
      (and (= a a@11@01) (= i (inv@47@01 a i))))
    (= (- $Perm.Write (pTaken@49@01 a i)) $Perm.No))
  
  :qid |quant-u-18216|))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@50@01 a@11@01 i@12@01)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (and
        (>= (inv@47@01 a i) 0)
        (and
          (< (inv@47@01 a i) (len<Int> a@11@01))
          (= (mod (inv@47@01 a i) 2) 0)))
      (img@48@01 a i)
      (and (= a a@11@01) (= i (inv@47@01 a i))))
    (= (- (- $Perm.Write (pTaken@49@01 a i)) (pTaken@50@01 a i)) $Perm.No))
  
  :qid |quant-u-18218|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 5
(pop) ; 4
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 14 | i@12@01 + 3 < len[Int](a@11@01)]
(assert (< (+ i@12@01 3) (len<Int> a@11@01)))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- setVal ----------
(declare-const a@51@01 IArray)
(declare-const i@52@01 Int)
(declare-const newVal@53@01 Int)
(declare-const a@54@01 IArray)
(declare-const i@55@01 Int)
(declare-const newVal@56@01 Int)
(push) ; 1
(declare-const $t@57@01 $Snap)
(assert (= $t@57@01 ($Snap.combine ($Snap.first $t@57@01) ($Snap.second $t@57@01))))
(assert (= ($Snap.first $t@57@01) $Snap.unit))
; [eval] i >= 0
(assert (>= i@55@01 0))
(assert (=
  ($Snap.second $t@57@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@57@01))
    ($Snap.second ($Snap.second $t@57@01)))))
(assert (= ($Snap.first ($Snap.second $t@57@01)) $Snap.unit))
; [eval] i < len(a)
; [eval] len(a)
(assert (< i@55@01 (len<Int> a@54@01)))
(assert (=
  ($Snap.second ($Snap.second $t@57@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@57@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@57@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@57@01))) $Snap.unit))
; [eval] i % 2 == 0
; [eval] i % 2
(assert (= (mod i@55@01 2) 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@57@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@57@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@57@01))))
  $Snap.unit))
; [eval] len(a) % 2 == 0
; [eval] len(a) % 2
; [eval] len(a)
(assert (= (mod (len<Int> a@54@01) 2) 0))
(declare-const j@58@01 Int)
(push) ; 2
; [eval] j >= 0 && (j < len(a) && j % 2 == 0)
; [eval] j >= 0
(push) ; 3
; [then-branch: 19 | !(j@58@01 >= 0) | live]
; [else-branch: 19 | j@58@01 >= 0 | live]
(push) ; 4
; [then-branch: 19 | !(j@58@01 >= 0)]
(assert (not (>= j@58@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 19 | j@58@01 >= 0]
(assert (>= j@58@01 0))
; [eval] j < len(a)
; [eval] len(a)
(push) ; 5
; [then-branch: 20 | !(j@58@01 < len[Int](a@54@01)) | live]
; [else-branch: 20 | j@58@01 < len[Int](a@54@01) | live]
(push) ; 6
; [then-branch: 20 | !(j@58@01 < len[Int](a@54@01))]
(assert (not (< j@58@01 (len<Int> a@54@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 20 | j@58@01 < len[Int](a@54@01)]
(assert (< j@58@01 (len<Int> a@54@01)))
; [eval] j % 2 == 0
; [eval] j % 2
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (< j@58@01 (len<Int> a@54@01)) (not (< j@58@01 (len<Int> a@54@01)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@58@01 0)
  (and
    (>= j@58@01 0)
    (or (< j@58@01 (len<Int> a@54@01)) (not (< j@58@01 (len<Int> a@54@01)))))))
(assert (or (>= j@58@01 0) (not (>= j@58@01 0))))
(assert (and (>= j@58@01 0) (and (< j@58@01 (len<Int> a@54@01)) (= (mod j@58@01 2) 0))))
(pop) ; 2
(declare-fun inv@59@01 (IArray Int) Int)
(declare-fun img@60@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@58@01 Int)) (!
  (=>
    (and
      (>= j@58@01 0)
      (and (< j@58@01 (len<Int> a@54@01)) (= (mod j@58@01 2) 0)))
    (and
      (=>
        (>= j@58@01 0)
        (and
          (>= j@58@01 0)
          (or
            (< j@58@01 (len<Int> a@54@01))
            (not (< j@58@01 (len<Int> a@54@01))))))
      (or (>= j@58@01 0) (not (>= j@58@01 0)))))
  :pattern ((inv@59@01 a@54@01 j@58@01))
  :pattern ((img@60@01 a@54@01 j@58@01))
  :qid |access-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((j1@58@01 Int) (j2@58@01 Int)) (!
  (=>
    (and
      (and
        (>= j1@58@01 0)
        (and (< j1@58@01 (len<Int> a@54@01)) (= (mod j1@58@01 2) 0)))
      (and
        (>= j2@58@01 0)
        (and (< j2@58@01 (len<Int> a@54@01)) (= (mod j2@58@01 2) 0)))
      (= j1@58@01 j2@58@01))
    (= j1@58@01 j2@58@01))
  
  :qid |access-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@58@01 Int)) (!
  (=>
    (and
      (>= j@58@01 0)
      (and (< j@58@01 (len<Int> a@54@01)) (= (mod j@58@01 2) 0)))
    (and (= (inv@59@01 a@54@01 j@58@01) j@58@01) (img@60@01 a@54@01 j@58@01)))
  :pattern ((inv@59@01 a@54@01 j@58@01))
  :pattern ((img@60@01 a@54@01 j@58@01))
  :qid |quant-u-18220|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (img@60@01 a i)
      (and
        (>= (inv@59@01 a i) 0)
        (and
          (< (inv@59@01 a i) (len<Int> a@54@01))
          (= (mod (inv@59@01 a i) 2) 0))))
    (and (= a@54@01 a) (= (inv@59@01 a i) i)))
  :pattern ((inv@59@01 a i))
  :qid |access-fctOfInv|)))
; Permissions are non-negative
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@61@01 $Snap)
(assert (= $t@61@01 ($Snap.combine ($Snap.first $t@61@01) ($Snap.second $t@61@01))))
(assert (= ($Snap.first $t@61@01) $Snap.unit))
; [eval] i >= 0
(assert (=
  ($Snap.second $t@61@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@61@01))
    ($Snap.second ($Snap.second $t@61@01)))))
(assert (= ($Snap.first ($Snap.second $t@61@01)) $Snap.unit))
; [eval] i < len(a)
; [eval] len(a)
(assert (=
  ($Snap.second ($Snap.second $t@61@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@61@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@61@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@61@01))) $Snap.unit))
; [eval] len(a) % 2 == old(len(a) % 2)
; [eval] len(a) % 2
; [eval] len(a)
; [eval] old(len(a) % 2)
; [eval] len(a) % 2
; [eval] len(a)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@61@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@61@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@61@01)))))))
(declare-const j@62@01 Int)
(push) ; 3
; [eval] j >= 0 && (j < len(a) && j % 2 == 0)
; [eval] j >= 0
(push) ; 4
; [then-branch: 21 | !(j@62@01 >= 0) | live]
; [else-branch: 21 | j@62@01 >= 0 | live]
(push) ; 5
; [then-branch: 21 | !(j@62@01 >= 0)]
(assert (not (>= j@62@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 21 | j@62@01 >= 0]
(assert (>= j@62@01 0))
; [eval] j < len(a)
; [eval] len(a)
(push) ; 6
; [then-branch: 22 | !(j@62@01 < len[Int](a@54@01)) | live]
; [else-branch: 22 | j@62@01 < len[Int](a@54@01) | live]
(push) ; 7
; [then-branch: 22 | !(j@62@01 < len[Int](a@54@01))]
(assert (not (< j@62@01 (len<Int> a@54@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 22 | j@62@01 < len[Int](a@54@01)]
(assert (< j@62@01 (len<Int> a@54@01)))
; [eval] j % 2 == 0
; [eval] j % 2
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (< j@62@01 (len<Int> a@54@01)) (not (< j@62@01 (len<Int> a@54@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@62@01 0)
  (and
    (>= j@62@01 0)
    (or (< j@62@01 (len<Int> a@54@01)) (not (< j@62@01 (len<Int> a@54@01)))))))
(assert (or (>= j@62@01 0) (not (>= j@62@01 0))))
(assert (and (>= j@62@01 0) (and (< j@62@01 (len<Int> a@54@01)) (= (mod j@62@01 2) 0))))
(pop) ; 3
(declare-fun inv@63@01 (IArray Int) Int)
(declare-fun img@64@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@62@01 Int)) (!
  (=>
    (and
      (>= j@62@01 0)
      (and (< j@62@01 (len<Int> a@54@01)) (= (mod j@62@01 2) 0)))
    (and
      (=>
        (>= j@62@01 0)
        (and
          (>= j@62@01 0)
          (or
            (< j@62@01 (len<Int> a@54@01))
            (not (< j@62@01 (len<Int> a@54@01))))))
      (or (>= j@62@01 0) (not (>= j@62@01 0)))))
  :pattern ((inv@63@01 a@54@01 j@62@01))
  :pattern ((img@64@01 a@54@01 j@62@01))
  :qid |access-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@62@01 Int) (j2@62@01 Int)) (!
  (=>
    (and
      (and
        (>= j1@62@01 0)
        (and (< j1@62@01 (len<Int> a@54@01)) (= (mod j1@62@01 2) 0)))
      (and
        (>= j2@62@01 0)
        (and (< j2@62@01 (len<Int> a@54@01)) (= (mod j2@62@01 2) 0)))
      (= j1@62@01 j2@62@01))
    (= j1@62@01 j2@62@01))
  
  :qid |access-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@62@01 Int)) (!
  (=>
    (and
      (>= j@62@01 0)
      (and (< j@62@01 (len<Int> a@54@01)) (= (mod j@62@01 2) 0)))
    (and (= (inv@63@01 a@54@01 j@62@01) j@62@01) (img@64@01 a@54@01 j@62@01)))
  :pattern ((inv@63@01 a@54@01 j@62@01))
  :pattern ((img@64@01 a@54@01 j@62@01))
  :qid |quant-u-18222|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (img@64@01 a i)
      (and
        (>= (inv@63@01 a i) 0)
        (and
          (< (inv@63@01 a i) (len<Int> a@54@01))
          (= (mod (inv@63@01 a i) 2) 0))))
    (and (= a@54@01 a) (= (inv@63@01 a i) i)))
  :pattern ((inv@63@01 a i))
  :qid |access-fctOfInv|)))
; Permissions are non-negative
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@61@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@61@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@61@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@61@01)))))
  $Snap.unit))
; [eval] (forall j: Int :: { old(loc(a, j)) } j >= 0 && (j < i && j % 2 == 0) ==> (unfolding acc(access(a, j), write) in loc(a, j).val) == old((unfolding acc(access(a, j), write) in loc(a, j).val)))
(declare-const j@65@01 Int)
(push) ; 3
; [eval] j >= 0 && (j < i && j % 2 == 0) ==> (unfolding acc(access(a, j), write) in loc(a, j).val) == old((unfolding acc(access(a, j), write) in loc(a, j).val))
; [eval] j >= 0 && (j < i && j % 2 == 0)
; [eval] j >= 0
(push) ; 4
; [then-branch: 23 | !(j@65@01 >= 0) | live]
; [else-branch: 23 | j@65@01 >= 0 | live]
(push) ; 5
; [then-branch: 23 | !(j@65@01 >= 0)]
(assert (not (>= j@65@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 23 | j@65@01 >= 0]
(assert (>= j@65@01 0))
; [eval] j < i
(push) ; 6
; [then-branch: 24 | !(j@65@01 < i@55@01) | live]
; [else-branch: 24 | j@65@01 < i@55@01 | live]
(push) ; 7
; [then-branch: 24 | !(j@65@01 < i@55@01)]
(assert (not (< j@65@01 i@55@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 24 | j@65@01 < i@55@01]
(assert (< j@65@01 i@55@01))
; [eval] j % 2 == 0
; [eval] j % 2
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (< j@65@01 i@55@01) (not (< j@65@01 i@55@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@65@01 0)
  (and (>= j@65@01 0) (or (< j@65@01 i@55@01) (not (< j@65@01 i@55@01))))))
(assert (or (>= j@65@01 0) (not (>= j@65@01 0))))
(push) ; 4
; [then-branch: 25 | j@65@01 >= 0 && j@65@01 < i@55@01 && j@65@01 % 2 == 0 | live]
; [else-branch: 25 | !(j@65@01 >= 0 && j@65@01 < i@55@01 && j@65@01 % 2 == 0) | live]
(push) ; 5
; [then-branch: 25 | j@65@01 >= 0 && j@65@01 < i@55@01 && j@65@01 % 2 == 0]
(assert (and (>= j@65@01 0) (and (< j@65@01 i@55@01) (= (mod j@65@01 2) 0))))
; [eval] (unfolding acc(access(a, j), write) in loc(a, j).val) == old((unfolding acc(access(a, j), write) in loc(a, j).val))
; [eval] (unfolding acc(access(a, j), write) in loc(a, j).val)
(push) ; 6
; Precomputing data for removing quantified permissions
(define-fun pTaken@66@01 ((a IArray) (i Int) (j@65@01 Int)) $Perm
  (ite
    (and (= a a@54@01) (= i j@65@01))
    ($Perm.min
      (ite
        (and
          (img@64@01 a i)
          (and
            (>= (inv@63@01 a i) 0)
            (and
              (< (inv@63@01 a i) (len<Int> a@54@01))
              (= (mod (inv@63@01 a i) 2) 0))))
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
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@64@01 a i)
          (and
            (>= (inv@63@01 a i) 0)
            (and
              (< (inv@63@01 a i) (len<Int> a@54@01))
              (= (mod (inv@63@01 a i) 2) 0))))
        $Perm.Write
        $Perm.No)
      (pTaken@66@01 a i j@65@01))
    $Perm.No)
  
  :qid |quant-u-18224|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@66@01 a i j@65@01) $Perm.No)
  
  :qid |quant-u-18225|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and (= a a@54@01) (= i j@65@01))
    (= (- $Perm.Write (pTaken@66@01 a i j@65@01)) $Perm.No))
  
  :qid |quant-u-18226|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@67@01 $PSF<access>)
(declare-const s@68@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@64@01 a@54@01 j@65@01)
    (and
      (>= (inv@63@01 a@54@01 j@65@01) 0)
      (and
        (< (inv@63@01 a@54@01 j@65@01) (len<Int> a@54@01))
        (= (mod (inv@63@01 a@54@01 j@65@01) 2) 0))))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@65@01))
        $Snap.unit))
    (=
      ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@65@01)))
      ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@61@01))))) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@65@01)))))))
(assert (access%trigger ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
  ($SortWrappers.IArrayTo$Snap a@54@01)
  ($SortWrappers.IntTo$Snap j@65@01))) a@54@01 j@65@01))
; [eval] i % 2 == 0
; [eval] i % 2
; [then-branch: 26 | j@65@01 % 2 == 0 | live]
; [else-branch: 26 | j@65@01 % 2 != 0 | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 26 | j@65@01 % 2 == 0]
(assert (=
  ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap j@65@01)))
  ($Snap.combine
    ($Snap.first ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@65@01))))
    ($Snap.second ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@65@01)))))))
; [eval] loc(a, i)
(assert (not (= (loc<Ref> a@54@01 j@65@01) $Ref.null)))
; [eval] loc(a, i + 1)
; [eval] i + 1
(push) ; 8
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@54@01 j@65@01) (loc<Ref> a@54@01 (+ j@65@01 1)))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (not (= (loc<Ref> a@54@01 (+ j@65@01 1)) $Ref.null)))
; [eval] loc(a, j)
(pop) ; 7
(set-option :timeout 0)
(push) ; 7
; [else-branch: 26 | j@65@01 % 2 != 0]
(assert (not (= (mod j@65@01 2) 0)))
(assert (=
  ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap j@65@01)))
  $Snap.unit))
; [eval] loc(a, j)
(check-sat)
; unsat
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (and
  (=>
    (and
      (img@64@01 a@54@01 j@65@01)
      (and
        (>= (inv@63@01 a@54@01 j@65@01) 0)
        (and
          (< (inv@63@01 a@54@01 j@65@01) (len<Int> a@54@01))
          (= (mod (inv@63@01 a@54@01 j@65@01) 2) 0))))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@65@01))
          $Snap.unit))
      (=
        ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@65@01)))
        ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@61@01))))) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@65@01))))))
  (access%trigger ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap j@65@01))) a@54@01 j@65@01)))
(assert (=>
  (= (mod j@65@01 2) 0)
  (and
    (=
      ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@65@01)))
      ($Snap.combine
        ($Snap.first ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@65@01))))
        ($Snap.second ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@65@01))))))
    (not (= (loc<Ref> a@54@01 j@65@01) $Ref.null))
    (not (= (loc<Ref> a@54@01 (+ j@65@01 1)) $Ref.null)))))
; [eval] old((unfolding acc(access(a, j), write) in loc(a, j).val))
; [eval] (unfolding acc(access(a, j), write) in loc(a, j).val)
(push) ; 6
; Precomputing data for removing quantified permissions
(define-fun pTaken@69@01 ((a IArray) (i Int) (j@65@01 Int)) $Perm
  (ite
    (and (= a a@54@01) (= i j@65@01))
    ($Perm.min
      (ite
        (and
          (img@60@01 a i)
          (and
            (>= (inv@59@01 a i) 0)
            (and
              (< (inv@59@01 a i) (len<Int> a@54@01))
              (= (mod (inv@59@01 a i) 2) 0))))
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
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@60@01 a i)
          (and
            (>= (inv@59@01 a i) 0)
            (and
              (< (inv@59@01 a i) (len<Int> a@54@01))
              (= (mod (inv@59@01 a i) 2) 0))))
        $Perm.Write
        $Perm.No)
      (pTaken@69@01 a i j@65@01))
    $Perm.No)
  
  :qid |quant-u-18228|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@69@01 a i j@65@01) $Perm.No)
  
  :qid |quant-u-18229|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and (= a a@54@01) (= i j@65@01))
    (= (- $Perm.Write (pTaken@69@01 a i j@65@01)) $Perm.No))
  
  :qid |quant-u-18230|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@70@01 $PSF<access>)
(declare-const s@71@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@60@01 a@54@01 j@65@01)
    (and
      (>= (inv@59@01 a@54@01 j@65@01) 0)
      (and
        (< (inv@59@01 a@54@01 j@65@01) (len<Int> a@54@01))
        (= (mod (inv@59@01 a@54@01 j@65@01) 2) 0))))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@65@01))
        $Snap.unit))
    (=
      ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@65@01)))
      ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01))))) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@65@01)))))))
(assert (access%trigger ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
  ($SortWrappers.IArrayTo$Snap a@54@01)
  ($SortWrappers.IntTo$Snap j@65@01))) a@54@01 j@65@01))
; [eval] i % 2 == 0
; [eval] i % 2
; [then-branch: 27 | j@65@01 % 2 == 0 | live]
; [else-branch: 27 | j@65@01 % 2 != 0 | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 27 | j@65@01 % 2 == 0]
(assert (=
  ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap j@65@01)))
  ($Snap.combine
    ($Snap.first ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@65@01))))
    ($Snap.second ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@65@01)))))))
; [eval] loc(a, i)
(assert (not (= (loc<Ref> a@54@01 j@65@01) $Ref.null)))
; [eval] loc(a, i + 1)
; [eval] i + 1
(push) ; 8
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@54@01 j@65@01) (loc<Ref> a@54@01 (+ j@65@01 1)))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (not (= (loc<Ref> a@54@01 (+ j@65@01 1)) $Ref.null)))
; [eval] loc(a, j)
(pop) ; 7
(set-option :timeout 0)
(push) ; 7
; [else-branch: 27 | j@65@01 % 2 != 0]
(assert (not (= (mod j@65@01 2) 0)))
(assert (=
  ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap j@65@01)))
  $Snap.unit))
; [eval] loc(a, j)
(check-sat)
; unsat
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (and
  (=>
    (and
      (img@60@01 a@54@01 j@65@01)
      (and
        (>= (inv@59@01 a@54@01 j@65@01) 0)
        (and
          (< (inv@59@01 a@54@01 j@65@01) (len<Int> a@54@01))
          (= (mod (inv@59@01 a@54@01 j@65@01) 2) 0))))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@65@01))
          $Snap.unit))
      (=
        ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@65@01)))
        ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01))))) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@65@01))))))
  (access%trigger ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap j@65@01))) a@54@01 j@65@01)))
(assert (=>
  (= (mod j@65@01 2) 0)
  (and
    (=
      ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@65@01)))
      ($Snap.combine
        ($Snap.first ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@65@01))))
        ($Snap.second ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@65@01))))))
    (not (= (loc<Ref> a@54@01 j@65@01) $Ref.null))
    (not (= (loc<Ref> a@54@01 (+ j@65@01 1)) $Ref.null)))))
(pop) ; 5
(push) ; 5
; [else-branch: 25 | !(j@65@01 >= 0 && j@65@01 < i@55@01 && j@65@01 % 2 == 0)]
(assert (not (and (>= j@65@01 0) (and (< j@65@01 i@55@01) (= (mod j@65@01 2) 0)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and (>= j@65@01 0) (and (< j@65@01 i@55@01) (= (mod j@65@01 2) 0)))
  (and
    (>= j@65@01 0)
    (< j@65@01 i@55@01)
    (= (mod j@65@01 2) 0)
    (=>
      (and
        (img@64@01 a@54@01 j@65@01)
        (and
          (>= (inv@63@01 a@54@01 j@65@01) 0)
          (and
            (< (inv@63@01 a@54@01 j@65@01) (len<Int> a@54@01))
            (= (mod (inv@63@01 a@54@01 j@65@01) 2) 0))))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap j@65@01))
            $Snap.unit))
        (=
          ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@65@01)))
          ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@61@01))))) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@65@01))))))
    (access%trigger ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@65@01))) a@54@01 j@65@01)
    (=>
      (= (mod j@65@01 2) 0)
      (and
        (=
          ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@65@01)))
          ($Snap.combine
            ($Snap.first ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap j@65@01))))
            ($Snap.second ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap j@65@01))))))
        (not (= (loc<Ref> a@54@01 j@65@01) $Ref.null))
        (not (= (loc<Ref> a@54@01 (+ j@65@01 1)) $Ref.null))))
    (=>
      (and
        (img@60@01 a@54@01 j@65@01)
        (and
          (>= (inv@59@01 a@54@01 j@65@01) 0)
          (and
            (< (inv@59@01 a@54@01 j@65@01) (len<Int> a@54@01))
            (= (mod (inv@59@01 a@54@01 j@65@01) 2) 0))))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap j@65@01))
            $Snap.unit))
        (=
          ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@65@01)))
          ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01))))) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@65@01))))))
    (access%trigger ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@65@01))) a@54@01 j@65@01)
    (=>
      (= (mod j@65@01 2) 0)
      (and
        (=
          ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@65@01)))
          ($Snap.combine
            ($Snap.first ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap j@65@01))))
            ($Snap.second ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap j@65@01))))))
        (not (= (loc<Ref> a@54@01 j@65@01) $Ref.null))
        (not (= (loc<Ref> a@54@01 (+ j@65@01 1)) $Ref.null)))))))
; Joined path conditions
(assert (or
  (not (and (>= j@65@01 0) (and (< j@65@01 i@55@01) (= (mod j@65@01 2) 0))))
  (and (>= j@65@01 0) (and (< j@65@01 i@55@01) (= (mod j@65@01 2) 0)))))
; [eval] old(loc(a, j))
; [eval] loc(a, j)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@65@01 Int)) (!
  (and
    (=>
      (>= j@65@01 0)
      (and (>= j@65@01 0) (or (< j@65@01 i@55@01) (not (< j@65@01 i@55@01)))))
    (or (>= j@65@01 0) (not (>= j@65@01 0)))
    (=>
      (and (>= j@65@01 0) (and (< j@65@01 i@55@01) (= (mod j@65@01 2) 0)))
      (and
        (>= j@65@01 0)
        (< j@65@01 i@55@01)
        (= (mod j@65@01 2) 0)
        (=>
          (and
            (img@64@01 a@54@01 j@65@01)
            (and
              (>= (inv@63@01 a@54@01 j@65@01) 0)
              (and
                (< (inv@63@01 a@54@01 j@65@01) (len<Int> a@54@01))
                (= (mod (inv@63@01 a@54@01 j@65@01) 2) 0))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap j@65@01))
                $Snap.unit))
            (=
              ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@65@01)))
              ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@61@01))))) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@65@01))))))
        (access%trigger ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@65@01))) a@54@01 j@65@01)
        (=>
          (= (mod j@65@01 2) 0)
          (and
            (=
              ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@65@01)))
              ($Snap.combine
                ($Snap.first ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap j@65@01))))
                ($Snap.second ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap j@65@01))))))
            (not (= (loc<Ref> a@54@01 j@65@01) $Ref.null))
            (not (= (loc<Ref> a@54@01 (+ j@65@01 1)) $Ref.null))))
        (=>
          (and
            (img@60@01 a@54@01 j@65@01)
            (and
              (>= (inv@59@01 a@54@01 j@65@01) 0)
              (and
                (< (inv@59@01 a@54@01 j@65@01) (len<Int> a@54@01))
                (= (mod (inv@59@01 a@54@01 j@65@01) 2) 0))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap j@65@01))
                $Snap.unit))
            (=
              ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@65@01)))
              ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01))))) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@65@01))))))
        (access%trigger ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@65@01))) a@54@01 j@65@01)
        (=>
          (= (mod j@65@01 2) 0)
          (and
            (=
              ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@65@01)))
              ($Snap.combine
                ($Snap.first ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap j@65@01))))
                ($Snap.second ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap j@65@01))))))
            (not (= (loc<Ref> a@54@01 j@65@01) $Ref.null))
            (not (= (loc<Ref> a@54@01 (+ j@65@01 1)) $Ref.null))))))
    (or
      (not (and (>= j@65@01 0) (and (< j@65@01 i@55@01) (= (mod j@65@01 2) 0))))
      (and (>= j@65@01 0) (and (< j@65@01 i@55@01) (= (mod j@65@01 2) 0)))))
  :pattern ((loc<Ref> a@54@01 j@65@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/issues/block_array.vpr@50@9@50@157-aux|)))
(assert (forall ((j@65@01 Int)) (!
  (=>
    (and (>= j@65@01 0) (and (< j@65@01 i@55@01) (= (mod j@65@01 2) 0)))
    (=
      ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@65@01)))))
      ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@65@01)))))))
  :pattern ((loc<Ref> a@54@01 j@65@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/issues/block_array.vpr@50@9@50@157|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@61@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@61@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@61@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@61@01))))))
  $Snap.unit))
; [eval] (forall __rw_j6: Int :: { old(loc(a, __rw_j6)) } true ==> __rw_j6 - 1 >= 0 && (__rw_j6 - 1 < i && (__rw_j6 - 1) % 2 == 0) ==> (unfolding acc(access(a, __rw_j6 - 1), write) in loc(a, __rw_j6).val) == old((unfolding acc(access(a, __rw_j6 - 1), write) in loc(a, __rw_j6).val)))
(declare-const __rw_j6@72@01 Int)
(push) ; 3
; [eval] true ==> __rw_j6 - 1 >= 0 && (__rw_j6 - 1 < i && (__rw_j6 - 1) % 2 == 0) ==> (unfolding acc(access(a, __rw_j6 - 1), write) in loc(a, __rw_j6).val) == old((unfolding acc(access(a, __rw_j6 - 1), write) in loc(a, __rw_j6).val))
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 28 | True | live]
; [else-branch: 28 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 28 | True]
; [eval] __rw_j6 - 1 >= 0 && (__rw_j6 - 1 < i && (__rw_j6 - 1) % 2 == 0) ==> (unfolding acc(access(a, __rw_j6 - 1), write) in loc(a, __rw_j6).val) == old((unfolding acc(access(a, __rw_j6 - 1), write) in loc(a, __rw_j6).val))
; [eval] __rw_j6 - 1 >= 0 && (__rw_j6 - 1 < i && (__rw_j6 - 1) % 2 == 0)
; [eval] __rw_j6 - 1 >= 0
; [eval] __rw_j6 - 1
(push) ; 6
; [then-branch: 29 | !(__rw_j6@72@01 - 1 >= 0) | live]
; [else-branch: 29 | __rw_j6@72@01 - 1 >= 0 | live]
(push) ; 7
; [then-branch: 29 | !(__rw_j6@72@01 - 1 >= 0)]
(assert (not (>= (- __rw_j6@72@01 1) 0)))
(pop) ; 7
(push) ; 7
; [else-branch: 29 | __rw_j6@72@01 - 1 >= 0]
(assert (>= (- __rw_j6@72@01 1) 0))
; [eval] __rw_j6 - 1 < i
; [eval] __rw_j6 - 1
(push) ; 8
; [then-branch: 30 | !(__rw_j6@72@01 - 1 < i@55@01) | live]
; [else-branch: 30 | __rw_j6@72@01 - 1 < i@55@01 | live]
(push) ; 9
; [then-branch: 30 | !(__rw_j6@72@01 - 1 < i@55@01)]
(assert (not (< (- __rw_j6@72@01 1) i@55@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 30 | __rw_j6@72@01 - 1 < i@55@01]
(assert (< (- __rw_j6@72@01 1) i@55@01))
; [eval] (__rw_j6 - 1) % 2 == 0
; [eval] (__rw_j6 - 1) % 2
; [eval] __rw_j6 - 1
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (< (- __rw_j6@72@01 1) i@55@01) (not (< (- __rw_j6@72@01 1) i@55@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= (- __rw_j6@72@01 1) 0)
  (and
    (>= (- __rw_j6@72@01 1) 0)
    (or (< (- __rw_j6@72@01 1) i@55@01) (not (< (- __rw_j6@72@01 1) i@55@01))))))
(assert (or (>= (- __rw_j6@72@01 1) 0) (not (>= (- __rw_j6@72@01 1) 0))))
(push) ; 6
; [then-branch: 31 | __rw_j6@72@01 - 1 >= 0 && __rw_j6@72@01 - 1 < i@55@01 && __rw_j6@72@01 - 1 % 2 == 0 | live]
; [else-branch: 31 | !(__rw_j6@72@01 - 1 >= 0 && __rw_j6@72@01 - 1 < i@55@01 && __rw_j6@72@01 - 1 % 2 == 0) | live]
(push) ; 7
; [then-branch: 31 | __rw_j6@72@01 - 1 >= 0 && __rw_j6@72@01 - 1 < i@55@01 && __rw_j6@72@01 - 1 % 2 == 0]
(assert (and
  (>= (- __rw_j6@72@01 1) 0)
  (and (< (- __rw_j6@72@01 1) i@55@01) (= (mod (- __rw_j6@72@01 1) 2) 0))))
; [eval] (unfolding acc(access(a, __rw_j6 - 1), write) in loc(a, __rw_j6).val) == old((unfolding acc(access(a, __rw_j6 - 1), write) in loc(a, __rw_j6).val))
; [eval] (unfolding acc(access(a, __rw_j6 - 1), write) in loc(a, __rw_j6).val)
; [eval] __rw_j6 - 1
(push) ; 8
; [eval] __rw_j6 - 1
; Precomputing data for removing quantified permissions
(define-fun pTaken@73@01 ((a IArray) (i Int) (__rw_j6@72@01 Int)) $Perm
  (ite
    (and (= a a@54@01) (= i (- __rw_j6@72@01 1)))
    ($Perm.min
      (ite
        (and
          (img@64@01 a i)
          (and
            (>= (inv@63@01 a i) 0)
            (and
              (< (inv@63@01 a i) (len<Int> a@54@01))
              (= (mod (inv@63@01 a i) 2) 0))))
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
(push) ; 9
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@64@01 a i)
          (and
            (>= (inv@63@01 a i) 0)
            (and
              (< (inv@63@01 a i) (len<Int> a@54@01))
              (= (mod (inv@63@01 a i) 2) 0))))
        $Perm.Write
        $Perm.No)
      (pTaken@73@01 a i __rw_j6@72@01))
    $Perm.No)
  
  :qid |quant-u-18232|))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@73@01 a i __rw_j6@72@01) $Perm.No)
  
  :qid |quant-u-18233|))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and (= a a@54@01) (= i (- __rw_j6@72@01 1)))
    (= (- $Perm.Write (pTaken@73@01 a i __rw_j6@72@01)) $Perm.No))
  
  :qid |quant-u-18234|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@64@01 a@54@01 (- __rw_j6@72@01 1))
    (and
      (>= (inv@63@01 a@54@01 (- __rw_j6@72@01 1)) 0)
      (and
        (< (inv@63@01 a@54@01 (- __rw_j6@72@01 1)) (len<Int> a@54@01))
        (= (mod (inv@63@01 a@54@01 (- __rw_j6@72@01 1)) 2) 0))))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))
        $Snap.unit))
    (=
      ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1))))
      ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@61@01))))) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1))))))))
(assert (access%trigger ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
  ($SortWrappers.IArrayTo$Snap a@54@01)
  ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))) a@54@01 (- __rw_j6@72@01 1)))
; [eval] i % 2 == 0
; [eval] i % 2
; [then-branch: 32 | __rw_j6@72@01 - 1 % 2 == 0 | live]
; [else-branch: 32 | __rw_j6@72@01 - 1 % 2 != 0 | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 32 | __rw_j6@72@01 - 1 % 2 == 0]
(assert (=
  ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1))))
  ($Snap.combine
    ($Snap.first ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))))
    ($Snap.second ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1))))))))
; [eval] loc(a, i)
(assert (not (= (loc<Ref> a@54@01 (- __rw_j6@72@01 1)) $Ref.null)))
; [eval] loc(a, i + 1)
; [eval] i + 1
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  (loc<Ref> a@54@01 (- __rw_j6@72@01 1))
  (loc<Ref> a@54@01 (+ (- __rw_j6@72@01 1) 1)))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (not (= (loc<Ref> a@54@01 (+ (- __rw_j6@72@01 1) 1)) $Ref.null)))
; [eval] loc(a, __rw_j6)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@54@01 (+ (- __rw_j6@72@01 1) 1)) (loc<Ref> a@54@01 __rw_j6@72@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(set-option :timeout 0)
(push) ; 9
; [else-branch: 32 | __rw_j6@72@01 - 1 % 2 != 0]
(assert (not (= (mod (- __rw_j6@72@01 1) 2) 0)))
(assert (=
  ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1))))
  $Snap.unit))
; [eval] loc(a, __rw_j6)
(check-sat)
; unsat
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (and
  (=>
    (and
      (img@64@01 a@54@01 (- __rw_j6@72@01 1))
      (and
        (>= (inv@63@01 a@54@01 (- __rw_j6@72@01 1)) 0)
        (and
          (< (inv@63@01 a@54@01 (- __rw_j6@72@01 1)) (len<Int> a@54@01))
          (= (mod (inv@63@01 a@54@01 (- __rw_j6@72@01 1)) 2) 0))))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))
          $Snap.unit))
      (=
        ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1))))
        ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@61@01))))) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))))))
  (access%trigger ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))) a@54@01 (- __rw_j6@72@01 1))))
(assert (=>
  (= (mod (- __rw_j6@72@01 1) 2) 0)
  (and
    (=
      ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1))))
      ($Snap.combine
        ($Snap.first ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))))
        ($Snap.second ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))))))
    (not (= (loc<Ref> a@54@01 (- __rw_j6@72@01 1)) $Ref.null))
    (not (= (loc<Ref> a@54@01 (+ (- __rw_j6@72@01 1) 1)) $Ref.null)))))
; [eval] old((unfolding acc(access(a, __rw_j6 - 1), write) in loc(a, __rw_j6).val))
; [eval] (unfolding acc(access(a, __rw_j6 - 1), write) in loc(a, __rw_j6).val)
; [eval] __rw_j6 - 1
(push) ; 8
; [eval] __rw_j6 - 1
; Precomputing data for removing quantified permissions
(define-fun pTaken@74@01 ((a IArray) (i Int) (__rw_j6@72@01 Int)) $Perm
  (ite
    (and (= a a@54@01) (= i (- __rw_j6@72@01 1)))
    ($Perm.min
      (ite
        (and
          (img@60@01 a i)
          (and
            (>= (inv@59@01 a i) 0)
            (and
              (< (inv@59@01 a i) (len<Int> a@54@01))
              (= (mod (inv@59@01 a i) 2) 0))))
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
(push) ; 9
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@60@01 a i)
          (and
            (>= (inv@59@01 a i) 0)
            (and
              (< (inv@59@01 a i) (len<Int> a@54@01))
              (= (mod (inv@59@01 a i) 2) 0))))
        $Perm.Write
        $Perm.No)
      (pTaken@74@01 a i __rw_j6@72@01))
    $Perm.No)
  
  :qid |quant-u-18236|))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@74@01 a i __rw_j6@72@01) $Perm.No)
  
  :qid |quant-u-18237|))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and (= a a@54@01) (= i (- __rw_j6@72@01 1)))
    (= (- $Perm.Write (pTaken@74@01 a i __rw_j6@72@01)) $Perm.No))
  
  :qid |quant-u-18238|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@60@01 a@54@01 (- __rw_j6@72@01 1))
    (and
      (>= (inv@59@01 a@54@01 (- __rw_j6@72@01 1)) 0)
      (and
        (< (inv@59@01 a@54@01 (- __rw_j6@72@01 1)) (len<Int> a@54@01))
        (= (mod (inv@59@01 a@54@01 (- __rw_j6@72@01 1)) 2) 0))))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))
        $Snap.unit))
    (=
      ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1))))
      ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01))))) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1))))))))
(assert (access%trigger ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
  ($SortWrappers.IArrayTo$Snap a@54@01)
  ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))) a@54@01 (- __rw_j6@72@01 1)))
; [eval] i % 2 == 0
; [eval] i % 2
; [then-branch: 33 | __rw_j6@72@01 - 1 % 2 == 0 | live]
; [else-branch: 33 | __rw_j6@72@01 - 1 % 2 != 0 | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 33 | __rw_j6@72@01 - 1 % 2 == 0]
(assert (=
  ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1))))
  ($Snap.combine
    ($Snap.first ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))))
    ($Snap.second ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1))))))))
; [eval] loc(a, i)
(assert (not (= (loc<Ref> a@54@01 (- __rw_j6@72@01 1)) $Ref.null)))
; [eval] loc(a, i + 1)
; [eval] i + 1
(push) ; 10
(set-option :timeout 10)
(assert (not (=
  (loc<Ref> a@54@01 (- __rw_j6@72@01 1))
  (loc<Ref> a@54@01 (+ (- __rw_j6@72@01 1) 1)))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(assert (not (= (loc<Ref> a@54@01 (+ (- __rw_j6@72@01 1) 1)) $Ref.null)))
; [eval] loc(a, __rw_j6)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@54@01 (+ (- __rw_j6@72@01 1) 1)) (loc<Ref> a@54@01 __rw_j6@72@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(set-option :timeout 0)
(push) ; 9
; [else-branch: 33 | __rw_j6@72@01 - 1 % 2 != 0]
(assert (not (= (mod (- __rw_j6@72@01 1) 2) 0)))
(assert (=
  ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1))))
  $Snap.unit))
; [eval] loc(a, __rw_j6)
(check-sat)
; unsat
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (and
  (=>
    (and
      (img@60@01 a@54@01 (- __rw_j6@72@01 1))
      (and
        (>= (inv@59@01 a@54@01 (- __rw_j6@72@01 1)) 0)
        (and
          (< (inv@59@01 a@54@01 (- __rw_j6@72@01 1)) (len<Int> a@54@01))
          (= (mod (inv@59@01 a@54@01 (- __rw_j6@72@01 1)) 2) 0))))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))
          $Snap.unit))
      (=
        ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1))))
        ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01))))) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))))))
  (access%trigger ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))) a@54@01 (- __rw_j6@72@01 1))))
(assert (=>
  (= (mod (- __rw_j6@72@01 1) 2) 0)
  (and
    (=
      ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1))))
      ($Snap.combine
        ($Snap.first ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))))
        ($Snap.second ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))))))
    (not (= (loc<Ref> a@54@01 (- __rw_j6@72@01 1)) $Ref.null))
    (not (= (loc<Ref> a@54@01 (+ (- __rw_j6@72@01 1) 1)) $Ref.null)))))
(pop) ; 7
(push) ; 7
; [else-branch: 31 | !(__rw_j6@72@01 - 1 >= 0 && __rw_j6@72@01 - 1 < i@55@01 && __rw_j6@72@01 - 1 % 2 == 0)]
(assert (not
  (and
    (>= (- __rw_j6@72@01 1) 0)
    (and (< (- __rw_j6@72@01 1) i@55@01) (= (mod (- __rw_j6@72@01 1) 2) 0)))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (and
    (>= (- __rw_j6@72@01 1) 0)
    (and (< (- __rw_j6@72@01 1) i@55@01) (= (mod (- __rw_j6@72@01 1) 2) 0)))
  (and
    (>= (- __rw_j6@72@01 1) 0)
    (< (- __rw_j6@72@01 1) i@55@01)
    (= (mod (- __rw_j6@72@01 1) 2) 0)
    (=>
      (and
        (img@64@01 a@54@01 (- __rw_j6@72@01 1))
        (and
          (>= (inv@63@01 a@54@01 (- __rw_j6@72@01 1)) 0)
          (and
            (< (inv@63@01 a@54@01 (- __rw_j6@72@01 1)) (len<Int> a@54@01))
            (= (mod (inv@63@01 a@54@01 (- __rw_j6@72@01 1)) 2) 0))))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))
            $Snap.unit))
        (=
          ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1))))
          ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@61@01))))) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))))))
    (access%trigger ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))) a@54@01 (-
      __rw_j6@72@01
      1))
    (=>
      (= (mod (- __rw_j6@72@01 1) 2) 0)
      (and
        (=
          ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1))))
          ($Snap.combine
            ($Snap.first ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))))
            ($Snap.second ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))))))
        (not (= (loc<Ref> a@54@01 (- __rw_j6@72@01 1)) $Ref.null))
        (not (= (loc<Ref> a@54@01 (+ (- __rw_j6@72@01 1) 1)) $Ref.null))))
    (=>
      (and
        (img@60@01 a@54@01 (- __rw_j6@72@01 1))
        (and
          (>= (inv@59@01 a@54@01 (- __rw_j6@72@01 1)) 0)
          (and
            (< (inv@59@01 a@54@01 (- __rw_j6@72@01 1)) (len<Int> a@54@01))
            (= (mod (inv@59@01 a@54@01 (- __rw_j6@72@01 1)) 2) 0))))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))
            $Snap.unit))
        (=
          ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1))))
          ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01))))) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))))))
    (access%trigger ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))) a@54@01 (-
      __rw_j6@72@01
      1))
    (=>
      (= (mod (- __rw_j6@72@01 1) 2) 0)
      (and
        (=
          ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1))))
          ($Snap.combine
            ($Snap.first ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))))
            ($Snap.second ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))))))
        (not (= (loc<Ref> a@54@01 (- __rw_j6@72@01 1)) $Ref.null))
        (not (= (loc<Ref> a@54@01 (+ (- __rw_j6@72@01 1) 1)) $Ref.null)))))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= (- __rw_j6@72@01 1) 0)
      (and (< (- __rw_j6@72@01 1) i@55@01) (= (mod (- __rw_j6@72@01 1) 2) 0))))
  (and
    (>= (- __rw_j6@72@01 1) 0)
    (and (< (- __rw_j6@72@01 1) i@55@01) (= (mod (- __rw_j6@72@01 1) 2) 0)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (and
  (=>
    (>= (- __rw_j6@72@01 1) 0)
    (and
      (>= (- __rw_j6@72@01 1) 0)
      (or (< (- __rw_j6@72@01 1) i@55@01) (not (< (- __rw_j6@72@01 1) i@55@01)))))
  (or (>= (- __rw_j6@72@01 1) 0) (not (>= (- __rw_j6@72@01 1) 0)))
  (=>
    (and
      (>= (- __rw_j6@72@01 1) 0)
      (and (< (- __rw_j6@72@01 1) i@55@01) (= (mod (- __rw_j6@72@01 1) 2) 0)))
    (and
      (>= (- __rw_j6@72@01 1) 0)
      (< (- __rw_j6@72@01 1) i@55@01)
      (= (mod (- __rw_j6@72@01 1) 2) 0)
      (=>
        (and
          (img@64@01 a@54@01 (- __rw_j6@72@01 1))
          (and
            (>= (inv@63@01 a@54@01 (- __rw_j6@72@01 1)) 0)
            (and
              (< (inv@63@01 a@54@01 (- __rw_j6@72@01 1)) (len<Int> a@54@01))
              (= (mod (inv@63@01 a@54@01 (- __rw_j6@72@01 1)) 2) 0))))
        (and
          (not
            (=
              ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))
              $Snap.unit))
          (=
            ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1))))
            ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@61@01))))) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))))))
      (access%trigger ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))) a@54@01 (-
        __rw_j6@72@01
        1))
      (=>
        (= (mod (- __rw_j6@72@01 1) 2) 0)
        (and
          (=
            ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1))))
            ($Snap.combine
              ($Snap.first ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))))
              ($Snap.second ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))))))
          (not (= (loc<Ref> a@54@01 (- __rw_j6@72@01 1)) $Ref.null))
          (not (= (loc<Ref> a@54@01 (+ (- __rw_j6@72@01 1) 1)) $Ref.null))))
      (=>
        (and
          (img@60@01 a@54@01 (- __rw_j6@72@01 1))
          (and
            (>= (inv@59@01 a@54@01 (- __rw_j6@72@01 1)) 0)
            (and
              (< (inv@59@01 a@54@01 (- __rw_j6@72@01 1)) (len<Int> a@54@01))
              (= (mod (inv@59@01 a@54@01 (- __rw_j6@72@01 1)) 2) 0))))
        (and
          (not
            (=
              ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))
              $Snap.unit))
          (=
            ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1))))
            ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01))))) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))))))
      (access%trigger ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))) a@54@01 (-
        __rw_j6@72@01
        1))
      (=>
        (= (mod (- __rw_j6@72@01 1) 2) 0)
        (and
          (=
            ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1))))
            ($Snap.combine
              ($Snap.first ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))))
              ($Snap.second ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))))))
          (not (= (loc<Ref> a@54@01 (- __rw_j6@72@01 1)) $Ref.null))
          (not (= (loc<Ref> a@54@01 (+ (- __rw_j6@72@01 1) 1)) $Ref.null))))))
  (or
    (not
      (and
        (>= (- __rw_j6@72@01 1) 0)
        (and (< (- __rw_j6@72@01 1) i@55@01) (= (mod (- __rw_j6@72@01 1) 2) 0))))
    (and
      (>= (- __rw_j6@72@01 1) 0)
      (and (< (- __rw_j6@72@01 1) i@55@01) (= (mod (- __rw_j6@72@01 1) 2) 0))))))
; [eval] old(loc(a, __rw_j6))
; [eval] loc(a, __rw_j6)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((__rw_j6@72@01 Int)) (!
  (and
    (=>
      (>= (- __rw_j6@72@01 1) 0)
      (and
        (>= (- __rw_j6@72@01 1) 0)
        (or
          (< (- __rw_j6@72@01 1) i@55@01)
          (not (< (- __rw_j6@72@01 1) i@55@01)))))
    (or (>= (- __rw_j6@72@01 1) 0) (not (>= (- __rw_j6@72@01 1) 0)))
    (=>
      (and
        (>= (- __rw_j6@72@01 1) 0)
        (and (< (- __rw_j6@72@01 1) i@55@01) (= (mod (- __rw_j6@72@01 1) 2) 0)))
      (and
        (>= (- __rw_j6@72@01 1) 0)
        (< (- __rw_j6@72@01 1) i@55@01)
        (= (mod (- __rw_j6@72@01 1) 2) 0)
        (=>
          (and
            (img@64@01 a@54@01 (- __rw_j6@72@01 1))
            (and
              (>= (inv@63@01 a@54@01 (- __rw_j6@72@01 1)) 0)
              (and
                (< (inv@63@01 a@54@01 (- __rw_j6@72@01 1)) (len<Int> a@54@01))
                (= (mod (inv@63@01 a@54@01 (- __rw_j6@72@01 1)) 2) 0))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))
                $Snap.unit))
            (=
              ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1))))
              ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@61@01))))) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))))))
        (access%trigger ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))) a@54@01 (-
          __rw_j6@72@01
          1))
        (=>
          (= (mod (- __rw_j6@72@01 1) 2) 0)
          (and
            (=
              ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1))))
              ($Snap.combine
                ($Snap.first ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))))
                ($Snap.second ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))))))
            (not (= (loc<Ref> a@54@01 (- __rw_j6@72@01 1)) $Ref.null))
            (not (= (loc<Ref> a@54@01 (+ (- __rw_j6@72@01 1) 1)) $Ref.null))))
        (=>
          (and
            (img@60@01 a@54@01 (- __rw_j6@72@01 1))
            (and
              (>= (inv@59@01 a@54@01 (- __rw_j6@72@01 1)) 0)
              (and
                (< (inv@59@01 a@54@01 (- __rw_j6@72@01 1)) (len<Int> a@54@01))
                (= (mod (inv@59@01 a@54@01 (- __rw_j6@72@01 1)) 2) 0))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))
                $Snap.unit))
            (=
              ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1))))
              ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01))))) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))))))
        (access%trigger ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))) a@54@01 (-
          __rw_j6@72@01
          1))
        (=>
          (= (mod (- __rw_j6@72@01 1) 2) 0)
          (and
            (=
              ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1))))
              ($Snap.combine
                ($Snap.first ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))))
                ($Snap.second ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1)))))))
            (not (= (loc<Ref> a@54@01 (- __rw_j6@72@01 1)) $Ref.null))
            (not (= (loc<Ref> a@54@01 (+ (- __rw_j6@72@01 1) 1)) $Ref.null))))))
    (or
      (not
        (and
          (>= (- __rw_j6@72@01 1) 0)
          (and (< (- __rw_j6@72@01 1) i@55@01) (= (mod (- __rw_j6@72@01 1) 2) 0))))
      (and
        (>= (- __rw_j6@72@01 1) 0)
        (and (< (- __rw_j6@72@01 1) i@55@01) (= (mod (- __rw_j6@72@01 1) 2) 0)))))
  :pattern ((loc<Ref> a@54@01 __rw_j6@72@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/issues/block_array.vpr@51@9@51@161-aux|)))
(assert (forall ((__rw_j6@72@01 Int)) (!
  (=>
    (and
      (>= (- __rw_j6@72@01 1) 0)
      (and (< (- __rw_j6@72@01 1) i@55@01) (= (mod (- __rw_j6@72@01 1) 2) 0)))
    (=
      ($SortWrappers.$SnapToInt ($Snap.second ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1))))))
      ($SortWrappers.$SnapToInt ($Snap.second ($PSF.lookup_access (as sm@70@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap (- __rw_j6@72@01 1))))))))
  :pattern ((loc<Ref> a@54@01 __rw_j6@72@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/issues/block_array.vpr@51@9@51@161|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@61@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@61@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@61@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@61@01)))))))
  $Snap.unit))
; [eval] (unfolding acc(access(a, i), write) in loc(a, i).val == newVal)
(push) ; 3
; Precomputing data for removing quantified permissions
(define-fun pTaken@75@01 ((a IArray) (i Int)) $Perm
  (ite
    (and (= a a@54@01) (= i i@55@01))
    ($Perm.min
      (ite
        (and
          (img@64@01 a i)
          (and
            (>= (inv@63@01 a i) 0)
            (and
              (< (inv@63@01 a i) (len<Int> a@54@01))
              (= (mod (inv@63@01 a i) 2) 0))))
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
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@64@01 a i)
          (and
            (>= (inv@63@01 a i) 0)
            (and
              (< (inv@63@01 a i) (len<Int> a@54@01))
              (= (mod (inv@63@01 a i) 2) 0))))
        $Perm.Write
        $Perm.No)
      (pTaken@75@01 a i))
    $Perm.No)
  
  :qid |quant-u-18240|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@75@01 a i) $Perm.No)
  
  :qid |quant-u-18241|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and (= a a@54@01) (= i i@55@01))
    (= (- $Perm.Write (pTaken@75@01 a i)) $Perm.No))
  
  :qid |quant-u-18242|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@64@01 a@54@01 i@55@01)
    (and
      (>= (inv@63@01 a@54@01 i@55@01) 0)
      (and
        (< (inv@63@01 a@54@01 i@55@01) (len<Int> a@54@01))
        (= (mod (inv@63@01 a@54@01 i@55@01) 2) 0))))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap i@55@01))
        $Snap.unit))
    (=
      ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap i@55@01)))
      ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@61@01))))) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap i@55@01)))))))
(assert (access%trigger ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
  ($SortWrappers.IArrayTo$Snap a@54@01)
  ($SortWrappers.IntTo$Snap i@55@01))) a@54@01 i@55@01))
; [eval] i % 2 == 0
; [eval] i % 2
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= (mod i@55@01 2) 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 34 | i@55@01 % 2 == 0 | live]
; [else-branch: 34 | i@55@01 % 2 != 0 | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 34 | i@55@01 % 2 == 0]
(assert (=
  ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap i@55@01)))
  ($Snap.combine
    ($Snap.first ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap i@55@01))))
    ($Snap.second ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap i@55@01)))))))
; [eval] loc(a, i)
(assert (not (= (loc<Ref> a@54@01 i@55@01) $Ref.null)))
; [eval] loc(a, i + 1)
; [eval] i + 1
(push) ; 5
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@54@01 i@55@01) (loc<Ref> a@54@01 (+ i@55@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (not (= (loc<Ref> a@54@01 (+ i@55@01 1)) $Ref.null)))
; [eval] loc(a, i).val == newVal
; [eval] loc(a, i)
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (and
  (=>
    (and
      (img@64@01 a@54@01 i@55@01)
      (and
        (>= (inv@63@01 a@54@01 i@55@01) 0)
        (and
          (< (inv@63@01 a@54@01 i@55@01) (len<Int> a@54@01))
          (= (mod (inv@63@01 a@54@01 i@55@01) 2) 0))))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap i@55@01))
          $Snap.unit))
      (=
        ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap i@55@01)))
        ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@61@01))))) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap i@55@01))))))
  (access%trigger ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap i@55@01))) a@54@01 i@55@01)))
(assert (=>
  (= (mod i@55@01 2) 0)
  (and
    (=
      ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap i@55@01)))
      ($Snap.combine
        ($Snap.first ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap i@55@01))))
        ($Snap.second ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap i@55@01))))))
    (not (= (loc<Ref> a@54@01 i@55@01) $Ref.null))
    (not (= (loc<Ref> a@54@01 (+ i@55@01 1)) $Ref.null)))))
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap i@55@01)))))
  newVal@56@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@61@01)))))))
  $Snap.unit))
; [eval] (unfolding acc(access(a, i), write) in loc(a, i + 1).val == newVal)
(set-option :timeout 0)
(push) ; 3
; Precomputing data for removing quantified permissions
(define-fun pTaken@76@01 ((a IArray) (i Int)) $Perm
  (ite
    (and (= a a@54@01) (= i i@55@01))
    ($Perm.min
      (ite
        (and
          (img@64@01 a i)
          (and
            (>= (inv@63@01 a i) 0)
            (and
              (< (inv@63@01 a i) (len<Int> a@54@01))
              (= (mod (inv@63@01 a i) 2) 0))))
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
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@64@01 a i)
          (and
            (>= (inv@63@01 a i) 0)
            (and
              (< (inv@63@01 a i) (len<Int> a@54@01))
              (= (mod (inv@63@01 a i) 2) 0))))
        $Perm.Write
        $Perm.No)
      (pTaken@76@01 a i))
    $Perm.No)
  
  :qid |quant-u-18244|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@76@01 a i) $Perm.No)
  
  :qid |quant-u-18245|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and (= a a@54@01) (= i i@55@01))
    (= (- $Perm.Write (pTaken@76@01 a i)) $Perm.No))
  
  :qid |quant-u-18246|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map values (instantiated)
; [eval] i % 2 == 0
; [eval] i % 2
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= (mod i@55@01 2) 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 35 | i@55@01 % 2 == 0 | live]
; [else-branch: 35 | i@55@01 % 2 != 0 | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 35 | i@55@01 % 2 == 0]
(assert (=
  ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap i@55@01)))
  ($Snap.combine
    ($Snap.first ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap i@55@01))))
    ($Snap.second ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap i@55@01)))))))
; [eval] loc(a, i)
(assert (not (= (loc<Ref> a@54@01 i@55@01) $Ref.null)))
; [eval] loc(a, i + 1)
; [eval] i + 1
(push) ; 5
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@54@01 i@55@01) (loc<Ref> a@54@01 (+ i@55@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (not (= (loc<Ref> a@54@01 (+ i@55@01 1)) $Ref.null)))
; [eval] loc(a, i + 1).val == newVal
; [eval] loc(a, i + 1)
; [eval] i + 1
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.second ($PSF.lookup_access (as sm@67@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap i@55@01)))))
  newVal@56@01))
(pop) ; 2
(set-option :timeout 0)
(push) ; 2
; [exec]
; unfold acc(access(a, i), write)
; Precomputing data for removing quantified permissions
(define-fun pTaken@77@01 ((a IArray) (i Int)) $Perm
  (ite
    (and (= a a@54@01) (= i i@55@01))
    ($Perm.min
      (ite
        (and
          (img@60@01 a i)
          (and
            (>= (inv@59@01 a i) 0)
            (and
              (< (inv@59@01 a i) (len<Int> a@54@01))
              (= (mod (inv@59@01 a i) 2) 0))))
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
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@60@01 a i)
          (and
            (>= (inv@59@01 a i) 0)
            (and
              (< (inv@59@01 a i) (len<Int> a@54@01))
              (= (mod (inv@59@01 a i) 2) 0))))
        $Perm.Write
        $Perm.No)
      (pTaken@77@01 a i))
    $Perm.No)
  
  :qid |quant-u-18248|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@77@01 a i) $Perm.No)
  
  :qid |quant-u-18249|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and (= a a@54@01) (= i i@55@01))
    (= (- $Perm.Write (pTaken@77@01 a i)) $Perm.No))
  
  :qid |quant-u-18250|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@78@01 $PSF<access>)
(declare-const s@79@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@60@01 a@54@01 i@55@01)
    (and
      (>= (inv@59@01 a@54@01 i@55@01) 0)
      (and
        (< (inv@59@01 a@54@01 i@55@01) (len<Int> a@54@01))
        (= (mod (inv@59@01 a@54@01 i@55@01) 2) 0))))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap i@55@01))
        $Snap.unit))
    (=
      ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap i@55@01)))
      ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01))))) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap i@55@01)))))))
; [eval] i % 2 == 0
; [eval] i % 2
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= (mod i@55@01 2) 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 36 | i@55@01 % 2 == 0 | live]
; [else-branch: 36 | i@55@01 % 2 != 0 | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 36 | i@55@01 % 2 == 0]
(assert (=
  ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap i@55@01)))
  ($Snap.combine
    ($Snap.first ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap i@55@01))))
    ($Snap.second ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap i@55@01)))))))
; [eval] loc(a, i)
(assert (not (= (loc<Ref> a@54@01 i@55@01) $Ref.null)))
; [eval] loc(a, i + 1)
; [eval] i + 1
(push) ; 4
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@54@01 i@55@01) (loc<Ref> a@54@01 (+ i@55@01 1)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= (loc<Ref> a@54@01 (+ i@55@01 1)) $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (access%trigger ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
  ($SortWrappers.IArrayTo$Snap a@54@01)
  ($SortWrappers.IntTo$Snap i@55@01))) a@54@01 i@55@01))
; [exec]
; loc(a, i).val := newVal
; [eval] loc(a, i)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@54@01 (+ i@55@01 1)) (loc<Ref> a@54@01 i@55@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; loc(a, i + 1).val := newVal
; [eval] loc(a, i + 1)
; [eval] i + 1
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@54@01 i@55@01) (loc<Ref> a@54@01 (+ i@55@01 1)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; fold acc(access(a, i), write)
; [eval] i % 2 == 0
; [eval] i % 2
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= (mod i@55@01 2) 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 37 | i@55@01 % 2 == 0 | live]
; [else-branch: 37 | i@55@01 % 2 != 0 | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 37 | i@55@01 % 2 == 0]
; [eval] loc(a, i)
; [eval] loc(a, i + 1)
; [eval] i + 1
(assert (access%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap newVal@56@01)
  ($SortWrappers.IntTo$Snap newVal@56@01)) a@54@01 i@55@01))
(declare-const sm@80@01 $PSF<access>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_access (as sm@80@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap i@55@01)))
  ($Snap.combine
    ($SortWrappers.IntTo$Snap newVal@56@01)
    ($SortWrappers.IntTo$Snap newVal@56@01))))
; [eval] i + 2 < len(a)
; [eval] i + 2
; [eval] len(a)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (< (+ i@55@01 2) (len<Int> a@54@01)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< (+ i@55@01 2) (len<Int> a@54@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 38 | i@55@01 + 2 < len[Int](a@54@01) | live]
; [else-branch: 38 | !(i@55@01 + 2 < len[Int](a@54@01)) | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 38 | i@55@01 + 2 < len[Int](a@54@01)]
(assert (< (+ i@55@01 2) (len<Int> a@54@01)))
; [exec]
; setVal(a, i + 2, newVal)
; [eval] i + 2
; [eval] i >= 0
(push) ; 6
(assert (not (>= (+ i@55@01 2) 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (>= (+ i@55@01 2) 0))
; [eval] i < len(a)
; [eval] len(a)
; [eval] i % 2 == 0
; [eval] i % 2
(push) ; 6
(assert (not (= (mod (+ i@55@01 2) 2) 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (= (mod (+ i@55@01 2) 2) 0))
; [eval] len(a) % 2 == 0
; [eval] len(a) % 2
; [eval] len(a)
(declare-const j@81@01 Int)
(push) ; 6
; [eval] j >= 0 && (j < len(a) && j % 2 == 0)
; [eval] j >= 0
(push) ; 7
; [then-branch: 39 | !(j@81@01 >= 0) | live]
; [else-branch: 39 | j@81@01 >= 0 | live]
(push) ; 8
; [then-branch: 39 | !(j@81@01 >= 0)]
(assert (not (>= j@81@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 39 | j@81@01 >= 0]
(assert (>= j@81@01 0))
; [eval] j < len(a)
; [eval] len(a)
(push) ; 9
; [then-branch: 40 | !(j@81@01 < len[Int](a@54@01)) | live]
; [else-branch: 40 | j@81@01 < len[Int](a@54@01) | live]
(push) ; 10
; [then-branch: 40 | !(j@81@01 < len[Int](a@54@01))]
(assert (not (< j@81@01 (len<Int> a@54@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 40 | j@81@01 < len[Int](a@54@01)]
(assert (< j@81@01 (len<Int> a@54@01)))
; [eval] j % 2 == 0
; [eval] j % 2
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< j@81@01 (len<Int> a@54@01)) (not (< j@81@01 (len<Int> a@54@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@81@01 0)
  (and
    (>= j@81@01 0)
    (or (< j@81@01 (len<Int> a@54@01)) (not (< j@81@01 (len<Int> a@54@01)))))))
(assert (or (>= j@81@01 0) (not (>= j@81@01 0))))
(assert (and (>= j@81@01 0) (and (< j@81@01 (len<Int> a@54@01)) (= (mod j@81@01 2) 0))))
(pop) ; 6
(declare-fun inv@82@01 (IArray Int) Int)
(declare-fun img@83@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@81@01 Int)) (!
  (=>
    (and
      (>= j@81@01 0)
      (and (< j@81@01 (len<Int> a@54@01)) (= (mod j@81@01 2) 0)))
    (and
      (=>
        (>= j@81@01 0)
        (and
          (>= j@81@01 0)
          (or
            (< j@81@01 (len<Int> a@54@01))
            (not (< j@81@01 (len<Int> a@54@01))))))
      (or (>= j@81@01 0) (not (>= j@81@01 0)))))
  :pattern ((inv@82@01 a@54@01 j@81@01))
  :pattern ((img@83@01 a@54@01 j@81@01))
  :qid |access-aux|)))
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((j1@81@01 Int) (j2@81@01 Int)) (!
  (=>
    (and
      (and
        (>= j1@81@01 0)
        (and (< j1@81@01 (len<Int> a@54@01)) (= (mod j1@81@01 2) 0)))
      (and
        (>= j2@81@01 0)
        (and (< j2@81@01 (len<Int> a@54@01)) (= (mod j2@81@01 2) 0)))
      (= j1@81@01 j2@81@01))
    (= j1@81@01 j2@81@01))
  
  :qid |access-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@81@01 Int)) (!
  (=>
    (and
      (>= j@81@01 0)
      (and (< j@81@01 (len<Int> a@54@01)) (= (mod j@81@01 2) 0)))
    (and (= (inv@82@01 a@54@01 j@81@01) j@81@01) (img@83@01 a@54@01 j@81@01)))
  :pattern ((inv@82@01 a@54@01 j@81@01))
  :pattern ((img@83@01 a@54@01 j@81@01))
  :qid |access-invOfFct|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (img@83@01 a i)
      (and
        (>= (inv@82@01 a i) 0)
        (and
          (< (inv@82@01 a i) (len<Int> a@54@01))
          (= (mod (inv@82@01 a i) 2) 0))))
    (and (= a@54@01 a) (= (inv@82@01 a i) i)))
  :pattern ((inv@82@01 a i))
  :qid |access-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@84@01 ((a IArray) (i Int)) $Perm
  (ite
    (and
      (and
        (>= (inv@82@01 a i) 0)
        (and
          (< (inv@82@01 a i) (len<Int> a@54@01))
          (= (mod (inv@82@01 a i) 2) 0)))
      (img@83@01 a i)
      (and (= a a@54@01) (= i (inv@82@01 a i))))
    ($Perm.min
      (ite
        (and
          (img@60@01 a i)
          (and
            (>= (inv@59@01 a i) 0)
            (and
              (< (inv@59@01 a i) (len<Int> a@54@01))
              (= (mod (inv@59@01 a i) 2) 0))))
        (- $Perm.Write (pTaken@77@01 a i))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@85@01 ((a IArray) (i Int)) $Perm
  (ite
    (and
      (and
        (>= (inv@82@01 a i) 0)
        (and
          (< (inv@82@01 a i) (len<Int> a@54@01))
          (= (mod (inv@82@01 a i) 2) 0)))
      (img@83@01 a i)
      (and (= a a@54@01) (= i (inv@82@01 a i))))
    ($Perm.min
      (ite (and (= a a@54@01) (= i i@55@01)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@84@01 a i)))
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
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@60@01 a i)
          (and
            (>= (inv@59@01 a i) 0)
            (and
              (< (inv@59@01 a i) (len<Int> a@54@01))
              (= (mod (inv@59@01 a i) 2) 0))))
        (- $Perm.Write (pTaken@77@01 a i))
        $Perm.No)
      (pTaken@84@01 a i))
    $Perm.No)
  
  :qid |quant-u-18253|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (and
        (>= (inv@82@01 a i) 0)
        (and
          (< (inv@82@01 a i) (len<Int> a@54@01))
          (= (mod (inv@82@01 a i) 2) 0)))
      (img@83@01 a i)
      (and (= a a@54@01) (= i (inv@82@01 a i))))
    (= (- $Perm.Write (pTaken@84@01 a i)) $Perm.No))
  
  :qid |quant-u-18254|))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@85@01 a@54@01 i@55@01)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (and
        (>= (inv@82@01 a i) 0)
        (and
          (< (inv@82@01 a i) (len<Int> a@54@01))
          (= (mod (inv@82@01 a i) 2) 0)))
      (img@83@01 a i)
      (and (= a a@54@01) (= i (inv@82@01 a i))))
    (= (- (- $Perm.Write (pTaken@84@01 a i)) (pTaken@85@01 a i)) $Perm.No))
  
  :qid |quant-u-18256|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const $t@86@01 $Snap)
(assert (= $t@86@01 ($Snap.combine ($Snap.first $t@86@01) ($Snap.second $t@86@01))))
(assert (= ($Snap.first $t@86@01) $Snap.unit))
; [eval] i >= 0
(assert (=
  ($Snap.second $t@86@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@86@01))
    ($Snap.second ($Snap.second $t@86@01)))))
(assert (= ($Snap.first ($Snap.second $t@86@01)) $Snap.unit))
; [eval] i < len(a)
; [eval] len(a)
(assert (=
  ($Snap.second ($Snap.second $t@86@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@86@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@86@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@86@01))) $Snap.unit))
; [eval] len(a) % 2 == old(len(a) % 2)
; [eval] len(a) % 2
; [eval] len(a)
; [eval] old(len(a) % 2)
; [eval] len(a) % 2
; [eval] len(a)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@86@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@86@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@86@01)))))))
(declare-const j@87@01 Int)
(set-option :timeout 0)
(push) ; 6
; [eval] j >= 0 && (j < len(a) && j % 2 == 0)
; [eval] j >= 0
(push) ; 7
; [then-branch: 41 | !(j@87@01 >= 0) | live]
; [else-branch: 41 | j@87@01 >= 0 | live]
(push) ; 8
; [then-branch: 41 | !(j@87@01 >= 0)]
(assert (not (>= j@87@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 41 | j@87@01 >= 0]
(assert (>= j@87@01 0))
; [eval] j < len(a)
; [eval] len(a)
(push) ; 9
; [then-branch: 42 | !(j@87@01 < len[Int](a@54@01)) | live]
; [else-branch: 42 | j@87@01 < len[Int](a@54@01) | live]
(push) ; 10
; [then-branch: 42 | !(j@87@01 < len[Int](a@54@01))]
(assert (not (< j@87@01 (len<Int> a@54@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 42 | j@87@01 < len[Int](a@54@01)]
(assert (< j@87@01 (len<Int> a@54@01)))
; [eval] j % 2 == 0
; [eval] j % 2
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< j@87@01 (len<Int> a@54@01)) (not (< j@87@01 (len<Int> a@54@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@87@01 0)
  (and
    (>= j@87@01 0)
    (or (< j@87@01 (len<Int> a@54@01)) (not (< j@87@01 (len<Int> a@54@01)))))))
(assert (or (>= j@87@01 0) (not (>= j@87@01 0))))
(assert (and (>= j@87@01 0) (and (< j@87@01 (len<Int> a@54@01)) (= (mod j@87@01 2) 0))))
(pop) ; 6
(declare-fun inv@88@01 (IArray Int) Int)
(declare-fun img@89@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@87@01 Int)) (!
  (=>
    (and
      (>= j@87@01 0)
      (and (< j@87@01 (len<Int> a@54@01)) (= (mod j@87@01 2) 0)))
    (and
      (=>
        (>= j@87@01 0)
        (and
          (>= j@87@01 0)
          (or
            (< j@87@01 (len<Int> a@54@01))
            (not (< j@87@01 (len<Int> a@54@01))))))
      (or (>= j@87@01 0) (not (>= j@87@01 0)))))
  :pattern ((inv@88@01 a@54@01 j@87@01))
  :pattern ((img@89@01 a@54@01 j@87@01))
  :qid |access-aux|)))
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((j1@87@01 Int) (j2@87@01 Int)) (!
  (=>
    (and
      (and
        (>= j1@87@01 0)
        (and (< j1@87@01 (len<Int> a@54@01)) (= (mod j1@87@01 2) 0)))
      (and
        (>= j2@87@01 0)
        (and (< j2@87@01 (len<Int> a@54@01)) (= (mod j2@87@01 2) 0)))
      (= j1@87@01 j2@87@01))
    (= j1@87@01 j2@87@01))
  
  :qid |access-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@87@01 Int)) (!
  (=>
    (and
      (>= j@87@01 0)
      (and (< j@87@01 (len<Int> a@54@01)) (= (mod j@87@01 2) 0)))
    (and (= (inv@88@01 a@54@01 j@87@01) j@87@01) (img@89@01 a@54@01 j@87@01)))
  :pattern ((inv@88@01 a@54@01 j@87@01))
  :pattern ((img@89@01 a@54@01 j@87@01))
  :qid |quant-u-18258|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (img@89@01 a i)
      (and
        (>= (inv@88@01 a i) 0)
        (and
          (< (inv@88@01 a i) (len<Int> a@54@01))
          (= (mod (inv@88@01 a i) 2) 0))))
    (and (= a@54@01 a) (= (inv@88@01 a i) i)))
  :pattern ((inv@88@01 a i))
  :qid |access-fctOfInv|)))
; Permissions are non-negative
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@86@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@86@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@86@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@86@01)))))
  $Snap.unit))
; [eval] (forall j: Int :: { old(loc(a, j)) } j >= 0 && (j < i && j % 2 == 0) ==> (unfolding acc(access(a, j), write) in loc(a, j).val) == old((unfolding acc(access(a, j), write) in loc(a, j).val)))
(declare-const j@90@01 Int)
(push) ; 6
; [eval] j >= 0 && (j < i && j % 2 == 0) ==> (unfolding acc(access(a, j), write) in loc(a, j).val) == old((unfolding acc(access(a, j), write) in loc(a, j).val))
; [eval] j >= 0 && (j < i && j % 2 == 0)
; [eval] j >= 0
(push) ; 7
; [then-branch: 43 | !(j@90@01 >= 0) | live]
; [else-branch: 43 | j@90@01 >= 0 | live]
(push) ; 8
; [then-branch: 43 | !(j@90@01 >= 0)]
(assert (not (>= j@90@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 43 | j@90@01 >= 0]
(assert (>= j@90@01 0))
; [eval] j < i
(push) ; 9
; [then-branch: 44 | !(j@90@01 < i@55@01 + 2) | live]
; [else-branch: 44 | j@90@01 < i@55@01 + 2 | live]
(push) ; 10
; [then-branch: 44 | !(j@90@01 < i@55@01 + 2)]
(assert (not (< j@90@01 (+ i@55@01 2))))
(pop) ; 10
(push) ; 10
; [else-branch: 44 | j@90@01 < i@55@01 + 2]
(assert (< j@90@01 (+ i@55@01 2)))
; [eval] j % 2 == 0
; [eval] j % 2
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< j@90@01 (+ i@55@01 2)) (not (< j@90@01 (+ i@55@01 2)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@90@01 0)
  (and
    (>= j@90@01 0)
    (or (< j@90@01 (+ i@55@01 2)) (not (< j@90@01 (+ i@55@01 2)))))))
(assert (or (>= j@90@01 0) (not (>= j@90@01 0))))
(push) ; 7
; [then-branch: 45 | j@90@01 >= 0 && j@90@01 < i@55@01 + 2 && j@90@01 % 2 == 0 | live]
; [else-branch: 45 | !(j@90@01 >= 0 && j@90@01 < i@55@01 + 2 && j@90@01 % 2 == 0) | live]
(push) ; 8
; [then-branch: 45 | j@90@01 >= 0 && j@90@01 < i@55@01 + 2 && j@90@01 % 2 == 0]
(assert (and (>= j@90@01 0) (and (< j@90@01 (+ i@55@01 2)) (= (mod j@90@01 2) 0))))
; [eval] (unfolding acc(access(a, j), write) in loc(a, j).val) == old((unfolding acc(access(a, j), write) in loc(a, j).val))
; [eval] (unfolding acc(access(a, j), write) in loc(a, j).val)
(push) ; 9
; Precomputing data for removing quantified permissions
(define-fun pTaken@91@01 ((a IArray) (i Int) (j@90@01 Int)) $Perm
  (ite
    (and (= a a@54@01) (= i j@90@01))
    ($Perm.min
      (ite
        (and
          (img@89@01 a i)
          (and
            (>= (inv@88@01 a i) 0)
            (and
              (< (inv@88@01 a i) (len<Int> a@54@01))
              (= (mod (inv@88@01 a i) 2) 0))))
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
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@89@01 a i)
          (and
            (>= (inv@88@01 a i) 0)
            (and
              (< (inv@88@01 a i) (len<Int> a@54@01))
              (= (mod (inv@88@01 a i) 2) 0))))
        $Perm.Write
        $Perm.No)
      (pTaken@91@01 a i j@90@01))
    $Perm.No)
  
  :qid |quant-u-18260|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@91@01 a i j@90@01) $Perm.No)
  
  :qid |quant-u-18261|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and (= a a@54@01) (= i j@90@01))
    (= (- $Perm.Write (pTaken@91@01 a i j@90@01)) $Perm.No))
  
  :qid |quant-u-18262|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@92@01 $PSF<access>)
(declare-const s@93@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@89@01 a@54@01 j@90@01)
    (and
      (>= (inv@88@01 a@54@01 j@90@01) 0)
      (and
        (< (inv@88@01 a@54@01 j@90@01) (len<Int> a@54@01))
        (= (mod (inv@88@01 a@54@01 j@90@01) 2) 0))))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@90@01))
        $Snap.unit))
    (=
      ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@90@01)))
      ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@86@01))))) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@90@01)))))))
(assert (access%trigger ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
  ($SortWrappers.IArrayTo$Snap a@54@01)
  ($SortWrappers.IntTo$Snap j@90@01))) a@54@01 j@90@01))
; [eval] i % 2 == 0
; [eval] i % 2
; [then-branch: 46 | j@90@01 % 2 == 0 | live]
; [else-branch: 46 | j@90@01 % 2 != 0 | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 46 | j@90@01 % 2 == 0]
(assert (=
  ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap j@90@01)))
  ($Snap.combine
    ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@90@01))))
    ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@90@01)))))))
; [eval] loc(a, i)
(assert (not (= (loc<Ref> a@54@01 j@90@01) $Ref.null)))
; [eval] loc(a, i + 1)
; [eval] i + 1
(push) ; 11
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@54@01 j@90@01) (loc<Ref> a@54@01 (+ j@90@01 1)))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (not (= (loc<Ref> a@54@01 (+ j@90@01 1)) $Ref.null)))
; [eval] loc(a, j)
(pop) ; 10
(set-option :timeout 0)
(push) ; 10
; [else-branch: 46 | j@90@01 % 2 != 0]
(assert (not (= (mod j@90@01 2) 0)))
(assert (=
  ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap j@90@01)))
  $Snap.unit))
; [eval] loc(a, j)
(check-sat)
; unsat
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (and
  (=>
    (and
      (img@89@01 a@54@01 j@90@01)
      (and
        (>= (inv@88@01 a@54@01 j@90@01) 0)
        (and
          (< (inv@88@01 a@54@01 j@90@01) (len<Int> a@54@01))
          (= (mod (inv@88@01 a@54@01 j@90@01) 2) 0))))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@90@01))
          $Snap.unit))
      (=
        ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@90@01)))
        ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@86@01))))) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@90@01))))))
  (access%trigger ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap j@90@01))) a@54@01 j@90@01)))
(assert (=>
  (= (mod j@90@01 2) 0)
  (and
    (=
      ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@90@01)))
      ($Snap.combine
        ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@90@01))))
        ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@90@01))))))
    (not (= (loc<Ref> a@54@01 j@90@01) $Ref.null))
    (not (= (loc<Ref> a@54@01 (+ j@90@01 1)) $Ref.null)))))
; [eval] old((unfolding acc(access(a, j), write) in loc(a, j).val))
; [eval] (unfolding acc(access(a, j), write) in loc(a, j).val)
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (= i@55@01 j@90@01)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@94@01 ((a IArray) (i Int) (j@90@01 Int)) $Perm
  (ite
    (and (= a a@54@01) (= i j@90@01))
    ($Perm.min
      (ite
        (and
          (img@60@01 a i)
          (and
            (>= (inv@59@01 a i) 0)
            (and
              (< (inv@59@01 a i) (len<Int> a@54@01))
              (= (mod (inv@59@01 a i) 2) 0))))
        (- $Perm.Write (pTaken@77@01 a i))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@95@01 ((a IArray) (i Int) (j@90@01 Int)) $Perm
  (ite
    (and (= a a@54@01) (= i j@90@01))
    ($Perm.min
      (ite (and (= a a@54@01) (= i i@55@01)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@94@01 a i j@90@01)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@60@01 a i)
          (and
            (>= (inv@59@01 a i) 0)
            (and
              (< (inv@59@01 a i) (len<Int> a@54@01))
              (= (mod (inv@59@01 a i) 2) 0))))
        (- $Perm.Write (pTaken@77@01 a i))
        $Perm.No)
      (pTaken@94@01 a i j@90@01))
    $Perm.No)
  
  :qid |quant-u-18264|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@94@01 a i j@90@01) $Perm.No)
  
  :qid |quant-u-18265|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and (= a a@54@01) (= i j@90@01))
    (= (- $Perm.Write (pTaken@94@01 a i j@90@01)) $Perm.No))
  
  :qid |quant-u-18266|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@95@01 a@54@01 i@55@01 j@90@01)) $Perm.No)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@95@01 a i j@90@01) $Perm.No)
  
  :qid |quant-u-18268|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and (= a a@54@01) (= i j@90@01))
    (=
      (- (- $Perm.Write (pTaken@94@01 a i j@90@01)) (pTaken@95@01 a i j@90@01))
      $Perm.No))
  
  :qid |quant-u-18269|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@96@01 $PSF<access>)
(declare-const s@97@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (= j@90@01 i@55@01)
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@90@01))
        $Snap.unit))
    (=
      ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@90@01)))
      ($PSF.lookup_access (as sm@80@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@90@01)))))))
(assert (=>
  (ite
    (and
      (img@60@01 a@54@01 j@90@01)
      (and
        (>= (inv@59@01 a@54@01 j@90@01) 0)
        (and
          (< (inv@59@01 a@54@01 j@90@01) (len<Int> a@54@01))
          (= (mod (inv@59@01 a@54@01 j@90@01) 2) 0))))
    (< $Perm.No (- $Perm.Write (pTaken@77@01 a@54@01 j@90@01)))
    false)
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@90@01))
        $Snap.unit))
    (=
      ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@90@01)))
      ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01))))) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@90@01)))))))
(assert (access%trigger ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
  ($SortWrappers.IArrayTo$Snap a@54@01)
  ($SortWrappers.IntTo$Snap j@90@01))) a@54@01 j@90@01))
; [eval] i % 2 == 0
; [eval] i % 2
; [then-branch: 47 | j@90@01 % 2 == 0 | live]
; [else-branch: 47 | j@90@01 % 2 != 0 | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 47 | j@90@01 % 2 == 0]
(assert (=
  ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap j@90@01)))
  ($Snap.combine
    ($Snap.first ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@90@01))))
    ($Snap.second ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@90@01)))))))
; [eval] loc(a, i)
(assert (not (= (loc<Ref> a@54@01 j@90@01) $Ref.null)))
; [eval] loc(a, i + 1)
; [eval] i + 1
(push) ; 11
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@54@01 j@90@01) (loc<Ref> a@54@01 (+ j@90@01 1)))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (not (= (loc<Ref> a@54@01 (+ j@90@01 1)) $Ref.null)))
; [eval] loc(a, j)
(pop) ; 10
(set-option :timeout 0)
(push) ; 10
; [else-branch: 47 | j@90@01 % 2 != 0]
(assert (not (= (mod j@90@01 2) 0)))
(assert (=
  ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap j@90@01)))
  $Snap.unit))
; [eval] loc(a, j)
(check-sat)
; unsat
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (and
  (=>
    (= j@90@01 i@55@01)
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@90@01))
          $Snap.unit))
      (=
        ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@90@01)))
        ($PSF.lookup_access (as sm@80@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@90@01))))))
  (=>
    (ite
      (and
        (img@60@01 a@54@01 j@90@01)
        (and
          (>= (inv@59@01 a@54@01 j@90@01) 0)
          (and
            (< (inv@59@01 a@54@01 j@90@01) (len<Int> a@54@01))
            (= (mod (inv@59@01 a@54@01 j@90@01) 2) 0))))
      (< $Perm.No (- $Perm.Write (pTaken@77@01 a@54@01 j@90@01)))
      false)
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@90@01))
          $Snap.unit))
      (=
        ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@90@01)))
        ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01))))) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@90@01))))))
  (access%trigger ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap j@90@01))) a@54@01 j@90@01)))
(assert (=>
  (= (mod j@90@01 2) 0)
  (and
    (=
      ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@90@01)))
      ($Snap.combine
        ($Snap.first ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@90@01))))
        ($Snap.second ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@90@01))))))
    (not (= (loc<Ref> a@54@01 j@90@01) $Ref.null))
    (not (= (loc<Ref> a@54@01 (+ j@90@01 1)) $Ref.null)))))
(pop) ; 8
(push) ; 8
; [else-branch: 45 | !(j@90@01 >= 0 && j@90@01 < i@55@01 + 2 && j@90@01 % 2 == 0)]
(assert (not (and (>= j@90@01 0) (and (< j@90@01 (+ i@55@01 2)) (= (mod j@90@01 2) 0)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  (and (>= j@90@01 0) (and (< j@90@01 (+ i@55@01 2)) (= (mod j@90@01 2) 0)))
  (and
    (>= j@90@01 0)
    (< j@90@01 (+ i@55@01 2))
    (= (mod j@90@01 2) 0)
    (=>
      (and
        (img@89@01 a@54@01 j@90@01)
        (and
          (>= (inv@88@01 a@54@01 j@90@01) 0)
          (and
            (< (inv@88@01 a@54@01 j@90@01) (len<Int> a@54@01))
            (= (mod (inv@88@01 a@54@01 j@90@01) 2) 0))))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap j@90@01))
            $Snap.unit))
        (=
          ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@90@01)))
          ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@86@01))))) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@90@01))))))
    (access%trigger ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@90@01))) a@54@01 j@90@01)
    (=>
      (= (mod j@90@01 2) 0)
      (and
        (=
          ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@90@01)))
          ($Snap.combine
            ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap j@90@01))))
            ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap j@90@01))))))
        (not (= (loc<Ref> a@54@01 j@90@01) $Ref.null))
        (not (= (loc<Ref> a@54@01 (+ j@90@01 1)) $Ref.null))))
    (=>
      (= j@90@01 i@55@01)
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap j@90@01))
            $Snap.unit))
        (=
          ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@90@01)))
          ($PSF.lookup_access (as sm@80@01  $PSF<access>) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@90@01))))))
    (=>
      (ite
        (and
          (img@60@01 a@54@01 j@90@01)
          (and
            (>= (inv@59@01 a@54@01 j@90@01) 0)
            (and
              (< (inv@59@01 a@54@01 j@90@01) (len<Int> a@54@01))
              (= (mod (inv@59@01 a@54@01 j@90@01) 2) 0))))
        (< $Perm.No (- $Perm.Write (pTaken@77@01 a@54@01 j@90@01)))
        false)
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap j@90@01))
            $Snap.unit))
        (=
          ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@90@01)))
          ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01))))) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@90@01))))))
    (access%trigger ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@90@01))) a@54@01 j@90@01)
    (=>
      (= (mod j@90@01 2) 0)
      (and
        (=
          ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@90@01)))
          ($Snap.combine
            ($Snap.first ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap j@90@01))))
            ($Snap.second ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap j@90@01))))))
        (not (= (loc<Ref> a@54@01 j@90@01) $Ref.null))
        (not (= (loc<Ref> a@54@01 (+ j@90@01 1)) $Ref.null)))))))
; Joined path conditions
(assert (or
  (not
    (and (>= j@90@01 0) (and (< j@90@01 (+ i@55@01 2)) (= (mod j@90@01 2) 0))))
  (and (>= j@90@01 0) (and (< j@90@01 (+ i@55@01 2)) (= (mod j@90@01 2) 0)))))
; [eval] old(loc(a, j))
; [eval] loc(a, j)
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@90@01 Int)) (!
  (and
    (=>
      (>= j@90@01 0)
      (and
        (>= j@90@01 0)
        (or (< j@90@01 (+ i@55@01 2)) (not (< j@90@01 (+ i@55@01 2))))))
    (or (>= j@90@01 0) (not (>= j@90@01 0)))
    (=>
      (and (>= j@90@01 0) (and (< j@90@01 (+ i@55@01 2)) (= (mod j@90@01 2) 0)))
      (and
        (>= j@90@01 0)
        (< j@90@01 (+ i@55@01 2))
        (= (mod j@90@01 2) 0)
        (=>
          (and
            (img@89@01 a@54@01 j@90@01)
            (and
              (>= (inv@88@01 a@54@01 j@90@01) 0)
              (and
                (< (inv@88@01 a@54@01 j@90@01) (len<Int> a@54@01))
                (= (mod (inv@88@01 a@54@01 j@90@01) 2) 0))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap j@90@01))
                $Snap.unit))
            (=
              ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@90@01)))
              ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@86@01))))) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@90@01))))))
        (access%trigger ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@90@01))) a@54@01 j@90@01)
        (=>
          (= (mod j@90@01 2) 0)
          (and
            (=
              ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@90@01)))
              ($Snap.combine
                ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap j@90@01))))
                ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap j@90@01))))))
            (not (= (loc<Ref> a@54@01 j@90@01) $Ref.null))
            (not (= (loc<Ref> a@54@01 (+ j@90@01 1)) $Ref.null))))
        (=>
          (= j@90@01 i@55@01)
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap j@90@01))
                $Snap.unit))
            (=
              ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@90@01)))
              ($PSF.lookup_access (as sm@80@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@90@01))))))
        (=>
          (ite
            (and
              (img@60@01 a@54@01 j@90@01)
              (and
                (>= (inv@59@01 a@54@01 j@90@01) 0)
                (and
                  (< (inv@59@01 a@54@01 j@90@01) (len<Int> a@54@01))
                  (= (mod (inv@59@01 a@54@01 j@90@01) 2) 0))))
            (< $Perm.No (- $Perm.Write (pTaken@77@01 a@54@01 j@90@01)))
            false)
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap j@90@01))
                $Snap.unit))
            (=
              ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@90@01)))
              ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01))))) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@90@01))))))
        (access%trigger ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@90@01))) a@54@01 j@90@01)
        (=>
          (= (mod j@90@01 2) 0)
          (and
            (=
              ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@90@01)))
              ($Snap.combine
                ($Snap.first ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap j@90@01))))
                ($Snap.second ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap j@90@01))))))
            (not (= (loc<Ref> a@54@01 j@90@01) $Ref.null))
            (not (= (loc<Ref> a@54@01 (+ j@90@01 1)) $Ref.null))))))
    (or
      (not
        (and
          (>= j@90@01 0)
          (and (< j@90@01 (+ i@55@01 2)) (= (mod j@90@01 2) 0))))
      (and (>= j@90@01 0) (and (< j@90@01 (+ i@55@01 2)) (= (mod j@90@01 2) 0)))))
  :pattern ((loc<Ref> a@54@01 j@90@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/issues/block_array.vpr@50@9@50@157-aux|)))
(assert (forall ((j@90@01 Int)) (!
  (=>
    (and (>= j@90@01 0) (and (< j@90@01 (+ i@55@01 2)) (= (mod j@90@01 2) 0)))
    (=
      ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@90@01)))))
      ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@90@01)))))))
  :pattern ((loc<Ref> a@54@01 j@90@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/issues/block_array.vpr@50@9@50@157|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@86@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@86@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@86@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@86@01))))))
  $Snap.unit))
; [eval] (forall __rw_j6: Int :: { old(loc(a, __rw_j6)) } true ==> __rw_j6 - 1 >= 0 && (__rw_j6 - 1 < i && (__rw_j6 - 1) % 2 == 0) ==> (unfolding acc(access(a, __rw_j6 - 1), write) in loc(a, __rw_j6).val) == old((unfolding acc(access(a, __rw_j6 - 1), write) in loc(a, __rw_j6).val)))
(declare-const __rw_j6@98@01 Int)
(push) ; 6
; [eval] true ==> __rw_j6 - 1 >= 0 && (__rw_j6 - 1 < i && (__rw_j6 - 1) % 2 == 0) ==> (unfolding acc(access(a, __rw_j6 - 1), write) in loc(a, __rw_j6).val) == old((unfolding acc(access(a, __rw_j6 - 1), write) in loc(a, __rw_j6).val))
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 48 | True | live]
; [else-branch: 48 | False | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 48 | True]
; [eval] __rw_j6 - 1 >= 0 && (__rw_j6 - 1 < i && (__rw_j6 - 1) % 2 == 0) ==> (unfolding acc(access(a, __rw_j6 - 1), write) in loc(a, __rw_j6).val) == old((unfolding acc(access(a, __rw_j6 - 1), write) in loc(a, __rw_j6).val))
; [eval] __rw_j6 - 1 >= 0 && (__rw_j6 - 1 < i && (__rw_j6 - 1) % 2 == 0)
; [eval] __rw_j6 - 1 >= 0
; [eval] __rw_j6 - 1
(push) ; 9
; [then-branch: 49 | !(__rw_j6@98@01 - 1 >= 0) | live]
; [else-branch: 49 | __rw_j6@98@01 - 1 >= 0 | live]
(push) ; 10
; [then-branch: 49 | !(__rw_j6@98@01 - 1 >= 0)]
(assert (not (>= (- __rw_j6@98@01 1) 0)))
(pop) ; 10
(push) ; 10
; [else-branch: 49 | __rw_j6@98@01 - 1 >= 0]
(assert (>= (- __rw_j6@98@01 1) 0))
; [eval] __rw_j6 - 1 < i
; [eval] __rw_j6 - 1
(push) ; 11
; [then-branch: 50 | !(__rw_j6@98@01 - 1 < i@55@01 + 2) | live]
; [else-branch: 50 | __rw_j6@98@01 - 1 < i@55@01 + 2 | live]
(push) ; 12
; [then-branch: 50 | !(__rw_j6@98@01 - 1 < i@55@01 + 2)]
(assert (not (< (- __rw_j6@98@01 1) (+ i@55@01 2))))
(pop) ; 12
(push) ; 12
; [else-branch: 50 | __rw_j6@98@01 - 1 < i@55@01 + 2]
(assert (< (- __rw_j6@98@01 1) (+ i@55@01 2)))
; [eval] (__rw_j6 - 1) % 2 == 0
; [eval] (__rw_j6 - 1) % 2
; [eval] __rw_j6 - 1
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or
  (< (- __rw_j6@98@01 1) (+ i@55@01 2))
  (not (< (- __rw_j6@98@01 1) (+ i@55@01 2)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= (- __rw_j6@98@01 1) 0)
  (and
    (>= (- __rw_j6@98@01 1) 0)
    (or
      (< (- __rw_j6@98@01 1) (+ i@55@01 2))
      (not (< (- __rw_j6@98@01 1) (+ i@55@01 2)))))))
(assert (or (>= (- __rw_j6@98@01 1) 0) (not (>= (- __rw_j6@98@01 1) 0))))
(push) ; 9
; [then-branch: 51 | __rw_j6@98@01 - 1 >= 0 && __rw_j6@98@01 - 1 < i@55@01 + 2 && __rw_j6@98@01 - 1 % 2 == 0 | live]
; [else-branch: 51 | !(__rw_j6@98@01 - 1 >= 0 && __rw_j6@98@01 - 1 < i@55@01 + 2 && __rw_j6@98@01 - 1 % 2 == 0) | live]
(push) ; 10
; [then-branch: 51 | __rw_j6@98@01 - 1 >= 0 && __rw_j6@98@01 - 1 < i@55@01 + 2 && __rw_j6@98@01 - 1 % 2 == 0]
(assert (and
  (>= (- __rw_j6@98@01 1) 0)
  (and (< (- __rw_j6@98@01 1) (+ i@55@01 2)) (= (mod (- __rw_j6@98@01 1) 2) 0))))
; [eval] (unfolding acc(access(a, __rw_j6 - 1), write) in loc(a, __rw_j6).val) == old((unfolding acc(access(a, __rw_j6 - 1), write) in loc(a, __rw_j6).val))
; [eval] (unfolding acc(access(a, __rw_j6 - 1), write) in loc(a, __rw_j6).val)
; [eval] __rw_j6 - 1
(push) ; 11
; [eval] __rw_j6 - 1
; Precomputing data for removing quantified permissions
(define-fun pTaken@99@01 ((a IArray) (i Int) (__rw_j6@98@01 Int)) $Perm
  (ite
    (and (= a a@54@01) (= i (- __rw_j6@98@01 1)))
    ($Perm.min
      (ite
        (and
          (img@89@01 a i)
          (and
            (>= (inv@88@01 a i) 0)
            (and
              (< (inv@88@01 a i) (len<Int> a@54@01))
              (= (mod (inv@88@01 a i) 2) 0))))
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
(push) ; 12
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@89@01 a i)
          (and
            (>= (inv@88@01 a i) 0)
            (and
              (< (inv@88@01 a i) (len<Int> a@54@01))
              (= (mod (inv@88@01 a i) 2) 0))))
        $Perm.Write
        $Perm.No)
      (pTaken@99@01 a i __rw_j6@98@01))
    $Perm.No)
  
  :qid |quant-u-18271|))))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@99@01 a i __rw_j6@98@01) $Perm.No)
  
  :qid |quant-u-18272|))))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and (= a a@54@01) (= i (- __rw_j6@98@01 1)))
    (= (- $Perm.Write (pTaken@99@01 a i __rw_j6@98@01)) $Perm.No))
  
  :qid |quant-u-18273|))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@89@01 a@54@01 (- __rw_j6@98@01 1))
    (and
      (>= (inv@88@01 a@54@01 (- __rw_j6@98@01 1)) 0)
      (and
        (< (inv@88@01 a@54@01 (- __rw_j6@98@01 1)) (len<Int> a@54@01))
        (= (mod (inv@88@01 a@54@01 (- __rw_j6@98@01 1)) 2) 0))))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))
        $Snap.unit))
    (=
      ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1))))
      ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@86@01))))) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1))))))))
(assert (access%trigger ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
  ($SortWrappers.IArrayTo$Snap a@54@01)
  ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))) a@54@01 (- __rw_j6@98@01 1)))
; [eval] i % 2 == 0
; [eval] i % 2
; [then-branch: 52 | __rw_j6@98@01 - 1 % 2 == 0 | live]
; [else-branch: 52 | __rw_j6@98@01 - 1 % 2 != 0 | live]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 52 | __rw_j6@98@01 - 1 % 2 == 0]
(assert (=
  ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1))))
  ($Snap.combine
    ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))))
    ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1))))))))
; [eval] loc(a, i)
(assert (not (= (loc<Ref> a@54@01 (- __rw_j6@98@01 1)) $Ref.null)))
; [eval] loc(a, i + 1)
; [eval] i + 1
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  (loc<Ref> a@54@01 (- __rw_j6@98@01 1))
  (loc<Ref> a@54@01 (+ (- __rw_j6@98@01 1) 1)))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (not (= (loc<Ref> a@54@01 (+ (- __rw_j6@98@01 1) 1)) $Ref.null)))
; [eval] loc(a, __rw_j6)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@54@01 (+ (- __rw_j6@98@01 1) 1)) (loc<Ref> a@54@01 __rw_j6@98@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(pop) ; 12
(set-option :timeout 0)
(push) ; 12
; [else-branch: 52 | __rw_j6@98@01 - 1 % 2 != 0]
(assert (not (= (mod (- __rw_j6@98@01 1) 2) 0)))
(assert (=
  ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1))))
  $Snap.unit))
; [eval] loc(a, __rw_j6)
(check-sat)
; unsat
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (and
  (=>
    (and
      (img@89@01 a@54@01 (- __rw_j6@98@01 1))
      (and
        (>= (inv@88@01 a@54@01 (- __rw_j6@98@01 1)) 0)
        (and
          (< (inv@88@01 a@54@01 (- __rw_j6@98@01 1)) (len<Int> a@54@01))
          (= (mod (inv@88@01 a@54@01 (- __rw_j6@98@01 1)) 2) 0))))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))
          $Snap.unit))
      (=
        ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1))))
        ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@86@01))))) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))))))
  (access%trigger ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))) a@54@01 (- __rw_j6@98@01 1))))
(assert (=>
  (= (mod (- __rw_j6@98@01 1) 2) 0)
  (and
    (=
      ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1))))
      ($Snap.combine
        ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))))
        ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))))))
    (not (= (loc<Ref> a@54@01 (- __rw_j6@98@01 1)) $Ref.null))
    (not (= (loc<Ref> a@54@01 (+ (- __rw_j6@98@01 1) 1)) $Ref.null)))))
; [eval] old((unfolding acc(access(a, __rw_j6 - 1), write) in loc(a, __rw_j6).val))
; [eval] (unfolding acc(access(a, __rw_j6 - 1), write) in loc(a, __rw_j6).val)
; [eval] __rw_j6 - 1
(push) ; 11
; [eval] __rw_j6 - 1
(push) ; 12
(set-option :timeout 10)
(assert (not (= i@55@01 (- __rw_j6@98@01 1))))
(check-sat)
; unknown
(pop) ; 12
; 0.01s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@100@01 ((a IArray) (i Int) (__rw_j6@98@01 Int)) $Perm
  (ite
    (and (= a a@54@01) (= i (- __rw_j6@98@01 1)))
    ($Perm.min
      (ite
        (and
          (img@60@01 a i)
          (and
            (>= (inv@59@01 a i) 0)
            (and
              (< (inv@59@01 a i) (len<Int> a@54@01))
              (= (mod (inv@59@01 a i) 2) 0))))
        (- $Perm.Write (pTaken@77@01 a i))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@101@01 ((a IArray) (i Int) (__rw_j6@98@01 Int)) $Perm
  (ite
    (and (= a a@54@01) (= i (- __rw_j6@98@01 1)))
    ($Perm.min
      (ite (and (= a a@54@01) (= i i@55@01)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@100@01 a i __rw_j6@98@01)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@60@01 a i)
          (and
            (>= (inv@59@01 a i) 0)
            (and
              (< (inv@59@01 a i) (len<Int> a@54@01))
              (= (mod (inv@59@01 a i) 2) 0))))
        (- $Perm.Write (pTaken@77@01 a i))
        $Perm.No)
      (pTaken@100@01 a i __rw_j6@98@01))
    $Perm.No)
  
  :qid |quant-u-18275|))))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@100@01 a i __rw_j6@98@01) $Perm.No)
  
  :qid |quant-u-18276|))))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and (= a a@54@01) (= i (- __rw_j6@98@01 1)))
    (= (- $Perm.Write (pTaken@100@01 a i __rw_j6@98@01)) $Perm.No))
  
  :qid |quant-u-18277|))))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@101@01 a@54@01 i@55@01 __rw_j6@98@01)) $Perm.No)))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@101@01 a i __rw_j6@98@01) $Perm.No)
  
  :qid |quant-u-18279|))))
(check-sat)
; unknown
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 12
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and (= a a@54@01) (= i (- __rw_j6@98@01 1)))
    (=
      (-
        (- $Perm.Write (pTaken@100@01 a i __rw_j6@98@01))
        (pTaken@101@01 a i __rw_j6@98@01))
      $Perm.No))
  
  :qid |quant-u-18280|))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (= (- __rw_j6@98@01 1) i@55@01)
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))
        $Snap.unit))
    (=
      ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1))))
      ($PSF.lookup_access (as sm@80@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1))))))))
(assert (=>
  (ite
    (and
      (img@60@01 a@54@01 (- __rw_j6@98@01 1))
      (and
        (>= (inv@59@01 a@54@01 (- __rw_j6@98@01 1)) 0)
        (and
          (< (inv@59@01 a@54@01 (- __rw_j6@98@01 1)) (len<Int> a@54@01))
          (= (mod (inv@59@01 a@54@01 (- __rw_j6@98@01 1)) 2) 0))))
    (< $Perm.No (- $Perm.Write (pTaken@77@01 a@54@01 (- __rw_j6@98@01 1))))
    false)
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))
        $Snap.unit))
    (=
      ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1))))
      ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01))))) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1))))))))
(assert (access%trigger ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
  ($SortWrappers.IArrayTo$Snap a@54@01)
  ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))) a@54@01 (- __rw_j6@98@01 1)))
; [eval] i % 2 == 0
; [eval] i % 2
; [then-branch: 53 | __rw_j6@98@01 - 1 % 2 == 0 | live]
; [else-branch: 53 | __rw_j6@98@01 - 1 % 2 != 0 | live]
(set-option :timeout 0)
(push) ; 12
; [then-branch: 53 | __rw_j6@98@01 - 1 % 2 == 0]
(assert (=
  ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1))))
  ($Snap.combine
    ($Snap.first ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))))
    ($Snap.second ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1))))))))
; [eval] loc(a, i)
(assert (not (= (loc<Ref> a@54@01 (- __rw_j6@98@01 1)) $Ref.null)))
; [eval] loc(a, i + 1)
; [eval] i + 1
(push) ; 13
(set-option :timeout 10)
(assert (not (=
  (loc<Ref> a@54@01 (- __rw_j6@98@01 1))
  (loc<Ref> a@54@01 (+ (- __rw_j6@98@01 1) 1)))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (not (= (loc<Ref> a@54@01 (+ (- __rw_j6@98@01 1) 1)) $Ref.null)))
; [eval] loc(a, __rw_j6)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@54@01 (+ (- __rw_j6@98@01 1) 1)) (loc<Ref> a@54@01 __rw_j6@98@01))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(pop) ; 12
(set-option :timeout 0)
(push) ; 12
; [else-branch: 53 | __rw_j6@98@01 - 1 % 2 != 0]
(assert (not (= (mod (- __rw_j6@98@01 1) 2) 0)))
(assert (=
  ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1))))
  $Snap.unit))
; [eval] loc(a, __rw_j6)
(check-sat)
; unsat
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (and
  (=>
    (= (- __rw_j6@98@01 1) i@55@01)
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))
          $Snap.unit))
      (=
        ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1))))
        ($PSF.lookup_access (as sm@80@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))))))
  (=>
    (ite
      (and
        (img@60@01 a@54@01 (- __rw_j6@98@01 1))
        (and
          (>= (inv@59@01 a@54@01 (- __rw_j6@98@01 1)) 0)
          (and
            (< (inv@59@01 a@54@01 (- __rw_j6@98@01 1)) (len<Int> a@54@01))
            (= (mod (inv@59@01 a@54@01 (- __rw_j6@98@01 1)) 2) 0))))
      (< $Perm.No (- $Perm.Write (pTaken@77@01 a@54@01 (- __rw_j6@98@01 1))))
      false)
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))
          $Snap.unit))
      (=
        ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1))))
        ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01))))) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))))))
  (access%trigger ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))) a@54@01 (- __rw_j6@98@01 1))))
(assert (=>
  (= (mod (- __rw_j6@98@01 1) 2) 0)
  (and
    (=
      ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1))))
      ($Snap.combine
        ($Snap.first ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))))
        ($Snap.second ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))))))
    (not (= (loc<Ref> a@54@01 (- __rw_j6@98@01 1)) $Ref.null))
    (not (= (loc<Ref> a@54@01 (+ (- __rw_j6@98@01 1) 1)) $Ref.null)))))
(pop) ; 10
(push) ; 10
; [else-branch: 51 | !(__rw_j6@98@01 - 1 >= 0 && __rw_j6@98@01 - 1 < i@55@01 + 2 && __rw_j6@98@01 - 1 % 2 == 0)]
(assert (not
  (and
    (>= (- __rw_j6@98@01 1) 0)
    (and (< (- __rw_j6@98@01 1) (+ i@55@01 2)) (= (mod (- __rw_j6@98@01 1) 2) 0)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (and
    (>= (- __rw_j6@98@01 1) 0)
    (and (< (- __rw_j6@98@01 1) (+ i@55@01 2)) (= (mod (- __rw_j6@98@01 1) 2) 0)))
  (and
    (>= (- __rw_j6@98@01 1) 0)
    (< (- __rw_j6@98@01 1) (+ i@55@01 2))
    (= (mod (- __rw_j6@98@01 1) 2) 0)
    (=>
      (and
        (img@89@01 a@54@01 (- __rw_j6@98@01 1))
        (and
          (>= (inv@88@01 a@54@01 (- __rw_j6@98@01 1)) 0)
          (and
            (< (inv@88@01 a@54@01 (- __rw_j6@98@01 1)) (len<Int> a@54@01))
            (= (mod (inv@88@01 a@54@01 (- __rw_j6@98@01 1)) 2) 0))))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))
            $Snap.unit))
        (=
          ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1))))
          ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@86@01))))) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))))))
    (access%trigger ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))) a@54@01 (-
      __rw_j6@98@01
      1))
    (=>
      (= (mod (- __rw_j6@98@01 1) 2) 0)
      (and
        (=
          ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1))))
          ($Snap.combine
            ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))))
            ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))))))
        (not (= (loc<Ref> a@54@01 (- __rw_j6@98@01 1)) $Ref.null))
        (not (= (loc<Ref> a@54@01 (+ (- __rw_j6@98@01 1) 1)) $Ref.null))))
    (=>
      (= (- __rw_j6@98@01 1) i@55@01)
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))
            $Snap.unit))
        (=
          ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1))))
          ($PSF.lookup_access (as sm@80@01  $PSF<access>) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))))))
    (=>
      (ite
        (and
          (img@60@01 a@54@01 (- __rw_j6@98@01 1))
          (and
            (>= (inv@59@01 a@54@01 (- __rw_j6@98@01 1)) 0)
            (and
              (< (inv@59@01 a@54@01 (- __rw_j6@98@01 1)) (len<Int> a@54@01))
              (= (mod (inv@59@01 a@54@01 (- __rw_j6@98@01 1)) 2) 0))))
        (< $Perm.No (- $Perm.Write (pTaken@77@01 a@54@01 (- __rw_j6@98@01 1))))
        false)
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))
            $Snap.unit))
        (=
          ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1))))
          ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01))))) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))))))
    (access%trigger ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))) a@54@01 (-
      __rw_j6@98@01
      1))
    (=>
      (= (mod (- __rw_j6@98@01 1) 2) 0)
      (and
        (=
          ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1))))
          ($Snap.combine
            ($Snap.first ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))))
            ($Snap.second ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))))))
        (not (= (loc<Ref> a@54@01 (- __rw_j6@98@01 1)) $Ref.null))
        (not (= (loc<Ref> a@54@01 (+ (- __rw_j6@98@01 1) 1)) $Ref.null)))))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= (- __rw_j6@98@01 1) 0)
      (and
        (< (- __rw_j6@98@01 1) (+ i@55@01 2))
        (= (mod (- __rw_j6@98@01 1) 2) 0))))
  (and
    (>= (- __rw_j6@98@01 1) 0)
    (and (< (- __rw_j6@98@01 1) (+ i@55@01 2)) (= (mod (- __rw_j6@98@01 1) 2) 0)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (and
  (=>
    (>= (- __rw_j6@98@01 1) 0)
    (and
      (>= (- __rw_j6@98@01 1) 0)
      (or
        (< (- __rw_j6@98@01 1) (+ i@55@01 2))
        (not (< (- __rw_j6@98@01 1) (+ i@55@01 2))))))
  (or (>= (- __rw_j6@98@01 1) 0) (not (>= (- __rw_j6@98@01 1) 0)))
  (=>
    (and
      (>= (- __rw_j6@98@01 1) 0)
      (and
        (< (- __rw_j6@98@01 1) (+ i@55@01 2))
        (= (mod (- __rw_j6@98@01 1) 2) 0)))
    (and
      (>= (- __rw_j6@98@01 1) 0)
      (< (- __rw_j6@98@01 1) (+ i@55@01 2))
      (= (mod (- __rw_j6@98@01 1) 2) 0)
      (=>
        (and
          (img@89@01 a@54@01 (- __rw_j6@98@01 1))
          (and
            (>= (inv@88@01 a@54@01 (- __rw_j6@98@01 1)) 0)
            (and
              (< (inv@88@01 a@54@01 (- __rw_j6@98@01 1)) (len<Int> a@54@01))
              (= (mod (inv@88@01 a@54@01 (- __rw_j6@98@01 1)) 2) 0))))
        (and
          (not
            (=
              ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))
              $Snap.unit))
          (=
            ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1))))
            ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@86@01))))) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))))))
      (access%trigger ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))) a@54@01 (-
        __rw_j6@98@01
        1))
      (=>
        (= (mod (- __rw_j6@98@01 1) 2) 0)
        (and
          (=
            ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1))))
            ($Snap.combine
              ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))))
              ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))))))
          (not (= (loc<Ref> a@54@01 (- __rw_j6@98@01 1)) $Ref.null))
          (not (= (loc<Ref> a@54@01 (+ (- __rw_j6@98@01 1) 1)) $Ref.null))))
      (=>
        (= (- __rw_j6@98@01 1) i@55@01)
        (and
          (not
            (=
              ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))
              $Snap.unit))
          (=
            ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1))))
            ($PSF.lookup_access (as sm@80@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))))))
      (=>
        (ite
          (and
            (img@60@01 a@54@01 (- __rw_j6@98@01 1))
            (and
              (>= (inv@59@01 a@54@01 (- __rw_j6@98@01 1)) 0)
              (and
                (< (inv@59@01 a@54@01 (- __rw_j6@98@01 1)) (len<Int> a@54@01))
                (= (mod (inv@59@01 a@54@01 (- __rw_j6@98@01 1)) 2) 0))))
          (< $Perm.No (- $Perm.Write (pTaken@77@01 a@54@01 (- __rw_j6@98@01 1))))
          false)
        (and
          (not
            (=
              ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))
              $Snap.unit))
          (=
            ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1))))
            ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01))))) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))))))
      (access%trigger ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))) a@54@01 (-
        __rw_j6@98@01
        1))
      (=>
        (= (mod (- __rw_j6@98@01 1) 2) 0)
        (and
          (=
            ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1))))
            ($Snap.combine
              ($Snap.first ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))))
              ($Snap.second ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))))))
          (not (= (loc<Ref> a@54@01 (- __rw_j6@98@01 1)) $Ref.null))
          (not (= (loc<Ref> a@54@01 (+ (- __rw_j6@98@01 1) 1)) $Ref.null))))))
  (or
    (not
      (and
        (>= (- __rw_j6@98@01 1) 0)
        (and
          (< (- __rw_j6@98@01 1) (+ i@55@01 2))
          (= (mod (- __rw_j6@98@01 1) 2) 0))))
    (and
      (>= (- __rw_j6@98@01 1) 0)
      (and
        (< (- __rw_j6@98@01 1) (+ i@55@01 2))
        (= (mod (- __rw_j6@98@01 1) 2) 0))))))
; [eval] old(loc(a, __rw_j6))
; [eval] loc(a, __rw_j6)
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((__rw_j6@98@01 Int)) (!
  (and
    (=>
      (>= (- __rw_j6@98@01 1) 0)
      (and
        (>= (- __rw_j6@98@01 1) 0)
        (or
          (< (- __rw_j6@98@01 1) (+ i@55@01 2))
          (not (< (- __rw_j6@98@01 1) (+ i@55@01 2))))))
    (or (>= (- __rw_j6@98@01 1) 0) (not (>= (- __rw_j6@98@01 1) 0)))
    (=>
      (and
        (>= (- __rw_j6@98@01 1) 0)
        (and
          (< (- __rw_j6@98@01 1) (+ i@55@01 2))
          (= (mod (- __rw_j6@98@01 1) 2) 0)))
      (and
        (>= (- __rw_j6@98@01 1) 0)
        (< (- __rw_j6@98@01 1) (+ i@55@01 2))
        (= (mod (- __rw_j6@98@01 1) 2) 0)
        (=>
          (and
            (img@89@01 a@54@01 (- __rw_j6@98@01 1))
            (and
              (>= (inv@88@01 a@54@01 (- __rw_j6@98@01 1)) 0)
              (and
                (< (inv@88@01 a@54@01 (- __rw_j6@98@01 1)) (len<Int> a@54@01))
                (= (mod (inv@88@01 a@54@01 (- __rw_j6@98@01 1)) 2) 0))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))
                $Snap.unit))
            (=
              ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1))))
              ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@86@01))))) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))))))
        (access%trigger ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))) a@54@01 (-
          __rw_j6@98@01
          1))
        (=>
          (= (mod (- __rw_j6@98@01 1) 2) 0)
          (and
            (=
              ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1))))
              ($Snap.combine
                ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))))
                ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))))))
            (not (= (loc<Ref> a@54@01 (- __rw_j6@98@01 1)) $Ref.null))
            (not (= (loc<Ref> a@54@01 (+ (- __rw_j6@98@01 1) 1)) $Ref.null))))
        (=>
          (= (- __rw_j6@98@01 1) i@55@01)
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))
                $Snap.unit))
            (=
              ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1))))
              ($PSF.lookup_access (as sm@80@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))))))
        (=>
          (ite
            (and
              (img@60@01 a@54@01 (- __rw_j6@98@01 1))
              (and
                (>= (inv@59@01 a@54@01 (- __rw_j6@98@01 1)) 0)
                (and
                  (< (inv@59@01 a@54@01 (- __rw_j6@98@01 1)) (len<Int> a@54@01))
                  (= (mod (inv@59@01 a@54@01 (- __rw_j6@98@01 1)) 2) 0))))
            (<
              $Perm.No
              (- $Perm.Write (pTaken@77@01 a@54@01 (- __rw_j6@98@01 1))))
            false)
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))
                $Snap.unit))
            (=
              ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1))))
              ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01))))) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))))))
        (access%trigger ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))) a@54@01 (-
          __rw_j6@98@01
          1))
        (=>
          (= (mod (- __rw_j6@98@01 1) 2) 0)
          (and
            (=
              ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1))))
              ($Snap.combine
                ($Snap.first ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))))
                ($Snap.second ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1)))))))
            (not (= (loc<Ref> a@54@01 (- __rw_j6@98@01 1)) $Ref.null))
            (not (= (loc<Ref> a@54@01 (+ (- __rw_j6@98@01 1) 1)) $Ref.null))))))
    (or
      (not
        (and
          (>= (- __rw_j6@98@01 1) 0)
          (and
            (< (- __rw_j6@98@01 1) (+ i@55@01 2))
            (= (mod (- __rw_j6@98@01 1) 2) 0))))
      (and
        (>= (- __rw_j6@98@01 1) 0)
        (and
          (< (- __rw_j6@98@01 1) (+ i@55@01 2))
          (= (mod (- __rw_j6@98@01 1) 2) 0)))))
  :pattern ((loc<Ref> a@54@01 __rw_j6@98@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/issues/block_array.vpr@51@9@51@161-aux|)))
(assert (forall ((__rw_j6@98@01 Int)) (!
  (=>
    (and
      (>= (- __rw_j6@98@01 1) 0)
      (and
        (< (- __rw_j6@98@01 1) (+ i@55@01 2))
        (= (mod (- __rw_j6@98@01 1) 2) 0)))
    (=
      ($SortWrappers.$SnapToInt ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1))))))
      ($SortWrappers.$SnapToInt ($Snap.second ($PSF.lookup_access (as sm@96@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap (- __rw_j6@98@01 1))))))))
  :pattern ((loc<Ref> a@54@01 __rw_j6@98@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/issues/block_array.vpr@51@9@51@161|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@86@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@86@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@86@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@86@01)))))))
  $Snap.unit))
; [eval] (unfolding acc(access(a, i), write) in loc(a, i).val == newVal)
(push) ; 6
; Precomputing data for removing quantified permissions
(define-fun pTaken@102@01 ((a IArray) (i Int)) $Perm
  (ite
    (and (= a a@54@01) (= i (+ i@55@01 2)))
    ($Perm.min
      (ite
        (and
          (img@89@01 a i)
          (and
            (>= (inv@88@01 a i) 0)
            (and
              (< (inv@88@01 a i) (len<Int> a@54@01))
              (= (mod (inv@88@01 a i) 2) 0))))
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
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@89@01 a i)
          (and
            (>= (inv@88@01 a i) 0)
            (and
              (< (inv@88@01 a i) (len<Int> a@54@01))
              (= (mod (inv@88@01 a i) 2) 0))))
        $Perm.Write
        $Perm.No)
      (pTaken@102@01 a i))
    $Perm.No)
  
  :qid |quant-u-18282|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@102@01 a i) $Perm.No)
  
  :qid |quant-u-18283|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and (= a a@54@01) (= i (+ i@55@01 2)))
    (= (- $Perm.Write (pTaken@102@01 a i)) $Perm.No))
  
  :qid |quant-u-18284|))))
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
  (and
    (img@89@01 a@54@01 (+ i@55@01 2))
    (and
      (>= (inv@88@01 a@54@01 (+ i@55@01 2)) 0)
      (and
        (< (inv@88@01 a@54@01 (+ i@55@01 2)) (len<Int> a@54@01))
        (= (mod (inv@88@01 a@54@01 (+ i@55@01 2)) 2) 0))))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap (+ i@55@01 2)))
        $Snap.unit))
    (=
      ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap (+ i@55@01 2))))
      ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@86@01))))) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap (+ i@55@01 2))))))))
(assert (access%trigger ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
  ($SortWrappers.IArrayTo$Snap a@54@01)
  ($SortWrappers.IntTo$Snap (+ i@55@01 2)))) a@54@01 (+ i@55@01 2)))
; [eval] i % 2 == 0
; [eval] i % 2
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= (mod (+ i@55@01 2) 2) 0))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 54 | i@55@01 + 2 % 2 == 0 | live]
; [else-branch: 54 | i@55@01 + 2 % 2 != 0 | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 54 | i@55@01 + 2 % 2 == 0]
(assert (=
  ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap (+ i@55@01 2))))
  ($Snap.combine
    ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap (+ i@55@01 2)))))
    ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap (+ i@55@01 2))))))))
; [eval] loc(a, i)
(assert (not (= (loc<Ref> a@54@01 (+ i@55@01 2)) $Ref.null)))
; [eval] loc(a, i + 1)
; [eval] i + 1
(push) ; 8
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@54@01 (+ i@55@01 2)) (loc<Ref> a@54@01 (+ (+ i@55@01 2) 1)))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (not (= (loc<Ref> a@54@01 (+ (+ i@55@01 2) 1)) $Ref.null)))
; [eval] loc(a, i).val == newVal
; [eval] loc(a, i)
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (and
  (=>
    (and
      (img@89@01 a@54@01 (+ i@55@01 2))
      (and
        (>= (inv@88@01 a@54@01 (+ i@55@01 2)) 0)
        (and
          (< (inv@88@01 a@54@01 (+ i@55@01 2)) (len<Int> a@54@01))
          (= (mod (inv@88@01 a@54@01 (+ i@55@01 2)) 2) 0))))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap (+ i@55@01 2)))
          $Snap.unit))
      (=
        ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap (+ i@55@01 2))))
        ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@86@01))))) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap (+ i@55@01 2)))))))
  (access%trigger ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap (+ i@55@01 2)))) a@54@01 (+ i@55@01 2))))
(assert (=>
  (= (mod (+ i@55@01 2) 2) 0)
  (and
    (=
      ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap (+ i@55@01 2))))
      ($Snap.combine
        ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap (+ i@55@01 2)))))
        ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap (+ i@55@01 2)))))))
    (not (= (loc<Ref> a@54@01 (+ i@55@01 2)) $Ref.null))
    (not (= (loc<Ref> a@54@01 (+ (+ i@55@01 2) 1)) $Ref.null)))))
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap (+ i@55@01 2))))))
  newVal@56@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@86@01)))))))
  $Snap.unit))
; [eval] (unfolding acc(access(a, i), write) in loc(a, i + 1).val == newVal)
(set-option :timeout 0)
(push) ; 6
; Precomputing data for removing quantified permissions
(define-fun pTaken@103@01 ((a IArray) (i Int)) $Perm
  (ite
    (and (= a a@54@01) (= i (+ i@55@01 2)))
    ($Perm.min
      (ite
        (and
          (img@89@01 a i)
          (and
            (>= (inv@88@01 a i) 0)
            (and
              (< (inv@88@01 a i) (len<Int> a@54@01))
              (= (mod (inv@88@01 a i) 2) 0))))
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
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@89@01 a i)
          (and
            (>= (inv@88@01 a i) 0)
            (and
              (< (inv@88@01 a i) (len<Int> a@54@01))
              (= (mod (inv@88@01 a i) 2) 0))))
        $Perm.Write
        $Perm.No)
      (pTaken@103@01 a i))
    $Perm.No)
  
  :qid |quant-u-18286|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@103@01 a i) $Perm.No)
  
  :qid |quant-u-18287|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and (= a a@54@01) (= i (+ i@55@01 2)))
    (= (- $Perm.Write (pTaken@103@01 a i)) $Perm.No))
  
  :qid |quant-u-18288|))))
(check-sat)
; unsat
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
; [eval] i % 2 == 0
; [eval] i % 2
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= (mod (+ i@55@01 2) 2) 0))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 55 | i@55@01 + 2 % 2 == 0 | live]
; [else-branch: 55 | i@55@01 + 2 % 2 != 0 | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 55 | i@55@01 + 2 % 2 == 0]
(assert (=
  ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap (+ i@55@01 2))))
  ($Snap.combine
    ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap (+ i@55@01 2)))))
    ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap (+ i@55@01 2))))))))
; [eval] loc(a, i)
(assert (not (= (loc<Ref> a@54@01 (+ i@55@01 2)) $Ref.null)))
; [eval] loc(a, i + 1)
; [eval] i + 1
(push) ; 8
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@54@01 (+ i@55@01 2)) (loc<Ref> a@54@01 (+ (+ i@55@01 2) 1)))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (not (= (loc<Ref> a@54@01 (+ (+ i@55@01 2) 1)) $Ref.null)))
; [eval] loc(a, i + 1).val == newVal
; [eval] loc(a, i + 1)
; [eval] i + 1
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap (+ i@55@01 2))))))
  newVal@56@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; assert (unfolding acc(access(a, i + 2), write) in
;     loc(a, i + 2).val == newVal) &&
;   (unfolding acc(access(a, i + 2), write) in loc(a, i + 3).val == newVal)
; [eval] (unfolding acc(access(a, i + 2), write) in loc(a, i + 2).val == newVal)
; [eval] i + 2
(set-option :timeout 0)
(push) ; 6
; [eval] i + 2
; Precomputing data for removing quantified permissions
(define-fun pTaken@104@01 ((a IArray) (i Int)) $Perm
  (ite
    (and (= a a@54@01) (= i (+ i@55@01 2)))
    ($Perm.min
      (ite
        (and
          (img@89@01 a i)
          (and
            (>= (inv@88@01 a i) 0)
            (and
              (< (inv@88@01 a i) (len<Int> a@54@01))
              (= (mod (inv@88@01 a i) 2) 0))))
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
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@89@01 a i)
          (and
            (>= (inv@88@01 a i) 0)
            (and
              (< (inv@88@01 a i) (len<Int> a@54@01))
              (= (mod (inv@88@01 a i) 2) 0))))
        $Perm.Write
        $Perm.No)
      (pTaken@104@01 a i))
    $Perm.No)
  
  :qid |quant-u-18290|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@104@01 a i) $Perm.No)
  
  :qid |quant-u-18291|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and (= a a@54@01) (= i (+ i@55@01 2)))
    (= (- $Perm.Write (pTaken@104@01 a i)) $Perm.No))
  
  :qid |quant-u-18292|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
; [eval] i % 2 == 0
; [eval] i % 2
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= (mod (+ i@55@01 2) 2) 0))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 56 | i@55@01 + 2 % 2 == 0 | live]
; [else-branch: 56 | i@55@01 + 2 % 2 != 0 | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 56 | i@55@01 + 2 % 2 == 0]
(assert (=
  ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap (+ i@55@01 2))))
  ($Snap.combine
    ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap (+ i@55@01 2)))))
    ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap (+ i@55@01 2))))))))
; [eval] loc(a, i)
(assert (not (= (loc<Ref> a@54@01 (+ i@55@01 2)) $Ref.null)))
; [eval] loc(a, i + 1)
; [eval] i + 1
(push) ; 8
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@54@01 (+ i@55@01 2)) (loc<Ref> a@54@01 (+ (+ i@55@01 2) 1)))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (not (= (loc<Ref> a@54@01 (+ (+ i@55@01 2) 1)) $Ref.null)))
; [eval] loc(a, i + 2).val == newVal
; [eval] loc(a, i + 2)
; [eval] i + 2
(pop) ; 7
(pop) ; 6
; Joined path conditions
; [eval] (unfolding acc(access(a, i + 2), write) in loc(a, i + 3).val == newVal)
; [eval] i + 2
(set-option :timeout 0)
(push) ; 6
; [eval] i + 2
; Precomputing data for removing quantified permissions
(define-fun pTaken@105@01 ((a IArray) (i Int)) $Perm
  (ite
    (and (= a a@54@01) (= i (+ i@55@01 2)))
    ($Perm.min
      (ite
        (and
          (img@89@01 a i)
          (and
            (>= (inv@88@01 a i) 0)
            (and
              (< (inv@88@01 a i) (len<Int> a@54@01))
              (= (mod (inv@88@01 a i) 2) 0))))
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
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@89@01 a i)
          (and
            (>= (inv@88@01 a i) 0)
            (and
              (< (inv@88@01 a i) (len<Int> a@54@01))
              (= (mod (inv@88@01 a i) 2) 0))))
        $Perm.Write
        $Perm.No)
      (pTaken@105@01 a i))
    $Perm.No)
  
  :qid |quant-u-18294|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@105@01 a i) $Perm.No)
  
  :qid |quant-u-18295|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and (= a a@54@01) (= i (+ i@55@01 2)))
    (= (- $Perm.Write (pTaken@105@01 a i)) $Perm.No))
  
  :qid |quant-u-18296|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
; [eval] i % 2 == 0
; [eval] i % 2
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= (mod (+ i@55@01 2) 2) 0))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 57 | i@55@01 + 2 % 2 == 0 | live]
; [else-branch: 57 | i@55@01 + 2 % 2 != 0 | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 57 | i@55@01 + 2 % 2 == 0]
(assert (=
  ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap (+ i@55@01 2))))
  ($Snap.combine
    ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap (+ i@55@01 2)))))
    ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap (+ i@55@01 2))))))))
; [eval] loc(a, i)
(assert (not (= (loc<Ref> a@54@01 (+ i@55@01 2)) $Ref.null)))
; [eval] loc(a, i + 1)
; [eval] i + 1
(push) ; 8
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@54@01 (+ i@55@01 2)) (loc<Ref> a@54@01 (+ (+ i@55@01 2) 1)))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (not (= (loc<Ref> a@54@01 (+ (+ i@55@01 2) 1)) $Ref.null)))
; [eval] loc(a, i + 3).val == newVal
; [eval] loc(a, i + 3)
; [eval] i + 3
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@54@01 (+ (+ i@55@01 2) 1)) (loc<Ref> a@54@01 (+ i@55@01 3)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(pop) ; 6
; Joined path conditions
; [exec]
; assert (unfolding acc(access(a, i), write) in loc(a, i).val == newVal) &&
;   (unfolding acc(access(a, i), write) in loc(a, i + 1).val == newVal)
; [eval] (unfolding acc(access(a, i), write) in loc(a, i).val == newVal)
(set-option :timeout 0)
(push) ; 6
; Precomputing data for removing quantified permissions
(define-fun pTaken@106@01 ((a IArray) (i Int)) $Perm
  (ite
    (and (= a a@54@01) (= i i@55@01))
    ($Perm.min
      (ite
        (and
          (img@89@01 a i)
          (and
            (>= (inv@88@01 a i) 0)
            (and
              (< (inv@88@01 a i) (len<Int> a@54@01))
              (= (mod (inv@88@01 a i) 2) 0))))
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
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@89@01 a i)
          (and
            (>= (inv@88@01 a i) 0)
            (and
              (< (inv@88@01 a i) (len<Int> a@54@01))
              (= (mod (inv@88@01 a i) 2) 0))))
        $Perm.Write
        $Perm.No)
      (pTaken@106@01 a i))
    $Perm.No)
  
  :qid |quant-u-18298|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@106@01 a i) $Perm.No)
  
  :qid |quant-u-18299|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and (= a a@54@01) (= i i@55@01))
    (= (- $Perm.Write (pTaken@106@01 a i)) $Perm.No))
  
  :qid |quant-u-18300|))))
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
  (and
    (img@89@01 a@54@01 i@55@01)
    (and
      (>= (inv@88@01 a@54@01 i@55@01) 0)
      (and
        (< (inv@88@01 a@54@01 i@55@01) (len<Int> a@54@01))
        (= (mod (inv@88@01 a@54@01 i@55@01) 2) 0))))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap i@55@01))
        $Snap.unit))
    (=
      ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap i@55@01)))
      ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@86@01))))) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap i@55@01)))))))
(assert (access%trigger ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
  ($SortWrappers.IArrayTo$Snap a@54@01)
  ($SortWrappers.IntTo$Snap i@55@01))) a@54@01 i@55@01))
; [eval] i % 2 == 0
; [eval] i % 2
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= (mod i@55@01 2) 0))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 58 | i@55@01 % 2 == 0 | live]
; [else-branch: 58 | i@55@01 % 2 != 0 | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 58 | i@55@01 % 2 == 0]
(assert (=
  ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap i@55@01)))
  ($Snap.combine
    ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap i@55@01))))
    ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap i@55@01)))))))
; [eval] loc(a, i)
; [eval] loc(a, i + 1)
; [eval] i + 1
(push) ; 8
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@54@01 i@55@01) (loc<Ref> a@54@01 (+ i@55@01 1)))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] loc(a, i).val == newVal
; [eval] loc(a, i)
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (and
  (=>
    (and
      (img@89@01 a@54@01 i@55@01)
      (and
        (>= (inv@88@01 a@54@01 i@55@01) 0)
        (and
          (< (inv@88@01 a@54@01 i@55@01) (len<Int> a@54@01))
          (= (mod (inv@88@01 a@54@01 i@55@01) 2) 0))))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap i@55@01))
          $Snap.unit))
      (=
        ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap i@55@01)))
        ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@86@01))))) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap i@55@01))))))
  (access%trigger ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap i@55@01))) a@54@01 i@55@01)))
(assert (=>
  (= (mod i@55@01 2) 0)
  (=
    ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap i@55@01)))
    ($Snap.combine
      ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap i@55@01))))
      ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap i@55@01))))))))
(set-option :timeout 0)
(push) ; 6
(assert (not (=
  ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap i@55@01)))))
  newVal@56@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap i@55@01)))))
  newVal@56@01))
; [eval] (unfolding acc(access(a, i), write) in loc(a, i + 1).val == newVal)
(push) ; 6
; Precomputing data for removing quantified permissions
(define-fun pTaken@107@01 ((a IArray) (i Int)) $Perm
  (ite
    (and (= a a@54@01) (= i i@55@01))
    ($Perm.min
      (ite
        (and
          (img@89@01 a i)
          (and
            (>= (inv@88@01 a i) 0)
            (and
              (< (inv@88@01 a i) (len<Int> a@54@01))
              (= (mod (inv@88@01 a i) 2) 0))))
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
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@89@01 a i)
          (and
            (>= (inv@88@01 a i) 0)
            (and
              (< (inv@88@01 a i) (len<Int> a@54@01))
              (= (mod (inv@88@01 a i) 2) 0))))
        $Perm.Write
        $Perm.No)
      (pTaken@107@01 a i))
    $Perm.No)
  
  :qid |quant-u-18302|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@107@01 a i) $Perm.No)
  
  :qid |quant-u-18303|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and (= a a@54@01) (= i i@55@01))
    (= (- $Perm.Write (pTaken@107@01 a i)) $Perm.No))
  
  :qid |quant-u-18304|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
; [eval] i % 2 == 0
; [eval] i % 2
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= (mod i@55@01 2) 0))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 59 | i@55@01 % 2 == 0 | live]
; [else-branch: 59 | i@55@01 % 2 != 0 | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 59 | i@55@01 % 2 == 0]
(assert (=
  ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap i@55@01)))
  ($Snap.combine
    ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap i@55@01))))
    ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap i@55@01)))))))
; [eval] loc(a, i)
; [eval] loc(a, i + 1)
; [eval] i + 1
(push) ; 8
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@54@01 i@55@01) (loc<Ref> a@54@01 (+ i@55@01 1)))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] loc(a, i + 1).val == newVal
; [eval] loc(a, i + 1)
; [eval] i + 1
(pop) ; 7
(pop) ; 6
; Joined path conditions
(set-option :timeout 0)
(push) ; 6
(assert (not (=
  ($SortWrappers.$SnapToInt ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap i@55@01)))))
  newVal@56@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap i@55@01)))))
  newVal@56@01))
; [eval] i >= 0
; [eval] i < len(a)
; [eval] len(a)
; [eval] len(a) % 2 == old(len(a) % 2)
; [eval] len(a) % 2
; [eval] len(a)
; [eval] old(len(a) % 2)
; [eval] len(a) % 2
; [eval] len(a)
(declare-const j@108@01 Int)
(push) ; 6
; [eval] j >= 0 && (j < len(a) && j % 2 == 0)
; [eval] j >= 0
(push) ; 7
; [then-branch: 60 | !(j@108@01 >= 0) | live]
; [else-branch: 60 | j@108@01 >= 0 | live]
(push) ; 8
; [then-branch: 60 | !(j@108@01 >= 0)]
(assert (not (>= j@108@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 60 | j@108@01 >= 0]
(assert (>= j@108@01 0))
; [eval] j < len(a)
; [eval] len(a)
(push) ; 9
; [then-branch: 61 | !(j@108@01 < len[Int](a@54@01)) | live]
; [else-branch: 61 | j@108@01 < len[Int](a@54@01) | live]
(push) ; 10
; [then-branch: 61 | !(j@108@01 < len[Int](a@54@01))]
(assert (not (< j@108@01 (len<Int> a@54@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 61 | j@108@01 < len[Int](a@54@01)]
(assert (< j@108@01 (len<Int> a@54@01)))
; [eval] j % 2 == 0
; [eval] j % 2
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< j@108@01 (len<Int> a@54@01)) (not (< j@108@01 (len<Int> a@54@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@108@01 0)
  (and
    (>= j@108@01 0)
    (or (< j@108@01 (len<Int> a@54@01)) (not (< j@108@01 (len<Int> a@54@01)))))))
(assert (or (>= j@108@01 0) (not (>= j@108@01 0))))
(assert (and
  (>= j@108@01 0)
  (and (< j@108@01 (len<Int> a@54@01)) (= (mod j@108@01 2) 0))))
(pop) ; 6
(declare-fun inv@109@01 (IArray Int) Int)
(declare-fun img@110@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@108@01 Int)) (!
  (=>
    (and
      (>= j@108@01 0)
      (and (< j@108@01 (len<Int> a@54@01)) (= (mod j@108@01 2) 0)))
    (and
      (=>
        (>= j@108@01 0)
        (and
          (>= j@108@01 0)
          (or
            (< j@108@01 (len<Int> a@54@01))
            (not (< j@108@01 (len<Int> a@54@01))))))
      (or (>= j@108@01 0) (not (>= j@108@01 0)))))
  :pattern ((inv@109@01 a@54@01 j@108@01))
  :pattern ((img@110@01 a@54@01 j@108@01))
  :qid |access-aux|)))
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((j1@108@01 Int) (j2@108@01 Int)) (!
  (=>
    (and
      (and
        (>= j1@108@01 0)
        (and (< j1@108@01 (len<Int> a@54@01)) (= (mod j1@108@01 2) 0)))
      (and
        (>= j2@108@01 0)
        (and (< j2@108@01 (len<Int> a@54@01)) (= (mod j2@108@01 2) 0)))
      (= j1@108@01 j2@108@01))
    (= j1@108@01 j2@108@01))
  
  :qid |access-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@108@01 Int)) (!
  (=>
    (and
      (>= j@108@01 0)
      (and (< j@108@01 (len<Int> a@54@01)) (= (mod j@108@01 2) 0)))
    (and
      (= (inv@109@01 a@54@01 j@108@01) j@108@01)
      (img@110@01 a@54@01 j@108@01)))
  :pattern ((inv@109@01 a@54@01 j@108@01))
  :pattern ((img@110@01 a@54@01 j@108@01))
  :qid |access-invOfFct|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (img@110@01 a i)
      (and
        (>= (inv@109@01 a i) 0)
        (and
          (< (inv@109@01 a i) (len<Int> a@54@01))
          (= (mod (inv@109@01 a i) 2) 0))))
    (and (= a@54@01 a) (= (inv@109@01 a i) i)))
  :pattern ((inv@109@01 a i))
  :qid |access-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@111@01 ((a IArray) (i Int)) $Perm
  (ite
    (and
      (and
        (>= (inv@109@01 a i) 0)
        (and
          (< (inv@109@01 a i) (len<Int> a@54@01))
          (= (mod (inv@109@01 a i) 2) 0)))
      (img@110@01 a i)
      (and (= a a@54@01) (= i (inv@109@01 a i))))
    ($Perm.min
      (ite
        (and
          (img@89@01 a i)
          (and
            (>= (inv@88@01 a i) 0)
            (and
              (< (inv@88@01 a i) (len<Int> a@54@01))
              (= (mod (inv@88@01 a i) 2) 0))))
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
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@89@01 a i)
          (and
            (>= (inv@88@01 a i) 0)
            (and
              (< (inv@88@01 a i) (len<Int> a@54@01))
              (= (mod (inv@88@01 a i) 2) 0))))
        $Perm.Write
        $Perm.No)
      (pTaken@111@01 a i))
    $Perm.No)
  
  :qid |quant-u-18307|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (and
        (>= (inv@109@01 a i) 0)
        (and
          (< (inv@109@01 a i) (len<Int> a@54@01))
          (= (mod (inv@109@01 a i) 2) 0)))
      (img@110@01 a i)
      (and (= a a@54@01) (= i (inv@109@01 a i))))
    (= (- $Perm.Write (pTaken@111@01 a i)) $Perm.No))
  
  :qid |quant-u-18308|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall j: Int :: { old(loc(a, j)) } j >= 0 && (j < i && j % 2 == 0) ==> (unfolding acc(access(a, j), write) in loc(a, j).val) == old((unfolding acc(access(a, j), write) in loc(a, j).val)))
(declare-const j@112@01 Int)
(set-option :timeout 0)
(push) ; 6
; [eval] j >= 0 && (j < i && j % 2 == 0) ==> (unfolding acc(access(a, j), write) in loc(a, j).val) == old((unfolding acc(access(a, j), write) in loc(a, j).val))
; [eval] j >= 0 && (j < i && j % 2 == 0)
; [eval] j >= 0
(push) ; 7
; [then-branch: 62 | !(j@112@01 >= 0) | live]
; [else-branch: 62 | j@112@01 >= 0 | live]
(push) ; 8
; [then-branch: 62 | !(j@112@01 >= 0)]
(assert (not (>= j@112@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 62 | j@112@01 >= 0]
(assert (>= j@112@01 0))
; [eval] j < i
(push) ; 9
; [then-branch: 63 | !(j@112@01 < i@55@01) | live]
; [else-branch: 63 | j@112@01 < i@55@01 | live]
(push) ; 10
; [then-branch: 63 | !(j@112@01 < i@55@01)]
(assert (not (< j@112@01 i@55@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 63 | j@112@01 < i@55@01]
(assert (< j@112@01 i@55@01))
; [eval] j % 2 == 0
; [eval] j % 2
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< j@112@01 i@55@01) (not (< j@112@01 i@55@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@112@01 0)
  (and (>= j@112@01 0) (or (< j@112@01 i@55@01) (not (< j@112@01 i@55@01))))))
(assert (or (>= j@112@01 0) (not (>= j@112@01 0))))
(push) ; 7
; [then-branch: 64 | j@112@01 >= 0 && j@112@01 < i@55@01 && j@112@01 % 2 == 0 | live]
; [else-branch: 64 | !(j@112@01 >= 0 && j@112@01 < i@55@01 && j@112@01 % 2 == 0) | live]
(push) ; 8
; [then-branch: 64 | j@112@01 >= 0 && j@112@01 < i@55@01 && j@112@01 % 2 == 0]
(assert (and (>= j@112@01 0) (and (< j@112@01 i@55@01) (= (mod j@112@01 2) 0))))
; [eval] (unfolding acc(access(a, j), write) in loc(a, j).val) == old((unfolding acc(access(a, j), write) in loc(a, j).val))
; [eval] (unfolding acc(access(a, j), write) in loc(a, j).val)
(push) ; 9
; Precomputing data for removing quantified permissions
(define-fun pTaken@113@01 ((a IArray) (i Int) (j@112@01 Int)) $Perm
  (ite
    (and (= a a@54@01) (= i j@112@01))
    ($Perm.min
      (ite
        (and
          (img@89@01 a i)
          (and
            (>= (inv@88@01 a i) 0)
            (and
              (< (inv@88@01 a i) (len<Int> a@54@01))
              (= (mod (inv@88@01 a i) 2) 0))))
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
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@89@01 a i)
          (and
            (>= (inv@88@01 a i) 0)
            (and
              (< (inv@88@01 a i) (len<Int> a@54@01))
              (= (mod (inv@88@01 a i) 2) 0))))
        $Perm.Write
        $Perm.No)
      (pTaken@113@01 a i j@112@01))
    $Perm.No)
  
  :qid |quant-u-18310|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@113@01 a i j@112@01) $Perm.No)
  
  :qid |quant-u-18311|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and (= a a@54@01) (= i j@112@01))
    (= (- $Perm.Write (pTaken@113@01 a i j@112@01)) $Perm.No))
  
  :qid |quant-u-18312|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@89@01 a@54@01 j@112@01)
    (and
      (>= (inv@88@01 a@54@01 j@112@01) 0)
      (and
        (< (inv@88@01 a@54@01 j@112@01) (len<Int> a@54@01))
        (= (mod (inv@88@01 a@54@01 j@112@01) 2) 0))))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@112@01))
        $Snap.unit))
    (=
      ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@112@01)))
      ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@86@01))))) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@112@01)))))))
(assert (access%trigger ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
  ($SortWrappers.IArrayTo$Snap a@54@01)
  ($SortWrappers.IntTo$Snap j@112@01))) a@54@01 j@112@01))
; [eval] i % 2 == 0
; [eval] i % 2
; [then-branch: 65 | j@112@01 % 2 == 0 | live]
; [else-branch: 65 | j@112@01 % 2 != 0 | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 65 | j@112@01 % 2 == 0]
(assert (=
  ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap j@112@01)))
  ($Snap.combine
    ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@112@01))))
    ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@112@01)))))))
; [eval] loc(a, i)
(assert (not (= (loc<Ref> a@54@01 j@112@01) $Ref.null)))
; [eval] loc(a, i + 1)
; [eval] i + 1
(push) ; 11
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@54@01 j@112@01) (loc<Ref> a@54@01 (+ j@112@01 1)))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (not (= (loc<Ref> a@54@01 (+ j@112@01 1)) $Ref.null)))
; [eval] loc(a, j)
(pop) ; 10
(set-option :timeout 0)
(push) ; 10
; [else-branch: 65 | j@112@01 % 2 != 0]
(assert (not (= (mod j@112@01 2) 0)))
(assert (=
  ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap j@112@01)))
  $Snap.unit))
; [eval] loc(a, j)
(check-sat)
; unsat
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (and
  (=>
    (and
      (img@89@01 a@54@01 j@112@01)
      (and
        (>= (inv@88@01 a@54@01 j@112@01) 0)
        (and
          (< (inv@88@01 a@54@01 j@112@01) (len<Int> a@54@01))
          (= (mod (inv@88@01 a@54@01 j@112@01) 2) 0))))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@112@01))
          $Snap.unit))
      (=
        ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@112@01)))
        ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@86@01))))) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@112@01))))))
  (access%trigger ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap j@112@01))) a@54@01 j@112@01)))
(assert (=>
  (= (mod j@112@01 2) 0)
  (and
    (=
      ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@112@01)))
      ($Snap.combine
        ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@112@01))))
        ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@112@01))))))
    (not (= (loc<Ref> a@54@01 j@112@01) $Ref.null))
    (not (= (loc<Ref> a@54@01 (+ j@112@01 1)) $Ref.null)))))
; [eval] old((unfolding acc(access(a, j), write) in loc(a, j).val))
; [eval] (unfolding acc(access(a, j), write) in loc(a, j).val)
(push) ; 9
; Precomputing data for removing quantified permissions
(define-fun pTaken@114@01 ((a IArray) (i Int) (j@112@01 Int)) $Perm
  (ite
    (and (= a a@54@01) (= i j@112@01))
    ($Perm.min
      (ite
        (and
          (img@60@01 a i)
          (and
            (>= (inv@59@01 a i) 0)
            (and
              (< (inv@59@01 a i) (len<Int> a@54@01))
              (= (mod (inv@59@01 a i) 2) 0))))
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
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@60@01 a i)
          (and
            (>= (inv@59@01 a i) 0)
            (and
              (< (inv@59@01 a i) (len<Int> a@54@01))
              (= (mod (inv@59@01 a i) 2) 0))))
        $Perm.Write
        $Perm.No)
      (pTaken@114@01 a i j@112@01))
    $Perm.No)
  
  :qid |quant-u-18314|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@114@01 a i j@112@01) $Perm.No)
  
  :qid |quant-u-18315|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and (= a a@54@01) (= i j@112@01))
    (= (- $Perm.Write (pTaken@114@01 a i j@112@01)) $Perm.No))
  
  :qid |quant-u-18316|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@60@01 a@54@01 j@112@01)
    (and
      (>= (inv@59@01 a@54@01 j@112@01) 0)
      (and
        (< (inv@59@01 a@54@01 j@112@01) (len<Int> a@54@01))
        (= (mod (inv@59@01 a@54@01 j@112@01) 2) 0))))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@112@01))
        $Snap.unit))
    (=
      ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@112@01)))
      ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01))))) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@112@01)))))))
(assert (access%trigger ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
  ($SortWrappers.IArrayTo$Snap a@54@01)
  ($SortWrappers.IntTo$Snap j@112@01))) a@54@01 j@112@01))
; [eval] i % 2 == 0
; [eval] i % 2
; [then-branch: 66 | j@112@01 % 2 == 0 | live]
; [else-branch: 66 | j@112@01 % 2 != 0 | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 66 | j@112@01 % 2 == 0]
(assert (=
  ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap j@112@01)))
  ($Snap.combine
    ($Snap.first ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@112@01))))
    ($Snap.second ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@112@01)))))))
; [eval] loc(a, i)
(assert (not (= (loc<Ref> a@54@01 j@112@01) $Ref.null)))
; [eval] loc(a, i + 1)
; [eval] i + 1
(push) ; 11
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@54@01 j@112@01) (loc<Ref> a@54@01 (+ j@112@01 1)))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (not (= (loc<Ref> a@54@01 (+ j@112@01 1)) $Ref.null)))
; [eval] loc(a, j)
(pop) ; 10
(set-option :timeout 0)
(push) ; 10
; [else-branch: 66 | j@112@01 % 2 != 0]
(assert (not (= (mod j@112@01 2) 0)))
(assert (=
  ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap j@112@01)))
  $Snap.unit))
; [eval] loc(a, j)
(check-sat)
; unsat
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (and
  (=>
    (and
      (img@60@01 a@54@01 j@112@01)
      (and
        (>= (inv@59@01 a@54@01 j@112@01) 0)
        (and
          (< (inv@59@01 a@54@01 j@112@01) (len<Int> a@54@01))
          (= (mod (inv@59@01 a@54@01 j@112@01) 2) 0))))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@112@01))
          $Snap.unit))
      (=
        ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@112@01)))
        ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01))))) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@112@01))))))
  (access%trigger ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap j@112@01))) a@54@01 j@112@01)))
(assert (=>
  (= (mod j@112@01 2) 0)
  (and
    (=
      ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@112@01)))
      ($Snap.combine
        ($Snap.first ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@112@01))))
        ($Snap.second ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@112@01))))))
    (not (= (loc<Ref> a@54@01 j@112@01) $Ref.null))
    (not (= (loc<Ref> a@54@01 (+ j@112@01 1)) $Ref.null)))))
(pop) ; 8
(push) ; 8
; [else-branch: 64 | !(j@112@01 >= 0 && j@112@01 < i@55@01 && j@112@01 % 2 == 0)]
(assert (not (and (>= j@112@01 0) (and (< j@112@01 i@55@01) (= (mod j@112@01 2) 0)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  (and (>= j@112@01 0) (and (< j@112@01 i@55@01) (= (mod j@112@01 2) 0)))
  (and
    (>= j@112@01 0)
    (< j@112@01 i@55@01)
    (= (mod j@112@01 2) 0)
    (=>
      (and
        (img@89@01 a@54@01 j@112@01)
        (and
          (>= (inv@88@01 a@54@01 j@112@01) 0)
          (and
            (< (inv@88@01 a@54@01 j@112@01) (len<Int> a@54@01))
            (= (mod (inv@88@01 a@54@01 j@112@01) 2) 0))))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap j@112@01))
            $Snap.unit))
        (=
          ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@112@01)))
          ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@86@01))))) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@112@01))))))
    (access%trigger ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@112@01))) a@54@01 j@112@01)
    (=>
      (= (mod j@112@01 2) 0)
      (and
        (=
          ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@112@01)))
          ($Snap.combine
            ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap j@112@01))))
            ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap j@112@01))))))
        (not (= (loc<Ref> a@54@01 j@112@01) $Ref.null))
        (not (= (loc<Ref> a@54@01 (+ j@112@01 1)) $Ref.null))))
    (=>
      (and
        (img@60@01 a@54@01 j@112@01)
        (and
          (>= (inv@59@01 a@54@01 j@112@01) 0)
          (and
            (< (inv@59@01 a@54@01 j@112@01) (len<Int> a@54@01))
            (= (mod (inv@59@01 a@54@01 j@112@01) 2) 0))))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap j@112@01))
            $Snap.unit))
        (=
          ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@112@01)))
          ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01))))) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@112@01))))))
    (access%trigger ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@112@01))) a@54@01 j@112@01)
    (=>
      (= (mod j@112@01 2) 0)
      (and
        (=
          ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@112@01)))
          ($Snap.combine
            ($Snap.first ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap j@112@01))))
            ($Snap.second ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap j@112@01))))))
        (not (= (loc<Ref> a@54@01 j@112@01) $Ref.null))
        (not (= (loc<Ref> a@54@01 (+ j@112@01 1)) $Ref.null)))))))
; Joined path conditions
(assert (or
  (not (and (>= j@112@01 0) (and (< j@112@01 i@55@01) (= (mod j@112@01 2) 0))))
  (and (>= j@112@01 0) (and (< j@112@01 i@55@01) (= (mod j@112@01 2) 0)))))
; [eval] old(loc(a, j))
; [eval] loc(a, j)
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@112@01 Int)) (!
  (and
    (=>
      (>= j@112@01 0)
      (and (>= j@112@01 0) (or (< j@112@01 i@55@01) (not (< j@112@01 i@55@01)))))
    (or (>= j@112@01 0) (not (>= j@112@01 0)))
    (=>
      (and (>= j@112@01 0) (and (< j@112@01 i@55@01) (= (mod j@112@01 2) 0)))
      (and
        (>= j@112@01 0)
        (< j@112@01 i@55@01)
        (= (mod j@112@01 2) 0)
        (=>
          (and
            (img@89@01 a@54@01 j@112@01)
            (and
              (>= (inv@88@01 a@54@01 j@112@01) 0)
              (and
                (< (inv@88@01 a@54@01 j@112@01) (len<Int> a@54@01))
                (= (mod (inv@88@01 a@54@01 j@112@01) 2) 0))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap j@112@01))
                $Snap.unit))
            (=
              ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@112@01)))
              ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@86@01))))) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@112@01))))))
        (access%trigger ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@112@01))) a@54@01 j@112@01)
        (=>
          (= (mod j@112@01 2) 0)
          (and
            (=
              ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@112@01)))
              ($Snap.combine
                ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap j@112@01))))
                ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap j@112@01))))))
            (not (= (loc<Ref> a@54@01 j@112@01) $Ref.null))
            (not (= (loc<Ref> a@54@01 (+ j@112@01 1)) $Ref.null))))
        (=>
          (and
            (img@60@01 a@54@01 j@112@01)
            (and
              (>= (inv@59@01 a@54@01 j@112@01) 0)
              (and
                (< (inv@59@01 a@54@01 j@112@01) (len<Int> a@54@01))
                (= (mod (inv@59@01 a@54@01 j@112@01) 2) 0))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap j@112@01))
                $Snap.unit))
            (=
              ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@112@01)))
              ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01))))) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@112@01))))))
        (access%trigger ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@112@01))) a@54@01 j@112@01)
        (=>
          (= (mod j@112@01 2) 0)
          (and
            (=
              ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@112@01)))
              ($Snap.combine
                ($Snap.first ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap j@112@01))))
                ($Snap.second ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap j@112@01))))))
            (not (= (loc<Ref> a@54@01 j@112@01) $Ref.null))
            (not (= (loc<Ref> a@54@01 (+ j@112@01 1)) $Ref.null))))))
    (or
      (not
        (and (>= j@112@01 0) (and (< j@112@01 i@55@01) (= (mod j@112@01 2) 0))))
      (and (>= j@112@01 0) (and (< j@112@01 i@55@01) (= (mod j@112@01 2) 0)))))
  :pattern ((loc<Ref> a@54@01 j@112@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/issues/block_array.vpr@50@9@50@157-aux|)))
(push) ; 6
(assert (not (forall ((j@112@01 Int)) (!
  (=>
    (and (>= j@112@01 0) (and (< j@112@01 i@55@01) (= (mod j@112@01 2) 0)))
    (=
      ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@112@01)))))
      ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@112@01)))))))
  :pattern ((loc<Ref> a@54@01 j@112@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/issues/block_array.vpr@50@9@50@157|))))
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
; [eval] (forall j: Int :: { old(loc(a, j)) } j >= 0 && (j < i && j % 2 == 0) ==> (unfolding acc(access(a, j), write) in loc(a, j).val) == old((unfolding acc(access(a, j), write) in loc(a, j).val)))
(declare-const j@115@01 Int)
(set-option :timeout 0)
(push) ; 6
; [eval] j >= 0 && (j < i && j % 2 == 0) ==> (unfolding acc(access(a, j), write) in loc(a, j).val) == old((unfolding acc(access(a, j), write) in loc(a, j).val))
; [eval] j >= 0 && (j < i && j % 2 == 0)
; [eval] j >= 0
(push) ; 7
; [then-branch: 67 | !(j@115@01 >= 0) | live]
; [else-branch: 67 | j@115@01 >= 0 | live]
(push) ; 8
; [then-branch: 67 | !(j@115@01 >= 0)]
(assert (not (>= j@115@01 0)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 8
(set-option :timeout 0)
(push) ; 8
; [else-branch: 67 | j@115@01 >= 0]
(assert (>= j@115@01 0))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] j < i
(set-option :timeout 0)
(push) ; 9
; [then-branch: 68 | !(j@115@01 < i@55@01) | live]
; [else-branch: 68 | j@115@01 < i@55@01 | live]
(push) ; 10
; [then-branch: 68 | !(j@115@01 < i@55@01)]
(assert (not (< j@115@01 i@55@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 10
(set-option :timeout 0)
(push) ; 10
; [else-branch: 68 | j@115@01 < i@55@01]
(assert (< j@115@01 i@55@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] j % 2 == 0
; [eval] j % 2
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< j@115@01 i@55@01) (not (< j@115@01 i@55@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@115@01 0)
  (and (>= j@115@01 0) (or (< j@115@01 i@55@01) (not (< j@115@01 i@55@01))))))
(assert (or (>= j@115@01 0) (not (>= j@115@01 0))))
(set-option :timeout 0)
(push) ; 7
; [then-branch: 69 | j@115@01 >= 0 && j@115@01 < i@55@01 && j@115@01 % 2 == 0 | live]
; [else-branch: 69 | !(j@115@01 >= 0 && j@115@01 < i@55@01 && j@115@01 % 2 == 0) | live]
(push) ; 8
; [then-branch: 69 | j@115@01 >= 0 && j@115@01 < i@55@01 && j@115@01 % 2 == 0]
(assert (and (>= j@115@01 0) (and (< j@115@01 i@55@01) (= (mod j@115@01 2) 0))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (unfolding acc(access(a, j), write) in loc(a, j).val) == old((unfolding acc(access(a, j), write) in loc(a, j).val))
; [eval] (unfolding acc(access(a, j), write) in loc(a, j).val)
(set-option :timeout 0)
(push) ; 9
; Precomputing data for removing quantified permissions
(define-fun pTaken@116@01 ((a IArray) (i Int) (j@115@01 Int)) $Perm
  (ite
    (and (= a a@54@01) (= i j@115@01))
    ($Perm.min
      (ite
        (and
          (img@89@01 a i)
          (and
            (>= (inv@88@01 a i) 0)
            (and
              (< (inv@88@01 a i) (len<Int> a@54@01))
              (= (mod (inv@88@01 a i) 2) 0))))
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
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@89@01 a i)
          (and
            (>= (inv@88@01 a i) 0)
            (and
              (< (inv@88@01 a i) (len<Int> a@54@01))
              (= (mod (inv@88@01 a i) 2) 0))))
        $Perm.Write
        $Perm.No)
      (pTaken@116@01 a i j@115@01))
    $Perm.No)
  
  :qid |quant-u-18318|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@116@01 a i j@115@01) $Perm.No)
  
  :qid |quant-u-18319|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and (= a a@54@01) (= i j@115@01))
    (= (- $Perm.Write (pTaken@116@01 a i j@115@01)) $Perm.No))
  
  :qid |quant-u-18320|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@89@01 a@54@01 j@115@01)
    (and
      (>= (inv@88@01 a@54@01 j@115@01) 0)
      (and
        (< (inv@88@01 a@54@01 j@115@01) (len<Int> a@54@01))
        (= (mod (inv@88@01 a@54@01 j@115@01) 2) 0))))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@115@01))
        $Snap.unit))
    (=
      ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@115@01)))
      ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@86@01))))) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@115@01)))))))
(assert (access%trigger ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
  ($SortWrappers.IArrayTo$Snap a@54@01)
  ($SortWrappers.IntTo$Snap j@115@01))) a@54@01 j@115@01))
; [eval] i % 2 == 0
; [eval] i % 2
; [then-branch: 70 | j@115@01 % 2 == 0 | live]
; [else-branch: 70 | j@115@01 % 2 != 0 | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 70 | j@115@01 % 2 == 0]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(assert (=
  ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap j@115@01)))
  ($Snap.combine
    ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@115@01))))
    ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@115@01)))))))
; [eval] loc(a, i)
(assert (not (= (loc<Ref> a@54@01 j@115@01) $Ref.null)))
; [eval] loc(a, i + 1)
; [eval] i + 1
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@54@01 j@115@01) (loc<Ref> a@54@01 (+ j@115@01 1)))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (not (= (loc<Ref> a@54@01 (+ j@115@01 1)) $Ref.null)))
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@54@01 (+ j@115@01 1)) (loc<Ref> a@54@01 j@115@01))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@115@01)))))
    ($SortWrappers.$SnapToInt ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@115@01)))))))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@115@01)))))
    ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@115@01)))))))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (and
  (not (= (loc<Ref> a@54@01 j@115@01) (loc<Ref> a@54@01 (+ j@115@01 1))))
  (not (= (loc<Ref> a@54@01 (+ j@115@01 1)) (loc<Ref> a@54@01 j@115@01)))))
; [eval] loc(a, j)
(pop) ; 10
(set-option :timeout 0)
(push) ; 10
; [else-branch: 70 | j@115@01 % 2 != 0]
(assert (not (= (mod j@115@01 2) 0)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(assert (=
  ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap j@115@01)))
  $Snap.unit))
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unsat
; [eval] loc(a, j)
(set-option :timeout 0)
(check-sat)
; unsat
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (and
  (=>
    (and
      (img@89@01 a@54@01 j@115@01)
      (and
        (>= (inv@88@01 a@54@01 j@115@01) 0)
        (and
          (< (inv@88@01 a@54@01 j@115@01) (len<Int> a@54@01))
          (= (mod (inv@88@01 a@54@01 j@115@01) 2) 0))))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@115@01))
          $Snap.unit))
      (=
        ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@115@01)))
        ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@86@01))))) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@115@01))))))
  (access%trigger ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap j@115@01))) a@54@01 j@115@01)))
(assert (=>
  (= (mod j@115@01 2) 0)
  (and
    (=
      ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@115@01)))
      ($Snap.combine
        ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@115@01))))
        ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@115@01))))))
    (not (= (loc<Ref> a@54@01 j@115@01) $Ref.null))
    (not (= (loc<Ref> a@54@01 (+ j@115@01 1)) $Ref.null))
    (not (= (loc<Ref> a@54@01 j@115@01) (loc<Ref> a@54@01 (+ j@115@01 1))))
    (not (= (loc<Ref> a@54@01 (+ j@115@01 1)) (loc<Ref> a@54@01 j@115@01))))))
; [eval] old((unfolding acc(access(a, j), write) in loc(a, j).val))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (unfolding acc(access(a, j), write) in loc(a, j).val)
(set-option :timeout 0)
(push) ; 9
; Precomputing data for removing quantified permissions
(define-fun pTaken@117@01 ((a IArray) (i Int) (j@115@01 Int)) $Perm
  (ite
    (and (= a a@54@01) (= i j@115@01))
    ($Perm.min
      (ite
        (and
          (img@60@01 a i)
          (and
            (>= (inv@59@01 a i) 0)
            (and
              (< (inv@59@01 a i) (len<Int> a@54@01))
              (= (mod (inv@59@01 a i) 2) 0))))
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
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@60@01 a i)
          (and
            (>= (inv@59@01 a i) 0)
            (and
              (< (inv@59@01 a i) (len<Int> a@54@01))
              (= (mod (inv@59@01 a i) 2) 0))))
        $Perm.Write
        $Perm.No)
      (pTaken@117@01 a i j@115@01))
    $Perm.No)
  
  :qid |quant-u-18322|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@117@01 a i j@115@01) $Perm.No)
  
  :qid |quant-u-18323|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and (= a a@54@01) (= i j@115@01))
    (= (- $Perm.Write (pTaken@117@01 a i j@115@01)) $Perm.No))
  
  :qid |quant-u-18324|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@60@01 a@54@01 j@115@01)
    (and
      (>= (inv@59@01 a@54@01 j@115@01) 0)
      (and
        (< (inv@59@01 a@54@01 j@115@01) (len<Int> a@54@01))
        (= (mod (inv@59@01 a@54@01 j@115@01) 2) 0))))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@115@01))
        $Snap.unit))
    (=
      ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@115@01)))
      ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01))))) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@115@01)))))))
(assert (access%trigger ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
  ($SortWrappers.IArrayTo$Snap a@54@01)
  ($SortWrappers.IntTo$Snap j@115@01))) a@54@01 j@115@01))
; [eval] i % 2 == 0
; [eval] i % 2
; [then-branch: 71 | j@115@01 % 2 == 0 | live]
; [else-branch: 71 | j@115@01 % 2 != 0 | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 71 | j@115@01 % 2 == 0]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(assert (=
  ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap j@115@01)))
  ($Snap.combine
    ($Snap.first ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@115@01))))
    ($Snap.second ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@115@01)))))))
; [eval] loc(a, i)
(assert (not (= (loc<Ref> a@54@01 j@115@01) $Ref.null)))
; [eval] loc(a, i + 1)
; [eval] i + 1
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@54@01 j@115@01) (loc<Ref> a@54@01 (+ j@115@01 1)))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (not (= (loc<Ref> a@54@01 (+ j@115@01 1)) $Ref.null)))
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@54@01 (+ j@115@01 1)) (loc<Ref> a@54@01 j@115@01))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@115@01)))))
    ($SortWrappers.$SnapToInt ($Snap.second ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@115@01)))))))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.second ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@115@01)))))
    ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@115@01)))))))))
(check-sat)
; unknown
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
(assert (and
  (not (= (loc<Ref> a@54@01 j@115@01) (loc<Ref> a@54@01 (+ j@115@01 1))))
  (not (= (loc<Ref> a@54@01 (+ j@115@01 1)) (loc<Ref> a@54@01 j@115@01)))))
; [eval] loc(a, j)
(pop) ; 10
(set-option :timeout 0)
(push) ; 10
; [else-branch: 71 | j@115@01 % 2 != 0]
(assert (not (= (mod j@115@01 2) 0)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(assert (=
  ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap j@115@01)))
  $Snap.unit))
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unsat
; [eval] loc(a, j)
(set-option :timeout 0)
(check-sat)
; unsat
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (and
  (=>
    (and
      (img@60@01 a@54@01 j@115@01)
      (and
        (>= (inv@59@01 a@54@01 j@115@01) 0)
        (and
          (< (inv@59@01 a@54@01 j@115@01) (len<Int> a@54@01))
          (= (mod (inv@59@01 a@54@01 j@115@01) 2) 0))))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@115@01))
          $Snap.unit))
      (=
        ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@115@01)))
        ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01))))) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@115@01))))))
  (access%trigger ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap j@115@01))) a@54@01 j@115@01)))
(assert (=>
  (= (mod j@115@01 2) 0)
  (and
    (=
      ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@115@01)))
      ($Snap.combine
        ($Snap.first ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@115@01))))
        ($Snap.second ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@115@01))))))
    (not (= (loc<Ref> a@54@01 j@115@01) $Ref.null))
    (not (= (loc<Ref> a@54@01 (+ j@115@01 1)) $Ref.null))
    (not (= (loc<Ref> a@54@01 j@115@01) (loc<Ref> a@54@01 (+ j@115@01 1))))
    (not (= (loc<Ref> a@54@01 (+ j@115@01 1)) (loc<Ref> a@54@01 j@115@01))))))
(pop) ; 8
(push) ; 8
; [else-branch: 69 | !(j@115@01 >= 0 && j@115@01 < i@55@01 && j@115@01 % 2 == 0)]
(assert (not (and (>= j@115@01 0) (and (< j@115@01 i@55@01) (= (mod j@115@01 2) 0)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  (and (>= j@115@01 0) (and (< j@115@01 i@55@01) (= (mod j@115@01 2) 0)))
  (and
    (>= j@115@01 0)
    (< j@115@01 i@55@01)
    (= (mod j@115@01 2) 0)
    (=>
      (and
        (img@89@01 a@54@01 j@115@01)
        (and
          (>= (inv@88@01 a@54@01 j@115@01) 0)
          (and
            (< (inv@88@01 a@54@01 j@115@01) (len<Int> a@54@01))
            (= (mod (inv@88@01 a@54@01 j@115@01) 2) 0))))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap j@115@01))
            $Snap.unit))
        (=
          ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@115@01)))
          ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@86@01))))) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@115@01))))))
    (access%trigger ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@115@01))) a@54@01 j@115@01)
    (=>
      (= (mod j@115@01 2) 0)
      (and
        (=
          ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@115@01)))
          ($Snap.combine
            ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap j@115@01))))
            ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap j@115@01))))))
        (not (= (loc<Ref> a@54@01 j@115@01) $Ref.null))
        (not (= (loc<Ref> a@54@01 (+ j@115@01 1)) $Ref.null))
        (not (= (loc<Ref> a@54@01 j@115@01) (loc<Ref> a@54@01 (+ j@115@01 1))))
        (not (= (loc<Ref> a@54@01 (+ j@115@01 1)) (loc<Ref> a@54@01 j@115@01)))))
    (=>
      (and
        (img@60@01 a@54@01 j@115@01)
        (and
          (>= (inv@59@01 a@54@01 j@115@01) 0)
          (and
            (< (inv@59@01 a@54@01 j@115@01) (len<Int> a@54@01))
            (= (mod (inv@59@01 a@54@01 j@115@01) 2) 0))))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap j@115@01))
            $Snap.unit))
        (=
          ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@115@01)))
          ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01))))) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@115@01))))))
    (access%trigger ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@115@01))) a@54@01 j@115@01)
    (=>
      (= (mod j@115@01 2) 0)
      (and
        (=
          ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@115@01)))
          ($Snap.combine
            ($Snap.first ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap j@115@01))))
            ($Snap.second ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap j@115@01))))))
        (not (= (loc<Ref> a@54@01 j@115@01) $Ref.null))
        (not (= (loc<Ref> a@54@01 (+ j@115@01 1)) $Ref.null))
        (not (= (loc<Ref> a@54@01 j@115@01) (loc<Ref> a@54@01 (+ j@115@01 1))))
        (not (= (loc<Ref> a@54@01 (+ j@115@01 1)) (loc<Ref> a@54@01 j@115@01))))))))
; Joined path conditions
(assert (or
  (not (and (>= j@115@01 0) (and (< j@115@01 i@55@01) (= (mod j@115@01 2) 0))))
  (and (>= j@115@01 0) (and (< j@115@01 i@55@01) (= (mod j@115@01 2) 0)))))
; [eval] old(loc(a, j))
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
; [eval] loc(a, j)
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@115@01 Int)) (!
  (and
    (=>
      (>= j@115@01 0)
      (and (>= j@115@01 0) (or (< j@115@01 i@55@01) (not (< j@115@01 i@55@01)))))
    (or (>= j@115@01 0) (not (>= j@115@01 0)))
    (=>
      (and (>= j@115@01 0) (and (< j@115@01 i@55@01) (= (mod j@115@01 2) 0)))
      (and
        (>= j@115@01 0)
        (< j@115@01 i@55@01)
        (= (mod j@115@01 2) 0)
        (=>
          (and
            (img@89@01 a@54@01 j@115@01)
            (and
              (>= (inv@88@01 a@54@01 j@115@01) 0)
              (and
                (< (inv@88@01 a@54@01 j@115@01) (len<Int> a@54@01))
                (= (mod (inv@88@01 a@54@01 j@115@01) 2) 0))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap j@115@01))
                $Snap.unit))
            (=
              ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@115@01)))
              ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@86@01))))) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@115@01))))))
        (access%trigger ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@115@01))) a@54@01 j@115@01)
        (=>
          (= (mod j@115@01 2) 0)
          (and
            (=
              ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@115@01)))
              ($Snap.combine
                ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap j@115@01))))
                ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap j@115@01))))))
            (not (= (loc<Ref> a@54@01 j@115@01) $Ref.null))
            (not (= (loc<Ref> a@54@01 (+ j@115@01 1)) $Ref.null))
            (not
              (= (loc<Ref> a@54@01 j@115@01) (loc<Ref> a@54@01 (+ j@115@01 1))))
            (not
              (= (loc<Ref> a@54@01 (+ j@115@01 1)) (loc<Ref> a@54@01 j@115@01)))))
        (=>
          (and
            (img@60@01 a@54@01 j@115@01)
            (and
              (>= (inv@59@01 a@54@01 j@115@01) 0)
              (and
                (< (inv@59@01 a@54@01 j@115@01) (len<Int> a@54@01))
                (= (mod (inv@59@01 a@54@01 j@115@01) 2) 0))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap j@115@01))
                $Snap.unit))
            (=
              ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@115@01)))
              ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01))))) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@115@01))))))
        (access%trigger ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@115@01))) a@54@01 j@115@01)
        (=>
          (= (mod j@115@01 2) 0)
          (and
            (=
              ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@115@01)))
              ($Snap.combine
                ($Snap.first ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap j@115@01))))
                ($Snap.second ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap j@115@01))))))
            (not (= (loc<Ref> a@54@01 j@115@01) $Ref.null))
            (not (= (loc<Ref> a@54@01 (+ j@115@01 1)) $Ref.null))
            (not
              (= (loc<Ref> a@54@01 j@115@01) (loc<Ref> a@54@01 (+ j@115@01 1))))
            (not
              (= (loc<Ref> a@54@01 (+ j@115@01 1)) (loc<Ref> a@54@01 j@115@01)))))))
    (or
      (not
        (and (>= j@115@01 0) (and (< j@115@01 i@55@01) (= (mod j@115@01 2) 0))))
      (and (>= j@115@01 0) (and (< j@115@01 i@55@01) (= (mod j@115@01 2) 0)))))
  :pattern ((loc<Ref> a@54@01 j@115@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/issues/block_array.vpr@50@9@50@157-aux|)))
(set-option :timeout 0)
(push) ; 6
(assert (not (forall ((j@115@01 Int)) (!
  (=>
    (and (>= j@115@01 0) (and (< j@115@01 i@55@01) (= (mod j@115@01 2) 0)))
    (=
      ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@115@01)))))
      ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@115@01)))))))
  :pattern ((loc<Ref> a@54@01 j@115@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/issues/block_array.vpr@50@9@50@157|))))
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
; [eval] (forall j: Int :: { old(loc(a, j)) } j >= 0 && (j < i && j % 2 == 0) ==> (unfolding acc(access(a, j), write) in loc(a, j).val) == old((unfolding acc(access(a, j), write) in loc(a, j).val)))
(declare-const j@118@01 Int)
(set-option :timeout 0)
(push) ; 6
; [eval] j >= 0 && (j < i && j % 2 == 0) ==> (unfolding acc(access(a, j), write) in loc(a, j).val) == old((unfolding acc(access(a, j), write) in loc(a, j).val))
; [eval] j >= 0 && (j < i && j % 2 == 0)
; [eval] j >= 0
(push) ; 7
; [then-branch: 72 | !(j@118@01 >= 0) | live]
; [else-branch: 72 | j@118@01 >= 0 | live]
(push) ; 8
; [then-branch: 72 | !(j@118@01 >= 0)]
(assert (not (>= j@118@01 0)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 8
(set-option :timeout 0)
(push) ; 8
; [else-branch: 72 | j@118@01 >= 0]
(assert (>= j@118@01 0))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] j < i
(set-option :timeout 0)
(push) ; 9
; [then-branch: 73 | !(j@118@01 < i@55@01) | live]
; [else-branch: 73 | j@118@01 < i@55@01 | live]
(push) ; 10
; [then-branch: 73 | !(j@118@01 < i@55@01)]
(assert (not (< j@118@01 i@55@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 10
(set-option :timeout 0)
(push) ; 10
; [else-branch: 73 | j@118@01 < i@55@01]
(assert (< j@118@01 i@55@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] j % 2 == 0
; [eval] j % 2
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< j@118@01 i@55@01) (not (< j@118@01 i@55@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@118@01 0)
  (and (>= j@118@01 0) (or (< j@118@01 i@55@01) (not (< j@118@01 i@55@01))))))
(assert (or (>= j@118@01 0) (not (>= j@118@01 0))))
(set-option :timeout 0)
(push) ; 7
; [then-branch: 74 | j@118@01 >= 0 && j@118@01 < i@55@01 && j@118@01 % 2 == 0 | live]
; [else-branch: 74 | !(j@118@01 >= 0 && j@118@01 < i@55@01 && j@118@01 % 2 == 0) | live]
(push) ; 8
; [then-branch: 74 | j@118@01 >= 0 && j@118@01 < i@55@01 && j@118@01 % 2 == 0]
(assert (and (>= j@118@01 0) (and (< j@118@01 i@55@01) (= (mod j@118@01 2) 0))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (unfolding acc(access(a, j), write) in loc(a, j).val) == old((unfolding acc(access(a, j), write) in loc(a, j).val))
; [eval] (unfolding acc(access(a, j), write) in loc(a, j).val)
(set-option :timeout 0)
(push) ; 9
; Precomputing data for removing quantified permissions
(define-fun pTaken@119@01 ((a IArray) (i Int) (j@118@01 Int)) $Perm
  (ite
    (and (= a a@54@01) (= i j@118@01))
    ($Perm.min
      (ite
        (and
          (img@89@01 a i)
          (and
            (>= (inv@88@01 a i) 0)
            (and
              (< (inv@88@01 a i) (len<Int> a@54@01))
              (= (mod (inv@88@01 a i) 2) 0))))
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
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@89@01 a i)
          (and
            (>= (inv@88@01 a i) 0)
            (and
              (< (inv@88@01 a i) (len<Int> a@54@01))
              (= (mod (inv@88@01 a i) 2) 0))))
        $Perm.Write
        $Perm.No)
      (pTaken@119@01 a i j@118@01))
    $Perm.No)
  
  :qid |quant-u-18326|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@119@01 a i j@118@01) $Perm.No)
  
  :qid |quant-u-18327|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and (= a a@54@01) (= i j@118@01))
    (= (- $Perm.Write (pTaken@119@01 a i j@118@01)) $Perm.No))
  
  :qid |quant-u-18328|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@89@01 a@54@01 j@118@01)
    (and
      (>= (inv@88@01 a@54@01 j@118@01) 0)
      (and
        (< (inv@88@01 a@54@01 j@118@01) (len<Int> a@54@01))
        (= (mod (inv@88@01 a@54@01 j@118@01) 2) 0))))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@118@01))
        $Snap.unit))
    (=
      ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@118@01)))
      ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@86@01))))) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@118@01)))))))
(assert (access%trigger ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
  ($SortWrappers.IArrayTo$Snap a@54@01)
  ($SortWrappers.IntTo$Snap j@118@01))) a@54@01 j@118@01))
; [eval] i % 2 == 0
; [eval] i % 2
; [then-branch: 75 | j@118@01 % 2 == 0 | live]
; [else-branch: 75 | j@118@01 % 2 != 0 | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 75 | j@118@01 % 2 == 0]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(assert (=
  ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap j@118@01)))
  ($Snap.combine
    ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@118@01))))
    ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@118@01)))))))
; [eval] loc(a, i)
(assert (not (= (loc<Ref> a@54@01 j@118@01) $Ref.null)))
; [eval] loc(a, i + 1)
; [eval] i + 1
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@54@01 j@118@01) (loc<Ref> a@54@01 (+ j@118@01 1)))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (not (= (loc<Ref> a@54@01 (+ j@118@01 1)) $Ref.null)))
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@54@01 (+ j@118@01 1)) (loc<Ref> a@54@01 j@118@01))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@118@01)))))
    ($SortWrappers.$SnapToInt ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@118@01)))))))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@118@01)))))
    ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@118@01)))))))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (and
  (not (= (loc<Ref> a@54@01 j@118@01) (loc<Ref> a@54@01 (+ j@118@01 1))))
  (not (= (loc<Ref> a@54@01 (+ j@118@01 1)) (loc<Ref> a@54@01 j@118@01)))))
; [eval] loc(a, j)
(pop) ; 10
(set-option :timeout 0)
(push) ; 10
; [else-branch: 75 | j@118@01 % 2 != 0]
(assert (not (= (mod j@118@01 2) 0)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(assert (=
  ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap j@118@01)))
  $Snap.unit))
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unsat
; [eval] loc(a, j)
(set-option :timeout 0)
(check-sat)
; unsat
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (and
  (=>
    (and
      (img@89@01 a@54@01 j@118@01)
      (and
        (>= (inv@88@01 a@54@01 j@118@01) 0)
        (and
          (< (inv@88@01 a@54@01 j@118@01) (len<Int> a@54@01))
          (= (mod (inv@88@01 a@54@01 j@118@01) 2) 0))))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@118@01))
          $Snap.unit))
      (=
        ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@118@01)))
        ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@86@01))))) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@118@01))))))
  (access%trigger ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap j@118@01))) a@54@01 j@118@01)))
(assert (=>
  (= (mod j@118@01 2) 0)
  (and
    (=
      ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@118@01)))
      ($Snap.combine
        ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@118@01))))
        ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@118@01))))))
    (not (= (loc<Ref> a@54@01 j@118@01) $Ref.null))
    (not (= (loc<Ref> a@54@01 (+ j@118@01 1)) $Ref.null))
    (not (= (loc<Ref> a@54@01 j@118@01) (loc<Ref> a@54@01 (+ j@118@01 1))))
    (not (= (loc<Ref> a@54@01 (+ j@118@01 1)) (loc<Ref> a@54@01 j@118@01))))))
; [eval] old((unfolding acc(access(a, j), write) in loc(a, j).val))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (unfolding acc(access(a, j), write) in loc(a, j).val)
(set-option :timeout 0)
(push) ; 9
; Precomputing data for removing quantified permissions
(define-fun pTaken@120@01 ((a IArray) (i Int) (j@118@01 Int)) $Perm
  (ite
    (and (= a a@54@01) (= i j@118@01))
    ($Perm.min
      (ite
        (and
          (img@60@01 a i)
          (and
            (>= (inv@59@01 a i) 0)
            (and
              (< (inv@59@01 a i) (len<Int> a@54@01))
              (= (mod (inv@59@01 a i) 2) 0))))
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
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@60@01 a i)
          (and
            (>= (inv@59@01 a i) 0)
            (and
              (< (inv@59@01 a i) (len<Int> a@54@01))
              (= (mod (inv@59@01 a i) 2) 0))))
        $Perm.Write
        $Perm.No)
      (pTaken@120@01 a i j@118@01))
    $Perm.No)
  
  :qid |quant-u-18330|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@120@01 a i j@118@01) $Perm.No)
  
  :qid |quant-u-18331|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and (= a a@54@01) (= i j@118@01))
    (= (- $Perm.Write (pTaken@120@01 a i j@118@01)) $Perm.No))
  
  :qid |quant-u-18332|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@60@01 a@54@01 j@118@01)
    (and
      (>= (inv@59@01 a@54@01 j@118@01) 0)
      (and
        (< (inv@59@01 a@54@01 j@118@01) (len<Int> a@54@01))
        (= (mod (inv@59@01 a@54@01 j@118@01) 2) 0))))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@118@01))
        $Snap.unit))
    (=
      ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@118@01)))
      ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01))))) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@118@01)))))))
(assert (access%trigger ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
  ($SortWrappers.IArrayTo$Snap a@54@01)
  ($SortWrappers.IntTo$Snap j@118@01))) a@54@01 j@118@01))
; [eval] i % 2 == 0
; [eval] i % 2
; [then-branch: 76 | j@118@01 % 2 == 0 | live]
; [else-branch: 76 | j@118@01 % 2 != 0 | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 76 | j@118@01 % 2 == 0]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(assert (=
  ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap j@118@01)))
  ($Snap.combine
    ($Snap.first ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@118@01))))
    ($Snap.second ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@118@01)))))))
; [eval] loc(a, i)
(assert (not (= (loc<Ref> a@54@01 j@118@01) $Ref.null)))
; [eval] loc(a, i + 1)
; [eval] i + 1
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@54@01 j@118@01) (loc<Ref> a@54@01 (+ j@118@01 1)))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (not (= (loc<Ref> a@54@01 (+ j@118@01 1)) $Ref.null)))
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@54@01 (+ j@118@01 1)) (loc<Ref> a@54@01 j@118@01))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@118@01)))))
    ($SortWrappers.$SnapToInt ($Snap.second ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@118@01)))))))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.second ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@118@01)))))
    ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@118@01)))))))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (and
  (not (= (loc<Ref> a@54@01 j@118@01) (loc<Ref> a@54@01 (+ j@118@01 1))))
  (not (= (loc<Ref> a@54@01 (+ j@118@01 1)) (loc<Ref> a@54@01 j@118@01)))))
; [eval] loc(a, j)
(pop) ; 10
(set-option :timeout 0)
(push) ; 10
; [else-branch: 76 | j@118@01 % 2 != 0]
(assert (not (= (mod j@118@01 2) 0)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(assert (=
  ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap j@118@01)))
  $Snap.unit))
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unsat
; [eval] loc(a, j)
(set-option :timeout 0)
(check-sat)
; unsat
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (and
  (=>
    (and
      (img@60@01 a@54@01 j@118@01)
      (and
        (>= (inv@59@01 a@54@01 j@118@01) 0)
        (and
          (< (inv@59@01 a@54@01 j@118@01) (len<Int> a@54@01))
          (= (mod (inv@59@01 a@54@01 j@118@01) 2) 0))))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@118@01))
          $Snap.unit))
      (=
        ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@118@01)))
        ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01))))) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@118@01))))))
  (access%trigger ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap j@118@01))) a@54@01 j@118@01)))
(assert (=>
  (= (mod j@118@01 2) 0)
  (and
    (=
      ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@118@01)))
      ($Snap.combine
        ($Snap.first ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@118@01))))
        ($Snap.second ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@118@01))))))
    (not (= (loc<Ref> a@54@01 j@118@01) $Ref.null))
    (not (= (loc<Ref> a@54@01 (+ j@118@01 1)) $Ref.null))
    (not (= (loc<Ref> a@54@01 j@118@01) (loc<Ref> a@54@01 (+ j@118@01 1))))
    (not (= (loc<Ref> a@54@01 (+ j@118@01 1)) (loc<Ref> a@54@01 j@118@01))))))
(pop) ; 8
(push) ; 8
; [else-branch: 74 | !(j@118@01 >= 0 && j@118@01 < i@55@01 && j@118@01 % 2 == 0)]
(assert (not (and (>= j@118@01 0) (and (< j@118@01 i@55@01) (= (mod j@118@01 2) 0)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  (and (>= j@118@01 0) (and (< j@118@01 i@55@01) (= (mod j@118@01 2) 0)))
  (and
    (>= j@118@01 0)
    (< j@118@01 i@55@01)
    (= (mod j@118@01 2) 0)
    (=>
      (and
        (img@89@01 a@54@01 j@118@01)
        (and
          (>= (inv@88@01 a@54@01 j@118@01) 0)
          (and
            (< (inv@88@01 a@54@01 j@118@01) (len<Int> a@54@01))
            (= (mod (inv@88@01 a@54@01 j@118@01) 2) 0))))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap j@118@01))
            $Snap.unit))
        (=
          ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@118@01)))
          ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@86@01))))) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@118@01))))))
    (access%trigger ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@118@01))) a@54@01 j@118@01)
    (=>
      (= (mod j@118@01 2) 0)
      (and
        (=
          ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@118@01)))
          ($Snap.combine
            ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap j@118@01))))
            ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap j@118@01))))))
        (not (= (loc<Ref> a@54@01 j@118@01) $Ref.null))
        (not (= (loc<Ref> a@54@01 (+ j@118@01 1)) $Ref.null))
        (not (= (loc<Ref> a@54@01 j@118@01) (loc<Ref> a@54@01 (+ j@118@01 1))))
        (not (= (loc<Ref> a@54@01 (+ j@118@01 1)) (loc<Ref> a@54@01 j@118@01)))))
    (=>
      (and
        (img@60@01 a@54@01 j@118@01)
        (and
          (>= (inv@59@01 a@54@01 j@118@01) 0)
          (and
            (< (inv@59@01 a@54@01 j@118@01) (len<Int> a@54@01))
            (= (mod (inv@59@01 a@54@01 j@118@01) 2) 0))))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap j@118@01))
            $Snap.unit))
        (=
          ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@118@01)))
          ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01))))) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@118@01))))))
    (access%trigger ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@118@01))) a@54@01 j@118@01)
    (=>
      (= (mod j@118@01 2) 0)
      (and
        (=
          ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@118@01)))
          ($Snap.combine
            ($Snap.first ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap j@118@01))))
            ($Snap.second ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap j@118@01))))))
        (not (= (loc<Ref> a@54@01 j@118@01) $Ref.null))
        (not (= (loc<Ref> a@54@01 (+ j@118@01 1)) $Ref.null))
        (not (= (loc<Ref> a@54@01 j@118@01) (loc<Ref> a@54@01 (+ j@118@01 1))))
        (not (= (loc<Ref> a@54@01 (+ j@118@01 1)) (loc<Ref> a@54@01 j@118@01))))))))
; Joined path conditions
(assert (or
  (not (and (>= j@118@01 0) (and (< j@118@01 i@55@01) (= (mod j@118@01 2) 0))))
  (and (>= j@118@01 0) (and (< j@118@01 i@55@01) (= (mod j@118@01 2) 0)))))
; [eval] old(loc(a, j))
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
; [eval] loc(a, j)
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@118@01 Int)) (!
  (and
    (=>
      (>= j@118@01 0)
      (and (>= j@118@01 0) (or (< j@118@01 i@55@01) (not (< j@118@01 i@55@01)))))
    (or (>= j@118@01 0) (not (>= j@118@01 0)))
    (=>
      (and (>= j@118@01 0) (and (< j@118@01 i@55@01) (= (mod j@118@01 2) 0)))
      (and
        (>= j@118@01 0)
        (< j@118@01 i@55@01)
        (= (mod j@118@01 2) 0)
        (=>
          (and
            (img@89@01 a@54@01 j@118@01)
            (and
              (>= (inv@88@01 a@54@01 j@118@01) 0)
              (and
                (< (inv@88@01 a@54@01 j@118@01) (len<Int> a@54@01))
                (= (mod (inv@88@01 a@54@01 j@118@01) 2) 0))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap j@118@01))
                $Snap.unit))
            (=
              ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@118@01)))
              ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@86@01))))) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@118@01))))))
        (access%trigger ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@118@01))) a@54@01 j@118@01)
        (=>
          (= (mod j@118@01 2) 0)
          (and
            (=
              ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@118@01)))
              ($Snap.combine
                ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap j@118@01))))
                ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap j@118@01))))))
            (not (= (loc<Ref> a@54@01 j@118@01) $Ref.null))
            (not (= (loc<Ref> a@54@01 (+ j@118@01 1)) $Ref.null))
            (not
              (= (loc<Ref> a@54@01 j@118@01) (loc<Ref> a@54@01 (+ j@118@01 1))))
            (not
              (= (loc<Ref> a@54@01 (+ j@118@01 1)) (loc<Ref> a@54@01 j@118@01)))))
        (=>
          (and
            (img@60@01 a@54@01 j@118@01)
            (and
              (>= (inv@59@01 a@54@01 j@118@01) 0)
              (and
                (< (inv@59@01 a@54@01 j@118@01) (len<Int> a@54@01))
                (= (mod (inv@59@01 a@54@01 j@118@01) 2) 0))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap j@118@01))
                $Snap.unit))
            (=
              ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@118@01)))
              ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01))))) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@118@01))))))
        (access%trigger ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@118@01))) a@54@01 j@118@01)
        (=>
          (= (mod j@118@01 2) 0)
          (and
            (=
              ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@118@01)))
              ($Snap.combine
                ($Snap.first ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap j@118@01))))
                ($Snap.second ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap j@118@01))))))
            (not (= (loc<Ref> a@54@01 j@118@01) $Ref.null))
            (not (= (loc<Ref> a@54@01 (+ j@118@01 1)) $Ref.null))
            (not
              (= (loc<Ref> a@54@01 j@118@01) (loc<Ref> a@54@01 (+ j@118@01 1))))
            (not
              (= (loc<Ref> a@54@01 (+ j@118@01 1)) (loc<Ref> a@54@01 j@118@01)))))))
    (or
      (not
        (and (>= j@118@01 0) (and (< j@118@01 i@55@01) (= (mod j@118@01 2) 0))))
      (and (>= j@118@01 0) (and (< j@118@01 i@55@01) (= (mod j@118@01 2) 0)))))
  :pattern ((loc<Ref> a@54@01 j@118@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/issues/block_array.vpr@50@9@50@157-aux|)))
(set-option :timeout 0)
(push) ; 6
(assert (not (forall ((j@118@01 Int)) (!
  (=>
    (and (>= j@118@01 0) (and (< j@118@01 i@55@01) (= (mod j@118@01 2) 0)))
    (=
      ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@118@01)))))
      ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@118@01)))))))
  :pattern ((loc<Ref> a@54@01 j@118@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/issues/block_array.vpr@50@9@50@157|))))
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
; [eval] (forall j: Int :: { old(loc(a, j)) } j >= 0 && (j < i && j % 2 == 0) ==> (unfolding acc(access(a, j), write) in loc(a, j).val) == old((unfolding acc(access(a, j), write) in loc(a, j).val)))
(declare-const j@121@01 Int)
(set-option :timeout 0)
(push) ; 6
; [eval] j >= 0 && (j < i && j % 2 == 0) ==> (unfolding acc(access(a, j), write) in loc(a, j).val) == old((unfolding acc(access(a, j), write) in loc(a, j).val))
; [eval] j >= 0 && (j < i && j % 2 == 0)
; [eval] j >= 0
(push) ; 7
; [then-branch: 77 | !(j@121@01 >= 0) | live]
; [else-branch: 77 | j@121@01 >= 0 | live]
(push) ; 8
; [then-branch: 77 | !(j@121@01 >= 0)]
(assert (not (>= j@121@01 0)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 8
(set-option :timeout 0)
(push) ; 8
; [else-branch: 77 | j@121@01 >= 0]
(assert (>= j@121@01 0))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] j < i
(set-option :timeout 0)
(push) ; 9
; [then-branch: 78 | !(j@121@01 < i@55@01) | live]
; [else-branch: 78 | j@121@01 < i@55@01 | live]
(push) ; 10
; [then-branch: 78 | !(j@121@01 < i@55@01)]
(assert (not (< j@121@01 i@55@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 10
(set-option :timeout 0)
(push) ; 10
; [else-branch: 78 | j@121@01 < i@55@01]
(assert (< j@121@01 i@55@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] j % 2 == 0
; [eval] j % 2
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< j@121@01 i@55@01) (not (< j@121@01 i@55@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@121@01 0)
  (and (>= j@121@01 0) (or (< j@121@01 i@55@01) (not (< j@121@01 i@55@01))))))
(assert (or (>= j@121@01 0) (not (>= j@121@01 0))))
(set-option :timeout 0)
(push) ; 7
; [then-branch: 79 | j@121@01 >= 0 && j@121@01 < i@55@01 && j@121@01 % 2 == 0 | live]
; [else-branch: 79 | !(j@121@01 >= 0 && j@121@01 < i@55@01 && j@121@01 % 2 == 0) | live]
(push) ; 8
; [then-branch: 79 | j@121@01 >= 0 && j@121@01 < i@55@01 && j@121@01 % 2 == 0]
(assert (and (>= j@121@01 0) (and (< j@121@01 i@55@01) (= (mod j@121@01 2) 0))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (unfolding acc(access(a, j), write) in loc(a, j).val) == old((unfolding acc(access(a, j), write) in loc(a, j).val))
; [eval] (unfolding acc(access(a, j), write) in loc(a, j).val)
(set-option :timeout 0)
(push) ; 9
; Precomputing data for removing quantified permissions
(define-fun pTaken@122@01 ((a IArray) (i Int) (j@121@01 Int)) $Perm
  (ite
    (and (= a a@54@01) (= i j@121@01))
    ($Perm.min
      (ite
        (and
          (img@89@01 a i)
          (and
            (>= (inv@88@01 a i) 0)
            (and
              (< (inv@88@01 a i) (len<Int> a@54@01))
              (= (mod (inv@88@01 a i) 2) 0))))
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
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@89@01 a i)
          (and
            (>= (inv@88@01 a i) 0)
            (and
              (< (inv@88@01 a i) (len<Int> a@54@01))
              (= (mod (inv@88@01 a i) 2) 0))))
        $Perm.Write
        $Perm.No)
      (pTaken@122@01 a i j@121@01))
    $Perm.No)
  
  :qid |quant-u-18334|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@122@01 a i j@121@01) $Perm.No)
  
  :qid |quant-u-18335|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and (= a a@54@01) (= i j@121@01))
    (= (- $Perm.Write (pTaken@122@01 a i j@121@01)) $Perm.No))
  
  :qid |quant-u-18336|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@89@01 a@54@01 j@121@01)
    (and
      (>= (inv@88@01 a@54@01 j@121@01) 0)
      (and
        (< (inv@88@01 a@54@01 j@121@01) (len<Int> a@54@01))
        (= (mod (inv@88@01 a@54@01 j@121@01) 2) 0))))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@121@01))
        $Snap.unit))
    (=
      ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@121@01)))
      ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@86@01))))) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@121@01)))))))
(assert (access%trigger ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
  ($SortWrappers.IArrayTo$Snap a@54@01)
  ($SortWrappers.IntTo$Snap j@121@01))) a@54@01 j@121@01))
; [eval] i % 2 == 0
; [eval] i % 2
; [then-branch: 80 | j@121@01 % 2 == 0 | live]
; [else-branch: 80 | j@121@01 % 2 != 0 | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 80 | j@121@01 % 2 == 0]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(assert (=
  ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap j@121@01)))
  ($Snap.combine
    ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@121@01))))
    ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@121@01)))))))
; [eval] loc(a, i)
(assert (not (= (loc<Ref> a@54@01 j@121@01) $Ref.null)))
; [eval] loc(a, i + 1)
; [eval] i + 1
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@54@01 j@121@01) (loc<Ref> a@54@01 (+ j@121@01 1)))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (not (= (loc<Ref> a@54@01 (+ j@121@01 1)) $Ref.null)))
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@54@01 (+ j@121@01 1)) (loc<Ref> a@54@01 j@121@01))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@121@01)))))
    ($SortWrappers.$SnapToInt ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@121@01)))))))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@121@01)))))
    ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@121@01)))))))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (and
  (not (= (loc<Ref> a@54@01 j@121@01) (loc<Ref> a@54@01 (+ j@121@01 1))))
  (not (= (loc<Ref> a@54@01 (+ j@121@01 1)) (loc<Ref> a@54@01 j@121@01)))))
; [eval] loc(a, j)
(pop) ; 10
(set-option :timeout 0)
(push) ; 10
; [else-branch: 80 | j@121@01 % 2 != 0]
(assert (not (= (mod j@121@01 2) 0)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(assert (=
  ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap j@121@01)))
  $Snap.unit))
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unsat
; [eval] loc(a, j)
(set-option :timeout 0)
(check-sat)
; unsat
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (and
  (=>
    (and
      (img@89@01 a@54@01 j@121@01)
      (and
        (>= (inv@88@01 a@54@01 j@121@01) 0)
        (and
          (< (inv@88@01 a@54@01 j@121@01) (len<Int> a@54@01))
          (= (mod (inv@88@01 a@54@01 j@121@01) 2) 0))))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@121@01))
          $Snap.unit))
      (=
        ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@121@01)))
        ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@86@01))))) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@121@01))))))
  (access%trigger ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap j@121@01))) a@54@01 j@121@01)))
(assert (=>
  (= (mod j@121@01 2) 0)
  (and
    (=
      ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@121@01)))
      ($Snap.combine
        ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@121@01))))
        ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@121@01))))))
    (not (= (loc<Ref> a@54@01 j@121@01) $Ref.null))
    (not (= (loc<Ref> a@54@01 (+ j@121@01 1)) $Ref.null))
    (not (= (loc<Ref> a@54@01 j@121@01) (loc<Ref> a@54@01 (+ j@121@01 1))))
    (not (= (loc<Ref> a@54@01 (+ j@121@01 1)) (loc<Ref> a@54@01 j@121@01))))))
; [eval] old((unfolding acc(access(a, j), write) in loc(a, j).val))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (unfolding acc(access(a, j), write) in loc(a, j).val)
(set-option :timeout 0)
(push) ; 9
; Precomputing data for removing quantified permissions
(define-fun pTaken@123@01 ((a IArray) (i Int) (j@121@01 Int)) $Perm
  (ite
    (and (= a a@54@01) (= i j@121@01))
    ($Perm.min
      (ite
        (and
          (img@60@01 a i)
          (and
            (>= (inv@59@01 a i) 0)
            (and
              (< (inv@59@01 a i) (len<Int> a@54@01))
              (= (mod (inv@59@01 a i) 2) 0))))
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
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@60@01 a i)
          (and
            (>= (inv@59@01 a i) 0)
            (and
              (< (inv@59@01 a i) (len<Int> a@54@01))
              (= (mod (inv@59@01 a i) 2) 0))))
        $Perm.Write
        $Perm.No)
      (pTaken@123@01 a i j@121@01))
    $Perm.No)
  
  :qid |quant-u-18338|))))
(check-sat)
; unknown
(pop) ; 10
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@123@01 a i j@121@01) $Perm.No)
  
  :qid |quant-u-18339|))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and (= a a@54@01) (= i j@121@01))
    (= (- $Perm.Write (pTaken@123@01 a i j@121@01)) $Perm.No))
  
  :qid |quant-u-18340|))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@60@01 a@54@01 j@121@01)
    (and
      (>= (inv@59@01 a@54@01 j@121@01) 0)
      (and
        (< (inv@59@01 a@54@01 j@121@01) (len<Int> a@54@01))
        (= (mod (inv@59@01 a@54@01 j@121@01) 2) 0))))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@121@01))
        $Snap.unit))
    (=
      ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@121@01)))
      ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01))))) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@121@01)))))))
(assert (access%trigger ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
  ($SortWrappers.IArrayTo$Snap a@54@01)
  ($SortWrappers.IntTo$Snap j@121@01))) a@54@01 j@121@01))
; [eval] i % 2 == 0
; [eval] i % 2
; [then-branch: 81 | j@121@01 % 2 == 0 | live]
; [else-branch: 81 | j@121@01 % 2 != 0 | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 81 | j@121@01 % 2 == 0]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(assert (=
  ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap j@121@01)))
  ($Snap.combine
    ($Snap.first ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@121@01))))
    ($Snap.second ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@121@01)))))))
; [eval] loc(a, i)
(assert (not (= (loc<Ref> a@54@01 j@121@01) $Ref.null)))
; [eval] loc(a, i + 1)
; [eval] i + 1
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@54@01 j@121@01) (loc<Ref> a@54@01 (+ j@121@01 1)))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (not (= (loc<Ref> a@54@01 (+ j@121@01 1)) $Ref.null)))
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (= (loc<Ref> a@54@01 (+ j@121@01 1)) (loc<Ref> a@54@01 j@121@01))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@121@01)))))
    ($SortWrappers.$SnapToInt ($Snap.second ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@121@01)))))))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.second ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@121@01)))))
    ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@121@01)))))))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (and
  (not (= (loc<Ref> a@54@01 j@121@01) (loc<Ref> a@54@01 (+ j@121@01 1))))
  (not (= (loc<Ref> a@54@01 (+ j@121@01 1)) (loc<Ref> a@54@01 j@121@01)))))
; [eval] loc(a, j)
(pop) ; 10
(set-option :timeout 0)
(push) ; 10
; [else-branch: 81 | j@121@01 % 2 != 0]
(assert (not (= (mod j@121@01 2) 0)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
(assert (=
  ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap j@121@01)))
  $Snap.unit))
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unsat
; [eval] loc(a, j)
(set-option :timeout 0)
(check-sat)
; unsat
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (and
  (=>
    (and
      (img@60@01 a@54@01 j@121@01)
      (and
        (>= (inv@59@01 a@54@01 j@121@01) 0)
        (and
          (< (inv@59@01 a@54@01 j@121@01) (len<Int> a@54@01))
          (= (mod (inv@59@01 a@54@01 j@121@01) 2) 0))))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@121@01))
          $Snap.unit))
      (=
        ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@121@01)))
        ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01))))) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@121@01))))))
  (access%trigger ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@54@01)
    ($SortWrappers.IntTo$Snap j@121@01))) a@54@01 j@121@01)))
(assert (=>
  (= (mod j@121@01 2) 0)
  (and
    (=
      ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@121@01)))
      ($Snap.combine
        ($Snap.first ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@121@01))))
        ($Snap.second ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@121@01))))))
    (not (= (loc<Ref> a@54@01 j@121@01) $Ref.null))
    (not (= (loc<Ref> a@54@01 (+ j@121@01 1)) $Ref.null))
    (not (= (loc<Ref> a@54@01 j@121@01) (loc<Ref> a@54@01 (+ j@121@01 1))))
    (not (= (loc<Ref> a@54@01 (+ j@121@01 1)) (loc<Ref> a@54@01 j@121@01))))))
(pop) ; 8
(push) ; 8
; [else-branch: 79 | !(j@121@01 >= 0 && j@121@01 < i@55@01 && j@121@01 % 2 == 0)]
(assert (not (and (>= j@121@01 0) (and (< j@121@01 i@55@01) (= (mod j@121@01 2) 0)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  (and (>= j@121@01 0) (and (< j@121@01 i@55@01) (= (mod j@121@01 2) 0)))
  (and
    (>= j@121@01 0)
    (< j@121@01 i@55@01)
    (= (mod j@121@01 2) 0)
    (=>
      (and
        (img@89@01 a@54@01 j@121@01)
        (and
          (>= (inv@88@01 a@54@01 j@121@01) 0)
          (and
            (< (inv@88@01 a@54@01 j@121@01) (len<Int> a@54@01))
            (= (mod (inv@88@01 a@54@01 j@121@01) 2) 0))))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap j@121@01))
            $Snap.unit))
        (=
          ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@121@01)))
          ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@86@01))))) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@121@01))))))
    (access%trigger ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@121@01))) a@54@01 j@121@01)
    (=>
      (= (mod j@121@01 2) 0)
      (and
        (=
          ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@121@01)))
          ($Snap.combine
            ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap j@121@01))))
            ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap j@121@01))))))
        (not (= (loc<Ref> a@54@01 j@121@01) $Ref.null))
        (not (= (loc<Ref> a@54@01 (+ j@121@01 1)) $Ref.null))
        (not (= (loc<Ref> a@54@01 j@121@01) (loc<Ref> a@54@01 (+ j@121@01 1))))
        (not (= (loc<Ref> a@54@01 (+ j@121@01 1)) (loc<Ref> a@54@01 j@121@01)))))
    (=>
      (and
        (img@60@01 a@54@01 j@121@01)
        (and
          (>= (inv@59@01 a@54@01 j@121@01) 0)
          (and
            (< (inv@59@01 a@54@01 j@121@01) (len<Int> a@54@01))
            (= (mod (inv@59@01 a@54@01 j@121@01) 2) 0))))
      (and
        (not
          (=
            ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap j@121@01))
            $Snap.unit))
        (=
          ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@121@01)))
          ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01))))) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@121@01))))))
    (access%trigger ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
      ($SortWrappers.IArrayTo$Snap a@54@01)
      ($SortWrappers.IntTo$Snap j@121@01))) a@54@01 j@121@01)
    (=>
      (= (mod j@121@01 2) 0)
      (and
        (=
          ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
            ($SortWrappers.IArrayTo$Snap a@54@01)
            ($SortWrappers.IntTo$Snap j@121@01)))
          ($Snap.combine
            ($Snap.first ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap j@121@01))))
            ($Snap.second ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
              ($SortWrappers.IArrayTo$Snap a@54@01)
              ($SortWrappers.IntTo$Snap j@121@01))))))
        (not (= (loc<Ref> a@54@01 j@121@01) $Ref.null))
        (not (= (loc<Ref> a@54@01 (+ j@121@01 1)) $Ref.null))
        (not (= (loc<Ref> a@54@01 j@121@01) (loc<Ref> a@54@01 (+ j@121@01 1))))
        (not (= (loc<Ref> a@54@01 (+ j@121@01 1)) (loc<Ref> a@54@01 j@121@01))))))))
; Joined path conditions
(assert (or
  (not (and (>= j@121@01 0) (and (< j@121@01 i@55@01) (= (mod j@121@01 2) 0))))
  (and (>= j@121@01 0) (and (< j@121@01 i@55@01) (= (mod j@121@01 2) 0)))))
; [eval] old(loc(a, j))
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
; [eval] loc(a, j)
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@121@01 Int)) (!
  (and
    (=>
      (>= j@121@01 0)
      (and (>= j@121@01 0) (or (< j@121@01 i@55@01) (not (< j@121@01 i@55@01)))))
    (or (>= j@121@01 0) (not (>= j@121@01 0)))
    (=>
      (and (>= j@121@01 0) (and (< j@121@01 i@55@01) (= (mod j@121@01 2) 0)))
      (and
        (>= j@121@01 0)
        (< j@121@01 i@55@01)
        (= (mod j@121@01 2) 0)
        (=>
          (and
            (img@89@01 a@54@01 j@121@01)
            (and
              (>= (inv@88@01 a@54@01 j@121@01) 0)
              (and
                (< (inv@88@01 a@54@01 j@121@01) (len<Int> a@54@01))
                (= (mod (inv@88@01 a@54@01 j@121@01) 2) 0))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap j@121@01))
                $Snap.unit))
            (=
              ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@121@01)))
              ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@86@01))))) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@121@01))))))
        (access%trigger ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@121@01))) a@54@01 j@121@01)
        (=>
          (= (mod j@121@01 2) 0)
          (and
            (=
              ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@121@01)))
              ($Snap.combine
                ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap j@121@01))))
                ($Snap.second ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap j@121@01))))))
            (not (= (loc<Ref> a@54@01 j@121@01) $Ref.null))
            (not (= (loc<Ref> a@54@01 (+ j@121@01 1)) $Ref.null))
            (not
              (= (loc<Ref> a@54@01 j@121@01) (loc<Ref> a@54@01 (+ j@121@01 1))))
            (not
              (= (loc<Ref> a@54@01 (+ j@121@01 1)) (loc<Ref> a@54@01 j@121@01)))))
        (=>
          (and
            (img@60@01 a@54@01 j@121@01)
            (and
              (>= (inv@59@01 a@54@01 j@121@01) 0)
              (and
                (< (inv@59@01 a@54@01 j@121@01) (len<Int> a@54@01))
                (= (mod (inv@59@01 a@54@01 j@121@01) 2) 0))))
          (and
            (not
              (=
                ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap j@121@01))
                $Snap.unit))
            (=
              ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@121@01)))
              ($PSF.lookup_access ($SortWrappers.$SnapTo$PSF<access> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@57@01))))) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@121@01))))))
        (access%trigger ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
          ($SortWrappers.IArrayTo$Snap a@54@01)
          ($SortWrappers.IntTo$Snap j@121@01))) a@54@01 j@121@01)
        (=>
          (= (mod j@121@01 2) 0)
          (and
            (=
              ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
                ($SortWrappers.IArrayTo$Snap a@54@01)
                ($SortWrappers.IntTo$Snap j@121@01)))
              ($Snap.combine
                ($Snap.first ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap j@121@01))))
                ($Snap.second ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
                  ($SortWrappers.IArrayTo$Snap a@54@01)
                  ($SortWrappers.IntTo$Snap j@121@01))))))
            (not (= (loc<Ref> a@54@01 j@121@01) $Ref.null))
            (not (= (loc<Ref> a@54@01 (+ j@121@01 1)) $Ref.null))
            (not
              (= (loc<Ref> a@54@01 j@121@01) (loc<Ref> a@54@01 (+ j@121@01 1))))
            (not
              (= (loc<Ref> a@54@01 (+ j@121@01 1)) (loc<Ref> a@54@01 j@121@01)))))))
    (or
      (not
        (and (>= j@121@01 0) (and (< j@121@01 i@55@01) (= (mod j@121@01 2) 0))))
      (and (>= j@121@01 0) (and (< j@121@01 i@55@01) (= (mod j@121@01 2) 0)))))
  :pattern ((loc<Ref> a@54@01 j@121@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/issues/block_array.vpr@50@9@50@157-aux|)))
(set-option :timeout 0)
(push) ; 6
(assert (not (forall ((j@121@01 Int)) (!
  (=>
    (and (>= j@121@01 0) (and (< j@121@01 i@55@01) (= (mod j@121@01 2) 0)))
    (=
      ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_access (as sm@92@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@121@01)))))
      ($SortWrappers.$SnapToInt ($Snap.first ($PSF.lookup_access (as sm@78@01  $PSF<access>) ($Snap.combine
        ($SortWrappers.IArrayTo$Snap a@54@01)
        ($SortWrappers.IntTo$Snap j@121@01)))))))
  :pattern ((loc<Ref> a@54@01 j@121@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/issues/block_array.vpr@50@9@50@157|))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- setVal2 ----------
(declare-const a@124@01 IArray)
(declare-const i@125@01 Int)
(declare-const newVal@126@01 Int)
(declare-const a@127@01 IArray)
(declare-const i@128@01 Int)
(declare-const newVal@129@01 Int)
(push) ; 1
(declare-const $t@130@01 $Snap)
(assert (= $t@130@01 ($Snap.combine ($Snap.first $t@130@01) ($Snap.second $t@130@01))))
(assert (= ($Snap.first $t@130@01) $Snap.unit))
; [eval] i >= 0
(assert (>= i@128@01 0))
(assert (=
  ($Snap.second $t@130@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@130@01))
    ($Snap.second ($Snap.second $t@130@01)))))
(assert (= ($Snap.first ($Snap.second $t@130@01)) $Snap.unit))
; [eval] i < len(a)
; [eval] len(a)
(assert (< i@128@01 (len<Int> a@127@01)))
(declare-const j@131@01 Int)
(push) ; 2
; [eval] j >= 0 && j < len(a)
; [eval] j >= 0
(push) ; 3
; [then-branch: 82 | !(j@131@01 >= 0) | live]
; [else-branch: 82 | j@131@01 >= 0 | live]
(push) ; 4
; [then-branch: 82 | !(j@131@01 >= 0)]
(assert (not (>= j@131@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 82 | j@131@01 >= 0]
(assert (>= j@131@01 0))
; [eval] j < len(a)
; [eval] len(a)
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (>= j@131@01 0) (not (>= j@131@01 0))))
(assert (and (>= j@131@01 0) (< j@131@01 (len<Int> a@127@01))))
; [eval] loc(a, j)
(pop) ; 2
(declare-fun inv@132@01 ($Ref) Int)
(declare-fun img@133@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@131@01 Int)) (!
  (=>
    (and (>= j@131@01 0) (< j@131@01 (len<Int> a@127@01)))
    (or (>= j@131@01 0) (not (>= j@131@01 0))))
  :pattern ((loc<Ref> a@127@01 j@131@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((j1@131@01 Int) (j2@131@01 Int)) (!
  (=>
    (and
      (and (>= j1@131@01 0) (< j1@131@01 (len<Int> a@127@01)))
      (and (>= j2@131@01 0) (< j2@131@01 (len<Int> a@127@01)))
      (= (loc<Ref> a@127@01 j1@131@01) (loc<Ref> a@127@01 j2@131@01)))
    (= j1@131@01 j2@131@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@131@01 Int)) (!
  (=>
    (and (>= j@131@01 0) (< j@131@01 (len<Int> a@127@01)))
    (and
      (= (inv@132@01 (loc<Ref> a@127@01 j@131@01)) j@131@01)
      (img@133@01 (loc<Ref> a@127@01 j@131@01))))
  :pattern ((loc<Ref> a@127@01 j@131@01))
  :qid |quant-u-18342|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@133@01 r)
      (and (>= (inv@132@01 r) 0) (< (inv@132@01 r) (len<Int> a@127@01))))
    (= (loc<Ref> a@127@01 (inv@132@01 r)) r))
  :pattern ((inv@132@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@131@01 Int)) (!
  (=>
    (and (>= j@131@01 0) (< j@131@01 (len<Int> a@127@01)))
    (not (= (loc<Ref> a@127@01 j@131@01) $Ref.null)))
  :pattern ((loc<Ref> a@127@01 j@131@01))
  :qid |val-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@134@01 $Snap)
(assert (= $t@134@01 ($Snap.combine ($Snap.first $t@134@01) ($Snap.second $t@134@01))))
(assert (= ($Snap.first $t@134@01) $Snap.unit))
; [eval] i >= 0
(assert (=
  ($Snap.second $t@134@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@134@01))
    ($Snap.second ($Snap.second $t@134@01)))))
(assert (= ($Snap.first ($Snap.second $t@134@01)) $Snap.unit))
; [eval] i < len(a)
; [eval] len(a)
(assert (=
  ($Snap.second ($Snap.second $t@134@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@134@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@134@01))))))
(declare-const j@135@01 Int)
(push) ; 3
; [eval] j >= 0 && j < len(a)
; [eval] j >= 0
(push) ; 4
; [then-branch: 83 | !(j@135@01 >= 0) | live]
; [else-branch: 83 | j@135@01 >= 0 | live]
(push) ; 5
; [then-branch: 83 | !(j@135@01 >= 0)]
(assert (not (>= j@135@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 83 | j@135@01 >= 0]
(assert (>= j@135@01 0))
; [eval] j < len(a)
; [eval] len(a)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (>= j@135@01 0) (not (>= j@135@01 0))))
(assert (and (>= j@135@01 0) (< j@135@01 (len<Int> a@127@01))))
; [eval] loc(a, j)
(pop) ; 3
(declare-fun inv@136@01 ($Ref) Int)
(declare-fun img@137@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@135@01 Int)) (!
  (=>
    (and (>= j@135@01 0) (< j@135@01 (len<Int> a@127@01)))
    (or (>= j@135@01 0) (not (>= j@135@01 0))))
  :pattern ((loc<Ref> a@127@01 j@135@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@135@01 Int) (j2@135@01 Int)) (!
  (=>
    (and
      (and (>= j1@135@01 0) (< j1@135@01 (len<Int> a@127@01)))
      (and (>= j2@135@01 0) (< j2@135@01 (len<Int> a@127@01)))
      (= (loc<Ref> a@127@01 j1@135@01) (loc<Ref> a@127@01 j2@135@01)))
    (= j1@135@01 j2@135@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@135@01 Int)) (!
  (=>
    (and (>= j@135@01 0) (< j@135@01 (len<Int> a@127@01)))
    (and
      (= (inv@136@01 (loc<Ref> a@127@01 j@135@01)) j@135@01)
      (img@137@01 (loc<Ref> a@127@01 j@135@01))))
  :pattern ((loc<Ref> a@127@01 j@135@01))
  :qid |quant-u-18344|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@137@01 r)
      (and (>= (inv@136@01 r) 0) (< (inv@136@01 r) (len<Int> a@127@01))))
    (= (loc<Ref> a@127@01 (inv@136@01 r)) r))
  :pattern ((inv@136@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@135@01 Int)) (!
  (=>
    (and (>= j@135@01 0) (< j@135@01 (len<Int> a@127@01)))
    (not (= (loc<Ref> a@127@01 j@135@01) $Ref.null)))
  :pattern ((loc<Ref> a@127@01 j@135@01))
  :qid |val-permImpliesNonNull|)))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@134@01))) $Snap.unit))
; [eval] (forall j: Int :: { old(loc(a, j)) } j >= 0 && (j < len(a) && j < i) ==> old(loc(a, j).val) == loc(a, j).val)
(declare-const j@138@01 Int)
(push) ; 3
; [eval] j >= 0 && (j < len(a) && j < i) ==> old(loc(a, j).val) == loc(a, j).val
; [eval] j >= 0 && (j < len(a) && j < i)
; [eval] j >= 0
(push) ; 4
; [then-branch: 84 | !(j@138@01 >= 0) | live]
; [else-branch: 84 | j@138@01 >= 0 | live]
(push) ; 5
; [then-branch: 84 | !(j@138@01 >= 0)]
(assert (not (>= j@138@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 84 | j@138@01 >= 0]
(assert (>= j@138@01 0))
; [eval] j < len(a)
; [eval] len(a)
(push) ; 6
; [then-branch: 85 | !(j@138@01 < len[Int](a@127@01)) | live]
; [else-branch: 85 | j@138@01 < len[Int](a@127@01) | live]
(push) ; 7
; [then-branch: 85 | !(j@138@01 < len[Int](a@127@01))]
(assert (not (< j@138@01 (len<Int> a@127@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 85 | j@138@01 < len[Int](a@127@01)]
(assert (< j@138@01 (len<Int> a@127@01)))
; [eval] j < i
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (< j@138@01 (len<Int> a@127@01)) (not (< j@138@01 (len<Int> a@127@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@138@01 0)
  (and
    (>= j@138@01 0)
    (or (< j@138@01 (len<Int> a@127@01)) (not (< j@138@01 (len<Int> a@127@01)))))))
(assert (or (>= j@138@01 0) (not (>= j@138@01 0))))
(push) ; 4
; [then-branch: 86 | j@138@01 >= 0 && j@138@01 < len[Int](a@127@01) && j@138@01 < i@128@01 | live]
; [else-branch: 86 | !(j@138@01 >= 0 && j@138@01 < len[Int](a@127@01) && j@138@01 < i@128@01) | live]
(push) ; 5
; [then-branch: 86 | j@138@01 >= 0 && j@138@01 < len[Int](a@127@01) && j@138@01 < i@128@01]
(assert (and
  (>= j@138@01 0)
  (and (< j@138@01 (len<Int> a@127@01)) (< j@138@01 i@128@01))))
; [eval] old(loc(a, j).val) == loc(a, j).val
; [eval] old(loc(a, j).val)
; [eval] loc(a, j)
(push) ; 6
(assert (not (and
  (img@133@01 (loc<Ref> a@127@01 j@138@01))
  (and
    (>= (inv@132@01 (loc<Ref> a@127@01 j@138@01)) 0)
    (< (inv@132@01 (loc<Ref> a@127@01 j@138@01)) (len<Int> a@127@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] loc(a, j)
(push) ; 6
(assert (not (and
  (img@137@01 (loc<Ref> a@127@01 j@138@01))
  (and
    (>= (inv@136@01 (loc<Ref> a@127@01 j@138@01)) 0)
    (< (inv@136@01 (loc<Ref> a@127@01 j@138@01)) (len<Int> a@127@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 86 | !(j@138@01 >= 0 && j@138@01 < len[Int](a@127@01) && j@138@01 < i@128@01)]
(assert (not
  (and
    (>= j@138@01 0)
    (and (< j@138@01 (len<Int> a@127@01)) (< j@138@01 i@128@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (>= j@138@01 0)
    (and (< j@138@01 (len<Int> a@127@01)) (< j@138@01 i@128@01)))
  (and (>= j@138@01 0) (< j@138@01 (len<Int> a@127@01)) (< j@138@01 i@128@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= j@138@01 0)
      (and (< j@138@01 (len<Int> a@127@01)) (< j@138@01 i@128@01))))
  (and
    (>= j@138@01 0)
    (and (< j@138@01 (len<Int> a@127@01)) (< j@138@01 i@128@01)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@138@01 Int)) (!
  (and
    (=>
      (>= j@138@01 0)
      (and
        (>= j@138@01 0)
        (or
          (< j@138@01 (len<Int> a@127@01))
          (not (< j@138@01 (len<Int> a@127@01))))))
    (or (>= j@138@01 0) (not (>= j@138@01 0)))
    (=>
      (and
        (>= j@138@01 0)
        (and (< j@138@01 (len<Int> a@127@01)) (< j@138@01 i@128@01)))
      (and
        (>= j@138@01 0)
        (< j@138@01 (len<Int> a@127@01))
        (< j@138@01 i@128@01)))
    (or
      (not
        (and
          (>= j@138@01 0)
          (and (< j@138@01 (len<Int> a@127@01)) (< j@138@01 i@128@01))))
      (and
        (>= j@138@01 0)
        (and (< j@138@01 (len<Int> a@127@01)) (< j@138@01 i@128@01)))))
  :pattern ((loc<Ref> a@127@01 j@138@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/issues/block_array.vpr@73@9@73@94-aux|)))
(assert (forall ((j@138@01 Int)) (!
  (=>
    (and
      (>= j@138@01 0)
      (and (< j@138@01 (len<Int> a@127@01)) (< j@138@01 i@128@01)))
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@130@01))) (loc<Ref> a@127@01 j@138@01))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@134@01)))) (loc<Ref> a@127@01 j@138@01))))
  :pattern ((loc<Ref> a@127@01 j@138@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/issues/block_array.vpr@73@9@73@94|)))
(pop) ; 2
(push) ; 2
; [exec]
; var k: Int
(declare-const k@139@01 Int)
; [exec]
; inhale k >= 0
(declare-const $t@140@01 $Snap)
(assert (= $t@140@01 $Snap.unit))
; [eval] k >= 0
(assert (>= k@139@01 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale k < len(a)
(declare-const $t@141@01 $Snap)
(assert (= $t@141@01 $Snap.unit))
; [eval] k < len(a)
; [eval] len(a)
(assert (< k@139@01 (len<Int> a@127@01)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale k % 2 == 0
(declare-const $t@142@01 $Snap)
(assert (= $t@142@01 $Snap.unit))
; [eval] k % 2 == 0
; [eval] k % 2
(assert (= (mod k@139@01 2) 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale k != i
(declare-const $t@143@01 $Snap)
(assert (= $t@143@01 $Snap.unit))
; [eval] k != i
(assert (not (= k@139@01 i@128@01)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; loc(a, i).val := newVal
; [eval] loc(a, i)
; Precomputing data for removing quantified permissions
(define-fun pTaken@144@01 ((r $Ref)) $Perm
  (ite
    (= r (loc<Ref> a@127@01 i@128@01))
    ($Perm.min
      (ite
        (and
          (img@133@01 r)
          (and (>= (inv@132@01 r) 0) (< (inv@132@01 r) (len<Int> a@127@01))))
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
          (img@133@01 r)
          (and (>= (inv@132@01 r) 0) (< (inv@132@01 r) (len<Int> a@127@01))))
        $Perm.Write
        $Perm.No)
      (pTaken@144@01 r))
    $Perm.No)
  
  :qid |quant-u-18346|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@144@01 r) $Perm.No)
  
  :qid |quant-u-18347|))))
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
    (= r (loc<Ref> a@127@01 i@128@01))
    (= (- $Perm.Write (pTaken@144@01 r)) $Perm.No))
  
  :qid |quant-u-18348|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@145@01 $FVF<val>)
; Definitional axioms for singleton-FVF's value
(assert (=
  ($FVF.lookup_val (as sm@145@01  $FVF<val>) (loc<Ref> a@127@01 i@128@01))
  newVal@129@01))
; [eval] i + 2 < len(a)
; [eval] i + 2
; [eval] len(a)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< (+ i@128@01 2) (len<Int> a@127@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< (+ i@128@01 2) (len<Int> a@127@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 87 | i@128@01 + 2 < len[Int](a@127@01) | live]
; [else-branch: 87 | !(i@128@01 + 2 < len[Int](a@127@01)) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 87 | i@128@01 + 2 < len[Int](a@127@01)]
(assert (< (+ i@128@01 2) (len<Int> a@127@01)))
; [exec]
; setVal2(a, i + 1, newVal)
; [eval] i + 1
; [eval] i >= 0
(push) ; 4
(assert (not (>= (+ i@128@01 1) 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (>= (+ i@128@01 1) 0))
; [eval] i < len(a)
; [eval] len(a)
(push) ; 4
(assert (not (< (+ i@128@01 1) (len<Int> a@127@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< (+ i@128@01 1) (len<Int> a@127@01)))
(declare-const j@146@01 Int)
(push) ; 4
; [eval] j >= 0 && j < len(a)
; [eval] j >= 0
(push) ; 5
; [then-branch: 88 | !(j@146@01 >= 0) | live]
; [else-branch: 88 | j@146@01 >= 0 | live]
(push) ; 6
; [then-branch: 88 | !(j@146@01 >= 0)]
(assert (not (>= j@146@01 0)))
(pop) ; 6
(push) ; 6
; [else-branch: 88 | j@146@01 >= 0]
(assert (>= j@146@01 0))
; [eval] j < len(a)
; [eval] len(a)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (>= j@146@01 0) (not (>= j@146@01 0))))
(assert (and (>= j@146@01 0) (< j@146@01 (len<Int> a@127@01))))
; [eval] loc(a, j)
(pop) ; 4
(declare-fun inv@147@01 ($Ref) Int)
(declare-fun img@148@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@146@01 Int)) (!
  (=>
    (and (>= j@146@01 0) (< j@146@01 (len<Int> a@127@01)))
    (or (>= j@146@01 0) (not (>= j@146@01 0))))
  :pattern ((loc<Ref> a@127@01 j@146@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((j1@146@01 Int) (j2@146@01 Int)) (!
  (=>
    (and
      (and (>= j1@146@01 0) (< j1@146@01 (len<Int> a@127@01)))
      (and (>= j2@146@01 0) (< j2@146@01 (len<Int> a@127@01)))
      (= (loc<Ref> a@127@01 j1@146@01) (loc<Ref> a@127@01 j2@146@01)))
    (= j1@146@01 j2@146@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@146@01 Int)) (!
  (=>
    (and (>= j@146@01 0) (< j@146@01 (len<Int> a@127@01)))
    (and
      (= (inv@147@01 (loc<Ref> a@127@01 j@146@01)) j@146@01)
      (img@148@01 (loc<Ref> a@127@01 j@146@01))))
  :pattern ((loc<Ref> a@127@01 j@146@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@148@01 r)
      (and (>= (inv@147@01 r) 0) (< (inv@147@01 r) (len<Int> a@127@01))))
    (= (loc<Ref> a@127@01 (inv@147@01 r)) r))
  :pattern ((inv@147@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@149@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (>= (inv@147@01 r) 0) (< (inv@147@01 r) (len<Int> a@127@01)))
      (img@148@01 r)
      (= r (loc<Ref> a@127@01 (inv@147@01 r))))
    ($Perm.min
      (ite
        (and
          (img@133@01 r)
          (and (>= (inv@132@01 r) 0) (< (inv@132@01 r) (len<Int> a@127@01))))
        (- $Perm.Write (pTaken@144@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@150@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (>= (inv@147@01 r) 0) (< (inv@147@01 r) (len<Int> a@127@01)))
      (img@148@01 r)
      (= r (loc<Ref> a@127@01 (inv@147@01 r))))
    ($Perm.min
      (ite (= r (loc<Ref> a@127@01 i@128@01)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@149@01 r)))
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
          (img@133@01 r)
          (and (>= (inv@132@01 r) 0) (< (inv@132@01 r) (len<Int> a@127@01))))
        (- $Perm.Write (pTaken@144@01 r))
        $Perm.No)
      (pTaken@149@01 r))
    $Perm.No)
  
  :qid |quant-u-18351|))))
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
      (and (>= (inv@147@01 r) 0) (< (inv@147@01 r) (len<Int> a@127@01)))
      (img@148@01 r)
      (= r (loc<Ref> a@127@01 (inv@147@01 r))))
    (= (- $Perm.Write (pTaken@149@01 r)) $Perm.No))
  
  :qid |quant-u-18352|))))
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
      (= (loc<Ref> a@127@01 i@128@01) (loc<Ref> a@127@01 i@128@01))
      $Perm.Write
      $Perm.No)
    (pTaken@150@01 (loc<Ref> a@127@01 i@128@01)))
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
      (and (>= (inv@147@01 r) 0) (< (inv@147@01 r) (len<Int> a@127@01)))
      (img@148@01 r)
      (= r (loc<Ref> a@127@01 (inv@147@01 r))))
    (= (- (- $Perm.Write (pTaken@149@01 r)) (pTaken@150@01 r)) $Perm.No))
  
  :qid |quant-u-18354|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const $t@151@01 $Snap)
(assert (= $t@151@01 ($Snap.combine ($Snap.first $t@151@01) ($Snap.second $t@151@01))))
(assert (= ($Snap.first $t@151@01) $Snap.unit))
; [eval] i >= 0
(assert (=
  ($Snap.second $t@151@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@151@01))
    ($Snap.second ($Snap.second $t@151@01)))))
(assert (= ($Snap.first ($Snap.second $t@151@01)) $Snap.unit))
; [eval] i < len(a)
; [eval] len(a)
(assert (=
  ($Snap.second ($Snap.second $t@151@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@151@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@151@01))))))
(declare-const j@152@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] j >= 0 && j < len(a)
; [eval] j >= 0
(push) ; 5
; [then-branch: 89 | !(j@152@01 >= 0) | live]
; [else-branch: 89 | j@152@01 >= 0 | live]
(push) ; 6
; [then-branch: 89 | !(j@152@01 >= 0)]
(assert (not (>= j@152@01 0)))
(pop) ; 6
(push) ; 6
; [else-branch: 89 | j@152@01 >= 0]
(assert (>= j@152@01 0))
; [eval] j < len(a)
; [eval] len(a)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (>= j@152@01 0) (not (>= j@152@01 0))))
(assert (and (>= j@152@01 0) (< j@152@01 (len<Int> a@127@01))))
; [eval] loc(a, j)
(pop) ; 4
(declare-fun inv@153@01 ($Ref) Int)
(declare-fun img@154@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@152@01 Int)) (!
  (=>
    (and (>= j@152@01 0) (< j@152@01 (len<Int> a@127@01)))
    (or (>= j@152@01 0) (not (>= j@152@01 0))))
  :pattern ((loc<Ref> a@127@01 j@152@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((j1@152@01 Int) (j2@152@01 Int)) (!
  (=>
    (and
      (and (>= j1@152@01 0) (< j1@152@01 (len<Int> a@127@01)))
      (and (>= j2@152@01 0) (< j2@152@01 (len<Int> a@127@01)))
      (= (loc<Ref> a@127@01 j1@152@01) (loc<Ref> a@127@01 j2@152@01)))
    (= j1@152@01 j2@152@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@152@01 Int)) (!
  (=>
    (and (>= j@152@01 0) (< j@152@01 (len<Int> a@127@01)))
    (and
      (= (inv@153@01 (loc<Ref> a@127@01 j@152@01)) j@152@01)
      (img@154@01 (loc<Ref> a@127@01 j@152@01))))
  :pattern ((loc<Ref> a@127@01 j@152@01))
  :qid |quant-u-18356|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@154@01 r)
      (and (>= (inv@153@01 r) 0) (< (inv@153@01 r) (len<Int> a@127@01))))
    (= (loc<Ref> a@127@01 (inv@153@01 r)) r))
  :pattern ((inv@153@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@152@01 Int)) (!
  (=>
    (and (>= j@152@01 0) (< j@152@01 (len<Int> a@127@01)))
    (not (= (loc<Ref> a@127@01 j@152@01) $Ref.null)))
  :pattern ((loc<Ref> a@127@01 j@152@01))
  :qid |val-permImpliesNonNull|)))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@151@01))) $Snap.unit))
; [eval] (forall j: Int :: { old(loc(a, j)) } j >= 0 && (j < len(a) && j < i) ==> old(loc(a, j).val) == loc(a, j).val)
(declare-const j@155@01 Int)
(push) ; 4
; [eval] j >= 0 && (j < len(a) && j < i) ==> old(loc(a, j).val) == loc(a, j).val
; [eval] j >= 0 && (j < len(a) && j < i)
; [eval] j >= 0
(push) ; 5
; [then-branch: 90 | !(j@155@01 >= 0) | live]
; [else-branch: 90 | j@155@01 >= 0 | live]
(push) ; 6
; [then-branch: 90 | !(j@155@01 >= 0)]
(assert (not (>= j@155@01 0)))
(pop) ; 6
(push) ; 6
; [else-branch: 90 | j@155@01 >= 0]
(assert (>= j@155@01 0))
; [eval] j < len(a)
; [eval] len(a)
(push) ; 7
; [then-branch: 91 | !(j@155@01 < len[Int](a@127@01)) | live]
; [else-branch: 91 | j@155@01 < len[Int](a@127@01) | live]
(push) ; 8
; [then-branch: 91 | !(j@155@01 < len[Int](a@127@01))]
(assert (not (< j@155@01 (len<Int> a@127@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 91 | j@155@01 < len[Int](a@127@01)]
(assert (< j@155@01 (len<Int> a@127@01)))
; [eval] j < i
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or (< j@155@01 (len<Int> a@127@01)) (not (< j@155@01 (len<Int> a@127@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@155@01 0)
  (and
    (>= j@155@01 0)
    (or (< j@155@01 (len<Int> a@127@01)) (not (< j@155@01 (len<Int> a@127@01)))))))
(assert (or (>= j@155@01 0) (not (>= j@155@01 0))))
(push) ; 5
; [then-branch: 92 | j@155@01 >= 0 && j@155@01 < len[Int](a@127@01) && j@155@01 < i@128@01 + 1 | live]
; [else-branch: 92 | !(j@155@01 >= 0 && j@155@01 < len[Int](a@127@01) && j@155@01 < i@128@01 + 1) | live]
(push) ; 6
; [then-branch: 92 | j@155@01 >= 0 && j@155@01 < len[Int](a@127@01) && j@155@01 < i@128@01 + 1]
(assert (and
  (>= j@155@01 0)
  (and (< j@155@01 (len<Int> a@127@01)) (< j@155@01 (+ i@128@01 1)))))
; [eval] old(loc(a, j).val) == loc(a, j).val
; [eval] old(loc(a, j).val)
; [eval] loc(a, j)
(declare-const sm@156@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@127@01 i@128@01))
    (=
      ($FVF.lookup_val (as sm@156@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@145@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@156@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@145@01  $FVF<val>) r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@133@01 r)
        (and (>= (inv@132@01 r) 0) (< (inv@132@01 r) (len<Int> a@127@01))))
      (< $Perm.No (- $Perm.Write (pTaken@144@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@156@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@130@01))) r)))
  :pattern (($FVF.lookup_val (as sm@156@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@130@01))) r))
  :qid |qp.fvfValDef9|)))
(declare-const pm@157@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@157@01  $FPM) r)
    (+
      (ite (= r (loc<Ref> a@127@01 i@128@01)) $Perm.Write $Perm.No)
      (ite
        (and
          (img@133@01 r)
          (and (>= (inv@132@01 r) 0) (< (inv@132@01 r) (len<Int> a@127@01))))
        (- $Perm.Write (pTaken@144@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@157@01  $FPM) r))
  :qid |qp.resPrmSumDef10|)))
(push) ; 7
(assert (not (< $Perm.No ($FVF.perm_val (as pm@157@01  $FPM) (loc<Ref> a@127@01 j@155@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] loc(a, j)
(push) ; 7
(assert (not (and
  (img@154@01 (loc<Ref> a@127@01 j@155@01))
  (and
    (>= (inv@153@01 (loc<Ref> a@127@01 j@155@01)) 0)
    (< (inv@153@01 (loc<Ref> a@127@01 j@155@01)) (len<Int> a@127@01))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 92 | !(j@155@01 >= 0 && j@155@01 < len[Int](a@127@01) && j@155@01 < i@128@01 + 1)]
(assert (not
  (and
    (>= j@155@01 0)
    (and (< j@155@01 (len<Int> a@127@01)) (< j@155@01 (+ i@128@01 1))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@127@01 i@128@01))
    (=
      ($FVF.lookup_val (as sm@156@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@145@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@156@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@145@01  $FVF<val>) r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@133@01 r)
        (and (>= (inv@132@01 r) 0) (< (inv@132@01 r) (len<Int> a@127@01))))
      (< $Perm.No (- $Perm.Write (pTaken@144@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@156@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@130@01))) r)))
  :pattern (($FVF.lookup_val (as sm@156@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@130@01))) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@157@01  $FPM) r)
    (+
      (ite (= r (loc<Ref> a@127@01 i@128@01)) $Perm.Write $Perm.No)
      (ite
        (and
          (img@133@01 r)
          (and (>= (inv@132@01 r) 0) (< (inv@132@01 r) (len<Int> a@127@01))))
        (- $Perm.Write (pTaken@144@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@157@01  $FPM) r))
  :qid |qp.resPrmSumDef10|)))
(assert (=>
  (and
    (>= j@155@01 0)
    (and (< j@155@01 (len<Int> a@127@01)) (< j@155@01 (+ i@128@01 1))))
  (and
    (>= j@155@01 0)
    (< j@155@01 (len<Int> a@127@01))
    (< j@155@01 (+ i@128@01 1)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= j@155@01 0)
      (and (< j@155@01 (len<Int> a@127@01)) (< j@155@01 (+ i@128@01 1)))))
  (and
    (>= j@155@01 0)
    (and (< j@155@01 (len<Int> a@127@01)) (< j@155@01 (+ i@128@01 1))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@127@01 i@128@01))
    (=
      ($FVF.lookup_val (as sm@156@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@145@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@156@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@145@01  $FVF<val>) r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@133@01 r)
        (and (>= (inv@132@01 r) 0) (< (inv@132@01 r) (len<Int> a@127@01))))
      (< $Perm.No (- $Perm.Write (pTaken@144@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@156@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@130@01))) r)))
  :pattern (($FVF.lookup_val (as sm@156@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@130@01))) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@157@01  $FPM) r)
    (+
      (ite (= r (loc<Ref> a@127@01 i@128@01)) $Perm.Write $Perm.No)
      (ite
        (and
          (img@133@01 r)
          (and (>= (inv@132@01 r) 0) (< (inv@132@01 r) (len<Int> a@127@01))))
        (- $Perm.Write (pTaken@144@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@157@01  $FPM) r))
  :qid |qp.resPrmSumDef10|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@155@01 Int)) (!
  (and
    (=>
      (>= j@155@01 0)
      (and
        (>= j@155@01 0)
        (or
          (< j@155@01 (len<Int> a@127@01))
          (not (< j@155@01 (len<Int> a@127@01))))))
    (or (>= j@155@01 0) (not (>= j@155@01 0)))
    (=>
      (and
        (>= j@155@01 0)
        (and (< j@155@01 (len<Int> a@127@01)) (< j@155@01 (+ i@128@01 1))))
      (and
        (>= j@155@01 0)
        (< j@155@01 (len<Int> a@127@01))
        (< j@155@01 (+ i@128@01 1))))
    (or
      (not
        (and
          (>= j@155@01 0)
          (and (< j@155@01 (len<Int> a@127@01)) (< j@155@01 (+ i@128@01 1)))))
      (and
        (>= j@155@01 0)
        (and (< j@155@01 (len<Int> a@127@01)) (< j@155@01 (+ i@128@01 1))))))
  :pattern ((loc<Ref> a@127@01 j@155@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/issues/block_array.vpr@73@9@73@94-aux|)))
(assert (forall ((j@155@01 Int)) (!
  (=>
    (and
      (>= j@155@01 0)
      (and (< j@155@01 (len<Int> a@127@01)) (< j@155@01 (+ i@128@01 1))))
    (=
      ($FVF.lookup_val (as sm@156@01  $FVF<val>) (loc<Ref> a@127@01 j@155@01))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@151@01)))) (loc<Ref> a@127@01 j@155@01))))
  :pattern ((loc<Ref> a@127@01 j@155@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/issues/block_array.vpr@73@9@73@94|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] i >= 0
; [eval] i < len(a)
; [eval] len(a)
(declare-const j@158@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] j >= 0 && j < len(a)
; [eval] j >= 0
(push) ; 5
; [then-branch: 93 | !(j@158@01 >= 0) | live]
; [else-branch: 93 | j@158@01 >= 0 | live]
(push) ; 6
; [then-branch: 93 | !(j@158@01 >= 0)]
(assert (not (>= j@158@01 0)))
(pop) ; 6
(push) ; 6
; [else-branch: 93 | j@158@01 >= 0]
(assert (>= j@158@01 0))
; [eval] j < len(a)
; [eval] len(a)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (>= j@158@01 0) (not (>= j@158@01 0))))
(assert (and (>= j@158@01 0) (< j@158@01 (len<Int> a@127@01))))
; [eval] loc(a, j)
(pop) ; 4
(declare-fun inv@159@01 ($Ref) Int)
(declare-fun img@160@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@158@01 Int)) (!
  (=>
    (and (>= j@158@01 0) (< j@158@01 (len<Int> a@127@01)))
    (or (>= j@158@01 0) (not (>= j@158@01 0))))
  :pattern ((loc<Ref> a@127@01 j@158@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((j1@158@01 Int) (j2@158@01 Int)) (!
  (=>
    (and
      (and (>= j1@158@01 0) (< j1@158@01 (len<Int> a@127@01)))
      (and (>= j2@158@01 0) (< j2@158@01 (len<Int> a@127@01)))
      (= (loc<Ref> a@127@01 j1@158@01) (loc<Ref> a@127@01 j2@158@01)))
    (= j1@158@01 j2@158@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@158@01 Int)) (!
  (=>
    (and (>= j@158@01 0) (< j@158@01 (len<Int> a@127@01)))
    (and
      (= (inv@159@01 (loc<Ref> a@127@01 j@158@01)) j@158@01)
      (img@160@01 (loc<Ref> a@127@01 j@158@01))))
  :pattern ((loc<Ref> a@127@01 j@158@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@160@01 r)
      (and (>= (inv@159@01 r) 0) (< (inv@159@01 r) (len<Int> a@127@01))))
    (= (loc<Ref> a@127@01 (inv@159@01 r)) r))
  :pattern ((inv@159@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@161@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (>= (inv@159@01 r) 0) (< (inv@159@01 r) (len<Int> a@127@01)))
      (img@160@01 r)
      (= r (loc<Ref> a@127@01 (inv@159@01 r))))
    ($Perm.min
      (ite
        (and
          (img@154@01 r)
          (and (>= (inv@153@01 r) 0) (< (inv@153@01 r) (len<Int> a@127@01))))
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
          (img@154@01 r)
          (and (>= (inv@153@01 r) 0) (< (inv@153@01 r) (len<Int> a@127@01))))
        $Perm.Write
        $Perm.No)
      (pTaken@161@01 r))
    $Perm.No)
  
  :qid |quant-u-18359|))))
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
      (and (>= (inv@159@01 r) 0) (< (inv@159@01 r) (len<Int> a@127@01)))
      (img@160@01 r)
      (= r (loc<Ref> a@127@01 (inv@159@01 r))))
    (= (- $Perm.Write (pTaken@161@01 r)) $Perm.No))
  
  :qid |quant-u-18360|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall j: Int :: { old(loc(a, j)) } j >= 0 && (j < len(a) && j < i) ==> old(loc(a, j).val) == loc(a, j).val)
(declare-const j@162@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] j >= 0 && (j < len(a) && j < i) ==> old(loc(a, j).val) == loc(a, j).val
; [eval] j >= 0 && (j < len(a) && j < i)
; [eval] j >= 0
(push) ; 5
; [then-branch: 94 | !(j@162@01 >= 0) | live]
; [else-branch: 94 | j@162@01 >= 0 | live]
(push) ; 6
; [then-branch: 94 | !(j@162@01 >= 0)]
(assert (not (>= j@162@01 0)))
(pop) ; 6
(push) ; 6
; [else-branch: 94 | j@162@01 >= 0]
(assert (>= j@162@01 0))
; [eval] j < len(a)
; [eval] len(a)
(push) ; 7
; [then-branch: 95 | !(j@162@01 < len[Int](a@127@01)) | live]
; [else-branch: 95 | j@162@01 < len[Int](a@127@01) | live]
(push) ; 8
; [then-branch: 95 | !(j@162@01 < len[Int](a@127@01))]
(assert (not (< j@162@01 (len<Int> a@127@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 95 | j@162@01 < len[Int](a@127@01)]
(assert (< j@162@01 (len<Int> a@127@01)))
; [eval] j < i
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or (< j@162@01 (len<Int> a@127@01)) (not (< j@162@01 (len<Int> a@127@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@162@01 0)
  (and
    (>= j@162@01 0)
    (or (< j@162@01 (len<Int> a@127@01)) (not (< j@162@01 (len<Int> a@127@01)))))))
(assert (or (>= j@162@01 0) (not (>= j@162@01 0))))
(push) ; 5
; [then-branch: 96 | j@162@01 >= 0 && j@162@01 < len[Int](a@127@01) && j@162@01 < i@128@01 | live]
; [else-branch: 96 | !(j@162@01 >= 0 && j@162@01 < len[Int](a@127@01) && j@162@01 < i@128@01) | live]
(push) ; 6
; [then-branch: 96 | j@162@01 >= 0 && j@162@01 < len[Int](a@127@01) && j@162@01 < i@128@01]
(assert (and
  (>= j@162@01 0)
  (and (< j@162@01 (len<Int> a@127@01)) (< j@162@01 i@128@01))))
; [eval] old(loc(a, j).val) == loc(a, j).val
; [eval] old(loc(a, j).val)
; [eval] loc(a, j)
(push) ; 7
(assert (not (and
  (img@133@01 (loc<Ref> a@127@01 j@162@01))
  (and
    (>= (inv@132@01 (loc<Ref> a@127@01 j@162@01)) 0)
    (< (inv@132@01 (loc<Ref> a@127@01 j@162@01)) (len<Int> a@127@01))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] loc(a, j)
(push) ; 7
(assert (not (and
  (img@154@01 (loc<Ref> a@127@01 j@162@01))
  (and
    (>= (inv@153@01 (loc<Ref> a@127@01 j@162@01)) 0)
    (< (inv@153@01 (loc<Ref> a@127@01 j@162@01)) (len<Int> a@127@01))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 96 | !(j@162@01 >= 0 && j@162@01 < len[Int](a@127@01) && j@162@01 < i@128@01)]
(assert (not
  (and
    (>= j@162@01 0)
    (and (< j@162@01 (len<Int> a@127@01)) (< j@162@01 i@128@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (>= j@162@01 0)
    (and (< j@162@01 (len<Int> a@127@01)) (< j@162@01 i@128@01)))
  (and (>= j@162@01 0) (< j@162@01 (len<Int> a@127@01)) (< j@162@01 i@128@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= j@162@01 0)
      (and (< j@162@01 (len<Int> a@127@01)) (< j@162@01 i@128@01))))
  (and
    (>= j@162@01 0)
    (and (< j@162@01 (len<Int> a@127@01)) (< j@162@01 i@128@01)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@162@01 Int)) (!
  (and
    (=>
      (>= j@162@01 0)
      (and
        (>= j@162@01 0)
        (or
          (< j@162@01 (len<Int> a@127@01))
          (not (< j@162@01 (len<Int> a@127@01))))))
    (or (>= j@162@01 0) (not (>= j@162@01 0)))
    (=>
      (and
        (>= j@162@01 0)
        (and (< j@162@01 (len<Int> a@127@01)) (< j@162@01 i@128@01)))
      (and
        (>= j@162@01 0)
        (< j@162@01 (len<Int> a@127@01))
        (< j@162@01 i@128@01)))
    (or
      (not
        (and
          (>= j@162@01 0)
          (and (< j@162@01 (len<Int> a@127@01)) (< j@162@01 i@128@01))))
      (and
        (>= j@162@01 0)
        (and (< j@162@01 (len<Int> a@127@01)) (< j@162@01 i@128@01)))))
  :pattern ((loc<Ref> a@127@01 j@162@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/issues/block_array.vpr@73@9@73@94-aux|)))
(push) ; 4
(assert (not (forall ((j@162@01 Int)) (!
  (=>
    (and
      (>= j@162@01 0)
      (and (< j@162@01 (len<Int> a@127@01)) (< j@162@01 i@128@01)))
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@130@01))) (loc<Ref> a@127@01 j@162@01))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@151@01)))) (loc<Ref> a@127@01 j@162@01))))
  :pattern ((loc<Ref> a@127@01 j@162@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/issues/block_array.vpr@73@9@73@94|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((j@162@01 Int)) (!
  (=>
    (and
      (>= j@162@01 0)
      (and (< j@162@01 (len<Int> a@127@01)) (< j@162@01 i@128@01)))
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@130@01))) (loc<Ref> a@127@01 j@162@01))
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second $t@151@01)))) (loc<Ref> a@127@01 j@162@01))))
  :pattern ((loc<Ref> a@127@01 j@162@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/issues/block_array.vpr@73@9@73@94|)))
(pop) ; 3
(push) ; 3
; [else-branch: 87 | !(i@128@01 + 2 < len[Int](a@127@01))]
(assert (not (< (+ i@128@01 2) (len<Int> a@127@01))))
(pop) ; 3
; [eval] !(i + 2 < len(a))
; [eval] i + 2 < len(a)
; [eval] i + 2
; [eval] len(a)
(push) ; 3
(set-option :timeout 10)
(assert (not (< (+ i@128@01 2) (len<Int> a@127@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< (+ i@128@01 2) (len<Int> a@127@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 97 | !(i@128@01 + 2 < len[Int](a@127@01)) | live]
; [else-branch: 97 | i@128@01 + 2 < len[Int](a@127@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 97 | !(i@128@01 + 2 < len[Int](a@127@01))]
(assert (not (< (+ i@128@01 2) (len<Int> a@127@01))))
; [eval] i >= 0
; [eval] i < len(a)
; [eval] len(a)
(declare-const j@163@01 Int)
(push) ; 4
; [eval] j >= 0 && j < len(a)
; [eval] j >= 0
(push) ; 5
; [then-branch: 98 | !(j@163@01 >= 0) | live]
; [else-branch: 98 | j@163@01 >= 0 | live]
(push) ; 6
; [then-branch: 98 | !(j@163@01 >= 0)]
(assert (not (>= j@163@01 0)))
(pop) ; 6
(push) ; 6
; [else-branch: 98 | j@163@01 >= 0]
(assert (>= j@163@01 0))
; [eval] j < len(a)
; [eval] len(a)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (>= j@163@01 0) (not (>= j@163@01 0))))
(assert (and (>= j@163@01 0) (< j@163@01 (len<Int> a@127@01))))
; [eval] loc(a, j)
(pop) ; 4
(declare-fun inv@164@01 ($Ref) Int)
(declare-fun img@165@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@163@01 Int)) (!
  (=>
    (and (>= j@163@01 0) (< j@163@01 (len<Int> a@127@01)))
    (or (>= j@163@01 0) (not (>= j@163@01 0))))
  :pattern ((loc<Ref> a@127@01 j@163@01))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((j1@163@01 Int) (j2@163@01 Int)) (!
  (=>
    (and
      (and (>= j1@163@01 0) (< j1@163@01 (len<Int> a@127@01)))
      (and (>= j2@163@01 0) (< j2@163@01 (len<Int> a@127@01)))
      (= (loc<Ref> a@127@01 j1@163@01) (loc<Ref> a@127@01 j2@163@01)))
    (= j1@163@01 j2@163@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@163@01 Int)) (!
  (=>
    (and (>= j@163@01 0) (< j@163@01 (len<Int> a@127@01)))
    (and
      (= (inv@164@01 (loc<Ref> a@127@01 j@163@01)) j@163@01)
      (img@165@01 (loc<Ref> a@127@01 j@163@01))))
  :pattern ((loc<Ref> a@127@01 j@163@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@165@01 r)
      (and (>= (inv@164@01 r) 0) (< (inv@164@01 r) (len<Int> a@127@01))))
    (= (loc<Ref> a@127@01 (inv@164@01 r)) r))
  :pattern ((inv@164@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@166@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (>= (inv@164@01 r) 0) (< (inv@164@01 r) (len<Int> a@127@01)))
      (img@165@01 r)
      (= r (loc<Ref> a@127@01 (inv@164@01 r))))
    ($Perm.min
      (ite
        (and
          (img@133@01 r)
          (and (>= (inv@132@01 r) 0) (< (inv@132@01 r) (len<Int> a@127@01))))
        (- $Perm.Write (pTaken@144@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@167@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (>= (inv@164@01 r) 0) (< (inv@164@01 r) (len<Int> a@127@01)))
      (img@165@01 r)
      (= r (loc<Ref> a@127@01 (inv@164@01 r))))
    ($Perm.min
      (ite (= r (loc<Ref> a@127@01 i@128@01)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@166@01 r)))
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
          (img@133@01 r)
          (and (>= (inv@132@01 r) 0) (< (inv@132@01 r) (len<Int> a@127@01))))
        (- $Perm.Write (pTaken@144@01 r))
        $Perm.No)
      (pTaken@166@01 r))
    $Perm.No)
  
  :qid |quant-u-18363|))))
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
      (and (>= (inv@164@01 r) 0) (< (inv@164@01 r) (len<Int> a@127@01)))
      (img@165@01 r)
      (= r (loc<Ref> a@127@01 (inv@164@01 r))))
    (= (- $Perm.Write (pTaken@166@01 r)) $Perm.No))
  
  :qid |quant-u-18364|))))
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
      (= (loc<Ref> a@127@01 i@128@01) (loc<Ref> a@127@01 i@128@01))
      $Perm.Write
      $Perm.No)
    (pTaken@167@01 (loc<Ref> a@127@01 i@128@01)))
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
      (and (>= (inv@164@01 r) 0) (< (inv@164@01 r) (len<Int> a@127@01)))
      (img@165@01 r)
      (= r (loc<Ref> a@127@01 (inv@164@01 r))))
    (= (- (- $Perm.Write (pTaken@166@01 r)) (pTaken@167@01 r)) $Perm.No))
  
  :qid |quant-u-18366|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall j: Int :: { old(loc(a, j)) } j >= 0 && (j < len(a) && j < i) ==> old(loc(a, j).val) == loc(a, j).val)
(declare-const j@168@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] j >= 0 && (j < len(a) && j < i) ==> old(loc(a, j).val) == loc(a, j).val
; [eval] j >= 0 && (j < len(a) && j < i)
; [eval] j >= 0
(push) ; 5
; [then-branch: 99 | !(j@168@01 >= 0) | live]
; [else-branch: 99 | j@168@01 >= 0 | live]
(push) ; 6
; [then-branch: 99 | !(j@168@01 >= 0)]
(assert (not (>= j@168@01 0)))
(pop) ; 6
(push) ; 6
; [else-branch: 99 | j@168@01 >= 0]
(assert (>= j@168@01 0))
; [eval] j < len(a)
; [eval] len(a)
(push) ; 7
; [then-branch: 100 | !(j@168@01 < len[Int](a@127@01)) | live]
; [else-branch: 100 | j@168@01 < len[Int](a@127@01) | live]
(push) ; 8
; [then-branch: 100 | !(j@168@01 < len[Int](a@127@01))]
(assert (not (< j@168@01 (len<Int> a@127@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 100 | j@168@01 < len[Int](a@127@01)]
(assert (< j@168@01 (len<Int> a@127@01)))
; [eval] j < i
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or (< j@168@01 (len<Int> a@127@01)) (not (< j@168@01 (len<Int> a@127@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@168@01 0)
  (and
    (>= j@168@01 0)
    (or (< j@168@01 (len<Int> a@127@01)) (not (< j@168@01 (len<Int> a@127@01)))))))
(assert (or (>= j@168@01 0) (not (>= j@168@01 0))))
(push) ; 5
; [then-branch: 101 | j@168@01 >= 0 && j@168@01 < len[Int](a@127@01) && j@168@01 < i@128@01 | live]
; [else-branch: 101 | !(j@168@01 >= 0 && j@168@01 < len[Int](a@127@01) && j@168@01 < i@128@01) | live]
(push) ; 6
; [then-branch: 101 | j@168@01 >= 0 && j@168@01 < len[Int](a@127@01) && j@168@01 < i@128@01]
(assert (and
  (>= j@168@01 0)
  (and (< j@168@01 (len<Int> a@127@01)) (< j@168@01 i@128@01))))
; [eval] old(loc(a, j).val) == loc(a, j).val
; [eval] old(loc(a, j).val)
; [eval] loc(a, j)
(push) ; 7
(assert (not (and
  (img@133@01 (loc<Ref> a@127@01 j@168@01))
  (and
    (>= (inv@132@01 (loc<Ref> a@127@01 j@168@01)) 0)
    (< (inv@132@01 (loc<Ref> a@127@01 j@168@01)) (len<Int> a@127@01))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] loc(a, j)
(declare-const sm@169@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@127@01 i@128@01))
    (=
      ($FVF.lookup_val (as sm@169@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@145@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@169@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@145@01  $FVF<val>) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@133@01 r)
        (and (>= (inv@132@01 r) 0) (< (inv@132@01 r) (len<Int> a@127@01))))
      (< $Perm.No (- $Perm.Write (pTaken@144@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@169@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@130@01))) r)))
  :pattern (($FVF.lookup_val (as sm@169@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@130@01))) r))
  :qid |qp.fvfValDef12|)))
(declare-const pm@170@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@170@01  $FPM) r)
    (+
      (ite (= r (loc<Ref> a@127@01 i@128@01)) $Perm.Write $Perm.No)
      (ite
        (and
          (img@133@01 r)
          (and (>= (inv@132@01 r) 0) (< (inv@132@01 r) (len<Int> a@127@01))))
        (- $Perm.Write (pTaken@144@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@170@01  $FPM) r))
  :qid |qp.resPrmSumDef13|)))
(push) ; 7
(assert (not (< $Perm.No ($FVF.perm_val (as pm@170@01  $FPM) (loc<Ref> a@127@01 j@168@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 101 | !(j@168@01 >= 0 && j@168@01 < len[Int](a@127@01) && j@168@01 < i@128@01)]
(assert (not
  (and
    (>= j@168@01 0)
    (and (< j@168@01 (len<Int> a@127@01)) (< j@168@01 i@128@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@127@01 i@128@01))
    (=
      ($FVF.lookup_val (as sm@169@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@145@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@169@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@145@01  $FVF<val>) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@133@01 r)
        (and (>= (inv@132@01 r) 0) (< (inv@132@01 r) (len<Int> a@127@01))))
      (< $Perm.No (- $Perm.Write (pTaken@144@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@169@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@130@01))) r)))
  :pattern (($FVF.lookup_val (as sm@169@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@130@01))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@170@01  $FPM) r)
    (+
      (ite (= r (loc<Ref> a@127@01 i@128@01)) $Perm.Write $Perm.No)
      (ite
        (and
          (img@133@01 r)
          (and (>= (inv@132@01 r) 0) (< (inv@132@01 r) (len<Int> a@127@01))))
        (- $Perm.Write (pTaken@144@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@170@01  $FPM) r))
  :qid |qp.resPrmSumDef13|)))
(assert (=>
  (and
    (>= j@168@01 0)
    (and (< j@168@01 (len<Int> a@127@01)) (< j@168@01 i@128@01)))
  (and (>= j@168@01 0) (< j@168@01 (len<Int> a@127@01)) (< j@168@01 i@128@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= j@168@01 0)
      (and (< j@168@01 (len<Int> a@127@01)) (< j@168@01 i@128@01))))
  (and
    (>= j@168@01 0)
    (and (< j@168@01 (len<Int> a@127@01)) (< j@168@01 i@128@01)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (= r (loc<Ref> a@127@01 i@128@01))
    (=
      ($FVF.lookup_val (as sm@169@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@145@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@169@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@145@01  $FVF<val>) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@133@01 r)
        (and (>= (inv@132@01 r) 0) (< (inv@132@01 r) (len<Int> a@127@01))))
      (< $Perm.No (- $Perm.Write (pTaken@144@01 r)))
      false)
    (=
      ($FVF.lookup_val (as sm@169@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@130@01))) r)))
  :pattern (($FVF.lookup_val (as sm@169@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@130@01))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@170@01  $FPM) r)
    (+
      (ite (= r (loc<Ref> a@127@01 i@128@01)) $Perm.Write $Perm.No)
      (ite
        (and
          (img@133@01 r)
          (and (>= (inv@132@01 r) 0) (< (inv@132@01 r) (len<Int> a@127@01))))
        (- $Perm.Write (pTaken@144@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@170@01  $FPM) r))
  :qid |qp.resPrmSumDef13|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@168@01 Int)) (!
  (and
    (=>
      (>= j@168@01 0)
      (and
        (>= j@168@01 0)
        (or
          (< j@168@01 (len<Int> a@127@01))
          (not (< j@168@01 (len<Int> a@127@01))))))
    (or (>= j@168@01 0) (not (>= j@168@01 0)))
    (=>
      (and
        (>= j@168@01 0)
        (and (< j@168@01 (len<Int> a@127@01)) (< j@168@01 i@128@01)))
      (and
        (>= j@168@01 0)
        (< j@168@01 (len<Int> a@127@01))
        (< j@168@01 i@128@01)))
    (or
      (not
        (and
          (>= j@168@01 0)
          (and (< j@168@01 (len<Int> a@127@01)) (< j@168@01 i@128@01))))
      (and
        (>= j@168@01 0)
        (and (< j@168@01 (len<Int> a@127@01)) (< j@168@01 i@128@01)))))
  :pattern ((loc<Ref> a@127@01 j@168@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/issues/block_array.vpr@73@9@73@94-aux|)))
(push) ; 4
(assert (not (forall ((j@168@01 Int)) (!
  (=>
    (and
      (>= j@168@01 0)
      (and (< j@168@01 (len<Int> a@127@01)) (< j@168@01 i@128@01)))
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@130@01))) (loc<Ref> a@127@01 j@168@01))
      ($FVF.lookup_val (as sm@169@01  $FVF<val>) (loc<Ref> a@127@01 j@168@01))))
  :pattern ((loc<Ref> a@127@01 j@168@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/issues/block_array.vpr@73@9@73@94|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((j@168@01 Int)) (!
  (=>
    (and
      (>= j@168@01 0)
      (and (< j@168@01 (len<Int> a@127@01)) (< j@168@01 i@128@01)))
    (=
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.second ($Snap.second $t@130@01))) (loc<Ref> a@127@01 j@168@01))
      ($FVF.lookup_val (as sm@169@01  $FVF<val>) (loc<Ref> a@127@01 j@168@01))))
  :pattern ((loc<Ref> a@127@01 j@168@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpredicates/issues/block_array.vpr@73@9@73@94|)))
(pop) ; 3
(push) ; 3
; [else-branch: 97 | i@128@01 + 2 < len[Int](a@127@01)]
(assert (< (+ i@128@01 2) (len<Int> a@127@01)))
(pop) ; 3
(pop) ; 2
(pop) ; 1
