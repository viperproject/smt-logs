(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 01:55:09
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
(declare-sort $PSF<pred1> 0)
(declare-sort $PSF<pred2> 0)
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
(declare-fun $SortWrappers.$PSF<pred1>To$Snap ($PSF<pred1>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<pred1> ($Snap) $PSF<pred1>)
(assert (forall ((x $PSF<pred1>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<pred1>($SortWrappers.$PSF<pred1>To$Snap x)))
    :pattern (($SortWrappers.$PSF<pred1>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<pred1>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<pred1>To$Snap($SortWrappers.$SnapTo$PSF<pred1> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<pred1> x))
    :qid |$Snap.$PSF<pred1>To$SnapTo$PSF<pred1>|
    )))
(declare-fun $SortWrappers.$PSF<pred2>To$Snap ($PSF<pred2>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<pred2> ($Snap) $PSF<pred2>)
(assert (forall ((x $PSF<pred2>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<pred2>($SortWrappers.$PSF<pred2>To$Snap x)))
    :pattern (($SortWrappers.$PSF<pred2>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<pred2>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<pred2>To$Snap($SortWrappers.$SnapTo$PSF<pred2> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<pred2> x))
    :qid |$Snap.$PSF<pred2>To$SnapTo$PSF<pred2>|
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
; /predicate_snap_functions_declarations.smt2 [pred1: Int]
(declare-fun $PSF.domain_pred1 ($PSF<pred1>) Set<$Snap>)
(declare-fun $PSF.lookup_pred1 ($PSF<pred1> $Snap) Int)
(declare-fun $PSF.after_pred1 ($PSF<pred1> $PSF<pred1>) Bool)
(declare-fun $PSF.loc_pred1 (Int $Snap) Bool)
(declare-fun $PSF.perm_pred1 ($PPM $Snap) $Perm)
(declare-const $psfTOP_pred1 $PSF<pred1>)
; /predicate_snap_functions_declarations.smt2 [pred2: Int]
(declare-fun $PSF.domain_pred2 ($PSF<pred2>) Set<$Snap>)
(declare-fun $PSF.lookup_pred2 ($PSF<pred2> $Snap) Int)
(declare-fun $PSF.after_pred2 ($PSF<pred2> $PSF<pred2>) Bool)
(declare-fun $PSF.loc_pred2 (Int $Snap) Bool)
(declare-fun $PSF.perm_pred2 ($PPM $Snap) $Perm)
(declare-const $psfTOP_pred2 $PSF<pred2>)
; Declaring symbols related to program functions (from program analysis)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun pred1%trigger ($Snap $Ref) Bool)
(declare-fun pred2%trigger ($Snap $Ref Int) Bool)
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
; /predicate_snap_functions_axioms.smt2 [pred1: Int]
(assert (forall ((vs $PSF<pred1>) (ws $PSF<pred1>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_pred1 vs) ($PSF.domain_pred1 ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_pred1 vs))
            (= ($PSF.lookup_pred1 vs x) ($PSF.lookup_pred1 ws x)))
          :pattern (($PSF.lookup_pred1 vs x) ($PSF.lookup_pred1 ws x))
          :qid |qp.$PSF<pred1>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<pred1>To$Snap vs)
              ($SortWrappers.$PSF<pred1>To$Snap ws)
              )
    :qid |qp.$PSF<pred1>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_pred1 pm s))
    :pattern (($PSF.perm_pred1 pm s)))))
(assert (forall ((s $Snap) (f Int)) (!
    (= ($PSF.loc_pred1 f s) true)
    :pattern (($PSF.loc_pred1 f s)))))
