(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-07 13:44:00
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
(declare-sort $PSF<p2> 0)
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
; /predicate_snap_functions_declarations.smt2 [p2: Int]
(declare-fun $PSF.domain_p2 ($PSF<p2>) Set<$Snap>)
(declare-fun $PSF.lookup_p2 ($PSF<p2> $Snap) Int)
(declare-fun $PSF.after_p2 ($PSF<p2> $PSF<p2>) Bool)
(declare-fun $PSF.loc_p2 (Int $Snap) Bool)
(declare-fun $PSF.perm_p2 ($PPM $Snap) $Perm)
(declare-const $psfTOP_p2 $PSF<p2>)
(declare-fun MWSF_apply ($MWSF $Snap) $Snap)
; Declaring symbols related to program functions (from program analysis)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun p1%trigger ($Snap $Ref) Bool)
(declare-fun p2%trigger ($Snap $Ref Int) Bool)
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
(declare-const r@0@01 $Ref)
(declare-const xs@1@01 Seq<$Ref>)
(declare-const i@2@01 Int)
(declare-const r@3@01 $Ref)
(declare-const xs@4@01 Seq<$Ref>)
(declare-const i@5@01 Int)
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
; var c: Int
(declare-const c@6@01 Int)
; [exec]
; c := 2
; [exec]
; inhale (forall x: Ref ::(x in xs) ==> acc(p2(x, i), write)) &&
;   (forall x: Ref ::(x in xs) && i > 0 ==> acc(x.f, write)) &&
;   (forall x: Ref :: { (x in xs) } (x in xs) && i > 0 ==> x.f > 0)
(declare-const $t@7@01 $Snap)
(assert (= $t@7@01 ($Snap.combine ($Snap.first $t@7@01) ($Snap.second $t@7@01))))
(declare-const x@8@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@4@01 x@8@01))
(pop) ; 3
(declare-fun inv@9@01 ($Ref Int) $Ref)
(declare-fun img@10@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@8@01 $Ref) (x2@8@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@4@01 x1@8@01)
      (Seq_contains xs@4@01 x2@8@01)
      (= x1@8@01 x2@8@01))
    (= x1@8@01 x2@8@01))
  
  :qid |p2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@8@01 $Ref)) (!
  (=>
    (Seq_contains xs@4@01 x@8@01)
    (and (= (inv@9@01 x@8@01 i@5@01) x@8@01) (img@10@01 x@8@01 i@5@01)))
  :pattern ((Seq_contains xs@4@01 x@8@01))
  :pattern ((Seq_contains_trigger xs@4@01 x@8@01))
  :pattern ((Seq_contains_trigger xs@4@01 x@8@01))
  :pattern ((inv@9@01 x@8@01 i@5@01))
  :pattern ((img@10@01 x@8@01 i@5@01))
  :qid |quant-u-15933|)))
(assert (forall ((a $Ref) (b Int)) (!
  (=>
    (and (img@10@01 a b) (Seq_contains xs@4@01 (inv@9@01 a b)))
    (and (= (inv@9@01 a b) a) (= i@5@01 b)))
  :pattern ((inv@9@01 a b))
  :qid |p2-fctOfInv|)))
; Permissions are non-negative
(assert (=
  ($Snap.second $t@7@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@7@01))
    ($Snap.second ($Snap.second $t@7@01)))))
(declare-const x@11@01 $Ref)
(push) ; 3
; [eval] (x in xs) && i > 0
; [eval] (x in xs)
(push) ; 4
; [then-branch: 0 | !(x@11@01 in xs@4@01) | live]
; [else-branch: 0 | x@11@01 in xs@4@01 | live]
(push) ; 5
; [then-branch: 0 | !(x@11@01 in xs@4@01)]
(assert (not (Seq_contains xs@4@01 x@11@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 0 | x@11@01 in xs@4@01]
(assert (Seq_contains xs@4@01 x@11@01))
; [eval] i > 0
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (Seq_contains xs@4@01 x@11@01) (not (Seq_contains xs@4@01 x@11@01))))
(assert (and (Seq_contains xs@4@01 x@11@01) (> i@5@01 0)))
(pop) ; 3
(declare-fun inv@12@01 ($Ref) $Ref)
(declare-fun img@13@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((x@11@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@4@01 x@11@01) (> i@5@01 0))
    (or (Seq_contains xs@4@01 x@11@01) (not (Seq_contains xs@4@01 x@11@01))))
  :pattern ((Seq_contains xs@4@01 x@11@01))
  :pattern ((Seq_contains_trigger xs@4@01 x@11@01))
  :pattern ((Seq_contains_trigger xs@4@01 x@11@01))
  :pattern ((inv@12@01 x@11@01))
  :pattern ((img@13@01 x@11@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@11@01 $Ref) (x2@11@01 $Ref)) (!
  (=>
    (and
      (and (Seq_contains xs@4@01 x1@11@01) (> i@5@01 0))
      (and (Seq_contains xs@4@01 x2@11@01) (> i@5@01 0))
      (= x1@11@01 x2@11@01))
    (= x1@11@01 x2@11@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@11@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@4@01 x@11@01) (> i@5@01 0))
    (and (= (inv@12@01 x@11@01) x@11@01) (img@13@01 x@11@01)))
  :pattern ((Seq_contains xs@4@01 x@11@01))
  :pattern ((Seq_contains_trigger xs@4@01 x@11@01))
  :pattern ((Seq_contains_trigger xs@4@01 x@11@01))
  :pattern ((inv@12@01 x@11@01))
  :pattern ((img@13@01 x@11@01))
  :qid |quant-u-15935|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@13@01 r) (and (Seq_contains xs@4@01 (inv@12@01 r)) (> i@5@01 0)))
    (= (inv@12@01 r) r))
  :pattern ((inv@12@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@11@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@4@01 x@11@01) (> i@5@01 0))
    (not (= x@11@01 $Ref.null)))
  :pattern ((Seq_contains xs@4@01 x@11@01))
  :pattern ((Seq_contains_trigger xs@4@01 x@11@01))
  :pattern ((Seq_contains_trigger xs@4@01 x@11@01))
  :pattern ((inv@12@01 x@11@01))
  :pattern ((img@13@01 x@11@01))
  :qid |f-permImpliesNonNull|)))
(assert (= ($Snap.second ($Snap.second $t@7@01)) $Snap.unit))
; [eval] (forall x: Ref :: { (x in xs) } (x in xs) && i > 0 ==> x.f > 0)
(declare-const x@14@01 $Ref)
(push) ; 3
; [eval] (x in xs) && i > 0 ==> x.f > 0
; [eval] (x in xs) && i > 0
; [eval] (x in xs)
(push) ; 4
; [then-branch: 1 | !(x@14@01 in xs@4@01) | live]
; [else-branch: 1 | x@14@01 in xs@4@01 | live]
(push) ; 5
; [then-branch: 1 | !(x@14@01 in xs@4@01)]
(assert (not (Seq_contains xs@4@01 x@14@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 1 | x@14@01 in xs@4@01]
(assert (Seq_contains xs@4@01 x@14@01))
; [eval] i > 0
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (Seq_contains xs@4@01 x@14@01) (not (Seq_contains xs@4@01 x@14@01))))
(push) ; 4
; [then-branch: 2 | x@14@01 in xs@4@01 && i@5@01 > 0 | live]
; [else-branch: 2 | !(x@14@01 in xs@4@01 && i@5@01 > 0) | live]
(push) ; 5
; [then-branch: 2 | x@14@01 in xs@4@01 && i@5@01 > 0]
(assert (and (Seq_contains xs@4@01 x@14@01) (> i@5@01 0)))
; [eval] x.f > 0
(push) ; 6
(assert (not (and
  (img@13@01 x@14@01)
  (and (Seq_contains xs@4@01 (inv@12@01 x@14@01)) (> i@5@01 0)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 2 | !(x@14@01 in xs@4@01 && i@5@01 > 0)]
(assert (not (and (Seq_contains xs@4@01 x@14@01) (> i@5@01 0))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (Seq_contains xs@4@01 x@14@01) (> i@5@01 0)))
  (and (Seq_contains xs@4@01 x@14@01) (> i@5@01 0))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@14@01 $Ref)) (!
  (and
    (or (Seq_contains xs@4@01 x@14@01) (not (Seq_contains xs@4@01 x@14@01)))
    (or
      (not (and (Seq_contains xs@4@01 x@14@01) (> i@5@01 0)))
      (and (Seq_contains xs@4@01 x@14@01) (> i@5@01 0))))
  :pattern ((Seq_contains xs@4@01 x@14@01))
  :pattern ((Seq_contains_trigger xs@4@01 x@14@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/independence.vpr@19@9@19@87-aux|)))
(assert (forall ((x@14@01 $Ref)) (!
  (and
    (or (Seq_contains xs@4@01 x@14@01) (not (Seq_contains xs@4@01 x@14@01)))
    (or
      (not (and (Seq_contains xs@4@01 x@14@01) (> i@5@01 0)))
      (and (Seq_contains xs@4@01 x@14@01) (> i@5@01 0))))
  :pattern ((Seq_contains_trigger xs@4@01 x@14@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/independence.vpr@19@9@19@87-aux|)))
(assert (forall ((x@14@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@4@01 x@14@01) (> i@5@01 0))
    (>
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@7@01))) x@14@01)
      0))
  :pattern ((Seq_contains xs@4@01 x@14@01))
  :pattern ((Seq_contains_trigger xs@4@01 x@14@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/independence.vpr@19@9@19@87|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert c == 2
; [eval] c == 2
; [exec]
; exhale (forall x: Ref ::(x in xs) ==> acc(p2(x, i), write)) &&
;   (forall x: Ref ::(x in xs) && i > 0 ==> acc(x.f, write)) &&
;   (forall x: Ref :: { (x in xs) } (x in xs) && i > 0 ==> x.f > 0)
(declare-const x@15@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@4@01 x@15@01))
(pop) ; 3
(declare-fun inv@16@01 ($Ref Int) $Ref)
(declare-fun img@17@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@15@01 $Ref) (x2@15@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@4@01 x1@15@01)
      (Seq_contains xs@4@01 x2@15@01)
      (= x1@15@01 x2@15@01))
    (= x1@15@01 x2@15@01))
  
  :qid |p2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@15@01 $Ref)) (!
  (=>
    (Seq_contains xs@4@01 x@15@01)
    (and (= (inv@16@01 x@15@01 i@5@01) x@15@01) (img@17@01 x@15@01 i@5@01)))
  :pattern ((Seq_contains xs@4@01 x@15@01))
  :pattern ((Seq_contains_trigger xs@4@01 x@15@01))
  :pattern ((inv@16@01 x@15@01 i@5@01))
  :pattern ((img@17@01 x@15@01 i@5@01))
  :qid |p2-invOfFct|)))
(assert (forall ((a $Ref) (b Int)) (!
  (=>
    (and (img@17@01 a b) (Seq_contains xs@4@01 (inv@16@01 a b)))
    (and (= (inv@16@01 a b) a) (= i@5@01 b)))
  :pattern ((inv@16@01 a b))
  :qid |p2-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@18@01 ((a $Ref) (b Int)) $Perm
  (ite
    (and
      (Seq_contains xs@4@01 (inv@16@01 a b))
      (img@17@01 a b)
      (and (= a (inv@16@01 a b)) (= b i@5@01)))
    ($Perm.min
      (ite
        (and (img@10@01 a b) (Seq_contains xs@4@01 (inv@9@01 a b)))
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
(assert (not (forall ((a $Ref) (b Int)) (!
  (=
    (-
      (ite
        (and (img@10@01 a b) (Seq_contains xs@4@01 (inv@9@01 a b)))
        $Perm.Write
        $Perm.No)
      (pTaken@18@01 a b))
    $Perm.No)
  
  :qid |quant-u-15938|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a $Ref) (b Int)) (!
  (=>
    (and
      (Seq_contains xs@4@01 (inv@16@01 a b))
      (img@17@01 a b)
      (and (= a (inv@16@01 a b)) (= b i@5@01)))
    (= (- $Perm.Write (pTaken@18@01 a b)) $Perm.No))
  
  :qid |quant-u-15939|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const x@19@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs) && i > 0
; [eval] (x in xs)
(push) ; 4
; [then-branch: 3 | !(x@19@01 in xs@4@01) | live]
; [else-branch: 3 | x@19@01 in xs@4@01 | live]
(push) ; 5
; [then-branch: 3 | !(x@19@01 in xs@4@01)]
(assert (not (Seq_contains xs@4@01 x@19@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 3 | x@19@01 in xs@4@01]
(assert (Seq_contains xs@4@01 x@19@01))
; [eval] i > 0
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (Seq_contains xs@4@01 x@19@01) (not (Seq_contains xs@4@01 x@19@01))))
(assert (and (Seq_contains xs@4@01 x@19@01) (> i@5@01 0)))
(pop) ; 3
(declare-fun inv@20@01 ($Ref) $Ref)
(declare-fun img@21@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((x@19@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@4@01 x@19@01) (> i@5@01 0))
    (or (Seq_contains xs@4@01 x@19@01) (not (Seq_contains xs@4@01 x@19@01))))
  :pattern ((Seq_contains xs@4@01 x@19@01))
  :pattern ((Seq_contains_trigger xs@4@01 x@19@01))
  :pattern ((Seq_contains_trigger xs@4@01 x@19@01))
  :pattern ((inv@20@01 x@19@01))
  :pattern ((img@21@01 x@19@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@19@01 $Ref) (x2@19@01 $Ref)) (!
  (=>
    (and
      (and (Seq_contains xs@4@01 x1@19@01) (> i@5@01 0))
      (and (Seq_contains xs@4@01 x2@19@01) (> i@5@01 0))
      (= x1@19@01 x2@19@01))
    (= x1@19@01 x2@19@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@19@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@4@01 x@19@01) (> i@5@01 0))
    (and (= (inv@20@01 x@19@01) x@19@01) (img@21@01 x@19@01)))
  :pattern ((Seq_contains xs@4@01 x@19@01))
  :pattern ((Seq_contains_trigger xs@4@01 x@19@01))
  :pattern ((inv@20@01 x@19@01))
  :pattern ((img@21@01 x@19@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@21@01 r) (and (Seq_contains xs@4@01 (inv@20@01 r)) (> i@5@01 0)))
    (= (inv@20@01 r) r))
  :pattern ((inv@20@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@22@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (Seq_contains xs@4@01 (inv@20@01 r)) (> i@5@01 0))
      (img@21@01 r)
      (= r (inv@20@01 r)))
    ($Perm.min
      (ite
        (and
          (img@13@01 r)
          (and (Seq_contains xs@4@01 (inv@12@01 r)) (> i@5@01 0)))
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
          (img@13@01 r)
          (and (Seq_contains xs@4@01 (inv@12@01 r)) (> i@5@01 0)))
        $Perm.Write
        $Perm.No)
      (pTaken@22@01 r))
    $Perm.No)
  
  :qid |quant-u-15942|))))
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
      (and (Seq_contains xs@4@01 (inv@20@01 r)) (> i@5@01 0))
      (img@21@01 r)
      (= r (inv@20@01 r)))
    (= (- $Perm.Write (pTaken@22@01 r)) $Perm.No))
  
  :qid |quant-u-15943|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall x: Ref :: { (x in xs) } (x in xs) && i > 0 ==> x.f > 0)
