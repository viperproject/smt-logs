(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-26 21:40:08
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
(declare-sort $FVF<val> 0)
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
; /field_value_functions_declarations.smt2 [val: Int]
(declare-fun $FVF.domain_val ($FVF<val>) Set<$Ref>)
(declare-fun $FVF.lookup_val ($FVF<val> $Ref) Int)
(declare-fun $FVF.after_val ($FVF<val> $FVF<val>) Bool)
(declare-fun $FVF.loc_val (Int $Ref) Bool)
(declare-fun $FVF.perm_val ($FPM $Ref) $Perm)
(declare-const $fvfTOP_val $FVF<val>)
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
; ---------- m1 ----------
(declare-const a@0@01 IArray)
(declare-const n@1@01 Int)
(declare-const i1@2@01 Int)
(declare-const i2@3@01 Int)
(declare-const a@4@01 IArray)
(declare-const n@5@01 Int)
(declare-const i1@6@01 Int)
(declare-const i2@7@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@8@01 $Snap)
(assert (= $t@8@01 ($Snap.combine ($Snap.first $t@8@01) ($Snap.second $t@8@01))))
(assert (= ($Snap.first $t@8@01) $Snap.unit))
; [eval] n > 3
(assert (> n@5@01 3))
(declare-const i@9@01 Int)
(push) ; 2
; [eval] i > 0 && i < n
; [eval] i > 0
(push) ; 3
; [then-branch: 0 | !(i@9@01 > 0) | live]
; [else-branch: 0 | i@9@01 > 0 | live]
(push) ; 4
; [then-branch: 0 | !(i@9@01 > 0)]
(assert (not (> i@9@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 0 | i@9@01 > 0]
(assert (> i@9@01 0))
; [eval] i < n
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (> i@9@01 0) (not (> i@9@01 0))))
(assert (and (> i@9@01 0) (< i@9@01 n@5@01)))
; [eval] i + 1
(pop) ; 2
(declare-fun inv@10@01 (IArray Int) Int)
(declare-fun img@11@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@9@01@rw0 Int)) (!
  (=> (and (> i@9@01 0) (< i@9@01 n@5@01)) (or (> i@9@01 0) (not (> i@9@01 0))))
  :pattern ((inv@10@01 a@4@01 i@9@01@rw0))
  :pattern ((img@11@01 a@4@01 i@9@01@rw0))
  :qid |p-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@9@01 Int) (i2@9@01 Int)) (!
  (=>
    (and
      (and (> i1@9@01 0) (< i1@9@01 n@5@01))
      (and (> i2@9@01 0) (< i2@9@01 n@5@01))
      (= (+ i1@9@01 1) (+ i2@9@01 1)))
    (= i1@9@01 i2@9@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@9@01@rw0 Int)) (!
  (=>
    (and (> (- i@9@01@rw0 1) 0) (< (- i@9@01@rw0 1) n@5@01))
    (and
      (= (inv@10@01 a@4@01 i@9@01@rw0) (- i@9@01@rw0 1))
      (img@11@01 a@4@01 i@9@01@rw0)))
  :pattern ((inv@10@01 a@4@01 i@9@01@rw0))
  :pattern ((img@11@01 a@4@01 i@9@01@rw0))
  :qid |quant-u-23388|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@11@01 a i) (and (> (inv@10@01 a i) 0) (< (inv@10@01 a i) n@5@01)))
    (and (= a@4@01 a) (= (+ (inv@10@01 a i) 1) i)))
  :pattern ((inv@10@01 a i))
  :qid |p-fctOfInv|)))
; Permissions are non-negative
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const i@12@01 Int)
(push) ; 3
; [eval] i > 0 && i < n
; [eval] i > 0
(push) ; 4
; [then-branch: 1 | !(i@12@01 > 0) | live]
; [else-branch: 1 | i@12@01 > 0 | live]
(push) ; 5
; [then-branch: 1 | !(i@12@01 > 0)]
(assert (not (> i@12@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 1 | i@12@01 > 0]
(assert (> i@12@01 0))
; [eval] i < n
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (> i@12@01 0) (not (> i@12@01 0))))
(assert (and (> i@12@01 0) (< i@12@01 n@5@01)))
; [eval] i + 1
(pop) ; 3
(declare-const $t@13@01 $PSF<p>)
(declare-fun inv@14@01 (IArray Int) Int)
(declare-fun img@15@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@12@01@rw1 Int)) (!
  (=>
    (and (> i@12@01 0) (< i@12@01 n@5@01))
    (or (> i@12@01 0) (not (> i@12@01 0))))
  :pattern ((inv@14@01 a@4@01 i@12@01@rw1))
  :pattern ((img@15@01 a@4@01 i@12@01@rw1))
  :qid |p-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@12@01 Int) (i2@12@01 Int)) (!
  (=>
    (and
      (and (> i1@12@01 0) (< i1@12@01 n@5@01))
      (and (> i2@12@01 0) (< i2@12@01 n@5@01))
      (= (+ i1@12@01 1) (+ i2@12@01 1)))
    (= i1@12@01 i2@12@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@12@01@rw1 Int)) (!
  (=>
    (and (> (- i@12@01@rw1 1) 0) (< (- i@12@01@rw1 1) n@5@01))
    (and
      (= (inv@14@01 a@4@01 i@12@01@rw1) (- i@12@01@rw1 1))
      (img@15@01 a@4@01 i@12@01@rw1)))
  :pattern ((inv@14@01 a@4@01 i@12@01@rw1))
  :pattern ((img@15@01 a@4@01 i@12@01@rw1))
  :qid |quant-u-23390|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@15@01 a i) (and (> (inv@14@01 a i) 0) (< (inv@14@01 a i) n@5@01)))
    (and (= a@4@01 a) (= (+ (inv@14@01 a i) 1) i)))
  :pattern ((inv@14@01 a i))
  :qid |p-fctOfInv|)))
; Permissions are non-negative
(pop) ; 2
(push) ; 2
(declare-const i@16@01 Int)
(push) ; 3
; [eval] i > 0 && i < n
; [eval] i > 0
(push) ; 4
; [then-branch: 2 | !(i@16@01 > 0) | live]
; [else-branch: 2 | i@16@01 > 0 | live]
(push) ; 5
; [then-branch: 2 | !(i@16@01 > 0)]
(assert (not (> i@16@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 2 | i@16@01 > 0]
(assert (> i@16@01 0))
; [eval] i < n
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (> i@16@01 0) (not (> i@16@01 0))))
(assert (and (> i@16@01 0) (< i@16@01 n@5@01)))
; [eval] i + 1
(pop) ; 3
(declare-fun inv@17@01 (IArray Int) Int)
(declare-fun img@18@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@16@01@rw2 Int)) (!
  (=>
    (and (> i@16@01 0) (< i@16@01 n@5@01))
    (or (> i@16@01 0) (not (> i@16@01 0))))
  :pattern ((inv@17@01 a@4@01 i@16@01@rw2))
  :pattern ((img@18@01 a@4@01 i@16@01@rw2))
  :qid |p-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@16@01 Int) (i2@16@01 Int)) (!
  (=>
    (and
      (and (> i1@16@01 0) (< i1@16@01 n@5@01))
      (and (> i2@16@01 0) (< i2@16@01 n@5@01))
      (= (+ i1@16@01 1) (+ i2@16@01 1)))
    (= i1@16@01 i2@16@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@16@01@rw2 Int)) (!
  (=>
    (and (> (- i@16@01@rw2 1) 0) (< (- i@16@01@rw2 1) n@5@01))
    (and
      (= (inv@17@01 a@4@01 i@16@01@rw2) (- i@16@01@rw2 1))
      (img@18@01 a@4@01 i@16@01@rw2)))
  :pattern ((inv@17@01 a@4@01 i@16@01@rw2))
  :pattern ((img@18@01 a@4@01 i@16@01@rw2))
  :qid |p-invOfFct|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@18@01 a i) (and (> (inv@17@01 a i) 0) (< (inv@17@01 a i) n@5@01)))
    (and (= a@4@01 a) (= (+ (inv@17@01 a i) 1) i)))
  :pattern ((inv@17@01 a i))
  :qid |p-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@19@01 ((a IArray) (i Int)) $Perm
  (ite
    (and
      (and (> (inv@17@01 a i) 0) (< (inv@17@01 a i) n@5@01))
      (img@18@01 a i)
      (and (= a a@4@01) (= i (+ (inv@17@01 a i) 1))))
    ($Perm.min
      (ite
        (and
          (img@11@01 a i)
          (and (> (inv@10@01 a i) 0) (< (inv@10@01 a i) n@5@01)))
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
          (img@11@01 a i)
          (and (> (inv@10@01 a i) 0) (< (inv@10@01 a i) n@5@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@19@01 a i))
    $Perm.No)
  
  :qid |quant-u-23393|))))
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
      (and (> (inv@17@01 a i) 0) (< (inv@17@01 a i) n@5@01))
      (img@18@01 a i)
      (and (= a a@4@01) (= i (+ (inv@17@01 a i) 1))))
    (= (- $Perm.Write (pTaken@19@01 a i)) $Perm.No))
  
  :qid |quant-u-23394|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- m2 ----------
