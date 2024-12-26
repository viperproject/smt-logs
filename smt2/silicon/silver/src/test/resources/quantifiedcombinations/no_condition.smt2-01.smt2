(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 19:35:21
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
(declare-sort $FVF<f> 0)
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
; /field_value_functions_declarations.smt2 [f: Int]
(declare-fun $FVF.domain_f ($FVF<f>) Set<$Ref>)
(declare-fun $FVF.lookup_f ($FVF<f> $Ref) Int)
(declare-fun $FVF.after_f ($FVF<f> $FVF<f>) Bool)
(declare-fun $FVF.loc_f (Int $Ref) Bool)
(declare-fun $FVF.perm_f ($FPM $Ref) $Perm)
(declare-const $fvfTOP_f $FVF<f>)
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
(declare-fun p%trigger ($Snap $Ref) Bool)
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
(declare-const xs@0@01 Seq<$Ref>)
(declare-const xs@1@01 Seq<$Ref>)
(set-option :timeout 0)
(push) ; 1
(declare-const x@2@01 $Ref)
(push) ; 2
(pop) ; 2
(declare-const $t@3@01 $FVF<f>)
(declare-fun inv@4@01 ($Ref) $Ref)
(declare-fun img@5@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((x@2@01 $Ref)) (!
  (and (= (inv@4@01 x@2@01) x@2@01) (img@5@01 x@2@01))
  :pattern ((inv@4@01 x@2@01))
  :pattern ((img@5@01 x@2@01))
  :qid |quant-u-16284|)))
(assert (forall ((r $Ref)) (!
  (=> (img@5@01 r) (= (inv@4@01 r) r))
  :pattern ((inv@4@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@2@01 $Ref)) (!
  (not (= x@2@01 $Ref.null))
  :pattern ((inv@4@01 x@2@01))
  :pattern ((img@5@01 x@2@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const x@6@01 $Ref)
(push) ; 3
(pop) ; 3
(declare-const $t@7@01 $FVF<f>)
(declare-fun inv@8@01 ($Ref) $Ref)
(declare-fun img@9@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((x@6@01 $Ref)) (!
  (and (= (inv@8@01 x@6@01) x@6@01) (img@9@01 x@6@01))
  :pattern ((inv@8@01 x@6@01))
  :pattern ((img@9@01 x@6@01))
  :qid |quant-u-16286|)))
(assert (forall ((r $Ref)) (!
  (=> (img@9@01 r) (= (inv@8@01 r) r))
  :pattern ((inv@8@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@6@01 $Ref)) (!
  (not (= x@6@01 $Ref.null))
  :pattern ((inv@8@01 x@6@01))
  :pattern ((img@9@01 x@6@01))
  :qid |f-permImpliesNonNull|)))
(pop) ; 2
(push) ; 2
(declare-const x@10@01 $Ref)
(push) ; 3
(pop) ; 3
(declare-fun inv@11@01 ($Ref) $Ref)
(declare-fun img@12@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((x@10@01 $Ref)) (!
  (and (= (inv@11@01 x@10@01) x@10@01) (img@12@01 x@10@01))
  :pattern ((inv@11@01 x@10@01))
  :pattern ((img@12@01 x@10@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (img@12@01 r) (= (inv@11@01 r) r))
  :pattern ((inv@11@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@13@01 ((r $Ref)) $Perm
  (ite
    (and (img@12@01 r) (= r (inv@11@01 r)))
    ($Perm.min (ite (img@5@01 r) $Perm.Write $Perm.No) $Perm.Write)
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
  (= (- (ite (img@5@01 r) $Perm.Write $Perm.No) (pTaken@13@01 r)) $Perm.No)
  
  :qid |quant-u-16289|))))
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
    (and (img@12@01 r) (= r (inv@11@01 r)))
    (= (- $Perm.Write (pTaken@13@01 r)) $Perm.No))
  
  :qid |quant-u-16290|))))
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
(declare-const xs@14@01 Seq<$Ref>)
(declare-const xs@15@01 Seq<$Ref>)
(set-option :timeout 0)
(push) ; 1
(declare-const x@16@01 $Ref)
(push) ; 2
(pop) ; 2
(declare-const $t@17@01 $PSF<p>)
(declare-fun inv@18@01 ($Ref) $Ref)
(declare-fun img@19@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((x@16@01 $Ref)) (!
  (and (= (inv@18@01 x@16@01) x@16@01) (img@19@01 x@16@01))
  :pattern ((inv@18@01 x@16@01))
  :pattern ((img@19@01 x@16@01))
  :qid |quant-u-16292|)))
(assert (forall ((r $Ref)) (!
  (=> (img@19@01 r) (= (inv@18@01 r) r))
  :pattern ((inv@18@01 r))
  :qid |p-fctOfInv|)))
; Permissions are non-negative
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const x@20@01 $Ref)
(push) ; 3
(pop) ; 3
(declare-const $t@21@01 $PSF<p>)
(declare-fun inv@22@01 ($Ref) $Ref)
(declare-fun img@23@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((x@20@01 $Ref)) (!
  (and (= (inv@22@01 x@20@01) x@20@01) (img@23@01 x@20@01))
  :pattern ((inv@22@01 x@20@01))
  :pattern ((img@23@01 x@20@01))
  :qid |quant-u-16294|)))
(assert (forall ((r $Ref)) (!
  (=> (img@23@01 r) (= (inv@22@01 r) r))
  :pattern ((inv@22@01 r))
  :qid |p-fctOfInv|)))
; Permissions are non-negative
(pop) ; 2
(push) ; 2
(declare-const x@24@01 $Ref)
(push) ; 3
(pop) ; 3
(declare-fun inv@25@01 ($Ref) $Ref)
(declare-fun img@26@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((x@24@01 $Ref)) (!
  (and (= (inv@25@01 x@24@01) x@24@01) (img@26@01 x@24@01))
  :pattern ((inv@25@01 x@24@01))
  :pattern ((img@26@01 x@24@01))
  :qid |p-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (img@26@01 r) (= (inv@25@01 r) r))
  :pattern ((inv@25@01 r))
  :qid |p-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@27@01 ((r $Ref)) $Perm
  (ite
    (and (img@26@01 r) (= r (inv@25@01 r)))
    ($Perm.min (ite (img@19@01 r) $Perm.Write $Perm.No) $Perm.Write)
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
  (= (- (ite (img@19@01 r) $Perm.Write $Perm.No) (pTaken@27@01 r)) $Perm.No)
  
  :qid |quant-u-16297|))))
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
    (and (img@26@01 r) (= r (inv@25@01 r)))
    (= (- $Perm.Write (pTaken@27@01 r)) $Perm.No))
  
  :qid |quant-u-16298|))))
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
(declare-const r@28@01 $Ref)
(declare-const xs@29@01 Seq<$Ref>)
(declare-const ys@30@01 Seq<$Ref>)
(declare-const r@31@01 $Ref)
(declare-const xs@32@01 Seq<$Ref>)
(declare-const ys@33@01 Seq<$Ref>)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@34@01 $Snap)
(assert (= $t@34@01 ($Snap.combine ($Snap.first $t@34@01) ($Snap.second $t@34@01))))
(declare-const x@35@01 $Ref)
(push) ; 2
; [eval] true && (x in xs)
(push) ; 3
; [then-branch: 0 | False | live]
; [else-branch: 0 | True | live]
(push) ; 4
; [then-branch: 0 | False]
(assert false)
(pop) ; 4
(push) ; 4
; [else-branch: 0 | True]
; [eval] (x in xs)
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (Seq_contains xs@32@01 x@35@01))
(pop) ; 2
(declare-fun inv@36@01 ($Ref) $Ref)
(declare-fun img@37@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@35@01 $Ref) (x2@35@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@32@01 x1@35@01)
      (Seq_contains xs@32@01 x2@35@01)
      (= x1@35@01 x2@35@01))
    (= x1@35@01 x2@35@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@35@01 $Ref)) (!
  (=>
    (Seq_contains xs@32@01 x@35@01)
    (and (= (inv@36@01 x@35@01) x@35@01) (img@37@01 x@35@01)))
  :pattern ((Seq_contains xs@32@01 x@35@01))
  :pattern ((Seq_contains_trigger xs@32@01 x@35@01))
  :pattern ((Seq_contains_trigger xs@32@01 x@35@01))
  :pattern ((inv@36@01 x@35@01))
  :pattern ((img@37@01 x@35@01))
  :qid |quant-u-16300|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@37@01 r) (Seq_contains xs@32@01 (inv@36@01 r)))
    (= (inv@36@01 r) r))
  :pattern ((inv@36@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@35@01 $Ref)) (!
  (=> (Seq_contains xs@32@01 x@35@01) (not (= x@35@01 $Ref.null)))
  :pattern ((Seq_contains xs@32@01 x@35@01))
  :pattern ((Seq_contains_trigger xs@32@01 x@35@01))
  :pattern ((Seq_contains_trigger xs@32@01 x@35@01))
  :pattern ((inv@36@01 x@35@01))
  :pattern ((img@37@01 x@35@01))
  :qid |f-permImpliesNonNull|)))
