(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-13 17:40:47
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
(declare-sort $FVF<unrelatedField> 0)
(declare-sort $FVF<f> 0)
(declare-sort $PSF<valid> 0)
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
(declare-fun $SortWrappers.$FVF<unrelatedField>To$Snap ($FVF<unrelatedField>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<unrelatedField> ($Snap) $FVF<unrelatedField>)
(assert (forall ((x $FVF<unrelatedField>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<unrelatedField>($SortWrappers.$FVF<unrelatedField>To$Snap x)))
    :pattern (($SortWrappers.$FVF<unrelatedField>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<unrelatedField>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<unrelatedField>To$Snap($SortWrappers.$SnapTo$FVF<unrelatedField> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<unrelatedField> x))
    :qid |$Snap.$FVF<unrelatedField>To$SnapTo$FVF<unrelatedField>|
    )))
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
(declare-fun $SortWrappers.$PSF<valid>To$Snap ($PSF<valid>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<valid> ($Snap) $PSF<valid>)
(assert (forall ((x $PSF<valid>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<valid>($SortWrappers.$PSF<valid>To$Snap x)))
    :pattern (($SortWrappers.$PSF<valid>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<valid>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<valid>To$Snap($SortWrappers.$SnapTo$PSF<valid> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<valid> x))
    :qid |$Snap.$PSF<valid>To$SnapTo$PSF<valid>|
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
; /field_value_functions_declarations.smt2 [unrelatedField: Int]
(declare-fun $FVF.domain_unrelatedField ($FVF<unrelatedField>) Set<$Ref>)
(declare-fun $FVF.lookup_unrelatedField ($FVF<unrelatedField> $Ref) Int)
(declare-fun $FVF.after_unrelatedField ($FVF<unrelatedField> $FVF<unrelatedField>) Bool)
(declare-fun $FVF.loc_unrelatedField (Int $Ref) Bool)
(declare-fun $FVF.perm_unrelatedField ($FPM $Ref) $Perm)
(declare-const $fvfTOP_unrelatedField $FVF<unrelatedField>)
; /field_value_functions_declarations.smt2 [f: Int]
(declare-fun $FVF.domain_f ($FVF<f>) Set<$Ref>)
(declare-fun $FVF.lookup_f ($FVF<f> $Ref) Int)
(declare-fun $FVF.after_f ($FVF<f> $FVF<f>) Bool)
(declare-fun $FVF.loc_f (Int $Ref) Bool)
(declare-fun $FVF.perm_f ($FPM $Ref) $Perm)
(declare-const $fvfTOP_f $FVF<f>)
; /predicate_snap_functions_declarations.smt2 [valid: Snap]
(declare-fun $PSF.domain_valid ($PSF<valid>) Set<$Snap>)
(declare-fun $PSF.lookup_valid ($PSF<valid> $Snap) $Snap)
(declare-fun $PSF.after_valid ($PSF<valid> $PSF<valid>) Bool)
(declare-fun $PSF.loc_valid ($Snap $Snap) Bool)
(declare-fun $PSF.perm_valid ($PPM $Snap) $Perm)
(declare-const $psfTOP_valid $PSF<valid>)
; Declaring symbols related to program functions (from program analysis)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun valid%trigger ($Snap $Ref Bool) Bool)
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
; /field_value_functions_axioms.smt2 [unrelatedField: Int]
(assert (forall ((vs $FVF<unrelatedField>) (ws $FVF<unrelatedField>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_unrelatedField vs) ($FVF.domain_unrelatedField ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_unrelatedField vs))
            (= ($FVF.lookup_unrelatedField vs x) ($FVF.lookup_unrelatedField ws x)))
          :pattern (($FVF.lookup_unrelatedField vs x) ($FVF.lookup_unrelatedField ws x))
          :qid |qp.$FVF<unrelatedField>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<unrelatedField>To$Snap vs)
              ($SortWrappers.$FVF<unrelatedField>To$Snap ws)
              )
    :qid |qp.$FVF<unrelatedField>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_unrelatedField pm r))
    :pattern (($FVF.perm_unrelatedField pm r)))))
(assert (forall ((r $Ref) (f Int)) (!
    (= ($FVF.loc_unrelatedField f r) true)
    :pattern (($FVF.loc_unrelatedField f r)))))
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
; /predicate_snap_functions_axioms.smt2 [valid: Snap]
(assert (forall ((vs $PSF<valid>) (ws $PSF<valid>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_valid vs) ($PSF.domain_valid ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_valid vs))
            (= ($PSF.lookup_valid vs x) ($PSF.lookup_valid ws x)))
          :pattern (($PSF.lookup_valid vs x) ($PSF.lookup_valid ws x))
          :qid |qp.$PSF<valid>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<valid>To$Snap vs)
              ($SortWrappers.$PSF<valid>To$Snap ws)
              )
    :qid |qp.$PSF<valid>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_valid pm s))
    :pattern (($PSF.perm_valid pm s)))))
(assert (forall ((s $Snap) (f $Snap)) (!
    (= ($PSF.loc_valid f s) true)
    :pattern (($PSF.loc_valid f s)))))
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
; ---------- unrelated ----------
(declare-const this@0@01 $Ref)
(declare-const this@1@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@2@01 Int)
(assert (not (= this@1@01 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@3@01 Int)
(pop) ; 2
(push) ; 2
(pop) ; 2
(pop) ; 1
; ---------- t1_1 ----------
(declare-const this@4@01 $Ref)
(declare-const xs@5@01 Seq<$Ref>)
(declare-const b@6@01 Bool)
(declare-const this@7@01 $Ref)
(declare-const xs@8@01 Seq<$Ref>)
(declare-const b@9@01 Bool)
(push) ; 1
(declare-const $t@10@01 $Snap)
(assert (= $t@10@01 ($Snap.combine ($Snap.first $t@10@01) ($Snap.second $t@10@01))))
(assert (= ($Snap.first $t@10@01) $Snap.unit))
; [eval] (this in xs)
(assert (Seq_contains xs@8@01 this@7@01))
(assert (=
  ($Snap.second $t@10@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@10@01))
    ($Snap.second ($Snap.second $t@10@01)))))
(declare-const x@11@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@8@01 x@11@01))
(pop) ; 2
(declare-fun inv@12@01 ($Ref) $Ref)
(declare-fun img@13@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@11@01 $Ref) (x2@11@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@8@01 x1@11@01)
      (Seq_contains xs@8@01 x2@11@01)
      (= x1@11@01 x2@11@01))
    (= x1@11@01 x2@11@01))
  
  :qid |unrelatedField-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@11@01 $Ref)) (!
  (=>
    (Seq_contains xs@8@01 x@11@01)
    (and (= (inv@12@01 x@11@01) x@11@01) (img@13@01 x@11@01)))
  :pattern ((Seq_contains xs@8@01 x@11@01))
  :pattern ((Seq_contains_trigger xs@8@01 x@11@01))
  :pattern ((Seq_contains_trigger xs@8@01 x@11@01))
  :pattern ((inv@12@01 x@11@01))
  :pattern ((img@13@01 x@11@01))
  :qid |quant-u-16573|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@13@01 r) (Seq_contains xs@8@01 (inv@12@01 r)))
    (= (inv@12@01 r) r))
  :pattern ((inv@12@01 r))
  :qid |unrelatedField-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@11@01 $Ref)) (!
  (=> (Seq_contains xs@8@01 x@11@01) (not (= x@11@01 $Ref.null)))
  :pattern ((Seq_contains xs@8@01 x@11@01))
  :pattern ((Seq_contains_trigger xs@8@01 x@11@01))
  :pattern ((Seq_contains_trigger xs@8@01 x@11@01))
  :pattern ((inv@12@01 x@11@01))
  :pattern ((img@13@01 x@11@01))
  :qid |unrelatedField-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@14@01 $Snap)
(pop) ; 2
(push) ; 2
; [exec]
; unfold acc(valid(this, b), write)
(push) ; 3
(set-option :timeout 10)
(assert (not (not b@9@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not b@9@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | b@9@01 | live]
; [else-branch: 0 | !(b@9@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | b@9@01]
(assert b@9@01)
(assert (not (= this@7@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (valid%trigger ($Snap.second ($Snap.second $t@10@01)) this@7@01 b@9@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not b@9@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | b@9@01 | live]
; [else-branch: 1 | !(b@9@01) | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 1 | b@9@01]
; [exec]
; this.f := 1
; [exec]
; fold acc(valid(this, b), write)
(push) ; 5
(set-option :timeout 10)
(assert (not (not b@9@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | b@9@01 | live]
; [else-branch: 2 | !(b@9@01) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 2 | b@9@01]
(assert (valid%trigger ($SortWrappers.IntTo$Snap 1) this@7@01 b@9@01))
; [exec]
; unrelated(this)
; Precomputing data for removing quantified permissions
(define-fun pTaken@15@01 ((r $Ref)) $Perm
  (ite
    (= r this@7@01)
    ($Perm.min
      (ite
        (and (img@13@01 r) (Seq_contains xs@8@01 (inv@12@01 r)))
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
        (and (img@13@01 r) (Seq_contains xs@8@01 (inv@12@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@15@01 r))
    $Perm.No)
  
  :qid |quant-u-16575|))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@15@01 r) $Perm.No)
  
  :qid |quant-u-16576|))))
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
  (=> (= r this@7@01) (= (- $Perm.Write (pTaken@15@01 r)) $Perm.No))
  
  :qid |quant-u-16577|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const $t@16@01 Int)
(declare-const sm@17@01 $FVF<unrelatedField>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_unrelatedField (as sm@17@01  $FVF<unrelatedField>) this@7@01)
  $t@16@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(pop) ; 5
(pop) ; 4
; [eval] !b
; [then-branch: 3 | !(b@9@01) | dead]
; [else-branch: 3 | b@9@01 | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 3 | b@9@01]
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 0 | !(b@9@01)]
(assert (not b@9@01))
(assert (not (= this@7@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (valid%trigger ($Snap.second ($Snap.second $t@10@01)) this@7@01 b@9@01))
; [then-branch: 4 | b@9@01 | dead]
; [else-branch: 4 | !(b@9@01) | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 4 | !(b@9@01)]
(pop) ; 4
; [eval] !b
(push) ; 4
(set-option :timeout 10)
(assert (not b@9@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 5 | !(b@9@01) | live]
; [else-branch: 5 | b@9@01 | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 5 | !(b@9@01)]
; [exec]
; this.g := 2
; [exec]
; fold acc(valid(this, b), write)
; [then-branch: 6 | b@9@01 | dead]
; [else-branch: 6 | !(b@9@01) | live]
(push) ; 5
; [else-branch: 6 | !(b@9@01)]
(assert (valid%trigger ($SortWrappers.IntTo$Snap 2) this@7@01 b@9@01))
; [exec]
; unrelated(this)
; Precomputing data for removing quantified permissions
(define-fun pTaken@18@01 ((r $Ref)) $Perm
  (ite
    (= r this@7@01)
    ($Perm.min
      (ite
        (and (img@13@01 r) (Seq_contains xs@8@01 (inv@12@01 r)))
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
        (and (img@13@01 r) (Seq_contains xs@8@01 (inv@12@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@18@01 r))
    $Perm.No)
  
  :qid |quant-u-16579|))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@18@01 r) $Perm.No)
  
  :qid |quant-u-16580|))))
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
  (=> (= r this@7@01) (= (- $Perm.Write (pTaken@18@01 r)) $Perm.No))
  
  :qid |quant-u-16581|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const $t@19@01 Int)
(declare-const sm@20@01 $FVF<unrelatedField>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_unrelatedField (as sm@20@01  $FVF<unrelatedField>) this@7@01)
  $t@19@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- t1_2 ----------
(declare-const this@21@01 $Ref)
(declare-const xs@22@01 Seq<$Ref>)
(declare-const b@23@01 Bool)
(declare-const this@24@01 $Ref)
(declare-const xs@25@01 Seq<$Ref>)
(declare-const b@26@01 Bool)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@27@01 $Snap)
(assert (= $t@27@01 ($Snap.combine ($Snap.first $t@27@01) ($Snap.second $t@27@01))))
(assert (= ($Snap.first $t@27@01) $Snap.unit))
; [eval] (this in xs)
(assert (Seq_contains xs@25@01 this@24@01))
(assert (=
  ($Snap.second $t@27@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@27@01))
    ($Snap.second ($Snap.second $t@27@01)))))
(declare-const x@28@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@25@01 x@28@01))
(pop) ; 2
(declare-fun inv@29@01 ($Ref) $Ref)
(declare-fun img@30@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@28@01 $Ref) (x2@28@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@25@01 x1@28@01)
      (Seq_contains xs@25@01 x2@28@01)
      (= x1@28@01 x2@28@01))
    (= x1@28@01 x2@28@01))
  
  :qid |unrelatedField-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@28@01 $Ref)) (!
  (=>
    (Seq_contains xs@25@01 x@28@01)
    (and (= (inv@29@01 x@28@01) x@28@01) (img@30@01 x@28@01)))
  :pattern ((Seq_contains xs@25@01 x@28@01))
  :pattern ((Seq_contains_trigger xs@25@01 x@28@01))
  :pattern ((Seq_contains_trigger xs@25@01 x@28@01))
  :pattern ((inv@29@01 x@28@01))
  :pattern ((img@30@01 x@28@01))
  :qid |quant-u-16583|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@30@01 r) (Seq_contains xs@25@01 (inv@29@01 r)))
    (= (inv@29@01 r) r))
  :pattern ((inv@29@01 r))
  :qid |unrelatedField-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@28@01 $Ref)) (!
  (=> (Seq_contains xs@25@01 x@28@01) (not (= x@28@01 $Ref.null)))
  :pattern ((Seq_contains xs@25@01 x@28@01))
  :pattern ((Seq_contains_trigger xs@25@01 x@28@01))
  :pattern ((Seq_contains_trigger xs@25@01 x@28@01))
  :pattern ((inv@29@01 x@28@01))
  :pattern ((img@30@01 x@28@01))
  :qid |unrelatedField-permImpliesNonNull|)))
(declare-const x@31@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@25@01 x@31@01))
(pop) ; 2
(declare-fun inv@32@01 ($Ref Bool) $Ref)
(declare-fun img@33@01 ($Ref Bool) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@31@01 $Ref) (x2@31@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@25@01 x1@31@01)
      (Seq_contains xs@25@01 x2@31@01)
      (= x1@31@01 x2@31@01))
    (= x1@31@01 x2@31@01))
  
  :qid |valid-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@31@01 $Ref)) (!
  (=>
    (Seq_contains xs@25@01 x@31@01)
    (and (= (inv@32@01 x@31@01 b@26@01) x@31@01) (img@33@01 x@31@01 b@26@01)))
  :pattern ((Seq_contains xs@25@01 x@31@01))
  :pattern ((Seq_contains_trigger xs@25@01 x@31@01))
  :pattern ((Seq_contains_trigger xs@25@01 x@31@01))
  :pattern ((inv@32@01 x@31@01 b@26@01))
  :pattern ((img@33@01 x@31@01 b@26@01))
  :qid |quant-u-16585|)))
(assert (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (img@33@01 this b) (Seq_contains xs@25@01 (inv@32@01 this b)))
    (and (= (inv@32@01 this b) this) (= b@26@01 b)))
  :pattern ((inv@32@01 this b))
  :qid |valid-fctOfInv|)))
; Permissions are non-negative
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@34@01 $Snap)
(declare-const sm@35@01 $PSF<valid>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_valid (as sm@35@01  $PSF<valid>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap this@24@01)
    ($SortWrappers.BoolTo$Snap b@26@01)))
  $t@34@01))
(pop) ; 2
(push) ; 2
; [exec]
; unfold acc(valid(this, b), write)
; Precomputing data for removing quantified permissions
(define-fun pTaken@36@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@24@01) (= b b@26@01))
    ($Perm.min
      (ite
        (and (img@33@01 this b) (Seq_contains xs@25@01 (inv@32@01 this b)))
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
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=
    (-
      (ite
        (and (img@33@01 this b) (Seq_contains xs@25@01 (inv@32@01 this b)))
        $Perm.Write
        $Perm.No)
      (pTaken@36@01 this b))
    $Perm.No)
  
  :qid |quant-u-16587|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (= (pTaken@36@01 this b) $Perm.No)
  
  :qid |quant-u-16588|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (= this this@24@01) (= b b@26@01))
    (= (- $Perm.Write (pTaken@36@01 this b)) $Perm.No))
  
  :qid |quant-u-16589|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@37@01 $PSF<valid>)
