(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-08 21:21:32
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
(declare-sort Set<$Ref> 0)
(declare-sort Set<Int> 0)
(declare-sort Set<$Snap> 0)
(declare-sort $FVF<f> 0)
(declare-sort $PSF<p1> 0)
(declare-sort $PSF<wand@0> 0)
(declare-sort $MWSF 0)
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
; Declaring additional sort wrappers
(declare-fun $SortWrappers.$PSF<p1>To$Snap ($PSF<p1>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<p1> ($Snap) $PSF<p1>)
(assert (forall ((x $PSF<p1>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<p1>($SortWrappers.$PSF<p1>To$Snap x)))
    :pattern (($SortWrappers.$PSF<p1>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<p1>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<p1>To$Snap($SortWrappers.$SnapTo$PSF<p1> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<p1> x))
    :qid |$Snap.$PSF<p1>To$SnapTo$PSF<p1>|
    )))
(declare-fun $SortWrappers.$PSF<wand@0>To$Snap ($PSF<wand@0>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<wand@0> ($Snap) $PSF<wand@0>)
(assert (forall ((x $PSF<wand@0>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<wand@0>($SortWrappers.$PSF<wand@0>To$Snap x)))
    :pattern (($SortWrappers.$PSF<wand@0>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<wand@0>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<wand@0>To$Snap($SortWrappers.$SnapTo$PSF<wand@0> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<wand@0> x))
    :qid |$Snap.$PSF<wand@0>To$SnapTo$PSF<wand@0>|
    )))
; Declaring additional sort wrappers
(declare-fun $SortWrappers.$MWSFTo$Snap ($MWSF) $Snap)
(declare-fun $SortWrappers.$SnapTo$MWSF ($Snap) $MWSF)
(assert (forall ((x $MWSF)) (!
    (= x ($SortWrappers.$SnapTo$MWSF($SortWrappers.$MWSFTo$Snap x)))
    :pattern (($SortWrappers.$MWSFTo$Snap x))
    :qid |$Snap.$SnapTo$MWSFTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$MWSFTo$Snap($SortWrappers.$SnapTo$MWSF x)))
    :pattern (($SortWrappers.$SnapTo$MWSF x))
    :qid |$Snap.$MWSFTo$SnapTo$MWSF|
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
; /predicate_snap_functions_declarations.smt2 [p1: Snap]
(declare-fun $PSF.domain_p1 ($PSF<p1>) Set<$Snap>)
(declare-fun $PSF.lookup_p1 ($PSF<p1> $Snap) $Snap)
(declare-fun $PSF.after_p1 ($PSF<p1> $PSF<p1>) Bool)
(declare-fun $PSF.loc_p1 ($Snap $Snap) Bool)
(declare-fun $PSF.perm_p1 ($PPM $Snap) $Perm)
(declare-const $psfTOP_p1 $PSF<p1>)
; /predicate_snap_functions_declarations.smt2 [acc(Ref.f, write) --* acc(Ref.f, write): Snap]
(declare-fun $PSF.domain_wand@0 ($PSF<wand@0>) Set<$Snap>)
(declare-fun $PSF.lookup_wand@0 ($PSF<wand@0> $Snap) $Snap)
(declare-fun $PSF.after_wand@0 ($PSF<wand@0> $PSF<wand@0>) Bool)
(declare-fun $PSF.loc_wand@0 ($Snap $Snap) Bool)
(declare-fun $PSF.perm_wand@0 ($PPM $Snap) $Perm)
(declare-const $psfTOP_wand@0 $PSF<wand@0>)
(declare-fun MWSF_apply ($MWSF $Snap) $Snap)
; Declaring symbols related to program functions (from program analysis)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun p1%trigger ($Snap $Ref) Bool)
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
; /predicate_snap_functions_axioms.smt2 [p1: Snap]
(assert (forall ((vs $PSF<p1>) (ws $PSF<p1>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_p1 vs) ($PSF.domain_p1 ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_p1 vs))
            (= ($PSF.lookup_p1 vs x) ($PSF.lookup_p1 ws x)))
          :pattern (($PSF.lookup_p1 vs x) ($PSF.lookup_p1 ws x))
          :qid |qp.$PSF<p1>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<p1>To$Snap vs)
              ($SortWrappers.$PSF<p1>To$Snap ws)
              )
    :qid |qp.$PSF<p1>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_p1 pm s))
    :pattern (($PSF.perm_p1 pm s)))))
(assert (forall ((s $Snap) (f $Snap)) (!
    (= ($PSF.loc_p1 f s) true)
    :pattern (($PSF.loc_p1 f s)))))
; /predicate_snap_functions_axioms.smt2 [wand@0: Snap]
(assert (forall ((vs $PSF<wand@0>) (ws $PSF<wand@0>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_wand@0 vs) ($PSF.domain_wand@0 ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_wand@0 vs))
            (= ($PSF.lookup_wand@0 vs x) ($PSF.lookup_wand@0 ws x)))
          :pattern (($PSF.lookup_wand@0 vs x) ($PSF.lookup_wand@0 ws x))
          :qid |qp.$PSF<wand@0>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<wand@0>To$Snap vs)
              ($SortWrappers.$PSF<wand@0>To$Snap ws)
              )
    :qid |qp.$PSF<wand@0>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_wand@0 pm s))
    :pattern (($PSF.perm_wand@0 pm s)))))
(assert (forall ((s $Snap) (f $Snap)) (!
    (= ($PSF.loc_wand@0 f s) true)
    :pattern (($PSF.loc_wand@0 f s)))))
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
(declare-const xs@0@01 Set<$Ref>)
(declare-const y@1@01 $Ref)
(declare-const zs@2@01 Seq<$Ref>)
(declare-const xs@3@01 Set<$Ref>)
(declare-const y@4@01 $Ref)
(declare-const zs@5@01 Seq<$Ref>)
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
; var z: Ref
(declare-const z@6@01 $Ref)
; [exec]
; inhale (forall x: Ref ::x == y ==> acc(x.f, write))
(declare-const x@7@01 $Ref)
(push) ; 3
; [eval] x == y
(assert (= x@7@01 y@4@01))
(pop) ; 3
(declare-const $t@8@01 $FVF<f>)
(declare-fun inv@9@01 ($Ref) $Ref)
(declare-fun img@10@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@7@01 $Ref) (x2@7@01 $Ref)) (!
  (=>
    (and (= x1@7@01 y@4@01) (= x2@7@01 y@4@01) (= x1@7@01 x2@7@01))
    (= x1@7@01 x2@7@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@7@01 $Ref)) (!
  (=> (= x@7@01 y@4@01) (and (= (inv@9@01 x@7@01) x@7@01) (img@10@01 x@7@01)))
  :pattern ((inv@9@01 x@7@01))
  :pattern ((img@10@01 x@7@01))
  :qid |quant-u-21483|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@10@01 r) (= (inv@9@01 r) y@4@01)) (= (inv@9@01 r) r))
  :pattern ((inv@9@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@7@01 $Ref)) (!
  (=> (= x@7@01 y@4@01) (not (= x@7@01 $Ref.null)))
  :pattern ((inv@9@01 x@7@01))
  :pattern ((img@10@01 x@7@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall x: Ref ::
;     { acc(x.f, write) --* acc(y.f, write) }
;     (x in xs) ==> acc(x.f, write) --* acc(y.f, write))
(declare-const x@11@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs)
(assert (Set_in x@11@01 xs@3@01))
(declare-const sm@12@01 $PSF<wand@0>)
(declare-const s@13@01 $Snap)
; Definitional axioms for snapshot map values
(pop) ; 3
(declare-const $t@14@01 $PSF<wand@0>)
(declare-fun inv@15@01 ($Ref $Perm $Ref $Perm) $Ref)
(declare-fun img@16@01 ($Ref $Perm $Ref $Perm) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@11@01 $Ref) (x2@11@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@11@01 xs@3@01)
      (Set_in x2@11@01 xs@3@01)
      (= x1@11@01 x2@11@01))
    (= x1@11@01 x2@11@01))
  
  :qid |wand@0-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@11@01 $Ref)) (!
  (=>
    (Set_in x@11@01 xs@3@01)
    (and
      (= (inv@15@01 x@11@01 $Perm.Write y@4@01 $Perm.Write) x@11@01)
      (img@16@01 x@11@01 $Perm.Write y@4@01 $Perm.Write)))
  :pattern (($PSF.loc_wand@0 ($PSF.lookup_wand@0 $t@14@01 ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@11@01)
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@4@01))
    ($SortWrappers.$PermTo$Snap $Perm.Write))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@11@01)
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@4@01))
    ($SortWrappers.$PermTo$Snap $Perm.Write))))
  :qid |quant-u-21485|)))
(assert (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm)) (!
  (=>
    (and (img@16@01 x0 x1 x2 x3) (Set_in (inv@15@01 x0 x1 x2 x3) xs@3@01))
    (and
      (= (inv@15@01 x0 x1 x2 x3) x0)
      (= $Perm.Write x1)
      (= y@4@01 x2)
      (= $Perm.Write x3)))
  :pattern ((inv@15@01 x0 x1 x2 x3))
  :qid |wand@0-fctOfInv|)))
