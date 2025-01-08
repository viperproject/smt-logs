(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-08 21:19:49
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
(declare-sort Seq<Int> 0)
(declare-sort Set<Int> 0)
(declare-sort Set<$Ref> 0)
(declare-sort Set<$Snap> 0)
(declare-sort IArray 0)
(declare-sort $PSF<p> 0)
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
(declare-fun $SortWrappers.Seq<Int>To$Snap (Seq<Int>) $Snap)
(declare-fun $SortWrappers.$SnapToSeq<Int> ($Snap) Seq<Int>)
(assert (forall ((x Seq<Int>)) (!
    (= x ($SortWrappers.$SnapToSeq<Int>($SortWrappers.Seq<Int>To$Snap x)))
    :pattern (($SortWrappers.Seq<Int>To$Snap x))
    :qid |$Snap.$SnapToSeq<Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Seq<Int>To$Snap($SortWrappers.$SnapToSeq<Int> x)))
    :pattern (($SortWrappers.$SnapToSeq<Int> x))
    :qid |$Snap.Seq<Int>To$SnapToSeq<Int>|
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
(declare-fun $SortWrappers.$PSF<p>To$Snap ($PSF<p>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<p> ($Snap) $PSF<p>)
(assert (forall ((x $PSF<p>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<p>($SortWrappers.$PSF<p>To$Snap x)))
    :pattern (($SortWrappers.$PSF<p>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<p>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<p>To$Snap($SortWrappers.$SnapTo$PSF<p> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<p> x))
    :qid |$Snap.$PSF<p>To$SnapTo$PSF<p>|
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
(declare-fun Seq_length (Seq<Int>) Int)
(declare-const Seq_empty Seq<Int>)
(declare-fun Seq_singleton (Int) Seq<Int>)
(declare-fun Seq_append (Seq<Int> Seq<Int>) Seq<Int>)
(declare-fun Seq_index (Seq<Int> Int) Int)
(declare-fun Seq_add (Int Int) Int)
(declare-fun Seq_sub (Int Int) Int)
(declare-fun Seq_update (Seq<Int> Int Int) Seq<Int>)
(declare-fun Seq_take (Seq<Int> Int) Seq<Int>)
(declare-fun Seq_drop (Seq<Int> Int) Seq<Int>)
(declare-fun Seq_contains (Seq<Int> Int) Bool)
(declare-fun Seq_contains_trigger (Seq<Int> Int) Bool)
(declare-fun Seq_skolem (Seq<Int> Int) Int)
(declare-fun Seq_equal (Seq<Int> Seq<Int>) Bool)
(declare-fun Seq_skolem_diff (Seq<Int> Seq<Int>) Int)
(declare-fun Seq_range (Int Int) Seq<Int>)
(declare-fun loc<Ref> (IArray Int) $Ref)
(declare-fun loc_limited<Ref> (IArray Int) $Ref)
(declare-fun len<Int> (IArray) Int)
(declare-fun first<IArray> ($Ref) IArray)
(declare-fun second<Int> ($Ref) Int)
; /predicate_snap_functions_declarations.smt2 [p: Int]
(declare-fun $PSF.domain_p ($PSF<p>) Set<$Snap>)
(declare-fun $PSF.lookup_p ($PSF<p> $Snap) Int)
(declare-fun $PSF.after_p ($PSF<p> $PSF<p>) Bool)
(declare-fun $PSF.loc_p (Int $Snap) Bool)
(declare-fun $PSF.perm_p ($PPM $Snap) $Perm)
(declare-const $psfTOP_p $PSF<p>)
; Declaring symbols related to program functions (from program analysis)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun p%trigger ($Snap IArray Int) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
(assert (forall ((s Seq<Int>)) (!
  (<= 0 (Seq_length s))
  :pattern ((Seq_length s))
  )))
(assert (= (Seq_length (as Seq_empty  Seq<Int>)) 0))
(assert (forall ((s Seq<Int>)) (!
  (=> (= (Seq_length s) 0) (= s (as Seq_empty  Seq<Int>)))
  :pattern ((Seq_length s))
  )))
(assert (forall ((e Int)) (!
  (= (Seq_length (Seq_singleton e)) 1)
  :pattern ((Seq_singleton e))
  )))
(assert (forall ((s0 Seq<Int>) (s1 Seq<Int>)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<Int>)))
      (not (= s1 (as Seq_empty  Seq<Int>))))
    (= (Seq_length (Seq_append s0 s1)) (+ (Seq_length s0) (Seq_length s1))))
  :pattern ((Seq_length (Seq_append s0 s1)))
  )))
(assert (forall ((s0 Seq<Int>) (s1 Seq<Int>)) (!
  (and
    (=> (= s0 (as Seq_empty  Seq<Int>)) (= (Seq_append s0 s1) s1))
    (=> (= s1 (as Seq_empty  Seq<Int>)) (= (Seq_append s0 s1) s0)))
  :pattern ((Seq_append s0 s1))
  )))
(assert (forall ((e Int)) (!
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
(assert (forall ((s0 Seq<Int>) (s1 Seq<Int>) (n Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<Int>)))
      (and
        (not (= s1 (as Seq_empty  Seq<Int>)))
        (and (<= 0 n) (< n (Seq_length s0)))))
    (= (Seq_index (Seq_append s0 s1) n) (Seq_index s0 n)))
  :pattern ((Seq_index (Seq_append s0 s1) n))
  :pattern ((Seq_index s0 n) (Seq_append s0 s1))
  )))
(assert (forall ((s0 Seq<Int>) (s1 Seq<Int>) (n Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<Int>)))
      (and
        (not (= s1 (as Seq_empty  Seq<Int>)))
        (and (<= (Seq_length s0) n) (< n (Seq_length (Seq_append s0 s1))))))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s0)) (Seq_length s0)) n)
      (=
        (Seq_index (Seq_append s0 s1) n)
        (Seq_index s1 (Seq_sub n (Seq_length s0))))))
  :pattern ((Seq_index (Seq_append s0 s1) n))
  )))
(assert (forall ((s0 Seq<Int>) (s1 Seq<Int>) (m Int)) (!
  (=>
    (and
      (not (= s0 (as Seq_empty  Seq<Int>)))
      (and
        (not (= s1 (as Seq_empty  Seq<Int>)))
        (and (<= 0 m) (< m (Seq_length s1)))))
    (and
      (= (Seq_sub (Seq_add m (Seq_length s0)) (Seq_length s0)) m)
      (=
        (Seq_index (Seq_append s0 s1) (Seq_add m (Seq_length s0)))
        (Seq_index s1 m))))
  :pattern ((Seq_index s1 m) (Seq_append s0 s1))
  )))