(declare-const x@38@01 $Ref)
(push) ; 2
; [eval] true && (x in ys)
(push) ; 3
; [then-branch: 1 | False | live]
; [else-branch: 1 | True | live]
(push) ; 4
; [then-branch: 1 | False]
(assert false)
(pop) ; 4
(push) ; 4
; [else-branch: 1 | True]
; [eval] (x in ys)
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (Seq_contains ys@33@01 x@38@01))
(pop) ; 2
(declare-fun inv@39@01 ($Ref) $Ref)
(declare-fun img@40@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@38@01 $Ref) (x2@38@01 $Ref)) (!
  (=>
    (and
      (Seq_contains ys@33@01 x1@38@01)
      (Seq_contains ys@33@01 x2@38@01)
      (= x1@38@01 x2@38@01))
    (= x1@38@01 x2@38@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@38@01 $Ref)) (!
  (=>
    (Seq_contains ys@33@01 x@38@01)
    (and (= (inv@39@01 x@38@01) x@38@01) (img@40@01 x@38@01)))
  :pattern ((Seq_contains ys@33@01 x@38@01))
  :pattern ((Seq_contains_trigger ys@33@01 x@38@01))
  :pattern ((Seq_contains_trigger ys@33@01 x@38@01))
  :pattern ((inv@39@01 x@38@01))
  :pattern ((img@40@01 x@38@01))
  :qid |quant-u-16302|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@40@01 r) (Seq_contains ys@33@01 (inv@39@01 r)))
    (= (inv@39@01 r) r))
  :pattern ((inv@39@01 r))
  :qid |p-fctOfInv|)))
; Permissions are non-negative
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@41@01 $Snap)
(assert (= $t@41@01 ($Snap.combine ($Snap.first $t@41@01) ($Snap.second $t@41@01))))
(declare-const x@42@01 $Ref)
(push) ; 3
; [eval] true && (x in xs)
(push) ; 4
; [then-branch: 2 | False | live]
; [else-branch: 2 | True | live]
(push) ; 5
; [then-branch: 2 | False]
(assert false)
(pop) ; 5
(push) ; 5
; [else-branch: 2 | True]
; [eval] (x in xs)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (Seq_contains xs@32@01 x@42@01))
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
      (Seq_contains xs@32@01 x1@42@01)
      (Seq_contains xs@32@01 x2@42@01)
      (= x1@42@01 x2@42@01))
    (= x1@42@01 x2@42@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@42@01 $Ref)) (!
  (=>
    (Seq_contains xs@32@01 x@42@01)
    (and (= (inv@43@01 x@42@01) x@42@01) (img@44@01 x@42@01)))
  :pattern ((Seq_contains xs@32@01 x@42@01))
  :pattern ((Seq_contains_trigger xs@32@01 x@42@01))
  :pattern ((Seq_contains_trigger xs@32@01 x@42@01))
  :pattern ((inv@43@01 x@42@01))
  :pattern ((img@44@01 x@42@01))
  :qid |quant-u-16304|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@44@01 r) (Seq_contains xs@32@01 (inv@43@01 r)))
    (= (inv@43@01 r) r))
  :pattern ((inv@43@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@42@01 $Ref)) (!
  (=> (Seq_contains xs@32@01 x@42@01) (not (= x@42@01 $Ref.null)))
  :pattern ((Seq_contains xs@32@01 x@42@01))
  :pattern ((Seq_contains_trigger xs@32@01 x@42@01))
  :pattern ((Seq_contains_trigger xs@32@01 x@42@01))
  :pattern ((inv@43@01 x@42@01))
  :pattern ((img@44@01 x@42@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@41@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@41@01))
    ($Snap.second ($Snap.second $t@41@01)))))
(declare-const x@45@01 $Ref)
(push) ; 3
; [eval] true && (x in ys)
(push) ; 4
; [then-branch: 3 | False | live]
; [else-branch: 3 | True | live]
(push) ; 5
; [then-branch: 3 | False]
(assert false)
(pop) ; 5
(push) ; 5
; [else-branch: 3 | True]
; [eval] (x in ys)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (Seq_contains ys@33@01 x@45@01))
(pop) ; 3
(declare-fun inv@46@01 ($Ref) $Ref)
(declare-fun img@47@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@45@01 $Ref) (x2@45@01 $Ref)) (!
  (=>
    (and
      (Seq_contains ys@33@01 x1@45@01)
      (Seq_contains ys@33@01 x2@45@01)
      (= x1@45@01 x2@45@01))
    (= x1@45@01 x2@45@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@45@01 $Ref)) (!
  (=>
    (Seq_contains ys@33@01 x@45@01)
    (and (= (inv@46@01 x@45@01) x@45@01) (img@47@01 x@45@01)))
  :pattern ((Seq_contains ys@33@01 x@45@01))
  :pattern ((Seq_contains_trigger ys@33@01 x@45@01))
  :pattern ((Seq_contains_trigger ys@33@01 x@45@01))
  :pattern ((inv@46@01 x@45@01))
  :pattern ((img@47@01 x@45@01))
  :qid |quant-u-16306|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@47@01 r) (Seq_contains ys@33@01 (inv@46@01 r)))
    (= (inv@46@01 r) r))
  :pattern ((inv@46@01 r))
  :qid |p-fctOfInv|)))
; Permissions are non-negative
(assert (= ($Snap.second ($Snap.second $t@41@01)) $Snap.unit))
; [eval] (r in xs) ==> r.f == 4
; [eval] (r in xs)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (Seq_contains xs@32@01 r@31@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (Seq_contains xs@32@01 r@31@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 4 | r@31@01 in xs@32@01 | live]
; [else-branch: 4 | !(r@31@01 in xs@32@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 4 | r@31@01 in xs@32@01]
(assert (Seq_contains xs@32@01 r@31@01))
; [eval] r.f == 4
(push) ; 5
(assert (not (and (img@44@01 r@31@01) (Seq_contains xs@32@01 (inv@43@01 r@31@01)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 4 | !(r@31@01 in xs@32@01)]
(assert (not (Seq_contains xs@32@01 r@31@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not (Seq_contains xs@32@01 r@31@01)) (Seq_contains xs@32@01 r@31@01)))
(assert (=>
  (Seq_contains xs@32@01 r@31@01)
  (=
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@41@01)) r@31@01)
    4)))
(pop) ; 2
(push) ; 2
; [eval] (r in xs)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (Seq_contains xs@32@01 r@31@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (Seq_contains xs@32@01 r@31@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 5 | r@31@01 in xs@32@01 | live]
; [else-branch: 5 | !(r@31@01 in xs@32@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 5 | r@31@01 in xs@32@01]
(assert (Seq_contains xs@32@01 r@31@01))
; [exec]
; r.f := 4
; Precomputing data for removing quantified permissions
(define-fun pTaken@48@01 ((r $Ref)) $Perm
  (ite
    (= r r@31@01)
    ($Perm.min
      (ite
        (and (img@37@01 r) (Seq_contains xs@32@01 (inv@36@01 r)))
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
        (and (img@37@01 r) (Seq_contains xs@32@01 (inv@36@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@48@01 r))
    $Perm.No)
  
  :qid |quant-u-16308|))))
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
  
  :qid |quant-u-16309|))))
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
  (=> (= r r@31@01) (= (- $Perm.Write (pTaken@48@01 r)) $Perm.No))
  
  :qid |quant-u-16310|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@49@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_f (as sm@49@01  $FVF<f>) r@31@01) 4))