(declare-const a@20@01 IArray)
(declare-const n@21@01 Int)
(declare-const i1@22@01 Int)
(declare-const i2@23@01 Int)
(declare-const a@24@01 IArray)
(declare-const n@25@01 Int)
(declare-const i1@26@01 Int)
(declare-const i2@27@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@28@01 $Snap)
(assert (= $t@28@01 ($Snap.combine ($Snap.first $t@28@01) ($Snap.second $t@28@01))))
(assert (= ($Snap.first $t@28@01) $Snap.unit))
; [eval] n > 3
(assert (> n@25@01 3))
(declare-const i@29@01 Int)
(push) ; 2
; [eval] i > 0 && i < n
; [eval] i > 0
(push) ; 3
; [then-branch: 3 | !(i@29@01 > 0) | live]
; [else-branch: 3 | i@29@01 > 0 | live]
(push) ; 4
; [then-branch: 3 | !(i@29@01 > 0)]
(assert (not (> i@29@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 3 | i@29@01 > 0]
(assert (> i@29@01 0))
; [eval] i < n
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (> i@29@01 0) (not (> i@29@01 0))))
(assert (and (> i@29@01 0) (< i@29@01 n@25@01)))
; [eval] loc(a, i + 1)
; [eval] i + 1
(pop) ; 2
(declare-fun inv@30@01 ($Ref) Int)
(declare-fun img@31@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@29@01@rw3 Int)) (!
  (=>
    (and (> i@29@01 0) (< i@29@01 n@25@01))
    (or (> i@29@01 0) (not (> i@29@01 0))))
  :pattern ((loc<Ref> a@24@01 i@29@01@rw3))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@29@01 Int) (i2@29@01 Int)) (!
  (=>
    (and
      (and (> i1@29@01 0) (< i1@29@01 n@25@01))
      (and (> i2@29@01 0) (< i2@29@01 n@25@01))
      (= (loc<Ref> a@24@01 (+ i1@29@01 1)) (loc<Ref> a@24@01 (+ i2@29@01 1))))
    (= i1@29@01 i2@29@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@29@01@rw3 Int)) (!
  (=>
    (and (> (- i@29@01@rw3 1) 0) (< (- i@29@01@rw3 1) n@25@01))
    (and
      (= (inv@30@01 (loc<Ref> a@24@01 i@29@01@rw3)) (- i@29@01@rw3 1))
      (img@31@01 (loc<Ref> a@24@01 i@29@01@rw3))))
  :pattern ((loc<Ref> a@24@01 i@29@01@rw3))
  :qid |quant-u-23396|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (and (> (inv@30@01 r) 0) (< (inv@30@01 r) n@25@01)))
    (= (loc<Ref> a@24@01 (+ (inv@30@01 r) 1)) r))
  :pattern ((inv@30@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@29@01@rw3 Int)) (!
  (=>
    (and (> i@29@01 0) (< i@29@01 n@25@01))
    (not (= (loc<Ref> a@24@01 (+ i@29@01 1)) $Ref.null)))
  :pattern ((loc<Ref> a@24@01 i@29@01@rw3))
  :qid |val-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const i@32@01 Int)
(push) ; 3
; [eval] i > 0 && i < n
; [eval] i > 0
(push) ; 4
; [then-branch: 4 | !(i@32@01 > 0) | live]
; [else-branch: 4 | i@32@01 > 0 | live]
(push) ; 5
; [then-branch: 4 | !(i@32@01 > 0)]
(assert (not (> i@32@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 4 | i@32@01 > 0]
(assert (> i@32@01 0))
; [eval] i < n
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (> i@32@01 0) (not (> i@32@01 0))))
(assert (and (> i@32@01 0) (< i@32@01 n@25@01)))
; [eval] loc(a, i + 1)
; [eval] i + 1
(pop) ; 3
(declare-const $t@33@01 $FVF<val>)
(declare-fun inv@34@01 ($Ref) Int)
(declare-fun img@35@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@32@01@rw4 Int)) (!
  (=>
    (and (> i@32@01 0) (< i@32@01 n@25@01))
    (or (> i@32@01 0) (not (> i@32@01 0))))
  :pattern ((loc<Ref> a@24@01 i@32@01@rw4))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@32@01 Int) (i2@32@01 Int)) (!
  (=>
    (and
      (and (> i1@32@01 0) (< i1@32@01 n@25@01))
      (and (> i2@32@01 0) (< i2@32@01 n@25@01))
      (= (loc<Ref> a@24@01 (+ i1@32@01 1)) (loc<Ref> a@24@01 (+ i2@32@01 1))))
    (= i1@32@01 i2@32@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@32@01@rw4 Int)) (!
  (=>
    (and (> (- i@32@01@rw4 1) 0) (< (- i@32@01@rw4 1) n@25@01))
    (and
      (= (inv@34@01 (loc<Ref> a@24@01 i@32@01@rw4)) (- i@32@01@rw4 1))
      (img@35@01 (loc<Ref> a@24@01 i@32@01@rw4))))
  :pattern ((loc<Ref> a@24@01 i@32@01@rw4))
  :qid |quant-u-23398|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@35@01 r) (and (> (inv@34@01 r) 0) (< (inv@34@01 r) n@25@01)))
    (= (loc<Ref> a@24@01 (+ (inv@34@01 r) 1)) r))
  :pattern ((inv@34@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@32@01@rw4 Int)) (!
  (=>
    (and (> i@32@01 0) (< i@32@01 n@25@01))
    (not (= (loc<Ref> a@24@01 (+ i@32@01 1)) $Ref.null)))
  :pattern ((loc<Ref> a@24@01 i@32@01@rw4))
  :qid |val-permImpliesNonNull|)))
(pop) ; 2
(push) ; 2
(declare-const i@36@01 Int)
(push) ; 3
; [eval] i > 0 && i < n
; [eval] i > 0
(push) ; 4
; [then-branch: 5 | !(i@36@01 > 0) | live]
; [else-branch: 5 | i@36@01 > 0 | live]
(push) ; 5
; [then-branch: 5 | !(i@36@01 > 0)]
(assert (not (> i@36@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 5 | i@36@01 > 0]
(assert (> i@36@01 0))
; [eval] i < n
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (> i@36@01 0) (not (> i@36@01 0))))
(assert (and (> i@36@01 0) (< i@36@01 n@25@01)))
; [eval] loc(a, i + 1)
; [eval] i + 1
(pop) ; 3
(declare-fun inv@37@01 ($Ref) Int)
(declare-fun img@38@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@36@01@rw5 Int)) (!
  (=>
    (and (> i@36@01 0) (< i@36@01 n@25@01))
    (or (> i@36@01 0) (not (> i@36@01 0))))
  :pattern ((loc<Ref> a@24@01 i@36@01@rw5))
  :qid |val-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@36@01 Int) (i2@36@01 Int)) (!
  (=>
    (and
      (and (> i1@36@01 0) (< i1@36@01 n@25@01))
      (and (> i2@36@01 0) (< i2@36@01 n@25@01))
      (= (loc<Ref> a@24@01 (+ i1@36@01 1)) (loc<Ref> a@24@01 (+ i2@36@01 1))))
    (= i1@36@01 i2@36@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@36@01@rw5 Int)) (!
  (=>
    (and (> (- i@36@01@rw5 1) 0) (< (- i@36@01@rw5 1) n@25@01))
    (and
      (= (inv@37@01 (loc<Ref> a@24@01 i@36@01@rw5)) (- i@36@01@rw5 1))
      (img@38@01 (loc<Ref> a@24@01 i@36@01@rw5))))
  :pattern ((loc<Ref> a@24@01 i@36@01@rw5))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@38@01 r) (and (> (inv@37@01 r) 0) (< (inv@37@01 r) n@25@01)))
    (= (loc<Ref> a@24@01 (+ (inv@37@01 r) 1)) r))
  :pattern ((inv@37@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@39@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (> (inv@37@01 r) 0) (< (inv@37@01 r) n@25@01))
      (img@38@01 r)
      (= r (loc<Ref> a@24@01 (+ (inv@37@01 r) 1))))
    ($Perm.min
      (ite
        (and (img@31@01 r) (and (> (inv@30@01 r) 0) (< (inv@30@01 r) n@25@01)))
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
        (and (img@31@01 r) (and (> (inv@30@01 r) 0) (< (inv@30@01 r) n@25@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@39@01 r))
    $Perm.No)
  
  :qid |quant-u-23401|))))
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
      (and (> (inv@37@01 r) 0) (< (inv@37@01 r) n@25@01))
      (img@38@01 r)
      (= r (loc<Ref> a@24@01 (+ (inv@37@01 r) 1))))
    (= (- $Perm.Write (pTaken@39@01 r)) $Perm.No))
  
  :qid |quant-u-23402|))))
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
(declare-const a@40@01 IArray)
(declare-const n@41@01 Int)
(declare-const i1@42@01 Int)
(declare-const i2@43@01 Int)
(declare-const a@44@01 IArray)
(declare-const n@45@01 Int)
(declare-const i1@46@01 Int)
(declare-const i2@47@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@48@01 $Snap)
(assert (= $t@48@01 ($Snap.combine ($Snap.first $t@48@01) ($Snap.second $t@48@01))))
(assert (= ($Snap.first $t@48@01) $Snap.unit))
; [eval] n > 3
(assert (> n@45@01 3))
(declare-const i@49@01 Int)
(push) ; 2
; [eval] (i in [0..n))
; [eval] [0..n)
(assert (Seq_contains (Seq_range 0 n@45@01) i@49@01))
; [eval] i + 1
(pop) ; 2
(declare-fun inv@50@01 (IArray Int) Int)
(declare-fun img@51@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@49@01 Int) (i2@49@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 n@45@01) i1@49@01)
      (Seq_contains (Seq_range 0 n@45@01) i2@49@01)
      (= (+ i1@49@01 1) (+ i2@49@01 1)))
    (= i1@49@01 i2@49@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@49@01 Int) (i@49@01@rw6 Int)) (!
  (=>
    (and
      (= i@49@01 (- i@49@01@rw6 1))
      (Seq_contains (Seq_range 0 n@45@01) i@49@01))
    (and
      (= (inv@50@01 a@44@01 i@49@01@rw6) i@49@01)
      (img@51@01 a@44@01 i@49@01@rw6)))
  :pattern ((Seq_contains (Seq_range 0 n@45@01) i@49@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 n@45@01) i@49@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 n@45@01) i@49@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 n@45@01) i@49@01))
  :pattern ((inv@50@01 a@44@01 i@49@01@rw6))
  :pattern ((img@51@01 a@44@01 i@49@01@rw6))
  :qid |quant-u-23404|)))