(declare-const s@38@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@33@01 this@24@01 b@26@01)
    (Seq_contains xs@25@01 (inv@32@01 this@24@01 b@26@01)))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@24@01)
          ($SortWrappers.BoolTo$Snap b@26@01))
        $Snap.unit))
    (=
      ($PSF.lookup_valid (as sm@37@01  $PSF<valid>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@24@01)
        ($SortWrappers.BoolTo$Snap b@26@01)))
      ($PSF.lookup_valid ($SortWrappers.$SnapTo$PSF<valid> ($Snap.second ($Snap.second $t@27@01))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@24@01)
        ($SortWrappers.BoolTo$Snap b@26@01)))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not b@26@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not b@26@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 7 | b@26@01 | live]
; [else-branch: 7 | !(b@26@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 7 | b@26@01]
(assert b@26@01)
(assert (not (= this@24@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (valid%trigger ($PSF.lookup_valid (as sm@37@01  $PSF<valid>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap this@24@01)
  ($SortWrappers.BoolTo$Snap b@26@01))) this@24@01 b@26@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not b@26@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 8 | b@26@01 | live]
; [else-branch: 8 | !(b@26@01) | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 8 | b@26@01]
; [exec]
; this.f := 1
; [exec]
; fold acc(valid(this, b), write)
(push) ; 5
(set-option :timeout 10)
(assert (not (not b@26@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 9 | b@26@01 | live]
; [else-branch: 9 | !(b@26@01) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 9 | b@26@01]
(assert (valid%trigger ($SortWrappers.IntTo$Snap 1) this@24@01 b@26@01))
(declare-const sm@39@01 $PSF<valid>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_valid (as sm@39@01  $PSF<valid>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap this@24@01)
    ($SortWrappers.BoolTo$Snap b@26@01)))
  ($SortWrappers.IntTo$Snap 1)))
; [exec]
; unrelated(this)
; Precomputing data for removing quantified permissions
(define-fun pTaken@40@01 ((r $Ref)) $Perm
  (ite
    (= r this@24@01)
    ($Perm.min
      (ite
        (and (img@30@01 r) (Seq_contains xs@25@01 (inv@29@01 r)))
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
        (and (img@30@01 r) (Seq_contains xs@25@01 (inv@29@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@40@01 r))
    $Perm.No)
  
  :qid |quant-u-16591|))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@40@01 r) $Perm.No)
  
  :qid |quant-u-16592|))))
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
  (=> (= r this@24@01) (= (- $Perm.Write (pTaken@40@01 r)) $Perm.No))
  
  :qid |quant-u-16593|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const $t@41@01 Int)
(declare-const sm@42@01 $FVF<unrelatedField>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_unrelatedField (as sm@42@01  $FVF<unrelatedField>) this@24@01)
  $t@41@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@43@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@24@01) (= b b@26@01))
    ($Perm.min
      (ite (and (= this this@24@01) (= b b@26@01)) $Perm.Write $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@44@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@24@01) (= b b@26@01))
    ($Perm.min
      (ite
        (and (img@33@01 this b) (Seq_contains xs@25@01 (inv@32@01 this b)))
        (- $Perm.Write (pTaken@36@01 this b))
        $Perm.No)
      (- $Perm.Write (pTaken@43@01 this b)))
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
(assert (not (= (- $Perm.Write (pTaken@43@01 this@24@01 b@26@01)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (= this this@24@01) (= b b@26@01))
    (= (- $Perm.Write (pTaken@43@01 this b)) $Perm.No))
  
  :qid |quant-u-16596|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 5
(pop) ; 4
; [eval] !b
; [then-branch: 10 | !(b@26@01) | dead]
; [else-branch: 10 | b@26@01 | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 10 | b@26@01]
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 7 | !(b@26@01)]
(assert (not b@26@01))
(assert (not (= this@24@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (valid%trigger ($PSF.lookup_valid (as sm@37@01  $PSF<valid>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap this@24@01)
  ($SortWrappers.BoolTo$Snap b@26@01))) this@24@01 b@26@01))
; [then-branch: 11 | b@26@01 | dead]
; [else-branch: 11 | !(b@26@01) | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 11 | !(b@26@01)]
(pop) ; 4
; [eval] !b
(push) ; 4
(set-option :timeout 10)
(assert (not b@26@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 12 | !(b@26@01) | live]
; [else-branch: 12 | b@26@01 | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 12 | !(b@26@01)]
; [exec]
; this.g := 2
; [exec]
; fold acc(valid(this, b), write)
; [then-branch: 13 | b@26@01 | dead]
; [else-branch: 13 | !(b@26@01) | live]
(push) ; 5
; [else-branch: 13 | !(b@26@01)]
(assert (valid%trigger ($SortWrappers.IntTo$Snap 2) this@24@01 b@26@01))
(declare-const sm@45@01 $PSF<valid>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_valid (as sm@45@01  $PSF<valid>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap this@24@01)
    ($SortWrappers.BoolTo$Snap b@26@01)))
  ($SortWrappers.IntTo$Snap 2)))
; [exec]
; unrelated(this)
; Precomputing data for removing quantified permissions
(define-fun pTaken@46@01 ((r $Ref)) $Perm
  (ite
    (= r this@24@01)
    ($Perm.min
      (ite
        (and (img@30@01 r) (Seq_contains xs@25@01 (inv@29@01 r)))
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
        (and (img@30@01 r) (Seq_contains xs@25@01 (inv@29@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@46@01 r))
    $Perm.No)
  
  :qid |quant-u-16598|))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@46@01 r) $Perm.No)
  
  :qid |quant-u-16599|))))
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
  (=> (= r this@24@01) (= (- $Perm.Write (pTaken@46@01 r)) $Perm.No))
  
  :qid |quant-u-16600|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const $t@47@01 Int)
(declare-const sm@48@01 $FVF<unrelatedField>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_unrelatedField (as sm@48@01  $FVF<unrelatedField>) this@24@01)
  $t@47@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@49@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@24@01) (= b b@26@01))
    ($Perm.min
      (ite (and (= this this@24@01) (= b b@26@01)) $Perm.Write $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@50@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@24@01) (= b b@26@01))
    ($Perm.min
      (ite
        (and (img@33@01 this b) (Seq_contains xs@25@01 (inv@32@01 this b)))
        (- $Perm.Write (pTaken@36@01 this b))
        $Perm.No)
      (- $Perm.Write (pTaken@49@01 this b)))
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
(assert (not (= (- $Perm.Write (pTaken@49@01 this@24@01 b@26@01)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (= this this@24@01) (= b b@26@01))
    (= (- $Perm.Write (pTaken@49@01 this b)) $Perm.No))
  
  :qid |quant-u-16603|))))
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
(pop) ; 2
(pop) ; 1
; ---------- t1_3 ----------
(declare-const this@51@01 $Ref)
(declare-const xs@52@01 Seq<$Ref>)
(declare-const b@53@01 Bool)
(declare-const this@54@01 $Ref)
(declare-const xs@55@01 Seq<$Ref>)
(declare-const b@56@01 Bool)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@57@01 $Snap)
(assert (= $t@57@01 ($Snap.combine ($Snap.first $t@57@01) ($Snap.second $t@57@01))))
(assert (= ($Snap.first $t@57@01) $Snap.unit))
; [eval] (this in xs)
(assert (Seq_contains xs@55@01 this@54@01))
(assert (=
  ($Snap.second $t@57@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@57@01))
    ($Snap.second ($Snap.second $t@57@01)))))
(declare-const x@58@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@55@01 x@58@01))
(pop) ; 2
(declare-fun inv@59@01 ($Ref) $Ref)
(declare-fun img@60@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@58@01 $Ref) (x2@58@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@55@01 x1@58@01)
      (Seq_contains xs@55@01 x2@58@01)
      (= x1@58@01 x2@58@01))
    (= x1@58@01 x2@58@01))
  
  :qid |unrelatedField-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@58@01 $Ref)) (!
  (=>
    (Seq_contains xs@55@01 x@58@01)
    (and (= (inv@59@01 x@58@01) x@58@01) (img@60@01 x@58@01)))
  :pattern ((Seq_contains xs@55@01 x@58@01))
  :pattern ((Seq_contains_trigger xs@55@01 x@58@01))
  :pattern ((Seq_contains_trigger xs@55@01 x@58@01))
  :pattern ((inv@59@01 x@58@01))
  :pattern ((img@60@01 x@58@01))
  :qid |quant-u-16605|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Seq_contains xs@55@01 (inv@59@01 r)))
    (= (inv@59@01 r) r))
  :pattern ((inv@59@01 r))
  :qid |unrelatedField-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@58@01 $Ref)) (!
  (=> (Seq_contains xs@55@01 x@58@01) (not (= x@58@01 $Ref.null)))
  :pattern ((Seq_contains xs@55@01 x@58@01))
  :pattern ((Seq_contains_trigger xs@55@01 x@58@01))
  :pattern ((Seq_contains_trigger xs@55@01 x@58@01))
  :pattern ((inv@59@01 x@58@01))
  :pattern ((img@60@01 x@58@01))
  :qid |unrelatedField-permImpliesNonNull|)))
(declare-const x@61@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@55@01 x@61@01))
(pop) ; 2
(declare-fun inv@62@01 ($Ref Bool) $Ref)
(declare-fun img@63@01 ($Ref Bool) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@61@01 $Ref) (x2@61@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@55@01 x1@61@01)
      (Seq_contains xs@55@01 x2@61@01)
      (= x1@61@01 x2@61@01))
    (= x1@61@01 x2@61@01))
  
  :qid |valid-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@61@01 $Ref)) (!
  (=>
    (Seq_contains xs@55@01 x@61@01)
    (and (= (inv@62@01 x@61@01 b@56@01) x@61@01) (img@63@01 x@61@01 b@56@01)))
  :pattern ((Seq_contains xs@55@01 x@61@01))
  :pattern ((Seq_contains_trigger xs@55@01 x@61@01))
  :pattern ((Seq_contains_trigger xs@55@01 x@61@01))
  :pattern ((inv@62@01 x@61@01 b@56@01))
  :pattern ((img@63@01 x@61@01 b@56@01))
  :qid |quant-u-16607|)))
(assert (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (img@63@01 this b) (Seq_contains xs@55@01 (inv@62@01 this b)))
    (and (= (inv@62@01 this b) this) (= b@56@01 b)))
  :pattern ((inv@62@01 this b))
  :qid |valid-fctOfInv|)))
; Permissions are non-negative
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const x@64@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@55@01 x@64@01))
(pop) ; 3
(declare-const $t@65@01 $PSF<valid>)
(declare-fun inv@66@01 ($Ref Bool) $Ref)
(declare-fun img@67@01 ($Ref Bool) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@64@01 $Ref) (x2@64@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@55@01 x1@64@01)
      (Seq_contains xs@55@01 x2@64@01)
      (= x1@64@01 x2@64@01))
    (= x1@64@01 x2@64@01))
  
  :qid |valid-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@64@01 $Ref)) (!
  (=>
    (Seq_contains xs@55@01 x@64@01)
    (and (= (inv@66@01 x@64@01 b@56@01) x@64@01) (img@67@01 x@64@01 b@56@01)))
  :pattern ((Seq_contains xs@55@01 x@64@01))
  :pattern ((Seq_contains_trigger xs@55@01 x@64@01))
  :pattern ((Seq_contains_trigger xs@55@01 x@64@01))
  :pattern ((inv@66@01 x@64@01 b@56@01))
  :pattern ((img@67@01 x@64@01 b@56@01))
  :qid |quant-u-16609|)))
(assert (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (img@67@01 this b) (Seq_contains xs@55@01 (inv@66@01 this b)))
    (and (= (inv@66@01 this b) this) (= b@56@01 b)))
  :pattern ((inv@66@01 this b))
  :qid |valid-fctOfInv|)))
; Permissions are non-negative
(pop) ; 2
(push) ; 2
; [exec]
; unfold acc(valid(this, b), write)
; Precomputing data for removing quantified permissions
(define-fun pTaken@68@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@54@01) (= b b@56@01))
    ($Perm.min
      (ite
        (and (img@63@01 this b) (Seq_contains xs@55@01 (inv@62@01 this b)))
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
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=
    (-
      (ite
        (and (img@63@01 this b) (Seq_contains xs@55@01 (inv@62@01 this b)))
        $Perm.Write
        $Perm.No)
      (pTaken@68@01 this b))
    $Perm.No)
  
  :qid |quant-u-16611|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (= (pTaken@68@01 this b) $Perm.No)
  
  :qid |quant-u-16612|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (= this this@54@01) (= b b@56@01))
    (= (- $Perm.Write (pTaken@68@01 this b)) $Perm.No))
  
  :qid |quant-u-16613|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@69@01 $PSF<valid>)
(declare-const s@70@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@63@01 this@54@01 b@56@01)
    (Seq_contains xs@55@01 (inv@62@01 this@54@01 b@56@01)))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@54@01)
          ($SortWrappers.BoolTo$Snap b@56@01))
        $Snap.unit))
    (=
      ($PSF.lookup_valid (as sm@69@01  $PSF<valid>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@54@01)
        ($SortWrappers.BoolTo$Snap b@56@01)))
      ($PSF.lookup_valid ($SortWrappers.$SnapTo$PSF<valid> ($Snap.second ($Snap.second $t@57@01))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@54@01)
        ($SortWrappers.BoolTo$Snap b@56@01)))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not b@56@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not b@56@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 14 | b@56@01 | live]
; [else-branch: 14 | !(b@56@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 14 | b@56@01]
(assert b@56@01)
(assert (not (= this@54@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (valid%trigger ($PSF.lookup_valid (as sm@69@01  $PSF<valid>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap this@54@01)
  ($SortWrappers.BoolTo$Snap b@56@01))) this@54@01 b@56@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not b@56@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 15 | b@56@01 | live]
; [else-branch: 15 | !(b@56@01) | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 15 | b@56@01]
; [exec]
; this.f := 1
; [exec]
; fold acc(valid(this, b), write)
(push) ; 5
(set-option :timeout 10)
(assert (not (not b@56@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 16 | b@56@01 | live]
; [else-branch: 16 | !(b@56@01) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 16 | b@56@01]
(assert (valid%trigger ($SortWrappers.IntTo$Snap 1) this@54@01 b@56@01))
(declare-const sm@71@01 $PSF<valid>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_valid (as sm@71@01  $PSF<valid>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap this@54@01)
    ($SortWrappers.BoolTo$Snap b@56@01)))
  ($SortWrappers.IntTo$Snap 1)))
; [exec]
; unrelated(this)
; Precomputing data for removing quantified permissions
(define-fun pTaken@72@01 ((r $Ref)) $Perm
  (ite
    (= r this@54@01)
    ($Perm.min
      (ite
        (and (img@60@01 r) (Seq_contains xs@55@01 (inv@59@01 r)))
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
        (and (img@60@01 r) (Seq_contains xs@55@01 (inv@59@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@72@01 r))
    $Perm.No)
  
  :qid |quant-u-16615|))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@72@01 r) $Perm.No)
  
  :qid |quant-u-16616|))))
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
  (=> (= r this@54@01) (= (- $Perm.Write (pTaken@72@01 r)) $Perm.No))
  
  :qid |quant-u-16617|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const $t@73@01 Int)
(declare-const sm@74@01 $FVF<unrelatedField>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_unrelatedField (as sm@74@01  $FVF<unrelatedField>) this@54@01)
  $t@73@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(declare-const x@75@01 $Ref)
(set-option :timeout 0)
(push) ; 6
; [eval] (x in xs)
(assert (Seq_contains xs@55@01 x@75@01))
(pop) ; 6
(declare-fun inv@76@01 ($Ref Bool) $Ref)
(declare-fun img@77@01 ($Ref Bool) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((x1@75@01 $Ref) (x2@75@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@55@01 x1@75@01)
      (Seq_contains xs@55@01 x2@75@01)
      (= x1@75@01 x2@75@01))
    (= x1@75@01 x2@75@01))
  
  :qid |valid-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@75@01 $Ref)) (!
  (=>
    (Seq_contains xs@55@01 x@75@01)
    (and (= (inv@76@01 x@75@01 b@56@01) x@75@01) (img@77@01 x@75@01 b@56@01)))
  :pattern ((Seq_contains xs@55@01 x@75@01))
  :pattern ((Seq_contains_trigger xs@55@01 x@75@01))
  :pattern ((inv@76@01 x@75@01 b@56@01))
  :pattern ((img@77@01 x@75@01 b@56@01))
  :qid |valid-invOfFct|)))