; Permissons are non-negative
(declare-const sm@17@01 $PSF<wand@0>)
(declare-const s@18@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@18@01 $Snap)) (!
  (=>
    (and
      (img@16@01 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.first s@18@01)))) ($SortWrappers.$SnapTo$Perm ($Snap.second ($Snap.first ($Snap.first s@18@01)))) ($SortWrappers.$SnapTo$Ref ($Snap.second ($Snap.first s@18@01))) ($SortWrappers.$SnapTo$Perm ($Snap.second s@18@01)))
      (Set_in (inv@15@01 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.first s@18@01)))) ($SortWrappers.$SnapTo$Perm ($Snap.second ($Snap.first ($Snap.first s@18@01)))) ($SortWrappers.$SnapTo$Ref ($Snap.second ($Snap.first s@18@01))) ($SortWrappers.$SnapTo$Perm ($Snap.second s@18@01))) xs@3@01))
    (and
      (not (= s@18@01 $Snap.unit))
      (=
        ($PSF.lookup_wand@0 (as sm@17@01  $PSF<wand@0>) s@18@01)
        ($PSF.lookup_wand@0 $t@14@01 s@18@01))))
  :pattern (($PSF.lookup_wand@0 (as sm@17@01  $PSF<wand@0>) s@18@01))
  :pattern (($PSF.lookup_wand@0 $t@14@01 s@18@01))
  :qid |qp.psmValDef1|)))
(assert (forall ((s@18@01 $Snap)) (!
  ($PSF.loc_wand@0 ($PSF.lookup_wand@0 $t@14@01 s@18@01) s@18@01)
  :pattern (($PSF.lookup_wand@0 (as sm@17@01  $PSF<wand@0>) s@18@01))
  :qid |qp.psmResTrgDef2|)))
(assert (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm)) (!
  (=>
    (Set_in (inv@15@01 x0 x1 x2 x3) xs@3@01)
    ($PSF.loc_wand@0 ($PSF.lookup_wand@0 (as sm@17@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap x0)
          ($SortWrappers.$PermTo$Snap x1))
        ($SortWrappers.$RefTo$Snap x2))
      ($SortWrappers.$PermTo$Snap x3))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap x0)
          ($SortWrappers.$PermTo$Snap x1))
        ($SortWrappers.$RefTo$Snap x2))
      ($SortWrappers.$PermTo$Snap x3))))
  :pattern ((inv@15@01 x0 x1 x2 x3))
  :qid |quant-u-21486|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall x: Ref ::
;     { acc(x.f, write) --* acc(y.f, write) }
;     (x in zs) ==> x != y)
(declare-const $t@19@01 $Snap)
(assert (= $t@19@01 $Snap.unit))
; [eval] (forall x: Ref :: { acc(x.f, write) --* acc(y.f, write) } (x in zs) ==> x != y)
(declare-const x@20@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in zs) ==> x != y
; [eval] (x in zs)
(push) ; 4
; [then-branch: 0 | x@20@01 in zs@5@01 | live]
; [else-branch: 0 | !(x@20@01 in zs@5@01) | live]
(push) ; 5
; [then-branch: 0 | x@20@01 in zs@5@01]
(assert (Seq_contains zs@5@01 x@20@01))
; [eval] x != y
(pop) ; 5
(push) ; 5
; [else-branch: 0 | !(x@20@01 in zs@5@01)]
(assert (not (Seq_contains zs@5@01 x@20@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not (Seq_contains zs@5@01 x@20@01)) (Seq_contains zs@5@01 x@20@01)))
; Definitional axioms for snapshot map values
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@20@01 $Ref)) (!
  (or (not (Seq_contains zs@5@01 x@20@01)) (Seq_contains zs@5@01 x@20@01))
  :pattern (($PSF.loc_wand@0 ($PSF.lookup_wand@0 (as sm@17@01  $PSF<wand@0>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@20@01)
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@4@01))
    ($SortWrappers.$PermTo$Snap $Perm.Write))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@20@01)
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@4@01))
    ($SortWrappers.$PermTo$Snap $Perm.Write))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/heap-dependent_triggers/triggerFoldPackage.vpr@9@12@9@71-aux|)))
(assert (forall ((x@20@01 $Ref)) (!
  (=> (Seq_contains zs@5@01 x@20@01) (not (= x@20@01 y@4@01)))
  :pattern (($PSF.loc_wand@0 ($PSF.lookup_wand@0 (as sm@17@01  $PSF<wand@0>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@20@01)
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@4@01))
    ($SortWrappers.$PermTo$Snap $Perm.Write))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@20@01)
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@4@01))
    ($SortWrappers.$PermTo$Snap $Perm.Write))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/heap-dependent_triggers/triggerFoldPackage.vpr@9@12@9@71|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (z in zs)
(declare-const $t@21@01 $Snap)
(assert (= $t@21@01 $Snap.unit))
; [eval] (z in zs)
(assert (Seq_contains zs@5@01 z@6@01))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale !((z in xs))
(declare-const $t@22@01 $Snap)
(assert (= $t@22@01 $Snap.unit))
; [eval] !((z in xs))
; [eval] (z in xs)
(assert (not (Set_in z@6@01 xs@3@01)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; package acc(z.f, write) --* acc(y.f, write) {
; }
(set-option :timeout 0)
(push) ; 3
(declare-const $t@23@01 $Snap)
(declare-const sm@24@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@24@01  $FVF<f>) z@6@01)
  ($SortWrappers.$SnapToInt $t@23@01)))
(assert (not (= z@6@01 $Ref.null)))
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=> (= r y@4@01) false)
  
  :qid |quant-u-21487|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@25@01 $FVF<f>)
; Definitional axioms for snapshot map values (instantiated)
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= z@6@01 y@4@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@26@01 ((r $Ref)) $Perm
  (ite
    (= r y@4@01)
    ($Perm.min (ite (= r z@6@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@26@01 z@6@01)) $Perm.No)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@26@01 r) $Perm.No)
  
  :qid |quant-u-21490|))))
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
  (=> (= r y@4@01) (= (- $Perm.Write (pTaken@26@01 r)) $Perm.No))
  
  :qid |quant-u-21491|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=> (= r y@4@01) (= (- $Perm.Write (pTaken@26@01 r)) $Perm.No))
  
  :qid |quant-u-21491|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@27@01 $FVF<f>)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (= y@4@01 z@6@01)
  (=
    ($FVF.lookup_f (as sm@27@01  $FVF<f>) y@4@01)
    ($FVF.lookup_f (as sm@24@01  $FVF<f>) y@4@01))))
(assert (= (as sm@25@01  $FVF<f>) (as sm@27@01  $FVF<f>)))
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@28@01 ((r $Ref)) $Perm
  (ite
    (= r y@4@01)
    ($Perm.min
      (ite (and (img@10@01 r) (= (inv@9@01 r) y@4@01)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@26@01 r)))
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
      (ite (and (img@10@01 r) (= (inv@9@01 r) y@4@01)) $Perm.Write $Perm.No)
      (pTaken@28@01 r))
    $Perm.No)
  
  :qid |quant-u-21493|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@28@01 r) $Perm.No)
  
  :qid |quant-u-21494|))))
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
    (= r y@4@01)
    (= (- (- $Perm.Write (pTaken@26@01 r)) (pTaken@28@01 r)) $Perm.No))
  
  :qid |quant-u-21495|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@29@01 $FVF<f>)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and (img@10@01 y@4@01) (= (inv@9@01 y@4@01) y@4@01))
  (=
    ($FVF.lookup_f (as sm@29@01  $FVF<f>) y@4@01)
    ($FVF.lookup_f $t@8@01 y@4@01))))
(assert (= (as sm@25@01  $FVF<f>) (as sm@29@01  $FVF<f>)))
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const $t@30@01 $FVF<f>)
(declare-const $t@31@01 $FVF<f>)
(assert (forall ((r $Ref)) (!
  (=>
    (ite (= r y@4@01) (< $Perm.No (pTaken@26@01 r)) false)
    (= ($FVF.lookup_f $t@30@01 r) ($FVF.lookup_f (as sm@27@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@25@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@27@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@30@01 r))
  :qid |quant-u-21496|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (ite (= r y@4@01) (< $Perm.No (pTaken@26@01 r)) false)
      (= ($FVF.lookup_f $t@31@01 r) ($FVF.lookup_f $t@30@01 r)))
    (=>
      (ite (= r y@4@01) (< $Perm.No (- $Perm.Write (pTaken@26@01 r))) false)
      (= ($FVF.lookup_f $t@31@01 r) ($FVF.lookup_f (as sm@29@01  $FVF<f>) r))))
  :pattern (($FVF.lookup_f $t@30@01 r))
  :pattern (($FVF.lookup_f (as sm@29@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@31@01 r))
  :qid |quant-u-21497|)))
; Create MagicWandSnapFunction for wand acc(z.f, write) --* acc(y.f, write)
(declare-const mwsf@32@01 $MWSF)
(assert (forall (($t@23@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@32@01 $t@23@01)
    ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@29@01  $FVF<f>) y@4@01)))
  :pattern ((MWSF_apply mwsf@32@01 $t@23@01))
  :qid |quant-u-21498|)))
(declare-const sm@33@01 $PSF<wand@0>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_wand@0 (as sm@33@01  $PSF<wand@0>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap z@6@01)
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@4@01))
    ($SortWrappers.$PermTo$Snap $Perm.Write)))
  ($Snap.combine
    $t@23@01
    ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@29@01  $FVF<f>) y@4@01)))))
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
(assert (=
  ($FVF.lookup_f (as sm@24@01  $FVF<f>) z@6@01)
  ($SortWrappers.$SnapToInt $t@23@01)))