; WARNING: (1449,23): pattern does not contain all quantified variables.
; WARNING: (1449,23): pattern does not contain all quantified variables.
; WARNING: (1449,23): pattern does not contain all quantified variables.
; WARNING: (1449,23): pattern does not contain all quantified variables.
; WARNING: (1449,23): pattern does not contain all quantified variables.
; WARNING: (1449,23): pattern does not contain all quantified variables.
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@51@01 a i) (Seq_contains (Seq_range 0 n@45@01) (inv@50@01 a i)))
    (and (= a@44@01 a) (= (+ (inv@50@01 a i) 1) i)))
  :pattern ((inv@50@01 a i))
  :qid |p-fctOfInv|)))
; Permissions are non-negative
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@52@01 Int)
(declare-const sm@53@01 $PSF<p>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p (as sm@53@01  $PSF<p>) ($Snap.combine
    ($SortWrappers.IArrayTo$Snap a@44@01)
    ($SortWrappers.IntTo$Snap 1)))
  $t@52@01))
(assert (<= $Perm.No (ite (= 1 1) $Perm.Write $Perm.No)))
(pop) ; 2
(push) ; 2
; Precomputing data for removing quantified permissions
(define-fun pTaken@54@01 ((a IArray) (i Int)) $Perm
  (ite
    (and (= a a@44@01) (= i 1))
    ($Perm.min
      (ite
        (and
          (img@51@01 a i)
          (Seq_contains (Seq_range 0 n@45@01) (inv@50@01 a i)))
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
          (img@51@01 a i)
          (Seq_contains (Seq_range 0 n@45@01) (inv@50@01 a i)))
        $Perm.Write
        $Perm.No)
      (pTaken@54@01 a i))
    $Perm.No)
  
  :qid |quant-u-23406|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@54@01 a i) $Perm.No)
  
  :qid |quant-u-23407|))))
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
    (and (= a a@44@01) (= i 1))
    (= (- $Perm.Write (pTaken@54@01 a i)) $Perm.No))
  
  :qid |quant-u-23408|))))
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
    (and (= a a@44@01) (= i 1))
    (= (- $Perm.Write (pTaken@54@01 a i)) $Perm.No))
  
  :qid |quant-u-23408|))))
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
(define-fun pTaken@55@01 ((a IArray) (i Int)) $Perm
  (ite
    (and (= a a@44@01) (= i 1))
    ($Perm.min
      (ite
        (and
          (img@51@01 a i)
          (Seq_contains (Seq_range 0 n@45@01) (inv@50@01 a i)))
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
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@51@01 a i)
          (Seq_contains (Seq_range 0 n@45@01) (inv@50@01 a i)))
        $Perm.Write
        $Perm.No)
      (pTaken@55@01 a i))
    $Perm.No)
  
  :qid |quant-u-23410|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@55@01 a i) $Perm.No)
  
  :qid |quant-u-23411|))))
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
    (and (= a a@44@01) (= i 1))
    (= (- $Perm.Write (pTaken@55@01 a i)) $Perm.No))
  
  :qid |quant-u-23412|))))
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
    (and (= a a@44@01) (= i 1))
    (= (- $Perm.Write (pTaken@55@01 a i)) $Perm.No))
  
  :qid |quant-u-23412|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- m4 ----------
(declare-const a@56@01 IArray)
(declare-const n@57@01 Int)
(declare-const i1@58@01 Int)
(declare-const i2@59@01 Int)
(declare-const a@60@01 IArray)
(declare-const n@61@01 Int)
(declare-const i1@62@01 Int)
(declare-const i2@63@01 Int)
(push) ; 1
(declare-const $t@64@01 $Snap)
(assert (= $t@64@01 ($Snap.combine ($Snap.first $t@64@01) ($Snap.second $t@64@01))))
(assert (= ($Snap.first $t@64@01) $Snap.unit))
; [eval] n > 3
(assert (> n@61@01 3))
(declare-const i@65@01 Int)
(push) ; 2
; [eval] (i in [0..n))
; [eval] [0..n)
(assert (Seq_contains (Seq_range 0 n@61@01) i@65@01))
; [eval] loc(a, i + 1)
; [eval] i + 1
(pop) ; 2
(declare-fun inv@66@01 ($Ref) Int)
(declare-fun img@67@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@65@01 Int) (i2@65@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 n@61@01) i1@65@01)
      (Seq_contains (Seq_range 0 n@61@01) i2@65@01)
      (= (loc<Ref> a@60@01 (+ i1@65@01 1)) (loc<Ref> a@60@01 (+ i2@65@01 1))))
    (= i1@65@01 i2@65@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@65@01@rw7 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 n@61@01) (- i@65@01@rw7 1))
    (and
      (= (inv@66@01 (loc<Ref> a@60@01 i@65@01@rw7)) (- i@65@01@rw7 1))
      (img@67@01 (loc<Ref> a@60@01 i@65@01@rw7))))
  :pattern ((loc<Ref> a@60@01 i@65@01@rw7))
  :qid |quant-u-23414|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@67@01 r) (Seq_contains (Seq_range 0 n@61@01) (inv@66@01 r)))
    (= (loc<Ref> a@60@01 (+ (inv@66@01 r) 1)) r))
  :pattern ((inv@66@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@65@01@rw7 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 n@61@01) i@65@01)
    (not (= (loc<Ref> a@60@01 (+ i@65@01 1)) $Ref.null)))
  :pattern ((loc<Ref> a@60@01 i@65@01@rw7))
  :qid |val-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
; [eval] loc(a, 1)
(declare-const $t@68@01 Int)
(declare-const sm@69@01 $FVF<val>)
; Definitional axioms for singleton-SM's value
(assert (= ($FVF.lookup_val (as sm@69@01  $FVF<val>) (loc<Ref> a@60@01 1)) $t@68@01))
(assert (<=
  $Perm.No
  (ite (= (loc<Ref> a@60@01 1) (loc<Ref> a@60@01 1)) $Perm.Write $Perm.No)))
(assert (<=
  (ite (= (loc<Ref> a@60@01 1) (loc<Ref> a@60@01 1)) $Perm.Write $Perm.No)
  $Perm.Write))
(assert (=>
  (= (loc<Ref> a@60@01 1) (loc<Ref> a@60@01 1))
  (not (= (loc<Ref> a@60@01 1) $Ref.null))))
(pop) ; 2
(push) ; 2
; [eval] loc(a, 1)
; Precomputing data for removing quantified permissions
(define-fun pTaken@70@01 ((r $Ref)) $Perm
  (ite
    (= r (loc<Ref> a@60@01 1))
    ($Perm.min
      (ite
        (and (img@67@01 r) (Seq_contains (Seq_range 0 n@61@01) (inv@66@01 r)))
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
        (and (img@67@01 r) (Seq_contains (Seq_range 0 n@61@01) (inv@66@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@70@01 r))
    $Perm.No)
  
  :qid |quant-u-23416|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@70@01 r) $Perm.No)
  
  :qid |quant-u-23417|))))
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
  (=> (= r (loc<Ref> a@60@01 1)) (= (- $Perm.Write (pTaken@70@01 r)) $Perm.No))
  
  :qid |quant-u-23418|))))
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
(declare-const a@71@01 IArray)
(declare-const n@72@01 Int)
(declare-const i1@73@01 Int)
(declare-const i2@74@01 Int)
(declare-const a@75@01 IArray)
(declare-const n@76@01 Int)
(declare-const i1@77@01 Int)
(declare-const i2@78@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@79@01 $Snap)
(assert (= $t@79@01 ($Snap.combine ($Snap.first $t@79@01) ($Snap.second $t@79@01))))
(assert (= ($Snap.first $t@79@01) $Snap.unit))
; [eval] n > 3
(assert (> n@76@01 3))
(declare-const i@80@01 Int)
(push) ; 2
; [eval] (i in [0..n))
; [eval] [0..n)
(assert (Seq_contains (Seq_range 0 n@76@01) i@80@01))
; [eval] i + 1
(pop) ; 2
(declare-fun inv@81@01 (IArray Int) Int)
(declare-fun img@82@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@80@01 Int) (i2@80@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 n@76@01) i1@80@01)
      (Seq_contains (Seq_range 0 n@76@01) i2@80@01)
      (= (+ i1@80@01 1) (+ i2@80@01 1)))
    (= i1@80@01 i2@80@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@80@01 Int) (i@80@01@rw8 Int)) (!
  (=>
    (and
      (= i@80@01 (- i@80@01@rw8 1))
      (Seq_contains (Seq_range 0 n@76@01) i@80@01))
    (and
      (= (inv@81@01 a@75@01 i@80@01@rw8) i@80@01)
      (img@82@01 a@75@01 i@80@01@rw8)))
  :pattern ((Seq_contains (Seq_range 0 n@76@01) i@80@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 n@76@01) i@80@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 n@76@01) i@80@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 n@76@01) i@80@01))
  :pattern ((inv@81@01 a@75@01 i@80@01@rw8))
  :pattern ((img@82@01 a@75@01 i@80@01@rw8))
  :qid |quant-u-23420|)))