(declare-const x@23@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs) && i > 0 ==> x.f > 0
; [eval] (x in xs) && i > 0
; [eval] (x in xs)
(push) ; 4
; [then-branch: 4 | !(x@23@01 in xs@4@01) | live]
; [else-branch: 4 | x@23@01 in xs@4@01 | live]
(push) ; 5
; [then-branch: 4 | !(x@23@01 in xs@4@01)]
(assert (not (Seq_contains xs@4@01 x@23@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 4 | x@23@01 in xs@4@01]
(assert (Seq_contains xs@4@01 x@23@01))
; [eval] i > 0
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (Seq_contains xs@4@01 x@23@01) (not (Seq_contains xs@4@01 x@23@01))))
(push) ; 4
; [then-branch: 5 | x@23@01 in xs@4@01 && i@5@01 > 0 | live]
; [else-branch: 5 | !(x@23@01 in xs@4@01 && i@5@01 > 0) | live]
(push) ; 5
; [then-branch: 5 | x@23@01 in xs@4@01 && i@5@01 > 0]
(assert (and (Seq_contains xs@4@01 x@23@01) (> i@5@01 0)))
; [eval] x.f > 0
(push) ; 6
(assert (not (and
  (img@13@01 x@23@01)
  (and (Seq_contains xs@4@01 (inv@12@01 x@23@01)) (> i@5@01 0)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 5 | !(x@23@01 in xs@4@01 && i@5@01 > 0)]
(assert (not (and (Seq_contains xs@4@01 x@23@01) (> i@5@01 0))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (Seq_contains xs@4@01 x@23@01) (> i@5@01 0)))
  (and (Seq_contains xs@4@01 x@23@01) (> i@5@01 0))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@23@01 $Ref)) (!
  (and
    (or (Seq_contains xs@4@01 x@23@01) (not (Seq_contains xs@4@01 x@23@01)))
    (or
      (not (and (Seq_contains xs@4@01 x@23@01) (> i@5@01 0)))
      (and (Seq_contains xs@4@01 x@23@01) (> i@5@01 0))))
  :pattern ((Seq_contains xs@4@01 x@23@01))
  :pattern ((Seq_contains_trigger xs@4@01 x@23@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/independence.vpr@21@9@21@87-aux|)))
(assert (forall ((x@23@01 $Ref)) (!
  (and
    (or (Seq_contains xs@4@01 x@23@01) (not (Seq_contains xs@4@01 x@23@01)))
    (or
      (not (and (Seq_contains xs@4@01 x@23@01) (> i@5@01 0)))
      (and (Seq_contains xs@4@01 x@23@01) (> i@5@01 0))))
  :pattern ((Seq_contains_trigger xs@4@01 x@23@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/independence.vpr@21@9@21@87-aux|)))
(push) ; 3
(assert (not (forall ((x@23@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@4@01 x@23@01) (> i@5@01 0))
    (>
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@7@01))) x@23@01)
      0))
  :pattern ((Seq_contains xs@4@01 x@23@01))
  :pattern ((Seq_contains_trigger xs@4@01 x@23@01))
  :pattern ((Seq_contains_trigger xs@4@01 x@23@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/independence.vpr@21@9@21@87|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((x@23@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@4@01 x@23@01) (> i@5@01 0))
    (>
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@7@01))) x@23@01)
      0))
  :pattern ((Seq_contains xs@4@01 x@23@01))
  :pattern ((Seq_contains_trigger xs@4@01 x@23@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/independence.vpr@21@9@21@87|)))
; [exec]
; assert c == 2
; [eval] c == 2
(pop) ; 2
(pop) ; 1
; ---------- m2 ----------
(declare-const r@24@01 $Ref)
(declare-const xs@25@01 Seq<$Ref>)
(declare-const i@26@01 Int)
(declare-const r@27@01 $Ref)
(declare-const xs@28@01 Seq<$Ref>)
(declare-const i@29@01 Int)
(push) ; 1
(declare-const $t@30@01 $Snap)
(assert (= $t@30@01 ($Snap.combine ($Snap.first $t@30@01) ($Snap.second $t@30@01))))
(assert (= ($Snap.first $t@30@01) $Snap.unit))
; [eval] !((r in xs))
; [eval] (r in xs)
(assert (not (Seq_contains xs@28@01 r@27@01)))
(declare-const sm@31@01 $PSF<p2>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p2 (as sm@31@01  $PSF<p2>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@27@01)
    ($SortWrappers.IntTo$Snap i@29@01)))
  ($SortWrappers.$SnapToInt ($Snap.second $t@30@01))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@32@01 Int)
(declare-const sm@33@01 $PSF<p2>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p2 (as sm@33@01  $PSF<p2>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@27@01)
    ($SortWrappers.IntTo$Snap i@29@01)))
  $t@32@01))
(pop) ; 2
(push) ; 2
; [exec]
; inhale (forall x: Ref ::(x in xs) ==> acc(p2(x, i), write)) &&
;   (forall x: Ref ::(x in xs) && i > 0 ==> acc(x.f, write)) &&
;   (forall x: Ref :: { (x in xs) } (x in xs) && i > 0 ==> x.f > 0)
(declare-const $t@34@01 $Snap)
(assert (= $t@34@01 ($Snap.combine ($Snap.first $t@34@01) ($Snap.second $t@34@01))))
(declare-const x@35@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@28@01 x@35@01))
(pop) ; 3
(declare-fun inv@36@01 ($Ref Int) $Ref)
(declare-fun img@37@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@35@01 $Ref) (x2@35@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@28@01 x1@35@01)
      (Seq_contains xs@28@01 x2@35@01)
      (= x1@35@01 x2@35@01))
    (= x1@35@01 x2@35@01))
  
  :qid |p2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@35@01 $Ref)) (!
  (=>
    (Seq_contains xs@28@01 x@35@01)
    (and (= (inv@36@01 x@35@01 i@29@01) x@35@01) (img@37@01 x@35@01 i@29@01)))
  :pattern ((Seq_contains xs@28@01 x@35@01))
  :pattern ((Seq_contains_trigger xs@28@01 x@35@01))
  :pattern ((Seq_contains_trigger xs@28@01 x@35@01))
  :pattern ((inv@36@01 x@35@01 i@29@01))
  :pattern ((img@37@01 x@35@01 i@29@01))
  :qid |quant-u-15945|)))
(assert (forall ((a $Ref) (b Int)) (!
  (=>
    (and (img@37@01 a b) (Seq_contains xs@28@01 (inv@36@01 a b)))
    (and (= (inv@36@01 a b) a) (= i@29@01 b)))
  :pattern ((inv@36@01 a b))
  :qid |p2-fctOfInv|)))
; Permissions are non-negative
(assert (=
  ($Snap.second $t@34@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@34@01))
    ($Snap.second ($Snap.second $t@34@01)))))
(declare-const x@38@01 $Ref)
(push) ; 3
; [eval] (x in xs) && i > 0
; [eval] (x in xs)
(push) ; 4
; [then-branch: 6 | !(x@38@01 in xs@28@01) | live]
; [else-branch: 6 | x@38@01 in xs@28@01 | live]
(push) ; 5
; [then-branch: 6 | !(x@38@01 in xs@28@01)]
(assert (not (Seq_contains xs@28@01 x@38@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 6 | x@38@01 in xs@28@01]
(assert (Seq_contains xs@28@01 x@38@01))
; [eval] i > 0
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (Seq_contains xs@28@01 x@38@01) (not (Seq_contains xs@28@01 x@38@01))))
(assert (and (Seq_contains xs@28@01 x@38@01) (> i@29@01 0)))
(pop) ; 3
(declare-fun inv@39@01 ($Ref) $Ref)
(declare-fun img@40@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((x@38@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@28@01 x@38@01) (> i@29@01 0))
    (or (Seq_contains xs@28@01 x@38@01) (not (Seq_contains xs@28@01 x@38@01))))
  :pattern ((Seq_contains xs@28@01 x@38@01))
  :pattern ((Seq_contains_trigger xs@28@01 x@38@01))
  :pattern ((Seq_contains_trigger xs@28@01 x@38@01))
  :pattern ((inv@39@01 x@38@01))
  :pattern ((img@40@01 x@38@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@38@01 $Ref) (x2@38@01 $Ref)) (!
  (=>
    (and
      (and (Seq_contains xs@28@01 x1@38@01) (> i@29@01 0))
      (and (Seq_contains xs@28@01 x2@38@01) (> i@29@01 0))
      (= x1@38@01 x2@38@01))
    (= x1@38@01 x2@38@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@38@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@28@01 x@38@01) (> i@29@01 0))
    (and (= (inv@39@01 x@38@01) x@38@01) (img@40@01 x@38@01)))
  :pattern ((Seq_contains xs@28@01 x@38@01))
  :pattern ((Seq_contains_trigger xs@28@01 x@38@01))
  :pattern ((Seq_contains_trigger xs@28@01 x@38@01))
  :pattern ((inv@39@01 x@38@01))
  :pattern ((img@40@01 x@38@01))
  :qid |quant-u-15947|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@40@01 r) (and (Seq_contains xs@28@01 (inv@39@01 r)) (> i@29@01 0)))
    (= (inv@39@01 r) r))
  :pattern ((inv@39@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@38@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@28@01 x@38@01) (> i@29@01 0))
    (not (= x@38@01 $Ref.null)))
  :pattern ((Seq_contains xs@28@01 x@38@01))
  :pattern ((Seq_contains_trigger xs@28@01 x@38@01))
  :pattern ((Seq_contains_trigger xs@28@01 x@38@01))
  :pattern ((inv@39@01 x@38@01))
  :pattern ((img@40@01 x@38@01))
  :qid |f-permImpliesNonNull|)))
(assert (= ($Snap.second ($Snap.second $t@34@01)) $Snap.unit))
; [eval] (forall x: Ref :: { (x in xs) } (x in xs) && i > 0 ==> x.f > 0)
(declare-const x@41@01 $Ref)
(push) ; 3
; [eval] (x in xs) && i > 0 ==> x.f > 0
; [eval] (x in xs) && i > 0
; [eval] (x in xs)
(push) ; 4
; [then-branch: 7 | !(x@41@01 in xs@28@01) | live]
; [else-branch: 7 | x@41@01 in xs@28@01 | live]
(push) ; 5
; [then-branch: 7 | !(x@41@01 in xs@28@01)]
(assert (not (Seq_contains xs@28@01 x@41@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 7 | x@41@01 in xs@28@01]
(assert (Seq_contains xs@28@01 x@41@01))
; [eval] i > 0
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (Seq_contains xs@28@01 x@41@01) (not (Seq_contains xs@28@01 x@41@01))))
(push) ; 4
; [then-branch: 8 | x@41@01 in xs@28@01 && i@29@01 > 0 | live]
; [else-branch: 8 | !(x@41@01 in xs@28@01 && i@29@01 > 0) | live]
(push) ; 5
; [then-branch: 8 | x@41@01 in xs@28@01 && i@29@01 > 0]
(assert (and (Seq_contains xs@28@01 x@41@01) (> i@29@01 0)))
; [eval] x.f > 0
(push) ; 6
(assert (not (and
  (img@40@01 x@41@01)
  (and (Seq_contains xs@28@01 (inv@39@01 x@41@01)) (> i@29@01 0)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 8 | !(x@41@01 in xs@28@01 && i@29@01 > 0)]
(assert (not (and (Seq_contains xs@28@01 x@41@01) (> i@29@01 0))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (Seq_contains xs@28@01 x@41@01) (> i@29@01 0)))
  (and (Seq_contains xs@28@01 x@41@01) (> i@29@01 0))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@41@01 $Ref)) (!
  (and
    (or (Seq_contains xs@28@01 x@41@01) (not (Seq_contains xs@28@01 x@41@01)))
    (or
      (not (and (Seq_contains xs@28@01 x@41@01) (> i@29@01 0)))
      (and (Seq_contains xs@28@01 x@41@01) (> i@29@01 0))))
  :pattern ((Seq_contains xs@28@01 x@41@01))
  :pattern ((Seq_contains_trigger xs@28@01 x@41@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/independence.vpr@33@9@33@87-aux|)))
(assert (forall ((x@41@01 $Ref)) (!
  (and
    (or (Seq_contains xs@28@01 x@41@01) (not (Seq_contains xs@28@01 x@41@01)))
    (or
      (not (and (Seq_contains xs@28@01 x@41@01) (> i@29@01 0)))
      (and (Seq_contains xs@28@01 x@41@01) (> i@29@01 0))))
  :pattern ((Seq_contains_trigger xs@28@01 x@41@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/independence.vpr@33@9@33@87-aux|)))
(assert (forall ((x@41@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@28@01 x@41@01) (> i@29@01 0))
    (>
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@34@01))) x@41@01)
      0))
  :pattern ((Seq_contains xs@28@01 x@41@01))
  :pattern ((Seq_contains_trigger xs@28@01 x@41@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/independence.vpr@33@9@33@87|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(p2(r, i), write)
; Precomputing data for removing quantified permissions
(define-fun pTaken@42@01 ((a $Ref) (b Int)) $Perm
  (ite
    (and (= a r@27@01) (= b i@29@01))
    ($Perm.min
      (ite (and (= a r@27@01) (= b i@29@01)) $Perm.Write $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@43@01 ((a $Ref) (b Int)) $Perm
  (ite
    (and (= a r@27@01) (= b i@29@01))
    ($Perm.min
      (ite
        (and (img@37@01 a b) (Seq_contains xs@28@01 (inv@36@01 a b)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@42@01 a b)))
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
(assert (not (= (- $Perm.Write (pTaken@42@01 r@27@01 i@29@01)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a $Ref) (b Int)) (!
  (=>
    (and (= a r@27@01) (= b i@29@01))
    (= (- $Perm.Write (pTaken@42@01 a b)) $Perm.No))
  
  :qid |quant-u-15950|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@44@01 $PSF<p2>)
(declare-const s@45@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (and
  (not
    (=
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@27@01)
        ($SortWrappers.IntTo$Snap i@29@01))
      $Snap.unit))
  (=
    ($PSF.lookup_p2 (as sm@44@01  $PSF<p2>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@27@01)
      ($SortWrappers.IntTo$Snap i@29@01)))
    ($PSF.lookup_p2 (as sm@31@01  $PSF<p2>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@27@01)
      ($SortWrappers.IntTo$Snap i@29@01))))))
(assert (=>
  (and
    (img@37@01 r@27@01 i@29@01)
    (Seq_contains xs@28@01 (inv@36@01 r@27@01 i@29@01)))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@27@01)
          ($SortWrappers.IntTo$Snap i@29@01))
        $Snap.unit))
    (=
      ($PSF.lookup_p2 (as sm@44@01  $PSF<p2>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@27@01)
        ($SortWrappers.IntTo$Snap i@29@01)))
      ($PSF.lookup_p2 ($SortWrappers.$SnapTo$PSF<p2> ($Snap.first $t@34@01)) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@27@01)
        ($SortWrappers.IntTo$Snap i@29@01)))))))
(assert (not (= r@27@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (p2%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_p2 (as sm@44@01  $PSF<p2>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap r@27@01)
  ($SortWrappers.IntTo$Snap i@29@01)))) r@27@01 i@29@01))
; [exec]
; fold acc(p2(r, i), write)
(declare-const sm@46@01 $PSF<p2>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p2 (as sm@46@01  $PSF<p2>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@27@01)
    ($SortWrappers.IntTo$Snap i@29@01)))
  ($PSF.lookup_p2 (as sm@44@01  $PSF<p2>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@27@01)
    ($SortWrappers.IntTo$Snap i@29@01)))))