(assert (and
  (=>
    (= y@4@01 z@6@01)
    (=
      ($FVF.lookup_f (as sm@27@01  $FVF<f>) y@4@01)
      ($FVF.lookup_f (as sm@24@01  $FVF<f>) y@4@01)))
  (= (as sm@25@01  $FVF<f>) (as sm@27@01  $FVF<f>))
  (=>
    (and (img@10@01 y@4@01) (= (inv@9@01 y@4@01) y@4@01))
    (=
      ($FVF.lookup_f (as sm@29@01  $FVF<f>) y@4@01)
      ($FVF.lookup_f $t@8@01 y@4@01)))
  (= (as sm@25@01  $FVF<f>) (as sm@29@01  $FVF<f>))))
(assert (and
  (forall (($t@23@01 $Snap)) (!
    (=
      (MWSF_apply mwsf@32@01 $t@23@01)
      ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@29@01  $FVF<f>) y@4@01)))
    :pattern ((MWSF_apply mwsf@32@01 $t@23@01))
    :qid |quant-u-21498|))
  (=
    ($PSF.lookup_wand@0 (as sm@33@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap z@6@01)
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@4@01))
      ($SortWrappers.$PermTo$Snap $Perm.Write)))
    ($Snap.combine
      $t@23@01
      ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@29@01  $FVF<f>) y@4@01))))))
(declare-const sm@34@01 $PSF<wand@0>)
(declare-const s@35@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@35@01 $Snap)) (!
  (=>
    (and
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.first s@35@01))))
        z@6@01)
      (=
        ($SortWrappers.$SnapTo$Perm ($Snap.second ($Snap.first ($Snap.first s@35@01))))
        $Perm.Write)
      (= ($SortWrappers.$SnapTo$Ref ($Snap.second ($Snap.first s@35@01))) y@4@01)
      (= ($SortWrappers.$SnapTo$Perm ($Snap.second s@35@01)) $Perm.Write))
    (and
      (not (= s@35@01 $Snap.unit))
      (=
        ($PSF.lookup_wand@0 (as sm@34@01  $PSF<wand@0>) s@35@01)
        ($PSF.lookup_wand@0 (as sm@33@01  $PSF<wand@0>) s@35@01))))
  :pattern (($PSF.lookup_wand@0 (as sm@34@01  $PSF<wand@0>) s@35@01))
  :pattern (($PSF.lookup_wand@0 (as sm@33@01  $PSF<wand@0>) s@35@01))
  :qid |qp.psmValDef5|)))
(assert (forall ((s@35@01 $Snap)) (!
  (=>
    (and
      (img@16@01 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.first s@35@01)))) ($SortWrappers.$SnapTo$Perm ($Snap.second ($Snap.first ($Snap.first s@35@01)))) ($SortWrappers.$SnapTo$Ref ($Snap.second ($Snap.first s@35@01))) ($SortWrappers.$SnapTo$Perm ($Snap.second s@35@01)))
      (Set_in (inv@15@01 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.first s@35@01)))) ($SortWrappers.$SnapTo$Perm ($Snap.second ($Snap.first ($Snap.first s@35@01)))) ($SortWrappers.$SnapTo$Ref ($Snap.second ($Snap.first s@35@01))) ($SortWrappers.$SnapTo$Perm ($Snap.second s@35@01))) xs@3@01))
    (and
      (not (= s@35@01 $Snap.unit))
      (=
        ($PSF.lookup_wand@0 (as sm@34@01  $PSF<wand@0>) s@35@01)
        ($PSF.lookup_wand@0 $t@14@01 s@35@01))))
  :pattern (($PSF.lookup_wand@0 (as sm@34@01  $PSF<wand@0>) s@35@01))
  :pattern (($PSF.lookup_wand@0 $t@14@01 s@35@01))
  :qid |qp.psmValDef6|)))
(assert (forall ((s@35@01 $Snap)) (!
  (and
    ($PSF.loc_wand@0 ($PSF.lookup_wand@0 (as sm@33@01  $PSF<wand@0>) s@35@01) s@35@01)
    ($PSF.loc_wand@0 ($PSF.lookup_wand@0 $t@14@01 s@35@01) s@35@01))
  :pattern (($PSF.lookup_wand@0 (as sm@34@01  $PSF<wand@0>) s@35@01))
  :qid |qp.psmResTrgDef7|)))
(assert ($PSF.loc_wand@0 ($PSF.lookup_wand@0 (as sm@34@01  $PSF<wand@0>) ($Snap.combine
  ($Snap.combine
    ($Snap.combine
      ($SortWrappers.$RefTo$Snap z@6@01)
      ($SortWrappers.$PermTo$Snap $Perm.Write))
    ($SortWrappers.$RefTo$Snap y@4@01))
  ($SortWrappers.$PermTo$Snap $Perm.Write))) ($Snap.combine
  ($Snap.combine
    ($Snap.combine
      ($SortWrappers.$RefTo$Snap z@6@01)
      ($SortWrappers.$PermTo$Snap $Perm.Write))
    ($SortWrappers.$RefTo$Snap y@4@01))
  ($SortWrappers.$PermTo$Snap $Perm.Write))))
; [exec]
; assert z != y
; [eval] z != y
(push) ; 4
(assert (not (not (= z@6@01 y@4@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= z@6@01 y@4@01)))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- m2 ----------
(declare-const xs@36@01 Set<$Ref>)
(declare-const ys@37@01 Set<$Ref>)
(declare-const z@38@01 $Ref)
(declare-const xs@39@01 Set<$Ref>)
(declare-const ys@40@01 Set<$Ref>)
(declare-const z@41@01 $Ref)
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
; var y: Ref
(declare-const y@42@01 $Ref)
; [exec]
; inhale (forall x: Ref ::x == z ==> acc(x.f, write))
(declare-const x@43@01 $Ref)
(push) ; 3
; [eval] x == z
(assert (= x@43@01 z@41@01))
(pop) ; 3
(declare-const $t@44@01 $FVF<f>)
(declare-fun inv@45@01 ($Ref) $Ref)
(declare-fun img@46@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@43@01 $Ref) (x2@43@01 $Ref)) (!
  (=>
    (and (= x1@43@01 z@41@01) (= x2@43@01 z@41@01) (= x1@43@01 x2@43@01))
    (= x1@43@01 x2@43@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@43@01 $Ref)) (!
  (=>
    (= x@43@01 z@41@01)
    (and (= (inv@45@01 x@43@01) x@43@01) (img@46@01 x@43@01)))
  :pattern ((inv@45@01 x@43@01))
  :pattern ((img@46@01 x@43@01))
  :qid |quant-u-21500|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@46@01 r) (= (inv@45@01 r) z@41@01)) (= (inv@45@01 r) r))
  :pattern ((inv@45@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@43@01 $Ref)) (!
  (=> (= x@43@01 z@41@01) (not (= x@43@01 $Ref.null)))
  :pattern ((inv@45@01 x@43@01))
  :pattern ((img@46@01 x@43@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall x: Ref :: { p1(x) } (x in xs) ==> acc(p1(x), write))
(declare-const x@47@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs)
(assert (Set_in x@47@01 xs@39@01))
(declare-const sm@48@01 $PSF<p1>)
(declare-const s@49@01 $Snap)
; Definitional axioms for snapshot map values
(pop) ; 3
(declare-const $t@50@01 $PSF<p1>)
(declare-fun inv@51@01 ($Ref) $Ref)
(declare-fun img@52@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@47@01 $Ref) (x2@47@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@47@01 xs@39@01)
      (Set_in x2@47@01 xs@39@01)
      (= x1@47@01 x2@47@01))
    (= x1@47@01 x2@47@01))
  
  :qid |p1-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@47@01 $Ref)) (!
  (=>
    (Set_in x@47@01 xs@39@01)
    (and (= (inv@51@01 x@47@01) x@47@01) (img@52@01 x@47@01)))
  :pattern (($PSF.loc_p1 ($PSF.lookup_p1 $t@50@01 ($SortWrappers.$RefTo$Snap x@47@01)) ($SortWrappers.$RefTo$Snap x@47@01)))
  :qid |quant-u-21502|)))
(assert (forall ((x $Ref)) (!
  (=> (and (img@52@01 x) (Set_in (inv@51@01 x) xs@39@01)) (= (inv@51@01 x) x))
  :pattern ((inv@51@01 x))
  :qid |p1-fctOfInv|)))
; Permissions are non-negative
(declare-const sm@53@01 $PSF<p1>)
(declare-const s@54@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@54@01 $Snap)) (!
  (=>
    (and
      (img@52@01 ($SortWrappers.$SnapTo$Ref s@54@01))
      (Set_in (inv@51@01 ($SortWrappers.$SnapTo$Ref s@54@01)) xs@39@01))
    (and
      (not (= s@54@01 $Snap.unit))
      (=
        ($PSF.lookup_p1 (as sm@53@01  $PSF<p1>) s@54@01)
        ($PSF.lookup_p1 $t@50@01 s@54@01))))
  :pattern (($PSF.lookup_p1 (as sm@53@01  $PSF<p1>) s@54@01))
  :pattern (($PSF.lookup_p1 $t@50@01 s@54@01))
  :qid |qp.psmValDef9|)))
(assert (forall ((s@54@01 $Snap)) (!
  ($PSF.loc_p1 ($PSF.lookup_p1 $t@50@01 s@54@01) s@54@01)
  :pattern (($PSF.lookup_p1 (as sm@53@01  $PSF<p1>) s@54@01))
  :qid |qp.psmResTrgDef10|)))