(assert (forall ((s Seq<Int>) (i Int) (v Int)) (!
  (=>
    (and (<= 0 i) (< i (Seq_length s)))
    (= (Seq_length (Seq_update s i v)) (Seq_length s)))
  :pattern ((Seq_length (Seq_update s i v)))
  :pattern ((Seq_length s) (Seq_update s i v))
  )))
(assert (forall ((s Seq<Int>) (i Int) (v Int) (n Int)) (!
  (=>
    (and (<= 0 n) (< n (Seq_length s)))
    (and
      (=> (= i n) (= (Seq_index (Seq_update s i v) n) v))
      (=> (not (= i n)) (= (Seq_index (Seq_update s i v) n) (Seq_index s n)))))
  :pattern ((Seq_index (Seq_update s i v) n))
  :pattern ((Seq_index s n) (Seq_update s i v))
  )))
(assert (forall ((s Seq<Int>) (n Int)) (!
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
(assert (forall ((s Seq<Int>) (n Int) (j Int)) (!
  (=>
    (and (<= 0 j) (and (< j n) (< j (Seq_length s))))
    (= (Seq_index (Seq_take s n) j) (Seq_index s j)))
  :pattern ((Seq_index (Seq_take s n) j))
  :pattern ((Seq_index s j) (Seq_take s n))
  )))
(assert (forall ((s Seq<Int>) (n Int)) (!
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
(assert (forall ((s Seq<Int>) (n Int) (j Int)) (!
  (=>
    (and (< 0 n) (and (<= 0 j) (< j (- (Seq_length s) n))))
    (and
      (= (Seq_sub (Seq_add j n) n) j)
      (= (Seq_index (Seq_drop s n) j) (Seq_index s (Seq_add j n)))))
  :pattern ((Seq_index (Seq_drop s n) j))
  )))
(assert (forall ((s Seq<Int>) (n Int) (i Int)) (!
  (=>
    (and (< 0 n) (and (<= n i) (< i (Seq_length s))))
    (and
      (= (Seq_add (Seq_sub i n) n) i)
      (= (Seq_index (Seq_drop s n) (Seq_sub i n)) (Seq_index s i))))
  :pattern ((Seq_drop s n) (Seq_index s i))
  )))
(assert (forall ((s Seq<Int>) (t Seq<Int>) (n Int)) (!
  (=>
    (and (< 0 n) (<= n (Seq_length s)))
    (= (Seq_take (Seq_append s t) n) (Seq_take s n)))
  :pattern ((Seq_take (Seq_append s t) n))
  )))
(assert (forall ((s Seq<Int>) (t Seq<Int>) (n Int)) (!
  (=>
    (and (> n 0) (and (> n (Seq_length s)) (< n (Seq_length (Seq_append s t)))))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s)) (Seq_length s)) n)
      (=
        (Seq_take (Seq_append s t) n)
        (Seq_append s (Seq_take t (Seq_sub n (Seq_length s)))))))
  :pattern ((Seq_take (Seq_append s t) n))
  )))
(assert (forall ((s Seq<Int>) (t Seq<Int>) (n Int)) (!
  (=>
    (and (< 0 n) (<= n (Seq_length s)))
    (= (Seq_drop (Seq_append s t) n) (Seq_append (Seq_drop s n) t)))
  :pattern ((Seq_drop (Seq_append s t) n))
  )))
(assert (forall ((s Seq<Int>) (t Seq<Int>) (n Int)) (!
  (=>
    (and (> n 0) (> n (Seq_length s)))
    (and
      (= (Seq_add (Seq_sub n (Seq_length s)) (Seq_length s)) n)
      (= (Seq_drop (Seq_append s t) n) (Seq_drop t (Seq_sub n (Seq_length s))))))
  :pattern ((Seq_drop (Seq_append s t) n))
  )))
(assert (forall ((s Seq<Int>) (n Int)) (!
  (=> (<= n 0) (= (Seq_take s n) (as Seq_empty  Seq<Int>)))
  :pattern ((Seq_take s n))
  )))
(assert (forall ((s Seq<Int>) (n Int)) (!
  (=> (<= n 0) (= (Seq_drop s n) s))
  :pattern ((Seq_drop s n))
  )))
(assert (forall ((s Seq<Int>) (n Int)) (!
  (=> (>= n (Seq_length s)) (= (Seq_take s n) s))
  :pattern ((Seq_take s n))
  )))
(assert (forall ((s Seq<Int>) (n Int)) (!
  (=> (>= n (Seq_length s)) (= (Seq_drop s n) (as Seq_empty  Seq<Int>)))
  :pattern ((Seq_drop s n))
  )))
(assert (forall ((s Seq<Int>) (x Int)) (!
  (=>
    (Seq_contains s x)
    (and
      (<= 0 (Seq_skolem s x))
      (and
        (< (Seq_skolem s x) (Seq_length s))
        (= (Seq_index s (Seq_skolem s x)) x))))
  :pattern ((Seq_contains s x))
  )))
(assert (forall ((s Seq<Int>) (x Int) (i Int)) (!
  (=>
    (and (<= 0 i) (and (< i (Seq_length s)) (= (Seq_index s i) x)))
    (Seq_contains s x))
  :pattern ((Seq_contains s x) (Seq_index s i))
  )))
(assert (forall ((s Seq<Int>) (i Int)) (!
  (=>
    (and (<= 0 i) (< i (Seq_length s)))
    (Seq_contains_trigger s (Seq_index s i)))
  :pattern ((Seq_index s i))
  )))
(assert (forall ((s0 Seq<Int>) (s1 Seq<Int>)) (!
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
(assert (forall ((a Seq<Int>) (b Seq<Int>)) (!
  (=> (Seq_equal a b) (= a b))
  :pattern ((Seq_equal a b))
  )))
(assert (forall ((x Int) (y Int)) (!
  (= (Seq_contains (Seq_singleton x) y) (= x y))
  :pattern ((Seq_contains (Seq_singleton x) y))
  )))
(assert (forall ((min_ Int) (max Int)) (!
  (and
    (=> (< min_ max) (= (Seq_length (Seq_range min_ max)) (- max min_)))
    (=> (<= max min_) (= (Seq_length (Seq_range min_ max)) 0)))
  :pattern ((Seq_length (Seq_range min_ max)))
  :qid |$Seq[Int]_prog.ranged_seq_length|)))
(assert (forall ((min_ Int) (max Int) (j Int)) (!
  (=>
    (and (<= 0 j) (< j (- max min_)))
    (= (Seq_index (Seq_range min_ max) j) (+ min_ j)))
  :pattern ((Seq_index (Seq_range min_ max) j))
  :qid |$Seq[Int]_prog.ranged_seq_index|)))
(assert (forall ((min_ Int) (max Int) (v Int)) (!
  (= (Seq_contains (Seq_range min_ max) v) (and (<= min_ v) (< v max)))
  :pattern ((Seq_contains (Seq_range min_ max) v))
  :qid |$Seq[Int]_prog.ranged_seq_contains|)))
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
  (= (loc<Ref> a i) (loc_limited<Ref> a i))
  :pattern ((loc<Ref> a i))
  :qid |prog.limited|)))
(assert (forall ((a IArray) (i Int)) (!
  (and (= (first<IArray> (loc<Ref> a i)) a) (= (second<Int> (loc<Ref> a i)) i))
  :pattern ((loc<Ref> a i))
  :qid |prog.all_diff|)))
(assert (forall ((a IArray)) (!
  (>= (len<Int> a) 0)
  :pattern ((len<Int> a))
  :qid |prog.length_nonneg|)))
; /predicate_snap_functions_axioms.smt2 [p: Int]
(assert (forall ((vs $PSF<p>) (ws $PSF<p>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_p vs) ($PSF.domain_p ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_p vs))
            (= ($PSF.lookup_p vs x) ($PSF.lookup_p ws x)))
          :pattern (($PSF.lookup_p vs x) ($PSF.lookup_p ws x))
          :qid |qp.$PSF<p>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<p>To$Snap vs)
              ($SortWrappers.$PSF<p>To$Snap ws)
              )
    :qid |qp.$PSF<p>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_p pm s))
    :pattern (($PSF.perm_p pm s)))))
