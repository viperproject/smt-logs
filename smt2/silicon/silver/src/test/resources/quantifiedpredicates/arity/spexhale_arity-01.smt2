(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-27 03:05:35
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
(declare-sort Seq<$Ref> 0)
(declare-sort Set<Int> 0)
(declare-sort Set<$Ref> 0)
(declare-sort Set<$Snap> 0)
(declare-sort $PSF<p2> 0)
(declare-sort $PSF<p3> 0)
(declare-sort $PSF<p4> 0)
(declare-sort $PSF<p5> 0)
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
(declare-fun $SortWrappers.Seq<$Ref>To$Snap (Seq<$Ref>) $Snap)
(declare-fun $SortWrappers.$SnapToSeq<$Ref> ($Snap) Seq<$Ref>)
(assert (forall ((x Seq<$Ref>)) (!
    (= x ($SortWrappers.$SnapToSeq<$Ref>($SortWrappers.Seq<$Ref>To$Snap x)))
    :pattern (($SortWrappers.Seq<$Ref>To$Snap x))
    :qid |$Snap.$SnapToSeq<$Ref>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Seq<$Ref>To$Snap($SortWrappers.$SnapToSeq<$Ref> x)))
    :pattern (($SortWrappers.$SnapToSeq<$Ref> x))
    :qid |$Snap.Seq<$Ref>To$SnapToSeq<$Ref>|
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
(declare-fun $SortWrappers.$PSF<p2>To$Snap ($PSF<p2>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<p2> ($Snap) $PSF<p2>)
(assert (forall ((x $PSF<p2>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<p2>($SortWrappers.$PSF<p2>To$Snap x)))
    :pattern (($SortWrappers.$PSF<p2>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<p2>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<p2>To$Snap($SortWrappers.$SnapTo$PSF<p2> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<p2> x))
    :qid |$Snap.$PSF<p2>To$SnapTo$PSF<p2>|
    )))
(declare-fun $SortWrappers.$PSF<p3>To$Snap ($PSF<p3>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<p3> ($Snap) $PSF<p3>)
(assert (forall ((x $PSF<p3>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<p3>($SortWrappers.$PSF<p3>To$Snap x)))
    :pattern (($SortWrappers.$PSF<p3>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<p3>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<p3>To$Snap($SortWrappers.$SnapTo$PSF<p3> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<p3> x))
    :qid |$Snap.$PSF<p3>To$SnapTo$PSF<p3>|
    )))
(declare-fun $SortWrappers.$PSF<p4>To$Snap ($PSF<p4>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<p4> ($Snap) $PSF<p4>)
(assert (forall ((x $PSF<p4>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<p4>($SortWrappers.$PSF<p4>To$Snap x)))
    :pattern (($SortWrappers.$PSF<p4>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<p4>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<p4>To$Snap($SortWrappers.$SnapTo$PSF<p4> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<p4> x))
    :qid |$Snap.$PSF<p4>To$SnapTo$PSF<p4>|
    )))
(declare-fun $SortWrappers.$PSF<p5>To$Snap ($PSF<p5>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<p5> ($Snap) $PSF<p5>)
(assert (forall ((x $PSF<p5>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<p5>($SortWrappers.$PSF<p5>To$Snap x)))
    :pattern (($SortWrappers.$PSF<p5>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<p5>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<p5>To$Snap($SortWrappers.$SnapTo$PSF<p5> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<p5> x))
    :qid |$Snap.$PSF<p5>To$SnapTo$PSF<p5>|
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
(declare-fun Seq_length (Seq<$Ref>) Int)
(declare-const Seq_empty Seq<$Ref>)
(declare-fun Seq_singleton ($Ref) Seq<$Ref>)
(declare-fun Seq_append (Seq<$Ref> Seq<$Ref>) Seq<$Ref>)
(declare-fun Seq_index (Seq<$Ref> Int) $Ref)
(declare-fun Seq_add (Int Int) Int)
(declare-fun Seq_sub (Int Int) Int)
(declare-fun Seq_update (Seq<$Ref> Int $Ref) Seq<$Ref>)
(declare-fun Seq_take (Seq<$Ref> Int) Seq<$Ref>)
(declare-fun Seq_drop (Seq<$Ref> Int) Seq<$Ref>)
(declare-fun Seq_contains (Seq<$Ref> $Ref) Bool)
(declare-fun Seq_contains_trigger (Seq<$Ref> $Ref) Bool)
(declare-fun Seq_skolem (Seq<$Ref> $Ref) Int)
(declare-fun Seq_equal (Seq<$Ref> Seq<$Ref>) Bool)
(declare-fun Seq_skolem_diff (Seq<$Ref> Seq<$Ref>) Int)
; /predicate_snap_functions_declarations.smt2 [p2: Int]
(declare-fun $PSF.domain_p2 ($PSF<p2>) Set<$Snap>)
(declare-fun $PSF.lookup_p2 ($PSF<p2> $Snap) Int)
(declare-fun $PSF.after_p2 ($PSF<p2> $PSF<p2>) Bool)
(declare-fun $PSF.loc_p2 (Int $Snap) Bool)
(declare-fun $PSF.perm_p2 ($PPM $Snap) $Perm)
(declare-const $psfTOP_p2 $PSF<p2>)
; /predicate_snap_functions_declarations.smt2 [p3: Snap]
(declare-fun $PSF.domain_p3 ($PSF<p3>) Set<$Snap>)
(declare-fun $PSF.lookup_p3 ($PSF<p3> $Snap) $Snap)
(declare-fun $PSF.after_p3 ($PSF<p3> $PSF<p3>) Bool)
(declare-fun $PSF.loc_p3 ($Snap $Snap) Bool)
(declare-fun $PSF.perm_p3 ($PPM $Snap) $Perm)
(declare-const $psfTOP_p3 $PSF<p3>)
; /predicate_snap_functions_declarations.smt2 [p4: Int]
(declare-fun $PSF.domain_p4 ($PSF<p4>) Set<$Snap>)
(declare-fun $PSF.lookup_p4 ($PSF<p4> $Snap) Int)
(declare-fun $PSF.after_p4 ($PSF<p4> $PSF<p4>) Bool)
(declare-fun $PSF.loc_p4 (Int $Snap) Bool)
(declare-fun $PSF.perm_p4 ($PPM $Snap) $Perm)
(declare-const $psfTOP_p4 $PSF<p4>)
; /predicate_snap_functions_declarations.smt2 [p5: Snap]
(declare-fun $PSF.domain_p5 ($PSF<p5>) Set<$Snap>)
(declare-fun $PSF.lookup_p5 ($PSF<p5> $Snap) $Snap)
(declare-fun $PSF.after_p5 ($PSF<p5> $PSF<p5>) Bool)
(declare-fun $PSF.loc_p5 ($Snap $Snap) Bool)
(declare-fun $PSF.perm_p5 ($PPM $Snap) $Perm)
(declare-const $psfTOP_p5 $PSF<p5>)
; Declaring symbols related to program functions (from program analysis)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun p1%trigger ($Snap) Bool)
(declare-fun p2%trigger ($Snap $Ref) Bool)
(declare-fun p3%trigger ($Snap $Ref) Bool)
(declare-fun p4%trigger ($Snap $Ref Int) Bool)
(declare-fun p5%trigger ($Snap $Ref Int) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
(assert (forall ((s Seq<$Ref>)) (!
  (<= 0 (Seq_length s))
  :pattern ((Seq_length s))
  )))
(assert (= (Seq_length (as Seq_empty  Seq<$Ref>)) 0))
(assert (forall ((s Seq<$Ref>)) (!
  (=> (= (Seq_length s) 0) (= s (as Seq_empty  Seq<$Ref>)))
  :pattern ((Seq_length s))
  )))
(assert (forall ((e $Ref)) (!
  (= (Seq_length (Seq_singleton e)) 1)
  :pattern ((Seq_singleton e))
  )))
(assert (forall ((s0 Seq<$Ref>) (s1 Seq<$Ref>)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<$Ref>)))
      (not (= s1 (as Seq_empty  Seq<$Ref>))))
    (= (Seq_length (Seq_append s0 s1)) (+ (Seq_length s0) (Seq_length s1))))
  :pattern ((Seq_length (Seq_append s0 s1)))
  )))
(assert (forall ((s0 Seq<$Ref>) (s1 Seq<$Ref>)) (!
  (and
    (=> (= s0 (as Seq_empty  Seq<$Ref>)) (= (Seq_append s0 s1) s1))
    (=> (= s1 (as Seq_empty  Seq<$Ref>)) (= (Seq_append s0 s1) s0)))
  :pattern ((Seq_append s0 s1))
  )))
(assert (forall ((e $Ref)) (!
  (= (Seq_index (Seq_singleton e) 0) e)
  :pattern ((Seq_singleton e))
  )))
(assert (forall ((i Int) (j Int)) (!
  (= (Seq_add i j) (+ i j))
  :pattern ((Seq_add i j))
  )))
(assert (forall ((i Int) (j Int)) (!
  (= (Seq_sub i j) (- i j))
  :pattern ((Seq_sub i j))
  )))
(assert (forall ((s0 Seq<$Ref>) (s1 Seq<$Ref>) (n Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<$Ref>)))
      (and
        (not (= s1 (as Seq_empty  Seq<$Ref>)))
        (and (<= 0 n) (< n (Seq_length s0)))))
    (= (Seq_index (Seq_append s0 s1) n) (Seq_index s0 n)))
  :pattern ((Seq_index (Seq_append s0 s1) n))
  :pattern ((Seq_index s0 n) (Seq_append s0 s1))
  )))