; [exec]
; exhale (forall x: Ref ::(x in xs) ==> acc(p2(x, i), write)) &&
;   (forall x: Ref ::(x in xs) && i > 0 ==> acc(x.f, write)) &&
;   (forall x: Ref :: { (x in xs) } (x in xs) && i > 0 ==> x.f > 0)
(declare-const x@47@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@28@01 x@47@01))
(pop) ; 3
(declare-fun inv@48@01 ($Ref Int) $Ref)
(declare-fun img@49@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@47@01 $Ref) (x2@47@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@28@01 x1@47@01)
      (Seq_contains xs@28@01 x2@47@01)
      (= x1@47@01 x2@47@01))
    (= x1@47@01 x2@47@01))
  
  :qid |p2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@47@01 $Ref)) (!
  (=>
    (Seq_contains xs@28@01 x@47@01)
    (and (= (inv@48@01 x@47@01 i@29@01) x@47@01) (img@49@01 x@47@01 i@29@01)))
  :pattern ((Seq_contains xs@28@01 x@47@01))
  :pattern ((Seq_contains_trigger xs@28@01 x@47@01))
  :pattern ((inv@48@01 x@47@01 i@29@01))
  :pattern ((img@49@01 x@47@01 i@29@01))
  :qid |p2-invOfFct|)))
(assert (forall ((a $Ref) (b Int)) (!
  (=>
    (and (img@49@01 a b) (Seq_contains xs@28@01 (inv@48@01 a b)))
    (and (= (inv@48@01 a b) a) (= i@29@01 b)))
  :pattern ((inv@48@01 a b))
  :qid |p2-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@50@01 ((a $Ref) (b Int)) $Perm
  (ite
    (and
      (Seq_contains xs@28@01 (inv@48@01 a b))
      (img@49@01 a b)
      (and (= a (inv@48@01 a b)) (= b i@29@01)))
    ($Perm.min
      (ite
        (and (img@37@01 a b) (Seq_contains xs@28@01 (inv@36@01 a b)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@51@01 ((a $Ref) (b Int)) $Perm
  (ite
    (and
      (Seq_contains xs@28@01 (inv@48@01 a b))
      (img@49@01 a b)
      (and (= a (inv@48@01 a b)) (= b i@29@01)))
    ($Perm.min
      (ite (and (= a r@27@01) (= b i@29@01)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@50@01 a b)))
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
(assert (not (forall ((a $Ref) (b Int)) (!
  (=
    (-
      (ite
        (and (img@37@01 a b) (Seq_contains xs@28@01 (inv@36@01 a b)))
        $Perm.Write
        $Perm.No)
      (pTaken@50@01 a b))
    $Perm.No)
  
  :qid |quant-u-15953|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a $Ref) (b Int)) (!
  (=>
    (and
      (Seq_contains xs@28@01 (inv@48@01 a b))
      (img@49@01 a b)
      (and (= a (inv@48@01 a b)) (= b i@29@01)))
    (= (- $Perm.Write (pTaken@50@01 a b)) $Perm.No))
  
  :qid |quant-u-15954|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const x@52@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs) && i > 0
; [eval] (x in xs)
(push) ; 4
; [then-branch: 9 | !(x@52@01 in xs@28@01) | live]
; [else-branch: 9 | x@52@01 in xs@28@01 | live]
(push) ; 5
; [then-branch: 9 | !(x@52@01 in xs@28@01)]
(assert (not (Seq_contains xs@28@01 x@52@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 9 | x@52@01 in xs@28@01]
(assert (Seq_contains xs@28@01 x@52@01))
; [eval] i > 0
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (Seq_contains xs@28@01 x@52@01) (not (Seq_contains xs@28@01 x@52@01))))
(assert (and (Seq_contains xs@28@01 x@52@01) (> i@29@01 0)))
(pop) ; 3
(declare-fun inv@53@01 ($Ref) $Ref)
(declare-fun img@54@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((x@52@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@28@01 x@52@01) (> i@29@01 0))
    (or (Seq_contains xs@28@01 x@52@01) (not (Seq_contains xs@28@01 x@52@01))))
  :pattern ((Seq_contains xs@28@01 x@52@01))
  :pattern ((Seq_contains_trigger xs@28@01 x@52@01))
  :pattern ((Seq_contains_trigger xs@28@01 x@52@01))
  :pattern ((inv@53@01 x@52@01))
  :pattern ((img@54@01 x@52@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@52@01 $Ref) (x2@52@01 $Ref)) (!
  (=>
    (and
      (and (Seq_contains xs@28@01 x1@52@01) (> i@29@01 0))
      (and (Seq_contains xs@28@01 x2@52@01) (> i@29@01 0))
      (= x1@52@01 x2@52@01))
    (= x1@52@01 x2@52@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@52@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@28@01 x@52@01) (> i@29@01 0))
    (and (= (inv@53@01 x@52@01) x@52@01) (img@54@01 x@52@01)))
  :pattern ((Seq_contains xs@28@01 x@52@01))
  :pattern ((Seq_contains_trigger xs@28@01 x@52@01))
  :pattern ((inv@53@01 x@52@01))
  :pattern ((img@54@01 x@52@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@54@01 r) (and (Seq_contains xs@28@01 (inv@53@01 r)) (> i@29@01 0)))
    (= (inv@53@01 r) r))
  :pattern ((inv@53@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@55@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (Seq_contains xs@28@01 (inv@53@01 r)) (> i@29@01 0))
      (img@54@01 r)
      (= r (inv@53@01 r)))
    ($Perm.min
      (ite
        (and
          (img@40@01 r)
          (and (Seq_contains xs@28@01 (inv@39@01 r)) (> i@29@01 0)))
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
          (img@40@01 r)
          (and (Seq_contains xs@28@01 (inv@39@01 r)) (> i@29@01 0)))
        $Perm.Write
        $Perm.No)
      (pTaken@55@01 r))
    $Perm.No)
  
  :qid |quant-u-15957|))))
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
      (and (Seq_contains xs@28@01 (inv@53@01 r)) (> i@29@01 0))
      (img@54@01 r)
      (= r (inv@53@01 r)))
    (= (- $Perm.Write (pTaken@55@01 r)) $Perm.No))
  
  :qid |quant-u-15958|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall x: Ref :: { (x in xs) } (x in xs) && i > 0 ==> x.f > 0)
(declare-const x@56@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs) && i > 0 ==> x.f > 0
; [eval] (x in xs) && i > 0
; [eval] (x in xs)
(push) ; 4
; [then-branch: 10 | !(x@56@01 in xs@28@01) | live]
; [else-branch: 10 | x@56@01 in xs@28@01 | live]
(push) ; 5
; [then-branch: 10 | !(x@56@01 in xs@28@01)]
(assert (not (Seq_contains xs@28@01 x@56@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 10 | x@56@01 in xs@28@01]
(assert (Seq_contains xs@28@01 x@56@01))
; [eval] i > 0
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (Seq_contains xs@28@01 x@56@01) (not (Seq_contains xs@28@01 x@56@01))))
(push) ; 4
; [then-branch: 11 | x@56@01 in xs@28@01 && i@29@01 > 0 | live]
; [else-branch: 11 | !(x@56@01 in xs@28@01 && i@29@01 > 0) | live]
(push) ; 5
; [then-branch: 11 | x@56@01 in xs@28@01 && i@29@01 > 0]
(assert (and (Seq_contains xs@28@01 x@56@01) (> i@29@01 0)))
; [eval] x.f > 0
(push) ; 6
(assert (not (and
  (img@40@01 x@56@01)
  (and (Seq_contains xs@28@01 (inv@39@01 x@56@01)) (> i@29@01 0)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 11 | !(x@56@01 in xs@28@01 && i@29@01 > 0)]
(assert (not (and (Seq_contains xs@28@01 x@56@01) (> i@29@01 0))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (Seq_contains xs@28@01 x@56@01) (> i@29@01 0)))
  (and (Seq_contains xs@28@01 x@56@01) (> i@29@01 0))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@56@01 $Ref)) (!
  (and
    (or (Seq_contains xs@28@01 x@56@01) (not (Seq_contains xs@28@01 x@56@01)))
    (or
      (not (and (Seq_contains xs@28@01 x@56@01) (> i@29@01 0)))
      (and (Seq_contains xs@28@01 x@56@01) (> i@29@01 0))))
  :pattern ((Seq_contains xs@28@01 x@56@01))
  :pattern ((Seq_contains_trigger xs@28@01 x@56@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/independence.vpr@36@9@36@87-aux|)))
(assert (forall ((x@56@01 $Ref)) (!
  (and
    (or (Seq_contains xs@28@01 x@56@01) (not (Seq_contains xs@28@01 x@56@01)))
    (or
      (not (and (Seq_contains xs@28@01 x@56@01) (> i@29@01 0)))
      (and (Seq_contains xs@28@01 x@56@01) (> i@29@01 0))))
  :pattern ((Seq_contains_trigger xs@28@01 x@56@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/independence.vpr@36@9@36@87-aux|)))
(push) ; 3
(assert (not (forall ((x@56@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@28@01 x@56@01) (> i@29@01 0))
    (>
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@34@01))) x@56@01)
      0))
  :pattern ((Seq_contains xs@28@01 x@56@01))
  :pattern ((Seq_contains_trigger xs@28@01 x@56@01))
  :pattern ((Seq_contains_trigger xs@28@01 x@56@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/independence.vpr@36@9@36@87|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((x@56@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@28@01 x@56@01) (> i@29@01 0))
    (>
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@34@01))) x@56@01)
      0))
  :pattern ((Seq_contains xs@28@01 x@56@01))
  :pattern ((Seq_contains_trigger xs@28@01 x@56@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/independence.vpr@36@9@36@87|)))
; [exec]
; unfold acc(p2(r, i), write)
; Precomputing data for removing quantified permissions
(define-fun pTaken@57@01 ((a $Ref) (b Int)) $Perm
  (ite
    (and (= a r@27@01) (= b i@29@01))
    ($Perm.min
      (ite (and (= a r@27@01) (= b i@29@01)) $Perm.Write $Perm.No)
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
(assert (not (= (- $Perm.Write (pTaken@57@01 r@27@01 i@29@01)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a $Ref) (b Int)) (!
  (=>
    (and (= a r@27@01) (= b i@29@01))
    (= (- $Perm.Write (pTaken@57@01 a b)) $Perm.No))
  
  :qid |quant-u-15961|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@58@01 $PSF<p2>)
(declare-const s@59@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (and
  (not
    (=
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@27@01)
        ($SortWrappers.IntTo$Snap i@29@01))
      $Snap.unit))
  (=
    ($PSF.lookup_p2 (as sm@58@01  $PSF<p2>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@27@01)
      ($SortWrappers.IntTo$Snap i@29@01)))
    ($PSF.lookup_p2 (as sm@46@01  $PSF<p2>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r@27@01)
      ($SortWrappers.IntTo$Snap i@29@01))))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (p2%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_p2 (as sm@58@01  $PSF<p2>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap r@27@01)
  ($SortWrappers.IntTo$Snap i@29@01)))) r@27@01 i@29@01))
; [exec]
; fold acc(p2(r, i), write)
(declare-const sm@60@01 $PSF<p2>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p2 (as sm@60@01  $PSF<p2>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@27@01)
    ($SortWrappers.IntTo$Snap i@29@01)))
  ($PSF.lookup_p2 (as sm@58@01  $PSF<p2>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@27@01)
    ($SortWrappers.IntTo$Snap i@29@01)))))
; Precomputing data for removing quantified permissions
(define-fun pTaken@61@01 ((a $Ref) (b Int)) $Perm
  (ite
    (and (= a r@27@01) (= b i@29@01))
    ($Perm.min
      (ite (and (= a r@27@01) (= b i@29@01)) $Perm.Write $Perm.No)
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
(assert (not (= (- $Perm.Write (pTaken@61@01 r@27@01 i@29@01)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a $Ref) (b Int)) (!
  (=>
    (and (= a r@27@01) (= b i@29@01))
    (= (- $Perm.Write (pTaken@61@01 a b)) $Perm.No))
  
  :qid |quant-u-15964|))))
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
(declare-const r@62@01 $Ref)
(declare-const xs@63@01 Seq<$Ref>)
(declare-const i@64@01 Int)
(declare-const r@65@01 $Ref)
(declare-const xs@66@01 Seq<$Ref>)
(declare-const i@67@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@68@01 $Snap)
(assert (= $t@68@01 ($Snap.combine ($Snap.first $t@68@01) ($Snap.second $t@68@01))))
(assert (= ($Snap.first $t@68@01) $Snap.unit))
; [eval] !((r in xs))
; [eval] (r in xs)
(assert (not (Seq_contains xs@66@01 r@65@01)))
; [eval] -1
(declare-const sm@69@01 $PSF<p2>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p2 (as sm@69@01  $PSF<p2>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@65@01)
    ($SortWrappers.IntTo$Snap (- 0 1))))
  ($SortWrappers.$SnapToInt ($Snap.second $t@68@01))))
(assert (<= $Perm.No (ite (= (- 0 1) (- 0 1)) $Perm.Write $Perm.No)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
; [eval] -1
(declare-const $t@70@01 Int)
(declare-const sm@71@01 $PSF<p2>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p2 (as sm@71@01  $PSF<p2>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@65@01)
    ($SortWrappers.IntTo$Snap (- 0 1))))
  $t@70@01))
(pop) ; 2
(push) ; 2
; [exec]
; inhale (forall x: Ref ::(x in xs) ==> acc(p2(x, i), write)) &&
;   (forall x: Ref ::(x in xs) && i > 0 ==> acc(x.f, write)) &&
;   (forall x: Ref :: { (x in xs) } (x in xs) && i > 0 ==> x.f > 0)
(declare-const $t@72@01 $Snap)
(assert (= $t@72@01 ($Snap.combine ($Snap.first $t@72@01) ($Snap.second $t@72@01))))
(declare-const x@73@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@66@01 x@73@01))
(pop) ; 3
(declare-fun inv@74@01 ($Ref Int) $Ref)
(declare-fun img@75@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@73@01 $Ref) (x2@73@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@66@01 x1@73@01)
      (Seq_contains xs@66@01 x2@73@01)
      (= x1@73@01 x2@73@01))
    (= x1@73@01 x2@73@01))
  
  :qid |p2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@73@01 $Ref)) (!
  (=>
    (Seq_contains xs@66@01 x@73@01)
    (and (= (inv@74@01 x@73@01 i@67@01) x@73@01) (img@75@01 x@73@01 i@67@01)))
  :pattern ((Seq_contains xs@66@01 x@73@01))
  :pattern ((Seq_contains_trigger xs@66@01 x@73@01))
  :pattern ((Seq_contains_trigger xs@66@01 x@73@01))
  :pattern ((inv@74@01 x@73@01 i@67@01))
  :pattern ((img@75@01 x@73@01 i@67@01))
  :qid |quant-u-15966|)))
(assert (forall ((a $Ref) (b Int)) (!
  (=>
    (and (img@75@01 a b) (Seq_contains xs@66@01 (inv@74@01 a b)))
    (and (= (inv@74@01 a b) a) (= i@67@01 b)))
  :pattern ((inv@74@01 a b))
  :qid |p2-fctOfInv|)))
; Permissions are non-negative
(assert (=
  ($Snap.second $t@72@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@72@01))
    ($Snap.second ($Snap.second $t@72@01)))))