; /predicate_snap_functions_axioms.smt2 [pred2: Int]
(assert (forall ((vs $PSF<pred2>) (ws $PSF<pred2>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_pred2 vs) ($PSF.domain_pred2 ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_pred2 vs))
            (= ($PSF.lookup_pred2 vs x) ($PSF.lookup_pred2 ws x)))
          :pattern (($PSF.lookup_pred2 vs x) ($PSF.lookup_pred2 ws x))
          :qid |qp.$PSF<pred2>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<pred2>To$Snap vs)
              ($SortWrappers.$PSF<pred2>To$Snap ws)
              )
    :qid |qp.$PSF<pred2>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_pred2 pm s))
    :pattern (($PSF.perm_pred2 pm s)))))
(assert (forall ((s $Snap) (f Int)) (!
    (= ($PSF.loc_pred2 f s) true)
    :pattern (($PSF.loc_pred2 f s)))))
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
; ---------- test01_1 ----------
(declare-const xs@0@01 Seq<$Ref>)
(declare-const y@1@01 $Ref)
(declare-const xs@2@01 Seq<$Ref>)
(declare-const y@3@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@4@01 $Snap)
(assert (= $t@4@01 ($Snap.combine ($Snap.first $t@4@01) ($Snap.second $t@4@01))))
(declare-const sm@5@01 $PSF<pred1>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_pred1 (as sm@5@01  $PSF<pred1>) ($SortWrappers.$RefTo$Snap y@3@01))
  ($SortWrappers.$SnapToInt ($Snap.first $t@4@01))))
(declare-const x@6@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@2@01 x@6@01))
(pop) ; 2
(declare-fun inv@7@01 ($Ref) $Ref)
(declare-fun img@8@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@6@01 $Ref) (x2@6@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@2@01 x1@6@01)
      (Seq_contains xs@2@01 x2@6@01)
      (= x1@6@01 x2@6@01))
    (= x1@6@01 x2@6@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@6@01 $Ref)) (!
  (=>
    (Seq_contains xs@2@01 x@6@01)
    (and (= (inv@7@01 x@6@01) x@6@01) (img@8@01 x@6@01)))
  :pattern ((Seq_contains xs@2@01 x@6@01))
  :pattern ((Seq_contains_trigger xs@2@01 x@6@01))
  :pattern ((Seq_contains_trigger xs@2@01 x@6@01))
  :pattern ((inv@7@01 x@6@01))
  :pattern ((img@8@01 x@6@01))
  :qid |quant-u-16009|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@8@01 r) (Seq_contains xs@2@01 (inv@7@01 r))) (= (inv@7@01 r) r))
  :pattern ((inv@7@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@6@01 $Ref)) (!
  (=> (Seq_contains xs@2@01 x@6@01) (not (= x@6@01 $Ref.null)))
  :pattern ((Seq_contains xs@2@01 x@6@01))
  :pattern ((Seq_contains_trigger xs@2@01 x@6@01))
  :pattern ((Seq_contains_trigger xs@2@01 x@6@01))
  :pattern ((inv@7@01 x@6@01))
  :pattern ((img@8@01 x@6@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@9@01 $Snap)
(assert (= $t@9@01 ($Snap.combine ($Snap.first $t@9@01) ($Snap.second $t@9@01))))
(declare-const x@10@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@2@01 x@10@01))
(pop) ; 3
(declare-fun inv@11@01 ($Ref) $Ref)
(declare-fun img@12@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@10@01 $Ref) (x2@10@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@2@01 x1@10@01) (Seq_contains xs@2@01 x2@10@01))
    (= x1@10@01 x2@10@01))
  
  :qid |pred1-rcvrInj|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- test01_2 ----------
(declare-const xs@13@01 Seq<$Ref>)
(declare-const y@14@01 $Ref)
(declare-const xs@15@01 Seq<$Ref>)
(declare-const y@16@01 $Ref)
(push) ; 1
(declare-const $t@17@01 $Snap)
(assert (= $t@17@01 ($Snap.combine ($Snap.first $t@17@01) ($Snap.second $t@17@01))))
(declare-const sm@18@01 $PSF<pred1>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_pred1 (as sm@18@01  $PSF<pred1>) ($SortWrappers.$RefTo$Snap y@16@01))
  ($SortWrappers.$SnapToInt ($Snap.first $t@17@01))))