(assert (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (img@77@01 this b) (Seq_contains xs@55@01 (inv@76@01 this b)))
    (and (= (inv@76@01 this b) this) (= b@56@01 b)))
  :pattern ((inv@76@01 this b))
  :qid |valid-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@78@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and
      (Seq_contains xs@55@01 (inv@76@01 this b))
      (img@77@01 this b)
      (and (= this (inv@76@01 this b)) (= b b@56@01)))
    ($Perm.min
      (ite
        (and (img@63@01 this b) (Seq_contains xs@55@01 (inv@62@01 this b)))
        (- $Perm.Write (pTaken@68@01 this b))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@79@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and
      (Seq_contains xs@55@01 (inv@76@01 this b))
      (img@77@01 this b)
      (and (= this (inv@76@01 this b)) (= b b@56@01)))
    ($Perm.min
      (ite (and (= this this@54@01) (= b b@56@01)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@78@01 this b)))
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
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=
    (-
      (ite
        (and (img@63@01 this b) (Seq_contains xs@55@01 (inv@62@01 this b)))
        (- $Perm.Write (pTaken@68@01 this b))
        $Perm.No)
      (pTaken@78@01 this b))
    $Perm.No)
  
  :qid |quant-u-16620|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and
      (Seq_contains xs@55@01 (inv@76@01 this b))
      (img@77@01 this b)
      (and (= this (inv@76@01 this b)) (= b b@56@01)))
    (= (- $Perm.Write (pTaken@78@01 this b)) $Perm.No))
  
  :qid |quant-u-16621|))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@79@01 this@54@01 b@56@01)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and
      (Seq_contains xs@55@01 (inv@76@01 this b))
      (img@77@01 this b)
      (and (= this (inv@76@01 this b)) (= b b@56@01)))
    (= (- (- $Perm.Write (pTaken@78@01 this b)) (pTaken@79@01 this b)) $Perm.No))
  
  :qid |quant-u-16623|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 5
(pop) ; 4
; [eval] !b
; [then-branch: 17 | !(b@56@01) | dead]
; [else-branch: 17 | b@56@01 | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 17 | b@56@01]
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 14 | !(b@56@01)]
(assert (not b@56@01))
(assert (not (= this@54@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (valid%trigger ($PSF.lookup_valid (as sm@69@01  $PSF<valid>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap this@54@01)
  ($SortWrappers.BoolTo$Snap b@56@01))) this@54@01 b@56@01))
; [then-branch: 18 | b@56@01 | dead]
; [else-branch: 18 | !(b@56@01) | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 18 | !(b@56@01)]
(pop) ; 4
; [eval] !b
(push) ; 4
(set-option :timeout 10)
(assert (not b@56@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 19 | !(b@56@01) | live]
; [else-branch: 19 | b@56@01 | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 19 | !(b@56@01)]
; [exec]
; this.g := 2
; [exec]
; fold acc(valid(this, b), write)
; [then-branch: 20 | b@56@01 | dead]
; [else-branch: 20 | !(b@56@01) | live]
(push) ; 5
; [else-branch: 20 | !(b@56@01)]
(assert (valid%trigger ($SortWrappers.IntTo$Snap 2) this@54@01 b@56@01))
(declare-const sm@80@01 $PSF<valid>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_valid (as sm@80@01  $PSF<valid>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap this@54@01)
    ($SortWrappers.BoolTo$Snap b@56@01)))
  ($SortWrappers.IntTo$Snap 2)))
; [exec]
; unrelated(this)
; Precomputing data for removing quantified permissions
(define-fun pTaken@81@01 ((r $Ref)) $Perm
  (ite
    (= r this@54@01)
    ($Perm.min
      (ite
        (and (img@60@01 r) (Seq_contains xs@55@01 (inv@59@01 r)))
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
        (and (img@60@01 r) (Seq_contains xs@55@01 (inv@59@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@81@01 r))
    $Perm.No)
  
  :qid |quant-u-16625|))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@81@01 r) $Perm.No)
  
  :qid |quant-u-16626|))))
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
  (=> (= r this@54@01) (= (- $Perm.Write (pTaken@81@01 r)) $Perm.No))
  
  :qid |quant-u-16627|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const $t@82@01 Int)
(declare-const sm@83@01 $FVF<unrelatedField>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_unrelatedField (as sm@83@01  $FVF<unrelatedField>) this@54@01)
  $t@82@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(declare-const x@84@01 $Ref)
(set-option :timeout 0)
(push) ; 6
; [eval] (x in xs)
(assert (Seq_contains xs@55@01 x@84@01))
(pop) ; 6
(declare-fun inv@85@01 ($Ref Bool) $Ref)
(declare-fun img@86@01 ($Ref Bool) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((x1@84@01 $Ref) (x2@84@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@55@01 x1@84@01)
      (Seq_contains xs@55@01 x2@84@01)
      (= x1@84@01 x2@84@01))
    (= x1@84@01 x2@84@01))
  
  :qid |valid-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@84@01 $Ref)) (!
  (=>
    (Seq_contains xs@55@01 x@84@01)
    (and (= (inv@85@01 x@84@01 b@56@01) x@84@01) (img@86@01 x@84@01 b@56@01)))
  :pattern ((Seq_contains xs@55@01 x@84@01))
  :pattern ((Seq_contains_trigger xs@55@01 x@84@01))
  :pattern ((inv@85@01 x@84@01 b@56@01))
  :pattern ((img@86@01 x@84@01 b@56@01))
  :qid |valid-invOfFct|)))
(assert (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (img@86@01 this b) (Seq_contains xs@55@01 (inv@85@01 this b)))
    (and (= (inv@85@01 this b) this) (= b@56@01 b)))
  :pattern ((inv@85@01 this b))
  :qid |valid-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@87@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and
      (Seq_contains xs@55@01 (inv@85@01 this b))
      (img@86@01 this b)
      (and (= this (inv@85@01 this b)) (= b b@56@01)))
    ($Perm.min
      (ite
        (and (img@63@01 this b) (Seq_contains xs@55@01 (inv@62@01 this b)))
        (- $Perm.Write (pTaken@68@01 this b))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@88@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and
      (Seq_contains xs@55@01 (inv@85@01 this b))
      (img@86@01 this b)
      (and (= this (inv@85@01 this b)) (= b b@56@01)))
    ($Perm.min
      (ite (and (= this this@54@01) (= b b@56@01)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@87@01 this b)))
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
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=
    (-
      (ite
        (and (img@63@01 this b) (Seq_contains xs@55@01 (inv@62@01 this b)))
        (- $Perm.Write (pTaken@68@01 this b))
        $Perm.No)
      (pTaken@87@01 this b))
    $Perm.No)
  
  :qid |quant-u-16630|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and
      (Seq_contains xs@55@01 (inv@85@01 this b))
      (img@86@01 this b)
      (and (= this (inv@85@01 this b)) (= b b@56@01)))
    (= (- $Perm.Write (pTaken@87@01 this b)) $Perm.No))
  
  :qid |quant-u-16631|))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@88@01 this@54@01 b@56@01)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and
      (Seq_contains xs@55@01 (inv@85@01 this b))
      (img@86@01 this b)
      (and (= this (inv@85@01 this b)) (= b b@56@01)))
    (= (- (- $Perm.Write (pTaken@87@01 this b)) (pTaken@88@01 this b)) $Perm.No))
  
  :qid |quant-u-16633|))))
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
(pop) ; 2
(pop) ; 1
; ---------- t1_4 ----------
(declare-const this@89@01 $Ref)
(declare-const xs@90@01 Seq<$Ref>)
(declare-const b@91@01 Bool)
(declare-const this@92@01 $Ref)
(declare-const xs@93@01 Seq<$Ref>)
(declare-const b@94@01 Bool)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@95@01 $Snap)
(assert (= $t@95@01 ($Snap.combine ($Snap.first $t@95@01) ($Snap.second $t@95@01))))
(assert (= ($Snap.first $t@95@01) $Snap.unit))
; [eval] (this in xs)
(assert (Seq_contains xs@93@01 this@92@01))
(assert (=
  ($Snap.second $t@95@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@95@01))
    ($Snap.second ($Snap.second $t@95@01)))))
(assert (not (= this@92@01 $Ref.null)))
(declare-const x@96@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@93@01 x@96@01))
(pop) ; 2
(declare-fun inv@97@01 ($Ref Bool) $Ref)
(declare-fun img@98@01 ($Ref Bool) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@96@01 $Ref) (x2@96@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@93@01 x1@96@01)
      (Seq_contains xs@93@01 x2@96@01)
      (= x1@96@01 x2@96@01))
    (= x1@96@01 x2@96@01))
  
  :qid |valid-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@96@01 $Ref)) (!
  (=>
    (Seq_contains xs@93@01 x@96@01)
    (and (= (inv@97@01 x@96@01 b@94@01) x@96@01) (img@98@01 x@96@01 b@94@01)))
  :pattern ((Seq_contains xs@93@01 x@96@01))
  :pattern ((Seq_contains_trigger xs@93@01 x@96@01))
  :pattern ((Seq_contains_trigger xs@93@01 x@96@01))
  :pattern ((inv@97@01 x@96@01 b@94@01))
  :pattern ((img@98@01 x@96@01 b@94@01))
  :qid |quant-u-16635|)))
(assert (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (img@98@01 this b) (Seq_contains xs@93@01 (inv@97@01 this b)))
    (and (= (inv@97@01 this b) this) (= b@94@01 b)))
  :pattern ((inv@97@01 this b))
  :qid |valid-fctOfInv|)))
; Permissions are non-negative
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@99@01 $Snap)
(declare-const sm@100@01 $PSF<valid>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_valid (as sm@100@01  $PSF<valid>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap this@92@01)
    ($SortWrappers.BoolTo$Snap b@94@01)))
  $t@99@01))
(pop) ; 2
(push) ; 2
; [exec]
; unfold acc(valid(this, b), write)
; Precomputing data for removing quantified permissions
(define-fun pTaken@101@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@92@01) (= b b@94@01))
    ($Perm.min
      (ite
        (and (img@98@01 this b) (Seq_contains xs@93@01 (inv@97@01 this b)))
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
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=
    (-
      (ite
        (and (img@98@01 this b) (Seq_contains xs@93@01 (inv@97@01 this b)))
        $Perm.Write
        $Perm.No)
      (pTaken@101@01 this b))
    $Perm.No)
  
  :qid |quant-u-16637|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (= (pTaken@101@01 this b) $Perm.No)
  
  :qid |quant-u-16638|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (= this this@92@01) (= b b@94@01))
    (= (- $Perm.Write (pTaken@101@01 this b)) $Perm.No))
  
  :qid |quant-u-16639|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@102@01 $PSF<valid>)
(declare-const s@103@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@98@01 this@92@01 b@94@01)
    (Seq_contains xs@93@01 (inv@97@01 this@92@01 b@94@01)))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@92@01)
          ($SortWrappers.BoolTo$Snap b@94@01))
        $Snap.unit))
    (=
      ($PSF.lookup_valid (as sm@102@01  $PSF<valid>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@92@01)
        ($SortWrappers.BoolTo$Snap b@94@01)))
      ($PSF.lookup_valid ($SortWrappers.$SnapTo$PSF<valid> ($Snap.second ($Snap.second $t@95@01))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@92@01)
        ($SortWrappers.BoolTo$Snap b@94@01)))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not b@94@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not b@94@01))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 21 | b@94@01 | live]
; [else-branch: 21 | !(b@94@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 21 | b@94@01]
(assert b@94@01)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (valid%trigger ($PSF.lookup_valid (as sm@102@01  $PSF<valid>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap this@92@01)
  ($SortWrappers.BoolTo$Snap b@94@01))) this@92@01 b@94@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not b@94@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 22 | b@94@01 | live]
; [else-branch: 22 | !(b@94@01) | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 22 | b@94@01]
; [exec]
; this.f := 1
; [exec]
; fold acc(valid(this, b), write)
(push) ; 5
(set-option :timeout 10)
(assert (not (not b@94@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 23 | b@94@01 | live]
; [else-branch: 23 | !(b@94@01) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 23 | b@94@01]
(assert (valid%trigger ($SortWrappers.IntTo$Snap 1) this@92@01 b@94@01))
(declare-const sm@104@01 $PSF<valid>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_valid (as sm@104@01  $PSF<valid>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap this@92@01)
    ($SortWrappers.BoolTo$Snap b@94@01)))
  ($SortWrappers.IntTo$Snap 1)))
; [exec]
; unrelated(this)
(declare-const $t@105@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@106@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@92@01) (= b b@94@01))
    ($Perm.min
      (ite (and (= this this@92@01) (= b b@94@01)) $Perm.Write $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@107@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@92@01) (= b b@94@01))
    ($Perm.min
      (ite
        (and (img@98@01 this b) (Seq_contains xs@93@01 (inv@97@01 this b)))
        (- $Perm.Write (pTaken@101@01 this b))
        $Perm.No)
      (- $Perm.Write (pTaken@106@01 this b)))
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
(assert (not (= (- $Perm.Write (pTaken@106@01 this@92@01 b@94@01)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (= this this@92@01) (= b b@94@01))
    (= (- $Perm.Write (pTaken@106@01 this b)) $Perm.No))
  
  :qid |quant-u-16642|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 5
(pop) ; 4
; [eval] !b
; [then-branch: 24 | !(b@94@01) | dead]
; [else-branch: 24 | b@94@01 | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 24 | b@94@01]
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 21 | !(b@94@01)]
(assert (not b@94@01))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (valid%trigger ($PSF.lookup_valid (as sm@102@01  $PSF<valid>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap this@92@01)
  ($SortWrappers.BoolTo$Snap b@94@01))) this@92@01 b@94@01))
; [then-branch: 25 | b@94@01 | dead]
; [else-branch: 25 | !(b@94@01) | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 25 | !(b@94@01)]
(pop) ; 4
; [eval] !b
(push) ; 4
(set-option :timeout 10)
(assert (not b@94@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 26 | !(b@94@01) | live]
; [else-branch: 26 | b@94@01 | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 26 | !(b@94@01)]
; [exec]
; this.g := 2
; [exec]
; fold acc(valid(this, b), write)
; [then-branch: 27 | b@94@01 | dead]
; [else-branch: 27 | !(b@94@01) | live]
(push) ; 5
; [else-branch: 27 | !(b@94@01)]
(assert (valid%trigger ($SortWrappers.IntTo$Snap 2) this@92@01 b@94@01))
(declare-const sm@108@01 $PSF<valid>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_valid (as sm@108@01  $PSF<valid>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap this@92@01)
    ($SortWrappers.BoolTo$Snap b@94@01)))
  ($SortWrappers.IntTo$Snap 2)))
; [exec]
; unrelated(this)
(declare-const $t@109@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@110@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@92@01) (= b b@94@01))
    ($Perm.min
      (ite (and (= this this@92@01) (= b b@94@01)) $Perm.Write $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@111@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@92@01) (= b b@94@01))
    ($Perm.min
      (ite
        (and (img@98@01 this b) (Seq_contains xs@93@01 (inv@97@01 this b)))
        (- $Perm.Write (pTaken@101@01 this b))
        $Perm.No)
      (- $Perm.Write (pTaken@110@01 this b)))
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
(assert (not (= (- $Perm.Write (pTaken@110@01 this@92@01 b@94@01)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (= this this@92@01) (= b b@94@01))
    (= (- $Perm.Write (pTaken@110@01 this b)) $Perm.No))
  
  :qid |quant-u-16645|))))
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
(pop) ; 2
(pop) ; 1
; ---------- t2 ----------
(declare-const x1@112@01 $Ref)
(declare-const x2@113@01 $Ref)
(declare-const x1@114@01 $Ref)
(declare-const x2@115@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@116@01 $Snap)
(assert (= $t@116@01 ($Snap.combine ($Snap.first $t@116@01) ($Snap.second $t@116@01))))
(assert (not (= x1@114@01 $Ref.null)))
(assert (=
  ($Snap.second $t@116@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@116@01))
    ($Snap.second ($Snap.second $t@116@01)))))