(assert (forall ((x $Ref)) (!
  (=>
    (Set_in (inv@51@01 x) xs@39@01)
    ($PSF.loc_p1 ($PSF.lookup_p1 (as sm@53@01  $PSF<p1>) ($SortWrappers.$RefTo$Snap x)) ($SortWrappers.$RefTo$Snap x)))
  :pattern ((inv@51@01 x))
  :qid |quant-u-21503|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall x: Ref :: { p1(x) } (x in ys) ==> x != z)
(declare-const $t@55@01 $Snap)
(assert (= $t@55@01 $Snap.unit))
; [eval] (forall x: Ref :: { p1(x) } (x in ys) ==> x != z)
(declare-const x@56@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in ys) ==> x != z
; [eval] (x in ys)
(push) ; 4
; [then-branch: 1 | x@56@01 in ys@40@01 | live]
; [else-branch: 1 | !(x@56@01 in ys@40@01) | live]
(push) ; 5
; [then-branch: 1 | x@56@01 in ys@40@01]
(assert (Set_in x@56@01 ys@40@01))
; [eval] x != z
(pop) ; 5
(push) ; 5
; [else-branch: 1 | !(x@56@01 in ys@40@01)]
(assert (not (Set_in x@56@01 ys@40@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in x@56@01 ys@40@01)) (Set_in x@56@01 ys@40@01)))
; Definitional axioms for snapshot map values
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@56@01 $Ref)) (!
  (or (not (Set_in x@56@01 ys@40@01)) (Set_in x@56@01 ys@40@01))
  :pattern (($PSF.loc_p1 ($PSF.lookup_p1 (as sm@53@01  $PSF<p1>) ($SortWrappers.$RefTo$Snap x@56@01)) ($SortWrappers.$RefTo$Snap x@56@01)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/heap-dependent_triggers/triggerFoldPackage.vpr@23@12@23@55-aux|)))
(assert (forall ((x@56@01 $Ref)) (!
  (=> (Set_in x@56@01 ys@40@01) (not (= x@56@01 z@41@01)))
  :pattern (($PSF.loc_p1 ($PSF.lookup_p1 (as sm@53@01  $PSF<p1>) ($SortWrappers.$RefTo$Snap x@56@01)) ($SortWrappers.$RefTo$Snap x@56@01)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/heap-dependent_triggers/triggerFoldPackage.vpr@23@12@23@55|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale !((y in xs))
(declare-const $t@57@01 $Snap)
(assert (= $t@57@01 $Snap.unit))
; [eval] !((y in xs))
; [eval] (y in xs)
(assert (not (Set_in y@42@01 xs@39@01)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale acc(y.f, write)
(declare-const $t@58@01 Int)
(declare-const sm@59@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (= ($FVF.lookup_f (as sm@59@01  $FVF<f>) y@42@01) $t@58@01))
(assert (not (= y@42@01 $Ref.null)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (y in ys)
(declare-const $t@60@01 $Snap)
(assert (= $t@60@01 $Snap.unit))
; [eval] (y in ys)
(assert (Set_in y@42@01 ys@40@01))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale y.f == 0
(declare-const $t@61@01 $Snap)
(assert (= $t@61@01 $Snap.unit))
; [eval] y.f == 0
(declare-const sm@62@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@46@01 r) (= (inv@45@01 r) z@41@01))
    (= ($FVF.lookup_f (as sm@62@01  $FVF<f>) r) ($FVF.lookup_f $t@44@01 r)))
  :pattern (($FVF.lookup_f (as sm@62@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@44@01 r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@42@01)
    (=
      ($FVF.lookup_f (as sm@62@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@59@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@62@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@59@01  $FVF<f>) r))
  :qid |qp.fvfValDef12|)))
(declare-const pm@63@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@63@01  $FPM) r)
    (+
      (ite (and (img@46@01 r) (= (inv@45@01 r) z@41@01)) $Perm.Write $Perm.No)
      (ite (= r y@42@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@63@01  $FPM) r))
  :qid |qp.resPrmSumDef13|)))
(set-option :timeout 0)
(push) ; 3
(assert (not (< $Perm.No ($FVF.perm_f (as pm@63@01  $FPM) y@42@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= ($FVF.lookup_f (as sm@62@01  $FVF<f>) y@42@01) 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; fold acc(p1(y), write)
; Precomputing data for removing quantified permissions
(define-fun pTaken@64@01 ((r $Ref)) $Perm
  (ite
    (= r y@42@01)
    ($Perm.min (ite (= r y@42@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
(define-fun pTaken@65@01 ((r $Ref)) $Perm
  (ite
    (= r y@42@01)
    ($Perm.min
      (ite (and (img@46@01 r) (= (inv@45@01 r) z@41@01)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@64@01 r)))
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
(assert (not (= (- $Perm.Write (pTaken@64@01 y@42@01)) $Perm.No)))
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
  (=> (= r y@42@01) (= (- $Perm.Write (pTaken@64@01 r)) $Perm.No))
  
  :qid |quant-u-21506|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and (img@46@01 y@42@01) (= (inv@45@01 y@42@01) z@41@01))
  (=
    ($FVF.lookup_f (as sm@62@01  $FVF<f>) y@42@01)
    ($FVF.lookup_f $t@44@01 y@42@01))))
(assert (=
  ($FVF.lookup_f (as sm@62@01  $FVF<f>) y@42@01)
  ($FVF.lookup_f (as sm@59@01  $FVF<f>) y@42@01)))
; [eval] x.f == 0
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@46@01 r) (= (inv@45@01 r) z@41@01))
      (= ($FVF.lookup_f (as sm@62@01  $FVF<f>) r) ($FVF.lookup_f $t@44@01 r)))
    :pattern (($FVF.lookup_f (as sm@62@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f $t@44@01 r))
    :qid |qp.fvfValDef11|))
  (forall ((r $Ref)) (!
    (=>
      (= r y@42@01)
      (=
        ($FVF.lookup_f (as sm@62@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@59@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@62@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@59@01  $FVF<f>) r))
    :qid |qp.fvfValDef12|))))
(set-option :timeout 0)
(push) ; 3
(assert (not (<
  $Perm.No
  (+
    (ite
      (and (img@46@01 y@42@01) (= (inv@45@01 y@42@01) z@41@01))
      $Perm.Write
      $Perm.No)
    $Perm.Write))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (p1%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@62@01  $FVF<f>) y@42@01))
  $Snap.unit) y@42@01))
(declare-const sm@66@01 $PSF<p1>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p1 (as sm@66@01  $PSF<p1>) ($SortWrappers.$RefTo$Snap y@42@01))
  ($Snap.combine
    ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@62@01  $FVF<f>) y@42@01))
    $Snap.unit)))
(declare-const sm@67@01 $PSF<p1>)
(declare-const s@68@01 $Snap)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((s@68@01 $Snap)) (!
  (=>
    (= ($SortWrappers.$SnapTo$Ref s@68@01) y@42@01)
    (and
      (not (= s@68@01 $Snap.unit))
      (=
        ($PSF.lookup_p1 (as sm@67@01  $PSF<p1>) s@68@01)
        ($PSF.lookup_p1 (as sm@66@01  $PSF<p1>) s@68@01))))
  :pattern (($PSF.lookup_p1 (as sm@67@01  $PSF<p1>) s@68@01))
  :pattern (($PSF.lookup_p1 (as sm@66@01  $PSF<p1>) s@68@01))
  :qid |qp.psmValDef14|)))
(assert (forall ((s@68@01 $Snap)) (!
  (=>
    (and
      (img@52@01 ($SortWrappers.$SnapTo$Ref s@68@01))
      (Set_in (inv@51@01 ($SortWrappers.$SnapTo$Ref s@68@01)) xs@39@01))
    (and
      (not (= s@68@01 $Snap.unit))
      (=
        ($PSF.lookup_p1 (as sm@67@01  $PSF<p1>) s@68@01)
        ($PSF.lookup_p1 $t@50@01 s@68@01))))
  :pattern (($PSF.lookup_p1 (as sm@67@01  $PSF<p1>) s@68@01))
  :pattern (($PSF.lookup_p1 $t@50@01 s@68@01))
  :qid |qp.psmValDef15|)))
(assert (forall ((s@68@01 $Snap)) (!
  (and
    ($PSF.loc_p1 ($PSF.lookup_p1 (as sm@66@01  $PSF<p1>) s@68@01) s@68@01)
    ($PSF.loc_p1 ($PSF.lookup_p1 $t@50@01 s@68@01) s@68@01))
  :pattern (($PSF.lookup_p1 (as sm@67@01  $PSF<p1>) s@68@01))
  :qid |qp.psmResTrgDef16|)))