(assert (forall ((s0 Seq<$Ref>) (s1 Seq<$Ref>) (n Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<$Ref>)))
      (and
        (not (= s1 (as Seq_empty  Seq<$Ref>)))
        (and (<= (Seq_length s0) n) (< n (Seq_length (Seq_append s0 s1))))))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s0)) (Seq_length s0)) n)
      (=
        (Seq_index (Seq_append s0 s1) n)
        (Seq_index s1 (Seq_sub n (Seq_length s0))))))
  :pattern ((Seq_index (Seq_append s0 s1) n))
  )))
(assert (forall ((s0 Seq<$Ref>) (s1 Seq<$Ref>) (m Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<$Ref>)))
      (and
        (not (= s1 (as Seq_empty  Seq<$Ref>)))
        (and (<= 0 m) (< m (Seq_length s1)))))
    (and
      (= (Seq_sub (Seq_add m (Seq_length s0)) (Seq_length s0)) m)
      (=
        (Seq_index (Seq_append s0 s1) (Seq_add m (Seq_length s0)))
        (Seq_index s1 m))))
  :pattern ((Seq_index s1 m) (Seq_append s0 s1))
  )))
(assert (forall ((s Seq<$Ref>) (i Int) (v $Ref)) (!
  (=>
    (and (<= 0 i) (< i (Seq_length s)))
    (= (Seq_length (Seq_update s i v)) (Seq_length s)))
  :pattern ((Seq_length (Seq_update s i v)))
  :pattern ((Seq_length s) (Seq_update s i v))
  )))
(assert (forall ((s Seq<$Ref>) (i Int) (v $Ref) (n Int)) (!
  (=>
    (and (<= 0 n) (< n (Seq_length s)))
    (and
      (=> (= i n) (= (Seq_index (Seq_update s i v) n) v))
      (=> (not (= i n)) (= (Seq_index (Seq_update s i v) n) (Seq_index s n)))))
  :pattern ((Seq_index (Seq_update s i v) n))
  :pattern ((Seq_index s n) (Seq_update s i v))
  )))
(assert (forall ((s Seq<$Ref>) (n Int)) (!
  (and
    (=>
      (<= 0 n)
      (and
        (=> (<= n (Seq_length s)) (= (Seq_length (Seq_take s n)) n))
        (=> (< (Seq_length s) n) (= (Seq_length (Seq_take s n)) (Seq_length s)))))
    (=> (< n 0) (= (Seq_length (Seq_take s n)) 0)))
  :pattern ((Seq_length (Seq_take s n)))
  :pattern ((Seq_take s n) (Seq_length s))
  )))
(assert (forall ((s Seq<$Ref>) (n Int) (j Int)) (!
  (=>
    (and (<= 0 j) (and (< j n) (< j (Seq_length s))))
    (= (Seq_index (Seq_take s n) j) (Seq_index s j)))
  :pattern ((Seq_index (Seq_take s n) j))
  :pattern ((Seq_index s j) (Seq_take s n))
  )))