(declare-const x@19@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@15@01 x@19@01))
(pop) ; 2
(declare-fun inv@20@01 ($Ref) $Ref)
(declare-fun img@21@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@19@01 $Ref) (x2@19@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@15@01 x1@19@01)
      (Seq_contains xs@15@01 x2@19@01)
      (= x1@19@01 x2@19@01))
    (= x1@19@01 x2@19@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@19@01 $Ref)) (!
  (=>
    (Seq_contains xs@15@01 x@19@01)
    (and (= (inv@20@01 x@19@01) x@19@01) (img@21@01 x@19@01)))
  :pattern ((Seq_contains xs@15@01 x@19@01))
  :pattern ((Seq_contains_trigger xs@15@01 x@19@01))
  :pattern ((Seq_contains_trigger xs@15@01 x@19@01))
  :pattern ((inv@20@01 x@19@01))
  :pattern ((img@21@01 x@19@01))
  :qid |quant-u-16012|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@21@01 r) (Seq_contains xs@15@01 (inv@20@01 r)))
    (= (inv@20@01 r) r))
  :pattern ((inv@20@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@19@01 $Ref)) (!
  (=> (Seq_contains xs@15@01 x@19@01) (not (= x@19@01 $Ref.null)))
  :pattern ((Seq_contains xs@15@01 x@19@01))
  :pattern ((Seq_contains_trigger xs@15@01 x@19@01))
  :pattern ((Seq_contains_trigger xs@15@01 x@19@01))
  :pattern ((inv@20@01 x@19@01))
  :pattern ((img@21@01 x@19@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@22@01 $Snap)
(assert (= $t@22@01 ($Snap.combine ($Snap.first $t@22@01) ($Snap.second $t@22@01))))
(declare-const x@23@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@15@01 x@23@01))
(pop) ; 3
(declare-fun inv@24@01 ($Ref) $Ref)
(declare-fun img@25@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@23@01 $Ref) (x2@23@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@15@01 x1@23@01)
      (Seq_contains xs@15@01 x2@23@01)
      (= x1@23@01 x2@23@01))
    (= x1@23@01 x2@23@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@23@01 $Ref)) (!
  (=>
    (Seq_contains xs@15@01 x@23@01)
    (and (= (inv@24@01 x@23@01) x@23@01) (img@25@01 x@23@01)))
  :pattern ((Seq_contains xs@15@01 x@23@01))
  :pattern ((Seq_contains_trigger xs@15@01 x@23@01))
  :pattern ((Seq_contains_trigger xs@15@01 x@23@01))
  :pattern ((inv@24@01 x@23@01))
  :pattern ((img@25@01 x@23@01))
  :qid |quant-u-16014|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@25@01 r) (Seq_contains xs@15@01 (inv@24@01 r)))
    (= (inv@24@01 r) r))
  :pattern ((inv@24@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@23@01 $Ref)) (!
  (=> (Seq_contains xs@15@01 x@23@01) (not (= x@23@01 $Ref.null)))
  :pattern ((Seq_contains xs@15@01 x@23@01))
  :pattern ((Seq_contains_trigger xs@15@01 x@23@01))
  :pattern ((Seq_contains_trigger xs@15@01 x@23@01))
  :pattern ((inv@24@01 x@23@01))
  :pattern ((img@25@01 x@23@01))
  :qid |f-permImpliesNonNull|)))
(declare-const x@26@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@15@01 x@26@01))
(pop) ; 3
(declare-fun inv@27@01 ($Ref) $Ref)
(declare-fun img@28@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@26@01 $Ref) (x2@26@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@15@01 x1@26@01) (Seq_contains xs@15@01 x2@26@01))
    (= x1@26@01 x2@26@01))
  
  :qid |pred1-rcvrInj|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- test02 ----------