(declare-const x@76@01 $Ref)
(push) ; 3
; [eval] (x in xs) && i > 0
; [eval] (x in xs)
(push) ; 4
; [then-branch: 12 | !(x@76@01 in xs@66@01) | live]
; [else-branch: 12 | x@76@01 in xs@66@01 | live]
(push) ; 5
; [then-branch: 12 | !(x@76@01 in xs@66@01)]
(assert (not (Seq_contains xs@66@01 x@76@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 12 | x@76@01 in xs@66@01]
(assert (Seq_contains xs@66@01 x@76@01))
; [eval] i > 0
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (Seq_contains xs@66@01 x@76@01) (not (Seq_contains xs@66@01 x@76@01))))
(assert (and (Seq_contains xs@66@01 x@76@01) (> i@67@01 0)))
(pop) ; 3
(declare-fun inv@77@01 ($Ref) $Ref)
(declare-fun img@78@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((x@76@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@66@01 x@76@01) (> i@67@01 0))
    (or (Seq_contains xs@66@01 x@76@01) (not (Seq_contains xs@66@01 x@76@01))))
  :pattern ((Seq_contains xs@66@01 x@76@01))
  :pattern ((Seq_contains_trigger xs@66@01 x@76@01))
  :pattern ((Seq_contains_trigger xs@66@01 x@76@01))
  :pattern ((inv@77@01 x@76@01))
  :pattern ((img@78@01 x@76@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@76@01 $Ref) (x2@76@01 $Ref)) (!
  (=>
    (and
      (and (Seq_contains xs@66@01 x1@76@01) (> i@67@01 0))
      (and (Seq_contains xs@66@01 x2@76@01) (> i@67@01 0))
      (= x1@76@01 x2@76@01))
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
    (and (Seq_contains xs@66@01 x@76@01) (> i@67@01 0))
    (and (= (inv@77@01 x@76@01) x@76@01) (img@78@01 x@76@01)))
  :pattern ((Seq_contains xs@66@01 x@76@01))
  :pattern ((Seq_contains_trigger xs@66@01 x@76@01))
  :pattern ((Seq_contains_trigger xs@66@01 x@76@01))
  :pattern ((inv@77@01 x@76@01))
  :pattern ((img@78@01 x@76@01))
  :qid |quant-u-15968|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@78@01 r) (and (Seq_contains xs@66@01 (inv@77@01 r)) (> i@67@01 0)))
    (= (inv@77@01 r) r))
  :pattern ((inv@77@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@76@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@66@01 x@76@01) (> i@67@01 0))
    (not (= x@76@01 $Ref.null)))
  :pattern ((Seq_contains xs@66@01 x@76@01))
  :pattern ((Seq_contains_trigger xs@66@01 x@76@01))
  :pattern ((Seq_contains_trigger xs@66@01 x@76@01))
  :pattern ((inv@77@01 x@76@01))
  :pattern ((img@78@01 x@76@01))
  :qid |f-permImpliesNonNull|)))
(assert (= ($Snap.second ($Snap.second $t@72@01)) $Snap.unit))
; [eval] (forall x: Ref :: { (x in xs) } (x in xs) && i > 0 ==> x.f > 0)
(declare-const x@79@01 $Ref)
(push) ; 3
; [eval] (x in xs) && i > 0 ==> x.f > 0
; [eval] (x in xs) && i > 0
; [eval] (x in xs)
(push) ; 4
; [then-branch: 13 | !(x@79@01 in xs@66@01) | live]
; [else-branch: 13 | x@79@01 in xs@66@01 | live]
(push) ; 5
; [then-branch: 13 | !(x@79@01 in xs@66@01)]
(assert (not (Seq_contains xs@66@01 x@79@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 13 | x@79@01 in xs@66@01]
(assert (Seq_contains xs@66@01 x@79@01))
; [eval] i > 0
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (Seq_contains xs@66@01 x@79@01) (not (Seq_contains xs@66@01 x@79@01))))
(push) ; 4
; [then-branch: 14 | x@79@01 in xs@66@01 && i@67@01 > 0 | live]
; [else-branch: 14 | !(x@79@01 in xs@66@01 && i@67@01 > 0) | live]
(push) ; 5
; [then-branch: 14 | x@79@01 in xs@66@01 && i@67@01 > 0]
(assert (and (Seq_contains xs@66@01 x@79@01) (> i@67@01 0)))
; [eval] x.f > 0
(push) ; 6
(assert (not (and
  (img@78@01 x@79@01)
  (and (Seq_contains xs@66@01 (inv@77@01 x@79@01)) (> i@67@01 0)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 14 | !(x@79@01 in xs@66@01 && i@67@01 > 0)]
(assert (not (and (Seq_contains xs@66@01 x@79@01) (> i@67@01 0))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (Seq_contains xs@66@01 x@79@01) (> i@67@01 0)))
  (and (Seq_contains xs@66@01 x@79@01) (> i@67@01 0))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@79@01 $Ref)) (!
  (and
    (or (Seq_contains xs@66@01 x@79@01) (not (Seq_contains xs@66@01 x@79@01)))
    (or
      (not (and (Seq_contains xs@66@01 x@79@01) (> i@67@01 0)))
      (and (Seq_contains xs@66@01 x@79@01) (> i@67@01 0))))
  :pattern ((Seq_contains xs@66@01 x@79@01))
  :pattern ((Seq_contains_trigger xs@66@01 x@79@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/independence.vpr@48@9@48@87-aux|)))
(assert (forall ((x@79@01 $Ref)) (!
  (and
    (or (Seq_contains xs@66@01 x@79@01) (not (Seq_contains xs@66@01 x@79@01)))
    (or
      (not (and (Seq_contains xs@66@01 x@79@01) (> i@67@01 0)))
      (and (Seq_contains xs@66@01 x@79@01) (> i@67@01 0))))
  :pattern ((Seq_contains_trigger xs@66@01 x@79@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/independence.vpr@48@9@48@87-aux|)))
(assert (forall ((x@79@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@66@01 x@79@01) (> i@67@01 0))
    (>
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@72@01))) x@79@01)
      0))
  :pattern ((Seq_contains xs@66@01 x@79@01))
  :pattern ((Seq_contains_trigger xs@66@01 x@79@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/independence.vpr@48@9@48@87|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(p2(r, -1), write)
; [eval] -1
; Precomputing data for removing quantified permissions
(define-fun pTaken@80@01 ((a $Ref) (b Int)) $Perm
  (ite
    (and (= a r@65@01) (= b (- 0 1)))
    ($Perm.min
      (ite (and (= a r@65@01) (= b (- 0 1))) $Perm.Write $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@81@01 ((a $Ref) (b Int)) $Perm
  (ite
    (and (= a r@65@01) (= b (- 0 1)))
    ($Perm.min
      (ite
        (and (img@75@01 a b) (Seq_contains xs@66@01 (inv@74@01 a b)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@80@01 a b)))
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
(assert (not (=
  (-
    (ite (= (- 0 1) (- 0 1)) $Perm.Write $Perm.No)
    (pTaken@80@01 r@65@01 (- 0 1)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a $Ref) (b Int)) (!
  (=>
    (and (= a r@65@01) (= b (- 0 1)))
    (= (- $Perm.Write (pTaken@80@01 a b)) $Perm.No))
  
  :qid |quant-u-15971|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@82@01 $PSF<p2>)
(declare-const s@83@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (= (- 0 1) (- 0 1))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@65@01)
          ($SortWrappers.IntTo$Snap (- 0 1)))
        $Snap.unit))
    (=
      ($PSF.lookup_p2 (as sm@82@01  $PSF<p2>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@65@01)
        ($SortWrappers.IntTo$Snap (- 0 1))))
      ($PSF.lookup_p2 (as sm@69@01  $PSF<p2>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@65@01)
        ($SortWrappers.IntTo$Snap (- 0 1))))))))
(assert (=>
  (and
    (img@75@01 r@65@01 (- 0 1))
    (Seq_contains xs@66@01 (inv@74@01 r@65@01 (- 0 1))))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@65@01)
          ($SortWrappers.IntTo$Snap (- 0 1)))
        $Snap.unit))
    (=
      ($PSF.lookup_p2 (as sm@82@01  $PSF<p2>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@65@01)
        ($SortWrappers.IntTo$Snap (- 0 1))))
      ($PSF.lookup_p2 ($SortWrappers.$SnapTo$PSF<p2> ($Snap.first $t@72@01)) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@65@01)
        ($SortWrappers.IntTo$Snap (- 0 1))))))))
(assert (not (= r@65@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (p2%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_p2 (as sm@82@01  $PSF<p2>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap r@65@01)
  ($SortWrappers.IntTo$Snap (- 0 1))))) r@65@01 (- 0 1)))
; [exec]
; fold acc(p2(r, -1), write)
; [eval] -1
(declare-const sm@84@01 $PSF<p2>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p2 (as sm@84@01  $PSF<p2>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@65@01)
    ($SortWrappers.IntTo$Snap (- 0 1))))
  ($PSF.lookup_p2 (as sm@82@01  $PSF<p2>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@65@01)
    ($SortWrappers.IntTo$Snap (- 0 1))))))
; [exec]
; exhale (forall x: Ref ::(x in xs) ==> acc(p2(x, i), write)) &&
;   (forall x: Ref ::(x in xs) && i > 0 ==> acc(x.f, write)) &&
;   (forall x: Ref :: { (x in xs) } (x in xs) && i > 0 ==> x.f > 0)
(declare-const x@85@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@66@01 x@85@01))
(pop) ; 3
(declare-fun inv@86@01 ($Ref Int) $Ref)
(declare-fun img@87@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@85@01 $Ref) (x2@85@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@66@01 x1@85@01)
      (Seq_contains xs@66@01 x2@85@01)
      (= x1@85@01 x2@85@01))
    (= x1@85@01 x2@85@01))
  
  :qid |p2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@85@01 $Ref)) (!
  (=>
    (Seq_contains xs@66@01 x@85@01)
    (and (= (inv@86@01 x@85@01 i@67@01) x@85@01) (img@87@01 x@85@01 i@67@01)))
  :pattern ((Seq_contains xs@66@01 x@85@01))
  :pattern ((Seq_contains_trigger xs@66@01 x@85@01))
  :pattern ((inv@86@01 x@85@01 i@67@01))
  :pattern ((img@87@01 x@85@01 i@67@01))
  :qid |p2-invOfFct|)))
(assert (forall ((a $Ref) (b Int)) (!
  (=>
    (and (img@87@01 a b) (Seq_contains xs@66@01 (inv@86@01 a b)))
    (and (= (inv@86@01 a b) a) (= i@67@01 b)))
  :pattern ((inv@86@01 a b))
  :qid |p2-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@88@01 ((a $Ref) (b Int)) $Perm
  (ite
    (and
      (Seq_contains xs@66@01 (inv@86@01 a b))
      (img@87@01 a b)
      (and (= a (inv@86@01 a b)) (= b i@67@01)))
    ($Perm.min
      (ite
        (and (img@75@01 a b) (Seq_contains xs@66@01 (inv@74@01 a b)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@89@01 ((a $Ref) (b Int)) $Perm
  (ite
    (and
      (Seq_contains xs@66@01 (inv@86@01 a b))
      (img@87@01 a b)
      (and (= a (inv@86@01 a b)) (= b i@67@01)))
    ($Perm.min
      (ite (and (= a r@65@01) (= b (- 0 1))) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@88@01 a b)))
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
(assert (not (forall ((a $Ref) (b Int)) (!
  (=
    (-
      (ite
        (and (img@75@01 a b) (Seq_contains xs@66@01 (inv@74@01 a b)))
        $Perm.Write
        $Perm.No)
      (pTaken@88@01 a b))
    $Perm.No)
  
  :qid |quant-u-15974|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a $Ref) (b Int)) (!
  (=>
    (and
      (Seq_contains xs@66@01 (inv@86@01 a b))
      (img@87@01 a b)
      (and (= a (inv@86@01 a b)) (= b i@67@01)))
    (= (- $Perm.Write (pTaken@88@01 a b)) $Perm.No))
  
  :qid |quant-u-15975|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const x@90@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs) && i > 0
; [eval] (x in xs)
(push) ; 4
; [then-branch: 15 | !(x@90@01 in xs@66@01) | live]
; [else-branch: 15 | x@90@01 in xs@66@01 | live]
(push) ; 5
; [then-branch: 15 | !(x@90@01 in xs@66@01)]
(assert (not (Seq_contains xs@66@01 x@90@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 15 | x@90@01 in xs@66@01]
(assert (Seq_contains xs@66@01 x@90@01))
; [eval] i > 0
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (Seq_contains xs@66@01 x@90@01) (not (Seq_contains xs@66@01 x@90@01))))
(assert (and (Seq_contains xs@66@01 x@90@01) (> i@67@01 0)))
(pop) ; 3
(declare-fun inv@91@01 ($Ref) $Ref)
(declare-fun img@92@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((x@90@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@66@01 x@90@01) (> i@67@01 0))
    (or (Seq_contains xs@66@01 x@90@01) (not (Seq_contains xs@66@01 x@90@01))))
  :pattern ((Seq_contains xs@66@01 x@90@01))
  :pattern ((Seq_contains_trigger xs@66@01 x@90@01))
  :pattern ((Seq_contains_trigger xs@66@01 x@90@01))
  :pattern ((inv@91@01 x@90@01))
  :pattern ((img@92@01 x@90@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@90@01 $Ref) (x2@90@01 $Ref)) (!
  (=>
    (and
      (and (Seq_contains xs@66@01 x1@90@01) (> i@67@01 0))
      (and (Seq_contains xs@66@01 x2@90@01) (> i@67@01 0))
      (= x1@90@01 x2@90@01))
    (= x1@90@01 x2@90@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@90@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@66@01 x@90@01) (> i@67@01 0))
    (and (= (inv@91@01 x@90@01) x@90@01) (img@92@01 x@90@01)))
  :pattern ((Seq_contains xs@66@01 x@90@01))
  :pattern ((Seq_contains_trigger xs@66@01 x@90@01))
  :pattern ((inv@91@01 x@90@01))
  :pattern ((img@92@01 x@90@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@92@01 r) (and (Seq_contains xs@66@01 (inv@91@01 r)) (> i@67@01 0)))
    (= (inv@91@01 r) r))
  :pattern ((inv@91@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@93@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (Seq_contains xs@66@01 (inv@91@01 r)) (> i@67@01 0))
      (img@92@01 r)
      (= r (inv@91@01 r)))
    ($Perm.min
      (ite
        (and
          (img@78@01 r)
          (and (Seq_contains xs@66@01 (inv@77@01 r)) (> i@67@01 0)))
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
          (img@78@01 r)
          (and (Seq_contains xs@66@01 (inv@77@01 r)) (> i@67@01 0)))
        $Perm.Write
        $Perm.No)
      (pTaken@93@01 r))
    $Perm.No)
  
  :qid |quant-u-15978|))))
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
      (and (Seq_contains xs@66@01 (inv@91@01 r)) (> i@67@01 0))
      (img@92@01 r)
      (= r (inv@91@01 r)))
    (= (- $Perm.Write (pTaken@93@01 r)) $Perm.No))
  
  :qid |quant-u-15979|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall x: Ref :: { (x in xs) } (x in xs) && i > 0 ==> x.f > 0)