(assert (forall ((s Seq<$Ref>) (n Int)) (!
  (and
    (=>
      (<= 0 n)
      (and
        (=>
          (<= n (Seq_length s))
          (= (Seq_length (Seq_drop s n)) (- (Seq_length s) n)))
        (=> (< (Seq_length s) n) (= (Seq_length (Seq_drop s n)) 0))))
    (=> (< n 0) (= (Seq_length (Seq_drop s n)) (Seq_length s))))
  :pattern ((Seq_length (Seq_drop s n)))
  :pattern ((Seq_length s) (Seq_drop s n))
  )))
(assert (forall ((s Seq<$Ref>) (n Int) (j Int)) (!
  (=>
    (and (< 0 n) (and (<= 0 j) (< j (- (Seq_length s) n))))
    (and
      (= (Seq_sub (Seq_add j n) n) j)
      (= (Seq_index (Seq_drop s n) j) (Seq_index s (Seq_add j n)))))
  :pattern ((Seq_index (Seq_drop s n) j))
  )))
(assert (forall ((s Seq<$Ref>) (n Int) (i Int)) (!
  (=>
    (and (< 0 n) (and (<= n i) (< i (Seq_length s))))
    (and
      (= (Seq_add (Seq_sub i n) n) i)
      (= (Seq_index (Seq_drop s n) (Seq_sub i n)) (Seq_index s i))))
  :pattern ((Seq_drop s n) (Seq_index s i))
  )))
(assert (forall ((s Seq<$Ref>) (t Seq<$Ref>) (n Int)) (!
  (=>
    (and (< 0 n) (<= n (Seq_length s)))
    (= (Seq_take (Seq_append s t) n) (Seq_take s n)))
  :pattern ((Seq_take (Seq_append s t) n))
  )))
(assert (forall ((s Seq<$Ref>) (t Seq<$Ref>) (n Int)) (!
  (=>
    (and (> n 0) (and (> n (Seq_length s)) (< n (Seq_length (Seq_append s t)))))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s)) (Seq_length s)) n)
      (=
        (Seq_take (Seq_append s t) n)
        (Seq_append s (Seq_take t (Seq_sub n (Seq_length s)))))))
  :pattern ((Seq_take (Seq_append s t) n))
  )))
(assert (forall ((s Seq<$Ref>) (t Seq<$Ref>) (n Int)) (!
  (=>
    (and (< 0 n) (<= n (Seq_length s)))
    (= (Seq_drop (Seq_append s t) n) (Seq_append (Seq_drop s n) t)))
  :pattern ((Seq_drop (Seq_append s t) n))
  )))
(assert (forall ((s Seq<$Ref>) (t Seq<$Ref>) (n Int)) (!
  (=>
    (and (> n 0) (> n (Seq_length s)))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s)) (Seq_length s)) n)
      (= (Seq_drop (Seq_append s t) n) (Seq_drop t (Seq_sub n (Seq_length s))))))
  :pattern ((Seq_drop (Seq_append s t) n))
  )))
(assert (forall ((s Seq<$Ref>) (n Int)) (!
  (=> (<= n 0) (= (Seq_take s n) (as Seq_empty  Seq<$Ref>)))
  :pattern ((Seq_take s n))
  )))
(assert (forall ((s Seq<$Ref>) (n Int)) (!
  (=> (<= n 0) (= (Seq_drop s n) s))
  :pattern ((Seq_drop s n))
  )))
(assert (forall ((s Seq<$Ref>) (n Int)) (!
  (=> (>= n (Seq_length s)) (= (Seq_take s n) s))
  :pattern ((Seq_take s n))
  )))
(assert (forall ((s Seq<$Ref>) (n Int)) (!
  (=> (>= n (Seq_length s)) (= (Seq_drop s n) (as Seq_empty  Seq<$Ref>)))
  :pattern ((Seq_drop s n))
  )))
(assert (forall ((s Seq<$Ref>) (x $Ref)) (!
  (=>
    (Seq_contains s x)
    (and
      (<= 0 (Seq_skolem s x))
      (and
        (< (Seq_skolem s x) (Seq_length s))
        (= (Seq_index s (Seq_skolem s x)) x))))
  :pattern ((Seq_contains s x))
  )))
(assert (forall ((s Seq<$Ref>) (x $Ref) (i Int)) (!
  (=>
    (and (<= 0 i) (and (< i (Seq_length s)) (= (Seq_index s i) x)))
    (Seq_contains s x))
  :pattern ((Seq_contains s x) (Seq_index s i))
  )))
(assert (forall ((s Seq<$Ref>) (i Int)) (!
  (=>
    (and (<= 0 i) (< i (Seq_length s)))
    (Seq_contains_trigger s (Seq_index s i)))
  :pattern ((Seq_index s i))
  )))
(assert (forall ((s0 Seq<$Ref>) (s1 Seq<$Ref>)) (!
  (or
    (and (= s0 s1) (Seq_equal s0 s1))
    (or
      (and
        (not (= s0 s1))
        (and (not (Seq_equal s0 s1)) (not (= (Seq_length s0) (Seq_length s1)))))
      (and
        (not (= s0 s1))
        (and
          (not (Seq_equal s0 s1))
          (and
            (= (Seq_length s0) (Seq_length s1))
            (and
              (= (Seq_skolem_diff s0 s1) (Seq_skolem_diff s1 s0))
              (and
                (<= 0 (Seq_skolem_diff s0 s1))
                (and
                  (< (Seq_skolem_diff s0 s1) (Seq_length s0))
                  (not
                    (=
                      (Seq_index s0 (Seq_skolem_diff s0 s1))
                      (Seq_index s1 (Seq_skolem_diff s0 s1))))))))))))
  :pattern ((Seq_equal s0 s1))
  )))
(assert (forall ((a Seq<$Ref>) (b Seq<$Ref>)) (!
  (=> (Seq_equal a b) (= a b))
  :pattern ((Seq_equal a b))
  )))