(declare-const x@50@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] true && (x in xs)
(push) ; 5
; [then-branch: 6 | False | live]
; [else-branch: 6 | True | live]
(push) ; 6
; [then-branch: 6 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 6 | True]
; [eval] (x in xs)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (Seq_contains xs@32@01 x@50@01))
(pop) ; 4
(declare-fun inv@51@01 ($Ref) $Ref)
(declare-fun img@52@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@50@01 $Ref) (x2@50@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@32@01 x1@50@01)
      (Seq_contains xs@32@01 x2@50@01)
      (= x1@50@01 x2@50@01))
    (= x1@50@01 x2@50@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@50@01 $Ref)) (!
  (=>
    (Seq_contains xs@32@01 x@50@01)
    (and (= (inv@51@01 x@50@01) x@50@01) (img@52@01 x@50@01)))
  :pattern ((Seq_contains xs@32@01 x@50@01))
  :pattern ((Seq_contains_trigger xs@32@01 x@50@01))
  :pattern ((inv@51@01 x@50@01))
  :pattern ((img@52@01 x@50@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@52@01 r) (Seq_contains xs@32@01 (inv@51@01 r)))
    (= (inv@51@01 r) r))
  :pattern ((inv@51@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@53@01 ((r $Ref)) $Perm
  (ite
    (and (Seq_contains xs@32@01 (inv@51@01 r)) (img@52@01 r) (= r (inv@51@01 r)))
    ($Perm.min
      (ite
        (and (img@37@01 r) (Seq_contains xs@32@01 (inv@36@01 r)))
        (- $Perm.Write (pTaken@48@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@54@01 ((r $Ref)) $Perm
  (ite
    (and (Seq_contains xs@32@01 (inv@51@01 r)) (img@52@01 r) (= r (inv@51@01 r)))
    ($Perm.min
      (ite (= r r@31@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@53@01 r)))
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
        (and (img@37@01 r) (Seq_contains xs@32@01 (inv@36@01 r)))
        (- $Perm.Write (pTaken@48@01 r))
        $Perm.No)
      (pTaken@53@01 r))
    $Perm.No)
  
  :qid |quant-u-16313|))))
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
    (and (Seq_contains xs@32@01 (inv@51@01 r)) (img@52@01 r) (= r (inv@51@01 r)))
    (= (- $Perm.Write (pTaken@53@01 r)) $Perm.No))
  
  :qid |quant-u-16314|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@54@01 r@31@01)) $Perm.No)))
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
    (and (Seq_contains xs@32@01 (inv@51@01 r)) (img@52@01 r) (= r (inv@51@01 r)))
    (= (- (- $Perm.Write (pTaken@53@01 r)) (pTaken@54@01 r)) $Perm.No))
  
  :qid |quant-u-16316|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const x@55@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] true && (x in ys)
(push) ; 5
; [then-branch: 7 | False | live]
; [else-branch: 7 | True | live]
(push) ; 6
; [then-branch: 7 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 7 | True]
; [eval] (x in ys)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (Seq_contains ys@33@01 x@55@01))
(pop) ; 4
(declare-fun inv@56@01 ($Ref) $Ref)
(declare-fun img@57@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@55@01 $Ref) (x2@55@01 $Ref)) (!
  (=>
    (and
      (Seq_contains ys@33@01 x1@55@01)
      (Seq_contains ys@33@01 x2@55@01)
      (= x1@55@01 x2@55@01))
    (= x1@55@01 x2@55@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@55@01 $Ref)) (!
  (=>
    (Seq_contains ys@33@01 x@55@01)
    (and (= (inv@56@01 x@55@01) x@55@01) (img@57@01 x@55@01)))
  :pattern ((Seq_contains ys@33@01 x@55@01))
  :pattern ((Seq_contains_trigger ys@33@01 x@55@01))
  :pattern ((inv@56@01 x@55@01))
  :pattern ((img@57@01 x@55@01))
  :qid |p-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@57@01 r) (Seq_contains ys@33@01 (inv@56@01 r)))
    (= (inv@56@01 r) r))
  :pattern ((inv@56@01 r))
  :qid |p-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@58@01 ((r $Ref)) $Perm
  (ite
    (and (Seq_contains ys@33@01 (inv@56@01 r)) (img@57@01 r) (= r (inv@56@01 r)))
    ($Perm.min
      (ite
        (and (img@40@01 r) (Seq_contains ys@33@01 (inv@39@01 r)))
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
        (and (img@40@01 r) (Seq_contains ys@33@01 (inv@39@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@58@01 r))
    $Perm.No)
  
  :qid |quant-u-16319|))))
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
    (and (Seq_contains ys@33@01 (inv@56@01 r)) (img@57@01 r) (= r (inv@56@01 r)))
    (= (- $Perm.Write (pTaken@58@01 r)) $Perm.No))
  
  :qid |quant-u-16320|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (r in xs) ==> r.f == 4
; [eval] (r in xs)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (Seq_contains xs@32@01 r@31@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 8 | r@31@01 in xs@32@01 | live]
; [else-branch: 8 | !(r@31@01 in xs@32@01) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 8 | r@31@01 in xs@32@01]
; [eval] r.f == 4
(declare-const sm@59@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r r@31@01)
    (=
      ($FVF.lookup_f (as sm@59@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@49@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@59@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@49@01  $FVF<f>) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@37@01 r) (Seq_contains xs@32@01 (inv@36@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@48@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@59@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@34@01)) r)))
  :pattern (($FVF.lookup_f (as sm@59@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@34@01)) r))
  :qid |qp.fvfValDef1|)))
(declare-const pm@60@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@60@01  $FPM) r)
    (+
      (ite (= r r@31@01) $Perm.Write $Perm.No)
      (ite
        (and (img@37@01 r) (Seq_contains xs@32@01 (inv@36@01 r)))
        (- $Perm.Write (pTaken@48@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@60@01  $FPM) r))
  :qid |qp.resPrmSumDef2|)))
(push) ; 6
(assert (not (< $Perm.No ($FVF.perm_f (as pm@60@01  $FPM) r@31@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r r@31@01)
    (=
      ($FVF.lookup_f (as sm@59@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@49@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@59@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@49@01  $FVF<f>) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@37@01 r) (Seq_contains xs@32@01 (inv@36@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@48@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@59@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@34@01)) r)))
  :pattern (($FVF.lookup_f (as sm@59@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@34@01)) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@60@01  $FPM) r)
    (+
      (ite (= r r@31@01) $Perm.Write $Perm.No)
      (ite
        (and (img@37@01 r) (Seq_contains xs@32@01 (inv@36@01 r)))
        (- $Perm.Write (pTaken@48@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@60@01  $FPM) r))
  :qid |qp.resPrmSumDef2|)))
(push) ; 4
(assert (not (=>
  (Seq_contains xs@32@01 r@31@01)
  (= ($FVF.lookup_f (as sm@59@01  $FVF<f>) r@31@01) 4))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (Seq_contains xs@32@01 r@31@01)
  (= ($FVF.lookup_f (as sm@59@01  $FVF<f>) r@31@01) 4)))
(pop) ; 3
(push) ; 3
; [else-branch: 5 | !(r@31@01 in xs@32@01)]
(assert (not (Seq_contains xs@32@01 r@31@01)))
(pop) ; 3
; [eval] !((r in xs))
; [eval] (r in xs)
(push) ; 3
(set-option :timeout 10)
(assert (not (Seq_contains xs@32@01 r@31@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (Seq_contains xs@32@01 r@31@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 9 | !(r@31@01 in xs@32@01) | live]
; [else-branch: 9 | r@31@01 in xs@32@01 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 9 | !(r@31@01 in xs@32@01)]
(assert (not (Seq_contains xs@32@01 r@31@01)))
(declare-const x@61@01 $Ref)
(push) ; 4
; [eval] true && (x in xs)
(push) ; 5
; [then-branch: 10 | False | live]
; [else-branch: 10 | True | live]
(push) ; 6
; [then-branch: 10 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 10 | True]
; [eval] (x in xs)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (Seq_contains xs@32@01 x@61@01))
(pop) ; 4
(declare-fun inv@62@01 ($Ref) $Ref)
(declare-fun img@63@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@61@01 $Ref) (x2@61@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@32@01 x1@61@01)
      (Seq_contains xs@32@01 x2@61@01)
      (= x1@61@01 x2@61@01))
    (= x1@61@01 x2@61@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@61@01 $Ref)) (!
  (=>
    (Seq_contains xs@32@01 x@61@01)
    (and (= (inv@62@01 x@61@01) x@61@01) (img@63@01 x@61@01)))
  :pattern ((Seq_contains xs@32@01 x@61@01))
  :pattern ((Seq_contains_trigger xs@32@01 x@61@01))
  :pattern ((inv@62@01 x@61@01))
  :pattern ((img@63@01 x@61@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@63@01 r) (Seq_contains xs@32@01 (inv@62@01 r)))
    (= (inv@62@01 r) r))
  :pattern ((inv@62@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@64@01 ((r $Ref)) $Perm
  (ite
    (and (Seq_contains xs@32@01 (inv@62@01 r)) (img@63@01 r) (= r (inv@62@01 r)))
    ($Perm.min
      (ite
        (and (img@37@01 r) (Seq_contains xs@32@01 (inv@36@01 r)))
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
        (and (img@37@01 r) (Seq_contains xs@32@01 (inv@36@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@64@01 r))
    $Perm.No)
  
  :qid |quant-u-16323|))))
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
    (and (Seq_contains xs@32@01 (inv@62@01 r)) (img@63@01 r) (= r (inv@62@01 r)))
    (= (- $Perm.Write (pTaken@64@01 r)) $Perm.No))
  
  :qid |quant-u-16324|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const x@65@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] true && (x in ys)