(assert (forall ((s $Snap) (f Int)) (!
    (= ($PSF.loc_p f s) true)
    :pattern (($PSF.loc_p f s)))))
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
; ---------- t1 ----------
(declare-const a@0@01 IArray)
(declare-const n@1@01 Int)
(declare-const a@2@01 IArray)
(declare-const n@3@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@4@01 $Snap)
(assert (= $t@4@01 ($Snap.combine ($Snap.first $t@4@01) ($Snap.second $t@4@01))))
(assert (= ($Snap.first $t@4@01) $Snap.unit))
; [eval] n > 5
(assert (> n@3@01 5))
(declare-const i@5@01 Int)
(push) ; 2
; [eval] (i in [0..n))
; [eval] [0..n)
(assert (Seq_contains (Seq_range 0 n@3@01) i@5@01))
(pop) ; 2
(declare-fun inv@6@01 (IArray Int) Int)
(declare-fun img@7@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@5@01 Int) (i2@5@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 n@3@01) i1@5@01)
      (Seq_contains (Seq_range 0 n@3@01) i2@5@01)
      (= i1@5@01 i2@5@01))
    (= i1@5@01 i2@5@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@5@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 n@3@01) i@5@01)
    (and (= (inv@6@01 a@2@01 i@5@01) i@5@01) (img@7@01 a@2@01 i@5@01)))
  :pattern ((Seq_contains (Seq_range 0 n@3@01) i@5@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 n@3@01) i@5@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 n@3@01) i@5@01))
  :pattern ((inv@6@01 a@2@01 i@5@01))
  :pattern ((img@7@01 a@2@01 i@5@01))
  :qid |quant-u-17454|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@7@01 a i) (Seq_contains (Seq_range 0 n@3@01) (inv@6@01 a i)))
    (and (= a@2@01 a) (= (inv@6@01 a i) i)))
  :pattern ((inv@6@01 a i))
  :qid |p-fctOfInv|)))
; Permissions are non-negative
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@8@01 $Snap)
(assert (= $t@8@01 ($Snap.combine ($Snap.first $t@8@01) ($Snap.second $t@8@01))))
(declare-const i@9@01 Int)
(push) ; 3
; [eval] (i in [4..n))
; [eval] [4..n)
(assert (Seq_contains (Seq_range 4 n@3@01) i@9@01))
(pop) ; 3
(declare-fun inv@10@01 (IArray Int) Int)
(declare-fun img@11@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@9@01 Int) (i2@9@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 4 n@3@01) i1@9@01)
      (Seq_contains (Seq_range 4 n@3@01) i2@9@01)
      (= i1@9@01 i2@9@01))
    (= i1@9@01 i2@9@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@9@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 4 n@3@01) i@9@01)
    (and (= (inv@10@01 a@2@01 i@9@01) i@9@01) (img@11@01 a@2@01 i@9@01)))
  :pattern ((Seq_contains (Seq_range 4 n@3@01) i@9@01))
  :pattern ((Seq_contains_trigger (Seq_range 4 n@3@01) i@9@01))
  :pattern ((Seq_contains_trigger (Seq_range 4 n@3@01) i@9@01))
  :pattern ((inv@10@01 a@2@01 i@9@01))
  :pattern ((img@11@01 a@2@01 i@9@01))
  :qid |quant-u-17456|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@11@01 a i) (Seq_contains (Seq_range 4 n@3@01) (inv@10@01 a i)))
    (and (= a@2@01 a) (= (inv@10@01 a i) i)))
  :pattern ((inv@10@01 a i))
  :qid |p-fctOfInv|)))
; Permissions are non-negative
(declare-const i@12@01 Int)
(push) ; 3
; [eval] (i in [0..4))
; [eval] [0..4)
(assert (Seq_contains (Seq_range 0 4) i@12@01))
(pop) ; 3
(declare-fun inv@13@01 (IArray Int) Int)
(declare-fun img@14@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@12@01 Int) (i2@12@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 4) i1@12@01)
      (Seq_contains (Seq_range 0 4) i2@12@01)
      (= i1@12@01 i2@12@01))
    (= i1@12@01 i2@12@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@12@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 4) i@12@01)
    (and (= (inv@13@01 a@2@01 i@12@01) i@12@01) (img@14@01 a@2@01 i@12@01)))
  :pattern ((Seq_contains (Seq_range 0 4) i@12@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 4) i@12@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 4) i@12@01))
  :pattern ((inv@13@01 a@2@01 i@12@01))
  :pattern ((img@14@01 a@2@01 i@12@01))
  :qid |quant-u-17458|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@14@01 a i) (Seq_contains (Seq_range 0 4) (inv@13@01 a i)))
    (and (= a@2@01 a) (= (inv@13@01 a i) i)))
  :pattern ((inv@13@01 a i))
  :qid |p-fctOfInv|)))
; Permissions are non-negative
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (and (img@14@01 a i) (Seq_contains (Seq_range 0 4) (inv@13@01 a i)))
    (and (img@11@01 a i) (Seq_contains (Seq_range 4 n@3@01) (inv@10@01 a i))))
  
  :qid |quant-u-17459|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(set-option :timeout 0)