; WARNING: (1760,23): pattern does not contain all quantified variables.
; WARNING: (1760,23): pattern does not contain all quantified variables.
; WARNING: (1760,23): pattern does not contain all quantified variables.
; WARNING: (1760,23): pattern does not contain all quantified variables.
; WARNING: (1760,23): pattern does not contain all quantified variables.
; WARNING: (1760,23): pattern does not contain all quantified variables.
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@82@01 a i) (Seq_contains (Seq_range 0 n@76@01) (inv@81@01 a i)))
    (and (= a@75@01 a) (= (+ (inv@81@01 a i) 1) i)))
  :pattern ((inv@81@01 a i))
  :qid |p-fctOfInv|)))
; Permissions are non-negative
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const i@83@01 Int)
(push) ; 3
; [eval] (i in [1..n + 1))
; [eval] [1..n + 1)
; [eval] n + 1
(assert (Seq_contains (Seq_range 1 (+ n@76@01 1)) i@83@01))
(pop) ; 3
(declare-const $t@84@01 $PSF<p>)
(declare-fun inv@85@01 (IArray Int) Int)
(declare-fun img@86@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@83@01 Int) (i2@83@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 1 (+ n@76@01 1)) i1@83@01)
      (Seq_contains (Seq_range 1 (+ n@76@01 1)) i2@83@01)
      (= i1@83@01 i2@83@01))
    (= i1@83@01 i2@83@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@83@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 1 (+ n@76@01 1)) i@83@01)
    (and (= (inv@85@01 a@75@01 i@83@01) i@83@01) (img@86@01 a@75@01 i@83@01)))
  :pattern ((Seq_contains (Seq_range 1 (+ n@76@01 1)) i@83@01))
  :pattern ((Seq_contains_trigger (Seq_range 1 (+ n@76@01 1)) i@83@01))
  :pattern ((Seq_contains_trigger (Seq_range 1 (+ n@76@01 1)) i@83@01))
  :pattern ((inv@85@01 a@75@01 i@83@01))
  :pattern ((img@86@01 a@75@01 i@83@01))
  :qid |quant-u-23422|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (img@86@01 a i)
      (Seq_contains (Seq_range 1 (+ n@76@01 1)) (inv@85@01 a i)))
    (and (= a@75@01 a) (= (inv@85@01 a i) i)))
  :pattern ((inv@85@01 a i))
  :qid |p-fctOfInv|)))
; Permissions are non-negative
(pop) ; 2
(push) ; 2
(declare-const i@87@01 Int)
(push) ; 3
; [eval] (i in [1..n + 1))
; [eval] [1..n + 1)
; [eval] n + 1
(assert (Seq_contains (Seq_range 1 (+ n@76@01 1)) i@87@01))
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
      (Seq_contains (Seq_range 1 (+ n@76@01 1)) i1@87@01)
      (Seq_contains (Seq_range 1 (+ n@76@01 1)) i2@87@01)
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
    (Seq_contains (Seq_range 1 (+ n@76@01 1)) i@87@01)
    (and (= (inv@88@01 a@75@01 i@87@01) i@87@01) (img@89@01 a@75@01 i@87@01)))
  :pattern ((Seq_contains (Seq_range 1 (+ n@76@01 1)) i@87@01))
  :pattern ((Seq_contains_trigger (Seq_range 1 (+ n@76@01 1)) i@87@01))
  :pattern ((inv@88@01 a@75@01 i@87@01))
  :pattern ((img@89@01 a@75@01 i@87@01))
  :qid |p-invOfFct|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (img@89@01 a i)
      (Seq_contains (Seq_range 1 (+ n@76@01 1)) (inv@88@01 a i)))
    (and (= a@75@01 a) (= (inv@88@01 a i) i)))
  :pattern ((inv@88@01 a i))
  :qid |p-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@87@01 Int)) (!
  (= i@87@01 (+ i@87@01 1))
  
  :qid |quant-u-23424|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@90@01 ((a IArray) (i Int)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 1 (+ n@76@01 1)) (inv@88@01 a i))
      (img@89@01 a i)
      (and (= a a@75@01) (= i (inv@88@01 a i))))
    ($Perm.min
      (ite
        (and
          (img@82@01 a i)
          (Seq_contains (Seq_range 0 n@76@01) (inv@81@01 a i)))
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
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@82@01 a i)
          (Seq_contains (Seq_range 0 n@76@01) (inv@81@01 a i)))
        $Perm.Write
        $Perm.No)
      (pTaken@90@01 a i))
    $Perm.No)
  
  :qid |quant-u-23426|))))
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
      (Seq_contains (Seq_range 1 (+ n@76@01 1)) (inv@88@01 a i))
      (img@89@01 a i)
      (and (= a a@75@01) (= i (inv@88@01 a i))))
    (= (- $Perm.Write (pTaken@90@01 a i)) $Perm.No))
  
  :qid |quant-u-23427|))))
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
      (Seq_contains (Seq_range 1 (+ n@76@01 1)) (inv@88@01 a i))
      (img@89@01 a i)
      (and (= a a@75@01) (= i (inv@88@01 a i))))
    (= (- $Perm.Write (pTaken@90@01 a i)) $Perm.No))
  
  :qid |quant-u-23427|))))
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
(declare-const i@91@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [1..n + 1))
; [eval] [1..n + 1)
; [eval] n + 1
(assert (Seq_contains (Seq_range 1 (+ n@76@01 1)) i@91@01))
(pop) ; 3
(declare-fun inv@92@01 (IArray Int) Int)
(declare-fun img@93@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@91@01 Int) (i2@91@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 1 (+ n@76@01 1)) i1@91@01)
      (Seq_contains (Seq_range 1 (+ n@76@01 1)) i2@91@01)
      (= i1@91@01 i2@91@01))
    (= i1@91@01 i2@91@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@91@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 1 (+ n@76@01 1)) i@91@01)
    (and (= (inv@92@01 a@75@01 i@91@01) i@91@01) (img@93@01 a@75@01 i@91@01)))
  :pattern ((Seq_contains (Seq_range 1 (+ n@76@01 1)) i@91@01))
  :pattern ((Seq_contains_trigger (Seq_range 1 (+ n@76@01 1)) i@91@01))
  :pattern ((inv@92@01 a@75@01 i@91@01))
  :pattern ((img@93@01 a@75@01 i@91@01))
  :qid |p-invOfFct|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (img@93@01 a i)
      (Seq_contains (Seq_range 1 (+ n@76@01 1)) (inv@92@01 a i)))
    (and (= a@75@01 a) (= (inv@92@01 a i) i)))
  :pattern ((inv@92@01 a i))
  :qid |p-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@91@01 Int)) (!
  (= i@91@01 (+ i@91@01 1))
  
  :qid |quant-u-23429|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@94@01 ((a IArray) (i Int)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 1 (+ n@76@01 1)) (inv@92@01 a i))
      (img@93@01 a i)
      (and (= a a@75@01) (= i (inv@92@01 a i))))
    ($Perm.min
      (ite
        (and
          (img@82@01 a i)
          (Seq_contains (Seq_range 0 n@76@01) (inv@81@01 a i)))
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
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@82@01 a i)
          (Seq_contains (Seq_range 0 n@76@01) (inv@81@01 a i)))
        $Perm.Write
        $Perm.No)
      (pTaken@94@01 a i))
    $Perm.No)
  
  :qid |quant-u-23431|))))
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
      (Seq_contains (Seq_range 1 (+ n@76@01 1)) (inv@92@01 a i))
      (img@93@01 a i)
      (and (= a a@75@01) (= i (inv@92@01 a i))))
    (= (- $Perm.Write (pTaken@94@01 a i)) $Perm.No))
  
  :qid |quant-u-23432|))))
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
      (Seq_contains (Seq_range 1 (+ n@76@01 1)) (inv@92@01 a i))
      (img@93@01 a i)
      (and (= a a@75@01) (= i (inv@92@01 a i))))
    (= (- $Perm.Write (pTaken@94@01 a i)) $Perm.No))
  
  :qid |quant-u-23432|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- m6 ----------