(push) ; 5
; [then-branch: 11 | False | live]
; [else-branch: 11 | True | live]
(push) ; 6
; [then-branch: 11 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 11 | True]
; [eval] (x in ys)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (Seq_contains ys@33@01 x@65@01))
(pop) ; 4
(declare-fun inv@66@01 ($Ref) $Ref)
(declare-fun img@67@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@65@01 $Ref) (x2@65@01 $Ref)) (!
  (=>
    (and
      (Seq_contains ys@33@01 x1@65@01)
      (Seq_contains ys@33@01 x2@65@01)
      (= x1@65@01 x2@65@01))
    (= x1@65@01 x2@65@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@65@01 $Ref)) (!
  (=>
    (Seq_contains ys@33@01 x@65@01)
    (and (= (inv@66@01 x@65@01) x@65@01) (img@67@01 x@65@01)))
  :pattern ((Seq_contains ys@33@01 x@65@01))
  :pattern ((Seq_contains_trigger ys@33@01 x@65@01))
  :pattern ((inv@66@01 x@65@01))
  :pattern ((img@67@01 x@65@01))
  :qid |p-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@67@01 r) (Seq_contains ys@33@01 (inv@66@01 r)))
    (= (inv@66@01 r) r))
  :pattern ((inv@66@01 r))
  :qid |p-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@68@01 ((r $Ref)) $Perm
  (ite
    (and (Seq_contains ys@33@01 (inv@66@01 r)) (img@67@01 r) (= r (inv@66@01 r)))
    ($Perm.min
      (ite
        (and (img@40@01 r) (Seq_contains ys@33@01 (inv@39@01 r)))
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
        (and (img@40@01 r) (Seq_contains ys@33@01 (inv@39@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@68@01 r))
    $Perm.No)
  
  :qid |quant-u-16327|))))
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
    (and (Seq_contains ys@33@01 (inv@66@01 r)) (img@67@01 r) (= r (inv@66@01 r)))
    (= (- $Perm.Write (pTaken@68@01 r)) $Perm.No))
  
  :qid |quant-u-16328|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (r in xs) ==> r.f == 4
; [eval] (r in xs)
(set-option :timeout 0)
(push) ; 4
; [then-branch: 12 | r@31@01 in xs@32@01 | dead]
; [else-branch: 12 | !(r@31@01 in xs@32@01) | live]
(push) ; 5
; [else-branch: 12 | !(r@31@01 in xs@32@01)]
(pop) ; 5
(pop) ; 4
; Joined path conditions
(pop) ; 3
(push) ; 3
; [else-branch: 9 | r@31@01 in xs@32@01]
(assert (Seq_contains xs@32@01 r@31@01))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- m4 ----------
(declare-const r@69@01 $Ref)
(declare-const xs@70@01 Seq<$Ref>)
(declare-const ys@71@01 Seq<$Ref>)
(declare-const r@72@01 $Ref)
(declare-const xs@73@01 Seq<$Ref>)
(declare-const ys@74@01 Seq<$Ref>)
(push) ; 1
(declare-const $t@75@01 $Snap)
(assert (= $t@75@01 ($Snap.combine ($Snap.first $t@75@01) ($Snap.second $t@75@01))))
(declare-const x@76@01 $Ref)
(push) ; 2
; [eval] true && (x in xs)
(push) ; 3
; [then-branch: 13 | False | live]
; [else-branch: 13 | True | live]
(push) ; 4
; [then-branch: 13 | False]
(assert false)
(pop) ; 4
(push) ; 4
; [else-branch: 13 | True]
; [eval] (x in xs)
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (Seq_contains xs@73@01 x@76@01))
(pop) ; 2
(declare-fun inv@77@01 ($Ref) $Ref)
(declare-fun img@78@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@76@01 $Ref) (x2@76@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@73@01 x1@76@01)
      (Seq_contains xs@73@01 x2@76@01)
      (= x1@76@01 x2@76@01))
    (= x1@76@01 x2@76@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@76@01 $Ref)) (!
  (=>
    (Seq_contains xs@73@01 x@76@01)
    (and (= (inv@77@01 x@76@01) x@76@01) (img@78@01 x@76@01)))
  :pattern ((Seq_contains xs@73@01 x@76@01))
  :pattern ((Seq_contains_trigger xs@73@01 x@76@01))
  :pattern ((Seq_contains_trigger xs@73@01 x@76@01))
  :pattern ((inv@77@01 x@76@01))
  :pattern ((img@78@01 x@76@01))
  :qid |quant-u-16330|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@78@01 r) (Seq_contains xs@73@01 (inv@77@01 r)))
    (= (inv@77@01 r) r))
  :pattern ((inv@77@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@76@01 $Ref)) (!
  (=> (Seq_contains xs@73@01 x@76@01) (not (= x@76@01 $Ref.null)))
  :pattern ((Seq_contains xs@73@01 x@76@01))
  :pattern ((Seq_contains_trigger xs@73@01 x@76@01))
  :pattern ((Seq_contains_trigger xs@73@01 x@76@01))
  :pattern ((inv@77@01 x@76@01))
  :pattern ((img@78@01 x@76@01))
  :qid |f-permImpliesNonNull|)))
(declare-const x@79@01 $Ref)
(push) ; 2
; [eval] true && (x in ys)
(push) ; 3
; [then-branch: 14 | False | live]
; [else-branch: 14 | True | live]
(push) ; 4
; [then-branch: 14 | False]
(assert false)
(pop) ; 4
(push) ; 4
; [else-branch: 14 | True]
; [eval] (x in ys)
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (Seq_contains ys@74@01 x@79@01))
(pop) ; 2
(declare-fun inv@80@01 ($Ref) $Ref)
(declare-fun img@81@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@79@01 $Ref) (x2@79@01 $Ref)) (!
  (=>
    (and
      (Seq_contains ys@74@01 x1@79@01)
      (Seq_contains ys@74@01 x2@79@01)
      (= x1@79@01 x2@79@01))
    (= x1@79@01 x2@79@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@79@01 $Ref)) (!
  (=>
    (Seq_contains ys@74@01 x@79@01)
    (and (= (inv@80@01 x@79@01) x@79@01) (img@81@01 x@79@01)))
  :pattern ((Seq_contains ys@74@01 x@79@01))
  :pattern ((Seq_contains_trigger ys@74@01 x@79@01))
  :pattern ((Seq_contains_trigger ys@74@01 x@79@01))
  :pattern ((inv@80@01 x@79@01))
  :pattern ((img@81@01 x@79@01))
  :qid |quant-u-16332|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@81@01 r) (Seq_contains ys@74@01 (inv@80@01 r)))
    (= (inv@80@01 r) r))
  :pattern ((inv@80@01 r))
  :qid |p-fctOfInv|)))