(push) ; 2
(declare-const i@15@01 Int)
(push) ; 3
; [eval] (i in [4..n))
; [eval] [4..n)
(assert (Seq_contains (Seq_range 4 n@3@01) i@15@01))
(pop) ; 3
(declare-fun inv@16@01 (IArray Int) Int)
(declare-fun img@17@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@15@01 Int) (i2@15@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 4 n@3@01) i1@15@01)
      (Seq_contains (Seq_range 4 n@3@01) i2@15@01)
      (= i1@15@01 i2@15@01))
    (= i1@15@01 i2@15@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@15@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 4 n@3@01) i@15@01)
    (and (= (inv@16@01 a@2@01 i@15@01) i@15@01) (img@17@01 a@2@01 i@15@01)))
  :pattern ((Seq_contains (Seq_range 4 n@3@01) i@15@01))
  :pattern ((Seq_contains_trigger (Seq_range 4 n@3@01) i@15@01))
  :pattern ((inv@16@01 a@2@01 i@15@01))
  :pattern ((img@17@01 a@2@01 i@15@01))
  :qid |p-invOfFct|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@17@01 a i) (Seq_contains (Seq_range 4 n@3@01) (inv@16@01 a i)))
    (and (= a@2@01 a) (= (inv@16@01 a i) i)))
  :pattern ((inv@16@01 a i))
  :qid |p-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@18@01 ((a IArray) (i Int)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 4 n@3@01) (inv@16@01 a i))
      (img@17@01 a i)
      (and (= a a@2@01) (= i (inv@16@01 a i))))
    ($Perm.min
      (ite
        (and (img@7@01 a i) (Seq_contains (Seq_range 0 n@3@01) (inv@6@01 a i)))
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
        (and (img@7@01 a i) (Seq_contains (Seq_range 0 n@3@01) (inv@6@01 a i)))
        $Perm.Write
        $Perm.No)
      (pTaken@18@01 a i))
    $Perm.No)
  
  :qid |quant-u-17462|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@18@01 a i) $Perm.No)
  
  :qid |quant-u-17463|))))
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
    (and
      (Seq_contains (Seq_range 4 n@3@01) (inv@16@01 a i))
      (img@17@01 a i)
      (and (= a a@2@01) (= i (inv@16@01 a i))))
    (= (- $Perm.Write (pTaken@18@01 a i)) $Perm.No))
  
  :qid |quant-u-17464|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const i@19@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..4))
; [eval] [0..4)
(assert (Seq_contains (Seq_range 0 4) i@19@01))
(pop) ; 3
(declare-fun inv@20@01 (IArray Int) Int)
(declare-fun img@21@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@19@01 Int) (i2@19@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 4) i1@19@01)
      (Seq_contains (Seq_range 0 4) i2@19@01)
      (= i1@19@01 i2@19@01))
    (= i1@19@01 i2@19@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@19@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 4) i@19@01)
    (and (= (inv@20@01 a@2@01 i@19@01) i@19@01) (img@21@01 a@2@01 i@19@01)))
  :pattern ((Seq_contains (Seq_range 0 4) i@19@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 4) i@19@01))
  :pattern ((inv@20@01 a@2@01 i@19@01))
  :pattern ((img@21@01 a@2@01 i@19@01))
  :qid |p-invOfFct|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@21@01 a i) (Seq_contains (Seq_range 0 4) (inv@20@01 a i)))
    (and (= a@2@01 a) (= (inv@20@01 a i) i)))
  :pattern ((inv@20@01 a i))
  :qid |p-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@22@01 ((a IArray) (i Int)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 4) (inv@20@01 a i))
      (img@21@01 a i)
      (and (= a a@2@01) (= i (inv@20@01 a i))))
    ($Perm.min
      (ite
        (and (img@7@01 a i) (Seq_contains (Seq_range 0 n@3@01) (inv@6@01 a i)))
        (- $Perm.Write (pTaken@18@01 a i))
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
        (and (img@7@01 a i) (Seq_contains (Seq_range 0 n@3@01) (inv@6@01 a i)))
        (- $Perm.Write (pTaken@18@01 a i))
        $Perm.No)
      (pTaken@22@01 a i))
    $Perm.No)
  
  :qid |quant-u-17467|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 4) (inv@20@01 a i))
      (img@21@01 a i)
      (and (= a a@2@01) (= i (inv@20@01 a i))))
    (= (- $Perm.Write (pTaken@22@01 a i)) $Perm.No))
  
  :qid |quant-u-17468|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- t2 ----------
(declare-const a@23@01 IArray)
(declare-const n@24@01 Int)
(declare-const a@25@01 IArray)
(declare-const n@26@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@27@01 $Snap)
(assert (= $t@27@01 ($Snap.combine ($Snap.first $t@27@01) ($Snap.second $t@27@01))))
(assert (= ($Snap.first $t@27@01) $Snap.unit))
; [eval] n > 5
(assert (> n@26@01 5))
(declare-const i@28@01 Int)
(push) ; 2
; [eval] (i in [0..n))
; [eval] [0..n)
(assert (Seq_contains (Seq_range 0 n@26@01) i@28@01))
(pop) ; 2
(declare-fun inv@29@01 (IArray Int) Int)
(declare-fun img@30@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@28@01 Int) (i2@28@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 n@26@01) i1@28@01)
      (Seq_contains (Seq_range 0 n@26@01) i2@28@01)
      (= i1@28@01 i2@28@01))
    (= i1@28@01 i2@28@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@28@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 n@26@01) i@28@01)
    (and (= (inv@29@01 a@25@01 i@28@01) i@28@01) (img@30@01 a@25@01 i@28@01)))
  :pattern ((Seq_contains (Seq_range 0 n@26@01) i@28@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 n@26@01) i@28@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 n@26@01) i@28@01))
  :pattern ((inv@29@01 a@25@01 i@28@01))
  :pattern ((img@30@01 a@25@01 i@28@01))
  :qid |quant-u-17470|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@30@01 a i) (Seq_contains (Seq_range 0 n@26@01) (inv@29@01 a i)))
    (and (= a@25@01 a) (= (inv@29@01 a i) i)))
  :pattern ((inv@29@01 a i))
  :qid |p-fctOfInv|)))