(declare-const xs@29@01 Seq<$Ref>)
(declare-const y@30@01 $Ref)
(declare-const xs@31@01 Seq<$Ref>)
(declare-const y@32@01 $Ref)
(push) ; 1
(declare-const $t@33@01 $Snap)
(assert (= $t@33@01 ($Snap.combine ($Snap.first $t@33@01) ($Snap.second $t@33@01))))
(declare-const sm@34@01 $PSF<pred2>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_pred2 (as sm@34@01  $PSF<pred2>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap y@32@01)
    ($SortWrappers.IntTo$Snap 1)))
  ($SortWrappers.$SnapToInt ($Snap.first $t@33@01))))
(assert (<= $Perm.No (ite (= 1 1) $Perm.Write $Perm.No)))
(declare-const x@35@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@31@01 x@35@01))
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
      (Seq_contains xs@31@01 x1@35@01)
      (Seq_contains xs@31@01 x2@35@01)
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
    (Seq_contains xs@31@01 x@35@01)
    (and (= (inv@36@01 x@35@01) x@35@01) (img@37@01 x@35@01)))
  :pattern ((Seq_contains xs@31@01 x@35@01))
  :pattern ((Seq_contains_trigger xs@31@01 x@35@01))
  :pattern ((Seq_contains_trigger xs@31@01 x@35@01))
  :pattern ((inv@36@01 x@35@01))
  :pattern ((img@37@01 x@35@01))
  :qid |quant-u-16017|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@37@01 r) (Seq_contains xs@31@01 (inv@36@01 r)))
    (= (inv@36@01 r) r))
  :pattern ((inv@36@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@35@01 $Ref)) (!
  (=> (Seq_contains xs@31@01 x@35@01) (not (= x@35@01 $Ref.null)))
  :pattern ((Seq_contains xs@31@01 x@35@01))
  :pattern ((Seq_contains_trigger xs@31@01 x@35@01))
  :pattern ((Seq_contains_trigger xs@31@01 x@35@01))
  :pattern ((inv@36@01 x@35@01))
  :pattern ((img@37@01 x@35@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@38@01 $Snap)
(assert (= $t@38@01 ($Snap.combine ($Snap.first $t@38@01) ($Snap.second $t@38@01))))
(declare-const x@39@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@31@01 x@39@01))
(pop) ; 3
(declare-fun inv@40@01 ($Ref Int) $Ref)
(declare-fun img@41@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@39@01 $Ref) (x2@39@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@31@01 x1@39@01) (Seq_contains xs@31@01 x2@39@01))
    (= x1@39@01 x2@39@01))
  
  :qid |pred2-rcvrInj|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- test03_1 ----------