(declare-const x@94@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs) && i > 0 ==> x.f > 0
; [eval] (x in xs) && i > 0
; [eval] (x in xs)
(push) ; 4
; [then-branch: 16 | !(x@94@01 in xs@66@01) | live]
; [else-branch: 16 | x@94@01 in xs@66@01 | live]
(push) ; 5
; [then-branch: 16 | !(x@94@01 in xs@66@01)]
(assert (not (Seq_contains xs@66@01 x@94@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 16 | x@94@01 in xs@66@01]
(assert (Seq_contains xs@66@01 x@94@01))
; [eval] i > 0
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (Seq_contains xs@66@01 x@94@01) (not (Seq_contains xs@66@01 x@94@01))))
(push) ; 4
; [then-branch: 17 | x@94@01 in xs@66@01 && i@67@01 > 0 | live]
; [else-branch: 17 | !(x@94@01 in xs@66@01 && i@67@01 > 0) | live]
(push) ; 5
; [then-branch: 17 | x@94@01 in xs@66@01 && i@67@01 > 0]
(assert (and (Seq_contains xs@66@01 x@94@01) (> i@67@01 0)))
; [eval] x.f > 0
(push) ; 6
(assert (not (and
  (img@78@01 x@94@01)
  (and (Seq_contains xs@66@01 (inv@77@01 x@94@01)) (> i@67@01 0)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 17 | !(x@94@01 in xs@66@01 && i@67@01 > 0)]
(assert (not (and (Seq_contains xs@66@01 x@94@01) (> i@67@01 0))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (Seq_contains xs@66@01 x@94@01) (> i@67@01 0)))
  (and (Seq_contains xs@66@01 x@94@01) (> i@67@01 0))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@94@01 $Ref)) (!
  (and
    (or (Seq_contains xs@66@01 x@94@01) (not (Seq_contains xs@66@01 x@94@01)))
    (or
      (not (and (Seq_contains xs@66@01 x@94@01) (> i@67@01 0)))
      (and (Seq_contains xs@66@01 x@94@01) (> i@67@01 0))))
  :pattern ((Seq_contains xs@66@01 x@94@01))
  :pattern ((Seq_contains_trigger xs@66@01 x@94@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/independence.vpr@51@9@51@87-aux|)))
(assert (forall ((x@94@01 $Ref)) (!
  (and
    (or (Seq_contains xs@66@01 x@94@01) (not (Seq_contains xs@66@01 x@94@01)))
    (or
      (not (and (Seq_contains xs@66@01 x@94@01) (> i@67@01 0)))
      (and (Seq_contains xs@66@01 x@94@01) (> i@67@01 0))))
  :pattern ((Seq_contains_trigger xs@66@01 x@94@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/independence.vpr@51@9@51@87-aux|)))
(push) ; 3
(assert (not (forall ((x@94@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@66@01 x@94@01) (> i@67@01 0))
    (>
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@72@01))) x@94@01)
      0))
  :pattern ((Seq_contains xs@66@01 x@94@01))
  :pattern ((Seq_contains_trigger xs@66@01 x@94@01))
  :pattern ((Seq_contains_trigger xs@66@01 x@94@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/independence.vpr@51@9@51@87|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((x@94@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@66@01 x@94@01) (> i@67@01 0))
    (>
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@72@01))) x@94@01)
      0))
  :pattern ((Seq_contains xs@66@01 x@94@01))
  :pattern ((Seq_contains_trigger xs@66@01 x@94@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/independence.vpr@51@9@51@87|)))
; [exec]
; unfold acc(p2(r, -1), write)
; [eval] -1
; Precomputing data for removing quantified permissions
(define-fun pTaken@95@01 ((a $Ref) (b Int)) $Perm
  (ite
    (and (= a r@65@01) (= b (- 0 1)))
    ($Perm.min
      (ite (and (= a r@65@01) (= b (- 0 1))) $Perm.Write $Perm.No)
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
(assert (not (=
  (-
    (ite (= (- 0 1) (- 0 1)) $Perm.Write $Perm.No)
    (pTaken@95@01 r@65@01 (- 0 1)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a $Ref) (b Int)) (!
  (=>
    (and (= a r@65@01) (= b (- 0 1)))
    (= (- $Perm.Write (pTaken@95@01 a b)) $Perm.No))
  
  :qid |quant-u-15982|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@96@01 $PSF<p2>)
(declare-const s@97@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (= (- 0 1) (- 0 1))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@65@01)
          ($SortWrappers.IntTo$Snap (- 0 1)))
        $Snap.unit))
    (=
      ($PSF.lookup_p2 (as sm@96@01  $PSF<p2>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@65@01)
        ($SortWrappers.IntTo$Snap (- 0 1))))
      ($PSF.lookup_p2 (as sm@84@01  $PSF<p2>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@65@01)
        ($SortWrappers.IntTo$Snap (- 0 1))))))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (p2%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_p2 (as sm@96@01  $PSF<p2>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap r@65@01)
  ($SortWrappers.IntTo$Snap (- 0 1))))) r@65@01 (- 0 1)))
; [exec]
; fold acc(p2(r, -1), write)
; [eval] -1
(declare-const sm@98@01 $PSF<p2>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p2 (as sm@98@01  $PSF<p2>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@65@01)
    ($SortWrappers.IntTo$Snap (- 0 1))))
  ($PSF.lookup_p2 (as sm@96@01  $PSF<p2>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@65@01)
    ($SortWrappers.IntTo$Snap (- 0 1))))))
; [eval] -1
; Precomputing data for removing quantified permissions
(define-fun pTaken@99@01 ((a $Ref) (b Int)) $Perm
  (ite
    (and (= a r@65@01) (= b (- 0 1)))
    ($Perm.min
      (ite (and (= a r@65@01) (= b (- 0 1))) $Perm.Write $Perm.No)
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
(assert (not (=
  (-
    (ite (= (- 0 1) (- 0 1)) $Perm.Write $Perm.No)
    (pTaken@99@01 r@65@01 (- 0 1)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a $Ref) (b Int)) (!
  (=>
    (and (= a r@65@01) (= b (- 0 1)))
    (= (- $Perm.Write (pTaken@99@01 a b)) $Perm.No))
  
  :qid |quant-u-15985|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- m4 ----------
(declare-const r@100@01 $Ref)
(declare-const xs@101@01 Seq<$Ref>)
(declare-const i@102@01 Int)
(declare-const r@103@01 $Ref)
(declare-const xs@104@01 Seq<$Ref>)
(declare-const i@105@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@106@01 $Snap)
(assert (= $t@106@01 ($Snap.combine ($Snap.first $t@106@01) ($Snap.second $t@106@01))))
(assert (=
  ($Snap.second $t@106@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@106@01))
    ($Snap.second ($Snap.second $t@106@01)))))
(assert (= ($Snap.first ($Snap.second $t@106@01)) $Snap.unit))
; [eval] (r in xs)
(assert (Seq_contains xs@104@01 r@103@01))
(assert (= ($Snap.second ($Snap.second $t@106@01)) $Snap.unit))
; [eval] i > 0
(assert (> i@105@01 0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@107@01 Int)
(pop) ; 2
(push) ; 2
; [exec]
; inhale (forall x: Ref ::(x in xs) ==> acc(p2(x, i), write)) &&
;   (forall x: Ref ::(x in xs) && i > 0 ==> acc(x.f, write)) &&
;   (forall x: Ref :: { (x in xs) } (x in xs) && i > 0 ==> x.f > 0)
(declare-const $t@108@01 $Snap)
(assert (= $t@108@01 ($Snap.combine ($Snap.first $t@108@01) ($Snap.second $t@108@01))))
(declare-const x@109@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@104@01 x@109@01))
(pop) ; 3
(declare-fun inv@110@01 ($Ref Int) $Ref)
(declare-fun img@111@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@109@01 $Ref) (x2@109@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@104@01 x1@109@01)
      (Seq_contains xs@104@01 x2@109@01)
      (= x1@109@01 x2@109@01))
    (= x1@109@01 x2@109@01))
  
  :qid |p2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@109@01 $Ref)) (!
  (=>
    (Seq_contains xs@104@01 x@109@01)
    (and
      (= (inv@110@01 x@109@01 i@105@01) x@109@01)
      (img@111@01 x@109@01 i@105@01)))
  :pattern ((Seq_contains xs@104@01 x@109@01))
  :pattern ((Seq_contains_trigger xs@104@01 x@109@01))
  :pattern ((Seq_contains_trigger xs@104@01 x@109@01))
  :pattern ((inv@110@01 x@109@01 i@105@01))
  :pattern ((img@111@01 x@109@01 i@105@01))
  :qid |quant-u-15987|)))
(assert (forall ((a $Ref) (b Int)) (!
  (=>
    (and (img@111@01 a b) (Seq_contains xs@104@01 (inv@110@01 a b)))
    (and (= (inv@110@01 a b) a) (= i@105@01 b)))
  :pattern ((inv@110@01 a b))
  :qid |p2-fctOfInv|)))
; Permissions are non-negative
(assert (=
  ($Snap.second $t@108@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@108@01))
    ($Snap.second ($Snap.second $t@108@01)))))
(declare-const x@112@01 $Ref)
(push) ; 3
; [eval] (x in xs) && i > 0
; [eval] (x in xs)
(push) ; 4
; [then-branch: 18 | !(x@112@01 in xs@104@01) | live]
; [else-branch: 18 | x@112@01 in xs@104@01 | live]
(push) ; 5
; [then-branch: 18 | !(x@112@01 in xs@104@01)]
(assert (not (Seq_contains xs@104@01 x@112@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 18 | x@112@01 in xs@104@01]
(assert (Seq_contains xs@104@01 x@112@01))
; [eval] i > 0
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (Seq_contains xs@104@01 x@112@01) (not (Seq_contains xs@104@01 x@112@01))))
(assert (and (Seq_contains xs@104@01 x@112@01) (> i@105@01 0)))
(pop) ; 3
(declare-fun inv@113@01 ($Ref) $Ref)
(declare-fun img@114@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((x@112@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@104@01 x@112@01) (> i@105@01 0))
    (or
      (Seq_contains xs@104@01 x@112@01)
      (not (Seq_contains xs@104@01 x@112@01))))
  :pattern ((Seq_contains xs@104@01 x@112@01))
  :pattern ((Seq_contains_trigger xs@104@01 x@112@01))
  :pattern ((Seq_contains_trigger xs@104@01 x@112@01))
  :pattern ((inv@113@01 x@112@01))
  :pattern ((img@114@01 x@112@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@112@01 $Ref) (x2@112@01 $Ref)) (!
  (=>
    (and
      (and (Seq_contains xs@104@01 x1@112@01) (> i@105@01 0))
      (and (Seq_contains xs@104@01 x2@112@01) (> i@105@01 0))
      (= x1@112@01 x2@112@01))
    (= x1@112@01 x2@112@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@112@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@104@01 x@112@01) (> i@105@01 0))
    (and (= (inv@113@01 x@112@01) x@112@01) (img@114@01 x@112@01)))
  :pattern ((Seq_contains xs@104@01 x@112@01))
  :pattern ((Seq_contains_trigger xs@104@01 x@112@01))
  :pattern ((Seq_contains_trigger xs@104@01 x@112@01))
  :pattern ((inv@113@01 x@112@01))
  :pattern ((img@114@01 x@112@01))
  :qid |quant-u-15989|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@114@01 r)
      (and (Seq_contains xs@104@01 (inv@113@01 r)) (> i@105@01 0)))
    (= (inv@113@01 r) r))
  :pattern ((inv@113@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@112@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@104@01 x@112@01) (> i@105@01 0))
    (not (= x@112@01 $Ref.null)))
  :pattern ((Seq_contains xs@104@01 x@112@01))
  :pattern ((Seq_contains_trigger xs@104@01 x@112@01))
  :pattern ((Seq_contains_trigger xs@104@01 x@112@01))
  :pattern ((inv@113@01 x@112@01))
  :pattern ((img@114@01 x@112@01))
  :qid |f-permImpliesNonNull|)))
(assert (= ($Snap.second ($Snap.second $t@108@01)) $Snap.unit))
; [eval] (forall x: Ref :: { (x in xs) } (x in xs) && i > 0 ==> x.f > 0)
(declare-const x@115@01 $Ref)
(push) ; 3
; [eval] (x in xs) && i > 0 ==> x.f > 0
; [eval] (x in xs) && i > 0
; [eval] (x in xs)
(push) ; 4
; [then-branch: 19 | !(x@115@01 in xs@104@01) | live]
; [else-branch: 19 | x@115@01 in xs@104@01 | live]
(push) ; 5
; [then-branch: 19 | !(x@115@01 in xs@104@01)]
(assert (not (Seq_contains xs@104@01 x@115@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 19 | x@115@01 in xs@104@01]
(assert (Seq_contains xs@104@01 x@115@01))
; [eval] i > 0
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (Seq_contains xs@104@01 x@115@01) (not (Seq_contains xs@104@01 x@115@01))))
(push) ; 4
; [then-branch: 20 | x@115@01 in xs@104@01 && i@105@01 > 0 | live]
; [else-branch: 20 | !(x@115@01 in xs@104@01 && i@105@01 > 0) | live]
(push) ; 5
; [then-branch: 20 | x@115@01 in xs@104@01 && i@105@01 > 0]
(assert (and (Seq_contains xs@104@01 x@115@01) (> i@105@01 0)))
; [eval] x.f > 0
(push) ; 6
(assert (not (and
  (img@114@01 x@115@01)
  (and (Seq_contains xs@104@01 (inv@113@01 x@115@01)) (> i@105@01 0)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 20 | !(x@115@01 in xs@104@01 && i@105@01 > 0)]
(assert (not (and (Seq_contains xs@104@01 x@115@01) (> i@105@01 0))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (Seq_contains xs@104@01 x@115@01) (> i@105@01 0)))
  (and (Seq_contains xs@104@01 x@115@01) (> i@105@01 0))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@115@01 $Ref)) (!
  (and
    (or
      (Seq_contains xs@104@01 x@115@01)
      (not (Seq_contains xs@104@01 x@115@01)))
    (or
      (not (and (Seq_contains xs@104@01 x@115@01) (> i@105@01 0)))
      (and (Seq_contains xs@104@01 x@115@01) (> i@105@01 0))))
  :pattern ((Seq_contains xs@104@01 x@115@01))
  :pattern ((Seq_contains_trigger xs@104@01 x@115@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/independence.vpr@64@10@64@88-aux|)))
(assert (forall ((x@115@01 $Ref)) (!
  (and
    (or
      (Seq_contains xs@104@01 x@115@01)
      (not (Seq_contains xs@104@01 x@115@01)))
    (or
      (not (and (Seq_contains xs@104@01 x@115@01) (> i@105@01 0)))
      (and (Seq_contains xs@104@01 x@115@01) (> i@105@01 0))))
  :pattern ((Seq_contains_trigger xs@104@01 x@115@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/independence.vpr@64@10@64@88-aux|)))
(assert (forall ((x@115@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@104@01 x@115@01) (> i@105@01 0))
    (>
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@108@01))) x@115@01)
      0))
  :pattern ((Seq_contains xs@104@01 x@115@01))
  :pattern ((Seq_contains_trigger xs@104@01 x@115@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/independence.vpr@64@10@64@88|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(p1(r), write)
(assert (not (= r@103@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (p1%trigger ($Snap.first $t@106@01) r@103@01))
; [exec]
; fold acc(p1(r), write)
; [exec]
; assert r.f > 0
; [eval] r.f > 0
(set-option :timeout 0)
(push) ; 3
(assert (not (and
  (img@114@01 r@103@01)
  (and (Seq_contains xs@104@01 (inv@113@01 r@103@01)) (> i@105@01 0)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (>
  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@108@01))) r@103@01)
  0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (>
  ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@108@01))) r@103@01)
  0))