; Permissions are non-negative
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@31@01 $Snap)
(assert (= $t@31@01 ($Snap.combine ($Snap.first $t@31@01) ($Snap.second $t@31@01))))
(declare-const i@32@01 Int)
(push) ; 3
; [eval] (i in [4..n))
; [eval] [4..n)
(assert (Seq_contains (Seq_range 4 n@26@01) i@32@01))
(pop) ; 3
(declare-fun inv@33@01 (IArray Int) Int)
(declare-fun img@34@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@32@01 Int) (i2@32@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 4 n@26@01) i1@32@01)
      (Seq_contains (Seq_range 4 n@26@01) i2@32@01)
      (= i1@32@01 i2@32@01))
    (= i1@32@01 i2@32@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@32@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 4 n@26@01) i@32@01)
    (and (= (inv@33@01 a@25@01 i@32@01) i@32@01) (img@34@01 a@25@01 i@32@01)))
  :pattern ((Seq_contains (Seq_range 4 n@26@01) i@32@01))
  :pattern ((Seq_contains_trigger (Seq_range 4 n@26@01) i@32@01))
  :pattern ((Seq_contains_trigger (Seq_range 4 n@26@01) i@32@01))
  :pattern ((inv@33@01 a@25@01 i@32@01))
  :pattern ((img@34@01 a@25@01 i@32@01))
  :qid |quant-u-17472|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@34@01 a i) (Seq_contains (Seq_range 4 n@26@01) (inv@33@01 a i)))
    (and (= a@25@01 a) (= (inv@33@01 a i) i)))
  :pattern ((inv@33@01 a i))
  :qid |p-fctOfInv|)))
; Permissions are non-negative
(declare-const i@35@01 Int)
(push) ; 3
; [eval] (i in [0..5))
; [eval] [0..5)
(assert (Seq_contains (Seq_range 0 5) i@35@01))
(pop) ; 3
(declare-fun inv@36@01 (IArray Int) Int)
(declare-fun img@37@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@35@01 Int) (i2@35@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 5) i1@35@01)
      (Seq_contains (Seq_range 0 5) i2@35@01)
      (= i1@35@01 i2@35@01))
    (= i1@35@01 i2@35@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@35@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 5) i@35@01)
    (and (= (inv@36@01 a@25@01 i@35@01) i@35@01) (img@37@01 a@25@01 i@35@01)))
  :pattern ((Seq_contains (Seq_range 0 5) i@35@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 5) i@35@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 5) i@35@01))
  :pattern ((inv@36@01 a@25@01 i@35@01))
  :pattern ((img@37@01 a@25@01 i@35@01))
  :qid |quant-u-17474|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@37@01 a i) (Seq_contains (Seq_range 0 5) (inv@36@01 a i)))
    (and (= a@25@01 a) (= (inv@36@01 a i) i)))
  :pattern ((inv@36@01 a i))
  :qid |p-fctOfInv|)))
; Permissions are non-negative
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (and (img@37@01 a i) (Seq_contains (Seq_range 0 5) (inv@36@01 a i)))
    (and (img@34@01 a i) (Seq_contains (Seq_range 4 n@26@01) (inv@33@01 a i))))
  
  :qid |quant-u-17475|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(set-option :timeout 0)
(push) ; 2
(declare-const i@38@01 Int)
(push) ; 3
; [eval] (i in [4..n))
; [eval] [4..n)
(assert (Seq_contains (Seq_range 4 n@26@01) i@38@01))
(pop) ; 3
(declare-fun inv@39@01 (IArray Int) Int)
(declare-fun img@40@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@38@01 Int) (i2@38@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 4 n@26@01) i1@38@01)
      (Seq_contains (Seq_range 4 n@26@01) i2@38@01)
      (= i1@38@01 i2@38@01))
    (= i1@38@01 i2@38@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@38@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 4 n@26@01) i@38@01)
    (and (= (inv@39@01 a@25@01 i@38@01) i@38@01) (img@40@01 a@25@01 i@38@01)))
  :pattern ((Seq_contains (Seq_range 4 n@26@01) i@38@01))
  :pattern ((Seq_contains_trigger (Seq_range 4 n@26@01) i@38@01))
  :pattern ((inv@39@01 a@25@01 i@38@01))
  :pattern ((img@40@01 a@25@01 i@38@01))
  :qid |p-invOfFct|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@40@01 a i) (Seq_contains (Seq_range 4 n@26@01) (inv@39@01 a i)))
    (and (= a@25@01 a) (= (inv@39@01 a i) i)))
  :pattern ((inv@39@01 a i))
  :qid |p-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@41@01 ((a IArray) (i Int)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 4 n@26@01) (inv@39@01 a i))
      (img@40@01 a i)
      (and (= a a@25@01) (= i (inv@39@01 a i))))
    ($Perm.min
      (ite
        (and
          (img@30@01 a i)
          (Seq_contains (Seq_range 0 n@26@01) (inv@29@01 a i)))
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
          (img@30@01 a i)
          (Seq_contains (Seq_range 0 n@26@01) (inv@29@01 a i)))
        $Perm.Write
        $Perm.No)
      (pTaken@41@01 a i))
    $Perm.No)
  
  :qid |quant-u-17478|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@41@01 a i) $Perm.No)
  
  :qid |quant-u-17479|))))
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
    (and
      (Seq_contains (Seq_range 4 n@26@01) (inv@39@01 a i))
      (img@40@01 a i)
      (and (= a a@25@01) (= i (inv@39@01 a i))))
    (= (- $Perm.Write (pTaken@41@01 a i)) $Perm.No))
  
  :qid |quant-u-17480|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const i@42@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..5))