; Permissions are non-negative
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@82@01 $Snap)
(assert (= $t@82@01 ($Snap.combine ($Snap.first $t@82@01) ($Snap.second $t@82@01))))
(declare-const x@83@01 $Ref)
(push) ; 3
; [eval] true && (x in xs)
(push) ; 4
; [then-branch: 15 | False | live]
; [else-branch: 15 | True | live]
(push) ; 5
; [then-branch: 15 | False]
(assert false)
(pop) ; 5
(push) ; 5
; [else-branch: 15 | True]
; [eval] (x in xs)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (Seq_contains xs@73@01 x@83@01))
(pop) ; 3
(declare-fun inv@84@01 ($Ref) $Ref)
(declare-fun img@85@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@83@01 $Ref) (x2@83@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@73@01 x1@83@01)
      (Seq_contains xs@73@01 x2@83@01)
      (= x1@83@01 x2@83@01))
    (= x1@83@01 x2@83@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@83@01 $Ref)) (!
  (=>
    (Seq_contains xs@73@01 x@83@01)
    (and (= (inv@84@01 x@83@01) x@83@01) (img@85@01 x@83@01)))
  :pattern ((Seq_contains xs@73@01 x@83@01))
  :pattern ((Seq_contains_trigger xs@73@01 x@83@01))
  :pattern ((Seq_contains_trigger xs@73@01 x@83@01))
  :pattern ((inv@84@01 x@83@01))
  :pattern ((img@85@01 x@83@01))
  :qid |quant-u-16334|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@85@01 r) (Seq_contains xs@73@01 (inv@84@01 r)))
    (= (inv@84@01 r) r))
  :pattern ((inv@84@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@83@01 $Ref)) (!
  (=> (Seq_contains xs@73@01 x@83@01) (not (= x@83@01 $Ref.null)))
  :pattern ((Seq_contains xs@73@01 x@83@01))
  :pattern ((Seq_contains_trigger xs@73@01 x@83@01))
  :pattern ((Seq_contains_trigger xs@73@01 x@83@01))
  :pattern ((inv@84@01 x@83@01))
  :pattern ((img@85@01 x@83@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@82@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@82@01))
    ($Snap.second ($Snap.second $t@82@01)))))
(declare-const x@86@01 $Ref)
(push) ; 3
; [eval] true && (x in ys)
(push) ; 4
; [then-branch: 16 | False | live]
; [else-branch: 16 | True | live]
(push) ; 5
; [then-branch: 16 | False]
(assert false)
(pop) ; 5
(push) ; 5
; [else-branch: 16 | True]
; [eval] (x in ys)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (Seq_contains ys@74@01 x@86@01))
(pop) ; 3
(declare-fun inv@87@01 ($Ref) $Ref)
(declare-fun img@88@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@86@01 $Ref) (x2@86@01 $Ref)) (!
  (=>
    (and
      (Seq_contains ys@74@01 x1@86@01)
      (Seq_contains ys@74@01 x2@86@01)
      (= x1@86@01 x2@86@01))
    (= x1@86@01 x2@86@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@86@01 $Ref)) (!
  (=>
    (Seq_contains ys@74@01 x@86@01)
    (and (= (inv@87@01 x@86@01) x@86@01) (img@88@01 x@86@01)))
  :pattern ((Seq_contains ys@74@01 x@86@01))
  :pattern ((Seq_contains_trigger ys@74@01 x@86@01))
  :pattern ((Seq_contains_trigger ys@74@01 x@86@01))
  :pattern ((inv@87@01 x@86@01))
  :pattern ((img@88@01 x@86@01))
  :qid |quant-u-16336|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@88@01 r) (Seq_contains ys@74@01 (inv@87@01 r)))
    (= (inv@87@01 r) r))
  :pattern ((inv@87@01 r))
  :qid |p-fctOfInv|)))
; Permissions are non-negative
(assert (= ($Snap.second ($Snap.second $t@82@01)) $Snap.unit))
; [eval] (r in ys) ==> (unfolding acc(p(r), write) in r.f == 4)
; [eval] (r in ys)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (Seq_contains ys@74@01 r@72@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (Seq_contains ys@74@01 r@72@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 17 | r@72@01 in ys@74@01 | live]
; [else-branch: 17 | !(r@72@01 in ys@74@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 17 | r@72@01 in ys@74@01]
(assert (Seq_contains ys@74@01 r@72@01))
; [eval] (unfolding acc(p(r), write) in r.f == 4)
(push) ; 5
; Precomputing data for removing quantified permissions
(define-fun pTaken@89@01 ((r $Ref)) $Perm
  (ite
    (= r r@72@01)
    ($Perm.min
      (ite
        (and (img@88@01 r) (Seq_contains ys@74@01 (inv@87@01 r)))
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
        (and (img@88@01 r) (Seq_contains ys@74@01 (inv@87@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@89@01 r))
    $Perm.No)
  
  :qid |quant-u-16338|))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@89@01 r) $Perm.No)
  
  :qid |quant-u-16339|))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=> (= r r@72@01) (= (- $Perm.Write (pTaken@89@01 r)) $Perm.No))
  
  :qid |quant-u-16340|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@90@01 $PSF<p>)
(declare-const s@91@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and (img@88@01 r@72@01) (Seq_contains ys@74@01 (inv@87@01 r@72@01)))
  (and
    (not (= ($SortWrappers.$RefTo$Snap r@72@01) $Snap.unit))
    (=
      ($PSF.lookup_p (as sm@90@01  $PSF<p>) ($SortWrappers.$RefTo$Snap r@72@01))
      ($PSF.lookup_p ($SortWrappers.$SnapTo$PSF<p> ($Snap.first ($Snap.second $t@82@01))) ($SortWrappers.$RefTo$Snap r@72@01))))))
(assert (p%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_p (as sm@90@01  $PSF<p>) ($SortWrappers.$RefTo$Snap r@72@01))) r@72@01))
(declare-const sm@92@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@92@01  $FVF<f>) r@72@01)
  ($PSF.lookup_p (as sm@90@01  $PSF<p>) ($SortWrappers.$RefTo$Snap r@72@01))))
(assert (not (= r@72@01 $Ref.null)))
; [eval] r.f == 4
(declare-const sm@93@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@85@01 r) (Seq_contains xs@73@01 (inv@84@01 r)))
    (=
      ($FVF.lookup_f (as sm@93@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@82@01)) r)))
  :pattern (($FVF.lookup_f (as sm@93@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@82@01)) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r r@72@01)
    (=
      ($FVF.lookup_f (as sm@93@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@92@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@93@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@92@01  $FVF<f>) r))
  :qid |qp.fvfValDef5|)))
(declare-const pm@94@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@94@01  $FPM) r)
    (+
      (ite
        (and (img@85@01 r) (Seq_contains xs@73@01 (inv@84@01 r)))
        $Perm.Write
        $Perm.No)
      (ite (= r r@72@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@94@01  $FPM) r))
  :qid |qp.resPrmSumDef6|)))
(set-option :timeout 0)
(push) ; 6
(assert (not (< $Perm.No ($FVF.perm_f (as pm@94@01  $FPM) r@72@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@85@01 r) (Seq_contains xs@73@01 (inv@84@01 r)))
    (=
      ($FVF.lookup_f (as sm@93@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@82@01)) r)))
  :pattern (($FVF.lookup_f (as sm@93@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@82@01)) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r r@72@01)
    (=
      ($FVF.lookup_f (as sm@93@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@92@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@93@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@92@01  $FVF<f>) r))
  :qid |qp.fvfValDef5|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@94@01  $FPM) r)
    (+
      (ite
        (and (img@85@01 r) (Seq_contains xs@73@01 (inv@84@01 r)))
        $Perm.Write
        $Perm.No)
      (ite (= r r@72@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@94@01  $FPM) r))
  :qid |qp.resPrmSumDef6|)))
(assert (and
  (=>
    (and (img@88@01 r@72@01) (Seq_contains ys@74@01 (inv@87@01 r@72@01)))
    (and
      (not (= ($SortWrappers.$RefTo$Snap r@72@01) $Snap.unit))
      (=
        ($PSF.lookup_p (as sm@90@01  $PSF<p>) ($SortWrappers.$RefTo$Snap r@72@01))
        ($PSF.lookup_p ($SortWrappers.$SnapTo$PSF<p> ($Snap.first ($Snap.second $t@82@01))) ($SortWrappers.$RefTo$Snap r@72@01)))))
  (p%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_p (as sm@90@01  $PSF<p>) ($SortWrappers.$RefTo$Snap r@72@01))) r@72@01)))
(assert (and
  (=
    ($FVF.lookup_f (as sm@92@01  $FVF<f>) r@72@01)
    ($PSF.lookup_p (as sm@90@01  $PSF<p>) ($SortWrappers.$RefTo$Snap r@72@01)))
  (not (= r@72@01 $Ref.null))))