; [exec]
; exhale (forall x: Ref ::(x in xs) ==> acc(p2(x, i), write)) &&
;   (forall x: Ref ::(x in xs) && i > 0 ==> acc(x.f, write)) &&
;   (forall x: Ref :: { (x in xs) } (x in xs) && i > 0 ==> x.f > 0)
(declare-const x@116@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@104@01 x@116@01))
(pop) ; 3
(declare-fun inv@117@01 ($Ref Int) $Ref)
(declare-fun img@118@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@116@01 $Ref) (x2@116@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@104@01 x1@116@01)
      (Seq_contains xs@104@01 x2@116@01)
      (= x1@116@01 x2@116@01))
    (= x1@116@01 x2@116@01))
  
  :qid |p2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@116@01 $Ref)) (!
  (=>
    (Seq_contains xs@104@01 x@116@01)
    (and
      (= (inv@117@01 x@116@01 i@105@01) x@116@01)
      (img@118@01 x@116@01 i@105@01)))
  :pattern ((Seq_contains xs@104@01 x@116@01))
  :pattern ((Seq_contains_trigger xs@104@01 x@116@01))
  :pattern ((inv@117@01 x@116@01 i@105@01))
  :pattern ((img@118@01 x@116@01 i@105@01))
  :qid |p2-invOfFct|)))
(assert (forall ((a $Ref) (b Int)) (!
  (=>
    (and (img@118@01 a b) (Seq_contains xs@104@01 (inv@117@01 a b)))
    (and (= (inv@117@01 a b) a) (= i@105@01 b)))
  :pattern ((inv@117@01 a b))
  :qid |p2-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@119@01 ((a $Ref) (b Int)) $Perm
  (ite
    (and
      (Seq_contains xs@104@01 (inv@117@01 a b))
      (img@118@01 a b)
      (and (= a (inv@117@01 a b)) (= b i@105@01)))
    ($Perm.min
      (ite
        (and (img@111@01 a b) (Seq_contains xs@104@01 (inv@110@01 a b)))
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
(assert (not (forall ((a $Ref) (b Int)) (!
  (=
    (-
      (ite
        (and (img@111@01 a b) (Seq_contains xs@104@01 (inv@110@01 a b)))
        $Perm.Write
        $Perm.No)
      (pTaken@119@01 a b))
    $Perm.No)
  
  :qid |quant-u-15992|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a $Ref) (b Int)) (!
  (=>
    (and
      (Seq_contains xs@104@01 (inv@117@01 a b))
      (img@118@01 a b)
      (and (= a (inv@117@01 a b)) (= b i@105@01)))
    (= (- $Perm.Write (pTaken@119@01 a b)) $Perm.No))
  
  :qid |quant-u-15993|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const x@120@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs) && i > 0
; [eval] (x in xs)
(push) ; 4
; [then-branch: 21 | !(x@120@01 in xs@104@01) | live]
; [else-branch: 21 | x@120@01 in xs@104@01 | live]
(push) ; 5
; [then-branch: 21 | !(x@120@01 in xs@104@01)]
(assert (not (Seq_contains xs@104@01 x@120@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 21 | x@120@01 in xs@104@01]
(assert (Seq_contains xs@104@01 x@120@01))
; [eval] i > 0
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (Seq_contains xs@104@01 x@120@01) (not (Seq_contains xs@104@01 x@120@01))))
(assert (and (Seq_contains xs@104@01 x@120@01) (> i@105@01 0)))
(pop) ; 3
(declare-fun inv@121@01 ($Ref) $Ref)
(declare-fun img@122@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((x@120@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@104@01 x@120@01) (> i@105@01 0))
    (or
      (Seq_contains xs@104@01 x@120@01)
      (not (Seq_contains xs@104@01 x@120@01))))
  :pattern ((Seq_contains xs@104@01 x@120@01))
  :pattern ((Seq_contains_trigger xs@104@01 x@120@01))
  :pattern ((Seq_contains_trigger xs@104@01 x@120@01))
  :pattern ((inv@121@01 x@120@01))
  :pattern ((img@122@01 x@120@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@120@01 $Ref) (x2@120@01 $Ref)) (!
  (=>
    (and
      (and (Seq_contains xs@104@01 x1@120@01) (> i@105@01 0))
      (and (Seq_contains xs@104@01 x2@120@01) (> i@105@01 0))
      (= x1@120@01 x2@120@01))
    (= x1@120@01 x2@120@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@120@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@104@01 x@120@01) (> i@105@01 0))
    (and (= (inv@121@01 x@120@01) x@120@01) (img@122@01 x@120@01)))
  :pattern ((Seq_contains xs@104@01 x@120@01))
  :pattern ((Seq_contains_trigger xs@104@01 x@120@01))
  :pattern ((inv@121@01 x@120@01))
  :pattern ((img@122@01 x@120@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@122@01 r)
      (and (Seq_contains xs@104@01 (inv@121@01 r)) (> i@105@01 0)))
    (= (inv@121@01 r) r))
  :pattern ((inv@121@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@123@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (Seq_contains xs@104@01 (inv@121@01 r)) (> i@105@01 0))
      (img@122@01 r)
      (= r (inv@121@01 r)))
    ($Perm.min
      (ite
        (and
          (img@114@01 r)
          (and (Seq_contains xs@104@01 (inv@113@01 r)) (> i@105@01 0)))
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
          (img@114@01 r)
          (and (Seq_contains xs@104@01 (inv@113@01 r)) (> i@105@01 0)))
        $Perm.Write
        $Perm.No)
      (pTaken@123@01 r))
    $Perm.No)
  
  :qid |quant-u-15996|))))
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
      (and (Seq_contains xs@104@01 (inv@121@01 r)) (> i@105@01 0))
      (img@122@01 r)
      (= r (inv@121@01 r)))
    (= (- $Perm.Write (pTaken@123@01 r)) $Perm.No))
  
  :qid |quant-u-15997|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall x: Ref :: { (x in xs) } (x in xs) && i > 0 ==> x.f > 0)
(declare-const x@124@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs) && i > 0 ==> x.f > 0
; [eval] (x in xs) && i > 0
; [eval] (x in xs)
(push) ; 4
; [then-branch: 22 | !(x@124@01 in xs@104@01) | live]
; [else-branch: 22 | x@124@01 in xs@104@01 | live]
(push) ; 5
; [then-branch: 22 | !(x@124@01 in xs@104@01)]
(assert (not (Seq_contains xs@104@01 x@124@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 22 | x@124@01 in xs@104@01]
(assert (Seq_contains xs@104@01 x@124@01))
; [eval] i > 0
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (Seq_contains xs@104@01 x@124@01) (not (Seq_contains xs@104@01 x@124@01))))
(push) ; 4
; [then-branch: 23 | x@124@01 in xs@104@01 && i@105@01 > 0 | live]
; [else-branch: 23 | !(x@124@01 in xs@104@01 && i@105@01 > 0) | live]
(push) ; 5
; [then-branch: 23 | x@124@01 in xs@104@01 && i@105@01 > 0]
(assert (and (Seq_contains xs@104@01 x@124@01) (> i@105@01 0)))
; [eval] x.f > 0
(push) ; 6
(assert (not (and
  (img@114@01 x@124@01)
  (and (Seq_contains xs@104@01 (inv@113@01 x@124@01)) (> i@105@01 0)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 23 | !(x@124@01 in xs@104@01 && i@105@01 > 0)]
(assert (not (and (Seq_contains xs@104@01 x@124@01) (> i@105@01 0))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (Seq_contains xs@104@01 x@124@01) (> i@105@01 0)))
  (and (Seq_contains xs@104@01 x@124@01) (> i@105@01 0))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@124@01 $Ref)) (!
  (and
    (or
      (Seq_contains xs@104@01 x@124@01)
      (not (Seq_contains xs@104@01 x@124@01)))
    (or
      (not (and (Seq_contains xs@104@01 x@124@01) (> i@105@01 0)))
      (and (Seq_contains xs@104@01 x@124@01) (> i@105@01 0))))
  :pattern ((Seq_contains xs@104@01 x@124@01))
  :pattern ((Seq_contains_trigger xs@104@01 x@124@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/independence.vpr@68@10@68@88-aux|)))
(assert (forall ((x@124@01 $Ref)) (!
  (and
    (or
      (Seq_contains xs@104@01 x@124@01)
      (not (Seq_contains xs@104@01 x@124@01)))
    (or
      (not (and (Seq_contains xs@104@01 x@124@01) (> i@105@01 0)))
      (and (Seq_contains xs@104@01 x@124@01) (> i@105@01 0))))
  :pattern ((Seq_contains_trigger xs@104@01 x@124@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/independence.vpr@68@10@68@88-aux|)))
(push) ; 3
(assert (not (forall ((x@124@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@104@01 x@124@01) (> i@105@01 0))
    (>
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@108@01))) x@124@01)
      0))
  :pattern ((Seq_contains xs@104@01 x@124@01))
  :pattern ((Seq_contains_trigger xs@104@01 x@124@01))
  :pattern ((Seq_contains_trigger xs@104@01 x@124@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/independence.vpr@68@10@68@88|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((x@124@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@104@01 x@124@01) (> i@105@01 0))
    (>
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@108@01))) x@124@01)
      0))
  :pattern ((Seq_contains xs@104@01 x@124@01))
  :pattern ((Seq_contains_trigger xs@104@01 x@124@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/independence.vpr@68@10@68@88|)))
; [exec]
; unfold acc(p1(r), write)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
; [exec]
; fold acc(p1(r), write)
; [exec]
; assert r.f > 0
; [eval] r.f > 0
(declare-const sm@125@01 $FVF<f>)
; Definitional axioms for snapshot map values
(declare-const pm@126@01 $FPM)
(assert (forall ((r $Ref)) (!
  (= ($FVF.perm_f (as pm@126@01  $FPM) r) $Perm.No)
  :pattern (($FVF.perm_f (as pm@126@01  $FPM) r))
  :qid |qp.resPrmSumDef6|)))
(set-option :timeout 0)
(push) ; 3
(assert (not (< $Perm.No ($FVF.perm_f (as pm@126@01  $FPM) r@103@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] r.f > 0
(declare-const sm@127@01 $FVF<f>)
; Definitional axioms for snapshot map values
(declare-const pm@128@01 $FPM)
(assert (forall ((r $Ref)) (!
  (= ($FVF.perm_f (as pm@128@01  $FPM) r) $Perm.No)
  :pattern (($FVF.perm_f (as pm@128@01  $FPM) r))
  :qid |qp.resPrmSumDef7|)))
(set-option :timeout 0)
(push) ; 3
(assert (not (< $Perm.No ($FVF.perm_f (as pm@128@01  $FPM) r@103@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] r.f > 0
(declare-const sm@129@01 $FVF<f>)
; Definitional axioms for snapshot map values
(declare-const pm@130@01 $FPM)
(assert (forall ((r $Ref)) (!
  (= ($FVF.perm_f (as pm@130@01  $FPM) r) $Perm.No)
  :pattern (($FVF.perm_f (as pm@130@01  $FPM) r))
  :qid |qp.resPrmSumDef8|)))
(set-option :timeout 0)
(push) ; 3
(assert (not (< $Perm.No ($FVF.perm_f (as pm@130@01  $FPM) r@103@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] r.f > 0
(declare-const sm@131@01 $FVF<f>)
; Definitional axioms for snapshot map values
(declare-const pm@132@01 $FPM)
(assert (forall ((r $Ref)) (!
  (= ($FVF.perm_f (as pm@132@01  $FPM) r) $Perm.No)
  :pattern (($FVF.perm_f (as pm@132@01  $FPM) r))
  :qid |qp.resPrmSumDef9|)))
(set-option :timeout 0)
(push) ; 3
(assert (not (< $Perm.No ($FVF.perm_f (as pm@132@01  $FPM) r@103@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- m5 ----------
(declare-const r@133@01 $Ref)
(declare-const r2@134@01 $Ref)
(declare-const xs@135@01 Seq<$Ref>)
(declare-const i@136@01 Int)
(declare-const r@137@01 $Ref)
(declare-const r2@138@01 $Ref)
(declare-const xs@139@01 Seq<$Ref>)
(declare-const i@140@01 Int)
(push) ; 1
(declare-const $t@141@01 $Snap)
(assert (= $t@141@01 ($Snap.combine ($Snap.first $t@141@01) ($Snap.second $t@141@01))))
(declare-const sm@142@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@142@01  $FVF<f>) r@137@01)
  ($SortWrappers.$SnapToInt ($Snap.first $t@141@01))))
(assert (not (= r@137@01 $Ref.null)))
(assert (=
  ($Snap.second $t@141@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@141@01))
    ($Snap.second ($Snap.second $t@141@01)))))
(declare-const sm@143@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@143@01  $FVF<f>) r2@138@01)
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@141@01)))))
(push) ; 2
(set-option :timeout 10)
(assert (not (= r2@138@01 r@137@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= r2@138@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second $t@141@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@141@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@141@01))))))
; [eval] r2 != null
; [eval] r != null
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; inhale (forall x: Ref ::(x in xs) ==> acc(p2(x, i), write)) &&
;   (forall x: Ref ::(x in xs) && i > 0 ==> acc(x.f, write)) &&
;   (forall x: Ref :: { (x in xs) } (x in xs) && i > 0 ==> x.f > 0)
(declare-const $t@144@01 $Snap)
(assert (= $t@144@01 ($Snap.combine ($Snap.first $t@144@01) ($Snap.second $t@144@01))))
(declare-const x@145@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@139@01 x@145@01))
(pop) ; 3
(declare-fun inv@146@01 ($Ref Int) $Ref)
(declare-fun img@147@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@145@01 $Ref) (x2@145@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@139@01 x1@145@01)
      (Seq_contains xs@139@01 x2@145@01)
      (= x1@145@01 x2@145@01))
    (= x1@145@01 x2@145@01))
  
  :qid |p2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@145@01 $Ref)) (!
  (=>
    (Seq_contains xs@139@01 x@145@01)
    (and
      (= (inv@146@01 x@145@01 i@140@01) x@145@01)
      (img@147@01 x@145@01 i@140@01)))
  :pattern ((Seq_contains xs@139@01 x@145@01))
  :pattern ((Seq_contains_trigger xs@139@01 x@145@01))
  :pattern ((Seq_contains_trigger xs@139@01 x@145@01))
  :pattern ((inv@146@01 x@145@01 i@140@01))
  :pattern ((img@147@01 x@145@01 i@140@01))
  :qid |quant-u-15999|)))
(assert (forall ((a $Ref) (b Int)) (!
  (=>
    (and (img@147@01 a b) (Seq_contains xs@139@01 (inv@146@01 a b)))
    (and (= (inv@146@01 a b) a) (= i@140@01 b)))
  :pattern ((inv@146@01 a b))
  :qid |p2-fctOfInv|)))
; Permissions are non-negative
(assert (=
  ($Snap.second $t@144@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@144@01))
    ($Snap.second ($Snap.second $t@144@01)))))