(assert ($PSF.loc_p1 ($PSF.lookup_p1 (as sm@67@01  $PSF<p1>) ($SortWrappers.$RefTo$Snap y@42@01)) ($SortWrappers.$RefTo$Snap y@42@01)))
; [exec]
; assert y != z
; [eval] y != z
(push) ; 3
(assert (not (not (= y@42@01 z@41@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@42@01 z@41@01)))
(pop) ; 2
(pop) ; 1
; ---------- m3 ----------
(declare-const xs@69@01 Seq<$Ref>)
(declare-const y@70@01 $Ref)
(declare-const zs@71@01 Seq<$Ref>)
(declare-const xs@72@01 Seq<$Ref>)
(declare-const y@73@01 $Ref)
(declare-const zs@74@01 Seq<$Ref>)
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
; var z: Ref
(declare-const z@75@01 $Ref)
; [exec]
; inhale (forall x: Ref ::x == y ==> acc(x.f, write))
(declare-const x@76@01 $Ref)
(push) ; 3
; [eval] x == y
(assert (= x@76@01 y@73@01))
(pop) ; 3
(declare-const $t@77@01 $FVF<f>)
(declare-fun inv@78@01 ($Ref) $Ref)
(declare-fun img@79@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@76@01 $Ref) (x2@76@01 $Ref)) (!
  (=>
    (and (= x1@76@01 y@73@01) (= x2@76@01 y@73@01) (= x1@76@01 x2@76@01))
    (= x1@76@01 x2@76@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@76@01 $Ref)) (!
  (=>
    (= x@76@01 y@73@01)
    (and (= (inv@78@01 x@76@01) x@76@01) (img@79@01 x@76@01)))
  :pattern ((inv@78@01 x@76@01))
  :pattern ((img@79@01 x@76@01))
  :qid |quant-u-21508|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@79@01 r) (= (inv@78@01 r) y@73@01)) (= (inv@78@01 r) r))
  :pattern ((inv@78@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@76@01 $Ref)) (!
  (=> (= x@76@01 y@73@01) (not (= x@76@01 $Ref.null)))
  :pattern ((inv@78@01 x@76@01))
  :pattern ((img@79@01 x@76@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall x: Ref ::
;     { acc(x.f, write) --* acc(y.f, write) }
;     (x in xs) ==> acc(x.f, write) --* acc(y.f, write))
(declare-const x@80@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@72@01 x@80@01))
(declare-const sm@81@01 $PSF<wand@0>)
(declare-const s@82@01 $Snap)
; Definitional axioms for snapshot map values
(pop) ; 3
(declare-const $t@83@01 $PSF<wand@0>)
(declare-fun inv@84@01 ($Ref $Perm $Ref $Perm) $Ref)
(declare-fun img@85@01 ($Ref $Perm $Ref $Perm) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@80@01 $Ref) (x2@80@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@72@01 x1@80@01)
      (Seq_contains xs@72@01 x2@80@01)
      (= x1@80@01 x2@80@01))
    (= x1@80@01 x2@80@01))
  
  :qid |wand@0-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@80@01 $Ref)) (!
  (=>
    (Seq_contains xs@72@01 x@80@01)
    (and
      (= (inv@84@01 x@80@01 $Perm.Write y@73@01 $Perm.Write) x@80@01)
      (img@85@01 x@80@01 $Perm.Write y@73@01 $Perm.Write)))
  :pattern (($PSF.loc_wand@0 ($PSF.lookup_wand@0 $t@83@01 ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@80@01)
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@73@01))
    ($SortWrappers.$PermTo$Snap $Perm.Write))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@80@01)
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@73@01))
    ($SortWrappers.$PermTo$Snap $Perm.Write))))
  :qid |quant-u-21510|)))
(assert (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm)) (!
  (=>
    (and (img@85@01 x0 x1 x2 x3) (Seq_contains xs@72@01 (inv@84@01 x0 x1 x2 x3)))
    (and
      (= (inv@84@01 x0 x1 x2 x3) x0)
      (= $Perm.Write x1)
      (= y@73@01 x2)
      (= $Perm.Write x3)))
  :pattern ((inv@84@01 x0 x1 x2 x3))
  :qid |wand@0-fctOfInv|)))
; Permissons are non-negative
(declare-const sm@86@01 $PSF<wand@0>)
(declare-const s@87@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@87@01 $Snap)) (!
  (=>
    (and
      (img@85@01 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.first s@87@01)))) ($SortWrappers.$SnapTo$Perm ($Snap.second ($Snap.first ($Snap.first s@87@01)))) ($SortWrappers.$SnapTo$Ref ($Snap.second ($Snap.first s@87@01))) ($SortWrappers.$SnapTo$Perm ($Snap.second s@87@01)))
      (Seq_contains
        xs@72@01
        (inv@84@01 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.first s@87@01)))) ($SortWrappers.$SnapTo$Perm ($Snap.second ($Snap.first ($Snap.first s@87@01)))) ($SortWrappers.$SnapTo$Ref ($Snap.second ($Snap.first s@87@01))) ($SortWrappers.$SnapTo$Perm ($Snap.second s@87@01)))))
    (and
      (not (= s@87@01 $Snap.unit))
      (=
        ($PSF.lookup_wand@0 (as sm@86@01  $PSF<wand@0>) s@87@01)
        ($PSF.lookup_wand@0 $t@83@01 s@87@01))))
  :pattern (($PSF.lookup_wand@0 (as sm@86@01  $PSF<wand@0>) s@87@01))
  :pattern (($PSF.lookup_wand@0 $t@83@01 s@87@01))
  :qid |qp.psmValDef18|)))
(assert (forall ((s@87@01 $Snap)) (!
  ($PSF.loc_wand@0 ($PSF.lookup_wand@0 $t@83@01 s@87@01) s@87@01)
  :pattern (($PSF.lookup_wand@0 (as sm@86@01  $PSF<wand@0>) s@87@01))
  :qid |qp.psmResTrgDef19|)))
(assert (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm)) (!
  (=>
    (Seq_contains xs@72@01 (inv@84@01 x0 x1 x2 x3))
    ($PSF.loc_wand@0 ($PSF.lookup_wand@0 (as sm@86@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap x0)
          ($SortWrappers.$PermTo$Snap x1))
        ($SortWrappers.$RefTo$Snap x2))
      ($SortWrappers.$PermTo$Snap x3))) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap x0)
          ($SortWrappers.$PermTo$Snap x1))
        ($SortWrappers.$RefTo$Snap x2))
      ($SortWrappers.$PermTo$Snap x3))))
  :pattern ((inv@84@01 x0 x1 x2 x3))
  :qid |quant-u-21511|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (z in zs)
(declare-const $t@88@01 $Snap)
(assert (= $t@88@01 $Snap.unit))
; [eval] (z in zs)
(assert (Seq_contains zs@74@01 z@75@01))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale !((z in xs))
(declare-const $t@89@01 $Snap)
(assert (= $t@89@01 $Snap.unit))
; [eval] !((z in xs))
; [eval] (z in xs)
(assert (not (Seq_contains xs@72@01 z@75@01)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; package acc(z.f, write) --* acc(y.f, write) {
; }
(set-option :timeout 0)
(push) ; 3
(declare-const $t@90@01 $Snap)
(declare-const sm@91@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@91@01  $FVF<f>) z@75@01)
  ($SortWrappers.$SnapToInt $t@90@01)))
(assert (not (= z@75@01 $Ref.null)))
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=> (= r y@73@01) false)
  
  :qid |quant-u-21512|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@92@01 $FVF<f>)
; Definitional axioms for snapshot map values (instantiated)
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= z@75@01 y@73@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@93@01 ((r $Ref)) $Perm
  (ite
    (= r y@73@01)
    ($Perm.min (ite (= r z@75@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@93@01 z@75@01)) $Perm.No)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@93@01 r) $Perm.No)
  
  :qid |quant-u-21515|))))
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
  (=> (= r y@73@01) (= (- $Perm.Write (pTaken@93@01 r)) $Perm.No))
  
  :qid |quant-u-21516|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=> (= r y@73@01) (= (- $Perm.Write (pTaken@93@01 r)) $Perm.No))
  
  :qid |quant-u-21516|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@94@01 $FVF<f>)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (= y@73@01 z@75@01)
  (=
    ($FVF.lookup_f (as sm@94@01  $FVF<f>) y@73@01)
    ($FVF.lookup_f (as sm@91@01  $FVF<f>) y@73@01))))
(assert (= (as sm@92@01  $FVF<f>) (as sm@94@01  $FVF<f>)))
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@95@01 ((r $Ref)) $Perm
  (ite
    (= r y@73@01)
    ($Perm.min
      (ite (and (img@79@01 r) (= (inv@78@01 r) y@73@01)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@93@01 r)))
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
      (ite (and (img@79@01 r) (= (inv@78@01 r) y@73@01)) $Perm.Write $Perm.No)
      (pTaken@95@01 r))
    $Perm.No)
  
  :qid |quant-u-21518|))))
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
  
  :qid |quant-u-21519|))))
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
    (= r y@73@01)
    (= (- (- $Perm.Write (pTaken@93@01 r)) (pTaken@95@01 r)) $Perm.No))
  
  :qid |quant-u-21520|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@96@01 $FVF<f>)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and (img@79@01 y@73@01) (= (inv@78@01 y@73@01) y@73@01))
  (=
    ($FVF.lookup_f (as sm@96@01  $FVF<f>) y@73@01)
    ($FVF.lookup_f $t@77@01 y@73@01))))