(declare-const a@95@01 IArray)
(declare-const n@96@01 Int)
(declare-const i1@97@01 Int)
(declare-const i2@98@01 Int)
(declare-const a@99@01 IArray)
(declare-const n@100@01 Int)
(declare-const i1@101@01 Int)
(declare-const i2@102@01 Int)
(push) ; 1
(declare-const $t@103@01 $Snap)
(assert (= $t@103@01 ($Snap.combine ($Snap.first $t@103@01) ($Snap.second $t@103@01))))
(assert (= ($Snap.first $t@103@01) $Snap.unit))
; [eval] n > 3
(assert (> n@100@01 3))
(declare-const i@104@01 Int)
(push) ; 2
; [eval] (i in [0..n))
; [eval] [0..n)
(assert (Seq_contains (Seq_range 0 n@100@01) i@104@01))
; [eval] loc(a, i + 1)
; [eval] i + 1
(pop) ; 2
(declare-fun inv@105@01 ($Ref) Int)
(declare-fun img@106@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@104@01 Int) (i2@104@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 n@100@01) i1@104@01)
      (Seq_contains (Seq_range 0 n@100@01) i2@104@01)
      (= (loc<Ref> a@99@01 (+ i1@104@01 1)) (loc<Ref> a@99@01 (+ i2@104@01 1))))
    (= i1@104@01 i2@104@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@104@01@rw9 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 n@100@01) (- i@104@01@rw9 1))
    (and
      (= (inv@105@01 (loc<Ref> a@99@01 i@104@01@rw9)) (- i@104@01@rw9 1))
      (img@106@01 (loc<Ref> a@99@01 i@104@01@rw9))))
  :pattern ((loc<Ref> a@99@01 i@104@01@rw9))
  :qid |quant-u-23434|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@106@01 r) (Seq_contains (Seq_range 0 n@100@01) (inv@105@01 r)))
    (= (loc<Ref> a@99@01 (+ (inv@105@01 r) 1)) r))
  :pattern ((inv@105@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@104@01@rw9 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 n@100@01) i@104@01)
    (not (= (loc<Ref> a@99@01 (+ i@104@01 1)) $Ref.null)))
  :pattern ((loc<Ref> a@99@01 i@104@01@rw9))
  :qid |val-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const i@107@01 Int)
(push) ; 3
; [eval] (i in [1..n + 1))
; [eval] [1..n + 1)
; [eval] n + 1
(assert (Seq_contains (Seq_range 1 (+ n@100@01 1)) i@107@01))
; [eval] loc(a, i)
(pop) ; 3
(declare-const $t@108@01 $FVF<val>)
(declare-fun inv@109@01 ($Ref) Int)
(declare-fun img@110@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@107@01 Int) (i2@107@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 1 (+ n@100@01 1)) i1@107@01)
      (Seq_contains (Seq_range 1 (+ n@100@01 1)) i2@107@01)
      (= (loc<Ref> a@99@01 i1@107@01) (loc<Ref> a@99@01 i2@107@01)))
    (= i1@107@01 i2@107@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@107@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 1 (+ n@100@01 1)) i@107@01)
    (and
      (= (inv@109@01 (loc<Ref> a@99@01 i@107@01)) i@107@01)
      (img@110@01 (loc<Ref> a@99@01 i@107@01))))
  :pattern ((loc<Ref> a@99@01 i@107@01))
  :qid |quant-u-23436|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@110@01 r)
      (Seq_contains (Seq_range 1 (+ n@100@01 1)) (inv@109@01 r)))
    (= (loc<Ref> a@99@01 (inv@109@01 r)) r))
  :pattern ((inv@109@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@107@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 1 (+ n@100@01 1)) i@107@01)
    (not (= (loc<Ref> a@99@01 i@107@01) $Ref.null)))
  :pattern ((loc<Ref> a@99@01 i@107@01))
  :qid |val-permImpliesNonNull|)))
(pop) ; 2
(push) ; 2
(declare-const i@111@01 Int)
(push) ; 3
; [eval] (i in [1..n + 1))
; [eval] [1..n + 1)
; [eval] n + 1
(assert (Seq_contains (Seq_range 1 (+ n@100@01 1)) i@111@01))
; [eval] loc(a, i)
(pop) ; 3
(declare-fun inv@112@01 ($Ref) Int)
(declare-fun img@113@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@111@01 Int) (i2@111@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 1 (+ n@100@01 1)) i1@111@01)
      (Seq_contains (Seq_range 1 (+ n@100@01 1)) i2@111@01)
      (= (loc<Ref> a@99@01 i1@111@01) (loc<Ref> a@99@01 i2@111@01)))
    (= i1@111@01 i2@111@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@111@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 1 (+ n@100@01 1)) i@111@01)
    (and
      (= (inv@112@01 (loc<Ref> a@99@01 i@111@01)) i@111@01)
      (img@113@01 (loc<Ref> a@99@01 i@111@01))))
  :pattern ((loc<Ref> a@99@01 i@111@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@113@01 r)
      (Seq_contains (Seq_range 1 (+ n@100@01 1)) (inv@112@01 r)))
    (= (loc<Ref> a@99@01 (inv@112@01 r)) r))
  :pattern ((inv@112@01 r))
  :qid |val-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@111@01 Int)) (!
  (= (loc<Ref> a@99@01 i@111@01) (loc<Ref> a@99@01 (+ i@111@01 1)))
  
  :qid |quant-u-23438|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@114@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 1 (+ n@100@01 1)) (inv@112@01 r))
      (img@113@01 r)
      (= r (loc<Ref> a@99@01 (inv@112@01 r))))
    ($Perm.min
      (ite
        (and (img@106@01 r) (Seq_contains (Seq_range 0 n@100@01) (inv@105@01 r)))
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
        (and (img@106@01 r) (Seq_contains (Seq_range 0 n@100@01) (inv@105@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@114@01 r))
    $Perm.No)
  
  :qid |quant-u-23440|))))
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
      (Seq_contains (Seq_range 1 (+ n@100@01 1)) (inv@112@01 r))
      (img@113@01 r)
      (= r (loc<Ref> a@99@01 (inv@112@01 r))))
    (= (- $Perm.Write (pTaken@114@01 r)) $Perm.No))
  
  :qid |quant-u-23441|))))
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
(declare-const a@115@01 IArray)
(declare-const n@116@01 Int)
(declare-const i1@117@01 Int)
(declare-const i2@118@01 Int)
(declare-const a@119@01 IArray)
(declare-const n@120@01 Int)
(declare-const i1@121@01 Int)
(declare-const i2@122@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@123@01 $Snap)
(assert (= $t@123@01 ($Snap.combine ($Snap.first $t@123@01) ($Snap.second $t@123@01))))
(assert (= ($Snap.first $t@123@01) $Snap.unit))
; [eval] n > 3
(assert (> n@120@01 3))
(declare-const i@124@01 Int)
(push) ; 2
; [eval] (i in [1..n + 1))
; [eval] [1..n + 1)
; [eval] n + 1
(assert (Seq_contains (Seq_range 1 (+ n@120@01 1)) i@124@01))
(pop) ; 2
(declare-fun inv@125@01 (IArray Int) Int)
(declare-fun img@126@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@124@01 Int) (i2@124@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 1 (+ n@120@01 1)) i1@124@01)
      (Seq_contains (Seq_range 1 (+ n@120@01 1)) i2@124@01)
      (= i1@124@01 i2@124@01))
    (= i1@124@01 i2@124@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@124@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 1 (+ n@120@01 1)) i@124@01)
    (and
      (= (inv@125@01 a@119@01 i@124@01) i@124@01)
      (img@126@01 a@119@01 i@124@01)))
  :pattern ((Seq_contains (Seq_range 1 (+ n@120@01 1)) i@124@01))
  :pattern ((Seq_contains_trigger (Seq_range 1 (+ n@120@01 1)) i@124@01))
  :pattern ((Seq_contains_trigger (Seq_range 1 (+ n@120@01 1)) i@124@01))
  :pattern ((inv@125@01 a@119@01 i@124@01))
  :pattern ((img@126@01 a@119@01 i@124@01))
  :qid |quant-u-23443|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and
      (img@126@01 a i)
      (Seq_contains (Seq_range 1 (+ n@120@01 1)) (inv@125@01 a i)))
    (and (= a@119@01 a) (= (inv@125@01 a i) i)))
  :pattern ((inv@125@01 a i))
  :qid |p-fctOfInv|)))
; Permissions are non-negative
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const i@127@01 Int)
(push) ; 3
; [eval] (i in [0..n))
; [eval] [0..n)
(assert (Seq_contains (Seq_range 0 n@120@01) i@127@01))
; [eval] i + 1
(pop) ; 3
(declare-const $t@128@01 $PSF<p>)
(declare-fun inv@129@01 (IArray Int) Int)
(declare-fun img@130@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@127@01 Int) (i2@127@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 n@120@01) i1@127@01)
      (Seq_contains (Seq_range 0 n@120@01) i2@127@01)
      (= (+ i1@127@01 1) (+ i2@127@01 1)))
    (= i1@127@01 i2@127@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@127@01 Int) (i@127@01@rw10 Int)) (!
  (=>
    (and
      (= i@127@01 (- i@127@01@rw10 1))
      (Seq_contains (Seq_range 0 n@120@01) i@127@01))
    (and
      (= (inv@129@01 a@119@01 i@127@01@rw10) i@127@01)
      (img@130@01 a@119@01 i@127@01@rw10)))
  :pattern ((Seq_contains (Seq_range 0 n@120@01) i@127@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 n@120@01) i@127@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 n@120@01) i@127@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 n@120@01) i@127@01))
  :pattern ((inv@129@01 a@119@01 i@127@01@rw10))
  :pattern ((img@130@01 a@119@01 i@127@01@rw10))
  :qid |quant-u-23445|)))
; WARNING: (2298,23): pattern does not contain all quantified variables.
; WARNING: (2298,23): pattern does not contain all quantified variables.
; WARNING: (2298,23): pattern does not contain all quantified variables.
; WARNING: (2298,23): pattern does not contain all quantified variables.
; WARNING: (2298,23): pattern does not contain all quantified variables.
; WARNING: (2298,23): pattern does not contain all quantified variables.
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@130@01 a i) (Seq_contains (Seq_range 0 n@120@01) (inv@129@01 a i)))
    (and (= a@119@01 a) (= (+ (inv@129@01 a i) 1) i)))
  :pattern ((inv@129@01 a i))
  :qid |p-fctOfInv|)))