; [eval] [0..5)
(assert (Seq_contains (Seq_range 0 5) i@42@01))
(pop) ; 3
(declare-fun inv@43@01 (IArray Int) Int)
(declare-fun img@44@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@42@01 Int) (i2@42@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 5) i1@42@01)
      (Seq_contains (Seq_range 0 5) i2@42@01)
      (= i1@42@01 i2@42@01))
    (= i1@42@01 i2@42@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@42@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 5) i@42@01)
    (and (= (inv@43@01 a@25@01 i@42@01) i@42@01) (img@44@01 a@25@01 i@42@01)))
  :pattern ((Seq_contains (Seq_range 0 5) i@42@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 5) i@42@01))
  :pattern ((inv@43@01 a@25@01 i@42@01))
  :pattern ((img@44@01 a@25@01 i@42@01))
  :qid |p-invOfFct|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@44@01 a i) (Seq_contains (Seq_range 0 5) (inv@43@01 a i)))
    (and (= a@25@01 a) (= (inv@43@01 a i) i)))
  :pattern ((inv@43@01 a i))
  :qid |p-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@45@01 ((a IArray) (i Int)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 5) (inv@43@01 a i))
      (img@44@01 a i)
      (and (= a a@25@01) (= i (inv@43@01 a i))))
    ($Perm.min
      (ite
        (and
          (img@30@01 a i)
          (Seq_contains (Seq_range 0 n@26@01) (inv@29@01 a i)))
        (- $Perm.Write (pTaken@41@01 a i))
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
          (img@30@01 a i)
          (Seq_contains (Seq_range 0 n@26@01) (inv@29@01 a i)))
        (- $Perm.Write (pTaken@41@01 a i))
        $Perm.No)
      (pTaken@45@01 a i))
    $Perm.No)
  
  :qid |quant-u-17483|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 5) (inv@43@01 a i))
      (img@44@01 a i)
      (and (= a a@25@01) (= i (inv@43@01 a i))))
    (= (- $Perm.Write (pTaken@45@01 a i)) $Perm.No))
  
  :qid |quant-u-17484|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 5) (inv@43@01 a i))
      (img@44@01 a i)
      (and (= a a@25@01) (= i (inv@43@01 a i))))
    (= (- $Perm.Write (pTaken@45@01 a i)) $Perm.No))
  
  :qid |quant-u-17484|))))
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
(declare-const i@46@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..5))
; [eval] [0..5)
(assert (Seq_contains (Seq_range 0 5) i@46@01))
(pop) ; 3
(declare-fun inv@47@01 (IArray Int) Int)
(declare-fun img@48@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@46@01 Int) (i2@46@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 5) i1@46@01)
      (Seq_contains (Seq_range 0 5) i2@46@01)
      (= i1@46@01 i2@46@01))
    (= i1@46@01 i2@46@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@46@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 5) i@46@01)
    (and (= (inv@47@01 a@25@01 i@46@01) i@46@01) (img@48@01 a@25@01 i@46@01)))
  :pattern ((Seq_contains (Seq_range 0 5) i@46@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 5) i@46@01))
  :pattern ((inv@47@01 a@25@01 i@46@01))
  :pattern ((img@48@01 a@25@01 i@46@01))
  :qid |p-invOfFct|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@48@01 a i) (Seq_contains (Seq_range 0 5) (inv@47@01 a i)))
    (and (= a@25@01 a) (= (inv@47@01 a i) i)))
  :pattern ((inv@47@01 a i))
  :qid |p-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@49@01 ((a IArray) (i Int)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 5) (inv@47@01 a i))
      (img@48@01 a i)
      (and (= a a@25@01) (= i (inv@47@01 a i))))
    ($Perm.min
      (ite
        (and
          (img@30@01 a i)
          (Seq_contains (Seq_range 0 n@26@01) (inv@29@01 a i)))
        (- $Perm.Write (pTaken@41@01 a i))
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
          (img@30@01 a i)
          (Seq_contains (Seq_range 0 n@26@01) (inv@29@01 a i)))
        (- $Perm.Write (pTaken@41@01 a i))
        $Perm.No)
      (pTaken@49@01 a i))
    $Perm.No)
  
  :qid |quant-u-17487|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 5) (inv@47@01 a i))
      (img@48@01 a i)
      (and (= a a@25@01) (= i (inv@47@01 a i))))
    (= (- $Perm.Write (pTaken@49@01 a i)) $Perm.No))
  
  :qid |quant-u-17488|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 5) (inv@47@01 a i))
      (img@48@01 a i)
      (and (= a a@25@01) (= i (inv@47@01 a i))))
    (= (- $Perm.Write (pTaken@49@01 a i)) $Perm.No))
  
  :qid |quant-u-17488|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- t3 ----------
(declare-const a@50@01 IArray)
(declare-const n@51@01 Int)
(declare-const a@52@01 IArray)
(declare-const n@53@01 Int)
(push) ; 1
(declare-const $t@54@01 $Snap)
(assert (= $t@54@01 ($Snap.combine ($Snap.first $t@54@01) ($Snap.second $t@54@01))))
(assert (= ($Snap.first $t@54@01) $Snap.unit))
; [eval] n > 5
(assert (> n@53@01 5))
(declare-const i@55@01 Int)
(push) ; 2
; [eval] (i in [0..n))
; [eval] [0..n)
(assert (Seq_contains (Seq_range 0 n@53@01) i@55@01))
(pop) ; 2
(declare-fun inv@56@01 (IArray Int) Int)
(declare-fun img@57@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@55@01 Int) (i2@55@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 n@53@01) i1@55@01)
      (Seq_contains (Seq_range 0 n@53@01) i2@55@01)
      (= i1@55@01 i2@55@01))
    (= i1@55@01 i2@55@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@55@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 n@53@01) i@55@01)
    (and (= (inv@56@01 a@52@01 i@55@01) i@55@01) (img@57@01 a@52@01 i@55@01)))
  :pattern ((Seq_contains (Seq_range 0 n@53@01) i@55@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 n@53@01) i@55@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 n@53@01) i@55@01))
  :pattern ((inv@56@01 a@52@01 i@55@01))
  :pattern ((img@57@01 a@52@01 i@55@01))
  :qid |quant-u-17490|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@57@01 a i) (Seq_contains (Seq_range 0 n@53@01) (inv@56@01 a i)))
    (and (= a@52@01 a) (= (inv@56@01 a i) i)))
  :pattern ((inv@56@01 a i))
  :qid |p-fctOfInv|)))
; Permissions are non-negative
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@58@01 $Snap)
(assert (= $t@58@01 ($Snap.combine ($Snap.first $t@58@01) ($Snap.second $t@58@01))))
(declare-const i@59@01 Int)
(push) ; 3
; [eval] (i in [4..n))
; [eval] [4..n)
(assert (Seq_contains (Seq_range 4 n@53@01) i@59@01))
(pop) ; 3
(declare-fun inv@60@01 (IArray Int) Int)
(declare-fun img@61@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@59@01 Int) (i2@59@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 4 n@53@01) i1@59@01)
      (Seq_contains (Seq_range 4 n@53@01) i2@59@01)
      (= i1@59@01 i2@59@01))
    (= i1@59@01 i2@59@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@59@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 4 n@53@01) i@59@01)
    (and (= (inv@60@01 a@52@01 i@59@01) i@59@01) (img@61@01 a@52@01 i@59@01)))
  :pattern ((Seq_contains (Seq_range 4 n@53@01) i@59@01))
  :pattern ((Seq_contains_trigger (Seq_range 4 n@53@01) i@59@01))
  :pattern ((Seq_contains_trigger (Seq_range 4 n@53@01) i@59@01))
  :pattern ((inv@60@01 a@52@01 i@59@01))
  :pattern ((img@61@01 a@52@01 i@59@01))
  :qid |quant-u-17492|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@61@01 a i) (Seq_contains (Seq_range 4 n@53@01) (inv@60@01 a i)))
    (and (= a@52@01 a) (= (inv@60@01 a i) i)))
  :pattern ((inv@60@01 a i))
  :qid |p-fctOfInv|)))