(assert (= (as sm@92@01  $FVF<f>) (as sm@96@01  $FVF<f>)))
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const $t@97@01 $FVF<f>)
(declare-const $t@98@01 $FVF<f>)
(assert (forall ((r $Ref)) (!
  (=>
    (ite (= r y@73@01) (< $Perm.No (pTaken@93@01 r)) false)
    (= ($FVF.lookup_f $t@97@01 r) ($FVF.lookup_f (as sm@94@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@92@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@94@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@97@01 r))
  :qid |quant-u-21521|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (ite (= r y@73@01) (< $Perm.No (pTaken@93@01 r)) false)
      (= ($FVF.lookup_f $t@98@01 r) ($FVF.lookup_f $t@97@01 r)))
    (=>
      (ite (= r y@73@01) (< $Perm.No (- $Perm.Write (pTaken@93@01 r))) false)
      (= ($FVF.lookup_f $t@98@01 r) ($FVF.lookup_f (as sm@96@01  $FVF<f>) r))))
  :pattern (($FVF.lookup_f $t@97@01 r))
  :pattern (($FVF.lookup_f (as sm@96@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@98@01 r))
  :qid |quant-u-21522|)))
; Create MagicWandSnapFunction for wand acc(z.f, write) --* acc(y.f, write)
(declare-const mwsf@99@01 $MWSF)
(assert (forall (($t@90@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@99@01 $t@90@01)
    ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@96@01  $FVF<f>) y@73@01)))
  :pattern ((MWSF_apply mwsf@99@01 $t@90@01))
  :qid |quant-u-21523|)))
(declare-const sm@100@01 $PSF<wand@0>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_wand@0 (as sm@100@01  $PSF<wand@0>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap z@75@01)
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@73@01))
    ($SortWrappers.$PermTo$Snap $Perm.Write)))
  ($Snap.combine
    $t@90@01
    ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@96@01  $FVF<f>) y@73@01)))))
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
(assert (=
  ($FVF.lookup_f (as sm@91@01  $FVF<f>) z@75@01)
  ($SortWrappers.$SnapToInt $t@90@01)))
(assert (and
  (=>
    (= y@73@01 z@75@01)
    (=
      ($FVF.lookup_f (as sm@94@01  $FVF<f>) y@73@01)
      ($FVF.lookup_f (as sm@91@01  $FVF<f>) y@73@01)))
  (= (as sm@92@01  $FVF<f>) (as sm@94@01  $FVF<f>))
  (=>
    (and (img@79@01 y@73@01) (= (inv@78@01 y@73@01) y@73@01))
    (=
      ($FVF.lookup_f (as sm@96@01  $FVF<f>) y@73@01)
      ($FVF.lookup_f $t@77@01 y@73@01)))
  (= (as sm@92@01  $FVF<f>) (as sm@96@01  $FVF<f>))))
(assert (and
  (forall (($t@90@01 $Snap)) (!
    (=
      (MWSF_apply mwsf@99@01 $t@90@01)
      ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@96@01  $FVF<f>) y@73@01)))
    :pattern ((MWSF_apply mwsf@99@01 $t@90@01))
    :qid |quant-u-21523|))
  (=
    ($PSF.lookup_wand@0 (as sm@100@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap z@75@01)
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@73@01))
      ($SortWrappers.$PermTo$Snap $Perm.Write)))
    ($Snap.combine
      $t@90@01
      ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@96@01  $FVF<f>) y@73@01))))))
(declare-const sm@101@01 $PSF<wand@0>)
(declare-const s@102@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@102@01 $Snap)) (!
  (=>
    (and
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.first s@102@01))))
        z@75@01)
      (=
        ($SortWrappers.$SnapTo$Perm ($Snap.second ($Snap.first ($Snap.first s@102@01))))
        $Perm.Write)
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.second ($Snap.first s@102@01)))
        y@73@01)
      (= ($SortWrappers.$SnapTo$Perm ($Snap.second s@102@01)) $Perm.Write))
    (and
      (not (= s@102@01 $Snap.unit))
      (=
        ($PSF.lookup_wand@0 (as sm@101@01  $PSF<wand@0>) s@102@01)
        ($PSF.lookup_wand@0 (as sm@100@01  $PSF<wand@0>) s@102@01))))
  :pattern (($PSF.lookup_wand@0 (as sm@101@01  $PSF<wand@0>) s@102@01))
  :pattern (($PSF.lookup_wand@0 (as sm@100@01  $PSF<wand@0>) s@102@01))
  :qid |qp.psmValDef22|)))
(assert (forall ((s@102@01 $Snap)) (!
  (=>
    (and
      (img@85@01 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.first s@102@01)))) ($SortWrappers.$SnapTo$Perm ($Snap.second ($Snap.first ($Snap.first s@102@01)))) ($SortWrappers.$SnapTo$Ref ($Snap.second ($Snap.first s@102@01))) ($SortWrappers.$SnapTo$Perm ($Snap.second s@102@01)))
      (Seq_contains
        xs@72@01
        (inv@84@01 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.first s@102@01)))) ($SortWrappers.$SnapTo$Perm ($Snap.second ($Snap.first ($Snap.first s@102@01)))) ($SortWrappers.$SnapTo$Ref ($Snap.second ($Snap.first s@102@01))) ($SortWrappers.$SnapTo$Perm ($Snap.second s@102@01)))))
    (and
      (not (= s@102@01 $Snap.unit))
      (=
        ($PSF.lookup_wand@0 (as sm@101@01  $PSF<wand@0>) s@102@01)
        ($PSF.lookup_wand@0 $t@83@01 s@102@01))))
  :pattern (($PSF.lookup_wand@0 (as sm@101@01  $PSF<wand@0>) s@102@01))
  :pattern (($PSF.lookup_wand@0 $t@83@01 s@102@01))
  :qid |qp.psmValDef23|)))
(assert (forall ((s@102@01 $Snap)) (!
  (and
    ($PSF.loc_wand@0 ($PSF.lookup_wand@0 (as sm@100@01  $PSF<wand@0>) s@102@01) s@102@01)
    ($PSF.loc_wand@0 ($PSF.lookup_wand@0 $t@83@01 s@102@01) s@102@01))
  :pattern (($PSF.lookup_wand@0 (as sm@101@01  $PSF<wand@0>) s@102@01))
  :qid |qp.psmResTrgDef24|)))
(assert ($PSF.loc_wand@0 ($PSF.lookup_wand@0 (as sm@101@01  $PSF<wand@0>) ($Snap.combine
  ($Snap.combine
    ($Snap.combine
      ($SortWrappers.$RefTo$Snap z@75@01)
      ($SortWrappers.$PermTo$Snap $Perm.Write))
    ($SortWrappers.$RefTo$Snap y@73@01))
  ($SortWrappers.$PermTo$Snap $Perm.Write))) ($Snap.combine
  ($Snap.combine
    ($Snap.combine
      ($SortWrappers.$RefTo$Snap z@75@01)
      ($SortWrappers.$PermTo$Snap $Perm.Write))
    ($SortWrappers.$RefTo$Snap y@73@01))
  ($SortWrappers.$PermTo$Snap $Perm.Write))))
; [exec]
; inhale (forall x: Ref ::
;     { acc(x.f, write) --* acc(y.f, write) }
;     (x in zs) ==> x != y)
(declare-const $t@103@01 $Snap)
(assert (= $t@103@01 $Snap.unit))
; [eval] (forall x: Ref :: { acc(x.f, write) --* acc(y.f, write) } (x in zs) ==> x != y)
(declare-const x@104@01 $Ref)
(push) ; 4
; [eval] (x in zs) ==> x != y
; [eval] (x in zs)
(push) ; 5
; [then-branch: 2 | x@104@01 in zs@74@01 | live]
; [else-branch: 2 | !(x@104@01 in zs@74@01) | live]
(push) ; 6
; [then-branch: 2 | x@104@01 in zs@74@01]
(assert (Seq_contains zs@74@01 x@104@01))
; [eval] x != y
(pop) ; 6
(push) ; 6
; [else-branch: 2 | !(x@104@01 in zs@74@01)]
(assert (not (Seq_contains zs@74@01 x@104@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (not (Seq_contains zs@74@01 x@104@01)) (Seq_contains zs@74@01 x@104@01)))
(declare-const sm@105@01 $PSF<wand@0>)
(declare-const s@106@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@106@01 $Snap)) (!
  (=>
    (and
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.first s@106@01))))
        z@75@01)
      (=
        ($SortWrappers.$SnapTo$Perm ($Snap.second ($Snap.first ($Snap.first s@106@01))))
        $Perm.Write)
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.second ($Snap.first s@106@01)))
        y@73@01)
      (= ($SortWrappers.$SnapTo$Perm ($Snap.second s@106@01)) $Perm.Write))
    (and
      (not (= s@106@01 $Snap.unit))
      (=
        ($PSF.lookup_wand@0 (as sm@105@01  $PSF<wand@0>) s@106@01)
        ($PSF.lookup_wand@0 (as sm@100@01  $PSF<wand@0>) s@106@01))))
  :pattern (($PSF.lookup_wand@0 (as sm@105@01  $PSF<wand@0>) s@106@01))
  :pattern (($PSF.lookup_wand@0 (as sm@100@01  $PSF<wand@0>) s@106@01))
  :qid |qp.psmValDef25|)))