(assert (= ($Snap.first ($Snap.second $t@116@01)) $Snap.unit))
; [eval] x1 != x2
(assert (not (= x1@114@01 x2@115@01)))
(declare-const x@117@01 $Ref)
(push) ; 2
; [eval] (x in Set(x1, x2))
; [eval] Set(x1, x2)
(assert (Set_in x@117@01 (Set_unionone (Set_singleton x1@114@01) x2@115@01)))
(pop) ; 2
(declare-fun inv@118@01 ($Ref) $Ref)
(declare-fun img@119@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@117@01 $Ref) (x2@117@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@117@01 (Set_unionone (Set_singleton x1@114@01) x2@115@01))
      (Set_in x2@117@01 (Set_unionone (Set_singleton x1@114@01) x2@115@01))
      (= x1@117@01 x2@117@01))
    (= x1@117@01 x2@117@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@117@01 $Ref)) (!
  (=>
    (Set_in x@117@01 (Set_unionone (Set_singleton x1@114@01) x2@115@01))
    (and (= (inv@118@01 x@117@01) x@117@01) (img@119@01 x@117@01)))
  :pattern ((Set_in x@117@01 (Set_unionone (Set_singleton x1@114@01) x2@115@01)))
  :pattern ((inv@118@01 x@117@01))
  :pattern ((img@119@01 x@117@01))
  :qid |quant-u-16647|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@119@01 r)
      (Set_in (inv@118@01 r) (Set_unionone (Set_singleton x1@114@01) x2@115@01)))
    (= (inv@118@01 r) r))
  :pattern ((inv@118@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@117@01 $Ref)) (!
  (=>
    (Set_in x@117@01 (Set_unionone (Set_singleton x1@114@01) x2@115@01))
    (not (= x@117@01 $Ref.null)))
  :pattern ((Set_in x@117@01 (Set_unionone (Set_singleton x1@114@01) x2@115@01)))
  :pattern ((inv@118@01 x@117@01))
  :pattern ((img@119@01 x@117@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const x@120@01 $Ref)
(push) ; 3
; [eval] (x in Set(x1, x2))
; [eval] Set(x1, x2)
(assert (Set_in x@120@01 (Set_unionone (Set_singleton x1@114@01) x2@115@01)))
(pop) ; 3
(declare-const $t@121@01 $PSF<valid>)
(declare-fun inv@122@01 ($Ref Bool) $Ref)
(declare-fun img@123@01 ($Ref Bool) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@120@01 $Ref) (x2@120@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@120@01 (Set_unionone (Set_singleton x1@114@01) x2@115@01))
      (Set_in x2@120@01 (Set_unionone (Set_singleton x1@114@01) x2@115@01))
      (= x1@120@01 x2@120@01))
    (= x1@120@01 x2@120@01))
  
  :qid |valid-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@120@01 $Ref)) (!
  (=>
    (Set_in x@120@01 (Set_unionone (Set_singleton x1@114@01) x2@115@01))
    (and (= (inv@122@01 x@120@01 true) x@120@01) (img@123@01 x@120@01 true)))
  :pattern ((Set_in x@120@01 (Set_unionone (Set_singleton x1@114@01) x2@115@01)))
  :pattern ((inv@122@01 x@120@01 true))
  :pattern ((img@123@01 x@120@01 true))
  :qid |quant-u-16649|)))
(assert (forall ((this $Ref) (b Bool)) (!
  (=>
    (and
      (img@123@01 this b)
      (Set_in (inv@122@01 this b) (Set_unionone (Set_singleton x1@114@01) x2@115@01)))
    (and (= (inv@122@01 this b) this) (= true b)))
  :pattern ((inv@122@01 this b))
  :qid |valid-fctOfInv|)))
; Permissions are non-negative
(pop) ; 2
(push) ; 2
; [exec]
; fold acc(valid(x1, true), write)
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 28 | True | live]
; [else-branch: 28 | False | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 28 | True]
; Precomputing data for removing quantified permissions
(define-fun pTaken@124@01 ((r $Ref)) $Perm
  (ite
    (= r x1@114@01)
    ($Perm.min
      (ite
        (and
          (img@119@01 r)
          (Set_in (inv@118@01 r) (Set_unionone (Set_singleton x1@114@01) x2@115@01)))
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
          (img@119@01 r)
          (Set_in (inv@118@01 r) (Set_unionone (Set_singleton x1@114@01) x2@115@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@124@01 r))
    $Perm.No)
  
  :qid |quant-u-16651|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@124@01 r) $Perm.No)
  
  :qid |quant-u-16652|))))
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
  (=> (= r x1@114@01) (= (- $Perm.Write (pTaken@124@01 r)) $Perm.No))
  
  :qid |quant-u-16653|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@125@01 $FVF<f>)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@119@01 x1@114@01)
    (Set_in (inv@118@01 x1@114@01) (Set_unionone (Set_singleton x1@114@01) x2@115@01)))
  (=
    ($FVF.lookup_f (as sm@125@01  $FVF<f>) x1@114@01)
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second $t@116@01))) x1@114@01))))
(assert (valid%trigger ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@125@01  $FVF<f>) x1@114@01)) x1@114@01 true))
(declare-const sm@126@01 $PSF<valid>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_valid (as sm@126@01  $PSF<valid>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap x1@114@01)
    ($SortWrappers.BoolTo$Snap true)))
  ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@125@01  $FVF<f>) x1@114@01))))
; [exec]
; fold acc(valid(x2, true), write)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 29 | True | live]
; [else-branch: 29 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 29 | True]
; Precomputing data for removing quantified permissions
(define-fun pTaken@127@01 ((r $Ref)) $Perm
  (ite
    (= r x2@115@01)
    ($Perm.min
      (ite
        (and
          (img@119@01 r)
          (Set_in (inv@118@01 r) (Set_unionone (Set_singleton x1@114@01) x2@115@01)))
        (- $Perm.Write (pTaken@124@01 r))
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
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@119@01 r)
          (Set_in (inv@118@01 r) (Set_unionone (Set_singleton x1@114@01) x2@115@01)))
        (- $Perm.Write (pTaken@124@01 r))
        $Perm.No)
      (pTaken@127@01 r))
    $Perm.No)
  
  :qid |quant-u-16655|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=> (= r x2@115@01) (= (- $Perm.Write (pTaken@127@01 r)) $Perm.No))
  
  :qid |quant-u-16656|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@128@01 $FVF<f>)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (ite
    (and
      (img@119@01 x2@115@01)
      (Set_in (inv@118@01 x2@115@01) (Set_unionone (Set_singleton x1@114@01) x2@115@01)))
    (< $Perm.No (- $Perm.Write (pTaken@124@01 x2@115@01)))
    false)
  (=
    ($FVF.lookup_f (as sm@128@01  $FVF<f>) x2@115@01)
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second $t@116@01))) x2@115@01))))
(assert (valid%trigger ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@128@01  $FVF<f>) x2@115@01)) x2@115@01 true))
(declare-const sm@129@01 $PSF<valid>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_valid (as sm@129@01  $PSF<valid>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap x2@115@01)
    ($SortWrappers.BoolTo$Snap true)))
  ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@128@01  $FVF<f>) x2@115@01))))
; [exec]
; unrelated(x1)
(declare-const $t@130@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(declare-const x@131@01 $Ref)
(set-option :timeout 0)
(push) ; 5
; [eval] (x in Set(x1, x2))
; [eval] Set(x1, x2)
(assert (Set_in x@131@01 (Set_unionone (Set_singleton x1@114@01) x2@115@01)))
(pop) ; 5
(declare-fun inv@132@01 ($Ref Bool) $Ref)
(declare-fun img@133@01 ($Ref Bool) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((x1@131@01 $Ref) (x2@131@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@131@01 (Set_unionone (Set_singleton x1@114@01) x2@115@01))
      (Set_in x2@131@01 (Set_unionone (Set_singleton x1@114@01) x2@115@01))
      (= x1@131@01 x2@131@01))
    (= x1@131@01 x2@131@01))
  
  :qid |valid-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@131@01 $Ref)) (!
  (=>
    (Set_in x@131@01 (Set_unionone (Set_singleton x1@114@01) x2@115@01))
    (and (= (inv@132@01 x@131@01 true) x@131@01) (img@133@01 x@131@01 true)))
  :pattern ((Set_in x@131@01 (Set_unionone (Set_singleton x1@114@01) x2@115@01)))
  :pattern ((inv@132@01 x@131@01 true))
  :pattern ((img@133@01 x@131@01 true))
  :qid |valid-invOfFct|)))
(assert (forall ((this $Ref) (b Bool)) (!
  (=>
    (and
      (img@133@01 this b)
      (Set_in (inv@132@01 this b) (Set_unionone (Set_singleton x1@114@01) x2@115@01)))
    (and (= (inv@132@01 this b) this) (= true b)))
  :pattern ((inv@132@01 this b))
  :qid |valid-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@134@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and
      (Set_in (inv@132@01 this b) (Set_unionone (Set_singleton x1@114@01) x2@115@01))
      (img@133@01 this b)
      (and (= this (inv@132@01 this b)) (= b true)))
    ($Perm.min
      (ite (and (= this x2@115@01) (= b true)) $Perm.Write $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@135@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and
      (Set_in (inv@132@01 this b) (Set_unionone (Set_singleton x1@114@01) x2@115@01))
      (img@133@01 this b)
      (and (= this (inv@132@01 this b)) (= b true)))
    ($Perm.min
      (ite (and (= this x1@114@01) (= b true)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@134@01 this b)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (=
  (- (ite (= true true) $Perm.Write $Perm.No) (pTaken@134@01 x2@115@01 true))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and
      (Set_in (inv@132@01 this b) (Set_unionone (Set_singleton x1@114@01) x2@115@01))
      (img@133@01 this b)
      (and (= this (inv@132@01 this b)) (= b true)))
    (= (- $Perm.Write (pTaken@134@01 this b)) $Perm.No))
  
  :qid |quant-u-16660|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (=
  (- (ite (= true true) $Perm.Write $Perm.No) (pTaken@135@01 x1@114@01 true))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and
      (Set_in (inv@132@01 this b) (Set_unionone (Set_singleton x1@114@01) x2@115@01))
      (img@133@01 this b)
      (and (= this (inv@132@01 this b)) (= b true)))
    (=
      (- (- $Perm.Write (pTaken@134@01 this b)) (pTaken@135@01 this b))
      $Perm.No))
  
  :qid |quant-u-16662|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- t2_b ----------
(declare-const x1@136@01 $Ref)
(declare-const x2@137@01 $Ref)
(declare-const x1@138@01 $Ref)
(declare-const x2@139@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@140@01 $Snap)
(assert (= $t@140@01 ($Snap.combine ($Snap.first $t@140@01) ($Snap.second $t@140@01))))
(assert (not (= x1@138@01 $Ref.null)))
(declare-const x@141@01 $Ref)
(push) ; 2
; [eval] (x in Set(x1, x2))
; [eval] Set(x1, x2)
(assert (Set_in x@141@01 (Set_unionone (Set_singleton x1@138@01) x2@139@01)))
(pop) ; 2
(declare-fun inv@142@01 ($Ref) $Ref)
(declare-fun img@143@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@141@01 $Ref) (x2@141@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@141@01 (Set_unionone (Set_singleton x1@138@01) x2@139@01))
      (Set_in x2@141@01 (Set_unionone (Set_singleton x1@138@01) x2@139@01))
      (= x1@141@01 x2@141@01))
    (= x1@141@01 x2@141@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@141@01 $Ref)) (!
  (=>
    (Set_in x@141@01 (Set_unionone (Set_singleton x1@138@01) x2@139@01))
    (and (= (inv@142@01 x@141@01) x@141@01) (img@143@01 x@141@01)))
  :pattern ((Set_in x@141@01 (Set_unionone (Set_singleton x1@138@01) x2@139@01)))
  :pattern ((inv@142@01 x@141@01))
  :pattern ((img@143@01 x@141@01))
  :qid |quant-u-16664|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@143@01 r)
      (Set_in (inv@142@01 r) (Set_unionone (Set_singleton x1@138@01) x2@139@01)))
    (= (inv@142@01 r) r))
  :pattern ((inv@142@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@141@01 $Ref)) (!
  (=>
    (Set_in x@141@01 (Set_unionone (Set_singleton x1@138@01) x2@139@01))
    (not (= x@141@01 $Ref.null)))
  :pattern ((Set_in x@141@01 (Set_unionone (Set_singleton x1@138@01) x2@139@01)))
  :pattern ((inv@142@01 x@141@01))
  :pattern ((img@143@01 x@141@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const x@144@01 $Ref)
(push) ; 3
; [eval] (x in Set(x1, x2))
; [eval] Set(x1, x2)
(assert (Set_in x@144@01 (Set_unionone (Set_singleton x1@138@01) x2@139@01)))
(pop) ; 3
(declare-const $t@145@01 $PSF<valid>)
(declare-fun inv@146@01 ($Ref Bool) $Ref)
(declare-fun img@147@01 ($Ref Bool) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@144@01 $Ref) (x2@144@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@144@01 (Set_unionone (Set_singleton x1@138@01) x2@139@01))
      (Set_in x2@144@01 (Set_unionone (Set_singleton x1@138@01) x2@139@01))
      (= x1@144@01 x2@144@01))
    (= x1@144@01 x2@144@01))
  
  :qid |valid-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@144@01 $Ref)) (!
  (=>
    (Set_in x@144@01 (Set_unionone (Set_singleton x1@138@01) x2@139@01))
    (and (= (inv@146@01 x@144@01 true) x@144@01) (img@147@01 x@144@01 true)))
  :pattern ((Set_in x@144@01 (Set_unionone (Set_singleton x1@138@01) x2@139@01)))
  :pattern ((inv@146@01 x@144@01 true))
  :pattern ((img@147@01 x@144@01 true))
  :qid |quant-u-16666|)))
(assert (forall ((this $Ref) (b Bool)) (!
  (=>
    (and
      (img@147@01 this b)
      (Set_in (inv@146@01 this b) (Set_unionone (Set_singleton x1@138@01) x2@139@01)))
    (and (= (inv@146@01 this b) this) (= true b)))
  :pattern ((inv@146@01 this b))
  :qid |valid-fctOfInv|)))
; Permissions are non-negative
(pop) ; 2
(push) ; 2
; [exec]
; fold acc(valid(x2, false), write)
; [then-branch: 30 | False | dead]
; [else-branch: 30 | True | live]
(push) ; 3
; [else-branch: 30 | True]
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@148@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@143@01 r)
      (Set_in (inv@142@01 r) (Set_unionone (Set_singleton x1@138@01) x2@139@01)))
    (=
      ($FVF.lookup_f (as sm@148@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second $t@140@01)) r)))
  :pattern (($FVF.lookup_f (as sm@148@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second $t@140@01)) r))
  :qid |qp.fvfValDef5|)))
(declare-const pm@149@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@149@01  $FPM) r)
    (ite
      (and
        (img@143@01 r)
        (Set_in (inv@142@01 r) (Set_unionone (Set_singleton x1@138@01) x2@139@01)))
      $Perm.Write
      $Perm.No))
  :pattern (($FVF.perm_f (as pm@149@01  $FPM) r))
  :qid |qp.resPrmSumDef6|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@149@01  $FPM) r) $Perm.Write)
  :pattern ((inv@142@01 r))
  :qid |qp-fld-prm-bnd|)))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@150@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@143@01 r)
      (Set_in (inv@142@01 r) (Set_unionone (Set_singleton x1@138@01) x2@139@01)))
    (=
      ($FVF.lookup_f (as sm@150@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second $t@140@01)) r)))
  :pattern (($FVF.lookup_f (as sm@150@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second $t@140@01)) r))
  :qid |qp.fvfValDef7|)))
(declare-const pm@151@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@151@01  $FPM) r)
    (ite
      (and
        (img@143@01 r)
        (Set_in (inv@142@01 r) (Set_unionone (Set_singleton x1@138@01) x2@139@01)))
      $Perm.Write
      $Perm.No))
  :pattern (($FVF.perm_f (as pm@151@01  $FPM) r))
  :qid |qp.resPrmSumDef8|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@151@01  $FPM) r) $Perm.Write)
  :pattern ((inv@142@01 r))
  :qid |qp-fld-prm-bnd|)))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 3
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@152@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@143@01 r)
      (Set_in (inv@142@01 r) (Set_unionone (Set_singleton x1@138@01) x2@139@01)))
    (=
      ($FVF.lookup_f (as sm@152@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second $t@140@01)) r)))
  :pattern (($FVF.lookup_f (as sm@152@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second $t@140@01)) r))
  :qid |qp.fvfValDef9|)))
(declare-const pm@153@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@153@01  $FPM) r)
    (ite
      (and
        (img@143@01 r)
        (Set_in (inv@142@01 r) (Set_unionone (Set_singleton x1@138@01) x2@139@01)))
      $Perm.Write
      $Perm.No))
  :pattern (($FVF.perm_f (as pm@153@01  $FPM) r))
  :qid |qp.resPrmSumDef10|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@153@01  $FPM) r) $Perm.Write)
  :pattern ((inv@142@01 r))
  :qid |qp-fld-prm-bnd|)))