; Permissions are non-negative
(declare-const i@62@01 Int)
(push) ; 3
; [eval] (i in [0..3))
; [eval] [0..3)
(assert (Seq_contains (Seq_range 0 3) i@62@01))
(pop) ; 3
(declare-fun inv@63@01 (IArray Int) Int)
(declare-fun img@64@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@62@01 Int) (i2@62@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@62@01)
      (Seq_contains (Seq_range 0 3) i2@62@01)
      (= i1@62@01 i2@62@01))
    (= i1@62@01 i2@62@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@62@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 3) i@62@01)
    (and (= (inv@63@01 a@52@01 i@62@01) i@62@01) (img@64@01 a@52@01 i@62@01)))
  :pattern ((Seq_contains (Seq_range 0 3) i@62@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i@62@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i@62@01))
  :pattern ((inv@63@01 a@52@01 i@62@01))
  :pattern ((img@64@01 a@52@01 i@62@01))
  :qid |quant-u-17494|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@64@01 a i) (Seq_contains (Seq_range 0 3) (inv@63@01 a i)))
    (and (= a@52@01 a) (= (inv@63@01 a i) i)))
  :pattern ((inv@63@01 a i))
  :qid |p-fctOfInv|)))
; Permissions are non-negative
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (and (img@64@01 a i) (Seq_contains (Seq_range 0 3) (inv@63@01 a i)))
    (and (img@61@01 a i) (Seq_contains (Seq_range 4 n@53@01) (inv@60@01 a i))))
  
  :qid |quant-u-17495|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(set-option :timeout 0)
(push) ; 2
(declare-const i@65@01 Int)
(push) ; 3
; [eval] (i in [4..n))
; [eval] [4..n)
(assert (Seq_contains (Seq_range 4 n@53@01) i@65@01))
(pop) ; 3
(declare-fun inv@66@01 (IArray Int) Int)
(declare-fun img@67@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@65@01 Int) (i2@65@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 4 n@53@01) i1@65@01)
      (Seq_contains (Seq_range 4 n@53@01) i2@65@01)
      (= i1@65@01 i2@65@01))
    (= i1@65@01 i2@65@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@65@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 4 n@53@01) i@65@01)
    (and (= (inv@66@01 a@52@01 i@65@01) i@65@01) (img@67@01 a@52@01 i@65@01)))
  :pattern ((Seq_contains (Seq_range 4 n@53@01) i@65@01))
  :pattern ((Seq_contains_trigger (Seq_range 4 n@53@01) i@65@01))
  :pattern ((inv@66@01 a@52@01 i@65@01))
  :pattern ((img@67@01 a@52@01 i@65@01))
  :qid |p-invOfFct|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@67@01 a i) (Seq_contains (Seq_range 4 n@53@01) (inv@66@01 a i)))
    (and (= a@52@01 a) (= (inv@66@01 a i) i)))
  :pattern ((inv@66@01 a i))
  :qid |p-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@68@01 ((a IArray) (i Int)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 4 n@53@01) (inv@66@01 a i))
      (img@67@01 a i)
      (and (= a a@52@01) (= i (inv@66@01 a i))))
    ($Perm.min
      (ite
        (and
          (img@57@01 a i)
          (Seq_contains (Seq_range 0 n@53@01) (inv@56@01 a i)))
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
          (img@57@01 a i)
          (Seq_contains (Seq_range 0 n@53@01) (inv@56@01 a i)))
        $Perm.Write
        $Perm.No)
      (pTaken@68@01 a i))
    $Perm.No)
  
  :qid |quant-u-17498|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@68@01 a i) $Perm.No)
  
  :qid |quant-u-17499|))))
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
    (and
      (Seq_contains (Seq_range 4 n@53@01) (inv@66@01 a i))
      (img@67@01 a i)
      (and (= a a@52@01) (= i (inv@66@01 a i))))
    (= (- $Perm.Write (pTaken@68@01 a i)) $Perm.No))
  
  :qid |quant-u-17500|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const i@69@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..3))
; [eval] [0..3)
(assert (Seq_contains (Seq_range 0 3) i@69@01))
(pop) ; 3
(declare-fun inv@70@01 (IArray Int) Int)
(declare-fun img@71@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@69@01 Int) (i2@69@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@69@01)
      (Seq_contains (Seq_range 0 3) i2@69@01)
      (= i1@69@01 i2@69@01))
    (= i1@69@01 i2@69@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@69@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 3) i@69@01)
    (and (= (inv@70@01 a@52@01 i@69@01) i@69@01) (img@71@01 a@52@01 i@69@01)))
  :pattern ((Seq_contains (Seq_range 0 3) i@69@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i@69@01))
  :pattern ((inv@70@01 a@52@01 i@69@01))
  :pattern ((img@71@01 a@52@01 i@69@01))
  :qid |p-invOfFct|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@71@01 a i) (Seq_contains (Seq_range 0 3) (inv@70@01 a i)))
    (and (= a@52@01 a) (= (inv@70@01 a i) i)))
  :pattern ((inv@70@01 a i))
  :qid |p-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@72@01 ((a IArray) (i Int)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 3) (inv@70@01 a i))
      (img@71@01 a i)
      (and (= a a@52@01) (= i (inv@70@01 a i))))
    ($Perm.min
      (ite
        (and
          (img@57@01 a i)
          (Seq_contains (Seq_range 0 n@53@01) (inv@56@01 a i)))
        (- $Perm.Write (pTaken@68@01 a i))
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
          (img@57@01 a i)
          (Seq_contains (Seq_range 0 n@53@01) (inv@56@01 a i)))
        (- $Perm.Write (pTaken@68@01 a i))
        $Perm.No)
      (pTaken@72@01 a i))
    $Perm.No)
  
  :qid |quant-u-17503|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@72@01 a i) $Perm.No)
  
  :qid |quant-u-17504|))))
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
    (and
      (Seq_contains (Seq_range 0 3) (inv@70@01 a i))
      (img@71@01 a i)
      (and (= a a@52@01) (= i (inv@70@01 a i))))
    (= (- $Perm.Write (pTaken@72@01 a i)) $Perm.No))
  
  :qid |quant-u-17505|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- t4 ----------
(declare-const a@73@01 IArray)
(declare-const n@74@01 Int)
(declare-const a@75@01 IArray)
(declare-const n@76@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@77@01 $Snap)
(assert (= $t@77@01 ($Snap.combine ($Snap.first $t@77@01) ($Snap.second $t@77@01))))
(assert (= ($Snap.first $t@77@01) $Snap.unit))
; [eval] n > 5
(assert (> n@76@01 5))
(declare-const i@78@01 Int)
(push) ; 2
; [eval] (i in [0..n))
; [eval] [0..n)
(assert (Seq_contains (Seq_range 0 n@76@01) i@78@01))
(pop) ; 2
(declare-fun inv@79@01 (IArray Int) Int)
(declare-fun img@80@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@78@01 Int) (i2@78@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 n@76@01) i1@78@01)
      (Seq_contains (Seq_range 0 n@76@01) i2@78@01)
      (= i1@78@01 i2@78@01))
    (= i1@78@01 i2@78@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@78@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 n@76@01) i@78@01)
    (and (= (inv@79@01 a@75@01 i@78@01) i@78@01) (img@80@01 a@75@01 i@78@01)))
  :pattern ((Seq_contains (Seq_range 0 n@76@01) i@78@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 n@76@01) i@78@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 n@76@01) i@78@01))
  :pattern ((inv@79@01 a@75@01 i@78@01))
  :pattern ((img@80@01 a@75@01 i@78@01))
  :qid |quant-u-17507|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@80@01 a i) (Seq_contains (Seq_range 0 n@76@01) (inv@79@01 a i)))
    (and (= a@75@01 a) (= (inv@79@01 a i) i)))
  :pattern ((inv@79@01 a i))
  :qid |p-fctOfInv|)))