(assert (forall ((x $Ref) (y $Ref)) (!
  (= (Seq_contains (Seq_singleton x) y) (= x y))
  :pattern ((Seq_contains (Seq_singleton x) y))
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
; /predicate_snap_functions_axioms.smt2 [p2: Int]
(assert (forall ((vs $PSF<p2>) (ws $PSF<p2>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_p2 vs) ($PSF.domain_p2 ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_p2 vs))
            (= ($PSF.lookup_p2 vs x) ($PSF.lookup_p2 ws x)))
          :pattern (($PSF.lookup_p2 vs x) ($PSF.lookup_p2 ws x))
          :qid |qp.$PSF<p2>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<p2>To$Snap vs)
              ($SortWrappers.$PSF<p2>To$Snap ws)
              )
    :qid |qp.$PSF<p2>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_p2 pm s))
    :pattern (($PSF.perm_p2 pm s)))))
(assert (forall ((s $Snap) (f Int)) (!
    (= ($PSF.loc_p2 f s) true)
    :pattern (($PSF.loc_p2 f s)))))
; /predicate_snap_functions_axioms.smt2 [p3: Snap]
(assert (forall ((vs $PSF<p3>) (ws $PSF<p3>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_p3 vs) ($PSF.domain_p3 ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_p3 vs))
            (= ($PSF.lookup_p3 vs x) ($PSF.lookup_p3 ws x)))
          :pattern (($PSF.lookup_p3 vs x) ($PSF.lookup_p3 ws x))
          :qid |qp.$PSF<p3>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<p3>To$Snap vs)
              ($SortWrappers.$PSF<p3>To$Snap ws)
              )
    :qid |qp.$PSF<p3>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_p3 pm s))
    :pattern (($PSF.perm_p3 pm s)))))
(assert (forall ((s $Snap) (f $Snap)) (!
    (= ($PSF.loc_p3 f s) true)
    :pattern (($PSF.loc_p3 f s)))))
; /predicate_snap_functions_axioms.smt2 [p4: Int]
(assert (forall ((vs $PSF<p4>) (ws $PSF<p4>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_p4 vs) ($PSF.domain_p4 ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_p4 vs))
            (= ($PSF.lookup_p4 vs x) ($PSF.lookup_p4 ws x)))
          :pattern (($PSF.lookup_p4 vs x) ($PSF.lookup_p4 ws x))
          :qid |qp.$PSF<p4>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<p4>To$Snap vs)
              ($SortWrappers.$PSF<p4>To$Snap ws)
              )
    :qid |qp.$PSF<p4>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_p4 pm s))
    :pattern (($PSF.perm_p4 pm s)))))
(assert (forall ((s $Snap) (f Int)) (!
    (= ($PSF.loc_p4 f s) true)
    :pattern (($PSF.loc_p4 f s)))))
; /predicate_snap_functions_axioms.smt2 [p5: Snap]
(assert (forall ((vs $PSF<p5>) (ws $PSF<p5>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_p5 vs) ($PSF.domain_p5 ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_p5 vs))
            (= ($PSF.lookup_p5 vs x) ($PSF.lookup_p5 ws x)))
          :pattern (($PSF.lookup_p5 vs x) ($PSF.lookup_p5 ws x))
          :qid |qp.$PSF<p5>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<p5>To$Snap vs)
              ($SortWrappers.$PSF<p5>To$Snap ws)
              )
    :qid |qp.$PSF<p5>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_p5 pm s))
    :pattern (($PSF.perm_p5 pm s)))))
(assert (forall ((s $Snap) (f $Snap)) (!
    (= ($PSF.loc_p5 f s) true)
    :pattern (($PSF.loc_p5 f s)))))
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
; ---------- m2 ----------
(declare-const x@0@01 $Ref)
(declare-const xs@1@01 Seq<$Ref>)
(declare-const x@2@01 $Ref)
(declare-const xs@3@01 Seq<$Ref>)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@4@01 $Snap)
(assert (= $t@4@01 ($Snap.combine ($Snap.first $t@4@01) ($Snap.second $t@4@01))))
(declare-const r@5@01 $Ref)
(push) ; 2
; [eval] (r in xs)
(assert (Seq_contains xs@3@01 r@5@01))
(pop) ; 2
(declare-fun inv@6@01 ($Ref) $Ref)
(declare-fun img@7@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((r1@5@01 $Ref) (r2@5@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@3@01 r1@5@01)
      (Seq_contains xs@3@01 r2@5@01)
      (= r1@5@01 r2@5@01))
    (= r1@5@01 r2@5@01))
  
  :qid |p2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@5@01 $Ref)) (!
  (=>
    (Seq_contains xs@3@01 r@5@01)
    (and (= (inv@6@01 r@5@01) r@5@01) (img@7@01 r@5@01)))
  :pattern ((Seq_contains xs@3@01 r@5@01))
  :pattern ((Seq_contains_trigger xs@3@01 r@5@01))
  :pattern ((Seq_contains_trigger xs@3@01 r@5@01))
  :pattern ((inv@6@01 r@5@01))
  :pattern ((img@7@01 r@5@01))
  :qid |quant-u-24616|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@7@01 r) (Seq_contains xs@3@01 (inv@6@01 r))) (= (inv@6@01 r) r))
  :pattern ((inv@6@01 r))
  :qid |p2-fctOfInv|)))
; Permissions are non-negative
(assert (= ($Snap.second $t@4@01) $Snap.unit))
; [eval] (x in xs)
(assert (Seq_contains xs@3@01 x@2@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@8@01 Int)
(declare-const sm@9@01 $PSF<p2>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p2 (as sm@9@01  $PSF<p2>) ($SortWrappers.$RefTo$Snap x@2@01))
  $t@8@01))
(pop) ; 2
(push) ; 2
; Precomputing data for removing quantified permissions
(define-fun pTaken@10@01 ((r $Ref)) $Perm
  (ite
    (= r x@2@01)
    ($Perm.min
      (ite
        (and (img@7@01 r) (Seq_contains xs@3@01 (inv@6@01 r)))
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
        (and (img@7@01 r) (Seq_contains xs@3@01 (inv@6@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@10@01 r))
    $Perm.No)
  
  :qid |quant-u-24618|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@10@01 r) $Perm.No)
  
  :qid |quant-u-24619|))))
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
  (=> (= r x@2@01) (= (- $Perm.Write (pTaken@10@01 r)) $Perm.No))
  
  :qid |quant-u-24620|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- m3 ----------