(declare-const xs@42@01 Seq<$Ref>)
(declare-const y@43@01 $Ref)
(declare-const xs@44@01 Seq<$Ref>)
(declare-const y@45@01 $Ref)
(push) ; 1
(declare-const x@46@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@44@01 x@46@01))
(pop) ; 2
(declare-const $t@47@01 $FVF<f>)
(declare-fun inv@48@01 ($Ref) $Ref)
(declare-fun img@49@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@46@01 $Ref) (x2@46@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@44@01 x1@46@01)
      (Seq_contains xs@44@01 x2@46@01)
      (= x1@46@01 x2@46@01))
    (= x1@46@01 x2@46@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@46@01 $Ref)) (!
  (=>
    (Seq_contains xs@44@01 x@46@01)
    (and (= (inv@48@01 x@46@01) x@46@01) (img@49@01 x@46@01)))
  :pattern ((Seq_contains xs@44@01 x@46@01))
  :pattern ((Seq_contains_trigger xs@44@01 x@46@01))
  :pattern ((Seq_contains_trigger xs@44@01 x@46@01))
  :pattern ((inv@48@01 x@46@01))
  :pattern ((img@49@01 x@46@01))
  :qid |quant-u-16020|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@49@01 r) (Seq_contains xs@44@01 (inv@48@01 r)))
    (= (inv@48@01 r) r))
  :pattern ((inv@48@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@46@01 $Ref)) (!
  (=> (Seq_contains xs@44@01 x@46@01) (not (= x@46@01 $Ref.null)))
  :pattern ((Seq_contains xs@44@01 x@46@01))
  :pattern ((Seq_contains_trigger xs@44@01 x@46@01))
  :pattern ((Seq_contains_trigger xs@44@01 x@46@01))
  :pattern ((inv@48@01 x@46@01))
  :pattern ((img@49@01 x@46@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; exhale (forall x: Ref ::(x in xs) ==> acc(pred2(x, 1), write)) &&
;   (forall x: Ref ::(x in xs) ==> acc(x.f, write))
(declare-const x@50@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@44@01 x@50@01))
(pop) ; 3
(declare-fun inv@51@01 ($Ref Int) $Ref)
(declare-fun img@52@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@50@01 $Ref) (x2@50@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@44@01 x1@50@01)
      (Seq_contains xs@44@01 x2@50@01)
      (= x1@50@01 x2@50@01))
    (= x1@50@01 x2@50@01))
  
  :qid |pred2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@50@01 $Ref)) (!
  (=>
    (Seq_contains xs@44@01 x@50@01)
    (and (= (inv@51@01 x@50@01 1) x@50@01) (img@52@01 x@50@01 1)))
  :pattern ((Seq_contains xs@44@01 x@50@01))
  :pattern ((Seq_contains_trigger xs@44@01 x@50@01))
  :pattern ((inv@51@01 x@50@01 1))
  :pattern ((img@52@01 x@50@01 1))
  :qid |pred2-invOfFct|)))
(assert (forall ((a $Ref) (i Int)) (!
  (=>
    (and (img@52@01 a i) (Seq_contains xs@44@01 (inv@51@01 a i)))
    (and (= (inv@51@01 a i) a) (= 1 i)))
  :pattern ((inv@51@01 a i))
  :qid |pred2-fctOfInv|)))
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((a $Ref) (i Int)) (!
  (=>
    (and
      (Seq_contains xs@44@01 (inv@51@01 a i))
      (img@52@01 a i)
      (and (= a (inv@51@01 a i)) (= i 1)))
    false)
  
  :qid |quant-u-16022|))))
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
(declare-const sm@53@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@49@01 r) (Seq_contains xs@44@01 (inv@48@01 r)))
    (= ($FVF.lookup_f (as sm@53@01  $FVF<f>) r) ($FVF.lookup_f $t@47@01 r)))
  :pattern (($FVF.lookup_f (as sm@53@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@47@01 r))
  :qid |qp.fvfValDef0|)))
(declare-const pm@54@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@54@01  $FPM) r)
    (ite
      (and (img@49@01 r) (Seq_contains xs@44@01 (inv@48@01 r)))
      $Perm.Write
      $Perm.No))
  :pattern (($FVF.perm_f (as pm@54@01  $FPM) r))
  :qid |qp.resPrmSumDef1|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@54@01  $FPM) r) $Perm.Write)
  :pattern ((inv@48@01 r))
  :qid |qp-fld-prm-bnd|)))
(declare-const x@55@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@44@01 x@55@01))
(pop) ; 3
(declare-fun inv@56@01 ($Ref Int) $Ref)
(declare-fun img@57@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@55@01 $Ref) (x2@55@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@44@01 x1@55@01)
      (Seq_contains xs@44@01 x2@55@01)
      (= x1@55@01 x2@55@01))
    (= x1@55@01 x2@55@01))
  
  :qid |pred2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@55@01 $Ref)) (!
  (=>
    (Seq_contains xs@44@01 x@55@01)
    (and (= (inv@56@01 x@55@01 1) x@55@01) (img@57@01 x@55@01 1)))
  :pattern ((Seq_contains xs@44@01 x@55@01))
  :pattern ((Seq_contains_trigger xs@44@01 x@55@01))
  :pattern ((inv@56@01 x@55@01 1))
  :pattern ((img@57@01 x@55@01 1))
  :qid |pred2-invOfFct|)))