; Permissions are non-negative
(pop) ; 2
(push) ; 2
(declare-const i@131@01 Int)
(push) ; 3
; [eval] (i in [0..n))
; [eval] [0..n)
(assert (Seq_contains (Seq_range 0 n@120@01) i@131@01))
; [eval] i + 1
(pop) ; 3
(declare-fun inv@132@01 (IArray Int) Int)
(declare-fun img@133@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@131@01 Int) (i2@131@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 n@120@01) i1@131@01)
      (Seq_contains (Seq_range 0 n@120@01) i2@131@01)
      (= (+ i1@131@01 1) (+ i2@131@01 1)))
    (= i1@131@01 i2@131@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@131@01 Int) (i@131@01@rw11 Int)) (!
  (=>
    (and
      (= i@131@01 (- i@131@01@rw11 1))
      (Seq_contains (Seq_range 0 n@120@01) i@131@01))
    (and
      (= (inv@132@01 a@119@01 i@131@01@rw11) i@131@01)
      (img@133@01 a@119@01 i@131@01@rw11)))
  :pattern ((Seq_contains (Seq_range 0 n@120@01) i@131@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 n@120@01) i@131@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 n@120@01) i@131@01))
  :pattern ((inv@132@01 a@119@01 i@131@01@rw11))
  :pattern ((img@133@01 a@119@01 i@131@01@rw11))
  :qid |p-invOfFct|)))
; WARNING: (2338,20): pattern does not contain all quantified variables.
; WARNING: (2338,20): pattern does not contain all quantified variables.
; WARNING: (2338,20): pattern does not contain all quantified variables.
; WARNING: (2338,20): pattern does not contain all quantified variables.
; WARNING: (2338,20): pattern does not contain all quantified variables.
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@133@01 a i) (Seq_contains (Seq_range 0 n@120@01) (inv@132@01 a i)))
    (and (= a@119@01 a) (= (+ (inv@132@01 a i) 1) i)))
  :pattern ((inv@132@01 a i))
  :qid |p-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@131@01 Int)) (!
  (= (+ i@131@01 1) i@131@01)
  
  :qid |quant-u-23447|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@134@01 ((a IArray) (i Int)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 n@120@01) (inv@132@01 a i))
      (img@133@01 a i)
      (and (= a a@119@01) (= i (+ (inv@132@01 a i) 1))))
    ($Perm.min
      (ite
        (and
          (img@126@01 a i)
          (Seq_contains (Seq_range 1 (+ n@120@01 1)) (inv@125@01 a i)))
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
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (-
      (ite
        (and
          (img@126@01 a i)
          (Seq_contains (Seq_range 1 (+ n@120@01 1)) (inv@125@01 a i)))
        $Perm.Write
        $Perm.No)
      (pTaken@134@01 a i))
    $Perm.No)
  
  :qid |quant-u-23449|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@134@01 a i) $Perm.No)
  
  :qid |quant-u-23450|))))
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
      (Seq_contains (Seq_range 0 n@120@01) (inv@132@01 a i))
      (img@133@01 a i)
      (and (= a a@119@01) (= i (+ (inv@132@01 a i) 1))))
    (= (- $Perm.Write (pTaken@134@01 a i)) $Perm.No))
  
  :qid |quant-u-23451|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- m8 ----------
(declare-const a@135@01 IArray)
(declare-const n@136@01 Int)
(declare-const i1@137@01 Int)
(declare-const i2@138@01 Int)
(declare-const a@139@01 IArray)
(declare-const n@140@01 Int)
(declare-const i1@141@01 Int)
(declare-const i2@142@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@143@01 $Snap)
(assert (= $t@143@01 ($Snap.combine ($Snap.first $t@143@01) ($Snap.second $t@143@01))))
(assert (= ($Snap.first $t@143@01) $Snap.unit))
; [eval] n > 3
(assert (> n@140@01 3))
(declare-const i@144@01 Int)
(push) ; 2
; [eval] (i in [1..n + 1))
; [eval] [1..n + 1)
; [eval] n + 1
(assert (Seq_contains (Seq_range 1 (+ n@140@01 1)) i@144@01))
; [eval] loc(a, i)
(pop) ; 2
(declare-fun inv@145@01 ($Ref) Int)
(declare-fun img@146@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@144@01 Int) (i2@144@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 1 (+ n@140@01 1)) i1@144@01)
      (Seq_contains (Seq_range 1 (+ n@140@01 1)) i2@144@01)
      (= (loc<Ref> a@139@01 i1@144@01) (loc<Ref> a@139@01 i2@144@01)))
    (= i1@144@01 i2@144@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@144@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 1 (+ n@140@01 1)) i@144@01)
    (and
      (= (inv@145@01 (loc<Ref> a@139@01 i@144@01)) i@144@01)
      (img@146@01 (loc<Ref> a@139@01 i@144@01))))
  :pattern ((loc<Ref> a@139@01 i@144@01))
  :qid |quant-u-23453|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@146@01 r)
      (Seq_contains (Seq_range 1 (+ n@140@01 1)) (inv@145@01 r)))
    (= (loc<Ref> a@139@01 (inv@145@01 r)) r))
  :pattern ((inv@145@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@144@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 1 (+ n@140@01 1)) i@144@01)
    (not (= (loc<Ref> a@139@01 i@144@01) $Ref.null)))
  :pattern ((loc<Ref> a@139@01 i@144@01))
  :qid |val-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const i@147@01 Int)
(push) ; 3
; [eval] (i in [0..n))
; [eval] [0..n)
(assert (Seq_contains (Seq_range 0 n@140@01) i@147@01))
; [eval] loc(a, i + 1)
; [eval] i + 1
(pop) ; 3
(declare-const $t@148@01 $FVF<val>)
(declare-fun inv@149@01 ($Ref) Int)
(declare-fun img@150@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@147@01 Int) (i2@147@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 n@140@01) i1@147@01)
      (Seq_contains (Seq_range 0 n@140@01) i2@147@01)
      (= (loc<Ref> a@139@01 (+ i1@147@01 1)) (loc<Ref> a@139@01 (+ i2@147@01 1))))
    (= i1@147@01 i2@147@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@147@01@rw12 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 n@140@01) (- i@147@01@rw12 1))
    (and
      (= (inv@149@01 (loc<Ref> a@139@01 i@147@01@rw12)) (- i@147@01@rw12 1))
      (img@150@01 (loc<Ref> a@139@01 i@147@01@rw12))))
  :pattern ((loc<Ref> a@139@01 i@147@01@rw12))
  :qid |quant-u-23455|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@150@01 r) (Seq_contains (Seq_range 0 n@140@01) (inv@149@01 r)))
    (= (loc<Ref> a@139@01 (+ (inv@149@01 r) 1)) r))
  :pattern ((inv@149@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@147@01@rw12 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 n@140@01) i@147@01)
    (not (= (loc<Ref> a@139@01 (+ i@147@01 1)) $Ref.null)))
  :pattern ((loc<Ref> a@139@01 i@147@01@rw12))
  :qid |val-permImpliesNonNull|)))
(pop) ; 2
(push) ; 2
(declare-const i@151@01 Int)
(push) ; 3
; [eval] (i in [0..n))
; [eval] [0..n)
(assert (Seq_contains (Seq_range 0 n@140@01) i@151@01))
; [eval] loc(a, i + 1)
; [eval] i + 1
(pop) ; 3
(declare-fun inv@152@01 ($Ref) Int)
(declare-fun img@153@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@151@01 Int) (i2@151@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 n@140@01) i1@151@01)
      (Seq_contains (Seq_range 0 n@140@01) i2@151@01)
      (= (loc<Ref> a@139@01 (+ i1@151@01 1)) (loc<Ref> a@139@01 (+ i2@151@01 1))))
    (= i1@151@01 i2@151@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@151@01@rw13 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 n@140@01) (- i@151@01@rw13 1))
    (and
      (= (inv@152@01 (loc<Ref> a@139@01 i@151@01@rw13)) (- i@151@01@rw13 1))
      (img@153@01 (loc<Ref> a@139@01 i@151@01@rw13))))
  :pattern ((loc<Ref> a@139@01 i@151@01@rw13))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@153@01 r) (Seq_contains (Seq_range 0 n@140@01) (inv@152@01 r)))
    (= (loc<Ref> a@139@01 (+ (inv@152@01 r) 1)) r))
  :pattern ((inv@152@01 r))
  :qid |val-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@151@01 Int)) (!
  (= (loc<Ref> a@139@01 (+ i@151@01 1)) (loc<Ref> a@139@01 i@151@01))
  
  :qid |quant-u-23457|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@154@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 n@140@01) (inv@152@01 r))
      (img@153@01 r)
      (= r (loc<Ref> a@139@01 (+ (inv@152@01 r) 1))))
    ($Perm.min
      (ite
        (and
          (img@146@01 r)
          (Seq_contains (Seq_range 1 (+ n@140@01 1)) (inv@145@01 r)))
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
        (and
          (img@146@01 r)
          (Seq_contains (Seq_range 1 (+ n@140@01 1)) (inv@145@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@154@01 r))
    $Perm.No)
  
  :qid |quant-u-23459|))))
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
      (Seq_contains (Seq_range 0 n@140@01) (inv@152@01 r))
      (img@153@01 r)
      (= r (loc<Ref> a@139@01 (+ (inv@152@01 r) 1))))
    (= (- $Perm.Write (pTaken@154@01 r)) $Perm.No))
  
  :qid |quant-u-23460|))))
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
(declare-const a@155@01 IArray)
(declare-const n@156@01 Int)
(declare-const a@157@01 IArray)
(declare-const n@158@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@159@01 $Snap)
(assert (= $t@159@01 ($Snap.combine ($Snap.first $t@159@01) ($Snap.second $t@159@01))))
(assert (= ($Snap.first $t@159@01) $Snap.unit))
; [eval] n > 5
(assert (> n@158@01 5))
(declare-const i@160@01 Int)
(push) ; 2
; [eval] (i in [0..n))
; [eval] [0..n)
(assert (Seq_contains (Seq_range 0 n@158@01) i@160@01))
(pop) ; 2
(declare-fun inv@161@01 (IArray Int) Int)
(declare-fun img@162@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@160@01 Int) (i2@160@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 n@158@01) i1@160@01)
      (Seq_contains (Seq_range 0 n@158@01) i2@160@01)
      (= i1@160@01 i2@160@01))
    (= i1@160@01 i2@160@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@160@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 n@158@01) i@160@01)
    (and
      (= (inv@161@01 a@157@01 i@160@01) i@160@01)
      (img@162@01 a@157@01 i@160@01)))
  :pattern ((Seq_contains (Seq_range 0 n@158@01) i@160@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 n@158@01) i@160@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 n@158@01) i@160@01))
  :pattern ((inv@161@01 a@157@01 i@160@01))
  :pattern ((img@162@01 a@157@01 i@160@01))
  :qid |quant-u-23462|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@162@01 a i) (Seq_contains (Seq_range 0 n@158@01) (inv@161@01 a i)))
    (and (= a@157@01 a) (= (inv@161@01 a i) i)))
  :pattern ((inv@161@01 a i))
  :qid |p-fctOfInv|)))