(pop) ; 4
(push) ; 4
; [else-branch: 17 | !(r@72@01 in ys@74@01)]
(assert (not (Seq_contains ys@74@01 r@72@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@85@01 r) (Seq_contains xs@73@01 (inv@84@01 r)))
    (=
      ($FVF.lookup_f (as sm@93@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@82@01)) r)))
  :pattern (($FVF.lookup_f (as sm@93@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@82@01)) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r r@72@01)
    (=
      ($FVF.lookup_f (as sm@93@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@92@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@93@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@92@01  $FVF<f>) r))
  :qid |qp.fvfValDef5|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@94@01  $FPM) r)
    (+
      (ite
        (and (img@85@01 r) (Seq_contains xs@73@01 (inv@84@01 r)))
        $Perm.Write
        $Perm.No)
      (ite (= r r@72@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@94@01  $FPM) r))
  :qid |qp.resPrmSumDef6|)))
(assert (=>
  (Seq_contains ys@74@01 r@72@01)
  (and
    (Seq_contains ys@74@01 r@72@01)
    (=>
      (and (img@88@01 r@72@01) (Seq_contains ys@74@01 (inv@87@01 r@72@01)))
      (and
        (not (= ($SortWrappers.$RefTo$Snap r@72@01) $Snap.unit))
        (=
          ($PSF.lookup_p (as sm@90@01  $PSF<p>) ($SortWrappers.$RefTo$Snap r@72@01))
          ($PSF.lookup_p ($SortWrappers.$SnapTo$PSF<p> ($Snap.first ($Snap.second $t@82@01))) ($SortWrappers.$RefTo$Snap r@72@01)))))
    (p%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_p (as sm@90@01  $PSF<p>) ($SortWrappers.$RefTo$Snap r@72@01))) r@72@01)
    (=
      ($FVF.lookup_f (as sm@92@01  $FVF<f>) r@72@01)
      ($PSF.lookup_p (as sm@90@01  $PSF<p>) ($SortWrappers.$RefTo$Snap r@72@01)))
    (not (= r@72@01 $Ref.null)))))
; Joined path conditions
(assert (or (not (Seq_contains ys@74@01 r@72@01)) (Seq_contains ys@74@01 r@72@01)))
(assert (=>
  (Seq_contains ys@74@01 r@72@01)
  (= ($FVF.lookup_f (as sm@93@01  $FVF<f>) r@72@01) 4)))
(pop) ; 2
(push) ; 2
; [eval] (r in ys)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (Seq_contains ys@74@01 r@72@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (Seq_contains ys@74@01 r@72@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 18 | r@72@01 in ys@74@01 | live]
; [else-branch: 18 | !(r@72@01 in ys@74@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 18 | r@72@01 in ys@74@01]
(assert (Seq_contains ys@74@01 r@72@01))
; [exec]
; unfold acc(p(r), write)
; Precomputing data for removing quantified permissions
(define-fun pTaken@95@01 ((r $Ref)) $Perm
  (ite
    (= r r@72@01)
    ($Perm.min
      (ite
        (and (img@81@01 r) (Seq_contains ys@74@01 (inv@80@01 r)))
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
        (and (img@81@01 r) (Seq_contains ys@74@01 (inv@80@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@95@01 r))
    $Perm.No)
  
  :qid |quant-u-16342|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@95@01 r) $Perm.No)
  
  :qid |quant-u-16343|))))
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
  (=> (= r r@72@01) (= (- $Perm.Write (pTaken@95@01 r)) $Perm.No))
  
  :qid |quant-u-16344|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@96@01 $PSF<p>)
(declare-const s@97@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and (img@81@01 r@72@01) (Seq_contains ys@74@01 (inv@80@01 r@72@01)))
  (and
    (not (= ($SortWrappers.$RefTo$Snap r@72@01) $Snap.unit))
    (=
      ($PSF.lookup_p (as sm@96@01  $PSF<p>) ($SortWrappers.$RefTo$Snap r@72@01))
      ($PSF.lookup_p ($SortWrappers.$SnapTo$PSF<p> ($Snap.second $t@75@01)) ($SortWrappers.$RefTo$Snap r@72@01))))))
(declare-const sm@98@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@98@01  $FVF<f>) r@72@01)
  ($PSF.lookup_p (as sm@96@01  $PSF<p>) ($SortWrappers.$RefTo$Snap r@72@01))))
(assert (not (= r@72@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (p%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_p (as sm@96@01  $PSF<p>) ($SortWrappers.$RefTo$Snap r@72@01))) r@72@01))
; [exec]
; r.f := 4
; Precomputing data for removing quantified permissions
(define-fun pTaken@99@01 ((r $Ref)) $Perm
  (ite
    (= r r@72@01)
    ($Perm.min (ite (= r r@72@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
(define-fun pTaken@100@01 ((r $Ref)) $Perm
  (ite
    (= r r@72@01)
    ($Perm.min
      (ite
        (and (img@78@01 r) (Seq_contains xs@73@01 (inv@77@01 r)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@99@01 r)))
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
(assert (not (= (- $Perm.Write (pTaken@99@01 r@72@01)) $Perm.No)))
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
  (=> (= r r@72@01) (= (- $Perm.Write (pTaken@99@01 r)) $Perm.No))
  
  :qid |quant-u-16347|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@101@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_f (as sm@101@01  $FVF<f>) r@72@01) 4))
; [exec]
; fold acc(p(r), write)
; Precomputing data for removing quantified permissions
(define-fun pTaken@102@01 ((r $Ref)) $Perm
  (ite
    (= r r@72@01)
    ($Perm.min (ite (= r r@72@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
(define-fun pTaken@103@01 ((r $Ref)) $Perm
  (ite
    (= r r@72@01)
    ($Perm.min
      (ite
        (and (img@78@01 r) (Seq_contains xs@73@01 (inv@77@01 r)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@102@01 r)))
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
(assert (not (= (- $Perm.Write (pTaken@102@01 r@72@01)) $Perm.No)))
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
  (=> (= r r@72@01) (= (- $Perm.Write (pTaken@102@01 r)) $Perm.No))
  
  :qid |quant-u-16350|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@104@01 $FVF<f>)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=
  ($FVF.lookup_f (as sm@104@01  $FVF<f>) r@72@01)
  ($FVF.lookup_f (as sm@101@01  $FVF<f>) r@72@01)))
(assert (=>
  (and (img@78@01 r@72@01) (Seq_contains xs@73@01 (inv@77@01 r@72@01)))
  (=
    ($FVF.lookup_f (as sm@104@01  $FVF<f>) r@72@01)
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@75@01)) r@72@01))))
(assert (p%trigger ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@104@01  $FVF<f>) r@72@01)) r@72@01))
(declare-const sm@105@01 $PSF<p>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p (as sm@105@01  $PSF<p>) ($SortWrappers.$RefTo$Snap r@72@01))
  ($FVF.lookup_f (as sm@104@01  $FVF<f>) r@72@01)))
(declare-const x@106@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] true && (x in xs)
(push) ; 5
; [then-branch: 19 | False | live]
; [else-branch: 19 | True | live]
(push) ; 6
; [then-branch: 19 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 19 | True]
; [eval] (x in xs)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (Seq_contains xs@73@01 x@106@01))
(pop) ; 4
(declare-fun inv@107@01 ($Ref) $Ref)
(declare-fun img@108@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@106@01 $Ref) (x2@106@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@73@01 x1@106@01)
      (Seq_contains xs@73@01 x2@106@01)
      (= x1@106@01 x2@106@01))
    (= x1@106@01 x2@106@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@106@01 $Ref)) (!
  (=>
    (Seq_contains xs@73@01 x@106@01)
    (and (= (inv@107@01 x@106@01) x@106@01) (img@108@01 x@106@01)))
  :pattern ((Seq_contains xs@73@01 x@106@01))
  :pattern ((Seq_contains_trigger xs@73@01 x@106@01))
  :pattern ((inv@107@01 x@106@01))
  :pattern ((img@108@01 x@106@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@108@01 r) (Seq_contains xs@73@01 (inv@107@01 r)))
    (= (inv@107@01 r) r))
  :pattern ((inv@107@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@109@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains xs@73@01 (inv@107@01 r))
      (img@108@01 r)
      (= r (inv@107@01 r)))
    ($Perm.min
      (ite
        (and (img@78@01 r) (Seq_contains xs@73@01 (inv@77@01 r)))
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
        (and (img@78@01 r) (Seq_contains xs@73@01 (inv@77@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@109@01 r))
    $Perm.No)
  
  :qid |quant-u-16353|))))
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
      (Seq_contains xs@73@01 (inv@107@01 r))
      (img@108@01 r)
      (= r (inv@107@01 r)))
    (= (- $Perm.Write (pTaken@109@01 r)) $Perm.No))
  
  :qid |quant-u-16354|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const x@110@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] true && (x in ys)