(assert (forall ((a $Ref) (i Int)) (!
  (=>
    (and (img@57@01 a i) (Seq_contains xs@44@01 (inv@56@01 a i)))
    (and (= (inv@56@01 a i) a) (= 1 i)))
  :pattern ((inv@56@01 a i))
  :qid |pred2-fctOfInv|)))
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((a $Ref) (i Int)) (!
  (=>
    (and
      (Seq_contains xs@44@01 (inv@56@01 a i))
      (img@57@01 a i)
      (and (= a (inv@56@01 a i)) (= i 1)))
    false)
  
  :qid |quant-u-16024|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- test03_2 ----------
(declare-const xs@58@01 Seq<$Ref>)
(declare-const y@59@01 $Ref)
(declare-const xs@60@01 Seq<$Ref>)
(declare-const y@61@01 $Ref)
(push) ; 1
(declare-const x@62@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@60@01 x@62@01))
(pop) ; 2
(declare-const $t@63@01 $FVF<f>)
(declare-fun inv@64@01 ($Ref) $Ref)
(declare-fun img@65@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@62@01 $Ref) (x2@62@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@60@01 x1@62@01)
      (Seq_contains xs@60@01 x2@62@01)
      (= x1@62@01 x2@62@01))
    (= x1@62@01 x2@62@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@62@01 $Ref)) (!
  (=>
    (Seq_contains xs@60@01 x@62@01)
    (and (= (inv@64@01 x@62@01) x@62@01) (img@65@01 x@62@01)))
  :pattern ((Seq_contains xs@60@01 x@62@01))
  :pattern ((Seq_contains_trigger xs@60@01 x@62@01))
  :pattern ((Seq_contains_trigger xs@60@01 x@62@01))
  :pattern ((inv@64@01 x@62@01))
  :pattern ((img@65@01 x@62@01))
  :qid |quant-u-16026|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@65@01 r) (Seq_contains xs@60@01 (inv@64@01 r)))
    (= (inv@64@01 r) r))
  :pattern ((inv@64@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@62@01 $Ref)) (!
  (=> (Seq_contains xs@60@01 x@62@01) (not (= x@62@01 $Ref.null)))
  :pattern ((Seq_contains xs@60@01 x@62@01))
  :pattern ((Seq_contains_trigger xs@60@01 x@62@01))
  :pattern ((Seq_contains_trigger xs@60@01 x@62@01))
  :pattern ((inv@64@01 x@62@01))
  :pattern ((img@65@01 x@62@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; exhale (forall x: Ref ::(x in xs) ==> acc(x.f, write)) &&
;   (forall x: Ref ::(x in xs) ==> acc(pred2(x, 1), write))
(declare-const x@66@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@60@01 x@66@01))
(pop) ; 3
(declare-fun inv@67@01 ($Ref) $Ref)
(declare-fun img@68@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@66@01 $Ref) (x2@66@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@60@01 x1@66@01)
      (Seq_contains xs@60@01 x2@66@01)
      (= x1@66@01 x2@66@01))
    (= x1@66@01 x2@66@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@66@01 $Ref)) (!
  (=>
    (Seq_contains xs@60@01 x@66@01)
    (and (= (inv@67@01 x@66@01) x@66@01) (img@68@01 x@66@01)))
  :pattern ((Seq_contains xs@60@01 x@66@01))
  :pattern ((Seq_contains_trigger xs@60@01 x@66@01))
  :pattern ((inv@67@01 x@66@01))
  :pattern ((img@68@01 x@66@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@68@01 r) (Seq_contains xs@60@01 (inv@67@01 r)))
    (= (inv@67@01 r) r))
  :pattern ((inv@67@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@69@01 ((r $Ref)) $Perm
  (ite
    (and (Seq_contains xs@60@01 (inv@67@01 r)) (img@68@01 r) (= r (inv@67@01 r)))
    ($Perm.min
      (ite
        (and (img@65@01 r) (Seq_contains xs@60@01 (inv@64@01 r)))
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
        (and (img@65@01 r) (Seq_contains xs@60@01 (inv@64@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@69@01 r))
    $Perm.No)
  
  :qid |quant-u-16029|))))
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
    (and (Seq_contains xs@60@01 (inv@67@01 r)) (img@68@01 r) (= r (inv@67@01 r)))
    (= (- $Perm.Write (pTaken@69@01 r)) $Perm.No))
  
  :qid |quant-u-16030|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const x@70@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@60@01 x@70@01))