; [then-branch: 31 | False | dead]
; [else-branch: 31 | True | live]
(set-option :timeout 0)
(push) ; 3
; [else-branch: 31 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- t3_1 ----------
(declare-const this@154@01 $Ref)
(declare-const xs@155@01 Seq<$Ref>)
(declare-const b@156@01 Bool)
(declare-const this@157@01 $Ref)
(declare-const xs@158@01 Seq<$Ref>)
(declare-const b@159@01 Bool)
(push) ; 1
(declare-const $t@160@01 $Snap)
(assert (= $t@160@01 ($Snap.combine ($Snap.first $t@160@01) ($Snap.second $t@160@01))))
(assert (= ($Snap.first $t@160@01) $Snap.unit))
; [eval] (this in xs)
(assert (Seq_contains xs@158@01 this@157@01))
(assert (=
  ($Snap.second $t@160@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@160@01))
    ($Snap.second ($Snap.second $t@160@01)))))
(assert (not (= this@157@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second $t@160@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@160@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@160@01))))))
(declare-const x@161@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@158@01 x@161@01))
(pop) ; 2
(declare-fun inv@162@01 ($Ref Bool) $Ref)
(declare-fun img@163@01 ($Ref Bool) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@161@01 $Ref) (x2@161@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@158@01 x1@161@01)
      (Seq_contains xs@158@01 x2@161@01)
      (= x1@161@01 x2@161@01))
    (= x1@161@01 x2@161@01))
  
  :qid |valid-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@161@01 $Ref)) (!
  (=>
    (Seq_contains xs@158@01 x@161@01)
    (and
      (= (inv@162@01 x@161@01 b@159@01) x@161@01)
      (img@163@01 x@161@01 b@159@01)))
  :pattern ((Seq_contains xs@158@01 x@161@01))
  :pattern ((Seq_contains_trigger xs@158@01 x@161@01))
  :pattern ((Seq_contains_trigger xs@158@01 x@161@01))
  :pattern ((inv@162@01 x@161@01 b@159@01))
  :pattern ((img@163@01 x@161@01 b@159@01))
  :qid |quant-u-16668|)))
(assert (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (img@163@01 this b) (Seq_contains xs@158@01 (inv@162@01 this b)))
    (and (= (inv@162@01 this b) this) (= b@159@01 b)))
  :pattern ((inv@162@01 this b))
  :qid |valid-fctOfInv|)))
; Permissions are non-negative
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@160@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@160@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@160@01)))))))
(declare-const x@164@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@158@01 x@164@01))
; [eval] !b
(pop) ; 2
(declare-fun inv@165@01 ($Ref Bool) $Ref)
(declare-fun img@166@01 ($Ref Bool) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@164@01 $Ref) (x2@164@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@158@01 x1@164@01)
      (Seq_contains xs@158@01 x2@164@01)
      (= x1@164@01 x2@164@01))
    (= x1@164@01 x2@164@01))
  
  :qid |valid-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@164@01 $Ref)) (!
  (=>
    (Seq_contains xs@158@01 x@164@01)
    (and
      (= (inv@165@01 x@164@01 (not b@159@01)) x@164@01)
      (img@166@01 x@164@01 (not b@159@01))))
  :pattern ((Seq_contains xs@158@01 x@164@01))
  :pattern ((Seq_contains_trigger xs@158@01 x@164@01))
  :pattern ((Seq_contains_trigger xs@158@01 x@164@01))
  :qid |quant-u-16670|)))
(assert (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (img@166@01 this b) (Seq_contains xs@158@01 (inv@165@01 this b)))
    (and (= (inv@165@01 this b) this) (= (not b@159@01) b)))
  :pattern ((inv@165@01 this b))
  :qid |valid-fctOfInv|)))
; Permissions are non-negative
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (and
    (= x@164@01 x@161@01)
    (=
      (and (img@166@01 this b) (Seq_contains xs@158@01 (inv@165@01 this b)))
      (and (img@163@01 this b) (Seq_contains xs@158@01 (inv@162@01 this b)))))
  
  :qid |quant-u-16671|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@160@01))))
  $Snap.unit))
; [eval] (unfolding acc(valid(this, false), write) in this.g == 2)
(set-option :timeout 0)
(push) ; 2
; Precomputing data for removing quantified permissions
(define-fun pTaken@167@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@157@01) (= b false))
    ($Perm.min
      (ite
        (and (img@163@01 this b) (Seq_contains xs@158@01 (inv@162@01 this b)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@168@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@157@01) (= b false))
    ($Perm.min
      (ite
        (and (img@166@01 this b) (Seq_contains xs@158@01 (inv@165@01 this b)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@167@01 this b)))
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
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=
    (-
      (ite
        (and (img@163@01 this b) (Seq_contains xs@158@01 (inv@162@01 this b)))
        $Perm.Write
        $Perm.No)
      (pTaken@167@01 this b))
    $Perm.No)
  
  :qid |quant-u-16673|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (= (pTaken@167@01 this b) $Perm.No)
  
  :qid |quant-u-16674|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (= this this@157@01) (= b false))
    (= (- $Perm.Write (pTaken@167@01 this b)) $Perm.No))
  
  :qid |quant-u-16675|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=
    (-
      (ite
        (and (img@166@01 this b) (Seq_contains xs@158@01 (inv@165@01 this b)))
        $Perm.Write
        $Perm.No)
      (pTaken@168@01 this b))
    $Perm.No)
  
  :qid |quant-u-16676|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (= (pTaken@168@01 this b) $Perm.No)
  
  :qid |quant-u-16677|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (= this this@157@01) (= b false))
    (=
      (- (- $Perm.Write (pTaken@167@01 this b)) (pTaken@168@01 this b))
      $Perm.No))
  
  :qid |quant-u-16678|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@169@01 $PSF<valid>)
(declare-const s@170@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@163@01 this@157@01 false)
    (Seq_contains xs@158@01 (inv@162@01 this@157@01 false)))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@157@01)
          ($SortWrappers.BoolTo$Snap false))
        $Snap.unit))
    (=
      ($PSF.lookup_valid (as sm@169@01  $PSF<valid>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@157@01)
        ($SortWrappers.BoolTo$Snap false)))
      ($PSF.lookup_valid ($SortWrappers.$SnapTo$PSF<valid> ($Snap.first ($Snap.second ($Snap.second $t@160@01)))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@157@01)
        ($SortWrappers.BoolTo$Snap false)))))))
(assert (=>
  (and
    (img@166@01 this@157@01 false)
    (Seq_contains xs@158@01 (inv@165@01 this@157@01 false)))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@157@01)
          ($SortWrappers.BoolTo$Snap false))
        $Snap.unit))
    (=
      ($PSF.lookup_valid (as sm@169@01  $PSF<valid>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@157@01)
        ($SortWrappers.BoolTo$Snap false)))
      ($PSF.lookup_valid ($SortWrappers.$SnapTo$PSF<valid> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@160@01))))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@157@01)
        ($SortWrappers.BoolTo$Snap false)))))))
(assert (valid%trigger ($PSF.lookup_valid (as sm@169@01  $PSF<valid>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap this@157@01)
  ($SortWrappers.BoolTo$Snap false))) this@157@01 false))
; [then-branch: 32 | False | dead]
; [else-branch: 32 | True | live]
(set-option :timeout 0)
(push) ; 3
; [else-branch: 32 | True]
; [eval] this.g == 2
(pop) ; 3
(pop) ; 2
; Joined path conditions
(assert (and
  (=>
    (and
      (img@163@01 this@157@01 false)
      (Seq_contains xs@158@01 (inv@162@01 this@157@01 false)))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap this@157@01)
            ($SortWrappers.BoolTo$Snap false))
          $Snap.unit))
      (=
        ($PSF.lookup_valid (as sm@169@01  $PSF<valid>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@157@01)
          ($SortWrappers.BoolTo$Snap false)))
        ($PSF.lookup_valid ($SortWrappers.$SnapTo$PSF<valid> ($Snap.first ($Snap.second ($Snap.second $t@160@01)))) ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@157@01)
          ($SortWrappers.BoolTo$Snap false))))))
  (=>
    (and
      (img@166@01 this@157@01 false)
      (Seq_contains xs@158@01 (inv@165@01 this@157@01 false)))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap this@157@01)
            ($SortWrappers.BoolTo$Snap false))
          $Snap.unit))
      (=
        ($PSF.lookup_valid (as sm@169@01  $PSF<valid>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@157@01)
          ($SortWrappers.BoolTo$Snap false)))
        ($PSF.lookup_valid ($SortWrappers.$SnapTo$PSF<valid> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@160@01))))) ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@157@01)
          ($SortWrappers.BoolTo$Snap false))))))
  (valid%trigger ($PSF.lookup_valid (as sm@169@01  $PSF<valid>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap this@157@01)
    ($SortWrappers.BoolTo$Snap false))) this@157@01 false)))
(assert (=
  ($SortWrappers.$SnapToInt ($PSF.lookup_valid (as sm@169@01  $PSF<valid>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap this@157@01)
    ($SortWrappers.BoolTo$Snap false))))
  2))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@171@01 $Snap)
(assert (= $t@171@01 ($Snap.combine ($Snap.first $t@171@01) ($Snap.second $t@171@01))))
(declare-const sm@172@01 $PSF<valid>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_valid (as sm@172@01  $PSF<valid>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap this@157@01)
    ($SortWrappers.BoolTo$Snap b@159@01)))
  ($Snap.first $t@171@01)))
(assert (=
  ($Snap.second $t@171@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@171@01))
    ($Snap.second ($Snap.second $t@171@01)))))
; [eval] !b
(declare-const sm@173@01 $PSF<valid>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_valid (as sm@173@01  $PSF<valid>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap this@157@01)
    ($SortWrappers.BoolTo$Snap (not b@159@01))))
  ($Snap.first ($Snap.second $t@171@01))))
(push) ; 3
(set-option :timeout 10)
(assert (not (and (= (not b@159@01) (not b@159@01)) (= (not b@159@01) b@159@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No (ite (= (not b@159@01) (not b@159@01)) $Perm.Write $Perm.No)))
(assert (= ($Snap.second ($Snap.second $t@171@01)) $Snap.unit))
; [eval] (unfolding acc(valid(this, false), write) in this.g == 2)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (= b@159@01 false)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (not b@159@01) false)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@174@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@157@01) (= b false))
    ($Perm.min
      (ite (and (= this this@157@01) (= b b@159@01)) $Perm.Write $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@175@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@157@01) (= b false))
    ($Perm.min
      (ite (and (= this this@157@01) (= b (not b@159@01))) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@174@01 this b)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@174@01 this@157@01 b@159@01)) $Perm.No)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (= (pTaken@174@01 this b) $Perm.No)
  
  :qid |quant-u-16681|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (= this this@157@01) (= b false))
    (= (- $Perm.Write (pTaken@174@01 this b)) $Perm.No))
  
  :qid |quant-u-16682|))))
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
    (ite (= (not b@159@01) (not b@159@01)) $Perm.Write $Perm.No)
    (pTaken@175@01 this@157@01 (not b@159@01)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (= (pTaken@175@01 this b) $Perm.No)
  
  :qid |quant-u-16684|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (= this this@157@01) (= b false))
    (=
      (- (- $Perm.Write (pTaken@174@01 this b)) (pTaken@175@01 this b))
      $Perm.No))
  
  :qid |quant-u-16685|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@176@01 $PSF<valid>)
(declare-const s@177@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (= false b@159@01)
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@157@01)
          ($SortWrappers.BoolTo$Snap false))
        $Snap.unit))
    (=
      ($PSF.lookup_valid (as sm@176@01  $PSF<valid>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@157@01)
        ($SortWrappers.BoolTo$Snap false)))
      ($PSF.lookup_valid (as sm@172@01  $PSF<valid>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@157@01)
        ($SortWrappers.BoolTo$Snap false)))))))
(assert (=>
  (= false (not b@159@01))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@157@01)
          ($SortWrappers.BoolTo$Snap false))
        $Snap.unit))
    (=
      ($PSF.lookup_valid (as sm@176@01  $PSF<valid>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@157@01)
        ($SortWrappers.BoolTo$Snap false)))
      ($PSF.lookup_valid (as sm@173@01  $PSF<valid>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@157@01)
        ($SortWrappers.BoolTo$Snap false)))))))
(assert (valid%trigger ($PSF.lookup_valid (as sm@176@01  $PSF<valid>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap this@157@01)
  ($SortWrappers.BoolTo$Snap false))) this@157@01 false))
; [then-branch: 33 | False | dead]
; [else-branch: 33 | True | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 33 | True]
; [eval] this.g == 2
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (and
  (=>
    (= false b@159@01)
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap this@157@01)
            ($SortWrappers.BoolTo$Snap false))
          $Snap.unit))
      (=
        ($PSF.lookup_valid (as sm@176@01  $PSF<valid>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@157@01)
          ($SortWrappers.BoolTo$Snap false)))
        ($PSF.lookup_valid (as sm@172@01  $PSF<valid>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@157@01)
          ($SortWrappers.BoolTo$Snap false))))))
  (=>
    (= false (not b@159@01))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap this@157@01)
            ($SortWrappers.BoolTo$Snap false))
          $Snap.unit))
      (=
        ($PSF.lookup_valid (as sm@176@01  $PSF<valid>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@157@01)
          ($SortWrappers.BoolTo$Snap false)))
        ($PSF.lookup_valid (as sm@173@01  $PSF<valid>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@157@01)
          ($SortWrappers.BoolTo$Snap false))))))
  (valid%trigger ($PSF.lookup_valid (as sm@176@01  $PSF<valid>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap this@157@01)
    ($SortWrappers.BoolTo$Snap false))) this@157@01 false)))
(assert (=
  ($SortWrappers.$SnapToInt ($PSF.lookup_valid (as sm@176@01  $PSF<valid>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap this@157@01)
    ($SortWrappers.BoolTo$Snap false))))
  2))
(pop) ; 2
(push) ; 2
; [exec]
; unfold acc(valid(this, true), write)
; Precomputing data for removing quantified permissions
(define-fun pTaken@178@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@157@01) (= b true))
    ($Perm.min
      (ite
        (and (img@163@01 this b) (Seq_contains xs@158@01 (inv@162@01 this b)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@179@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@157@01) (= b true))
    ($Perm.min
      (ite
        (and (img@166@01 this b) (Seq_contains xs@158@01 (inv@165@01 this b)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@178@01 this b)))
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
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=
    (-
      (ite
        (and (img@163@01 this b) (Seq_contains xs@158@01 (inv@162@01 this b)))
        $Perm.Write
        $Perm.No)
      (pTaken@178@01 this b))
    $Perm.No)
  
  :qid |quant-u-16687|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (= (pTaken@178@01 this b) $Perm.No)
  
  :qid |quant-u-16688|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (= this this@157@01) (= b true))
    (= (- $Perm.Write (pTaken@178@01 this b)) $Perm.No))
  
  :qid |quant-u-16689|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=
    (-
      (ite
        (and (img@166@01 this b) (Seq_contains xs@158@01 (inv@165@01 this b)))
        $Perm.Write
        $Perm.No)
      (pTaken@179@01 this b))
    $Perm.No)
  
  :qid |quant-u-16690|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (= (pTaken@179@01 this b) $Perm.No)
  
  :qid |quant-u-16691|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (= this this@157@01) (= b true))
    (=
      (- (- $Perm.Write (pTaken@178@01 this b)) (pTaken@179@01 this b))
      $Perm.No))
  
  :qid |quant-u-16692|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@163@01 this@157@01 true)
    (Seq_contains xs@158@01 (inv@162@01 this@157@01 true)))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@157@01)
          ($SortWrappers.BoolTo$Snap true))
        $Snap.unit))
    (=
      ($PSF.lookup_valid (as sm@169@01  $PSF<valid>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@157@01)
        ($SortWrappers.BoolTo$Snap true)))
      ($PSF.lookup_valid ($SortWrappers.$SnapTo$PSF<valid> ($Snap.first ($Snap.second ($Snap.second $t@160@01)))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@157@01)
        ($SortWrappers.BoolTo$Snap true)))))))
(assert (=>
  (and
    (img@166@01 this@157@01 true)
    (Seq_contains xs@158@01 (inv@165@01 this@157@01 true)))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@157@01)
          ($SortWrappers.BoolTo$Snap true))
        $Snap.unit))
    (=
      ($PSF.lookup_valid (as sm@169@01  $PSF<valid>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@157@01)
        ($SortWrappers.BoolTo$Snap true)))
      ($PSF.lookup_valid ($SortWrappers.$SnapTo$PSF<valid> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@160@01))))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@157@01)
        ($SortWrappers.BoolTo$Snap true)))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 34 | True | live]