(push) ; 5
; [then-branch: 20 | False | live]
; [else-branch: 20 | True | live]
(push) ; 6
; [then-branch: 20 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 20 | True]
; [eval] (x in ys)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (Seq_contains ys@74@01 x@110@01))
(pop) ; 4
(declare-fun inv@111@01 ($Ref) $Ref)
(declare-fun img@112@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@110@01 $Ref) (x2@110@01 $Ref)) (!
  (=>
    (and
      (Seq_contains ys@74@01 x1@110@01)
      (Seq_contains ys@74@01 x2@110@01)
      (= x1@110@01 x2@110@01))
    (= x1@110@01 x2@110@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@110@01 $Ref)) (!
  (=>
    (Seq_contains ys@74@01 x@110@01)
    (and (= (inv@111@01 x@110@01) x@110@01) (img@112@01 x@110@01)))
  :pattern ((Seq_contains ys@74@01 x@110@01))
  :pattern ((Seq_contains_trigger ys@74@01 x@110@01))
  :pattern ((inv@111@01 x@110@01))
  :pattern ((img@112@01 x@110@01))
  :qid |p-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@112@01 r) (Seq_contains ys@74@01 (inv@111@01 r)))
    (= (inv@111@01 r) r))
  :pattern ((inv@111@01 r))
  :qid |p-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@113@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains ys@74@01 (inv@111@01 r))
      (img@112@01 r)
      (= r (inv@111@01 r)))
    ($Perm.min
      (ite
        (and (img@81@01 r) (Seq_contains ys@74@01 (inv@80@01 r)))
        (- $Perm.Write (pTaken@95@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@114@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains ys@74@01 (inv@111@01 r))
      (img@112@01 r)
      (= r (inv@111@01 r)))
    ($Perm.min
      (ite (= r r@72@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@113@01 r)))
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
        (and (img@81@01 r) (Seq_contains ys@74@01 (inv@80@01 r)))
        (- $Perm.Write (pTaken@95@01 r))
        $Perm.No)
      (pTaken@113@01 r))
    $Perm.No)
  
  :qid |quant-u-16357|))))
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
      (Seq_contains ys@74@01 (inv@111@01 r))
      (img@112@01 r)
      (= r (inv@111@01 r)))
    (= (- $Perm.Write (pTaken@113@01 r)) $Perm.No))
  
  :qid |quant-u-16358|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@114@01 r@72@01)) $Perm.No)))
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
      (Seq_contains ys@74@01 (inv@111@01 r))
      (img@112@01 r)
      (= r (inv@111@01 r)))
    (= (- (- $Perm.Write (pTaken@113@01 r)) (pTaken@114@01 r)) $Perm.No))
  
  :qid |quant-u-16360|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (r in ys) ==> (unfolding acc(p(r), write) in r.f == 4)
; [eval] (r in ys)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (Seq_contains ys@74@01 r@72@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 21 | r@72@01 in ys@74@01 | live]
; [else-branch: 21 | !(r@72@01 in ys@74@01) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 21 | r@72@01 in ys@74@01]
; [eval] (unfolding acc(p(r), write) in r.f == 4)
(push) ; 6
; Precomputing data for removing quantified permissions
(define-fun pTaken@115@01 ((r $Ref)) $Perm
  (ite
    (= r r@72@01)
    ($Perm.min (ite (= r r@72@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
(define-fun pTaken@116@01 ((r $Ref)) $Perm
  (ite
    (= r r@72@01)
    ($Perm.min
      (ite
        (and (img@81@01 r) (Seq_contains ys@74@01 (inv@80@01 r)))
        (- $Perm.Write (pTaken@95@01 r))
        $Perm.No)
      (- $Perm.Write (pTaken@115@01 r)))
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
(assert (not (= (- $Perm.Write (pTaken@115@01 r@72@01)) $Perm.No)))
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
  (=> (= r r@72@01) (= (- $Perm.Write (pTaken@115@01 r)) $Perm.No))
  
  :qid |quant-u-16363|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@117@01 $PSF<p>)
(declare-const s@118@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (and
  (not (= ($SortWrappers.$RefTo$Snap r@72@01) $Snap.unit))
  (=
    ($PSF.lookup_p (as sm@117@01  $PSF<p>) ($SortWrappers.$RefTo$Snap r@72@01))
    ($PSF.lookup_p (as sm@105@01  $PSF<p>) ($SortWrappers.$RefTo$Snap r@72@01)))))
(assert (=>
  (ite
    (and (img@81@01 r@72@01) (Seq_contains ys@74@01 (inv@80@01 r@72@01)))
    (< $Perm.No (- $Perm.Write (pTaken@95@01 r@72@01)))
    false)
  (and
    (not (= ($SortWrappers.$RefTo$Snap r@72@01) $Snap.unit))
    (=
      ($PSF.lookup_p (as sm@117@01  $PSF<p>) ($SortWrappers.$RefTo$Snap r@72@01))
      ($PSF.lookup_p ($SortWrappers.$SnapTo$PSF<p> ($Snap.second $t@75@01)) ($SortWrappers.$RefTo$Snap r@72@01))))))
(assert (p%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_p (as sm@117@01  $PSF<p>) ($SortWrappers.$RefTo$Snap r@72@01))) r@72@01))
(declare-const sm@119@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@119@01  $FVF<f>) r@72@01)
  ($PSF.lookup_p (as sm@117@01  $PSF<p>) ($SortWrappers.$RefTo$Snap r@72@01))))
; [eval] r.f == 4
(declare-const sm@120@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@78@01 r) (Seq_contains xs@73@01 (inv@77@01 r)))
    (=
      ($FVF.lookup_f (as sm@120@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@75@01)) r)))
  :pattern (($FVF.lookup_f (as sm@120@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@75@01)) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r r@72@01)
    (=
      ($FVF.lookup_f (as sm@120@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@119@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@120@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@119@01  $FVF<f>) r))
  :qid |qp.fvfValDef13|)))
(declare-const pm@121@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@121@01  $FPM) r)
    (+
      (ite
        (and (img@78@01 r) (Seq_contains xs@73@01 (inv@77@01 r)))
        $Perm.Write
        $Perm.No)
      (ite (= r r@72@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@121@01  $FPM) r))
  :qid |qp.resPrmSumDef14|)))
(set-option :timeout 0)
(push) ; 7
(assert (not (< $Perm.No ($FVF.perm_f (as pm@121@01  $FPM) r@72@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@78@01 r) (Seq_contains xs@73@01 (inv@77@01 r)))
    (=
      ($FVF.lookup_f (as sm@120@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@75@01)) r)))
  :pattern (($FVF.lookup_f (as sm@120@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@75@01)) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r r@72@01)
    (=
      ($FVF.lookup_f (as sm@120@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@119@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@120@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@119@01  $FVF<f>) r))
  :qid |qp.fvfValDef13|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@121@01  $FPM) r)
    (+
      (ite
        (and (img@78@01 r) (Seq_contains xs@73@01 (inv@77@01 r)))
        $Perm.Write
        $Perm.No)
      (ite (= r r@72@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@121@01  $FPM) r))
  :qid |qp.resPrmSumDef14|)))
(assert (and
  (not (= ($SortWrappers.$RefTo$Snap r@72@01) $Snap.unit))
  (=
    ($PSF.lookup_p (as sm@117@01  $PSF<p>) ($SortWrappers.$RefTo$Snap r@72@01))
    ($PSF.lookup_p (as sm@105@01  $PSF<p>) ($SortWrappers.$RefTo$Snap r@72@01)))
  (=>
    (ite
      (and (img@81@01 r@72@01) (Seq_contains ys@74@01 (inv@80@01 r@72@01)))
      (< $Perm.No (- $Perm.Write (pTaken@95@01 r@72@01)))
      false)
    (and
      (not (= ($SortWrappers.$RefTo$Snap r@72@01) $Snap.unit))
      (=
        ($PSF.lookup_p (as sm@117@01  $PSF<p>) ($SortWrappers.$RefTo$Snap r@72@01))
        ($PSF.lookup_p ($SortWrappers.$SnapTo$PSF<p> ($Snap.second $t@75@01)) ($SortWrappers.$RefTo$Snap r@72@01)))))
  (p%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_p (as sm@117@01  $PSF<p>) ($SortWrappers.$RefTo$Snap r@72@01))) r@72@01)))