(pop) ; 3
(declare-fun inv@71@01 ($Ref Int) $Ref)
(declare-fun img@72@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@70@01 $Ref) (x2@70@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@60@01 x1@70@01)
      (Seq_contains xs@60@01 x2@70@01)
      (= x1@70@01 x2@70@01))
    (= x1@70@01 x2@70@01))
  
  :qid |pred2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@70@01 $Ref)) (!
  (=>
    (Seq_contains xs@60@01 x@70@01)
    (and (= (inv@71@01 x@70@01 1) x@70@01) (img@72@01 x@70@01 1)))
  :pattern ((Seq_contains xs@60@01 x@70@01))
  :pattern ((Seq_contains_trigger xs@60@01 x@70@01))
  :pattern ((inv@71@01 x@70@01 1))
  :pattern ((img@72@01 x@70@01 1))
  :qid |pred2-invOfFct|)))
(assert (forall ((a $Ref) (i Int)) (!
  (=>
    (and (img@72@01 a i) (Seq_contains xs@60@01 (inv@71@01 a i)))
    (and (= (inv@71@01 a i) a) (= 1 i)))
  :pattern ((inv@71@01 a i))
  :qid |pred2-fctOfInv|)))
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((a $Ref) (i Int)) (!
  (=>
    (and
      (Seq_contains xs@60@01 (inv@71@01 a i))
      (img@72@01 a i)
      (and (= a (inv@71@01 a i)) (= i 1)))
    false)
  
  :qid |quant-u-16032|))))
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
(declare-const x@73@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@60@01 x@73@01))
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
      (Seq_contains xs@60@01 x1@73@01)
      (Seq_contains xs@60@01 x2@73@01)
      (= x1@73@01 x2@73@01))
    (= x1@73@01 x2@73@01))
  
  :qid |pred2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@73@01 $Ref)) (!
  (=>
    (Seq_contains xs@60@01 x@73@01)
    (and (= (inv@74@01 x@73@01 1) x@73@01) (img@75@01 x@73@01 1)))
  :pattern ((Seq_contains xs@60@01 x@73@01))
  :pattern ((Seq_contains_trigger xs@60@01 x@73@01))
  :pattern ((inv@74@01 x@73@01 1))
  :pattern ((img@75@01 x@73@01 1))
  :qid |pred2-invOfFct|)))
(assert (forall ((a $Ref) (i Int)) (!
  (=>
    (and (img@75@01 a i) (Seq_contains xs@60@01 (inv@74@01 a i)))
    (and (= (inv@74@01 a i) a) (= 1 i)))
  :pattern ((inv@74@01 a i))
  :qid |pred2-fctOfInv|)))
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((a $Ref) (i Int)) (!
  (=>
    (and
      (Seq_contains xs@60@01 (inv@74@01 a i))
      (img@75@01 a i)
      (and (= a (inv@74@01 a i)) (= i 1)))
    false)
  
  :qid |quant-u-16034|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1