(declare-const x@148@01 $Ref)
(push) ; 3
; [eval] (x in xs) && i > 0
; [eval] (x in xs)
(push) ; 4
; [then-branch: 24 | !(x@148@01 in xs@139@01) | live]
; [else-branch: 24 | x@148@01 in xs@139@01 | live]
(push) ; 5
; [then-branch: 24 | !(x@148@01 in xs@139@01)]
(assert (not (Seq_contains xs@139@01 x@148@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 24 | x@148@01 in xs@139@01]
(assert (Seq_contains xs@139@01 x@148@01))
; [eval] i > 0
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (Seq_contains xs@139@01 x@148@01) (not (Seq_contains xs@139@01 x@148@01))))
(assert (and (Seq_contains xs@139@01 x@148@01) (> i@140@01 0)))
(pop) ; 3
(declare-fun inv@149@01 ($Ref) $Ref)
(declare-fun img@150@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((x@148@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@139@01 x@148@01) (> i@140@01 0))
    (or
      (Seq_contains xs@139@01 x@148@01)
      (not (Seq_contains xs@139@01 x@148@01))))
  :pattern ((Seq_contains xs@139@01 x@148@01))
  :pattern ((Seq_contains_trigger xs@139@01 x@148@01))
  :pattern ((Seq_contains_trigger xs@139@01 x@148@01))
  :pattern ((inv@149@01 x@148@01))
  :pattern ((img@150@01 x@148@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@148@01 $Ref) (x2@148@01 $Ref)) (!
  (=>
    (and
      (and (Seq_contains xs@139@01 x1@148@01) (> i@140@01 0))
      (and (Seq_contains xs@139@01 x2@148@01) (> i@140@01 0))
      (= x1@148@01 x2@148@01))
    (= x1@148@01 x2@148@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@148@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@139@01 x@148@01) (> i@140@01 0))
    (and (= (inv@149@01 x@148@01) x@148@01) (img@150@01 x@148@01)))
  :pattern ((Seq_contains xs@139@01 x@148@01))
  :pattern ((Seq_contains_trigger xs@139@01 x@148@01))
  :pattern ((Seq_contains_trigger xs@139@01 x@148@01))
  :pattern ((inv@149@01 x@148@01))
  :pattern ((img@150@01 x@148@01))
  :qid |quant-u-16001|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@150@01 r)
      (and (Seq_contains xs@139@01 (inv@149@01 r)) (> i@140@01 0)))
    (= (inv@149@01 r) r))
  :pattern ((inv@149@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@148@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@139@01 x@148@01) (> i@140@01 0))
    (not (= x@148@01 $Ref.null)))
  :pattern ((Seq_contains xs@139@01 x@148@01))
  :pattern ((Seq_contains_trigger xs@139@01 x@148@01))
  :pattern ((Seq_contains_trigger xs@139@01 x@148@01))
  :pattern ((inv@149@01 x@148@01))
  :pattern ((img@150@01 x@148@01))
  :qid |f-permImpliesNonNull|)))
(assert (= ($Snap.second ($Snap.second $t@144@01)) $Snap.unit))
; [eval] (forall x: Ref :: { (x in xs) } (x in xs) && i > 0 ==> x.f > 0)
(declare-const x@151@01 $Ref)
(push) ; 3
; [eval] (x in xs) && i > 0 ==> x.f > 0
; [eval] (x in xs) && i > 0
; [eval] (x in xs)
(push) ; 4
; [then-branch: 25 | !(x@151@01 in xs@139@01) | live]
; [else-branch: 25 | x@151@01 in xs@139@01 | live]
(push) ; 5
; [then-branch: 25 | !(x@151@01 in xs@139@01)]
(assert (not (Seq_contains xs@139@01 x@151@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 25 | x@151@01 in xs@139@01]
(assert (Seq_contains xs@139@01 x@151@01))
; [eval] i > 0
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (Seq_contains xs@139@01 x@151@01) (not (Seq_contains xs@139@01 x@151@01))))
(push) ; 4
; [then-branch: 26 | x@151@01 in xs@139@01 && i@140@01 > 0 | live]
; [else-branch: 26 | !(x@151@01 in xs@139@01 && i@140@01 > 0) | live]
(push) ; 5
; [then-branch: 26 | x@151@01 in xs@139@01 && i@140@01 > 0]
(assert (and (Seq_contains xs@139@01 x@151@01) (> i@140@01 0)))
; [eval] x.f > 0
(declare-const sm@152@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r r@137@01)
    (=
      ($FVF.lookup_f (as sm@152@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@142@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@152@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@142@01  $FVF<f>) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r r2@138@01)
    (=
      ($FVF.lookup_f (as sm@152@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@143@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@152@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@143@01  $FVF<f>) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@150@01 r)
      (and (Seq_contains xs@139@01 (inv@149@01 r)) (> i@140@01 0)))
    (=
      ($FVF.lookup_f (as sm@152@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@144@01))) r)))
  :pattern (($FVF.lookup_f (as sm@152@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@144@01))) r))
  :qid |qp.fvfValDef12|)))
(declare-const pm@153@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@153@01  $FPM) r)
    (+
      (+
        (ite (= r r@137@01) $Perm.Write $Perm.No)
        (ite (= r r2@138@01) $Perm.Write $Perm.No))
      (ite
        (and
          (img@150@01 r)
          (and (Seq_contains xs@139@01 (inv@149@01 r)) (> i@140@01 0)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@153@01  $FPM) r))
  :qid |qp.resPrmSumDef13|)))
(push) ; 6
(assert (not (< $Perm.No ($FVF.perm_f (as pm@153@01  $FPM) x@151@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 26 | !(x@151@01 in xs@139@01 && i@140@01 > 0)]
(assert (not (and (Seq_contains xs@139@01 x@151@01) (> i@140@01 0))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r r@137@01)
    (=
      ($FVF.lookup_f (as sm@152@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@142@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@152@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@142@01  $FVF<f>) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r r2@138@01)
    (=
      ($FVF.lookup_f (as sm@152@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@143@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@152@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@143@01  $FVF<f>) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@150@01 r)
      (and (Seq_contains xs@139@01 (inv@149@01 r)) (> i@140@01 0)))
    (=
      ($FVF.lookup_f (as sm@152@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@144@01))) r)))
  :pattern (($FVF.lookup_f (as sm@152@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@144@01))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@153@01  $FPM) r)
    (+
      (+
        (ite (= r r@137@01) $Perm.Write $Perm.No)
        (ite (= r r2@138@01) $Perm.Write $Perm.No))
      (ite
        (and
          (img@150@01 r)
          (and (Seq_contains xs@139@01 (inv@149@01 r)) (> i@140@01 0)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@153@01  $FPM) r))
  :qid |qp.resPrmSumDef13|)))
; Joined path conditions
(assert (or
  (not (and (Seq_contains xs@139@01 x@151@01) (> i@140@01 0)))
  (and (Seq_contains xs@139@01 x@151@01) (> i@140@01 0))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (= r r@137@01)
    (=
      ($FVF.lookup_f (as sm@152@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@142@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@152@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@142@01  $FVF<f>) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r r2@138@01)
    (=
      ($FVF.lookup_f (as sm@152@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@143@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@152@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@143@01  $FVF<f>) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@150@01 r)
      (and (Seq_contains xs@139@01 (inv@149@01 r)) (> i@140@01 0)))
    (=
      ($FVF.lookup_f (as sm@152@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@144@01))) r)))
  :pattern (($FVF.lookup_f (as sm@152@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@144@01))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@153@01  $FPM) r)
    (+
      (+
        (ite (= r r@137@01) $Perm.Write $Perm.No)
        (ite (= r r2@138@01) $Perm.Write $Perm.No))
      (ite
        (and
          (img@150@01 r)
          (and (Seq_contains xs@139@01 (inv@149@01 r)) (> i@140@01 0)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@153@01  $FPM) r))
  :qid |qp.resPrmSumDef13|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@151@01 $Ref)) (!
  (and
    (or
      (Seq_contains xs@139@01 x@151@01)
      (not (Seq_contains xs@139@01 x@151@01)))
    (or
      (not (and (Seq_contains xs@139@01 x@151@01) (> i@140@01 0)))
      (and (Seq_contains xs@139@01 x@151@01) (> i@140@01 0))))
  :pattern ((Seq_contains xs@139@01 x@151@01))
  :pattern ((Seq_contains_trigger xs@139@01 x@151@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/independence.vpr@82@12@82@88-aux|)))
(assert (forall ((x@151@01 $Ref)) (!
  (and
    (or
      (Seq_contains xs@139@01 x@151@01)
      (not (Seq_contains xs@139@01 x@151@01)))
    (or
      (not (and (Seq_contains xs@139@01 x@151@01) (> i@140@01 0)))
      (and (Seq_contains xs@139@01 x@151@01) (> i@140@01 0))))
  :pattern ((Seq_contains_trigger xs@139@01 x@151@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/independence.vpr@82@12@82@88-aux|)))
(assert (forall ((x@151@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@139@01 x@151@01) (> i@140@01 0))
    (> ($FVF.lookup_f (as sm@152@01  $FVF<f>) x@151@01) 0))
  :pattern ((Seq_contains xs@139@01 x@151@01))
  :pattern ((Seq_contains_trigger xs@139@01 x@151@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/independence.vpr@82@12@82@88|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; apply acc(r.f, write) --* r != null && (acc(r.g, write) && r.g == i)
; [eval] r != null
; Precomputing data for removing quantified permissions
(define-fun pTaken@154@01 ((r $Ref)) $Perm
  (ite
    (= r r@137@01)
    ($Perm.min (ite (= r r@137@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
(define-fun pTaken@155@01 ((r $Ref)) $Perm
  (ite
    (= r r@137@01)
    ($Perm.min
      (ite (= r r2@138@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@154@01 r)))
    $Perm.No))
(define-fun pTaken@156@01 ((r $Ref)) $Perm
  (ite
    (= r r@137@01)
    ($Perm.min
      (ite
        (and
          (img@150@01 r)
          (and (Seq_contains xs@139@01 (inv@149@01 r)) (> i@140@01 0)))
        $Perm.Write
        $Perm.No)
      (- (- $Perm.Write (pTaken@154@01 r)) (pTaken@155@01 r)))
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
(assert (not (= (- $Perm.Write (pTaken@154@01 r@137@01)) $Perm.No)))
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
  (=> (= r r@137@01) (= (- $Perm.Write (pTaken@154@01 r)) $Perm.No))
  
  :qid |quant-u-16004|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map values (instantiated)
(assert (=
  ($FVF.lookup_f (as sm@152@01  $FVF<f>) r@137@01)
  ($FVF.lookup_f (as sm@142@01  $FVF<f>) r@137@01)))
(assert (=>
  (= r@137@01 r2@138@01)
  (=
    ($FVF.lookup_f (as sm@152@01  $FVF<f>) r@137@01)
    ($FVF.lookup_f (as sm@143@01  $FVF<f>) r@137@01))))
(assert (=>
  (and
    (img@150@01 r@137@01)
    (and (Seq_contains xs@139@01 (inv@149@01 r@137@01)) (> i@140@01 0)))
  (=
    ($FVF.lookup_f (as sm@152@01  $FVF<f>) r@137@01)
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@144@01))) r@137@01))))
(assert (=
  (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second $t@141@01)))) ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@152@01  $FVF<f>) r@137@01)))
  ($Snap.combine
    ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second $t@141@01)))) ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@152@01  $FVF<f>) r@137@01))))
    ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second $t@141@01)))) ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@152@01  $FVF<f>) r@137@01)))))))
(assert (=
  ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second $t@141@01)))) ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@152@01  $FVF<f>) r@137@01))))
  $Snap.unit))
; [eval] r != null
(assert (=
  ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second $t@141@01)))) ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@152@01  $FVF<f>) r@137@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second $t@141@01)))) ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@152@01  $FVF<f>) r@137@01)))))
    ($Snap.second ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second $t@141@01)))) ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@152@01  $FVF<f>) r@137@01))))))))
(assert (=
  ($Snap.second ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second $t@141@01)))) ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@152@01  $FVF<f>) r@137@01)))))
  $Snap.unit))
; [eval] r.g == i
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second $t@141@01)))) ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@152@01  $FVF<f>) r@137@01))))))
  i@140@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@157@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@150@01 r)
      (and (Seq_contains xs@139@01 (inv@149@01 r)) (> i@140@01 0)))
    (=
      ($FVF.lookup_f (as sm@157@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@144@01))) r)))
  :pattern (($FVF.lookup_f (as sm@157@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@144@01))) r))
  :qid |qp.fvfValDef14|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r r2@138@01)
    (=
      ($FVF.lookup_f (as sm@157@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@143@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@157@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@143@01  $FVF<f>) r))
  :qid |qp.fvfValDef15|)))
(declare-const pm@158@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@158@01  $FPM) r)
    (+
      (ite
        (and
          (img@150@01 r)
          (and (Seq_contains xs@139@01 (inv@149@01 r)) (> i@140@01 0)))
        $Perm.Write
        $Perm.No)
      (ite (= r r2@138@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@158@01  $FPM) r))
  :qid |qp.resPrmSumDef16|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@158@01  $FPM) r) $Perm.Write)
  :pattern ((inv@149@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@158@01  $FPM) r2@138@01) $Perm.Write))
; [exec]
; assert r.g == i
; [eval] r.g == i
; [exec]
; package acc(r.f, write) --* r != null && (acc(r.g, write) && r.g == i) {
; }
(set-option :timeout 0)
(push) ; 3
(declare-const $t@159@01 $Snap)
(declare-const sm@160@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@160@01  $FVF<f>) r@137@01)
  ($SortWrappers.$SnapToInt $t@159@01)))
; [eval] r != null
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
(check-sat)
; unknown
(check-sat)
; unknown
; [eval] r.g == i
; Create MagicWandSnapFunction for wand acc(r.f, write) --* r != null && (acc(r.g, write) && r.g == i)
(declare-const mwsf@161@01 $MWSF)
(assert (forall (($t@159@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@161@01 $t@159@01)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second $t@141@01)))) ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@152@01  $FVF<f>) r@137@01)))))
        $Snap.unit)))
  :pattern ((MWSF_apply mwsf@161@01 $t@159@01))
  :qid |quant-u-16005|)))
; [eval] r != null
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
(assert (forall (($t@159@01 $Snap)) (!
  (and
    (=
      ($FVF.lookup_f (as sm@160@01  $FVF<f>) r@137@01)
      ($SortWrappers.$SnapToInt $t@159@01))
    (=
      (MWSF_apply mwsf@161@01 $t@159@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second $t@141@01)))) ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@152@01  $FVF<f>) r@137@01)))))
          $Snap.unit))))
  :pattern ((MWSF_apply mwsf@161@01 $t@159@01))
  :qid |quant-u-16006|)))
(assert true)
; [exec]
; exhale (forall x: Ref ::(x in xs) ==> acc(p2(x, i), write)) &&
;   (forall x: Ref ::(x in xs) && i > 0 ==> acc(x.f, write)) &&
;   (forall x: Ref :: { (x in xs) } (x in xs) && i > 0 ==> x.f > 0)
(declare-const x@162@01 $Ref)
(push) ; 4
; [eval] (x in xs)
(assert (Seq_contains xs@139@01 x@162@01))
(pop) ; 4
(declare-fun inv@163@01 ($Ref Int) $Ref)
(declare-fun img@164@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@162@01 $Ref) (x2@162@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@139@01 x1@162@01)
      (Seq_contains xs@139@01 x2@162@01)
      (= x1@162@01 x2@162@01))
    (= x1@162@01 x2@162@01))
  
  :qid |p2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@162@01 $Ref)) (!
  (=>
    (Seq_contains xs@139@01 x@162@01)
    (and
      (= (inv@163@01 x@162@01 i@140@01) x@162@01)
      (img@164@01 x@162@01 i@140@01)))
  :pattern ((Seq_contains xs@139@01 x@162@01))
  :pattern ((Seq_contains_trigger xs@139@01 x@162@01))
  :pattern ((inv@163@01 x@162@01 i@140@01))
  :pattern ((img@164@01 x@162@01 i@140@01))
  :qid |p2-invOfFct|)))