; Permissions are non-negative
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@163@01 $Snap)
(assert (= $t@163@01 ($Snap.combine ($Snap.first $t@163@01) ($Snap.second $t@163@01))))
(declare-const i@164@01 Int)
(push) ; 3
; [eval] (i in [4..n))
; [eval] [4..n)
(assert (Seq_contains (Seq_range 4 n@158@01) i@164@01))
(pop) ; 3
(declare-fun inv@165@01 (IArray Int) Int)
(declare-fun img@166@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@164@01 Int) (i2@164@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 4 n@158@01) i1@164@01)
      (Seq_contains (Seq_range 4 n@158@01) i2@164@01)
      (= i1@164@01 i2@164@01))
    (= i1@164@01 i2@164@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@164@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 4 n@158@01) i@164@01)
    (and
      (= (inv@165@01 a@157@01 i@164@01) i@164@01)
      (img@166@01 a@157@01 i@164@01)))
  :pattern ((Seq_contains (Seq_range 4 n@158@01) i@164@01))
  :pattern ((Seq_contains_trigger (Seq_range 4 n@158@01) i@164@01))
  :pattern ((Seq_contains_trigger (Seq_range 4 n@158@01) i@164@01))
  :pattern ((inv@165@01 a@157@01 i@164@01))
  :pattern ((img@166@01 a@157@01 i@164@01))
  :qid |quant-u-23464|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@166@01 a i) (Seq_contains (Seq_range 4 n@158@01) (inv@165@01 a i)))
    (and (= a@157@01 a) (= (inv@165@01 a i) i)))
  :pattern ((inv@165@01 a i))
  :qid |p-fctOfInv|)))
; Permissions are non-negative
(declare-const i@167@01 Int)
(push) ; 3
; [eval] (i in [0..4))
; [eval] [0..4)
(assert (Seq_contains (Seq_range 0 4) i@167@01))
(pop) ; 3
(declare-fun inv@168@01 (IArray Int) Int)
(declare-fun img@169@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@167@01 Int) (i2@167@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 4) i1@167@01)
      (Seq_contains (Seq_range 0 4) i2@167@01)
      (= i1@167@01 i2@167@01))
    (= i1@167@01 i2@167@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@167@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 4) i@167@01)
    (and
      (= (inv@168@01 a@157@01 i@167@01) i@167@01)
      (img@169@01 a@157@01 i@167@01)))
  :pattern ((Seq_contains (Seq_range 0 4) i@167@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 4) i@167@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 4) i@167@01))
  :pattern ((inv@168@01 a@157@01 i@167@01))
  :pattern ((img@169@01 a@157@01 i@167@01))
  :qid |quant-u-23466|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@169@01 a i) (Seq_contains (Seq_range 0 4) (inv@168@01 a i)))
    (and (= a@157@01 a) (= (inv@168@01 a i) i)))
  :pattern ((inv@168@01 a i))
  :qid |p-fctOfInv|)))
; Permissions are non-negative
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (=
    (and (img@169@01 a i) (Seq_contains (Seq_range 0 4) (inv@168@01 a i)))
    (and (img@166@01 a i) (Seq_contains (Seq_range 4 n@158@01) (inv@165@01 a i))))
  
  :qid |quant-u-23467|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(set-option :timeout 0)
(push) ; 2
(declare-const i@170@01 Int)
(push) ; 3
; [eval] (i in [4..n))
; [eval] [4..n)
(assert (Seq_contains (Seq_range 4 n@158@01) i@170@01))
(pop) ; 3
(declare-fun inv@171@01 (IArray Int) Int)
(declare-fun img@172@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@170@01 Int) (i2@170@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 4 n@158@01) i1@170@01)
      (Seq_contains (Seq_range 4 n@158@01) i2@170@01)
      (= i1@170@01 i2@170@01))
    (= i1@170@01 i2@170@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@170@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 4 n@158@01) i@170@01)
    (and
      (= (inv@171@01 a@157@01 i@170@01) i@170@01)
      (img@172@01 a@157@01 i@170@01)))
  :pattern ((Seq_contains (Seq_range 4 n@158@01) i@170@01))
  :pattern ((Seq_contains_trigger (Seq_range 4 n@158@01) i@170@01))
  :pattern ((inv@171@01 a@157@01 i@170@01))
  :pattern ((img@172@01 a@157@01 i@170@01))
  :qid |p-invOfFct|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@172@01 a i) (Seq_contains (Seq_range 4 n@158@01) (inv@171@01 a i)))
    (and (= a@157@01 a) (= (inv@171@01 a i) i)))
  :pattern ((inv@171@01 a i))
  :qid |p-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@173@01 ((a IArray) (i Int)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 4 n@158@01) (inv@171@01 a i))
      (img@172@01 a i)
      (and (= a a@157@01) (= i (inv@171@01 a i))))
    ($Perm.min
      (ite
        (and
          (img@162@01 a i)
          (Seq_contains (Seq_range 0 n@158@01) (inv@161@01 a i)))
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
          (img@162@01 a i)
          (Seq_contains (Seq_range 0 n@158@01) (inv@161@01 a i)))
        $Perm.Write
        $Perm.No)
      (pTaken@173@01 a i))
    $Perm.No)
  
  :qid |quant-u-23470|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((a IArray) (i Int)) (!
  (= (pTaken@173@01 a i) $Perm.No)
  
  :qid |quant-u-23471|))))
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
      (Seq_contains (Seq_range 4 n@158@01) (inv@171@01 a i))
      (img@172@01 a i)
      (and (= a a@157@01) (= i (inv@171@01 a i))))
    (= (- $Perm.Write (pTaken@173@01 a i)) $Perm.No))
  
  :qid |quant-u-23472|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const i@174@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..4))
; [eval] [0..4)
(assert (Seq_contains (Seq_range 0 4) i@174@01))
(pop) ; 3
(declare-fun inv@175@01 (IArray Int) Int)
(declare-fun img@176@01 (IArray Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@174@01 Int) (i2@174@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 4) i1@174@01)
      (Seq_contains (Seq_range 0 4) i2@174@01)
      (= i1@174@01 i2@174@01))
    (= i1@174@01 i2@174@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@174@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 4) i@174@01)
    (and
      (= (inv@175@01 a@157@01 i@174@01) i@174@01)
      (img@176@01 a@157@01 i@174@01)))
  :pattern ((Seq_contains (Seq_range 0 4) i@174@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 4) i@174@01))
  :pattern ((inv@175@01 a@157@01 i@174@01))
  :pattern ((img@176@01 a@157@01 i@174@01))
  :qid |p-invOfFct|)))
(assert (forall ((a IArray) (i Int)) (!
  (=>
    (and (img@176@01 a i) (Seq_contains (Seq_range 0 4) (inv@175@01 a i)))
    (and (= a@157@01 a) (= (inv@175@01 a i) i)))
  :pattern ((inv@175@01 a i))
  :qid |p-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@177@01 ((a IArray) (i Int)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 4) (inv@175@01 a i))
      (img@176@01 a i)
      (and (= a a@157@01) (= i (inv@175@01 a i))))
    ($Perm.min
      (ite
        (and
          (img@162@01 a i)
          (Seq_contains (Seq_range 0 n@158@01) (inv@161@01 a i)))
        (- $Perm.Write (pTaken@173@01 a i))
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
          (img@162@01 a i)
          (Seq_contains (Seq_range 0 n@158@01) (inv@161@01 a i)))
        (- $Perm.Write (pTaken@173@01 a i))
        $Perm.No)
      (pTaken@177@01 a i))
    $Perm.No)
  
  :qid |quant-u-23475|))))
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
      (Seq_contains (Seq_range 0 4) (inv@175@01 a i))
      (img@176@01 a i)
      (and (= a a@157@01) (= i (inv@175@01 a i))))
    (= (- $Perm.Write (pTaken@177@01 a i)) $Perm.No))
  
  :qid |quant-u-23476|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- m10 ----------