; Permissions are non-negative
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@81@01 $Snap)
(assert (= $t@81@01 ($Snap.combine ($Snap.first $t@81@01) ($Snap.second $t@81@01))))
(declare-const i@82@01 Int)
(push) ; 3
; [eval] (i in [1..n))
; [eval] [1..n)
(assert (Seq_contains (Seq_range 1 n@76@01) i@82@01))
(pop) ; 3
(declare-fun inv@83@01 (IArray Int) Int)
(declare-fun img@84@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@82@01 Int) (i2@82@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 1 n@76@01) i1@82@01)
      (Seq_contains (Seq_range 1 n@76@01) i2@82@01)
      (= i1@82@01 i2@82@01))
    (= i1@82@01 i2@82@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@82@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 1 n@76@01) i@82@01)
    (and (= (inv@83@01 a@75@01 i@82@01) i@82@01) (img@84@01 a@75@01 i@82@01)))
  :pattern ((Seq_contains (Seq_range 1 n@76@01) i@82@01))
  :pattern ((Seq_contains_trigger (Seq_range 1 n@76@01) i@82@01))
  :pattern ((Seq_contains_trigger (Seq_range 1 n@76@01) i@82@01))
  :pattern ((inv@83@01 a@75@01 i@82@01))
  :pattern ((img@84@01 a@75@01 i@82@01))
  :qid |quant-u-17509|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@84@01 a i) (Seq_contains (Seq_range 1 n@76@01) (inv@83@01 a i)))
    (and (= a@75@01 a) (= (inv@83@01 a i) i)))
  :pattern ((inv@83@01 a i))
  :qid |p-fctOfInv|)))
; Permissions are non-negative
(assert (=
  ($Snap.second $t@81@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@81@01))
    ($Snap.second ($Snap.second $t@81@01)))))
(declare-const sm@85@01 $PSF<p>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p (as sm@85@01  $PSF<p>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@75@01)
    ($SortWrappers.IntTo$Snap 0)))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@81@01)))))
(assert (<= $Perm.No (ite (= 0 0) $Perm.Write $Perm.No)))
(declare-const sm@86@01 $PSF<p>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p (as sm@86@01  $PSF<p>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@75@01)
    ($SortWrappers.IntTo$Snap 1)))
  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second $t@81@01)))))
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No (ite (= 1 1) $Perm.Write $Perm.No)))
(pop) ; 2
(set-option :timeout 0)
(push) ; 2
(declare-const i@87@01 Int)
(push) ; 3
; [eval] (i in [1..n))
; [eval] [1..n)
(assert (Seq_contains (Seq_range 1 n@76@01) i@87@01))
(pop) ; 3
(declare-fun inv@88@01 (IArray Int) Int)
(declare-fun img@89@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@87@01 Int) (i2@87@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 1 n@76@01) i1@87@01)
      (Seq_contains (Seq_range 1 n@76@01) i2@87@01)
      (= i1@87@01 i2@87@01))
    (= i1@87@01 i2@87@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@87@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 1 n@76@01) i@87@01)
    (and (= (inv@88@01 a@75@01 i@87@01) i@87@01) (img@89@01 a@75@01 i@87@01)))
  :pattern ((Seq_contains (Seq_range 1 n@76@01) i@87@01))
  :pattern ((Seq_contains_trigger (Seq_range 1 n@76@01) i@87@01))
  :pattern ((inv@88@01 a@75@01 i@87@01))
  :pattern ((img@89@01 a@75@01 i@87@01))
  :qid |p-invOfFct|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@89@01 a i) (Seq_contains (Seq_range 1 n@76@01) (inv@88@01 a i)))
    (and (= a@75@01 a) (= (inv@88@01 a i) i)))
  :pattern ((inv@88@01 a i))
  :qid |p-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@90@01 ((a IArray) (i Int)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 1 n@76@01) (inv@88@01 a i))
      (img@89@01 a i)
      (and (= a a@75@01) (= i (inv@88@01 a i))))
    ($Perm.min
      (ite
        (and
          (img@80@01 a i)
          (Seq_contains (Seq_range 0 n@76@01) (inv@79@01 a i)))
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
          (img@80@01 a i)
          (Seq_contains (Seq_range 0 n@76@01) (inv@79@01 a i)))
        $Perm.Write
        $Perm.No)
      (pTaken@90@01 a i))
    $Perm.No)
  
  :qid |quant-u-17512|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@90@01 a i) $Perm.No)
  
  :qid |quant-u-17513|))))
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
    (and
      (Seq_contains (Seq_range 1 n@76@01) (inv@88@01 a i))
      (img@89@01 a i)
      (and (= a a@75@01) (= i (inv@88@01 a i))))
    (= (- $Perm.Write (pTaken@90@01 a i)) $Perm.No))
  
  :qid |quant-u-17514|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Precomputing data for removing quantified permissions
(define-fun pTaken@91@01 ((a IArray) (i Int)) $Perm
  (ite
    (and (= a a@75@01) (= i 0))
    ($Perm.min
      (ite
        (and
          (img@80@01 a i)
          (Seq_contains (Seq_range 0 n@76@01) (inv@79@01 a i)))
        (- $Perm.Write (pTaken@90@01 a i))
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
          (img@80@01 a i)
          (Seq_contains (Seq_range 0 n@76@01) (inv@79@01 a i)))
        (- $Perm.Write (pTaken@90@01 a i))
        $Perm.No)
      (pTaken@91@01 a i))
    $Perm.No)
  
  :qid |quant-u-17516|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a IArray) (i Int)) (!
  (=>
    (and (= a a@75@01) (= i 0))
    (= (- $Perm.Write (pTaken@91@01 a i)) $Perm.No))
  
  :qid |quant-u-17517|))))
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
(assert (not (forall ((a IArray) (i Int)) (!
  (=> (and (= a a@75@01) (= i 1)) false)
  
  :qid |quant-u-17518|))))
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
(assert (not (forall ((a IArray) (i Int)) (!
  (=> (and (= a a@75@01) (= i 1)) false)
  
  :qid |quant-u-17519|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