(assert (forall ((a $Ref) (b Int)) (!
  (=>
    (and (img@164@01 a b) (Seq_contains xs@139@01 (inv@163@01 a b)))
    (and (= (inv@163@01 a b) a) (= i@140@01 b)))
  :pattern ((inv@163@01 a b))
  :qid |p2-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@165@01 ((a $Ref) (b Int)) $Perm
  (ite
    (and
      (Seq_contains xs@139@01 (inv@163@01 a b))
      (img@164@01 a b)
      (and (= a (inv@163@01 a b)) (= b i@140@01)))
    ($Perm.min
      (ite
        (and (img@147@01 a b) (Seq_contains xs@139@01 (inv@146@01 a b)))
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
(assert (not (forall ((a $Ref) (b Int)) (!
  (=
    (-
      (ite
        (and (img@147@01 a b) (Seq_contains xs@139@01 (inv@146@01 a b)))
        $Perm.Write
        $Perm.No)
      (pTaken@165@01 a b))
    $Perm.No)
  
  :qid |quant-u-16009|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((a $Ref) (b Int)) (!
  (=>
    (and
      (Seq_contains xs@139@01 (inv@163@01 a b))
      (img@164@01 a b)
      (and (= a (inv@163@01 a b)) (= b i@140@01)))
    (= (- $Perm.Write (pTaken@165@01 a b)) $Perm.No))
  
  :qid |quant-u-16010|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const x@166@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] (x in xs) && i > 0
; [eval] (x in xs)
(push) ; 5
; [then-branch: 27 | !(x@166@01 in xs@139@01) | live]
; [else-branch: 27 | x@166@01 in xs@139@01 | live]
(push) ; 6
; [then-branch: 27 | !(x@166@01 in xs@139@01)]
(assert (not (Seq_contains xs@139@01 x@166@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 27 | x@166@01 in xs@139@01]
(assert (Seq_contains xs@139@01 x@166@01))
; [eval] i > 0
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (Seq_contains xs@139@01 x@166@01) (not (Seq_contains xs@139@01 x@166@01))))
(assert (and (Seq_contains xs@139@01 x@166@01) (> i@140@01 0)))
(pop) ; 4
(declare-fun inv@167@01 ($Ref) $Ref)
(declare-fun img@168@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((x@166@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@139@01 x@166@01) (> i@140@01 0))
    (or
      (Seq_contains xs@139@01 x@166@01)
      (not (Seq_contains xs@139@01 x@166@01))))
  :pattern ((Seq_contains xs@139@01 x@166@01))
  :pattern ((Seq_contains_trigger xs@139@01 x@166@01))
  :pattern ((Seq_contains_trigger xs@139@01 x@166@01))
  :pattern ((inv@167@01 x@166@01))
  :pattern ((img@168@01 x@166@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@166@01 $Ref) (x2@166@01 $Ref)) (!
  (=>
    (and
      (and (Seq_contains xs@139@01 x1@166@01) (> i@140@01 0))
      (and (Seq_contains xs@139@01 x2@166@01) (> i@140@01 0))
      (= x1@166@01 x2@166@01))
    (= x1@166@01 x2@166@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@166@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@139@01 x@166@01) (> i@140@01 0))
    (and (= (inv@167@01 x@166@01) x@166@01) (img@168@01 x@166@01)))
  :pattern ((Seq_contains xs@139@01 x@166@01))
  :pattern ((Seq_contains_trigger xs@139@01 x@166@01))
  :pattern ((inv@167@01 x@166@01))
  :pattern ((img@168@01 x@166@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@168@01 r)
      (and (Seq_contains xs@139@01 (inv@167@01 r)) (> i@140@01 0)))
    (= (inv@167@01 r) r))
  :pattern ((inv@167@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@169@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (Seq_contains xs@139@01 (inv@167@01 r)) (> i@140@01 0))
      (img@168@01 r)
      (= r (inv@167@01 r)))
    ($Perm.min
      (ite
        (and
          (img@150@01 r)
          (and (Seq_contains xs@139@01 (inv@149@01 r)) (> i@140@01 0)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@170@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (Seq_contains xs@139@01 (inv@167@01 r)) (> i@140@01 0))
      (img@168@01 r)
      (= r (inv@167@01 r)))
    ($Perm.min
      (ite (= r r2@138@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@169@01 r)))
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
          (img@150@01 r)
          (and (Seq_contains xs@139@01 (inv@149@01 r)) (> i@140@01 0)))
        $Perm.Write
        $Perm.No)
      (pTaken@169@01 r))
    $Perm.No)
  
  :qid |quant-u-16013|))))
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
      (and (Seq_contains xs@139@01 (inv@167@01 r)) (> i@140@01 0))
      (img@168@01 r)
      (= r (inv@167@01 r)))
    (= (- $Perm.Write (pTaken@169@01 r)) $Perm.No))
  
  :qid |quant-u-16014|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall x: Ref :: { (x in xs) } (x in xs) && i > 0 ==> x.f > 0)
(declare-const x@171@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] (x in xs) && i > 0 ==> x.f > 0
; [eval] (x in xs) && i > 0
; [eval] (x in xs)
(push) ; 5
; [then-branch: 28 | !(x@171@01 in xs@139@01) | live]
; [else-branch: 28 | x@171@01 in xs@139@01 | live]
(push) ; 6
; [then-branch: 28 | !(x@171@01 in xs@139@01)]
(assert (not (Seq_contains xs@139@01 x@171@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 28 | x@171@01 in xs@139@01]
(assert (Seq_contains xs@139@01 x@171@01))
; [eval] i > 0
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (Seq_contains xs@139@01 x@171@01) (not (Seq_contains xs@139@01 x@171@01))))
(push) ; 5
; [then-branch: 29 | x@171@01 in xs@139@01 && i@140@01 > 0 | live]
; [else-branch: 29 | !(x@171@01 in xs@139@01 && i@140@01 > 0) | live]
(push) ; 6
; [then-branch: 29 | x@171@01 in xs@139@01 && i@140@01 > 0]
(assert (and (Seq_contains xs@139@01 x@171@01) (> i@140@01 0)))
; [eval] x.f > 0
(declare-const sm@172@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r r2@138@01)
    (=
      ($FVF.lookup_f (as sm@172@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@143@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@172@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@143@01  $FVF<f>) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@150@01 r)
      (and (Seq_contains xs@139@01 (inv@149@01 r)) (> i@140@01 0)))
    (=
      ($FVF.lookup_f (as sm@172@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@144@01))) r)))
  :pattern (($FVF.lookup_f (as sm@172@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@144@01))) r))
  :qid |qp.fvfValDef18|)))
(declare-const pm@173@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@173@01  $FPM) r)
    (+
      (ite (= r r2@138@01) $Perm.Write $Perm.No)
      (ite
        (and
          (img@150@01 r)
          (and (Seq_contains xs@139@01 (inv@149@01 r)) (> i@140@01 0)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@173@01  $FPM) r))
  :qid |qp.resPrmSumDef19|)))
(push) ; 7
(assert (not (< $Perm.No ($FVF.perm_f (as pm@173@01  $FPM) x@171@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 29 | !(x@171@01 in xs@139@01 && i@140@01 > 0)]
(assert (not (and (Seq_contains xs@139@01 x@171@01) (> i@140@01 0))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r r2@138@01)
    (=
      ($FVF.lookup_f (as sm@172@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@143@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@172@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@143@01  $FVF<f>) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@150@01 r)
      (and (Seq_contains xs@139@01 (inv@149@01 r)) (> i@140@01 0)))
    (=
      ($FVF.lookup_f (as sm@172@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@144@01))) r)))
  :pattern (($FVF.lookup_f (as sm@172@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@144@01))) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@173@01  $FPM) r)
    (+
      (ite (= r r2@138@01) $Perm.Write $Perm.No)
      (ite
        (and
          (img@150@01 r)
          (and (Seq_contains xs@139@01 (inv@149@01 r)) (> i@140@01 0)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@173@01  $FPM) r))
  :qid |qp.resPrmSumDef19|)))
; Joined path conditions
(assert (or
  (not (and (Seq_contains xs@139@01 x@171@01) (> i@140@01 0)))
  (and (Seq_contains xs@139@01 x@171@01) (> i@140@01 0))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (= r r2@138@01)
    (=
      ($FVF.lookup_f (as sm@172@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@143@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@172@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@143@01  $FVF<f>) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@150@01 r)
      (and (Seq_contains xs@139@01 (inv@149@01 r)) (> i@140@01 0)))
    (=
      ($FVF.lookup_f (as sm@172@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@144@01))) r)))
  :pattern (($FVF.lookup_f (as sm@172@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second $t@144@01))) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@173@01  $FPM) r)
    (+
      (ite (= r r2@138@01) $Perm.Write $Perm.No)
      (ite
        (and
          (img@150@01 r)
          (and (Seq_contains xs@139@01 (inv@149@01 r)) (> i@140@01 0)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@173@01  $FPM) r))
  :qid |qp.resPrmSumDef19|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@171@01 $Ref)) (!
  (and
    (or
      (Seq_contains xs@139@01 x@171@01)
      (not (Seq_contains xs@139@01 x@171@01)))
    (or
      (not (and (Seq_contains xs@139@01 x@171@01) (> i@140@01 0)))
      (and (Seq_contains xs@139@01 x@171@01) (> i@140@01 0))))
  :pattern ((Seq_contains xs@139@01 x@171@01))
  :pattern ((Seq_contains_trigger xs@139@01 x@171@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/independence.vpr@86@12@86@88-aux|)))
(assert (forall ((x@171@01 $Ref)) (!
  (and
    (or
      (Seq_contains xs@139@01 x@171@01)
      (not (Seq_contains xs@139@01 x@171@01)))
    (or
      (not (and (Seq_contains xs@139@01 x@171@01) (> i@140@01 0)))
      (and (Seq_contains xs@139@01 x@171@01) (> i@140@01 0))))
  :pattern ((Seq_contains_trigger xs@139@01 x@171@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/independence.vpr@86@12@86@88-aux|)))
(push) ; 4
(assert (not (forall ((x@171@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@139@01 x@171@01) (> i@140@01 0))
    (> ($FVF.lookup_f (as sm@172@01  $FVF<f>) x@171@01) 0))
  :pattern ((Seq_contains xs@139@01 x@171@01))
  :pattern ((Seq_contains_trigger xs@139@01 x@171@01))
  :pattern ((Seq_contains_trigger xs@139@01 x@171@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/independence.vpr@86@12@86@88|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((x@171@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@139@01 x@171@01) (> i@140@01 0))
    (> ($FVF.lookup_f (as sm@172@01  $FVF<f>) x@171@01) 0))
  :pattern ((Seq_contains xs@139@01 x@171@01))
  :pattern ((Seq_contains_trigger xs@139@01 x@171@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/independence.vpr@86@12@86@88|)))
; [exec]
; apply acc(r2.f, write) --* r2 != null && (acc(r2.g, write) && r2.g == i)
; [eval] r2 != null
; Precomputing data for removing quantified permissions
(define-fun pTaken@174@01 ((r $Ref)) $Perm
  (ite
    (= r r2@138@01)
    ($Perm.min (ite (= r r2@138@01) $Perm.Write $Perm.No) $Perm.Write)
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
(assert (not (= (- $Perm.Write (pTaken@174@01 r2@138@01)) $Perm.No)))
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
  (=> (= r r2@138@01) (= (- $Perm.Write (pTaken@174@01 r)) $Perm.No))
  
  :qid |quant-u-16017|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@175@01 $FVF<f>)
; Definitional axioms for snapshot map values (instantiated)
(assert (=
  ($FVF.lookup_f (as sm@175@01  $FVF<f>) r2@138@01)
  ($FVF.lookup_f (as sm@143@01  $FVF<f>) r2@138@01)))
(assert (=
  (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.first ($Snap.second ($Snap.second $t@141@01)))) ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@175@01  $FVF<f>) r2@138@01)))
  ($Snap.combine
    ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.first ($Snap.second ($Snap.second $t@141@01)))) ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@175@01  $FVF<f>) r2@138@01))))
    ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.first ($Snap.second ($Snap.second $t@141@01)))) ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@175@01  $FVF<f>) r2@138@01)))))))
(assert (=
  ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.first ($Snap.second ($Snap.second $t@141@01)))) ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@175@01  $FVF<f>) r2@138@01))))
  $Snap.unit))
; [eval] r2 != null
(assert (=
  ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.first ($Snap.second ($Snap.second $t@141@01)))) ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@175@01  $FVF<f>) r2@138@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.first ($Snap.second ($Snap.second $t@141@01)))) ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@175@01  $FVF<f>) r2@138@01)))))
    ($Snap.second ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.first ($Snap.second ($Snap.second $t@141@01)))) ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@175@01  $FVF<f>) r2@138@01))))))))
(assert (=
  ($Snap.second ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.first ($Snap.second ($Snap.second $t@141@01)))) ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@175@01  $FVF<f>) r2@138@01)))))
  $Snap.unit))
; [eval] r2.g == i
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.first ($Snap.second ($Snap.second $t@141@01)))) ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@175@01  $FVF<f>) r2@138@01))))))
  i@140@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [exec]
; assert r2.g == i
; [eval] r2.g == i
; [exec]
; package acc(r2.f, write) --* r2 != null && (acc(r2.g, write) && r2.g == i) {
; }
(set-option :timeout 0)
(push) ; 4
(declare-const $t@176@01 $Snap)
(declare-const sm@177@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@177@01  $FVF<f>) r2@138@01)
  ($SortWrappers.$SnapToInt $t@176@01)))
; [eval] r2 != null
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
(check-sat)
; unknown
(check-sat)
; unknown
; [eval] r2.g == i
; Create MagicWandSnapFunction for wand acc(r2.f, write) --* r2 != null && (acc(r2.g, write) && r2.g == i)
(declare-const mwsf@178@01 $MWSF)
(assert (forall (($t@176@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@178@01 $t@176@01)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.first ($Snap.second ($Snap.second $t@141@01)))) ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@175@01  $FVF<f>) r2@138@01)))))
        $Snap.unit)))
  :pattern ((MWSF_apply mwsf@178@01 $t@176@01))
  :qid |quant-u-16018|)))
; [eval] r2 != null
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
(assert (forall (($t@176@01 $Snap)) (!
  (and
    (=
      ($FVF.lookup_f (as sm@177@01  $FVF<f>) r2@138@01)
      ($SortWrappers.$SnapToInt $t@176@01))
    (=
      (MWSF_apply mwsf@178@01 $t@176@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.first ($Snap.second ($Snap.second $t@141@01)))) ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@175@01  $FVF<f>) r2@138@01)))))
          $Snap.unit))))
  :pattern ((MWSF_apply mwsf@178@01 $t@176@01))
  :qid |quant-u-16019|)))
(assert true)
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