; [else-branch: 34 | False | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 34 | True]
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (valid%trigger ($PSF.lookup_valid (as sm@169@01  $PSF<valid>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap this@157@01)
  ($SortWrappers.BoolTo$Snap true))) this@157@01 true))
; [exec]
; this.f := 1
; [exec]
; fold acc(valid(this, true), write)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 35 | True | live]
; [else-branch: 35 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 35 | True]
(assert (valid%trigger ($SortWrappers.IntTo$Snap 1) this@157@01 true))
(declare-const sm@180@01 $PSF<valid>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_valid (as sm@180@01  $PSF<valid>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap this@157@01)
    ($SortWrappers.BoolTo$Snap true)))
  ($SortWrappers.IntTo$Snap 1)))
(push) ; 5
(set-option :timeout 10)
(assert (not (= true b@159@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@181@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@157@01) (= b b@159@01))
    ($Perm.min
      (ite
        (and (img@166@01 this b) (Seq_contains xs@158@01 (inv@165@01 this b)))
        (- $Perm.Write (pTaken@179@01 this b))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@182@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@157@01) (= b b@159@01))
    ($Perm.min
      (ite
        (and (img@163@01 this b) (Seq_contains xs@158@01 (inv@162@01 this b)))
        (- $Perm.Write (pTaken@178@01 this b))
        $Perm.No)
      (- $Perm.Write (pTaken@181@01 this b)))
    $Perm.No))
(define-fun pTaken@183@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@157@01) (= b b@159@01))
    ($Perm.min
      (ite (and (= this this@157@01) (= b true)) $Perm.Write $Perm.No)
      (- (- $Perm.Write (pTaken@181@01 this b)) (pTaken@182@01 this b)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=
    (-
      (ite
        (and (img@166@01 this b) (Seq_contains xs@158@01 (inv@165@01 this b)))
        (- $Perm.Write (pTaken@179@01 this b))
        $Perm.No)
      (pTaken@181@01 this b))
    $Perm.No)
  
  :qid |quant-u-16694|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (= (pTaken@181@01 this b) $Perm.No)
  
  :qid |quant-u-16695|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (= this this@157@01) (= b b@159@01))
    (= (- $Perm.Write (pTaken@181@01 this b)) $Perm.No))
  
  :qid |quant-u-16696|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=
    (-
      (ite
        (and (img@163@01 this b) (Seq_contains xs@158@01 (inv@162@01 this b)))
        (- $Perm.Write (pTaken@178@01 this b))
        $Perm.No)
      (pTaken@182@01 this b))
    $Perm.No)
  
  :qid |quant-u-16697|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (= (pTaken@182@01 this b) $Perm.No)
  
  :qid |quant-u-16698|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (= this this@157@01) (= b b@159@01))
    (=
      (- (- $Perm.Write (pTaken@181@01 this b)) (pTaken@182@01 this b))
      $Perm.No))
  
  :qid |quant-u-16699|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (=
  (- (ite (= true true) $Perm.Write $Perm.No) (pTaken@183@01 this@157@01 true))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (= (pTaken@183@01 this b) $Perm.No)
  
  :qid |quant-u-16701|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (= this this@157@01) (= b b@159@01))
    (=
      (-
        (- (- $Perm.Write (pTaken@181@01 this b)) (pTaken@182@01 this b))
        (pTaken@183@01 this b))
      $Perm.No))
  
  :qid |quant-u-16702|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] !b
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= true (not b@159@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@184@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@157@01) (= b (not b@159@01)))
    ($Perm.min
      (ite
        (and (img@163@01 this b) (Seq_contains xs@158@01 (inv@162@01 this b)))
        (- (- $Perm.Write (pTaken@178@01 this b)) (pTaken@182@01 this b))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@185@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@157@01) (= b (not b@159@01)))
    ($Perm.min
      (ite
        (and (img@166@01 this b) (Seq_contains xs@158@01 (inv@165@01 this b)))
        (- $Perm.Write (pTaken@179@01 this b))
        $Perm.No)
      (- $Perm.Write (pTaken@184@01 this b)))
    $Perm.No))
(define-fun pTaken@186@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@157@01) (= b (not b@159@01)))
    ($Perm.min
      (ite
        (and (= this this@157@01) (= b true))
        (- $Perm.Write (pTaken@183@01 this b))
        $Perm.No)
      (- (- $Perm.Write (pTaken@184@01 this b)) (pTaken@185@01 this b)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=
    (-
      (ite
        (and (img@163@01 this b) (Seq_contains xs@158@01 (inv@162@01 this b)))
        (- (- $Perm.Write (pTaken@178@01 this b)) (pTaken@182@01 this b))
        $Perm.No)
      (pTaken@184@01 this b))
    $Perm.No)
  
  :qid |quant-u-16704|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (= (pTaken@184@01 this b) $Perm.No)
  
  :qid |quant-u-16705|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (= this this@157@01) (= b (not b@159@01)))
    (= (- $Perm.Write (pTaken@184@01 this b)) $Perm.No))
  
  :qid |quant-u-16706|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=
    (-
      (ite
        (and (img@166@01 this b) (Seq_contains xs@158@01 (inv@165@01 this b)))
        (- $Perm.Write (pTaken@179@01 this b))
        $Perm.No)
      (pTaken@185@01 this b))
    $Perm.No)
  
  :qid |quant-u-16707|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (= (pTaken@185@01 this b) $Perm.No)
  
  :qid |quant-u-16708|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (= this this@157@01) (= b (not b@159@01)))
    (=
      (- (- $Perm.Write (pTaken@184@01 this b)) (pTaken@185@01 this b))
      $Perm.No))
  
  :qid |quant-u-16709|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (=
  (-
    (ite (= true true) (- $Perm.Write (pTaken@183@01 this@157@01 true)) $Perm.No)
    (pTaken@186@01 this@157@01 true))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (= this this@157@01) (= b (not b@159@01)))
    (=
      (-
        (- (- $Perm.Write (pTaken@184@01 this b)) (pTaken@185@01 this b))
        (pTaken@186@01 this b))
      $Perm.No))
  
  :qid |quant-u-16711|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (unfolding acc(valid(this, false), write) in this.g == 2)
(set-option :timeout 0)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@187@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@157@01) (= b false))
    ($Perm.min
      (ite
        (and (img@166@01 this b) (Seq_contains xs@158@01 (inv@165@01 this b)))
        (- $Perm.Write (pTaken@179@01 this b))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@188@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@157@01) (= b false))
    ($Perm.min
      (ite
        (and (img@163@01 this b) (Seq_contains xs@158@01 (inv@162@01 this b)))
        (- $Perm.Write (pTaken@178@01 this b))
        $Perm.No)
      (- $Perm.Write (pTaken@187@01 this b)))
    $Perm.No))
(define-fun pTaken@189@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@157@01) (= b false))
    ($Perm.min
      (ite (and (= this this@157@01) (= b true)) $Perm.Write $Perm.No)
      (- (- $Perm.Write (pTaken@187@01 this b)) (pTaken@188@01 this b)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=
    (-
      (ite
        (and (img@166@01 this b) (Seq_contains xs@158@01 (inv@165@01 this b)))
        (- $Perm.Write (pTaken@179@01 this b))
        $Perm.No)
      (pTaken@187@01 this b))
    $Perm.No)
  
  :qid |quant-u-16713|))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (= (pTaken@187@01 this b) $Perm.No)
  
  :qid |quant-u-16714|))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (= this this@157@01) (= b false))
    (= (- $Perm.Write (pTaken@187@01 this b)) $Perm.No))
  
  :qid |quant-u-16715|))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=
    (-
      (ite
        (and (img@163@01 this b) (Seq_contains xs@158@01 (inv@162@01 this b)))
        (- $Perm.Write (pTaken@178@01 this b))
        $Perm.No)
      (pTaken@188@01 this b))
    $Perm.No)
  
  :qid |quant-u-16716|))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (= (pTaken@188@01 this b) $Perm.No)
  
  :qid |quant-u-16717|))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (= this this@157@01) (= b false))
    (=
      (- (- $Perm.Write (pTaken@187@01 this b)) (pTaken@188@01 this b))
      $Perm.No))
  
  :qid |quant-u-16718|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@190@01 $PSF<valid>)
(declare-const s@191@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (= false true)
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@157@01)
          ($SortWrappers.BoolTo$Snap false))
        $Snap.unit))
    (=
      ($PSF.lookup_valid (as sm@190@01  $PSF<valid>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@157@01)
        ($SortWrappers.BoolTo$Snap false)))
      ($PSF.lookup_valid (as sm@180@01  $PSF<valid>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@157@01)
        ($SortWrappers.BoolTo$Snap false)))))))
(assert (=>
  (ite
    (and
      (img@166@01 this@157@01 false)
      (Seq_contains xs@158@01 (inv@165@01 this@157@01 false)))
    (< $Perm.No (- $Perm.Write (pTaken@179@01 this@157@01 false)))
    false)
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@157@01)
          ($SortWrappers.BoolTo$Snap false))
        $Snap.unit))
    (=
      ($PSF.lookup_valid (as sm@190@01  $PSF<valid>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@157@01)
        ($SortWrappers.BoolTo$Snap false)))
      ($PSF.lookup_valid ($SortWrappers.$SnapTo$PSF<valid> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@160@01))))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@157@01)
        ($SortWrappers.BoolTo$Snap false)))))))
(assert (=>
  (ite
    (and
      (img@163@01 this@157@01 false)
      (Seq_contains xs@158@01 (inv@162@01 this@157@01 false)))
    (< $Perm.No (- $Perm.Write (pTaken@178@01 this@157@01 false)))
    false)
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@157@01)
          ($SortWrappers.BoolTo$Snap false))
        $Snap.unit))
    (=
      ($PSF.lookup_valid (as sm@190@01  $PSF<valid>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@157@01)
        ($SortWrappers.BoolTo$Snap false)))
      ($PSF.lookup_valid ($SortWrappers.$SnapTo$PSF<valid> ($Snap.first ($Snap.second ($Snap.second $t@160@01)))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@157@01)
        ($SortWrappers.BoolTo$Snap false)))))))
(assert (valid%trigger ($PSF.lookup_valid (as sm@190@01  $PSF<valid>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap this@157@01)
  ($SortWrappers.BoolTo$Snap false))) this@157@01 false))
; [then-branch: 36 | False | dead]
; [else-branch: 36 | True | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 36 | True]
; [eval] this.g == 2
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (and
  (=>
    (= false true)
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap this@157@01)
            ($SortWrappers.BoolTo$Snap false))
          $Snap.unit))
      (=
        ($PSF.lookup_valid (as sm@190@01  $PSF<valid>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@157@01)
          ($SortWrappers.BoolTo$Snap false)))
        ($PSF.lookup_valid (as sm@180@01  $PSF<valid>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@157@01)
          ($SortWrappers.BoolTo$Snap false))))))
  (=>
    (ite
      (and
        (img@166@01 this@157@01 false)
        (Seq_contains xs@158@01 (inv@165@01 this@157@01 false)))
      (< $Perm.No (- $Perm.Write (pTaken@179@01 this@157@01 false)))
      false)
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap this@157@01)
            ($SortWrappers.BoolTo$Snap false))
          $Snap.unit))
      (=
        ($PSF.lookup_valid (as sm@190@01  $PSF<valid>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@157@01)
          ($SortWrappers.BoolTo$Snap false)))
        ($PSF.lookup_valid ($SortWrappers.$SnapTo$PSF<valid> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@160@01))))) ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@157@01)
          ($SortWrappers.BoolTo$Snap false))))))
  (=>
    (ite
      (and
        (img@163@01 this@157@01 false)
        (Seq_contains xs@158@01 (inv@162@01 this@157@01 false)))
      (< $Perm.No (- $Perm.Write (pTaken@178@01 this@157@01 false)))
      false)
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap this@157@01)
            ($SortWrappers.BoolTo$Snap false))
          $Snap.unit))
      (=
        ($PSF.lookup_valid (as sm@190@01  $PSF<valid>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@157@01)
          ($SortWrappers.BoolTo$Snap false)))
        ($PSF.lookup_valid ($SortWrappers.$SnapTo$PSF<valid> ($Snap.first ($Snap.second ($Snap.second $t@160@01)))) ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@157@01)
          ($SortWrappers.BoolTo$Snap false))))))
  (valid%trigger ($PSF.lookup_valid (as sm@190@01  $PSF<valid>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap this@157@01)
    ($SortWrappers.BoolTo$Snap false))) this@157@01 false)))
(push) ; 5
(assert (not (=
  ($SortWrappers.$SnapToInt ($PSF.lookup_valid (as sm@190@01  $PSF<valid>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap this@157@01)
    ($SortWrappers.BoolTo$Snap false))))
  2)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($PSF.lookup_valid (as sm@190@01  $PSF<valid>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap this@157@01)
    ($SortWrappers.BoolTo$Snap false))))
  2))
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- t3a ----------
(declare-const this@192@01 $Ref)
(declare-const xs@193@01 Seq<$Ref>)
(declare-const b@194@01 Bool)
(declare-const this@195@01 $Ref)
(declare-const xs@196@01 Seq<$Ref>)
(declare-const b@197@01 Bool)
(push) ; 1
(declare-const $t@198@01 $Snap)
(assert (= $t@198@01 ($Snap.combine ($Snap.first $t@198@01) ($Snap.second $t@198@01))))
(assert (= ($Snap.first $t@198@01) $Snap.unit))
; [eval] (this in xs)
(assert (Seq_contains xs@196@01 this@195@01))
(assert (=
  ($Snap.second $t@198@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@198@01))
    ($Snap.second ($Snap.second $t@198@01)))))
(assert (not (= this@195@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second $t@198@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@198@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@198@01))))))
(declare-const x@199@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@196@01 x@199@01))
(pop) ; 2
(declare-fun inv@200@01 ($Ref Bool) $Ref)
(declare-fun img@201@01 ($Ref Bool) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@199@01 $Ref) (x2@199@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@196@01 x1@199@01)
      (Seq_contains xs@196@01 x2@199@01)
      (= x1@199@01 x2@199@01))
    (= x1@199@01 x2@199@01))
  
  :qid |valid-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@199@01 $Ref)) (!
  (=>
    (Seq_contains xs@196@01 x@199@01)
    (and
      (= (inv@200@01 x@199@01 b@197@01) x@199@01)
      (img@201@01 x@199@01 b@197@01)))
  :pattern ((Seq_contains xs@196@01 x@199@01))
  :pattern ((Seq_contains_trigger xs@196@01 x@199@01))
  :pattern ((Seq_contains_trigger xs@196@01 x@199@01))
  :pattern ((inv@200@01 x@199@01 b@197@01))
  :pattern ((img@201@01 x@199@01 b@197@01))
  :qid |quant-u-16720|)))
(assert (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (img@201@01 this b) (Seq_contains xs@196@01 (inv@200@01 this b)))
    (and (= (inv@200@01 this b) this) (= b@197@01 b)))
  :pattern ((inv@200@01 this b))
  :qid |valid-fctOfInv|)))
; Permissions are non-negative
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@198@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@198@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01)))))))
(declare-const x@202@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@196@01 x@202@01))
; [eval] !b
(pop) ; 2
(declare-fun inv@203@01 ($Ref Bool) $Ref)
(declare-fun img@204@01 ($Ref Bool) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@202@01 $Ref) (x2@202@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@196@01 x1@202@01)
      (Seq_contains xs@196@01 x2@202@01)
      (= x1@202@01 x2@202@01))
    (= x1@202@01 x2@202@01))
  
  :qid |valid-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@202@01 $Ref)) (!
  (=>
    (Seq_contains xs@196@01 x@202@01)
    (and
      (= (inv@203@01 x@202@01 (not b@197@01)) x@202@01)
      (img@204@01 x@202@01 (not b@197@01))))
  :pattern ((Seq_contains xs@196@01 x@202@01))
  :pattern ((Seq_contains_trigger xs@196@01 x@202@01))
  :pattern ((Seq_contains_trigger xs@196@01 x@202@01))
  :qid |quant-u-16722|)))
(assert (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (img@204@01 this b) (Seq_contains xs@196@01 (inv@203@01 this b)))
    (and (= (inv@203@01 this b) this) (= (not b@197@01) b)))
  :pattern ((inv@203@01 this b))
  :qid |valid-fctOfInv|)))