(assert (forall ((s@106@01 $Snap)) (!
  (=>
    (and
      (img@85@01 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.first s@106@01)))) ($SortWrappers.$SnapTo$Perm ($Snap.second ($Snap.first ($Snap.first s@106@01)))) ($SortWrappers.$SnapTo$Ref ($Snap.second ($Snap.first s@106@01))) ($SortWrappers.$SnapTo$Perm ($Snap.second s@106@01)))
      (Seq_contains
        xs@72@01
        (inv@84@01 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.first s@106@01)))) ($SortWrappers.$SnapTo$Perm ($Snap.second ($Snap.first ($Snap.first s@106@01)))) ($SortWrappers.$SnapTo$Ref ($Snap.second ($Snap.first s@106@01))) ($SortWrappers.$SnapTo$Perm ($Snap.second s@106@01)))))
    (and
      (not (= s@106@01 $Snap.unit))
      (=
        ($PSF.lookup_wand@0 (as sm@105@01  $PSF<wand@0>) s@106@01)
        ($PSF.lookup_wand@0 $t@83@01 s@106@01))))
  :pattern (($PSF.lookup_wand@0 (as sm@105@01  $PSF<wand@0>) s@106@01))
  :pattern (($PSF.lookup_wand@0 $t@83@01 s@106@01))
  :qid |qp.psmValDef26|)))
(assert (forall ((s@106@01 $Snap)) (!
  (and
    ($PSF.loc_wand@0 ($PSF.lookup_wand@0 (as sm@100@01  $PSF<wand@0>) s@106@01) s@106@01)
    ($PSF.loc_wand@0 ($PSF.lookup_wand@0 $t@83@01 s@106@01) s@106@01))
  :pattern (($PSF.lookup_wand@0 (as sm@105@01  $PSF<wand@0>) s@106@01))
  :qid |qp.psmResTrgDef27|)))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((s@106@01 $Snap)) (!
  (=>
    (and
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.first s@106@01))))
        z@75@01)
      (=
        ($SortWrappers.$SnapTo$Perm ($Snap.second ($Snap.first ($Snap.first s@106@01))))
        $Perm.Write)
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.second ($Snap.first s@106@01)))
        y@73@01)
      (= ($SortWrappers.$SnapTo$Perm ($Snap.second s@106@01)) $Perm.Write))
    (and
      (not (= s@106@01 $Snap.unit))
      (=
        ($PSF.lookup_wand@0 (as sm@105@01  $PSF<wand@0>) s@106@01)
        ($PSF.lookup_wand@0 (as sm@100@01  $PSF<wand@0>) s@106@01))))
  :pattern (($PSF.lookup_wand@0 (as sm@105@01  $PSF<wand@0>) s@106@01))
  :pattern (($PSF.lookup_wand@0 (as sm@100@01  $PSF<wand@0>) s@106@01))
  :qid |qp.psmValDef25|)))
(assert (forall ((s@106@01 $Snap)) (!
  (=>
    (and
      (img@85@01 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.first s@106@01)))) ($SortWrappers.$SnapTo$Perm ($Snap.second ($Snap.first ($Snap.first s@106@01)))) ($SortWrappers.$SnapTo$Ref ($Snap.second ($Snap.first s@106@01))) ($SortWrappers.$SnapTo$Perm ($Snap.second s@106@01)))
      (Seq_contains
        xs@72@01
        (inv@84@01 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.first s@106@01)))) ($SortWrappers.$SnapTo$Perm ($Snap.second ($Snap.first ($Snap.first s@106@01)))) ($SortWrappers.$SnapTo$Ref ($Snap.second ($Snap.first s@106@01))) ($SortWrappers.$SnapTo$Perm ($Snap.second s@106@01)))))
    (and
      (not (= s@106@01 $Snap.unit))
      (=
        ($PSF.lookup_wand@0 (as sm@105@01  $PSF<wand@0>) s@106@01)
        ($PSF.lookup_wand@0 $t@83@01 s@106@01))))
  :pattern (($PSF.lookup_wand@0 (as sm@105@01  $PSF<wand@0>) s@106@01))
  :pattern (($PSF.lookup_wand@0 $t@83@01 s@106@01))
  :qid |qp.psmValDef26|)))
(assert (forall ((s@106@01 $Snap)) (!
  (and
    ($PSF.loc_wand@0 ($PSF.lookup_wand@0 (as sm@100@01  $PSF<wand@0>) s@106@01) s@106@01)
    ($PSF.loc_wand@0 ($PSF.lookup_wand@0 $t@83@01 s@106@01) s@106@01))
  :pattern (($PSF.lookup_wand@0 (as sm@105@01  $PSF<wand@0>) s@106@01))
  :qid |qp.psmResTrgDef27|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@104@01 $Ref)) (!
  (or (not (Seq_contains zs@74@01 x@104@01)) (Seq_contains zs@74@01 x@104@01))
  :pattern (($PSF.loc_wand@0 ($PSF.lookup_wand@0 (as sm@105@01  $PSF<wand@0>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@104@01)
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@73@01))
    ($SortWrappers.$PermTo$Snap $Perm.Write))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@104@01)
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@73@01))
    ($SortWrappers.$PermTo$Snap $Perm.Write))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/heap-dependent_triggers/triggerFoldPackage.vpr@45@16@45@75-aux|)))
(assert (forall ((x@104@01 $Ref)) (!
  (=> (Seq_contains zs@74@01 x@104@01) (not (= x@104@01 y@73@01)))
  :pattern (($PSF.loc_wand@0 ($PSF.lookup_wand@0 (as sm@105@01  $PSF<wand@0>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@104@01)
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@73@01))
    ($SortWrappers.$PermTo$Snap $Perm.Write))) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap x@104@01)
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@73@01))
    ($SortWrappers.$PermTo$Snap $Perm.Write))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/heap-dependent_triggers/triggerFoldPackage.vpr@45@16@45@75|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert z != y
; [eval] z != y
(set-option :timeout 0)
(push) ; 4
(assert (not (not (= z@75@01 y@73@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= z@75@01 y@73@01)))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- m4 ----------
(declare-const xs@107@01 Set<$Ref>)
(declare-const ys@108@01 Set<$Ref>)
(declare-const z@109@01 $Ref)
(declare-const xs@110@01 Set<$Ref>)
(declare-const ys@111@01 Set<$Ref>)
(declare-const z@112@01 $Ref)
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
; var y: Ref
(declare-const y@113@01 $Ref)
; [exec]
; inhale (forall x: Ref ::x == z ==> acc(x.f, write))
(declare-const x@114@01 $Ref)
(push) ; 3
; [eval] x == z
(assert (= x@114@01 z@112@01))
(pop) ; 3
(declare-const $t@115@01 $FVF<f>)
(declare-fun inv@116@01 ($Ref) $Ref)
(declare-fun img@117@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@114@01 $Ref) (x2@114@01 $Ref)) (!
  (=>
    (and (= x1@114@01 z@112@01) (= x2@114@01 z@112@01) (= x1@114@01 x2@114@01))
    (= x1@114@01 x2@114@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@114@01 $Ref)) (!
  (=>
    (= x@114@01 z@112@01)
    (and (= (inv@116@01 x@114@01) x@114@01) (img@117@01 x@114@01)))
  :pattern ((inv@116@01 x@114@01))
  :pattern ((img@117@01 x@114@01))
  :qid |quant-u-21525|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@117@01 r) (= (inv@116@01 r) z@112@01)) (= (inv@116@01 r) r))
  :pattern ((inv@116@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@114@01 $Ref)) (!
  (=> (= x@114@01 z@112@01) (not (= x@114@01 $Ref.null)))
  :pattern ((inv@116@01 x@114@01))
  :pattern ((img@117@01 x@114@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall x: Ref :: { p1(x) } (x in xs) ==> acc(p1(x), write))
(declare-const x@118@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs)
(assert (Set_in x@118@01 xs@110@01))
(declare-const sm@119@01 $PSF<p1>)
(declare-const s@120@01 $Snap)
; Definitional axioms for snapshot map values
(pop) ; 3
(declare-const $t@121@01 $PSF<p1>)
(declare-fun inv@122@01 ($Ref) $Ref)
(declare-fun img@123@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@118@01 $Ref) (x2@118@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@118@01 xs@110@01)
      (Set_in x2@118@01 xs@110@01)
      (= x1@118@01 x2@118@01))
    (= x1@118@01 x2@118@01))
  
  :qid |p1-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@118@01 $Ref)) (!
  (=>
    (Set_in x@118@01 xs@110@01)
    (and (= (inv@122@01 x@118@01) x@118@01) (img@123@01 x@118@01)))
  :pattern (($PSF.loc_p1 ($PSF.lookup_p1 $t@121@01 ($SortWrappers.$RefTo$Snap x@118@01)) ($SortWrappers.$RefTo$Snap x@118@01)))
  :qid |quant-u-21527|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@123@01 x) (Set_in (inv@122@01 x) xs@110@01))
    (= (inv@122@01 x) x))
  :pattern ((inv@122@01 x))
  :qid |p1-fctOfInv|)))
; Permissions are non-negative
(declare-const sm@124@01 $PSF<p1>)
(declare-const s@125@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@125@01 $Snap)) (!
  (=>
    (and
      (img@123@01 ($SortWrappers.$SnapTo$Ref s@125@01))
      (Set_in (inv@122@01 ($SortWrappers.$SnapTo$Ref s@125@01)) xs@110@01))
    (and
      (not (= s@125@01 $Snap.unit))
      (=
        ($PSF.lookup_p1 (as sm@124@01  $PSF<p1>) s@125@01)
        ($PSF.lookup_p1 $t@121@01 s@125@01))))
  :pattern (($PSF.lookup_p1 (as sm@124@01  $PSF<p1>) s@125@01))
  :pattern (($PSF.lookup_p1 $t@121@01 s@125@01))
  :qid |qp.psmValDef29|)))