(declare-const x@11@01 $Ref)
(declare-const xs@12@01 Seq<$Ref>)
(declare-const x@13@01 $Ref)
(declare-const xs@14@01 Seq<$Ref>)
(set-option :timeout 0)
(push) ; 1
(declare-const r@15@01 $Ref)
(push) ; 2
; [eval] (r in xs)
(assert (Seq_contains xs@14@01 r@15@01))
(pop) ; 2
(declare-const $t@16@01 $PSF<p2>)
(declare-fun inv@17@01 ($Ref) $Ref)
(declare-fun img@18@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((r1@15@01 $Ref) (r2@15@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@14@01 r1@15@01)
      (Seq_contains xs@14@01 r2@15@01)
      (= r1@15@01 r2@15@01))
    (= r1@15@01 r2@15@01))
  
  :qid |p2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@15@01 $Ref)) (!
  (=>
    (Seq_contains xs@14@01 r@15@01)
    (and (= (inv@17@01 r@15@01) r@15@01) (img@18@01 r@15@01)))
  :pattern ((Seq_contains xs@14@01 r@15@01))
  :pattern ((Seq_contains_trigger xs@14@01 r@15@01))
  :pattern ((Seq_contains_trigger xs@14@01 r@15@01))
  :pattern ((inv@17@01 r@15@01))
  :pattern ((img@18@01 r@15@01))
  :qid |quant-u-24622|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@18@01 r) (Seq_contains xs@14@01 (inv@17@01 r)))
    (= (inv@17@01 r) r))
  :pattern ((inv@17@01 r))
  :qid |p2-fctOfInv|)))
; Permissions are non-negative
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@19@01 Int)
(declare-const sm@20@01 $PSF<p2>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p2 (as sm@20@01  $PSF<p2>) ($SortWrappers.$RefTo$Snap x@13@01))
  $t@19@01))
(pop) ; 2
(push) ; 2
; Precomputing data for removing quantified permissions
(define-fun pTaken@21@01 ((r $Ref)) $Perm
  (ite
    (= r x@13@01)
    ($Perm.min
      (ite
        (and (img@18@01 r) (Seq_contains xs@14@01 (inv@17@01 r)))
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
        (and (img@18@01 r) (Seq_contains xs@14@01 (inv@17@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@21@01 r))
    $Perm.No)
  
  :qid |quant-u-24624|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@21@01 r) $Perm.No)
  
  :qid |quant-u-24625|))))
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
  (=> (= r x@13@01) (= (- $Perm.Write (pTaken@21@01 r)) $Perm.No))
  
  :qid |quant-u-24626|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=> (= r x@13@01) (= (- $Perm.Write (pTaken@21@01 r)) $Perm.No))
  
  :qid |quant-u-24626|))))
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
(define-fun pTaken@22@01 ((r $Ref)) $Perm
  (ite
    (= r x@13@01)
    ($Perm.min
      (ite
        (and (img@18@01 r) (Seq_contains xs@14@01 (inv@17@01 r)))
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
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@18@01 r) (Seq_contains xs@14@01 (inv@17@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@22@01 r))
    $Perm.No)
  
  :qid |quant-u-24628|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@22@01 r) $Perm.No)
  
  :qid |quant-u-24629|))))
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
  (=> (= r x@13@01) (= (- $Perm.Write (pTaken@22@01 r)) $Perm.No))
  
  :qid |quant-u-24630|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=> (= r x@13@01) (= (- $Perm.Write (pTaken@22@01 r)) $Perm.No))
  
  :qid |quant-u-24630|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- m4 ----------
(declare-const x@23@01 $Ref)
(declare-const xs@24@01 Seq<$Ref>)
(declare-const x@25@01 $Ref)
(declare-const xs@26@01 Seq<$Ref>)
(push) ; 1
(declare-const $t@27@01 $Snap)
(assert (= $t@27@01 ($Snap.combine ($Snap.first $t@27@01) ($Snap.second $t@27@01))))
(declare-const r@28@01 $Ref)
(push) ; 2
; [eval] (r in xs)
(assert (Seq_contains xs@26@01 r@28@01))
(pop) ; 2
(declare-fun inv@29@01 ($Ref) $Ref)
(declare-fun img@30@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((r1@28@01 $Ref) (r2@28@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@26@01 r1@28@01)
      (Seq_contains xs@26@01 r2@28@01)
      (= r1@28@01 r2@28@01))
    (= r1@28@01 r2@28@01))
  
  :qid |p3-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@28@01 $Ref)) (!
  (=>
    (Seq_contains xs@26@01 r@28@01)
    (and (= (inv@29@01 r@28@01) r@28@01) (img@30@01 r@28@01)))
  :pattern ((Seq_contains xs@26@01 r@28@01))
  :pattern ((Seq_contains_trigger xs@26@01 r@28@01))
  :pattern ((Seq_contains_trigger xs@26@01 r@28@01))
  :pattern ((inv@29@01 r@28@01))
  :pattern ((img@30@01 r@28@01))
  :qid |quant-u-24632|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@30@01 r) (Seq_contains xs@26@01 (inv@29@01 r)))
    (= (inv@29@01 r) r))
  :pattern ((inv@29@01 r))
  :qid |p3-fctOfInv|)))
; Permissions are non-negative
(assert (= ($Snap.second $t@27@01) $Snap.unit))
; [eval] (x in xs)
(assert (Seq_contains xs@26@01 x@25@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@31@01 $Snap)
(declare-const sm@32@01 $PSF<p3>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p3 (as sm@32@01  $PSF<p3>) ($SortWrappers.$RefTo$Snap x@25@01))
  $t@31@01))
(pop) ; 2
(push) ; 2
; Precomputing data for removing quantified permissions
(define-fun pTaken@33@01 ((r $Ref)) $Perm
  (ite
    (= r x@25@01)
    ($Perm.min
      (ite
        (and (img@30@01 r) (Seq_contains xs@26@01 (inv@29@01 r)))
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
        (and (img@30@01 r) (Seq_contains xs@26@01 (inv@29@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@33@01 r))
    $Perm.No)
  
  :qid |quant-u-24634|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@33@01 r) $Perm.No)
  
  :qid |quant-u-24635|))))
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
  (=> (= r x@25@01) (= (- $Perm.Write (pTaken@33@01 r)) $Perm.No))
  
  :qid |quant-u-24636|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- m5 ----------
