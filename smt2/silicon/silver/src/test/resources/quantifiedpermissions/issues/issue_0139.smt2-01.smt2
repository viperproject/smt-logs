(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-04 00:27:08
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
(declare-sort Seq<Int> 0)
(declare-sort Set<Int> 0)
(declare-sort Set<$Ref> 0)
(declare-sort Set<$Snap> 0)
(declare-sort $FVF<f> 0)
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
(declare-fun Seq_length (Seq<Int>) Int)
(declare-const Seq_empty Seq<Int>)
(declare-fun Seq_singleton (Int) Seq<Int>)
(declare-fun Seq_append (Seq<Int> Seq<Int>) Seq<Int>)
(declare-fun Seq_index (Seq<Int> Int) Int)
(declare-fun Seq_update (Seq<Int> Int Int) Seq<Int>)
(declare-fun Seq_take (Seq<Int> Int) Seq<Int>)
(declare-fun Seq_drop (Seq<Int> Int) Seq<Int>)
(declare-fun Seq_contains (Seq<Int> Int) Bool)
(declare-fun Seq_contains_trigger (Seq<Int> Int) Bool)
(declare-fun Seq_skolem (Seq<Int> Int) Int)
(declare-fun Seq_equal (Seq<Int> Seq<Int>) Bool)
(declare-fun Seq_skolem_diff (Seq<Int> Seq<Int>) Int)
(declare-fun Seq_range (Int Int) Seq<Int>)
; /field_value_functions_declarations.smt2 [f: Int]
(declare-fun $FVF.domain_f ($FVF<f>) Set<$Ref>)
(declare-fun $FVF.lookup_f ($FVF<f> $Ref) Int)
(declare-fun $FVF.after_f ($FVF<f> $FVF<f>) Bool)
(declare-fun $FVF.loc_f (Int $Ref) Bool)
(declare-fun $FVF.perm_f ($FPM $Ref) $Perm)
(declare-const $fvfTOP_f $FVF<f>)
; Declaring symbols related to program functions (from program analysis)
(declare-fun fun07 ($Snap Seq<$Ref>) Int)
(declare-fun fun07%limited ($Snap Seq<$Ref>) Int)
(declare-fun fun07%stateless (Seq<$Ref>) Bool)
(declare-fun fun07%precondition ($Snap Seq<$Ref>) Bool)
(declare-fun fun02 ($Snap Seq<$Ref>) Int)
(declare-fun fun02%limited ($Snap Seq<$Ref>) Int)
(declare-fun fun02%stateless (Seq<$Ref>) Bool)
(declare-fun fun02%precondition ($Snap Seq<$Ref>) Bool)
(declare-fun fun01 ($Snap Seq<$Ref>) Int)
(declare-fun fun01%limited ($Snap Seq<$Ref>) Int)
(declare-fun fun01%stateless (Seq<$Ref>) Bool)
(declare-fun fun01%precondition ($Snap Seq<$Ref>) Bool)
(declare-fun fun05 ($Snap $Ref Seq<$Ref>) Int)
(declare-fun fun05%limited ($Snap $Ref Seq<$Ref>) Int)
(declare-fun fun05%stateless ($Ref Seq<$Ref>) Bool)
(declare-fun fun05%precondition ($Snap $Ref Seq<$Ref>) Bool)
(declare-fun fun03 ($Snap Seq<$Ref>) Int)
(declare-fun fun03%limited ($Snap Seq<$Ref>) Int)
(declare-fun fun03%stateless (Seq<$Ref>) Bool)
(declare-fun fun03%precondition ($Snap Seq<$Ref>) Bool)
(declare-fun fun04 ($Snap Seq<$Ref> Bool) Int)
(declare-fun fun04%limited ($Snap Seq<$Ref> Bool) Int)
(declare-fun fun04%stateless (Seq<$Ref> Bool) Bool)
(declare-fun fun04%precondition ($Snap Seq<$Ref> Bool) Bool)
(declare-fun fun06 ($Snap $Ref Int Seq<$Ref>) Int)
(declare-fun fun06%limited ($Snap $Ref Int Seq<$Ref>) Int)
(declare-fun fun06%stateless ($Ref Int Seq<$Ref>) Bool)
(declare-fun fun06%precondition ($Snap $Ref Int Seq<$Ref>) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
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
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
(declare-fun inv@21@00 ($Snap Seq<$Ref> $Ref) Int)
(declare-fun img@22@00 ($Snap Seq<$Ref> $Ref) Bool)
(declare-fun inv@26@00 ($Snap Seq<$Ref> $Ref) Int)
(declare-fun img@27@00 ($Snap Seq<$Ref> $Ref) Bool)
(declare-fun inv@31@00 ($Snap Seq<$Ref> $Ref) Int)
(declare-fun img@32@00 ($Snap Seq<$Ref> $Ref) Bool)
(declare-fun inv@36@00 ($Snap Seq<$Ref> $Ref) Int)
(declare-fun img@37@00 ($Snap Seq<$Ref> $Ref) Bool)
(declare-fun inv@41@00 ($Snap $Ref Seq<$Ref> $Ref) Int)
(declare-fun img@42@00 ($Snap $Ref Seq<$Ref> $Ref) Bool)
(declare-fun inv@46@00 ($Snap Seq<$Ref> $Ref) Int)
(declare-fun img@47@00 ($Snap Seq<$Ref> $Ref) Bool)
(declare-fun inv@51@00 ($Snap Seq<$Ref> $Ref) Int)
(declare-fun img@52@00 ($Snap Seq<$Ref> $Ref) Bool)
(declare-fun sm@53@00 ($Snap Seq<$Ref>) $FVF<f>)
(declare-fun inv@60@00 ($Snap Seq<$Ref> Bool $Ref) Int)
(declare-fun img@61@00 ($Snap Seq<$Ref> Bool $Ref) Bool)
(declare-fun inv@63@00 ($Snap Seq<$Ref> Bool $Ref) Int)
(declare-fun img@64@00 ($Snap Seq<$Ref> Bool $Ref) Bool)
(declare-fun inv@69@00 ($Snap $Ref Int Seq<$Ref> $Ref) Int)
(declare-fun img@70@00 ($Snap $Ref Int Seq<$Ref> $Ref) Bool)
(declare-fun sm@65@00 ($Snap $Ref Int Seq<$Ref>) $FVF<f>)
(assert (forall ((s@$ $Snap) (xs@0@00 Seq<$Ref>)) (!
  (= (fun07%limited s@$ xs@0@00) (fun07 s@$ xs@0@00))
  :pattern ((fun07 s@$ xs@0@00))
  :qid |quant-u-12364|)))
(assert (forall ((s@$ $Snap) (xs@0@00 Seq<$Ref>)) (!
  (fun07%stateless xs@0@00)
  :pattern ((fun07%limited s@$ xs@0@00))
  :qid |quant-u-12365|)))
(assert (forall ((s@$ $Snap) (xs@2@00 Seq<$Ref>)) (!
  (= (fun02%limited s@$ xs@2@00) (fun02 s@$ xs@2@00))
  :pattern ((fun02 s@$ xs@2@00))
  :qid |quant-u-12366|)))
(assert (forall ((s@$ $Snap) (xs@2@00 Seq<$Ref>)) (!
  (fun02%stateless xs@2@00)
  :pattern ((fun02%limited s@$ xs@2@00))
  :qid |quant-u-12367|)))
(assert (forall ((s@$ $Snap) (xs@4@00 Seq<$Ref>)) (!
  (= (fun01%limited s@$ xs@4@00) (fun01 s@$ xs@4@00))
  :pattern ((fun01 s@$ xs@4@00))
  :qid |quant-u-12368|)))
(assert (forall ((s@$ $Snap) (xs@4@00 Seq<$Ref>)) (!
  (fun01%stateless xs@4@00)
  :pattern ((fun01%limited s@$ xs@4@00))
  :qid |quant-u-12369|)))
(assert (forall ((s@$ $Snap) (x@6@00 $Ref) (xs@7@00 Seq<$Ref>)) (!
  (= (fun05%limited s@$ x@6@00 xs@7@00) (fun05 s@$ x@6@00 xs@7@00))
  :pattern ((fun05 s@$ x@6@00 xs@7@00))
  :qid |quant-u-12370|)))
(assert (forall ((s@$ $Snap) (x@6@00 $Ref) (xs@7@00 Seq<$Ref>)) (!
  (fun05%stateless x@6@00 xs@7@00)
  :pattern ((fun05%limited s@$ x@6@00 xs@7@00))
  :qid |quant-u-12371|)))
(assert (forall ((s@$ $Snap) (xs@9@00 Seq<$Ref>)) (!
  (= (fun03%limited s@$ xs@9@00) (fun03 s@$ xs@9@00))
  :pattern ((fun03 s@$ xs@9@00))
  :qid |quant-u-12372|)))
(assert (forall ((s@$ $Snap) (xs@9@00 Seq<$Ref>)) (!
  (fun03%stateless xs@9@00)
  :pattern ((fun03%limited s@$ xs@9@00))
  :qid |quant-u-12373|)))
(assert (forall ((s@$ $Snap) (xs@9@00 Seq<$Ref>)) (!
  (and
    (forall ((k@45@00 Int)) (!
      (=>
        (and (<= 0 k@45@00) (< k@45@00 3))
        (and
          (= (inv@46@00 s@$ xs@9@00 (Seq_index xs@9@00 k@45@00)) k@45@00)
          (img@47@00 s@$ xs@9@00 (Seq_index xs@9@00 k@45@00))))
      :pattern ((Seq_index xs@9@00 k@45@00))
      :qid |quant-u-12390|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@47@00 s@$ xs@9@00 r)
          (and (<= 0 (inv@46@00 s@$ xs@9@00 r)) (< (inv@46@00 s@$ xs@9@00 r) 3)))
        (= (Seq_index xs@9@00 (inv@46@00 s@$ xs@9@00 r)) r))
      :pattern ((inv@46@00 s@$ xs@9@00 r))
      :qid |f-fctOfInv|))
    (forall ((k@50@00 Int)) (!
      (=>
        (and (<= 6 k@50@00) (< k@50@00 9))
        (and
          (= (inv@51@00 s@$ xs@9@00 (Seq_index xs@9@00 k@50@00)) k@50@00)
          (img@52@00 s@$ xs@9@00 (Seq_index xs@9@00 k@50@00))))
      :pattern ((Seq_index xs@9@00 k@50@00))
      :qid |quant-u-12392|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@52@00 s@$ xs@9@00 r)
          (and (<= 6 (inv@51@00 s@$ xs@9@00 r)) (< (inv@51@00 s@$ xs@9@00 r) 9)))
        (= (Seq_index xs@9@00 (inv@51@00 s@$ xs@9@00 r)) r))
      :pattern ((inv@51@00 s@$ xs@9@00 r))
      :qid |f-fctOfInv|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@47@00 s@$ xs@9@00 r)
          (and (<= 0 (inv@46@00 s@$ xs@9@00 r)) (< (inv@46@00 s@$ xs@9@00 r) 3)))
        (=
          ($FVF.lookup_f (sm@53@00 s@$ xs@9@00) r)
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second s@$)))) r)))
      :pattern (($FVF.lookup_f (sm@53@00 s@$ xs@9@00) r))
      :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second s@$)))) r))
      :qid |qp.fvfValDef0|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@52@00 s@$ xs@9@00 r)
          (and (<= 6 (inv@51@00 s@$ xs@9@00 r)) (< (inv@51@00 s@$ xs@9@00 r) 9)))
        (=
          ($FVF.lookup_f (sm@53@00 s@$ xs@9@00) r)
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))) r)))
      :pattern (($FVF.lookup_f (sm@53@00 s@$ xs@9@00) r))
      :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))) r))
      :qid |qp.fvfValDef1|))
    (=>
      (fun03%precondition s@$ xs@9@00)
      (=
        (fun03 s@$ xs@9@00)
        (+
          ($FVF.lookup_f (sm@53@00 s@$ xs@9@00) (Seq_index xs@9@00 2))
          ($FVF.lookup_f (sm@53@00 s@$ xs@9@00) (Seq_index xs@9@00 6))))))
  :pattern ((fun03 s@$ xs@9@00))
  :qid |quant-u-12394|)))
(assert (forall ((s@$ $Snap) (xs@9@00 Seq<$Ref>)) (!
  true
  :pattern ((fun03 s@$ xs@9@00))
  :qid |quant-u-12395|)))
(assert (forall ((s@$ $Snap) (xs@11@00 Seq<$Ref>) (b@12@00 Bool)) (!
  (= (fun04%limited s@$ xs@11@00 b@12@00) (fun04 s@$ xs@11@00 b@12@00))
  :pattern ((fun04 s@$ xs@11@00 b@12@00))
  :qid |quant-u-12374|)))
(assert (forall ((s@$ $Snap) (xs@11@00 Seq<$Ref>) (b@12@00 Bool)) (!
  (fun04%stateless xs@11@00 b@12@00)
  :pattern ((fun04%limited s@$ xs@11@00 b@12@00))
  :qid |quant-u-12375|)))
(assert (forall ((s@$ $Snap) (x@14@00 $Ref) (i@15@00 Int) (xs@16@00 Seq<$Ref>)) (!
  (=
    (fun06%limited s@$ x@14@00 i@15@00 xs@16@00)
    (fun06 s@$ x@14@00 i@15@00 xs@16@00))
  :pattern ((fun06 s@$ x@14@00 i@15@00 xs@16@00))
  :qid |quant-u-12376|)))
(assert (forall ((s@$ $Snap) (x@14@00 $Ref) (i@15@00 Int) (xs@16@00 Seq<$Ref>)) (!
  (fun06%stateless x@14@00 i@15@00 xs@16@00)
  :pattern ((fun06%limited s@$ x@14@00 i@15@00 xs@16@00))
  :qid |quant-u-12377|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- test01 ----------
(declare-const xs@0@01 Seq<$Ref>)
(declare-const xs@1@01 Seq<$Ref>)
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
; inhale |xs| > 10
(declare-const $t@2@01 $Snap)
(assert (= $t@2@01 $Snap.unit))
; [eval] |xs| > 10
; [eval] |xs|
(assert (> (Seq_length xs@1@01) 10))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i1: Int, i2: Int ::
;     { (i1 in [0..3)), (i2 in [0..3)) }
;     { (i1 in [0..3)), xs[i2] }
;     { (i2 in [0..3)), xs[i1] }
;     { xs[i1], xs[i2] }
;     (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const $t@3@01 $Snap)
(assert (= $t@3@01 $Snap.unit))
; [eval] (forall i1: Int, i2: Int :: { (i1 in [0..3)), (i2 in [0..3)) } { (i1 in [0..3)), xs[i2] } { (i2 in [0..3)), xs[i1] } { xs[i1], xs[i2] } (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@4@01 Int)
(declare-const i2@5@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2)
; [eval] (i1 in [0..3))
; [eval] [0..3)
(push) ; 4
; [then-branch: 0 | !(i1@4@01 in [0..3]) | live]
; [else-branch: 0 | i1@4@01 in [0..3] | live]
(push) ; 5
; [then-branch: 0 | !(i1@4@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i1@4@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 0 | i1@4@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i1@4@01))
; [eval] (i2 in [0..3))
; [eval] [0..3)
(push) ; 6
; [then-branch: 1 | !(i2@5@01 in [0..3]) | live]
; [else-branch: 1 | i2@5@01 in [0..3] | live]
(push) ; 7
; [then-branch: 1 | !(i2@5@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i2@5@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 1 | i2@5@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i2@5@01))
; [eval] i1 != i2
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 3) i2@5@01)
  (not (Seq_contains (Seq_range 0 3) i2@5@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 3) i1@4@01)
  (and
    (Seq_contains (Seq_range 0 3) i1@4@01)
    (or
      (Seq_contains (Seq_range 0 3) i2@5@01)
      (not (Seq_contains (Seq_range 0 3) i2@5@01))))))
(assert (or
  (Seq_contains (Seq_range 0 3) i1@4@01)
  (not (Seq_contains (Seq_range 0 3) i1@4@01))))
(push) ; 4
; [then-branch: 2 | i1@4@01 in [0..3] && i2@5@01 in [0..3] && i1@4@01 != i2@5@01 | live]
; [else-branch: 2 | !(i1@4@01 in [0..3] && i2@5@01 in [0..3] && i1@4@01 != i2@5@01) | live]
(push) ; 5
; [then-branch: 2 | i1@4@01 in [0..3] && i2@5@01 in [0..3] && i1@4@01 != i2@5@01]
(assert (and
  (Seq_contains (Seq_range 0 3) i1@4@01)
  (and (Seq_contains (Seq_range 0 3) i2@5@01) (not (= i1@4@01 i2@5@01)))))
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(push) ; 6
(assert (not (>= i1@4@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i1@4@01 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 6
(assert (not (>= i2@5@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i2@5@01 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 2 | !(i1@4@01 in [0..3] && i2@5@01 in [0..3] && i1@4@01 != i2@5@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 3) i1@4@01)
    (and (Seq_contains (Seq_range 0 3) i2@5@01) (not (= i1@4@01 i2@5@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 3) i1@4@01)
    (and (Seq_contains (Seq_range 0 3) i2@5@01) (not (= i1@4@01 i2@5@01))))
  (and
    (Seq_contains (Seq_range 0 3) i1@4@01)
    (Seq_contains (Seq_range 0 3) i2@5@01)
    (not (= i1@4@01 i2@5@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 3) i1@4@01)
      (and (Seq_contains (Seq_range 0 3) i2@5@01) (not (= i1@4@01 i2@5@01)))))
  (and
    (Seq_contains (Seq_range 0 3) i1@4@01)
    (and (Seq_contains (Seq_range 0 3) i2@5@01) (not (= i1@4@01 i2@5@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i1@4@01 Int) (i2@5@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@4@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@4@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@5@01)
          (not (Seq_contains (Seq_range 0 3) i2@5@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@4@01)
      (not (Seq_contains (Seq_range 0 3) i1@4@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@4@01)
        (and (Seq_contains (Seq_range 0 3) i2@5@01) (not (= i1@4@01 i2@5@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@4@01)
        (Seq_contains (Seq_range 0 3) i2@5@01)
        (not (= i1@4@01 i2@5@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@4@01)
          (and (Seq_contains (Seq_range 0 3) i2@5@01) (not (= i1@4@01 i2@5@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@4@01)
        (and (Seq_contains (Seq_range 0 3) i2@5@01) (not (= i1@4@01 i2@5@01))))))
  :pattern ((Seq_contains (Seq_range 0 3) i1@4@01) (Seq_contains
    (Seq_range 0 3)
    i2@5@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i1@4@01) (Seq_contains_trigger
    (Seq_range 0 3)
    i2@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@14@10@14@98-aux|)))
(assert (forall ((i1@4@01 Int) (i2@5@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@4@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@4@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@5@01)
          (not (Seq_contains (Seq_range 0 3) i2@5@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@4@01)
      (not (Seq_contains (Seq_range 0 3) i1@4@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@4@01)
        (and (Seq_contains (Seq_range 0 3) i2@5@01) (not (= i1@4@01 i2@5@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@4@01)
        (Seq_contains (Seq_range 0 3) i2@5@01)
        (not (= i1@4@01 i2@5@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@4@01)
          (and (Seq_contains (Seq_range 0 3) i2@5@01) (not (= i1@4@01 i2@5@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@4@01)
        (and (Seq_contains (Seq_range 0 3) i2@5@01) (not (= i1@4@01 i2@5@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i1@4@01) (Seq_contains_trigger
    (Seq_range 0 3)
    i2@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@14@10@14@98-aux|)))
(assert (forall ((i1@4@01 Int) (i2@5@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@4@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@4@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@5@01)
          (not (Seq_contains (Seq_range 0 3) i2@5@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@4@01)
      (not (Seq_contains (Seq_range 0 3) i1@4@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@4@01)
        (and (Seq_contains (Seq_range 0 3) i2@5@01) (not (= i1@4@01 i2@5@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@4@01)
        (Seq_contains (Seq_range 0 3) i2@5@01)
        (not (= i1@4@01 i2@5@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@4@01)
          (and (Seq_contains (Seq_range 0 3) i2@5@01) (not (= i1@4@01 i2@5@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@4@01)
        (and (Seq_contains (Seq_range 0 3) i2@5@01) (not (= i1@4@01 i2@5@01))))))
  :pattern ((Seq_contains (Seq_range 0 3) i1@4@01) (Seq_index xs@1@01 i2@5@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i1@4@01) (Seq_index
    xs@1@01
    i2@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@14@10@14@98-aux|)))
(assert (forall ((i1@4@01 Int) (i2@5@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@4@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@4@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@5@01)
          (not (Seq_contains (Seq_range 0 3) i2@5@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@4@01)
      (not (Seq_contains (Seq_range 0 3) i1@4@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@4@01)
        (and (Seq_contains (Seq_range 0 3) i2@5@01) (not (= i1@4@01 i2@5@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@4@01)
        (Seq_contains (Seq_range 0 3) i2@5@01)
        (not (= i1@4@01 i2@5@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@4@01)
          (and (Seq_contains (Seq_range 0 3) i2@5@01) (not (= i1@4@01 i2@5@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@4@01)
        (and (Seq_contains (Seq_range 0 3) i2@5@01) (not (= i1@4@01 i2@5@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i1@4@01) (Seq_index
    xs@1@01
    i2@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@14@10@14@98-aux|)))
(assert (forall ((i1@4@01 Int) (i2@5@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@4@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@4@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@5@01)
          (not (Seq_contains (Seq_range 0 3) i2@5@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@4@01)
      (not (Seq_contains (Seq_range 0 3) i1@4@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@4@01)
        (and (Seq_contains (Seq_range 0 3) i2@5@01) (not (= i1@4@01 i2@5@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@4@01)
        (Seq_contains (Seq_range 0 3) i2@5@01)
        (not (= i1@4@01 i2@5@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@4@01)
          (and (Seq_contains (Seq_range 0 3) i2@5@01) (not (= i1@4@01 i2@5@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@4@01)
        (and (Seq_contains (Seq_range 0 3) i2@5@01) (not (= i1@4@01 i2@5@01))))))
  :pattern ((Seq_contains (Seq_range 0 3) i2@5@01) (Seq_index xs@1@01 i1@4@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i2@5@01) (Seq_index
    xs@1@01
    i1@4@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@14@10@14@98-aux|)))
(assert (forall ((i1@4@01 Int) (i2@5@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@4@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@4@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@5@01)
          (not (Seq_contains (Seq_range 0 3) i2@5@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@4@01)
      (not (Seq_contains (Seq_range 0 3) i1@4@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@4@01)
        (and (Seq_contains (Seq_range 0 3) i2@5@01) (not (= i1@4@01 i2@5@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@4@01)
        (Seq_contains (Seq_range 0 3) i2@5@01)
        (not (= i1@4@01 i2@5@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@4@01)
          (and (Seq_contains (Seq_range 0 3) i2@5@01) (not (= i1@4@01 i2@5@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@4@01)
        (and (Seq_contains (Seq_range 0 3) i2@5@01) (not (= i1@4@01 i2@5@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i2@5@01) (Seq_index
    xs@1@01
    i1@4@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@14@10@14@98-aux|)))
(assert (forall ((i1@4@01 Int) (i2@5@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@4@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@4@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@5@01)
          (not (Seq_contains (Seq_range 0 3) i2@5@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@4@01)
      (not (Seq_contains (Seq_range 0 3) i1@4@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@4@01)
        (and (Seq_contains (Seq_range 0 3) i2@5@01) (not (= i1@4@01 i2@5@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@4@01)
        (Seq_contains (Seq_range 0 3) i2@5@01)
        (not (= i1@4@01 i2@5@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@4@01)
          (and (Seq_contains (Seq_range 0 3) i2@5@01) (not (= i1@4@01 i2@5@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@4@01)
        (and (Seq_contains (Seq_range 0 3) i2@5@01) (not (= i1@4@01 i2@5@01))))))
  :pattern ((Seq_index xs@1@01 i1@4@01) (Seq_index xs@1@01 i2@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@14@10@14@98-aux|)))
(assert (forall ((i1@4@01 Int) (i2@5@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@4@01)
      (and (Seq_contains (Seq_range 0 3) i2@5@01) (not (= i1@4@01 i2@5@01))))
    (not (= (Seq_index xs@1@01 i1@4@01) (Seq_index xs@1@01 i2@5@01))))
  :pattern ((Seq_contains (Seq_range 0 3) i1@4@01) (Seq_contains
    (Seq_range 0 3)
    i2@5@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i1@4@01) (Seq_contains_trigger
    (Seq_range 0 3)
    i2@5@01))
  :pattern ((Seq_contains (Seq_range 0 3) i1@4@01) (Seq_index xs@1@01 i2@5@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i1@4@01) (Seq_index
    xs@1@01
    i2@5@01))
  :pattern ((Seq_contains (Seq_range 0 3) i2@5@01) (Seq_index xs@1@01 i1@4@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i2@5@01) (Seq_index
    xs@1@01
    i1@4@01))
  :pattern ((Seq_index xs@1@01 i1@4@01) (Seq_index xs@1@01 i2@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@14@10@14@98|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall k: Int ::0 <= k && k < 3 ==> acc(xs[k].f, write))
(declare-const k@6@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= k && k < 3
; [eval] 0 <= k
(push) ; 4
; [then-branch: 3 | !(0 <= k@6@01) | live]
; [else-branch: 3 | 0 <= k@6@01 | live]
(push) ; 5
; [then-branch: 3 | !(0 <= k@6@01)]
(assert (not (<= 0 k@6@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 3 | 0 <= k@6@01]
(assert (<= 0 k@6@01))
; [eval] k < 3
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@6@01) (not (<= 0 k@6@01))))
(assert (and (<= 0 k@6@01) (< k@6@01 3)))
; [eval] xs[k]
(push) ; 4
(assert (not (>= k@6@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< k@6@01 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-const $t@7@01 $FVF<f>)
(declare-fun inv@8@01 ($Ref) Int)
(declare-fun img@9@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@6@01 Int)) (!
  (=> (and (<= 0 k@6@01) (< k@6@01 3)) (or (<= 0 k@6@01) (not (<= 0 k@6@01))))
  :pattern ((Seq_index xs@1@01 k@6@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((k1@6@01 Int) (k2@6@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@6@01) (< k1@6@01 3))
      (and (<= 0 k2@6@01) (< k2@6@01 3))
      (= (Seq_index xs@1@01 k1@6@01) (Seq_index xs@1@01 k2@6@01)))
    (= k1@6@01 k2@6@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@6@01 Int)) (!
  (=>
    (and (<= 0 k@6@01) (< k@6@01 3))
    (and
      (= (inv@8@01 (Seq_index xs@1@01 k@6@01)) k@6@01)
      (img@9@01 (Seq_index xs@1@01 k@6@01))))
  :pattern ((Seq_index xs@1@01 k@6@01))
  :qid |quant-u-12403|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@9@01 r) (and (<= 0 (inv@8@01 r)) (< (inv@8@01 r) 3)))
    (= (Seq_index xs@1@01 (inv@8@01 r)) r))
  :pattern ((inv@8@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((k@6@01 Int)) (!
  (=>
    (and (<= 0 k@6@01) (< k@6@01 3))
    (not (= (Seq_index xs@1@01 k@6@01) $Ref.null)))
  :pattern ((Seq_index xs@1@01 k@6@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 10 == fun01(xs)
(declare-const $t@10@01 $Snap)
(assert (= $t@10@01 $Snap.unit))
; [eval] 10 == fun01(xs)
; [eval] fun01(xs)
(set-option :timeout 0)
(push) ; 3
; [eval] |xs| > 10
; [eval] |xs|
; [eval] (forall i1: Int, i2: Int ::(i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@11@01 Int)
(declare-const i2@12@01 Int)
(push) ; 4
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2)
; [eval] (i1 in [0..3))
; [eval] [0..3)
(push) ; 5
; [then-branch: 4 | !(i1@11@01 in [0..3]) | live]
; [else-branch: 4 | i1@11@01 in [0..3] | live]
(push) ; 6
; [then-branch: 4 | !(i1@11@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i1@11@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 4 | i1@11@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i1@11@01))
; [eval] (i2 in [0..3))
; [eval] [0..3)
(push) ; 7
; [then-branch: 5 | !(i2@12@01 in [0..3]) | live]
; [else-branch: 5 | i2@12@01 in [0..3] | live]
(push) ; 8
; [then-branch: 5 | !(i2@12@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i2@12@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 5 | i2@12@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i2@12@01))
; [eval] i1 != i2
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 3) i2@12@01)
  (not (Seq_contains (Seq_range 0 3) i2@12@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 3) i1@11@01)
  (and
    (Seq_contains (Seq_range 0 3) i1@11@01)
    (or
      (Seq_contains (Seq_range 0 3) i2@12@01)
      (not (Seq_contains (Seq_range 0 3) i2@12@01))))))
(assert (or
  (Seq_contains (Seq_range 0 3) i1@11@01)
  (not (Seq_contains (Seq_range 0 3) i1@11@01))))
(push) ; 5
; [then-branch: 6 | i1@11@01 in [0..3] && i2@12@01 in [0..3] && i1@11@01 != i2@12@01 | live]
; [else-branch: 6 | !(i1@11@01 in [0..3] && i2@12@01 in [0..3] && i1@11@01 != i2@12@01) | live]
(push) ; 6
; [then-branch: 6 | i1@11@01 in [0..3] && i2@12@01 in [0..3] && i1@11@01 != i2@12@01]
(assert (and
  (Seq_contains (Seq_range 0 3) i1@11@01)
  (and (Seq_contains (Seq_range 0 3) i2@12@01) (not (= i1@11@01 i2@12@01)))))
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(push) ; 7
(assert (not (>= i1@11@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i1@11@01 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 7
(assert (not (>= i2@12@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i2@12@01 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 6 | !(i1@11@01 in [0..3] && i2@12@01 in [0..3] && i1@11@01 != i2@12@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 3) i1@11@01)
    (and (Seq_contains (Seq_range 0 3) i2@12@01) (not (= i1@11@01 i2@12@01))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 3) i1@11@01)
    (and (Seq_contains (Seq_range 0 3) i2@12@01) (not (= i1@11@01 i2@12@01))))
  (and
    (Seq_contains (Seq_range 0 3) i1@11@01)
    (Seq_contains (Seq_range 0 3) i2@12@01)
    (not (= i1@11@01 i2@12@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 3) i1@11@01)
      (and (Seq_contains (Seq_range 0 3) i2@12@01) (not (= i1@11@01 i2@12@01)))))
  (and
    (Seq_contains (Seq_range 0 3) i1@11@01)
    (and (Seq_contains (Seq_range 0 3) i2@12@01) (not (= i1@11@01 i2@12@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((i1@11@01 Int) (i2@12@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@11@01)
      (and (Seq_contains (Seq_range 0 3) i2@12@01) (not (= i1@11@01 i2@12@01))))
    (not (= (Seq_index xs@1@01 i1@11@01) (Seq_index xs@1@01 i2@12@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@9@12@9@100|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@11@01 Int) (i2@12@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@11@01)
      (and (Seq_contains (Seq_range 0 3) i2@12@01) (not (= i1@11@01 i2@12@01))))
    (not (= (Seq_index xs@1@01 i1@11@01) (Seq_index xs@1@01 i2@12@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@9@12@9@100|)))
(declare-const k@13@01 Int)
(push) ; 4
; [eval] 0 <= k && k < 3
; [eval] 0 <= k
(push) ; 5
; [then-branch: 7 | !(0 <= k@13@01) | live]
; [else-branch: 7 | 0 <= k@13@01 | live]
(push) ; 6
; [then-branch: 7 | !(0 <= k@13@01)]
(assert (not (<= 0 k@13@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 7 | 0 <= k@13@01]
(assert (<= 0 k@13@01))
; [eval] k < 3
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@13@01) (not (<= 0 k@13@01))))
(assert (and (<= 0 k@13@01) (< k@13@01 3)))
; [eval] xs[k]
(push) ; 5
(assert (not (>= k@13@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@13@01 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@14@01 ($Ref) Int)
(declare-fun img@15@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@13@01 Int)) (!
  (=>
    (and (<= 0 k@13@01) (< k@13@01 3))
    (or (<= 0 k@13@01) (not (<= 0 k@13@01))))
  :pattern ((Seq_index xs@1@01 k@13@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((k1@13@01 Int) (k2@13@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@13@01) (< k1@13@01 3))
      (and (<= 0 k2@13@01) (< k2@13@01 3))
      (= (Seq_index xs@1@01 k1@13@01) (Seq_index xs@1@01 k2@13@01)))
    (= k1@13@01 k2@13@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@13@01 Int)) (!
  (=>
    (and (<= 0 k@13@01) (< k@13@01 3))
    (and
      (= (inv@14@01 (Seq_index xs@1@01 k@13@01)) k@13@01)
      (img@15@01 (Seq_index xs@1@01 k@13@01))))
  :pattern ((Seq_index xs@1@01 k@13@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@15@01 r) (and (<= 0 (inv@14@01 r)) (< (inv@14@01 r) 3)))
    (= (Seq_index xs@1@01 (inv@14@01 r)) r))
  :pattern ((inv@14@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@14@01 r)) (< (inv@14@01 r) 3))
      (img@15@01 r)
      (= r (Seq_index xs@1@01 (inv@14@01 r))))
    (>
      (ite
        (and (img@9@01 r) (and (<= 0 (inv@8@01 r)) (< (inv@8@01 r) 3)))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-12405|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@16@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@16@01  $FVF<f>)))
      (and (and (<= 0 (inv@14@01 r)) (< (inv@14@01 r) 3)) (img@15@01 r)))
    (=>
      (and (and (<= 0 (inv@14@01 r)) (< (inv@14@01 r) 3)) (img@15@01 r))
      (Set_in r ($FVF.domain_f (as sm@16@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@16@01  $FVF<f>))))
  :qid |qp.fvfDomDef1|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@14@01 r)) (< (inv@14@01 r) 3)) (img@15@01 r))
      (and (img@9@01 r) (and (<= 0 (inv@8@01 r)) (< (inv@8@01 r) 3))))
    (= ($FVF.lookup_f (as sm@16@01  $FVF<f>) r) ($FVF.lookup_f $t@7@01 r)))
  :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@7@01 r))
  :qid |qp.fvfValDef0|)))
(assert (fun01%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@16@01  $FVF<f>)))) xs@1@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((k@13@01 Int)) (!
  (=>
    (and (<= 0 k@13@01) (< k@13@01 3))
    (and
      (= (inv@14@01 (Seq_index xs@1@01 k@13@01)) k@13@01)
      (img@15@01 (Seq_index xs@1@01 k@13@01))))
  :pattern ((Seq_index xs@1@01 k@13@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@15@01 r) (and (<= 0 (inv@14@01 r)) (< (inv@14@01 r) 3)))
    (= (Seq_index xs@1@01 (inv@14@01 r)) r))
  :pattern ((inv@14@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@16@01  $FVF<f>)))
      (and (and (<= 0 (inv@14@01 r)) (< (inv@14@01 r) 3)) (img@15@01 r)))
    (=>
      (and (and (<= 0 (inv@14@01 r)) (< (inv@14@01 r) 3)) (img@15@01 r))
      (Set_in r ($FVF.domain_f (as sm@16@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@16@01  $FVF<f>))))
  :qid |qp.fvfDomDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@14@01 r)) (< (inv@14@01 r) 3)) (img@15@01 r))
      (and (img@9@01 r) (and (<= 0 (inv@8@01 r)) (< (inv@8@01 r) 3))))
    (= ($FVF.lookup_f (as sm@16@01  $FVF<f>) r) ($FVF.lookup_f $t@7@01 r)))
  :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@7@01 r))
  :qid |qp.fvfValDef0|)))
(assert (and
  (forall ((i1@11@01 Int) (i2@12@01 Int)) (!
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@11@01)
        (and (Seq_contains (Seq_range 0 3) i2@12@01) (not (= i1@11@01 i2@12@01))))
      (not (= (Seq_index xs@1@01 i1@11@01) (Seq_index xs@1@01 i2@12@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@9@12@9@100|))
  (forall ((k@13@01 Int)) (!
    (=>
      (and (<= 0 k@13@01) (< k@13@01 3))
      (or (<= 0 k@13@01) (not (<= 0 k@13@01))))
    :pattern ((Seq_index xs@1@01 k@13@01))
    :qid |f-aux|))
  (fun01%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (as sm@16@01  $FVF<f>)))) xs@1@01)))
(assert (=
  10
  (fun01 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (as sm@16@01  $FVF<f>)))) xs@1@01)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert 10 == fun01(xs)
; [eval] 10 == fun01(xs)
; [eval] fun01(xs)
(set-option :timeout 0)
(push) ; 3
; [eval] |xs| > 10
; [eval] |xs|
; [eval] (forall i1: Int, i2: Int ::(i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@17@01 Int)
(declare-const i2@18@01 Int)
(push) ; 4
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2)
; [eval] (i1 in [0..3))
; [eval] [0..3)
(push) ; 5
; [then-branch: 8 | !(i1@17@01 in [0..3]) | live]
; [else-branch: 8 | i1@17@01 in [0..3] | live]
(push) ; 6
; [then-branch: 8 | !(i1@17@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i1@17@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 8 | i1@17@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i1@17@01))
; [eval] (i2 in [0..3))
; [eval] [0..3)
(push) ; 7
; [then-branch: 9 | !(i2@18@01 in [0..3]) | live]
; [else-branch: 9 | i2@18@01 in [0..3] | live]
(push) ; 8
; [then-branch: 9 | !(i2@18@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i2@18@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 9 | i2@18@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i2@18@01))
; [eval] i1 != i2
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 3) i2@18@01)
  (not (Seq_contains (Seq_range 0 3) i2@18@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 3) i1@17@01)
  (and
    (Seq_contains (Seq_range 0 3) i1@17@01)
    (or
      (Seq_contains (Seq_range 0 3) i2@18@01)
      (not (Seq_contains (Seq_range 0 3) i2@18@01))))))
(assert (or
  (Seq_contains (Seq_range 0 3) i1@17@01)
  (not (Seq_contains (Seq_range 0 3) i1@17@01))))
(push) ; 5
; [then-branch: 10 | i1@17@01 in [0..3] && i2@18@01 in [0..3] && i1@17@01 != i2@18@01 | live]
; [else-branch: 10 | !(i1@17@01 in [0..3] && i2@18@01 in [0..3] && i1@17@01 != i2@18@01) | live]
(push) ; 6
; [then-branch: 10 | i1@17@01 in [0..3] && i2@18@01 in [0..3] && i1@17@01 != i2@18@01]
(assert (and
  (Seq_contains (Seq_range 0 3) i1@17@01)
  (and (Seq_contains (Seq_range 0 3) i2@18@01) (not (= i1@17@01 i2@18@01)))))
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(push) ; 7
(assert (not (>= i1@17@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i1@17@01 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 7
(assert (not (>= i2@18@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i2@18@01 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 10 | !(i1@17@01 in [0..3] && i2@18@01 in [0..3] && i1@17@01 != i2@18@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 3) i1@17@01)
    (and (Seq_contains (Seq_range 0 3) i2@18@01) (not (= i1@17@01 i2@18@01))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 3) i1@17@01)
    (and (Seq_contains (Seq_range 0 3) i2@18@01) (not (= i1@17@01 i2@18@01))))
  (and
    (Seq_contains (Seq_range 0 3) i1@17@01)
    (Seq_contains (Seq_range 0 3) i2@18@01)
    (not (= i1@17@01 i2@18@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 3) i1@17@01)
      (and (Seq_contains (Seq_range 0 3) i2@18@01) (not (= i1@17@01 i2@18@01)))))
  (and
    (Seq_contains (Seq_range 0 3) i1@17@01)
    (and (Seq_contains (Seq_range 0 3) i2@18@01) (not (= i1@17@01 i2@18@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((i1@17@01 Int) (i2@18@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@17@01)
      (and (Seq_contains (Seq_range 0 3) i2@18@01) (not (= i1@17@01 i2@18@01))))
    (not (= (Seq_index xs@1@01 i1@17@01) (Seq_index xs@1@01 i2@18@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@9@12@9@100|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@17@01 Int) (i2@18@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@17@01)
      (and (Seq_contains (Seq_range 0 3) i2@18@01) (not (= i1@17@01 i2@18@01))))
    (not (= (Seq_index xs@1@01 i1@17@01) (Seq_index xs@1@01 i2@18@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@9@12@9@100|)))
(declare-const k@19@01 Int)
(push) ; 4
; [eval] 0 <= k && k < 3
; [eval] 0 <= k
(push) ; 5
; [then-branch: 11 | !(0 <= k@19@01) | live]
; [else-branch: 11 | 0 <= k@19@01 | live]
(push) ; 6
; [then-branch: 11 | !(0 <= k@19@01)]
(assert (not (<= 0 k@19@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 11 | 0 <= k@19@01]
(assert (<= 0 k@19@01))
; [eval] k < 3
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@19@01) (not (<= 0 k@19@01))))
(assert (and (<= 0 k@19@01) (< k@19@01 3)))
; [eval] xs[k]
(push) ; 5
(assert (not (>= k@19@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@19@01 (Seq_length xs@1@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@20@01 ($Ref) Int)
(declare-fun img@21@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@19@01 Int)) (!
  (=>
    (and (<= 0 k@19@01) (< k@19@01 3))
    (or (<= 0 k@19@01) (not (<= 0 k@19@01))))
  :pattern ((Seq_index xs@1@01 k@19@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((k1@19@01 Int) (k2@19@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@19@01) (< k1@19@01 3))
      (and (<= 0 k2@19@01) (< k2@19@01 3))
      (= (Seq_index xs@1@01 k1@19@01) (Seq_index xs@1@01 k2@19@01)))
    (= k1@19@01 k2@19@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@19@01 Int)) (!
  (=>
    (and (<= 0 k@19@01) (< k@19@01 3))
    (and
      (= (inv@20@01 (Seq_index xs@1@01 k@19@01)) k@19@01)
      (img@21@01 (Seq_index xs@1@01 k@19@01))))
  :pattern ((Seq_index xs@1@01 k@19@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@21@01 r) (and (<= 0 (inv@20@01 r)) (< (inv@20@01 r) 3)))
    (= (Seq_index xs@1@01 (inv@20@01 r)) r))
  :pattern ((inv@20@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@20@01 r)) (< (inv@20@01 r) 3))
      (img@21@01 r)
      (= r (Seq_index xs@1@01 (inv@20@01 r))))
    (>
      (ite
        (and (img@9@01 r) (and (<= 0 (inv@8@01 r)) (< (inv@8@01 r) 3)))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-12407|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@22@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@22@01  $FVF<f>)))
      (and (and (<= 0 (inv@20@01 r)) (< (inv@20@01 r) 3)) (img@21@01 r)))
    (=>
      (and (and (<= 0 (inv@20@01 r)) (< (inv@20@01 r) 3)) (img@21@01 r))
      (Set_in r ($FVF.domain_f (as sm@22@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@22@01  $FVF<f>))))
  :qid |qp.fvfDomDef3|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@20@01 r)) (< (inv@20@01 r) 3)) (img@21@01 r))
      (and (img@9@01 r) (and (<= 0 (inv@8@01 r)) (< (inv@8@01 r) 3))))
    (= ($FVF.lookup_f (as sm@22@01  $FVF<f>) r) ($FVF.lookup_f $t@7@01 r)))
  :pattern (($FVF.lookup_f (as sm@22@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@7@01 r))
  :qid |qp.fvfValDef2|)))
(assert (fun01%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@22@01  $FVF<f>)))) xs@1@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((k@19@01 Int)) (!
  (=>
    (and (<= 0 k@19@01) (< k@19@01 3))
    (and
      (= (inv@20@01 (Seq_index xs@1@01 k@19@01)) k@19@01)
      (img@21@01 (Seq_index xs@1@01 k@19@01))))
  :pattern ((Seq_index xs@1@01 k@19@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@21@01 r) (and (<= 0 (inv@20@01 r)) (< (inv@20@01 r) 3)))
    (= (Seq_index xs@1@01 (inv@20@01 r)) r))
  :pattern ((inv@20@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@22@01  $FVF<f>)))
      (and (and (<= 0 (inv@20@01 r)) (< (inv@20@01 r) 3)) (img@21@01 r)))
    (=>
      (and (and (<= 0 (inv@20@01 r)) (< (inv@20@01 r) 3)) (img@21@01 r))
      (Set_in r ($FVF.domain_f (as sm@22@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@22@01  $FVF<f>))))
  :qid |qp.fvfDomDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@20@01 r)) (< (inv@20@01 r) 3)) (img@21@01 r))
      (and (img@9@01 r) (and (<= 0 (inv@8@01 r)) (< (inv@8@01 r) 3))))
    (= ($FVF.lookup_f (as sm@22@01  $FVF<f>) r) ($FVF.lookup_f $t@7@01 r)))
  :pattern (($FVF.lookup_f (as sm@22@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@7@01 r))
  :qid |qp.fvfValDef2|)))
(assert (and
  (forall ((i1@17@01 Int) (i2@18@01 Int)) (!
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@17@01)
        (and (Seq_contains (Seq_range 0 3) i2@18@01) (not (= i1@17@01 i2@18@01))))
      (not (= (Seq_index xs@1@01 i1@17@01) (Seq_index xs@1@01 i2@18@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@9@12@9@100|))
  (forall ((k@19@01 Int)) (!
    (=>
      (and (<= 0 k@19@01) (< k@19@01 3))
      (or (<= 0 k@19@01) (not (<= 0 k@19@01))))
    :pattern ((Seq_index xs@1@01 k@19@01))
    :qid |f-aux|))
  (fun01%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (as sm@22@01  $FVF<f>)))) xs@1@01)))
(push) ; 3
(assert (not (=
  10
  (fun01 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (as sm@22@01  $FVF<f>)))) xs@1@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  10
  (fun01 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (as sm@22@01  $FVF<f>)))) xs@1@01)))
; [exec]
; assert false
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@23@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@9@01 r) (and (<= 0 (inv@8@01 r)) (< (inv@8@01 r) 3)))
    (= ($FVF.lookup_f (as sm@23@01  $FVF<f>) r) ($FVF.lookup_f $t@7@01 r)))
  :pattern (($FVF.lookup_f (as sm@23@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@7@01 r))
  :qid |qp.fvfValDef4|)))
(declare-const pm@24@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@24@01  $FPM) r)
    (ite
      (and (img@9@01 r) (and (<= 0 (inv@8@01 r)) (< (inv@8@01 r) 3)))
      $Perm.Write
      $Perm.No))
  :pattern (($FVF.perm_f (as pm@24@01  $FPM) r))
  :qid |qp.resPrmSumDef5|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@24@01  $FPM) r) $Perm.Write)
  :pattern ((inv@8@01 r))
  :qid |qp-fld-prm-bnd|)))
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
; ---------- test02 ----------
(declare-const xs@25@01 Seq<$Ref>)
(declare-const xs@26@01 Seq<$Ref>)
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
; inhale |xs| > 10
(declare-const $t@27@01 $Snap)
(assert (= $t@27@01 $Snap.unit))
; [eval] |xs| > 10
; [eval] |xs|
(assert (> (Seq_length xs@26@01) 10))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i1: Int, i2: Int ::
;     { (i1 in [0..3)), (i2 in [0..3)) }
;     { (i1 in [0..3)), xs[i2] }
;     { (i2 in [0..3)), xs[i1] }
;     { xs[i1], xs[i2] }
;     (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const $t@28@01 $Snap)
(assert (= $t@28@01 $Snap.unit))
; [eval] (forall i1: Int, i2: Int :: { (i1 in [0..3)), (i2 in [0..3)) } { (i1 in [0..3)), xs[i2] } { (i2 in [0..3)), xs[i1] } { xs[i1], xs[i2] } (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@29@01 Int)
(declare-const i2@30@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2)
; [eval] (i1 in [0..3))
; [eval] [0..3)
(push) ; 4
; [then-branch: 12 | !(i1@29@01 in [0..3]) | live]
; [else-branch: 12 | i1@29@01 in [0..3] | live]
(push) ; 5
; [then-branch: 12 | !(i1@29@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i1@29@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 12 | i1@29@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i1@29@01))
; [eval] (i2 in [0..3))
; [eval] [0..3)
(push) ; 6
; [then-branch: 13 | !(i2@30@01 in [0..3]) | live]
; [else-branch: 13 | i2@30@01 in [0..3] | live]
(push) ; 7
; [then-branch: 13 | !(i2@30@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i2@30@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 13 | i2@30@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i2@30@01))
; [eval] i1 != i2
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 3) i2@30@01)
  (not (Seq_contains (Seq_range 0 3) i2@30@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 3) i1@29@01)
  (and
    (Seq_contains (Seq_range 0 3) i1@29@01)
    (or
      (Seq_contains (Seq_range 0 3) i2@30@01)
      (not (Seq_contains (Seq_range 0 3) i2@30@01))))))
(assert (or
  (Seq_contains (Seq_range 0 3) i1@29@01)
  (not (Seq_contains (Seq_range 0 3) i1@29@01))))
(push) ; 4
; [then-branch: 14 | i1@29@01 in [0..3] && i2@30@01 in [0..3] && i1@29@01 != i2@30@01 | live]
; [else-branch: 14 | !(i1@29@01 in [0..3] && i2@30@01 in [0..3] && i1@29@01 != i2@30@01) | live]
(push) ; 5
; [then-branch: 14 | i1@29@01 in [0..3] && i2@30@01 in [0..3] && i1@29@01 != i2@30@01]
(assert (and
  (Seq_contains (Seq_range 0 3) i1@29@01)
  (and (Seq_contains (Seq_range 0 3) i2@30@01) (not (= i1@29@01 i2@30@01)))))
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(push) ; 6
(assert (not (>= i1@29@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i1@29@01 (Seq_length xs@26@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 6
(assert (not (>= i2@30@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i2@30@01 (Seq_length xs@26@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 14 | !(i1@29@01 in [0..3] && i2@30@01 in [0..3] && i1@29@01 != i2@30@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 3) i1@29@01)
    (and (Seq_contains (Seq_range 0 3) i2@30@01) (not (= i1@29@01 i2@30@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 3) i1@29@01)
    (and (Seq_contains (Seq_range 0 3) i2@30@01) (not (= i1@29@01 i2@30@01))))
  (and
    (Seq_contains (Seq_range 0 3) i1@29@01)
    (Seq_contains (Seq_range 0 3) i2@30@01)
    (not (= i1@29@01 i2@30@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 3) i1@29@01)
      (and (Seq_contains (Seq_range 0 3) i2@30@01) (not (= i1@29@01 i2@30@01)))))
  (and
    (Seq_contains (Seq_range 0 3) i1@29@01)
    (and (Seq_contains (Seq_range 0 3) i2@30@01) (not (= i1@29@01 i2@30@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i1@29@01 Int) (i2@30@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@29@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@29@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@30@01)
          (not (Seq_contains (Seq_range 0 3) i2@30@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@29@01)
      (not (Seq_contains (Seq_range 0 3) i1@29@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@29@01)
        (and (Seq_contains (Seq_range 0 3) i2@30@01) (not (= i1@29@01 i2@30@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@29@01)
        (Seq_contains (Seq_range 0 3) i2@30@01)
        (not (= i1@29@01 i2@30@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@29@01)
          (and
            (Seq_contains (Seq_range 0 3) i2@30@01)
            (not (= i1@29@01 i2@30@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@29@01)
        (and (Seq_contains (Seq_range 0 3) i2@30@01) (not (= i1@29@01 i2@30@01))))))
  :pattern ((Seq_contains (Seq_range 0 3) i1@29@01) (Seq_contains
    (Seq_range 0 3)
    i2@30@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i1@29@01) (Seq_contains_trigger
    (Seq_range 0 3)
    i2@30@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@33@10@33@98-aux|)))
(assert (forall ((i1@29@01 Int) (i2@30@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@29@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@29@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@30@01)
          (not (Seq_contains (Seq_range 0 3) i2@30@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@29@01)
      (not (Seq_contains (Seq_range 0 3) i1@29@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@29@01)
        (and (Seq_contains (Seq_range 0 3) i2@30@01) (not (= i1@29@01 i2@30@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@29@01)
        (Seq_contains (Seq_range 0 3) i2@30@01)
        (not (= i1@29@01 i2@30@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@29@01)
          (and
            (Seq_contains (Seq_range 0 3) i2@30@01)
            (not (= i1@29@01 i2@30@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@29@01)
        (and (Seq_contains (Seq_range 0 3) i2@30@01) (not (= i1@29@01 i2@30@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i1@29@01) (Seq_contains_trigger
    (Seq_range 0 3)
    i2@30@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@33@10@33@98-aux|)))
(assert (forall ((i1@29@01 Int) (i2@30@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@29@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@29@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@30@01)
          (not (Seq_contains (Seq_range 0 3) i2@30@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@29@01)
      (not (Seq_contains (Seq_range 0 3) i1@29@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@29@01)
        (and (Seq_contains (Seq_range 0 3) i2@30@01) (not (= i1@29@01 i2@30@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@29@01)
        (Seq_contains (Seq_range 0 3) i2@30@01)
        (not (= i1@29@01 i2@30@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@29@01)
          (and
            (Seq_contains (Seq_range 0 3) i2@30@01)
            (not (= i1@29@01 i2@30@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@29@01)
        (and (Seq_contains (Seq_range 0 3) i2@30@01) (not (= i1@29@01 i2@30@01))))))
  :pattern ((Seq_contains (Seq_range 0 3) i1@29@01) (Seq_index xs@26@01 i2@30@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i1@29@01) (Seq_index
    xs@26@01
    i2@30@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@33@10@33@98-aux|)))
(assert (forall ((i1@29@01 Int) (i2@30@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@29@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@29@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@30@01)
          (not (Seq_contains (Seq_range 0 3) i2@30@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@29@01)
      (not (Seq_contains (Seq_range 0 3) i1@29@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@29@01)
        (and (Seq_contains (Seq_range 0 3) i2@30@01) (not (= i1@29@01 i2@30@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@29@01)
        (Seq_contains (Seq_range 0 3) i2@30@01)
        (not (= i1@29@01 i2@30@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@29@01)
          (and
            (Seq_contains (Seq_range 0 3) i2@30@01)
            (not (= i1@29@01 i2@30@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@29@01)
        (and (Seq_contains (Seq_range 0 3) i2@30@01) (not (= i1@29@01 i2@30@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i1@29@01) (Seq_index
    xs@26@01
    i2@30@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@33@10@33@98-aux|)))
(assert (forall ((i1@29@01 Int) (i2@30@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@29@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@29@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@30@01)
          (not (Seq_contains (Seq_range 0 3) i2@30@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@29@01)
      (not (Seq_contains (Seq_range 0 3) i1@29@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@29@01)
        (and (Seq_contains (Seq_range 0 3) i2@30@01) (not (= i1@29@01 i2@30@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@29@01)
        (Seq_contains (Seq_range 0 3) i2@30@01)
        (not (= i1@29@01 i2@30@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@29@01)
          (and
            (Seq_contains (Seq_range 0 3) i2@30@01)
            (not (= i1@29@01 i2@30@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@29@01)
        (and (Seq_contains (Seq_range 0 3) i2@30@01) (not (= i1@29@01 i2@30@01))))))
  :pattern ((Seq_contains (Seq_range 0 3) i2@30@01) (Seq_index xs@26@01 i1@29@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i2@30@01) (Seq_index
    xs@26@01
    i1@29@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@33@10@33@98-aux|)))
(assert (forall ((i1@29@01 Int) (i2@30@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@29@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@29@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@30@01)
          (not (Seq_contains (Seq_range 0 3) i2@30@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@29@01)
      (not (Seq_contains (Seq_range 0 3) i1@29@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@29@01)
        (and (Seq_contains (Seq_range 0 3) i2@30@01) (not (= i1@29@01 i2@30@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@29@01)
        (Seq_contains (Seq_range 0 3) i2@30@01)
        (not (= i1@29@01 i2@30@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@29@01)
          (and
            (Seq_contains (Seq_range 0 3) i2@30@01)
            (not (= i1@29@01 i2@30@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@29@01)
        (and (Seq_contains (Seq_range 0 3) i2@30@01) (not (= i1@29@01 i2@30@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i2@30@01) (Seq_index
    xs@26@01
    i1@29@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@33@10@33@98-aux|)))
(assert (forall ((i1@29@01 Int) (i2@30@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@29@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@29@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@30@01)
          (not (Seq_contains (Seq_range 0 3) i2@30@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@29@01)
      (not (Seq_contains (Seq_range 0 3) i1@29@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@29@01)
        (and (Seq_contains (Seq_range 0 3) i2@30@01) (not (= i1@29@01 i2@30@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@29@01)
        (Seq_contains (Seq_range 0 3) i2@30@01)
        (not (= i1@29@01 i2@30@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@29@01)
          (and
            (Seq_contains (Seq_range 0 3) i2@30@01)
            (not (= i1@29@01 i2@30@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@29@01)
        (and (Seq_contains (Seq_range 0 3) i2@30@01) (not (= i1@29@01 i2@30@01))))))
  :pattern ((Seq_index xs@26@01 i1@29@01) (Seq_index xs@26@01 i2@30@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@33@10@33@98-aux|)))
(assert (forall ((i1@29@01 Int) (i2@30@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@29@01)
      (and (Seq_contains (Seq_range 0 3) i2@30@01) (not (= i1@29@01 i2@30@01))))
    (not (= (Seq_index xs@26@01 i1@29@01) (Seq_index xs@26@01 i2@30@01))))
  :pattern ((Seq_contains (Seq_range 0 3) i1@29@01) (Seq_contains
    (Seq_range 0 3)
    i2@30@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i1@29@01) (Seq_contains_trigger
    (Seq_range 0 3)
    i2@30@01))
  :pattern ((Seq_contains (Seq_range 0 3) i1@29@01) (Seq_index xs@26@01 i2@30@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i1@29@01) (Seq_index
    xs@26@01
    i2@30@01))
  :pattern ((Seq_contains (Seq_range 0 3) i2@30@01) (Seq_index xs@26@01 i1@29@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i2@30@01) (Seq_index
    xs@26@01
    i1@29@01))
  :pattern ((Seq_index xs@26@01 i1@29@01) (Seq_index xs@26@01 i2@30@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@33@10@33@98|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall k: Int ::0 <= k && k < 3 ==> acc(xs[k].f, write))
(declare-const k@31@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= k && k < 3
; [eval] 0 <= k
(push) ; 4
; [then-branch: 15 | !(0 <= k@31@01) | live]
; [else-branch: 15 | 0 <= k@31@01 | live]
(push) ; 5
; [then-branch: 15 | !(0 <= k@31@01)]
(assert (not (<= 0 k@31@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 15 | 0 <= k@31@01]
(assert (<= 0 k@31@01))
; [eval] k < 3
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@31@01) (not (<= 0 k@31@01))))
(assert (and (<= 0 k@31@01) (< k@31@01 3)))
; [eval] xs[k]
(push) ; 4
(assert (not (>= k@31@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< k@31@01 (Seq_length xs@26@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-const $t@32@01 $FVF<f>)
(declare-fun inv@33@01 ($Ref) Int)
(declare-fun img@34@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@31@01 Int)) (!
  (=>
    (and (<= 0 k@31@01) (< k@31@01 3))
    (or (<= 0 k@31@01) (not (<= 0 k@31@01))))
  :pattern ((Seq_index xs@26@01 k@31@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((k1@31@01 Int) (k2@31@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@31@01) (< k1@31@01 3))
      (and (<= 0 k2@31@01) (< k2@31@01 3))
      (= (Seq_index xs@26@01 k1@31@01) (Seq_index xs@26@01 k2@31@01)))
    (= k1@31@01 k2@31@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@31@01 Int)) (!
  (=>
    (and (<= 0 k@31@01) (< k@31@01 3))
    (and
      (= (inv@33@01 (Seq_index xs@26@01 k@31@01)) k@31@01)
      (img@34@01 (Seq_index xs@26@01 k@31@01))))
  :pattern ((Seq_index xs@26@01 k@31@01))
  :qid |quant-u-12409|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) 3)))
    (= (Seq_index xs@26@01 (inv@33@01 r)) r))
  :pattern ((inv@33@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((k@31@01 Int)) (!
  (=>
    (and (<= 0 k@31@01) (< k@31@01 3))
    (not (= (Seq_index xs@26@01 k@31@01) $Ref.null)))
  :pattern ((Seq_index xs@26@01 k@31@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i1: Int, i2: Int ::
;     { (i1 in [6..9)), (i2 in [6..9)) }
;     { (i1 in [6..9)), xs[i2] }
;     { (i2 in [6..9)), xs[i1] }
;     { xs[i1], xs[i2] }
;     (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const $t@35@01 $Snap)
(assert (= $t@35@01 $Snap.unit))
; [eval] (forall i1: Int, i2: Int :: { (i1 in [6..9)), (i2 in [6..9)) } { (i1 in [6..9)), xs[i2] } { (i2 in [6..9)), xs[i1] } { xs[i1], xs[i2] } (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@36@01 Int)
(declare-const i2@37@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2)
; [eval] (i1 in [6..9))
; [eval] [6..9)
(push) ; 4
; [then-branch: 16 | !(i1@36@01 in [6..9]) | live]
; [else-branch: 16 | i1@36@01 in [6..9] | live]
(push) ; 5
; [then-branch: 16 | !(i1@36@01 in [6..9])]
(assert (not (Seq_contains (Seq_range 6 9) i1@36@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 16 | i1@36@01 in [6..9]]
(assert (Seq_contains (Seq_range 6 9) i1@36@01))
; [eval] (i2 in [6..9))
; [eval] [6..9)
(push) ; 6
; [then-branch: 17 | !(i2@37@01 in [6..9]) | live]
; [else-branch: 17 | i2@37@01 in [6..9] | live]
(push) ; 7
; [then-branch: 17 | !(i2@37@01 in [6..9])]
(assert (not (Seq_contains (Seq_range 6 9) i2@37@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 17 | i2@37@01 in [6..9]]
(assert (Seq_contains (Seq_range 6 9) i2@37@01))
; [eval] i1 != i2
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 6 9) i2@37@01)
  (not (Seq_contains (Seq_range 6 9) i2@37@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 6 9) i1@36@01)
  (and
    (Seq_contains (Seq_range 6 9) i1@36@01)
    (or
      (Seq_contains (Seq_range 6 9) i2@37@01)
      (not (Seq_contains (Seq_range 6 9) i2@37@01))))))
(assert (or
  (Seq_contains (Seq_range 6 9) i1@36@01)
  (not (Seq_contains (Seq_range 6 9) i1@36@01))))
(push) ; 4
; [then-branch: 18 | i1@36@01 in [6..9] && i2@37@01 in [6..9] && i1@36@01 != i2@37@01 | live]
; [else-branch: 18 | !(i1@36@01 in [6..9] && i2@37@01 in [6..9] && i1@36@01 != i2@37@01) | live]
(push) ; 5
; [then-branch: 18 | i1@36@01 in [6..9] && i2@37@01 in [6..9] && i1@36@01 != i2@37@01]
(assert (and
  (Seq_contains (Seq_range 6 9) i1@36@01)
  (and (Seq_contains (Seq_range 6 9) i2@37@01) (not (= i1@36@01 i2@37@01)))))
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(push) ; 6
(assert (not (>= i1@36@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i1@36@01 (Seq_length xs@26@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 6
(assert (not (>= i2@37@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i2@37@01 (Seq_length xs@26@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 18 | !(i1@36@01 in [6..9] && i2@37@01 in [6..9] && i1@36@01 != i2@37@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 6 9) i1@36@01)
    (and (Seq_contains (Seq_range 6 9) i2@37@01) (not (= i1@36@01 i2@37@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 6 9) i1@36@01)
    (and (Seq_contains (Seq_range 6 9) i2@37@01) (not (= i1@36@01 i2@37@01))))
  (and
    (Seq_contains (Seq_range 6 9) i1@36@01)
    (Seq_contains (Seq_range 6 9) i2@37@01)
    (not (= i1@36@01 i2@37@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 6 9) i1@36@01)
      (and (Seq_contains (Seq_range 6 9) i2@37@01) (not (= i1@36@01 i2@37@01)))))
  (and
    (Seq_contains (Seq_range 6 9) i1@36@01)
    (and (Seq_contains (Seq_range 6 9) i2@37@01) (not (= i1@36@01 i2@37@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i1@36@01 Int) (i2@37@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 6 9) i1@36@01)
      (and
        (Seq_contains (Seq_range 6 9) i1@36@01)
        (or
          (Seq_contains (Seq_range 6 9) i2@37@01)
          (not (Seq_contains (Seq_range 6 9) i2@37@01)))))
    (or
      (Seq_contains (Seq_range 6 9) i1@36@01)
      (not (Seq_contains (Seq_range 6 9) i1@36@01)))
    (=>
      (and
        (Seq_contains (Seq_range 6 9) i1@36@01)
        (and (Seq_contains (Seq_range 6 9) i2@37@01) (not (= i1@36@01 i2@37@01))))
      (and
        (Seq_contains (Seq_range 6 9) i1@36@01)
        (Seq_contains (Seq_range 6 9) i2@37@01)
        (not (= i1@36@01 i2@37@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 6 9) i1@36@01)
          (and
            (Seq_contains (Seq_range 6 9) i2@37@01)
            (not (= i1@36@01 i2@37@01)))))
      (and
        (Seq_contains (Seq_range 6 9) i1@36@01)
        (and (Seq_contains (Seq_range 6 9) i2@37@01) (not (= i1@36@01 i2@37@01))))))
  :pattern ((Seq_contains (Seq_range 6 9) i1@36@01) (Seq_contains
    (Seq_range 6 9)
    i2@37@01))
  :pattern ((Seq_contains_trigger (Seq_range 6 9) i1@36@01) (Seq_contains_trigger
    (Seq_range 6 9)
    i2@37@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@35@10@35@98-aux|)))
(assert (forall ((i1@36@01 Int) (i2@37@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 6 9) i1@36@01)
      (and
        (Seq_contains (Seq_range 6 9) i1@36@01)
        (or
          (Seq_contains (Seq_range 6 9) i2@37@01)
          (not (Seq_contains (Seq_range 6 9) i2@37@01)))))
    (or
      (Seq_contains (Seq_range 6 9) i1@36@01)
      (not (Seq_contains (Seq_range 6 9) i1@36@01)))
    (=>
      (and
        (Seq_contains (Seq_range 6 9) i1@36@01)
        (and (Seq_contains (Seq_range 6 9) i2@37@01) (not (= i1@36@01 i2@37@01))))
      (and
        (Seq_contains (Seq_range 6 9) i1@36@01)
        (Seq_contains (Seq_range 6 9) i2@37@01)
        (not (= i1@36@01 i2@37@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 6 9) i1@36@01)
          (and
            (Seq_contains (Seq_range 6 9) i2@37@01)
            (not (= i1@36@01 i2@37@01)))))
      (and
        (Seq_contains (Seq_range 6 9) i1@36@01)
        (and (Seq_contains (Seq_range 6 9) i2@37@01) (not (= i1@36@01 i2@37@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 6 9) i1@36@01) (Seq_contains_trigger
    (Seq_range 6 9)
    i2@37@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@35@10@35@98-aux|)))
(assert (forall ((i1@36@01 Int) (i2@37@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 6 9) i1@36@01)
      (and
        (Seq_contains (Seq_range 6 9) i1@36@01)
        (or
          (Seq_contains (Seq_range 6 9) i2@37@01)
          (not (Seq_contains (Seq_range 6 9) i2@37@01)))))
    (or
      (Seq_contains (Seq_range 6 9) i1@36@01)
      (not (Seq_contains (Seq_range 6 9) i1@36@01)))
    (=>
      (and
        (Seq_contains (Seq_range 6 9) i1@36@01)
        (and (Seq_contains (Seq_range 6 9) i2@37@01) (not (= i1@36@01 i2@37@01))))
      (and
        (Seq_contains (Seq_range 6 9) i1@36@01)
        (Seq_contains (Seq_range 6 9) i2@37@01)
        (not (= i1@36@01 i2@37@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 6 9) i1@36@01)
          (and
            (Seq_contains (Seq_range 6 9) i2@37@01)
            (not (= i1@36@01 i2@37@01)))))
      (and
        (Seq_contains (Seq_range 6 9) i1@36@01)
        (and (Seq_contains (Seq_range 6 9) i2@37@01) (not (= i1@36@01 i2@37@01))))))
  :pattern ((Seq_contains (Seq_range 6 9) i1@36@01) (Seq_index xs@26@01 i2@37@01))
  :pattern ((Seq_contains_trigger (Seq_range 6 9) i1@36@01) (Seq_index
    xs@26@01
    i2@37@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@35@10@35@98-aux|)))
(assert (forall ((i1@36@01 Int) (i2@37@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 6 9) i1@36@01)
      (and
        (Seq_contains (Seq_range 6 9) i1@36@01)
        (or
          (Seq_contains (Seq_range 6 9) i2@37@01)
          (not (Seq_contains (Seq_range 6 9) i2@37@01)))))
    (or
      (Seq_contains (Seq_range 6 9) i1@36@01)
      (not (Seq_contains (Seq_range 6 9) i1@36@01)))
    (=>
      (and
        (Seq_contains (Seq_range 6 9) i1@36@01)
        (and (Seq_contains (Seq_range 6 9) i2@37@01) (not (= i1@36@01 i2@37@01))))
      (and
        (Seq_contains (Seq_range 6 9) i1@36@01)
        (Seq_contains (Seq_range 6 9) i2@37@01)
        (not (= i1@36@01 i2@37@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 6 9) i1@36@01)
          (and
            (Seq_contains (Seq_range 6 9) i2@37@01)
            (not (= i1@36@01 i2@37@01)))))
      (and
        (Seq_contains (Seq_range 6 9) i1@36@01)
        (and (Seq_contains (Seq_range 6 9) i2@37@01) (not (= i1@36@01 i2@37@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 6 9) i1@36@01) (Seq_index
    xs@26@01
    i2@37@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@35@10@35@98-aux|)))
(assert (forall ((i1@36@01 Int) (i2@37@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 6 9) i1@36@01)
      (and
        (Seq_contains (Seq_range 6 9) i1@36@01)
        (or
          (Seq_contains (Seq_range 6 9) i2@37@01)
          (not (Seq_contains (Seq_range 6 9) i2@37@01)))))
    (or
      (Seq_contains (Seq_range 6 9) i1@36@01)
      (not (Seq_contains (Seq_range 6 9) i1@36@01)))
    (=>
      (and
        (Seq_contains (Seq_range 6 9) i1@36@01)
        (and (Seq_contains (Seq_range 6 9) i2@37@01) (not (= i1@36@01 i2@37@01))))
      (and
        (Seq_contains (Seq_range 6 9) i1@36@01)
        (Seq_contains (Seq_range 6 9) i2@37@01)
        (not (= i1@36@01 i2@37@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 6 9) i1@36@01)
          (and
            (Seq_contains (Seq_range 6 9) i2@37@01)
            (not (= i1@36@01 i2@37@01)))))
      (and
        (Seq_contains (Seq_range 6 9) i1@36@01)
        (and (Seq_contains (Seq_range 6 9) i2@37@01) (not (= i1@36@01 i2@37@01))))))
  :pattern ((Seq_contains (Seq_range 6 9) i2@37@01) (Seq_index xs@26@01 i1@36@01))
  :pattern ((Seq_contains_trigger (Seq_range 6 9) i2@37@01) (Seq_index
    xs@26@01
    i1@36@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@35@10@35@98-aux|)))
(assert (forall ((i1@36@01 Int) (i2@37@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 6 9) i1@36@01)
      (and
        (Seq_contains (Seq_range 6 9) i1@36@01)
        (or
          (Seq_contains (Seq_range 6 9) i2@37@01)
          (not (Seq_contains (Seq_range 6 9) i2@37@01)))))
    (or
      (Seq_contains (Seq_range 6 9) i1@36@01)
      (not (Seq_contains (Seq_range 6 9) i1@36@01)))
    (=>
      (and
        (Seq_contains (Seq_range 6 9) i1@36@01)
        (and (Seq_contains (Seq_range 6 9) i2@37@01) (not (= i1@36@01 i2@37@01))))
      (and
        (Seq_contains (Seq_range 6 9) i1@36@01)
        (Seq_contains (Seq_range 6 9) i2@37@01)
        (not (= i1@36@01 i2@37@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 6 9) i1@36@01)
          (and
            (Seq_contains (Seq_range 6 9) i2@37@01)
            (not (= i1@36@01 i2@37@01)))))
      (and
        (Seq_contains (Seq_range 6 9) i1@36@01)
        (and (Seq_contains (Seq_range 6 9) i2@37@01) (not (= i1@36@01 i2@37@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 6 9) i2@37@01) (Seq_index
    xs@26@01
    i1@36@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@35@10@35@98-aux|)))
(assert (forall ((i1@36@01 Int) (i2@37@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 6 9) i1@36@01)
      (and
        (Seq_contains (Seq_range 6 9) i1@36@01)
        (or
          (Seq_contains (Seq_range 6 9) i2@37@01)
          (not (Seq_contains (Seq_range 6 9) i2@37@01)))))
    (or
      (Seq_contains (Seq_range 6 9) i1@36@01)
      (not (Seq_contains (Seq_range 6 9) i1@36@01)))
    (=>
      (and
        (Seq_contains (Seq_range 6 9) i1@36@01)
        (and (Seq_contains (Seq_range 6 9) i2@37@01) (not (= i1@36@01 i2@37@01))))
      (and
        (Seq_contains (Seq_range 6 9) i1@36@01)
        (Seq_contains (Seq_range 6 9) i2@37@01)
        (not (= i1@36@01 i2@37@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 6 9) i1@36@01)
          (and
            (Seq_contains (Seq_range 6 9) i2@37@01)
            (not (= i1@36@01 i2@37@01)))))
      (and
        (Seq_contains (Seq_range 6 9) i1@36@01)
        (and (Seq_contains (Seq_range 6 9) i2@37@01) (not (= i1@36@01 i2@37@01))))))
  :pattern ((Seq_index xs@26@01 i1@36@01) (Seq_index xs@26@01 i2@37@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@35@10@35@98-aux|)))
(assert (forall ((i1@36@01 Int) (i2@37@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 6 9) i1@36@01)
      (and (Seq_contains (Seq_range 6 9) i2@37@01) (not (= i1@36@01 i2@37@01))))
    (not (= (Seq_index xs@26@01 i1@36@01) (Seq_index xs@26@01 i2@37@01))))
  :pattern ((Seq_contains (Seq_range 6 9) i1@36@01) (Seq_contains
    (Seq_range 6 9)
    i2@37@01))
  :pattern ((Seq_contains_trigger (Seq_range 6 9) i1@36@01) (Seq_contains_trigger
    (Seq_range 6 9)
    i2@37@01))
  :pattern ((Seq_contains (Seq_range 6 9) i1@36@01) (Seq_index xs@26@01 i2@37@01))
  :pattern ((Seq_contains_trigger (Seq_range 6 9) i1@36@01) (Seq_index
    xs@26@01
    i2@37@01))
  :pattern ((Seq_contains (Seq_range 6 9) i2@37@01) (Seq_index xs@26@01 i1@36@01))
  :pattern ((Seq_contains_trigger (Seq_range 6 9) i2@37@01) (Seq_index
    xs@26@01
    i1@36@01))
  :pattern ((Seq_index xs@26@01 i1@36@01) (Seq_index xs@26@01 i2@37@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@35@10@35@98|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall k: Int ::6 <= k && k < 9 ==> acc(xs[k].f, write))
(declare-const k@38@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 6 <= k && k < 9
; [eval] 6 <= k
(push) ; 4
; [then-branch: 19 | !(6 <= k@38@01) | live]
; [else-branch: 19 | 6 <= k@38@01 | live]
(push) ; 5
; [then-branch: 19 | !(6 <= k@38@01)]
(assert (not (<= 6 k@38@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 19 | 6 <= k@38@01]
(assert (<= 6 k@38@01))
; [eval] k < 9
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 6 k@38@01) (not (<= 6 k@38@01))))
(assert (and (<= 6 k@38@01) (< k@38@01 9)))
; [eval] xs[k]
(push) ; 4
(assert (not (>= k@38@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< k@38@01 (Seq_length xs@26@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-const $t@39@01 $FVF<f>)
(declare-fun inv@40@01 ($Ref) Int)
(declare-fun img@41@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@38@01 Int)) (!
  (=>
    (and (<= 6 k@38@01) (< k@38@01 9))
    (or (<= 6 k@38@01) (not (<= 6 k@38@01))))
  :pattern ((Seq_index xs@26@01 k@38@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((k1@38@01 Int) (k2@38@01 Int)) (!
  (=>
    (and
      (and (<= 6 k1@38@01) (< k1@38@01 9))
      (and (<= 6 k2@38@01) (< k2@38@01 9))
      (= (Seq_index xs@26@01 k1@38@01) (Seq_index xs@26@01 k2@38@01)))
    (= k1@38@01 k2@38@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@38@01 Int)) (!
  (=>
    (and (<= 6 k@38@01) (< k@38@01 9))
    (and
      (= (inv@40@01 (Seq_index xs@26@01 k@38@01)) k@38@01)
      (img@41@01 (Seq_index xs@26@01 k@38@01))))
  :pattern ((Seq_index xs@26@01 k@38@01))
  :qid |quant-u-12411|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@41@01 r) (and (<= 6 (inv@40@01 r)) (< (inv@40@01 r) 9)))
    (= (Seq_index xs@26@01 (inv@40@01 r)) r))
  :pattern ((inv@40@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((k@38@01 Int)) (!
  (=>
    (and (<= 6 k@38@01) (< k@38@01 9))
    (not (= (Seq_index xs@26@01 k@38@01) $Ref.null)))
  :pattern ((Seq_index xs@26@01 k@38@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@26@01 k@38@01) (Seq_index xs@26@01 k@31@01))
    (=
      (and (img@41@01 r) (and (<= 6 (inv@40@01 r)) (< (inv@40@01 r) 9)))
      (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) 3)))))
  
  :qid |quant-u-12412|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 10 == fun02(xs)
(declare-const $t@42@01 $Snap)
(assert (= $t@42@01 $Snap.unit))
; [eval] 10 == fun02(xs)
; [eval] fun02(xs)
(set-option :timeout 0)
(push) ; 3
; [eval] |xs| > 10
; [eval] |xs|
; [eval] (forall i1: Int, i2: Int ::(i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@43@01 Int)
(declare-const i2@44@01 Int)
(push) ; 4
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2)
; [eval] (i1 in [0..3))
; [eval] [0..3)
(push) ; 5
; [then-branch: 20 | !(i1@43@01 in [0..3]) | live]
; [else-branch: 20 | i1@43@01 in [0..3] | live]
(push) ; 6
; [then-branch: 20 | !(i1@43@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i1@43@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 20 | i1@43@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i1@43@01))
; [eval] (i2 in [0..3))
; [eval] [0..3)
(push) ; 7
; [then-branch: 21 | !(i2@44@01 in [0..3]) | live]
; [else-branch: 21 | i2@44@01 in [0..3] | live]
(push) ; 8
; [then-branch: 21 | !(i2@44@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i2@44@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 21 | i2@44@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i2@44@01))
; [eval] i1 != i2
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 3) i2@44@01)
  (not (Seq_contains (Seq_range 0 3) i2@44@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 3) i1@43@01)
  (and
    (Seq_contains (Seq_range 0 3) i1@43@01)
    (or
      (Seq_contains (Seq_range 0 3) i2@44@01)
      (not (Seq_contains (Seq_range 0 3) i2@44@01))))))
(assert (or
  (Seq_contains (Seq_range 0 3) i1@43@01)
  (not (Seq_contains (Seq_range 0 3) i1@43@01))))
(push) ; 5
; [then-branch: 22 | i1@43@01 in [0..3] && i2@44@01 in [0..3] && i1@43@01 != i2@44@01 | live]
; [else-branch: 22 | !(i1@43@01 in [0..3] && i2@44@01 in [0..3] && i1@43@01 != i2@44@01) | live]
(push) ; 6
; [then-branch: 22 | i1@43@01 in [0..3] && i2@44@01 in [0..3] && i1@43@01 != i2@44@01]
(assert (and
  (Seq_contains (Seq_range 0 3) i1@43@01)
  (and (Seq_contains (Seq_range 0 3) i2@44@01) (not (= i1@43@01 i2@44@01)))))
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(push) ; 7
(assert (not (>= i1@43@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i1@43@01 (Seq_length xs@26@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 7
(assert (not (>= i2@44@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i2@44@01 (Seq_length xs@26@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 22 | !(i1@43@01 in [0..3] && i2@44@01 in [0..3] && i1@43@01 != i2@44@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 3) i1@43@01)
    (and (Seq_contains (Seq_range 0 3) i2@44@01) (not (= i1@43@01 i2@44@01))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 3) i1@43@01)
    (and (Seq_contains (Seq_range 0 3) i2@44@01) (not (= i1@43@01 i2@44@01))))
  (and
    (Seq_contains (Seq_range 0 3) i1@43@01)
    (Seq_contains (Seq_range 0 3) i2@44@01)
    (not (= i1@43@01 i2@44@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 3) i1@43@01)
      (and (Seq_contains (Seq_range 0 3) i2@44@01) (not (= i1@43@01 i2@44@01)))))
  (and
    (Seq_contains (Seq_range 0 3) i1@43@01)
    (and (Seq_contains (Seq_range 0 3) i2@44@01) (not (= i1@43@01 i2@44@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((i1@43@01 Int) (i2@44@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@43@01)
      (and (Seq_contains (Seq_range 0 3) i2@44@01) (not (= i1@43@01 i2@44@01))))
    (not (= (Seq_index xs@26@01 i1@43@01) (Seq_index xs@26@01 i2@44@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@26@12@26@100|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@43@01 Int) (i2@44@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@43@01)
      (and (Seq_contains (Seq_range 0 3) i2@44@01) (not (= i1@43@01 i2@44@01))))
    (not (= (Seq_index xs@26@01 i1@43@01) (Seq_index xs@26@01 i2@44@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@26@12@26@100|)))
(declare-const k@45@01 Int)
(push) ; 4
; [eval] 0 <= k && k < 3
; [eval] 0 <= k
(push) ; 5
; [then-branch: 23 | !(0 <= k@45@01) | live]
; [else-branch: 23 | 0 <= k@45@01 | live]
(push) ; 6
; [then-branch: 23 | !(0 <= k@45@01)]
(assert (not (<= 0 k@45@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 23 | 0 <= k@45@01]
(assert (<= 0 k@45@01))
; [eval] k < 3
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@45@01) (not (<= 0 k@45@01))))
(assert (and (<= 0 k@45@01) (< k@45@01 3)))
; [eval] xs[k]
(push) ; 5
(assert (not (>= k@45@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@45@01 (Seq_length xs@26@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@46@01 ($Ref) Int)
(declare-fun img@47@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@45@01 Int)) (!
  (=>
    (and (<= 0 k@45@01) (< k@45@01 3))
    (or (<= 0 k@45@01) (not (<= 0 k@45@01))))
  :pattern ((Seq_index xs@26@01 k@45@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((k1@45@01 Int) (k2@45@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@45@01) (< k1@45@01 3))
      (and (<= 0 k2@45@01) (< k2@45@01 3))
      (= (Seq_index xs@26@01 k1@45@01) (Seq_index xs@26@01 k2@45@01)))
    (= k1@45@01 k2@45@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@45@01 Int)) (!
  (=>
    (and (<= 0 k@45@01) (< k@45@01 3))
    (and
      (= (inv@46@01 (Seq_index xs@26@01 k@45@01)) k@45@01)
      (img@47@01 (Seq_index xs@26@01 k@45@01))))
  :pattern ((Seq_index xs@26@01 k@45@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@47@01 r) (and (<= 0 (inv@46@01 r)) (< (inv@46@01 r) 3)))
    (= (Seq_index xs@26@01 (inv@46@01 r)) r))
  :pattern ((inv@46@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@46@01 r)) (< (inv@46@01 r) 3))
      (img@47@01 r)
      (= r (Seq_index xs@26@01 (inv@46@01 r))))
    (>
      (+
        (ite
          (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) 3)))
          $Perm.Write
          $Perm.No)
        (ite
          (and (img@41@01 r) (and (<= 6 (inv@40@01 r)) (< (inv@40@01 r) 9)))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-12414|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@48@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@48@01  $FVF<f>)))
      (and (and (<= 0 (inv@46@01 r)) (< (inv@46@01 r) 3)) (img@47@01 r)))
    (=>
      (and (and (<= 0 (inv@46@01 r)) (< (inv@46@01 r) 3)) (img@47@01 r))
      (Set_in r ($FVF.domain_f (as sm@48@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@48@01  $FVF<f>))))
  :qid |qp.fvfDomDef8|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@46@01 r)) (< (inv@46@01 r) 3)) (img@47@01 r))
      (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) 3))))
    (= ($FVF.lookup_f (as sm@48@01  $FVF<f>) r) ($FVF.lookup_f $t@32@01 r)))
  :pattern (($FVF.lookup_f (as sm@48@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@32@01 r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@46@01 r)) (< (inv@46@01 r) 3)) (img@47@01 r))
      (and (img@41@01 r) (and (<= 6 (inv@40@01 r)) (< (inv@40@01 r) 9))))
    (= ($FVF.lookup_f (as sm@48@01  $FVF<f>) r) ($FVF.lookup_f $t@39@01 r)))
  :pattern (($FVF.lookup_f (as sm@48@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@39@01 r))
  :qid |qp.fvfValDef7|)))
; [eval] (forall i1: Int, i2: Int ::(i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@49@01 Int)
(declare-const i2@50@01 Int)
(push) ; 4
; [eval] (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2)
; [eval] (i1 in [6..9))
; [eval] [6..9)
(push) ; 5
; [then-branch: 24 | !(i1@49@01 in [6..9]) | live]
; [else-branch: 24 | i1@49@01 in [6..9] | live]
(push) ; 6
; [then-branch: 24 | !(i1@49@01 in [6..9])]
(assert (not (Seq_contains (Seq_range 6 9) i1@49@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 24 | i1@49@01 in [6..9]]
(assert (Seq_contains (Seq_range 6 9) i1@49@01))
; [eval] (i2 in [6..9))
; [eval] [6..9)
(push) ; 7
; [then-branch: 25 | !(i2@50@01 in [6..9]) | live]
; [else-branch: 25 | i2@50@01 in [6..9] | live]
(push) ; 8
; [then-branch: 25 | !(i2@50@01 in [6..9])]
(assert (not (Seq_contains (Seq_range 6 9) i2@50@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 25 | i2@50@01 in [6..9]]
(assert (Seq_contains (Seq_range 6 9) i2@50@01))
; [eval] i1 != i2
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 6 9) i2@50@01)
  (not (Seq_contains (Seq_range 6 9) i2@50@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 6 9) i1@49@01)
  (and
    (Seq_contains (Seq_range 6 9) i1@49@01)
    (or
      (Seq_contains (Seq_range 6 9) i2@50@01)
      (not (Seq_contains (Seq_range 6 9) i2@50@01))))))
(assert (or
  (Seq_contains (Seq_range 6 9) i1@49@01)
  (not (Seq_contains (Seq_range 6 9) i1@49@01))))
(push) ; 5
; [then-branch: 26 | i1@49@01 in [6..9] && i2@50@01 in [6..9] && i1@49@01 != i2@50@01 | live]
; [else-branch: 26 | !(i1@49@01 in [6..9] && i2@50@01 in [6..9] && i1@49@01 != i2@50@01) | live]
(push) ; 6
; [then-branch: 26 | i1@49@01 in [6..9] && i2@50@01 in [6..9] && i1@49@01 != i2@50@01]
(assert (and
  (Seq_contains (Seq_range 6 9) i1@49@01)
  (and (Seq_contains (Seq_range 6 9) i2@50@01) (not (= i1@49@01 i2@50@01)))))
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(push) ; 7
(assert (not (>= i1@49@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i1@49@01 (Seq_length xs@26@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 7
(assert (not (>= i2@50@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i2@50@01 (Seq_length xs@26@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 26 | !(i1@49@01 in [6..9] && i2@50@01 in [6..9] && i1@49@01 != i2@50@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 6 9) i1@49@01)
    (and (Seq_contains (Seq_range 6 9) i2@50@01) (not (= i1@49@01 i2@50@01))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 6 9) i1@49@01)
    (and (Seq_contains (Seq_range 6 9) i2@50@01) (not (= i1@49@01 i2@50@01))))
  (and
    (Seq_contains (Seq_range 6 9) i1@49@01)
    (Seq_contains (Seq_range 6 9) i2@50@01)
    (not (= i1@49@01 i2@50@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 6 9) i1@49@01)
      (and (Seq_contains (Seq_range 6 9) i2@50@01) (not (= i1@49@01 i2@50@01)))))
  (and
    (Seq_contains (Seq_range 6 9) i1@49@01)
    (and (Seq_contains (Seq_range 6 9) i2@50@01) (not (= i1@49@01 i2@50@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((i1@49@01 Int) (i2@50@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 6 9) i1@49@01)
      (and (Seq_contains (Seq_range 6 9) i2@50@01) (not (= i1@49@01 i2@50@01))))
    (not (= (Seq_index xs@26@01 i1@49@01) (Seq_index xs@26@01 i2@50@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@28@12@28@100|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@49@01 Int) (i2@50@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 6 9) i1@49@01)
      (and (Seq_contains (Seq_range 6 9) i2@50@01) (not (= i1@49@01 i2@50@01))))
    (not (= (Seq_index xs@26@01 i1@49@01) (Seq_index xs@26@01 i2@50@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@28@12@28@100|)))
(declare-const k@51@01 Int)
(push) ; 4
; [eval] 6 <= k && k < 9
; [eval] 6 <= k
(push) ; 5
; [then-branch: 27 | !(6 <= k@51@01) | live]
; [else-branch: 27 | 6 <= k@51@01 | live]
(push) ; 6
; [then-branch: 27 | !(6 <= k@51@01)]
(assert (not (<= 6 k@51@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 27 | 6 <= k@51@01]
(assert (<= 6 k@51@01))
; [eval] k < 9
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 6 k@51@01) (not (<= 6 k@51@01))))
(assert (and (<= 6 k@51@01) (< k@51@01 9)))
; [eval] xs[k]
(push) ; 5
(assert (not (>= k@51@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@51@01 (Seq_length xs@26@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@52@01 ($Ref) Int)
(declare-fun img@53@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@51@01 Int)) (!
  (=>
    (and (<= 6 k@51@01) (< k@51@01 9))
    (or (<= 6 k@51@01) (not (<= 6 k@51@01))))
  :pattern ((Seq_index xs@26@01 k@51@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((k1@51@01 Int) (k2@51@01 Int)) (!
  (=>
    (and
      (and (<= 6 k1@51@01) (< k1@51@01 9))
      (and (<= 6 k2@51@01) (< k2@51@01 9))
      (= (Seq_index xs@26@01 k1@51@01) (Seq_index xs@26@01 k2@51@01)))
    (= k1@51@01 k2@51@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@51@01 Int)) (!
  (=>
    (and (<= 6 k@51@01) (< k@51@01 9))
    (and
      (= (inv@52@01 (Seq_index xs@26@01 k@51@01)) k@51@01)
      (img@53@01 (Seq_index xs@26@01 k@51@01))))
  :pattern ((Seq_index xs@26@01 k@51@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@53@01 r) (and (<= 6 (inv@52@01 r)) (< (inv@52@01 r) 9)))
    (= (Seq_index xs@26@01 (inv@52@01 r)) r))
  :pattern ((inv@52@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 6 (inv@52@01 r)) (< (inv@52@01 r) 9))
      (img@53@01 r)
      (= r (Seq_index xs@26@01 (inv@52@01 r))))
    (>
      (+
        (ite
          (and (img@41@01 r) (and (<= 6 (inv@40@01 r)) (< (inv@40@01 r) 9)))
          $Perm.Write
          $Perm.No)
        (ite
          (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) 3)))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-12416|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@54@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@54@01  $FVF<f>)))
      (and (and (<= 6 (inv@52@01 r)) (< (inv@52@01 r) 9)) (img@53@01 r)))
    (=>
      (and (and (<= 6 (inv@52@01 r)) (< (inv@52@01 r) 9)) (img@53@01 r))
      (Set_in r ($FVF.domain_f (as sm@54@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@54@01  $FVF<f>))))
  :qid |qp.fvfDomDef11|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@52@01 r)) (< (inv@52@01 r) 9)) (img@53@01 r))
      (and (img@41@01 r) (and (<= 6 (inv@40@01 r)) (< (inv@40@01 r) 9))))
    (= ($FVF.lookup_f (as sm@54@01  $FVF<f>) r) ($FVF.lookup_f $t@39@01 r)))
  :pattern (($FVF.lookup_f (as sm@54@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@39@01 r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@52@01 r)) (< (inv@52@01 r) 9)) (img@53@01 r))
      (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) 3))))
    (= ($FVF.lookup_f (as sm@54@01  $FVF<f>) r) ($FVF.lookup_f $t@32@01 r)))
  :pattern (($FVF.lookup_f (as sm@54@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@32@01 r))
  :qid |qp.fvfValDef10|)))
(assert (fun02%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<f>To$Snap (as sm@48@01  $FVF<f>))
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<f>To$Snap (as sm@54@01  $FVF<f>)))))) xs@26@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((k@45@01 Int)) (!
  (=>
    (and (<= 0 k@45@01) (< k@45@01 3))
    (and
      (= (inv@46@01 (Seq_index xs@26@01 k@45@01)) k@45@01)
      (img@47@01 (Seq_index xs@26@01 k@45@01))))
  :pattern ((Seq_index xs@26@01 k@45@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@47@01 r) (and (<= 0 (inv@46@01 r)) (< (inv@46@01 r) 3)))
    (= (Seq_index xs@26@01 (inv@46@01 r)) r))
  :pattern ((inv@46@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@48@01  $FVF<f>)))
      (and (and (<= 0 (inv@46@01 r)) (< (inv@46@01 r) 3)) (img@47@01 r)))
    (=>
      (and (and (<= 0 (inv@46@01 r)) (< (inv@46@01 r) 3)) (img@47@01 r))
      (Set_in r ($FVF.domain_f (as sm@48@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@48@01  $FVF<f>))))
  :qid |qp.fvfDomDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@46@01 r)) (< (inv@46@01 r) 3)) (img@47@01 r))
      (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) 3))))
    (= ($FVF.lookup_f (as sm@48@01  $FVF<f>) r) ($FVF.lookup_f $t@32@01 r)))
  :pattern (($FVF.lookup_f (as sm@48@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@32@01 r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@46@01 r)) (< (inv@46@01 r) 3)) (img@47@01 r))
      (and (img@41@01 r) (and (<= 6 (inv@40@01 r)) (< (inv@40@01 r) 9))))
    (= ($FVF.lookup_f (as sm@48@01  $FVF<f>) r) ($FVF.lookup_f $t@39@01 r)))
  :pattern (($FVF.lookup_f (as sm@48@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@39@01 r))
  :qid |qp.fvfValDef7|)))
(assert (forall ((k@51@01 Int)) (!
  (=>
    (and (<= 6 k@51@01) (< k@51@01 9))
    (and
      (= (inv@52@01 (Seq_index xs@26@01 k@51@01)) k@51@01)
      (img@53@01 (Seq_index xs@26@01 k@51@01))))
  :pattern ((Seq_index xs@26@01 k@51@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@53@01 r) (and (<= 6 (inv@52@01 r)) (< (inv@52@01 r) 9)))
    (= (Seq_index xs@26@01 (inv@52@01 r)) r))
  :pattern ((inv@52@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@54@01  $FVF<f>)))
      (and (and (<= 6 (inv@52@01 r)) (< (inv@52@01 r) 9)) (img@53@01 r)))
    (=>
      (and (and (<= 6 (inv@52@01 r)) (< (inv@52@01 r) 9)) (img@53@01 r))
      (Set_in r ($FVF.domain_f (as sm@54@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@54@01  $FVF<f>))))
  :qid |qp.fvfDomDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@52@01 r)) (< (inv@52@01 r) 9)) (img@53@01 r))
      (and (img@41@01 r) (and (<= 6 (inv@40@01 r)) (< (inv@40@01 r) 9))))
    (= ($FVF.lookup_f (as sm@54@01  $FVF<f>) r) ($FVF.lookup_f $t@39@01 r)))
  :pattern (($FVF.lookup_f (as sm@54@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@39@01 r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@52@01 r)) (< (inv@52@01 r) 9)) (img@53@01 r))
      (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) 3))))
    (= ($FVF.lookup_f (as sm@54@01  $FVF<f>) r) ($FVF.lookup_f $t@32@01 r)))
  :pattern (($FVF.lookup_f (as sm@54@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@32@01 r))
  :qid |qp.fvfValDef10|)))
(assert (and
  (forall ((i1@43@01 Int) (i2@44@01 Int)) (!
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@43@01)
        (and (Seq_contains (Seq_range 0 3) i2@44@01) (not (= i1@43@01 i2@44@01))))
      (not (= (Seq_index xs@26@01 i1@43@01) (Seq_index xs@26@01 i2@44@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@26@12@26@100|))
  (forall ((k@45@01 Int)) (!
    (=>
      (and (<= 0 k@45@01) (< k@45@01 3))
      (or (<= 0 k@45@01) (not (<= 0 k@45@01))))
    :pattern ((Seq_index xs@26@01 k@45@01))
    :qid |f-aux|))
  (forall ((i1@49@01 Int) (i2@50@01 Int)) (!
    (=>
      (and
        (Seq_contains (Seq_range 6 9) i1@49@01)
        (and (Seq_contains (Seq_range 6 9) i2@50@01) (not (= i1@49@01 i2@50@01))))
      (not (= (Seq_index xs@26@01 i1@49@01) (Seq_index xs@26@01 i2@50@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@28@12@28@100|))
  (forall ((k@51@01 Int)) (!
    (=>
      (and (<= 6 k@51@01) (< k@51@01 9))
      (or (<= 6 k@51@01) (not (<= 6 k@51@01))))
    :pattern ((Seq_index xs@26@01 k@51@01))
    :qid |f-aux|))
  (fun02%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<f>To$Snap (as sm@48@01  $FVF<f>))
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<f>To$Snap (as sm@54@01  $FVF<f>)))))) xs@26@01)))
(assert (=
  10
  (fun02 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<f>To$Snap (as sm@48@01  $FVF<f>))
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<f>To$Snap (as sm@54@01  $FVF<f>)))))) xs@26@01)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert 10 == fun02(xs)
; [eval] 10 == fun02(xs)
; [eval] fun02(xs)
(set-option :timeout 0)
(push) ; 3
; [eval] |xs| > 10
; [eval] |xs|
; [eval] (forall i1: Int, i2: Int ::(i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@55@01 Int)
(declare-const i2@56@01 Int)
(push) ; 4
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2)
; [eval] (i1 in [0..3))
; [eval] [0..3)
(push) ; 5
; [then-branch: 28 | !(i1@55@01 in [0..3]) | live]
; [else-branch: 28 | i1@55@01 in [0..3] | live]
(push) ; 6
; [then-branch: 28 | !(i1@55@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i1@55@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 28 | i1@55@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i1@55@01))
; [eval] (i2 in [0..3))
; [eval] [0..3)
(push) ; 7
; [then-branch: 29 | !(i2@56@01 in [0..3]) | live]
; [else-branch: 29 | i2@56@01 in [0..3] | live]
(push) ; 8
; [then-branch: 29 | !(i2@56@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i2@56@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 29 | i2@56@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i2@56@01))
; [eval] i1 != i2
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 3) i2@56@01)
  (not (Seq_contains (Seq_range 0 3) i2@56@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 3) i1@55@01)
  (and
    (Seq_contains (Seq_range 0 3) i1@55@01)
    (or
      (Seq_contains (Seq_range 0 3) i2@56@01)
      (not (Seq_contains (Seq_range 0 3) i2@56@01))))))
(assert (or
  (Seq_contains (Seq_range 0 3) i1@55@01)
  (not (Seq_contains (Seq_range 0 3) i1@55@01))))
(push) ; 5
; [then-branch: 30 | i1@55@01 in [0..3] && i2@56@01 in [0..3] && i1@55@01 != i2@56@01 | live]
; [else-branch: 30 | !(i1@55@01 in [0..3] && i2@56@01 in [0..3] && i1@55@01 != i2@56@01) | live]
(push) ; 6
; [then-branch: 30 | i1@55@01 in [0..3] && i2@56@01 in [0..3] && i1@55@01 != i2@56@01]
(assert (and
  (Seq_contains (Seq_range 0 3) i1@55@01)
  (and (Seq_contains (Seq_range 0 3) i2@56@01) (not (= i1@55@01 i2@56@01)))))
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(push) ; 7
(assert (not (>= i1@55@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i1@55@01 (Seq_length xs@26@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 7
(assert (not (>= i2@56@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i2@56@01 (Seq_length xs@26@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 30 | !(i1@55@01 in [0..3] && i2@56@01 in [0..3] && i1@55@01 != i2@56@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 3) i1@55@01)
    (and (Seq_contains (Seq_range 0 3) i2@56@01) (not (= i1@55@01 i2@56@01))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 3) i1@55@01)
    (and (Seq_contains (Seq_range 0 3) i2@56@01) (not (= i1@55@01 i2@56@01))))
  (and
    (Seq_contains (Seq_range 0 3) i1@55@01)
    (Seq_contains (Seq_range 0 3) i2@56@01)
    (not (= i1@55@01 i2@56@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 3) i1@55@01)
      (and (Seq_contains (Seq_range 0 3) i2@56@01) (not (= i1@55@01 i2@56@01)))))
  (and
    (Seq_contains (Seq_range 0 3) i1@55@01)
    (and (Seq_contains (Seq_range 0 3) i2@56@01) (not (= i1@55@01 i2@56@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((i1@55@01 Int) (i2@56@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@55@01)
      (and (Seq_contains (Seq_range 0 3) i2@56@01) (not (= i1@55@01 i2@56@01))))
    (not (= (Seq_index xs@26@01 i1@55@01) (Seq_index xs@26@01 i2@56@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@26@12@26@100|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@55@01 Int) (i2@56@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@55@01)
      (and (Seq_contains (Seq_range 0 3) i2@56@01) (not (= i1@55@01 i2@56@01))))
    (not (= (Seq_index xs@26@01 i1@55@01) (Seq_index xs@26@01 i2@56@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@26@12@26@100|)))
(declare-const k@57@01 Int)
(push) ; 4
; [eval] 0 <= k && k < 3
; [eval] 0 <= k
(push) ; 5
; [then-branch: 31 | !(0 <= k@57@01) | live]
; [else-branch: 31 | 0 <= k@57@01 | live]
(push) ; 6
; [then-branch: 31 | !(0 <= k@57@01)]
(assert (not (<= 0 k@57@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 31 | 0 <= k@57@01]
(assert (<= 0 k@57@01))
; [eval] k < 3
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@57@01) (not (<= 0 k@57@01))))
(assert (and (<= 0 k@57@01) (< k@57@01 3)))
; [eval] xs[k]
(push) ; 5
(assert (not (>= k@57@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@57@01 (Seq_length xs@26@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@58@01 ($Ref) Int)
(declare-fun img@59@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@57@01 Int)) (!
  (=>
    (and (<= 0 k@57@01) (< k@57@01 3))
    (or (<= 0 k@57@01) (not (<= 0 k@57@01))))
  :pattern ((Seq_index xs@26@01 k@57@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((k1@57@01 Int) (k2@57@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@57@01) (< k1@57@01 3))
      (and (<= 0 k2@57@01) (< k2@57@01 3))
      (= (Seq_index xs@26@01 k1@57@01) (Seq_index xs@26@01 k2@57@01)))
    (= k1@57@01 k2@57@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@57@01 Int)) (!
  (=>
    (and (<= 0 k@57@01) (< k@57@01 3))
    (and
      (= (inv@58@01 (Seq_index xs@26@01 k@57@01)) k@57@01)
      (img@59@01 (Seq_index xs@26@01 k@57@01))))
  :pattern ((Seq_index xs@26@01 k@57@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@59@01 r) (and (<= 0 (inv@58@01 r)) (< (inv@58@01 r) 3)))
    (= (Seq_index xs@26@01 (inv@58@01 r)) r))
  :pattern ((inv@58@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@58@01 r)) (< (inv@58@01 r) 3))
      (img@59@01 r)
      (= r (Seq_index xs@26@01 (inv@58@01 r))))
    (>
      (+
        (ite
          (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) 3)))
          $Perm.Write
          $Perm.No)
        (ite
          (and (img@41@01 r) (and (<= 6 (inv@40@01 r)) (< (inv@40@01 r) 9)))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-12418|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@60@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@60@01  $FVF<f>)))
      (and (and (<= 0 (inv@58@01 r)) (< (inv@58@01 r) 3)) (img@59@01 r)))
    (=>
      (and (and (<= 0 (inv@58@01 r)) (< (inv@58@01 r) 3)) (img@59@01 r))
      (Set_in r ($FVF.domain_f (as sm@60@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@60@01  $FVF<f>))))
  :qid |qp.fvfDomDef14|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@58@01 r)) (< (inv@58@01 r) 3)) (img@59@01 r))
      (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) 3))))
    (= ($FVF.lookup_f (as sm@60@01  $FVF<f>) r) ($FVF.lookup_f $t@32@01 r)))
  :pattern (($FVF.lookup_f (as sm@60@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@32@01 r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@58@01 r)) (< (inv@58@01 r) 3)) (img@59@01 r))
      (and (img@41@01 r) (and (<= 6 (inv@40@01 r)) (< (inv@40@01 r) 9))))
    (= ($FVF.lookup_f (as sm@60@01  $FVF<f>) r) ($FVF.lookup_f $t@39@01 r)))
  :pattern (($FVF.lookup_f (as sm@60@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@39@01 r))
  :qid |qp.fvfValDef13|)))
; [eval] (forall i1: Int, i2: Int ::(i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@61@01 Int)
(declare-const i2@62@01 Int)
(push) ; 4
; [eval] (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2)
; [eval] (i1 in [6..9))
; [eval] [6..9)
(push) ; 5
; [then-branch: 32 | !(i1@61@01 in [6..9]) | live]
; [else-branch: 32 | i1@61@01 in [6..9] | live]
(push) ; 6
; [then-branch: 32 | !(i1@61@01 in [6..9])]
(assert (not (Seq_contains (Seq_range 6 9) i1@61@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 32 | i1@61@01 in [6..9]]
(assert (Seq_contains (Seq_range 6 9) i1@61@01))
; [eval] (i2 in [6..9))
; [eval] [6..9)
(push) ; 7
; [then-branch: 33 | !(i2@62@01 in [6..9]) | live]
; [else-branch: 33 | i2@62@01 in [6..9] | live]
(push) ; 8
; [then-branch: 33 | !(i2@62@01 in [6..9])]
(assert (not (Seq_contains (Seq_range 6 9) i2@62@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 33 | i2@62@01 in [6..9]]
(assert (Seq_contains (Seq_range 6 9) i2@62@01))
; [eval] i1 != i2
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 6 9) i2@62@01)
  (not (Seq_contains (Seq_range 6 9) i2@62@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 6 9) i1@61@01)
  (and
    (Seq_contains (Seq_range 6 9) i1@61@01)
    (or
      (Seq_contains (Seq_range 6 9) i2@62@01)
      (not (Seq_contains (Seq_range 6 9) i2@62@01))))))
(assert (or
  (Seq_contains (Seq_range 6 9) i1@61@01)
  (not (Seq_contains (Seq_range 6 9) i1@61@01))))
(push) ; 5
; [then-branch: 34 | i1@61@01 in [6..9] && i2@62@01 in [6..9] && i1@61@01 != i2@62@01 | live]
; [else-branch: 34 | !(i1@61@01 in [6..9] && i2@62@01 in [6..9] && i1@61@01 != i2@62@01) | live]
(push) ; 6
; [then-branch: 34 | i1@61@01 in [6..9] && i2@62@01 in [6..9] && i1@61@01 != i2@62@01]
(assert (and
  (Seq_contains (Seq_range 6 9) i1@61@01)
  (and (Seq_contains (Seq_range 6 9) i2@62@01) (not (= i1@61@01 i2@62@01)))))
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(push) ; 7
(assert (not (>= i1@61@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i1@61@01 (Seq_length xs@26@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 7
(assert (not (>= i2@62@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i2@62@01 (Seq_length xs@26@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 34 | !(i1@61@01 in [6..9] && i2@62@01 in [6..9] && i1@61@01 != i2@62@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 6 9) i1@61@01)
    (and (Seq_contains (Seq_range 6 9) i2@62@01) (not (= i1@61@01 i2@62@01))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 6 9) i1@61@01)
    (and (Seq_contains (Seq_range 6 9) i2@62@01) (not (= i1@61@01 i2@62@01))))
  (and
    (Seq_contains (Seq_range 6 9) i1@61@01)
    (Seq_contains (Seq_range 6 9) i2@62@01)
    (not (= i1@61@01 i2@62@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 6 9) i1@61@01)
      (and (Seq_contains (Seq_range 6 9) i2@62@01) (not (= i1@61@01 i2@62@01)))))
  (and
    (Seq_contains (Seq_range 6 9) i1@61@01)
    (and (Seq_contains (Seq_range 6 9) i2@62@01) (not (= i1@61@01 i2@62@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((i1@61@01 Int) (i2@62@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 6 9) i1@61@01)
      (and (Seq_contains (Seq_range 6 9) i2@62@01) (not (= i1@61@01 i2@62@01))))
    (not (= (Seq_index xs@26@01 i1@61@01) (Seq_index xs@26@01 i2@62@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@28@12@28@100|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@61@01 Int) (i2@62@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 6 9) i1@61@01)
      (and (Seq_contains (Seq_range 6 9) i2@62@01) (not (= i1@61@01 i2@62@01))))
    (not (= (Seq_index xs@26@01 i1@61@01) (Seq_index xs@26@01 i2@62@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@28@12@28@100|)))
(declare-const k@63@01 Int)
(push) ; 4
; [eval] 6 <= k && k < 9
; [eval] 6 <= k
(push) ; 5
; [then-branch: 35 | !(6 <= k@63@01) | live]
; [else-branch: 35 | 6 <= k@63@01 | live]
(push) ; 6
; [then-branch: 35 | !(6 <= k@63@01)]
(assert (not (<= 6 k@63@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 35 | 6 <= k@63@01]
(assert (<= 6 k@63@01))
; [eval] k < 9
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 6 k@63@01) (not (<= 6 k@63@01))))
(assert (and (<= 6 k@63@01) (< k@63@01 9)))
; [eval] xs[k]
(push) ; 5
(assert (not (>= k@63@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@63@01 (Seq_length xs@26@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@64@01 ($Ref) Int)
(declare-fun img@65@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@63@01 Int)) (!
  (=>
    (and (<= 6 k@63@01) (< k@63@01 9))
    (or (<= 6 k@63@01) (not (<= 6 k@63@01))))
  :pattern ((Seq_index xs@26@01 k@63@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((k1@63@01 Int) (k2@63@01 Int)) (!
  (=>
    (and
      (and (<= 6 k1@63@01) (< k1@63@01 9))
      (and (<= 6 k2@63@01) (< k2@63@01 9))
      (= (Seq_index xs@26@01 k1@63@01) (Seq_index xs@26@01 k2@63@01)))
    (= k1@63@01 k2@63@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@63@01 Int)) (!
  (=>
    (and (<= 6 k@63@01) (< k@63@01 9))
    (and
      (= (inv@64@01 (Seq_index xs@26@01 k@63@01)) k@63@01)
      (img@65@01 (Seq_index xs@26@01 k@63@01))))
  :pattern ((Seq_index xs@26@01 k@63@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@65@01 r) (and (<= 6 (inv@64@01 r)) (< (inv@64@01 r) 9)))
    (= (Seq_index xs@26@01 (inv@64@01 r)) r))
  :pattern ((inv@64@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 6 (inv@64@01 r)) (< (inv@64@01 r) 9))
      (img@65@01 r)
      (= r (Seq_index xs@26@01 (inv@64@01 r))))
    (>
      (+
        (ite
          (and (img@41@01 r) (and (<= 6 (inv@40@01 r)) (< (inv@40@01 r) 9)))
          $Perm.Write
          $Perm.No)
        (ite
          (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) 3)))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-12420|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@66@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@66@01  $FVF<f>)))
      (and (and (<= 6 (inv@64@01 r)) (< (inv@64@01 r) 9)) (img@65@01 r)))
    (=>
      (and (and (<= 6 (inv@64@01 r)) (< (inv@64@01 r) 9)) (img@65@01 r))
      (Set_in r ($FVF.domain_f (as sm@66@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@66@01  $FVF<f>))))
  :qid |qp.fvfDomDef17|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@64@01 r)) (< (inv@64@01 r) 9)) (img@65@01 r))
      (and (img@41@01 r) (and (<= 6 (inv@40@01 r)) (< (inv@40@01 r) 9))))
    (= ($FVF.lookup_f (as sm@66@01  $FVF<f>) r) ($FVF.lookup_f $t@39@01 r)))
  :pattern (($FVF.lookup_f (as sm@66@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@39@01 r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@64@01 r)) (< (inv@64@01 r) 9)) (img@65@01 r))
      (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) 3))))
    (= ($FVF.lookup_f (as sm@66@01  $FVF<f>) r) ($FVF.lookup_f $t@32@01 r)))
  :pattern (($FVF.lookup_f (as sm@66@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@32@01 r))
  :qid |qp.fvfValDef16|)))
(assert (fun02%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<f>To$Snap (as sm@60@01  $FVF<f>))
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<f>To$Snap (as sm@66@01  $FVF<f>)))))) xs@26@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((k@57@01 Int)) (!
  (=>
    (and (<= 0 k@57@01) (< k@57@01 3))
    (and
      (= (inv@58@01 (Seq_index xs@26@01 k@57@01)) k@57@01)
      (img@59@01 (Seq_index xs@26@01 k@57@01))))
  :pattern ((Seq_index xs@26@01 k@57@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@59@01 r) (and (<= 0 (inv@58@01 r)) (< (inv@58@01 r) 3)))
    (= (Seq_index xs@26@01 (inv@58@01 r)) r))
  :pattern ((inv@58@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@60@01  $FVF<f>)))
      (and (and (<= 0 (inv@58@01 r)) (< (inv@58@01 r) 3)) (img@59@01 r)))
    (=>
      (and (and (<= 0 (inv@58@01 r)) (< (inv@58@01 r) 3)) (img@59@01 r))
      (Set_in r ($FVF.domain_f (as sm@60@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@60@01  $FVF<f>))))
  :qid |qp.fvfDomDef14|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@58@01 r)) (< (inv@58@01 r) 3)) (img@59@01 r))
      (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) 3))))
    (= ($FVF.lookup_f (as sm@60@01  $FVF<f>) r) ($FVF.lookup_f $t@32@01 r)))
  :pattern (($FVF.lookup_f (as sm@60@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@32@01 r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@58@01 r)) (< (inv@58@01 r) 3)) (img@59@01 r))
      (and (img@41@01 r) (and (<= 6 (inv@40@01 r)) (< (inv@40@01 r) 9))))
    (= ($FVF.lookup_f (as sm@60@01  $FVF<f>) r) ($FVF.lookup_f $t@39@01 r)))
  :pattern (($FVF.lookup_f (as sm@60@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@39@01 r))
  :qid |qp.fvfValDef13|)))
(assert (forall ((k@63@01 Int)) (!
  (=>
    (and (<= 6 k@63@01) (< k@63@01 9))
    (and
      (= (inv@64@01 (Seq_index xs@26@01 k@63@01)) k@63@01)
      (img@65@01 (Seq_index xs@26@01 k@63@01))))
  :pattern ((Seq_index xs@26@01 k@63@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@65@01 r) (and (<= 6 (inv@64@01 r)) (< (inv@64@01 r) 9)))
    (= (Seq_index xs@26@01 (inv@64@01 r)) r))
  :pattern ((inv@64@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@66@01  $FVF<f>)))
      (and (and (<= 6 (inv@64@01 r)) (< (inv@64@01 r) 9)) (img@65@01 r)))
    (=>
      (and (and (<= 6 (inv@64@01 r)) (< (inv@64@01 r) 9)) (img@65@01 r))
      (Set_in r ($FVF.domain_f (as sm@66@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@66@01  $FVF<f>))))
  :qid |qp.fvfDomDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@64@01 r)) (< (inv@64@01 r) 9)) (img@65@01 r))
      (and (img@41@01 r) (and (<= 6 (inv@40@01 r)) (< (inv@40@01 r) 9))))
    (= ($FVF.lookup_f (as sm@66@01  $FVF<f>) r) ($FVF.lookup_f $t@39@01 r)))
  :pattern (($FVF.lookup_f (as sm@66@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@39@01 r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@64@01 r)) (< (inv@64@01 r) 9)) (img@65@01 r))
      (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) 3))))
    (= ($FVF.lookup_f (as sm@66@01  $FVF<f>) r) ($FVF.lookup_f $t@32@01 r)))
  :pattern (($FVF.lookup_f (as sm@66@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@32@01 r))
  :qid |qp.fvfValDef16|)))
(assert (and
  (forall ((i1@55@01 Int) (i2@56@01 Int)) (!
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@55@01)
        (and (Seq_contains (Seq_range 0 3) i2@56@01) (not (= i1@55@01 i2@56@01))))
      (not (= (Seq_index xs@26@01 i1@55@01) (Seq_index xs@26@01 i2@56@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@26@12@26@100|))
  (forall ((k@57@01 Int)) (!
    (=>
      (and (<= 0 k@57@01) (< k@57@01 3))
      (or (<= 0 k@57@01) (not (<= 0 k@57@01))))
    :pattern ((Seq_index xs@26@01 k@57@01))
    :qid |f-aux|))
  (forall ((i1@61@01 Int) (i2@62@01 Int)) (!
    (=>
      (and
        (Seq_contains (Seq_range 6 9) i1@61@01)
        (and (Seq_contains (Seq_range 6 9) i2@62@01) (not (= i1@61@01 i2@62@01))))
      (not (= (Seq_index xs@26@01 i1@61@01) (Seq_index xs@26@01 i2@62@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@28@12@28@100|))
  (forall ((k@63@01 Int)) (!
    (=>
      (and (<= 6 k@63@01) (< k@63@01 9))
      (or (<= 6 k@63@01) (not (<= 6 k@63@01))))
    :pattern ((Seq_index xs@26@01 k@63@01))
    :qid |f-aux|))
  (fun02%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<f>To$Snap (as sm@60@01  $FVF<f>))
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<f>To$Snap (as sm@66@01  $FVF<f>)))))) xs@26@01)))
(push) ; 3
(assert (not (=
  10
  (fun02 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<f>To$Snap (as sm@60@01  $FVF<f>))
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<f>To$Snap (as sm@66@01  $FVF<f>)))))) xs@26@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  10
  (fun02 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<f>To$Snap (as sm@60@01  $FVF<f>))
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<f>To$Snap (as sm@66@01  $FVF<f>)))))) xs@26@01)))
; [exec]
; assert false
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@26@01 k@31@01) (Seq_index xs@26@01 k@38@01))
    (=
      (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) 3)))
      (and (img@41@01 r) (and (<= 6 (inv@40@01 r)) (< (inv@40@01 r) 9)))))
  
  :qid |quant-u-12421|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@67@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) 3)))
    (= ($FVF.lookup_f (as sm@67@01  $FVF<f>) r) ($FVF.lookup_f $t@32@01 r)))
  :pattern (($FVF.lookup_f (as sm@67@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@32@01 r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@41@01 r) (and (<= 6 (inv@40@01 r)) (< (inv@40@01 r) 9)))
    (= ($FVF.lookup_f (as sm@67@01  $FVF<f>) r) ($FVF.lookup_f $t@39@01 r)))
  :pattern (($FVF.lookup_f (as sm@67@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@39@01 r))
  :qid |qp.fvfValDef19|)))
(declare-const pm@68@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@68@01  $FPM) r)
    (+
      (ite
        (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite
        (and (img@41@01 r) (and (<= 6 (inv@40@01 r)) (< (inv@40@01 r) 9)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@68@01  $FPM) r))
  :qid |qp.resPrmSumDef20|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@68@01  $FPM) r) $Perm.Write)
  :pattern ((inv@33@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@68@01  $FPM) r) $Perm.Write)
  :pattern ((inv@40@01 r))
  :qid |qp-fld-prm-bnd|)))
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
; ---------- test03 ----------
(declare-const xs@69@01 Seq<$Ref>)
(declare-const xs@70@01 Seq<$Ref>)
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
; inhale |xs| > 10
(declare-const $t@71@01 $Snap)
(assert (= $t@71@01 $Snap.unit))
; [eval] |xs| > 10
; [eval] |xs|
(assert (> (Seq_length xs@70@01) 10))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i1: Int, i2: Int ::
;     { (i1 in [0..3)), (i2 in [0..3)) }
;     { (i1 in [0..3)), xs[i2] }
;     { (i2 in [0..3)), xs[i1] }
;     { xs[i1], xs[i2] }
;     (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const $t@72@01 $Snap)
(assert (= $t@72@01 $Snap.unit))
; [eval] (forall i1: Int, i2: Int :: { (i1 in [0..3)), (i2 in [0..3)) } { (i1 in [0..3)), xs[i2] } { (i2 in [0..3)), xs[i1] } { xs[i1], xs[i2] } (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@73@01 Int)
(declare-const i2@74@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2)
; [eval] (i1 in [0..3))
; [eval] [0..3)
(push) ; 4
; [then-branch: 36 | !(i1@73@01 in [0..3]) | live]
; [else-branch: 36 | i1@73@01 in [0..3] | live]
(push) ; 5
; [then-branch: 36 | !(i1@73@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i1@73@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 36 | i1@73@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i1@73@01))
; [eval] (i2 in [0..3))
; [eval] [0..3)
(push) ; 6
; [then-branch: 37 | !(i2@74@01 in [0..3]) | live]
; [else-branch: 37 | i2@74@01 in [0..3] | live]
(push) ; 7
; [then-branch: 37 | !(i2@74@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i2@74@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 37 | i2@74@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i2@74@01))
; [eval] i1 != i2
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 3) i2@74@01)
  (not (Seq_contains (Seq_range 0 3) i2@74@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 3) i1@73@01)
  (and
    (Seq_contains (Seq_range 0 3) i1@73@01)
    (or
      (Seq_contains (Seq_range 0 3) i2@74@01)
      (not (Seq_contains (Seq_range 0 3) i2@74@01))))))
(assert (or
  (Seq_contains (Seq_range 0 3) i1@73@01)
  (not (Seq_contains (Seq_range 0 3) i1@73@01))))
(push) ; 4
; [then-branch: 38 | i1@73@01 in [0..3] && i2@74@01 in [0..3] && i1@73@01 != i2@74@01 | live]
; [else-branch: 38 | !(i1@73@01 in [0..3] && i2@74@01 in [0..3] && i1@73@01 != i2@74@01) | live]
(push) ; 5
; [then-branch: 38 | i1@73@01 in [0..3] && i2@74@01 in [0..3] && i1@73@01 != i2@74@01]
(assert (and
  (Seq_contains (Seq_range 0 3) i1@73@01)
  (and (Seq_contains (Seq_range 0 3) i2@74@01) (not (= i1@73@01 i2@74@01)))))
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(push) ; 6
(assert (not (>= i1@73@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i1@73@01 (Seq_length xs@70@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 6
(assert (not (>= i2@74@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i2@74@01 (Seq_length xs@70@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 38 | !(i1@73@01 in [0..3] && i2@74@01 in [0..3] && i1@73@01 != i2@74@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 3) i1@73@01)
    (and (Seq_contains (Seq_range 0 3) i2@74@01) (not (= i1@73@01 i2@74@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 3) i1@73@01)
    (and (Seq_contains (Seq_range 0 3) i2@74@01) (not (= i1@73@01 i2@74@01))))
  (and
    (Seq_contains (Seq_range 0 3) i1@73@01)
    (Seq_contains (Seq_range 0 3) i2@74@01)
    (not (= i1@73@01 i2@74@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 3) i1@73@01)
      (and (Seq_contains (Seq_range 0 3) i2@74@01) (not (= i1@73@01 i2@74@01)))))
  (and
    (Seq_contains (Seq_range 0 3) i1@73@01)
    (and (Seq_contains (Seq_range 0 3) i2@74@01) (not (= i1@73@01 i2@74@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i1@73@01 Int) (i2@74@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@73@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@73@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@74@01)
          (not (Seq_contains (Seq_range 0 3) i2@74@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@73@01)
      (not (Seq_contains (Seq_range 0 3) i1@73@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@73@01)
        (and (Seq_contains (Seq_range 0 3) i2@74@01) (not (= i1@73@01 i2@74@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@73@01)
        (Seq_contains (Seq_range 0 3) i2@74@01)
        (not (= i1@73@01 i2@74@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@73@01)
          (and
            (Seq_contains (Seq_range 0 3) i2@74@01)
            (not (= i1@73@01 i2@74@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@73@01)
        (and (Seq_contains (Seq_range 0 3) i2@74@01) (not (= i1@73@01 i2@74@01))))))
  :pattern ((Seq_contains (Seq_range 0 3) i1@73@01) (Seq_contains
    (Seq_range 0 3)
    i2@74@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i1@73@01) (Seq_contains_trigger
    (Seq_range 0 3)
    i2@74@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@55@10@55@98-aux|)))
(assert (forall ((i1@73@01 Int) (i2@74@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@73@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@73@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@74@01)
          (not (Seq_contains (Seq_range 0 3) i2@74@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@73@01)
      (not (Seq_contains (Seq_range 0 3) i1@73@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@73@01)
        (and (Seq_contains (Seq_range 0 3) i2@74@01) (not (= i1@73@01 i2@74@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@73@01)
        (Seq_contains (Seq_range 0 3) i2@74@01)
        (not (= i1@73@01 i2@74@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@73@01)
          (and
            (Seq_contains (Seq_range 0 3) i2@74@01)
            (not (= i1@73@01 i2@74@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@73@01)
        (and (Seq_contains (Seq_range 0 3) i2@74@01) (not (= i1@73@01 i2@74@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i1@73@01) (Seq_contains_trigger
    (Seq_range 0 3)
    i2@74@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@55@10@55@98-aux|)))
(assert (forall ((i1@73@01 Int) (i2@74@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@73@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@73@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@74@01)
          (not (Seq_contains (Seq_range 0 3) i2@74@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@73@01)
      (not (Seq_contains (Seq_range 0 3) i1@73@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@73@01)
        (and (Seq_contains (Seq_range 0 3) i2@74@01) (not (= i1@73@01 i2@74@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@73@01)
        (Seq_contains (Seq_range 0 3) i2@74@01)
        (not (= i1@73@01 i2@74@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@73@01)
          (and
            (Seq_contains (Seq_range 0 3) i2@74@01)
            (not (= i1@73@01 i2@74@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@73@01)
        (and (Seq_contains (Seq_range 0 3) i2@74@01) (not (= i1@73@01 i2@74@01))))))
  :pattern ((Seq_contains (Seq_range 0 3) i1@73@01) (Seq_index xs@70@01 i2@74@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i1@73@01) (Seq_index
    xs@70@01
    i2@74@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@55@10@55@98-aux|)))
(assert (forall ((i1@73@01 Int) (i2@74@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@73@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@73@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@74@01)
          (not (Seq_contains (Seq_range 0 3) i2@74@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@73@01)
      (not (Seq_contains (Seq_range 0 3) i1@73@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@73@01)
        (and (Seq_contains (Seq_range 0 3) i2@74@01) (not (= i1@73@01 i2@74@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@73@01)
        (Seq_contains (Seq_range 0 3) i2@74@01)
        (not (= i1@73@01 i2@74@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@73@01)
          (and
            (Seq_contains (Seq_range 0 3) i2@74@01)
            (not (= i1@73@01 i2@74@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@73@01)
        (and (Seq_contains (Seq_range 0 3) i2@74@01) (not (= i1@73@01 i2@74@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i1@73@01) (Seq_index
    xs@70@01
    i2@74@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@55@10@55@98-aux|)))
(assert (forall ((i1@73@01 Int) (i2@74@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@73@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@73@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@74@01)
          (not (Seq_contains (Seq_range 0 3) i2@74@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@73@01)
      (not (Seq_contains (Seq_range 0 3) i1@73@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@73@01)
        (and (Seq_contains (Seq_range 0 3) i2@74@01) (not (= i1@73@01 i2@74@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@73@01)
        (Seq_contains (Seq_range 0 3) i2@74@01)
        (not (= i1@73@01 i2@74@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@73@01)
          (and
            (Seq_contains (Seq_range 0 3) i2@74@01)
            (not (= i1@73@01 i2@74@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@73@01)
        (and (Seq_contains (Seq_range 0 3) i2@74@01) (not (= i1@73@01 i2@74@01))))))
  :pattern ((Seq_contains (Seq_range 0 3) i2@74@01) (Seq_index xs@70@01 i1@73@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i2@74@01) (Seq_index
    xs@70@01
    i1@73@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@55@10@55@98-aux|)))
(assert (forall ((i1@73@01 Int) (i2@74@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@73@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@73@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@74@01)
          (not (Seq_contains (Seq_range 0 3) i2@74@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@73@01)
      (not (Seq_contains (Seq_range 0 3) i1@73@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@73@01)
        (and (Seq_contains (Seq_range 0 3) i2@74@01) (not (= i1@73@01 i2@74@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@73@01)
        (Seq_contains (Seq_range 0 3) i2@74@01)
        (not (= i1@73@01 i2@74@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@73@01)
          (and
            (Seq_contains (Seq_range 0 3) i2@74@01)
            (not (= i1@73@01 i2@74@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@73@01)
        (and (Seq_contains (Seq_range 0 3) i2@74@01) (not (= i1@73@01 i2@74@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i2@74@01) (Seq_index
    xs@70@01
    i1@73@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@55@10@55@98-aux|)))
(assert (forall ((i1@73@01 Int) (i2@74@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@73@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@73@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@74@01)
          (not (Seq_contains (Seq_range 0 3) i2@74@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@73@01)
      (not (Seq_contains (Seq_range 0 3) i1@73@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@73@01)
        (and (Seq_contains (Seq_range 0 3) i2@74@01) (not (= i1@73@01 i2@74@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@73@01)
        (Seq_contains (Seq_range 0 3) i2@74@01)
        (not (= i1@73@01 i2@74@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@73@01)
          (and
            (Seq_contains (Seq_range 0 3) i2@74@01)
            (not (= i1@73@01 i2@74@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@73@01)
        (and (Seq_contains (Seq_range 0 3) i2@74@01) (not (= i1@73@01 i2@74@01))))))
  :pattern ((Seq_index xs@70@01 i1@73@01) (Seq_index xs@70@01 i2@74@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@55@10@55@98-aux|)))
(assert (forall ((i1@73@01 Int) (i2@74@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@73@01)
      (and (Seq_contains (Seq_range 0 3) i2@74@01) (not (= i1@73@01 i2@74@01))))
    (not (= (Seq_index xs@70@01 i1@73@01) (Seq_index xs@70@01 i2@74@01))))
  :pattern ((Seq_contains (Seq_range 0 3) i1@73@01) (Seq_contains
    (Seq_range 0 3)
    i2@74@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i1@73@01) (Seq_contains_trigger
    (Seq_range 0 3)
    i2@74@01))
  :pattern ((Seq_contains (Seq_range 0 3) i1@73@01) (Seq_index xs@70@01 i2@74@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i1@73@01) (Seq_index
    xs@70@01
    i2@74@01))
  :pattern ((Seq_contains (Seq_range 0 3) i2@74@01) (Seq_index xs@70@01 i1@73@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i2@74@01) (Seq_index
    xs@70@01
    i1@73@01))
  :pattern ((Seq_index xs@70@01 i1@73@01) (Seq_index xs@70@01 i2@74@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@55@10@55@98|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall k: Int ::0 <= k && k < 3 ==> acc(xs[k].f, write))
(declare-const k@75@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= k && k < 3
; [eval] 0 <= k
(push) ; 4
; [then-branch: 39 | !(0 <= k@75@01) | live]
; [else-branch: 39 | 0 <= k@75@01 | live]
(push) ; 5
; [then-branch: 39 | !(0 <= k@75@01)]
(assert (not (<= 0 k@75@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 39 | 0 <= k@75@01]
(assert (<= 0 k@75@01))
; [eval] k < 3
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@75@01) (not (<= 0 k@75@01))))
(assert (and (<= 0 k@75@01) (< k@75@01 3)))
; [eval] xs[k]
(push) ; 4
(assert (not (>= k@75@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< k@75@01 (Seq_length xs@70@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-const $t@76@01 $FVF<f>)
(declare-fun inv@77@01 ($Ref) Int)
(declare-fun img@78@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@75@01 Int)) (!
  (=>
    (and (<= 0 k@75@01) (< k@75@01 3))
    (or (<= 0 k@75@01) (not (<= 0 k@75@01))))
  :pattern ((Seq_index xs@70@01 k@75@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((k1@75@01 Int) (k2@75@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@75@01) (< k1@75@01 3))
      (and (<= 0 k2@75@01) (< k2@75@01 3))
      (= (Seq_index xs@70@01 k1@75@01) (Seq_index xs@70@01 k2@75@01)))
    (= k1@75@01 k2@75@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@75@01 Int)) (!
  (=>
    (and (<= 0 k@75@01) (< k@75@01 3))
    (and
      (= (inv@77@01 (Seq_index xs@70@01 k@75@01)) k@75@01)
      (img@78@01 (Seq_index xs@70@01 k@75@01))))
  :pattern ((Seq_index xs@70@01 k@75@01))
  :qid |quant-u-12423|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@78@01 r) (and (<= 0 (inv@77@01 r)) (< (inv@77@01 r) 3)))
    (= (Seq_index xs@70@01 (inv@77@01 r)) r))
  :pattern ((inv@77@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((k@75@01 Int)) (!
  (=>
    (and (<= 0 k@75@01) (< k@75@01 3))
    (not (= (Seq_index xs@70@01 k@75@01) $Ref.null)))
  :pattern ((Seq_index xs@70@01 k@75@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i1: Int, i2: Int ::
;     { (i1 in [6..9)), (i2 in [6..9)) }
;     { (i1 in [6..9)), xs[i2] }
;     { (i2 in [6..9)), xs[i1] }
;     { xs[i1], xs[i2] }
;     (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const $t@79@01 $Snap)
(assert (= $t@79@01 $Snap.unit))
; [eval] (forall i1: Int, i2: Int :: { (i1 in [6..9)), (i2 in [6..9)) } { (i1 in [6..9)), xs[i2] } { (i2 in [6..9)), xs[i1] } { xs[i1], xs[i2] } (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@80@01 Int)
(declare-const i2@81@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2)
; [eval] (i1 in [6..9))
; [eval] [6..9)
(push) ; 4
; [then-branch: 40 | !(i1@80@01 in [6..9]) | live]
; [else-branch: 40 | i1@80@01 in [6..9] | live]
(push) ; 5
; [then-branch: 40 | !(i1@80@01 in [6..9])]
(assert (not (Seq_contains (Seq_range 6 9) i1@80@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 40 | i1@80@01 in [6..9]]
(assert (Seq_contains (Seq_range 6 9) i1@80@01))
; [eval] (i2 in [6..9))
; [eval] [6..9)
(push) ; 6
; [then-branch: 41 | !(i2@81@01 in [6..9]) | live]
; [else-branch: 41 | i2@81@01 in [6..9] | live]
(push) ; 7
; [then-branch: 41 | !(i2@81@01 in [6..9])]
(assert (not (Seq_contains (Seq_range 6 9) i2@81@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 41 | i2@81@01 in [6..9]]
(assert (Seq_contains (Seq_range 6 9) i2@81@01))
; [eval] i1 != i2
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 6 9) i2@81@01)
  (not (Seq_contains (Seq_range 6 9) i2@81@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 6 9) i1@80@01)
  (and
    (Seq_contains (Seq_range 6 9) i1@80@01)
    (or
      (Seq_contains (Seq_range 6 9) i2@81@01)
      (not (Seq_contains (Seq_range 6 9) i2@81@01))))))
(assert (or
  (Seq_contains (Seq_range 6 9) i1@80@01)
  (not (Seq_contains (Seq_range 6 9) i1@80@01))))
(push) ; 4
; [then-branch: 42 | i1@80@01 in [6..9] && i2@81@01 in [6..9] && i1@80@01 != i2@81@01 | live]
; [else-branch: 42 | !(i1@80@01 in [6..9] && i2@81@01 in [6..9] && i1@80@01 != i2@81@01) | live]
(push) ; 5
; [then-branch: 42 | i1@80@01 in [6..9] && i2@81@01 in [6..9] && i1@80@01 != i2@81@01]
(assert (and
  (Seq_contains (Seq_range 6 9) i1@80@01)
  (and (Seq_contains (Seq_range 6 9) i2@81@01) (not (= i1@80@01 i2@81@01)))))
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(push) ; 6
(assert (not (>= i1@80@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i1@80@01 (Seq_length xs@70@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 6
(assert (not (>= i2@81@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i2@81@01 (Seq_length xs@70@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 42 | !(i1@80@01 in [6..9] && i2@81@01 in [6..9] && i1@80@01 != i2@81@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 6 9) i1@80@01)
    (and (Seq_contains (Seq_range 6 9) i2@81@01) (not (= i1@80@01 i2@81@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 6 9) i1@80@01)
    (and (Seq_contains (Seq_range 6 9) i2@81@01) (not (= i1@80@01 i2@81@01))))
  (and
    (Seq_contains (Seq_range 6 9) i1@80@01)
    (Seq_contains (Seq_range 6 9) i2@81@01)
    (not (= i1@80@01 i2@81@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 6 9) i1@80@01)
      (and (Seq_contains (Seq_range 6 9) i2@81@01) (not (= i1@80@01 i2@81@01)))))
  (and
    (Seq_contains (Seq_range 6 9) i1@80@01)
    (and (Seq_contains (Seq_range 6 9) i2@81@01) (not (= i1@80@01 i2@81@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i1@80@01 Int) (i2@81@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 6 9) i1@80@01)
      (and
        (Seq_contains (Seq_range 6 9) i1@80@01)
        (or
          (Seq_contains (Seq_range 6 9) i2@81@01)
          (not (Seq_contains (Seq_range 6 9) i2@81@01)))))
    (or
      (Seq_contains (Seq_range 6 9) i1@80@01)
      (not (Seq_contains (Seq_range 6 9) i1@80@01)))
    (=>
      (and
        (Seq_contains (Seq_range 6 9) i1@80@01)
        (and (Seq_contains (Seq_range 6 9) i2@81@01) (not (= i1@80@01 i2@81@01))))
      (and
        (Seq_contains (Seq_range 6 9) i1@80@01)
        (Seq_contains (Seq_range 6 9) i2@81@01)
        (not (= i1@80@01 i2@81@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 6 9) i1@80@01)
          (and
            (Seq_contains (Seq_range 6 9) i2@81@01)
            (not (= i1@80@01 i2@81@01)))))
      (and
        (Seq_contains (Seq_range 6 9) i1@80@01)
        (and (Seq_contains (Seq_range 6 9) i2@81@01) (not (= i1@80@01 i2@81@01))))))
  :pattern ((Seq_contains (Seq_range 6 9) i1@80@01) (Seq_contains
    (Seq_range 6 9)
    i2@81@01))
  :pattern ((Seq_contains_trigger (Seq_range 6 9) i1@80@01) (Seq_contains_trigger
    (Seq_range 6 9)
    i2@81@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@57@10@57@98-aux|)))
(assert (forall ((i1@80@01 Int) (i2@81@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 6 9) i1@80@01)
      (and
        (Seq_contains (Seq_range 6 9) i1@80@01)
        (or
          (Seq_contains (Seq_range 6 9) i2@81@01)
          (not (Seq_contains (Seq_range 6 9) i2@81@01)))))
    (or
      (Seq_contains (Seq_range 6 9) i1@80@01)
      (not (Seq_contains (Seq_range 6 9) i1@80@01)))
    (=>
      (and
        (Seq_contains (Seq_range 6 9) i1@80@01)
        (and (Seq_contains (Seq_range 6 9) i2@81@01) (not (= i1@80@01 i2@81@01))))
      (and
        (Seq_contains (Seq_range 6 9) i1@80@01)
        (Seq_contains (Seq_range 6 9) i2@81@01)
        (not (= i1@80@01 i2@81@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 6 9) i1@80@01)
          (and
            (Seq_contains (Seq_range 6 9) i2@81@01)
            (not (= i1@80@01 i2@81@01)))))
      (and
        (Seq_contains (Seq_range 6 9) i1@80@01)
        (and (Seq_contains (Seq_range 6 9) i2@81@01) (not (= i1@80@01 i2@81@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 6 9) i1@80@01) (Seq_contains_trigger
    (Seq_range 6 9)
    i2@81@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@57@10@57@98-aux|)))
(assert (forall ((i1@80@01 Int) (i2@81@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 6 9) i1@80@01)
      (and
        (Seq_contains (Seq_range 6 9) i1@80@01)
        (or
          (Seq_contains (Seq_range 6 9) i2@81@01)
          (not (Seq_contains (Seq_range 6 9) i2@81@01)))))
    (or
      (Seq_contains (Seq_range 6 9) i1@80@01)
      (not (Seq_contains (Seq_range 6 9) i1@80@01)))
    (=>
      (and
        (Seq_contains (Seq_range 6 9) i1@80@01)
        (and (Seq_contains (Seq_range 6 9) i2@81@01) (not (= i1@80@01 i2@81@01))))
      (and
        (Seq_contains (Seq_range 6 9) i1@80@01)
        (Seq_contains (Seq_range 6 9) i2@81@01)
        (not (= i1@80@01 i2@81@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 6 9) i1@80@01)
          (and
            (Seq_contains (Seq_range 6 9) i2@81@01)
            (not (= i1@80@01 i2@81@01)))))
      (and
        (Seq_contains (Seq_range 6 9) i1@80@01)
        (and (Seq_contains (Seq_range 6 9) i2@81@01) (not (= i1@80@01 i2@81@01))))))
  :pattern ((Seq_contains (Seq_range 6 9) i1@80@01) (Seq_index xs@70@01 i2@81@01))
  :pattern ((Seq_contains_trigger (Seq_range 6 9) i1@80@01) (Seq_index
    xs@70@01
    i2@81@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@57@10@57@98-aux|)))
(assert (forall ((i1@80@01 Int) (i2@81@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 6 9) i1@80@01)
      (and
        (Seq_contains (Seq_range 6 9) i1@80@01)
        (or
          (Seq_contains (Seq_range 6 9) i2@81@01)
          (not (Seq_contains (Seq_range 6 9) i2@81@01)))))
    (or
      (Seq_contains (Seq_range 6 9) i1@80@01)
      (not (Seq_contains (Seq_range 6 9) i1@80@01)))
    (=>
      (and
        (Seq_contains (Seq_range 6 9) i1@80@01)
        (and (Seq_contains (Seq_range 6 9) i2@81@01) (not (= i1@80@01 i2@81@01))))
      (and
        (Seq_contains (Seq_range 6 9) i1@80@01)
        (Seq_contains (Seq_range 6 9) i2@81@01)
        (not (= i1@80@01 i2@81@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 6 9) i1@80@01)
          (and
            (Seq_contains (Seq_range 6 9) i2@81@01)
            (not (= i1@80@01 i2@81@01)))))
      (and
        (Seq_contains (Seq_range 6 9) i1@80@01)
        (and (Seq_contains (Seq_range 6 9) i2@81@01) (not (= i1@80@01 i2@81@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 6 9) i1@80@01) (Seq_index
    xs@70@01
    i2@81@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@57@10@57@98-aux|)))
(assert (forall ((i1@80@01 Int) (i2@81@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 6 9) i1@80@01)
      (and
        (Seq_contains (Seq_range 6 9) i1@80@01)
        (or
          (Seq_contains (Seq_range 6 9) i2@81@01)
          (not (Seq_contains (Seq_range 6 9) i2@81@01)))))
    (or
      (Seq_contains (Seq_range 6 9) i1@80@01)
      (not (Seq_contains (Seq_range 6 9) i1@80@01)))
    (=>
      (and
        (Seq_contains (Seq_range 6 9) i1@80@01)
        (and (Seq_contains (Seq_range 6 9) i2@81@01) (not (= i1@80@01 i2@81@01))))
      (and
        (Seq_contains (Seq_range 6 9) i1@80@01)
        (Seq_contains (Seq_range 6 9) i2@81@01)
        (not (= i1@80@01 i2@81@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 6 9) i1@80@01)
          (and
            (Seq_contains (Seq_range 6 9) i2@81@01)
            (not (= i1@80@01 i2@81@01)))))
      (and
        (Seq_contains (Seq_range 6 9) i1@80@01)
        (and (Seq_contains (Seq_range 6 9) i2@81@01) (not (= i1@80@01 i2@81@01))))))
  :pattern ((Seq_contains (Seq_range 6 9) i2@81@01) (Seq_index xs@70@01 i1@80@01))
  :pattern ((Seq_contains_trigger (Seq_range 6 9) i2@81@01) (Seq_index
    xs@70@01
    i1@80@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@57@10@57@98-aux|)))
(assert (forall ((i1@80@01 Int) (i2@81@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 6 9) i1@80@01)
      (and
        (Seq_contains (Seq_range 6 9) i1@80@01)
        (or
          (Seq_contains (Seq_range 6 9) i2@81@01)
          (not (Seq_contains (Seq_range 6 9) i2@81@01)))))
    (or
      (Seq_contains (Seq_range 6 9) i1@80@01)
      (not (Seq_contains (Seq_range 6 9) i1@80@01)))
    (=>
      (and
        (Seq_contains (Seq_range 6 9) i1@80@01)
        (and (Seq_contains (Seq_range 6 9) i2@81@01) (not (= i1@80@01 i2@81@01))))
      (and
        (Seq_contains (Seq_range 6 9) i1@80@01)
        (Seq_contains (Seq_range 6 9) i2@81@01)
        (not (= i1@80@01 i2@81@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 6 9) i1@80@01)
          (and
            (Seq_contains (Seq_range 6 9) i2@81@01)
            (not (= i1@80@01 i2@81@01)))))
      (and
        (Seq_contains (Seq_range 6 9) i1@80@01)
        (and (Seq_contains (Seq_range 6 9) i2@81@01) (not (= i1@80@01 i2@81@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 6 9) i2@81@01) (Seq_index
    xs@70@01
    i1@80@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@57@10@57@98-aux|)))
(assert (forall ((i1@80@01 Int) (i2@81@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 6 9) i1@80@01)
      (and
        (Seq_contains (Seq_range 6 9) i1@80@01)
        (or
          (Seq_contains (Seq_range 6 9) i2@81@01)
          (not (Seq_contains (Seq_range 6 9) i2@81@01)))))
    (or
      (Seq_contains (Seq_range 6 9) i1@80@01)
      (not (Seq_contains (Seq_range 6 9) i1@80@01)))
    (=>
      (and
        (Seq_contains (Seq_range 6 9) i1@80@01)
        (and (Seq_contains (Seq_range 6 9) i2@81@01) (not (= i1@80@01 i2@81@01))))
      (and
        (Seq_contains (Seq_range 6 9) i1@80@01)
        (Seq_contains (Seq_range 6 9) i2@81@01)
        (not (= i1@80@01 i2@81@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 6 9) i1@80@01)
          (and
            (Seq_contains (Seq_range 6 9) i2@81@01)
            (not (= i1@80@01 i2@81@01)))))
      (and
        (Seq_contains (Seq_range 6 9) i1@80@01)
        (and (Seq_contains (Seq_range 6 9) i2@81@01) (not (= i1@80@01 i2@81@01))))))
  :pattern ((Seq_index xs@70@01 i1@80@01) (Seq_index xs@70@01 i2@81@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@57@10@57@98-aux|)))
(assert (forall ((i1@80@01 Int) (i2@81@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 6 9) i1@80@01)
      (and (Seq_contains (Seq_range 6 9) i2@81@01) (not (= i1@80@01 i2@81@01))))
    (not (= (Seq_index xs@70@01 i1@80@01) (Seq_index xs@70@01 i2@81@01))))
  :pattern ((Seq_contains (Seq_range 6 9) i1@80@01) (Seq_contains
    (Seq_range 6 9)
    i2@81@01))
  :pattern ((Seq_contains_trigger (Seq_range 6 9) i1@80@01) (Seq_contains_trigger
    (Seq_range 6 9)
    i2@81@01))
  :pattern ((Seq_contains (Seq_range 6 9) i1@80@01) (Seq_index xs@70@01 i2@81@01))
  :pattern ((Seq_contains_trigger (Seq_range 6 9) i1@80@01) (Seq_index
    xs@70@01
    i2@81@01))
  :pattern ((Seq_contains (Seq_range 6 9) i2@81@01) (Seq_index xs@70@01 i1@80@01))
  :pattern ((Seq_contains_trigger (Seq_range 6 9) i2@81@01) (Seq_index
    xs@70@01
    i1@80@01))
  :pattern ((Seq_index xs@70@01 i1@80@01) (Seq_index xs@70@01 i2@81@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@57@10@57@98|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall k: Int ::6 <= k && k < 9 ==> acc(xs[k].f, write))
(declare-const k@82@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 6 <= k && k < 9
; [eval] 6 <= k
(push) ; 4
; [then-branch: 43 | !(6 <= k@82@01) | live]
; [else-branch: 43 | 6 <= k@82@01 | live]
(push) ; 5
; [then-branch: 43 | !(6 <= k@82@01)]
(assert (not (<= 6 k@82@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 43 | 6 <= k@82@01]
(assert (<= 6 k@82@01))
; [eval] k < 9
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 6 k@82@01) (not (<= 6 k@82@01))))
(assert (and (<= 6 k@82@01) (< k@82@01 9)))
; [eval] xs[k]
(push) ; 4
(assert (not (>= k@82@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< k@82@01 (Seq_length xs@70@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-const $t@83@01 $FVF<f>)
(declare-fun inv@84@01 ($Ref) Int)
(declare-fun img@85@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@82@01 Int)) (!
  (=>
    (and (<= 6 k@82@01) (< k@82@01 9))
    (or (<= 6 k@82@01) (not (<= 6 k@82@01))))
  :pattern ((Seq_index xs@70@01 k@82@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((k1@82@01 Int) (k2@82@01 Int)) (!
  (=>
    (and
      (and (<= 6 k1@82@01) (< k1@82@01 9))
      (and (<= 6 k2@82@01) (< k2@82@01 9))
      (= (Seq_index xs@70@01 k1@82@01) (Seq_index xs@70@01 k2@82@01)))
    (= k1@82@01 k2@82@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@82@01 Int)) (!
  (=>
    (and (<= 6 k@82@01) (< k@82@01 9))
    (and
      (= (inv@84@01 (Seq_index xs@70@01 k@82@01)) k@82@01)
      (img@85@01 (Seq_index xs@70@01 k@82@01))))
  :pattern ((Seq_index xs@70@01 k@82@01))
  :qid |quant-u-12425|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@85@01 r) (and (<= 6 (inv@84@01 r)) (< (inv@84@01 r) 9)))
    (= (Seq_index xs@70@01 (inv@84@01 r)) r))
  :pattern ((inv@84@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((k@82@01 Int)) (!
  (=>
    (and (<= 6 k@82@01) (< k@82@01 9))
    (not (= (Seq_index xs@70@01 k@82@01) $Ref.null)))
  :pattern ((Seq_index xs@70@01 k@82@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@70@01 k@82@01) (Seq_index xs@70@01 k@75@01))
    (=
      (and (img@85@01 r) (and (<= 6 (inv@84@01 r)) (< (inv@84@01 r) 9)))
      (and (img@78@01 r) (and (<= 0 (inv@77@01 r)) (< (inv@77@01 r) 3)))))
  
  :qid |quant-u-12426|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 10 == fun03(xs)
(declare-const $t@86@01 $Snap)
(assert (= $t@86@01 $Snap.unit))
; [eval] 10 == fun03(xs)
; [eval] fun03(xs)
(set-option :timeout 0)
(push) ; 3
; [eval] |xs| > 10
; [eval] |xs|
; [eval] (forall i1: Int, i2: Int ::(i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@87@01 Int)
(declare-const i2@88@01 Int)
(push) ; 4
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2)
; [eval] (i1 in [0..3))
; [eval] [0..3)
(push) ; 5
; [then-branch: 44 | !(i1@87@01 in [0..3]) | live]
; [else-branch: 44 | i1@87@01 in [0..3] | live]
(push) ; 6
; [then-branch: 44 | !(i1@87@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i1@87@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 44 | i1@87@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i1@87@01))
; [eval] (i2 in [0..3))
; [eval] [0..3)
(push) ; 7
; [then-branch: 45 | !(i2@88@01 in [0..3]) | live]
; [else-branch: 45 | i2@88@01 in [0..3] | live]
(push) ; 8
; [then-branch: 45 | !(i2@88@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i2@88@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 45 | i2@88@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i2@88@01))
; [eval] i1 != i2
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 3) i2@88@01)
  (not (Seq_contains (Seq_range 0 3) i2@88@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 3) i1@87@01)
  (and
    (Seq_contains (Seq_range 0 3) i1@87@01)
    (or
      (Seq_contains (Seq_range 0 3) i2@88@01)
      (not (Seq_contains (Seq_range 0 3) i2@88@01))))))
(assert (or
  (Seq_contains (Seq_range 0 3) i1@87@01)
  (not (Seq_contains (Seq_range 0 3) i1@87@01))))
(push) ; 5
; [then-branch: 46 | i1@87@01 in [0..3] && i2@88@01 in [0..3] && i1@87@01 != i2@88@01 | live]
; [else-branch: 46 | !(i1@87@01 in [0..3] && i2@88@01 in [0..3] && i1@87@01 != i2@88@01) | live]
(push) ; 6
; [then-branch: 46 | i1@87@01 in [0..3] && i2@88@01 in [0..3] && i1@87@01 != i2@88@01]
(assert (and
  (Seq_contains (Seq_range 0 3) i1@87@01)
  (and (Seq_contains (Seq_range 0 3) i2@88@01) (not (= i1@87@01 i2@88@01)))))
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(push) ; 7
(assert (not (>= i1@87@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i1@87@01 (Seq_length xs@70@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 7
(assert (not (>= i2@88@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i2@88@01 (Seq_length xs@70@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 46 | !(i1@87@01 in [0..3] && i2@88@01 in [0..3] && i1@87@01 != i2@88@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 3) i1@87@01)
    (and (Seq_contains (Seq_range 0 3) i2@88@01) (not (= i1@87@01 i2@88@01))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 3) i1@87@01)
    (and (Seq_contains (Seq_range 0 3) i2@88@01) (not (= i1@87@01 i2@88@01))))
  (and
    (Seq_contains (Seq_range 0 3) i1@87@01)
    (Seq_contains (Seq_range 0 3) i2@88@01)
    (not (= i1@87@01 i2@88@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 3) i1@87@01)
      (and (Seq_contains (Seq_range 0 3) i2@88@01) (not (= i1@87@01 i2@88@01)))))
  (and
    (Seq_contains (Seq_range 0 3) i1@87@01)
    (and (Seq_contains (Seq_range 0 3) i2@88@01) (not (= i1@87@01 i2@88@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((i1@87@01 Int) (i2@88@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@87@01)
      (and (Seq_contains (Seq_range 0 3) i2@88@01) (not (= i1@87@01 i2@88@01))))
    (not (= (Seq_index xs@70@01 i1@87@01) (Seq_index xs@70@01 i2@88@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@47@12@47@100|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@87@01 Int) (i2@88@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@87@01)
      (and (Seq_contains (Seq_range 0 3) i2@88@01) (not (= i1@87@01 i2@88@01))))
    (not (= (Seq_index xs@70@01 i1@87@01) (Seq_index xs@70@01 i2@88@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@47@12@47@100|)))
(declare-const k@89@01 Int)
(push) ; 4
; [eval] 0 <= k && k < 3
; [eval] 0 <= k
(push) ; 5
; [then-branch: 47 | !(0 <= k@89@01) | live]
; [else-branch: 47 | 0 <= k@89@01 | live]
(push) ; 6
; [then-branch: 47 | !(0 <= k@89@01)]
(assert (not (<= 0 k@89@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 47 | 0 <= k@89@01]
(assert (<= 0 k@89@01))
; [eval] k < 3
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@89@01) (not (<= 0 k@89@01))))
(assert (and (<= 0 k@89@01) (< k@89@01 3)))
; [eval] xs[k]
(push) ; 5
(assert (not (>= k@89@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@89@01 (Seq_length xs@70@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@90@01 ($Ref) Int)
(declare-fun img@91@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@89@01 Int)) (!
  (=>
    (and (<= 0 k@89@01) (< k@89@01 3))
    (or (<= 0 k@89@01) (not (<= 0 k@89@01))))
  :pattern ((Seq_index xs@70@01 k@89@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((k1@89@01 Int) (k2@89@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@89@01) (< k1@89@01 3))
      (and (<= 0 k2@89@01) (< k2@89@01 3))
      (= (Seq_index xs@70@01 k1@89@01) (Seq_index xs@70@01 k2@89@01)))
    (= k1@89@01 k2@89@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@89@01 Int)) (!
  (=>
    (and (<= 0 k@89@01) (< k@89@01 3))
    (and
      (= (inv@90@01 (Seq_index xs@70@01 k@89@01)) k@89@01)
      (img@91@01 (Seq_index xs@70@01 k@89@01))))
  :pattern ((Seq_index xs@70@01 k@89@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@91@01 r) (and (<= 0 (inv@90@01 r)) (< (inv@90@01 r) 3)))
    (= (Seq_index xs@70@01 (inv@90@01 r)) r))
  :pattern ((inv@90@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@90@01 r)) (< (inv@90@01 r) 3))
      (img@91@01 r)
      (= r (Seq_index xs@70@01 (inv@90@01 r))))
    (>
      (+
        (ite
          (and (img@78@01 r) (and (<= 0 (inv@77@01 r)) (< (inv@77@01 r) 3)))
          $Perm.Write
          $Perm.No)
        (ite
          (and (img@85@01 r) (and (<= 6 (inv@84@01 r)) (< (inv@84@01 r) 9)))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-12428|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@92@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@92@01  $FVF<f>)))
      (and (and (<= 0 (inv@90@01 r)) (< (inv@90@01 r) 3)) (img@91@01 r)))
    (=>
      (and (and (<= 0 (inv@90@01 r)) (< (inv@90@01 r) 3)) (img@91@01 r))
      (Set_in r ($FVF.domain_f (as sm@92@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@92@01  $FVF<f>))))
  :qid |qp.fvfDomDef23|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@90@01 r)) (< (inv@90@01 r) 3)) (img@91@01 r))
      (and (img@78@01 r) (and (<= 0 (inv@77@01 r)) (< (inv@77@01 r) 3))))
    (= ($FVF.lookup_f (as sm@92@01  $FVF<f>) r) ($FVF.lookup_f $t@76@01 r)))
  :pattern (($FVF.lookup_f (as sm@92@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@76@01 r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@90@01 r)) (< (inv@90@01 r) 3)) (img@91@01 r))
      (and (img@85@01 r) (and (<= 6 (inv@84@01 r)) (< (inv@84@01 r) 9))))
    (= ($FVF.lookup_f (as sm@92@01  $FVF<f>) r) ($FVF.lookup_f $t@83@01 r)))
  :pattern (($FVF.lookup_f (as sm@92@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@83@01 r))
  :qid |qp.fvfValDef22|)))
; [eval] (forall i1: Int, i2: Int ::(i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@93@01 Int)
(declare-const i2@94@01 Int)
(push) ; 4
; [eval] (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2)
; [eval] (i1 in [6..9))
; [eval] [6..9)
(push) ; 5
; [then-branch: 48 | !(i1@93@01 in [6..9]) | live]
; [else-branch: 48 | i1@93@01 in [6..9] | live]
(push) ; 6
; [then-branch: 48 | !(i1@93@01 in [6..9])]
(assert (not (Seq_contains (Seq_range 6 9) i1@93@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 48 | i1@93@01 in [6..9]]
(assert (Seq_contains (Seq_range 6 9) i1@93@01))
; [eval] (i2 in [6..9))
; [eval] [6..9)
(push) ; 7
; [then-branch: 49 | !(i2@94@01 in [6..9]) | live]
; [else-branch: 49 | i2@94@01 in [6..9] | live]
(push) ; 8
; [then-branch: 49 | !(i2@94@01 in [6..9])]
(assert (not (Seq_contains (Seq_range 6 9) i2@94@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 49 | i2@94@01 in [6..9]]
(assert (Seq_contains (Seq_range 6 9) i2@94@01))
; [eval] i1 != i2
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 6 9) i2@94@01)
  (not (Seq_contains (Seq_range 6 9) i2@94@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 6 9) i1@93@01)
  (and
    (Seq_contains (Seq_range 6 9) i1@93@01)
    (or
      (Seq_contains (Seq_range 6 9) i2@94@01)
      (not (Seq_contains (Seq_range 6 9) i2@94@01))))))
(assert (or
  (Seq_contains (Seq_range 6 9) i1@93@01)
  (not (Seq_contains (Seq_range 6 9) i1@93@01))))
(push) ; 5
; [then-branch: 50 | i1@93@01 in [6..9] && i2@94@01 in [6..9] && i1@93@01 != i2@94@01 | live]
; [else-branch: 50 | !(i1@93@01 in [6..9] && i2@94@01 in [6..9] && i1@93@01 != i2@94@01) | live]
(push) ; 6
; [then-branch: 50 | i1@93@01 in [6..9] && i2@94@01 in [6..9] && i1@93@01 != i2@94@01]
(assert (and
  (Seq_contains (Seq_range 6 9) i1@93@01)
  (and (Seq_contains (Seq_range 6 9) i2@94@01) (not (= i1@93@01 i2@94@01)))))
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(push) ; 7
(assert (not (>= i1@93@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i1@93@01 (Seq_length xs@70@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 7
(assert (not (>= i2@94@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i2@94@01 (Seq_length xs@70@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 50 | !(i1@93@01 in [6..9] && i2@94@01 in [6..9] && i1@93@01 != i2@94@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 6 9) i1@93@01)
    (and (Seq_contains (Seq_range 6 9) i2@94@01) (not (= i1@93@01 i2@94@01))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 6 9) i1@93@01)
    (and (Seq_contains (Seq_range 6 9) i2@94@01) (not (= i1@93@01 i2@94@01))))
  (and
    (Seq_contains (Seq_range 6 9) i1@93@01)
    (Seq_contains (Seq_range 6 9) i2@94@01)
    (not (= i1@93@01 i2@94@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 6 9) i1@93@01)
      (and (Seq_contains (Seq_range 6 9) i2@94@01) (not (= i1@93@01 i2@94@01)))))
  (and
    (Seq_contains (Seq_range 6 9) i1@93@01)
    (and (Seq_contains (Seq_range 6 9) i2@94@01) (not (= i1@93@01 i2@94@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((i1@93@01 Int) (i2@94@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 6 9) i1@93@01)
      (and (Seq_contains (Seq_range 6 9) i2@94@01) (not (= i1@93@01 i2@94@01))))
    (not (= (Seq_index xs@70@01 i1@93@01) (Seq_index xs@70@01 i2@94@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@49@12@49@100|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@93@01 Int) (i2@94@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 6 9) i1@93@01)
      (and (Seq_contains (Seq_range 6 9) i2@94@01) (not (= i1@93@01 i2@94@01))))
    (not (= (Seq_index xs@70@01 i1@93@01) (Seq_index xs@70@01 i2@94@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@49@12@49@100|)))
(declare-const k@95@01 Int)
(push) ; 4
; [eval] 6 <= k && k < 9
; [eval] 6 <= k
(push) ; 5
; [then-branch: 51 | !(6 <= k@95@01) | live]
; [else-branch: 51 | 6 <= k@95@01 | live]
(push) ; 6
; [then-branch: 51 | !(6 <= k@95@01)]
(assert (not (<= 6 k@95@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 51 | 6 <= k@95@01]
(assert (<= 6 k@95@01))
; [eval] k < 9
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 6 k@95@01) (not (<= 6 k@95@01))))
(assert (and (<= 6 k@95@01) (< k@95@01 9)))
; [eval] xs[k]
(push) ; 5
(assert (not (>= k@95@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@95@01 (Seq_length xs@70@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@96@01 ($Ref) Int)
(declare-fun img@97@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@95@01 Int)) (!
  (=>
    (and (<= 6 k@95@01) (< k@95@01 9))
    (or (<= 6 k@95@01) (not (<= 6 k@95@01))))
  :pattern ((Seq_index xs@70@01 k@95@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((k1@95@01 Int) (k2@95@01 Int)) (!
  (=>
    (and
      (and (<= 6 k1@95@01) (< k1@95@01 9))
      (and (<= 6 k2@95@01) (< k2@95@01 9))
      (= (Seq_index xs@70@01 k1@95@01) (Seq_index xs@70@01 k2@95@01)))
    (= k1@95@01 k2@95@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@95@01 Int)) (!
  (=>
    (and (<= 6 k@95@01) (< k@95@01 9))
    (and
      (= (inv@96@01 (Seq_index xs@70@01 k@95@01)) k@95@01)
      (img@97@01 (Seq_index xs@70@01 k@95@01))))
  :pattern ((Seq_index xs@70@01 k@95@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@97@01 r) (and (<= 6 (inv@96@01 r)) (< (inv@96@01 r) 9)))
    (= (Seq_index xs@70@01 (inv@96@01 r)) r))
  :pattern ((inv@96@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 6 (inv@96@01 r)) (< (inv@96@01 r) 9))
      (img@97@01 r)
      (= r (Seq_index xs@70@01 (inv@96@01 r))))
    (>
      (+
        (ite
          (and (img@85@01 r) (and (<= 6 (inv@84@01 r)) (< (inv@84@01 r) 9)))
          $Perm.Write
          $Perm.No)
        (ite
          (and (img@78@01 r) (and (<= 0 (inv@77@01 r)) (< (inv@77@01 r) 3)))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-12430|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@98@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@98@01  $FVF<f>)))
      (and (and (<= 6 (inv@96@01 r)) (< (inv@96@01 r) 9)) (img@97@01 r)))
    (=>
      (and (and (<= 6 (inv@96@01 r)) (< (inv@96@01 r) 9)) (img@97@01 r))
      (Set_in r ($FVF.domain_f (as sm@98@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@98@01  $FVF<f>))))
  :qid |qp.fvfDomDef26|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@96@01 r)) (< (inv@96@01 r) 9)) (img@97@01 r))
      (and (img@85@01 r) (and (<= 6 (inv@84@01 r)) (< (inv@84@01 r) 9))))
    (= ($FVF.lookup_f (as sm@98@01  $FVF<f>) r) ($FVF.lookup_f $t@83@01 r)))
  :pattern (($FVF.lookup_f (as sm@98@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@83@01 r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@96@01 r)) (< (inv@96@01 r) 9)) (img@97@01 r))
      (and (img@78@01 r) (and (<= 0 (inv@77@01 r)) (< (inv@77@01 r) 3))))
    (= ($FVF.lookup_f (as sm@98@01  $FVF<f>) r) ($FVF.lookup_f $t@76@01 r)))
  :pattern (($FVF.lookup_f (as sm@98@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@76@01 r))
  :qid |qp.fvfValDef25|)))
(assert (fun03%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<f>To$Snap (as sm@92@01  $FVF<f>))
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<f>To$Snap (as sm@98@01  $FVF<f>)))))) xs@70@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((k@89@01 Int)) (!
  (=>
    (and (<= 0 k@89@01) (< k@89@01 3))
    (and
      (= (inv@90@01 (Seq_index xs@70@01 k@89@01)) k@89@01)
      (img@91@01 (Seq_index xs@70@01 k@89@01))))
  :pattern ((Seq_index xs@70@01 k@89@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@91@01 r) (and (<= 0 (inv@90@01 r)) (< (inv@90@01 r) 3)))
    (= (Seq_index xs@70@01 (inv@90@01 r)) r))
  :pattern ((inv@90@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@92@01  $FVF<f>)))
      (and (and (<= 0 (inv@90@01 r)) (< (inv@90@01 r) 3)) (img@91@01 r)))
    (=>
      (and (and (<= 0 (inv@90@01 r)) (< (inv@90@01 r) 3)) (img@91@01 r))
      (Set_in r ($FVF.domain_f (as sm@92@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@92@01  $FVF<f>))))
  :qid |qp.fvfDomDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@90@01 r)) (< (inv@90@01 r) 3)) (img@91@01 r))
      (and (img@78@01 r) (and (<= 0 (inv@77@01 r)) (< (inv@77@01 r) 3))))
    (= ($FVF.lookup_f (as sm@92@01  $FVF<f>) r) ($FVF.lookup_f $t@76@01 r)))
  :pattern (($FVF.lookup_f (as sm@92@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@76@01 r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@90@01 r)) (< (inv@90@01 r) 3)) (img@91@01 r))
      (and (img@85@01 r) (and (<= 6 (inv@84@01 r)) (< (inv@84@01 r) 9))))
    (= ($FVF.lookup_f (as sm@92@01  $FVF<f>) r) ($FVF.lookup_f $t@83@01 r)))
  :pattern (($FVF.lookup_f (as sm@92@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@83@01 r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((k@95@01 Int)) (!
  (=>
    (and (<= 6 k@95@01) (< k@95@01 9))
    (and
      (= (inv@96@01 (Seq_index xs@70@01 k@95@01)) k@95@01)
      (img@97@01 (Seq_index xs@70@01 k@95@01))))
  :pattern ((Seq_index xs@70@01 k@95@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@97@01 r) (and (<= 6 (inv@96@01 r)) (< (inv@96@01 r) 9)))
    (= (Seq_index xs@70@01 (inv@96@01 r)) r))
  :pattern ((inv@96@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@98@01  $FVF<f>)))
      (and (and (<= 6 (inv@96@01 r)) (< (inv@96@01 r) 9)) (img@97@01 r)))
    (=>
      (and (and (<= 6 (inv@96@01 r)) (< (inv@96@01 r) 9)) (img@97@01 r))
      (Set_in r ($FVF.domain_f (as sm@98@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@98@01  $FVF<f>))))
  :qid |qp.fvfDomDef26|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@96@01 r)) (< (inv@96@01 r) 9)) (img@97@01 r))
      (and (img@85@01 r) (and (<= 6 (inv@84@01 r)) (< (inv@84@01 r) 9))))
    (= ($FVF.lookup_f (as sm@98@01  $FVF<f>) r) ($FVF.lookup_f $t@83@01 r)))
  :pattern (($FVF.lookup_f (as sm@98@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@83@01 r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@96@01 r)) (< (inv@96@01 r) 9)) (img@97@01 r))
      (and (img@78@01 r) (and (<= 0 (inv@77@01 r)) (< (inv@77@01 r) 3))))
    (= ($FVF.lookup_f (as sm@98@01  $FVF<f>) r) ($FVF.lookup_f $t@76@01 r)))
  :pattern (($FVF.lookup_f (as sm@98@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@76@01 r))
  :qid |qp.fvfValDef25|)))
(assert (and
  (forall ((i1@87@01 Int) (i2@88@01 Int)) (!
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@87@01)
        (and (Seq_contains (Seq_range 0 3) i2@88@01) (not (= i1@87@01 i2@88@01))))
      (not (= (Seq_index xs@70@01 i1@87@01) (Seq_index xs@70@01 i2@88@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@47@12@47@100|))
  (forall ((k@89@01 Int)) (!
    (=>
      (and (<= 0 k@89@01) (< k@89@01 3))
      (or (<= 0 k@89@01) (not (<= 0 k@89@01))))
    :pattern ((Seq_index xs@70@01 k@89@01))
    :qid |f-aux|))
  (forall ((i1@93@01 Int) (i2@94@01 Int)) (!
    (=>
      (and
        (Seq_contains (Seq_range 6 9) i1@93@01)
        (and (Seq_contains (Seq_range 6 9) i2@94@01) (not (= i1@93@01 i2@94@01))))
      (not (= (Seq_index xs@70@01 i1@93@01) (Seq_index xs@70@01 i2@94@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@49@12@49@100|))
  (forall ((k@95@01 Int)) (!
    (=>
      (and (<= 6 k@95@01) (< k@95@01 9))
      (or (<= 6 k@95@01) (not (<= 6 k@95@01))))
    :pattern ((Seq_index xs@70@01 k@95@01))
    :qid |f-aux|))
  (fun03%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<f>To$Snap (as sm@92@01  $FVF<f>))
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<f>To$Snap (as sm@98@01  $FVF<f>)))))) xs@70@01)))
(assert (=
  10
  (fun03 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<f>To$Snap (as sm@92@01  $FVF<f>))
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<f>To$Snap (as sm@98@01  $FVF<f>)))))) xs@70@01)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert 10 == fun03(xs)
; [eval] 10 == fun03(xs)
; [eval] fun03(xs)
(set-option :timeout 0)
(push) ; 3
; [eval] |xs| > 10
; [eval] |xs|
; [eval] (forall i1: Int, i2: Int ::(i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@99@01 Int)
(declare-const i2@100@01 Int)
(push) ; 4
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2)
; [eval] (i1 in [0..3))
; [eval] [0..3)
(push) ; 5
; [then-branch: 52 | !(i1@99@01 in [0..3]) | live]
; [else-branch: 52 | i1@99@01 in [0..3] | live]
(push) ; 6
; [then-branch: 52 | !(i1@99@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i1@99@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 52 | i1@99@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i1@99@01))
; [eval] (i2 in [0..3))
; [eval] [0..3)
(push) ; 7
; [then-branch: 53 | !(i2@100@01 in [0..3]) | live]
; [else-branch: 53 | i2@100@01 in [0..3] | live]
(push) ; 8
; [then-branch: 53 | !(i2@100@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i2@100@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 53 | i2@100@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i2@100@01))
; [eval] i1 != i2
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 3) i2@100@01)
  (not (Seq_contains (Seq_range 0 3) i2@100@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 3) i1@99@01)
  (and
    (Seq_contains (Seq_range 0 3) i1@99@01)
    (or
      (Seq_contains (Seq_range 0 3) i2@100@01)
      (not (Seq_contains (Seq_range 0 3) i2@100@01))))))
(assert (or
  (Seq_contains (Seq_range 0 3) i1@99@01)
  (not (Seq_contains (Seq_range 0 3) i1@99@01))))
(push) ; 5
; [then-branch: 54 | i1@99@01 in [0..3] && i2@100@01 in [0..3] && i1@99@01 != i2@100@01 | live]
; [else-branch: 54 | !(i1@99@01 in [0..3] && i2@100@01 in [0..3] && i1@99@01 != i2@100@01) | live]
(push) ; 6
; [then-branch: 54 | i1@99@01 in [0..3] && i2@100@01 in [0..3] && i1@99@01 != i2@100@01]
(assert (and
  (Seq_contains (Seq_range 0 3) i1@99@01)
  (and (Seq_contains (Seq_range 0 3) i2@100@01) (not (= i1@99@01 i2@100@01)))))
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(push) ; 7
(assert (not (>= i1@99@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i1@99@01 (Seq_length xs@70@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 7
(assert (not (>= i2@100@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i2@100@01 (Seq_length xs@70@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 54 | !(i1@99@01 in [0..3] && i2@100@01 in [0..3] && i1@99@01 != i2@100@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 3) i1@99@01)
    (and (Seq_contains (Seq_range 0 3) i2@100@01) (not (= i1@99@01 i2@100@01))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 3) i1@99@01)
    (and (Seq_contains (Seq_range 0 3) i2@100@01) (not (= i1@99@01 i2@100@01))))
  (and
    (Seq_contains (Seq_range 0 3) i1@99@01)
    (Seq_contains (Seq_range 0 3) i2@100@01)
    (not (= i1@99@01 i2@100@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 3) i1@99@01)
      (and (Seq_contains (Seq_range 0 3) i2@100@01) (not (= i1@99@01 i2@100@01)))))
  (and
    (Seq_contains (Seq_range 0 3) i1@99@01)
    (and (Seq_contains (Seq_range 0 3) i2@100@01) (not (= i1@99@01 i2@100@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((i1@99@01 Int) (i2@100@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@99@01)
      (and (Seq_contains (Seq_range 0 3) i2@100@01) (not (= i1@99@01 i2@100@01))))
    (not (= (Seq_index xs@70@01 i1@99@01) (Seq_index xs@70@01 i2@100@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@47@12@47@100|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@99@01 Int) (i2@100@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@99@01)
      (and (Seq_contains (Seq_range 0 3) i2@100@01) (not (= i1@99@01 i2@100@01))))
    (not (= (Seq_index xs@70@01 i1@99@01) (Seq_index xs@70@01 i2@100@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@47@12@47@100|)))
(declare-const k@101@01 Int)
(push) ; 4
; [eval] 0 <= k && k < 3
; [eval] 0 <= k
(push) ; 5
; [then-branch: 55 | !(0 <= k@101@01) | live]
; [else-branch: 55 | 0 <= k@101@01 | live]
(push) ; 6
; [then-branch: 55 | !(0 <= k@101@01)]
(assert (not (<= 0 k@101@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 55 | 0 <= k@101@01]
(assert (<= 0 k@101@01))
; [eval] k < 3
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@101@01) (not (<= 0 k@101@01))))
(assert (and (<= 0 k@101@01) (< k@101@01 3)))
; [eval] xs[k]
(push) ; 5
(assert (not (>= k@101@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@101@01 (Seq_length xs@70@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@102@01 ($Ref) Int)
(declare-fun img@103@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@101@01 Int)) (!
  (=>
    (and (<= 0 k@101@01) (< k@101@01 3))
    (or (<= 0 k@101@01) (not (<= 0 k@101@01))))
  :pattern ((Seq_index xs@70@01 k@101@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((k1@101@01 Int) (k2@101@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@101@01) (< k1@101@01 3))
      (and (<= 0 k2@101@01) (< k2@101@01 3))
      (= (Seq_index xs@70@01 k1@101@01) (Seq_index xs@70@01 k2@101@01)))
    (= k1@101@01 k2@101@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@101@01 Int)) (!
  (=>
    (and (<= 0 k@101@01) (< k@101@01 3))
    (and
      (= (inv@102@01 (Seq_index xs@70@01 k@101@01)) k@101@01)
      (img@103@01 (Seq_index xs@70@01 k@101@01))))
  :pattern ((Seq_index xs@70@01 k@101@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@103@01 r) (and (<= 0 (inv@102@01 r)) (< (inv@102@01 r) 3)))
    (= (Seq_index xs@70@01 (inv@102@01 r)) r))
  :pattern ((inv@102@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@102@01 r)) (< (inv@102@01 r) 3))
      (img@103@01 r)
      (= r (Seq_index xs@70@01 (inv@102@01 r))))
    (>
      (+
        (ite
          (and (img@78@01 r) (and (<= 0 (inv@77@01 r)) (< (inv@77@01 r) 3)))
          $Perm.Write
          $Perm.No)
        (ite
          (and (img@85@01 r) (and (<= 6 (inv@84@01 r)) (< (inv@84@01 r) 9)))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-12432|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@104@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@104@01  $FVF<f>)))
      (and (and (<= 0 (inv@102@01 r)) (< (inv@102@01 r) 3)) (img@103@01 r)))
    (=>
      (and (and (<= 0 (inv@102@01 r)) (< (inv@102@01 r) 3)) (img@103@01 r))
      (Set_in r ($FVF.domain_f (as sm@104@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@104@01  $FVF<f>))))
  :qid |qp.fvfDomDef29|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@102@01 r)) (< (inv@102@01 r) 3)) (img@103@01 r))
      (and (img@78@01 r) (and (<= 0 (inv@77@01 r)) (< (inv@77@01 r) 3))))
    (= ($FVF.lookup_f (as sm@104@01  $FVF<f>) r) ($FVF.lookup_f $t@76@01 r)))
  :pattern (($FVF.lookup_f (as sm@104@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@76@01 r))
  :qid |qp.fvfValDef27|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@102@01 r)) (< (inv@102@01 r) 3)) (img@103@01 r))
      (and (img@85@01 r) (and (<= 6 (inv@84@01 r)) (< (inv@84@01 r) 9))))
    (= ($FVF.lookup_f (as sm@104@01  $FVF<f>) r) ($FVF.lookup_f $t@83@01 r)))
  :pattern (($FVF.lookup_f (as sm@104@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@83@01 r))
  :qid |qp.fvfValDef28|)))
; [eval] (forall i1: Int, i2: Int ::(i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@105@01 Int)
(declare-const i2@106@01 Int)
(push) ; 4
; [eval] (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2)
; [eval] (i1 in [6..9))
; [eval] [6..9)
(push) ; 5
; [then-branch: 56 | !(i1@105@01 in [6..9]) | live]
; [else-branch: 56 | i1@105@01 in [6..9] | live]
(push) ; 6
; [then-branch: 56 | !(i1@105@01 in [6..9])]
(assert (not (Seq_contains (Seq_range 6 9) i1@105@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 56 | i1@105@01 in [6..9]]
(assert (Seq_contains (Seq_range 6 9) i1@105@01))
; [eval] (i2 in [6..9))
; [eval] [6..9)
(push) ; 7
; [then-branch: 57 | !(i2@106@01 in [6..9]) | live]
; [else-branch: 57 | i2@106@01 in [6..9] | live]
(push) ; 8
; [then-branch: 57 | !(i2@106@01 in [6..9])]
(assert (not (Seq_contains (Seq_range 6 9) i2@106@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 57 | i2@106@01 in [6..9]]
(assert (Seq_contains (Seq_range 6 9) i2@106@01))
; [eval] i1 != i2
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 6 9) i2@106@01)
  (not (Seq_contains (Seq_range 6 9) i2@106@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 6 9) i1@105@01)
  (and
    (Seq_contains (Seq_range 6 9) i1@105@01)
    (or
      (Seq_contains (Seq_range 6 9) i2@106@01)
      (not (Seq_contains (Seq_range 6 9) i2@106@01))))))
(assert (or
  (Seq_contains (Seq_range 6 9) i1@105@01)
  (not (Seq_contains (Seq_range 6 9) i1@105@01))))
(push) ; 5
; [then-branch: 58 | i1@105@01 in [6..9] && i2@106@01 in [6..9] && i1@105@01 != i2@106@01 | live]
; [else-branch: 58 | !(i1@105@01 in [6..9] && i2@106@01 in [6..9] && i1@105@01 != i2@106@01) | live]
(push) ; 6
; [then-branch: 58 | i1@105@01 in [6..9] && i2@106@01 in [6..9] && i1@105@01 != i2@106@01]
(assert (and
  (Seq_contains (Seq_range 6 9) i1@105@01)
  (and (Seq_contains (Seq_range 6 9) i2@106@01) (not (= i1@105@01 i2@106@01)))))
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(push) ; 7
(assert (not (>= i1@105@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i1@105@01 (Seq_length xs@70@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 7
(assert (not (>= i2@106@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i2@106@01 (Seq_length xs@70@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 58 | !(i1@105@01 in [6..9] && i2@106@01 in [6..9] && i1@105@01 != i2@106@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 6 9) i1@105@01)
    (and (Seq_contains (Seq_range 6 9) i2@106@01) (not (= i1@105@01 i2@106@01))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 6 9) i1@105@01)
    (and (Seq_contains (Seq_range 6 9) i2@106@01) (not (= i1@105@01 i2@106@01))))
  (and
    (Seq_contains (Seq_range 6 9) i1@105@01)
    (Seq_contains (Seq_range 6 9) i2@106@01)
    (not (= i1@105@01 i2@106@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 6 9) i1@105@01)
      (and
        (Seq_contains (Seq_range 6 9) i2@106@01)
        (not (= i1@105@01 i2@106@01)))))
  (and
    (Seq_contains (Seq_range 6 9) i1@105@01)
    (and (Seq_contains (Seq_range 6 9) i2@106@01) (not (= i1@105@01 i2@106@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((i1@105@01 Int) (i2@106@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 6 9) i1@105@01)
      (and
        (Seq_contains (Seq_range 6 9) i2@106@01)
        (not (= i1@105@01 i2@106@01))))
    (not (= (Seq_index xs@70@01 i1@105@01) (Seq_index xs@70@01 i2@106@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@49@12@49@100|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@105@01 Int) (i2@106@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 6 9) i1@105@01)
      (and
        (Seq_contains (Seq_range 6 9) i2@106@01)
        (not (= i1@105@01 i2@106@01))))
    (not (= (Seq_index xs@70@01 i1@105@01) (Seq_index xs@70@01 i2@106@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@49@12@49@100|)))
(declare-const k@107@01 Int)
(push) ; 4
; [eval] 6 <= k && k < 9
; [eval] 6 <= k
(push) ; 5
; [then-branch: 59 | !(6 <= k@107@01) | live]
; [else-branch: 59 | 6 <= k@107@01 | live]
(push) ; 6
; [then-branch: 59 | !(6 <= k@107@01)]
(assert (not (<= 6 k@107@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 59 | 6 <= k@107@01]
(assert (<= 6 k@107@01))
; [eval] k < 9
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 6 k@107@01) (not (<= 6 k@107@01))))
(assert (and (<= 6 k@107@01) (< k@107@01 9)))
; [eval] xs[k]
(push) ; 5
(assert (not (>= k@107@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@107@01 (Seq_length xs@70@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@108@01 ($Ref) Int)
(declare-fun img@109@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@107@01 Int)) (!
  (=>
    (and (<= 6 k@107@01) (< k@107@01 9))
    (or (<= 6 k@107@01) (not (<= 6 k@107@01))))
  :pattern ((Seq_index xs@70@01 k@107@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((k1@107@01 Int) (k2@107@01 Int)) (!
  (=>
    (and
      (and (<= 6 k1@107@01) (< k1@107@01 9))
      (and (<= 6 k2@107@01) (< k2@107@01 9))
      (= (Seq_index xs@70@01 k1@107@01) (Seq_index xs@70@01 k2@107@01)))
    (= k1@107@01 k2@107@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@107@01 Int)) (!
  (=>
    (and (<= 6 k@107@01) (< k@107@01 9))
    (and
      (= (inv@108@01 (Seq_index xs@70@01 k@107@01)) k@107@01)
      (img@109@01 (Seq_index xs@70@01 k@107@01))))
  :pattern ((Seq_index xs@70@01 k@107@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@109@01 r) (and (<= 6 (inv@108@01 r)) (< (inv@108@01 r) 9)))
    (= (Seq_index xs@70@01 (inv@108@01 r)) r))
  :pattern ((inv@108@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 6 (inv@108@01 r)) (< (inv@108@01 r) 9))
      (img@109@01 r)
      (= r (Seq_index xs@70@01 (inv@108@01 r))))
    (>
      (+
        (ite
          (and (img@85@01 r) (and (<= 6 (inv@84@01 r)) (< (inv@84@01 r) 9)))
          $Perm.Write
          $Perm.No)
        (ite
          (and (img@78@01 r) (and (<= 0 (inv@77@01 r)) (< (inv@77@01 r) 3)))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-12434|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@110@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@110@01  $FVF<f>)))
      (and (and (<= 6 (inv@108@01 r)) (< (inv@108@01 r) 9)) (img@109@01 r)))
    (=>
      (and (and (<= 6 (inv@108@01 r)) (< (inv@108@01 r) 9)) (img@109@01 r))
      (Set_in r ($FVF.domain_f (as sm@110@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@110@01  $FVF<f>))))
  :qid |qp.fvfDomDef32|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@108@01 r)) (< (inv@108@01 r) 9)) (img@109@01 r))
      (and (img@85@01 r) (and (<= 6 (inv@84@01 r)) (< (inv@84@01 r) 9))))
    (= ($FVF.lookup_f (as sm@110@01  $FVF<f>) r) ($FVF.lookup_f $t@83@01 r)))
  :pattern (($FVF.lookup_f (as sm@110@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@83@01 r))
  :qid |qp.fvfValDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@108@01 r)) (< (inv@108@01 r) 9)) (img@109@01 r))
      (and (img@78@01 r) (and (<= 0 (inv@77@01 r)) (< (inv@77@01 r) 3))))
    (= ($FVF.lookup_f (as sm@110@01  $FVF<f>) r) ($FVF.lookup_f $t@76@01 r)))
  :pattern (($FVF.lookup_f (as sm@110@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@76@01 r))
  :qid |qp.fvfValDef31|)))
(assert (fun03%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<f>To$Snap (as sm@104@01  $FVF<f>))
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<f>To$Snap (as sm@110@01  $FVF<f>)))))) xs@70@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((k@101@01 Int)) (!
  (=>
    (and (<= 0 k@101@01) (< k@101@01 3))
    (and
      (= (inv@102@01 (Seq_index xs@70@01 k@101@01)) k@101@01)
      (img@103@01 (Seq_index xs@70@01 k@101@01))))
  :pattern ((Seq_index xs@70@01 k@101@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@103@01 r) (and (<= 0 (inv@102@01 r)) (< (inv@102@01 r) 3)))
    (= (Seq_index xs@70@01 (inv@102@01 r)) r))
  :pattern ((inv@102@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@104@01  $FVF<f>)))
      (and (and (<= 0 (inv@102@01 r)) (< (inv@102@01 r) 3)) (img@103@01 r)))
    (=>
      (and (and (<= 0 (inv@102@01 r)) (< (inv@102@01 r) 3)) (img@103@01 r))
      (Set_in r ($FVF.domain_f (as sm@104@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@104@01  $FVF<f>))))
  :qid |qp.fvfDomDef29|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@102@01 r)) (< (inv@102@01 r) 3)) (img@103@01 r))
      (and (img@78@01 r) (and (<= 0 (inv@77@01 r)) (< (inv@77@01 r) 3))))
    (= ($FVF.lookup_f (as sm@104@01  $FVF<f>) r) ($FVF.lookup_f $t@76@01 r)))
  :pattern (($FVF.lookup_f (as sm@104@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@76@01 r))
  :qid |qp.fvfValDef27|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@102@01 r)) (< (inv@102@01 r) 3)) (img@103@01 r))
      (and (img@85@01 r) (and (<= 6 (inv@84@01 r)) (< (inv@84@01 r) 9))))
    (= ($FVF.lookup_f (as sm@104@01  $FVF<f>) r) ($FVF.lookup_f $t@83@01 r)))
  :pattern (($FVF.lookup_f (as sm@104@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@83@01 r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((k@107@01 Int)) (!
  (=>
    (and (<= 6 k@107@01) (< k@107@01 9))
    (and
      (= (inv@108@01 (Seq_index xs@70@01 k@107@01)) k@107@01)
      (img@109@01 (Seq_index xs@70@01 k@107@01))))
  :pattern ((Seq_index xs@70@01 k@107@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@109@01 r) (and (<= 6 (inv@108@01 r)) (< (inv@108@01 r) 9)))
    (= (Seq_index xs@70@01 (inv@108@01 r)) r))
  :pattern ((inv@108@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@110@01  $FVF<f>)))
      (and (and (<= 6 (inv@108@01 r)) (< (inv@108@01 r) 9)) (img@109@01 r)))
    (=>
      (and (and (<= 6 (inv@108@01 r)) (< (inv@108@01 r) 9)) (img@109@01 r))
      (Set_in r ($FVF.domain_f (as sm@110@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@110@01  $FVF<f>))))
  :qid |qp.fvfDomDef32|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@108@01 r)) (< (inv@108@01 r) 9)) (img@109@01 r))
      (and (img@85@01 r) (and (<= 6 (inv@84@01 r)) (< (inv@84@01 r) 9))))
    (= ($FVF.lookup_f (as sm@110@01  $FVF<f>) r) ($FVF.lookup_f $t@83@01 r)))
  :pattern (($FVF.lookup_f (as sm@110@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@83@01 r))
  :qid |qp.fvfValDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@108@01 r)) (< (inv@108@01 r) 9)) (img@109@01 r))
      (and (img@78@01 r) (and (<= 0 (inv@77@01 r)) (< (inv@77@01 r) 3))))
    (= ($FVF.lookup_f (as sm@110@01  $FVF<f>) r) ($FVF.lookup_f $t@76@01 r)))
  :pattern (($FVF.lookup_f (as sm@110@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@76@01 r))
  :qid |qp.fvfValDef31|)))
(assert (and
  (forall ((i1@99@01 Int) (i2@100@01 Int)) (!
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@99@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@100@01)
          (not (= i1@99@01 i2@100@01))))
      (not (= (Seq_index xs@70@01 i1@99@01) (Seq_index xs@70@01 i2@100@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@47@12@47@100|))
  (forall ((k@101@01 Int)) (!
    (=>
      (and (<= 0 k@101@01) (< k@101@01 3))
      (or (<= 0 k@101@01) (not (<= 0 k@101@01))))
    :pattern ((Seq_index xs@70@01 k@101@01))
    :qid |f-aux|))
  (forall ((i1@105@01 Int) (i2@106@01 Int)) (!
    (=>
      (and
        (Seq_contains (Seq_range 6 9) i1@105@01)
        (and
          (Seq_contains (Seq_range 6 9) i2@106@01)
          (not (= i1@105@01 i2@106@01))))
      (not (= (Seq_index xs@70@01 i1@105@01) (Seq_index xs@70@01 i2@106@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@49@12@49@100|))
  (forall ((k@107@01 Int)) (!
    (=>
      (and (<= 6 k@107@01) (< k@107@01 9))
      (or (<= 6 k@107@01) (not (<= 6 k@107@01))))
    :pattern ((Seq_index xs@70@01 k@107@01))
    :qid |f-aux|))
  (fun03%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<f>To$Snap (as sm@104@01  $FVF<f>))
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<f>To$Snap (as sm@110@01  $FVF<f>)))))) xs@70@01)))
(push) ; 3
(assert (not (=
  10
  (fun03 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<f>To$Snap (as sm@104@01  $FVF<f>))
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<f>To$Snap (as sm@110@01  $FVF<f>)))))) xs@70@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  10
  (fun03 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<f>To$Snap (as sm@104@01  $FVF<f>))
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<f>To$Snap (as sm@110@01  $FVF<f>)))))) xs@70@01)))
; [exec]
; assert false
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@70@01 k@75@01) (Seq_index xs@70@01 k@82@01))
    (=
      (and (img@78@01 r) (and (<= 0 (inv@77@01 r)) (< (inv@77@01 r) 3)))
      (and (img@85@01 r) (and (<= 6 (inv@84@01 r)) (< (inv@84@01 r) 9)))))
  
  :qid |quant-u-12435|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@111@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@78@01 r) (and (<= 0 (inv@77@01 r)) (< (inv@77@01 r) 3)))
    (= ($FVF.lookup_f (as sm@111@01  $FVF<f>) r) ($FVF.lookup_f $t@76@01 r)))
  :pattern (($FVF.lookup_f (as sm@111@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@76@01 r))
  :qid |qp.fvfValDef33|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@85@01 r) (and (<= 6 (inv@84@01 r)) (< (inv@84@01 r) 9)))
    (= ($FVF.lookup_f (as sm@111@01  $FVF<f>) r) ($FVF.lookup_f $t@83@01 r)))
  :pattern (($FVF.lookup_f (as sm@111@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@83@01 r))
  :qid |qp.fvfValDef34|)))
(declare-const pm@112@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@112@01  $FPM) r)
    (+
      (ite
        (and (img@78@01 r) (and (<= 0 (inv@77@01 r)) (< (inv@77@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite
        (and (img@85@01 r) (and (<= 6 (inv@84@01 r)) (< (inv@84@01 r) 9)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@112@01  $FPM) r))
  :qid |qp.resPrmSumDef35|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@112@01  $FPM) r) $Perm.Write)
  :pattern ((inv@77@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@112@01  $FPM) r) $Perm.Write)
  :pattern ((inv@84@01 r))
  :qid |qp-fld-prm-bnd|)))
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
; ---------- test07 ----------
(declare-const xs@113@01 Seq<$Ref>)
(declare-const xs@114@01 Seq<$Ref>)
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
; inhale |xs| > 10
(declare-const $t@115@01 $Snap)
(assert (= $t@115@01 $Snap.unit))
; [eval] |xs| > 10
; [eval] |xs|
(assert (> (Seq_length xs@114@01) 10))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i1: Int, i2: Int ::
;     { (i1 in [0..10)), (i2 in [0..10)) }
;     { (i1 in [0..10)), xs[i2] }
;     { (i2 in [0..10)), xs[i1] }
;     { xs[i1], xs[i2] }
;     (i1 in [0..10)) && ((i2 in [0..10)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const $t@116@01 $Snap)
(assert (= $t@116@01 $Snap.unit))
; [eval] (forall i1: Int, i2: Int :: { (i1 in [0..10)), (i2 in [0..10)) } { (i1 in [0..10)), xs[i2] } { (i2 in [0..10)), xs[i1] } { xs[i1], xs[i2] } (i1 in [0..10)) && ((i2 in [0..10)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@117@01 Int)
(declare-const i2@118@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i1 in [0..10)) && ((i2 in [0..10)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [0..10)) && ((i2 in [0..10)) && i1 != i2)
; [eval] (i1 in [0..10))
; [eval] [0..10)
(push) ; 4
; [then-branch: 60 | !(i1@117@01 in [0..10]) | live]
; [else-branch: 60 | i1@117@01 in [0..10] | live]
(push) ; 5
; [then-branch: 60 | !(i1@117@01 in [0..10])]
(assert (not (Seq_contains (Seq_range 0 10) i1@117@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 60 | i1@117@01 in [0..10]]
(assert (Seq_contains (Seq_range 0 10) i1@117@01))
; [eval] (i2 in [0..10))
; [eval] [0..10)
(push) ; 6
; [then-branch: 61 | !(i2@118@01 in [0..10]) | live]
; [else-branch: 61 | i2@118@01 in [0..10] | live]
(push) ; 7
; [then-branch: 61 | !(i2@118@01 in [0..10])]
(assert (not (Seq_contains (Seq_range 0 10) i2@118@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 61 | i2@118@01 in [0..10]]
(assert (Seq_contains (Seq_range 0 10) i2@118@01))
; [eval] i1 != i2
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 10) i2@118@01)
  (not (Seq_contains (Seq_range 0 10) i2@118@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 10) i1@117@01)
  (and
    (Seq_contains (Seq_range 0 10) i1@117@01)
    (or
      (Seq_contains (Seq_range 0 10) i2@118@01)
      (not (Seq_contains (Seq_range 0 10) i2@118@01))))))
(assert (or
  (Seq_contains (Seq_range 0 10) i1@117@01)
  (not (Seq_contains (Seq_range 0 10) i1@117@01))))
(push) ; 4
; [then-branch: 62 | i1@117@01 in [0..10] && i2@118@01 in [0..10] && i1@117@01 != i2@118@01 | live]
; [else-branch: 62 | !(i1@117@01 in [0..10] && i2@118@01 in [0..10] && i1@117@01 != i2@118@01) | live]
(push) ; 5
; [then-branch: 62 | i1@117@01 in [0..10] && i2@118@01 in [0..10] && i1@117@01 != i2@118@01]
(assert (and
  (Seq_contains (Seq_range 0 10) i1@117@01)
  (and (Seq_contains (Seq_range 0 10) i2@118@01) (not (= i1@117@01 i2@118@01)))))
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(push) ; 6
(assert (not (>= i1@117@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i1@117@01 (Seq_length xs@114@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 6
(assert (not (>= i2@118@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i2@118@01 (Seq_length xs@114@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 62 | !(i1@117@01 in [0..10] && i2@118@01 in [0..10] && i1@117@01 != i2@118@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 10) i1@117@01)
    (and (Seq_contains (Seq_range 0 10) i2@118@01) (not (= i1@117@01 i2@118@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 10) i1@117@01)
    (and (Seq_contains (Seq_range 0 10) i2@118@01) (not (= i1@117@01 i2@118@01))))
  (and
    (Seq_contains (Seq_range 0 10) i1@117@01)
    (Seq_contains (Seq_range 0 10) i2@118@01)
    (not (= i1@117@01 i2@118@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 10) i1@117@01)
      (and
        (Seq_contains (Seq_range 0 10) i2@118@01)
        (not (= i1@117@01 i2@118@01)))))
  (and
    (Seq_contains (Seq_range 0 10) i1@117@01)
    (and (Seq_contains (Seq_range 0 10) i2@118@01) (not (= i1@117@01 i2@118@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i1@117@01 Int) (i2@118@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 10) i1@117@01)
      (and
        (Seq_contains (Seq_range 0 10) i1@117@01)
        (or
          (Seq_contains (Seq_range 0 10) i2@118@01)
          (not (Seq_contains (Seq_range 0 10) i2@118@01)))))
    (or
      (Seq_contains (Seq_range 0 10) i1@117@01)
      (not (Seq_contains (Seq_range 0 10) i1@117@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 10) i1@117@01)
        (and
          (Seq_contains (Seq_range 0 10) i2@118@01)
          (not (= i1@117@01 i2@118@01))))
      (and
        (Seq_contains (Seq_range 0 10) i1@117@01)
        (Seq_contains (Seq_range 0 10) i2@118@01)
        (not (= i1@117@01 i2@118@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 10) i1@117@01)
          (and
            (Seq_contains (Seq_range 0 10) i2@118@01)
            (not (= i1@117@01 i2@118@01)))))
      (and
        (Seq_contains (Seq_range 0 10) i1@117@01)
        (and
          (Seq_contains (Seq_range 0 10) i2@118@01)
          (not (= i1@117@01 i2@118@01))))))
  :pattern ((Seq_contains (Seq_range 0 10) i1@117@01) (Seq_contains
    (Seq_range 0 10)
    i2@118@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 10) i1@117@01) (Seq_contains_trigger
    (Seq_range 0 10)
    i2@118@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@74@10@74@100-aux|)))
(assert (forall ((i1@117@01 Int) (i2@118@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 10) i1@117@01)
      (and
        (Seq_contains (Seq_range 0 10) i1@117@01)
        (or
          (Seq_contains (Seq_range 0 10) i2@118@01)
          (not (Seq_contains (Seq_range 0 10) i2@118@01)))))
    (or
      (Seq_contains (Seq_range 0 10) i1@117@01)
      (not (Seq_contains (Seq_range 0 10) i1@117@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 10) i1@117@01)
        (and
          (Seq_contains (Seq_range 0 10) i2@118@01)
          (not (= i1@117@01 i2@118@01))))
      (and
        (Seq_contains (Seq_range 0 10) i1@117@01)
        (Seq_contains (Seq_range 0 10) i2@118@01)
        (not (= i1@117@01 i2@118@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 10) i1@117@01)
          (and
            (Seq_contains (Seq_range 0 10) i2@118@01)
            (not (= i1@117@01 i2@118@01)))))
      (and
        (Seq_contains (Seq_range 0 10) i1@117@01)
        (and
          (Seq_contains (Seq_range 0 10) i2@118@01)
          (not (= i1@117@01 i2@118@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 10) i1@117@01) (Seq_contains_trigger
    (Seq_range 0 10)
    i2@118@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@74@10@74@100-aux|)))
(assert (forall ((i1@117@01 Int) (i2@118@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 10) i1@117@01)
      (and
        (Seq_contains (Seq_range 0 10) i1@117@01)
        (or
          (Seq_contains (Seq_range 0 10) i2@118@01)
          (not (Seq_contains (Seq_range 0 10) i2@118@01)))))
    (or
      (Seq_contains (Seq_range 0 10) i1@117@01)
      (not (Seq_contains (Seq_range 0 10) i1@117@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 10) i1@117@01)
        (and
          (Seq_contains (Seq_range 0 10) i2@118@01)
          (not (= i1@117@01 i2@118@01))))
      (and
        (Seq_contains (Seq_range 0 10) i1@117@01)
        (Seq_contains (Seq_range 0 10) i2@118@01)
        (not (= i1@117@01 i2@118@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 10) i1@117@01)
          (and
            (Seq_contains (Seq_range 0 10) i2@118@01)
            (not (= i1@117@01 i2@118@01)))))
      (and
        (Seq_contains (Seq_range 0 10) i1@117@01)
        (and
          (Seq_contains (Seq_range 0 10) i2@118@01)
          (not (= i1@117@01 i2@118@01))))))
  :pattern ((Seq_contains (Seq_range 0 10) i1@117@01) (Seq_index
    xs@114@01
    i2@118@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 10) i1@117@01) (Seq_index
    xs@114@01
    i2@118@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@74@10@74@100-aux|)))
(assert (forall ((i1@117@01 Int) (i2@118@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 10) i1@117@01)
      (and
        (Seq_contains (Seq_range 0 10) i1@117@01)
        (or
          (Seq_contains (Seq_range 0 10) i2@118@01)
          (not (Seq_contains (Seq_range 0 10) i2@118@01)))))
    (or
      (Seq_contains (Seq_range 0 10) i1@117@01)
      (not (Seq_contains (Seq_range 0 10) i1@117@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 10) i1@117@01)
        (and
          (Seq_contains (Seq_range 0 10) i2@118@01)
          (not (= i1@117@01 i2@118@01))))
      (and
        (Seq_contains (Seq_range 0 10) i1@117@01)
        (Seq_contains (Seq_range 0 10) i2@118@01)
        (not (= i1@117@01 i2@118@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 10) i1@117@01)
          (and
            (Seq_contains (Seq_range 0 10) i2@118@01)
            (not (= i1@117@01 i2@118@01)))))
      (and
        (Seq_contains (Seq_range 0 10) i1@117@01)
        (and
          (Seq_contains (Seq_range 0 10) i2@118@01)
          (not (= i1@117@01 i2@118@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 10) i1@117@01) (Seq_index
    xs@114@01
    i2@118@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@74@10@74@100-aux|)))
(assert (forall ((i1@117@01 Int) (i2@118@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 10) i1@117@01)
      (and
        (Seq_contains (Seq_range 0 10) i1@117@01)
        (or
          (Seq_contains (Seq_range 0 10) i2@118@01)
          (not (Seq_contains (Seq_range 0 10) i2@118@01)))))
    (or
      (Seq_contains (Seq_range 0 10) i1@117@01)
      (not (Seq_contains (Seq_range 0 10) i1@117@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 10) i1@117@01)
        (and
          (Seq_contains (Seq_range 0 10) i2@118@01)
          (not (= i1@117@01 i2@118@01))))
      (and
        (Seq_contains (Seq_range 0 10) i1@117@01)
        (Seq_contains (Seq_range 0 10) i2@118@01)
        (not (= i1@117@01 i2@118@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 10) i1@117@01)
          (and
            (Seq_contains (Seq_range 0 10) i2@118@01)
            (not (= i1@117@01 i2@118@01)))))
      (and
        (Seq_contains (Seq_range 0 10) i1@117@01)
        (and
          (Seq_contains (Seq_range 0 10) i2@118@01)
          (not (= i1@117@01 i2@118@01))))))
  :pattern ((Seq_contains (Seq_range 0 10) i2@118@01) (Seq_index
    xs@114@01
    i1@117@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 10) i2@118@01) (Seq_index
    xs@114@01
    i1@117@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@74@10@74@100-aux|)))
(assert (forall ((i1@117@01 Int) (i2@118@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 10) i1@117@01)
      (and
        (Seq_contains (Seq_range 0 10) i1@117@01)
        (or
          (Seq_contains (Seq_range 0 10) i2@118@01)
          (not (Seq_contains (Seq_range 0 10) i2@118@01)))))
    (or
      (Seq_contains (Seq_range 0 10) i1@117@01)
      (not (Seq_contains (Seq_range 0 10) i1@117@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 10) i1@117@01)
        (and
          (Seq_contains (Seq_range 0 10) i2@118@01)
          (not (= i1@117@01 i2@118@01))))
      (and
        (Seq_contains (Seq_range 0 10) i1@117@01)
        (Seq_contains (Seq_range 0 10) i2@118@01)
        (not (= i1@117@01 i2@118@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 10) i1@117@01)
          (and
            (Seq_contains (Seq_range 0 10) i2@118@01)
            (not (= i1@117@01 i2@118@01)))))
      (and
        (Seq_contains (Seq_range 0 10) i1@117@01)
        (and
          (Seq_contains (Seq_range 0 10) i2@118@01)
          (not (= i1@117@01 i2@118@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 10) i2@118@01) (Seq_index
    xs@114@01
    i1@117@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@74@10@74@100-aux|)))
(assert (forall ((i1@117@01 Int) (i2@118@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 10) i1@117@01)
      (and
        (Seq_contains (Seq_range 0 10) i1@117@01)
        (or
          (Seq_contains (Seq_range 0 10) i2@118@01)
          (not (Seq_contains (Seq_range 0 10) i2@118@01)))))
    (or
      (Seq_contains (Seq_range 0 10) i1@117@01)
      (not (Seq_contains (Seq_range 0 10) i1@117@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 10) i1@117@01)
        (and
          (Seq_contains (Seq_range 0 10) i2@118@01)
          (not (= i1@117@01 i2@118@01))))
      (and
        (Seq_contains (Seq_range 0 10) i1@117@01)
        (Seq_contains (Seq_range 0 10) i2@118@01)
        (not (= i1@117@01 i2@118@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 10) i1@117@01)
          (and
            (Seq_contains (Seq_range 0 10) i2@118@01)
            (not (= i1@117@01 i2@118@01)))))
      (and
        (Seq_contains (Seq_range 0 10) i1@117@01)
        (and
          (Seq_contains (Seq_range 0 10) i2@118@01)
          (not (= i1@117@01 i2@118@01))))))
  :pattern ((Seq_index xs@114@01 i1@117@01) (Seq_index xs@114@01 i2@118@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@74@10@74@100-aux|)))
(assert (forall ((i1@117@01 Int) (i2@118@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 10) i1@117@01)
      (and
        (Seq_contains (Seq_range 0 10) i2@118@01)
        (not (= i1@117@01 i2@118@01))))
    (not (= (Seq_index xs@114@01 i1@117@01) (Seq_index xs@114@01 i2@118@01))))
  :pattern ((Seq_contains (Seq_range 0 10) i1@117@01) (Seq_contains
    (Seq_range 0 10)
    i2@118@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 10) i1@117@01) (Seq_contains_trigger
    (Seq_range 0 10)
    i2@118@01))
  :pattern ((Seq_contains (Seq_range 0 10) i1@117@01) (Seq_index
    xs@114@01
    i2@118@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 10) i1@117@01) (Seq_index
    xs@114@01
    i2@118@01))
  :pattern ((Seq_contains (Seq_range 0 10) i2@118@01) (Seq_index
    xs@114@01
    i1@117@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 10) i2@118@01) (Seq_index
    xs@114@01
    i1@117@01))
  :pattern ((Seq_index xs@114@01 i1@117@01) (Seq_index xs@114@01 i2@118@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@74@10@74@100|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall k: Int ::0 <= k && k < 10 ==> acc(xs[k].f, write))
(declare-const k@119@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= k && k < 10
; [eval] 0 <= k
(push) ; 4
; [then-branch: 63 | !(0 <= k@119@01) | live]
; [else-branch: 63 | 0 <= k@119@01 | live]
(push) ; 5
; [then-branch: 63 | !(0 <= k@119@01)]
(assert (not (<= 0 k@119@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 63 | 0 <= k@119@01]
(assert (<= 0 k@119@01))
; [eval] k < 10
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@119@01) (not (<= 0 k@119@01))))
(assert (and (<= 0 k@119@01) (< k@119@01 10)))
; [eval] xs[k]
(push) ; 4
(assert (not (>= k@119@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< k@119@01 (Seq_length xs@114@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-const $t@120@01 $FVF<f>)
(declare-fun inv@121@01 ($Ref) Int)
(declare-fun img@122@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@119@01 Int)) (!
  (=>
    (and (<= 0 k@119@01) (< k@119@01 10))
    (or (<= 0 k@119@01) (not (<= 0 k@119@01))))
  :pattern ((Seq_index xs@114@01 k@119@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((k1@119@01 Int) (k2@119@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@119@01) (< k1@119@01 10))
      (and (<= 0 k2@119@01) (< k2@119@01 10))
      (= (Seq_index xs@114@01 k1@119@01) (Seq_index xs@114@01 k2@119@01)))
    (= k1@119@01 k2@119@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@119@01 Int)) (!
  (=>
    (and (<= 0 k@119@01) (< k@119@01 10))
    (and
      (= (inv@121@01 (Seq_index xs@114@01 k@119@01)) k@119@01)
      (img@122@01 (Seq_index xs@114@01 k@119@01))))
  :pattern ((Seq_index xs@114@01 k@119@01))
  :qid |quant-u-12437|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@122@01 r) (and (<= 0 (inv@121@01 r)) (< (inv@121@01 r) 10)))
    (= (Seq_index xs@114@01 (inv@121@01 r)) r))
  :pattern ((inv@121@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((k@119@01 Int)) (!
  (=>
    (and (<= 0 k@119@01) (< k@119@01 10))
    (not (= (Seq_index xs@114@01 k@119@01) $Ref.null)))
  :pattern ((Seq_index xs@114@01 k@119@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 10 == fun07(xs)
(declare-const $t@123@01 $Snap)
(assert (= $t@123@01 $Snap.unit))
; [eval] 10 == fun07(xs)
; [eval] fun07(xs)
(set-option :timeout 0)
(push) ; 3
; [eval] |xs| > 10
; [eval] |xs|
; [eval] (forall i1: Int, i2: Int ::(i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@124@01 Int)
(declare-const i2@125@01 Int)
(push) ; 4
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2)
; [eval] (i1 in [0..3))
; [eval] [0..3)
(push) ; 5
; [then-branch: 64 | !(i1@124@01 in [0..3]) | live]
; [else-branch: 64 | i1@124@01 in [0..3] | live]
(push) ; 6
; [then-branch: 64 | !(i1@124@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i1@124@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 64 | i1@124@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i1@124@01))
; [eval] (i2 in [0..3))
; [eval] [0..3)
(push) ; 7
; [then-branch: 65 | !(i2@125@01 in [0..3]) | live]
; [else-branch: 65 | i2@125@01 in [0..3] | live]
(push) ; 8
; [then-branch: 65 | !(i2@125@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i2@125@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 65 | i2@125@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i2@125@01))
; [eval] i1 != i2
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 3) i2@125@01)
  (not (Seq_contains (Seq_range 0 3) i2@125@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 3) i1@124@01)
  (and
    (Seq_contains (Seq_range 0 3) i1@124@01)
    (or
      (Seq_contains (Seq_range 0 3) i2@125@01)
      (not (Seq_contains (Seq_range 0 3) i2@125@01))))))
(assert (or
  (Seq_contains (Seq_range 0 3) i1@124@01)
  (not (Seq_contains (Seq_range 0 3) i1@124@01))))
(push) ; 5
; [then-branch: 66 | i1@124@01 in [0..3] && i2@125@01 in [0..3] && i1@124@01 != i2@125@01 | live]
; [else-branch: 66 | !(i1@124@01 in [0..3] && i2@125@01 in [0..3] && i1@124@01 != i2@125@01) | live]
(push) ; 6
; [then-branch: 66 | i1@124@01 in [0..3] && i2@125@01 in [0..3] && i1@124@01 != i2@125@01]
(assert (and
  (Seq_contains (Seq_range 0 3) i1@124@01)
  (and (Seq_contains (Seq_range 0 3) i2@125@01) (not (= i1@124@01 i2@125@01)))))
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(push) ; 7
(assert (not (>= i1@124@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i1@124@01 (Seq_length xs@114@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 7
(assert (not (>= i2@125@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i2@125@01 (Seq_length xs@114@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 66 | !(i1@124@01 in [0..3] && i2@125@01 in [0..3] && i1@124@01 != i2@125@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 3) i1@124@01)
    (and (Seq_contains (Seq_range 0 3) i2@125@01) (not (= i1@124@01 i2@125@01))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 3) i1@124@01)
    (and (Seq_contains (Seq_range 0 3) i2@125@01) (not (= i1@124@01 i2@125@01))))
  (and
    (Seq_contains (Seq_range 0 3) i1@124@01)
    (Seq_contains (Seq_range 0 3) i2@125@01)
    (not (= i1@124@01 i2@125@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 3) i1@124@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@125@01)
        (not (= i1@124@01 i2@125@01)))))
  (and
    (Seq_contains (Seq_range 0 3) i1@124@01)
    (and (Seq_contains (Seq_range 0 3) i2@125@01) (not (= i1@124@01 i2@125@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((i1@124@01 Int) (i2@125@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@124@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@125@01)
        (not (= i1@124@01 i2@125@01))))
    (not (= (Seq_index xs@114@01 i1@124@01) (Seq_index xs@114@01 i2@125@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@69@12@69@100|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@124@01 Int) (i2@125@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@124@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@125@01)
        (not (= i1@124@01 i2@125@01))))
    (not (= (Seq_index xs@114@01 i1@124@01) (Seq_index xs@114@01 i2@125@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@69@12@69@100|)))
(declare-const k@126@01 Int)
(push) ; 4
; [eval] 0 <= k && k < 3
; [eval] 0 <= k
(push) ; 5
; [then-branch: 67 | !(0 <= k@126@01) | live]
; [else-branch: 67 | 0 <= k@126@01 | live]
(push) ; 6
; [then-branch: 67 | !(0 <= k@126@01)]
(assert (not (<= 0 k@126@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 67 | 0 <= k@126@01]
(assert (<= 0 k@126@01))
; [eval] k < 3
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@126@01) (not (<= 0 k@126@01))))
(assert (and (<= 0 k@126@01) (< k@126@01 3)))
; [eval] xs[k]
(push) ; 5
(assert (not (>= k@126@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@126@01 (Seq_length xs@114@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@127@01 ($Ref) Int)
(declare-fun img@128@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@126@01 Int)) (!
  (=>
    (and (<= 0 k@126@01) (< k@126@01 3))
    (or (<= 0 k@126@01) (not (<= 0 k@126@01))))
  :pattern ((Seq_index xs@114@01 k@126@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((k1@126@01 Int) (k2@126@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@126@01) (< k1@126@01 3))
      (and (<= 0 k2@126@01) (< k2@126@01 3))
      (= (Seq_index xs@114@01 k1@126@01) (Seq_index xs@114@01 k2@126@01)))
    (= k1@126@01 k2@126@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@126@01 Int)) (!
  (=>
    (and (<= 0 k@126@01) (< k@126@01 3))
    (and
      (= (inv@127@01 (Seq_index xs@114@01 k@126@01)) k@126@01)
      (img@128@01 (Seq_index xs@114@01 k@126@01))))
  :pattern ((Seq_index xs@114@01 k@126@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@128@01 r) (and (<= 0 (inv@127@01 r)) (< (inv@127@01 r) 3)))
    (= (Seq_index xs@114@01 (inv@127@01 r)) r))
  :pattern ((inv@127@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@127@01 r)) (< (inv@127@01 r) 3))
      (img@128@01 r)
      (= r (Seq_index xs@114@01 (inv@127@01 r))))
    (>
      (ite
        (and (img@122@01 r) (and (<= 0 (inv@121@01 r)) (< (inv@121@01 r) 10)))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-12439|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@129@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@129@01  $FVF<f>)))
      (and (and (<= 0 (inv@127@01 r)) (< (inv@127@01 r) 3)) (img@128@01 r)))
    (=>
      (and (and (<= 0 (inv@127@01 r)) (< (inv@127@01 r) 3)) (img@128@01 r))
      (Set_in r ($FVF.domain_f (as sm@129@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@129@01  $FVF<f>))))
  :qid |qp.fvfDomDef37|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@127@01 r)) (< (inv@127@01 r) 3)) (img@128@01 r))
      (and (img@122@01 r) (and (<= 0 (inv@121@01 r)) (< (inv@121@01 r) 10))))
    (= ($FVF.lookup_f (as sm@129@01  $FVF<f>) r) ($FVF.lookup_f $t@120@01 r)))
  :pattern (($FVF.lookup_f (as sm@129@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@120@01 r))
  :qid |qp.fvfValDef36|)))
(assert (fun07%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@129@01  $FVF<f>)))) xs@114@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((k@126@01 Int)) (!
  (=>
    (and (<= 0 k@126@01) (< k@126@01 3))
    (and
      (= (inv@127@01 (Seq_index xs@114@01 k@126@01)) k@126@01)
      (img@128@01 (Seq_index xs@114@01 k@126@01))))
  :pattern ((Seq_index xs@114@01 k@126@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@128@01 r) (and (<= 0 (inv@127@01 r)) (< (inv@127@01 r) 3)))
    (= (Seq_index xs@114@01 (inv@127@01 r)) r))
  :pattern ((inv@127@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@129@01  $FVF<f>)))
      (and (and (<= 0 (inv@127@01 r)) (< (inv@127@01 r) 3)) (img@128@01 r)))
    (=>
      (and (and (<= 0 (inv@127@01 r)) (< (inv@127@01 r) 3)) (img@128@01 r))
      (Set_in r ($FVF.domain_f (as sm@129@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@129@01  $FVF<f>))))
  :qid |qp.fvfDomDef37|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@127@01 r)) (< (inv@127@01 r) 3)) (img@128@01 r))
      (and (img@122@01 r) (and (<= 0 (inv@121@01 r)) (< (inv@121@01 r) 10))))
    (= ($FVF.lookup_f (as sm@129@01  $FVF<f>) r) ($FVF.lookup_f $t@120@01 r)))
  :pattern (($FVF.lookup_f (as sm@129@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@120@01 r))
  :qid |qp.fvfValDef36|)))
(assert (and
  (forall ((i1@124@01 Int) (i2@125@01 Int)) (!
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@124@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@125@01)
          (not (= i1@124@01 i2@125@01))))
      (not (= (Seq_index xs@114@01 i1@124@01) (Seq_index xs@114@01 i2@125@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@69@12@69@100|))
  (forall ((k@126@01 Int)) (!
    (=>
      (and (<= 0 k@126@01) (< k@126@01 3))
      (or (<= 0 k@126@01) (not (<= 0 k@126@01))))
    :pattern ((Seq_index xs@114@01 k@126@01))
    :qid |f-aux|))
  (fun07%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (as sm@129@01  $FVF<f>)))) xs@114@01)))
(assert (=
  10
  (fun07 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (as sm@129@01  $FVF<f>)))) xs@114@01)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; xs[6].f := 0
; [eval] xs[6]
(set-option :timeout 0)
(push) ; 3
(assert (not (< 6 (Seq_length xs@114@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@130@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index xs@114@01 6))
    ($Perm.min
      (ite
        (and (img@122@01 r) (and (<= 0 (inv@121@01 r)) (< (inv@121@01 r) 10)))
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
        (and (img@122@01 r) (and (<= 0 (inv@121@01 r)) (< (inv@121@01 r) 10)))
        $Perm.Write
        $Perm.No)
      (pTaken@130@01 r))
    $Perm.No)
  
  :qid |quant-u-12441|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@130@01 r) $Perm.No)
  
  :qid |quant-u-12442|))))
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
    (= r (Seq_index xs@114@01 6))
    (= (- $Perm.Write (pTaken@130@01 r)) $Perm.No))
  
  :qid |quant-u-12443|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@131@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_f (as sm@131@01  $FVF<f>) (Seq_index xs@114@01 6)) 0))
; [exec]
; assert 10 == fun07(xs)
; [eval] 10 == fun07(xs)
; [eval] fun07(xs)
(set-option :timeout 0)
(push) ; 3
; [eval] |xs| > 10
; [eval] |xs|
; [eval] (forall i1: Int, i2: Int ::(i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@132@01 Int)
(declare-const i2@133@01 Int)
(push) ; 4
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2)
; [eval] (i1 in [0..3))
; [eval] [0..3)
(push) ; 5
; [then-branch: 68 | !(i1@132@01 in [0..3]) | live]
; [else-branch: 68 | i1@132@01 in [0..3] | live]
(push) ; 6
; [then-branch: 68 | !(i1@132@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i1@132@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 68 | i1@132@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i1@132@01))
; [eval] (i2 in [0..3))
; [eval] [0..3)
(push) ; 7
; [then-branch: 69 | !(i2@133@01 in [0..3]) | live]
; [else-branch: 69 | i2@133@01 in [0..3] | live]
(push) ; 8
; [then-branch: 69 | !(i2@133@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i2@133@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 69 | i2@133@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i2@133@01))
; [eval] i1 != i2
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 3) i2@133@01)
  (not (Seq_contains (Seq_range 0 3) i2@133@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 3) i1@132@01)
  (and
    (Seq_contains (Seq_range 0 3) i1@132@01)
    (or
      (Seq_contains (Seq_range 0 3) i2@133@01)
      (not (Seq_contains (Seq_range 0 3) i2@133@01))))))
(assert (or
  (Seq_contains (Seq_range 0 3) i1@132@01)
  (not (Seq_contains (Seq_range 0 3) i1@132@01))))
(push) ; 5
; [then-branch: 70 | i1@132@01 in [0..3] && i2@133@01 in [0..3] && i1@132@01 != i2@133@01 | live]
; [else-branch: 70 | !(i1@132@01 in [0..3] && i2@133@01 in [0..3] && i1@132@01 != i2@133@01) | live]
(push) ; 6
; [then-branch: 70 | i1@132@01 in [0..3] && i2@133@01 in [0..3] && i1@132@01 != i2@133@01]
(assert (and
  (Seq_contains (Seq_range 0 3) i1@132@01)
  (and (Seq_contains (Seq_range 0 3) i2@133@01) (not (= i1@132@01 i2@133@01)))))
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(push) ; 7
(assert (not (>= i1@132@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i1@132@01 (Seq_length xs@114@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 7
(assert (not (>= i2@133@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i2@133@01 (Seq_length xs@114@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 70 | !(i1@132@01 in [0..3] && i2@133@01 in [0..3] && i1@132@01 != i2@133@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 3) i1@132@01)
    (and (Seq_contains (Seq_range 0 3) i2@133@01) (not (= i1@132@01 i2@133@01))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 3) i1@132@01)
    (and (Seq_contains (Seq_range 0 3) i2@133@01) (not (= i1@132@01 i2@133@01))))
  (and
    (Seq_contains (Seq_range 0 3) i1@132@01)
    (Seq_contains (Seq_range 0 3) i2@133@01)
    (not (= i1@132@01 i2@133@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 3) i1@132@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@133@01)
        (not (= i1@132@01 i2@133@01)))))
  (and
    (Seq_contains (Seq_range 0 3) i1@132@01)
    (and (Seq_contains (Seq_range 0 3) i2@133@01) (not (= i1@132@01 i2@133@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((i1@132@01 Int) (i2@133@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@132@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@133@01)
        (not (= i1@132@01 i2@133@01))))
    (not (= (Seq_index xs@114@01 i1@132@01) (Seq_index xs@114@01 i2@133@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@69@12@69@100|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@132@01 Int) (i2@133@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@132@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@133@01)
        (not (= i1@132@01 i2@133@01))))
    (not (= (Seq_index xs@114@01 i1@132@01) (Seq_index xs@114@01 i2@133@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@69@12@69@100|)))
(declare-const k@134@01 Int)
(push) ; 4
; [eval] 0 <= k && k < 3
; [eval] 0 <= k
(push) ; 5
; [then-branch: 71 | !(0 <= k@134@01) | live]
; [else-branch: 71 | 0 <= k@134@01 | live]
(push) ; 6
; [then-branch: 71 | !(0 <= k@134@01)]
(assert (not (<= 0 k@134@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 71 | 0 <= k@134@01]
(assert (<= 0 k@134@01))
; [eval] k < 3
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@134@01) (not (<= 0 k@134@01))))
(assert (and (<= 0 k@134@01) (< k@134@01 3)))
; [eval] xs[k]
(push) ; 5
(assert (not (>= k@134@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@134@01 (Seq_length xs@114@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@135@01 ($Ref) Int)
(declare-fun img@136@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@134@01 Int)) (!
  (=>
    (and (<= 0 k@134@01) (< k@134@01 3))
    (or (<= 0 k@134@01) (not (<= 0 k@134@01))))
  :pattern ((Seq_index xs@114@01 k@134@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((k1@134@01 Int) (k2@134@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@134@01) (< k1@134@01 3))
      (and (<= 0 k2@134@01) (< k2@134@01 3))
      (= (Seq_index xs@114@01 k1@134@01) (Seq_index xs@114@01 k2@134@01)))
    (= k1@134@01 k2@134@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@134@01 Int)) (!
  (=>
    (and (<= 0 k@134@01) (< k@134@01 3))
    (and
      (= (inv@135@01 (Seq_index xs@114@01 k@134@01)) k@134@01)
      (img@136@01 (Seq_index xs@114@01 k@134@01))))
  :pattern ((Seq_index xs@114@01 k@134@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (and (<= 0 (inv@135@01 r)) (< (inv@135@01 r) 3)))
    (= (Seq_index xs@114@01 (inv@135@01 r)) r))
  :pattern ((inv@135@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@135@01 r)) (< (inv@135@01 r) 3))
      (img@136@01 r)
      (= r (Seq_index xs@114@01 (inv@135@01 r))))
    (>
      (+
        (ite
          (and (img@122@01 r) (and (<= 0 (inv@121@01 r)) (< (inv@121@01 r) 10)))
          (- $Perm.Write (pTaken@130@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@114@01 6)) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-12445|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@137@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@137@01  $FVF<f>)))
      (and (and (<= 0 (inv@135@01 r)) (< (inv@135@01 r) 3)) (img@136@01 r)))
    (=>
      (and (and (<= 0 (inv@135@01 r)) (< (inv@135@01 r) 3)) (img@136@01 r))
      (Set_in r ($FVF.domain_f (as sm@137@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@137@01  $FVF<f>))))
  :qid |qp.fvfDomDef40|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@135@01 r)) (< (inv@135@01 r) 3)) (img@136@01 r))
      (= r (Seq_index xs@114@01 6)))
    (=
      ($FVF.lookup_f (as sm@137@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@131@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@137@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@131@01  $FVF<f>) r))
  :qid |qp.fvfValDef38|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@135@01 r)) (< (inv@135@01 r) 3)) (img@136@01 r))
      (ite
        (and (img@122@01 r) (and (<= 0 (inv@121@01 r)) (< (inv@121@01 r) 10)))
        (< $Perm.No (- $Perm.Write (pTaken@130@01 r)))
        false))
    (= ($FVF.lookup_f (as sm@137@01  $FVF<f>) r) ($FVF.lookup_f $t@120@01 r)))
  :pattern (($FVF.lookup_f (as sm@137@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@120@01 r))
  :qid |qp.fvfValDef39|)))
(assert (fun07%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@137@01  $FVF<f>)))) xs@114@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((k@134@01 Int)) (!
  (=>
    (and (<= 0 k@134@01) (< k@134@01 3))
    (and
      (= (inv@135@01 (Seq_index xs@114@01 k@134@01)) k@134@01)
      (img@136@01 (Seq_index xs@114@01 k@134@01))))
  :pattern ((Seq_index xs@114@01 k@134@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@136@01 r) (and (<= 0 (inv@135@01 r)) (< (inv@135@01 r) 3)))
    (= (Seq_index xs@114@01 (inv@135@01 r)) r))
  :pattern ((inv@135@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@137@01  $FVF<f>)))
      (and (and (<= 0 (inv@135@01 r)) (< (inv@135@01 r) 3)) (img@136@01 r)))
    (=>
      (and (and (<= 0 (inv@135@01 r)) (< (inv@135@01 r) 3)) (img@136@01 r))
      (Set_in r ($FVF.domain_f (as sm@137@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@137@01  $FVF<f>))))
  :qid |qp.fvfDomDef40|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@135@01 r)) (< (inv@135@01 r) 3)) (img@136@01 r))
      (= r (Seq_index xs@114@01 6)))
    (=
      ($FVF.lookup_f (as sm@137@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@131@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@137@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@131@01  $FVF<f>) r))
  :qid |qp.fvfValDef38|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@135@01 r)) (< (inv@135@01 r) 3)) (img@136@01 r))
      (ite
        (and (img@122@01 r) (and (<= 0 (inv@121@01 r)) (< (inv@121@01 r) 10)))
        (< $Perm.No (- $Perm.Write (pTaken@130@01 r)))
        false))
    (= ($FVF.lookup_f (as sm@137@01  $FVF<f>) r) ($FVF.lookup_f $t@120@01 r)))
  :pattern (($FVF.lookup_f (as sm@137@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@120@01 r))
  :qid |qp.fvfValDef39|)))
(assert (and
  (forall ((i1@132@01 Int) (i2@133@01 Int)) (!
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@132@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@133@01)
          (not (= i1@132@01 i2@133@01))))
      (not (= (Seq_index xs@114@01 i1@132@01) (Seq_index xs@114@01 i2@133@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@69@12@69@100|))
  (forall ((k@134@01 Int)) (!
    (=>
      (and (<= 0 k@134@01) (< k@134@01 3))
      (or (<= 0 k@134@01) (not (<= 0 k@134@01))))
    :pattern ((Seq_index xs@114@01 k@134@01))
    :qid |f-aux|))
  (fun07%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (as sm@137@01  $FVF<f>)))) xs@114@01)))
(push) ; 3
(assert (not (=
  10
  (fun07 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (as sm@137@01  $FVF<f>)))) xs@114@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  10
  (fun07 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (as sm@137@01  $FVF<f>)))) xs@114@01)))
(pop) ; 2
(pop) ; 1
; ---------- test04 ----------
(declare-const xs@138@01 Seq<$Ref>)
(declare-const xs@139@01 Seq<$Ref>)
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
; inhale |xs| > 10
(declare-const $t@140@01 $Snap)
(assert (= $t@140@01 $Snap.unit))
; [eval] |xs| > 10
; [eval] |xs|
(assert (> (Seq_length xs@139@01) 10))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i1: Int, i2: Int ::
;     { (i1 in [0..3)), (i2 in [0..3)) }
;     { (i1 in [0..3)), xs[i2] }
;     { (i2 in [0..3)), xs[i1] }
;     { xs[i1], xs[i2] }
;     (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const $t@141@01 $Snap)
(assert (= $t@141@01 $Snap.unit))
; [eval] (forall i1: Int, i2: Int :: { (i1 in [0..3)), (i2 in [0..3)) } { (i1 in [0..3)), xs[i2] } { (i2 in [0..3)), xs[i1] } { xs[i1], xs[i2] } (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@142@01 Int)
(declare-const i2@143@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2)
; [eval] (i1 in [0..3))
; [eval] [0..3)
(push) ; 4
; [then-branch: 72 | !(i1@142@01 in [0..3]) | live]
; [else-branch: 72 | i1@142@01 in [0..3] | live]
(push) ; 5
; [then-branch: 72 | !(i1@142@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i1@142@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 72 | i1@142@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i1@142@01))
; [eval] (i2 in [0..3))
; [eval] [0..3)
(push) ; 6
; [then-branch: 73 | !(i2@143@01 in [0..3]) | live]
; [else-branch: 73 | i2@143@01 in [0..3] | live]
(push) ; 7
; [then-branch: 73 | !(i2@143@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i2@143@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 73 | i2@143@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i2@143@01))
; [eval] i1 != i2
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 3) i2@143@01)
  (not (Seq_contains (Seq_range 0 3) i2@143@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 3) i1@142@01)
  (and
    (Seq_contains (Seq_range 0 3) i1@142@01)
    (or
      (Seq_contains (Seq_range 0 3) i2@143@01)
      (not (Seq_contains (Seq_range 0 3) i2@143@01))))))
(assert (or
  (Seq_contains (Seq_range 0 3) i1@142@01)
  (not (Seq_contains (Seq_range 0 3) i1@142@01))))
(push) ; 4
; [then-branch: 74 | i1@142@01 in [0..3] && i2@143@01 in [0..3] && i1@142@01 != i2@143@01 | live]
; [else-branch: 74 | !(i1@142@01 in [0..3] && i2@143@01 in [0..3] && i1@142@01 != i2@143@01) | live]
(push) ; 5
; [then-branch: 74 | i1@142@01 in [0..3] && i2@143@01 in [0..3] && i1@142@01 != i2@143@01]
(assert (and
  (Seq_contains (Seq_range 0 3) i1@142@01)
  (and (Seq_contains (Seq_range 0 3) i2@143@01) (not (= i1@142@01 i2@143@01)))))
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(push) ; 6
(assert (not (>= i1@142@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i1@142@01 (Seq_length xs@139@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 6
(assert (not (>= i2@143@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i2@143@01 (Seq_length xs@139@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 74 | !(i1@142@01 in [0..3] && i2@143@01 in [0..3] && i1@142@01 != i2@143@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 3) i1@142@01)
    (and (Seq_contains (Seq_range 0 3) i2@143@01) (not (= i1@142@01 i2@143@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 3) i1@142@01)
    (and (Seq_contains (Seq_range 0 3) i2@143@01) (not (= i1@142@01 i2@143@01))))
  (and
    (Seq_contains (Seq_range 0 3) i1@142@01)
    (Seq_contains (Seq_range 0 3) i2@143@01)
    (not (= i1@142@01 i2@143@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 3) i1@142@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@143@01)
        (not (= i1@142@01 i2@143@01)))))
  (and
    (Seq_contains (Seq_range 0 3) i1@142@01)
    (and (Seq_contains (Seq_range 0 3) i2@143@01) (not (= i1@142@01 i2@143@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i1@142@01 Int) (i2@143@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@142@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@142@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@143@01)
          (not (Seq_contains (Seq_range 0 3) i2@143@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@142@01)
      (not (Seq_contains (Seq_range 0 3) i1@142@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@142@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@143@01)
          (not (= i1@142@01 i2@143@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@142@01)
        (Seq_contains (Seq_range 0 3) i2@143@01)
        (not (= i1@142@01 i2@143@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@142@01)
          (and
            (Seq_contains (Seq_range 0 3) i2@143@01)
            (not (= i1@142@01 i2@143@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@142@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@143@01)
          (not (= i1@142@01 i2@143@01))))))
  :pattern ((Seq_contains (Seq_range 0 3) i1@142@01) (Seq_contains
    (Seq_range 0 3)
    i2@143@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i1@142@01) (Seq_contains_trigger
    (Seq_range 0 3)
    i2@143@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@93@10@93@98-aux|)))
(assert (forall ((i1@142@01 Int) (i2@143@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@142@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@142@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@143@01)
          (not (Seq_contains (Seq_range 0 3) i2@143@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@142@01)
      (not (Seq_contains (Seq_range 0 3) i1@142@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@142@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@143@01)
          (not (= i1@142@01 i2@143@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@142@01)
        (Seq_contains (Seq_range 0 3) i2@143@01)
        (not (= i1@142@01 i2@143@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@142@01)
          (and
            (Seq_contains (Seq_range 0 3) i2@143@01)
            (not (= i1@142@01 i2@143@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@142@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@143@01)
          (not (= i1@142@01 i2@143@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i1@142@01) (Seq_contains_trigger
    (Seq_range 0 3)
    i2@143@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@93@10@93@98-aux|)))
(assert (forall ((i1@142@01 Int) (i2@143@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@142@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@142@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@143@01)
          (not (Seq_contains (Seq_range 0 3) i2@143@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@142@01)
      (not (Seq_contains (Seq_range 0 3) i1@142@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@142@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@143@01)
          (not (= i1@142@01 i2@143@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@142@01)
        (Seq_contains (Seq_range 0 3) i2@143@01)
        (not (= i1@142@01 i2@143@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@142@01)
          (and
            (Seq_contains (Seq_range 0 3) i2@143@01)
            (not (= i1@142@01 i2@143@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@142@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@143@01)
          (not (= i1@142@01 i2@143@01))))))
  :pattern ((Seq_contains (Seq_range 0 3) i1@142@01) (Seq_index
    xs@139@01
    i2@143@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i1@142@01) (Seq_index
    xs@139@01
    i2@143@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@93@10@93@98-aux|)))
(assert (forall ((i1@142@01 Int) (i2@143@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@142@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@142@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@143@01)
          (not (Seq_contains (Seq_range 0 3) i2@143@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@142@01)
      (not (Seq_contains (Seq_range 0 3) i1@142@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@142@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@143@01)
          (not (= i1@142@01 i2@143@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@142@01)
        (Seq_contains (Seq_range 0 3) i2@143@01)
        (not (= i1@142@01 i2@143@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@142@01)
          (and
            (Seq_contains (Seq_range 0 3) i2@143@01)
            (not (= i1@142@01 i2@143@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@142@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@143@01)
          (not (= i1@142@01 i2@143@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i1@142@01) (Seq_index
    xs@139@01
    i2@143@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@93@10@93@98-aux|)))
(assert (forall ((i1@142@01 Int) (i2@143@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@142@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@142@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@143@01)
          (not (Seq_contains (Seq_range 0 3) i2@143@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@142@01)
      (not (Seq_contains (Seq_range 0 3) i1@142@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@142@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@143@01)
          (not (= i1@142@01 i2@143@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@142@01)
        (Seq_contains (Seq_range 0 3) i2@143@01)
        (not (= i1@142@01 i2@143@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@142@01)
          (and
            (Seq_contains (Seq_range 0 3) i2@143@01)
            (not (= i1@142@01 i2@143@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@142@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@143@01)
          (not (= i1@142@01 i2@143@01))))))
  :pattern ((Seq_contains (Seq_range 0 3) i2@143@01) (Seq_index
    xs@139@01
    i1@142@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i2@143@01) (Seq_index
    xs@139@01
    i1@142@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@93@10@93@98-aux|)))
(assert (forall ((i1@142@01 Int) (i2@143@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@142@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@142@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@143@01)
          (not (Seq_contains (Seq_range 0 3) i2@143@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@142@01)
      (not (Seq_contains (Seq_range 0 3) i1@142@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@142@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@143@01)
          (not (= i1@142@01 i2@143@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@142@01)
        (Seq_contains (Seq_range 0 3) i2@143@01)
        (not (= i1@142@01 i2@143@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@142@01)
          (and
            (Seq_contains (Seq_range 0 3) i2@143@01)
            (not (= i1@142@01 i2@143@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@142@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@143@01)
          (not (= i1@142@01 i2@143@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i2@143@01) (Seq_index
    xs@139@01
    i1@142@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@93@10@93@98-aux|)))
(assert (forall ((i1@142@01 Int) (i2@143@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@142@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@142@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@143@01)
          (not (Seq_contains (Seq_range 0 3) i2@143@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@142@01)
      (not (Seq_contains (Seq_range 0 3) i1@142@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@142@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@143@01)
          (not (= i1@142@01 i2@143@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@142@01)
        (Seq_contains (Seq_range 0 3) i2@143@01)
        (not (= i1@142@01 i2@143@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@142@01)
          (and
            (Seq_contains (Seq_range 0 3) i2@143@01)
            (not (= i1@142@01 i2@143@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@142@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@143@01)
          (not (= i1@142@01 i2@143@01))))))
  :pattern ((Seq_index xs@139@01 i1@142@01) (Seq_index xs@139@01 i2@143@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@93@10@93@98-aux|)))
(assert (forall ((i1@142@01 Int) (i2@143@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@142@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@143@01)
        (not (= i1@142@01 i2@143@01))))
    (not (= (Seq_index xs@139@01 i1@142@01) (Seq_index xs@139@01 i2@143@01))))
  :pattern ((Seq_contains (Seq_range 0 3) i1@142@01) (Seq_contains
    (Seq_range 0 3)
    i2@143@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i1@142@01) (Seq_contains_trigger
    (Seq_range 0 3)
    i2@143@01))
  :pattern ((Seq_contains (Seq_range 0 3) i1@142@01) (Seq_index
    xs@139@01
    i2@143@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i1@142@01) (Seq_index
    xs@139@01
    i2@143@01))
  :pattern ((Seq_contains (Seq_range 0 3) i2@143@01) (Seq_index
    xs@139@01
    i1@142@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i2@143@01) (Seq_index
    xs@139@01
    i1@142@01))
  :pattern ((Seq_index xs@139@01 i1@142@01) (Seq_index xs@139@01 i2@143@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@93@10@93@98|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall k: Int ::0 <= k && k < 3 ==> acc(xs[k].f, write))
(declare-const k@144@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= k && k < 3
; [eval] 0 <= k
(push) ; 4
; [then-branch: 75 | !(0 <= k@144@01) | live]
; [else-branch: 75 | 0 <= k@144@01 | live]
(push) ; 5
; [then-branch: 75 | !(0 <= k@144@01)]
(assert (not (<= 0 k@144@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 75 | 0 <= k@144@01]
(assert (<= 0 k@144@01))
; [eval] k < 3
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@144@01) (not (<= 0 k@144@01))))
(assert (and (<= 0 k@144@01) (< k@144@01 3)))
; [eval] xs[k]
(push) ; 4
(assert (not (>= k@144@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< k@144@01 (Seq_length xs@139@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-const $t@145@01 $FVF<f>)
(declare-fun inv@146@01 ($Ref) Int)
(declare-fun img@147@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@144@01 Int)) (!
  (=>
    (and (<= 0 k@144@01) (< k@144@01 3))
    (or (<= 0 k@144@01) (not (<= 0 k@144@01))))
  :pattern ((Seq_index xs@139@01 k@144@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((k1@144@01 Int) (k2@144@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@144@01) (< k1@144@01 3))
      (and (<= 0 k2@144@01) (< k2@144@01 3))
      (= (Seq_index xs@139@01 k1@144@01) (Seq_index xs@139@01 k2@144@01)))
    (= k1@144@01 k2@144@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@144@01 Int)) (!
  (=>
    (and (<= 0 k@144@01) (< k@144@01 3))
    (and
      (= (inv@146@01 (Seq_index xs@139@01 k@144@01)) k@144@01)
      (img@147@01 (Seq_index xs@139@01 k@144@01))))
  :pattern ((Seq_index xs@139@01 k@144@01))
  :qid |quant-u-12447|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
    (= (Seq_index xs@139@01 (inv@146@01 r)) r))
  :pattern ((inv@146@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((k@144@01 Int)) (!
  (=>
    (and (<= 0 k@144@01) (< k@144@01 3))
    (not (= (Seq_index xs@139@01 k@144@01) $Ref.null)))
  :pattern ((Seq_index xs@139@01 k@144@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i1: Int, i2: Int ::
;     { (i1 in [6..9)), (i2 in [6..9)) }
;     { (i1 in [6..9)), xs[i2] }
;     { (i2 in [6..9)), xs[i1] }
;     { xs[i1], xs[i2] }
;     (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const $t@148@01 $Snap)
(assert (= $t@148@01 $Snap.unit))
; [eval] (forall i1: Int, i2: Int :: { (i1 in [6..9)), (i2 in [6..9)) } { (i1 in [6..9)), xs[i2] } { (i2 in [6..9)), xs[i1] } { xs[i1], xs[i2] } (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@149@01 Int)
(declare-const i2@150@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2)
; [eval] (i1 in [6..9))
; [eval] [6..9)
(push) ; 4
; [then-branch: 76 | !(i1@149@01 in [6..9]) | live]
; [else-branch: 76 | i1@149@01 in [6..9] | live]
(push) ; 5
; [then-branch: 76 | !(i1@149@01 in [6..9])]
(assert (not (Seq_contains (Seq_range 6 9) i1@149@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 76 | i1@149@01 in [6..9]]
(assert (Seq_contains (Seq_range 6 9) i1@149@01))
; [eval] (i2 in [6..9))
; [eval] [6..9)
(push) ; 6
; [then-branch: 77 | !(i2@150@01 in [6..9]) | live]
; [else-branch: 77 | i2@150@01 in [6..9] | live]
(push) ; 7
; [then-branch: 77 | !(i2@150@01 in [6..9])]
(assert (not (Seq_contains (Seq_range 6 9) i2@150@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 77 | i2@150@01 in [6..9]]
(assert (Seq_contains (Seq_range 6 9) i2@150@01))
; [eval] i1 != i2
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 6 9) i2@150@01)
  (not (Seq_contains (Seq_range 6 9) i2@150@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 6 9) i1@149@01)
  (and
    (Seq_contains (Seq_range 6 9) i1@149@01)
    (or
      (Seq_contains (Seq_range 6 9) i2@150@01)
      (not (Seq_contains (Seq_range 6 9) i2@150@01))))))
(assert (or
  (Seq_contains (Seq_range 6 9) i1@149@01)
  (not (Seq_contains (Seq_range 6 9) i1@149@01))))
(push) ; 4
; [then-branch: 78 | i1@149@01 in [6..9] && i2@150@01 in [6..9] && i1@149@01 != i2@150@01 | live]
; [else-branch: 78 | !(i1@149@01 in [6..9] && i2@150@01 in [6..9] && i1@149@01 != i2@150@01) | live]
(push) ; 5
; [then-branch: 78 | i1@149@01 in [6..9] && i2@150@01 in [6..9] && i1@149@01 != i2@150@01]
(assert (and
  (Seq_contains (Seq_range 6 9) i1@149@01)
  (and (Seq_contains (Seq_range 6 9) i2@150@01) (not (= i1@149@01 i2@150@01)))))
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(push) ; 6
(assert (not (>= i1@149@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i1@149@01 (Seq_length xs@139@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 6
(assert (not (>= i2@150@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i2@150@01 (Seq_length xs@139@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 78 | !(i1@149@01 in [6..9] && i2@150@01 in [6..9] && i1@149@01 != i2@150@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 6 9) i1@149@01)
    (and (Seq_contains (Seq_range 6 9) i2@150@01) (not (= i1@149@01 i2@150@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 6 9) i1@149@01)
    (and (Seq_contains (Seq_range 6 9) i2@150@01) (not (= i1@149@01 i2@150@01))))
  (and
    (Seq_contains (Seq_range 6 9) i1@149@01)
    (Seq_contains (Seq_range 6 9) i2@150@01)
    (not (= i1@149@01 i2@150@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 6 9) i1@149@01)
      (and
        (Seq_contains (Seq_range 6 9) i2@150@01)
        (not (= i1@149@01 i2@150@01)))))
  (and
    (Seq_contains (Seq_range 6 9) i1@149@01)
    (and (Seq_contains (Seq_range 6 9) i2@150@01) (not (= i1@149@01 i2@150@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i1@149@01 Int) (i2@150@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 6 9) i1@149@01)
      (and
        (Seq_contains (Seq_range 6 9) i1@149@01)
        (or
          (Seq_contains (Seq_range 6 9) i2@150@01)
          (not (Seq_contains (Seq_range 6 9) i2@150@01)))))
    (or
      (Seq_contains (Seq_range 6 9) i1@149@01)
      (not (Seq_contains (Seq_range 6 9) i1@149@01)))
    (=>
      (and
        (Seq_contains (Seq_range 6 9) i1@149@01)
        (and
          (Seq_contains (Seq_range 6 9) i2@150@01)
          (not (= i1@149@01 i2@150@01))))
      (and
        (Seq_contains (Seq_range 6 9) i1@149@01)
        (Seq_contains (Seq_range 6 9) i2@150@01)
        (not (= i1@149@01 i2@150@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 6 9) i1@149@01)
          (and
            (Seq_contains (Seq_range 6 9) i2@150@01)
            (not (= i1@149@01 i2@150@01)))))
      (and
        (Seq_contains (Seq_range 6 9) i1@149@01)
        (and
          (Seq_contains (Seq_range 6 9) i2@150@01)
          (not (= i1@149@01 i2@150@01))))))
  :pattern ((Seq_contains (Seq_range 6 9) i1@149@01) (Seq_contains
    (Seq_range 6 9)
    i2@150@01))
  :pattern ((Seq_contains_trigger (Seq_range 6 9) i1@149@01) (Seq_contains_trigger
    (Seq_range 6 9)
    i2@150@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@95@10@95@98-aux|)))
(assert (forall ((i1@149@01 Int) (i2@150@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 6 9) i1@149@01)
      (and
        (Seq_contains (Seq_range 6 9) i1@149@01)
        (or
          (Seq_contains (Seq_range 6 9) i2@150@01)
          (not (Seq_contains (Seq_range 6 9) i2@150@01)))))
    (or
      (Seq_contains (Seq_range 6 9) i1@149@01)
      (not (Seq_contains (Seq_range 6 9) i1@149@01)))
    (=>
      (and
        (Seq_contains (Seq_range 6 9) i1@149@01)
        (and
          (Seq_contains (Seq_range 6 9) i2@150@01)
          (not (= i1@149@01 i2@150@01))))
      (and
        (Seq_contains (Seq_range 6 9) i1@149@01)
        (Seq_contains (Seq_range 6 9) i2@150@01)
        (not (= i1@149@01 i2@150@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 6 9) i1@149@01)
          (and
            (Seq_contains (Seq_range 6 9) i2@150@01)
            (not (= i1@149@01 i2@150@01)))))
      (and
        (Seq_contains (Seq_range 6 9) i1@149@01)
        (and
          (Seq_contains (Seq_range 6 9) i2@150@01)
          (not (= i1@149@01 i2@150@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 6 9) i1@149@01) (Seq_contains_trigger
    (Seq_range 6 9)
    i2@150@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@95@10@95@98-aux|)))
(assert (forall ((i1@149@01 Int) (i2@150@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 6 9) i1@149@01)
      (and
        (Seq_contains (Seq_range 6 9) i1@149@01)
        (or
          (Seq_contains (Seq_range 6 9) i2@150@01)
          (not (Seq_contains (Seq_range 6 9) i2@150@01)))))
    (or
      (Seq_contains (Seq_range 6 9) i1@149@01)
      (not (Seq_contains (Seq_range 6 9) i1@149@01)))
    (=>
      (and
        (Seq_contains (Seq_range 6 9) i1@149@01)
        (and
          (Seq_contains (Seq_range 6 9) i2@150@01)
          (not (= i1@149@01 i2@150@01))))
      (and
        (Seq_contains (Seq_range 6 9) i1@149@01)
        (Seq_contains (Seq_range 6 9) i2@150@01)
        (not (= i1@149@01 i2@150@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 6 9) i1@149@01)
          (and
            (Seq_contains (Seq_range 6 9) i2@150@01)
            (not (= i1@149@01 i2@150@01)))))
      (and
        (Seq_contains (Seq_range 6 9) i1@149@01)
        (and
          (Seq_contains (Seq_range 6 9) i2@150@01)
          (not (= i1@149@01 i2@150@01))))))
  :pattern ((Seq_contains (Seq_range 6 9) i1@149@01) (Seq_index
    xs@139@01
    i2@150@01))
  :pattern ((Seq_contains_trigger (Seq_range 6 9) i1@149@01) (Seq_index
    xs@139@01
    i2@150@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@95@10@95@98-aux|)))
(assert (forall ((i1@149@01 Int) (i2@150@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 6 9) i1@149@01)
      (and
        (Seq_contains (Seq_range 6 9) i1@149@01)
        (or
          (Seq_contains (Seq_range 6 9) i2@150@01)
          (not (Seq_contains (Seq_range 6 9) i2@150@01)))))
    (or
      (Seq_contains (Seq_range 6 9) i1@149@01)
      (not (Seq_contains (Seq_range 6 9) i1@149@01)))
    (=>
      (and
        (Seq_contains (Seq_range 6 9) i1@149@01)
        (and
          (Seq_contains (Seq_range 6 9) i2@150@01)
          (not (= i1@149@01 i2@150@01))))
      (and
        (Seq_contains (Seq_range 6 9) i1@149@01)
        (Seq_contains (Seq_range 6 9) i2@150@01)
        (not (= i1@149@01 i2@150@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 6 9) i1@149@01)
          (and
            (Seq_contains (Seq_range 6 9) i2@150@01)
            (not (= i1@149@01 i2@150@01)))))
      (and
        (Seq_contains (Seq_range 6 9) i1@149@01)
        (and
          (Seq_contains (Seq_range 6 9) i2@150@01)
          (not (= i1@149@01 i2@150@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 6 9) i1@149@01) (Seq_index
    xs@139@01
    i2@150@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@95@10@95@98-aux|)))
(assert (forall ((i1@149@01 Int) (i2@150@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 6 9) i1@149@01)
      (and
        (Seq_contains (Seq_range 6 9) i1@149@01)
        (or
          (Seq_contains (Seq_range 6 9) i2@150@01)
          (not (Seq_contains (Seq_range 6 9) i2@150@01)))))
    (or
      (Seq_contains (Seq_range 6 9) i1@149@01)
      (not (Seq_contains (Seq_range 6 9) i1@149@01)))
    (=>
      (and
        (Seq_contains (Seq_range 6 9) i1@149@01)
        (and
          (Seq_contains (Seq_range 6 9) i2@150@01)
          (not (= i1@149@01 i2@150@01))))
      (and
        (Seq_contains (Seq_range 6 9) i1@149@01)
        (Seq_contains (Seq_range 6 9) i2@150@01)
        (not (= i1@149@01 i2@150@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 6 9) i1@149@01)
          (and
            (Seq_contains (Seq_range 6 9) i2@150@01)
            (not (= i1@149@01 i2@150@01)))))
      (and
        (Seq_contains (Seq_range 6 9) i1@149@01)
        (and
          (Seq_contains (Seq_range 6 9) i2@150@01)
          (not (= i1@149@01 i2@150@01))))))
  :pattern ((Seq_contains (Seq_range 6 9) i2@150@01) (Seq_index
    xs@139@01
    i1@149@01))
  :pattern ((Seq_contains_trigger (Seq_range 6 9) i2@150@01) (Seq_index
    xs@139@01
    i1@149@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@95@10@95@98-aux|)))
(assert (forall ((i1@149@01 Int) (i2@150@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 6 9) i1@149@01)
      (and
        (Seq_contains (Seq_range 6 9) i1@149@01)
        (or
          (Seq_contains (Seq_range 6 9) i2@150@01)
          (not (Seq_contains (Seq_range 6 9) i2@150@01)))))
    (or
      (Seq_contains (Seq_range 6 9) i1@149@01)
      (not (Seq_contains (Seq_range 6 9) i1@149@01)))
    (=>
      (and
        (Seq_contains (Seq_range 6 9) i1@149@01)
        (and
          (Seq_contains (Seq_range 6 9) i2@150@01)
          (not (= i1@149@01 i2@150@01))))
      (and
        (Seq_contains (Seq_range 6 9) i1@149@01)
        (Seq_contains (Seq_range 6 9) i2@150@01)
        (not (= i1@149@01 i2@150@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 6 9) i1@149@01)
          (and
            (Seq_contains (Seq_range 6 9) i2@150@01)
            (not (= i1@149@01 i2@150@01)))))
      (and
        (Seq_contains (Seq_range 6 9) i1@149@01)
        (and
          (Seq_contains (Seq_range 6 9) i2@150@01)
          (not (= i1@149@01 i2@150@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 6 9) i2@150@01) (Seq_index
    xs@139@01
    i1@149@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@95@10@95@98-aux|)))
(assert (forall ((i1@149@01 Int) (i2@150@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 6 9) i1@149@01)
      (and
        (Seq_contains (Seq_range 6 9) i1@149@01)
        (or
          (Seq_contains (Seq_range 6 9) i2@150@01)
          (not (Seq_contains (Seq_range 6 9) i2@150@01)))))
    (or
      (Seq_contains (Seq_range 6 9) i1@149@01)
      (not (Seq_contains (Seq_range 6 9) i1@149@01)))
    (=>
      (and
        (Seq_contains (Seq_range 6 9) i1@149@01)
        (and
          (Seq_contains (Seq_range 6 9) i2@150@01)
          (not (= i1@149@01 i2@150@01))))
      (and
        (Seq_contains (Seq_range 6 9) i1@149@01)
        (Seq_contains (Seq_range 6 9) i2@150@01)
        (not (= i1@149@01 i2@150@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 6 9) i1@149@01)
          (and
            (Seq_contains (Seq_range 6 9) i2@150@01)
            (not (= i1@149@01 i2@150@01)))))
      (and
        (Seq_contains (Seq_range 6 9) i1@149@01)
        (and
          (Seq_contains (Seq_range 6 9) i2@150@01)
          (not (= i1@149@01 i2@150@01))))))
  :pattern ((Seq_index xs@139@01 i1@149@01) (Seq_index xs@139@01 i2@150@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@95@10@95@98-aux|)))
(assert (forall ((i1@149@01 Int) (i2@150@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 6 9) i1@149@01)
      (and
        (Seq_contains (Seq_range 6 9) i2@150@01)
        (not (= i1@149@01 i2@150@01))))
    (not (= (Seq_index xs@139@01 i1@149@01) (Seq_index xs@139@01 i2@150@01))))
  :pattern ((Seq_contains (Seq_range 6 9) i1@149@01) (Seq_contains
    (Seq_range 6 9)
    i2@150@01))
  :pattern ((Seq_contains_trigger (Seq_range 6 9) i1@149@01) (Seq_contains_trigger
    (Seq_range 6 9)
    i2@150@01))
  :pattern ((Seq_contains (Seq_range 6 9) i1@149@01) (Seq_index
    xs@139@01
    i2@150@01))
  :pattern ((Seq_contains_trigger (Seq_range 6 9) i1@149@01) (Seq_index
    xs@139@01
    i2@150@01))
  :pattern ((Seq_contains (Seq_range 6 9) i2@150@01) (Seq_index
    xs@139@01
    i1@149@01))
  :pattern ((Seq_contains_trigger (Seq_range 6 9) i2@150@01) (Seq_index
    xs@139@01
    i1@149@01))
  :pattern ((Seq_index xs@139@01 i1@149@01) (Seq_index xs@139@01 i2@150@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@95@10@95@98|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall k: Int ::6 <= k && k < 9 ==> acc(xs[k].f, write))
(declare-const k@151@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 6 <= k && k < 9
; [eval] 6 <= k
(push) ; 4
; [then-branch: 79 | !(6 <= k@151@01) | live]
; [else-branch: 79 | 6 <= k@151@01 | live]
(push) ; 5
; [then-branch: 79 | !(6 <= k@151@01)]
(assert (not (<= 6 k@151@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 79 | 6 <= k@151@01]
(assert (<= 6 k@151@01))
; [eval] k < 9
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 6 k@151@01) (not (<= 6 k@151@01))))
(assert (and (<= 6 k@151@01) (< k@151@01 9)))
; [eval] xs[k]
(push) ; 4
(assert (not (>= k@151@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< k@151@01 (Seq_length xs@139@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-const $t@152@01 $FVF<f>)
(declare-fun inv@153@01 ($Ref) Int)
(declare-fun img@154@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@151@01 Int)) (!
  (=>
    (and (<= 6 k@151@01) (< k@151@01 9))
    (or (<= 6 k@151@01) (not (<= 6 k@151@01))))
  :pattern ((Seq_index xs@139@01 k@151@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((k1@151@01 Int) (k2@151@01 Int)) (!
  (=>
    (and
      (and (<= 6 k1@151@01) (< k1@151@01 9))
      (and (<= 6 k2@151@01) (< k2@151@01 9))
      (= (Seq_index xs@139@01 k1@151@01) (Seq_index xs@139@01 k2@151@01)))
    (= k1@151@01 k2@151@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@151@01 Int)) (!
  (=>
    (and (<= 6 k@151@01) (< k@151@01 9))
    (and
      (= (inv@153@01 (Seq_index xs@139@01 k@151@01)) k@151@01)
      (img@154@01 (Seq_index xs@139@01 k@151@01))))
  :pattern ((Seq_index xs@139@01 k@151@01))
  :qid |quant-u-12449|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
    (= (Seq_index xs@139@01 (inv@153@01 r)) r))
  :pattern ((inv@153@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((k@151@01 Int)) (!
  (=>
    (and (<= 6 k@151@01) (< k@151@01 9))
    (not (= (Seq_index xs@139@01 k@151@01) $Ref.null)))
  :pattern ((Seq_index xs@139@01 k@151@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@139@01 k@151@01) (Seq_index xs@139@01 k@144@01))
    (=
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))))
  
  :qid |quant-u-12450|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 10 == fun04(xs, true)
(declare-const $t@155@01 $Snap)
(assert (= $t@155@01 $Snap.unit))
; [eval] 10 == fun04(xs, true)
; [eval] fun04(xs, true)
(set-option :timeout 0)
(push) ; 3
; [eval] |xs| > 10
; [eval] |xs|
; [eval] (b ? (forall i1: Int, i2: Int ::(i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]) : (forall i1: Int, i2: Int ::(i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2]))
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 80 | True | live]
; [else-branch: 80 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 80 | True]
; [eval] (forall i1: Int, i2: Int ::(i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@156@01 Int)
(declare-const i2@157@01 Int)
(push) ; 6
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2)
; [eval] (i1 in [0..3))
; [eval] [0..3)
(push) ; 7
; [then-branch: 81 | !(i1@156@01 in [0..3]) | live]
; [else-branch: 81 | i1@156@01 in [0..3] | live]
(push) ; 8
; [then-branch: 81 | !(i1@156@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i1@156@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 81 | i1@156@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i1@156@01))
; [eval] (i2 in [0..3))
; [eval] [0..3)
(push) ; 9
; [then-branch: 82 | !(i2@157@01 in [0..3]) | live]
; [else-branch: 82 | i2@157@01 in [0..3] | live]
(push) ; 10
; [then-branch: 82 | !(i2@157@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i2@157@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 82 | i2@157@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i2@157@01))
; [eval] i1 != i2
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 3) i2@157@01)
  (not (Seq_contains (Seq_range 0 3) i2@157@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 3) i1@156@01)
  (and
    (Seq_contains (Seq_range 0 3) i1@156@01)
    (or
      (Seq_contains (Seq_range 0 3) i2@157@01)
      (not (Seq_contains (Seq_range 0 3) i2@157@01))))))
(assert (or
  (Seq_contains (Seq_range 0 3) i1@156@01)
  (not (Seq_contains (Seq_range 0 3) i1@156@01))))
(push) ; 7
; [then-branch: 83 | i1@156@01 in [0..3] && i2@157@01 in [0..3] && i1@156@01 != i2@157@01 | live]
; [else-branch: 83 | !(i1@156@01 in [0..3] && i2@157@01 in [0..3] && i1@156@01 != i2@157@01) | live]
(push) ; 8
; [then-branch: 83 | i1@156@01 in [0..3] && i2@157@01 in [0..3] && i1@156@01 != i2@157@01]
(assert (and
  (Seq_contains (Seq_range 0 3) i1@156@01)
  (and (Seq_contains (Seq_range 0 3) i2@157@01) (not (= i1@156@01 i2@157@01)))))
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(push) ; 9
(assert (not (>= i1@156@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (< i1@156@01 (Seq_length xs@139@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 9
(assert (not (>= i2@157@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (< i2@157@01 (Seq_length xs@139@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 83 | !(i1@156@01 in [0..3] && i2@157@01 in [0..3] && i1@156@01 != i2@157@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 3) i1@156@01)
    (and (Seq_contains (Seq_range 0 3) i2@157@01) (not (= i1@156@01 i2@157@01))))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 3) i1@156@01)
    (and (Seq_contains (Seq_range 0 3) i2@157@01) (not (= i1@156@01 i2@157@01))))
  (and
    (Seq_contains (Seq_range 0 3) i1@156@01)
    (Seq_contains (Seq_range 0 3) i2@157@01)
    (not (= i1@156@01 i2@157@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 3) i1@156@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@157@01)
        (not (= i1@156@01 i2@157@01)))))
  (and
    (Seq_contains (Seq_range 0 3) i1@156@01)
    (and (Seq_contains (Seq_range 0 3) i2@157@01) (not (= i1@156@01 i2@157@01))))))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(pop) ; 5
(pop) ; 4
; Joined path conditions
(push) ; 4
(assert (not (forall ((i1@156@01 Int) (i2@157@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@156@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@157@01)
        (not (= i1@156@01 i2@157@01))))
    (not (= (Seq_index xs@139@01 i1@156@01) (Seq_index xs@139@01 i2@157@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@86@17@86@105|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@156@01 Int) (i2@157@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@156@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@157@01)
        (not (= i1@156@01 i2@157@01))))
    (not (= (Seq_index xs@139@01 i1@156@01) (Seq_index xs@139@01 i2@157@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@86@17@86@105|)))
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 84 | True | live]
; [else-branch: 84 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 84 | True]
(declare-const k@158@01 Int)
(push) ; 5
; [eval] 0 <= k && k < 3
; [eval] 0 <= k
(push) ; 6
; [then-branch: 85 | !(0 <= k@158@01) | live]
; [else-branch: 85 | 0 <= k@158@01 | live]
(push) ; 7
; [then-branch: 85 | !(0 <= k@158@01)]
(assert (not (<= 0 k@158@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 85 | 0 <= k@158@01]
(assert (<= 0 k@158@01))
; [eval] k < 3
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@158@01) (not (<= 0 k@158@01))))
(assert (and (<= 0 k@158@01) (< k@158@01 3)))
; [eval] xs[k]
(push) ; 6
(assert (not (>= k@158@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k@158@01 (Seq_length xs@139@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(declare-fun inv@159@01 ($Ref) Int)
(declare-fun img@160@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@158@01 Int)) (!
  (=>
    (and (<= 0 k@158@01) (< k@158@01 3))
    (or (<= 0 k@158@01) (not (<= 0 k@158@01))))
  :pattern ((Seq_index xs@139@01 k@158@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((k1@158@01 Int) (k2@158@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@158@01) (< k1@158@01 3))
      (and (<= 0 k2@158@01) (< k2@158@01 3))
      (= (Seq_index xs@139@01 k1@158@01) (Seq_index xs@139@01 k2@158@01)))
    (= k1@158@01 k2@158@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@158@01 Int)) (!
  (=>
    (and (<= 0 k@158@01) (< k@158@01 3))
    (and
      (= (inv@159@01 (Seq_index xs@139@01 k@158@01)) k@158@01)
      (img@160@01 (Seq_index xs@139@01 k@158@01))))
  :pattern ((Seq_index xs@139@01 k@158@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@160@01 r) (and (<= 0 (inv@159@01 r)) (< (inv@159@01 r) 3)))
    (= (Seq_index xs@139@01 (inv@159@01 r)) r))
  :pattern ((inv@159@01 r))
  :qid |f-fctOfInv|)))
(push) ; 5
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@159@01 r)) (< (inv@159@01 r) 3))
      (img@160@01 r)
      (= r (Seq_index xs@139@01 (inv@159@01 r))))
    (>
      (+
        (ite
          (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
          $Perm.Write
          $Perm.No)
        (ite
          (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-12452|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@161@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@161@01  $FVF<f>)))
      (and (and (<= 0 (inv@159@01 r)) (< (inv@159@01 r) 3)) (img@160@01 r)))
    (=>
      (and (and (<= 0 (inv@159@01 r)) (< (inv@159@01 r) 3)) (img@160@01 r))
      (Set_in r ($FVF.domain_f (as sm@161@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@161@01  $FVF<f>))))
  :qid |qp.fvfDomDef43|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@159@01 r)) (< (inv@159@01 r) 3)) (img@160@01 r))
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3))))
    (= ($FVF.lookup_f (as sm@161@01  $FVF<f>) r) ($FVF.lookup_f $t@145@01 r)))
  :pattern (($FVF.lookup_f (as sm@161@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@145@01 r))
  :qid |qp.fvfValDef41|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@159@01 r)) (< (inv@159@01 r) 3)) (img@160@01 r))
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9))))
    (= ($FVF.lookup_f (as sm@161@01  $FVF<f>) r) ($FVF.lookup_f $t@152@01 r)))
  :pattern (($FVF.lookup_f (as sm@161@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@152@01 r))
  :qid |qp.fvfValDef42|)))
(assert (fun04%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@161@01  $FVF<f>)))) xs@139@01 true))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((k@158@01 Int)) (!
  (=>
    (and (<= 0 k@158@01) (< k@158@01 3))
    (and
      (= (inv@159@01 (Seq_index xs@139@01 k@158@01)) k@158@01)
      (img@160@01 (Seq_index xs@139@01 k@158@01))))
  :pattern ((Seq_index xs@139@01 k@158@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@160@01 r) (and (<= 0 (inv@159@01 r)) (< (inv@159@01 r) 3)))
    (= (Seq_index xs@139@01 (inv@159@01 r)) r))
  :pattern ((inv@159@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@161@01  $FVF<f>)))
      (and (and (<= 0 (inv@159@01 r)) (< (inv@159@01 r) 3)) (img@160@01 r)))
    (=>
      (and (and (<= 0 (inv@159@01 r)) (< (inv@159@01 r) 3)) (img@160@01 r))
      (Set_in r ($FVF.domain_f (as sm@161@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@161@01  $FVF<f>))))
  :qid |qp.fvfDomDef43|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@159@01 r)) (< (inv@159@01 r) 3)) (img@160@01 r))
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3))))
    (= ($FVF.lookup_f (as sm@161@01  $FVF<f>) r) ($FVF.lookup_f $t@145@01 r)))
  :pattern (($FVF.lookup_f (as sm@161@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@145@01 r))
  :qid |qp.fvfValDef41|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@159@01 r)) (< (inv@159@01 r) 3)) (img@160@01 r))
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9))))
    (= ($FVF.lookup_f (as sm@161@01  $FVF<f>) r) ($FVF.lookup_f $t@152@01 r)))
  :pattern (($FVF.lookup_f (as sm@161@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@152@01 r))
  :qid |qp.fvfValDef42|)))
(assert (forall ((i1@156@01 Int) (i2@157@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@156@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@157@01)
        (not (= i1@156@01 i2@157@01))))
    (not (= (Seq_index xs@139@01 i1@156@01) (Seq_index xs@139@01 i2@157@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@86@17@86@105|)))
(assert (and
  (forall ((k@158@01 Int)) (!
    (=>
      (and (<= 0 k@158@01) (< k@158@01 3))
      (or (<= 0 k@158@01) (not (<= 0 k@158@01))))
    :pattern ((Seq_index xs@139@01 k@158@01))
    :qid |f-aux|))
  (fun04%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (as sm@161@01  $FVF<f>)))) xs@139@01 true)))
(assert (=
  10
  (fun04 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (as sm@161@01  $FVF<f>)))) xs@139@01 true)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 20 == fun04(xs, false)
(declare-const $t@162@01 $Snap)
(assert (= $t@162@01 $Snap.unit))
; [eval] 20 == fun04(xs, false)
; [eval] fun04(xs, false)
(set-option :timeout 0)
(push) ; 3
; [eval] |xs| > 10
; [eval] |xs|
; [eval] (b ? (forall i1: Int, i2: Int ::(i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]) : (forall i1: Int, i2: Int ::(i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2]))
(push) ; 4
; [then-branch: 86 | False | dead]
; [else-branch: 86 | True | live]
(push) ; 5
; [else-branch: 86 | True]
; [eval] (forall i1: Int, i2: Int ::(i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@163@01 Int)
(declare-const i2@164@01 Int)
(push) ; 6
; [eval] (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2)
; [eval] (i1 in [6..9))
; [eval] [6..9)
(push) ; 7
; [then-branch: 87 | !(i1@163@01 in [6..9]) | live]
; [else-branch: 87 | i1@163@01 in [6..9] | live]
(push) ; 8
; [then-branch: 87 | !(i1@163@01 in [6..9])]
(assert (not (Seq_contains (Seq_range 6 9) i1@163@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 87 | i1@163@01 in [6..9]]
(assert (Seq_contains (Seq_range 6 9) i1@163@01))
; [eval] (i2 in [6..9))
; [eval] [6..9)
(push) ; 9
; [then-branch: 88 | !(i2@164@01 in [6..9]) | live]
; [else-branch: 88 | i2@164@01 in [6..9] | live]
(push) ; 10
; [then-branch: 88 | !(i2@164@01 in [6..9])]
(assert (not (Seq_contains (Seq_range 6 9) i2@164@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 88 | i2@164@01 in [6..9]]
(assert (Seq_contains (Seq_range 6 9) i2@164@01))
; [eval] i1 != i2
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 6 9) i2@164@01)
  (not (Seq_contains (Seq_range 6 9) i2@164@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 6 9) i1@163@01)
  (and
    (Seq_contains (Seq_range 6 9) i1@163@01)
    (or
      (Seq_contains (Seq_range 6 9) i2@164@01)
      (not (Seq_contains (Seq_range 6 9) i2@164@01))))))
(assert (or
  (Seq_contains (Seq_range 6 9) i1@163@01)
  (not (Seq_contains (Seq_range 6 9) i1@163@01))))
(push) ; 7
; [then-branch: 89 | i1@163@01 in [6..9] && i2@164@01 in [6..9] && i1@163@01 != i2@164@01 | live]
; [else-branch: 89 | !(i1@163@01 in [6..9] && i2@164@01 in [6..9] && i1@163@01 != i2@164@01) | live]
(push) ; 8
; [then-branch: 89 | i1@163@01 in [6..9] && i2@164@01 in [6..9] && i1@163@01 != i2@164@01]
(assert (and
  (Seq_contains (Seq_range 6 9) i1@163@01)
  (and (Seq_contains (Seq_range 6 9) i2@164@01) (not (= i1@163@01 i2@164@01)))))
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(push) ; 9
(assert (not (>= i1@163@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (< i1@163@01 (Seq_length xs@139@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 9
(assert (not (>= i2@164@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (< i2@164@01 (Seq_length xs@139@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 89 | !(i1@163@01 in [6..9] && i2@164@01 in [6..9] && i1@163@01 != i2@164@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 6 9) i1@163@01)
    (and (Seq_contains (Seq_range 6 9) i2@164@01) (not (= i1@163@01 i2@164@01))))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 6 9) i1@163@01)
    (and (Seq_contains (Seq_range 6 9) i2@164@01) (not (= i1@163@01 i2@164@01))))
  (and
    (Seq_contains (Seq_range 6 9) i1@163@01)
    (Seq_contains (Seq_range 6 9) i2@164@01)
    (not (= i1@163@01 i2@164@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 6 9) i1@163@01)
      (and
        (Seq_contains (Seq_range 6 9) i2@164@01)
        (not (= i1@163@01 i2@164@01)))))
  (and
    (Seq_contains (Seq_range 6 9) i1@163@01)
    (and (Seq_contains (Seq_range 6 9) i2@164@01) (not (= i1@163@01 i2@164@01))))))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(pop) ; 5
(pop) ; 4
; Joined path conditions
(push) ; 4
(assert (not (forall ((i1@163@01 Int) (i2@164@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 6 9) i1@163@01)
      (and
        (Seq_contains (Seq_range 6 9) i2@164@01)
        (not (= i1@163@01 i2@164@01))))
    (not (= (Seq_index xs@139@01 i1@163@01) (Seq_index xs@139@01 i2@164@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@87@17@87@105|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@163@01 Int) (i2@164@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 6 9) i1@163@01)
      (and
        (Seq_contains (Seq_range 6 9) i2@164@01)
        (not (= i1@163@01 i2@164@01))))
    (not (= (Seq_index xs@139@01 i1@163@01) (Seq_index xs@139@01 i2@164@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@87@17@87@105|)))
; [then-branch: 90 | False | dead]
; [else-branch: 90 | True | live]
(push) ; 4
; [else-branch: 90 | True]
(declare-const k@165@01 Int)
(push) ; 5
; [eval] 6 <= k && k < 9
; [eval] 6 <= k
(push) ; 6
; [then-branch: 91 | !(6 <= k@165@01) | live]
; [else-branch: 91 | 6 <= k@165@01 | live]
(push) ; 7
; [then-branch: 91 | !(6 <= k@165@01)]
(assert (not (<= 6 k@165@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 91 | 6 <= k@165@01]
(assert (<= 6 k@165@01))
; [eval] k < 9
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (<= 6 k@165@01) (not (<= 6 k@165@01))))
(assert (and (<= 6 k@165@01) (< k@165@01 9)))
; [eval] xs[k]
(push) ; 6
(assert (not (>= k@165@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k@165@01 (Seq_length xs@139@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(declare-fun inv@166@01 ($Ref) Int)
(declare-fun img@167@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@165@01 Int)) (!
  (=>
    (and (<= 6 k@165@01) (< k@165@01 9))
    (or (<= 6 k@165@01) (not (<= 6 k@165@01))))
  :pattern ((Seq_index xs@139@01 k@165@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((k1@165@01 Int) (k2@165@01 Int)) (!
  (=>
    (and
      (and (<= 6 k1@165@01) (< k1@165@01 9))
      (and (<= 6 k2@165@01) (< k2@165@01 9))
      (= (Seq_index xs@139@01 k1@165@01) (Seq_index xs@139@01 k2@165@01)))
    (= k1@165@01 k2@165@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@165@01 Int)) (!
  (=>
    (and (<= 6 k@165@01) (< k@165@01 9))
    (and
      (= (inv@166@01 (Seq_index xs@139@01 k@165@01)) k@165@01)
      (img@167@01 (Seq_index xs@139@01 k@165@01))))
  :pattern ((Seq_index xs@139@01 k@165@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@167@01 r) (and (<= 6 (inv@166@01 r)) (< (inv@166@01 r) 9)))
    (= (Seq_index xs@139@01 (inv@166@01 r)) r))
  :pattern ((inv@166@01 r))
  :qid |f-fctOfInv|)))
(push) ; 5
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 6 (inv@166@01 r)) (< (inv@166@01 r) 9))
      (img@167@01 r)
      (= r (Seq_index xs@139@01 (inv@166@01 r))))
    (>
      (+
        (ite
          (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
          $Perm.Write
          $Perm.No)
        (ite
          (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-12454|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@168@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@168@01  $FVF<f>)))
      (and (and (<= 6 (inv@166@01 r)) (< (inv@166@01 r) 9)) (img@167@01 r)))
    (=>
      (and (and (<= 6 (inv@166@01 r)) (< (inv@166@01 r) 9)) (img@167@01 r))
      (Set_in r ($FVF.domain_f (as sm@168@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@168@01  $FVF<f>))))
  :qid |qp.fvfDomDef46|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@166@01 r)) (< (inv@166@01 r) 9)) (img@167@01 r))
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3))))
    (= ($FVF.lookup_f (as sm@168@01  $FVF<f>) r) ($FVF.lookup_f $t@145@01 r)))
  :pattern (($FVF.lookup_f (as sm@168@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@145@01 r))
  :qid |qp.fvfValDef44|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@166@01 r)) (< (inv@166@01 r) 9)) (img@167@01 r))
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9))))
    (= ($FVF.lookup_f (as sm@168@01  $FVF<f>) r) ($FVF.lookup_f $t@152@01 r)))
  :pattern (($FVF.lookup_f (as sm@168@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@152@01 r))
  :qid |qp.fvfValDef45|)))
(assert (fun04%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@168@01  $FVF<f>)))) xs@139@01 false))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((k@165@01 Int)) (!
  (=>
    (and (<= 6 k@165@01) (< k@165@01 9))
    (and
      (= (inv@166@01 (Seq_index xs@139@01 k@165@01)) k@165@01)
      (img@167@01 (Seq_index xs@139@01 k@165@01))))
  :pattern ((Seq_index xs@139@01 k@165@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@167@01 r) (and (<= 6 (inv@166@01 r)) (< (inv@166@01 r) 9)))
    (= (Seq_index xs@139@01 (inv@166@01 r)) r))
  :pattern ((inv@166@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@168@01  $FVF<f>)))
      (and (and (<= 6 (inv@166@01 r)) (< (inv@166@01 r) 9)) (img@167@01 r)))
    (=>
      (and (and (<= 6 (inv@166@01 r)) (< (inv@166@01 r) 9)) (img@167@01 r))
      (Set_in r ($FVF.domain_f (as sm@168@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@168@01  $FVF<f>))))
  :qid |qp.fvfDomDef46|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@166@01 r)) (< (inv@166@01 r) 9)) (img@167@01 r))
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3))))
    (= ($FVF.lookup_f (as sm@168@01  $FVF<f>) r) ($FVF.lookup_f $t@145@01 r)))
  :pattern (($FVF.lookup_f (as sm@168@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@145@01 r))
  :qid |qp.fvfValDef44|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@166@01 r)) (< (inv@166@01 r) 9)) (img@167@01 r))
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9))))
    (= ($FVF.lookup_f (as sm@168@01  $FVF<f>) r) ($FVF.lookup_f $t@152@01 r)))
  :pattern (($FVF.lookup_f (as sm@168@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@152@01 r))
  :qid |qp.fvfValDef45|)))
(assert (forall ((i1@163@01 Int) (i2@164@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 6 9) i1@163@01)
      (and
        (Seq_contains (Seq_range 6 9) i2@164@01)
        (not (= i1@163@01 i2@164@01))))
    (not (= (Seq_index xs@139@01 i1@163@01) (Seq_index xs@139@01 i2@164@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@87@17@87@105|)))
(assert (and
  (forall ((k@165@01 Int)) (!
    (=>
      (and (<= 6 k@165@01) (< k@165@01 9))
      (or (<= 6 k@165@01) (not (<= 6 k@165@01))))
    :pattern ((Seq_index xs@139@01 k@165@01))
    :qid |f-aux|))
  (fun04%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (as sm@168@01  $FVF<f>)))) xs@139@01 false)))
(assert (=
  20
  (fun04 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (as sm@168@01  $FVF<f>)))) xs@139@01 false)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; xs[8].f := 0
; [eval] xs[8]
(set-option :timeout 0)
(push) ; 3
(assert (not (< 8 (Seq_length xs@139@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@169@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index xs@139@01 8))
    ($Perm.min
      (ite
        (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@170@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index xs@139@01 8))
    ($Perm.min
      (ite
        (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@169@01 r)))
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
        (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (pTaken@169@01 r))
    $Perm.No)
  
  :qid |quant-u-12456|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@169@01 r) $Perm.No)
  
  :qid |quant-u-12457|))))
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
    (= r (Seq_index xs@139@01 8))
    (= (- $Perm.Write (pTaken@169@01 r)) $Perm.No))
  
  :qid |quant-u-12458|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
        $Perm.Write
        $Perm.No)
      (pTaken@170@01 r))
    $Perm.No)
  
  :qid |quant-u-12459|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@170@01 r) $Perm.No)
  
  :qid |quant-u-12460|))))
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
    (= r (Seq_index xs@139@01 8))
    (= (- (- $Perm.Write (pTaken@169@01 r)) (pTaken@170@01 r)) $Perm.No))
  
  :qid |quant-u-12461|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@171@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_f (as sm@171@01  $FVF<f>) (Seq_index xs@139@01 8)) 0))
; [exec]
; assert 10 == fun04(xs, true)
; [eval] 10 == fun04(xs, true)
; [eval] fun04(xs, true)
(set-option :timeout 0)
(push) ; 3
; [eval] |xs| > 10
; [eval] |xs|
; [eval] (b ? (forall i1: Int, i2: Int ::(i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]) : (forall i1: Int, i2: Int ::(i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2]))
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 92 | True | live]
; [else-branch: 92 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 92 | True]
; [eval] (forall i1: Int, i2: Int ::(i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@172@01 Int)
(declare-const i2@173@01 Int)
(push) ; 6
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2)
; [eval] (i1 in [0..3))
; [eval] [0..3)
(push) ; 7
; [then-branch: 93 | !(i1@172@01 in [0..3]) | live]
; [else-branch: 93 | i1@172@01 in [0..3] | live]
(push) ; 8
; [then-branch: 93 | !(i1@172@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i1@172@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 93 | i1@172@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i1@172@01))
; [eval] (i2 in [0..3))
; [eval] [0..3)
(push) ; 9
; [then-branch: 94 | !(i2@173@01 in [0..3]) | live]
; [else-branch: 94 | i2@173@01 in [0..3] | live]
(push) ; 10
; [then-branch: 94 | !(i2@173@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i2@173@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 94 | i2@173@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i2@173@01))
; [eval] i1 != i2
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 3) i2@173@01)
  (not (Seq_contains (Seq_range 0 3) i2@173@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 3) i1@172@01)
  (and
    (Seq_contains (Seq_range 0 3) i1@172@01)
    (or
      (Seq_contains (Seq_range 0 3) i2@173@01)
      (not (Seq_contains (Seq_range 0 3) i2@173@01))))))
(assert (or
  (Seq_contains (Seq_range 0 3) i1@172@01)
  (not (Seq_contains (Seq_range 0 3) i1@172@01))))
(push) ; 7
; [then-branch: 95 | i1@172@01 in [0..3] && i2@173@01 in [0..3] && i1@172@01 != i2@173@01 | live]
; [else-branch: 95 | !(i1@172@01 in [0..3] && i2@173@01 in [0..3] && i1@172@01 != i2@173@01) | live]
(push) ; 8
; [then-branch: 95 | i1@172@01 in [0..3] && i2@173@01 in [0..3] && i1@172@01 != i2@173@01]
(assert (and
  (Seq_contains (Seq_range 0 3) i1@172@01)
  (and (Seq_contains (Seq_range 0 3) i2@173@01) (not (= i1@172@01 i2@173@01)))))
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(push) ; 9
(assert (not (>= i1@172@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (< i1@172@01 (Seq_length xs@139@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 9
(assert (not (>= i2@173@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (< i2@173@01 (Seq_length xs@139@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 95 | !(i1@172@01 in [0..3] && i2@173@01 in [0..3] && i1@172@01 != i2@173@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 3) i1@172@01)
    (and (Seq_contains (Seq_range 0 3) i2@173@01) (not (= i1@172@01 i2@173@01))))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 3) i1@172@01)
    (and (Seq_contains (Seq_range 0 3) i2@173@01) (not (= i1@172@01 i2@173@01))))
  (and
    (Seq_contains (Seq_range 0 3) i1@172@01)
    (Seq_contains (Seq_range 0 3) i2@173@01)
    (not (= i1@172@01 i2@173@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 3) i1@172@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@173@01)
        (not (= i1@172@01 i2@173@01)))))
  (and
    (Seq_contains (Seq_range 0 3) i1@172@01)
    (and (Seq_contains (Seq_range 0 3) i2@173@01) (not (= i1@172@01 i2@173@01))))))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(pop) ; 5
(pop) ; 4
; Joined path conditions
(push) ; 4
(assert (not (forall ((i1@172@01 Int) (i2@173@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@172@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@173@01)
        (not (= i1@172@01 i2@173@01))))
    (not (= (Seq_index xs@139@01 i1@172@01) (Seq_index xs@139@01 i2@173@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@86@17@86@105|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@172@01 Int) (i2@173@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@172@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@173@01)
        (not (= i1@172@01 i2@173@01))))
    (not (= (Seq_index xs@139@01 i1@172@01) (Seq_index xs@139@01 i2@173@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@86@17@86@105|)))
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 96 | True | live]
; [else-branch: 96 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 96 | True]
(declare-const k@174@01 Int)
(push) ; 5
; [eval] 0 <= k && k < 3
; [eval] 0 <= k
(push) ; 6
; [then-branch: 97 | !(0 <= k@174@01) | live]
; [else-branch: 97 | 0 <= k@174@01 | live]
(push) ; 7
; [then-branch: 97 | !(0 <= k@174@01)]
(assert (not (<= 0 k@174@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 97 | 0 <= k@174@01]
(assert (<= 0 k@174@01))
; [eval] k < 3
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@174@01) (not (<= 0 k@174@01))))
(assert (and (<= 0 k@174@01) (< k@174@01 3)))
; [eval] xs[k]
(push) ; 6
(assert (not (>= k@174@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k@174@01 (Seq_length xs@139@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(declare-fun inv@175@01 ($Ref) Int)
(declare-fun img@176@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@174@01 Int)) (!
  (=>
    (and (<= 0 k@174@01) (< k@174@01 3))
    (or (<= 0 k@174@01) (not (<= 0 k@174@01))))
  :pattern ((Seq_index xs@139@01 k@174@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((k1@174@01 Int) (k2@174@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@174@01) (< k1@174@01 3))
      (and (<= 0 k2@174@01) (< k2@174@01 3))
      (= (Seq_index xs@139@01 k1@174@01) (Seq_index xs@139@01 k2@174@01)))
    (= k1@174@01 k2@174@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@174@01 Int)) (!
  (=>
    (and (<= 0 k@174@01) (< k@174@01 3))
    (and
      (= (inv@175@01 (Seq_index xs@139@01 k@174@01)) k@174@01)
      (img@176@01 (Seq_index xs@139@01 k@174@01))))
  :pattern ((Seq_index xs@139@01 k@174@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@176@01 r) (and (<= 0 (inv@175@01 r)) (< (inv@175@01 r) 3)))
    (= (Seq_index xs@139@01 (inv@175@01 r)) r))
  :pattern ((inv@175@01 r))
  :qid |f-fctOfInv|)))
(push) ; 5
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@175@01 r)) (< (inv@175@01 r) 3))
      (img@176@01 r)
      (= r (Seq_index xs@139@01 (inv@175@01 r))))
    (>
      (+
        (+
          (ite
            (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
            (- $Perm.Write (pTaken@170@01 r))
            $Perm.No)
          (ite
            (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
            (- $Perm.Write (pTaken@169@01 r))
            $Perm.No))
        (ite (= r (Seq_index xs@139@01 8)) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-12463|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@177@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@177@01  $FVF<f>)))
      (and (and (<= 0 (inv@175@01 r)) (< (inv@175@01 r) 3)) (img@176@01 r)))
    (=>
      (and (and (<= 0 (inv@175@01 r)) (< (inv@175@01 r) 3)) (img@176@01 r))
      (Set_in r ($FVF.domain_f (as sm@177@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@177@01  $FVF<f>))))
  :qid |qp.fvfDomDef50|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@175@01 r)) (< (inv@175@01 r) 3)) (img@176@01 r))
      (= r (Seq_index xs@139@01 8)))
    (=
      ($FVF.lookup_f (as sm@177@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@171@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@177@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@171@01  $FVF<f>) r))
  :qid |qp.fvfValDef47|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@175@01 r)) (< (inv@175@01 r) 3)) (img@176@01 r))
      (ite
        (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
        (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
        false))
    (= ($FVF.lookup_f (as sm@177@01  $FVF<f>) r) ($FVF.lookup_f $t@152@01 r)))
  :pattern (($FVF.lookup_f (as sm@177@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@152@01 r))
  :qid |qp.fvfValDef48|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@175@01 r)) (< (inv@175@01 r) 3)) (img@176@01 r))
      (ite
        (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
        (< $Perm.No (- $Perm.Write (pTaken@169@01 r)))
        false))
    (= ($FVF.lookup_f (as sm@177@01  $FVF<f>) r) ($FVF.lookup_f $t@145@01 r)))
  :pattern (($FVF.lookup_f (as sm@177@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@145@01 r))
  :qid |qp.fvfValDef49|)))
(assert (fun04%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@177@01  $FVF<f>)))) xs@139@01 true))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((k@174@01 Int)) (!
  (=>
    (and (<= 0 k@174@01) (< k@174@01 3))
    (and
      (= (inv@175@01 (Seq_index xs@139@01 k@174@01)) k@174@01)
      (img@176@01 (Seq_index xs@139@01 k@174@01))))
  :pattern ((Seq_index xs@139@01 k@174@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@176@01 r) (and (<= 0 (inv@175@01 r)) (< (inv@175@01 r) 3)))
    (= (Seq_index xs@139@01 (inv@175@01 r)) r))
  :pattern ((inv@175@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@177@01  $FVF<f>)))
      (and (and (<= 0 (inv@175@01 r)) (< (inv@175@01 r) 3)) (img@176@01 r)))
    (=>
      (and (and (<= 0 (inv@175@01 r)) (< (inv@175@01 r) 3)) (img@176@01 r))
      (Set_in r ($FVF.domain_f (as sm@177@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@177@01  $FVF<f>))))
  :qid |qp.fvfDomDef50|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@175@01 r)) (< (inv@175@01 r) 3)) (img@176@01 r))
      (= r (Seq_index xs@139@01 8)))
    (=
      ($FVF.lookup_f (as sm@177@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@171@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@177@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@171@01  $FVF<f>) r))
  :qid |qp.fvfValDef47|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@175@01 r)) (< (inv@175@01 r) 3)) (img@176@01 r))
      (ite
        (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
        (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
        false))
    (= ($FVF.lookup_f (as sm@177@01  $FVF<f>) r) ($FVF.lookup_f $t@152@01 r)))
  :pattern (($FVF.lookup_f (as sm@177@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@152@01 r))
  :qid |qp.fvfValDef48|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@175@01 r)) (< (inv@175@01 r) 3)) (img@176@01 r))
      (ite
        (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
        (< $Perm.No (- $Perm.Write (pTaken@169@01 r)))
        false))
    (= ($FVF.lookup_f (as sm@177@01  $FVF<f>) r) ($FVF.lookup_f $t@145@01 r)))
  :pattern (($FVF.lookup_f (as sm@177@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@145@01 r))
  :qid |qp.fvfValDef49|)))
(assert (forall ((i1@172@01 Int) (i2@173@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@172@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@173@01)
        (not (= i1@172@01 i2@173@01))))
    (not (= (Seq_index xs@139@01 i1@172@01) (Seq_index xs@139@01 i2@173@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@86@17@86@105|)))
(assert (and
  (forall ((k@174@01 Int)) (!
    (=>
      (and (<= 0 k@174@01) (< k@174@01 3))
      (or (<= 0 k@174@01) (not (<= 0 k@174@01))))
    :pattern ((Seq_index xs@139@01 k@174@01))
    :qid |f-aux|))
  (fun04%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (as sm@177@01  $FVF<f>)))) xs@139@01 true)))
(push) ; 3
(assert (not (=
  10
  (fun04 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (as sm@177@01  $FVF<f>)))) xs@139@01 true))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  10
  (fun04 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (as sm@177@01  $FVF<f>)))) xs@139@01 true)))
; [exec]
; assert 20 == fun04(xs, false)
; [eval] 20 == fun04(xs, false)
; [eval] fun04(xs, false)
(push) ; 3
; [eval] |xs| > 10
; [eval] |xs|
; [eval] (b ? (forall i1: Int, i2: Int ::(i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]) : (forall i1: Int, i2: Int ::(i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2]))
(push) ; 4
; [then-branch: 98 | False | dead]
; [else-branch: 98 | True | live]
(push) ; 5
; [else-branch: 98 | True]
; [eval] (forall i1: Int, i2: Int ::(i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@178@01 Int)
(declare-const i2@179@01 Int)
(push) ; 6
; [eval] (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2)
; [eval] (i1 in [6..9))
; [eval] [6..9)
(push) ; 7
; [then-branch: 99 | !(i1@178@01 in [6..9]) | live]
; [else-branch: 99 | i1@178@01 in [6..9] | live]
(push) ; 8
; [then-branch: 99 | !(i1@178@01 in [6..9])]
(assert (not (Seq_contains (Seq_range 6 9) i1@178@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 99 | i1@178@01 in [6..9]]
(assert (Seq_contains (Seq_range 6 9) i1@178@01))
; [eval] (i2 in [6..9))
; [eval] [6..9)
(push) ; 9
; [then-branch: 100 | !(i2@179@01 in [6..9]) | live]
; [else-branch: 100 | i2@179@01 in [6..9] | live]
(push) ; 10
; [then-branch: 100 | !(i2@179@01 in [6..9])]
(assert (not (Seq_contains (Seq_range 6 9) i2@179@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 100 | i2@179@01 in [6..9]]
(assert (Seq_contains (Seq_range 6 9) i2@179@01))
; [eval] i1 != i2
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 6 9) i2@179@01)
  (not (Seq_contains (Seq_range 6 9) i2@179@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 6 9) i1@178@01)
  (and
    (Seq_contains (Seq_range 6 9) i1@178@01)
    (or
      (Seq_contains (Seq_range 6 9) i2@179@01)
      (not (Seq_contains (Seq_range 6 9) i2@179@01))))))
(assert (or
  (Seq_contains (Seq_range 6 9) i1@178@01)
  (not (Seq_contains (Seq_range 6 9) i1@178@01))))
(push) ; 7
; [then-branch: 101 | i1@178@01 in [6..9] && i2@179@01 in [6..9] && i1@178@01 != i2@179@01 | live]
; [else-branch: 101 | !(i1@178@01 in [6..9] && i2@179@01 in [6..9] && i1@178@01 != i2@179@01) | live]
(push) ; 8
; [then-branch: 101 | i1@178@01 in [6..9] && i2@179@01 in [6..9] && i1@178@01 != i2@179@01]
(assert (and
  (Seq_contains (Seq_range 6 9) i1@178@01)
  (and (Seq_contains (Seq_range 6 9) i2@179@01) (not (= i1@178@01 i2@179@01)))))
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(push) ; 9
(assert (not (>= i1@178@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (< i1@178@01 (Seq_length xs@139@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 9
(assert (not (>= i2@179@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (< i2@179@01 (Seq_length xs@139@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 101 | !(i1@178@01 in [6..9] && i2@179@01 in [6..9] && i1@178@01 != i2@179@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 6 9) i1@178@01)
    (and (Seq_contains (Seq_range 6 9) i2@179@01) (not (= i1@178@01 i2@179@01))))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 6 9) i1@178@01)
    (and (Seq_contains (Seq_range 6 9) i2@179@01) (not (= i1@178@01 i2@179@01))))
  (and
    (Seq_contains (Seq_range 6 9) i1@178@01)
    (Seq_contains (Seq_range 6 9) i2@179@01)
    (not (= i1@178@01 i2@179@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 6 9) i1@178@01)
      (and
        (Seq_contains (Seq_range 6 9) i2@179@01)
        (not (= i1@178@01 i2@179@01)))))
  (and
    (Seq_contains (Seq_range 6 9) i1@178@01)
    (and (Seq_contains (Seq_range 6 9) i2@179@01) (not (= i1@178@01 i2@179@01))))))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(pop) ; 5
(pop) ; 4
; Joined path conditions
(push) ; 4
(assert (not (forall ((i1@178@01 Int) (i2@179@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 6 9) i1@178@01)
      (and
        (Seq_contains (Seq_range 6 9) i2@179@01)
        (not (= i1@178@01 i2@179@01))))
    (not (= (Seq_index xs@139@01 i1@178@01) (Seq_index xs@139@01 i2@179@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@87@17@87@105|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@178@01 Int) (i2@179@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 6 9) i1@178@01)
      (and
        (Seq_contains (Seq_range 6 9) i2@179@01)
        (not (= i1@178@01 i2@179@01))))
    (not (= (Seq_index xs@139@01 i1@178@01) (Seq_index xs@139@01 i2@179@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@87@17@87@105|)))
; [then-branch: 102 | False | dead]
; [else-branch: 102 | True | live]
(push) ; 4
; [else-branch: 102 | True]
(declare-const k@180@01 Int)
(push) ; 5
; [eval] 6 <= k && k < 9
; [eval] 6 <= k
(push) ; 6
; [then-branch: 103 | !(6 <= k@180@01) | live]
; [else-branch: 103 | 6 <= k@180@01 | live]
(push) ; 7
; [then-branch: 103 | !(6 <= k@180@01)]
(assert (not (<= 6 k@180@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 103 | 6 <= k@180@01]
(assert (<= 6 k@180@01))
; [eval] k < 9
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (<= 6 k@180@01) (not (<= 6 k@180@01))))
(assert (and (<= 6 k@180@01) (< k@180@01 9)))
; [eval] xs[k]
(push) ; 6
(assert (not (>= k@180@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k@180@01 (Seq_length xs@139@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(declare-fun inv@181@01 ($Ref) Int)
(declare-fun img@182@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@180@01 Int)) (!
  (=>
    (and (<= 6 k@180@01) (< k@180@01 9))
    (or (<= 6 k@180@01) (not (<= 6 k@180@01))))
  :pattern ((Seq_index xs@139@01 k@180@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((k1@180@01 Int) (k2@180@01 Int)) (!
  (=>
    (and
      (and (<= 6 k1@180@01) (< k1@180@01 9))
      (and (<= 6 k2@180@01) (< k2@180@01 9))
      (= (Seq_index xs@139@01 k1@180@01) (Seq_index xs@139@01 k2@180@01)))
    (= k1@180@01 k2@180@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@180@01 Int)) (!
  (=>
    (and (<= 6 k@180@01) (< k@180@01 9))
    (and
      (= (inv@181@01 (Seq_index xs@139@01 k@180@01)) k@180@01)
      (img@182@01 (Seq_index xs@139@01 k@180@01))))
  :pattern ((Seq_index xs@139@01 k@180@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@182@01 r) (and (<= 6 (inv@181@01 r)) (< (inv@181@01 r) 9)))
    (= (Seq_index xs@139@01 (inv@181@01 r)) r))
  :pattern ((inv@181@01 r))
  :qid |f-fctOfInv|)))
(push) ; 5
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 6 (inv@181@01 r)) (< (inv@181@01 r) 9))
      (img@182@01 r)
      (= r (Seq_index xs@139@01 (inv@181@01 r))))
    (>
      (+
        (+
          (ite
            (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
            (- $Perm.Write (pTaken@170@01 r))
            $Perm.No)
          (ite
            (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
            (- $Perm.Write (pTaken@169@01 r))
            $Perm.No))
        (ite (= r (Seq_index xs@139@01 8)) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-12465|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@183@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@183@01  $FVF<f>)))
      (and (and (<= 6 (inv@181@01 r)) (< (inv@181@01 r) 9)) (img@182@01 r)))
    (=>
      (and (and (<= 6 (inv@181@01 r)) (< (inv@181@01 r) 9)) (img@182@01 r))
      (Set_in r ($FVF.domain_f (as sm@183@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@183@01  $FVF<f>))))
  :qid |qp.fvfDomDef54|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@181@01 r)) (< (inv@181@01 r) 9)) (img@182@01 r))
      (= r (Seq_index xs@139@01 8)))
    (=
      ($FVF.lookup_f (as sm@183@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@171@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@183@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@171@01  $FVF<f>) r))
  :qid |qp.fvfValDef51|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@181@01 r)) (< (inv@181@01 r) 9)) (img@182@01 r))
      (ite
        (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
        (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
        false))
    (= ($FVF.lookup_f (as sm@183@01  $FVF<f>) r) ($FVF.lookup_f $t@152@01 r)))
  :pattern (($FVF.lookup_f (as sm@183@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@152@01 r))
  :qid |qp.fvfValDef52|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@181@01 r)) (< (inv@181@01 r) 9)) (img@182@01 r))
      (ite
        (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
        (< $Perm.No (- $Perm.Write (pTaken@169@01 r)))
        false))
    (= ($FVF.lookup_f (as sm@183@01  $FVF<f>) r) ($FVF.lookup_f $t@145@01 r)))
  :pattern (($FVF.lookup_f (as sm@183@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@145@01 r))
  :qid |qp.fvfValDef53|)))
(assert (fun04%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@183@01  $FVF<f>)))) xs@139@01 false))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((k@180@01 Int)) (!
  (=>
    (and (<= 6 k@180@01) (< k@180@01 9))
    (and
      (= (inv@181@01 (Seq_index xs@139@01 k@180@01)) k@180@01)
      (img@182@01 (Seq_index xs@139@01 k@180@01))))
  :pattern ((Seq_index xs@139@01 k@180@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@182@01 r) (and (<= 6 (inv@181@01 r)) (< (inv@181@01 r) 9)))
    (= (Seq_index xs@139@01 (inv@181@01 r)) r))
  :pattern ((inv@181@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@183@01  $FVF<f>)))
      (and (and (<= 6 (inv@181@01 r)) (< (inv@181@01 r) 9)) (img@182@01 r)))
    (=>
      (and (and (<= 6 (inv@181@01 r)) (< (inv@181@01 r) 9)) (img@182@01 r))
      (Set_in r ($FVF.domain_f (as sm@183@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@183@01  $FVF<f>))))
  :qid |qp.fvfDomDef54|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@181@01 r)) (< (inv@181@01 r) 9)) (img@182@01 r))
      (= r (Seq_index xs@139@01 8)))
    (=
      ($FVF.lookup_f (as sm@183@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@171@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@183@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@171@01  $FVF<f>) r))
  :qid |qp.fvfValDef51|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@181@01 r)) (< (inv@181@01 r) 9)) (img@182@01 r))
      (ite
        (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
        (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
        false))
    (= ($FVF.lookup_f (as sm@183@01  $FVF<f>) r) ($FVF.lookup_f $t@152@01 r)))
  :pattern (($FVF.lookup_f (as sm@183@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@152@01 r))
  :qid |qp.fvfValDef52|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@181@01 r)) (< (inv@181@01 r) 9)) (img@182@01 r))
      (ite
        (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
        (< $Perm.No (- $Perm.Write (pTaken@169@01 r)))
        false))
    (= ($FVF.lookup_f (as sm@183@01  $FVF<f>) r) ($FVF.lookup_f $t@145@01 r)))
  :pattern (($FVF.lookup_f (as sm@183@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@145@01 r))
  :qid |qp.fvfValDef53|)))
(assert (forall ((i1@178@01 Int) (i2@179@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 6 9) i1@178@01)
      (and
        (Seq_contains (Seq_range 6 9) i2@179@01)
        (not (= i1@178@01 i2@179@01))))
    (not (= (Seq_index xs@139@01 i1@178@01) (Seq_index xs@139@01 i2@179@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@87@17@87@105|)))
(assert (and
  (forall ((k@180@01 Int)) (!
    (=>
      (and (<= 6 k@180@01) (< k@180@01 9))
      (or (<= 6 k@180@01) (not (<= 6 k@180@01))))
    :pattern ((Seq_index xs@139@01 k@180@01))
    :qid |f-aux|))
  (fun04%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (as sm@183@01  $FVF<f>)))) xs@139@01 false)))
(push) ; 3
(assert (not (=
  20
  (fun04 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (as sm@183@01  $FVF<f>)))) xs@139@01 false))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@139@01 k@151@01) (Seq_index xs@139@01 k@144@01))
    (=
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))))
  
  :qid |quant-u-12466|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@184@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@139@01 8))
    (=
      ($FVF.lookup_f (as sm@184@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@171@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@184@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@171@01  $FVF<f>) r))
  :qid |qp.fvfValDef55|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@184@01  $FVF<f>) r) ($FVF.lookup_f $t@152@01 r)))
  :pattern (($FVF.lookup_f (as sm@184@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@152@01 r))
  :qid |qp.fvfValDef56|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
      (< $Perm.No (- $Perm.Write (pTaken@169@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@184@01  $FVF<f>) r) ($FVF.lookup_f $t@145@01 r)))
  :pattern (($FVF.lookup_f (as sm@184@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@145@01 r))
  :qid |qp.fvfValDef57|)))
(declare-const pm@185@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@185@01  $FPM) r)
    (+
      (+
        (ite (= r (Seq_index xs@139@01 8)) $Perm.Write $Perm.No)
        (ite
          (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
          (- $Perm.Write (pTaken@170@01 r))
          $Perm.No))
      (ite
        (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
        (- $Perm.Write (pTaken@169@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@185@01  $FPM) r))
  :qid |qp.resPrmSumDef58|)))
(assert (<= ($FVF.perm_f (as pm@185@01  $FPM) (Seq_index xs@139@01 8)) $Perm.Write))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@185@01  $FPM) r) $Perm.Write)
  :pattern ((inv@153@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@185@01  $FPM) r) $Perm.Write)
  :pattern ((inv@146@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] 20 == fun04(xs, false)
; [eval] fun04(xs, false)
(set-option :timeout 0)
(push) ; 3
; [eval] |xs| > 10
; [eval] |xs|
; [eval] (b ? (forall i1: Int, i2: Int ::(i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]) : (forall i1: Int, i2: Int ::(i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2]))
(push) ; 4
; [then-branch: 104 | False | dead]
; [else-branch: 104 | True | live]
(push) ; 5
; [else-branch: 104 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@139@01 k@144@01) (Seq_index xs@139@01 k@151@01))
    (=
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))))
  
  :qid |quant-u-12467|))))
(check-sat)
; unknown
(pop) ; 6
; 0.01s
; (get-info :all-statistics)
(declare-const sm@186@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
      (< $Perm.No (- $Perm.Write (pTaken@169@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@186@01  $FVF<f>) r) ($FVF.lookup_f $t@145@01 r)))
  :pattern (($FVF.lookup_f (as sm@186@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@145@01 r))
  :qid |qp.fvfValDef59|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@186@01  $FVF<f>) r) ($FVF.lookup_f $t@152@01 r)))
  :pattern (($FVF.lookup_f (as sm@186@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@152@01 r))
  :qid |qp.fvfValDef60|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@139@01 8))
    (=
      ($FVF.lookup_f (as sm@186@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@171@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@186@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@171@01  $FVF<f>) r))
  :qid |qp.fvfValDef61|)))
(declare-const pm@187@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@187@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
          (- $Perm.Write (pTaken@169@01 r))
          $Perm.No)
        (ite
          (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
          (- $Perm.Write (pTaken@170@01 r))
          $Perm.No))
      (ite (= r (Seq_index xs@139@01 8)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@187@01  $FPM) r))
  :qid |qp.resPrmSumDef62|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@187@01  $FPM) r) $Perm.Write)
  :pattern ((inv@146@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@187@01  $FPM) r) $Perm.Write)
  :pattern ((inv@153@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@187@01  $FPM) (Seq_index xs@139@01 8)) $Perm.Write))
; [eval] (forall i1: Int, i2: Int ::(i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@188@01 Int)
(declare-const i2@189@01 Int)
(set-option :timeout 0)
(push) ; 6
; [eval] (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2)
; [eval] (i1 in [6..9))
; [eval] [6..9)
(push) ; 7
; [then-branch: 105 | !(i1@188@01 in [6..9]) | live]
; [else-branch: 105 | i1@188@01 in [6..9] | live]
(push) ; 8
; [then-branch: 105 | !(i1@188@01 in [6..9])]
(assert (not (Seq_contains (Seq_range 6 9) i1@188@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@139@01 k@151@01) (Seq_index xs@139@01 k@144@01))
    (=
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))))
  
  :qid |quant-u-12468|))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
(pop) ; 8
(set-option :timeout 0)
(push) ; 8
; [else-branch: 105 | i1@188@01 in [6..9]]
(assert (Seq_contains (Seq_range 6 9) i1@188@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@139@01 k@151@01) (Seq_index xs@139@01 k@144@01))
    (=
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))))
  
  :qid |quant-u-12469|))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
; [eval] (i2 in [6..9))
; [eval] [6..9)
(set-option :timeout 0)
(push) ; 9
; [then-branch: 106 | !(i2@189@01 in [6..9]) | live]
; [else-branch: 106 | i2@189@01 in [6..9] | live]
(push) ; 10
; [then-branch: 106 | !(i2@189@01 in [6..9])]
(assert (not (Seq_contains (Seq_range 6 9) i2@189@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@139@01 k@144@01) (Seq_index xs@139@01 k@151@01))
    (=
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))))
  
  :qid |quant-u-12470|))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
(pop) ; 10
(set-option :timeout 0)
(push) ; 10
; [else-branch: 106 | i2@189@01 in [6..9]]
(assert (Seq_contains (Seq_range 6 9) i2@189@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@139@01 k@144@01) (Seq_index xs@139@01 k@151@01))
    (=
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))))
  
  :qid |quant-u-12471|))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
; [eval] i1 != i2
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 6 9) i2@189@01)
  (not (Seq_contains (Seq_range 6 9) i2@189@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 6 9) i1@188@01)
  (and
    (Seq_contains (Seq_range 6 9) i1@188@01)
    (or
      (Seq_contains (Seq_range 6 9) i2@189@01)
      (not (Seq_contains (Seq_range 6 9) i2@189@01))))))
(assert (or
  (Seq_contains (Seq_range 6 9) i1@188@01)
  (not (Seq_contains (Seq_range 6 9) i1@188@01))))
(set-option :timeout 0)
(push) ; 7
; [then-branch: 107 | i1@188@01 in [6..9] && i2@189@01 in [6..9] && i1@188@01 != i2@189@01 | live]
; [else-branch: 107 | !(i1@188@01 in [6..9] && i2@189@01 in [6..9] && i1@188@01 != i2@189@01) | live]
(push) ; 8
; [then-branch: 107 | i1@188@01 in [6..9] && i2@189@01 in [6..9] && i1@188@01 != i2@189@01]
(assert (and
  (Seq_contains (Seq_range 6 9) i1@188@01)
  (and (Seq_contains (Seq_range 6 9) i2@189@01) (not (= i1@188@01 i2@189@01)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@139@01 k@151@01) (Seq_index xs@139@01 k@144@01))
    (=
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))))
  
  :qid |quant-u-12472|))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(set-option :timeout 0)
(push) ; 9
(assert (not (>= i1@188@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (< i1@188@01 (Seq_length xs@139@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 9
(assert (not (>= i2@189@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (< i2@189@01 (Seq_length xs@139@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 107 | !(i1@188@01 in [6..9] && i2@189@01 in [6..9] && i1@188@01 != i2@189@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 6 9) i1@188@01)
    (and (Seq_contains (Seq_range 6 9) i2@189@01) (not (= i1@188@01 i2@189@01))))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@139@01 k@151@01) (Seq_index xs@139@01 k@144@01))
    (=
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))))
  
  :qid |quant-u-12473|))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 6 9) i1@188@01)
    (and (Seq_contains (Seq_range 6 9) i2@189@01) (not (= i1@188@01 i2@189@01))))
  (and
    (Seq_contains (Seq_range 6 9) i1@188@01)
    (Seq_contains (Seq_range 6 9) i2@189@01)
    (not (= i1@188@01 i2@189@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 6 9) i1@188@01)
      (and
        (Seq_contains (Seq_range 6 9) i2@189@01)
        (not (= i1@188@01 i2@189@01)))))
  (and
    (Seq_contains (Seq_range 6 9) i1@188@01)
    (and (Seq_contains (Seq_range 6 9) i2@189@01) (not (= i1@188@01 i2@189@01))))))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
      (< $Perm.No (- $Perm.Write (pTaken@169@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@186@01  $FVF<f>) r) ($FVF.lookup_f $t@145@01 r)))
  :pattern (($FVF.lookup_f (as sm@186@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@145@01 r))
  :qid |qp.fvfValDef59|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@186@01  $FVF<f>) r) ($FVF.lookup_f $t@152@01 r)))
  :pattern (($FVF.lookup_f (as sm@186@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@152@01 r))
  :qid |qp.fvfValDef60|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@139@01 8))
    (=
      ($FVF.lookup_f (as sm@186@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@171@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@186@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@171@01  $FVF<f>) r))
  :qid |qp.fvfValDef61|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@187@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
          (- $Perm.Write (pTaken@169@01 r))
          $Perm.No)
        (ite
          (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
          (- $Perm.Write (pTaken@170@01 r))
          $Perm.No))
      (ite (= r (Seq_index xs@139@01 8)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@187@01  $FPM) r))
  :qid |qp.resPrmSumDef62|)))
(assert (and
  (forall ((r $Ref)) (!
    (<= ($FVF.perm_f (as pm@187@01  $FPM) r) $Perm.Write)
    :pattern ((inv@146@01 r))
    :qid |qp-fld-prm-bnd|))
  (forall ((r $Ref)) (!
    (<= ($FVF.perm_f (as pm@187@01  $FPM) r) $Perm.Write)
    :pattern ((inv@153@01 r))
    :qid |qp-fld-prm-bnd|))
  (<= ($FVF.perm_f (as pm@187@01  $FPM) (Seq_index xs@139@01 8)) $Perm.Write)))
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((i1@188@01 Int) (i2@189@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 6 9) i1@188@01)
      (and
        (Seq_contains (Seq_range 6 9) i2@189@01)
        (not (= i1@188@01 i2@189@01))))
    (not (= (Seq_index xs@139@01 i1@188@01) (Seq_index xs@139@01 i2@189@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@87@17@87@105|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@188@01 Int) (i2@189@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 6 9) i1@188@01)
      (and
        (Seq_contains (Seq_range 6 9) i2@189@01)
        (not (= i1@188@01 i2@189@01))))
    (not (= (Seq_index xs@139@01 i1@188@01) (Seq_index xs@139@01 i2@189@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@87@17@87@105|)))
; [then-branch: 108 | False | dead]
; [else-branch: 108 | True | live]
(push) ; 4
; [else-branch: 108 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@139@01 k@144@01) (Seq_index xs@139@01 k@151@01))
    (=
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))))
  
  :qid |quant-u-12474|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
(declare-const k@190@01 Int)
(set-option :timeout 0)
(push) ; 5
; [eval] 6 <= k && k < 9
; [eval] 6 <= k
(push) ; 6
; [then-branch: 109 | !(6 <= k@190@01) | live]
; [else-branch: 109 | 6 <= k@190@01 | live]
(push) ; 7
; [then-branch: 109 | !(6 <= k@190@01)]
(assert (not (<= 6 k@190@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@139@01 k@151@01) (Seq_index xs@139@01 k@144@01))
    (=
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))))
  
  :qid |quant-u-12475|))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
(pop) ; 7
(set-option :timeout 0)
(push) ; 7
; [else-branch: 109 | 6 <= k@190@01]
(assert (<= 6 k@190@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@139@01 k@151@01) (Seq_index xs@139@01 k@144@01))
    (=
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))))
  
  :qid |quant-u-12476|))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
; [eval] k < 9
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (<= 6 k@190@01) (not (<= 6 k@190@01))))
(assert (and (<= 6 k@190@01) (< k@190@01 9)))
; [eval] xs[k]
(set-option :timeout 0)
(push) ; 6
(assert (not (>= k@190@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k@190@01 (Seq_length xs@139@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(declare-fun inv@191@01 ($Ref) Int)
(declare-fun img@192@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@190@01 Int)) (!
  (=>
    (and (<= 6 k@190@01) (< k@190@01 9))
    (or (<= 6 k@190@01) (not (<= 6 k@190@01))))
  :pattern ((Seq_index xs@139@01 k@190@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((k1@190@01 Int) (k2@190@01 Int)) (!
  (=>
    (and
      (and (<= 6 k1@190@01) (< k1@190@01 9))
      (and (<= 6 k2@190@01) (< k2@190@01 9))
      (= (Seq_index xs@139@01 k1@190@01) (Seq_index xs@139@01 k2@190@01)))
    (= k1@190@01 k2@190@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@190@01 Int)) (!
  (=>
    (and (<= 6 k@190@01) (< k@190@01 9))
    (and
      (= (inv@191@01 (Seq_index xs@139@01 k@190@01)) k@190@01)
      (img@192@01 (Seq_index xs@139@01 k@190@01))))
  :pattern ((Seq_index xs@139@01 k@190@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@192@01 r) (and (<= 6 (inv@191@01 r)) (< (inv@191@01 r) 9)))
    (= (Seq_index xs@139@01 (inv@191@01 r)) r))
  :pattern ((inv@191@01 r))
  :qid |f-fctOfInv|)))
(push) ; 5
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 6 (inv@191@01 r)) (< (inv@191@01 r) 9))
      (img@192@01 r)
      (= r (Seq_index xs@139@01 (inv@191@01 r))))
    (>
      (+
        (+
          (ite
            (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
            (- $Perm.Write (pTaken@169@01 r))
            $Perm.No)
          (ite
            (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
            (- $Perm.Write (pTaken@170@01 r))
            $Perm.No))
        (ite (= r (Seq_index xs@139@01 8)) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-12478|))))
(check-sat)
; unsat
(pop) ; 5
; 0.01s
; (get-info :all-statistics)
(declare-const sm@193@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@193@01  $FVF<f>)))
      (and (and (<= 6 (inv@191@01 r)) (< (inv@191@01 r) 9)) (img@192@01 r)))
    (=>
      (and (and (<= 6 (inv@191@01 r)) (< (inv@191@01 r) 9)) (img@192@01 r))
      (Set_in r ($FVF.domain_f (as sm@193@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@193@01  $FVF<f>))))
  :qid |qp.fvfDomDef66|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@191@01 r)) (< (inv@191@01 r) 9)) (img@192@01 r))
      (ite
        (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
        (< $Perm.No (- $Perm.Write (pTaken@169@01 r)))
        false))
    (= ($FVF.lookup_f (as sm@193@01  $FVF<f>) r) ($FVF.lookup_f $t@145@01 r)))
  :pattern (($FVF.lookup_f (as sm@193@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@145@01 r))
  :qid |qp.fvfValDef63|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@191@01 r)) (< (inv@191@01 r) 9)) (img@192@01 r))
      (ite
        (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
        (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
        false))
    (= ($FVF.lookup_f (as sm@193@01  $FVF<f>) r) ($FVF.lookup_f $t@152@01 r)))
  :pattern (($FVF.lookup_f (as sm@193@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@152@01 r))
  :qid |qp.fvfValDef64|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@191@01 r)) (< (inv@191@01 r) 9)) (img@192@01 r))
      (= r (Seq_index xs@139@01 8)))
    (=
      ($FVF.lookup_f (as sm@193@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@171@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@193@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@171@01  $FVF<f>) r))
  :qid |qp.fvfValDef65|)))
(assert (fun04%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@193@01  $FVF<f>)))) xs@139@01 false))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
      (< $Perm.No (- $Perm.Write (pTaken@169@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@186@01  $FVF<f>) r) ($FVF.lookup_f $t@145@01 r)))
  :pattern (($FVF.lookup_f (as sm@186@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@145@01 r))
  :qid |qp.fvfValDef59|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@186@01  $FVF<f>) r) ($FVF.lookup_f $t@152@01 r)))
  :pattern (($FVF.lookup_f (as sm@186@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@152@01 r))
  :qid |qp.fvfValDef60|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@139@01 8))
    (=
      ($FVF.lookup_f (as sm@186@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@171@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@186@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@171@01  $FVF<f>) r))
  :qid |qp.fvfValDef61|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@187@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
          (- $Perm.Write (pTaken@169@01 r))
          $Perm.No)
        (ite
          (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
          (- $Perm.Write (pTaken@170@01 r))
          $Perm.No))
      (ite (= r (Seq_index xs@139@01 8)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@187@01  $FPM) r))
  :qid |qp.resPrmSumDef62|)))
(assert (forall ((k@190@01 Int)) (!
  (=>
    (and (<= 6 k@190@01) (< k@190@01 9))
    (and
      (= (inv@191@01 (Seq_index xs@139@01 k@190@01)) k@190@01)
      (img@192@01 (Seq_index xs@139@01 k@190@01))))
  :pattern ((Seq_index xs@139@01 k@190@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@192@01 r) (and (<= 6 (inv@191@01 r)) (< (inv@191@01 r) 9)))
    (= (Seq_index xs@139@01 (inv@191@01 r)) r))
  :pattern ((inv@191@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@193@01  $FVF<f>)))
      (and (and (<= 6 (inv@191@01 r)) (< (inv@191@01 r) 9)) (img@192@01 r)))
    (=>
      (and (and (<= 6 (inv@191@01 r)) (< (inv@191@01 r) 9)) (img@192@01 r))
      (Set_in r ($FVF.domain_f (as sm@193@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@193@01  $FVF<f>))))
  :qid |qp.fvfDomDef66|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@191@01 r)) (< (inv@191@01 r) 9)) (img@192@01 r))
      (ite
        (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
        (< $Perm.No (- $Perm.Write (pTaken@169@01 r)))
        false))
    (= ($FVF.lookup_f (as sm@193@01  $FVF<f>) r) ($FVF.lookup_f $t@145@01 r)))
  :pattern (($FVF.lookup_f (as sm@193@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@145@01 r))
  :qid |qp.fvfValDef63|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@191@01 r)) (< (inv@191@01 r) 9)) (img@192@01 r))
      (ite
        (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
        (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
        false))
    (= ($FVF.lookup_f (as sm@193@01  $FVF<f>) r) ($FVF.lookup_f $t@152@01 r)))
  :pattern (($FVF.lookup_f (as sm@193@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@152@01 r))
  :qid |qp.fvfValDef64|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@191@01 r)) (< (inv@191@01 r) 9)) (img@192@01 r))
      (= r (Seq_index xs@139@01 8)))
    (=
      ($FVF.lookup_f (as sm@193@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@171@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@193@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@171@01  $FVF<f>) r))
  :qid |qp.fvfValDef65|)))
(assert (and
  (forall ((r $Ref)) (!
    (<= ($FVF.perm_f (as pm@187@01  $FPM) r) $Perm.Write)
    :pattern ((inv@146@01 r))
    :qid |qp-fld-prm-bnd|))
  (forall ((r $Ref)) (!
    (<= ($FVF.perm_f (as pm@187@01  $FPM) r) $Perm.Write)
    :pattern ((inv@153@01 r))
    :qid |qp-fld-prm-bnd|))
  (<= ($FVF.perm_f (as pm@187@01  $FPM) (Seq_index xs@139@01 8)) $Perm.Write)
  (forall ((i1@188@01 Int) (i2@189@01 Int)) (!
    (=>
      (and
        (Seq_contains (Seq_range 6 9) i1@188@01)
        (and
          (Seq_contains (Seq_range 6 9) i2@189@01)
          (not (= i1@188@01 i2@189@01))))
      (not (= (Seq_index xs@139@01 i1@188@01) (Seq_index xs@139@01 i2@189@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@87@17@87@105|))))
(assert (and
  (forall ((k@190@01 Int)) (!
    (=>
      (and (<= 6 k@190@01) (< k@190@01 9))
      (or (<= 6 k@190@01) (not (<= 6 k@190@01))))
    :pattern ((Seq_index xs@139@01 k@190@01))
    :qid |f-aux|))
  (fun04%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (as sm@193@01  $FVF<f>)))) xs@139@01 false)))
(push) ; 3
(assert (not (=
  20
  (fun04 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (as sm@193@01  $FVF<f>)))) xs@139@01 false))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@139@01 k@151@01) (Seq_index xs@139@01 k@144@01))
    (=
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))))
  
  :qid |quant-u-12479|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@194@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@139@01 8))
    (=
      ($FVF.lookup_f (as sm@194@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@171@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@194@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@171@01  $FVF<f>) r))
  :qid |qp.fvfValDef67|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@194@01  $FVF<f>) r) ($FVF.lookup_f $t@152@01 r)))
  :pattern (($FVF.lookup_f (as sm@194@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@152@01 r))
  :qid |qp.fvfValDef68|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
      (< $Perm.No (- $Perm.Write (pTaken@169@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@194@01  $FVF<f>) r) ($FVF.lookup_f $t@145@01 r)))
  :pattern (($FVF.lookup_f (as sm@194@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@145@01 r))
  :qid |qp.fvfValDef69|)))
(declare-const pm@195@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@195@01  $FPM) r)
    (+
      (+
        (ite (= r (Seq_index xs@139@01 8)) $Perm.Write $Perm.No)
        (ite
          (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
          (- $Perm.Write (pTaken@170@01 r))
          $Perm.No))
      (ite
        (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
        (- $Perm.Write (pTaken@169@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@195@01  $FPM) r))
  :qid |qp.resPrmSumDef70|)))
(assert (<= ($FVF.perm_f (as pm@195@01  $FPM) (Seq_index xs@139@01 8)) $Perm.Write))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@195@01  $FPM) r) $Perm.Write)
  :pattern ((inv@153@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@195@01  $FPM) r) $Perm.Write)
  :pattern ((inv@146@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] 20 == fun04(xs, false)
; [eval] fun04(xs, false)
(set-option :timeout 0)
(push) ; 3
; [eval] |xs| > 10
; [eval] |xs|
; [eval] (b ? (forall i1: Int, i2: Int ::(i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]) : (forall i1: Int, i2: Int ::(i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2]))
(push) ; 4
; [then-branch: 110 | False | dead]
; [else-branch: 110 | True | live]
(push) ; 5
; [else-branch: 110 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@139@01 k@151@01) (Seq_index xs@139@01 k@144@01))
    (=
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))))
  
  :qid |quant-u-12480|))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
; [eval] (forall i1: Int, i2: Int ::(i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@196@01 Int)
(declare-const i2@197@01 Int)
(set-option :timeout 0)
(push) ; 6
; [eval] (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2)
; [eval] (i1 in [6..9))
; [eval] [6..9)
(push) ; 7
; [then-branch: 111 | !(i1@196@01 in [6..9]) | live]
; [else-branch: 111 | i1@196@01 in [6..9] | live]
(push) ; 8
; [then-branch: 111 | !(i1@196@01 in [6..9])]
(assert (not (Seq_contains (Seq_range 6 9) i1@196@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@139@01 k@144@01) (Seq_index xs@139@01 k@151@01))
    (=
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))))
  
  :qid |quant-u-12481|))))
(check-sat)
; unknown
(pop) ; 9
; 0.01s
; (get-info :all-statistics)
(declare-const sm@198@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
      (< $Perm.No (- $Perm.Write (pTaken@169@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@198@01  $FVF<f>) r) ($FVF.lookup_f $t@145@01 r)))
  :pattern (($FVF.lookup_f (as sm@198@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@145@01 r))
  :qid |qp.fvfValDef71|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@198@01  $FVF<f>) r) ($FVF.lookup_f $t@152@01 r)))
  :pattern (($FVF.lookup_f (as sm@198@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@152@01 r))
  :qid |qp.fvfValDef72|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@139@01 8))
    (=
      ($FVF.lookup_f (as sm@198@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@171@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@198@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@171@01  $FVF<f>) r))
  :qid |qp.fvfValDef73|)))
(declare-const pm@199@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@199@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
          (- $Perm.Write (pTaken@169@01 r))
          $Perm.No)
        (ite
          (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
          (- $Perm.Write (pTaken@170@01 r))
          $Perm.No))
      (ite (= r (Seq_index xs@139@01 8)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@199@01  $FPM) r))
  :qid |qp.resPrmSumDef74|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@199@01  $FPM) r) $Perm.Write)
  :pattern ((inv@146@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@199@01  $FPM) r) $Perm.Write)
  :pattern ((inv@153@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@199@01  $FPM) (Seq_index xs@139@01 8)) $Perm.Write))
(pop) ; 8
(set-option :timeout 0)
(push) ; 8
; [else-branch: 111 | i1@196@01 in [6..9]]
(assert (Seq_contains (Seq_range 6 9) i1@196@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@139@01 k@144@01) (Seq_index xs@139@01 k@151@01))
    (=
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))))
  
  :qid |quant-u-12482|))))
(check-sat)
; unknown
(pop) ; 9
; 0.01s
; (get-info :all-statistics)
(declare-const sm@200@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
      (< $Perm.No (- $Perm.Write (pTaken@169@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@200@01  $FVF<f>) r) ($FVF.lookup_f $t@145@01 r)))
  :pattern (($FVF.lookup_f (as sm@200@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@145@01 r))
  :qid |qp.fvfValDef75|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@200@01  $FVF<f>) r) ($FVF.lookup_f $t@152@01 r)))
  :pattern (($FVF.lookup_f (as sm@200@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@152@01 r))
  :qid |qp.fvfValDef76|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@139@01 8))
    (=
      ($FVF.lookup_f (as sm@200@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@171@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@200@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@171@01  $FVF<f>) r))
  :qid |qp.fvfValDef77|)))
(declare-const pm@201@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@201@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
          (- $Perm.Write (pTaken@169@01 r))
          $Perm.No)
        (ite
          (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
          (- $Perm.Write (pTaken@170@01 r))
          $Perm.No))
      (ite (= r (Seq_index xs@139@01 8)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@201@01  $FPM) r))
  :qid |qp.resPrmSumDef78|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@201@01  $FPM) r) $Perm.Write)
  :pattern ((inv@146@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@201@01  $FPM) r) $Perm.Write)
  :pattern ((inv@153@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@201@01  $FPM) (Seq_index xs@139@01 8)) $Perm.Write))
; [eval] (i2 in [6..9))
; [eval] [6..9)
(set-option :timeout 0)
(push) ; 9
; [then-branch: 112 | !(i2@197@01 in [6..9]) | live]
; [else-branch: 112 | i2@197@01 in [6..9] | live]
(push) ; 10
; [then-branch: 112 | !(i2@197@01 in [6..9])]
(assert (not (Seq_contains (Seq_range 6 9) i2@197@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@139@01 k@151@01) (Seq_index xs@139@01 k@144@01))
    (=
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))))
  
  :qid |quant-u-12483|))))
(check-sat)
; unknown
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
(pop) ; 10
(set-option :timeout 0)
(push) ; 10
; [else-branch: 112 | i2@197@01 in [6..9]]
(assert (Seq_contains (Seq_range 6 9) i2@197@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@139@01 k@151@01) (Seq_index xs@139@01 k@144@01))
    (=
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))))
  
  :qid |quant-u-12484|))))
(check-sat)
; unknown
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
; [eval] i1 != i2
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 6 9) i2@197@01)
  (not (Seq_contains (Seq_range 6 9) i2@197@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
      (< $Perm.No (- $Perm.Write (pTaken@169@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@198@01  $FVF<f>) r) ($FVF.lookup_f $t@145@01 r)))
  :pattern (($FVF.lookup_f (as sm@198@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@145@01 r))
  :qid |qp.fvfValDef71|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@198@01  $FVF<f>) r) ($FVF.lookup_f $t@152@01 r)))
  :pattern (($FVF.lookup_f (as sm@198@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@152@01 r))
  :qid |qp.fvfValDef72|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@139@01 8))
    (=
      ($FVF.lookup_f (as sm@198@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@171@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@198@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@171@01  $FVF<f>) r))
  :qid |qp.fvfValDef73|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@199@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
          (- $Perm.Write (pTaken@169@01 r))
          $Perm.No)
        (ite
          (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
          (- $Perm.Write (pTaken@170@01 r))
          $Perm.No))
      (ite (= r (Seq_index xs@139@01 8)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@199@01  $FPM) r))
  :qid |qp.resPrmSumDef74|)))
(assert (=>
  (not (Seq_contains (Seq_range 6 9) i1@196@01))
  (and
    (not (Seq_contains (Seq_range 6 9) i1@196@01))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@199@01  $FPM) r) $Perm.Write)
      :pattern ((inv@146@01 r))
      :qid |qp-fld-prm-bnd|))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@199@01  $FPM) r) $Perm.Write)
      :pattern ((inv@153@01 r))
      :qid |qp-fld-prm-bnd|))
    (<= ($FVF.perm_f (as pm@199@01  $FPM) (Seq_index xs@139@01 8)) $Perm.Write))))
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
      (< $Perm.No (- $Perm.Write (pTaken@169@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@200@01  $FVF<f>) r) ($FVF.lookup_f $t@145@01 r)))
  :pattern (($FVF.lookup_f (as sm@200@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@145@01 r))
  :qid |qp.fvfValDef75|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@200@01  $FVF<f>) r) ($FVF.lookup_f $t@152@01 r)))
  :pattern (($FVF.lookup_f (as sm@200@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@152@01 r))
  :qid |qp.fvfValDef76|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@139@01 8))
    (=
      ($FVF.lookup_f (as sm@200@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@171@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@200@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@171@01  $FVF<f>) r))
  :qid |qp.fvfValDef77|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@201@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
          (- $Perm.Write (pTaken@169@01 r))
          $Perm.No)
        (ite
          (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
          (- $Perm.Write (pTaken@170@01 r))
          $Perm.No))
      (ite (= r (Seq_index xs@139@01 8)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@201@01  $FPM) r))
  :qid |qp.resPrmSumDef78|)))
(assert (=>
  (Seq_contains (Seq_range 6 9) i1@196@01)
  (and
    (Seq_contains (Seq_range 6 9) i1@196@01)
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@201@01  $FPM) r) $Perm.Write)
      :pattern ((inv@146@01 r))
      :qid |qp-fld-prm-bnd|))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@201@01  $FPM) r) $Perm.Write)
      :pattern ((inv@153@01 r))
      :qid |qp-fld-prm-bnd|))
    (<= ($FVF.perm_f (as pm@201@01  $FPM) (Seq_index xs@139@01 8)) $Perm.Write)
    (or
      (Seq_contains (Seq_range 6 9) i2@197@01)
      (not (Seq_contains (Seq_range 6 9) i2@197@01))))))
(assert (or
  (Seq_contains (Seq_range 6 9) i1@196@01)
  (not (Seq_contains (Seq_range 6 9) i1@196@01))))
(set-option :timeout 0)
(push) ; 7
; [then-branch: 113 | i1@196@01 in [6..9] && i2@197@01 in [6..9] && i1@196@01 != i2@197@01 | live]
; [else-branch: 113 | !(i1@196@01 in [6..9] && i2@197@01 in [6..9] && i1@196@01 != i2@197@01) | live]
(push) ; 8
; [then-branch: 113 | i1@196@01 in [6..9] && i2@197@01 in [6..9] && i1@196@01 != i2@197@01]
(assert (and
  (Seq_contains (Seq_range 6 9) i1@196@01)
  (and (Seq_contains (Seq_range 6 9) i2@197@01) (not (= i1@196@01 i2@197@01)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@139@01 k@144@01) (Seq_index xs@139@01 k@151@01))
    (=
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))))
  
  :qid |quant-u-12485|))))
(check-sat)
; unknown
(pop) ; 9
; 0.01s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@201@01  $FPM) r) $Perm.Write)
  :pattern ((inv@146@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@201@01  $FPM) r) $Perm.Write)
  :pattern ((inv@153@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@201@01  $FPM) (Seq_index xs@139@01 8)) $Perm.Write))
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(set-option :timeout 0)
(push) ; 9
(assert (not (>= i1@196@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (< i1@196@01 (Seq_length xs@139@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 9
(assert (not (>= i2@197@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (< i2@197@01 (Seq_length xs@139@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 113 | !(i1@196@01 in [6..9] && i2@197@01 in [6..9] && i1@196@01 != i2@197@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 6 9) i1@196@01)
    (and (Seq_contains (Seq_range 6 9) i2@197@01) (not (= i1@196@01 i2@197@01))))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@139@01 k@144@01) (Seq_index xs@139@01 k@151@01))
    (=
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))))
  
  :qid |quant-u-12486|))))
(check-sat)
; unknown
(pop) ; 9
; 0.01s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@201@01  $FPM) r) $Perm.Write)
  :pattern ((inv@146@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@201@01  $FPM) r) $Perm.Write)
  :pattern ((inv@153@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@201@01  $FPM) (Seq_index xs@139@01 8)) $Perm.Write))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 6 9) i1@196@01)
    (and (Seq_contains (Seq_range 6 9) i2@197@01) (not (= i1@196@01 i2@197@01))))
  (and
    (Seq_contains (Seq_range 6 9) i1@196@01)
    (Seq_contains (Seq_range 6 9) i2@197@01)
    (not (= i1@196@01 i2@197@01))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@201@01  $FPM) r) $Perm.Write)
      :pattern ((inv@146@01 r))
      :qid |qp-fld-prm-bnd|))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@201@01  $FPM) r) $Perm.Write)
      :pattern ((inv@153@01 r))
      :qid |qp-fld-prm-bnd|))
    (<= ($FVF.perm_f (as pm@201@01  $FPM) (Seq_index xs@139@01 8)) $Perm.Write))))
; Joined path conditions
(assert (=>
  (not
    (and
      (Seq_contains (Seq_range 6 9) i1@196@01)
      (and
        (Seq_contains (Seq_range 6 9) i2@197@01)
        (not (= i1@196@01 i2@197@01)))))
  (and
    (not
      (and
        (Seq_contains (Seq_range 6 9) i1@196@01)
        (and
          (Seq_contains (Seq_range 6 9) i2@197@01)
          (not (= i1@196@01 i2@197@01)))))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@201@01  $FPM) r) $Perm.Write)
      :pattern ((inv@146@01 r))
      :qid |qp-fld-prm-bnd|))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@201@01  $FPM) r) $Perm.Write)
      :pattern ((inv@153@01 r))
      :qid |qp-fld-prm-bnd|))
    (<= ($FVF.perm_f (as pm@201@01  $FPM) (Seq_index xs@139@01 8)) $Perm.Write))))
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 6 9) i1@196@01)
      (and
        (Seq_contains (Seq_range 6 9) i2@197@01)
        (not (= i1@196@01 i2@197@01)))))
  (and
    (Seq_contains (Seq_range 6 9) i1@196@01)
    (and (Seq_contains (Seq_range 6 9) i2@197@01) (not (= i1@196@01 i2@197@01))))))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
      (< $Perm.No (- $Perm.Write (pTaken@169@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@198@01  $FVF<f>) r) ($FVF.lookup_f $t@145@01 r)))
  :pattern (($FVF.lookup_f (as sm@198@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@145@01 r))
  :qid |qp.fvfValDef71|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@198@01  $FVF<f>) r) ($FVF.lookup_f $t@152@01 r)))
  :pattern (($FVF.lookup_f (as sm@198@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@152@01 r))
  :qid |qp.fvfValDef72|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@139@01 8))
    (=
      ($FVF.lookup_f (as sm@198@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@171@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@198@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@171@01  $FVF<f>) r))
  :qid |qp.fvfValDef73|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@199@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
          (- $Perm.Write (pTaken@169@01 r))
          $Perm.No)
        (ite
          (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
          (- $Perm.Write (pTaken@170@01 r))
          $Perm.No))
      (ite (= r (Seq_index xs@139@01 8)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@199@01  $FPM) r))
  :qid |qp.resPrmSumDef74|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
      (< $Perm.No (- $Perm.Write (pTaken@169@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@200@01  $FVF<f>) r) ($FVF.lookup_f $t@145@01 r)))
  :pattern (($FVF.lookup_f (as sm@200@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@145@01 r))
  :qid |qp.fvfValDef75|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@200@01  $FVF<f>) r) ($FVF.lookup_f $t@152@01 r)))
  :pattern (($FVF.lookup_f (as sm@200@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@152@01 r))
  :qid |qp.fvfValDef76|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@139@01 8))
    (=
      ($FVF.lookup_f (as sm@200@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@171@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@200@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@171@01  $FVF<f>) r))
  :qid |qp.fvfValDef77|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@201@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
          (- $Perm.Write (pTaken@169@01 r))
          $Perm.No)
        (ite
          (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
          (- $Perm.Write (pTaken@170@01 r))
          $Perm.No))
      (ite (= r (Seq_index xs@139@01 8)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@201@01  $FPM) r))
  :qid |qp.resPrmSumDef78|)))
; Nested auxiliary terms: non-globals (aux)
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
      (< $Perm.No (- $Perm.Write (pTaken@169@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@198@01  $FVF<f>) r) ($FVF.lookup_f $t@145@01 r)))
  :pattern (($FVF.lookup_f (as sm@198@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@145@01 r))
  :qid |qp.fvfValDef71|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@198@01  $FVF<f>) r) ($FVF.lookup_f $t@152@01 r)))
  :pattern (($FVF.lookup_f (as sm@198@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@152@01 r))
  :qid |qp.fvfValDef72|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@139@01 8))
    (=
      ($FVF.lookup_f (as sm@198@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@171@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@198@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@171@01  $FVF<f>) r))
  :qid |qp.fvfValDef73|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@199@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
          (- $Perm.Write (pTaken@169@01 r))
          $Perm.No)
        (ite
          (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
          (- $Perm.Write (pTaken@170@01 r))
          $Perm.No))
      (ite (= r (Seq_index xs@139@01 8)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@199@01  $FPM) r))
  :qid |qp.resPrmSumDef74|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
      (< $Perm.No (- $Perm.Write (pTaken@169@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@200@01  $FVF<f>) r) ($FVF.lookup_f $t@145@01 r)))
  :pattern (($FVF.lookup_f (as sm@200@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@145@01 r))
  :qid |qp.fvfValDef75|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@200@01  $FVF<f>) r) ($FVF.lookup_f $t@152@01 r)))
  :pattern (($FVF.lookup_f (as sm@200@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@152@01 r))
  :qid |qp.fvfValDef76|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@139@01 8))
    (=
      ($FVF.lookup_f (as sm@200@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@171@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@200@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@171@01  $FVF<f>) r))
  :qid |qp.fvfValDef77|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@201@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
          (- $Perm.Write (pTaken@169@01 r))
          $Perm.No)
        (ite
          (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
          (- $Perm.Write (pTaken@170@01 r))
          $Perm.No))
      (ite (= r (Seq_index xs@139@01 8)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@201@01  $FPM) r))
  :qid |qp.resPrmSumDef78|)))
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((i1@196@01 Int) (i2@197@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 6 9) i1@196@01)
      (and
        (Seq_contains (Seq_range 6 9) i2@197@01)
        (not (= i1@196@01 i2@197@01))))
    (not (= (Seq_index xs@139@01 i1@196@01) (Seq_index xs@139@01 i2@197@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@87@17@87@105|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@196@01 Int) (i2@197@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 6 9) i1@196@01)
      (and
        (Seq_contains (Seq_range 6 9) i2@197@01)
        (not (= i1@196@01 i2@197@01))))
    (not (= (Seq_index xs@139@01 i1@196@01) (Seq_index xs@139@01 i2@197@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@87@17@87@105|)))
; [then-branch: 114 | False | dead]
; [else-branch: 114 | True | live]
(push) ; 4
; [else-branch: 114 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@139@01 k@151@01) (Seq_index xs@139@01 k@144@01))
    (=
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))))
  
  :qid |quant-u-12487|))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
(declare-const k@202@01 Int)
(set-option :timeout 0)
(push) ; 5
; [eval] 6 <= k && k < 9
; [eval] 6 <= k
(push) ; 6
; [then-branch: 115 | !(6 <= k@202@01) | live]
; [else-branch: 115 | 6 <= k@202@01 | live]
(push) ; 7
; [then-branch: 115 | !(6 <= k@202@01)]
(assert (not (<= 6 k@202@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@139@01 k@144@01) (Seq_index xs@139@01 k@151@01))
    (=
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))))
  
  :qid |quant-u-12488|))))
(check-sat)
; unknown
(pop) ; 8
; 0.01s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(declare-const pm@203@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@203@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
          (- $Perm.Write (pTaken@169@01 r))
          $Perm.No)
        (ite
          (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
          (- $Perm.Write (pTaken@170@01 r))
          $Perm.No))
      (ite (= r (Seq_index xs@139@01 8)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@203@01  $FPM) r))
  :qid |qp.resPrmSumDef79|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@203@01  $FPM) r) $Perm.Write)
  :pattern ((inv@146@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@203@01  $FPM) r) $Perm.Write)
  :pattern ((inv@153@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@203@01  $FPM) (Seq_index xs@139@01 8)) $Perm.Write))
(pop) ; 7
(set-option :timeout 0)
(push) ; 7
; [else-branch: 115 | 6 <= k@202@01]
(assert (<= 6 k@202@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@139@01 k@144@01) (Seq_index xs@139@01 k@151@01))
    (=
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))))
  
  :qid |quant-u-12489|))))
(check-sat)
; unknown
(pop) ; 8
; 0.01s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(declare-const pm@204@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@204@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
          (- $Perm.Write (pTaken@169@01 r))
          $Perm.No)
        (ite
          (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
          (- $Perm.Write (pTaken@170@01 r))
          $Perm.No))
      (ite (= r (Seq_index xs@139@01 8)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@204@01  $FPM) r))
  :qid |qp.resPrmSumDef80|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@204@01  $FPM) r) $Perm.Write)
  :pattern ((inv@146@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@204@01  $FPM) r) $Perm.Write)
  :pattern ((inv@153@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@204@01  $FPM) (Seq_index xs@139@01 8)) $Perm.Write))
; [eval] k < 9
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@203@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
          (- $Perm.Write (pTaken@169@01 r))
          $Perm.No)
        (ite
          (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
          (- $Perm.Write (pTaken@170@01 r))
          $Perm.No))
      (ite (= r (Seq_index xs@139@01 8)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@203@01  $FPM) r))
  :qid |qp.resPrmSumDef79|)))
(assert (=>
  (not (<= 6 k@202@01))
  (and
    (not (<= 6 k@202@01))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@203@01  $FPM) r) $Perm.Write)
      :pattern ((inv@146@01 r))
      :qid |qp-fld-prm-bnd|))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@203@01  $FPM) r) $Perm.Write)
      :pattern ((inv@153@01 r))
      :qid |qp-fld-prm-bnd|))
    (<= ($FVF.perm_f (as pm@203@01  $FPM) (Seq_index xs@139@01 8)) $Perm.Write))))
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@204@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
          (- $Perm.Write (pTaken@169@01 r))
          $Perm.No)
        (ite
          (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
          (- $Perm.Write (pTaken@170@01 r))
          $Perm.No))
      (ite (= r (Seq_index xs@139@01 8)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@204@01  $FPM) r))
  :qid |qp.resPrmSumDef80|)))
(assert (=>
  (<= 6 k@202@01)
  (and
    (<= 6 k@202@01)
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@204@01  $FPM) r) $Perm.Write)
      :pattern ((inv@146@01 r))
      :qid |qp-fld-prm-bnd|))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@204@01  $FPM) r) $Perm.Write)
      :pattern ((inv@153@01 r))
      :qid |qp-fld-prm-bnd|))
    (<= ($FVF.perm_f (as pm@204@01  $FPM) (Seq_index xs@139@01 8)) $Perm.Write))))
(assert (or (<= 6 k@202@01) (not (<= 6 k@202@01))))
(assert (and (<= 6 k@202@01) (< k@202@01 9)))
; [eval] xs[k]
(set-option :timeout 0)
(push) ; 6
(assert (not (>= k@202@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k@202@01 (Seq_length xs@139@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(declare-fun inv@205@01 ($Ref) Int)
(declare-fun img@206@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@203@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
          (- $Perm.Write (pTaken@169@01 r))
          $Perm.No)
        (ite
          (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
          (- $Perm.Write (pTaken@170@01 r))
          $Perm.No))
      (ite (= r (Seq_index xs@139@01 8)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@203@01  $FPM) r))
  :qid |qp.resPrmSumDef79|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@204@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
          (- $Perm.Write (pTaken@169@01 r))
          $Perm.No)
        (ite
          (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
          (- $Perm.Write (pTaken@170@01 r))
          $Perm.No))
      (ite (= r (Seq_index xs@139@01 8)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@204@01  $FPM) r))
  :qid |qp.resPrmSumDef80|)))
; Nested auxiliary terms: non-globals
(assert (forall ((k@202@01 Int)) (!
  (=>
    (and (<= 6 k@202@01) (< k@202@01 9))
    (and
      (=>
        (not (<= 6 k@202@01))
        (and
          (not (<= 6 k@202@01))
          (forall ((r $Ref)) (!
            (<= ($FVF.perm_f (as pm@203@01  $FPM) r) $Perm.Write)
            :pattern ((inv@146@01 r))
            :qid |qp-fld-prm-bnd|))
          (forall ((r $Ref)) (!
            (<= ($FVF.perm_f (as pm@203@01  $FPM) r) $Perm.Write)
            :pattern ((inv@153@01 r))
            :qid |qp-fld-prm-bnd|))
          (<=
            ($FVF.perm_f (as pm@203@01  $FPM) (Seq_index xs@139@01 8))
            $Perm.Write)))
      (=>
        (<= 6 k@202@01)
        (and
          (<= 6 k@202@01)
          (forall ((r $Ref)) (!
            (<= ($FVF.perm_f (as pm@204@01  $FPM) r) $Perm.Write)
            :pattern ((inv@146@01 r))
            :qid |qp-fld-prm-bnd|))
          (forall ((r $Ref)) (!
            (<= ($FVF.perm_f (as pm@204@01  $FPM) r) $Perm.Write)
            :pattern ((inv@153@01 r))
            :qid |qp-fld-prm-bnd|))
          (<=
            ($FVF.perm_f (as pm@204@01  $FPM) (Seq_index xs@139@01 8))
            $Perm.Write)))
      (or (<= 6 k@202@01) (not (<= 6 k@202@01)))))
  :pattern ((Seq_index xs@139@01 k@202@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((k1@202@01 Int) (k2@202@01 Int)) (!
  (=>
    (and
      (and (<= 6 k1@202@01) (< k1@202@01 9))
      (and (<= 6 k2@202@01) (< k2@202@01 9))
      (= (Seq_index xs@139@01 k1@202@01) (Seq_index xs@139@01 k2@202@01)))
    (= k1@202@01 k2@202@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@202@01 Int)) (!
  (=>
    (and (<= 6 k@202@01) (< k@202@01 9))
    (and
      (= (inv@205@01 (Seq_index xs@139@01 k@202@01)) k@202@01)
      (img@206@01 (Seq_index xs@139@01 k@202@01))))
  :pattern ((Seq_index xs@139@01 k@202@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@206@01 r) (and (<= 6 (inv@205@01 r)) (< (inv@205@01 r) 9)))
    (= (Seq_index xs@139@01 (inv@205@01 r)) r))
  :pattern ((inv@205@01 r))
  :qid |f-fctOfInv|)))
(push) ; 5
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 6 (inv@205@01 r)) (< (inv@205@01 r) 9))
      (img@206@01 r)
      (= r (Seq_index xs@139@01 (inv@205@01 r))))
    (>
      (+
        (+
          (ite
            (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
            (- $Perm.Write (pTaken@170@01 r))
            $Perm.No)
          (ite
            (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
            (- $Perm.Write (pTaken@169@01 r))
            $Perm.No))
        (ite (= r (Seq_index xs@139@01 8)) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-12491|))))
(check-sat)
; unsat
(pop) ; 5
; 0.01s
; (get-info :all-statistics)
(declare-const sm@207@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@207@01  $FVF<f>)))
      (and (and (<= 6 (inv@205@01 r)) (< (inv@205@01 r) 9)) (img@206@01 r)))
    (=>
      (and (and (<= 6 (inv@205@01 r)) (< (inv@205@01 r) 9)) (img@206@01 r))
      (Set_in r ($FVF.domain_f (as sm@207@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@207@01  $FVF<f>))))
  :qid |qp.fvfDomDef84|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@205@01 r)) (< (inv@205@01 r) 9)) (img@206@01 r))
      (= r (Seq_index xs@139@01 8)))
    (=
      ($FVF.lookup_f (as sm@207@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@171@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@207@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@171@01  $FVF<f>) r))
  :qid |qp.fvfValDef81|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@205@01 r)) (< (inv@205@01 r) 9)) (img@206@01 r))
      (ite
        (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
        (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
        false))
    (= ($FVF.lookup_f (as sm@207@01  $FVF<f>) r) ($FVF.lookup_f $t@152@01 r)))
  :pattern (($FVF.lookup_f (as sm@207@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@152@01 r))
  :qid |qp.fvfValDef82|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@205@01 r)) (< (inv@205@01 r) 9)) (img@206@01 r))
      (ite
        (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
        (< $Perm.No (- $Perm.Write (pTaken@169@01 r)))
        false))
    (= ($FVF.lookup_f (as sm@207@01  $FVF<f>) r) ($FVF.lookup_f $t@145@01 r)))
  :pattern (($FVF.lookup_f (as sm@207@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@145@01 r))
  :qid |qp.fvfValDef83|)))
(assert (fun04%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@207@01  $FVF<f>)))) xs@139@01 false))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
      (< $Perm.No (- $Perm.Write (pTaken@169@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@198@01  $FVF<f>) r) ($FVF.lookup_f $t@145@01 r)))
  :pattern (($FVF.lookup_f (as sm@198@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@145@01 r))
  :qid |qp.fvfValDef71|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@198@01  $FVF<f>) r) ($FVF.lookup_f $t@152@01 r)))
  :pattern (($FVF.lookup_f (as sm@198@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@152@01 r))
  :qid |qp.fvfValDef72|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@139@01 8))
    (=
      ($FVF.lookup_f (as sm@198@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@171@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@198@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@171@01  $FVF<f>) r))
  :qid |qp.fvfValDef73|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@199@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
          (- $Perm.Write (pTaken@169@01 r))
          $Perm.No)
        (ite
          (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
          (- $Perm.Write (pTaken@170@01 r))
          $Perm.No))
      (ite (= r (Seq_index xs@139@01 8)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@199@01  $FPM) r))
  :qid |qp.resPrmSumDef74|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
      (< $Perm.No (- $Perm.Write (pTaken@169@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@200@01  $FVF<f>) r) ($FVF.lookup_f $t@145@01 r)))
  :pattern (($FVF.lookup_f (as sm@200@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@145@01 r))
  :qid |qp.fvfValDef75|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@200@01  $FVF<f>) r) ($FVF.lookup_f $t@152@01 r)))
  :pattern (($FVF.lookup_f (as sm@200@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@152@01 r))
  :qid |qp.fvfValDef76|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@139@01 8))
    (=
      ($FVF.lookup_f (as sm@200@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@171@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@200@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@171@01  $FVF<f>) r))
  :qid |qp.fvfValDef77|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@201@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
          (- $Perm.Write (pTaken@169@01 r))
          $Perm.No)
        (ite
          (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
          (- $Perm.Write (pTaken@170@01 r))
          $Perm.No))
      (ite (= r (Seq_index xs@139@01 8)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@201@01  $FPM) r))
  :qid |qp.resPrmSumDef78|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@203@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
          (- $Perm.Write (pTaken@169@01 r))
          $Perm.No)
        (ite
          (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
          (- $Perm.Write (pTaken@170@01 r))
          $Perm.No))
      (ite (= r (Seq_index xs@139@01 8)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@203@01  $FPM) r))
  :qid |qp.resPrmSumDef79|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@204@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
          (- $Perm.Write (pTaken@169@01 r))
          $Perm.No)
        (ite
          (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
          (- $Perm.Write (pTaken@170@01 r))
          $Perm.No))
      (ite (= r (Seq_index xs@139@01 8)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@204@01  $FPM) r))
  :qid |qp.resPrmSumDef80|)))
(assert (forall ((k@202@01 Int)) (!
  (=>
    (and (<= 6 k@202@01) (< k@202@01 9))
    (and
      (= (inv@205@01 (Seq_index xs@139@01 k@202@01)) k@202@01)
      (img@206@01 (Seq_index xs@139@01 k@202@01))))
  :pattern ((Seq_index xs@139@01 k@202@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@206@01 r) (and (<= 6 (inv@205@01 r)) (< (inv@205@01 r) 9)))
    (= (Seq_index xs@139@01 (inv@205@01 r)) r))
  :pattern ((inv@205@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@207@01  $FVF<f>)))
      (and (and (<= 6 (inv@205@01 r)) (< (inv@205@01 r) 9)) (img@206@01 r)))
    (=>
      (and (and (<= 6 (inv@205@01 r)) (< (inv@205@01 r) 9)) (img@206@01 r))
      (Set_in r ($FVF.domain_f (as sm@207@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@207@01  $FVF<f>))))
  :qid |qp.fvfDomDef84|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@205@01 r)) (< (inv@205@01 r) 9)) (img@206@01 r))
      (= r (Seq_index xs@139@01 8)))
    (=
      ($FVF.lookup_f (as sm@207@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@171@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@207@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@171@01  $FVF<f>) r))
  :qid |qp.fvfValDef81|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@205@01 r)) (< (inv@205@01 r) 9)) (img@206@01 r))
      (ite
        (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
        (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
        false))
    (= ($FVF.lookup_f (as sm@207@01  $FVF<f>) r) ($FVF.lookup_f $t@152@01 r)))
  :pattern (($FVF.lookup_f (as sm@207@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@152@01 r))
  :qid |qp.fvfValDef82|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@205@01 r)) (< (inv@205@01 r) 9)) (img@206@01 r))
      (ite
        (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
        (< $Perm.No (- $Perm.Write (pTaken@169@01 r)))
        false))
    (= ($FVF.lookup_f (as sm@207@01  $FVF<f>) r) ($FVF.lookup_f $t@145@01 r)))
  :pattern (($FVF.lookup_f (as sm@207@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@145@01 r))
  :qid |qp.fvfValDef83|)))
(assert (forall ((i1@196@01 Int) (i2@197@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 6 9) i1@196@01)
      (and
        (Seq_contains (Seq_range 6 9) i2@197@01)
        (not (= i1@196@01 i2@197@01))))
    (not (= (Seq_index xs@139@01 i1@196@01) (Seq_index xs@139@01 i2@197@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@87@17@87@105|)))
(assert (and
  (forall ((k@202@01 Int)) (!
    (=>
      (and (<= 6 k@202@01) (< k@202@01 9))
      (and
        (=>
          (not (<= 6 k@202@01))
          (and
            (not (<= 6 k@202@01))
            (forall ((r $Ref)) (!
              (<= ($FVF.perm_f (as pm@203@01  $FPM) r) $Perm.Write)
              :pattern ((inv@146@01 r))
              :qid |qp-fld-prm-bnd|))
            (forall ((r $Ref)) (!
              (<= ($FVF.perm_f (as pm@203@01  $FPM) r) $Perm.Write)
              :pattern ((inv@153@01 r))
              :qid |qp-fld-prm-bnd|))
            (<=
              ($FVF.perm_f (as pm@203@01  $FPM) (Seq_index xs@139@01 8))
              $Perm.Write)))
        (=>
          (<= 6 k@202@01)
          (and
            (<= 6 k@202@01)
            (forall ((r $Ref)) (!
              (<= ($FVF.perm_f (as pm@204@01  $FPM) r) $Perm.Write)
              :pattern ((inv@146@01 r))
              :qid |qp-fld-prm-bnd|))
            (forall ((r $Ref)) (!
              (<= ($FVF.perm_f (as pm@204@01  $FPM) r) $Perm.Write)
              :pattern ((inv@153@01 r))
              :qid |qp-fld-prm-bnd|))
            (<=
              ($FVF.perm_f (as pm@204@01  $FPM) (Seq_index xs@139@01 8))
              $Perm.Write)))
        (or (<= 6 k@202@01) (not (<= 6 k@202@01)))))
    :pattern ((Seq_index xs@139@01 k@202@01))
    :qid |f-aux|))
  (fun04%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (as sm@207@01  $FVF<f>)))) xs@139@01 false)))
(push) ; 3
(assert (not (=
  20
  (fun04 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (as sm@207@01  $FVF<f>)))) xs@139@01 false))))
(check-sat)
; unknown
(pop) ; 3
; 0.02s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@139@01 k@151@01) (Seq_index xs@139@01 k@144@01))
    (=
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))))
  
  :qid |quant-u-12492|))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
; [eval] 20 == fun04(xs, false)
; [eval] fun04(xs, false)
(set-option :timeout 0)
(push) ; 3
; [eval] |xs| > 10
; [eval] |xs|
; [eval] (b ? (forall i1: Int, i2: Int ::(i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]) : (forall i1: Int, i2: Int ::(i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2]))
(push) ; 4
; [then-branch: 116 | False | dead]
; [else-branch: 116 | True | live]
(push) ; 5
; [else-branch: 116 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@139@01 k@144@01) (Seq_index xs@139@01 k@151@01))
    (=
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))))
  
  :qid |quant-u-12493|))))
(check-sat)
; unknown
(pop) ; 6
; 0.01s
; (get-info :all-statistics)
(declare-const sm@208@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
      (< $Perm.No (- $Perm.Write (pTaken@169@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@208@01  $FVF<f>) r) ($FVF.lookup_f $t@145@01 r)))
  :pattern (($FVF.lookup_f (as sm@208@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@145@01 r))
  :qid |qp.fvfValDef85|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@208@01  $FVF<f>) r) ($FVF.lookup_f $t@152@01 r)))
  :pattern (($FVF.lookup_f (as sm@208@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@152@01 r))
  :qid |qp.fvfValDef86|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@139@01 8))
    (=
      ($FVF.lookup_f (as sm@208@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@171@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@208@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@171@01  $FVF<f>) r))
  :qid |qp.fvfValDef87|)))
(declare-const pm@209@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@209@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
          (- $Perm.Write (pTaken@169@01 r))
          $Perm.No)
        (ite
          (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
          (- $Perm.Write (pTaken@170@01 r))
          $Perm.No))
      (ite (= r (Seq_index xs@139@01 8)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@209@01  $FPM) r))
  :qid |qp.resPrmSumDef88|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@209@01  $FPM) r) $Perm.Write)
  :pattern ((inv@146@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@209@01  $FPM) r) $Perm.Write)
  :pattern ((inv@153@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@209@01  $FPM) (Seq_index xs@139@01 8)) $Perm.Write))
; [eval] (forall i1: Int, i2: Int ::(i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@210@01 Int)
(declare-const i2@211@01 Int)
(set-option :timeout 0)
(push) ; 6
; [eval] (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [6..9)) && ((i2 in [6..9)) && i1 != i2)
; [eval] (i1 in [6..9))
; [eval] [6..9)
(push) ; 7
; [then-branch: 117 | !(i1@210@01 in [6..9]) | live]
; [else-branch: 117 | i1@210@01 in [6..9] | live]
(push) ; 8
; [then-branch: 117 | !(i1@210@01 in [6..9])]
(assert (not (Seq_contains (Seq_range 6 9) i1@210@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@139@01 k@151@01) (Seq_index xs@139@01 k@144@01))
    (=
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))))
  
  :qid |quant-u-12494|))))
(check-sat)
; unknown
(pop) ; 9
; 0.01s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
(pop) ; 8
(set-option :timeout 0)
(push) ; 8
; [else-branch: 117 | i1@210@01 in [6..9]]
(assert (Seq_contains (Seq_range 6 9) i1@210@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@139@01 k@151@01) (Seq_index xs@139@01 k@144@01))
    (=
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))))
  
  :qid |quant-u-12495|))))
(check-sat)
; unknown
(pop) ; 9
; 0.01s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
; [eval] (i2 in [6..9))
; [eval] [6..9)
(set-option :timeout 0)
(push) ; 9
; [then-branch: 118 | !(i2@211@01 in [6..9]) | live]
; [else-branch: 118 | i2@211@01 in [6..9] | live]
(push) ; 10
; [then-branch: 118 | !(i2@211@01 in [6..9])]
(assert (not (Seq_contains (Seq_range 6 9) i2@211@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@139@01 k@144@01) (Seq_index xs@139@01 k@151@01))
    (=
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))))
  
  :qid |quant-u-12496|))))
(check-sat)
; unknown
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
(pop) ; 10
(set-option :timeout 0)
(push) ; 10
; [else-branch: 118 | i2@211@01 in [6..9]]
(assert (Seq_contains (Seq_range 6 9) i2@211@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@139@01 k@144@01) (Seq_index xs@139@01 k@151@01))
    (=
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))))
  
  :qid |quant-u-12497|))))
(check-sat)
; unknown
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
; [eval] i1 != i2
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 6 9) i2@211@01)
  (not (Seq_contains (Seq_range 6 9) i2@211@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 6 9) i1@210@01)
  (and
    (Seq_contains (Seq_range 6 9) i1@210@01)
    (or
      (Seq_contains (Seq_range 6 9) i2@211@01)
      (not (Seq_contains (Seq_range 6 9) i2@211@01))))))
(assert (or
  (Seq_contains (Seq_range 6 9) i1@210@01)
  (not (Seq_contains (Seq_range 6 9) i1@210@01))))
(set-option :timeout 0)
(push) ; 7
; [then-branch: 119 | i1@210@01 in [6..9] && i2@211@01 in [6..9] && i1@210@01 != i2@211@01 | live]
; [else-branch: 119 | !(i1@210@01 in [6..9] && i2@211@01 in [6..9] && i1@210@01 != i2@211@01) | live]
(push) ; 8
; [then-branch: 119 | i1@210@01 in [6..9] && i2@211@01 in [6..9] && i1@210@01 != i2@211@01]
(assert (and
  (Seq_contains (Seq_range 6 9) i1@210@01)
  (and (Seq_contains (Seq_range 6 9) i2@211@01) (not (= i1@210@01 i2@211@01)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@139@01 k@151@01) (Seq_index xs@139@01 k@144@01))
    (=
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))))
  
  :qid |quant-u-12498|))))
(check-sat)
; unknown
(pop) ; 9
; 0.01s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(set-option :timeout 0)
(push) ; 9
(assert (not (>= i1@210@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (< i1@210@01 (Seq_length xs@139@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 9
(assert (not (>= i2@211@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (< i2@211@01 (Seq_length xs@139@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 119 | !(i1@210@01 in [6..9] && i2@211@01 in [6..9] && i1@210@01 != i2@211@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 6 9) i1@210@01)
    (and (Seq_contains (Seq_range 6 9) i2@211@01) (not (= i1@210@01 i2@211@01))))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@139@01 k@151@01) (Seq_index xs@139@01 k@144@01))
    (=
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))))
  
  :qid |quant-u-12499|))))
(check-sat)
; unknown
(pop) ; 9
; 0.01s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 6 9) i1@210@01)
    (and (Seq_contains (Seq_range 6 9) i2@211@01) (not (= i1@210@01 i2@211@01))))
  (and
    (Seq_contains (Seq_range 6 9) i1@210@01)
    (Seq_contains (Seq_range 6 9) i2@211@01)
    (not (= i1@210@01 i2@211@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 6 9) i1@210@01)
      (and
        (Seq_contains (Seq_range 6 9) i2@211@01)
        (not (= i1@210@01 i2@211@01)))))
  (and
    (Seq_contains (Seq_range 6 9) i1@210@01)
    (and (Seq_contains (Seq_range 6 9) i2@211@01) (not (= i1@210@01 i2@211@01))))))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
      (< $Perm.No (- $Perm.Write (pTaken@169@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@208@01  $FVF<f>) r) ($FVF.lookup_f $t@145@01 r)))
  :pattern (($FVF.lookup_f (as sm@208@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@145@01 r))
  :qid |qp.fvfValDef85|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@208@01  $FVF<f>) r) ($FVF.lookup_f $t@152@01 r)))
  :pattern (($FVF.lookup_f (as sm@208@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@152@01 r))
  :qid |qp.fvfValDef86|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@139@01 8))
    (=
      ($FVF.lookup_f (as sm@208@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@171@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@208@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@171@01  $FVF<f>) r))
  :qid |qp.fvfValDef87|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@209@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
          (- $Perm.Write (pTaken@169@01 r))
          $Perm.No)
        (ite
          (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
          (- $Perm.Write (pTaken@170@01 r))
          $Perm.No))
      (ite (= r (Seq_index xs@139@01 8)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@209@01  $FPM) r))
  :qid |qp.resPrmSumDef88|)))
(assert (and
  (forall ((r $Ref)) (!
    (<= ($FVF.perm_f (as pm@209@01  $FPM) r) $Perm.Write)
    :pattern ((inv@146@01 r))
    :qid |qp-fld-prm-bnd|))
  (forall ((r $Ref)) (!
    (<= ($FVF.perm_f (as pm@209@01  $FPM) r) $Perm.Write)
    :pattern ((inv@153@01 r))
    :qid |qp-fld-prm-bnd|))
  (<= ($FVF.perm_f (as pm@209@01  $FPM) (Seq_index xs@139@01 8)) $Perm.Write)))
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((i1@210@01 Int) (i2@211@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 6 9) i1@210@01)
      (and
        (Seq_contains (Seq_range 6 9) i2@211@01)
        (not (= i1@210@01 i2@211@01))))
    (not (= (Seq_index xs@139@01 i1@210@01) (Seq_index xs@139@01 i2@211@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@87@17@87@105|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@210@01 Int) (i2@211@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 6 9) i1@210@01)
      (and
        (Seq_contains (Seq_range 6 9) i2@211@01)
        (not (= i1@210@01 i2@211@01))))
    (not (= (Seq_index xs@139@01 i1@210@01) (Seq_index xs@139@01 i2@211@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@87@17@87@105|)))
; [then-branch: 120 | False | dead]
; [else-branch: 120 | True | live]
(push) ; 4
; [else-branch: 120 | True]
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@139@01 k@144@01) (Seq_index xs@139@01 k@151@01))
    (=
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))))
  
  :qid |quant-u-12500|))))
(check-sat)
; unknown
(pop) ; 5
; 0.01s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
(declare-const k@212@01 Int)
(set-option :timeout 0)
(push) ; 5
; [eval] 6 <= k && k < 9
; [eval] 6 <= k
(push) ; 6
; [then-branch: 121 | !(6 <= k@212@01) | live]
; [else-branch: 121 | 6 <= k@212@01 | live]
(push) ; 7
; [then-branch: 121 | !(6 <= k@212@01)]
(assert (not (<= 6 k@212@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@139@01 k@151@01) (Seq_index xs@139@01 k@144@01))
    (=
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))))
  
  :qid |quant-u-12501|))))
(check-sat)
; unknown
(pop) ; 8
; 0.01s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
(pop) ; 7
(set-option :timeout 0)
(push) ; 7
; [else-branch: 121 | 6 <= k@212@01]
(assert (<= 6 k@212@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@139@01 k@151@01) (Seq_index xs@139@01 k@144@01))
    (=
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))))
  
  :qid |quant-u-12502|))))
(check-sat)
; unknown
(pop) ; 8
; 0.01s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
; [eval] k < 9
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (<= 6 k@212@01) (not (<= 6 k@212@01))))
(assert (and (<= 6 k@212@01) (< k@212@01 9)))
; [eval] xs[k]
(set-option :timeout 0)
(push) ; 6
(assert (not (>= k@212@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k@212@01 (Seq_length xs@139@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(declare-fun inv@213@01 ($Ref) Int)
(declare-fun img@214@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@212@01 Int)) (!
  (=>
    (and (<= 6 k@212@01) (< k@212@01 9))
    (or (<= 6 k@212@01) (not (<= 6 k@212@01))))
  :pattern ((Seq_index xs@139@01 k@212@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((k1@212@01 Int) (k2@212@01 Int)) (!
  (=>
    (and
      (and (<= 6 k1@212@01) (< k1@212@01 9))
      (and (<= 6 k2@212@01) (< k2@212@01 9))
      (= (Seq_index xs@139@01 k1@212@01) (Seq_index xs@139@01 k2@212@01)))
    (= k1@212@01 k2@212@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@212@01 Int)) (!
  (=>
    (and (<= 6 k@212@01) (< k@212@01 9))
    (and
      (= (inv@213@01 (Seq_index xs@139@01 k@212@01)) k@212@01)
      (img@214@01 (Seq_index xs@139@01 k@212@01))))
  :pattern ((Seq_index xs@139@01 k@212@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@214@01 r) (and (<= 6 (inv@213@01 r)) (< (inv@213@01 r) 9)))
    (= (Seq_index xs@139@01 (inv@213@01 r)) r))
  :pattern ((inv@213@01 r))
  :qid |f-fctOfInv|)))
(push) ; 5
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 6 (inv@213@01 r)) (< (inv@213@01 r) 9))
      (img@214@01 r)
      (= r (Seq_index xs@139@01 (inv@213@01 r))))
    (>
      (+
        (+
          (ite
            (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
            (- $Perm.Write (pTaken@169@01 r))
            $Perm.No)
          (ite
            (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
            (- $Perm.Write (pTaken@170@01 r))
            $Perm.No))
        (ite (= r (Seq_index xs@139@01 8)) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-12504|))))
(check-sat)
; unsat
(pop) ; 5
; 0.01s
; (get-info :all-statistics)
(declare-const sm@215@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@215@01  $FVF<f>)))
      (and (and (<= 6 (inv@213@01 r)) (< (inv@213@01 r) 9)) (img@214@01 r)))
    (=>
      (and (and (<= 6 (inv@213@01 r)) (< (inv@213@01 r) 9)) (img@214@01 r))
      (Set_in r ($FVF.domain_f (as sm@215@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@215@01  $FVF<f>))))
  :qid |qp.fvfDomDef92|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@213@01 r)) (< (inv@213@01 r) 9)) (img@214@01 r))
      (ite
        (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
        (< $Perm.No (- $Perm.Write (pTaken@169@01 r)))
        false))
    (= ($FVF.lookup_f (as sm@215@01  $FVF<f>) r) ($FVF.lookup_f $t@145@01 r)))
  :pattern (($FVF.lookup_f (as sm@215@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@145@01 r))
  :qid |qp.fvfValDef89|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@213@01 r)) (< (inv@213@01 r) 9)) (img@214@01 r))
      (ite
        (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
        (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
        false))
    (= ($FVF.lookup_f (as sm@215@01  $FVF<f>) r) ($FVF.lookup_f $t@152@01 r)))
  :pattern (($FVF.lookup_f (as sm@215@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@152@01 r))
  :qid |qp.fvfValDef90|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@213@01 r)) (< (inv@213@01 r) 9)) (img@214@01 r))
      (= r (Seq_index xs@139@01 8)))
    (=
      ($FVF.lookup_f (as sm@215@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@171@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@215@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@171@01  $FVF<f>) r))
  :qid |qp.fvfValDef91|)))
(assert (fun04%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@215@01  $FVF<f>)))) xs@139@01 false))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
      (< $Perm.No (- $Perm.Write (pTaken@169@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@208@01  $FVF<f>) r) ($FVF.lookup_f $t@145@01 r)))
  :pattern (($FVF.lookup_f (as sm@208@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@145@01 r))
  :qid |qp.fvfValDef85|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
      (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@208@01  $FVF<f>) r) ($FVF.lookup_f $t@152@01 r)))
  :pattern (($FVF.lookup_f (as sm@208@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@152@01 r))
  :qid |qp.fvfValDef86|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@139@01 8))
    (=
      ($FVF.lookup_f (as sm@208@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@171@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@208@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@171@01  $FVF<f>) r))
  :qid |qp.fvfValDef87|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@209@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
          (- $Perm.Write (pTaken@169@01 r))
          $Perm.No)
        (ite
          (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
          (- $Perm.Write (pTaken@170@01 r))
          $Perm.No))
      (ite (= r (Seq_index xs@139@01 8)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@209@01  $FPM) r))
  :qid |qp.resPrmSumDef88|)))
(assert (forall ((k@212@01 Int)) (!
  (=>
    (and (<= 6 k@212@01) (< k@212@01 9))
    (and
      (= (inv@213@01 (Seq_index xs@139@01 k@212@01)) k@212@01)
      (img@214@01 (Seq_index xs@139@01 k@212@01))))
  :pattern ((Seq_index xs@139@01 k@212@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@214@01 r) (and (<= 6 (inv@213@01 r)) (< (inv@213@01 r) 9)))
    (= (Seq_index xs@139@01 (inv@213@01 r)) r))
  :pattern ((inv@213@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@215@01  $FVF<f>)))
      (and (and (<= 6 (inv@213@01 r)) (< (inv@213@01 r) 9)) (img@214@01 r)))
    (=>
      (and (and (<= 6 (inv@213@01 r)) (< (inv@213@01 r) 9)) (img@214@01 r))
      (Set_in r ($FVF.domain_f (as sm@215@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@215@01  $FVF<f>))))
  :qid |qp.fvfDomDef92|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@213@01 r)) (< (inv@213@01 r) 9)) (img@214@01 r))
      (ite
        (and (img@147@01 r) (and (<= 0 (inv@146@01 r)) (< (inv@146@01 r) 3)))
        (< $Perm.No (- $Perm.Write (pTaken@169@01 r)))
        false))
    (= ($FVF.lookup_f (as sm@215@01  $FVF<f>) r) ($FVF.lookup_f $t@145@01 r)))
  :pattern (($FVF.lookup_f (as sm@215@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@145@01 r))
  :qid |qp.fvfValDef89|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@213@01 r)) (< (inv@213@01 r) 9)) (img@214@01 r))
      (ite
        (and (img@154@01 r) (and (<= 6 (inv@153@01 r)) (< (inv@153@01 r) 9)))
        (< $Perm.No (- $Perm.Write (pTaken@170@01 r)))
        false))
    (= ($FVF.lookup_f (as sm@215@01  $FVF<f>) r) ($FVF.lookup_f $t@152@01 r)))
  :pattern (($FVF.lookup_f (as sm@215@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@152@01 r))
  :qid |qp.fvfValDef90|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 6 (inv@213@01 r)) (< (inv@213@01 r) 9)) (img@214@01 r))
      (= r (Seq_index xs@139@01 8)))
    (=
      ($FVF.lookup_f (as sm@215@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@171@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@215@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@171@01  $FVF<f>) r))
  :qid |qp.fvfValDef91|)))
(assert (and
  (forall ((r $Ref)) (!
    (<= ($FVF.perm_f (as pm@209@01  $FPM) r) $Perm.Write)
    :pattern ((inv@146@01 r))
    :qid |qp-fld-prm-bnd|))
  (forall ((r $Ref)) (!
    (<= ($FVF.perm_f (as pm@209@01  $FPM) r) $Perm.Write)
    :pattern ((inv@153@01 r))
    :qid |qp-fld-prm-bnd|))
  (<= ($FVF.perm_f (as pm@209@01  $FPM) (Seq_index xs@139@01 8)) $Perm.Write)
  (forall ((i1@210@01 Int) (i2@211@01 Int)) (!
    (=>
      (and
        (Seq_contains (Seq_range 6 9) i1@210@01)
        (and
          (Seq_contains (Seq_range 6 9) i2@211@01)
          (not (= i1@210@01 i2@211@01))))
      (not (= (Seq_index xs@139@01 i1@210@01) (Seq_index xs@139@01 i2@211@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@87@17@87@105|))))
(assert (and
  (forall ((k@212@01 Int)) (!
    (=>
      (and (<= 6 k@212@01) (< k@212@01 9))
      (or (<= 6 k@212@01) (not (<= 6 k@212@01))))
    :pattern ((Seq_index xs@139@01 k@212@01))
    :qid |f-aux|))
  (fun04%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (as sm@215@01  $FVF<f>)))) xs@139@01 false)))
(push) ; 3
(assert (not (=
  20
  (fun04 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (as sm@215@01  $FVF<f>)))) xs@139@01 false))))
(check-sat)
; unknown
(pop) ; 3
; 0.03s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- test05 ----------
(declare-const x@216@01 $Ref)
(declare-const xs@217@01 Seq<$Ref>)
(declare-const x@218@01 $Ref)
(declare-const xs@219@01 Seq<$Ref>)
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
; inhale acc(x.g, write)
(declare-const $t@220@01 Int)
(assert (not (= x@218@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 3 <= |xs|
(declare-const $t@221@01 $Snap)
(assert (= $t@221@01 $Snap.unit))
; [eval] 3 <= |xs|
; [eval] |xs|
(assert (<= 3 (Seq_length xs@219@01)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall i1: Int, i2: Int ::
;     { (i1 in [0..3)), (i2 in [0..3)) }
;     { (i1 in [0..3)), xs[i2] }
;     { (i2 in [0..3)), xs[i1] }
;     { xs[i1], xs[i2] }
;     (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const $t@222@01 $Snap)
(assert (= $t@222@01 $Snap.unit))
; [eval] (forall i1: Int, i2: Int :: { (i1 in [0..3)), (i2 in [0..3)) } { (i1 in [0..3)), xs[i2] } { (i2 in [0..3)), xs[i1] } { xs[i1], xs[i2] } (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@223@01 Int)
(declare-const i2@224@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2)
; [eval] (i1 in [0..3))
; [eval] [0..3)
(push) ; 4
; [then-branch: 122 | !(i1@223@01 in [0..3]) | live]
; [else-branch: 122 | i1@223@01 in [0..3] | live]
(push) ; 5
; [then-branch: 122 | !(i1@223@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i1@223@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 122 | i1@223@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i1@223@01))
; [eval] (i2 in [0..3))
; [eval] [0..3)
(push) ; 6
; [then-branch: 123 | !(i2@224@01 in [0..3]) | live]
; [else-branch: 123 | i2@224@01 in [0..3] | live]
(push) ; 7
; [then-branch: 123 | !(i2@224@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i2@224@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 123 | i2@224@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i2@224@01))
; [eval] i1 != i2
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 3) i2@224@01)
  (not (Seq_contains (Seq_range 0 3) i2@224@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 3) i1@223@01)
  (and
    (Seq_contains (Seq_range 0 3) i1@223@01)
    (or
      (Seq_contains (Seq_range 0 3) i2@224@01)
      (not (Seq_contains (Seq_range 0 3) i2@224@01))))))
(assert (or
  (Seq_contains (Seq_range 0 3) i1@223@01)
  (not (Seq_contains (Seq_range 0 3) i1@223@01))))
(push) ; 4
; [then-branch: 124 | i1@223@01 in [0..3] && i2@224@01 in [0..3] && i1@223@01 != i2@224@01 | live]
; [else-branch: 124 | !(i1@223@01 in [0..3] && i2@224@01 in [0..3] && i1@223@01 != i2@224@01) | live]
(push) ; 5
; [then-branch: 124 | i1@223@01 in [0..3] && i2@224@01 in [0..3] && i1@223@01 != i2@224@01]
(assert (and
  (Seq_contains (Seq_range 0 3) i1@223@01)
  (and (Seq_contains (Seq_range 0 3) i2@224@01) (not (= i1@223@01 i2@224@01)))))
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(push) ; 6
(assert (not (>= i1@223@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i1@223@01 (Seq_length xs@219@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 6
(assert (not (>= i2@224@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i2@224@01 (Seq_length xs@219@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 124 | !(i1@223@01 in [0..3] && i2@224@01 in [0..3] && i1@223@01 != i2@224@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 3) i1@223@01)
    (and (Seq_contains (Seq_range 0 3) i2@224@01) (not (= i1@223@01 i2@224@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 3) i1@223@01)
    (and (Seq_contains (Seq_range 0 3) i2@224@01) (not (= i1@223@01 i2@224@01))))
  (and
    (Seq_contains (Seq_range 0 3) i1@223@01)
    (Seq_contains (Seq_range 0 3) i2@224@01)
    (not (= i1@223@01 i2@224@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 3) i1@223@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@224@01)
        (not (= i1@223@01 i2@224@01)))))
  (and
    (Seq_contains (Seq_range 0 3) i1@223@01)
    (and (Seq_contains (Seq_range 0 3) i2@224@01) (not (= i1@223@01 i2@224@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i1@223@01 Int) (i2@224@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@223@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@223@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@224@01)
          (not (Seq_contains (Seq_range 0 3) i2@224@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@223@01)
      (not (Seq_contains (Seq_range 0 3) i1@223@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@223@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@224@01)
          (not (= i1@223@01 i2@224@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@223@01)
        (Seq_contains (Seq_range 0 3) i2@224@01)
        (not (= i1@223@01 i2@224@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@223@01)
          (and
            (Seq_contains (Seq_range 0 3) i2@224@01)
            (not (= i1@223@01 i2@224@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@223@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@224@01)
          (not (= i1@223@01 i2@224@01))))))
  :pattern ((Seq_contains (Seq_range 0 3) i1@223@01) (Seq_contains
    (Seq_range 0 3)
    i2@224@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i1@223@01) (Seq_contains_trigger
    (Seq_range 0 3)
    i2@224@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@118@10@118@98-aux|)))
(assert (forall ((i1@223@01 Int) (i2@224@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@223@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@223@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@224@01)
          (not (Seq_contains (Seq_range 0 3) i2@224@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@223@01)
      (not (Seq_contains (Seq_range 0 3) i1@223@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@223@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@224@01)
          (not (= i1@223@01 i2@224@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@223@01)
        (Seq_contains (Seq_range 0 3) i2@224@01)
        (not (= i1@223@01 i2@224@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@223@01)
          (and
            (Seq_contains (Seq_range 0 3) i2@224@01)
            (not (= i1@223@01 i2@224@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@223@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@224@01)
          (not (= i1@223@01 i2@224@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i1@223@01) (Seq_contains_trigger
    (Seq_range 0 3)
    i2@224@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@118@10@118@98-aux|)))
(assert (forall ((i1@223@01 Int) (i2@224@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@223@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@223@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@224@01)
          (not (Seq_contains (Seq_range 0 3) i2@224@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@223@01)
      (not (Seq_contains (Seq_range 0 3) i1@223@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@223@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@224@01)
          (not (= i1@223@01 i2@224@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@223@01)
        (Seq_contains (Seq_range 0 3) i2@224@01)
        (not (= i1@223@01 i2@224@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@223@01)
          (and
            (Seq_contains (Seq_range 0 3) i2@224@01)
            (not (= i1@223@01 i2@224@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@223@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@224@01)
          (not (= i1@223@01 i2@224@01))))))
  :pattern ((Seq_contains (Seq_range 0 3) i1@223@01) (Seq_index
    xs@219@01
    i2@224@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i1@223@01) (Seq_index
    xs@219@01
    i2@224@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@118@10@118@98-aux|)))
(assert (forall ((i1@223@01 Int) (i2@224@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@223@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@223@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@224@01)
          (not (Seq_contains (Seq_range 0 3) i2@224@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@223@01)
      (not (Seq_contains (Seq_range 0 3) i1@223@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@223@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@224@01)
          (not (= i1@223@01 i2@224@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@223@01)
        (Seq_contains (Seq_range 0 3) i2@224@01)
        (not (= i1@223@01 i2@224@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@223@01)
          (and
            (Seq_contains (Seq_range 0 3) i2@224@01)
            (not (= i1@223@01 i2@224@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@223@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@224@01)
          (not (= i1@223@01 i2@224@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i1@223@01) (Seq_index
    xs@219@01
    i2@224@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@118@10@118@98-aux|)))
(assert (forall ((i1@223@01 Int) (i2@224@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@223@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@223@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@224@01)
          (not (Seq_contains (Seq_range 0 3) i2@224@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@223@01)
      (not (Seq_contains (Seq_range 0 3) i1@223@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@223@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@224@01)
          (not (= i1@223@01 i2@224@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@223@01)
        (Seq_contains (Seq_range 0 3) i2@224@01)
        (not (= i1@223@01 i2@224@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@223@01)
          (and
            (Seq_contains (Seq_range 0 3) i2@224@01)
            (not (= i1@223@01 i2@224@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@223@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@224@01)
          (not (= i1@223@01 i2@224@01))))))
  :pattern ((Seq_contains (Seq_range 0 3) i2@224@01) (Seq_index
    xs@219@01
    i1@223@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i2@224@01) (Seq_index
    xs@219@01
    i1@223@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@118@10@118@98-aux|)))
(assert (forall ((i1@223@01 Int) (i2@224@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@223@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@223@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@224@01)
          (not (Seq_contains (Seq_range 0 3) i2@224@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@223@01)
      (not (Seq_contains (Seq_range 0 3) i1@223@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@223@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@224@01)
          (not (= i1@223@01 i2@224@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@223@01)
        (Seq_contains (Seq_range 0 3) i2@224@01)
        (not (= i1@223@01 i2@224@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@223@01)
          (and
            (Seq_contains (Seq_range 0 3) i2@224@01)
            (not (= i1@223@01 i2@224@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@223@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@224@01)
          (not (= i1@223@01 i2@224@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i2@224@01) (Seq_index
    xs@219@01
    i1@223@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@118@10@118@98-aux|)))
(assert (forall ((i1@223@01 Int) (i2@224@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@223@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@223@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@224@01)
          (not (Seq_contains (Seq_range 0 3) i2@224@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@223@01)
      (not (Seq_contains (Seq_range 0 3) i1@223@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@223@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@224@01)
          (not (= i1@223@01 i2@224@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@223@01)
        (Seq_contains (Seq_range 0 3) i2@224@01)
        (not (= i1@223@01 i2@224@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@223@01)
          (and
            (Seq_contains (Seq_range 0 3) i2@224@01)
            (not (= i1@223@01 i2@224@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@223@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@224@01)
          (not (= i1@223@01 i2@224@01))))))
  :pattern ((Seq_index xs@219@01 i1@223@01) (Seq_index xs@219@01 i2@224@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@118@10@118@98-aux|)))
(assert (forall ((i1@223@01 Int) (i2@224@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@223@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@224@01)
        (not (= i1@223@01 i2@224@01))))
    (not (= (Seq_index xs@219@01 i1@223@01) (Seq_index xs@219@01 i2@224@01))))
  :pattern ((Seq_contains (Seq_range 0 3) i1@223@01) (Seq_contains
    (Seq_range 0 3)
    i2@224@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i1@223@01) (Seq_contains_trigger
    (Seq_range 0 3)
    i2@224@01))
  :pattern ((Seq_contains (Seq_range 0 3) i1@223@01) (Seq_index
    xs@219@01
    i2@224@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i1@223@01) (Seq_index
    xs@219@01
    i2@224@01))
  :pattern ((Seq_contains (Seq_range 0 3) i2@224@01) (Seq_index
    xs@219@01
    i1@223@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i2@224@01) (Seq_index
    xs@219@01
    i1@223@01))
  :pattern ((Seq_index xs@219@01 i1@223@01) (Seq_index xs@219@01 i2@224@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@118@10@118@98|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall k: Int ::0 <= k && k < 3 ==> acc(xs[k].f, write))
(declare-const k@225@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= k && k < 3
; [eval] 0 <= k
(push) ; 4
; [then-branch: 125 | !(0 <= k@225@01) | live]
; [else-branch: 125 | 0 <= k@225@01 | live]
(push) ; 5
; [then-branch: 125 | !(0 <= k@225@01)]
(assert (not (<= 0 k@225@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 125 | 0 <= k@225@01]
(assert (<= 0 k@225@01))
; [eval] k < 3
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@225@01) (not (<= 0 k@225@01))))
(assert (and (<= 0 k@225@01) (< k@225@01 3)))
; [eval] xs[k]
(push) ; 4
(assert (not (>= k@225@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< k@225@01 (Seq_length xs@219@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-const $t@226@01 $FVF<f>)
(declare-fun inv@227@01 ($Ref) Int)
(declare-fun img@228@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@225@01 Int)) (!
  (=>
    (and (<= 0 k@225@01) (< k@225@01 3))
    (or (<= 0 k@225@01) (not (<= 0 k@225@01))))
  :pattern ((Seq_index xs@219@01 k@225@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((k1@225@01 Int) (k2@225@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@225@01) (< k1@225@01 3))
      (and (<= 0 k2@225@01) (< k2@225@01 3))
      (= (Seq_index xs@219@01 k1@225@01) (Seq_index xs@219@01 k2@225@01)))
    (= k1@225@01 k2@225@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@225@01 Int)) (!
  (=>
    (and (<= 0 k@225@01) (< k@225@01 3))
    (and
      (= (inv@227@01 (Seq_index xs@219@01 k@225@01)) k@225@01)
      (img@228@01 (Seq_index xs@219@01 k@225@01))))
  :pattern ((Seq_index xs@219@01 k@225@01))
  :qid |quant-u-12506|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@228@01 r) (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) 3)))
    (= (Seq_index xs@219@01 (inv@227@01 r)) r))
  :pattern ((inv@227@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((k@225@01 Int)) (!
  (=>
    (and (<= 0 k@225@01) (< k@225@01 3))
    (not (= (Seq_index xs@219@01 k@225@01) $Ref.null)))
  :pattern ((Seq_index xs@219@01 k@225@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 10 == fun05(x, xs)
(declare-const $t@229@01 $Snap)
(assert (= $t@229@01 $Snap.unit))
; [eval] 10 == fun05(x, xs)
; [eval] fun05(x, xs)
(set-option :timeout 0)
(push) ; 3
; [eval] 3 <= |xs|
; [eval] |xs|
; [eval] (forall i1: Int, i2: Int ::(i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@230@01 Int)
(declare-const i2@231@01 Int)
(push) ; 4
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2)
; [eval] (i1 in [0..3))
; [eval] [0..3)
(push) ; 5
; [then-branch: 126 | !(i1@230@01 in [0..3]) | live]
; [else-branch: 126 | i1@230@01 in [0..3] | live]
(push) ; 6
; [then-branch: 126 | !(i1@230@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i1@230@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 126 | i1@230@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i1@230@01))
; [eval] (i2 in [0..3))
; [eval] [0..3)
(push) ; 7
; [then-branch: 127 | !(i2@231@01 in [0..3]) | live]
; [else-branch: 127 | i2@231@01 in [0..3] | live]
(push) ; 8
; [then-branch: 127 | !(i2@231@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i2@231@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 127 | i2@231@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i2@231@01))
; [eval] i1 != i2
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 3) i2@231@01)
  (not (Seq_contains (Seq_range 0 3) i2@231@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 3) i1@230@01)
  (and
    (Seq_contains (Seq_range 0 3) i1@230@01)
    (or
      (Seq_contains (Seq_range 0 3) i2@231@01)
      (not (Seq_contains (Seq_range 0 3) i2@231@01))))))
(assert (or
  (Seq_contains (Seq_range 0 3) i1@230@01)
  (not (Seq_contains (Seq_range 0 3) i1@230@01))))
(push) ; 5
; [then-branch: 128 | i1@230@01 in [0..3] && i2@231@01 in [0..3] && i1@230@01 != i2@231@01 | live]
; [else-branch: 128 | !(i1@230@01 in [0..3] && i2@231@01 in [0..3] && i1@230@01 != i2@231@01) | live]
(push) ; 6
; [then-branch: 128 | i1@230@01 in [0..3] && i2@231@01 in [0..3] && i1@230@01 != i2@231@01]
(assert (and
  (Seq_contains (Seq_range 0 3) i1@230@01)
  (and (Seq_contains (Seq_range 0 3) i2@231@01) (not (= i1@230@01 i2@231@01)))))
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(push) ; 7
(assert (not (>= i1@230@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i1@230@01 (Seq_length xs@219@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 7
(assert (not (>= i2@231@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i2@231@01 (Seq_length xs@219@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 128 | !(i1@230@01 in [0..3] && i2@231@01 in [0..3] && i1@230@01 != i2@231@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 3) i1@230@01)
    (and (Seq_contains (Seq_range 0 3) i2@231@01) (not (= i1@230@01 i2@231@01))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 3) i1@230@01)
    (and (Seq_contains (Seq_range 0 3) i2@231@01) (not (= i1@230@01 i2@231@01))))
  (and
    (Seq_contains (Seq_range 0 3) i1@230@01)
    (Seq_contains (Seq_range 0 3) i2@231@01)
    (not (= i1@230@01 i2@231@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 3) i1@230@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@231@01)
        (not (= i1@230@01 i2@231@01)))))
  (and
    (Seq_contains (Seq_range 0 3) i1@230@01)
    (and (Seq_contains (Seq_range 0 3) i2@231@01) (not (= i1@230@01 i2@231@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((i1@230@01 Int) (i2@231@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@230@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@231@01)
        (not (= i1@230@01 i2@231@01))))
    (not (= (Seq_index xs@219@01 i1@230@01) (Seq_index xs@219@01 i2@231@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@112@12@112@100|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@230@01 Int) (i2@231@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@230@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@231@01)
        (not (= i1@230@01 i2@231@01))))
    (not (= (Seq_index xs@219@01 i1@230@01) (Seq_index xs@219@01 i2@231@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@112@12@112@100|)))
(declare-const k@232@01 Int)
(push) ; 4
; [eval] 0 <= k && k < 3
; [eval] 0 <= k
(push) ; 5
; [then-branch: 129 | !(0 <= k@232@01) | live]
; [else-branch: 129 | 0 <= k@232@01 | live]
(push) ; 6
; [then-branch: 129 | !(0 <= k@232@01)]
(assert (not (<= 0 k@232@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 129 | 0 <= k@232@01]
(assert (<= 0 k@232@01))
; [eval] k < 3
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@232@01) (not (<= 0 k@232@01))))
(assert (and (<= 0 k@232@01) (< k@232@01 3)))
; [eval] xs[k]
(push) ; 5
(assert (not (>= k@232@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@232@01 (Seq_length xs@219@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@233@01 ($Ref) Int)
(declare-fun img@234@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@232@01 Int)) (!
  (=>
    (and (<= 0 k@232@01) (< k@232@01 3))
    (or (<= 0 k@232@01) (not (<= 0 k@232@01))))
  :pattern ((Seq_index xs@219@01 k@232@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((k1@232@01 Int) (k2@232@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@232@01) (< k1@232@01 3))
      (and (<= 0 k2@232@01) (< k2@232@01 3))
      (= (Seq_index xs@219@01 k1@232@01) (Seq_index xs@219@01 k2@232@01)))
    (= k1@232@01 k2@232@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@232@01 Int)) (!
  (=>
    (and (<= 0 k@232@01) (< k@232@01 3))
    (and
      (= (inv@233@01 (Seq_index xs@219@01 k@232@01)) k@232@01)
      (img@234@01 (Seq_index xs@219@01 k@232@01))))
  :pattern ((Seq_index xs@219@01 k@232@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@234@01 r) (and (<= 0 (inv@233@01 r)) (< (inv@233@01 r) 3)))
    (= (Seq_index xs@219@01 (inv@233@01 r)) r))
  :pattern ((inv@233@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@233@01 r)) (< (inv@233@01 r) 3))
      (img@234@01 r)
      (= r (Seq_index xs@219@01 (inv@233@01 r))))
    (>
      (ite
        (and (img@228@01 r) (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) 3)))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-12508|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@235@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@235@01  $FVF<f>)))
      (and (and (<= 0 (inv@233@01 r)) (< (inv@233@01 r) 3)) (img@234@01 r)))
    (=>
      (and (and (<= 0 (inv@233@01 r)) (< (inv@233@01 r) 3)) (img@234@01 r))
      (Set_in r ($FVF.domain_f (as sm@235@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@235@01  $FVF<f>))))
  :qid |qp.fvfDomDef94|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@233@01 r)) (< (inv@233@01 r) 3)) (img@234@01 r))
      (and (img@228@01 r) (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) 3))))
    (= ($FVF.lookup_f (as sm@235@01  $FVF<f>) r) ($FVF.lookup_f $t@226@01 r)))
  :pattern (($FVF.lookup_f (as sm@235@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@226@01 r))
  :qid |qp.fvfValDef93|)))
(assert (fun05%precondition ($Snap.combine
  ($SortWrappers.IntTo$Snap $t@220@01)
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (as sm@235@01  $FVF<f>))))) x@218@01 xs@219@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((k@232@01 Int)) (!
  (=>
    (and (<= 0 k@232@01) (< k@232@01 3))
    (and
      (= (inv@233@01 (Seq_index xs@219@01 k@232@01)) k@232@01)
      (img@234@01 (Seq_index xs@219@01 k@232@01))))
  :pattern ((Seq_index xs@219@01 k@232@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@234@01 r) (and (<= 0 (inv@233@01 r)) (< (inv@233@01 r) 3)))
    (= (Seq_index xs@219@01 (inv@233@01 r)) r))
  :pattern ((inv@233@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@235@01  $FVF<f>)))
      (and (and (<= 0 (inv@233@01 r)) (< (inv@233@01 r) 3)) (img@234@01 r)))
    (=>
      (and (and (<= 0 (inv@233@01 r)) (< (inv@233@01 r) 3)) (img@234@01 r))
      (Set_in r ($FVF.domain_f (as sm@235@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@235@01  $FVF<f>))))
  :qid |qp.fvfDomDef94|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@233@01 r)) (< (inv@233@01 r) 3)) (img@234@01 r))
      (and (img@228@01 r) (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) 3))))
    (= ($FVF.lookup_f (as sm@235@01  $FVF<f>) r) ($FVF.lookup_f $t@226@01 r)))
  :pattern (($FVF.lookup_f (as sm@235@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@226@01 r))
  :qid |qp.fvfValDef93|)))
(assert (and
  (forall ((i1@230@01 Int) (i2@231@01 Int)) (!
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@230@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@231@01)
          (not (= i1@230@01 i2@231@01))))
      (not (= (Seq_index xs@219@01 i1@230@01) (Seq_index xs@219@01 i2@231@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@112@12@112@100|))
  (forall ((k@232@01 Int)) (!
    (=>
      (and (<= 0 k@232@01) (< k@232@01 3))
      (or (<= 0 k@232@01) (not (<= 0 k@232@01))))
    :pattern ((Seq_index xs@219@01 k@232@01))
    :qid |f-aux|))
  (fun05%precondition ($Snap.combine
    ($SortWrappers.IntTo$Snap $t@220@01)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<f>To$Snap (as sm@235@01  $FVF<f>))))) x@218@01 xs@219@01)))
(assert (=
  10
  (fun05 ($Snap.combine
    ($SortWrappers.IntTo$Snap $t@220@01)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<f>To$Snap (as sm@235@01  $FVF<f>))))) x@218@01 xs@219@01)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 10 == fun05(x, xs)
(declare-const $t@236@01 $Snap)
(assert (= $t@236@01 $Snap.unit))
; [eval] 10 == fun05(x, xs)
; [eval] fun05(x, xs)
(set-option :timeout 0)
(push) ; 3
; [eval] 3 <= |xs|
; [eval] |xs|
; [eval] (forall i1: Int, i2: Int ::(i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@237@01 Int)
(declare-const i2@238@01 Int)
(push) ; 4
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2)
; [eval] (i1 in [0..3))
; [eval] [0..3)
(push) ; 5
; [then-branch: 130 | !(i1@237@01 in [0..3]) | live]
; [else-branch: 130 | i1@237@01 in [0..3] | live]
(push) ; 6
; [then-branch: 130 | !(i1@237@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i1@237@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 130 | i1@237@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i1@237@01))
; [eval] (i2 in [0..3))
; [eval] [0..3)
(push) ; 7
; [then-branch: 131 | !(i2@238@01 in [0..3]) | live]
; [else-branch: 131 | i2@238@01 in [0..3] | live]
(push) ; 8
; [then-branch: 131 | !(i2@238@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i2@238@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 131 | i2@238@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i2@238@01))
; [eval] i1 != i2
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 3) i2@238@01)
  (not (Seq_contains (Seq_range 0 3) i2@238@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 3) i1@237@01)
  (and
    (Seq_contains (Seq_range 0 3) i1@237@01)
    (or
      (Seq_contains (Seq_range 0 3) i2@238@01)
      (not (Seq_contains (Seq_range 0 3) i2@238@01))))))
(assert (or
  (Seq_contains (Seq_range 0 3) i1@237@01)
  (not (Seq_contains (Seq_range 0 3) i1@237@01))))
(push) ; 5
; [then-branch: 132 | i1@237@01 in [0..3] && i2@238@01 in [0..3] && i1@237@01 != i2@238@01 | live]
; [else-branch: 132 | !(i1@237@01 in [0..3] && i2@238@01 in [0..3] && i1@237@01 != i2@238@01) | live]
(push) ; 6
; [then-branch: 132 | i1@237@01 in [0..3] && i2@238@01 in [0..3] && i1@237@01 != i2@238@01]
(assert (and
  (Seq_contains (Seq_range 0 3) i1@237@01)
  (and (Seq_contains (Seq_range 0 3) i2@238@01) (not (= i1@237@01 i2@238@01)))))
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(push) ; 7
(assert (not (>= i1@237@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i1@237@01 (Seq_length xs@219@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 7
(assert (not (>= i2@238@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i2@238@01 (Seq_length xs@219@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 132 | !(i1@237@01 in [0..3] && i2@238@01 in [0..3] && i1@237@01 != i2@238@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 3) i1@237@01)
    (and (Seq_contains (Seq_range 0 3) i2@238@01) (not (= i1@237@01 i2@238@01))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 3) i1@237@01)
    (and (Seq_contains (Seq_range 0 3) i2@238@01) (not (= i1@237@01 i2@238@01))))
  (and
    (Seq_contains (Seq_range 0 3) i1@237@01)
    (Seq_contains (Seq_range 0 3) i2@238@01)
    (not (= i1@237@01 i2@238@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 3) i1@237@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@238@01)
        (not (= i1@237@01 i2@238@01)))))
  (and
    (Seq_contains (Seq_range 0 3) i1@237@01)
    (and (Seq_contains (Seq_range 0 3) i2@238@01) (not (= i1@237@01 i2@238@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((i1@237@01 Int) (i2@238@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@237@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@238@01)
        (not (= i1@237@01 i2@238@01))))
    (not (= (Seq_index xs@219@01 i1@237@01) (Seq_index xs@219@01 i2@238@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@112@12@112@100|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@237@01 Int) (i2@238@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@237@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@238@01)
        (not (= i1@237@01 i2@238@01))))
    (not (= (Seq_index xs@219@01 i1@237@01) (Seq_index xs@219@01 i2@238@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@112@12@112@100|)))
(declare-const k@239@01 Int)
(push) ; 4
; [eval] 0 <= k && k < 3
; [eval] 0 <= k
(push) ; 5
; [then-branch: 133 | !(0 <= k@239@01) | live]
; [else-branch: 133 | 0 <= k@239@01 | live]
(push) ; 6
; [then-branch: 133 | !(0 <= k@239@01)]
(assert (not (<= 0 k@239@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 133 | 0 <= k@239@01]
(assert (<= 0 k@239@01))
; [eval] k < 3
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@239@01) (not (<= 0 k@239@01))))
(assert (and (<= 0 k@239@01) (< k@239@01 3)))
; [eval] xs[k]
(push) ; 5
(assert (not (>= k@239@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@239@01 (Seq_length xs@219@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@240@01 ($Ref) Int)
(declare-fun img@241@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@239@01 Int)) (!
  (=>
    (and (<= 0 k@239@01) (< k@239@01 3))
    (or (<= 0 k@239@01) (not (<= 0 k@239@01))))
  :pattern ((Seq_index xs@219@01 k@239@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((k1@239@01 Int) (k2@239@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@239@01) (< k1@239@01 3))
      (and (<= 0 k2@239@01) (< k2@239@01 3))
      (= (Seq_index xs@219@01 k1@239@01) (Seq_index xs@219@01 k2@239@01)))
    (= k1@239@01 k2@239@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@239@01 Int)) (!
  (=>
    (and (<= 0 k@239@01) (< k@239@01 3))
    (and
      (= (inv@240@01 (Seq_index xs@219@01 k@239@01)) k@239@01)
      (img@241@01 (Seq_index xs@219@01 k@239@01))))
  :pattern ((Seq_index xs@219@01 k@239@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@241@01 r) (and (<= 0 (inv@240@01 r)) (< (inv@240@01 r) 3)))
    (= (Seq_index xs@219@01 (inv@240@01 r)) r))
  :pattern ((inv@240@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@240@01 r)) (< (inv@240@01 r) 3))
      (img@241@01 r)
      (= r (Seq_index xs@219@01 (inv@240@01 r))))
    (>
      (ite
        (and (img@228@01 r) (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) 3)))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-12510|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@242@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@242@01  $FVF<f>)))
      (and (and (<= 0 (inv@240@01 r)) (< (inv@240@01 r) 3)) (img@241@01 r)))
    (=>
      (and (and (<= 0 (inv@240@01 r)) (< (inv@240@01 r) 3)) (img@241@01 r))
      (Set_in r ($FVF.domain_f (as sm@242@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@242@01  $FVF<f>))))
  :qid |qp.fvfDomDef96|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@240@01 r)) (< (inv@240@01 r) 3)) (img@241@01 r))
      (and (img@228@01 r) (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) 3))))
    (= ($FVF.lookup_f (as sm@242@01  $FVF<f>) r) ($FVF.lookup_f $t@226@01 r)))
  :pattern (($FVF.lookup_f (as sm@242@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@226@01 r))
  :qid |qp.fvfValDef95|)))
(assert (fun05%precondition ($Snap.combine
  ($SortWrappers.IntTo$Snap $t@220@01)
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (as sm@242@01  $FVF<f>))))) x@218@01 xs@219@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((k@239@01 Int)) (!
  (=>
    (and (<= 0 k@239@01) (< k@239@01 3))
    (and
      (= (inv@240@01 (Seq_index xs@219@01 k@239@01)) k@239@01)
      (img@241@01 (Seq_index xs@219@01 k@239@01))))
  :pattern ((Seq_index xs@219@01 k@239@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@241@01 r) (and (<= 0 (inv@240@01 r)) (< (inv@240@01 r) 3)))
    (= (Seq_index xs@219@01 (inv@240@01 r)) r))
  :pattern ((inv@240@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@242@01  $FVF<f>)))
      (and (and (<= 0 (inv@240@01 r)) (< (inv@240@01 r) 3)) (img@241@01 r)))
    (=>
      (and (and (<= 0 (inv@240@01 r)) (< (inv@240@01 r) 3)) (img@241@01 r))
      (Set_in r ($FVF.domain_f (as sm@242@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@242@01  $FVF<f>))))
  :qid |qp.fvfDomDef96|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@240@01 r)) (< (inv@240@01 r) 3)) (img@241@01 r))
      (and (img@228@01 r) (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) 3))))
    (= ($FVF.lookup_f (as sm@242@01  $FVF<f>) r) ($FVF.lookup_f $t@226@01 r)))
  :pattern (($FVF.lookup_f (as sm@242@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@226@01 r))
  :qid |qp.fvfValDef95|)))
(assert (and
  (forall ((i1@237@01 Int) (i2@238@01 Int)) (!
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@237@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@238@01)
          (not (= i1@237@01 i2@238@01))))
      (not (= (Seq_index xs@219@01 i1@237@01) (Seq_index xs@219@01 i2@238@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@112@12@112@100|))
  (forall ((k@239@01 Int)) (!
    (=>
      (and (<= 0 k@239@01) (< k@239@01 3))
      (or (<= 0 k@239@01) (not (<= 0 k@239@01))))
    :pattern ((Seq_index xs@219@01 k@239@01))
    :qid |f-aux|))
  (fun05%precondition ($Snap.combine
    ($SortWrappers.IntTo$Snap $t@220@01)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<f>To$Snap (as sm@242@01  $FVF<f>))))) x@218@01 xs@219@01)))
(assert (=
  10
  (fun05 ($Snap.combine
    ($SortWrappers.IntTo$Snap $t@220@01)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<f>To$Snap (as sm@242@01  $FVF<f>))))) x@218@01 xs@219@01)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; x.g := 0
; [exec]
; assert 10 == fun05(x, xs)
; [eval] 10 == fun05(x, xs)
; [eval] fun05(x, xs)
(set-option :timeout 0)
(push) ; 3
; [eval] 3 <= |xs|
; [eval] |xs|
; [eval] (forall i1: Int, i2: Int ::(i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@243@01 Int)
(declare-const i2@244@01 Int)
(push) ; 4
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2)
; [eval] (i1 in [0..3))
; [eval] [0..3)
(push) ; 5
; [then-branch: 134 | !(i1@243@01 in [0..3]) | live]
; [else-branch: 134 | i1@243@01 in [0..3] | live]
(push) ; 6
; [then-branch: 134 | !(i1@243@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i1@243@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 134 | i1@243@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i1@243@01))
; [eval] (i2 in [0..3))
; [eval] [0..3)
(push) ; 7
; [then-branch: 135 | !(i2@244@01 in [0..3]) | live]
; [else-branch: 135 | i2@244@01 in [0..3] | live]
(push) ; 8
; [then-branch: 135 | !(i2@244@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i2@244@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 135 | i2@244@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i2@244@01))
; [eval] i1 != i2
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 3) i2@244@01)
  (not (Seq_contains (Seq_range 0 3) i2@244@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 3) i1@243@01)
  (and
    (Seq_contains (Seq_range 0 3) i1@243@01)
    (or
      (Seq_contains (Seq_range 0 3) i2@244@01)
      (not (Seq_contains (Seq_range 0 3) i2@244@01))))))
(assert (or
  (Seq_contains (Seq_range 0 3) i1@243@01)
  (not (Seq_contains (Seq_range 0 3) i1@243@01))))
(push) ; 5
; [then-branch: 136 | i1@243@01 in [0..3] && i2@244@01 in [0..3] && i1@243@01 != i2@244@01 | live]
; [else-branch: 136 | !(i1@243@01 in [0..3] && i2@244@01 in [0..3] && i1@243@01 != i2@244@01) | live]
(push) ; 6
; [then-branch: 136 | i1@243@01 in [0..3] && i2@244@01 in [0..3] && i1@243@01 != i2@244@01]
(assert (and
  (Seq_contains (Seq_range 0 3) i1@243@01)
  (and (Seq_contains (Seq_range 0 3) i2@244@01) (not (= i1@243@01 i2@244@01)))))
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(push) ; 7
(assert (not (>= i1@243@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i1@243@01 (Seq_length xs@219@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 7
(assert (not (>= i2@244@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i2@244@01 (Seq_length xs@219@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 136 | !(i1@243@01 in [0..3] && i2@244@01 in [0..3] && i1@243@01 != i2@244@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 3) i1@243@01)
    (and (Seq_contains (Seq_range 0 3) i2@244@01) (not (= i1@243@01 i2@244@01))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 3) i1@243@01)
    (and (Seq_contains (Seq_range 0 3) i2@244@01) (not (= i1@243@01 i2@244@01))))
  (and
    (Seq_contains (Seq_range 0 3) i1@243@01)
    (Seq_contains (Seq_range 0 3) i2@244@01)
    (not (= i1@243@01 i2@244@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 3) i1@243@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@244@01)
        (not (= i1@243@01 i2@244@01)))))
  (and
    (Seq_contains (Seq_range 0 3) i1@243@01)
    (and (Seq_contains (Seq_range 0 3) i2@244@01) (not (= i1@243@01 i2@244@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((i1@243@01 Int) (i2@244@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@243@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@244@01)
        (not (= i1@243@01 i2@244@01))))
    (not (= (Seq_index xs@219@01 i1@243@01) (Seq_index xs@219@01 i2@244@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@112@12@112@100|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@243@01 Int) (i2@244@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@243@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@244@01)
        (not (= i1@243@01 i2@244@01))))
    (not (= (Seq_index xs@219@01 i1@243@01) (Seq_index xs@219@01 i2@244@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@112@12@112@100|)))
(declare-const k@245@01 Int)
(push) ; 4
; [eval] 0 <= k && k < 3
; [eval] 0 <= k
(push) ; 5
; [then-branch: 137 | !(0 <= k@245@01) | live]
; [else-branch: 137 | 0 <= k@245@01 | live]
(push) ; 6
; [then-branch: 137 | !(0 <= k@245@01)]
(assert (not (<= 0 k@245@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 137 | 0 <= k@245@01]
(assert (<= 0 k@245@01))
; [eval] k < 3
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@245@01) (not (<= 0 k@245@01))))
(assert (and (<= 0 k@245@01) (< k@245@01 3)))
; [eval] xs[k]
(push) ; 5
(assert (not (>= k@245@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@245@01 (Seq_length xs@219@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@246@01 ($Ref) Int)
(declare-fun img@247@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@245@01 Int)) (!
  (=>
    (and (<= 0 k@245@01) (< k@245@01 3))
    (or (<= 0 k@245@01) (not (<= 0 k@245@01))))
  :pattern ((Seq_index xs@219@01 k@245@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((k1@245@01 Int) (k2@245@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@245@01) (< k1@245@01 3))
      (and (<= 0 k2@245@01) (< k2@245@01 3))
      (= (Seq_index xs@219@01 k1@245@01) (Seq_index xs@219@01 k2@245@01)))
    (= k1@245@01 k2@245@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@245@01 Int)) (!
  (=>
    (and (<= 0 k@245@01) (< k@245@01 3))
    (and
      (= (inv@246@01 (Seq_index xs@219@01 k@245@01)) k@245@01)
      (img@247@01 (Seq_index xs@219@01 k@245@01))))
  :pattern ((Seq_index xs@219@01 k@245@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@247@01 r) (and (<= 0 (inv@246@01 r)) (< (inv@246@01 r) 3)))
    (= (Seq_index xs@219@01 (inv@246@01 r)) r))
  :pattern ((inv@246@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@246@01 r)) (< (inv@246@01 r) 3))
      (img@247@01 r)
      (= r (Seq_index xs@219@01 (inv@246@01 r))))
    (>
      (ite
        (and (img@228@01 r) (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) 3)))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-12512|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@248@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@248@01  $FVF<f>)))
      (and (and (<= 0 (inv@246@01 r)) (< (inv@246@01 r) 3)) (img@247@01 r)))
    (=>
      (and (and (<= 0 (inv@246@01 r)) (< (inv@246@01 r) 3)) (img@247@01 r))
      (Set_in r ($FVF.domain_f (as sm@248@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@248@01  $FVF<f>))))
  :qid |qp.fvfDomDef98|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@246@01 r)) (< (inv@246@01 r) 3)) (img@247@01 r))
      (and (img@228@01 r) (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) 3))))
    (= ($FVF.lookup_f (as sm@248@01  $FVF<f>) r) ($FVF.lookup_f $t@226@01 r)))
  :pattern (($FVF.lookup_f (as sm@248@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@226@01 r))
  :qid |qp.fvfValDef97|)))
(assert (fun05%precondition ($Snap.combine
  ($SortWrappers.IntTo$Snap 0)
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (as sm@248@01  $FVF<f>))))) x@218@01 xs@219@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((k@245@01 Int)) (!
  (=>
    (and (<= 0 k@245@01) (< k@245@01 3))
    (and
      (= (inv@246@01 (Seq_index xs@219@01 k@245@01)) k@245@01)
      (img@247@01 (Seq_index xs@219@01 k@245@01))))
  :pattern ((Seq_index xs@219@01 k@245@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@247@01 r) (and (<= 0 (inv@246@01 r)) (< (inv@246@01 r) 3)))
    (= (Seq_index xs@219@01 (inv@246@01 r)) r))
  :pattern ((inv@246@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@248@01  $FVF<f>)))
      (and (and (<= 0 (inv@246@01 r)) (< (inv@246@01 r) 3)) (img@247@01 r)))
    (=>
      (and (and (<= 0 (inv@246@01 r)) (< (inv@246@01 r) 3)) (img@247@01 r))
      (Set_in r ($FVF.domain_f (as sm@248@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@248@01  $FVF<f>))))
  :qid |qp.fvfDomDef98|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@246@01 r)) (< (inv@246@01 r) 3)) (img@247@01 r))
      (and (img@228@01 r) (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) 3))))
    (= ($FVF.lookup_f (as sm@248@01  $FVF<f>) r) ($FVF.lookup_f $t@226@01 r)))
  :pattern (($FVF.lookup_f (as sm@248@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@226@01 r))
  :qid |qp.fvfValDef97|)))
(assert (and
  (forall ((i1@243@01 Int) (i2@244@01 Int)) (!
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@243@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@244@01)
          (not (= i1@243@01 i2@244@01))))
      (not (= (Seq_index xs@219@01 i1@243@01) (Seq_index xs@219@01 i2@244@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@112@12@112@100|))
  (forall ((k@245@01 Int)) (!
    (=>
      (and (<= 0 k@245@01) (< k@245@01 3))
      (or (<= 0 k@245@01) (not (<= 0 k@245@01))))
    :pattern ((Seq_index xs@219@01 k@245@01))
    :qid |f-aux|))
  (fun05%precondition ($Snap.combine
    ($SortWrappers.IntTo$Snap 0)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<f>To$Snap (as sm@248@01  $FVF<f>))))) x@218@01 xs@219@01)))
(push) ; 3
(assert (not (=
  10
  (fun05 ($Snap.combine
    ($SortWrappers.IntTo$Snap 0)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<f>To$Snap (as sm@248@01  $FVF<f>))))) x@218@01 xs@219@01))))
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
(declare-const sm@249@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@228@01 r) (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) 3)))
    (= ($FVF.lookup_f (as sm@249@01  $FVF<f>) r) ($FVF.lookup_f $t@226@01 r)))
  :pattern (($FVF.lookup_f (as sm@249@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@226@01 r))
  :qid |qp.fvfValDef99|)))
(declare-const pm@250@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@250@01  $FPM) r)
    (ite
      (and (img@228@01 r) (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) 3)))
      $Perm.Write
      $Perm.No))
  :pattern (($FVF.perm_f (as pm@250@01  $FPM) r))
  :qid |qp.resPrmSumDef100|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@250@01  $FPM) r) $Perm.Write)
  :pattern ((inv@227@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] 10 == fun05(x, xs)
; [eval] fun05(x, xs)
(set-option :timeout 0)
(push) ; 3
; [eval] 3 <= |xs|
; [eval] |xs|
; [eval] (forall i1: Int, i2: Int ::(i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@251@01 Int)
(declare-const i2@252@01 Int)
(push) ; 4
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2)
; [eval] (i1 in [0..3))
; [eval] [0..3)
(push) ; 5
; [then-branch: 138 | !(i1@251@01 in [0..3]) | live]
; [else-branch: 138 | i1@251@01 in [0..3] | live]
(push) ; 6
; [then-branch: 138 | !(i1@251@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i1@251@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 138 | i1@251@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i1@251@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] (i2 in [0..3))
; [eval] [0..3)
(set-option :timeout 0)
(push) ; 7
; [then-branch: 139 | !(i2@252@01 in [0..3]) | live]
; [else-branch: 139 | i2@252@01 in [0..3] | live]
(push) ; 8
; [then-branch: 139 | !(i2@252@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i2@252@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(pop) ; 8
(set-option :timeout 0)
(push) ; 8
; [else-branch: 139 | i2@252@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i2@252@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] i1 != i2
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 3) i2@252@01)
  (not (Seq_contains (Seq_range 0 3) i2@252@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 3) i1@251@01)
  (and
    (Seq_contains (Seq_range 0 3) i1@251@01)
    (or
      (Seq_contains (Seq_range 0 3) i2@252@01)
      (not (Seq_contains (Seq_range 0 3) i2@252@01))))))
(assert (or
  (Seq_contains (Seq_range 0 3) i1@251@01)
  (not (Seq_contains (Seq_range 0 3) i1@251@01))))
(set-option :timeout 0)
(push) ; 5
; [then-branch: 140 | i1@251@01 in [0..3] && i2@252@01 in [0..3] && i1@251@01 != i2@252@01 | live]
; [else-branch: 140 | !(i1@251@01 in [0..3] && i2@252@01 in [0..3] && i1@251@01 != i2@252@01) | live]
(push) ; 6
; [then-branch: 140 | i1@251@01 in [0..3] && i2@252@01 in [0..3] && i1@251@01 != i2@252@01]
(assert (and
  (Seq_contains (Seq_range 0 3) i1@251@01)
  (and (Seq_contains (Seq_range 0 3) i2@252@01) (not (= i1@251@01 i2@252@01)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(set-option :timeout 0)
(push) ; 7
(assert (not (>= i1@251@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i1@251@01 (Seq_length xs@219@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 7
(assert (not (>= i2@252@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i2@252@01 (Seq_length xs@219@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 140 | !(i1@251@01 in [0..3] && i2@252@01 in [0..3] && i1@251@01 != i2@252@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 3) i1@251@01)
    (and (Seq_contains (Seq_range 0 3) i2@252@01) (not (= i1@251@01 i2@252@01))))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 3) i1@251@01)
    (and (Seq_contains (Seq_range 0 3) i2@252@01) (not (= i1@251@01 i2@252@01))))
  (and
    (Seq_contains (Seq_range 0 3) i1@251@01)
    (Seq_contains (Seq_range 0 3) i2@252@01)
    (not (= i1@251@01 i2@252@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 3) i1@251@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@252@01)
        (not (= i1@251@01 i2@252@01)))))
  (and
    (Seq_contains (Seq_range 0 3) i1@251@01)
    (and (Seq_contains (Seq_range 0 3) i2@252@01) (not (= i1@251@01 i2@252@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((i1@251@01 Int) (i2@252@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@251@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@252@01)
        (not (= i1@251@01 i2@252@01))))
    (not (= (Seq_index xs@219@01 i1@251@01) (Seq_index xs@219@01 i2@252@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@112@12@112@100|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@251@01 Int) (i2@252@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@251@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@252@01)
        (not (= i1@251@01 i2@252@01))))
    (not (= (Seq_index xs@219@01 i1@251@01) (Seq_index xs@219@01 i2@252@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@112@12@112@100|)))
(declare-const k@253@01 Int)
(push) ; 4
; [eval] 0 <= k && k < 3
; [eval] 0 <= k
(push) ; 5
; [then-branch: 141 | !(0 <= k@253@01) | live]
; [else-branch: 141 | 0 <= k@253@01 | live]
(push) ; 6
; [then-branch: 141 | !(0 <= k@253@01)]
(assert (not (<= 0 k@253@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 141 | 0 <= k@253@01]
(assert (<= 0 k@253@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] k < 3
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@253@01) (not (<= 0 k@253@01))))
(assert (and (<= 0 k@253@01) (< k@253@01 3)))
; [eval] xs[k]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= k@253@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@253@01 (Seq_length xs@219@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@254@01 ($Ref) Int)
(declare-fun img@255@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@253@01 Int)) (!
  (=>
    (and (<= 0 k@253@01) (< k@253@01 3))
    (or (<= 0 k@253@01) (not (<= 0 k@253@01))))
  :pattern ((Seq_index xs@219@01 k@253@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((k1@253@01 Int) (k2@253@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@253@01) (< k1@253@01 3))
      (and (<= 0 k2@253@01) (< k2@253@01 3))
      (= (Seq_index xs@219@01 k1@253@01) (Seq_index xs@219@01 k2@253@01)))
    (= k1@253@01 k2@253@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@253@01 Int)) (!
  (=>
    (and (<= 0 k@253@01) (< k@253@01 3))
    (and
      (= (inv@254@01 (Seq_index xs@219@01 k@253@01)) k@253@01)
      (img@255@01 (Seq_index xs@219@01 k@253@01))))
  :pattern ((Seq_index xs@219@01 k@253@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@255@01 r) (and (<= 0 (inv@254@01 r)) (< (inv@254@01 r) 3)))
    (= (Seq_index xs@219@01 (inv@254@01 r)) r))
  :pattern ((inv@254@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@254@01 r)) (< (inv@254@01 r) 3))
      (img@255@01 r)
      (= r (Seq_index xs@219@01 (inv@254@01 r))))
    (>
      (ite
        (and (img@228@01 r) (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) 3)))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-12514|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@256@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@256@01  $FVF<f>)))
      (and (and (<= 0 (inv@254@01 r)) (< (inv@254@01 r) 3)) (img@255@01 r)))
    (=>
      (and (and (<= 0 (inv@254@01 r)) (< (inv@254@01 r) 3)) (img@255@01 r))
      (Set_in r ($FVF.domain_f (as sm@256@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@256@01  $FVF<f>))))
  :qid |qp.fvfDomDef102|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@254@01 r)) (< (inv@254@01 r) 3)) (img@255@01 r))
      (and (img@228@01 r) (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) 3))))
    (= ($FVF.lookup_f (as sm@256@01  $FVF<f>) r) ($FVF.lookup_f $t@226@01 r)))
  :pattern (($FVF.lookup_f (as sm@256@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@226@01 r))
  :qid |qp.fvfValDef101|)))
(assert (fun05%precondition ($Snap.combine
  ($SortWrappers.IntTo$Snap 0)
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (as sm@256@01  $FVF<f>))))) x@218@01 xs@219@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((k@253@01 Int)) (!
  (=>
    (and (<= 0 k@253@01) (< k@253@01 3))
    (and
      (= (inv@254@01 (Seq_index xs@219@01 k@253@01)) k@253@01)
      (img@255@01 (Seq_index xs@219@01 k@253@01))))
  :pattern ((Seq_index xs@219@01 k@253@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@255@01 r) (and (<= 0 (inv@254@01 r)) (< (inv@254@01 r) 3)))
    (= (Seq_index xs@219@01 (inv@254@01 r)) r))
  :pattern ((inv@254@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@256@01  $FVF<f>)))
      (and (and (<= 0 (inv@254@01 r)) (< (inv@254@01 r) 3)) (img@255@01 r)))
    (=>
      (and (and (<= 0 (inv@254@01 r)) (< (inv@254@01 r) 3)) (img@255@01 r))
      (Set_in r ($FVF.domain_f (as sm@256@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@256@01  $FVF<f>))))
  :qid |qp.fvfDomDef102|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@254@01 r)) (< (inv@254@01 r) 3)) (img@255@01 r))
      (and (img@228@01 r) (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) 3))))
    (= ($FVF.lookup_f (as sm@256@01  $FVF<f>) r) ($FVF.lookup_f $t@226@01 r)))
  :pattern (($FVF.lookup_f (as sm@256@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@226@01 r))
  :qid |qp.fvfValDef101|)))
(assert (and
  (forall ((i1@251@01 Int) (i2@252@01 Int)) (!
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@251@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@252@01)
          (not (= i1@251@01 i2@252@01))))
      (not (= (Seq_index xs@219@01 i1@251@01) (Seq_index xs@219@01 i2@252@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@112@12@112@100|))
  (forall ((k@253@01 Int)) (!
    (=>
      (and (<= 0 k@253@01) (< k@253@01 3))
      (or (<= 0 k@253@01) (not (<= 0 k@253@01))))
    :pattern ((Seq_index xs@219@01 k@253@01))
    :qid |f-aux|))
  (fun05%precondition ($Snap.combine
    ($SortWrappers.IntTo$Snap 0)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<f>To$Snap (as sm@256@01  $FVF<f>))))) x@218@01 xs@219@01)))
(push) ; 3
(assert (not (=
  10
  (fun05 ($Snap.combine
    ($SortWrappers.IntTo$Snap 0)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<f>To$Snap (as sm@256@01  $FVF<f>))))) x@218@01 xs@219@01))))
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
(declare-const sm@257@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@228@01 r) (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) 3)))
    (= ($FVF.lookup_f (as sm@257@01  $FVF<f>) r) ($FVF.lookup_f $t@226@01 r)))
  :pattern (($FVF.lookup_f (as sm@257@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@226@01 r))
  :qid |qp.fvfValDef103|)))
(declare-const pm@258@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@258@01  $FPM) r)
    (ite
      (and (img@228@01 r) (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) 3)))
      $Perm.Write
      $Perm.No))
  :pattern (($FVF.perm_f (as pm@258@01  $FPM) r))
  :qid |qp.resPrmSumDef104|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@258@01  $FPM) r) $Perm.Write)
  :pattern ((inv@227@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] 10 == fun05(x, xs)
; [eval] fun05(x, xs)
(set-option :timeout 0)
(push) ; 3
; [eval] 3 <= |xs|
; [eval] |xs|
; [eval] (forall i1: Int, i2: Int ::(i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@259@01 Int)
(declare-const i2@260@01 Int)
(push) ; 4
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2)
; [eval] (i1 in [0..3))
; [eval] [0..3)
(push) ; 5
; [then-branch: 142 | !(i1@259@01 in [0..3]) | live]
; [else-branch: 142 | i1@259@01 in [0..3] | live]
(push) ; 6
; [then-branch: 142 | !(i1@259@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i1@259@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 142 | i1@259@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i1@259@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] (i2 in [0..3))
; [eval] [0..3)
(set-option :timeout 0)
(push) ; 7
; [then-branch: 143 | !(i2@260@01 in [0..3]) | live]
; [else-branch: 143 | i2@260@01 in [0..3] | live]
(push) ; 8
; [then-branch: 143 | !(i2@260@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i2@260@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(pop) ; 8
(set-option :timeout 0)
(push) ; 8
; [else-branch: 143 | i2@260@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i2@260@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] i1 != i2
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 3) i2@260@01)
  (not (Seq_contains (Seq_range 0 3) i2@260@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 3) i1@259@01)
  (and
    (Seq_contains (Seq_range 0 3) i1@259@01)
    (or
      (Seq_contains (Seq_range 0 3) i2@260@01)
      (not (Seq_contains (Seq_range 0 3) i2@260@01))))))
(assert (or
  (Seq_contains (Seq_range 0 3) i1@259@01)
  (not (Seq_contains (Seq_range 0 3) i1@259@01))))
(set-option :timeout 0)
(push) ; 5
; [then-branch: 144 | i1@259@01 in [0..3] && i2@260@01 in [0..3] && i1@259@01 != i2@260@01 | live]
; [else-branch: 144 | !(i1@259@01 in [0..3] && i2@260@01 in [0..3] && i1@259@01 != i2@260@01) | live]
(push) ; 6
; [then-branch: 144 | i1@259@01 in [0..3] && i2@260@01 in [0..3] && i1@259@01 != i2@260@01]
(assert (and
  (Seq_contains (Seq_range 0 3) i1@259@01)
  (and (Seq_contains (Seq_range 0 3) i2@260@01) (not (= i1@259@01 i2@260@01)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(set-option :timeout 0)
(push) ; 7
(assert (not (>= i1@259@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i1@259@01 (Seq_length xs@219@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 7
(assert (not (>= i2@260@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i2@260@01 (Seq_length xs@219@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 144 | !(i1@259@01 in [0..3] && i2@260@01 in [0..3] && i1@259@01 != i2@260@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 3) i1@259@01)
    (and (Seq_contains (Seq_range 0 3) i2@260@01) (not (= i1@259@01 i2@260@01))))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 3) i1@259@01)
    (and (Seq_contains (Seq_range 0 3) i2@260@01) (not (= i1@259@01 i2@260@01))))
  (and
    (Seq_contains (Seq_range 0 3) i1@259@01)
    (Seq_contains (Seq_range 0 3) i2@260@01)
    (not (= i1@259@01 i2@260@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 3) i1@259@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@260@01)
        (not (= i1@259@01 i2@260@01)))))
  (and
    (Seq_contains (Seq_range 0 3) i1@259@01)
    (and (Seq_contains (Seq_range 0 3) i2@260@01) (not (= i1@259@01 i2@260@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((i1@259@01 Int) (i2@260@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@259@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@260@01)
        (not (= i1@259@01 i2@260@01))))
    (not (= (Seq_index xs@219@01 i1@259@01) (Seq_index xs@219@01 i2@260@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@112@12@112@100|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@259@01 Int) (i2@260@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@259@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@260@01)
        (not (= i1@259@01 i2@260@01))))
    (not (= (Seq_index xs@219@01 i1@259@01) (Seq_index xs@219@01 i2@260@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@112@12@112@100|)))
(declare-const k@261@01 Int)
(push) ; 4
; [eval] 0 <= k && k < 3
; [eval] 0 <= k
(push) ; 5
; [then-branch: 145 | !(0 <= k@261@01) | live]
; [else-branch: 145 | 0 <= k@261@01 | live]
(push) ; 6
; [then-branch: 145 | !(0 <= k@261@01)]
(assert (not (<= 0 k@261@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 145 | 0 <= k@261@01]
(assert (<= 0 k@261@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] k < 3
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@261@01) (not (<= 0 k@261@01))))
(assert (and (<= 0 k@261@01) (< k@261@01 3)))
; [eval] xs[k]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= k@261@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@261@01 (Seq_length xs@219@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@262@01 ($Ref) Int)
(declare-fun img@263@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@261@01 Int)) (!
  (=>
    (and (<= 0 k@261@01) (< k@261@01 3))
    (or (<= 0 k@261@01) (not (<= 0 k@261@01))))
  :pattern ((Seq_index xs@219@01 k@261@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((k1@261@01 Int) (k2@261@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@261@01) (< k1@261@01 3))
      (and (<= 0 k2@261@01) (< k2@261@01 3))
      (= (Seq_index xs@219@01 k1@261@01) (Seq_index xs@219@01 k2@261@01)))
    (= k1@261@01 k2@261@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@261@01 Int)) (!
  (=>
    (and (<= 0 k@261@01) (< k@261@01 3))
    (and
      (= (inv@262@01 (Seq_index xs@219@01 k@261@01)) k@261@01)
      (img@263@01 (Seq_index xs@219@01 k@261@01))))
  :pattern ((Seq_index xs@219@01 k@261@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@263@01 r) (and (<= 0 (inv@262@01 r)) (< (inv@262@01 r) 3)))
    (= (Seq_index xs@219@01 (inv@262@01 r)) r))
  :pattern ((inv@262@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@262@01 r)) (< (inv@262@01 r) 3))
      (img@263@01 r)
      (= r (Seq_index xs@219@01 (inv@262@01 r))))
    (>
      (ite
        (and (img@228@01 r) (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) 3)))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-12516|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@264@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@264@01  $FVF<f>)))
      (and (and (<= 0 (inv@262@01 r)) (< (inv@262@01 r) 3)) (img@263@01 r)))
    (=>
      (and (and (<= 0 (inv@262@01 r)) (< (inv@262@01 r) 3)) (img@263@01 r))
      (Set_in r ($FVF.domain_f (as sm@264@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@264@01  $FVF<f>))))
  :qid |qp.fvfDomDef106|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@262@01 r)) (< (inv@262@01 r) 3)) (img@263@01 r))
      (and (img@228@01 r) (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) 3))))
    (= ($FVF.lookup_f (as sm@264@01  $FVF<f>) r) ($FVF.lookup_f $t@226@01 r)))
  :pattern (($FVF.lookup_f (as sm@264@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@226@01 r))
  :qid |qp.fvfValDef105|)))
(assert (fun05%precondition ($Snap.combine
  ($SortWrappers.IntTo$Snap 0)
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (as sm@264@01  $FVF<f>))))) x@218@01 xs@219@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((k@261@01 Int)) (!
  (=>
    (and (<= 0 k@261@01) (< k@261@01 3))
    (and
      (= (inv@262@01 (Seq_index xs@219@01 k@261@01)) k@261@01)
      (img@263@01 (Seq_index xs@219@01 k@261@01))))
  :pattern ((Seq_index xs@219@01 k@261@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@263@01 r) (and (<= 0 (inv@262@01 r)) (< (inv@262@01 r) 3)))
    (= (Seq_index xs@219@01 (inv@262@01 r)) r))
  :pattern ((inv@262@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@264@01  $FVF<f>)))
      (and (and (<= 0 (inv@262@01 r)) (< (inv@262@01 r) 3)) (img@263@01 r)))
    (=>
      (and (and (<= 0 (inv@262@01 r)) (< (inv@262@01 r) 3)) (img@263@01 r))
      (Set_in r ($FVF.domain_f (as sm@264@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@264@01  $FVF<f>))))
  :qid |qp.fvfDomDef106|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@262@01 r)) (< (inv@262@01 r) 3)) (img@263@01 r))
      (and (img@228@01 r) (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) 3))))
    (= ($FVF.lookup_f (as sm@264@01  $FVF<f>) r) ($FVF.lookup_f $t@226@01 r)))
  :pattern (($FVF.lookup_f (as sm@264@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@226@01 r))
  :qid |qp.fvfValDef105|)))
(assert (and
  (forall ((i1@259@01 Int) (i2@260@01 Int)) (!
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@259@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@260@01)
          (not (= i1@259@01 i2@260@01))))
      (not (= (Seq_index xs@219@01 i1@259@01) (Seq_index xs@219@01 i2@260@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@112@12@112@100|))
  (forall ((k@261@01 Int)) (!
    (=>
      (and (<= 0 k@261@01) (< k@261@01 3))
      (or (<= 0 k@261@01) (not (<= 0 k@261@01))))
    :pattern ((Seq_index xs@219@01 k@261@01))
    :qid |f-aux|))
  (fun05%precondition ($Snap.combine
    ($SortWrappers.IntTo$Snap 0)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<f>To$Snap (as sm@264@01  $FVF<f>))))) x@218@01 xs@219@01)))
(push) ; 3
(assert (not (=
  10
  (fun05 ($Snap.combine
    ($SortWrappers.IntTo$Snap 0)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<f>To$Snap (as sm@264@01  $FVF<f>))))) x@218@01 xs@219@01))))
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
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] 10 == fun05(x, xs)
; [eval] fun05(x, xs)
(set-option :timeout 0)
(push) ; 3
; [eval] 3 <= |xs|
; [eval] |xs|
; [eval] (forall i1: Int, i2: Int ::(i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@265@01 Int)
(declare-const i2@266@01 Int)
(push) ; 4
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2)
; [eval] (i1 in [0..3))
; [eval] [0..3)
(push) ; 5
; [then-branch: 146 | !(i1@265@01 in [0..3]) | live]
; [else-branch: 146 | i1@265@01 in [0..3] | live]
(push) ; 6
; [then-branch: 146 | !(i1@265@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i1@265@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 146 | i1@265@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i1@265@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] (i2 in [0..3))
; [eval] [0..3)
(set-option :timeout 0)
(push) ; 7
; [then-branch: 147 | !(i2@266@01 in [0..3]) | live]
; [else-branch: 147 | i2@266@01 in [0..3] | live]
(push) ; 8
; [then-branch: 147 | !(i2@266@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i2@266@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(pop) ; 8
(set-option :timeout 0)
(push) ; 8
; [else-branch: 147 | i2@266@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i2@266@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] i1 != i2
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 3) i2@266@01)
  (not (Seq_contains (Seq_range 0 3) i2@266@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 3) i1@265@01)
  (and
    (Seq_contains (Seq_range 0 3) i1@265@01)
    (or
      (Seq_contains (Seq_range 0 3) i2@266@01)
      (not (Seq_contains (Seq_range 0 3) i2@266@01))))))
(assert (or
  (Seq_contains (Seq_range 0 3) i1@265@01)
  (not (Seq_contains (Seq_range 0 3) i1@265@01))))
(set-option :timeout 0)
(push) ; 5
; [then-branch: 148 | i1@265@01 in [0..3] && i2@266@01 in [0..3] && i1@265@01 != i2@266@01 | live]
; [else-branch: 148 | !(i1@265@01 in [0..3] && i2@266@01 in [0..3] && i1@265@01 != i2@266@01) | live]
(push) ; 6
; [then-branch: 148 | i1@265@01 in [0..3] && i2@266@01 in [0..3] && i1@265@01 != i2@266@01]
(assert (and
  (Seq_contains (Seq_range 0 3) i1@265@01)
  (and (Seq_contains (Seq_range 0 3) i2@266@01) (not (= i1@265@01 i2@266@01)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(set-option :timeout 0)
(push) ; 7
(assert (not (>= i1@265@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i1@265@01 (Seq_length xs@219@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 7
(assert (not (>= i2@266@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i2@266@01 (Seq_length xs@219@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 148 | !(i1@265@01 in [0..3] && i2@266@01 in [0..3] && i1@265@01 != i2@266@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 3) i1@265@01)
    (and (Seq_contains (Seq_range 0 3) i2@266@01) (not (= i1@265@01 i2@266@01))))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 3) i1@265@01)
    (and (Seq_contains (Seq_range 0 3) i2@266@01) (not (= i1@265@01 i2@266@01))))
  (and
    (Seq_contains (Seq_range 0 3) i1@265@01)
    (Seq_contains (Seq_range 0 3) i2@266@01)
    (not (= i1@265@01 i2@266@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 3) i1@265@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@266@01)
        (not (= i1@265@01 i2@266@01)))))
  (and
    (Seq_contains (Seq_range 0 3) i1@265@01)
    (and (Seq_contains (Seq_range 0 3) i2@266@01) (not (= i1@265@01 i2@266@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((i1@265@01 Int) (i2@266@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@265@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@266@01)
        (not (= i1@265@01 i2@266@01))))
    (not (= (Seq_index xs@219@01 i1@265@01) (Seq_index xs@219@01 i2@266@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@112@12@112@100|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@265@01 Int) (i2@266@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@265@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@266@01)
        (not (= i1@265@01 i2@266@01))))
    (not (= (Seq_index xs@219@01 i1@265@01) (Seq_index xs@219@01 i2@266@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@112@12@112@100|)))
(declare-const k@267@01 Int)
(push) ; 4
; [eval] 0 <= k && k < 3
; [eval] 0 <= k
(push) ; 5
; [then-branch: 149 | !(0 <= k@267@01) | live]
; [else-branch: 149 | 0 <= k@267@01 | live]
(push) ; 6
; [then-branch: 149 | !(0 <= k@267@01)]
(assert (not (<= 0 k@267@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 149 | 0 <= k@267@01]
(assert (<= 0 k@267@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] k < 3
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@267@01) (not (<= 0 k@267@01))))
(assert (and (<= 0 k@267@01) (< k@267@01 3)))
; [eval] xs[k]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= k@267@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@267@01 (Seq_length xs@219@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@268@01 ($Ref) Int)
(declare-fun img@269@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@267@01 Int)) (!
  (=>
    (and (<= 0 k@267@01) (< k@267@01 3))
    (or (<= 0 k@267@01) (not (<= 0 k@267@01))))
  :pattern ((Seq_index xs@219@01 k@267@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((k1@267@01 Int) (k2@267@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@267@01) (< k1@267@01 3))
      (and (<= 0 k2@267@01) (< k2@267@01 3))
      (= (Seq_index xs@219@01 k1@267@01) (Seq_index xs@219@01 k2@267@01)))
    (= k1@267@01 k2@267@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@267@01 Int)) (!
  (=>
    (and (<= 0 k@267@01) (< k@267@01 3))
    (and
      (= (inv@268@01 (Seq_index xs@219@01 k@267@01)) k@267@01)
      (img@269@01 (Seq_index xs@219@01 k@267@01))))
  :pattern ((Seq_index xs@219@01 k@267@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@269@01 r) (and (<= 0 (inv@268@01 r)) (< (inv@268@01 r) 3)))
    (= (Seq_index xs@219@01 (inv@268@01 r)) r))
  :pattern ((inv@268@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@268@01 r)) (< (inv@268@01 r) 3))
      (img@269@01 r)
      (= r (Seq_index xs@219@01 (inv@268@01 r))))
    (>
      (ite
        (and (img@228@01 r) (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) 3)))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-12518|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@270@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@270@01  $FVF<f>)))
      (and (and (<= 0 (inv@268@01 r)) (< (inv@268@01 r) 3)) (img@269@01 r)))
    (=>
      (and (and (<= 0 (inv@268@01 r)) (< (inv@268@01 r) 3)) (img@269@01 r))
      (Set_in r ($FVF.domain_f (as sm@270@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@270@01  $FVF<f>))))
  :qid |qp.fvfDomDef108|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@268@01 r)) (< (inv@268@01 r) 3)) (img@269@01 r))
      (and (img@228@01 r) (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) 3))))
    (= ($FVF.lookup_f (as sm@270@01  $FVF<f>) r) ($FVF.lookup_f $t@226@01 r)))
  :pattern (($FVF.lookup_f (as sm@270@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@226@01 r))
  :qid |qp.fvfValDef107|)))
(assert (fun05%precondition ($Snap.combine
  ($SortWrappers.IntTo$Snap 0)
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($SortWrappers.$FVF<f>To$Snap (as sm@270@01  $FVF<f>))))) x@218@01 xs@219@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((k@267@01 Int)) (!
  (=>
    (and (<= 0 k@267@01) (< k@267@01 3))
    (and
      (= (inv@268@01 (Seq_index xs@219@01 k@267@01)) k@267@01)
      (img@269@01 (Seq_index xs@219@01 k@267@01))))
  :pattern ((Seq_index xs@219@01 k@267@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@269@01 r) (and (<= 0 (inv@268@01 r)) (< (inv@268@01 r) 3)))
    (= (Seq_index xs@219@01 (inv@268@01 r)) r))
  :pattern ((inv@268@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@270@01  $FVF<f>)))
      (and (and (<= 0 (inv@268@01 r)) (< (inv@268@01 r) 3)) (img@269@01 r)))
    (=>
      (and (and (<= 0 (inv@268@01 r)) (< (inv@268@01 r) 3)) (img@269@01 r))
      (Set_in r ($FVF.domain_f (as sm@270@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@270@01  $FVF<f>))))
  :qid |qp.fvfDomDef108|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@268@01 r)) (< (inv@268@01 r) 3)) (img@269@01 r))
      (and (img@228@01 r) (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) 3))))
    (= ($FVF.lookup_f (as sm@270@01  $FVF<f>) r) ($FVF.lookup_f $t@226@01 r)))
  :pattern (($FVF.lookup_f (as sm@270@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@226@01 r))
  :qid |qp.fvfValDef107|)))
(assert (and
  (forall ((i1@265@01 Int) (i2@266@01 Int)) (!
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@265@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@266@01)
          (not (= i1@265@01 i2@266@01))))
      (not (= (Seq_index xs@219@01 i1@265@01) (Seq_index xs@219@01 i2@266@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@112@12@112@100|))
  (forall ((k@267@01 Int)) (!
    (=>
      (and (<= 0 k@267@01) (< k@267@01 3))
      (or (<= 0 k@267@01) (not (<= 0 k@267@01))))
    :pattern ((Seq_index xs@219@01 k@267@01))
    :qid |f-aux|))
  (fun05%precondition ($Snap.combine
    ($SortWrappers.IntTo$Snap 0)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<f>To$Snap (as sm@270@01  $FVF<f>))))) x@218@01 xs@219@01)))
(push) ; 3
(assert (not (=
  10
  (fun05 ($Snap.combine
    ($SortWrappers.IntTo$Snap 0)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<f>To$Snap (as sm@270@01  $FVF<f>))))) x@218@01 xs@219@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- test06 ----------
(declare-const x@271@01 $Ref)
(declare-const i@272@01 Int)
(declare-const xs@273@01 Seq<$Ref>)
(declare-const x@274@01 $Ref)
(declare-const i@275@01 Int)
(declare-const xs@276@01 Seq<$Ref>)
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
; inhale |xs| > 10
(declare-const $t@277@01 $Snap)
(assert (= $t@277@01 $Snap.unit))
; [eval] |xs| > 10
; [eval] |xs|
(assert (> (Seq_length xs@276@01) 10))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(x.f, write)
(declare-const $t@278@01 Int)
(declare-const sm@279@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (= ($FVF.lookup_f (as sm@279@01  $FVF<f>) x@274@01) $t@278@01))
(assert (not (= x@274@01 $Ref.null)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale i > 0
(declare-const $t@280@01 $Snap)
(assert (= $t@280@01 $Snap.unit))
; [eval] i > 0
(assert (> i@275@01 0))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale (forall i1: Int, i2: Int ::
;     { (i1 in [0..3)), (i2 in [0..3)) }
;     { (i1 in [0..3)), xs[i2] }
;     { (i2 in [0..3)), xs[i1] }
;     { xs[i1], xs[i2] }
;     (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const $t@281@01 $Snap)
(assert (= $t@281@01 $Snap.unit))
; [eval] (forall i1: Int, i2: Int :: { (i1 in [0..3)), (i2 in [0..3)) } { (i1 in [0..3)), xs[i2] } { (i2 in [0..3)), xs[i1] } { xs[i1], xs[i2] } (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@282@01 Int)
(declare-const i2@283@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2)
; [eval] (i1 in [0..3))
; [eval] [0..3)
(push) ; 4
; [then-branch: 150 | !(i1@282@01 in [0..3]) | live]
; [else-branch: 150 | i1@282@01 in [0..3] | live]
(push) ; 5
; [then-branch: 150 | !(i1@282@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i1@282@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 150 | i1@282@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i1@282@01))
; [eval] (i2 in [0..3))
; [eval] [0..3)
(push) ; 6
; [then-branch: 151 | !(i2@283@01 in [0..3]) | live]
; [else-branch: 151 | i2@283@01 in [0..3] | live]
(push) ; 7
; [then-branch: 151 | !(i2@283@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i2@283@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 151 | i2@283@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i2@283@01))
; [eval] i1 != i2
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 3) i2@283@01)
  (not (Seq_contains (Seq_range 0 3) i2@283@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 3) i1@282@01)
  (and
    (Seq_contains (Seq_range 0 3) i1@282@01)
    (or
      (Seq_contains (Seq_range 0 3) i2@283@01)
      (not (Seq_contains (Seq_range 0 3) i2@283@01))))))
(assert (or
  (Seq_contains (Seq_range 0 3) i1@282@01)
  (not (Seq_contains (Seq_range 0 3) i1@282@01))))
(push) ; 4
; [then-branch: 152 | i1@282@01 in [0..3] && i2@283@01 in [0..3] && i1@282@01 != i2@283@01 | live]
; [else-branch: 152 | !(i1@282@01 in [0..3] && i2@283@01 in [0..3] && i1@282@01 != i2@283@01) | live]
(push) ; 5
; [then-branch: 152 | i1@282@01 in [0..3] && i2@283@01 in [0..3] && i1@282@01 != i2@283@01]
(assert (and
  (Seq_contains (Seq_range 0 3) i1@282@01)
  (and (Seq_contains (Seq_range 0 3) i2@283@01) (not (= i1@282@01 i2@283@01)))))
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(push) ; 6
(assert (not (>= i1@282@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i1@282@01 (Seq_length xs@276@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 6
(assert (not (>= i2@283@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i2@283@01 (Seq_length xs@276@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 152 | !(i1@282@01 in [0..3] && i2@283@01 in [0..3] && i1@282@01 != i2@283@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 3) i1@282@01)
    (and (Seq_contains (Seq_range 0 3) i2@283@01) (not (= i1@282@01 i2@283@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 3) i1@282@01)
    (and (Seq_contains (Seq_range 0 3) i2@283@01) (not (= i1@282@01 i2@283@01))))
  (and
    (Seq_contains (Seq_range 0 3) i1@282@01)
    (Seq_contains (Seq_range 0 3) i2@283@01)
    (not (= i1@282@01 i2@283@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 3) i1@282@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@283@01)
        (not (= i1@282@01 i2@283@01)))))
  (and
    (Seq_contains (Seq_range 0 3) i1@282@01)
    (and (Seq_contains (Seq_range 0 3) i2@283@01) (not (= i1@282@01 i2@283@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i1@282@01 Int) (i2@283@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@282@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@282@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@283@01)
          (not (Seq_contains (Seq_range 0 3) i2@283@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@282@01)
      (not (Seq_contains (Seq_range 0 3) i1@282@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@282@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@283@01)
          (not (= i1@282@01 i2@283@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@282@01)
        (Seq_contains (Seq_range 0 3) i2@283@01)
        (not (= i1@282@01 i2@283@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@282@01)
          (and
            (Seq_contains (Seq_range 0 3) i2@283@01)
            (not (= i1@282@01 i2@283@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@282@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@283@01)
          (not (= i1@282@01 i2@283@01))))))
  :pattern ((Seq_contains (Seq_range 0 3) i1@282@01) (Seq_contains
    (Seq_range 0 3)
    i2@283@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i1@282@01) (Seq_contains_trigger
    (Seq_range 0 3)
    i2@283@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@139@10@139@98-aux|)))
(assert (forall ((i1@282@01 Int) (i2@283@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@282@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@282@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@283@01)
          (not (Seq_contains (Seq_range 0 3) i2@283@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@282@01)
      (not (Seq_contains (Seq_range 0 3) i1@282@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@282@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@283@01)
          (not (= i1@282@01 i2@283@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@282@01)
        (Seq_contains (Seq_range 0 3) i2@283@01)
        (not (= i1@282@01 i2@283@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@282@01)
          (and
            (Seq_contains (Seq_range 0 3) i2@283@01)
            (not (= i1@282@01 i2@283@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@282@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@283@01)
          (not (= i1@282@01 i2@283@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i1@282@01) (Seq_contains_trigger
    (Seq_range 0 3)
    i2@283@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@139@10@139@98-aux|)))
(assert (forall ((i1@282@01 Int) (i2@283@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@282@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@282@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@283@01)
          (not (Seq_contains (Seq_range 0 3) i2@283@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@282@01)
      (not (Seq_contains (Seq_range 0 3) i1@282@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@282@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@283@01)
          (not (= i1@282@01 i2@283@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@282@01)
        (Seq_contains (Seq_range 0 3) i2@283@01)
        (not (= i1@282@01 i2@283@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@282@01)
          (and
            (Seq_contains (Seq_range 0 3) i2@283@01)
            (not (= i1@282@01 i2@283@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@282@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@283@01)
          (not (= i1@282@01 i2@283@01))))))
  :pattern ((Seq_contains (Seq_range 0 3) i1@282@01) (Seq_index
    xs@276@01
    i2@283@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i1@282@01) (Seq_index
    xs@276@01
    i2@283@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@139@10@139@98-aux|)))
(assert (forall ((i1@282@01 Int) (i2@283@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@282@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@282@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@283@01)
          (not (Seq_contains (Seq_range 0 3) i2@283@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@282@01)
      (not (Seq_contains (Seq_range 0 3) i1@282@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@282@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@283@01)
          (not (= i1@282@01 i2@283@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@282@01)
        (Seq_contains (Seq_range 0 3) i2@283@01)
        (not (= i1@282@01 i2@283@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@282@01)
          (and
            (Seq_contains (Seq_range 0 3) i2@283@01)
            (not (= i1@282@01 i2@283@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@282@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@283@01)
          (not (= i1@282@01 i2@283@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i1@282@01) (Seq_index
    xs@276@01
    i2@283@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@139@10@139@98-aux|)))
(assert (forall ((i1@282@01 Int) (i2@283@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@282@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@282@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@283@01)
          (not (Seq_contains (Seq_range 0 3) i2@283@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@282@01)
      (not (Seq_contains (Seq_range 0 3) i1@282@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@282@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@283@01)
          (not (= i1@282@01 i2@283@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@282@01)
        (Seq_contains (Seq_range 0 3) i2@283@01)
        (not (= i1@282@01 i2@283@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@282@01)
          (and
            (Seq_contains (Seq_range 0 3) i2@283@01)
            (not (= i1@282@01 i2@283@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@282@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@283@01)
          (not (= i1@282@01 i2@283@01))))))
  :pattern ((Seq_contains (Seq_range 0 3) i2@283@01) (Seq_index
    xs@276@01
    i1@282@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i2@283@01) (Seq_index
    xs@276@01
    i1@282@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@139@10@139@98-aux|)))
(assert (forall ((i1@282@01 Int) (i2@283@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@282@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@282@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@283@01)
          (not (Seq_contains (Seq_range 0 3) i2@283@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@282@01)
      (not (Seq_contains (Seq_range 0 3) i1@282@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@282@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@283@01)
          (not (= i1@282@01 i2@283@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@282@01)
        (Seq_contains (Seq_range 0 3) i2@283@01)
        (not (= i1@282@01 i2@283@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@282@01)
          (and
            (Seq_contains (Seq_range 0 3) i2@283@01)
            (not (= i1@282@01 i2@283@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@282@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@283@01)
          (not (= i1@282@01 i2@283@01))))))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i2@283@01) (Seq_index
    xs@276@01
    i1@282@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@139@10@139@98-aux|)))
(assert (forall ((i1@282@01 Int) (i2@283@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 3) i1@282@01)
      (and
        (Seq_contains (Seq_range 0 3) i1@282@01)
        (or
          (Seq_contains (Seq_range 0 3) i2@283@01)
          (not (Seq_contains (Seq_range 0 3) i2@283@01)))))
    (or
      (Seq_contains (Seq_range 0 3) i1@282@01)
      (not (Seq_contains (Seq_range 0 3) i1@282@01)))
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@282@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@283@01)
          (not (= i1@282@01 i2@283@01))))
      (and
        (Seq_contains (Seq_range 0 3) i1@282@01)
        (Seq_contains (Seq_range 0 3) i2@283@01)
        (not (= i1@282@01 i2@283@01))))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 3) i1@282@01)
          (and
            (Seq_contains (Seq_range 0 3) i2@283@01)
            (not (= i1@282@01 i2@283@01)))))
      (and
        (Seq_contains (Seq_range 0 3) i1@282@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@283@01)
          (not (= i1@282@01 i2@283@01))))))
  :pattern ((Seq_index xs@276@01 i1@282@01) (Seq_index xs@276@01 i2@283@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@139@10@139@98-aux|)))
(assert (forall ((i1@282@01 Int) (i2@283@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@282@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@283@01)
        (not (= i1@282@01 i2@283@01))))
    (not (= (Seq_index xs@276@01 i1@282@01) (Seq_index xs@276@01 i2@283@01))))
  :pattern ((Seq_contains (Seq_range 0 3) i1@282@01) (Seq_contains
    (Seq_range 0 3)
    i2@283@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i1@282@01) (Seq_contains_trigger
    (Seq_range 0 3)
    i2@283@01))
  :pattern ((Seq_contains (Seq_range 0 3) i1@282@01) (Seq_index
    xs@276@01
    i2@283@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i1@282@01) (Seq_index
    xs@276@01
    i2@283@01))
  :pattern ((Seq_contains (Seq_range 0 3) i2@283@01) (Seq_index
    xs@276@01
    i1@282@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 3) i2@283@01) (Seq_index
    xs@276@01
    i1@282@01))
  :pattern ((Seq_index xs@276@01 i1@282@01) (Seq_index xs@276@01 i2@283@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@139@10@139@98|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall k: Int ::0 <= k && k < 3 ==> acc(xs[k].f, write))
(declare-const k@284@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= k && k < 3
; [eval] 0 <= k
(push) ; 4
; [then-branch: 153 | !(0 <= k@284@01) | live]
; [else-branch: 153 | 0 <= k@284@01 | live]
(push) ; 5
; [then-branch: 153 | !(0 <= k@284@01)]
(assert (not (<= 0 k@284@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 153 | 0 <= k@284@01]
(assert (<= 0 k@284@01))
; [eval] k < 3
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@284@01) (not (<= 0 k@284@01))))
(assert (and (<= 0 k@284@01) (< k@284@01 3)))
; [eval] xs[k]
(push) ; 4
(assert (not (>= k@284@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< k@284@01 (Seq_length xs@276@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-const $t@285@01 $FVF<f>)
(declare-fun inv@286@01 ($Ref) Int)
(declare-fun img@287@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@284@01 Int)) (!
  (=>
    (and (<= 0 k@284@01) (< k@284@01 3))
    (or (<= 0 k@284@01) (not (<= 0 k@284@01))))
  :pattern ((Seq_index xs@276@01 k@284@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((k1@284@01 Int) (k2@284@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@284@01) (< k1@284@01 3))
      (and (<= 0 k2@284@01) (< k2@284@01 3))
      (= (Seq_index xs@276@01 k1@284@01) (Seq_index xs@276@01 k2@284@01)))
    (= k1@284@01 k2@284@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@284@01 Int)) (!
  (=>
    (and (<= 0 k@284@01) (< k@284@01 3))
    (and
      (= (inv@286@01 (Seq_index xs@276@01 k@284@01)) k@284@01)
      (img@287@01 (Seq_index xs@276@01 k@284@01))))
  :pattern ((Seq_index xs@276@01 k@284@01))
  :qid |quant-u-12520|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
    (= (Seq_index xs@276@01 (inv@286@01 r)) r))
  :pattern ((inv@286@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((k@284@01 Int)) (!
  (=>
    (and (<= 0 k@284@01) (< k@284@01 3))
    (not (= (Seq_index xs@276@01 k@284@01) $Ref.null)))
  :pattern ((Seq_index xs@276@01 k@284@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 10 == fun06(x, i, xs)
(declare-const $t@288@01 $Snap)
(assert (= $t@288@01 $Snap.unit))
; [eval] 10 == fun06(x, i, xs)
; [eval] fun06(x, i, xs)
(set-option :timeout 0)
(push) ; 3
; [eval] |xs| > 10
; [eval] |xs|
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r x@274@01)
    (>
      (+
        (ite (= r x@274@01) $Perm.Write $Perm.No)
        (ite
          (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-12521|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@289@01 $FVF<f>)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=
  ($FVF.lookup_f (as sm@289@01  $FVF<f>) x@274@01)
  ($FVF.lookup_f (as sm@279@01  $FVF<f>) x@274@01)))
(assert (=>
  (and
    (img@287@01 x@274@01)
    (and (<= 0 (inv@286@01 x@274@01)) (< (inv@286@01 x@274@01) 3)))
  (=
    ($FVF.lookup_f (as sm@289@01  $FVF<f>) x@274@01)
    ($FVF.lookup_f $t@285@01 x@274@01))))
; [eval] i > 0
; [eval] (forall i1: Int, i2: Int ::(i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@290@01 Int)
(declare-const i2@291@01 Int)
(push) ; 4
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2)
; [eval] (i1 in [0..3))
; [eval] [0..3)
(push) ; 5
; [then-branch: 154 | !(i1@290@01 in [0..3]) | live]
; [else-branch: 154 | i1@290@01 in [0..3] | live]
(push) ; 6
; [then-branch: 154 | !(i1@290@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i1@290@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 154 | i1@290@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i1@290@01))
; [eval] (i2 in [0..3))
; [eval] [0..3)
(push) ; 7
; [then-branch: 155 | !(i2@291@01 in [0..3]) | live]
; [else-branch: 155 | i2@291@01 in [0..3] | live]
(push) ; 8
; [then-branch: 155 | !(i2@291@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i2@291@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 155 | i2@291@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i2@291@01))
; [eval] i1 != i2
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 3) i2@291@01)
  (not (Seq_contains (Seq_range 0 3) i2@291@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 3) i1@290@01)
  (and
    (Seq_contains (Seq_range 0 3) i1@290@01)
    (or
      (Seq_contains (Seq_range 0 3) i2@291@01)
      (not (Seq_contains (Seq_range 0 3) i2@291@01))))))
(assert (or
  (Seq_contains (Seq_range 0 3) i1@290@01)
  (not (Seq_contains (Seq_range 0 3) i1@290@01))))
(push) ; 5
; [then-branch: 156 | i1@290@01 in [0..3] && i2@291@01 in [0..3] && i1@290@01 != i2@291@01 | live]
; [else-branch: 156 | !(i1@290@01 in [0..3] && i2@291@01 in [0..3] && i1@290@01 != i2@291@01) | live]
(push) ; 6
; [then-branch: 156 | i1@290@01 in [0..3] && i2@291@01 in [0..3] && i1@290@01 != i2@291@01]
(assert (and
  (Seq_contains (Seq_range 0 3) i1@290@01)
  (and (Seq_contains (Seq_range 0 3) i2@291@01) (not (= i1@290@01 i2@291@01)))))
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(push) ; 7
(assert (not (>= i1@290@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i1@290@01 (Seq_length xs@276@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 7
(assert (not (>= i2@291@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i2@291@01 (Seq_length xs@276@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 156 | !(i1@290@01 in [0..3] && i2@291@01 in [0..3] && i1@290@01 != i2@291@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 3) i1@290@01)
    (and (Seq_contains (Seq_range 0 3) i2@291@01) (not (= i1@290@01 i2@291@01))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 3) i1@290@01)
    (and (Seq_contains (Seq_range 0 3) i2@291@01) (not (= i1@290@01 i2@291@01))))
  (and
    (Seq_contains (Seq_range 0 3) i1@290@01)
    (Seq_contains (Seq_range 0 3) i2@291@01)
    (not (= i1@290@01 i2@291@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 3) i1@290@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@291@01)
        (not (= i1@290@01 i2@291@01)))))
  (and
    (Seq_contains (Seq_range 0 3) i1@290@01)
    (and (Seq_contains (Seq_range 0 3) i2@291@01) (not (= i1@290@01 i2@291@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((i1@290@01 Int) (i2@291@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@290@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@291@01)
        (not (= i1@290@01 i2@291@01))))
    (not (= (Seq_index xs@276@01 i1@290@01) (Seq_index xs@276@01 i2@291@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@132@12@132@100|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@290@01 Int) (i2@291@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@290@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@291@01)
        (not (= i1@290@01 i2@291@01))))
    (not (= (Seq_index xs@276@01 i1@290@01) (Seq_index xs@276@01 i2@291@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@132@12@132@100|)))
(declare-const k@292@01 Int)
(push) ; 4
; [eval] 0 <= k && k < 3
; [eval] 0 <= k
(push) ; 5
; [then-branch: 157 | !(0 <= k@292@01) | live]
; [else-branch: 157 | 0 <= k@292@01 | live]
(push) ; 6
; [then-branch: 157 | !(0 <= k@292@01)]
(assert (not (<= 0 k@292@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 157 | 0 <= k@292@01]
(assert (<= 0 k@292@01))
; [eval] k < 3
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@292@01) (not (<= 0 k@292@01))))
(assert (and (<= 0 k@292@01) (< k@292@01 3)))
; [eval] xs[k]
(push) ; 5
(assert (not (>= k@292@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@292@01 (Seq_length xs@276@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@293@01 ($Ref) Int)
(declare-fun img@294@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@292@01 Int)) (!
  (=>
    (and (<= 0 k@292@01) (< k@292@01 3))
    (or (<= 0 k@292@01) (not (<= 0 k@292@01))))
  :pattern ((Seq_index xs@276@01 k@292@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((k1@292@01 Int) (k2@292@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@292@01) (< k1@292@01 3))
      (and (<= 0 k2@292@01) (< k2@292@01 3))
      (= (Seq_index xs@276@01 k1@292@01) (Seq_index xs@276@01 k2@292@01)))
    (= k1@292@01 k2@292@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@292@01 Int)) (!
  (=>
    (and (<= 0 k@292@01) (< k@292@01 3))
    (and
      (= (inv@293@01 (Seq_index xs@276@01 k@292@01)) k@292@01)
      (img@294@01 (Seq_index xs@276@01 k@292@01))))
  :pattern ((Seq_index xs@276@01 k@292@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@294@01 r) (and (<= 0 (inv@293@01 r)) (< (inv@293@01 r) 3)))
    (= (Seq_index xs@276@01 (inv@293@01 r)) r))
  :pattern ((inv@293@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@293@01 r)) (< (inv@293@01 r) 3))
      (img@294@01 r)
      (= r (Seq_index xs@276@01 (inv@293@01 r))))
    (>
      (+
        (ite
          (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
          $Perm.Write
          $Perm.No)
        (ite (= r x@274@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-12523|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@295@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@295@01  $FVF<f>)))
      (and (and (<= 0 (inv@293@01 r)) (< (inv@293@01 r) 3)) (img@294@01 r)))
    (=>
      (and (and (<= 0 (inv@293@01 r)) (< (inv@293@01 r) 3)) (img@294@01 r))
      (Set_in r ($FVF.domain_f (as sm@295@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@295@01  $FVF<f>))))
  :qid |qp.fvfDomDef113|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@293@01 r)) (< (inv@293@01 r) 3)) (img@294@01 r))
      (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3))))
    (= ($FVF.lookup_f (as sm@295@01  $FVF<f>) r) ($FVF.lookup_f $t@285@01 r)))
  :pattern (($FVF.lookup_f (as sm@295@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@285@01 r))
  :qid |qp.fvfValDef111|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@293@01 r)) (< (inv@293@01 r) 3)) (img@294@01 r))
      (= r x@274@01))
    (=
      ($FVF.lookup_f (as sm@295@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@279@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@295@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@279@01  $FVF<f>) r))
  :qid |qp.fvfValDef112|)))
(assert (fun06%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@289@01  $FVF<f>) x@274@01))
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<f>To$Snap (as sm@295@01  $FVF<f>)))))) x@274@01 i@275@01 xs@276@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((k@292@01 Int)) (!
  (=>
    (and (<= 0 k@292@01) (< k@292@01 3))
    (and
      (= (inv@293@01 (Seq_index xs@276@01 k@292@01)) k@292@01)
      (img@294@01 (Seq_index xs@276@01 k@292@01))))
  :pattern ((Seq_index xs@276@01 k@292@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@294@01 r) (and (<= 0 (inv@293@01 r)) (< (inv@293@01 r) 3)))
    (= (Seq_index xs@276@01 (inv@293@01 r)) r))
  :pattern ((inv@293@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@295@01  $FVF<f>)))
      (and (and (<= 0 (inv@293@01 r)) (< (inv@293@01 r) 3)) (img@294@01 r)))
    (=>
      (and (and (<= 0 (inv@293@01 r)) (< (inv@293@01 r) 3)) (img@294@01 r))
      (Set_in r ($FVF.domain_f (as sm@295@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@295@01  $FVF<f>))))
  :qid |qp.fvfDomDef113|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@293@01 r)) (< (inv@293@01 r) 3)) (img@294@01 r))
      (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3))))
    (= ($FVF.lookup_f (as sm@295@01  $FVF<f>) r) ($FVF.lookup_f $t@285@01 r)))
  :pattern (($FVF.lookup_f (as sm@295@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@285@01 r))
  :qid |qp.fvfValDef111|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@293@01 r)) (< (inv@293@01 r) 3)) (img@294@01 r))
      (= r x@274@01))
    (=
      ($FVF.lookup_f (as sm@295@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@279@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@295@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@279@01  $FVF<f>) r))
  :qid |qp.fvfValDef112|)))
(assert (and
  (=
    ($FVF.lookup_f (as sm@289@01  $FVF<f>) x@274@01)
    ($FVF.lookup_f (as sm@279@01  $FVF<f>) x@274@01))
  (=>
    (and
      (img@287@01 x@274@01)
      (and (<= 0 (inv@286@01 x@274@01)) (< (inv@286@01 x@274@01) 3)))
    (=
      ($FVF.lookup_f (as sm@289@01  $FVF<f>) x@274@01)
      ($FVF.lookup_f $t@285@01 x@274@01)))
  (forall ((i1@290@01 Int) (i2@291@01 Int)) (!
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@290@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@291@01)
          (not (= i1@290@01 i2@291@01))))
      (not (= (Seq_index xs@276@01 i1@290@01) (Seq_index xs@276@01 i2@291@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@132@12@132@100|))
  (forall ((k@292@01 Int)) (!
    (=>
      (and (<= 0 k@292@01) (< k@292@01 3))
      (or (<= 0 k@292@01) (not (<= 0 k@292@01))))
    :pattern ((Seq_index xs@276@01 k@292@01))
    :qid |f-aux|))
  (fun06%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@289@01  $FVF<f>) x@274@01))
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<f>To$Snap (as sm@295@01  $FVF<f>)))))) x@274@01 i@275@01 xs@276@01)))
(assert (=
  10
  (fun06 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@289@01  $FVF<f>) x@274@01))
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<f>To$Snap (as sm@295@01  $FVF<f>)))))) x@274@01 i@275@01 xs@276@01)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert 10 == fun06(x, i, xs)
; [eval] 10 == fun06(x, i, xs)
; [eval] fun06(x, i, xs)
(set-option :timeout 0)
(push) ; 3
; [eval] |xs| > 10
; [eval] |xs|
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r x@274@01)
    (>
      (+
        (ite (= r x@274@01) $Perm.Write $Perm.No)
        (ite
          (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-12524|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
; [eval] i > 0
; [eval] (forall i1: Int, i2: Int ::(i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@296@01 Int)
(declare-const i2@297@01 Int)
(push) ; 4
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2)
; [eval] (i1 in [0..3))
; [eval] [0..3)
(push) ; 5
; [then-branch: 158 | !(i1@296@01 in [0..3]) | live]
; [else-branch: 158 | i1@296@01 in [0..3] | live]
(push) ; 6
; [then-branch: 158 | !(i1@296@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i1@296@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 158 | i1@296@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i1@296@01))
; [eval] (i2 in [0..3))
; [eval] [0..3)
(push) ; 7
; [then-branch: 159 | !(i2@297@01 in [0..3]) | live]
; [else-branch: 159 | i2@297@01 in [0..3] | live]
(push) ; 8
; [then-branch: 159 | !(i2@297@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i2@297@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 159 | i2@297@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i2@297@01))
; [eval] i1 != i2
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 3) i2@297@01)
  (not (Seq_contains (Seq_range 0 3) i2@297@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 3) i1@296@01)
  (and
    (Seq_contains (Seq_range 0 3) i1@296@01)
    (or
      (Seq_contains (Seq_range 0 3) i2@297@01)
      (not (Seq_contains (Seq_range 0 3) i2@297@01))))))
(assert (or
  (Seq_contains (Seq_range 0 3) i1@296@01)
  (not (Seq_contains (Seq_range 0 3) i1@296@01))))
(push) ; 5
; [then-branch: 160 | i1@296@01 in [0..3] && i2@297@01 in [0..3] && i1@296@01 != i2@297@01 | live]
; [else-branch: 160 | !(i1@296@01 in [0..3] && i2@297@01 in [0..3] && i1@296@01 != i2@297@01) | live]
(push) ; 6
; [then-branch: 160 | i1@296@01 in [0..3] && i2@297@01 in [0..3] && i1@296@01 != i2@297@01]
(assert (and
  (Seq_contains (Seq_range 0 3) i1@296@01)
  (and (Seq_contains (Seq_range 0 3) i2@297@01) (not (= i1@296@01 i2@297@01)))))
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(push) ; 7
(assert (not (>= i1@296@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i1@296@01 (Seq_length xs@276@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 7
(assert (not (>= i2@297@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i2@297@01 (Seq_length xs@276@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 160 | !(i1@296@01 in [0..3] && i2@297@01 in [0..3] && i1@296@01 != i2@297@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 3) i1@296@01)
    (and (Seq_contains (Seq_range 0 3) i2@297@01) (not (= i1@296@01 i2@297@01))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 3) i1@296@01)
    (and (Seq_contains (Seq_range 0 3) i2@297@01) (not (= i1@296@01 i2@297@01))))
  (and
    (Seq_contains (Seq_range 0 3) i1@296@01)
    (Seq_contains (Seq_range 0 3) i2@297@01)
    (not (= i1@296@01 i2@297@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 3) i1@296@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@297@01)
        (not (= i1@296@01 i2@297@01)))))
  (and
    (Seq_contains (Seq_range 0 3) i1@296@01)
    (and (Seq_contains (Seq_range 0 3) i2@297@01) (not (= i1@296@01 i2@297@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((i1@296@01 Int) (i2@297@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@296@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@297@01)
        (not (= i1@296@01 i2@297@01))))
    (not (= (Seq_index xs@276@01 i1@296@01) (Seq_index xs@276@01 i2@297@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@132@12@132@100|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@296@01 Int) (i2@297@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@296@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@297@01)
        (not (= i1@296@01 i2@297@01))))
    (not (= (Seq_index xs@276@01 i1@296@01) (Seq_index xs@276@01 i2@297@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@132@12@132@100|)))
(declare-const k@298@01 Int)
(push) ; 4
; [eval] 0 <= k && k < 3
; [eval] 0 <= k
(push) ; 5
; [then-branch: 161 | !(0 <= k@298@01) | live]
; [else-branch: 161 | 0 <= k@298@01 | live]
(push) ; 6
; [then-branch: 161 | !(0 <= k@298@01)]
(assert (not (<= 0 k@298@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 161 | 0 <= k@298@01]
(assert (<= 0 k@298@01))
; [eval] k < 3
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@298@01) (not (<= 0 k@298@01))))
(assert (and (<= 0 k@298@01) (< k@298@01 3)))
; [eval] xs[k]
(push) ; 5
(assert (not (>= k@298@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@298@01 (Seq_length xs@276@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@299@01 ($Ref) Int)
(declare-fun img@300@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@298@01 Int)) (!
  (=>
    (and (<= 0 k@298@01) (< k@298@01 3))
    (or (<= 0 k@298@01) (not (<= 0 k@298@01))))
  :pattern ((Seq_index xs@276@01 k@298@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((k1@298@01 Int) (k2@298@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@298@01) (< k1@298@01 3))
      (and (<= 0 k2@298@01) (< k2@298@01 3))
      (= (Seq_index xs@276@01 k1@298@01) (Seq_index xs@276@01 k2@298@01)))
    (= k1@298@01 k2@298@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@298@01 Int)) (!
  (=>
    (and (<= 0 k@298@01) (< k@298@01 3))
    (and
      (= (inv@299@01 (Seq_index xs@276@01 k@298@01)) k@298@01)
      (img@300@01 (Seq_index xs@276@01 k@298@01))))
  :pattern ((Seq_index xs@276@01 k@298@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@300@01 r) (and (<= 0 (inv@299@01 r)) (< (inv@299@01 r) 3)))
    (= (Seq_index xs@276@01 (inv@299@01 r)) r))
  :pattern ((inv@299@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@299@01 r)) (< (inv@299@01 r) 3))
      (img@300@01 r)
      (= r (Seq_index xs@276@01 (inv@299@01 r))))
    (>
      (+
        (ite
          (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
          $Perm.Write
          $Perm.No)
        (ite (= r x@274@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-12526|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@301@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@301@01  $FVF<f>)))
      (and (and (<= 0 (inv@299@01 r)) (< (inv@299@01 r) 3)) (img@300@01 r)))
    (=>
      (and (and (<= 0 (inv@299@01 r)) (< (inv@299@01 r) 3)) (img@300@01 r))
      (Set_in r ($FVF.domain_f (as sm@301@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@301@01  $FVF<f>))))
  :qid |qp.fvfDomDef116|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@299@01 r)) (< (inv@299@01 r) 3)) (img@300@01 r))
      (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3))))
    (= ($FVF.lookup_f (as sm@301@01  $FVF<f>) r) ($FVF.lookup_f $t@285@01 r)))
  :pattern (($FVF.lookup_f (as sm@301@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@285@01 r))
  :qid |qp.fvfValDef114|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@299@01 r)) (< (inv@299@01 r) 3)) (img@300@01 r))
      (= r x@274@01))
    (=
      ($FVF.lookup_f (as sm@301@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@279@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@301@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@279@01  $FVF<f>) r))
  :qid |qp.fvfValDef115|)))
(assert (fun06%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@289@01  $FVF<f>) x@274@01))
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<f>To$Snap (as sm@301@01  $FVF<f>)))))) x@274@01 i@275@01 xs@276@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((k@298@01 Int)) (!
  (=>
    (and (<= 0 k@298@01) (< k@298@01 3))
    (and
      (= (inv@299@01 (Seq_index xs@276@01 k@298@01)) k@298@01)
      (img@300@01 (Seq_index xs@276@01 k@298@01))))
  :pattern ((Seq_index xs@276@01 k@298@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@300@01 r) (and (<= 0 (inv@299@01 r)) (< (inv@299@01 r) 3)))
    (= (Seq_index xs@276@01 (inv@299@01 r)) r))
  :pattern ((inv@299@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@301@01  $FVF<f>)))
      (and (and (<= 0 (inv@299@01 r)) (< (inv@299@01 r) 3)) (img@300@01 r)))
    (=>
      (and (and (<= 0 (inv@299@01 r)) (< (inv@299@01 r) 3)) (img@300@01 r))
      (Set_in r ($FVF.domain_f (as sm@301@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@301@01  $FVF<f>))))
  :qid |qp.fvfDomDef116|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@299@01 r)) (< (inv@299@01 r) 3)) (img@300@01 r))
      (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3))))
    (= ($FVF.lookup_f (as sm@301@01  $FVF<f>) r) ($FVF.lookup_f $t@285@01 r)))
  :pattern (($FVF.lookup_f (as sm@301@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@285@01 r))
  :qid |qp.fvfValDef114|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@299@01 r)) (< (inv@299@01 r) 3)) (img@300@01 r))
      (= r x@274@01))
    (=
      ($FVF.lookup_f (as sm@301@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@279@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@301@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@279@01  $FVF<f>) r))
  :qid |qp.fvfValDef115|)))
(assert (and
  (forall ((i1@296@01 Int) (i2@297@01 Int)) (!
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@296@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@297@01)
          (not (= i1@296@01 i2@297@01))))
      (not (= (Seq_index xs@276@01 i1@296@01) (Seq_index xs@276@01 i2@297@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@132@12@132@100|))
  (forall ((k@298@01 Int)) (!
    (=>
      (and (<= 0 k@298@01) (< k@298@01 3))
      (or (<= 0 k@298@01) (not (<= 0 k@298@01))))
    :pattern ((Seq_index xs@276@01 k@298@01))
    :qid |f-aux|))
  (fun06%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@289@01  $FVF<f>) x@274@01))
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<f>To$Snap (as sm@301@01  $FVF<f>)))))) x@274@01 i@275@01 xs@276@01)))
(push) ; 3
(assert (not (=
  10
  (fun06 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@289@01  $FVF<f>) x@274@01))
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<f>To$Snap (as sm@301@01  $FVF<f>)))))) x@274@01 i@275@01 xs@276@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  10
  (fun06 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@289@01  $FVF<f>) x@274@01))
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<f>To$Snap (as sm@301@01  $FVF<f>)))))) x@274@01 i@275@01 xs@276@01)))
; [exec]
; x.f := 0
; Precomputing data for removing quantified permissions
(define-fun pTaken@302@01 ((r $Ref)) $Perm
  (ite
    (= r x@274@01)
    ($Perm.min (ite (= r x@274@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
(define-fun pTaken@303@01 ((r $Ref)) $Perm
  (ite
    (= r x@274@01)
    ($Perm.min
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@302@01 r)))
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
(assert (not (= (- $Perm.Write (pTaken@302@01 x@274@01)) $Perm.No)))
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
  (=> (= r x@274@01) (= (- $Perm.Write (pTaken@302@01 r)) $Perm.No))
  
  :qid |quant-u-12529|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@304@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_f (as sm@304@01  $FVF<f>) x@274@01) 0))
; [exec]
; assert 10 == fun06(x, i, xs)
; [eval] 10 == fun06(x, i, xs)
; [eval] fun06(x, i, xs)
(set-option :timeout 0)
(push) ; 3
; [eval] |xs| > 10
; [eval] |xs|
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r x@274@01)
    (>
      (+
        (ite (= r x@274@01) $Perm.Write $Perm.No)
        (ite
          (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-12530|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@305@01 $FVF<f>)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=
  ($FVF.lookup_f (as sm@305@01  $FVF<f>) x@274@01)
  ($FVF.lookup_f (as sm@304@01  $FVF<f>) x@274@01)))
(assert (=>
  (and
    (img@287@01 x@274@01)
    (and (<= 0 (inv@286@01 x@274@01)) (< (inv@286@01 x@274@01) 3)))
  (=
    ($FVF.lookup_f (as sm@305@01  $FVF<f>) x@274@01)
    ($FVF.lookup_f $t@285@01 x@274@01))))
; [eval] i > 0
; [eval] (forall i1: Int, i2: Int ::(i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@306@01 Int)
(declare-const i2@307@01 Int)
(push) ; 4
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2)
; [eval] (i1 in [0..3))
; [eval] [0..3)
(push) ; 5
; [then-branch: 162 | !(i1@306@01 in [0..3]) | live]
; [else-branch: 162 | i1@306@01 in [0..3] | live]
(push) ; 6
; [then-branch: 162 | !(i1@306@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i1@306@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 162 | i1@306@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i1@306@01))
; [eval] (i2 in [0..3))
; [eval] [0..3)
(push) ; 7
; [then-branch: 163 | !(i2@307@01 in [0..3]) | live]
; [else-branch: 163 | i2@307@01 in [0..3] | live]
(push) ; 8
; [then-branch: 163 | !(i2@307@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i2@307@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 163 | i2@307@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i2@307@01))
; [eval] i1 != i2
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 3) i2@307@01)
  (not (Seq_contains (Seq_range 0 3) i2@307@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains (Seq_range 0 3) i1@306@01)
  (and
    (Seq_contains (Seq_range 0 3) i1@306@01)
    (or
      (Seq_contains (Seq_range 0 3) i2@307@01)
      (not (Seq_contains (Seq_range 0 3) i2@307@01))))))
(assert (or
  (Seq_contains (Seq_range 0 3) i1@306@01)
  (not (Seq_contains (Seq_range 0 3) i1@306@01))))
(push) ; 5
; [then-branch: 164 | i1@306@01 in [0..3] && i2@307@01 in [0..3] && i1@306@01 != i2@307@01 | live]
; [else-branch: 164 | !(i1@306@01 in [0..3] && i2@307@01 in [0..3] && i1@306@01 != i2@307@01) | live]
(push) ; 6
; [then-branch: 164 | i1@306@01 in [0..3] && i2@307@01 in [0..3] && i1@306@01 != i2@307@01]
(assert (and
  (Seq_contains (Seq_range 0 3) i1@306@01)
  (and (Seq_contains (Seq_range 0 3) i2@307@01) (not (= i1@306@01 i2@307@01)))))
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(push) ; 7
(assert (not (>= i1@306@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i1@306@01 (Seq_length xs@276@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 7
(assert (not (>= i2@307@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i2@307@01 (Seq_length xs@276@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 164 | !(i1@306@01 in [0..3] && i2@307@01 in [0..3] && i1@306@01 != i2@307@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 3) i1@306@01)
    (and (Seq_contains (Seq_range 0 3) i2@307@01) (not (= i1@306@01 i2@307@01))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 3) i1@306@01)
    (and (Seq_contains (Seq_range 0 3) i2@307@01) (not (= i1@306@01 i2@307@01))))
  (and
    (Seq_contains (Seq_range 0 3) i1@306@01)
    (Seq_contains (Seq_range 0 3) i2@307@01)
    (not (= i1@306@01 i2@307@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 3) i1@306@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@307@01)
        (not (= i1@306@01 i2@307@01)))))
  (and
    (Seq_contains (Seq_range 0 3) i1@306@01)
    (and (Seq_contains (Seq_range 0 3) i2@307@01) (not (= i1@306@01 i2@307@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((i1@306@01 Int) (i2@307@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@306@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@307@01)
        (not (= i1@306@01 i2@307@01))))
    (not (= (Seq_index xs@276@01 i1@306@01) (Seq_index xs@276@01 i2@307@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@132@12@132@100|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@306@01 Int) (i2@307@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@306@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@307@01)
        (not (= i1@306@01 i2@307@01))))
    (not (= (Seq_index xs@276@01 i1@306@01) (Seq_index xs@276@01 i2@307@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@132@12@132@100|)))
(declare-const k@308@01 Int)
(push) ; 4
; [eval] 0 <= k && k < 3
; [eval] 0 <= k
(push) ; 5
; [then-branch: 165 | !(0 <= k@308@01) | live]
; [else-branch: 165 | 0 <= k@308@01 | live]
(push) ; 6
; [then-branch: 165 | !(0 <= k@308@01)]
(assert (not (<= 0 k@308@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 165 | 0 <= k@308@01]
(assert (<= 0 k@308@01))
; [eval] k < 3
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@308@01) (not (<= 0 k@308@01))))
(assert (and (<= 0 k@308@01) (< k@308@01 3)))
; [eval] xs[k]
(push) ; 5
(assert (not (>= k@308@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@308@01 (Seq_length xs@276@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@309@01 ($Ref) Int)
(declare-fun img@310@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@308@01 Int)) (!
  (=>
    (and (<= 0 k@308@01) (< k@308@01 3))
    (or (<= 0 k@308@01) (not (<= 0 k@308@01))))
  :pattern ((Seq_index xs@276@01 k@308@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((k1@308@01 Int) (k2@308@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@308@01) (< k1@308@01 3))
      (and (<= 0 k2@308@01) (< k2@308@01 3))
      (= (Seq_index xs@276@01 k1@308@01) (Seq_index xs@276@01 k2@308@01)))
    (= k1@308@01 k2@308@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@308@01 Int)) (!
  (=>
    (and (<= 0 k@308@01) (< k@308@01 3))
    (and
      (= (inv@309@01 (Seq_index xs@276@01 k@308@01)) k@308@01)
      (img@310@01 (Seq_index xs@276@01 k@308@01))))
  :pattern ((Seq_index xs@276@01 k@308@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@310@01 r) (and (<= 0 (inv@309@01 r)) (< (inv@309@01 r) 3)))
    (= (Seq_index xs@276@01 (inv@309@01 r)) r))
  :pattern ((inv@309@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@309@01 r)) (< (inv@309@01 r) 3))
      (img@310@01 r)
      (= r (Seq_index xs@276@01 (inv@309@01 r))))
    (>
      (+
        (ite
          (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
          $Perm.Write
          $Perm.No)
        (ite (= r x@274@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-12532|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@311@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@311@01  $FVF<f>)))
      (and (and (<= 0 (inv@309@01 r)) (< (inv@309@01 r) 3)) (img@310@01 r)))
    (=>
      (and (and (<= 0 (inv@309@01 r)) (< (inv@309@01 r) 3)) (img@310@01 r))
      (Set_in r ($FVF.domain_f (as sm@311@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@311@01  $FVF<f>))))
  :qid |qp.fvfDomDef121|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@309@01 r)) (< (inv@309@01 r) 3)) (img@310@01 r))
      (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3))))
    (= ($FVF.lookup_f (as sm@311@01  $FVF<f>) r) ($FVF.lookup_f $t@285@01 r)))
  :pattern (($FVF.lookup_f (as sm@311@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@285@01 r))
  :qid |qp.fvfValDef119|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@309@01 r)) (< (inv@309@01 r) 3)) (img@310@01 r))
      (= r x@274@01))
    (=
      ($FVF.lookup_f (as sm@311@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@304@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@311@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@304@01  $FVF<f>) r))
  :qid |qp.fvfValDef120|)))
(assert (fun06%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@305@01  $FVF<f>) x@274@01))
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<f>To$Snap (as sm@311@01  $FVF<f>)))))) x@274@01 i@275@01 xs@276@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((k@308@01 Int)) (!
  (=>
    (and (<= 0 k@308@01) (< k@308@01 3))
    (and
      (= (inv@309@01 (Seq_index xs@276@01 k@308@01)) k@308@01)
      (img@310@01 (Seq_index xs@276@01 k@308@01))))
  :pattern ((Seq_index xs@276@01 k@308@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@310@01 r) (and (<= 0 (inv@309@01 r)) (< (inv@309@01 r) 3)))
    (= (Seq_index xs@276@01 (inv@309@01 r)) r))
  :pattern ((inv@309@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@311@01  $FVF<f>)))
      (and (and (<= 0 (inv@309@01 r)) (< (inv@309@01 r) 3)) (img@310@01 r)))
    (=>
      (and (and (<= 0 (inv@309@01 r)) (< (inv@309@01 r) 3)) (img@310@01 r))
      (Set_in r ($FVF.domain_f (as sm@311@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@311@01  $FVF<f>))))
  :qid |qp.fvfDomDef121|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@309@01 r)) (< (inv@309@01 r) 3)) (img@310@01 r))
      (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3))))
    (= ($FVF.lookup_f (as sm@311@01  $FVF<f>) r) ($FVF.lookup_f $t@285@01 r)))
  :pattern (($FVF.lookup_f (as sm@311@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@285@01 r))
  :qid |qp.fvfValDef119|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@309@01 r)) (< (inv@309@01 r) 3)) (img@310@01 r))
      (= r x@274@01))
    (=
      ($FVF.lookup_f (as sm@311@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@304@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@311@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@304@01  $FVF<f>) r))
  :qid |qp.fvfValDef120|)))
(assert (and
  (=
    ($FVF.lookup_f (as sm@305@01  $FVF<f>) x@274@01)
    ($FVF.lookup_f (as sm@304@01  $FVF<f>) x@274@01))
  (=>
    (and
      (img@287@01 x@274@01)
      (and (<= 0 (inv@286@01 x@274@01)) (< (inv@286@01 x@274@01) 3)))
    (=
      ($FVF.lookup_f (as sm@305@01  $FVF<f>) x@274@01)
      ($FVF.lookup_f $t@285@01 x@274@01)))
  (forall ((i1@306@01 Int) (i2@307@01 Int)) (!
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@306@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@307@01)
          (not (= i1@306@01 i2@307@01))))
      (not (= (Seq_index xs@276@01 i1@306@01) (Seq_index xs@276@01 i2@307@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@132@12@132@100|))
  (forall ((k@308@01 Int)) (!
    (=>
      (and (<= 0 k@308@01) (< k@308@01 3))
      (or (<= 0 k@308@01) (not (<= 0 k@308@01))))
    :pattern ((Seq_index xs@276@01 k@308@01))
    :qid |f-aux|))
  (fun06%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@305@01  $FVF<f>) x@274@01))
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<f>To$Snap (as sm@311@01  $FVF<f>)))))) x@274@01 i@275@01 xs@276@01)))
(push) ; 3
(assert (not (=
  10
  (fun06 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@305@01  $FVF<f>) x@274@01))
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<f>To$Snap (as sm@311@01  $FVF<f>)))))) x@274@01 i@275@01 xs@276@01))))
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
(declare-const sm@312@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@274@01)
    (=
      ($FVF.lookup_f (as sm@312@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@304@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@312@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@304@01  $FVF<f>) r))
  :qid |qp.fvfValDef122|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
    (= ($FVF.lookup_f (as sm@312@01  $FVF<f>) r) ($FVF.lookup_f $t@285@01 r)))
  :pattern (($FVF.lookup_f (as sm@312@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@285@01 r))
  :qid |qp.fvfValDef123|)))
(declare-const pm@313@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@313@01  $FPM) r)
    (+
      (ite (= r x@274@01) $Perm.Write $Perm.No)
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@313@01  $FPM) r))
  :qid |qp.resPrmSumDef124|)))
(assert (<= ($FVF.perm_f (as pm@313@01  $FPM) x@274@01) $Perm.Write))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@313@01  $FPM) r) $Perm.Write)
  :pattern ((inv@286@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] 10 == fun06(x, i, xs)
; [eval] fun06(x, i, xs)
(set-option :timeout 0)
(push) ; 3
; [eval] |xs| > 10
; [eval] |xs|
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r x@274@01)
    (>
      (+
        (ite (= r x@274@01) $Perm.Write $Perm.No)
        (ite
          (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-12533|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@314@01 $FVF<f>)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@287@01 x@274@01)
    (and (<= 0 (inv@286@01 x@274@01)) (< (inv@286@01 x@274@01) 3)))
  (=
    ($FVF.lookup_f (as sm@314@01  $FVF<f>) x@274@01)
    ($FVF.lookup_f $t@285@01 x@274@01))))
(assert (=
  ($FVF.lookup_f (as sm@314@01  $FVF<f>) x@274@01)
  ($FVF.lookup_f (as sm@304@01  $FVF<f>) x@274@01)))
; [eval] i > 0
; [eval] (forall i1: Int, i2: Int ::(i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@315@01 Int)
(declare-const i2@316@01 Int)
(push) ; 4
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2)
; [eval] (i1 in [0..3))
; [eval] [0..3)
(push) ; 5
; [then-branch: 166 | !(i1@315@01 in [0..3]) | live]
; [else-branch: 166 | i1@315@01 in [0..3] | live]
(push) ; 6
; [then-branch: 166 | !(i1@315@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i1@315@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
    (= ($FVF.lookup_f (as sm@314@01  $FVF<f>) r) ($FVF.lookup_f $t@285@01 r)))
  :pattern (($FVF.lookup_f (as sm@314@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@285@01 r))
  :qid |qp.fvfValDef125|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@274@01)
    (=
      ($FVF.lookup_f (as sm@314@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@304@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@314@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@304@01  $FVF<f>) r))
  :qid |qp.fvfValDef126|)))
(declare-const pm@317@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@317@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@317@01  $FPM) r))
  :qid |qp.resPrmSumDef127|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@317@01  $FPM) r) $Perm.Write)
  :pattern ((inv@286@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@317@01  $FPM) x@274@01) $Perm.Write))
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 166 | i1@315@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i1@315@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
    (= ($FVF.lookup_f (as sm@314@01  $FVF<f>) r) ($FVF.lookup_f $t@285@01 r)))
  :pattern (($FVF.lookup_f (as sm@314@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@285@01 r))
  :qid |qp.fvfValDef125|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@274@01)
    (=
      ($FVF.lookup_f (as sm@314@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@304@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@314@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@304@01  $FVF<f>) r))
  :qid |qp.fvfValDef126|)))
(declare-const pm@318@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@318@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@318@01  $FPM) r))
  :qid |qp.resPrmSumDef128|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@318@01  $FPM) r) $Perm.Write)
  :pattern ((inv@286@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@318@01  $FPM) x@274@01) $Perm.Write))
; [eval] (i2 in [0..3))
; [eval] [0..3)
(set-option :timeout 0)
(push) ; 7
; [then-branch: 167 | !(i2@316@01 in [0..3]) | live]
; [else-branch: 167 | i2@316@01 in [0..3] | live]
(push) ; 8
; [then-branch: 167 | !(i2@316@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i2@316@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(pop) ; 8
(set-option :timeout 0)
(push) ; 8
; [else-branch: 167 | i2@316@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i2@316@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] i1 != i2
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 3) i2@316@01)
  (not (Seq_contains (Seq_range 0 3) i2@316@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
    (= ($FVF.lookup_f (as sm@314@01  $FVF<f>) r) ($FVF.lookup_f $t@285@01 r)))
  :pattern (($FVF.lookup_f (as sm@314@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@285@01 r))
  :qid |qp.fvfValDef125|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@274@01)
    (=
      ($FVF.lookup_f (as sm@314@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@304@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@314@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@304@01  $FVF<f>) r))
  :qid |qp.fvfValDef126|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@317@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@317@01  $FPM) r))
  :qid |qp.resPrmSumDef127|)))
(assert (=>
  (not (Seq_contains (Seq_range 0 3) i1@315@01))
  (and
    (not (Seq_contains (Seq_range 0 3) i1@315@01))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@317@01  $FPM) r) $Perm.Write)
      :pattern ((inv@286@01 r))
      :qid |qp-fld-prm-bnd|))
    (<= ($FVF.perm_f (as pm@317@01  $FPM) x@274@01) $Perm.Write))))
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@318@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@318@01  $FPM) r))
  :qid |qp.resPrmSumDef128|)))
(assert (=>
  (Seq_contains (Seq_range 0 3) i1@315@01)
  (and
    (Seq_contains (Seq_range 0 3) i1@315@01)
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@318@01  $FPM) r) $Perm.Write)
      :pattern ((inv@286@01 r))
      :qid |qp-fld-prm-bnd|))
    (<= ($FVF.perm_f (as pm@318@01  $FPM) x@274@01) $Perm.Write)
    (or
      (Seq_contains (Seq_range 0 3) i2@316@01)
      (not (Seq_contains (Seq_range 0 3) i2@316@01))))))
(assert (or
  (Seq_contains (Seq_range 0 3) i1@315@01)
  (not (Seq_contains (Seq_range 0 3) i1@315@01))))
(set-option :timeout 0)
(push) ; 5
; [then-branch: 168 | i1@315@01 in [0..3] && i2@316@01 in [0..3] && i1@315@01 != i2@316@01 | live]
; [else-branch: 168 | !(i1@315@01 in [0..3] && i2@316@01 in [0..3] && i1@315@01 != i2@316@01) | live]
(push) ; 6
; [then-branch: 168 | i1@315@01 in [0..3] && i2@316@01 in [0..3] && i1@315@01 != i2@316@01]
(assert (and
  (Seq_contains (Seq_range 0 3) i1@315@01)
  (and (Seq_contains (Seq_range 0 3) i2@316@01) (not (= i1@315@01 i2@316@01)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@318@01  $FPM) r) $Perm.Write)
  :pattern ((inv@286@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@318@01  $FPM) x@274@01) $Perm.Write))
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(set-option :timeout 0)
(push) ; 7
(assert (not (>= i1@315@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i1@315@01 (Seq_length xs@276@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 7
(assert (not (>= i2@316@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i2@316@01 (Seq_length xs@276@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 168 | !(i1@315@01 in [0..3] && i2@316@01 in [0..3] && i1@315@01 != i2@316@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 3) i1@315@01)
    (and (Seq_contains (Seq_range 0 3) i2@316@01) (not (= i1@315@01 i2@316@01))))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@318@01  $FPM) r) $Perm.Write)
  :pattern ((inv@286@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@318@01  $FPM) x@274@01) $Perm.Write))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 3) i1@315@01)
    (and (Seq_contains (Seq_range 0 3) i2@316@01) (not (= i1@315@01 i2@316@01))))
  (and
    (Seq_contains (Seq_range 0 3) i1@315@01)
    (Seq_contains (Seq_range 0 3) i2@316@01)
    (not (= i1@315@01 i2@316@01))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@318@01  $FPM) r) $Perm.Write)
      :pattern ((inv@286@01 r))
      :qid |qp-fld-prm-bnd|))
    (<= ($FVF.perm_f (as pm@318@01  $FPM) x@274@01) $Perm.Write))))
; Joined path conditions
(assert (=>
  (not
    (and
      (Seq_contains (Seq_range 0 3) i1@315@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@316@01)
        (not (= i1@315@01 i2@316@01)))))
  (and
    (not
      (and
        (Seq_contains (Seq_range 0 3) i1@315@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@316@01)
          (not (= i1@315@01 i2@316@01)))))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@318@01  $FPM) r) $Perm.Write)
      :pattern ((inv@286@01 r))
      :qid |qp-fld-prm-bnd|))
    (<= ($FVF.perm_f (as pm@318@01  $FPM) x@274@01) $Perm.Write))))
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 3) i1@315@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@316@01)
        (not (= i1@315@01 i2@316@01)))))
  (and
    (Seq_contains (Seq_range 0 3) i1@315@01)
    (and (Seq_contains (Seq_range 0 3) i2@316@01) (not (= i1@315@01 i2@316@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
    (= ($FVF.lookup_f (as sm@314@01  $FVF<f>) r) ($FVF.lookup_f $t@285@01 r)))
  :pattern (($FVF.lookup_f (as sm@314@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@285@01 r))
  :qid |qp.fvfValDef125|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@274@01)
    (=
      ($FVF.lookup_f (as sm@314@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@304@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@314@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@304@01  $FVF<f>) r))
  :qid |qp.fvfValDef126|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@317@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@317@01  $FPM) r))
  :qid |qp.resPrmSumDef127|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@318@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@318@01  $FPM) r))
  :qid |qp.resPrmSumDef128|)))
; Nested auxiliary terms: non-globals (aux)
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((i1@315@01 Int) (i2@316@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@315@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@316@01)
        (not (= i1@315@01 i2@316@01))))
    (not (= (Seq_index xs@276@01 i1@315@01) (Seq_index xs@276@01 i2@316@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@132@12@132@100|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@315@01 Int) (i2@316@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@315@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@316@01)
        (not (= i1@315@01 i2@316@01))))
    (not (= (Seq_index xs@276@01 i1@315@01) (Seq_index xs@276@01 i2@316@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@132@12@132@100|)))
(declare-const k@319@01 Int)
(push) ; 4
; [eval] 0 <= k && k < 3
; [eval] 0 <= k
(push) ; 5
; [then-branch: 169 | !(0 <= k@319@01) | live]
; [else-branch: 169 | 0 <= k@319@01 | live]
(push) ; 6
; [then-branch: 169 | !(0 <= k@319@01)]
(assert (not (<= 0 k@319@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(declare-const pm@320@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@320@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@320@01  $FPM) r))
  :qid |qp.resPrmSumDef129|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@320@01  $FPM) r) $Perm.Write)
  :pattern ((inv@286@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@320@01  $FPM) x@274@01) $Perm.Write))
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 169 | 0 <= k@319@01]
(assert (<= 0 k@319@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(declare-const pm@321@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@321@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@321@01  $FPM) r))
  :qid |qp.resPrmSumDef130|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@321@01  $FPM) r) $Perm.Write)
  :pattern ((inv@286@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@321@01  $FPM) x@274@01) $Perm.Write))
; [eval] k < 3
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@320@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@320@01  $FPM) r))
  :qid |qp.resPrmSumDef129|)))
(assert (=>
  (not (<= 0 k@319@01))
  (and
    (not (<= 0 k@319@01))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@320@01  $FPM) r) $Perm.Write)
      :pattern ((inv@286@01 r))
      :qid |qp-fld-prm-bnd|))
    (<= ($FVF.perm_f (as pm@320@01  $FPM) x@274@01) $Perm.Write))))
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@321@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@321@01  $FPM) r))
  :qid |qp.resPrmSumDef130|)))
(assert (=>
  (<= 0 k@319@01)
  (and
    (<= 0 k@319@01)
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@321@01  $FPM) r) $Perm.Write)
      :pattern ((inv@286@01 r))
      :qid |qp-fld-prm-bnd|))
    (<= ($FVF.perm_f (as pm@321@01  $FPM) x@274@01) $Perm.Write))))
(assert (or (<= 0 k@319@01) (not (<= 0 k@319@01))))
(assert (and (<= 0 k@319@01) (< k@319@01 3)))
; [eval] xs[k]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= k@319@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@319@01 (Seq_length xs@276@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@322@01 ($Ref) Int)
(declare-fun img@323@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@320@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@320@01  $FPM) r))
  :qid |qp.resPrmSumDef129|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@321@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@321@01  $FPM) r))
  :qid |qp.resPrmSumDef130|)))
; Nested auxiliary terms: non-globals
(assert (forall ((k@319@01 Int)) (!
  (=>
    (and (<= 0 k@319@01) (< k@319@01 3))
    (and
      (=>
        (not (<= 0 k@319@01))
        (and
          (not (<= 0 k@319@01))
          (forall ((r $Ref)) (!
            (<= ($FVF.perm_f (as pm@320@01  $FPM) r) $Perm.Write)
            :pattern ((inv@286@01 r))
            :qid |qp-fld-prm-bnd|))
          (<= ($FVF.perm_f (as pm@320@01  $FPM) x@274@01) $Perm.Write)))
      (=>
        (<= 0 k@319@01)
        (and
          (<= 0 k@319@01)
          (forall ((r $Ref)) (!
            (<= ($FVF.perm_f (as pm@321@01  $FPM) r) $Perm.Write)
            :pattern ((inv@286@01 r))
            :qid |qp-fld-prm-bnd|))
          (<= ($FVF.perm_f (as pm@321@01  $FPM) x@274@01) $Perm.Write)))
      (or (<= 0 k@319@01) (not (<= 0 k@319@01)))))
  :pattern ((Seq_index xs@276@01 k@319@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((k1@319@01 Int) (k2@319@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@319@01) (< k1@319@01 3))
      (and (<= 0 k2@319@01) (< k2@319@01 3))
      (= (Seq_index xs@276@01 k1@319@01) (Seq_index xs@276@01 k2@319@01)))
    (= k1@319@01 k2@319@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@319@01 Int)) (!
  (=>
    (and (<= 0 k@319@01) (< k@319@01 3))
    (and
      (= (inv@322@01 (Seq_index xs@276@01 k@319@01)) k@319@01)
      (img@323@01 (Seq_index xs@276@01 k@319@01))))
  :pattern ((Seq_index xs@276@01 k@319@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@323@01 r) (and (<= 0 (inv@322@01 r)) (< (inv@322@01 r) 3)))
    (= (Seq_index xs@276@01 (inv@322@01 r)) r))
  :pattern ((inv@322@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@322@01 r)) (< (inv@322@01 r) 3))
      (img@323@01 r)
      (= r (Seq_index xs@276@01 (inv@322@01 r))))
    (>
      (+
        (ite
          (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
          $Perm.Write
          $Perm.No)
        (ite (= r x@274@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-12535|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@324@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@324@01  $FVF<f>)))
      (and (and (<= 0 (inv@322@01 r)) (< (inv@322@01 r) 3)) (img@323@01 r)))
    (=>
      (and (and (<= 0 (inv@322@01 r)) (< (inv@322@01 r) 3)) (img@323@01 r))
      (Set_in r ($FVF.domain_f (as sm@324@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@324@01  $FVF<f>))))
  :qid |qp.fvfDomDef133|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@322@01 r)) (< (inv@322@01 r) 3)) (img@323@01 r))
      (= r x@274@01))
    (=
      ($FVF.lookup_f (as sm@324@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@304@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@324@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@304@01  $FVF<f>) r))
  :qid |qp.fvfValDef131|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@322@01 r)) (< (inv@322@01 r) 3)) (img@323@01 r))
      (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3))))
    (= ($FVF.lookup_f (as sm@324@01  $FVF<f>) r) ($FVF.lookup_f $t@285@01 r)))
  :pattern (($FVF.lookup_f (as sm@324@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@285@01 r))
  :qid |qp.fvfValDef132|)))
(assert (fun06%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@314@01  $FVF<f>) x@274@01))
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<f>To$Snap (as sm@324@01  $FVF<f>)))))) x@274@01 i@275@01 xs@276@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
    (= ($FVF.lookup_f (as sm@314@01  $FVF<f>) r) ($FVF.lookup_f $t@285@01 r)))
  :pattern (($FVF.lookup_f (as sm@314@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@285@01 r))
  :qid |qp.fvfValDef125|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@274@01)
    (=
      ($FVF.lookup_f (as sm@314@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@304@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@314@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@304@01  $FVF<f>) r))
  :qid |qp.fvfValDef126|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@317@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@317@01  $FPM) r))
  :qid |qp.resPrmSumDef127|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@318@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@318@01  $FPM) r))
  :qid |qp.resPrmSumDef128|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@320@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@320@01  $FPM) r))
  :qid |qp.resPrmSumDef129|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@321@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@321@01  $FPM) r))
  :qid |qp.resPrmSumDef130|)))
(assert (forall ((k@319@01 Int)) (!
  (=>
    (and (<= 0 k@319@01) (< k@319@01 3))
    (and
      (= (inv@322@01 (Seq_index xs@276@01 k@319@01)) k@319@01)
      (img@323@01 (Seq_index xs@276@01 k@319@01))))
  :pattern ((Seq_index xs@276@01 k@319@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@323@01 r) (and (<= 0 (inv@322@01 r)) (< (inv@322@01 r) 3)))
    (= (Seq_index xs@276@01 (inv@322@01 r)) r))
  :pattern ((inv@322@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@324@01  $FVF<f>)))
      (and (and (<= 0 (inv@322@01 r)) (< (inv@322@01 r) 3)) (img@323@01 r)))
    (=>
      (and (and (<= 0 (inv@322@01 r)) (< (inv@322@01 r) 3)) (img@323@01 r))
      (Set_in r ($FVF.domain_f (as sm@324@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@324@01  $FVF<f>))))
  :qid |qp.fvfDomDef133|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@322@01 r)) (< (inv@322@01 r) 3)) (img@323@01 r))
      (= r x@274@01))
    (=
      ($FVF.lookup_f (as sm@324@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@304@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@324@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@304@01  $FVF<f>) r))
  :qid |qp.fvfValDef131|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@322@01 r)) (< (inv@322@01 r) 3)) (img@323@01 r))
      (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3))))
    (= ($FVF.lookup_f (as sm@324@01  $FVF<f>) r) ($FVF.lookup_f $t@285@01 r)))
  :pattern (($FVF.lookup_f (as sm@324@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@285@01 r))
  :qid |qp.fvfValDef132|)))
(assert (and
  (=>
    (and
      (img@287@01 x@274@01)
      (and (<= 0 (inv@286@01 x@274@01)) (< (inv@286@01 x@274@01) 3)))
    (=
      ($FVF.lookup_f (as sm@314@01  $FVF<f>) x@274@01)
      ($FVF.lookup_f $t@285@01 x@274@01)))
  (=
    ($FVF.lookup_f (as sm@314@01  $FVF<f>) x@274@01)
    ($FVF.lookup_f (as sm@304@01  $FVF<f>) x@274@01))
  (forall ((i1@315@01 Int) (i2@316@01 Int)) (!
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@315@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@316@01)
          (not (= i1@315@01 i2@316@01))))
      (not (= (Seq_index xs@276@01 i1@315@01) (Seq_index xs@276@01 i2@316@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@132@12@132@100|))
  (forall ((k@319@01 Int)) (!
    (=>
      (and (<= 0 k@319@01) (< k@319@01 3))
      (and
        (=>
          (not (<= 0 k@319@01))
          (and
            (not (<= 0 k@319@01))
            (forall ((r $Ref)) (!
              (<= ($FVF.perm_f (as pm@320@01  $FPM) r) $Perm.Write)
              :pattern ((inv@286@01 r))
              :qid |qp-fld-prm-bnd|))
            (<= ($FVF.perm_f (as pm@320@01  $FPM) x@274@01) $Perm.Write)))
        (=>
          (<= 0 k@319@01)
          (and
            (<= 0 k@319@01)
            (forall ((r $Ref)) (!
              (<= ($FVF.perm_f (as pm@321@01  $FPM) r) $Perm.Write)
              :pattern ((inv@286@01 r))
              :qid |qp-fld-prm-bnd|))
            (<= ($FVF.perm_f (as pm@321@01  $FPM) x@274@01) $Perm.Write)))
        (or (<= 0 k@319@01) (not (<= 0 k@319@01)))))
    :pattern ((Seq_index xs@276@01 k@319@01))
    :qid |f-aux|))
  (fun06%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@314@01  $FVF<f>) x@274@01))
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<f>To$Snap (as sm@324@01  $FVF<f>)))))) x@274@01 i@275@01 xs@276@01)))
(push) ; 3
(assert (not (=
  10
  (fun06 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@314@01  $FVF<f>) x@274@01))
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<f>To$Snap (as sm@324@01  $FVF<f>)))))) x@274@01 i@275@01 xs@276@01))))
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
(declare-const sm@325@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@274@01)
    (=
      ($FVF.lookup_f (as sm@325@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@304@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@325@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@304@01  $FVF<f>) r))
  :qid |qp.fvfValDef134|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
    (= ($FVF.lookup_f (as sm@325@01  $FVF<f>) r) ($FVF.lookup_f $t@285@01 r)))
  :pattern (($FVF.lookup_f (as sm@325@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@285@01 r))
  :qid |qp.fvfValDef135|)))
(declare-const pm@326@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@326@01  $FPM) r)
    (+
      (ite (= r x@274@01) $Perm.Write $Perm.No)
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@326@01  $FPM) r))
  :qid |qp.resPrmSumDef136|)))
(assert (<= ($FVF.perm_f (as pm@326@01  $FPM) x@274@01) $Perm.Write))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@326@01  $FPM) r) $Perm.Write)
  :pattern ((inv@286@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] 10 == fun06(x, i, xs)
; [eval] fun06(x, i, xs)
(set-option :timeout 0)
(push) ; 3
; [eval] |xs| > 10
; [eval] |xs|
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r x@274@01)
    (>
      (+
        (ite (= r x@274@01) $Perm.Write $Perm.No)
        (ite
          (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-12536|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=
  ($FVF.lookup_f (as sm@325@01  $FVF<f>) x@274@01)
  ($FVF.lookup_f (as sm@304@01  $FVF<f>) x@274@01)))
(assert (=>
  (and
    (img@287@01 x@274@01)
    (and (<= 0 (inv@286@01 x@274@01)) (< (inv@286@01 x@274@01) 3)))
  (=
    ($FVF.lookup_f (as sm@325@01  $FVF<f>) x@274@01)
    ($FVF.lookup_f $t@285@01 x@274@01))))
; [eval] i > 0
; [eval] (forall i1: Int, i2: Int ::(i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@327@01 Int)
(declare-const i2@328@01 Int)
(push) ; 4
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2)
; [eval] (i1 in [0..3))
; [eval] [0..3)
(push) ; 5
; [then-branch: 170 | !(i1@327@01 in [0..3]) | live]
; [else-branch: 170 | i1@327@01 in [0..3] | live]
(push) ; 6
; [then-branch: 170 | !(i1@327@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i1@327@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 170 | i1@327@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i1@327@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] (i2 in [0..3))
; [eval] [0..3)
(set-option :timeout 0)
(push) ; 7
; [then-branch: 171 | !(i2@328@01 in [0..3]) | live]
; [else-branch: 171 | i2@328@01 in [0..3] | live]
(push) ; 8
; [then-branch: 171 | !(i2@328@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i2@328@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@329@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
    (= ($FVF.lookup_f (as sm@329@01  $FVF<f>) r) ($FVF.lookup_f $t@285@01 r)))
  :pattern (($FVF.lookup_f (as sm@329@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@285@01 r))
  :qid |qp.fvfValDef137|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@274@01)
    (=
      ($FVF.lookup_f (as sm@329@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@304@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@329@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@304@01  $FVF<f>) r))
  :qid |qp.fvfValDef138|)))
(declare-const pm@330@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@330@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@330@01  $FPM) r))
  :qid |qp.resPrmSumDef139|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@330@01  $FPM) r) $Perm.Write)
  :pattern ((inv@286@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@330@01  $FPM) x@274@01) $Perm.Write))
(pop) ; 8
(set-option :timeout 0)
(push) ; 8
; [else-branch: 171 | i2@328@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i2@328@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@331@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
    (= ($FVF.lookup_f (as sm@331@01  $FVF<f>) r) ($FVF.lookup_f $t@285@01 r)))
  :pattern (($FVF.lookup_f (as sm@331@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@285@01 r))
  :qid |qp.fvfValDef140|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@274@01)
    (=
      ($FVF.lookup_f (as sm@331@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@304@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@331@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@304@01  $FVF<f>) r))
  :qid |qp.fvfValDef141|)))
(declare-const pm@332@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@332@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@332@01  $FPM) r))
  :qid |qp.resPrmSumDef142|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@332@01  $FPM) r) $Perm.Write)
  :pattern ((inv@286@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@332@01  $FPM) x@274@01) $Perm.Write))
; [eval] i1 != i2
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
    (= ($FVF.lookup_f (as sm@329@01  $FVF<f>) r) ($FVF.lookup_f $t@285@01 r)))
  :pattern (($FVF.lookup_f (as sm@329@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@285@01 r))
  :qid |qp.fvfValDef137|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@274@01)
    (=
      ($FVF.lookup_f (as sm@329@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@304@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@329@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@304@01  $FVF<f>) r))
  :qid |qp.fvfValDef138|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@330@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@330@01  $FPM) r))
  :qid |qp.resPrmSumDef139|)))
(assert (=>
  (not (Seq_contains (Seq_range 0 3) i2@328@01))
  (and
    (not (Seq_contains (Seq_range 0 3) i2@328@01))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@330@01  $FPM) r) $Perm.Write)
      :pattern ((inv@286@01 r))
      :qid |qp-fld-prm-bnd|))
    (<= ($FVF.perm_f (as pm@330@01  $FPM) x@274@01) $Perm.Write))))
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
    (= ($FVF.lookup_f (as sm@331@01  $FVF<f>) r) ($FVF.lookup_f $t@285@01 r)))
  :pattern (($FVF.lookup_f (as sm@331@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@285@01 r))
  :qid |qp.fvfValDef140|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@274@01)
    (=
      ($FVF.lookup_f (as sm@331@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@304@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@331@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@304@01  $FVF<f>) r))
  :qid |qp.fvfValDef141|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@332@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@332@01  $FPM) r))
  :qid |qp.resPrmSumDef142|)))
(assert (=>
  (Seq_contains (Seq_range 0 3) i2@328@01)
  (and
    (Seq_contains (Seq_range 0 3) i2@328@01)
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@332@01  $FPM) r) $Perm.Write)
      :pattern ((inv@286@01 r))
      :qid |qp-fld-prm-bnd|))
    (<= ($FVF.perm_f (as pm@332@01  $FPM) x@274@01) $Perm.Write))))
(assert (or
  (Seq_contains (Seq_range 0 3) i2@328@01)
  (not (Seq_contains (Seq_range 0 3) i2@328@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
    (= ($FVF.lookup_f (as sm@329@01  $FVF<f>) r) ($FVF.lookup_f $t@285@01 r)))
  :pattern (($FVF.lookup_f (as sm@329@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@285@01 r))
  :qid |qp.fvfValDef137|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@274@01)
    (=
      ($FVF.lookup_f (as sm@329@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@304@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@329@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@304@01  $FVF<f>) r))
  :qid |qp.fvfValDef138|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@330@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@330@01  $FPM) r))
  :qid |qp.resPrmSumDef139|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
    (= ($FVF.lookup_f (as sm@331@01  $FVF<f>) r) ($FVF.lookup_f $t@285@01 r)))
  :pattern (($FVF.lookup_f (as sm@331@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@285@01 r))
  :qid |qp.fvfValDef140|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@274@01)
    (=
      ($FVF.lookup_f (as sm@331@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@304@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@331@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@304@01  $FVF<f>) r))
  :qid |qp.fvfValDef141|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@332@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@332@01  $FPM) r))
  :qid |qp.resPrmSumDef142|)))
(assert (=>
  (Seq_contains (Seq_range 0 3) i1@327@01)
  (and
    (Seq_contains (Seq_range 0 3) i1@327@01)
    (=>
      (not (Seq_contains (Seq_range 0 3) i2@328@01))
      (and
        (not (Seq_contains (Seq_range 0 3) i2@328@01))
        (forall ((r $Ref)) (!
          (<= ($FVF.perm_f (as pm@330@01  $FPM) r) $Perm.Write)
          :pattern ((inv@286@01 r))
          :qid |qp-fld-prm-bnd|))
        (<= ($FVF.perm_f (as pm@330@01  $FPM) x@274@01) $Perm.Write)))
    (=>
      (Seq_contains (Seq_range 0 3) i2@328@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@328@01)
        (forall ((r $Ref)) (!
          (<= ($FVF.perm_f (as pm@332@01  $FPM) r) $Perm.Write)
          :pattern ((inv@286@01 r))
          :qid |qp-fld-prm-bnd|))
        (<= ($FVF.perm_f (as pm@332@01  $FPM) x@274@01) $Perm.Write)))
    (or
      (Seq_contains (Seq_range 0 3) i2@328@01)
      (not (Seq_contains (Seq_range 0 3) i2@328@01))))))
(assert (or
  (Seq_contains (Seq_range 0 3) i1@327@01)
  (not (Seq_contains (Seq_range 0 3) i1@327@01))))
(set-option :timeout 0)
(push) ; 5
; [then-branch: 172 | i1@327@01 in [0..3] && i2@328@01 in [0..3] && i1@327@01 != i2@328@01 | live]
; [else-branch: 172 | !(i1@327@01 in [0..3] && i2@328@01 in [0..3] && i1@327@01 != i2@328@01) | live]
(push) ; 6
; [then-branch: 172 | i1@327@01 in [0..3] && i2@328@01 in [0..3] && i1@327@01 != i2@328@01]
(assert (and
  (Seq_contains (Seq_range 0 3) i1@327@01)
  (and (Seq_contains (Seq_range 0 3) i2@328@01) (not (= i1@327@01 i2@328@01)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(set-option :timeout 0)
(push) ; 7
(assert (not (>= i1@327@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i1@327@01 (Seq_length xs@276@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 7
(assert (not (>= i2@328@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i2@328@01 (Seq_length xs@276@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 172 | !(i1@327@01 in [0..3] && i2@328@01 in [0..3] && i1@327@01 != i2@328@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 3) i1@327@01)
    (and (Seq_contains (Seq_range 0 3) i2@328@01) (not (= i1@327@01 i2@328@01))))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 3) i1@327@01)
    (and (Seq_contains (Seq_range 0 3) i2@328@01) (not (= i1@327@01 i2@328@01))))
  (and
    (Seq_contains (Seq_range 0 3) i1@327@01)
    (Seq_contains (Seq_range 0 3) i2@328@01)
    (not (= i1@327@01 i2@328@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 3) i1@327@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@328@01)
        (not (= i1@327@01 i2@328@01)))))
  (and
    (Seq_contains (Seq_range 0 3) i1@327@01)
    (and (Seq_contains (Seq_range 0 3) i2@328@01) (not (= i1@327@01 i2@328@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
    (= ($FVF.lookup_f (as sm@329@01  $FVF<f>) r) ($FVF.lookup_f $t@285@01 r)))
  :pattern (($FVF.lookup_f (as sm@329@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@285@01 r))
  :qid |qp.fvfValDef137|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@274@01)
    (=
      ($FVF.lookup_f (as sm@329@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@304@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@329@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@304@01  $FVF<f>) r))
  :qid |qp.fvfValDef138|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@330@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@330@01  $FPM) r))
  :qid |qp.resPrmSumDef139|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
    (= ($FVF.lookup_f (as sm@331@01  $FVF<f>) r) ($FVF.lookup_f $t@285@01 r)))
  :pattern (($FVF.lookup_f (as sm@331@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@285@01 r))
  :qid |qp.fvfValDef140|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@274@01)
    (=
      ($FVF.lookup_f (as sm@331@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@304@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@331@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@304@01  $FVF<f>) r))
  :qid |qp.fvfValDef141|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@332@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@332@01  $FPM) r))
  :qid |qp.resPrmSumDef142|)))
; Nested auxiliary terms: non-globals (aux)
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((i1@327@01 Int) (i2@328@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@327@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@328@01)
        (not (= i1@327@01 i2@328@01))))
    (not (= (Seq_index xs@276@01 i1@327@01) (Seq_index xs@276@01 i2@328@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@132@12@132@100|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@327@01 Int) (i2@328@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@327@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@328@01)
        (not (= i1@327@01 i2@328@01))))
    (not (= (Seq_index xs@276@01 i1@327@01) (Seq_index xs@276@01 i2@328@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@132@12@132@100|)))
(declare-const k@333@01 Int)
(push) ; 4
; [eval] 0 <= k && k < 3
; [eval] 0 <= k
(push) ; 5
; [then-branch: 173 | !(0 <= k@333@01) | live]
; [else-branch: 173 | 0 <= k@333@01 | live]
(push) ; 6
; [then-branch: 173 | !(0 <= k@333@01)]
(assert (not (<= 0 k@333@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 173 | 0 <= k@333@01]
(assert (<= 0 k@333@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] k < 3
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 k@333@01) (not (<= 0 k@333@01))))
(assert (and (<= 0 k@333@01) (< k@333@01 3)))
; [eval] xs[k]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= k@333@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@333@01 (Seq_length xs@276@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@334@01 ($Ref) Int)
(declare-fun img@335@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((k@333@01 Int)) (!
  (=>
    (and (<= 0 k@333@01) (< k@333@01 3))
    (or (<= 0 k@333@01) (not (<= 0 k@333@01))))
  :pattern ((Seq_index xs@276@01 k@333@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((k1@333@01 Int) (k2@333@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@333@01) (< k1@333@01 3))
      (and (<= 0 k2@333@01) (< k2@333@01 3))
      (= (Seq_index xs@276@01 k1@333@01) (Seq_index xs@276@01 k2@333@01)))
    (= k1@333@01 k2@333@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@333@01 Int)) (!
  (=>
    (and (<= 0 k@333@01) (< k@333@01 3))
    (and
      (= (inv@334@01 (Seq_index xs@276@01 k@333@01)) k@333@01)
      (img@335@01 (Seq_index xs@276@01 k@333@01))))
  :pattern ((Seq_index xs@276@01 k@333@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@335@01 r) (and (<= 0 (inv@334@01 r)) (< (inv@334@01 r) 3)))
    (= (Seq_index xs@276@01 (inv@334@01 r)) r))
  :pattern ((inv@334@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@334@01 r)) (< (inv@334@01 r) 3))
      (img@335@01 r)
      (= r (Seq_index xs@276@01 (inv@334@01 r))))
    (>
      (+
        (ite
          (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
          $Perm.Write
          $Perm.No)
        (ite (= r x@274@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-12538|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@336@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@336@01  $FVF<f>)))
      (and (and (<= 0 (inv@334@01 r)) (< (inv@334@01 r) 3)) (img@335@01 r)))
    (=>
      (and (and (<= 0 (inv@334@01 r)) (< (inv@334@01 r) 3)) (img@335@01 r))
      (Set_in r ($FVF.domain_f (as sm@336@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@336@01  $FVF<f>))))
  :qid |qp.fvfDomDef145|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@334@01 r)) (< (inv@334@01 r) 3)) (img@335@01 r))
      (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3))))
    (= ($FVF.lookup_f (as sm@336@01  $FVF<f>) r) ($FVF.lookup_f $t@285@01 r)))
  :pattern (($FVF.lookup_f (as sm@336@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@285@01 r))
  :qid |qp.fvfValDef143|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@334@01 r)) (< (inv@334@01 r) 3)) (img@335@01 r))
      (= r x@274@01))
    (=
      ($FVF.lookup_f (as sm@336@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@304@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@336@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@304@01  $FVF<f>) r))
  :qid |qp.fvfValDef144|)))
(assert (fun06%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@325@01  $FVF<f>) x@274@01))
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<f>To$Snap (as sm@336@01  $FVF<f>)))))) x@274@01 i@275@01 xs@276@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
    (= ($FVF.lookup_f (as sm@329@01  $FVF<f>) r) ($FVF.lookup_f $t@285@01 r)))
  :pattern (($FVF.lookup_f (as sm@329@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@285@01 r))
  :qid |qp.fvfValDef137|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@274@01)
    (=
      ($FVF.lookup_f (as sm@329@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@304@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@329@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@304@01  $FVF<f>) r))
  :qid |qp.fvfValDef138|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@330@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@330@01  $FPM) r))
  :qid |qp.resPrmSumDef139|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
    (= ($FVF.lookup_f (as sm@331@01  $FVF<f>) r) ($FVF.lookup_f $t@285@01 r)))
  :pattern (($FVF.lookup_f (as sm@331@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@285@01 r))
  :qid |qp.fvfValDef140|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@274@01)
    (=
      ($FVF.lookup_f (as sm@331@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@304@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@331@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@304@01  $FVF<f>) r))
  :qid |qp.fvfValDef141|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@332@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@332@01  $FPM) r))
  :qid |qp.resPrmSumDef142|)))
(assert (forall ((k@333@01 Int)) (!
  (=>
    (and (<= 0 k@333@01) (< k@333@01 3))
    (and
      (= (inv@334@01 (Seq_index xs@276@01 k@333@01)) k@333@01)
      (img@335@01 (Seq_index xs@276@01 k@333@01))))
  :pattern ((Seq_index xs@276@01 k@333@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@335@01 r) (and (<= 0 (inv@334@01 r)) (< (inv@334@01 r) 3)))
    (= (Seq_index xs@276@01 (inv@334@01 r)) r))
  :pattern ((inv@334@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@336@01  $FVF<f>)))
      (and (and (<= 0 (inv@334@01 r)) (< (inv@334@01 r) 3)) (img@335@01 r)))
    (=>
      (and (and (<= 0 (inv@334@01 r)) (< (inv@334@01 r) 3)) (img@335@01 r))
      (Set_in r ($FVF.domain_f (as sm@336@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@336@01  $FVF<f>))))
  :qid |qp.fvfDomDef145|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@334@01 r)) (< (inv@334@01 r) 3)) (img@335@01 r))
      (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3))))
    (= ($FVF.lookup_f (as sm@336@01  $FVF<f>) r) ($FVF.lookup_f $t@285@01 r)))
  :pattern (($FVF.lookup_f (as sm@336@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@285@01 r))
  :qid |qp.fvfValDef143|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@334@01 r)) (< (inv@334@01 r) 3)) (img@335@01 r))
      (= r x@274@01))
    (=
      ($FVF.lookup_f (as sm@336@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@304@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@336@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@304@01  $FVF<f>) r))
  :qid |qp.fvfValDef144|)))
(assert (and
  (=
    ($FVF.lookup_f (as sm@325@01  $FVF<f>) x@274@01)
    ($FVF.lookup_f (as sm@304@01  $FVF<f>) x@274@01))
  (=>
    (and
      (img@287@01 x@274@01)
      (and (<= 0 (inv@286@01 x@274@01)) (< (inv@286@01 x@274@01) 3)))
    (=
      ($FVF.lookup_f (as sm@325@01  $FVF<f>) x@274@01)
      ($FVF.lookup_f $t@285@01 x@274@01)))
  (forall ((i1@327@01 Int) (i2@328@01 Int)) (!
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@327@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@328@01)
          (not (= i1@327@01 i2@328@01))))
      (not (= (Seq_index xs@276@01 i1@327@01) (Seq_index xs@276@01 i2@328@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@132@12@132@100|))
  (forall ((k@333@01 Int)) (!
    (=>
      (and (<= 0 k@333@01) (< k@333@01 3))
      (or (<= 0 k@333@01) (not (<= 0 k@333@01))))
    :pattern ((Seq_index xs@276@01 k@333@01))
    :qid |f-aux|))
  (fun06%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@325@01  $FVF<f>) x@274@01))
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<f>To$Snap (as sm@336@01  $FVF<f>)))))) x@274@01 i@275@01 xs@276@01)))
(push) ; 3
(assert (not (=
  10
  (fun06 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@325@01  $FVF<f>) x@274@01))
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<f>To$Snap (as sm@336@01  $FVF<f>)))))) x@274@01 i@275@01 xs@276@01))))
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
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] 10 == fun06(x, i, xs)
; [eval] fun06(x, i, xs)
(set-option :timeout 0)
(push) ; 3
; [eval] |xs| > 10
; [eval] |xs|
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r x@274@01)
    (>
      (+
        (ite (= r x@274@01) $Perm.Write $Perm.No)
        (ite
          (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-12539|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@337@01 $FVF<f>)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@287@01 x@274@01)
    (and (<= 0 (inv@286@01 x@274@01)) (< (inv@286@01 x@274@01) 3)))
  (=
    ($FVF.lookup_f (as sm@337@01  $FVF<f>) x@274@01)
    ($FVF.lookup_f $t@285@01 x@274@01))))
(assert (=
  ($FVF.lookup_f (as sm@337@01  $FVF<f>) x@274@01)
  ($FVF.lookup_f (as sm@304@01  $FVF<f>) x@274@01)))
; [eval] i > 0
; [eval] (forall i1: Int, i2: Int ::(i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2])
(declare-const i1@338@01 Int)
(declare-const i2@339@01 Int)
(push) ; 4
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2) ==> xs[i1] != xs[i2]
; [eval] (i1 in [0..3)) && ((i2 in [0..3)) && i1 != i2)
; [eval] (i1 in [0..3))
; [eval] [0..3)
(push) ; 5
; [then-branch: 174 | !(i1@338@01 in [0..3]) | live]
; [else-branch: 174 | i1@338@01 in [0..3] | live]
(push) ; 6
; [then-branch: 174 | !(i1@338@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i1@338@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
    (= ($FVF.lookup_f (as sm@337@01  $FVF<f>) r) ($FVF.lookup_f $t@285@01 r)))
  :pattern (($FVF.lookup_f (as sm@337@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@285@01 r))
  :qid |qp.fvfValDef146|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@274@01)
    (=
      ($FVF.lookup_f (as sm@337@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@304@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@337@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@304@01  $FVF<f>) r))
  :qid |qp.fvfValDef147|)))
(declare-const pm@340@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@340@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@340@01  $FPM) r))
  :qid |qp.resPrmSumDef148|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@340@01  $FPM) r) $Perm.Write)
  :pattern ((inv@286@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@340@01  $FPM) x@274@01) $Perm.Write))
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 174 | i1@338@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i1@338@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
    (= ($FVF.lookup_f (as sm@337@01  $FVF<f>) r) ($FVF.lookup_f $t@285@01 r)))
  :pattern (($FVF.lookup_f (as sm@337@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@285@01 r))
  :qid |qp.fvfValDef146|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@274@01)
    (=
      ($FVF.lookup_f (as sm@337@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@304@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@337@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@304@01  $FVF<f>) r))
  :qid |qp.fvfValDef147|)))
(declare-const pm@341@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@341@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@341@01  $FPM) r))
  :qid |qp.resPrmSumDef149|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@341@01  $FPM) r) $Perm.Write)
  :pattern ((inv@286@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@341@01  $FPM) x@274@01) $Perm.Write))
; [eval] (i2 in [0..3))
; [eval] [0..3)
(set-option :timeout 0)
(push) ; 7
; [then-branch: 175 | !(i2@339@01 in [0..3]) | live]
; [else-branch: 175 | i2@339@01 in [0..3] | live]
(push) ; 8
; [then-branch: 175 | !(i2@339@01 in [0..3])]
(assert (not (Seq_contains (Seq_range 0 3) i2@339@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(pop) ; 8
(set-option :timeout 0)
(push) ; 8
; [else-branch: 175 | i2@339@01 in [0..3]]
(assert (Seq_contains (Seq_range 0 3) i2@339@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] i1 != i2
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 3) i2@339@01)
  (not (Seq_contains (Seq_range 0 3) i2@339@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
    (= ($FVF.lookup_f (as sm@337@01  $FVF<f>) r) ($FVF.lookup_f $t@285@01 r)))
  :pattern (($FVF.lookup_f (as sm@337@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@285@01 r))
  :qid |qp.fvfValDef146|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@274@01)
    (=
      ($FVF.lookup_f (as sm@337@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@304@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@337@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@304@01  $FVF<f>) r))
  :qid |qp.fvfValDef147|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@340@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@340@01  $FPM) r))
  :qid |qp.resPrmSumDef148|)))
(assert (=>
  (not (Seq_contains (Seq_range 0 3) i1@338@01))
  (and
    (not (Seq_contains (Seq_range 0 3) i1@338@01))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@340@01  $FPM) r) $Perm.Write)
      :pattern ((inv@286@01 r))
      :qid |qp-fld-prm-bnd|))
    (<= ($FVF.perm_f (as pm@340@01  $FPM) x@274@01) $Perm.Write))))
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@341@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@341@01  $FPM) r))
  :qid |qp.resPrmSumDef149|)))
(assert (=>
  (Seq_contains (Seq_range 0 3) i1@338@01)
  (and
    (Seq_contains (Seq_range 0 3) i1@338@01)
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@341@01  $FPM) r) $Perm.Write)
      :pattern ((inv@286@01 r))
      :qid |qp-fld-prm-bnd|))
    (<= ($FVF.perm_f (as pm@341@01  $FPM) x@274@01) $Perm.Write)
    (or
      (Seq_contains (Seq_range 0 3) i2@339@01)
      (not (Seq_contains (Seq_range 0 3) i2@339@01))))))
(assert (or
  (Seq_contains (Seq_range 0 3) i1@338@01)
  (not (Seq_contains (Seq_range 0 3) i1@338@01))))
(set-option :timeout 0)
(push) ; 5
; [then-branch: 176 | i1@338@01 in [0..3] && i2@339@01 in [0..3] && i1@338@01 != i2@339@01 | live]
; [else-branch: 176 | !(i1@338@01 in [0..3] && i2@339@01 in [0..3] && i1@338@01 != i2@339@01) | live]
(push) ; 6
; [then-branch: 176 | i1@338@01 in [0..3] && i2@339@01 in [0..3] && i1@338@01 != i2@339@01]
(assert (and
  (Seq_contains (Seq_range 0 3) i1@338@01)
  (and (Seq_contains (Seq_range 0 3) i2@339@01) (not (= i1@338@01 i2@339@01)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@341@01  $FPM) r) $Perm.Write)
  :pattern ((inv@286@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@341@01  $FPM) x@274@01) $Perm.Write))
; [eval] xs[i1] != xs[i2]
; [eval] xs[i1]
(set-option :timeout 0)
(push) ; 7
(assert (not (>= i1@338@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i1@338@01 (Seq_length xs@276@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] xs[i2]
(push) ; 7
(assert (not (>= i2@339@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i2@339@01 (Seq_length xs@276@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 176 | !(i1@338@01 in [0..3] && i2@339@01 in [0..3] && i1@338@01 != i2@339@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 3) i1@338@01)
    (and (Seq_contains (Seq_range 0 3) i2@339@01) (not (= i1@338@01 i2@339@01))))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@341@01  $FPM) r) $Perm.Write)
  :pattern ((inv@286@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@341@01  $FPM) x@274@01) $Perm.Write))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Seq_contains (Seq_range 0 3) i1@338@01)
    (and (Seq_contains (Seq_range 0 3) i2@339@01) (not (= i1@338@01 i2@339@01))))
  (and
    (Seq_contains (Seq_range 0 3) i1@338@01)
    (Seq_contains (Seq_range 0 3) i2@339@01)
    (not (= i1@338@01 i2@339@01))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@341@01  $FPM) r) $Perm.Write)
      :pattern ((inv@286@01 r))
      :qid |qp-fld-prm-bnd|))
    (<= ($FVF.perm_f (as pm@341@01  $FPM) x@274@01) $Perm.Write))))
; Joined path conditions
(assert (=>
  (not
    (and
      (Seq_contains (Seq_range 0 3) i1@338@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@339@01)
        (not (= i1@338@01 i2@339@01)))))
  (and
    (not
      (and
        (Seq_contains (Seq_range 0 3) i1@338@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@339@01)
          (not (= i1@338@01 i2@339@01)))))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@341@01  $FPM) r) $Perm.Write)
      :pattern ((inv@286@01 r))
      :qid |qp-fld-prm-bnd|))
    (<= ($FVF.perm_f (as pm@341@01  $FPM) x@274@01) $Perm.Write))))
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 3) i1@338@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@339@01)
        (not (= i1@338@01 i2@339@01)))))
  (and
    (Seq_contains (Seq_range 0 3) i1@338@01)
    (and (Seq_contains (Seq_range 0 3) i2@339@01) (not (= i1@338@01 i2@339@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
    (= ($FVF.lookup_f (as sm@337@01  $FVF<f>) r) ($FVF.lookup_f $t@285@01 r)))
  :pattern (($FVF.lookup_f (as sm@337@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@285@01 r))
  :qid |qp.fvfValDef146|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@274@01)
    (=
      ($FVF.lookup_f (as sm@337@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@304@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@337@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@304@01  $FVF<f>) r))
  :qid |qp.fvfValDef147|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@340@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@340@01  $FPM) r))
  :qid |qp.resPrmSumDef148|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@341@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@341@01  $FPM) r))
  :qid |qp.resPrmSumDef149|)))
; Nested auxiliary terms: non-globals (aux)
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((i1@338@01 Int) (i2@339@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@338@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@339@01)
        (not (= i1@338@01 i2@339@01))))
    (not (= (Seq_index xs@276@01 i1@338@01) (Seq_index xs@276@01 i2@339@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@132@12@132@100|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@338@01 Int) (i2@339@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 3) i1@338@01)
      (and
        (Seq_contains (Seq_range 0 3) i2@339@01)
        (not (= i1@338@01 i2@339@01))))
    (not (= (Seq_index xs@276@01 i1@338@01) (Seq_index xs@276@01 i2@339@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@132@12@132@100|)))
(declare-const k@342@01 Int)
(push) ; 4
; [eval] 0 <= k && k < 3
; [eval] 0 <= k
(push) ; 5
; [then-branch: 177 | !(0 <= k@342@01) | live]
; [else-branch: 177 | 0 <= k@342@01 | live]
(push) ; 6
; [then-branch: 177 | !(0 <= k@342@01)]
(assert (not (<= 0 k@342@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(declare-const pm@343@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@343@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@343@01  $FPM) r))
  :qid |qp.resPrmSumDef150|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@343@01  $FPM) r) $Perm.Write)
  :pattern ((inv@286@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@343@01  $FPM) x@274@01) $Perm.Write))
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 177 | 0 <= k@342@01]
(assert (<= 0 k@342@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(declare-const pm@344@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@344@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@344@01  $FPM) r))
  :qid |qp.resPrmSumDef151|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@344@01  $FPM) r) $Perm.Write)
  :pattern ((inv@286@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@344@01  $FPM) x@274@01) $Perm.Write))
; [eval] k < 3
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@343@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@343@01  $FPM) r))
  :qid |qp.resPrmSumDef150|)))
(assert (=>
  (not (<= 0 k@342@01))
  (and
    (not (<= 0 k@342@01))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@343@01  $FPM) r) $Perm.Write)
      :pattern ((inv@286@01 r))
      :qid |qp-fld-prm-bnd|))
    (<= ($FVF.perm_f (as pm@343@01  $FPM) x@274@01) $Perm.Write))))
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@344@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@344@01  $FPM) r))
  :qid |qp.resPrmSumDef151|)))
(assert (=>
  (<= 0 k@342@01)
  (and
    (<= 0 k@342@01)
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@344@01  $FPM) r) $Perm.Write)
      :pattern ((inv@286@01 r))
      :qid |qp-fld-prm-bnd|))
    (<= ($FVF.perm_f (as pm@344@01  $FPM) x@274@01) $Perm.Write))))
(assert (or (<= 0 k@342@01) (not (<= 0 k@342@01))))
(assert (and (<= 0 k@342@01) (< k@342@01 3)))
; [eval] xs[k]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= k@342@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@342@01 (Seq_length xs@276@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@345@01 ($Ref) Int)
(declare-fun img@346@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@343@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@343@01  $FPM) r))
  :qid |qp.resPrmSumDef150|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@344@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@344@01  $FPM) r))
  :qid |qp.resPrmSumDef151|)))
; Nested auxiliary terms: non-globals
(assert (forall ((k@342@01 Int)) (!
  (=>
    (and (<= 0 k@342@01) (< k@342@01 3))
    (and
      (=>
        (not (<= 0 k@342@01))
        (and
          (not (<= 0 k@342@01))
          (forall ((r $Ref)) (!
            (<= ($FVF.perm_f (as pm@343@01  $FPM) r) $Perm.Write)
            :pattern ((inv@286@01 r))
            :qid |qp-fld-prm-bnd|))
          (<= ($FVF.perm_f (as pm@343@01  $FPM) x@274@01) $Perm.Write)))
      (=>
        (<= 0 k@342@01)
        (and
          (<= 0 k@342@01)
          (forall ((r $Ref)) (!
            (<= ($FVF.perm_f (as pm@344@01  $FPM) r) $Perm.Write)
            :pattern ((inv@286@01 r))
            :qid |qp-fld-prm-bnd|))
          (<= ($FVF.perm_f (as pm@344@01  $FPM) x@274@01) $Perm.Write)))
      (or (<= 0 k@342@01) (not (<= 0 k@342@01)))))
  :pattern ((Seq_index xs@276@01 k@342@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((k1@342@01 Int) (k2@342@01 Int)) (!
  (=>
    (and
      (and (<= 0 k1@342@01) (< k1@342@01 3))
      (and (<= 0 k2@342@01) (< k2@342@01 3))
      (= (Seq_index xs@276@01 k1@342@01) (Seq_index xs@276@01 k2@342@01)))
    (= k1@342@01 k2@342@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@342@01 Int)) (!
  (=>
    (and (<= 0 k@342@01) (< k@342@01 3))
    (and
      (= (inv@345@01 (Seq_index xs@276@01 k@342@01)) k@342@01)
      (img@346@01 (Seq_index xs@276@01 k@342@01))))
  :pattern ((Seq_index xs@276@01 k@342@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@346@01 r) (and (<= 0 (inv@345@01 r)) (< (inv@345@01 r) 3)))
    (= (Seq_index xs@276@01 (inv@345@01 r)) r))
  :pattern ((inv@345@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@345@01 r)) (< (inv@345@01 r) 3))
      (img@346@01 r)
      (= r (Seq_index xs@276@01 (inv@345@01 r))))
    (>
      (+
        (ite
          (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
          $Perm.Write
          $Perm.No)
        (ite (= r x@274@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-12541|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@347@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@347@01  $FVF<f>)))
      (and (and (<= 0 (inv@345@01 r)) (< (inv@345@01 r) 3)) (img@346@01 r)))
    (=>
      (and (and (<= 0 (inv@345@01 r)) (< (inv@345@01 r) 3)) (img@346@01 r))
      (Set_in r ($FVF.domain_f (as sm@347@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@347@01  $FVF<f>))))
  :qid |qp.fvfDomDef154|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@345@01 r)) (< (inv@345@01 r) 3)) (img@346@01 r))
      (= r x@274@01))
    (=
      ($FVF.lookup_f (as sm@347@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@304@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@347@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@304@01  $FVF<f>) r))
  :qid |qp.fvfValDef152|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@345@01 r)) (< (inv@345@01 r) 3)) (img@346@01 r))
      (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3))))
    (= ($FVF.lookup_f (as sm@347@01  $FVF<f>) r) ($FVF.lookup_f $t@285@01 r)))
  :pattern (($FVF.lookup_f (as sm@347@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@285@01 r))
  :qid |qp.fvfValDef153|)))
(assert (fun06%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@337@01  $FVF<f>) x@274@01))
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<f>To$Snap (as sm@347@01  $FVF<f>)))))) x@274@01 i@275@01 xs@276@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
    (= ($FVF.lookup_f (as sm@337@01  $FVF<f>) r) ($FVF.lookup_f $t@285@01 r)))
  :pattern (($FVF.lookup_f (as sm@337@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@285@01 r))
  :qid |qp.fvfValDef146|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@274@01)
    (=
      ($FVF.lookup_f (as sm@337@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@304@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@337@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@304@01  $FVF<f>) r))
  :qid |qp.fvfValDef147|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@340@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@340@01  $FPM) r))
  :qid |qp.resPrmSumDef148|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@341@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@341@01  $FPM) r))
  :qid |qp.resPrmSumDef149|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@343@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@343@01  $FPM) r))
  :qid |qp.resPrmSumDef150|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@344@01  $FPM) r)
    (+
      (ite
        (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite (= r x@274@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@344@01  $FPM) r))
  :qid |qp.resPrmSumDef151|)))
(assert (forall ((k@342@01 Int)) (!
  (=>
    (and (<= 0 k@342@01) (< k@342@01 3))
    (and
      (= (inv@345@01 (Seq_index xs@276@01 k@342@01)) k@342@01)
      (img@346@01 (Seq_index xs@276@01 k@342@01))))
  :pattern ((Seq_index xs@276@01 k@342@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@346@01 r) (and (<= 0 (inv@345@01 r)) (< (inv@345@01 r) 3)))
    (= (Seq_index xs@276@01 (inv@345@01 r)) r))
  :pattern ((inv@345@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@347@01  $FVF<f>)))
      (and (and (<= 0 (inv@345@01 r)) (< (inv@345@01 r) 3)) (img@346@01 r)))
    (=>
      (and (and (<= 0 (inv@345@01 r)) (< (inv@345@01 r) 3)) (img@346@01 r))
      (Set_in r ($FVF.domain_f (as sm@347@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@347@01  $FVF<f>))))
  :qid |qp.fvfDomDef154|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@345@01 r)) (< (inv@345@01 r) 3)) (img@346@01 r))
      (= r x@274@01))
    (=
      ($FVF.lookup_f (as sm@347@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@304@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@347@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@304@01  $FVF<f>) r))
  :qid |qp.fvfValDef152|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@345@01 r)) (< (inv@345@01 r) 3)) (img@346@01 r))
      (and (img@287@01 r) (and (<= 0 (inv@286@01 r)) (< (inv@286@01 r) 3))))
    (= ($FVF.lookup_f (as sm@347@01  $FVF<f>) r) ($FVF.lookup_f $t@285@01 r)))
  :pattern (($FVF.lookup_f (as sm@347@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@285@01 r))
  :qid |qp.fvfValDef153|)))
(assert (and
  (=>
    (and
      (img@287@01 x@274@01)
      (and (<= 0 (inv@286@01 x@274@01)) (< (inv@286@01 x@274@01) 3)))
    (=
      ($FVF.lookup_f (as sm@337@01  $FVF<f>) x@274@01)
      ($FVF.lookup_f $t@285@01 x@274@01)))
  (=
    ($FVF.lookup_f (as sm@337@01  $FVF<f>) x@274@01)
    ($FVF.lookup_f (as sm@304@01  $FVF<f>) x@274@01))
  (forall ((i1@338@01 Int) (i2@339@01 Int)) (!
    (=>
      (and
        (Seq_contains (Seq_range 0 3) i1@338@01)
        (and
          (Seq_contains (Seq_range 0 3) i2@339@01)
          (not (= i1@338@01 i2@339@01))))
      (not (= (Seq_index xs@276@01 i1@338@01) (Seq_index xs@276@01 i2@339@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/issues/issue_0139.vpr@132@12@132@100|))
  (forall ((k@342@01 Int)) (!
    (=>
      (and (<= 0 k@342@01) (< k@342@01 3))
      (and
        (=>
          (not (<= 0 k@342@01))
          (and
            (not (<= 0 k@342@01))
            (forall ((r $Ref)) (!
              (<= ($FVF.perm_f (as pm@343@01  $FPM) r) $Perm.Write)
              :pattern ((inv@286@01 r))
              :qid |qp-fld-prm-bnd|))
            (<= ($FVF.perm_f (as pm@343@01  $FPM) x@274@01) $Perm.Write)))
        (=>
          (<= 0 k@342@01)
          (and
            (<= 0 k@342@01)
            (forall ((r $Ref)) (!
              (<= ($FVF.perm_f (as pm@344@01  $FPM) r) $Perm.Write)
              :pattern ((inv@286@01 r))
              :qid |qp-fld-prm-bnd|))
            (<= ($FVF.perm_f (as pm@344@01  $FPM) x@274@01) $Perm.Write)))
        (or (<= 0 k@342@01) (not (<= 0 k@342@01)))))
    :pattern ((Seq_index xs@276@01 k@342@01))
    :qid |f-aux|))
  (fun06%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@337@01  $FVF<f>) x@274@01))
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<f>To$Snap (as sm@347@01  $FVF<f>)))))) x@274@01 i@275@01 xs@276@01)))
(push) ; 3
(assert (not (=
  10
  (fun06 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@337@01  $FVF<f>) x@274@01))
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<f>To$Snap (as sm@347@01  $FVF<f>)))))) x@274@01 i@275@01 xs@276@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