(assert (forall ((s@125@01 $Snap)) (!
  ($PSF.loc_p1 ($PSF.lookup_p1 $t@121@01 s@125@01) s@125@01)
  :pattern (($PSF.lookup_p1 (as sm@124@01  $PSF<p1>) s@125@01))
  :qid |qp.psmResTrgDef30|)))
(assert (forall ((x $Ref)) (!
  (=>
    (Set_in (inv@122@01 x) xs@110@01)
    ($PSF.loc_p1 ($PSF.lookup_p1 (as sm@124@01  $PSF<p1>) ($SortWrappers.$RefTo$Snap x)) ($SortWrappers.$RefTo$Snap x)))
  :pattern ((inv@122@01 x))
  :qid |quant-u-21528|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale !((y in xs))
(declare-const $t@126@01 $Snap)
(assert (= $t@126@01 $Snap.unit))
; [eval] !((y in xs))
; [eval] (y in xs)
(assert (not (Set_in y@113@01 xs@110@01)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale acc(y.f, write)
(declare-const $t@127@01 Int)
(declare-const sm@128@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (= ($FVF.lookup_f (as sm@128@01  $FVF<f>) y@113@01) $t@127@01))
(assert (not (= y@113@01 $Ref.null)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (y in ys)
(declare-const $t@129@01 $Snap)
(assert (= $t@129@01 $Snap.unit))
; [eval] (y in ys)
(assert (Set_in y@113@01 ys@111@01))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale y.f == 0
(declare-const $t@130@01 $Snap)
(assert (= $t@130@01 $Snap.unit))
; [eval] y.f == 0
(declare-const sm@131@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@117@01 r) (= (inv@116@01 r) z@112@01))
    (= ($FVF.lookup_f (as sm@131@01  $FVF<f>) r) ($FVF.lookup_f $t@115@01 r)))
  :pattern (($FVF.lookup_f (as sm@131@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@115@01 r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@113@01)
    (=
      ($FVF.lookup_f (as sm@131@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@128@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@131@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@128@01  $FVF<f>) r))
  :qid |qp.fvfValDef32|)))
(declare-const pm@132@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@132@01  $FPM) r)
    (+
      (ite (and (img@117@01 r) (= (inv@116@01 r) z@112@01)) $Perm.Write $Perm.No)
      (ite (= r y@113@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@132@01  $FPM) r))
  :qid |qp.resPrmSumDef33|)))
(set-option :timeout 0)
(push) ; 3
(assert (not (< $Perm.No ($FVF.perm_f (as pm@132@01  $FPM) y@113@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= ($FVF.lookup_f (as sm@131@01  $FVF<f>) y@113@01) 0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; fold acc(p1(y), write)
; Precomputing data for removing quantified permissions
(define-fun pTaken@133@01 ((r $Ref)) $Perm
  (ite
    (= r y@113@01)
    ($Perm.min (ite (= r y@113@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
(define-fun pTaken@134@01 ((r $Ref)) $Perm
  (ite
    (= r y@113@01)
    ($Perm.min
      (ite (and (img@117@01 r) (= (inv@116@01 r) z@112@01)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@133@01 r)))
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
(assert (not (= (- $Perm.Write (pTaken@133@01 y@113@01)) $Perm.No)))
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
  (=> (= r y@113@01) (= (- $Perm.Write (pTaken@133@01 r)) $Perm.No))
  
  :qid |quant-u-21531|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and (img@117@01 y@113@01) (= (inv@116@01 y@113@01) z@112@01))
  (=
    ($FVF.lookup_f (as sm@131@01  $FVF<f>) y@113@01)
    ($FVF.lookup_f $t@115@01 y@113@01))))
(assert (=
  ($FVF.lookup_f (as sm@131@01  $FVF<f>) y@113@01)
  ($FVF.lookup_f (as sm@128@01  $FVF<f>) y@113@01)))
; [eval] x.f == 0
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@117@01 r) (= (inv@116@01 r) z@112@01))
      (= ($FVF.lookup_f (as sm@131@01  $FVF<f>) r) ($FVF.lookup_f $t@115@01 r)))
    :pattern (($FVF.lookup_f (as sm@131@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f $t@115@01 r))
    :qid |qp.fvfValDef31|))
  (forall ((r $Ref)) (!
    (=>
      (= r y@113@01)
      (=
        ($FVF.lookup_f (as sm@131@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@128@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@131@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@128@01  $FVF<f>) r))
    :qid |qp.fvfValDef32|))))
(set-option :timeout 0)
(push) ; 3
(assert (not (<
  $Perm.No
  (+
    (ite
      (and (img@117@01 y@113@01) (= (inv@116@01 y@113@01) z@112@01))
      $Perm.Write
      $Perm.No)
    $Perm.Write))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (p1%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@131@01  $FVF<f>) y@113@01))
  $Snap.unit) y@113@01))
(declare-const sm@135@01 $PSF<p1>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p1 (as sm@135@01  $PSF<p1>) ($SortWrappers.$RefTo$Snap y@113@01))
  ($Snap.combine
    ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@131@01  $FVF<f>) y@113@01))
    $Snap.unit)))
(declare-const sm@136@01 $PSF<p1>)
(declare-const s@137@01 $Snap)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((s@137@01 $Snap)) (!
  (=>
    (= ($SortWrappers.$SnapTo$Ref s@137@01) y@113@01)
    (and
      (not (= s@137@01 $Snap.unit))
      (=
        ($PSF.lookup_p1 (as sm@136@01  $PSF<p1>) s@137@01)
        ($PSF.lookup_p1 (as sm@135@01  $PSF<p1>) s@137@01))))
  :pattern (($PSF.lookup_p1 (as sm@136@01  $PSF<p1>) s@137@01))
  :pattern (($PSF.lookup_p1 (as sm@135@01  $PSF<p1>) s@137@01))
  :qid |qp.psmValDef34|)))
(assert (forall ((s@137@01 $Snap)) (!
  (=>
    (and
      (img@123@01 ($SortWrappers.$SnapTo$Ref s@137@01))
      (Set_in (inv@122@01 ($SortWrappers.$SnapTo$Ref s@137@01)) xs@110@01))
    (and
      (not (= s@137@01 $Snap.unit))
      (=
        ($PSF.lookup_p1 (as sm@136@01  $PSF<p1>) s@137@01)
        ($PSF.lookup_p1 $t@121@01 s@137@01))))
  :pattern (($PSF.lookup_p1 (as sm@136@01  $PSF<p1>) s@137@01))
  :pattern (($PSF.lookup_p1 $t@121@01 s@137@01))
  :qid |qp.psmValDef35|)))
(assert (forall ((s@137@01 $Snap)) (!
  (and
    ($PSF.loc_p1 ($PSF.lookup_p1 (as sm@135@01  $PSF<p1>) s@137@01) s@137@01)
    ($PSF.loc_p1 ($PSF.lookup_p1 $t@121@01 s@137@01) s@137@01))
  :pattern (($PSF.lookup_p1 (as sm@136@01  $PSF<p1>) s@137@01))
  :qid |qp.psmResTrgDef36|)))
(assert ($PSF.loc_p1 ($PSF.lookup_p1 (as sm@136@01  $PSF<p1>) ($SortWrappers.$RefTo$Snap y@113@01)) ($SortWrappers.$RefTo$Snap y@113@01)))
; [exec]
; inhale (forall x: Ref :: { p1(x) } (x in ys) ==> x != z)
(declare-const $t@138@01 $Snap)
(assert (= $t@138@01 $Snap.unit))
; [eval] (forall x: Ref :: { p1(x) } (x in ys) ==> x != z)
(declare-const x@139@01 $Ref)
(push) ; 3
; [eval] (x in ys) ==> x != z
; [eval] (x in ys)
(push) ; 4
; [then-branch: 3 | x@139@01 in ys@111@01 | live]
; [else-branch: 3 | !(x@139@01 in ys@111@01) | live]
(push) ; 5
; [then-branch: 3 | x@139@01 in ys@111@01]
(assert (Set_in x@139@01 ys@111@01))
; [eval] x != z
(pop) ; 5
(push) ; 5
; [else-branch: 3 | !(x@139@01 in ys@111@01)]
(assert (not (Set_in x@139@01 ys@111@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in x@139@01 ys@111@01)) (Set_in x@139@01 ys@111@01)))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@139@01 $Ref)) (!
  (or (not (Set_in x@139@01 ys@111@01)) (Set_in x@139@01 ys@111@01))
  :pattern (($PSF.loc_p1 ($PSF.lookup_p1 (as sm@136@01  $PSF<p1>) ($SortWrappers.$RefTo$Snap x@139@01)) ($SortWrappers.$RefTo$Snap x@139@01)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/heap-dependent_triggers/triggerFoldPackage.vpr@60@12@60@55-aux|)))
(assert (forall ((x@139@01 $Ref)) (!
  (=> (Set_in x@139@01 ys@111@01) (not (= x@139@01 z@112@01)))
  :pattern (($PSF.loc_p1 ($PSF.lookup_p1 (as sm@136@01  $PSF<p1>) ($SortWrappers.$RefTo$Snap x@139@01)) ($SortWrappers.$RefTo$Snap x@139@01)))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/heap-dependent_triggers/triggerFoldPackage.vpr@60@12@60@55|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert y != z
; [eval] y != z
(set-option :timeout 0)
(push) ; 3
(assert (not (not (= y@113@01 z@112@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@113@01 z@112@01)))
(pop) ; 2
(pop) ; 1