(declare-const x@34@01 $Ref)
(declare-const xs@35@01 Seq<$Ref>)
(declare-const x@36@01 $Ref)
(declare-const xs@37@01 Seq<$Ref>)
(set-option :timeout 0)
(push) ; 1
(declare-const r@38@01 $Ref)
(push) ; 2
; [eval] (r in xs)
(assert (Seq_contains xs@37@01 r@38@01))
(pop) ; 2
(declare-const $t@39@01 $PSF<p3>)
(declare-fun inv@40@01 ($Ref) $Ref)
(declare-fun img@41@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((r1@38@01 $Ref) (r2@38@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@37@01 r1@38@01)
      (Seq_contains xs@37@01 r2@38@01)
      (= r1@38@01 r2@38@01))
    (= r1@38@01 r2@38@01))
  
  :qid |p3-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@38@01 $Ref)) (!
  (=>
    (Seq_contains xs@37@01 r@38@01)
    (and (= (inv@40@01 r@38@01) r@38@01) (img@41@01 r@38@01)))
  :pattern ((Seq_contains xs@37@01 r@38@01))
  :pattern ((Seq_contains_trigger xs@37@01 r@38@01))
  :pattern ((Seq_contains_trigger xs@37@01 r@38@01))
  :pattern ((inv@40@01 r@38@01))
  :pattern ((img@41@01 r@38@01))
  :qid |quant-u-24638|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@41@01 r) (Seq_contains xs@37@01 (inv@40@01 r)))
    (= (inv@40@01 r) r))
  :pattern ((inv@40@01 r))
  :qid |p3-fctOfInv|)))
; Permissions are non-negative
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@42@01 $Snap)
(declare-const sm@43@01 $PSF<p3>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p3 (as sm@43@01  $PSF<p3>) ($SortWrappers.$RefTo$Snap x@36@01))
  $t@42@01))
(pop) ; 2
(push) ; 2
; Precomputing data for removing quantified permissions
(define-fun pTaken@44@01 ((r $Ref)) $Perm
  (ite
    (= r x@36@01)
    ($Perm.min
      (ite
        (and (img@41@01 r) (Seq_contains xs@37@01 (inv@40@01 r)))
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
        (and (img@41@01 r) (Seq_contains xs@37@01 (inv@40@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@44@01 r))
    $Perm.No)
  
  :qid |quant-u-24640|))))
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
  
  :qid |quant-u-24641|))))
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
  (=> (= r x@36@01) (= (- $Perm.Write (pTaken@44@01 r)) $Perm.No))
  
  :qid |quant-u-24642|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=> (= r x@36@01) (= (- $Perm.Write (pTaken@44@01 r)) $Perm.No))
  
  :qid |quant-u-24642|))))
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
(define-fun pTaken@45@01 ((r $Ref)) $Perm
  (ite
    (= r x@36@01)
    ($Perm.min
      (ite
        (and (img@41@01 r) (Seq_contains xs@37@01 (inv@40@01 r)))
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
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@41@01 r) (Seq_contains xs@37@01 (inv@40@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@45@01 r))
    $Perm.No)
  
  :qid |quant-u-24644|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@45@01 r) $Perm.No)
  
  :qid |quant-u-24645|))))
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
  (=> (= r x@36@01) (= (- $Perm.Write (pTaken@45@01 r)) $Perm.No))
  
  :qid |quant-u-24646|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=> (= r x@36@01) (= (- $Perm.Write (pTaken@45@01 r)) $Perm.No))
  
  :qid |quant-u-24646|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- m6 ----------
(declare-const x@46@01 $Ref)
(declare-const i@47@01 Int)
(declare-const xs@48@01 Seq<$Ref>)
(declare-const x@49@01 $Ref)
(declare-const i@50@01 Int)
(declare-const xs@51@01 Seq<$Ref>)
(push) ; 1
(declare-const $t@52@01 $Snap)
(assert (= $t@52@01 ($Snap.combine ($Snap.first $t@52@01) ($Snap.second $t@52@01))))
(declare-const r@53@01 $Ref)
(push) ; 2
; [eval] (r in xs)
(assert (Seq_contains xs@51@01 r@53@01))
(pop) ; 2
(declare-fun inv@54@01 ($Ref Int) $Ref)
(declare-fun img@55@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((r1@53@01 $Ref) (r2@53@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@51@01 r1@53@01)
      (Seq_contains xs@51@01 r2@53@01)
      (= r1@53@01 r2@53@01))
    (= r1@53@01 r2@53@01))
  
  :qid |p4-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@53@01 $Ref)) (!
  (=>
    (Seq_contains xs@51@01 r@53@01)
    (and (= (inv@54@01 r@53@01 i@50@01) r@53@01) (img@55@01 r@53@01 i@50@01)))
  :pattern ((Seq_contains xs@51@01 r@53@01))
  :pattern ((Seq_contains_trigger xs@51@01 r@53@01))
  :pattern ((Seq_contains_trigger xs@51@01 r@53@01))
  :pattern ((inv@54@01 r@53@01 i@50@01))
  :pattern ((img@55@01 r@53@01 i@50@01))
  :qid |quant-u-24648|)))
(assert (forall ((r $Ref) (i Int)) (!
  (=>
    (and (img@55@01 r i) (Seq_contains xs@51@01 (inv@54@01 r i)))
    (and (= (inv@54@01 r i) r) (= i@50@01 i)))
  :pattern ((inv@54@01 r i))
  :qid |p4-fctOfInv|)))
; Permissions are non-negative
(assert (= ($Snap.second $t@52@01) $Snap.unit))
; [eval] (x in xs)
(assert (Seq_contains xs@51@01 x@49@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@56@01 Int)
(declare-const sm@57@01 $PSF<p4>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p4 (as sm@57@01  $PSF<p4>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap x@49@01)
    ($SortWrappers.IntTo$Snap i@50@01)))
  $t@56@01))