; Permissions are non-negative
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (and
    (= x@202@01 x@199@01)
    (=
      (and (img@204@01 this b) (Seq_contains xs@196@01 (inv@203@01 this b)))
      (and (img@201@01 this b) (Seq_contains xs@196@01 (inv@200@01 this b)))))
  
  :qid |quant-u-16723|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@198@01))))
  $Snap.unit))
; [eval] (unfolding acc(valid(this, false), write) in this.g == 2)
(set-option :timeout 0)
(push) ; 2
; Precomputing data for removing quantified permissions
(define-fun pTaken@205@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@195@01) (= b false))
    ($Perm.min
      (ite
        (and (img@201@01 this b) (Seq_contains xs@196@01 (inv@200@01 this b)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@206@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@195@01) (= b false))
    ($Perm.min
      (ite
        (and (img@204@01 this b) (Seq_contains xs@196@01 (inv@203@01 this b)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@205@01 this b)))
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
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=
    (-
      (ite
        (and (img@201@01 this b) (Seq_contains xs@196@01 (inv@200@01 this b)))
        $Perm.Write
        $Perm.No)
      (pTaken@205@01 this b))
    $Perm.No)
  
  :qid |quant-u-16725|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (= (pTaken@205@01 this b) $Perm.No)
  
  :qid |quant-u-16726|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (= this this@195@01) (= b false))
    (= (- $Perm.Write (pTaken@205@01 this b)) $Perm.No))
  
  :qid |quant-u-16727|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=
    (-
      (ite
        (and (img@204@01 this b) (Seq_contains xs@196@01 (inv@203@01 this b)))
        $Perm.Write
        $Perm.No)
      (pTaken@206@01 this b))
    $Perm.No)
  
  :qid |quant-u-16728|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (= (pTaken@206@01 this b) $Perm.No)
  
  :qid |quant-u-16729|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (= this this@195@01) (= b false))
    (=
      (- (- $Perm.Write (pTaken@205@01 this b)) (pTaken@206@01 this b))
      $Perm.No))
  
  :qid |quant-u-16730|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@207@01 $PSF<valid>)
(declare-const s@208@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@201@01 this@195@01 false)
    (Seq_contains xs@196@01 (inv@200@01 this@195@01 false)))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@195@01)
          ($SortWrappers.BoolTo$Snap false))
        $Snap.unit))
    (=
      ($PSF.lookup_valid (as sm@207@01  $PSF<valid>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@195@01)
        ($SortWrappers.BoolTo$Snap false)))
      ($PSF.lookup_valid ($SortWrappers.$SnapTo$PSF<valid> ($Snap.first ($Snap.second ($Snap.second $t@198@01)))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@195@01)
        ($SortWrappers.BoolTo$Snap false)))))))
(assert (=>
  (and
    (img@204@01 this@195@01 false)
    (Seq_contains xs@196@01 (inv@203@01 this@195@01 false)))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@195@01)
          ($SortWrappers.BoolTo$Snap false))
        $Snap.unit))
    (=
      ($PSF.lookup_valid (as sm@207@01  $PSF<valid>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@195@01)
        ($SortWrappers.BoolTo$Snap false)))
      ($PSF.lookup_valid ($SortWrappers.$SnapTo$PSF<valid> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@198@01))))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@195@01)
        ($SortWrappers.BoolTo$Snap false)))))))
(assert (valid%trigger ($PSF.lookup_valid (as sm@207@01  $PSF<valid>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap this@195@01)
  ($SortWrappers.BoolTo$Snap false))) this@195@01 false))
; [then-branch: 37 | False | dead]
; [else-branch: 37 | True | live]
(set-option :timeout 0)
(push) ; 3
; [else-branch: 37 | True]
; [eval] this.g == 2
(pop) ; 3
(pop) ; 2
; Joined path conditions
(assert (and
  (=>
    (and
      (img@201@01 this@195@01 false)
      (Seq_contains xs@196@01 (inv@200@01 this@195@01 false)))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap this@195@01)
            ($SortWrappers.BoolTo$Snap false))
          $Snap.unit))
      (=
        ($PSF.lookup_valid (as sm@207@01  $PSF<valid>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@195@01)
          ($SortWrappers.BoolTo$Snap false)))
        ($PSF.lookup_valid ($SortWrappers.$SnapTo$PSF<valid> ($Snap.first ($Snap.second ($Snap.second $t@198@01)))) ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@195@01)
          ($SortWrappers.BoolTo$Snap false))))))
  (=>
    (and
      (img@204@01 this@195@01 false)
      (Seq_contains xs@196@01 (inv@203@01 this@195@01 false)))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap this@195@01)
            ($SortWrappers.BoolTo$Snap false))
          $Snap.unit))
      (=
        ($PSF.lookup_valid (as sm@207@01  $PSF<valid>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@195@01)
          ($SortWrappers.BoolTo$Snap false)))
        ($PSF.lookup_valid ($SortWrappers.$SnapTo$PSF<valid> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@198@01))))) ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@195@01)
          ($SortWrappers.BoolTo$Snap false))))))
  (valid%trigger ($PSF.lookup_valid (as sm@207@01  $PSF<valid>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap this@195@01)
    ($SortWrappers.BoolTo$Snap false))) this@195@01 false)))
(assert (=
  ($SortWrappers.$SnapToInt ($PSF.lookup_valid (as sm@207@01  $PSF<valid>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap this@195@01)
    ($SortWrappers.BoolTo$Snap false))))
  2))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@209@01 $Snap)
(assert (= $t@209@01 ($Snap.combine ($Snap.first $t@209@01) ($Snap.second $t@209@01))))
(declare-const sm@210@01 $PSF<valid>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_valid (as sm@210@01  $PSF<valid>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap this@195@01)
    ($SortWrappers.BoolTo$Snap b@197@01)))
  ($Snap.first $t@209@01)))
(assert (=
  ($Snap.second $t@209@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@209@01))
    ($Snap.second ($Snap.second $t@209@01)))))
; [eval] !b
(declare-const sm@211@01 $PSF<valid>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_valid (as sm@211@01  $PSF<valid>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap this@195@01)
    ($SortWrappers.BoolTo$Snap (not b@197@01))))
  ($Snap.first ($Snap.second $t@209@01))))
(push) ; 3
(set-option :timeout 10)
(assert (not (and (= (not b@197@01) (not b@197@01)) (= (not b@197@01) b@197@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No (ite (= (not b@197@01) (not b@197@01)) $Perm.Write $Perm.No)))
(assert (= ($Snap.second ($Snap.second $t@209@01)) $Snap.unit))
; [eval] (unfolding acc(valid(this, false), write) in this.g == 2)
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (= b@197@01 false)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (not b@197@01) false)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@212@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@195@01) (= b false))
    ($Perm.min
      (ite (and (= this this@195@01) (= b b@197@01)) $Perm.Write $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@213@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@195@01) (= b false))
    ($Perm.min
      (ite (and (= this this@195@01) (= b (not b@197@01))) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@212@01 this b)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@212@01 this@195@01 b@197@01)) $Perm.No)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (= (pTaken@212@01 this b) $Perm.No)
  
  :qid |quant-u-16733|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (= this this@195@01) (= b false))
    (= (- $Perm.Write (pTaken@212@01 this b)) $Perm.No))
  
  :qid |quant-u-16734|))))
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
    (ite (= (not b@197@01) (not b@197@01)) $Perm.Write $Perm.No)
    (pTaken@213@01 this@195@01 (not b@197@01)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (= (pTaken@213@01 this b) $Perm.No)
  
  :qid |quant-u-16736|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (= this this@195@01) (= b false))
    (=
      (- (- $Perm.Write (pTaken@212@01 this b)) (pTaken@213@01 this b))
      $Perm.No))
  
  :qid |quant-u-16737|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@214@01 $PSF<valid>)
(declare-const s@215@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (= false b@197@01)
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@195@01)
          ($SortWrappers.BoolTo$Snap false))
        $Snap.unit))
    (=
      ($PSF.lookup_valid (as sm@214@01  $PSF<valid>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@195@01)
        ($SortWrappers.BoolTo$Snap false)))
      ($PSF.lookup_valid (as sm@210@01  $PSF<valid>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@195@01)
        ($SortWrappers.BoolTo$Snap false)))))))
(assert (=>
  (= false (not b@197@01))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@195@01)
          ($SortWrappers.BoolTo$Snap false))
        $Snap.unit))
    (=
      ($PSF.lookup_valid (as sm@214@01  $PSF<valid>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@195@01)
        ($SortWrappers.BoolTo$Snap false)))
      ($PSF.lookup_valid (as sm@211@01  $PSF<valid>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@195@01)
        ($SortWrappers.BoolTo$Snap false)))))))
(assert (valid%trigger ($PSF.lookup_valid (as sm@214@01  $PSF<valid>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap this@195@01)
  ($SortWrappers.BoolTo$Snap false))) this@195@01 false))
; [then-branch: 38 | False | dead]
; [else-branch: 38 | True | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 38 | True]
; [eval] this.g == 2
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (and
  (=>
    (= false b@197@01)
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap this@195@01)
            ($SortWrappers.BoolTo$Snap false))
          $Snap.unit))
      (=
        ($PSF.lookup_valid (as sm@214@01  $PSF<valid>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@195@01)
          ($SortWrappers.BoolTo$Snap false)))
        ($PSF.lookup_valid (as sm@210@01  $PSF<valid>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@195@01)
          ($SortWrappers.BoolTo$Snap false))))))
  (=>
    (= false (not b@197@01))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap this@195@01)
            ($SortWrappers.BoolTo$Snap false))
          $Snap.unit))
      (=
        ($PSF.lookup_valid (as sm@214@01  $PSF<valid>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@195@01)
          ($SortWrappers.BoolTo$Snap false)))
        ($PSF.lookup_valid (as sm@211@01  $PSF<valid>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@195@01)
          ($SortWrappers.BoolTo$Snap false))))))
  (valid%trigger ($PSF.lookup_valid (as sm@214@01  $PSF<valid>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap this@195@01)
    ($SortWrappers.BoolTo$Snap false))) this@195@01 false)))
(assert (=
  ($SortWrappers.$SnapToInt ($PSF.lookup_valid (as sm@214@01  $PSF<valid>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap this@195@01)
    ($SortWrappers.BoolTo$Snap false))))
  2))
(pop) ; 2
(push) ; 2
; [exec]
; unfold acc(valid(this, true), write)
; Precomputing data for removing quantified permissions
(define-fun pTaken@216@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@195@01) (= b true))
    ($Perm.min
      (ite
        (and (img@201@01 this b) (Seq_contains xs@196@01 (inv@200@01 this b)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@217@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@195@01) (= b true))
    ($Perm.min
      (ite
        (and (img@204@01 this b) (Seq_contains xs@196@01 (inv@203@01 this b)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@216@01 this b)))
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
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=
    (-
      (ite
        (and (img@201@01 this b) (Seq_contains xs@196@01 (inv@200@01 this b)))
        $Perm.Write
        $Perm.No)
      (pTaken@216@01 this b))
    $Perm.No)
  
  :qid |quant-u-16739|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (= (pTaken@216@01 this b) $Perm.No)
  
  :qid |quant-u-16740|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (= this this@195@01) (= b true))
    (= (- $Perm.Write (pTaken@216@01 this b)) $Perm.No))
  
  :qid |quant-u-16741|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=
    (-
      (ite
        (and (img@204@01 this b) (Seq_contains xs@196@01 (inv@203@01 this b)))
        $Perm.Write
        $Perm.No)
      (pTaken@217@01 this b))
    $Perm.No)
  
  :qid |quant-u-16742|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (= (pTaken@217@01 this b) $Perm.No)
  
  :qid |quant-u-16743|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (= this this@195@01) (= b true))
    (=
      (- (- $Perm.Write (pTaken@216@01 this b)) (pTaken@217@01 this b))
      $Perm.No))
  
  :qid |quant-u-16744|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@201@01 this@195@01 true)
    (Seq_contains xs@196@01 (inv@200@01 this@195@01 true)))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@195@01)
          ($SortWrappers.BoolTo$Snap true))
        $Snap.unit))
    (=
      ($PSF.lookup_valid (as sm@207@01  $PSF<valid>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@195@01)
        ($SortWrappers.BoolTo$Snap true)))
      ($PSF.lookup_valid ($SortWrappers.$SnapTo$PSF<valid> ($Snap.first ($Snap.second ($Snap.second $t@198@01)))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@195@01)
        ($SortWrappers.BoolTo$Snap true)))))))
(assert (=>
  (and
    (img@204@01 this@195@01 true)
    (Seq_contains xs@196@01 (inv@203@01 this@195@01 true)))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@195@01)
          ($SortWrappers.BoolTo$Snap true))
        $Snap.unit))
    (=
      ($PSF.lookup_valid (as sm@207@01  $PSF<valid>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@195@01)
        ($SortWrappers.BoolTo$Snap true)))
      ($PSF.lookup_valid ($SortWrappers.$SnapTo$PSF<valid> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@198@01))))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@195@01)
        ($SortWrappers.BoolTo$Snap true)))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 39 | True | live]
; [else-branch: 39 | False | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 39 | True]
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (valid%trigger ($PSF.lookup_valid (as sm@207@01  $PSF<valid>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap this@195@01)
  ($SortWrappers.BoolTo$Snap true))) this@195@01 true))
; [exec]
; this.f := 1
; [exec]
; fold acc(valid(this, true), write)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 40 | True | live]
; [else-branch: 40 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 40 | True]
(assert (valid%trigger ($SortWrappers.IntTo$Snap 1) this@195@01 true))
(declare-const sm@218@01 $PSF<valid>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_valid (as sm@218@01  $PSF<valid>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap this@195@01)
    ($SortWrappers.BoolTo$Snap true)))
  ($SortWrappers.IntTo$Snap 1)))
; [exec]
; unrelated(this)
(declare-const $t@219@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= true b@197@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@220@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@195@01) (= b b@197@01))
    ($Perm.min
      (ite
        (and (img@204@01 this b) (Seq_contains xs@196@01 (inv@203@01 this b)))
        (- $Perm.Write (pTaken@217@01 this b))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@221@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@195@01) (= b b@197@01))
    ($Perm.min
      (ite
        (and (img@201@01 this b) (Seq_contains xs@196@01 (inv@200@01 this b)))
        (- $Perm.Write (pTaken@216@01 this b))
        $Perm.No)
      (- $Perm.Write (pTaken@220@01 this b)))
    $Perm.No))
(define-fun pTaken@222@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@195@01) (= b b@197@01))
    ($Perm.min
      (ite (and (= this this@195@01) (= b true)) $Perm.Write $Perm.No)
      (- (- $Perm.Write (pTaken@220@01 this b)) (pTaken@221@01 this b)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=
    (-
      (ite
        (and (img@204@01 this b) (Seq_contains xs@196@01 (inv@203@01 this b)))
        (- $Perm.Write (pTaken@217@01 this b))
        $Perm.No)
      (pTaken@220@01 this b))
    $Perm.No)
  
  :qid |quant-u-16746|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (= (pTaken@220@01 this b) $Perm.No)
  
  :qid |quant-u-16747|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (= this this@195@01) (= b b@197@01))
    (= (- $Perm.Write (pTaken@220@01 this b)) $Perm.No))
  
  :qid |quant-u-16748|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=
    (-
      (ite
        (and (img@201@01 this b) (Seq_contains xs@196@01 (inv@200@01 this b)))
        (- $Perm.Write (pTaken@216@01 this b))
        $Perm.No)
      (pTaken@221@01 this b))
    $Perm.No)
  
  :qid |quant-u-16749|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (= (pTaken@221@01 this b) $Perm.No)
  
  :qid |quant-u-16750|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (= this this@195@01) (= b b@197@01))
    (=
      (- (- $Perm.Write (pTaken@220@01 this b)) (pTaken@221@01 this b))
      $Perm.No))
  
  :qid |quant-u-16751|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (=
  (- (ite (= true true) $Perm.Write $Perm.No) (pTaken@222@01 this@195@01 true))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (= (pTaken@222@01 this b) $Perm.No)
  
  :qid |quant-u-16753|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (= this this@195@01) (= b b@197@01))
    (=
      (-
        (- (- $Perm.Write (pTaken@220@01 this b)) (pTaken@221@01 this b))
        (pTaken@222@01 this b))
      $Perm.No))
  
  :qid |quant-u-16754|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] !b
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= true (not b@197@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@223@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@195@01) (= b (not b@197@01)))
    ($Perm.min
      (ite
        (and (img@201@01 this b) (Seq_contains xs@196@01 (inv@200@01 this b)))
        (- (- $Perm.Write (pTaken@216@01 this b)) (pTaken@221@01 this b))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@224@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@195@01) (= b (not b@197@01)))
    ($Perm.min
      (ite
        (and (img@204@01 this b) (Seq_contains xs@196@01 (inv@203@01 this b)))
        (- $Perm.Write (pTaken@217@01 this b))
        $Perm.No)
      (- $Perm.Write (pTaken@223@01 this b)))
    $Perm.No))