(assert (=
  ($FVF.lookup_f (as sm@119@01  $FVF<f>) r@72@01)
  ($PSF.lookup_p (as sm@117@01  $PSF<p>) ($SortWrappers.$RefTo$Snap r@72@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@78@01 r) (Seq_contains xs@73@01 (inv@77@01 r)))
    (=
      ($FVF.lookup_f (as sm@120@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@75@01)) r)))
  :pattern (($FVF.lookup_f (as sm@120@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@75@01)) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r r@72@01)
    (=
      ($FVF.lookup_f (as sm@120@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@119@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@120@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@119@01  $FVF<f>) r))
  :qid |qp.fvfValDef13|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@121@01  $FPM) r)
    (+
      (ite
        (and (img@78@01 r) (Seq_contains xs@73@01 (inv@77@01 r)))
        $Perm.Write
        $Perm.No)
      (ite (= r r@72@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@121@01  $FPM) r))
  :qid |qp.resPrmSumDef14|)))
(assert (=>
  (Seq_contains ys@74@01 r@72@01)
  (and
    (not (= ($SortWrappers.$RefTo$Snap r@72@01) $Snap.unit))
    (=
      ($PSF.lookup_p (as sm@117@01  $PSF<p>) ($SortWrappers.$RefTo$Snap r@72@01))
      ($PSF.lookup_p (as sm@105@01  $PSF<p>) ($SortWrappers.$RefTo$Snap r@72@01)))
    (=>
      (ite
        (and (img@81@01 r@72@01) (Seq_contains ys@74@01 (inv@80@01 r@72@01)))
        (< $Perm.No (- $Perm.Write (pTaken@95@01 r@72@01)))
        false)
      (and
        (not (= ($SortWrappers.$RefTo$Snap r@72@01) $Snap.unit))
        (=
          ($PSF.lookup_p (as sm@117@01  $PSF<p>) ($SortWrappers.$RefTo$Snap r@72@01))
          ($PSF.lookup_p ($SortWrappers.$SnapTo$PSF<p> ($Snap.second $t@75@01)) ($SortWrappers.$RefTo$Snap r@72@01)))))
    (p%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_p (as sm@117@01  $PSF<p>) ($SortWrappers.$RefTo$Snap r@72@01))) r@72@01)
    (=
      ($FVF.lookup_f (as sm@119@01  $FVF<f>) r@72@01)
      ($PSF.lookup_p (as sm@117@01  $PSF<p>) ($SortWrappers.$RefTo$Snap r@72@01))))))
(push) ; 4
(assert (not (=>
  (Seq_contains ys@74@01 r@72@01)
  (= ($FVF.lookup_f (as sm@120@01  $FVF<f>) r@72@01) 4))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (Seq_contains ys@74@01 r@72@01)
  (= ($FVF.lookup_f (as sm@120@01  $FVF<f>) r@72@01) 4)))
(pop) ; 3
(push) ; 3
; [else-branch: 18 | !(r@72@01 in ys@74@01)]
(assert (not (Seq_contains ys@74@01 r@72@01)))
(pop) ; 3
; [eval] !((r in ys))
; [eval] (r in ys)
(push) ; 3
(set-option :timeout 10)
(assert (not (Seq_contains ys@74@01 r@72@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (Seq_contains ys@74@01 r@72@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 22 | !(r@72@01 in ys@74@01) | live]
; [else-branch: 22 | r@72@01 in ys@74@01 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 22 | !(r@72@01 in ys@74@01)]
(assert (not (Seq_contains ys@74@01 r@72@01)))
(declare-const x@122@01 $Ref)
(push) ; 4
; [eval] true && (x in xs)
(push) ; 5
; [then-branch: 23 | False | live]
; [else-branch: 23 | True | live]
(push) ; 6
; [then-branch: 23 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 23 | True]
; [eval] (x in xs)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (Seq_contains xs@73@01 x@122@01))
(pop) ; 4
(declare-fun inv@123@01 ($Ref) $Ref)
(declare-fun img@124@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@122@01 $Ref) (x2@122@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@73@01 x1@122@01)
      (Seq_contains xs@73@01 x2@122@01)
      (= x1@122@01 x2@122@01))
    (= x1@122@01 x2@122@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@122@01 $Ref)) (!
  (=>
    (Seq_contains xs@73@01 x@122@01)
    (and (= (inv@123@01 x@122@01) x@122@01) (img@124@01 x@122@01)))
  :pattern ((Seq_contains xs@73@01 x@122@01))
  :pattern ((Seq_contains_trigger xs@73@01 x@122@01))
  :pattern ((inv@123@01 x@122@01))
  :pattern ((img@124@01 x@122@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@124@01 r) (Seq_contains xs@73@01 (inv@123@01 r)))
    (= (inv@123@01 r) r))
  :pattern ((inv@123@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@125@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains xs@73@01 (inv@123@01 r))
      (img@124@01 r)
      (= r (inv@123@01 r)))
    ($Perm.min
      (ite
        (and (img@78@01 r) (Seq_contains xs@73@01 (inv@77@01 r)))
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
        (and (img@78@01 r) (Seq_contains xs@73@01 (inv@77@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@125@01 r))
    $Perm.No)
  
  :qid |quant-u-16366|))))
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
      (Seq_contains xs@73@01 (inv@123@01 r))
      (img@124@01 r)
      (= r (inv@123@01 r)))
    (= (- $Perm.Write (pTaken@125@01 r)) $Perm.No))
  
  :qid |quant-u-16367|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const x@126@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] true && (x in ys)
(push) ; 5
; [then-branch: 24 | False | live]
; [else-branch: 24 | True | live]
(push) ; 6
; [then-branch: 24 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 24 | True]
; [eval] (x in ys)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (Seq_contains ys@74@01 x@126@01))
(pop) ; 4
(declare-fun inv@127@01 ($Ref) $Ref)
(declare-fun img@128@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@126@01 $Ref) (x2@126@01 $Ref)) (!
  (=>
    (and
      (Seq_contains ys@74@01 x1@126@01)
      (Seq_contains ys@74@01 x2@126@01)
      (= x1@126@01 x2@126@01))
    (= x1@126@01 x2@126@01))
  
  :qid |p-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@126@01 $Ref)) (!
  (=>
    (Seq_contains ys@74@01 x@126@01)
    (and (= (inv@127@01 x@126@01) x@126@01) (img@128@01 x@126@01)))
  :pattern ((Seq_contains ys@74@01 x@126@01))
  :pattern ((Seq_contains_trigger ys@74@01 x@126@01))
  :pattern ((inv@127@01 x@126@01))
  :pattern ((img@128@01 x@126@01))
  :qid |p-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@128@01 r) (Seq_contains ys@74@01 (inv@127@01 r)))
    (= (inv@127@01 r) r))
  :pattern ((inv@127@01 r))
  :qid |p-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@129@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains ys@74@01 (inv@127@01 r))
      (img@128@01 r)
      (= r (inv@127@01 r)))
    ($Perm.min
      (ite
        (and (img@81@01 r) (Seq_contains ys@74@01 (inv@80@01 r)))
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
        (and (img@81@01 r) (Seq_contains ys@74@01 (inv@80@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@129@01 r))
    $Perm.No)
  
  :qid |quant-u-16370|))))
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
      (Seq_contains ys@74@01 (inv@127@01 r))
      (img@128@01 r)
      (= r (inv@127@01 r)))
    (= (- $Perm.Write (pTaken@129@01 r)) $Perm.No))
  
  :qid |quant-u-16371|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (r in ys) ==> (unfolding acc(p(r), write) in r.f == 4)
; [eval] (r in ys)
(set-option :timeout 0)
(push) ; 4
; [then-branch: 25 | r@72@01 in ys@74@01 | dead]
; [else-branch: 25 | !(r@72@01 in ys@74@01) | live]
(push) ; 5
; [else-branch: 25 | !(r@72@01 in ys@74@01)]
(pop) ; 5
(pop) ; 4
; Joined path conditions
(pop) ; 3
(push) ; 3
; [else-branch: 22 | r@72@01 in ys@74@01]
(assert (Seq_contains ys@74@01 r@72@01))
(pop) ; 3
(pop) ; 2
(pop) ; 1