(pop) ; 2
(push) ; 2
; Precomputing data for removing quantified permissions
(define-fun pTaken@58@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and (= r x@49@01) (= i i@50@01))
    ($Perm.min
      (ite
        (and (img@55@01 r i) (Seq_contains xs@51@01 (inv@54@01 r i)))
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
(assert (not (forall ((r $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and (img@55@01 r i) (Seq_contains xs@51@01 (inv@54@01 r i)))
        $Perm.Write
        $Perm.No)
      (pTaken@58@01 r i))
    $Perm.No)
  
  :qid |quant-u-24650|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref) (i Int)) (!
  (= (pTaken@58@01 r i) $Perm.No)
  
  :qid |quant-u-24651|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and (= r x@49@01) (= i i@50@01))
    (= (- $Perm.Write (pTaken@58@01 r i)) $Perm.No))
  
  :qid |quant-u-24652|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- m7 ----------
(declare-const x@59@01 $Ref)
(declare-const i@60@01 Int)
(declare-const xs@61@01 Seq<$Ref>)
(declare-const x@62@01 $Ref)
(declare-const i@63@01 Int)
(declare-const xs@64@01 Seq<$Ref>)
(set-option :timeout 0)
(push) ; 1
(declare-const r@65@01 $Ref)
(push) ; 2
; [eval] (r in xs)
(assert (Seq_contains xs@64@01 r@65@01))
(pop) ; 2
(declare-const $t@66@01 $PSF<p4>)
(declare-fun inv@67@01 ($Ref Int) $Ref)
(declare-fun img@68@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((r1@65@01 $Ref) (r2@65@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@64@01 r1@65@01)
      (Seq_contains xs@64@01 r2@65@01)
      (= r1@65@01 r2@65@01))
    (= r1@65@01 r2@65@01))
  
  :qid |p4-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@65@01 $Ref)) (!
  (=>
    (Seq_contains xs@64@01 r@65@01)
    (and (= (inv@67@01 r@65@01 i@63@01) r@65@01) (img@68@01 r@65@01 i@63@01)))
  :pattern ((Seq_contains xs@64@01 r@65@01))
  :pattern ((Seq_contains_trigger xs@64@01 r@65@01))
  :pattern ((Seq_contains_trigger xs@64@01 r@65@01))
  :pattern ((inv@67@01 r@65@01 i@63@01))
  :pattern ((img@68@01 r@65@01 i@63@01))
  :qid |quant-u-24654|)))
(assert (forall ((r $Ref) (i Int)) (!
  (=>
    (and (img@68@01 r i) (Seq_contains xs@64@01 (inv@67@01 r i)))
    (and (= (inv@67@01 r i) r) (= i@63@01 i)))
  :pattern ((inv@67@01 r i))
  :qid |p4-fctOfInv|)))
; Permissions are non-negative
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@69@01 Int)
(declare-const sm@70@01 $PSF<p4>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p4 (as sm@70@01  $PSF<p4>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap x@62@01)
    ($SortWrappers.IntTo$Snap i@63@01)))
  $t@69@01))
(pop) ; 2
(push) ; 2
; Precomputing data for removing quantified permissions
(define-fun pTaken@71@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and (= r x@62@01) (= i i@63@01))
    ($Perm.min
      (ite
        (and (img@68@01 r i) (Seq_contains xs@64@01 (inv@67@01 r i)))
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
(assert (not (forall ((r $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and (img@68@01 r i) (Seq_contains xs@64@01 (inv@67@01 r i)))
        $Perm.Write
        $Perm.No)
      (pTaken@71@01 r i))
    $Perm.No)
  
  :qid |quant-u-24656|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref) (i Int)) (!
  (= (pTaken@71@01 r i) $Perm.No)
  
  :qid |quant-u-24657|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and (= r x@62@01) (= i i@63@01))
    (= (- $Perm.Write (pTaken@71@01 r i)) $Perm.No))
  
  :qid |quant-u-24658|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and (= r x@62@01) (= i i@63@01))
    (= (- $Perm.Write (pTaken@71@01 r i)) $Perm.No))
  
  :qid |quant-u-24658|))))
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
(define-fun pTaken@72@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and (= r x@62@01) (= i i@63@01))
    ($Perm.min
      (ite
        (and (img@68@01 r i) (Seq_contains xs@64@01 (inv@67@01 r i)))
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
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and (img@68@01 r i) (Seq_contains xs@64@01 (inv@67@01 r i)))
        $Perm.Write
        $Perm.No)
      (pTaken@72@01 r i))
    $Perm.No)
  
  :qid |quant-u-24660|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref) (i Int)) (!
  (= (pTaken@72@01 r i) $Perm.No)
  
  :qid |quant-u-24661|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and (= r x@62@01) (= i i@63@01))
    (= (- $Perm.Write (pTaken@72@01 r i)) $Perm.No))
  
  :qid |quant-u-24662|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and (= r x@62@01) (= i i@63@01))
    (= (- $Perm.Write (pTaken@72@01 r i)) $Perm.No))
  
  :qid |quant-u-24662|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- m8 ----------
(declare-const x@73@01 $Ref)
(declare-const i@74@01 Int)
(declare-const xs@75@01 Seq<$Ref>)
(declare-const x@76@01 $Ref)
(declare-const i@77@01 Int)
(declare-const xs@78@01 Seq<$Ref>)
(push) ; 1
(declare-const $t@79@01 $Snap)
(assert (= $t@79@01 ($Snap.combine ($Snap.first $t@79@01) ($Snap.second $t@79@01))))
(declare-const r@80@01 $Ref)
(push) ; 2
; [eval] (r in xs)
(assert (Seq_contains xs@78@01 r@80@01))
(pop) ; 2
(declare-fun inv@81@01 ($Ref Int) $Ref)
(declare-fun img@82@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((r1@80@01 $Ref) (r2@80@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@78@01 r1@80@01)
      (Seq_contains xs@78@01 r2@80@01)
      (= r1@80@01 r2@80@01))
    (= r1@80@01 r2@80@01))
  
  :qid |p5-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@80@01 $Ref)) (!
  (=>
    (Seq_contains xs@78@01 r@80@01)
    (and (= (inv@81@01 r@80@01 i@77@01) r@80@01) (img@82@01 r@80@01 i@77@01)))
  :pattern ((Seq_contains xs@78@01 r@80@01))
  :pattern ((Seq_contains_trigger xs@78@01 r@80@01))
  :pattern ((Seq_contains_trigger xs@78@01 r@80@01))
  :pattern ((inv@81@01 r@80@01 i@77@01))
  :pattern ((img@82@01 r@80@01 i@77@01))
  :qid |quant-u-24664|)))