(declare-const a@178@01 IArray)
(declare-const n@179@01 Int)
(declare-const a@180@01 IArray)
(declare-const n@181@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@182@01 $Snap)
(assert (= $t@182@01 ($Snap.combine ($Snap.first $t@182@01) ($Snap.second $t@182@01))))
(assert (= ($Snap.first $t@182@01) $Snap.unit))
; [eval] n > 5
(assert (> n@181@01 5))
(declare-const i@183@01 Int)
(push) ; 2
; [eval] (i in [0..n))
; [eval] [0..n)
(assert (Seq_contains (Seq_range 0 n@181@01) i@183@01))
; [eval] loc(a, i)
(pop) ; 2
(declare-fun inv@184@01 ($Ref) Int)
(declare-fun img@185@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@183@01 Int) (i2@183@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 n@181@01) i1@183@01)
      (Seq_contains (Seq_range 0 n@181@01) i2@183@01)
      (= (loc<Ref> a@180@01 i1@183@01) (loc<Ref> a@180@01 i2@183@01)))
    (= i1@183@01 i2@183@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@183@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 n@181@01) i@183@01)
    (and
      (= (inv@184@01 (loc<Ref> a@180@01 i@183@01)) i@183@01)
      (img@185@01 (loc<Ref> a@180@01 i@183@01))))
  :pattern ((loc<Ref> a@180@01 i@183@01))
  :qid |quant-u-23478|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@185@01 r) (Seq_contains (Seq_range 0 n@181@01) (inv@184@01 r)))
    (= (loc<Ref> a@180@01 (inv@184@01 r)) r))
  :pattern ((inv@184@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@183@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 n@181@01) i@183@01)
    (not (= (loc<Ref> a@180@01 i@183@01) $Ref.null)))
  :pattern ((loc<Ref> a@180@01 i@183@01))
  :qid |val-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@186@01 $Snap)
(assert (= $t@186@01 ($Snap.combine ($Snap.first $t@186@01) ($Snap.second $t@186@01))))
(declare-const i@187@01 Int)
(push) ; 3
; [eval] (i in [4..n))
; [eval] [4..n)
(assert (Seq_contains (Seq_range 4 n@181@01) i@187@01))
; [eval] loc(a, i)
(pop) ; 3
(declare-fun inv@188@01 ($Ref) Int)
(declare-fun img@189@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@187@01 Int) (i2@187@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 4 n@181@01) i1@187@01)
      (Seq_contains (Seq_range 4 n@181@01) i2@187@01)
      (= (loc<Ref> a@180@01 i1@187@01) (loc<Ref> a@180@01 i2@187@01)))
    (= i1@187@01 i2@187@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@187@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 4 n@181@01) i@187@01)
    (and
      (= (inv@188@01 (loc<Ref> a@180@01 i@187@01)) i@187@01)
      (img@189@01 (loc<Ref> a@180@01 i@187@01))))
  :pattern ((loc<Ref> a@180@01 i@187@01))
  :qid |quant-u-23480|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@189@01 r) (Seq_contains (Seq_range 4 n@181@01) (inv@188@01 r)))
    (= (loc<Ref> a@180@01 (inv@188@01 r)) r))
  :pattern ((inv@188@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@187@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 4 n@181@01) i@187@01)
    (not (= (loc<Ref> a@180@01 i@187@01) $Ref.null)))
  :pattern ((loc<Ref> a@180@01 i@187@01))
  :qid |val-permImpliesNonNull|)))
(declare-const i@190@01 Int)
(push) ; 3
; [eval] (i in [0..4))
; [eval] [0..4)
(assert (Seq_contains (Seq_range 0 4) i@190@01))
; [eval] loc(a, i)
(pop) ; 3
(declare-fun inv@191@01 ($Ref) Int)
(declare-fun img@192@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@190@01 Int) (i2@190@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 4) i1@190@01)
      (Seq_contains (Seq_range 0 4) i2@190@01)
      (= (loc<Ref> a@180@01 i1@190@01) (loc<Ref> a@180@01 i2@190@01)))
    (= i1@190@01 i2@190@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@190@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 4) i@190@01)
    (and
      (= (inv@191@01 (loc<Ref> a@180@01 i@190@01)) i@190@01)
      (img@192@01 (loc<Ref> a@180@01 i@190@01))))
  :pattern ((loc<Ref> a@180@01 i@190@01))
  :qid |quant-u-23482|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@192@01 r) (Seq_contains (Seq_range 0 4) (inv@191@01 r)))
    (= (loc<Ref> a@180@01 (inv@191@01 r)) r))
  :pattern ((inv@191@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@190@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 4) i@190@01)
    (not (= (loc<Ref> a@180@01 i@190@01) $Ref.null)))
  :pattern ((loc<Ref> a@180@01 i@190@01))
  :qid |val-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (loc<Ref> a@180@01 i@190@01) (loc<Ref> a@180@01 i@187@01))
    (=
      (and (img@192@01 r) (Seq_contains (Seq_range 0 4) (inv@191@01 r)))
      (and (img@189@01 r) (Seq_contains (Seq_range 4 n@181@01) (inv@188@01 r)))))
  
  :qid |quant-u-23483|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(set-option :timeout 0)
(push) ; 2
(declare-const i@193@01 Int)
(push) ; 3
; [eval] (i in [4..n))
; [eval] [4..n)
(assert (Seq_contains (Seq_range 4 n@181@01) i@193@01))
; [eval] loc(a, i)
(pop) ; 3
(declare-fun inv@194@01 ($Ref) Int)
(declare-fun img@195@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@193@01 Int) (i2@193@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 4 n@181@01) i1@193@01)
      (Seq_contains (Seq_range 4 n@181@01) i2@193@01)
      (= (loc<Ref> a@180@01 i1@193@01) (loc<Ref> a@180@01 i2@193@01)))
    (= i1@193@01 i2@193@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@193@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 4 n@181@01) i@193@01)
    (and
      (= (inv@194@01 (loc<Ref> a@180@01 i@193@01)) i@193@01)
      (img@195@01 (loc<Ref> a@180@01 i@193@01))))
  :pattern ((loc<Ref> a@180@01 i@193@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@195@01 r) (Seq_contains (Seq_range 4 n@181@01) (inv@194@01 r)))
    (= (loc<Ref> a@180@01 (inv@194@01 r)) r))
  :pattern ((inv@194@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@196@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 4 n@181@01) (inv@194@01 r))
      (img@195@01 r)
      (= r (loc<Ref> a@180@01 (inv@194@01 r))))
    ($Perm.min
      (ite
        (and (img@185@01 r) (Seq_contains (Seq_range 0 n@181@01) (inv@184@01 r)))
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
        (and (img@185@01 r) (Seq_contains (Seq_range 0 n@181@01) (inv@184@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@196@01 r))
    $Perm.No)
  
  :qid |quant-u-23486|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@196@01 r) $Perm.No)
  
  :qid |quant-u-23487|))))
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
    (and
      (Seq_contains (Seq_range 4 n@181@01) (inv@194@01 r))
      (img@195@01 r)
      (= r (loc<Ref> a@180@01 (inv@194@01 r))))
    (= (- $Perm.Write (pTaken@196@01 r)) $Perm.No))
  
  :qid |quant-u-23488|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const i@197@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i in [0..4))
; [eval] [0..4)
(assert (Seq_contains (Seq_range 0 4) i@197@01))
; [eval] loc(a, i)
(pop) ; 3
(declare-fun inv@198@01 ($Ref) Int)
(declare-fun img@199@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@197@01 Int) (i2@197@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 4) i1@197@01)
      (Seq_contains (Seq_range 0 4) i2@197@01)
      (= (loc<Ref> a@180@01 i1@197@01) (loc<Ref> a@180@01 i2@197@01)))
    (= i1@197@01 i2@197@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@197@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 4) i@197@01)
    (and
      (= (inv@198@01 (loc<Ref> a@180@01 i@197@01)) i@197@01)
      (img@199@01 (loc<Ref> a@180@01 i@197@01))))
  :pattern ((loc<Ref> a@180@01 i@197@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@199@01 r) (Seq_contains (Seq_range 0 4) (inv@198@01 r)))
    (= (loc<Ref> a@180@01 (inv@198@01 r)) r))
  :pattern ((inv@198@01 r))
  :qid |val-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@200@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 4) (inv@198@01 r))
      (img@199@01 r)
      (= r (loc<Ref> a@180@01 (inv@198@01 r))))
    ($Perm.min
      (ite
        (and (img@185@01 r) (Seq_contains (Seq_range 0 n@181@01) (inv@184@01 r)))
        (- $Perm.Write (pTaken@196@01 r))
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
        (and (img@185@01 r) (Seq_contains (Seq_range 0 n@181@01) (inv@184@01 r)))
        (- $Perm.Write (pTaken@196@01 r))
        $Perm.No)
      (pTaken@200@01 r))
    $Perm.No)
  
  :qid |quant-u-23491|))))
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
      (Seq_contains (Seq_range 0 4) (inv@198@01 r))
      (img@199@01 r)
      (= r (loc<Ref> a@180@01 (inv@198@01 r))))
    (= (- $Perm.Write (pTaken@200@01 r)) $Perm.No))
  
  :qid |quant-u-23492|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