(define-fun pTaken@225@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@195@01) (= b (not b@197@01)))
    ($Perm.min
      (ite
        (and (= this this@195@01) (= b true))
        (- $Perm.Write (pTaken@222@01 this b))
        $Perm.No)
      (- (- $Perm.Write (pTaken@223@01 this b)) (pTaken@224@01 this b)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=
    (-
      (ite
        (and (img@201@01 this b) (Seq_contains xs@196@01 (inv@200@01 this b)))
        (- (- $Perm.Write (pTaken@216@01 this b)) (pTaken@221@01 this b))
        $Perm.No)
      (pTaken@223@01 this b))
    $Perm.No)
  
  :qid |quant-u-16756|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (= (pTaken@223@01 this b) $Perm.No)
  
  :qid |quant-u-16757|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (= this this@195@01) (= b (not b@197@01)))
    (= (- $Perm.Write (pTaken@223@01 this b)) $Perm.No))
  
  :qid |quant-u-16758|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=
    (-
      (ite
        (and (img@204@01 this b) (Seq_contains xs@196@01 (inv@203@01 this b)))
        (- $Perm.Write (pTaken@217@01 this b))
        $Perm.No)
      (pTaken@224@01 this b))
    $Perm.No)
  
  :qid |quant-u-16759|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (= (pTaken@224@01 this b) $Perm.No)
  
  :qid |quant-u-16760|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (= this this@195@01) (= b (not b@197@01)))
    (=
      (- (- $Perm.Write (pTaken@223@01 this b)) (pTaken@224@01 this b))
      $Perm.No))
  
  :qid |quant-u-16761|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (=
  (-
    (ite (= true true) (- $Perm.Write (pTaken@222@01 this@195@01 true)) $Perm.No)
    (pTaken@225@01 this@195@01 true))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (= this this@195@01) (= b (not b@197@01)))
    (=
      (-
        (- (- $Perm.Write (pTaken@223@01 this b)) (pTaken@224@01 this b))
        (pTaken@225@01 this b))
      $Perm.No))
  
  :qid |quant-u-16763|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (unfolding acc(valid(this, false), write) in this.g == 2)
(set-option :timeout 0)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@226@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@195@01) (= b false))
    ($Perm.min
      (ite
        (and (img@204@01 this b) (Seq_contains xs@196@01 (inv@203@01 this b)))
        (- $Perm.Write (pTaken@217@01 this b))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@227@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@195@01) (= b false))
    ($Perm.min
      (ite
        (and (img@201@01 this b) (Seq_contains xs@196@01 (inv@200@01 this b)))
        (- $Perm.Write (pTaken@216@01 this b))
        $Perm.No)
      (- $Perm.Write (pTaken@226@01 this b)))
    $Perm.No))
(define-fun pTaken@228@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@195@01) (= b false))
    ($Perm.min
      (ite (and (= this this@195@01) (= b true)) $Perm.Write $Perm.No)
      (- (- $Perm.Write (pTaken@226@01 this b)) (pTaken@227@01 this b)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=
    (-
      (ite
        (and (img@204@01 this b) (Seq_contains xs@196@01 (inv@203@01 this b)))
        (- $Perm.Write (pTaken@217@01 this b))
        $Perm.No)
      (pTaken@226@01 this b))
    $Perm.No)
  
  :qid |quant-u-16765|))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (= (pTaken@226@01 this b) $Perm.No)
  
  :qid |quant-u-16766|))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (= this this@195@01) (= b false))
    (= (- $Perm.Write (pTaken@226@01 this b)) $Perm.No))
  
  :qid |quant-u-16767|))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=
    (-
      (ite
        (and (img@201@01 this b) (Seq_contains xs@196@01 (inv@200@01 this b)))
        (- $Perm.Write (pTaken@216@01 this b))
        $Perm.No)
      (pTaken@227@01 this b))
    $Perm.No)
  
  :qid |quant-u-16768|))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (= (pTaken@227@01 this b) $Perm.No)
  
  :qid |quant-u-16769|))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (= this this@195@01) (= b false))
    (=
      (- (- $Perm.Write (pTaken@226@01 this b)) (pTaken@227@01 this b))
      $Perm.No))
  
  :qid |quant-u-16770|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@229@01 $PSF<valid>)
(declare-const s@230@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (= false true)
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@195@01)
          ($SortWrappers.BoolTo$Snap false))
        $Snap.unit))
    (=
      ($PSF.lookup_valid (as sm@229@01  $PSF<valid>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@195@01)
        ($SortWrappers.BoolTo$Snap false)))
      ($PSF.lookup_valid (as sm@218@01  $PSF<valid>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@195@01)
        ($SortWrappers.BoolTo$Snap false)))))))
(assert (=>
  (ite
    (and
      (img@204@01 this@195@01 false)
      (Seq_contains xs@196@01 (inv@203@01 this@195@01 false)))
    (< $Perm.No (- $Perm.Write (pTaken@217@01 this@195@01 false)))
    false)
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@195@01)
          ($SortWrappers.BoolTo$Snap false))
        $Snap.unit))
    (=
      ($PSF.lookup_valid (as sm@229@01  $PSF<valid>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@195@01)
        ($SortWrappers.BoolTo$Snap false)))
      ($PSF.lookup_valid ($SortWrappers.$SnapTo$PSF<valid> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@198@01))))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@195@01)
        ($SortWrappers.BoolTo$Snap false)))))))
(assert (=>
  (ite
    (and
      (img@201@01 this@195@01 false)
      (Seq_contains xs@196@01 (inv@200@01 this@195@01 false)))
    (< $Perm.No (- $Perm.Write (pTaken@216@01 this@195@01 false)))
    false)
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@195@01)
          ($SortWrappers.BoolTo$Snap false))
        $Snap.unit))
    (=
      ($PSF.lookup_valid (as sm@229@01  $PSF<valid>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@195@01)
        ($SortWrappers.BoolTo$Snap false)))
      ($PSF.lookup_valid ($SortWrappers.$SnapTo$PSF<valid> ($Snap.first ($Snap.second ($Snap.second $t@198@01)))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@195@01)
        ($SortWrappers.BoolTo$Snap false)))))))
(assert (valid%trigger ($PSF.lookup_valid (as sm@229@01  $PSF<valid>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap this@195@01)
  ($SortWrappers.BoolTo$Snap false))) this@195@01 false))
; [then-branch: 41 | False | dead]
; [else-branch: 41 | True | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 41 | True]
; [eval] this.g == 2
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (and
  (=>
    (= false true)
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap this@195@01)
            ($SortWrappers.BoolTo$Snap false))
          $Snap.unit))
      (=
        ($PSF.lookup_valid (as sm@229@01  $PSF<valid>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@195@01)
          ($SortWrappers.BoolTo$Snap false)))
        ($PSF.lookup_valid (as sm@218@01  $PSF<valid>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@195@01)
          ($SortWrappers.BoolTo$Snap false))))))
  (=>
    (ite
      (and
        (img@204@01 this@195@01 false)
        (Seq_contains xs@196@01 (inv@203@01 this@195@01 false)))
      (< $Perm.No (- $Perm.Write (pTaken@217@01 this@195@01 false)))
      false)
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap this@195@01)
            ($SortWrappers.BoolTo$Snap false))
          $Snap.unit))
      (=
        ($PSF.lookup_valid (as sm@229@01  $PSF<valid>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@195@01)
          ($SortWrappers.BoolTo$Snap false)))
        ($PSF.lookup_valid ($SortWrappers.$SnapTo$PSF<valid> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@198@01))))) ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@195@01)
          ($SortWrappers.BoolTo$Snap false))))))
  (=>
    (ite
      (and
        (img@201@01 this@195@01 false)
        (Seq_contains xs@196@01 (inv@200@01 this@195@01 false)))
      (< $Perm.No (- $Perm.Write (pTaken@216@01 this@195@01 false)))
      false)
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap this@195@01)
            ($SortWrappers.BoolTo$Snap false))
          $Snap.unit))
      (=
        ($PSF.lookup_valid (as sm@229@01  $PSF<valid>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@195@01)
          ($SortWrappers.BoolTo$Snap false)))
        ($PSF.lookup_valid ($SortWrappers.$SnapTo$PSF<valid> ($Snap.first ($Snap.second ($Snap.second $t@198@01)))) ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@195@01)
          ($SortWrappers.BoolTo$Snap false))))))
  (valid%trigger ($PSF.lookup_valid (as sm@229@01  $PSF<valid>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap this@195@01)
    ($SortWrappers.BoolTo$Snap false))) this@195@01 false)))
(push) ; 5
(assert (not (=
  ($SortWrappers.$SnapToInt ($PSF.lookup_valid (as sm@229@01  $PSF<valid>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap this@195@01)
    ($SortWrappers.BoolTo$Snap false))))
  2)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($PSF.lookup_valid (as sm@229@01  $PSF<valid>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap this@195@01)
    ($SortWrappers.BoolTo$Snap false))))
  2))
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- t3b ----------
(declare-const this@231@01 $Ref)
(declare-const xs@232@01 Seq<$Ref>)
(declare-const b@233@01 Bool)
(declare-const this@234@01 $Ref)
(declare-const xs@235@01 Seq<$Ref>)
(declare-const b@236@01 Bool)
(push) ; 1
(declare-const $t@237@01 $Snap)
(assert (= $t@237@01 ($Snap.combine ($Snap.first $t@237@01) ($Snap.second $t@237@01))))
(assert (= ($Snap.first $t@237@01) $Snap.unit))
; [eval] (this in xs)
(assert (Seq_contains xs@235@01 this@234@01))
(assert (=
  ($Snap.second $t@237@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@237@01))
    ($Snap.second ($Snap.second $t@237@01)))))
(declare-const x@238@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@235@01 x@238@01))
(pop) ; 2
(declare-fun inv@239@01 ($Ref Bool) $Ref)
(declare-fun img@240@01 ($Ref Bool) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@238@01 $Ref) (x2@238@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@235@01 x1@238@01)
      (Seq_contains xs@235@01 x2@238@01)
      (= x1@238@01 x2@238@01))
    (= x1@238@01 x2@238@01))
  
  :qid |valid-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@238@01 $Ref)) (!
  (=>
    (Seq_contains xs@235@01 x@238@01)
    (and
      (= (inv@239@01 x@238@01 b@236@01) x@238@01)
      (img@240@01 x@238@01 b@236@01)))
  :pattern ((Seq_contains xs@235@01 x@238@01))
  :pattern ((Seq_contains_trigger xs@235@01 x@238@01))
  :pattern ((Seq_contains_trigger xs@235@01 x@238@01))
  :pattern ((inv@239@01 x@238@01 b@236@01))
  :pattern ((img@240@01 x@238@01 b@236@01))
  :qid |quant-u-16772|)))
(assert (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (img@240@01 this b) (Seq_contains xs@235@01 (inv@239@01 this b)))
    (and (= (inv@239@01 this b) this) (= b@236@01 b)))
  :pattern ((inv@239@01 this b))
  :qid |valid-fctOfInv|)))
; Permissions are non-negative
(declare-const x@241@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@235@01 x@241@01))
; [eval] !b
(pop) ; 2
(declare-fun inv@242@01 ($Ref Bool) $Ref)
(declare-fun img@243@01 ($Ref Bool) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@241@01 $Ref) (x2@241@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@235@01 x1@241@01)
      (Seq_contains xs@235@01 x2@241@01)
      (= x1@241@01 x2@241@01))
    (= x1@241@01 x2@241@01))
  
  :qid |valid-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@241@01 $Ref)) (!
  (=>
    (Seq_contains xs@235@01 x@241@01)
    (and
      (= (inv@242@01 x@241@01 (not b@236@01)) x@241@01)
      (img@243@01 x@241@01 (not b@236@01))))
  :pattern ((Seq_contains xs@235@01 x@241@01))
  :pattern ((Seq_contains_trigger xs@235@01 x@241@01))
  :pattern ((Seq_contains_trigger xs@235@01 x@241@01))
  :qid |quant-u-16774|)))
(assert (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (img@243@01 this b) (Seq_contains xs@235@01 (inv@242@01 this b)))
    (and (= (inv@242@01 this b) this) (= (not b@236@01) b)))
  :pattern ((inv@242@01 this b))
  :qid |valid-fctOfInv|)))
; Permissions are non-negative
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (and
    (= x@241@01 x@238@01)
    (=
      (and (img@243@01 this b) (Seq_contains xs@235@01 (inv@242@01 this b)))
      (and (img@240@01 this b) (Seq_contains xs@235@01 (inv@239@01 this b)))))
  
  :qid |quant-u-16775|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; unfold acc(valid(this, true), write)
; Precomputing data for removing quantified permissions
(define-fun pTaken@244@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@234@01) (= b true))
    ($Perm.min
      (ite
        (and (img@240@01 this b) (Seq_contains xs@235@01 (inv@239@01 this b)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@245@01 ((this $Ref) (b Bool)) $Perm
  (ite
    (and (= this this@234@01) (= b true))
    ($Perm.min
      (ite
        (and (img@243@01 this b) (Seq_contains xs@235@01 (inv@242@01 this b)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@244@01 this b)))
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
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=
    (-
      (ite
        (and (img@240@01 this b) (Seq_contains xs@235@01 (inv@239@01 this b)))
        $Perm.Write
        $Perm.No)
      (pTaken@244@01 this b))
    $Perm.No)
  
  :qid |quant-u-16777|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (= (pTaken@244@01 this b) $Perm.No)
  
  :qid |quant-u-16778|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (= this this@234@01) (= b true))
    (= (- $Perm.Write (pTaken@244@01 this b)) $Perm.No))
  
  :qid |quant-u-16779|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=
    (-
      (ite
        (and (img@243@01 this b) (Seq_contains xs@235@01 (inv@242@01 this b)))
        $Perm.Write
        $Perm.No)
      (pTaken@245@01 this b))
    $Perm.No)
  
  :qid |quant-u-16780|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (= (pTaken@245@01 this b) $Perm.No)
  
  :qid |quant-u-16781|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (=>
    (and (= this this@234@01) (= b true))
    (=
      (- (- $Perm.Write (pTaken@244@01 this b)) (pTaken@245@01 this b))
      $Perm.No))
  
  :qid |quant-u-16782|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@246@01 $PSF<valid>)
(declare-const s@247@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@240@01 this@234@01 true)
    (Seq_contains xs@235@01 (inv@239@01 this@234@01 true)))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@234@01)
          ($SortWrappers.BoolTo$Snap true))
        $Snap.unit))
    (=
      ($PSF.lookup_valid (as sm@246@01  $PSF<valid>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@234@01)
        ($SortWrappers.BoolTo$Snap true)))
      ($PSF.lookup_valid ($SortWrappers.$SnapTo$PSF<valid> ($Snap.first ($Snap.second $t@237@01))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@234@01)
        ($SortWrappers.BoolTo$Snap true)))))))
(assert (=>
  (and
    (img@243@01 this@234@01 true)
    (Seq_contains xs@235@01 (inv@242@01 this@234@01 true)))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap this@234@01)
          ($SortWrappers.BoolTo$Snap true))
        $Snap.unit))
    (=
      ($PSF.lookup_valid (as sm@246@01  $PSF<valid>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@234@01)
        ($SortWrappers.BoolTo$Snap true)))
      ($PSF.lookup_valid ($SortWrappers.$SnapTo$PSF<valid> ($Snap.second ($Snap.second $t@237@01))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap this@234@01)
        ($SortWrappers.BoolTo$Snap true)))))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 42 | True | live]
; [else-branch: 42 | False | dead]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 42 | True]
(assert (not (= this@234@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (valid%trigger ($PSF.lookup_valid (as sm@246@01  $PSF<valid>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap this@234@01)
  ($SortWrappers.BoolTo$Snap true))) this@234@01 true))
; [exec]
; this.f := 1
; [exec]
; this.g := 1
(set-option :timeout 0)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((this $Ref) (b Bool)) (!
  (and
    (= x@241@01 x@238@01)
    (=
      (and (img@243@01 this b) (Seq_contains xs@235@01 (inv@242@01 this b)))
      (and (img@240@01 this b) (Seq_contains xs@235@01 (inv@239@01 this b)))))
  
  :qid |quant-u-16783|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 3
(pop) ; 2
(pop) ; 1