(assert (forall ((r $Ref) (i Int)) (!
  (=>
    (and (img@82@01 r i) (Seq_contains xs@78@01 (inv@81@01 r i)))
    (and (= (inv@81@01 r i) r) (= i@77@01 i)))
  :pattern ((inv@81@01 r i))
  :qid |p5-fctOfInv|)))
; Permissions are non-negative
(assert (= ($Snap.second $t@79@01) $Snap.unit))
; [eval] (x in xs)
(assert (Seq_contains xs@78@01 x@76@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@83@01 $Snap)
(declare-const sm@84@01 $PSF<p5>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p5 (as sm@84@01  $PSF<p5>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap x@76@01)
    ($SortWrappers.IntTo$Snap i@77@01)))
  $t@83@01))
(pop) ; 2
(push) ; 2
; Precomputing data for removing quantified permissions
(define-fun pTaken@85@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and (= r x@76@01) (= i i@77@01))
    ($Perm.min
      (ite
        (and (img@82@01 r i) (Seq_contains xs@78@01 (inv@81@01 r i)))
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
(assert (not (forall ((r $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and (img@82@01 r i) (Seq_contains xs@78@01 (inv@81@01 r i)))
        $Perm.Write
        $Perm.No)
      (pTaken@85@01 r i))
    $Perm.No)
  
  :qid |quant-u-24666|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref) (i Int)) (!
  (= (pTaken@85@01 r i) $Perm.No)
  
  :qid |quant-u-24667|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and (= r x@76@01) (= i i@77@01))
    (= (- $Perm.Write (pTaken@85@01 r i)) $Perm.No))
  
  :qid |quant-u-24668|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- m9 ----------
(declare-const x@86@01 $Ref)
(declare-const i@87@01 Int)
(declare-const xs@88@01 Seq<$Ref>)
(declare-const x@89@01 $Ref)
(declare-const i@90@01 Int)
(declare-const xs@91@01 Seq<$Ref>)
(set-option :timeout 0)
(push) ; 1
(declare-const r@92@01 $Ref)
(push) ; 2
; [eval] (r in xs)
(assert (Seq_contains xs@91@01 r@92@01))
(pop) ; 2
(declare-const $t@93@01 $PSF<p5>)
(declare-fun inv@94@01 ($Ref Int) $Ref)
(declare-fun img@95@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((r1@92@01 $Ref) (r2@92@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@91@01 r1@92@01)
      (Seq_contains xs@91@01 r2@92@01)
      (= r1@92@01 r2@92@01))
    (= r1@92@01 r2@92@01))
  
  :qid |p5-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@92@01 $Ref)) (!
  (=>
    (Seq_contains xs@91@01 r@92@01)
    (and (= (inv@94@01 r@92@01 i@90@01) r@92@01) (img@95@01 r@92@01 i@90@01)))
  :pattern ((Seq_contains xs@91@01 r@92@01))
  :pattern ((Seq_contains_trigger xs@91@01 r@92@01))
  :pattern ((Seq_contains_trigger xs@91@01 r@92@01))
  :pattern ((inv@94@01 r@92@01 i@90@01))
  :pattern ((img@95@01 r@92@01 i@90@01))
  :qid |quant-u-24670|)))
(assert (forall ((r $Ref) (i Int)) (!
  (=>
    (and (img@95@01 r i) (Seq_contains xs@91@01 (inv@94@01 r i)))
    (and (= (inv@94@01 r i) r) (= i@90@01 i)))
  :pattern ((inv@94@01 r i))
  :qid |p5-fctOfInv|)))
; Permissions are non-negative
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@96@01 $Snap)
(declare-const sm@97@01 $PSF<p5>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p5 (as sm@97@01  $PSF<p5>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap x@89@01)
    ($SortWrappers.IntTo$Snap i@90@01)))
  $t@96@01))
(pop) ; 2
(push) ; 2
; Precomputing data for removing quantified permissions
(define-fun pTaken@98@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and (= r x@89@01) (= i i@90@01))
    ($Perm.min
      (ite
        (and (img@95@01 r i) (Seq_contains xs@91@01 (inv@94@01 r i)))
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
(assert (not (forall ((r $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and (img@95@01 r i) (Seq_contains xs@91@01 (inv@94@01 r i)))
        $Perm.Write
        $Perm.No)
      (pTaken@98@01 r i))
    $Perm.No)
  
  :qid |quant-u-24672|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref) (i Int)) (!
  (= (pTaken@98@01 r i) $Perm.No)
  
  :qid |quant-u-24673|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and (= r x@89@01) (= i i@90@01))
    (= (- $Perm.Write (pTaken@98@01 r i)) $Perm.No))
  
  :qid |quant-u-24674|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and (= r x@89@01) (= i i@90@01))
    (= (- $Perm.Write (pTaken@98@01 r i)) $Perm.No))
  
  :qid |quant-u-24674|))))
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
(define-fun pTaken@99@01 ((r $Ref) (i Int)) $Perm
  (ite
    (and (= r x@89@01) (= i i@90@01))
    ($Perm.min
      (ite
        (and (img@95@01 r i) (Seq_contains xs@91@01 (inv@94@01 r i)))
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
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=
    (-
      (ite
        (and (img@95@01 r i) (Seq_contains xs@91@01 (inv@94@01 r i)))
        $Perm.Write
        $Perm.No)
      (pTaken@99@01 r i))
    $Perm.No)
  
  :qid |quant-u-24676|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref) (i Int)) (!
  (= (pTaken@99@01 r i) $Perm.No)
  
  :qid |quant-u-24677|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and (= r x@89@01) (= i i@90@01))
    (= (- $Perm.Write (pTaken@99@01 r i)) $Perm.No))
  
  :qid |quant-u-24678|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((r $Ref) (i Int)) (!
  (=>
    (and (= r x@89@01) (= i i@90@01))
    (= (- $Perm.Write (pTaken@99@01 r i)) $Perm.No))
  
  :qid |quant-u-24678|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
