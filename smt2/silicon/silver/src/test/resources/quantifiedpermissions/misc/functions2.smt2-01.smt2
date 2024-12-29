(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-29 14:50:59
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
; Declaring symbols related to program functions (from program analysis)
(declare-fun fun01 ($Snap Set<$Ref> $Ref) Int)
(declare-fun fun01%limited ($Snap Set<$Ref> $Ref) Int)
(declare-fun fun01%stateless (Set<$Ref> $Ref) Bool)
(declare-fun fun01%precondition ($Snap Set<$Ref> $Ref) Bool)
(declare-fun fun02 ($Snap Seq<$Ref> Seq<$Ref>) Bool)
(declare-fun fun02%limited ($Snap Seq<$Ref> Seq<$Ref>) Bool)
(declare-fun fun02%stateless (Seq<$Ref> Seq<$Ref>) Bool)
(declare-fun fun02%precondition ($Snap Seq<$Ref> Seq<$Ref>) Bool)
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
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
(declare-fun inv@7@00 ($Snap Set<$Ref> $Ref $Ref) $Ref)
(declare-fun img@8@00 ($Snap Set<$Ref> $Ref $Ref) Bool)
(declare-fun inv@13@00 ($Snap Seq<$Ref> Seq<$Ref> $Ref) Int)
(declare-fun img@14@00 ($Snap Seq<$Ref> Seq<$Ref> $Ref) Bool)
(declare-fun inv@18@00 ($Snap Seq<$Ref> Seq<$Ref> $Ref) Int)
(declare-fun img@19@00 ($Snap Seq<$Ref> Seq<$Ref> $Ref) Bool)
(declare-fun sm@20@00 ($Snap Seq<$Ref> Seq<$Ref>) $FVF<f>)
(assert (forall ((s@$ $Snap) (xs@0@00 Set<$Ref>) (y@1@00 $Ref)) (!
  (= (fun01%limited s@$ xs@0@00 y@1@00) (fun01 s@$ xs@0@00 y@1@00))
  :pattern ((fun01 s@$ xs@0@00 y@1@00))
  :qid |quant-u-11260|)))
(assert (forall ((s@$ $Snap) (xs@0@00 Set<$Ref>) (y@1@00 $Ref)) (!
  (fun01%stateless xs@0@00 y@1@00)
  :pattern ((fun01%limited s@$ xs@0@00 y@1@00))
  :qid |quant-u-11261|)))
(assert (forall ((s@$ $Snap) (xs@0@00 Set<$Ref>) (y@1@00 $Ref)) (!
  (and
    (forall ((x@6@00 $Ref)) (!
      (=>
        (Set_in x@6@00 xs@0@00)
        (and
          (= (inv@7@00 s@$ xs@0@00 y@1@00 x@6@00) x@6@00)
          (img@8@00 s@$ xs@0@00 y@1@00 x@6@00)))
      :pattern ((Set_in x@6@00 xs@0@00))
      :pattern ((inv@7@00 s@$ xs@0@00 y@1@00 x@6@00))
      :pattern ((img@8@00 s@$ xs@0@00 y@1@00 x@6@00))
      :qid |quant-u-11265|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@8@00 s@$ xs@0@00 y@1@00 r)
          (Set_in (inv@7@00 s@$ xs@0@00 y@1@00 r) xs@0@00))
        (= (inv@7@00 s@$ xs@0@00 y@1@00 r) r))
      :pattern ((inv@7@00 s@$ xs@0@00 y@1@00 r))
      :qid |f-fctOfInv|))
    (=>
      (fun01%precondition s@$ xs@0@00 y@1@00)
      (=
        (fun01 s@$ xs@0@00 y@1@00)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first s@$)) y@1@00))))
  :pattern ((fun01 s@$ xs@0@00 y@1@00))
  :qid |quant-u-11266|)))
(assert (forall ((s@$ $Snap) (xs@0@00 Set<$Ref>) (y@1@00 $Ref)) (!
  true
  :pattern ((fun01 s@$ xs@0@00 y@1@00))
  :qid |quant-u-11267|)))
(assert (forall ((s@$ $Snap) (xs@3@00 Seq<$Ref>) (ys@4@00 Seq<$Ref>)) (!
  (= (fun02%limited s@$ xs@3@00 ys@4@00) (fun02 s@$ xs@3@00 ys@4@00))
  :pattern ((fun02 s@$ xs@3@00 ys@4@00))
  :qid |quant-u-11262|)))
(assert (forall ((s@$ $Snap) (xs@3@00 Seq<$Ref>) (ys@4@00 Seq<$Ref>)) (!
  (fun02%stateless xs@3@00 ys@4@00)
  :pattern ((fun02%limited s@$ xs@3@00 ys@4@00))
  :qid |quant-u-11263|)))
(assert (forall ((s@$ $Snap) (xs@3@00 Seq<$Ref>) (ys@4@00 Seq<$Ref>)) (!
  (and
    (forall ((i@12@00 Int)) (!
      (=>
        (and (<= 0 i@12@00) (< i@12@00 (Seq_length xs@3@00)))
        (and
          (= (inv@13@00 s@$ xs@3@00 ys@4@00 (Seq_index xs@3@00 i@12@00)) i@12@00)
          (img@14@00 s@$ xs@3@00 ys@4@00 (Seq_index xs@3@00 i@12@00))))
      :pattern ((Seq_index xs@3@00 i@12@00))
      :qid |quant-u-11269|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@14@00 s@$ xs@3@00 ys@4@00 r)
          (and
            (<= 0 (inv@13@00 s@$ xs@3@00 ys@4@00 r))
            (< (inv@13@00 s@$ xs@3@00 ys@4@00 r) (Seq_length xs@3@00))))
        (= (Seq_index xs@3@00 (inv@13@00 s@$ xs@3@00 ys@4@00 r)) r))
      :pattern ((inv@13@00 s@$ xs@3@00 ys@4@00 r))
      :qid |f-fctOfInv|))
    (forall ((i@17@00 Int)) (!
      (=>
        (and (<= 0 i@17@00) (< i@17@00 (Seq_length ys@4@00)))
        (and
          (= (inv@18@00 s@$ xs@3@00 ys@4@00 (Seq_index ys@4@00 i@17@00)) i@17@00)
          (img@19@00 s@$ xs@3@00 ys@4@00 (Seq_index ys@4@00 i@17@00))))
      :pattern ((Seq_index ys@4@00 i@17@00))
      :qid |quant-u-11271|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@19@00 s@$ xs@3@00 ys@4@00 r)
          (and
            (<= 0 (inv@18@00 s@$ xs@3@00 ys@4@00 r))
            (< (inv@18@00 s@$ xs@3@00 ys@4@00 r) (Seq_length ys@4@00))))
        (= (Seq_index ys@4@00 (inv@18@00 s@$ xs@3@00 ys@4@00 r)) r))
      :pattern ((inv@18@00 s@$ xs@3@00 ys@4@00 r))
      :qid |f-fctOfInv|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@14@00 s@$ xs@3@00 ys@4@00 r)
          (and
            (<= 0 (inv@13@00 s@$ xs@3@00 ys@4@00 r))
            (< (inv@13@00 s@$ xs@3@00 ys@4@00 r) (Seq_length xs@3@00))))
        (=
          ($FVF.lookup_f (sm@20@00 s@$ xs@3@00 ys@4@00) r)
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second s@$))) r)))
      :pattern (($FVF.lookup_f (sm@20@00 s@$ xs@3@00 ys@4@00) r))
      :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second s@$))) r))
      :qid |qp.fvfValDef0|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@19@00 s@$ xs@3@00 ys@4@00 r)
          (and
            (<= 0 (inv@18@00 s@$ xs@3@00 ys@4@00 r))
            (< (inv@18@00 s@$ xs@3@00 ys@4@00 r) (Seq_length ys@4@00))))
        (=
          ($FVF.lookup_f (sm@20@00 s@$ xs@3@00 ys@4@00) r)
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))) r)))
      :pattern (($FVF.lookup_f (sm@20@00 s@$ xs@3@00 ys@4@00) r))
      :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))) r))
      :qid |qp.fvfValDef1|))
    (=>
      (fun02%precondition s@$ xs@3@00 ys@4@00)
      (=
        (fun02 s@$ xs@3@00 ys@4@00)
        (=
          ($FVF.lookup_f (sm@20@00 s@$ xs@3@00 ys@4@00) (Seq_index xs@3@00 0))
          ($FVF.lookup_f (sm@20@00 s@$ xs@3@00 ys@4@00) (Seq_index ys@4@00 0))))))
  :pattern ((fun02 s@$ xs@3@00 ys@4@00))
  :qid |quant-u-11273|)))
(assert (forall ((s@$ $Snap) (xs@3@00 Seq<$Ref>) (ys@4@00 Seq<$Ref>)) (!
  true
  :pattern ((fun02 s@$ xs@3@00 ys@4@00))
  :qid |quant-u-11274|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- test01 ----------
(declare-const xs@0@01 Set<$Ref>)
(declare-const y@1@01 $Ref)
(declare-const xs@2@01 Set<$Ref>)
(declare-const y@3@01 $Ref)
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
; inhale (forall x: Ref ::(x in xs) ==> acc(x.f, write))
(declare-const x@4@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Set_in x@4@01 xs@2@01))
(pop) ; 3
(declare-const $t@5@01 $FVF<f>)
(declare-fun inv@6@01 ($Ref) $Ref)
(declare-fun img@7@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@4@01 $Ref) (x2@4@01 $Ref)) (!
  (=>
    (and (Set_in x1@4@01 xs@2@01) (Set_in x2@4@01 xs@2@01) (= x1@4@01 x2@4@01))
    (= x1@4@01 x2@4@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@4@01 $Ref)) (!
  (=>
    (Set_in x@4@01 xs@2@01)
    (and (= (inv@6@01 x@4@01) x@4@01) (img@7@01 x@4@01)))
  :pattern ((Set_in x@4@01 xs@2@01))
  :pattern ((inv@6@01 x@4@01))
  :pattern ((img@7@01 x@4@01))
  :qid |quant-u-11276|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@7@01 r) (Set_in (inv@6@01 r) xs@2@01)) (= (inv@6@01 r) r))
  :pattern ((inv@6@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@4@01 $Ref)) (!
  (=> (Set_in x@4@01 xs@2@01) (not (= x@4@01 $Ref.null)))
  :pattern ((Set_in x@4@01 xs@2@01))
  :pattern ((inv@6@01 x@4@01))
  :pattern ((img@7@01 x@4@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall x: Ref :: { (x in xs) } (x in xs) ==> x.f > 0)
(declare-const $t@8@01 $Snap)
(assert (= $t@8@01 $Snap.unit))
; [eval] (forall x: Ref :: { (x in xs) } (x in xs) ==> x.f > 0)
(declare-const x@9@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs) ==> x.f > 0
; [eval] (x in xs)
(push) ; 4
; [then-branch: 0 | x@9@01 in xs@2@01 | live]
; [else-branch: 0 | !(x@9@01 in xs@2@01) | live]
(push) ; 5
; [then-branch: 0 | x@9@01 in xs@2@01]
(assert (Set_in x@9@01 xs@2@01))
; [eval] x.f > 0
(push) ; 6
(assert (not (and (img@7@01 x@9@01) (Set_in (inv@6@01 x@9@01) xs@2@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 0 | !(x@9@01 in xs@2@01)]
(assert (not (Set_in x@9@01 xs@2@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in x@9@01 xs@2@01)) (Set_in x@9@01 xs@2@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@9@01 $Ref)) (!
  (or (not (Set_in x@9@01 xs@2@01)) (Set_in x@9@01 xs@2@01))
  :pattern ((Set_in x@9@01 xs@2@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@14@10@14@46-aux|)))
(assert (forall ((x@9@01 $Ref)) (!
  (=> (Set_in x@9@01 xs@2@01) (> ($FVF.lookup_f $t@5@01 x@9@01) 0))
  :pattern ((Set_in x@9@01 xs@2@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@14@10@14@46|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (y in xs)
(declare-const $t@10@01 $Snap)
(assert (= $t@10@01 $Snap.unit))
; [eval] (y in xs)
(assert (Set_in y@3@01 xs@2@01))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; label pre
; [exec]
; assert fun01(xs, y) == y.f
; [eval] fun01(xs, y) == y.f
; [eval] fun01(xs, y)
(set-option :timeout 0)
(push) ; 3
(declare-const x@11@01 $Ref)
(push) ; 4
; [eval] (x in xs)
(assert (Set_in x@11@01 xs@2@01))
(pop) ; 4
(declare-fun inv@12@01 ($Ref) $Ref)
(declare-fun img@13@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@11@01 $Ref) (x2@11@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@11@01 xs@2@01)
      (Set_in x2@11@01 xs@2@01)
      (= x1@11@01 x2@11@01))
    (= x1@11@01 x2@11@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@11@01 $Ref)) (!
  (=>
    (Set_in x@11@01 xs@2@01)
    (and (= (inv@12@01 x@11@01) x@11@01) (img@13@01 x@11@01)))
  :pattern ((Set_in x@11@01 xs@2@01))
  :pattern ((inv@12@01 x@11@01))
  :pattern ((img@13@01 x@11@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@13@01 r) (Set_in (inv@12@01 r) xs@2@01)) (= (inv@12@01 r) r))
  :pattern ((inv@12@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@12@01 r) xs@2@01) (img@13@01 r) (= r (inv@12@01 r)))
    (>
      (ite (and (img@7@01 r) (Set_in (inv@6@01 r) xs@2@01)) $Perm.Write $Perm.No)
      $Perm.No))
  
  :qid |quant-u-11278|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@14@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@14@01  $FVF<f>)))
      (and (Set_in (inv@12@01 r) xs@2@01) (img@13@01 r)))
    (=>
      (and (Set_in (inv@12@01 r) xs@2@01) (img@13@01 r))
      (Set_in r ($FVF.domain_f (as sm@14@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@14@01  $FVF<f>))))
  :qid |qp.fvfDomDef1|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@12@01 r) xs@2@01) (img@13@01 r))
      (and (img@7@01 r) (Set_in (inv@6@01 r) xs@2@01)))
    (= ($FVF.lookup_f (as sm@14@01  $FVF<f>) r) ($FVF.lookup_f $t@5@01 r)))
  :pattern (($FVF.lookup_f (as sm@14@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@5@01 r))
  :qid |qp.fvfValDef0|)))
; [eval] (forall x: Ref ::(x in xs) ==> x.f > 0)
(declare-const x@15@01 $Ref)
(push) ; 4
; [eval] (x in xs) ==> x.f > 0
; [eval] (x in xs)
(push) ; 5
; [then-branch: 1 | x@15@01 in xs@2@01 | live]
; [else-branch: 1 | !(x@15@01 in xs@2@01) | live]
(push) ; 6
; [then-branch: 1 | x@15@01 in xs@2@01]
(assert (Set_in x@15@01 xs@2@01))
; [eval] x.f > 0
(push) ; 7
(assert (not (and (img@7@01 x@15@01) (Set_in (inv@6@01 x@15@01) xs@2@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 1 | !(x@15@01 in xs@2@01)]
(assert (not (Set_in x@15@01 xs@2@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in x@15@01 xs@2@01)) (Set_in x@15@01 xs@2@01)))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((x@15@01 $Ref)) (!
  (=> (Set_in x@15@01 xs@2@01) (> ($FVF.lookup_f $t@5@01 x@15@01) 0))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@8@12@8@48|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((x@15@01 $Ref)) (!
  (=> (Set_in x@15@01 xs@2@01) (> ($FVF.lookup_f $t@5@01 x@15@01) 0))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@8@12@8@48|)))
; [eval] (y in xs)
(assert (fun01%precondition ($Snap.combine
  ($SortWrappers.$FVF<f>To$Snap (as sm@14@01  $FVF<f>))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@2@01 y@3@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((x@11@01 $Ref)) (!
  (=>
    (Set_in x@11@01 xs@2@01)
    (and (= (inv@12@01 x@11@01) x@11@01) (img@13@01 x@11@01)))
  :pattern ((Set_in x@11@01 xs@2@01))
  :pattern ((inv@12@01 x@11@01))
  :pattern ((img@13@01 x@11@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@13@01 r) (Set_in (inv@12@01 r) xs@2@01)) (= (inv@12@01 r) r))
  :pattern ((inv@12@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@14@01  $FVF<f>)))
      (and (Set_in (inv@12@01 r) xs@2@01) (img@13@01 r)))
    (=>
      (and (Set_in (inv@12@01 r) xs@2@01) (img@13@01 r))
      (Set_in r ($FVF.domain_f (as sm@14@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@14@01  $FVF<f>))))
  :qid |qp.fvfDomDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@12@01 r) xs@2@01) (img@13@01 r))
      (and (img@7@01 r) (Set_in (inv@6@01 r) xs@2@01)))
    (= ($FVF.lookup_f (as sm@14@01  $FVF<f>) r) ($FVF.lookup_f $t@5@01 r)))
  :pattern (($FVF.lookup_f (as sm@14@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@5@01 r))
  :qid |qp.fvfValDef0|)))
(assert (and
  (forall ((x@15@01 $Ref)) (!
    (=> (Set_in x@15@01 xs@2@01) (> ($FVF.lookup_f $t@5@01 x@15@01) 0))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@8@12@8@48|))
  (fun01%precondition ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@14@01  $FVF<f>))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@2@01 y@3@01)))
(push) ; 3
(assert (not (and (img@7@01 y@3@01) (Set_in (inv@6@01 y@3@01) xs@2@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (=
  (fun01 ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@14@01  $FVF<f>))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@2@01 y@3@01)
  ($FVF.lookup_f $t@5@01 y@3@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (fun01 ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@14@01  $FVF<f>))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@2@01 y@3@01)
  ($FVF.lookup_f $t@5@01 y@3@01)))
; [exec]
; assert fun01(xs, y) == old[pre](fun01(xs, y))
; [eval] fun01(xs, y) == old[pre](fun01(xs, y))
; [eval] fun01(xs, y)
(push) ; 3
(declare-const x@16@01 $Ref)
(push) ; 4
; [eval] (x in xs)
(assert (Set_in x@16@01 xs@2@01))
(pop) ; 4
(declare-fun inv@17@01 ($Ref) $Ref)
(declare-fun img@18@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@16@01 $Ref) (x2@16@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@16@01 xs@2@01)
      (Set_in x2@16@01 xs@2@01)
      (= x1@16@01 x2@16@01))
    (= x1@16@01 x2@16@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@16@01 $Ref)) (!
  (=>
    (Set_in x@16@01 xs@2@01)
    (and (= (inv@17@01 x@16@01) x@16@01) (img@18@01 x@16@01)))
  :pattern ((Set_in x@16@01 xs@2@01))
  :pattern ((inv@17@01 x@16@01))
  :pattern ((img@18@01 x@16@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@18@01 r) (Set_in (inv@17@01 r) xs@2@01)) (= (inv@17@01 r) r))
  :pattern ((inv@17@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@17@01 r) xs@2@01) (img@18@01 r) (= r (inv@17@01 r)))
    (>
      (ite (and (img@7@01 r) (Set_in (inv@6@01 r) xs@2@01)) $Perm.Write $Perm.No)
      $Perm.No))
  
  :qid |quant-u-11280|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@19@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@19@01  $FVF<f>)))
      (and (Set_in (inv@17@01 r) xs@2@01) (img@18@01 r)))
    (=>
      (and (Set_in (inv@17@01 r) xs@2@01) (img@18@01 r))
      (Set_in r ($FVF.domain_f (as sm@19@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@19@01  $FVF<f>))))
  :qid |qp.fvfDomDef3|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@17@01 r) xs@2@01) (img@18@01 r))
      (and (img@7@01 r) (Set_in (inv@6@01 r) xs@2@01)))
    (= ($FVF.lookup_f (as sm@19@01  $FVF<f>) r) ($FVF.lookup_f $t@5@01 r)))
  :pattern (($FVF.lookup_f (as sm@19@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@5@01 r))
  :qid |qp.fvfValDef2|)))
; [eval] (forall x: Ref ::(x in xs) ==> x.f > 0)
(declare-const x@20@01 $Ref)
(push) ; 4
; [eval] (x in xs) ==> x.f > 0
; [eval] (x in xs)
(push) ; 5
; [then-branch: 2 | x@20@01 in xs@2@01 | live]
; [else-branch: 2 | !(x@20@01 in xs@2@01) | live]
(push) ; 6
; [then-branch: 2 | x@20@01 in xs@2@01]
(assert (Set_in x@20@01 xs@2@01))
; [eval] x.f > 0
(push) ; 7
(assert (not (and (img@7@01 x@20@01) (Set_in (inv@6@01 x@20@01) xs@2@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 2 | !(x@20@01 in xs@2@01)]
(assert (not (Set_in x@20@01 xs@2@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in x@20@01 xs@2@01)) (Set_in x@20@01 xs@2@01)))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((x@20@01 $Ref)) (!
  (=> (Set_in x@20@01 xs@2@01) (> ($FVF.lookup_f $t@5@01 x@20@01) 0))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@8@12@8@48|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((x@20@01 $Ref)) (!
  (=> (Set_in x@20@01 xs@2@01) (> ($FVF.lookup_f $t@5@01 x@20@01) 0))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@8@12@8@48|)))
; [eval] (y in xs)
(assert (fun01%precondition ($Snap.combine
  ($SortWrappers.$FVF<f>To$Snap (as sm@19@01  $FVF<f>))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@2@01 y@3@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((x@16@01 $Ref)) (!
  (=>
    (Set_in x@16@01 xs@2@01)
    (and (= (inv@17@01 x@16@01) x@16@01) (img@18@01 x@16@01)))
  :pattern ((Set_in x@16@01 xs@2@01))
  :pattern ((inv@17@01 x@16@01))
  :pattern ((img@18@01 x@16@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@18@01 r) (Set_in (inv@17@01 r) xs@2@01)) (= (inv@17@01 r) r))
  :pattern ((inv@17@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@19@01  $FVF<f>)))
      (and (Set_in (inv@17@01 r) xs@2@01) (img@18@01 r)))
    (=>
      (and (Set_in (inv@17@01 r) xs@2@01) (img@18@01 r))
      (Set_in r ($FVF.domain_f (as sm@19@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@19@01  $FVF<f>))))
  :qid |qp.fvfDomDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@17@01 r) xs@2@01) (img@18@01 r))
      (and (img@7@01 r) (Set_in (inv@6@01 r) xs@2@01)))
    (= ($FVF.lookup_f (as sm@19@01  $FVF<f>) r) ($FVF.lookup_f $t@5@01 r)))
  :pattern (($FVF.lookup_f (as sm@19@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@5@01 r))
  :qid |qp.fvfValDef2|)))
(assert (and
  (forall ((x@20@01 $Ref)) (!
    (=> (Set_in x@20@01 xs@2@01) (> ($FVF.lookup_f $t@5@01 x@20@01) 0))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@8@12@8@48|))
  (fun01%precondition ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@19@01  $FVF<f>))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@2@01 y@3@01)))
; [eval] old[pre](fun01(xs, y))
; [eval] fun01(xs, y)
(push) ; 3
(declare-const x@21@01 $Ref)
(push) ; 4
; [eval] (x in xs)
(assert (Set_in x@21@01 xs@2@01))
(pop) ; 4
(declare-fun inv@22@01 ($Ref) $Ref)
(declare-fun img@23@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@21@01 $Ref) (x2@21@01 $Ref)) (!
  (=>
    (and
      (Set_in x1@21@01 xs@2@01)
      (Set_in x2@21@01 xs@2@01)
      (= x1@21@01 x2@21@01))
    (= x1@21@01 x2@21@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@21@01 $Ref)) (!
  (=>
    (Set_in x@21@01 xs@2@01)
    (and (= (inv@22@01 x@21@01) x@21@01) (img@23@01 x@21@01)))
  :pattern ((Set_in x@21@01 xs@2@01))
  :pattern ((inv@22@01 x@21@01))
  :pattern ((img@23@01 x@21@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@23@01 r) (Set_in (inv@22@01 r) xs@2@01)) (= (inv@22@01 r) r))
  :pattern ((inv@22@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@22@01 r) xs@2@01) (img@23@01 r) (= r (inv@22@01 r)))
    (>
      (ite (and (img@7@01 r) (Set_in (inv@6@01 r) xs@2@01)) $Perm.Write $Perm.No)
      $Perm.No))
  
  :qid |quant-u-11282|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@24@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@24@01  $FVF<f>)))
      (and (Set_in (inv@22@01 r) xs@2@01) (img@23@01 r)))
    (=>
      (and (Set_in (inv@22@01 r) xs@2@01) (img@23@01 r))
      (Set_in r ($FVF.domain_f (as sm@24@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@24@01  $FVF<f>))))
  :qid |qp.fvfDomDef5|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@22@01 r) xs@2@01) (img@23@01 r))
      (and (img@7@01 r) (Set_in (inv@6@01 r) xs@2@01)))
    (= ($FVF.lookup_f (as sm@24@01  $FVF<f>) r) ($FVF.lookup_f $t@5@01 r)))
  :pattern (($FVF.lookup_f (as sm@24@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@5@01 r))
  :qid |qp.fvfValDef4|)))
; [eval] (forall x: Ref ::(x in xs) ==> x.f > 0)
(declare-const x@25@01 $Ref)
(push) ; 4
; [eval] (x in xs) ==> x.f > 0
; [eval] (x in xs)
(push) ; 5
; [then-branch: 3 | x@25@01 in xs@2@01 | live]
; [else-branch: 3 | !(x@25@01 in xs@2@01) | live]
(push) ; 6
; [then-branch: 3 | x@25@01 in xs@2@01]
(assert (Set_in x@25@01 xs@2@01))
; [eval] x.f > 0
(push) ; 7
(assert (not (and (img@7@01 x@25@01) (Set_in (inv@6@01 x@25@01) xs@2@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 3 | !(x@25@01 in xs@2@01)]
(assert (not (Set_in x@25@01 xs@2@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (not (Set_in x@25@01 xs@2@01)) (Set_in x@25@01 xs@2@01)))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((x@25@01 $Ref)) (!
  (=> (Set_in x@25@01 xs@2@01) (> ($FVF.lookup_f $t@5@01 x@25@01) 0))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@8@12@8@48|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((x@25@01 $Ref)) (!
  (=> (Set_in x@25@01 xs@2@01) (> ($FVF.lookup_f $t@5@01 x@25@01) 0))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@8@12@8@48|)))
; [eval] (y in xs)
(assert (fun01%precondition ($Snap.combine
  ($SortWrappers.$FVF<f>To$Snap (as sm@24@01  $FVF<f>))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@2@01 y@3@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((x@21@01 $Ref)) (!
  (=>
    (Set_in x@21@01 xs@2@01)
    (and (= (inv@22@01 x@21@01) x@21@01) (img@23@01 x@21@01)))
  :pattern ((Set_in x@21@01 xs@2@01))
  :pattern ((inv@22@01 x@21@01))
  :pattern ((img@23@01 x@21@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@23@01 r) (Set_in (inv@22@01 r) xs@2@01)) (= (inv@22@01 r) r))
  :pattern ((inv@22@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@24@01  $FVF<f>)))
      (and (Set_in (inv@22@01 r) xs@2@01) (img@23@01 r)))
    (=>
      (and (Set_in (inv@22@01 r) xs@2@01) (img@23@01 r))
      (Set_in r ($FVF.domain_f (as sm@24@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@24@01  $FVF<f>))))
  :qid |qp.fvfDomDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@22@01 r) xs@2@01) (img@23@01 r))
      (and (img@7@01 r) (Set_in (inv@6@01 r) xs@2@01)))
    (= ($FVF.lookup_f (as sm@24@01  $FVF<f>) r) ($FVF.lookup_f $t@5@01 r)))
  :pattern (($FVF.lookup_f (as sm@24@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@5@01 r))
  :qid |qp.fvfValDef4|)))
(assert (and
  (forall ((x@25@01 $Ref)) (!
    (=> (Set_in x@25@01 xs@2@01) (> ($FVF.lookup_f $t@5@01 x@25@01) 0))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@8@12@8@48|))
  (fun01%precondition ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@24@01  $FVF<f>))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@2@01 y@3@01)))
(push) ; 3
(assert (not (=
  (fun01 ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@19@01  $FVF<f>))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@2@01 y@3@01)
  (fun01 ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@24@01  $FVF<f>))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@2@01 y@3@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (fun01 ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@19@01  $FVF<f>))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@2@01 y@3@01)
  (fun01 ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@24@01  $FVF<f>))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@2@01 y@3@01)))
; [exec]
; assert false
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@26@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@7@01 r) (Set_in (inv@6@01 r) xs@2@01))
    (= ($FVF.lookup_f (as sm@26@01  $FVF<f>) r) ($FVF.lookup_f $t@5@01 r)))
  :pattern (($FVF.lookup_f (as sm@26@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@5@01 r))
  :qid |qp.fvfValDef6|)))
(declare-const pm@27@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@27@01  $FPM) r)
    (ite (and (img@7@01 r) (Set_in (inv@6@01 r) xs@2@01)) $Perm.Write $Perm.No))
  :pattern (($FVF.perm_f (as pm@27@01  $FPM) r))
  :qid |qp.resPrmSumDef7|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@27@01  $FPM) r) $Perm.Write)
  :pattern ((inv@6@01 r))
  :qid |qp-fld-prm-bnd|)))
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
; ---------- test02 ----------
(declare-const xs@28@01 Seq<$Ref>)
(declare-const ys@29@01 Seq<$Ref>)
(declare-const xs@30@01 Seq<$Ref>)
(declare-const ys@31@01 Seq<$Ref>)
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
; inhale (forall i: Int, j: Int ::
;     { xs[i], xs[j] }
;     i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==>
;     xs[i] != xs[j])
(declare-const $t@32@01 $Snap)
(assert (= $t@32@01 $Snap.unit))
; [eval] (forall i: Int, j: Int :: { xs[i], xs[j] } i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j])
(declare-const i@33@01 Int)
(declare-const j@34@01 Int)
(push) ; 3
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j]
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j)))
; [eval] i >= 0
(push) ; 4
; [then-branch: 4 | !(i@33@01 >= 0) | live]
; [else-branch: 4 | i@33@01 >= 0 | live]
(push) ; 5
; [then-branch: 4 | !(i@33@01 >= 0)]
(assert (not (>= i@33@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 4 | i@33@01 >= 0]
(assert (>= i@33@01 0))
; [eval] i < |xs|
; [eval] |xs|
(push) ; 6
; [then-branch: 5 | !(i@33@01 < |xs@30@01|) | live]
; [else-branch: 5 | i@33@01 < |xs@30@01| | live]
(push) ; 7
; [then-branch: 5 | !(i@33@01 < |xs@30@01|)]
(assert (not (< i@33@01 (Seq_length xs@30@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 5 | i@33@01 < |xs@30@01|]
(assert (< i@33@01 (Seq_length xs@30@01)))
; [eval] j >= 0
(push) ; 8
; [then-branch: 6 | !(j@34@01 >= 0) | live]
; [else-branch: 6 | j@34@01 >= 0 | live]
(push) ; 9
; [then-branch: 6 | !(j@34@01 >= 0)]
(assert (not (>= j@34@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 6 | j@34@01 >= 0]
(assert (>= j@34@01 0))
; [eval] j < |xs|
; [eval] |xs|
(push) ; 10
; [then-branch: 7 | !(j@34@01 < |xs@30@01|) | live]
; [else-branch: 7 | j@34@01 < |xs@30@01| | live]
(push) ; 11
; [then-branch: 7 | !(j@34@01 < |xs@30@01|)]
(assert (not (< j@34@01 (Seq_length xs@30@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 7 | j@34@01 < |xs@30@01|]
(assert (< j@34@01 (Seq_length xs@30@01)))
; [eval] i != j
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (< j@34@01 (Seq_length xs@30@01)) (not (< j@34@01 (Seq_length xs@30@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@34@01 0)
  (and
    (>= j@34@01 0)
    (or
      (< j@34@01 (Seq_length xs@30@01))
      (not (< j@34@01 (Seq_length xs@30@01)))))))
(assert (or (>= j@34@01 0) (not (>= j@34@01 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@33@01 (Seq_length xs@30@01))
  (and
    (< i@33@01 (Seq_length xs@30@01))
    (=>
      (>= j@34@01 0)
      (and
        (>= j@34@01 0)
        (or
          (< j@34@01 (Seq_length xs@30@01))
          (not (< j@34@01 (Seq_length xs@30@01))))))
    (or (>= j@34@01 0) (not (>= j@34@01 0))))))
(assert (or (< i@33@01 (Seq_length xs@30@01)) (not (< i@33@01 (Seq_length xs@30@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= i@33@01 0)
  (and
    (>= i@33@01 0)
    (=>
      (< i@33@01 (Seq_length xs@30@01))
      (and
        (< i@33@01 (Seq_length xs@30@01))
        (=>
          (>= j@34@01 0)
          (and
            (>= j@34@01 0)
            (or
              (< j@34@01 (Seq_length xs@30@01))
              (not (< j@34@01 (Seq_length xs@30@01))))))
        (or (>= j@34@01 0) (not (>= j@34@01 0)))))
    (or
      (< i@33@01 (Seq_length xs@30@01))
      (not (< i@33@01 (Seq_length xs@30@01)))))))
(assert (or (>= i@33@01 0) (not (>= i@33@01 0))))
(push) ; 4
; [then-branch: 8 | i@33@01 >= 0 && i@33@01 < |xs@30@01| && j@34@01 >= 0 && j@34@01 < |xs@30@01| && i@33@01 != j@34@01 | live]
; [else-branch: 8 | !(i@33@01 >= 0 && i@33@01 < |xs@30@01| && j@34@01 >= 0 && j@34@01 < |xs@30@01| && i@33@01 != j@34@01) | live]
(push) ; 5
; [then-branch: 8 | i@33@01 >= 0 && i@33@01 < |xs@30@01| && j@34@01 >= 0 && j@34@01 < |xs@30@01| && i@33@01 != j@34@01]
(assert (and
  (>= i@33@01 0)
  (and
    (< i@33@01 (Seq_length xs@30@01))
    (and
      (>= j@34@01 0)
      (and (< j@34@01 (Seq_length xs@30@01)) (not (= i@33@01 j@34@01)))))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
; [eval] xs[j]
(pop) ; 5
(push) ; 5
; [else-branch: 8 | !(i@33@01 >= 0 && i@33@01 < |xs@30@01| && j@34@01 >= 0 && j@34@01 < |xs@30@01| && i@33@01 != j@34@01)]
(assert (not
  (and
    (>= i@33@01 0)
    (and
      (< i@33@01 (Seq_length xs@30@01))
      (and
        (>= j@34@01 0)
        (and (< j@34@01 (Seq_length xs@30@01)) (not (= i@33@01 j@34@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (>= i@33@01 0)
    (and
      (< i@33@01 (Seq_length xs@30@01))
      (and
        (>= j@34@01 0)
        (and (< j@34@01 (Seq_length xs@30@01)) (not (= i@33@01 j@34@01))))))
  (and
    (>= i@33@01 0)
    (< i@33@01 (Seq_length xs@30@01))
    (>= j@34@01 0)
    (< j@34@01 (Seq_length xs@30@01))
    (not (= i@33@01 j@34@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= i@33@01 0)
      (and
        (< i@33@01 (Seq_length xs@30@01))
        (and
          (>= j@34@01 0)
          (and (< j@34@01 (Seq_length xs@30@01)) (not (= i@33@01 j@34@01)))))))
  (and
    (>= i@33@01 0)
    (and
      (< i@33@01 (Seq_length xs@30@01))
      (and
        (>= j@34@01 0)
        (and (< j@34@01 (Seq_length xs@30@01)) (not (= i@33@01 j@34@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@33@01 Int) (j@34@01 Int)) (!
  (and
    (=>
      (>= i@33@01 0)
      (and
        (>= i@33@01 0)
        (=>
          (< i@33@01 (Seq_length xs@30@01))
          (and
            (< i@33@01 (Seq_length xs@30@01))
            (=>
              (>= j@34@01 0)
              (and
                (>= j@34@01 0)
                (or
                  (< j@34@01 (Seq_length xs@30@01))
                  (not (< j@34@01 (Seq_length xs@30@01))))))
            (or (>= j@34@01 0) (not (>= j@34@01 0)))))
        (or
          (< i@33@01 (Seq_length xs@30@01))
          (not (< i@33@01 (Seq_length xs@30@01))))))
    (or (>= i@33@01 0) (not (>= i@33@01 0)))
    (=>
      (and
        (>= i@33@01 0)
        (and
          (< i@33@01 (Seq_length xs@30@01))
          (and
            (>= j@34@01 0)
            (and (< j@34@01 (Seq_length xs@30@01)) (not (= i@33@01 j@34@01))))))
      (and
        (>= i@33@01 0)
        (< i@33@01 (Seq_length xs@30@01))
        (>= j@34@01 0)
        (< j@34@01 (Seq_length xs@30@01))
        (not (= i@33@01 j@34@01))))
    (or
      (not
        (and
          (>= i@33@01 0)
          (and
            (< i@33@01 (Seq_length xs@30@01))
            (and
              (>= j@34@01 0)
              (and (< j@34@01 (Seq_length xs@30@01)) (not (= i@33@01 j@34@01)))))))
      (and
        (>= i@33@01 0)
        (and
          (< i@33@01 (Seq_length xs@30@01))
          (and
            (>= j@34@01 0)
            (and (< j@34@01 (Seq_length xs@30@01)) (not (= i@33@01 j@34@01))))))))
  :pattern ((Seq_index xs@30@01 i@33@01) (Seq_index xs@30@01 j@34@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@34@10@34@104-aux|)))
(assert (forall ((i@33@01 Int) (j@34@01 Int)) (!
  (=>
    (and
      (>= i@33@01 0)
      (and
        (< i@33@01 (Seq_length xs@30@01))
        (and
          (>= j@34@01 0)
          (and (< j@34@01 (Seq_length xs@30@01)) (not (= i@33@01 j@34@01))))))
    (not (= (Seq_index xs@30@01 i@33@01) (Seq_index xs@30@01 j@34@01))))
  :pattern ((Seq_index xs@30@01 i@33@01) (Seq_index xs@30@01 j@34@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@34@10@34@104|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i: Int ::0 <= i && i < |xs| ==> acc(xs[i].f, write))
(declare-const i@35@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= i && i < |xs|
; [eval] 0 <= i
(push) ; 4
; [then-branch: 9 | !(0 <= i@35@01) | live]
; [else-branch: 9 | 0 <= i@35@01 | live]
(push) ; 5
; [then-branch: 9 | !(0 <= i@35@01)]
(assert (not (<= 0 i@35@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 9 | 0 <= i@35@01]
(assert (<= 0 i@35@01))
; [eval] i < |xs|
; [eval] |xs|
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@35@01) (not (<= 0 i@35@01))))
(assert (and (<= 0 i@35@01) (< i@35@01 (Seq_length xs@30@01))))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@35@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-const $t@36@01 $FVF<f>)
(declare-fun inv@37@01 ($Ref) Int)
(declare-fun img@38@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@35@01 Int)) (!
  (=>
    (and (<= 0 i@35@01) (< i@35@01 (Seq_length xs@30@01)))
    (or (<= 0 i@35@01) (not (<= 0 i@35@01))))
  :pattern ((Seq_index xs@30@01 i@35@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@35@01 Int) (i2@35@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@35@01) (< i1@35@01 (Seq_length xs@30@01)))
      (and (<= 0 i2@35@01) (< i2@35@01 (Seq_length xs@30@01)))
      (= (Seq_index xs@30@01 i1@35@01) (Seq_index xs@30@01 i2@35@01)))
    (= i1@35@01 i2@35@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@35@01 Int)) (!
  (=>
    (and (<= 0 i@35@01) (< i@35@01 (Seq_length xs@30@01)))
    (and
      (= (inv@37@01 (Seq_index xs@30@01 i@35@01)) i@35@01)
      (img@38@01 (Seq_index xs@30@01 i@35@01))))
  :pattern ((Seq_index xs@30@01 i@35@01))
  :qid |quant-u-11284|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= (Seq_index xs@30@01 (inv@37@01 r)) r))
  :pattern ((inv@37@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@35@01 Int)) (!
  (=>
    (and (<= 0 i@35@01) (< i@35@01 (Seq_length xs@30@01)))
    (not (= (Seq_index xs@30@01 i@35@01) $Ref.null)))
  :pattern ((Seq_index xs@30@01 i@35@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i: Int, j: Int ::
;     { ys[i], ys[j] }
;     i >= 0 && (i < |ys| && (j >= 0 && (j < |ys| && i != j))) ==>
;     ys[i] != ys[j])
(declare-const $t@39@01 $Snap)
(assert (= $t@39@01 $Snap.unit))
; [eval] (forall i: Int, j: Int :: { ys[i], ys[j] } i >= 0 && (i < |ys| && (j >= 0 && (j < |ys| && i != j))) ==> ys[i] != ys[j])
(declare-const i@40@01 Int)
(declare-const j@41@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] i >= 0 && (i < |ys| && (j >= 0 && (j < |ys| && i != j))) ==> ys[i] != ys[j]
; [eval] i >= 0 && (i < |ys| && (j >= 0 && (j < |ys| && i != j)))
; [eval] i >= 0
(push) ; 4
; [then-branch: 10 | !(i@40@01 >= 0) | live]
; [else-branch: 10 | i@40@01 >= 0 | live]
(push) ; 5
; [then-branch: 10 | !(i@40@01 >= 0)]
(assert (not (>= i@40@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 10 | i@40@01 >= 0]
(assert (>= i@40@01 0))
; [eval] i < |ys|
; [eval] |ys|
(push) ; 6
; [then-branch: 11 | !(i@40@01 < |ys@31@01|) | live]
; [else-branch: 11 | i@40@01 < |ys@31@01| | live]
(push) ; 7
; [then-branch: 11 | !(i@40@01 < |ys@31@01|)]
(assert (not (< i@40@01 (Seq_length ys@31@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 11 | i@40@01 < |ys@31@01|]
(assert (< i@40@01 (Seq_length ys@31@01)))
; [eval] j >= 0
(push) ; 8
; [then-branch: 12 | !(j@41@01 >= 0) | live]
; [else-branch: 12 | j@41@01 >= 0 | live]
(push) ; 9
; [then-branch: 12 | !(j@41@01 >= 0)]
(assert (not (>= j@41@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 12 | j@41@01 >= 0]
(assert (>= j@41@01 0))
; [eval] j < |ys|
; [eval] |ys|
(push) ; 10
; [then-branch: 13 | !(j@41@01 < |ys@31@01|) | live]
; [else-branch: 13 | j@41@01 < |ys@31@01| | live]
(push) ; 11
; [then-branch: 13 | !(j@41@01 < |ys@31@01|)]
(assert (not (< j@41@01 (Seq_length ys@31@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 13 | j@41@01 < |ys@31@01|]
(assert (< j@41@01 (Seq_length ys@31@01)))
; [eval] i != j
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (< j@41@01 (Seq_length ys@31@01)) (not (< j@41@01 (Seq_length ys@31@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@41@01 0)
  (and
    (>= j@41@01 0)
    (or
      (< j@41@01 (Seq_length ys@31@01))
      (not (< j@41@01 (Seq_length ys@31@01)))))))
(assert (or (>= j@41@01 0) (not (>= j@41@01 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@40@01 (Seq_length ys@31@01))
  (and
    (< i@40@01 (Seq_length ys@31@01))
    (=>
      (>= j@41@01 0)
      (and
        (>= j@41@01 0)
        (or
          (< j@41@01 (Seq_length ys@31@01))
          (not (< j@41@01 (Seq_length ys@31@01))))))
    (or (>= j@41@01 0) (not (>= j@41@01 0))))))
(assert (or (< i@40@01 (Seq_length ys@31@01)) (not (< i@40@01 (Seq_length ys@31@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= i@40@01 0)
  (and
    (>= i@40@01 0)
    (=>
      (< i@40@01 (Seq_length ys@31@01))
      (and
        (< i@40@01 (Seq_length ys@31@01))
        (=>
          (>= j@41@01 0)
          (and
            (>= j@41@01 0)
            (or
              (< j@41@01 (Seq_length ys@31@01))
              (not (< j@41@01 (Seq_length ys@31@01))))))
        (or (>= j@41@01 0) (not (>= j@41@01 0)))))
    (or
      (< i@40@01 (Seq_length ys@31@01))
      (not (< i@40@01 (Seq_length ys@31@01)))))))
(assert (or (>= i@40@01 0) (not (>= i@40@01 0))))
(push) ; 4
; [then-branch: 14 | i@40@01 >= 0 && i@40@01 < |ys@31@01| && j@41@01 >= 0 && j@41@01 < |ys@31@01| && i@40@01 != j@41@01 | live]
; [else-branch: 14 | !(i@40@01 >= 0 && i@40@01 < |ys@31@01| && j@41@01 >= 0 && j@41@01 < |ys@31@01| && i@40@01 != j@41@01) | live]
(push) ; 5
; [then-branch: 14 | i@40@01 >= 0 && i@40@01 < |ys@31@01| && j@41@01 >= 0 && j@41@01 < |ys@31@01| && i@40@01 != j@41@01]
(assert (and
  (>= i@40@01 0)
  (and
    (< i@40@01 (Seq_length ys@31@01))
    (and
      (>= j@41@01 0)
      (and (< j@41@01 (Seq_length ys@31@01)) (not (= i@40@01 j@41@01)))))))
; [eval] ys[i] != ys[j]
; [eval] ys[i]
; [eval] ys[j]
(pop) ; 5
(push) ; 5
; [else-branch: 14 | !(i@40@01 >= 0 && i@40@01 < |ys@31@01| && j@41@01 >= 0 && j@41@01 < |ys@31@01| && i@40@01 != j@41@01)]
(assert (not
  (and
    (>= i@40@01 0)
    (and
      (< i@40@01 (Seq_length ys@31@01))
      (and
        (>= j@41@01 0)
        (and (< j@41@01 (Seq_length ys@31@01)) (not (= i@40@01 j@41@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (>= i@40@01 0)
    (and
      (< i@40@01 (Seq_length ys@31@01))
      (and
        (>= j@41@01 0)
        (and (< j@41@01 (Seq_length ys@31@01)) (not (= i@40@01 j@41@01))))))
  (and
    (>= i@40@01 0)
    (< i@40@01 (Seq_length ys@31@01))
    (>= j@41@01 0)
    (< j@41@01 (Seq_length ys@31@01))
    (not (= i@40@01 j@41@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= i@40@01 0)
      (and
        (< i@40@01 (Seq_length ys@31@01))
        (and
          (>= j@41@01 0)
          (and (< j@41@01 (Seq_length ys@31@01)) (not (= i@40@01 j@41@01)))))))
  (and
    (>= i@40@01 0)
    (and
      (< i@40@01 (Seq_length ys@31@01))
      (and
        (>= j@41@01 0)
        (and (< j@41@01 (Seq_length ys@31@01)) (not (= i@40@01 j@41@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@40@01 Int) (j@41@01 Int)) (!
  (and
    (=>
      (>= i@40@01 0)
      (and
        (>= i@40@01 0)
        (=>
          (< i@40@01 (Seq_length ys@31@01))
          (and
            (< i@40@01 (Seq_length ys@31@01))
            (=>
              (>= j@41@01 0)
              (and
                (>= j@41@01 0)
                (or
                  (< j@41@01 (Seq_length ys@31@01))
                  (not (< j@41@01 (Seq_length ys@31@01))))))
            (or (>= j@41@01 0) (not (>= j@41@01 0)))))
        (or
          (< i@40@01 (Seq_length ys@31@01))
          (not (< i@40@01 (Seq_length ys@31@01))))))
    (or (>= i@40@01 0) (not (>= i@40@01 0)))
    (=>
      (and
        (>= i@40@01 0)
        (and
          (< i@40@01 (Seq_length ys@31@01))
          (and
            (>= j@41@01 0)
            (and (< j@41@01 (Seq_length ys@31@01)) (not (= i@40@01 j@41@01))))))
      (and
        (>= i@40@01 0)
        (< i@40@01 (Seq_length ys@31@01))
        (>= j@41@01 0)
        (< j@41@01 (Seq_length ys@31@01))
        (not (= i@40@01 j@41@01))))
    (or
      (not
        (and
          (>= i@40@01 0)
          (and
            (< i@40@01 (Seq_length ys@31@01))
            (and
              (>= j@41@01 0)
              (and (< j@41@01 (Seq_length ys@31@01)) (not (= i@40@01 j@41@01)))))))
      (and
        (>= i@40@01 0)
        (and
          (< i@40@01 (Seq_length ys@31@01))
          (and
            (>= j@41@01 0)
            (and (< j@41@01 (Seq_length ys@31@01)) (not (= i@40@01 j@41@01))))))))
  :pattern ((Seq_index ys@31@01 i@40@01) (Seq_index ys@31@01 j@41@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@36@10@36@104-aux|)))
(assert (forall ((i@40@01 Int) (j@41@01 Int)) (!
  (=>
    (and
      (>= i@40@01 0)
      (and
        (< i@40@01 (Seq_length ys@31@01))
        (and
          (>= j@41@01 0)
          (and (< j@41@01 (Seq_length ys@31@01)) (not (= i@40@01 j@41@01))))))
    (not (= (Seq_index ys@31@01 i@40@01) (Seq_index ys@31@01 j@41@01))))
  :pattern ((Seq_index ys@31@01 i@40@01) (Seq_index ys@31@01 j@41@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@36@10@36@104|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i: Int ::0 <= i && i < |ys| ==> acc(ys[i].f, write))
(declare-const i@42@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= i && i < |ys|
; [eval] 0 <= i
(push) ; 4
; [then-branch: 15 | !(0 <= i@42@01) | live]
; [else-branch: 15 | 0 <= i@42@01 | live]
(push) ; 5
; [then-branch: 15 | !(0 <= i@42@01)]
(assert (not (<= 0 i@42@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 15 | 0 <= i@42@01]
(assert (<= 0 i@42@01))
; [eval] i < |ys|
; [eval] |ys|
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@42@01) (not (<= 0 i@42@01))))
(assert (and (<= 0 i@42@01) (< i@42@01 (Seq_length ys@31@01))))
; [eval] ys[i]
(push) ; 4
(assert (not (>= i@42@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-const $t@43@01 $FVF<f>)
(declare-fun inv@44@01 ($Ref) Int)
(declare-fun img@45@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@42@01 Int)) (!
  (=>
    (and (<= 0 i@42@01) (< i@42@01 (Seq_length ys@31@01)))
    (or (<= 0 i@42@01) (not (<= 0 i@42@01))))
  :pattern ((Seq_index ys@31@01 i@42@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@42@01 Int) (i2@42@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@42@01) (< i1@42@01 (Seq_length ys@31@01)))
      (and (<= 0 i2@42@01) (< i2@42@01 (Seq_length ys@31@01)))
      (= (Seq_index ys@31@01 i1@42@01) (Seq_index ys@31@01 i2@42@01)))
    (= i1@42@01 i2@42@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@42@01 Int)) (!
  (=>
    (and (<= 0 i@42@01) (< i@42@01 (Seq_length ys@31@01)))
    (and
      (= (inv@44@01 (Seq_index ys@31@01 i@42@01)) i@42@01)
      (img@45@01 (Seq_index ys@31@01 i@42@01))))
  :pattern ((Seq_index ys@31@01 i@42@01))
  :qid |quant-u-11286|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= (Seq_index ys@31@01 (inv@44@01 r)) r))
  :pattern ((inv@44@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@42@01 Int)) (!
  (=>
    (and (<= 0 i@42@01) (< i@42@01 (Seq_length ys@31@01)))
    (not (= (Seq_index ys@31@01 i@42@01) $Ref.null)))
  :pattern ((Seq_index ys@31@01 i@42@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11287|))))
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
; inhale 10 < |xs| && |xs| == |ys|
(declare-const $t@46@01 $Snap)
(assert (= $t@46@01 ($Snap.combine ($Snap.first $t@46@01) ($Snap.second $t@46@01))))
(assert (= ($Snap.first $t@46@01) $Snap.unit))
; [eval] 10 < |xs|
; [eval] |xs|
(assert (< 10 (Seq_length xs@30@01)))
(assert (= ($Snap.second $t@46@01) $Snap.unit))
; [eval] |xs| == |ys|
; [eval] |xs|
; [eval] |ys|
(assert (= (Seq_length xs@30@01) (Seq_length ys@31@01)))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; assert fun02(xs, ys)
; [eval] fun02(xs, ys)
(set-option :timeout 0)
(push) ; 3
; [eval] (forall i: Int, j: Int ::i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j])
(declare-const i@47@01 Int)
(declare-const j@48@01 Int)
(push) ; 4
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j]
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j)))
; [eval] i >= 0
(push) ; 5
; [then-branch: 16 | !(i@47@01 >= 0) | live]
; [else-branch: 16 | i@47@01 >= 0 | live]
(push) ; 6
; [then-branch: 16 | !(i@47@01 >= 0)]
(assert (not (>= i@47@01 0)))
(pop) ; 6
(push) ; 6
; [else-branch: 16 | i@47@01 >= 0]
(assert (>= i@47@01 0))
; [eval] i < |xs|
; [eval] |xs|
(push) ; 7
; [then-branch: 17 | !(i@47@01 < |xs@30@01|) | live]
; [else-branch: 17 | i@47@01 < |xs@30@01| | live]
(push) ; 8
; [then-branch: 17 | !(i@47@01 < |xs@30@01|)]
(assert (not (< i@47@01 (Seq_length xs@30@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 17 | i@47@01 < |xs@30@01|]
(assert (< i@47@01 (Seq_length xs@30@01)))
; [eval] j >= 0
(push) ; 9
; [then-branch: 18 | !(j@48@01 >= 0) | live]
; [else-branch: 18 | j@48@01 >= 0 | live]
(push) ; 10
; [then-branch: 18 | !(j@48@01 >= 0)]
(assert (not (>= j@48@01 0)))
(pop) ; 10
(push) ; 10
; [else-branch: 18 | j@48@01 >= 0]
(assert (>= j@48@01 0))
; [eval] j < |xs|
; [eval] |xs|
(push) ; 11
; [then-branch: 19 | !(j@48@01 < |xs@30@01|) | live]
; [else-branch: 19 | j@48@01 < |xs@30@01| | live]
(push) ; 12
; [then-branch: 19 | !(j@48@01 < |xs@30@01|)]
(assert (not (< j@48@01 (Seq_length xs@30@01))))
(pop) ; 12
(push) ; 12
; [else-branch: 19 | j@48@01 < |xs@30@01|]
(assert (< j@48@01 (Seq_length xs@30@01)))
; [eval] i != j
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (< j@48@01 (Seq_length xs@30@01)) (not (< j@48@01 (Seq_length xs@30@01)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@48@01 0)
  (and
    (>= j@48@01 0)
    (or
      (< j@48@01 (Seq_length xs@30@01))
      (not (< j@48@01 (Seq_length xs@30@01)))))))
(assert (or (>= j@48@01 0) (not (>= j@48@01 0))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@47@01 (Seq_length xs@30@01))
  (and
    (< i@47@01 (Seq_length xs@30@01))
    (=>
      (>= j@48@01 0)
      (and
        (>= j@48@01 0)
        (or
          (< j@48@01 (Seq_length xs@30@01))
          (not (< j@48@01 (Seq_length xs@30@01))))))
    (or (>= j@48@01 0) (not (>= j@48@01 0))))))
(assert (or (< i@47@01 (Seq_length xs@30@01)) (not (< i@47@01 (Seq_length xs@30@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= i@47@01 0)
  (and
    (>= i@47@01 0)
    (=>
      (< i@47@01 (Seq_length xs@30@01))
      (and
        (< i@47@01 (Seq_length xs@30@01))
        (=>
          (>= j@48@01 0)
          (and
            (>= j@48@01 0)
            (or
              (< j@48@01 (Seq_length xs@30@01))
              (not (< j@48@01 (Seq_length xs@30@01))))))
        (or (>= j@48@01 0) (not (>= j@48@01 0)))))
    (or
      (< i@47@01 (Seq_length xs@30@01))
      (not (< i@47@01 (Seq_length xs@30@01)))))))
(assert (or (>= i@47@01 0) (not (>= i@47@01 0))))
(push) ; 5
; [then-branch: 20 | i@47@01 >= 0 && i@47@01 < |xs@30@01| && j@48@01 >= 0 && j@48@01 < |xs@30@01| && i@47@01 != j@48@01 | live]
; [else-branch: 20 | !(i@47@01 >= 0 && i@47@01 < |xs@30@01| && j@48@01 >= 0 && j@48@01 < |xs@30@01| && i@47@01 != j@48@01) | live]
(push) ; 6
; [then-branch: 20 | i@47@01 >= 0 && i@47@01 < |xs@30@01| && j@48@01 >= 0 && j@48@01 < |xs@30@01| && i@47@01 != j@48@01]
(assert (and
  (>= i@47@01 0)
  (and
    (< i@47@01 (Seq_length xs@30@01))
    (and
      (>= j@48@01 0)
      (and (< j@48@01 (Seq_length xs@30@01)) (not (= i@47@01 j@48@01)))))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
; [eval] xs[j]
(pop) ; 6
(push) ; 6
; [else-branch: 20 | !(i@47@01 >= 0 && i@47@01 < |xs@30@01| && j@48@01 >= 0 && j@48@01 < |xs@30@01| && i@47@01 != j@48@01)]
(assert (not
  (and
    (>= i@47@01 0)
    (and
      (< i@47@01 (Seq_length xs@30@01))
      (and
        (>= j@48@01 0)
        (and (< j@48@01 (Seq_length xs@30@01)) (not (= i@47@01 j@48@01))))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (>= i@47@01 0)
    (and
      (< i@47@01 (Seq_length xs@30@01))
      (and
        (>= j@48@01 0)
        (and (< j@48@01 (Seq_length xs@30@01)) (not (= i@47@01 j@48@01))))))
  (and
    (>= i@47@01 0)
    (< i@47@01 (Seq_length xs@30@01))
    (>= j@48@01 0)
    (< j@48@01 (Seq_length xs@30@01))
    (not (= i@47@01 j@48@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= i@47@01 0)
      (and
        (< i@47@01 (Seq_length xs@30@01))
        (and
          (>= j@48@01 0)
          (and (< j@48@01 (Seq_length xs@30@01)) (not (= i@47@01 j@48@01)))))))
  (and
    (>= i@47@01 0)
    (and
      (< i@47@01 (Seq_length xs@30@01))
      (and
        (>= j@48@01 0)
        (and (< j@48@01 (Seq_length xs@30@01)) (not (= i@47@01 j@48@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((i@47@01 Int) (j@48@01 Int)) (!
  (=>
    (and
      (>= i@47@01 0)
      (and
        (< i@47@01 (Seq_length xs@30@01))
        (and
          (>= j@48@01 0)
          (and (< j@48@01 (Seq_length xs@30@01)) (not (= i@47@01 j@48@01))))))
    (not (= (Seq_index xs@30@01 i@47@01) (Seq_index xs@30@01 j@48@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@26@12@26@106|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@47@01 Int) (j@48@01 Int)) (!
  (=>
    (and
      (>= i@47@01 0)
      (and
        (< i@47@01 (Seq_length xs@30@01))
        (and
          (>= j@48@01 0)
          (and (< j@48@01 (Seq_length xs@30@01)) (not (= i@47@01 j@48@01))))))
    (not (= (Seq_index xs@30@01 i@47@01) (Seq_index xs@30@01 j@48@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@26@12@26@106|)))
(declare-const i@49@01 Int)
(push) ; 4
; [eval] 0 <= i && i < |xs|
; [eval] 0 <= i
(push) ; 5
; [then-branch: 21 | !(0 <= i@49@01) | live]
; [else-branch: 21 | 0 <= i@49@01 | live]
(push) ; 6
; [then-branch: 21 | !(0 <= i@49@01)]
(assert (not (<= 0 i@49@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 21 | 0 <= i@49@01]
(assert (<= 0 i@49@01))
; [eval] i < |xs|
; [eval] |xs|
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@49@01) (not (<= 0 i@49@01))))
(assert (and (<= 0 i@49@01) (< i@49@01 (Seq_length xs@30@01))))
; [eval] xs[i]
(push) ; 5
(assert (not (>= i@49@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@50@01 ($Ref) Int)
(declare-fun img@51@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@49@01 Int)) (!
  (=>
    (and (<= 0 i@49@01) (< i@49@01 (Seq_length xs@30@01)))
    (or (<= 0 i@49@01) (not (<= 0 i@49@01))))
  :pattern ((Seq_index xs@30@01 i@49@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@49@01 Int) (i2@49@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@49@01) (< i1@49@01 (Seq_length xs@30@01)))
      (and (<= 0 i2@49@01) (< i2@49@01 (Seq_length xs@30@01)))
      (= (Seq_index xs@30@01 i1@49@01) (Seq_index xs@30@01 i2@49@01)))
    (= i1@49@01 i2@49@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@49@01 Int)) (!
  (=>
    (and (<= 0 i@49@01) (< i@49@01 (Seq_length xs@30@01)))
    (and
      (= (inv@50@01 (Seq_index xs@30@01 i@49@01)) i@49@01)
      (img@51@01 (Seq_index xs@30@01 i@49@01))))
  :pattern ((Seq_index xs@30@01 i@49@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@51@01 r)
      (and (<= 0 (inv@50@01 r)) (< (inv@50@01 r) (Seq_length xs@30@01))))
    (= (Seq_index xs@30@01 (inv@50@01 r)) r))
  :pattern ((inv@50@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@49@01 Int)) (!
  (= (Seq_index xs@30@01 i@49@01) (Seq_index ys@31@01 i@49@01))
  
  :qid |quant-u-11289|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@50@01 r)) (< (inv@50@01 r) (Seq_length xs@30@01)))
      (img@51@01 r)
      (= r (Seq_index xs@30@01 (inv@50@01 r))))
    (>
      (+
        (ite
          (and
            (img@38@01 r)
            (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@45@01 r)
            (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-11290|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@52@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@52@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@50@01 r)) (< (inv@50@01 r) (Seq_length xs@30@01)))
        (img@51@01 r)))
    (=>
      (and
        (and (<= 0 (inv@50@01 r)) (< (inv@50@01 r) (Seq_length xs@30@01)))
        (img@51@01 r))
      (Set_in r ($FVF.domain_f (as sm@52@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@52@01  $FVF<f>))))
  :qid |qp.fvfDomDef10|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@50@01 r)) (< (inv@50@01 r) (Seq_length xs@30@01)))
        (img@51@01 r))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01)))))
    (= ($FVF.lookup_f (as sm@52@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@52@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@50@01 r)) (< (inv@50@01 r) (Seq_length xs@30@01)))
        (img@51@01 r))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01)))))
    (= ($FVF.lookup_f (as sm@52@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@52@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef9|)))
; [eval] (forall i: Int, j: Int ::i >= 0 && (i < |ys| && (j >= 0 && (j < |ys| && i != j))) ==> ys[i] != ys[j])
(declare-const i@53@01 Int)
(declare-const j@54@01 Int)
(push) ; 4
; [eval] i >= 0 && (i < |ys| && (j >= 0 && (j < |ys| && i != j))) ==> ys[i] != ys[j]
; [eval] i >= 0 && (i < |ys| && (j >= 0 && (j < |ys| && i != j)))
; [eval] i >= 0
(push) ; 5
; [then-branch: 22 | !(i@53@01 >= 0) | live]
; [else-branch: 22 | i@53@01 >= 0 | live]
(push) ; 6
; [then-branch: 22 | !(i@53@01 >= 0)]
(assert (not (>= i@53@01 0)))
(pop) ; 6
(push) ; 6
; [else-branch: 22 | i@53@01 >= 0]
(assert (>= i@53@01 0))
; [eval] i < |ys|
; [eval] |ys|
(push) ; 7
; [then-branch: 23 | !(i@53@01 < |ys@31@01|) | live]
; [else-branch: 23 | i@53@01 < |ys@31@01| | live]
(push) ; 8
; [then-branch: 23 | !(i@53@01 < |ys@31@01|)]
(assert (not (< i@53@01 (Seq_length ys@31@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 23 | i@53@01 < |ys@31@01|]
(assert (< i@53@01 (Seq_length ys@31@01)))
; [eval] j >= 0
(push) ; 9
; [then-branch: 24 | !(j@54@01 >= 0) | live]
; [else-branch: 24 | j@54@01 >= 0 | live]
(push) ; 10
; [then-branch: 24 | !(j@54@01 >= 0)]
(assert (not (>= j@54@01 0)))
(pop) ; 10
(push) ; 10
; [else-branch: 24 | j@54@01 >= 0]
(assert (>= j@54@01 0))
; [eval] j < |ys|
; [eval] |ys|
(push) ; 11
; [then-branch: 25 | !(j@54@01 < |ys@31@01|) | live]
; [else-branch: 25 | j@54@01 < |ys@31@01| | live]
(push) ; 12
; [then-branch: 25 | !(j@54@01 < |ys@31@01|)]
(assert (not (< j@54@01 (Seq_length ys@31@01))))
(pop) ; 12
(push) ; 12
; [else-branch: 25 | j@54@01 < |ys@31@01|]
(assert (< j@54@01 (Seq_length ys@31@01)))
; [eval] i != j
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (< j@54@01 (Seq_length ys@31@01)) (not (< j@54@01 (Seq_length ys@31@01)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@54@01 0)
  (and
    (>= j@54@01 0)
    (or
      (< j@54@01 (Seq_length ys@31@01))
      (not (< j@54@01 (Seq_length ys@31@01)))))))
(assert (or (>= j@54@01 0) (not (>= j@54@01 0))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@53@01 (Seq_length ys@31@01))
  (and
    (< i@53@01 (Seq_length ys@31@01))
    (=>
      (>= j@54@01 0)
      (and
        (>= j@54@01 0)
        (or
          (< j@54@01 (Seq_length ys@31@01))
          (not (< j@54@01 (Seq_length ys@31@01))))))
    (or (>= j@54@01 0) (not (>= j@54@01 0))))))
(assert (or (< i@53@01 (Seq_length ys@31@01)) (not (< i@53@01 (Seq_length ys@31@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= i@53@01 0)
  (and
    (>= i@53@01 0)
    (=>
      (< i@53@01 (Seq_length ys@31@01))
      (and
        (< i@53@01 (Seq_length ys@31@01))
        (=>
          (>= j@54@01 0)
          (and
            (>= j@54@01 0)
            (or
              (< j@54@01 (Seq_length ys@31@01))
              (not (< j@54@01 (Seq_length ys@31@01))))))
        (or (>= j@54@01 0) (not (>= j@54@01 0)))))
    (or
      (< i@53@01 (Seq_length ys@31@01))
      (not (< i@53@01 (Seq_length ys@31@01)))))))
(assert (or (>= i@53@01 0) (not (>= i@53@01 0))))
(push) ; 5
; [then-branch: 26 | i@53@01 >= 0 && i@53@01 < |ys@31@01| && j@54@01 >= 0 && j@54@01 < |ys@31@01| && i@53@01 != j@54@01 | live]
; [else-branch: 26 | !(i@53@01 >= 0 && i@53@01 < |ys@31@01| && j@54@01 >= 0 && j@54@01 < |ys@31@01| && i@53@01 != j@54@01) | live]
(push) ; 6
; [then-branch: 26 | i@53@01 >= 0 && i@53@01 < |ys@31@01| && j@54@01 >= 0 && j@54@01 < |ys@31@01| && i@53@01 != j@54@01]
(assert (and
  (>= i@53@01 0)
  (and
    (< i@53@01 (Seq_length ys@31@01))
    (and
      (>= j@54@01 0)
      (and (< j@54@01 (Seq_length ys@31@01)) (not (= i@53@01 j@54@01)))))))
; [eval] ys[i] != ys[j]
; [eval] ys[i]
; [eval] ys[j]
(pop) ; 6
(push) ; 6
; [else-branch: 26 | !(i@53@01 >= 0 && i@53@01 < |ys@31@01| && j@54@01 >= 0 && j@54@01 < |ys@31@01| && i@53@01 != j@54@01)]
(assert (not
  (and
    (>= i@53@01 0)
    (and
      (< i@53@01 (Seq_length ys@31@01))
      (and
        (>= j@54@01 0)
        (and (< j@54@01 (Seq_length ys@31@01)) (not (= i@53@01 j@54@01))))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (>= i@53@01 0)
    (and
      (< i@53@01 (Seq_length ys@31@01))
      (and
        (>= j@54@01 0)
        (and (< j@54@01 (Seq_length ys@31@01)) (not (= i@53@01 j@54@01))))))
  (and
    (>= i@53@01 0)
    (< i@53@01 (Seq_length ys@31@01))
    (>= j@54@01 0)
    (< j@54@01 (Seq_length ys@31@01))
    (not (= i@53@01 j@54@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= i@53@01 0)
      (and
        (< i@53@01 (Seq_length ys@31@01))
        (and
          (>= j@54@01 0)
          (and (< j@54@01 (Seq_length ys@31@01)) (not (= i@53@01 j@54@01)))))))
  (and
    (>= i@53@01 0)
    (and
      (< i@53@01 (Seq_length ys@31@01))
      (and
        (>= j@54@01 0)
        (and (< j@54@01 (Seq_length ys@31@01)) (not (= i@53@01 j@54@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((i@53@01 Int) (j@54@01 Int)) (!
  (=>
    (and
      (>= i@53@01 0)
      (and
        (< i@53@01 (Seq_length ys@31@01))
        (and
          (>= j@54@01 0)
          (and (< j@54@01 (Seq_length ys@31@01)) (not (= i@53@01 j@54@01))))))
    (not (= (Seq_index ys@31@01 i@53@01) (Seq_index ys@31@01 j@54@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@28@12@28@106|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@53@01 Int) (j@54@01 Int)) (!
  (=>
    (and
      (>= i@53@01 0)
      (and
        (< i@53@01 (Seq_length ys@31@01))
        (and
          (>= j@54@01 0)
          (and (< j@54@01 (Seq_length ys@31@01)) (not (= i@53@01 j@54@01))))))
    (not (= (Seq_index ys@31@01 i@53@01) (Seq_index ys@31@01 j@54@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@28@12@28@106|)))
(declare-const i@55@01 Int)
(push) ; 4
; [eval] 0 <= i && i < |ys|
; [eval] 0 <= i
(push) ; 5
; [then-branch: 27 | !(0 <= i@55@01) | live]
; [else-branch: 27 | 0 <= i@55@01 | live]
(push) ; 6
; [then-branch: 27 | !(0 <= i@55@01)]
(assert (not (<= 0 i@55@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 27 | 0 <= i@55@01]
(assert (<= 0 i@55@01))
; [eval] i < |ys|
; [eval] |ys|
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@55@01) (not (<= 0 i@55@01))))
(assert (and (<= 0 i@55@01) (< i@55@01 (Seq_length ys@31@01))))
; [eval] ys[i]
(push) ; 5
(assert (not (>= i@55@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@56@01 ($Ref) Int)
(declare-fun img@57@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@55@01 Int)) (!
  (=>
    (and (<= 0 i@55@01) (< i@55@01 (Seq_length ys@31@01)))
    (or (<= 0 i@55@01) (not (<= 0 i@55@01))))
  :pattern ((Seq_index ys@31@01 i@55@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@55@01 Int) (i2@55@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@55@01) (< i1@55@01 (Seq_length ys@31@01)))
      (and (<= 0 i2@55@01) (< i2@55@01 (Seq_length ys@31@01)))
      (= (Seq_index ys@31@01 i1@55@01) (Seq_index ys@31@01 i2@55@01)))
    (= i1@55@01 i2@55@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@55@01 Int)) (!
  (=>
    (and (<= 0 i@55@01) (< i@55@01 (Seq_length ys@31@01)))
    (and
      (= (inv@56@01 (Seq_index ys@31@01 i@55@01)) i@55@01)
      (img@57@01 (Seq_index ys@31@01 i@55@01))))
  :pattern ((Seq_index ys@31@01 i@55@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@57@01 r)
      (and (<= 0 (inv@56@01 r)) (< (inv@56@01 r) (Seq_length ys@31@01))))
    (= (Seq_index ys@31@01 (inv@56@01 r)) r))
  :pattern ((inv@56@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@55@01 Int)) (!
  (= (Seq_index ys@31@01 i@55@01) (Seq_index xs@30@01 i@55@01))
  
  :qid |quant-u-11292|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@56@01 r)) (< (inv@56@01 r) (Seq_length ys@31@01)))
      (img@57@01 r)
      (= r (Seq_index ys@31@01 (inv@56@01 r))))
    (>
      (+
        (ite
          (and
            (img@45@01 r)
            (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@38@01 r)
            (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-11293|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@58@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@58@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@56@01 r)) (< (inv@56@01 r) (Seq_length ys@31@01)))
        (img@57@01 r)))
    (=>
      (and
        (and (<= 0 (inv@56@01 r)) (< (inv@56@01 r) (Seq_length ys@31@01)))
        (img@57@01 r))
      (Set_in r ($FVF.domain_f (as sm@58@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@58@01  $FVF<f>))))
  :qid |qp.fvfDomDef13|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@56@01 r)) (< (inv@56@01 r) (Seq_length ys@31@01)))
        (img@57@01 r))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01)))))
    (= ($FVF.lookup_f (as sm@58@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@58@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@56@01 r)) (< (inv@56@01 r) (Seq_length ys@31@01)))
        (img@57@01 r))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01)))))
    (= ($FVF.lookup_f (as sm@58@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@58@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef12|)))
; [eval] 10 < |xs|
; [eval] |xs|
; [eval] |xs| == |ys|
; [eval] |xs|
; [eval] |ys|
(assert (fun02%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@52@01  $FVF<f>))
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<f>To$Snap (as sm@58@01  $FVF<f>))
        ($Snap.combine $Snap.unit $Snap.unit))))) xs@30@01 ys@31@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((i@49@01 Int)) (!
  (=>
    (and (<= 0 i@49@01) (< i@49@01 (Seq_length xs@30@01)))
    (and
      (= (inv@50@01 (Seq_index xs@30@01 i@49@01)) i@49@01)
      (img@51@01 (Seq_index xs@30@01 i@49@01))))
  :pattern ((Seq_index xs@30@01 i@49@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@51@01 r)
      (and (<= 0 (inv@50@01 r)) (< (inv@50@01 r) (Seq_length xs@30@01))))
    (= (Seq_index xs@30@01 (inv@50@01 r)) r))
  :pattern ((inv@50@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@52@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@50@01 r)) (< (inv@50@01 r) (Seq_length xs@30@01)))
        (img@51@01 r)))
    (=>
      (and
        (and (<= 0 (inv@50@01 r)) (< (inv@50@01 r) (Seq_length xs@30@01)))
        (img@51@01 r))
      (Set_in r ($FVF.domain_f (as sm@52@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@52@01  $FVF<f>))))
  :qid |qp.fvfDomDef10|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@50@01 r)) (< (inv@50@01 r) (Seq_length xs@30@01)))
        (img@51@01 r))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01)))))
    (= ($FVF.lookup_f (as sm@52@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@52@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@50@01 r)) (< (inv@50@01 r) (Seq_length xs@30@01)))
        (img@51@01 r))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01)))))
    (= ($FVF.lookup_f (as sm@52@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@52@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((i@55@01 Int)) (!
  (=>
    (and (<= 0 i@55@01) (< i@55@01 (Seq_length ys@31@01)))
    (and
      (= (inv@56@01 (Seq_index ys@31@01 i@55@01)) i@55@01)
      (img@57@01 (Seq_index ys@31@01 i@55@01))))
  :pattern ((Seq_index ys@31@01 i@55@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@57@01 r)
      (and (<= 0 (inv@56@01 r)) (< (inv@56@01 r) (Seq_length ys@31@01))))
    (= (Seq_index ys@31@01 (inv@56@01 r)) r))
  :pattern ((inv@56@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@58@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@56@01 r)) (< (inv@56@01 r) (Seq_length ys@31@01)))
        (img@57@01 r)))
    (=>
      (and
        (and (<= 0 (inv@56@01 r)) (< (inv@56@01 r) (Seq_length ys@31@01)))
        (img@57@01 r))
      (Set_in r ($FVF.domain_f (as sm@58@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@58@01  $FVF<f>))))
  :qid |qp.fvfDomDef13|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@56@01 r)) (< (inv@56@01 r) (Seq_length ys@31@01)))
        (img@57@01 r))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01)))))
    (= ($FVF.lookup_f (as sm@58@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@58@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@56@01 r)) (< (inv@56@01 r) (Seq_length ys@31@01)))
        (img@57@01 r))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01)))))
    (= ($FVF.lookup_f (as sm@58@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@58@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef12|)))
(assert (and
  (forall ((i@47@01 Int) (j@48@01 Int)) (!
    (=>
      (and
        (>= i@47@01 0)
        (and
          (< i@47@01 (Seq_length xs@30@01))
          (and
            (>= j@48@01 0)
            (and (< j@48@01 (Seq_length xs@30@01)) (not (= i@47@01 j@48@01))))))
      (not (= (Seq_index xs@30@01 i@47@01) (Seq_index xs@30@01 j@48@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@26@12@26@106|))
  (forall ((i@49@01 Int)) (!
    (=>
      (and (<= 0 i@49@01) (< i@49@01 (Seq_length xs@30@01)))
      (or (<= 0 i@49@01) (not (<= 0 i@49@01))))
    :pattern ((Seq_index xs@30@01 i@49@01))
    :qid |f-aux|))
  (forall ((i@53@01 Int) (j@54@01 Int)) (!
    (=>
      (and
        (>= i@53@01 0)
        (and
          (< i@53@01 (Seq_length ys@31@01))
          (and
            (>= j@54@01 0)
            (and (< j@54@01 (Seq_length ys@31@01)) (not (= i@53@01 j@54@01))))))
      (not (= (Seq_index ys@31@01 i@53@01) (Seq_index ys@31@01 j@54@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@28@12@28@106|))
  (forall ((i@55@01 Int)) (!
    (=>
      (and (<= 0 i@55@01) (< i@55@01 (Seq_length ys@31@01)))
      (or (<= 0 i@55@01) (not (<= 0 i@55@01))))
    :pattern ((Seq_index ys@31@01 i@55@01))
    :qid |f-aux|))
  (fun02%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<f>To$Snap (as sm@52@01  $FVF<f>))
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<f>To$Snap (as sm@58@01  $FVF<f>))
          ($Snap.combine $Snap.unit $Snap.unit))))) xs@30@01 ys@31@01)))
(push) ; 3
(assert (not (fun02 ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@52@01  $FVF<f>))
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<f>To$Snap (as sm@58@01  $FVF<f>))
        ($Snap.combine $Snap.unit $Snap.unit))))) xs@30@01 ys@31@01)))
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
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@30@01 i@35@01) (Seq_index ys@31@01 i@42@01))
    (=
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))))
  
  :qid |quant-u-11294|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@59@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@59@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@59@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef14|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@59@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@59@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef15|)))
(declare-const pm@60@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@60@01  $FPM) r)
    (+
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@60@01  $FPM) r))
  :qid |qp.resPrmSumDef16|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@60@01  $FPM) r) $Perm.Write)
  :pattern ((inv@37@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@60@01  $FPM) r) $Perm.Write)
  :pattern ((inv@44@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] fun02(xs, ys)
(set-option :timeout 0)
(push) ; 3
; [eval] (forall i: Int, j: Int ::i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j])
(declare-const i@61@01 Int)
(declare-const j@62@01 Int)
(push) ; 4
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j]
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j)))
; [eval] i >= 0
(push) ; 5
; [then-branch: 28 | !(i@61@01 >= 0) | live]
; [else-branch: 28 | i@61@01 >= 0 | live]
(push) ; 6
; [then-branch: 28 | !(i@61@01 >= 0)]
(assert (not (>= i@61@01 0)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11295|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@63@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@63@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@63@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@63@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@63@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef18|)))
(declare-const pm@64@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@64@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@64@01  $FPM) r))
  :qid |qp.resPrmSumDef19|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@64@01  $FPM) r) $Perm.Write)
  :pattern ((inv@44@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@64@01  $FPM) r) $Perm.Write)
  :pattern ((inv@37@01 r))
  :qid |qp-fld-prm-bnd|)))
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 28 | i@61@01 >= 0]
(assert (>= i@61@01 0))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11296|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@65@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@65@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@65@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@65@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@65@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef21|)))
(declare-const pm@66@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@66@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@66@01  $FPM) r))
  :qid |qp.resPrmSumDef22|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@66@01  $FPM) r) $Perm.Write)
  :pattern ((inv@44@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@66@01  $FPM) r) $Perm.Write)
  :pattern ((inv@37@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] i < |xs|
; [eval] |xs|
(set-option :timeout 0)
(push) ; 7
; [then-branch: 29 | !(i@61@01 < |xs@30@01|) | live]
; [else-branch: 29 | i@61@01 < |xs@30@01| | live]
(push) ; 8
; [then-branch: 29 | !(i@61@01 < |xs@30@01|)]
(assert (not (< i@61@01 (Seq_length xs@30@01))))
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
    (= (Seq_index xs@30@01 i@35@01) (Seq_index ys@31@01 i@42@01))
    (=
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))))
  
  :qid |quant-u-11297|))))
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
; [else-branch: 29 | i@61@01 < |xs@30@01|]
(assert (< i@61@01 (Seq_length xs@30@01)))
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
    (= (Seq_index xs@30@01 i@35@01) (Seq_index ys@31@01 i@42@01))
    (=
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))))
  
  :qid |quant-u-11298|))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
; [eval] j >= 0
(set-option :timeout 0)
(push) ; 9
; [then-branch: 30 | !(j@62@01 >= 0) | live]
; [else-branch: 30 | j@62@01 >= 0 | live]
(push) ; 10
; [then-branch: 30 | !(j@62@01 >= 0)]
(assert (not (>= j@62@01 0)))
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
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11299|))))
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
; [else-branch: 30 | j@62@01 >= 0]
(assert (>= j@62@01 0))
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
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11300|))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
; [eval] j < |xs|
; [eval] |xs|
(set-option :timeout 0)
(push) ; 11
; [then-branch: 31 | !(j@62@01 < |xs@30@01|) | live]
; [else-branch: 31 | j@62@01 < |xs@30@01| | live]
(push) ; 12
; [then-branch: 31 | !(j@62@01 < |xs@30@01|)]
(assert (not (< j@62@01 (Seq_length xs@30@01))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@30@01 i@35@01) (Seq_index ys@31@01 i@42@01))
    (=
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))))
  
  :qid |quant-u-11301|))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
(pop) ; 12
(set-option :timeout 0)
(push) ; 12
; [else-branch: 31 | j@62@01 < |xs@30@01|]
(assert (< j@62@01 (Seq_length xs@30@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@30@01 i@35@01) (Seq_index ys@31@01 i@42@01))
    (=
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))))
  
  :qid |quant-u-11302|))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
; [eval] i != j
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (< j@62@01 (Seq_length xs@30@01)) (not (< j@62@01 (Seq_length xs@30@01)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@62@01 0)
  (and
    (>= j@62@01 0)
    (or
      (< j@62@01 (Seq_length xs@30@01))
      (not (< j@62@01 (Seq_length xs@30@01)))))))
(assert (or (>= j@62@01 0) (not (>= j@62@01 0))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@61@01 (Seq_length xs@30@01))
  (and
    (< i@61@01 (Seq_length xs@30@01))
    (=>
      (>= j@62@01 0)
      (and
        (>= j@62@01 0)
        (or
          (< j@62@01 (Seq_length xs@30@01))
          (not (< j@62@01 (Seq_length xs@30@01))))))
    (or (>= j@62@01 0) (not (>= j@62@01 0))))))
(assert (or (< i@61@01 (Seq_length xs@30@01)) (not (< i@61@01 (Seq_length xs@30@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@63@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@63@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@63@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@63@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@64@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@64@01  $FPM) r))
  :qid |qp.resPrmSumDef19|)))
(assert (=>
  (not (>= i@61@01 0))
  (and
    (not (>= i@61@01 0))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@64@01  $FPM) r) $Perm.Write)
      :pattern ((inv@44@01 r))
      :qid |qp-fld-prm-bnd|))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@64@01  $FPM) r) $Perm.Write)
      :pattern ((inv@37@01 r))
      :qid |qp-fld-prm-bnd|)))))
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@65@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@65@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@65@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@65@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@66@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@66@01  $FPM) r))
  :qid |qp.resPrmSumDef22|)))
(assert (=>
  (>= i@61@01 0)
  (and
    (>= i@61@01 0)
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@66@01  $FPM) r) $Perm.Write)
      :pattern ((inv@44@01 r))
      :qid |qp-fld-prm-bnd|))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@66@01  $FPM) r) $Perm.Write)
      :pattern ((inv@37@01 r))
      :qid |qp-fld-prm-bnd|))
    (=>
      (< i@61@01 (Seq_length xs@30@01))
      (and
        (< i@61@01 (Seq_length xs@30@01))
        (=>
          (>= j@62@01 0)
          (and
            (>= j@62@01 0)
            (or
              (< j@62@01 (Seq_length xs@30@01))
              (not (< j@62@01 (Seq_length xs@30@01))))))
        (or (>= j@62@01 0) (not (>= j@62@01 0)))))
    (or
      (< i@61@01 (Seq_length xs@30@01))
      (not (< i@61@01 (Seq_length xs@30@01)))))))
(assert (or (>= i@61@01 0) (not (>= i@61@01 0))))
(set-option :timeout 0)
(push) ; 5
; [then-branch: 32 | i@61@01 >= 0 && i@61@01 < |xs@30@01| && j@62@01 >= 0 && j@62@01 < |xs@30@01| && i@61@01 != j@62@01 | live]
; [else-branch: 32 | !(i@61@01 >= 0 && i@61@01 < |xs@30@01| && j@62@01 >= 0 && j@62@01 < |xs@30@01| && i@61@01 != j@62@01) | live]
(push) ; 6
; [then-branch: 32 | i@61@01 >= 0 && i@61@01 < |xs@30@01| && j@62@01 >= 0 && j@62@01 < |xs@30@01| && i@61@01 != j@62@01]
(assert (and
  (>= i@61@01 0)
  (and
    (< i@61@01 (Seq_length xs@30@01))
    (and
      (>= j@62@01 0)
      (and (< j@62@01 (Seq_length xs@30@01)) (not (= i@61@01 j@62@01)))))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11303|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@66@01  $FPM) r) $Perm.Write)
  :pattern ((inv@44@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@66@01  $FPM) r) $Perm.Write)
  :pattern ((inv@37@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
; [eval] xs[j]
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 32 | !(i@61@01 >= 0 && i@61@01 < |xs@30@01| && j@62@01 >= 0 && j@62@01 < |xs@30@01| && i@61@01 != j@62@01)]
(assert (not
  (and
    (>= i@61@01 0)
    (and
      (< i@61@01 (Seq_length xs@30@01))
      (and
        (>= j@62@01 0)
        (and (< j@62@01 (Seq_length xs@30@01)) (not (= i@61@01 j@62@01))))))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11304|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@66@01  $FPM) r) $Perm.Write)
  :pattern ((inv@44@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@66@01  $FPM) r) $Perm.Write)
  :pattern ((inv@37@01 r))
  :qid |qp-fld-prm-bnd|)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (>= i@61@01 0)
    (and
      (< i@61@01 (Seq_length xs@30@01))
      (and
        (>= j@62@01 0)
        (and (< j@62@01 (Seq_length xs@30@01)) (not (= i@61@01 j@62@01))))))
  (and
    (>= i@61@01 0)
    (< i@61@01 (Seq_length xs@30@01))
    (>= j@62@01 0)
    (< j@62@01 (Seq_length xs@30@01))
    (not (= i@61@01 j@62@01))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@66@01  $FPM) r) $Perm.Write)
      :pattern ((inv@44@01 r))
      :qid |qp-fld-prm-bnd|))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@66@01  $FPM) r) $Perm.Write)
      :pattern ((inv@37@01 r))
      :qid |qp-fld-prm-bnd|)))))
; Joined path conditions
(assert (=>
  (not
    (and
      (>= i@61@01 0)
      (and
        (< i@61@01 (Seq_length xs@30@01))
        (and
          (>= j@62@01 0)
          (and (< j@62@01 (Seq_length xs@30@01)) (not (= i@61@01 j@62@01)))))))
  (and
    (not
      (and
        (>= i@61@01 0)
        (and
          (< i@61@01 (Seq_length xs@30@01))
          (and
            (>= j@62@01 0)
            (and (< j@62@01 (Seq_length xs@30@01)) (not (= i@61@01 j@62@01)))))))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@66@01  $FPM) r) $Perm.Write)
      :pattern ((inv@44@01 r))
      :qid |qp-fld-prm-bnd|))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@66@01  $FPM) r) $Perm.Write)
      :pattern ((inv@37@01 r))
      :qid |qp-fld-prm-bnd|)))))
(assert (or
  (not
    (and
      (>= i@61@01 0)
      (and
        (< i@61@01 (Seq_length xs@30@01))
        (and
          (>= j@62@01 0)
          (and (< j@62@01 (Seq_length xs@30@01)) (not (= i@61@01 j@62@01)))))))
  (and
    (>= i@61@01 0)
    (and
      (< i@61@01 (Seq_length xs@30@01))
      (and
        (>= j@62@01 0)
        (and (< j@62@01 (Seq_length xs@30@01)) (not (= i@61@01 j@62@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@63@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@63@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@63@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@63@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@64@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@64@01  $FPM) r))
  :qid |qp.resPrmSumDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@65@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@65@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@65@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@65@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@66@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@66@01  $FPM) r))
  :qid |qp.resPrmSumDef22|)))
; Nested auxiliary terms: non-globals (aux)
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((i@61@01 Int) (j@62@01 Int)) (!
  (=>
    (and
      (>= i@61@01 0)
      (and
        (< i@61@01 (Seq_length xs@30@01))
        (and
          (>= j@62@01 0)
          (and (< j@62@01 (Seq_length xs@30@01)) (not (= i@61@01 j@62@01))))))
    (not (= (Seq_index xs@30@01 i@61@01) (Seq_index xs@30@01 j@62@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@26@12@26@106|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@61@01 Int) (j@62@01 Int)) (!
  (=>
    (and
      (>= i@61@01 0)
      (and
        (< i@61@01 (Seq_length xs@30@01))
        (and
          (>= j@62@01 0)
          (and (< j@62@01 (Seq_length xs@30@01)) (not (= i@61@01 j@62@01))))))
    (not (= (Seq_index xs@30@01 i@61@01) (Seq_index xs@30@01 j@62@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@26@12@26@106|)))
(declare-const i@67@01 Int)
(push) ; 4
; [eval] 0 <= i && i < |xs|
; [eval] 0 <= i
(push) ; 5
; [then-branch: 33 | !(0 <= i@67@01) | live]
; [else-branch: 33 | 0 <= i@67@01 | live]
(push) ; 6
; [then-branch: 33 | !(0 <= i@67@01)]
(assert (not (<= 0 i@67@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11305|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(declare-const pm@68@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@68@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@68@01  $FPM) r))
  :qid |qp.resPrmSumDef23|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@68@01  $FPM) r) $Perm.Write)
  :pattern ((inv@44@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@68@01  $FPM) r) $Perm.Write)
  :pattern ((inv@37@01 r))
  :qid |qp-fld-prm-bnd|)))
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 33 | 0 <= i@67@01]
(assert (<= 0 i@67@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11306|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(declare-const pm@69@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@69@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@69@01  $FPM) r))
  :qid |qp.resPrmSumDef24|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@69@01  $FPM) r) $Perm.Write)
  :pattern ((inv@44@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@69@01  $FPM) r) $Perm.Write)
  :pattern ((inv@37@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] i < |xs|
; [eval] |xs|
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@68@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@68@01  $FPM) r))
  :qid |qp.resPrmSumDef23|)))
(assert (=>
  (not (<= 0 i@67@01))
  (and
    (not (<= 0 i@67@01))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@68@01  $FPM) r) $Perm.Write)
      :pattern ((inv@44@01 r))
      :qid |qp-fld-prm-bnd|))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@68@01  $FPM) r) $Perm.Write)
      :pattern ((inv@37@01 r))
      :qid |qp-fld-prm-bnd|)))))
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@69@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@69@01  $FPM) r))
  :qid |qp.resPrmSumDef24|)))
(assert (=>
  (<= 0 i@67@01)
  (and
    (<= 0 i@67@01)
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@69@01  $FPM) r) $Perm.Write)
      :pattern ((inv@44@01 r))
      :qid |qp-fld-prm-bnd|))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@69@01  $FPM) r) $Perm.Write)
      :pattern ((inv@37@01 r))
      :qid |qp-fld-prm-bnd|)))))
(assert (or (<= 0 i@67@01) (not (<= 0 i@67@01))))
(assert (and (<= 0 i@67@01) (< i@67@01 (Seq_length xs@30@01))))
; [eval] xs[i]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@67@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@70@01 ($Ref) Int)
(declare-fun img@71@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@68@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@68@01  $FPM) r))
  :qid |qp.resPrmSumDef23|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@69@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@69@01  $FPM) r))
  :qid |qp.resPrmSumDef24|)))
; Nested auxiliary terms: non-globals
(assert (forall ((i@67@01 Int)) (!
  (=>
    (and (<= 0 i@67@01) (< i@67@01 (Seq_length xs@30@01)))
    (and
      (=>
        (not (<= 0 i@67@01))
        (and
          (not (<= 0 i@67@01))
          (forall ((r $Ref)) (!
            (<= ($FVF.perm_f (as pm@68@01  $FPM) r) $Perm.Write)
            :pattern ((inv@44@01 r))
            :qid |qp-fld-prm-bnd|))
          (forall ((r $Ref)) (!
            (<= ($FVF.perm_f (as pm@68@01  $FPM) r) $Perm.Write)
            :pattern ((inv@37@01 r))
            :qid |qp-fld-prm-bnd|))))
      (=>
        (<= 0 i@67@01)
        (and
          (<= 0 i@67@01)
          (forall ((r $Ref)) (!
            (<= ($FVF.perm_f (as pm@69@01  $FPM) r) $Perm.Write)
            :pattern ((inv@44@01 r))
            :qid |qp-fld-prm-bnd|))
          (forall ((r $Ref)) (!
            (<= ($FVF.perm_f (as pm@69@01  $FPM) r) $Perm.Write)
            :pattern ((inv@37@01 r))
            :qid |qp-fld-prm-bnd|))))
      (or (<= 0 i@67@01) (not (<= 0 i@67@01)))))
  :pattern ((Seq_index xs@30@01 i@67@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@67@01 Int) (i2@67@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@67@01) (< i1@67@01 (Seq_length xs@30@01)))
      (and (<= 0 i2@67@01) (< i2@67@01 (Seq_length xs@30@01)))
      (= (Seq_index xs@30@01 i1@67@01) (Seq_index xs@30@01 i2@67@01)))
    (= i1@67@01 i2@67@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@67@01 Int)) (!
  (=>
    (and (<= 0 i@67@01) (< i@67@01 (Seq_length xs@30@01)))
    (and
      (= (inv@70@01 (Seq_index xs@30@01 i@67@01)) i@67@01)
      (img@71@01 (Seq_index xs@30@01 i@67@01))))
  :pattern ((Seq_index xs@30@01 i@67@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@71@01 r)
      (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) (Seq_length xs@30@01))))
    (= (Seq_index xs@30@01 (inv@70@01 r)) r))
  :pattern ((inv@70@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@67@01 Int)) (!
  (= (Seq_index xs@30@01 i@67@01) (Seq_index ys@31@01 i@67@01))
  
  :qid |quant-u-11308|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) (Seq_length xs@30@01)))
      (img@71@01 r)
      (= r (Seq_index xs@30@01 (inv@70@01 r))))
    (>
      (+
        (ite
          (and
            (img@38@01 r)
            (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@45@01 r)
            (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-11309|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@72@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@72@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) (Seq_length xs@30@01)))
        (img@71@01 r)))
    (=>
      (and
        (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) (Seq_length xs@30@01)))
        (img@71@01 r))
      (Set_in r ($FVF.domain_f (as sm@72@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@72@01  $FVF<f>))))
  :qid |qp.fvfDomDef27|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) (Seq_length xs@30@01)))
        (img@71@01 r))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01)))))
    (= ($FVF.lookup_f (as sm@72@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@72@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) (Seq_length xs@30@01)))
        (img@71@01 r))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01)))))
    (= ($FVF.lookup_f (as sm@72@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@72@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef26|)))
; [eval] (forall i: Int, j: Int ::i >= 0 && (i < |ys| && (j >= 0 && (j < |ys| && i != j))) ==> ys[i] != ys[j])
(declare-const i@73@01 Int)
(declare-const j@74@01 Int)
(push) ; 4
; [eval] i >= 0 && (i < |ys| && (j >= 0 && (j < |ys| && i != j))) ==> ys[i] != ys[j]
; [eval] i >= 0 && (i < |ys| && (j >= 0 && (j < |ys| && i != j)))
; [eval] i >= 0
(push) ; 5
; [then-branch: 34 | !(i@73@01 >= 0) | live]
; [else-branch: 34 | i@73@01 >= 0 | live]
(push) ; 6
; [then-branch: 34 | !(i@73@01 >= 0)]
(assert (not (>= i@73@01 0)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11310|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@75@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@75@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@75@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@75@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@75@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef29|)))
(declare-const pm@76@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@76@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@76@01  $FPM) r))
  :qid |qp.resPrmSumDef30|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@76@01  $FPM) r) $Perm.Write)
  :pattern ((inv@44@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@76@01  $FPM) r) $Perm.Write)
  :pattern ((inv@37@01 r))
  :qid |qp-fld-prm-bnd|)))
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 34 | i@73@01 >= 0]
(assert (>= i@73@01 0))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11311|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@77@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@77@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@77@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@77@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@77@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef32|)))
(declare-const pm@78@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@78@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@78@01  $FPM) r))
  :qid |qp.resPrmSumDef33|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@78@01  $FPM) r) $Perm.Write)
  :pattern ((inv@44@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@78@01  $FPM) r) $Perm.Write)
  :pattern ((inv@37@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] i < |ys|
; [eval] |ys|
(set-option :timeout 0)
(push) ; 7
; [then-branch: 35 | !(i@73@01 < |ys@31@01|) | live]
; [else-branch: 35 | i@73@01 < |ys@31@01| | live]
(push) ; 8
; [then-branch: 35 | !(i@73@01 < |ys@31@01|)]
(assert (not (< i@73@01 (Seq_length ys@31@01))))
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
    (= (Seq_index xs@30@01 i@35@01) (Seq_index ys@31@01 i@42@01))
    (=
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))))
  
  :qid |quant-u-11312|))))
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
; [else-branch: 35 | i@73@01 < |ys@31@01|]
(assert (< i@73@01 (Seq_length ys@31@01)))
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
    (= (Seq_index xs@30@01 i@35@01) (Seq_index ys@31@01 i@42@01))
    (=
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))))
  
  :qid |quant-u-11313|))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
; [eval] j >= 0
(set-option :timeout 0)
(push) ; 9
; [then-branch: 36 | !(j@74@01 >= 0) | live]
; [else-branch: 36 | j@74@01 >= 0 | live]
(push) ; 10
; [then-branch: 36 | !(j@74@01 >= 0)]
(assert (not (>= j@74@01 0)))
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
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11314|))))
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
; [else-branch: 36 | j@74@01 >= 0]
(assert (>= j@74@01 0))
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
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11315|))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
; [eval] j < |ys|
; [eval] |ys|
(set-option :timeout 0)
(push) ; 11
; [then-branch: 37 | !(j@74@01 < |ys@31@01|) | live]
; [else-branch: 37 | j@74@01 < |ys@31@01| | live]
(push) ; 12
; [then-branch: 37 | !(j@74@01 < |ys@31@01|)]
(assert (not (< j@74@01 (Seq_length ys@31@01))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@30@01 i@35@01) (Seq_index ys@31@01 i@42@01))
    (=
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))))
  
  :qid |quant-u-11316|))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
(pop) ; 12
(set-option :timeout 0)
(push) ; 12
; [else-branch: 37 | j@74@01 < |ys@31@01|]
(assert (< j@74@01 (Seq_length ys@31@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@30@01 i@35@01) (Seq_index ys@31@01 i@42@01))
    (=
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))))
  
  :qid |quant-u-11317|))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
; [eval] i != j
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (< j@74@01 (Seq_length ys@31@01)) (not (< j@74@01 (Seq_length ys@31@01)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@74@01 0)
  (and
    (>= j@74@01 0)
    (or
      (< j@74@01 (Seq_length ys@31@01))
      (not (< j@74@01 (Seq_length ys@31@01)))))))
(assert (or (>= j@74@01 0) (not (>= j@74@01 0))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@73@01 (Seq_length ys@31@01))
  (and
    (< i@73@01 (Seq_length ys@31@01))
    (=>
      (>= j@74@01 0)
      (and
        (>= j@74@01 0)
        (or
          (< j@74@01 (Seq_length ys@31@01))
          (not (< j@74@01 (Seq_length ys@31@01))))))
    (or (>= j@74@01 0) (not (>= j@74@01 0))))))
(assert (or (< i@73@01 (Seq_length ys@31@01)) (not (< i@73@01 (Seq_length ys@31@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@75@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@75@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@75@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@75@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@76@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@76@01  $FPM) r))
  :qid |qp.resPrmSumDef30|)))
(assert (=>
  (not (>= i@73@01 0))
  (and
    (not (>= i@73@01 0))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@76@01  $FPM) r) $Perm.Write)
      :pattern ((inv@44@01 r))
      :qid |qp-fld-prm-bnd|))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@76@01  $FPM) r) $Perm.Write)
      :pattern ((inv@37@01 r))
      :qid |qp-fld-prm-bnd|)))))
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@77@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@77@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@77@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@77@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@78@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@78@01  $FPM) r))
  :qid |qp.resPrmSumDef33|)))
(assert (=>
  (>= i@73@01 0)
  (and
    (>= i@73@01 0)
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@78@01  $FPM) r) $Perm.Write)
      :pattern ((inv@44@01 r))
      :qid |qp-fld-prm-bnd|))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@78@01  $FPM) r) $Perm.Write)
      :pattern ((inv@37@01 r))
      :qid |qp-fld-prm-bnd|))
    (=>
      (< i@73@01 (Seq_length ys@31@01))
      (and
        (< i@73@01 (Seq_length ys@31@01))
        (=>
          (>= j@74@01 0)
          (and
            (>= j@74@01 0)
            (or
              (< j@74@01 (Seq_length ys@31@01))
              (not (< j@74@01 (Seq_length ys@31@01))))))
        (or (>= j@74@01 0) (not (>= j@74@01 0)))))
    (or
      (< i@73@01 (Seq_length ys@31@01))
      (not (< i@73@01 (Seq_length ys@31@01)))))))
(assert (or (>= i@73@01 0) (not (>= i@73@01 0))))
(set-option :timeout 0)
(push) ; 5
; [then-branch: 38 | i@73@01 >= 0 && i@73@01 < |ys@31@01| && j@74@01 >= 0 && j@74@01 < |ys@31@01| && i@73@01 != j@74@01 | live]
; [else-branch: 38 | !(i@73@01 >= 0 && i@73@01 < |ys@31@01| && j@74@01 >= 0 && j@74@01 < |ys@31@01| && i@73@01 != j@74@01) | live]
(push) ; 6
; [then-branch: 38 | i@73@01 >= 0 && i@73@01 < |ys@31@01| && j@74@01 >= 0 && j@74@01 < |ys@31@01| && i@73@01 != j@74@01]
(assert (and
  (>= i@73@01 0)
  (and
    (< i@73@01 (Seq_length ys@31@01))
    (and
      (>= j@74@01 0)
      (and (< j@74@01 (Seq_length ys@31@01)) (not (= i@73@01 j@74@01)))))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11318|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@78@01  $FPM) r) $Perm.Write)
  :pattern ((inv@44@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@78@01  $FPM) r) $Perm.Write)
  :pattern ((inv@37@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] ys[i] != ys[j]
; [eval] ys[i]
; [eval] ys[j]
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 38 | !(i@73@01 >= 0 && i@73@01 < |ys@31@01| && j@74@01 >= 0 && j@74@01 < |ys@31@01| && i@73@01 != j@74@01)]
(assert (not
  (and
    (>= i@73@01 0)
    (and
      (< i@73@01 (Seq_length ys@31@01))
      (and
        (>= j@74@01 0)
        (and (< j@74@01 (Seq_length ys@31@01)) (not (= i@73@01 j@74@01))))))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11319|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@78@01  $FPM) r) $Perm.Write)
  :pattern ((inv@44@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@78@01  $FPM) r) $Perm.Write)
  :pattern ((inv@37@01 r))
  :qid |qp-fld-prm-bnd|)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (>= i@73@01 0)
    (and
      (< i@73@01 (Seq_length ys@31@01))
      (and
        (>= j@74@01 0)
        (and (< j@74@01 (Seq_length ys@31@01)) (not (= i@73@01 j@74@01))))))
  (and
    (>= i@73@01 0)
    (< i@73@01 (Seq_length ys@31@01))
    (>= j@74@01 0)
    (< j@74@01 (Seq_length ys@31@01))
    (not (= i@73@01 j@74@01))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@78@01  $FPM) r) $Perm.Write)
      :pattern ((inv@44@01 r))
      :qid |qp-fld-prm-bnd|))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@78@01  $FPM) r) $Perm.Write)
      :pattern ((inv@37@01 r))
      :qid |qp-fld-prm-bnd|)))))
; Joined path conditions
(assert (=>
  (not
    (and
      (>= i@73@01 0)
      (and
        (< i@73@01 (Seq_length ys@31@01))
        (and
          (>= j@74@01 0)
          (and (< j@74@01 (Seq_length ys@31@01)) (not (= i@73@01 j@74@01)))))))
  (and
    (not
      (and
        (>= i@73@01 0)
        (and
          (< i@73@01 (Seq_length ys@31@01))
          (and
            (>= j@74@01 0)
            (and (< j@74@01 (Seq_length ys@31@01)) (not (= i@73@01 j@74@01)))))))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@78@01  $FPM) r) $Perm.Write)
      :pattern ((inv@44@01 r))
      :qid |qp-fld-prm-bnd|))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@78@01  $FPM) r) $Perm.Write)
      :pattern ((inv@37@01 r))
      :qid |qp-fld-prm-bnd|)))))
(assert (or
  (not
    (and
      (>= i@73@01 0)
      (and
        (< i@73@01 (Seq_length ys@31@01))
        (and
          (>= j@74@01 0)
          (and (< j@74@01 (Seq_length ys@31@01)) (not (= i@73@01 j@74@01)))))))
  (and
    (>= i@73@01 0)
    (and
      (< i@73@01 (Seq_length ys@31@01))
      (and
        (>= j@74@01 0)
        (and (< j@74@01 (Seq_length ys@31@01)) (not (= i@73@01 j@74@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@75@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@75@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@75@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@75@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@76@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@76@01  $FPM) r))
  :qid |qp.resPrmSumDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@77@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@77@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@77@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@77@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@78@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@78@01  $FPM) r))
  :qid |qp.resPrmSumDef33|)))
; Nested auxiliary terms: non-globals (aux)
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((i@73@01 Int) (j@74@01 Int)) (!
  (=>
    (and
      (>= i@73@01 0)
      (and
        (< i@73@01 (Seq_length ys@31@01))
        (and
          (>= j@74@01 0)
          (and (< j@74@01 (Seq_length ys@31@01)) (not (= i@73@01 j@74@01))))))
    (not (= (Seq_index ys@31@01 i@73@01) (Seq_index ys@31@01 j@74@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@28@12@28@106|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@73@01 Int) (j@74@01 Int)) (!
  (=>
    (and
      (>= i@73@01 0)
      (and
        (< i@73@01 (Seq_length ys@31@01))
        (and
          (>= j@74@01 0)
          (and (< j@74@01 (Seq_length ys@31@01)) (not (= i@73@01 j@74@01))))))
    (not (= (Seq_index ys@31@01 i@73@01) (Seq_index ys@31@01 j@74@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@28@12@28@106|)))
(declare-const i@79@01 Int)
(push) ; 4
; [eval] 0 <= i && i < |ys|
; [eval] 0 <= i
(push) ; 5
; [then-branch: 39 | !(0 <= i@79@01) | live]
; [else-branch: 39 | 0 <= i@79@01 | live]
(push) ; 6
; [then-branch: 39 | !(0 <= i@79@01)]
(assert (not (<= 0 i@79@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11320|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(declare-const pm@80@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@80@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@80@01  $FPM) r))
  :qid |qp.resPrmSumDef34|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@80@01  $FPM) r) $Perm.Write)
  :pattern ((inv@44@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@80@01  $FPM) r) $Perm.Write)
  :pattern ((inv@37@01 r))
  :qid |qp-fld-prm-bnd|)))
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 39 | 0 <= i@79@01]
(assert (<= 0 i@79@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11321|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(declare-const pm@81@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@81@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@81@01  $FPM) r))
  :qid |qp.resPrmSumDef35|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@81@01  $FPM) r) $Perm.Write)
  :pattern ((inv@44@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@81@01  $FPM) r) $Perm.Write)
  :pattern ((inv@37@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] i < |ys|
; [eval] |ys|
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@80@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@80@01  $FPM) r))
  :qid |qp.resPrmSumDef34|)))
(assert (=>
  (not (<= 0 i@79@01))
  (and
    (not (<= 0 i@79@01))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@80@01  $FPM) r) $Perm.Write)
      :pattern ((inv@44@01 r))
      :qid |qp-fld-prm-bnd|))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@80@01  $FPM) r) $Perm.Write)
      :pattern ((inv@37@01 r))
      :qid |qp-fld-prm-bnd|)))))
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@81@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@81@01  $FPM) r))
  :qid |qp.resPrmSumDef35|)))
(assert (=>
  (<= 0 i@79@01)
  (and
    (<= 0 i@79@01)
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@81@01  $FPM) r) $Perm.Write)
      :pattern ((inv@44@01 r))
      :qid |qp-fld-prm-bnd|))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@81@01  $FPM) r) $Perm.Write)
      :pattern ((inv@37@01 r))
      :qid |qp-fld-prm-bnd|)))))
(assert (or (<= 0 i@79@01) (not (<= 0 i@79@01))))
(assert (and (<= 0 i@79@01) (< i@79@01 (Seq_length ys@31@01))))
; [eval] ys[i]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@79@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@82@01 ($Ref) Int)
(declare-fun img@83@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@80@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@80@01  $FPM) r))
  :qid |qp.resPrmSumDef34|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@81@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@81@01  $FPM) r))
  :qid |qp.resPrmSumDef35|)))
; Nested auxiliary terms: non-globals
(assert (forall ((i@79@01 Int)) (!
  (=>
    (and (<= 0 i@79@01) (< i@79@01 (Seq_length ys@31@01)))
    (and
      (=>
        (not (<= 0 i@79@01))
        (and
          (not (<= 0 i@79@01))
          (forall ((r $Ref)) (!
            (<= ($FVF.perm_f (as pm@80@01  $FPM) r) $Perm.Write)
            :pattern ((inv@44@01 r))
            :qid |qp-fld-prm-bnd|))
          (forall ((r $Ref)) (!
            (<= ($FVF.perm_f (as pm@80@01  $FPM) r) $Perm.Write)
            :pattern ((inv@37@01 r))
            :qid |qp-fld-prm-bnd|))))
      (=>
        (<= 0 i@79@01)
        (and
          (<= 0 i@79@01)
          (forall ((r $Ref)) (!
            (<= ($FVF.perm_f (as pm@81@01  $FPM) r) $Perm.Write)
            :pattern ((inv@44@01 r))
            :qid |qp-fld-prm-bnd|))
          (forall ((r $Ref)) (!
            (<= ($FVF.perm_f (as pm@81@01  $FPM) r) $Perm.Write)
            :pattern ((inv@37@01 r))
            :qid |qp-fld-prm-bnd|))))
      (or (<= 0 i@79@01) (not (<= 0 i@79@01)))))
  :pattern ((Seq_index ys@31@01 i@79@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@79@01 Int) (i2@79@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@79@01) (< i1@79@01 (Seq_length ys@31@01)))
      (and (<= 0 i2@79@01) (< i2@79@01 (Seq_length ys@31@01)))
      (= (Seq_index ys@31@01 i1@79@01) (Seq_index ys@31@01 i2@79@01)))
    (= i1@79@01 i2@79@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@79@01 Int)) (!
  (=>
    (and (<= 0 i@79@01) (< i@79@01 (Seq_length ys@31@01)))
    (and
      (= (inv@82@01 (Seq_index ys@31@01 i@79@01)) i@79@01)
      (img@83@01 (Seq_index ys@31@01 i@79@01))))
  :pattern ((Seq_index ys@31@01 i@79@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@83@01 r)
      (and (<= 0 (inv@82@01 r)) (< (inv@82@01 r) (Seq_length ys@31@01))))
    (= (Seq_index ys@31@01 (inv@82@01 r)) r))
  :pattern ((inv@82@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@79@01 Int)) (!
  (= (Seq_index ys@31@01 i@79@01) (Seq_index xs@30@01 i@79@01))
  
  :qid |quant-u-11323|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@82@01 r)) (< (inv@82@01 r) (Seq_length ys@31@01)))
      (img@83@01 r)
      (= r (Seq_index ys@31@01 (inv@82@01 r))))
    (>
      (+
        (ite
          (and
            (img@45@01 r)
            (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@38@01 r)
            (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-11324|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@84@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@84@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@82@01 r)) (< (inv@82@01 r) (Seq_length ys@31@01)))
        (img@83@01 r)))
    (=>
      (and
        (and (<= 0 (inv@82@01 r)) (< (inv@82@01 r) (Seq_length ys@31@01)))
        (img@83@01 r))
      (Set_in r ($FVF.domain_f (as sm@84@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@84@01  $FVF<f>))))
  :qid |qp.fvfDomDef38|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@82@01 r)) (< (inv@82@01 r) (Seq_length ys@31@01)))
        (img@83@01 r))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01)))))
    (= ($FVF.lookup_f (as sm@84@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@84@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef36|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@82@01 r)) (< (inv@82@01 r) (Seq_length ys@31@01)))
        (img@83@01 r))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01)))))
    (= ($FVF.lookup_f (as sm@84@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@84@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef37|)))
; [eval] 10 < |xs|
; [eval] |xs|
; [eval] |xs| == |ys|
; [eval] |xs|
; [eval] |ys|
(assert (fun02%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@72@01  $FVF<f>))
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<f>To$Snap (as sm@84@01  $FVF<f>))
        ($Snap.combine $Snap.unit $Snap.unit))))) xs@30@01 ys@31@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@63@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@63@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@63@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@63@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@64@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@64@01  $FPM) r))
  :qid |qp.resPrmSumDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@65@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@65@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@65@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@65@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@66@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@66@01  $FPM) r))
  :qid |qp.resPrmSumDef22|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@68@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@68@01  $FPM) r))
  :qid |qp.resPrmSumDef23|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@69@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@69@01  $FPM) r))
  :qid |qp.resPrmSumDef24|)))
(assert (forall ((i@67@01 Int)) (!
  (=>
    (and (<= 0 i@67@01) (< i@67@01 (Seq_length xs@30@01)))
    (and
      (= (inv@70@01 (Seq_index xs@30@01 i@67@01)) i@67@01)
      (img@71@01 (Seq_index xs@30@01 i@67@01))))
  :pattern ((Seq_index xs@30@01 i@67@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@71@01 r)
      (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) (Seq_length xs@30@01))))
    (= (Seq_index xs@30@01 (inv@70@01 r)) r))
  :pattern ((inv@70@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@72@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) (Seq_length xs@30@01)))
        (img@71@01 r)))
    (=>
      (and
        (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) (Seq_length xs@30@01)))
        (img@71@01 r))
      (Set_in r ($FVF.domain_f (as sm@72@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@72@01  $FVF<f>))))
  :qid |qp.fvfDomDef27|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) (Seq_length xs@30@01)))
        (img@71@01 r))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01)))))
    (= ($FVF.lookup_f (as sm@72@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@72@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) (Seq_length xs@30@01)))
        (img@71@01 r))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01)))))
    (= ($FVF.lookup_f (as sm@72@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@72@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@75@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@75@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@75@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@75@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@76@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@76@01  $FPM) r))
  :qid |qp.resPrmSumDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@77@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@77@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@77@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@77@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@78@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@78@01  $FPM) r))
  :qid |qp.resPrmSumDef33|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@80@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@80@01  $FPM) r))
  :qid |qp.resPrmSumDef34|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@81@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@81@01  $FPM) r))
  :qid |qp.resPrmSumDef35|)))
(assert (forall ((i@79@01 Int)) (!
  (=>
    (and (<= 0 i@79@01) (< i@79@01 (Seq_length ys@31@01)))
    (and
      (= (inv@82@01 (Seq_index ys@31@01 i@79@01)) i@79@01)
      (img@83@01 (Seq_index ys@31@01 i@79@01))))
  :pattern ((Seq_index ys@31@01 i@79@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@83@01 r)
      (and (<= 0 (inv@82@01 r)) (< (inv@82@01 r) (Seq_length ys@31@01))))
    (= (Seq_index ys@31@01 (inv@82@01 r)) r))
  :pattern ((inv@82@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@84@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@82@01 r)) (< (inv@82@01 r) (Seq_length ys@31@01)))
        (img@83@01 r)))
    (=>
      (and
        (and (<= 0 (inv@82@01 r)) (< (inv@82@01 r) (Seq_length ys@31@01)))
        (img@83@01 r))
      (Set_in r ($FVF.domain_f (as sm@84@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@84@01  $FVF<f>))))
  :qid |qp.fvfDomDef38|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@82@01 r)) (< (inv@82@01 r) (Seq_length ys@31@01)))
        (img@83@01 r))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01)))))
    (= ($FVF.lookup_f (as sm@84@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@84@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef36|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@82@01 r)) (< (inv@82@01 r) (Seq_length ys@31@01)))
        (img@83@01 r))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01)))))
    (= ($FVF.lookup_f (as sm@84@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@84@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef37|)))
(assert (and
  (forall ((i@61@01 Int) (j@62@01 Int)) (!
    (=>
      (and
        (>= i@61@01 0)
        (and
          (< i@61@01 (Seq_length xs@30@01))
          (and
            (>= j@62@01 0)
            (and (< j@62@01 (Seq_length xs@30@01)) (not (= i@61@01 j@62@01))))))
      (not (= (Seq_index xs@30@01 i@61@01) (Seq_index xs@30@01 j@62@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@26@12@26@106|))
  (forall ((i@67@01 Int)) (!
    (=>
      (and (<= 0 i@67@01) (< i@67@01 (Seq_length xs@30@01)))
      (and
        (=>
          (not (<= 0 i@67@01))
          (and
            (not (<= 0 i@67@01))
            (forall ((r $Ref)) (!
              (<= ($FVF.perm_f (as pm@68@01  $FPM) r) $Perm.Write)
              :pattern ((inv@44@01 r))
              :qid |qp-fld-prm-bnd|))
            (forall ((r $Ref)) (!
              (<= ($FVF.perm_f (as pm@68@01  $FPM) r) $Perm.Write)
              :pattern ((inv@37@01 r))
              :qid |qp-fld-prm-bnd|))))
        (=>
          (<= 0 i@67@01)
          (and
            (<= 0 i@67@01)
            (forall ((r $Ref)) (!
              (<= ($FVF.perm_f (as pm@69@01  $FPM) r) $Perm.Write)
              :pattern ((inv@44@01 r))
              :qid |qp-fld-prm-bnd|))
            (forall ((r $Ref)) (!
              (<= ($FVF.perm_f (as pm@69@01  $FPM) r) $Perm.Write)
              :pattern ((inv@37@01 r))
              :qid |qp-fld-prm-bnd|))))
        (or (<= 0 i@67@01) (not (<= 0 i@67@01)))))
    :pattern ((Seq_index xs@30@01 i@67@01))
    :qid |f-aux|))
  (forall ((i@73@01 Int) (j@74@01 Int)) (!
    (=>
      (and
        (>= i@73@01 0)
        (and
          (< i@73@01 (Seq_length ys@31@01))
          (and
            (>= j@74@01 0)
            (and (< j@74@01 (Seq_length ys@31@01)) (not (= i@73@01 j@74@01))))))
      (not (= (Seq_index ys@31@01 i@73@01) (Seq_index ys@31@01 j@74@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@28@12@28@106|))
  (forall ((i@79@01 Int)) (!
    (=>
      (and (<= 0 i@79@01) (< i@79@01 (Seq_length ys@31@01)))
      (and
        (=>
          (not (<= 0 i@79@01))
          (and
            (not (<= 0 i@79@01))
            (forall ((r $Ref)) (!
              (<= ($FVF.perm_f (as pm@80@01  $FPM) r) $Perm.Write)
              :pattern ((inv@44@01 r))
              :qid |qp-fld-prm-bnd|))
            (forall ((r $Ref)) (!
              (<= ($FVF.perm_f (as pm@80@01  $FPM) r) $Perm.Write)
              :pattern ((inv@37@01 r))
              :qid |qp-fld-prm-bnd|))))
        (=>
          (<= 0 i@79@01)
          (and
            (<= 0 i@79@01)
            (forall ((r $Ref)) (!
              (<= ($FVF.perm_f (as pm@81@01  $FPM) r) $Perm.Write)
              :pattern ((inv@44@01 r))
              :qid |qp-fld-prm-bnd|))
            (forall ((r $Ref)) (!
              (<= ($FVF.perm_f (as pm@81@01  $FPM) r) $Perm.Write)
              :pattern ((inv@37@01 r))
              :qid |qp-fld-prm-bnd|))))
        (or (<= 0 i@79@01) (not (<= 0 i@79@01)))))
    :pattern ((Seq_index ys@31@01 i@79@01))
    :qid |f-aux|))
  (fun02%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<f>To$Snap (as sm@72@01  $FVF<f>))
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<f>To$Snap (as sm@84@01  $FVF<f>))
          ($Snap.combine $Snap.unit $Snap.unit))))) xs@30@01 ys@31@01)))
(push) ; 3
(assert (not (fun02 ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@72@01  $FVF<f>))
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<f>To$Snap (as sm@84@01  $FVF<f>))
        ($Snap.combine $Snap.unit $Snap.unit))))) xs@30@01 ys@31@01)))
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
    (= (Seq_index xs@30@01 i@35@01) (Seq_index ys@31@01 i@42@01))
    (=
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))))
  
  :qid |quant-u-11325|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@85@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@85@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@85@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef39|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@85@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@85@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef40|)))
(declare-const pm@86@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@86@01  $FPM) r)
    (+
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@86@01  $FPM) r))
  :qid |qp.resPrmSumDef41|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@86@01  $FPM) r) $Perm.Write)
  :pattern ((inv@37@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@86@01  $FPM) r) $Perm.Write)
  :pattern ((inv@44@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] fun02(xs, ys)
(set-option :timeout 0)
(push) ; 3
; [eval] (forall i: Int, j: Int ::i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j])
(declare-const i@87@01 Int)
(declare-const j@88@01 Int)
(push) ; 4
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j]
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j)))
; [eval] i >= 0
(push) ; 5
; [then-branch: 40 | !(i@87@01 >= 0) | live]
; [else-branch: 40 | i@87@01 >= 0 | live]
(push) ; 6
; [then-branch: 40 | !(i@87@01 >= 0)]
(assert (not (>= i@87@01 0)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@30@01 i@35@01) (Seq_index ys@31@01 i@42@01))
    (=
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))))
  
  :qid |quant-u-11326|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 40 | i@87@01 >= 0]
(assert (>= i@87@01 0))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@30@01 i@35@01) (Seq_index ys@31@01 i@42@01))
    (=
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))))
  
  :qid |quant-u-11327|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
; [eval] i < |xs|
; [eval] |xs|
(set-option :timeout 0)
(push) ; 7
; [then-branch: 41 | !(i@87@01 < |xs@30@01|) | live]
; [else-branch: 41 | i@87@01 < |xs@30@01| | live]
(push) ; 8
; [then-branch: 41 | !(i@87@01 < |xs@30@01|)]
(assert (not (< i@87@01 (Seq_length xs@30@01))))
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
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11328|))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const sm@89@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@89@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@89@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef42|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@89@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@89@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef43|)))
(declare-const pm@90@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@90@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@90@01  $FPM) r))
  :qid |qp.resPrmSumDef44|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@90@01  $FPM) r) $Perm.Write)
  :pattern ((inv@44@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@90@01  $FPM) r) $Perm.Write)
  :pattern ((inv@37@01 r))
  :qid |qp-fld-prm-bnd|)))
(pop) ; 8
(set-option :timeout 0)
(push) ; 8
; [else-branch: 41 | i@87@01 < |xs@30@01|]
(assert (< i@87@01 (Seq_length xs@30@01)))
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
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11329|))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(declare-const sm@91@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@91@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@91@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef45|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@91@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@91@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef46|)))
(declare-const pm@92@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@92@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@92@01  $FPM) r))
  :qid |qp.resPrmSumDef47|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@92@01  $FPM) r) $Perm.Write)
  :pattern ((inv@44@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@92@01  $FPM) r) $Perm.Write)
  :pattern ((inv@37@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] j >= 0
(set-option :timeout 0)
(push) ; 9
; [then-branch: 42 | !(j@88@01 >= 0) | live]
; [else-branch: 42 | j@88@01 >= 0 | live]
(push) ; 10
; [then-branch: 42 | !(j@88@01 >= 0)]
(assert (not (>= j@88@01 0)))
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
    (= (Seq_index xs@30@01 i@35@01) (Seq_index ys@31@01 i@42@01))
    (=
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))))
  
  :qid |quant-u-11330|))))
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
; [else-branch: 42 | j@88@01 >= 0]
(assert (>= j@88@01 0))
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
    (= (Seq_index xs@30@01 i@35@01) (Seq_index ys@31@01 i@42@01))
    (=
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))))
  
  :qid |quant-u-11331|))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
; [eval] j < |xs|
; [eval] |xs|
(set-option :timeout 0)
(push) ; 11
; [then-branch: 43 | !(j@88@01 < |xs@30@01|) | live]
; [else-branch: 43 | j@88@01 < |xs@30@01| | live]
(push) ; 12
; [then-branch: 43 | !(j@88@01 < |xs@30@01|)]
(assert (not (< j@88@01 (Seq_length xs@30@01))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11332|))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
(pop) ; 12
(set-option :timeout 0)
(push) ; 12
; [else-branch: 43 | j@88@01 < |xs@30@01|]
(assert (< j@88@01 (Seq_length xs@30@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11333|))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
; [eval] i != j
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (< j@88@01 (Seq_length xs@30@01)) (not (< j@88@01 (Seq_length xs@30@01)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@88@01 0)
  (and
    (>= j@88@01 0)
    (or
      (< j@88@01 (Seq_length xs@30@01))
      (not (< j@88@01 (Seq_length xs@30@01)))))))
(assert (or (>= j@88@01 0) (not (>= j@88@01 0))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@89@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@89@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef42|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@89@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@89@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef43|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@90@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@90@01  $FPM) r))
  :qid |qp.resPrmSumDef44|)))
(assert (=>
  (not (< i@87@01 (Seq_length xs@30@01)))
  (and
    (not (< i@87@01 (Seq_length xs@30@01)))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@90@01  $FPM) r) $Perm.Write)
      :pattern ((inv@44@01 r))
      :qid |qp-fld-prm-bnd|))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@90@01  $FPM) r) $Perm.Write)
      :pattern ((inv@37@01 r))
      :qid |qp-fld-prm-bnd|)))))
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@91@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@91@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef45|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@91@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@91@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef46|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@92@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@92@01  $FPM) r))
  :qid |qp.resPrmSumDef47|)))
(assert (=>
  (< i@87@01 (Seq_length xs@30@01))
  (and
    (< i@87@01 (Seq_length xs@30@01))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@92@01  $FPM) r) $Perm.Write)
      :pattern ((inv@44@01 r))
      :qid |qp-fld-prm-bnd|))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@92@01  $FPM) r) $Perm.Write)
      :pattern ((inv@37@01 r))
      :qid |qp-fld-prm-bnd|))
    (=>
      (>= j@88@01 0)
      (and
        (>= j@88@01 0)
        (or
          (< j@88@01 (Seq_length xs@30@01))
          (not (< j@88@01 (Seq_length xs@30@01))))))
    (or (>= j@88@01 0) (not (>= j@88@01 0))))))
(assert (or (< i@87@01 (Seq_length xs@30@01)) (not (< i@87@01 (Seq_length xs@30@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@89@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@89@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef42|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@89@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@89@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef43|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@90@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@90@01  $FPM) r))
  :qid |qp.resPrmSumDef44|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@91@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@91@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef45|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@91@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@91@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef46|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@92@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@92@01  $FPM) r))
  :qid |qp.resPrmSumDef47|)))
(assert (=>
  (>= i@87@01 0)
  (and
    (>= i@87@01 0)
    (=>
      (not (< i@87@01 (Seq_length xs@30@01)))
      (and
        (not (< i@87@01 (Seq_length xs@30@01)))
        (forall ((r $Ref)) (!
          (<= ($FVF.perm_f (as pm@90@01  $FPM) r) $Perm.Write)
          :pattern ((inv@44@01 r))
          :qid |qp-fld-prm-bnd|))
        (forall ((r $Ref)) (!
          (<= ($FVF.perm_f (as pm@90@01  $FPM) r) $Perm.Write)
          :pattern ((inv@37@01 r))
          :qid |qp-fld-prm-bnd|))))
    (=>
      (< i@87@01 (Seq_length xs@30@01))
      (and
        (< i@87@01 (Seq_length xs@30@01))
        (forall ((r $Ref)) (!
          (<= ($FVF.perm_f (as pm@92@01  $FPM) r) $Perm.Write)
          :pattern ((inv@44@01 r))
          :qid |qp-fld-prm-bnd|))
        (forall ((r $Ref)) (!
          (<= ($FVF.perm_f (as pm@92@01  $FPM) r) $Perm.Write)
          :pattern ((inv@37@01 r))
          :qid |qp-fld-prm-bnd|))
        (=>
          (>= j@88@01 0)
          (and
            (>= j@88@01 0)
            (or
              (< j@88@01 (Seq_length xs@30@01))
              (not (< j@88@01 (Seq_length xs@30@01))))))
        (or (>= j@88@01 0) (not (>= j@88@01 0)))))
    (or
      (< i@87@01 (Seq_length xs@30@01))
      (not (< i@87@01 (Seq_length xs@30@01)))))))
(assert (or (>= i@87@01 0) (not (>= i@87@01 0))))
(set-option :timeout 0)
(push) ; 5
; [then-branch: 44 | i@87@01 >= 0 && i@87@01 < |xs@30@01| && j@88@01 >= 0 && j@88@01 < |xs@30@01| && i@87@01 != j@88@01 | live]
; [else-branch: 44 | !(i@87@01 >= 0 && i@87@01 < |xs@30@01| && j@88@01 >= 0 && j@88@01 < |xs@30@01| && i@87@01 != j@88@01) | live]
(push) ; 6
; [then-branch: 44 | i@87@01 >= 0 && i@87@01 < |xs@30@01| && j@88@01 >= 0 && j@88@01 < |xs@30@01| && i@87@01 != j@88@01]
(assert (and
  (>= i@87@01 0)
  (and
    (< i@87@01 (Seq_length xs@30@01))
    (and
      (>= j@88@01 0)
      (and (< j@88@01 (Seq_length xs@30@01)) (not (= i@87@01 j@88@01)))))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@30@01 i@35@01) (Seq_index ys@31@01 i@42@01))
    (=
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))))
  
  :qid |quant-u-11334|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
; [eval] xs[i] != xs[j]
; [eval] xs[i]
; [eval] xs[j]
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 44 | !(i@87@01 >= 0 && i@87@01 < |xs@30@01| && j@88@01 >= 0 && j@88@01 < |xs@30@01| && i@87@01 != j@88@01)]
(assert (not
  (and
    (>= i@87@01 0)
    (and
      (< i@87@01 (Seq_length xs@30@01))
      (and
        (>= j@88@01 0)
        (and (< j@88@01 (Seq_length xs@30@01)) (not (= i@87@01 j@88@01))))))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@30@01 i@35@01) (Seq_index ys@31@01 i@42@01))
    (=
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))))
  
  :qid |quant-u-11335|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (>= i@87@01 0)
    (and
      (< i@87@01 (Seq_length xs@30@01))
      (and
        (>= j@88@01 0)
        (and (< j@88@01 (Seq_length xs@30@01)) (not (= i@87@01 j@88@01))))))
  (and
    (>= i@87@01 0)
    (< i@87@01 (Seq_length xs@30@01))
    (>= j@88@01 0)
    (< j@88@01 (Seq_length xs@30@01))
    (not (= i@87@01 j@88@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= i@87@01 0)
      (and
        (< i@87@01 (Seq_length xs@30@01))
        (and
          (>= j@88@01 0)
          (and (< j@88@01 (Seq_length xs@30@01)) (not (= i@87@01 j@88@01)))))))
  (and
    (>= i@87@01 0)
    (and
      (< i@87@01 (Seq_length xs@30@01))
      (and
        (>= j@88@01 0)
        (and (< j@88@01 (Seq_length xs@30@01)) (not (= i@87@01 j@88@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@89@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@89@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef42|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@89@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@89@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef43|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@90@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@90@01  $FPM) r))
  :qid |qp.resPrmSumDef44|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@91@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@91@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef45|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@91@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@91@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef46|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@92@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@92@01  $FPM) r))
  :qid |qp.resPrmSumDef47|)))
; Nested auxiliary terms: non-globals (aux)
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((i@87@01 Int) (j@88@01 Int)) (!
  (=>
    (and
      (>= i@87@01 0)
      (and
        (< i@87@01 (Seq_length xs@30@01))
        (and
          (>= j@88@01 0)
          (and (< j@88@01 (Seq_length xs@30@01)) (not (= i@87@01 j@88@01))))))
    (not (= (Seq_index xs@30@01 i@87@01) (Seq_index xs@30@01 j@88@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@26@12@26@106|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@87@01 Int) (j@88@01 Int)) (!
  (=>
    (and
      (>= i@87@01 0)
      (and
        (< i@87@01 (Seq_length xs@30@01))
        (and
          (>= j@88@01 0)
          (and (< j@88@01 (Seq_length xs@30@01)) (not (= i@87@01 j@88@01))))))
    (not (= (Seq_index xs@30@01 i@87@01) (Seq_index xs@30@01 j@88@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@26@12@26@106|)))
(declare-const i@93@01 Int)
(push) ; 4
; [eval] 0 <= i && i < |xs|
; [eval] 0 <= i
(push) ; 5
; [then-branch: 45 | !(0 <= i@93@01) | live]
; [else-branch: 45 | 0 <= i@93@01 | live]
(push) ; 6
; [then-branch: 45 | !(0 <= i@93@01)]
(assert (not (<= 0 i@93@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@30@01 i@35@01) (Seq_index ys@31@01 i@42@01))
    (=
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))))
  
  :qid |quant-u-11336|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 45 | 0 <= i@93@01]
(assert (<= 0 i@93@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@30@01 i@35@01) (Seq_index ys@31@01 i@42@01))
    (=
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))))
  
  :qid |quant-u-11337|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
; [eval] i < |xs|
; [eval] |xs|
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@93@01) (not (<= 0 i@93@01))))
(assert (and (<= 0 i@93@01) (< i@93@01 (Seq_length xs@30@01))))
; [eval] xs[i]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@93@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@94@01 ($Ref) Int)
(declare-fun img@95@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@93@01 Int)) (!
  (=>
    (and (<= 0 i@93@01) (< i@93@01 (Seq_length xs@30@01)))
    (or (<= 0 i@93@01) (not (<= 0 i@93@01))))
  :pattern ((Seq_index xs@30@01 i@93@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@93@01 Int) (i2@93@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@93@01) (< i1@93@01 (Seq_length xs@30@01)))
      (and (<= 0 i2@93@01) (< i2@93@01 (Seq_length xs@30@01)))
      (= (Seq_index xs@30@01 i1@93@01) (Seq_index xs@30@01 i2@93@01)))
    (= i1@93@01 i2@93@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@93@01 Int)) (!
  (=>
    (and (<= 0 i@93@01) (< i@93@01 (Seq_length xs@30@01)))
    (and
      (= (inv@94@01 (Seq_index xs@30@01 i@93@01)) i@93@01)
      (img@95@01 (Seq_index xs@30@01 i@93@01))))
  :pattern ((Seq_index xs@30@01 i@93@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@95@01 r)
      (and (<= 0 (inv@94@01 r)) (< (inv@94@01 r) (Seq_length xs@30@01))))
    (= (Seq_index xs@30@01 (inv@94@01 r)) r))
  :pattern ((inv@94@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@93@01 Int)) (!
  (= (Seq_index xs@30@01 i@93@01) (Seq_index ys@31@01 i@93@01))
  
  :qid |quant-u-11339|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@94@01 r)) (< (inv@94@01 r) (Seq_length xs@30@01)))
      (img@95@01 r)
      (= r (Seq_index xs@30@01 (inv@94@01 r))))
    (>
      (+
        (ite
          (and
            (img@38@01 r)
            (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@45@01 r)
            (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-11340|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@96@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@96@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@94@01 r)) (< (inv@94@01 r) (Seq_length xs@30@01)))
        (img@95@01 r)))
    (=>
      (and
        (and (<= 0 (inv@94@01 r)) (< (inv@94@01 r) (Seq_length xs@30@01)))
        (img@95@01 r))
      (Set_in r ($FVF.domain_f (as sm@96@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@96@01  $FVF<f>))))
  :qid |qp.fvfDomDef50|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@94@01 r)) (< (inv@94@01 r) (Seq_length xs@30@01)))
        (img@95@01 r))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01)))))
    (= ($FVF.lookup_f (as sm@96@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@96@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef48|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@94@01 r)) (< (inv@94@01 r) (Seq_length xs@30@01)))
        (img@95@01 r))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01)))))
    (= ($FVF.lookup_f (as sm@96@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@96@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef49|)))
; [eval] (forall i: Int, j: Int ::i >= 0 && (i < |ys| && (j >= 0 && (j < |ys| && i != j))) ==> ys[i] != ys[j])
(declare-const i@97@01 Int)
(declare-const j@98@01 Int)
(push) ; 4
; [eval] i >= 0 && (i < |ys| && (j >= 0 && (j < |ys| && i != j))) ==> ys[i] != ys[j]
; [eval] i >= 0 && (i < |ys| && (j >= 0 && (j < |ys| && i != j)))
; [eval] i >= 0
(push) ; 5
; [then-branch: 46 | !(i@97@01 >= 0) | live]
; [else-branch: 46 | i@97@01 >= 0 | live]
(push) ; 6
; [then-branch: 46 | !(i@97@01 >= 0)]
(assert (not (>= i@97@01 0)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@30@01 i@35@01) (Seq_index ys@31@01 i@42@01))
    (=
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))))
  
  :qid |quant-u-11341|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@99@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@99@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@99@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef51|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@99@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@99@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef52|)))
; Assume upper permission bound for field f
; Assume upper permission bound for field f
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 46 | i@97@01 >= 0]
(assert (>= i@97@01 0))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@30@01 i@35@01) (Seq_index ys@31@01 i@42@01))
    (=
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))))
  
  :qid |quant-u-11342|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@100@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@100@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@100@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef53|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@100@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@100@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef54|)))
; Assume upper permission bound for field f
; Assume upper permission bound for field f
; [eval] i < |ys|
; [eval] |ys|
(set-option :timeout 0)
(push) ; 7
; [then-branch: 47 | !(i@97@01 < |ys@31@01|) | live]
; [else-branch: 47 | i@97@01 < |ys@31@01| | live]
(push) ; 8
; [then-branch: 47 | !(i@97@01 < |ys@31@01|)]
(assert (not (< i@97@01 (Seq_length ys@31@01))))
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
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11343|))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(declare-const pm@101@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@101@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@101@01  $FPM) r))
  :qid |qp.resPrmSumDef55|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@101@01  $FPM) r) $Perm.Write)
  :pattern ((inv@44@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@101@01  $FPM) r) $Perm.Write)
  :pattern ((inv@37@01 r))
  :qid |qp-fld-prm-bnd|)))
(pop) ; 8
(set-option :timeout 0)
(push) ; 8
; [else-branch: 47 | i@97@01 < |ys@31@01|]
(assert (< i@97@01 (Seq_length ys@31@01)))
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
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11344|))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(declare-const pm@102@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@102@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@102@01  $FPM) r))
  :qid |qp.resPrmSumDef56|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@102@01  $FPM) r) $Perm.Write)
  :pattern ((inv@44@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@102@01  $FPM) r) $Perm.Write)
  :pattern ((inv@37@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] j >= 0
(set-option :timeout 0)
(push) ; 9
; [then-branch: 48 | !(j@98@01 >= 0) | live]
; [else-branch: 48 | j@98@01 >= 0 | live]
(push) ; 10
; [then-branch: 48 | !(j@98@01 >= 0)]
(assert (not (>= j@98@01 0)))
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
    (= (Seq_index xs@30@01 i@35@01) (Seq_index ys@31@01 i@42@01))
    (=
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))))
  
  :qid |quant-u-11345|))))
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
; [else-branch: 48 | j@98@01 >= 0]
(assert (>= j@98@01 0))
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
    (= (Seq_index xs@30@01 i@35@01) (Seq_index ys@31@01 i@42@01))
    (=
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))))
  
  :qid |quant-u-11346|))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
; [eval] j < |ys|
; [eval] |ys|
(set-option :timeout 0)
(push) ; 11
; [then-branch: 49 | !(j@98@01 < |ys@31@01|) | live]
; [else-branch: 49 | j@98@01 < |ys@31@01| | live]
(push) ; 12
; [then-branch: 49 | !(j@98@01 < |ys@31@01|)]
(assert (not (< j@98@01 (Seq_length ys@31@01))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11347|))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
(pop) ; 12
(set-option :timeout 0)
(push) ; 12
; [else-branch: 49 | j@98@01 < |ys@31@01|]
(assert (< j@98@01 (Seq_length ys@31@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11348|))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
; [eval] i != j
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (< j@98@01 (Seq_length ys@31@01)) (not (< j@98@01 (Seq_length ys@31@01)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@98@01 0)
  (and
    (>= j@98@01 0)
    (or
      (< j@98@01 (Seq_length ys@31@01))
      (not (< j@98@01 (Seq_length ys@31@01)))))))
(assert (or (>= j@98@01 0) (not (>= j@98@01 0))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@101@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@101@01  $FPM) r))
  :qid |qp.resPrmSumDef55|)))
(assert (=>
  (not (< i@97@01 (Seq_length ys@31@01)))
  (and
    (not (< i@97@01 (Seq_length ys@31@01)))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@101@01  $FPM) r) $Perm.Write)
      :pattern ((inv@44@01 r))
      :qid |qp-fld-prm-bnd|))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@101@01  $FPM) r) $Perm.Write)
      :pattern ((inv@37@01 r))
      :qid |qp-fld-prm-bnd|)))))
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@102@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@102@01  $FPM) r))
  :qid |qp.resPrmSumDef56|)))
(assert (=>
  (< i@97@01 (Seq_length ys@31@01))
  (and
    (< i@97@01 (Seq_length ys@31@01))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@102@01  $FPM) r) $Perm.Write)
      :pattern ((inv@44@01 r))
      :qid |qp-fld-prm-bnd|))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@102@01  $FPM) r) $Perm.Write)
      :pattern ((inv@37@01 r))
      :qid |qp-fld-prm-bnd|))
    (=>
      (>= j@98@01 0)
      (and
        (>= j@98@01 0)
        (or
          (< j@98@01 (Seq_length ys@31@01))
          (not (< j@98@01 (Seq_length ys@31@01))))))
    (or (>= j@98@01 0) (not (>= j@98@01 0))))))
(assert (or (< i@97@01 (Seq_length ys@31@01)) (not (< i@97@01 (Seq_length ys@31@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@99@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@99@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef51|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@99@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@99@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef52|)))
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@100@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@100@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef53|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@100@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@100@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef54|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@101@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@101@01  $FPM) r))
  :qid |qp.resPrmSumDef55|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@102@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@102@01  $FPM) r))
  :qid |qp.resPrmSumDef56|)))
(assert (=>
  (>= i@97@01 0)
  (and
    (>= i@97@01 0)
    (=>
      (not (< i@97@01 (Seq_length ys@31@01)))
      (and
        (not (< i@97@01 (Seq_length ys@31@01)))
        (forall ((r $Ref)) (!
          (<= ($FVF.perm_f (as pm@101@01  $FPM) r) $Perm.Write)
          :pattern ((inv@44@01 r))
          :qid |qp-fld-prm-bnd|))
        (forall ((r $Ref)) (!
          (<= ($FVF.perm_f (as pm@101@01  $FPM) r) $Perm.Write)
          :pattern ((inv@37@01 r))
          :qid |qp-fld-prm-bnd|))))
    (=>
      (< i@97@01 (Seq_length ys@31@01))
      (and
        (< i@97@01 (Seq_length ys@31@01))
        (forall ((r $Ref)) (!
          (<= ($FVF.perm_f (as pm@102@01  $FPM) r) $Perm.Write)
          :pattern ((inv@44@01 r))
          :qid |qp-fld-prm-bnd|))
        (forall ((r $Ref)) (!
          (<= ($FVF.perm_f (as pm@102@01  $FPM) r) $Perm.Write)
          :pattern ((inv@37@01 r))
          :qid |qp-fld-prm-bnd|))
        (=>
          (>= j@98@01 0)
          (and
            (>= j@98@01 0)
            (or
              (< j@98@01 (Seq_length ys@31@01))
              (not (< j@98@01 (Seq_length ys@31@01))))))
        (or (>= j@98@01 0) (not (>= j@98@01 0)))))
    (or
      (< i@97@01 (Seq_length ys@31@01))
      (not (< i@97@01 (Seq_length ys@31@01)))))))
(assert (or (>= i@97@01 0) (not (>= i@97@01 0))))
(set-option :timeout 0)
(push) ; 5
; [then-branch: 50 | i@97@01 >= 0 && i@97@01 < |ys@31@01| && j@98@01 >= 0 && j@98@01 < |ys@31@01| && i@97@01 != j@98@01 | live]
; [else-branch: 50 | !(i@97@01 >= 0 && i@97@01 < |ys@31@01| && j@98@01 >= 0 && j@98@01 < |ys@31@01| && i@97@01 != j@98@01) | live]
(push) ; 6
; [then-branch: 50 | i@97@01 >= 0 && i@97@01 < |ys@31@01| && j@98@01 >= 0 && j@98@01 < |ys@31@01| && i@97@01 != j@98@01]
(assert (and
  (>= i@97@01 0)
  (and
    (< i@97@01 (Seq_length ys@31@01))
    (and
      (>= j@98@01 0)
      (and (< j@98@01 (Seq_length ys@31@01)) (not (= i@97@01 j@98@01)))))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@30@01 i@35@01) (Seq_index ys@31@01 i@42@01))
    (=
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))))
  
  :qid |quant-u-11349|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
; [eval] ys[i] != ys[j]
; [eval] ys[i]
; [eval] ys[j]
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 50 | !(i@97@01 >= 0 && i@97@01 < |ys@31@01| && j@98@01 >= 0 && j@98@01 < |ys@31@01| && i@97@01 != j@98@01)]
(assert (not
  (and
    (>= i@97@01 0)
    (and
      (< i@97@01 (Seq_length ys@31@01))
      (and
        (>= j@98@01 0)
        (and (< j@98@01 (Seq_length ys@31@01)) (not (= i@97@01 j@98@01))))))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@30@01 i@35@01) (Seq_index ys@31@01 i@42@01))
    (=
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))))
  
  :qid |quant-u-11350|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (>= i@97@01 0)
    (and
      (< i@97@01 (Seq_length ys@31@01))
      (and
        (>= j@98@01 0)
        (and (< j@98@01 (Seq_length ys@31@01)) (not (= i@97@01 j@98@01))))))
  (and
    (>= i@97@01 0)
    (< i@97@01 (Seq_length ys@31@01))
    (>= j@98@01 0)
    (< j@98@01 (Seq_length ys@31@01))
    (not (= i@97@01 j@98@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= i@97@01 0)
      (and
        (< i@97@01 (Seq_length ys@31@01))
        (and
          (>= j@98@01 0)
          (and (< j@98@01 (Seq_length ys@31@01)) (not (= i@97@01 j@98@01)))))))
  (and
    (>= i@97@01 0)
    (and
      (< i@97@01 (Seq_length ys@31@01))
      (and
        (>= j@98@01 0)
        (and (< j@98@01 (Seq_length ys@31@01)) (not (= i@97@01 j@98@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@99@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@99@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef51|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@99@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@99@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef52|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@100@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@100@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef53|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@100@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@100@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef54|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@101@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@101@01  $FPM) r))
  :qid |qp.resPrmSumDef55|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@102@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@102@01  $FPM) r))
  :qid |qp.resPrmSumDef56|)))
; Nested auxiliary terms: non-globals (aux)
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((i@97@01 Int) (j@98@01 Int)) (!
  (=>
    (and
      (>= i@97@01 0)
      (and
        (< i@97@01 (Seq_length ys@31@01))
        (and
          (>= j@98@01 0)
          (and (< j@98@01 (Seq_length ys@31@01)) (not (= i@97@01 j@98@01))))))
    (not (= (Seq_index ys@31@01 i@97@01) (Seq_index ys@31@01 j@98@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@28@12@28@106|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@97@01 Int) (j@98@01 Int)) (!
  (=>
    (and
      (>= i@97@01 0)
      (and
        (< i@97@01 (Seq_length ys@31@01))
        (and
          (>= j@98@01 0)
          (and (< j@98@01 (Seq_length ys@31@01)) (not (= i@97@01 j@98@01))))))
    (not (= (Seq_index ys@31@01 i@97@01) (Seq_index ys@31@01 j@98@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@28@12@28@106|)))
(declare-const i@103@01 Int)
(push) ; 4
; [eval] 0 <= i && i < |ys|
; [eval] 0 <= i
(push) ; 5
; [then-branch: 51 | !(0 <= i@103@01) | live]
; [else-branch: 51 | 0 <= i@103@01 | live]
(push) ; 6
; [then-branch: 51 | !(0 <= i@103@01)]
(assert (not (<= 0 i@103@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@30@01 i@35@01) (Seq_index ys@31@01 i@42@01))
    (=
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))))
  
  :qid |quant-u-11351|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 51 | 0 <= i@103@01]
(assert (<= 0 i@103@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@30@01 i@35@01) (Seq_index ys@31@01 i@42@01))
    (=
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))))
  
  :qid |quant-u-11352|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
; [eval] i < |ys|
; [eval] |ys|
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@103@01) (not (<= 0 i@103@01))))
(assert (and (<= 0 i@103@01) (< i@103@01 (Seq_length ys@31@01))))
; [eval] ys[i]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@103@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@104@01 ($Ref) Int)
(declare-fun img@105@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@103@01 Int)) (!
  (=>
    (and (<= 0 i@103@01) (< i@103@01 (Seq_length ys@31@01)))
    (or (<= 0 i@103@01) (not (<= 0 i@103@01))))
  :pattern ((Seq_index ys@31@01 i@103@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@103@01 Int) (i2@103@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@103@01) (< i1@103@01 (Seq_length ys@31@01)))
      (and (<= 0 i2@103@01) (< i2@103@01 (Seq_length ys@31@01)))
      (= (Seq_index ys@31@01 i1@103@01) (Seq_index ys@31@01 i2@103@01)))
    (= i1@103@01 i2@103@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@103@01 Int)) (!
  (=>
    (and (<= 0 i@103@01) (< i@103@01 (Seq_length ys@31@01)))
    (and
      (= (inv@104@01 (Seq_index ys@31@01 i@103@01)) i@103@01)
      (img@105@01 (Seq_index ys@31@01 i@103@01))))
  :pattern ((Seq_index ys@31@01 i@103@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@105@01 r)
      (and (<= 0 (inv@104@01 r)) (< (inv@104@01 r) (Seq_length ys@31@01))))
    (= (Seq_index ys@31@01 (inv@104@01 r)) r))
  :pattern ((inv@104@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@103@01 Int)) (!
  (= (Seq_index ys@31@01 i@103@01) (Seq_index xs@30@01 i@103@01))
  
  :qid |quant-u-11354|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@104@01 r)) (< (inv@104@01 r) (Seq_length ys@31@01)))
      (img@105@01 r)
      (= r (Seq_index ys@31@01 (inv@104@01 r))))
    (>
      (+
        (ite
          (and
            (img@45@01 r)
            (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@38@01 r)
            (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-11355|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@106@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@106@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@104@01 r)) (< (inv@104@01 r) (Seq_length ys@31@01)))
        (img@105@01 r)))
    (=>
      (and
        (and (<= 0 (inv@104@01 r)) (< (inv@104@01 r) (Seq_length ys@31@01)))
        (img@105@01 r))
      (Set_in r ($FVF.domain_f (as sm@106@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@106@01  $FVF<f>))))
  :qid |qp.fvfDomDef59|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@104@01 r)) (< (inv@104@01 r) (Seq_length ys@31@01)))
        (img@105@01 r))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01)))))
    (= ($FVF.lookup_f (as sm@106@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@106@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef57|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@104@01 r)) (< (inv@104@01 r) (Seq_length ys@31@01)))
        (img@105@01 r))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01)))))
    (= ($FVF.lookup_f (as sm@106@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@106@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef58|)))
; [eval] 10 < |xs|
; [eval] |xs|
; [eval] |xs| == |ys|
; [eval] |xs|
; [eval] |ys|
(assert (fun02%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@96@01  $FVF<f>))
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<f>To$Snap (as sm@106@01  $FVF<f>))
        ($Snap.combine $Snap.unit $Snap.unit))))) xs@30@01 ys@31@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@89@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@89@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef42|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@89@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@89@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef43|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@90@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@90@01  $FPM) r))
  :qid |qp.resPrmSumDef44|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@91@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@91@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef45|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@91@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@91@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef46|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@92@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@92@01  $FPM) r))
  :qid |qp.resPrmSumDef47|)))
(assert (forall ((i@93@01 Int)) (!
  (=>
    (and (<= 0 i@93@01) (< i@93@01 (Seq_length xs@30@01)))
    (and
      (= (inv@94@01 (Seq_index xs@30@01 i@93@01)) i@93@01)
      (img@95@01 (Seq_index xs@30@01 i@93@01))))
  :pattern ((Seq_index xs@30@01 i@93@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@95@01 r)
      (and (<= 0 (inv@94@01 r)) (< (inv@94@01 r) (Seq_length xs@30@01))))
    (= (Seq_index xs@30@01 (inv@94@01 r)) r))
  :pattern ((inv@94@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@96@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@94@01 r)) (< (inv@94@01 r) (Seq_length xs@30@01)))
        (img@95@01 r)))
    (=>
      (and
        (and (<= 0 (inv@94@01 r)) (< (inv@94@01 r) (Seq_length xs@30@01)))
        (img@95@01 r))
      (Set_in r ($FVF.domain_f (as sm@96@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@96@01  $FVF<f>))))
  :qid |qp.fvfDomDef50|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@94@01 r)) (< (inv@94@01 r) (Seq_length xs@30@01)))
        (img@95@01 r))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01)))))
    (= ($FVF.lookup_f (as sm@96@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@96@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef48|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@94@01 r)) (< (inv@94@01 r) (Seq_length xs@30@01)))
        (img@95@01 r))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01)))))
    (= ($FVF.lookup_f (as sm@96@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@96@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef49|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@99@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@99@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef51|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@99@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@99@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef52|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@100@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@100@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef53|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@100@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@100@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef54|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@101@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@101@01  $FPM) r))
  :qid |qp.resPrmSumDef55|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@102@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@102@01  $FPM) r))
  :qid |qp.resPrmSumDef56|)))
(assert (forall ((i@103@01 Int)) (!
  (=>
    (and (<= 0 i@103@01) (< i@103@01 (Seq_length ys@31@01)))
    (and
      (= (inv@104@01 (Seq_index ys@31@01 i@103@01)) i@103@01)
      (img@105@01 (Seq_index ys@31@01 i@103@01))))
  :pattern ((Seq_index ys@31@01 i@103@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@105@01 r)
      (and (<= 0 (inv@104@01 r)) (< (inv@104@01 r) (Seq_length ys@31@01))))
    (= (Seq_index ys@31@01 (inv@104@01 r)) r))
  :pattern ((inv@104@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@106@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@104@01 r)) (< (inv@104@01 r) (Seq_length ys@31@01)))
        (img@105@01 r)))
    (=>
      (and
        (and (<= 0 (inv@104@01 r)) (< (inv@104@01 r) (Seq_length ys@31@01)))
        (img@105@01 r))
      (Set_in r ($FVF.domain_f (as sm@106@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@106@01  $FVF<f>))))
  :qid |qp.fvfDomDef59|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@104@01 r)) (< (inv@104@01 r) (Seq_length ys@31@01)))
        (img@105@01 r))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01)))))
    (= ($FVF.lookup_f (as sm@106@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@106@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef57|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@104@01 r)) (< (inv@104@01 r) (Seq_length ys@31@01)))
        (img@105@01 r))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01)))))
    (= ($FVF.lookup_f (as sm@106@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@106@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef58|)))
(assert (and
  (forall ((i@87@01 Int) (j@88@01 Int)) (!
    (=>
      (and
        (>= i@87@01 0)
        (and
          (< i@87@01 (Seq_length xs@30@01))
          (and
            (>= j@88@01 0)
            (and (< j@88@01 (Seq_length xs@30@01)) (not (= i@87@01 j@88@01))))))
      (not (= (Seq_index xs@30@01 i@87@01) (Seq_index xs@30@01 j@88@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@26@12@26@106|))
  (forall ((i@93@01 Int)) (!
    (=>
      (and (<= 0 i@93@01) (< i@93@01 (Seq_length xs@30@01)))
      (or (<= 0 i@93@01) (not (<= 0 i@93@01))))
    :pattern ((Seq_index xs@30@01 i@93@01))
    :qid |f-aux|))
  (forall ((i@97@01 Int) (j@98@01 Int)) (!
    (=>
      (and
        (>= i@97@01 0)
        (and
          (< i@97@01 (Seq_length ys@31@01))
          (and
            (>= j@98@01 0)
            (and (< j@98@01 (Seq_length ys@31@01)) (not (= i@97@01 j@98@01))))))
      (not (= (Seq_index ys@31@01 i@97@01) (Seq_index ys@31@01 j@98@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@28@12@28@106|))
  (forall ((i@103@01 Int)) (!
    (=>
      (and (<= 0 i@103@01) (< i@103@01 (Seq_length ys@31@01)))
      (or (<= 0 i@103@01) (not (<= 0 i@103@01))))
    :pattern ((Seq_index ys@31@01 i@103@01))
    :qid |f-aux|))
  (fun02%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<f>To$Snap (as sm@96@01  $FVF<f>))
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<f>To$Snap (as sm@106@01  $FVF<f>))
          ($Snap.combine $Snap.unit $Snap.unit))))) xs@30@01 ys@31@01)))
(push) ; 3
(assert (not (fun02 ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@96@01  $FVF<f>))
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<f>To$Snap (as sm@106@01  $FVF<f>))
        ($Snap.combine $Snap.unit $Snap.unit))))) xs@30@01 ys@31@01)))
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
    (= (Seq_index xs@30@01 i@35@01) (Seq_index ys@31@01 i@42@01))
    (=
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))))
  
  :qid |quant-u-11356|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
; [eval] fun02(xs, ys)
(set-option :timeout 0)
(push) ; 3
; [eval] (forall i: Int, j: Int ::i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j])
(declare-const i@107@01 Int)
(declare-const j@108@01 Int)
(push) ; 4
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j]
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j)))
; [eval] i >= 0
(push) ; 5
; [then-branch: 52 | !(i@107@01 >= 0) | live]
; [else-branch: 52 | i@107@01 >= 0 | live]
(push) ; 6
; [then-branch: 52 | !(i@107@01 >= 0)]
(assert (not (>= i@107@01 0)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11357|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@109@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@109@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@109@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef60|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@109@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@109@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef61|)))
(declare-const pm@110@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@110@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@110@01  $FPM) r))
  :qid |qp.resPrmSumDef62|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@110@01  $FPM) r) $Perm.Write)
  :pattern ((inv@44@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@110@01  $FPM) r) $Perm.Write)
  :pattern ((inv@37@01 r))
  :qid |qp-fld-prm-bnd|)))
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 52 | i@107@01 >= 0]
(assert (>= i@107@01 0))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11358|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@111@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@111@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@111@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef63|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@111@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@111@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef64|)))
(declare-const pm@112@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@112@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@112@01  $FPM) r))
  :qid |qp.resPrmSumDef65|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@112@01  $FPM) r) $Perm.Write)
  :pattern ((inv@44@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@112@01  $FPM) r) $Perm.Write)
  :pattern ((inv@37@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] i < |xs|
; [eval] |xs|
(set-option :timeout 0)
(push) ; 7
; [then-branch: 53 | !(i@107@01 < |xs@30@01|) | live]
; [else-branch: 53 | i@107@01 < |xs@30@01| | live]
(push) ; 8
; [then-branch: 53 | !(i@107@01 < |xs@30@01|)]
(assert (not (< i@107@01 (Seq_length xs@30@01))))
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
    (= (Seq_index xs@30@01 i@35@01) (Seq_index ys@31@01 i@42@01))
    (=
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))))
  
  :qid |quant-u-11359|))))
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
; [else-branch: 53 | i@107@01 < |xs@30@01|]
(assert (< i@107@01 (Seq_length xs@30@01)))
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
    (= (Seq_index xs@30@01 i@35@01) (Seq_index ys@31@01 i@42@01))
    (=
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))))
  
  :qid |quant-u-11360|))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
; [eval] j >= 0
(set-option :timeout 0)
(push) ; 9
; [then-branch: 54 | !(j@108@01 >= 0) | live]
; [else-branch: 54 | j@108@01 >= 0 | live]
(push) ; 10
; [then-branch: 54 | !(j@108@01 >= 0)]
(assert (not (>= j@108@01 0)))
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
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11361|))))
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
; [else-branch: 54 | j@108@01 >= 0]
(assert (>= j@108@01 0))
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
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11362|))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
; [eval] j < |xs|
; [eval] |xs|
(set-option :timeout 0)
(push) ; 11
; [then-branch: 55 | !(j@108@01 < |xs@30@01|) | live]
; [else-branch: 55 | j@108@01 < |xs@30@01| | live]
(push) ; 12
; [then-branch: 55 | !(j@108@01 < |xs@30@01|)]
(assert (not (< j@108@01 (Seq_length xs@30@01))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@30@01 i@35@01) (Seq_index ys@31@01 i@42@01))
    (=
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))))
  
  :qid |quant-u-11363|))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
(pop) ; 12
(set-option :timeout 0)
(push) ; 12
; [else-branch: 55 | j@108@01 < |xs@30@01|]
(assert (< j@108@01 (Seq_length xs@30@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@30@01 i@35@01) (Seq_index ys@31@01 i@42@01))
    (=
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))))
  
  :qid |quant-u-11364|))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
; [eval] i != j
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (< j@108@01 (Seq_length xs@30@01)) (not (< j@108@01 (Seq_length xs@30@01)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@108@01 0)
  (and
    (>= j@108@01 0)
    (or
      (< j@108@01 (Seq_length xs@30@01))
      (not (< j@108@01 (Seq_length xs@30@01)))))))
(assert (or (>= j@108@01 0) (not (>= j@108@01 0))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@107@01 (Seq_length xs@30@01))
  (and
    (< i@107@01 (Seq_length xs@30@01))
    (=>
      (>= j@108@01 0)
      (and
        (>= j@108@01 0)
        (or
          (< j@108@01 (Seq_length xs@30@01))
          (not (< j@108@01 (Seq_length xs@30@01))))))
    (or (>= j@108@01 0) (not (>= j@108@01 0))))))
(assert (or (< i@107@01 (Seq_length xs@30@01)) (not (< i@107@01 (Seq_length xs@30@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@109@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@109@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef60|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@109@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@109@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef61|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@110@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@110@01  $FPM) r))
  :qid |qp.resPrmSumDef62|)))
(assert (=>
  (not (>= i@107@01 0))
  (and
    (not (>= i@107@01 0))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@110@01  $FPM) r) $Perm.Write)
      :pattern ((inv@44@01 r))
      :qid |qp-fld-prm-bnd|))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@110@01  $FPM) r) $Perm.Write)
      :pattern ((inv@37@01 r))
      :qid |qp-fld-prm-bnd|)))))
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@111@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@111@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef63|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@111@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@111@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef64|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@112@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@112@01  $FPM) r))
  :qid |qp.resPrmSumDef65|)))
(assert (=>
  (>= i@107@01 0)
  (and
    (>= i@107@01 0)
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@112@01  $FPM) r) $Perm.Write)
      :pattern ((inv@44@01 r))
      :qid |qp-fld-prm-bnd|))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@112@01  $FPM) r) $Perm.Write)
      :pattern ((inv@37@01 r))
      :qid |qp-fld-prm-bnd|))
    (=>
      (< i@107@01 (Seq_length xs@30@01))
      (and
        (< i@107@01 (Seq_length xs@30@01))
        (=>
          (>= j@108@01 0)
          (and
            (>= j@108@01 0)
            (or
              (< j@108@01 (Seq_length xs@30@01))
              (not (< j@108@01 (Seq_length xs@30@01))))))
        (or (>= j@108@01 0) (not (>= j@108@01 0)))))
    (or
      (< i@107@01 (Seq_length xs@30@01))
      (not (< i@107@01 (Seq_length xs@30@01)))))))
(assert (or (>= i@107@01 0) (not (>= i@107@01 0))))
(set-option :timeout 0)
(push) ; 5
; [then-branch: 56 | i@107@01 >= 0 && i@107@01 < |xs@30@01| && j@108@01 >= 0 && j@108@01 < |xs@30@01| && i@107@01 != j@108@01 | live]
; [else-branch: 56 | !(i@107@01 >= 0 && i@107@01 < |xs@30@01| && j@108@01 >= 0 && j@108@01 < |xs@30@01| && i@107@01 != j@108@01) | live]
(push) ; 6
; [then-branch: 56 | i@107@01 >= 0 && i@107@01 < |xs@30@01| && j@108@01 >= 0 && j@108@01 < |xs@30@01| && i@107@01 != j@108@01]
(assert (and
  (>= i@107@01 0)
  (and
    (< i@107@01 (Seq_length xs@30@01))
    (and
      (>= j@108@01 0)
      (and (< j@108@01 (Seq_length xs@30@01)) (not (= i@107@01 j@108@01)))))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11365|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@112@01  $FPM) r) $Perm.Write)
  :pattern ((inv@44@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@112@01  $FPM) r) $Perm.Write)
  :pattern ((inv@37@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
; [eval] xs[j]
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 56 | !(i@107@01 >= 0 && i@107@01 < |xs@30@01| && j@108@01 >= 0 && j@108@01 < |xs@30@01| && i@107@01 != j@108@01)]
(assert (not
  (and
    (>= i@107@01 0)
    (and
      (< i@107@01 (Seq_length xs@30@01))
      (and
        (>= j@108@01 0)
        (and (< j@108@01 (Seq_length xs@30@01)) (not (= i@107@01 j@108@01))))))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11366|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@112@01  $FPM) r) $Perm.Write)
  :pattern ((inv@44@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@112@01  $FPM) r) $Perm.Write)
  :pattern ((inv@37@01 r))
  :qid |qp-fld-prm-bnd|)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (>= i@107@01 0)
    (and
      (< i@107@01 (Seq_length xs@30@01))
      (and
        (>= j@108@01 0)
        (and (< j@108@01 (Seq_length xs@30@01)) (not (= i@107@01 j@108@01))))))
  (and
    (>= i@107@01 0)
    (< i@107@01 (Seq_length xs@30@01))
    (>= j@108@01 0)
    (< j@108@01 (Seq_length xs@30@01))
    (not (= i@107@01 j@108@01))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@112@01  $FPM) r) $Perm.Write)
      :pattern ((inv@44@01 r))
      :qid |qp-fld-prm-bnd|))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@112@01  $FPM) r) $Perm.Write)
      :pattern ((inv@37@01 r))
      :qid |qp-fld-prm-bnd|)))))
; Joined path conditions
(assert (=>
  (not
    (and
      (>= i@107@01 0)
      (and
        (< i@107@01 (Seq_length xs@30@01))
        (and
          (>= j@108@01 0)
          (and (< j@108@01 (Seq_length xs@30@01)) (not (= i@107@01 j@108@01)))))))
  (and
    (not
      (and
        (>= i@107@01 0)
        (and
          (< i@107@01 (Seq_length xs@30@01))
          (and
            (>= j@108@01 0)
            (and (< j@108@01 (Seq_length xs@30@01)) (not (= i@107@01 j@108@01)))))))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@112@01  $FPM) r) $Perm.Write)
      :pattern ((inv@44@01 r))
      :qid |qp-fld-prm-bnd|))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@112@01  $FPM) r) $Perm.Write)
      :pattern ((inv@37@01 r))
      :qid |qp-fld-prm-bnd|)))))
(assert (or
  (not
    (and
      (>= i@107@01 0)
      (and
        (< i@107@01 (Seq_length xs@30@01))
        (and
          (>= j@108@01 0)
          (and (< j@108@01 (Seq_length xs@30@01)) (not (= i@107@01 j@108@01)))))))
  (and
    (>= i@107@01 0)
    (and
      (< i@107@01 (Seq_length xs@30@01))
      (and
        (>= j@108@01 0)
        (and (< j@108@01 (Seq_length xs@30@01)) (not (= i@107@01 j@108@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@109@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@109@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef60|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@109@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@109@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef61|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@110@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@110@01  $FPM) r))
  :qid |qp.resPrmSumDef62|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@111@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@111@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef63|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@111@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@111@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef64|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@112@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@112@01  $FPM) r))
  :qid |qp.resPrmSumDef65|)))
; Nested auxiliary terms: non-globals (aux)
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((i@107@01 Int) (j@108@01 Int)) (!
  (=>
    (and
      (>= i@107@01 0)
      (and
        (< i@107@01 (Seq_length xs@30@01))
        (and
          (>= j@108@01 0)
          (and (< j@108@01 (Seq_length xs@30@01)) (not (= i@107@01 j@108@01))))))
    (not (= (Seq_index xs@30@01 i@107@01) (Seq_index xs@30@01 j@108@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@26@12@26@106|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@107@01 Int) (j@108@01 Int)) (!
  (=>
    (and
      (>= i@107@01 0)
      (and
        (< i@107@01 (Seq_length xs@30@01))
        (and
          (>= j@108@01 0)
          (and (< j@108@01 (Seq_length xs@30@01)) (not (= i@107@01 j@108@01))))))
    (not (= (Seq_index xs@30@01 i@107@01) (Seq_index xs@30@01 j@108@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@26@12@26@106|)))
(declare-const i@113@01 Int)
(push) ; 4
; [eval] 0 <= i && i < |xs|
; [eval] 0 <= i
(push) ; 5
; [then-branch: 57 | !(0 <= i@113@01) | live]
; [else-branch: 57 | 0 <= i@113@01 | live]
(push) ; 6
; [then-branch: 57 | !(0 <= i@113@01)]
(assert (not (<= 0 i@113@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11367|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(declare-const pm@114@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@114@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@114@01  $FPM) r))
  :qid |qp.resPrmSumDef66|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@114@01  $FPM) r) $Perm.Write)
  :pattern ((inv@44@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@114@01  $FPM) r) $Perm.Write)
  :pattern ((inv@37@01 r))
  :qid |qp-fld-prm-bnd|)))
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 57 | 0 <= i@113@01]
(assert (<= 0 i@113@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11368|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(declare-const pm@115@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@115@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@115@01  $FPM) r))
  :qid |qp.resPrmSumDef67|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@115@01  $FPM) r) $Perm.Write)
  :pattern ((inv@44@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@115@01  $FPM) r) $Perm.Write)
  :pattern ((inv@37@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] i < |xs|
; [eval] |xs|
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@114@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@114@01  $FPM) r))
  :qid |qp.resPrmSumDef66|)))
(assert (=>
  (not (<= 0 i@113@01))
  (and
    (not (<= 0 i@113@01))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@114@01  $FPM) r) $Perm.Write)
      :pattern ((inv@44@01 r))
      :qid |qp-fld-prm-bnd|))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@114@01  $FPM) r) $Perm.Write)
      :pattern ((inv@37@01 r))
      :qid |qp-fld-prm-bnd|)))))
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@115@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@115@01  $FPM) r))
  :qid |qp.resPrmSumDef67|)))
(assert (=>
  (<= 0 i@113@01)
  (and
    (<= 0 i@113@01)
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@115@01  $FPM) r) $Perm.Write)
      :pattern ((inv@44@01 r))
      :qid |qp-fld-prm-bnd|))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@115@01  $FPM) r) $Perm.Write)
      :pattern ((inv@37@01 r))
      :qid |qp-fld-prm-bnd|)))))
(assert (or (<= 0 i@113@01) (not (<= 0 i@113@01))))
(assert (and (<= 0 i@113@01) (< i@113@01 (Seq_length xs@30@01))))
; [eval] xs[i]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@113@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@116@01 ($Ref) Int)
(declare-fun img@117@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@114@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@114@01  $FPM) r))
  :qid |qp.resPrmSumDef66|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@115@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@115@01  $FPM) r))
  :qid |qp.resPrmSumDef67|)))
; Nested auxiliary terms: non-globals
(assert (forall ((i@113@01 Int)) (!
  (=>
    (and (<= 0 i@113@01) (< i@113@01 (Seq_length xs@30@01)))
    (and
      (=>
        (not (<= 0 i@113@01))
        (and
          (not (<= 0 i@113@01))
          (forall ((r $Ref)) (!
            (<= ($FVF.perm_f (as pm@114@01  $FPM) r) $Perm.Write)
            :pattern ((inv@44@01 r))
            :qid |qp-fld-prm-bnd|))
          (forall ((r $Ref)) (!
            (<= ($FVF.perm_f (as pm@114@01  $FPM) r) $Perm.Write)
            :pattern ((inv@37@01 r))
            :qid |qp-fld-prm-bnd|))))
      (=>
        (<= 0 i@113@01)
        (and
          (<= 0 i@113@01)
          (forall ((r $Ref)) (!
            (<= ($FVF.perm_f (as pm@115@01  $FPM) r) $Perm.Write)
            :pattern ((inv@44@01 r))
            :qid |qp-fld-prm-bnd|))
          (forall ((r $Ref)) (!
            (<= ($FVF.perm_f (as pm@115@01  $FPM) r) $Perm.Write)
            :pattern ((inv@37@01 r))
            :qid |qp-fld-prm-bnd|))))
      (or (<= 0 i@113@01) (not (<= 0 i@113@01)))))
  :pattern ((Seq_index xs@30@01 i@113@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@113@01 Int) (i2@113@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@113@01) (< i1@113@01 (Seq_length xs@30@01)))
      (and (<= 0 i2@113@01) (< i2@113@01 (Seq_length xs@30@01)))
      (= (Seq_index xs@30@01 i1@113@01) (Seq_index xs@30@01 i2@113@01)))
    (= i1@113@01 i2@113@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@113@01 Int)) (!
  (=>
    (and (<= 0 i@113@01) (< i@113@01 (Seq_length xs@30@01)))
    (and
      (= (inv@116@01 (Seq_index xs@30@01 i@113@01)) i@113@01)
      (img@117@01 (Seq_index xs@30@01 i@113@01))))
  :pattern ((Seq_index xs@30@01 i@113@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@117@01 r)
      (and (<= 0 (inv@116@01 r)) (< (inv@116@01 r) (Seq_length xs@30@01))))
    (= (Seq_index xs@30@01 (inv@116@01 r)) r))
  :pattern ((inv@116@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@113@01 Int)) (!
  (= (Seq_index xs@30@01 i@113@01) (Seq_index ys@31@01 i@113@01))
  
  :qid |quant-u-11370|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@116@01 r)) (< (inv@116@01 r) (Seq_length xs@30@01)))
      (img@117@01 r)
      (= r (Seq_index xs@30@01 (inv@116@01 r))))
    (>
      (+
        (ite
          (and
            (img@38@01 r)
            (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@45@01 r)
            (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-11371|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@118@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@118@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@116@01 r)) (< (inv@116@01 r) (Seq_length xs@30@01)))
        (img@117@01 r)))
    (=>
      (and
        (and (<= 0 (inv@116@01 r)) (< (inv@116@01 r) (Seq_length xs@30@01)))
        (img@117@01 r))
      (Set_in r ($FVF.domain_f (as sm@118@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@118@01  $FVF<f>))))
  :qid |qp.fvfDomDef70|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@116@01 r)) (< (inv@116@01 r) (Seq_length xs@30@01)))
        (img@117@01 r))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01)))))
    (= ($FVF.lookup_f (as sm@118@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@118@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef68|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@116@01 r)) (< (inv@116@01 r) (Seq_length xs@30@01)))
        (img@117@01 r))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01)))))
    (= ($FVF.lookup_f (as sm@118@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@118@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef69|)))
; [eval] (forall i: Int, j: Int ::i >= 0 && (i < |ys| && (j >= 0 && (j < |ys| && i != j))) ==> ys[i] != ys[j])
(declare-const i@119@01 Int)
(declare-const j@120@01 Int)
(push) ; 4
; [eval] i >= 0 && (i < |ys| && (j >= 0 && (j < |ys| && i != j))) ==> ys[i] != ys[j]
; [eval] i >= 0 && (i < |ys| && (j >= 0 && (j < |ys| && i != j)))
; [eval] i >= 0
(push) ; 5
; [then-branch: 58 | !(i@119@01 >= 0) | live]
; [else-branch: 58 | i@119@01 >= 0 | live]
(push) ; 6
; [then-branch: 58 | !(i@119@01 >= 0)]
(assert (not (>= i@119@01 0)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11372|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@121@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@121@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@121@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef71|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@121@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@121@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef72|)))
(declare-const pm@122@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@122@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@122@01  $FPM) r))
  :qid |qp.resPrmSumDef73|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@122@01  $FPM) r) $Perm.Write)
  :pattern ((inv@44@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@122@01  $FPM) r) $Perm.Write)
  :pattern ((inv@37@01 r))
  :qid |qp-fld-prm-bnd|)))
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 58 | i@119@01 >= 0]
(assert (>= i@119@01 0))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11373|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@123@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@123@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@123@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef74|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@123@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@123@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef75|)))
(declare-const pm@124@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@124@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@124@01  $FPM) r))
  :qid |qp.resPrmSumDef76|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@124@01  $FPM) r) $Perm.Write)
  :pattern ((inv@44@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@124@01  $FPM) r) $Perm.Write)
  :pattern ((inv@37@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] i < |ys|
; [eval] |ys|
(set-option :timeout 0)
(push) ; 7
; [then-branch: 59 | !(i@119@01 < |ys@31@01|) | live]
; [else-branch: 59 | i@119@01 < |ys@31@01| | live]
(push) ; 8
; [then-branch: 59 | !(i@119@01 < |ys@31@01|)]
(assert (not (< i@119@01 (Seq_length ys@31@01))))
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
    (= (Seq_index xs@30@01 i@35@01) (Seq_index ys@31@01 i@42@01))
    (=
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))))
  
  :qid |quant-u-11374|))))
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
; [else-branch: 59 | i@119@01 < |ys@31@01|]
(assert (< i@119@01 (Seq_length ys@31@01)))
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
    (= (Seq_index xs@30@01 i@35@01) (Seq_index ys@31@01 i@42@01))
    (=
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))))
  
  :qid |quant-u-11375|))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
; [eval] j >= 0
(set-option :timeout 0)
(push) ; 9
; [then-branch: 60 | !(j@120@01 >= 0) | live]
; [else-branch: 60 | j@120@01 >= 0 | live]
(push) ; 10
; [then-branch: 60 | !(j@120@01 >= 0)]
(assert (not (>= j@120@01 0)))
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
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11376|))))
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
; [else-branch: 60 | j@120@01 >= 0]
(assert (>= j@120@01 0))
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
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11377|))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
; [eval] j < |ys|
; [eval] |ys|
(set-option :timeout 0)
(push) ; 11
; [then-branch: 61 | !(j@120@01 < |ys@31@01|) | live]
; [else-branch: 61 | j@120@01 < |ys@31@01| | live]
(push) ; 12
; [then-branch: 61 | !(j@120@01 < |ys@31@01|)]
(assert (not (< j@120@01 (Seq_length ys@31@01))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@30@01 i@35@01) (Seq_index ys@31@01 i@42@01))
    (=
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))))
  
  :qid |quant-u-11378|))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
(pop) ; 12
(set-option :timeout 0)
(push) ; 12
; [else-branch: 61 | j@120@01 < |ys@31@01|]
(assert (< j@120@01 (Seq_length ys@31@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@30@01 i@35@01) (Seq_index ys@31@01 i@42@01))
    (=
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))))
  
  :qid |quant-u-11379|))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; Assume upper permission bound for field f
; [eval] i != j
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (< j@120@01 (Seq_length ys@31@01)) (not (< j@120@01 (Seq_length ys@31@01)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@120@01 0)
  (and
    (>= j@120@01 0)
    (or
      (< j@120@01 (Seq_length ys@31@01))
      (not (< j@120@01 (Seq_length ys@31@01)))))))
(assert (or (>= j@120@01 0) (not (>= j@120@01 0))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@119@01 (Seq_length ys@31@01))
  (and
    (< i@119@01 (Seq_length ys@31@01))
    (=>
      (>= j@120@01 0)
      (and
        (>= j@120@01 0)
        (or
          (< j@120@01 (Seq_length ys@31@01))
          (not (< j@120@01 (Seq_length ys@31@01))))))
    (or (>= j@120@01 0) (not (>= j@120@01 0))))))
(assert (or (< i@119@01 (Seq_length ys@31@01)) (not (< i@119@01 (Seq_length ys@31@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@121@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@121@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef71|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@121@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@121@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef72|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@122@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@122@01  $FPM) r))
  :qid |qp.resPrmSumDef73|)))
(assert (=>
  (not (>= i@119@01 0))
  (and
    (not (>= i@119@01 0))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@122@01  $FPM) r) $Perm.Write)
      :pattern ((inv@44@01 r))
      :qid |qp-fld-prm-bnd|))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@122@01  $FPM) r) $Perm.Write)
      :pattern ((inv@37@01 r))
      :qid |qp-fld-prm-bnd|)))))
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@123@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@123@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef74|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@123@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@123@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef75|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@124@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@124@01  $FPM) r))
  :qid |qp.resPrmSumDef76|)))
(assert (=>
  (>= i@119@01 0)
  (and
    (>= i@119@01 0)
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@124@01  $FPM) r) $Perm.Write)
      :pattern ((inv@44@01 r))
      :qid |qp-fld-prm-bnd|))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@124@01  $FPM) r) $Perm.Write)
      :pattern ((inv@37@01 r))
      :qid |qp-fld-prm-bnd|))
    (=>
      (< i@119@01 (Seq_length ys@31@01))
      (and
        (< i@119@01 (Seq_length ys@31@01))
        (=>
          (>= j@120@01 0)
          (and
            (>= j@120@01 0)
            (or
              (< j@120@01 (Seq_length ys@31@01))
              (not (< j@120@01 (Seq_length ys@31@01))))))
        (or (>= j@120@01 0) (not (>= j@120@01 0)))))
    (or
      (< i@119@01 (Seq_length ys@31@01))
      (not (< i@119@01 (Seq_length ys@31@01)))))))
(assert (or (>= i@119@01 0) (not (>= i@119@01 0))))
(set-option :timeout 0)
(push) ; 5
; [then-branch: 62 | i@119@01 >= 0 && i@119@01 < |ys@31@01| && j@120@01 >= 0 && j@120@01 < |ys@31@01| && i@119@01 != j@120@01 | live]
; [else-branch: 62 | !(i@119@01 >= 0 && i@119@01 < |ys@31@01| && j@120@01 >= 0 && j@120@01 < |ys@31@01| && i@119@01 != j@120@01) | live]
(push) ; 6
; [then-branch: 62 | i@119@01 >= 0 && i@119@01 < |ys@31@01| && j@120@01 >= 0 && j@120@01 < |ys@31@01| && i@119@01 != j@120@01]
(assert (and
  (>= i@119@01 0)
  (and
    (< i@119@01 (Seq_length ys@31@01))
    (and
      (>= j@120@01 0)
      (and (< j@120@01 (Seq_length ys@31@01)) (not (= i@119@01 j@120@01)))))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11380|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@124@01  $FPM) r) $Perm.Write)
  :pattern ((inv@44@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@124@01  $FPM) r) $Perm.Write)
  :pattern ((inv@37@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] ys[i] != ys[j]
; [eval] ys[i]
; [eval] ys[j]
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 62 | !(i@119@01 >= 0 && i@119@01 < |ys@31@01| && j@120@01 >= 0 && j@120@01 < |ys@31@01| && i@119@01 != j@120@01)]
(assert (not
  (and
    (>= i@119@01 0)
    (and
      (< i@119@01 (Seq_length ys@31@01))
      (and
        (>= j@120@01 0)
        (and (< j@120@01 (Seq_length ys@31@01)) (not (= i@119@01 j@120@01))))))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11381|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@124@01  $FPM) r) $Perm.Write)
  :pattern ((inv@44@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@124@01  $FPM) r) $Perm.Write)
  :pattern ((inv@37@01 r))
  :qid |qp-fld-prm-bnd|)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (>= i@119@01 0)
    (and
      (< i@119@01 (Seq_length ys@31@01))
      (and
        (>= j@120@01 0)
        (and (< j@120@01 (Seq_length ys@31@01)) (not (= i@119@01 j@120@01))))))
  (and
    (>= i@119@01 0)
    (< i@119@01 (Seq_length ys@31@01))
    (>= j@120@01 0)
    (< j@120@01 (Seq_length ys@31@01))
    (not (= i@119@01 j@120@01))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@124@01  $FPM) r) $Perm.Write)
      :pattern ((inv@44@01 r))
      :qid |qp-fld-prm-bnd|))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@124@01  $FPM) r) $Perm.Write)
      :pattern ((inv@37@01 r))
      :qid |qp-fld-prm-bnd|)))))
; Joined path conditions
(assert (=>
  (not
    (and
      (>= i@119@01 0)
      (and
        (< i@119@01 (Seq_length ys@31@01))
        (and
          (>= j@120@01 0)
          (and (< j@120@01 (Seq_length ys@31@01)) (not (= i@119@01 j@120@01)))))))
  (and
    (not
      (and
        (>= i@119@01 0)
        (and
          (< i@119@01 (Seq_length ys@31@01))
          (and
            (>= j@120@01 0)
            (and (< j@120@01 (Seq_length ys@31@01)) (not (= i@119@01 j@120@01)))))))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@124@01  $FPM) r) $Perm.Write)
      :pattern ((inv@44@01 r))
      :qid |qp-fld-prm-bnd|))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@124@01  $FPM) r) $Perm.Write)
      :pattern ((inv@37@01 r))
      :qid |qp-fld-prm-bnd|)))))
(assert (or
  (not
    (and
      (>= i@119@01 0)
      (and
        (< i@119@01 (Seq_length ys@31@01))
        (and
          (>= j@120@01 0)
          (and (< j@120@01 (Seq_length ys@31@01)) (not (= i@119@01 j@120@01)))))))
  (and
    (>= i@119@01 0)
    (and
      (< i@119@01 (Seq_length ys@31@01))
      (and
        (>= j@120@01 0)
        (and (< j@120@01 (Seq_length ys@31@01)) (not (= i@119@01 j@120@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@121@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@121@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef71|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@121@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@121@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef72|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@122@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@122@01  $FPM) r))
  :qid |qp.resPrmSumDef73|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@123@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@123@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef74|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@123@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@123@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef75|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@124@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@124@01  $FPM) r))
  :qid |qp.resPrmSumDef76|)))
; Nested auxiliary terms: non-globals (aux)
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((i@119@01 Int) (j@120@01 Int)) (!
  (=>
    (and
      (>= i@119@01 0)
      (and
        (< i@119@01 (Seq_length ys@31@01))
        (and
          (>= j@120@01 0)
          (and (< j@120@01 (Seq_length ys@31@01)) (not (= i@119@01 j@120@01))))))
    (not (= (Seq_index ys@31@01 i@119@01) (Seq_index ys@31@01 j@120@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@28@12@28@106|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@119@01 Int) (j@120@01 Int)) (!
  (=>
    (and
      (>= i@119@01 0)
      (and
        (< i@119@01 (Seq_length ys@31@01))
        (and
          (>= j@120@01 0)
          (and (< j@120@01 (Seq_length ys@31@01)) (not (= i@119@01 j@120@01))))))
    (not (= (Seq_index ys@31@01 i@119@01) (Seq_index ys@31@01 j@120@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@28@12@28@106|)))
(declare-const i@125@01 Int)
(push) ; 4
; [eval] 0 <= i && i < |ys|
; [eval] 0 <= i
(push) ; 5
; [then-branch: 63 | !(0 <= i@125@01) | live]
; [else-branch: 63 | 0 <= i@125@01 | live]
(push) ; 6
; [then-branch: 63 | !(0 <= i@125@01)]
(assert (not (<= 0 i@125@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11382|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(declare-const pm@126@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@126@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@126@01  $FPM) r))
  :qid |qp.resPrmSumDef77|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@126@01  $FPM) r) $Perm.Write)
  :pattern ((inv@44@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@126@01  $FPM) r) $Perm.Write)
  :pattern ((inv@37@01 r))
  :qid |qp-fld-prm-bnd|)))
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 63 | 0 <= i@125@01]
(assert (<= 0 i@125@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ys@31@01 i@42@01) (Seq_index xs@30@01 i@35@01))
    (=
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))))
  
  :qid |quant-u-11383|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(declare-const pm@127@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@127@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@127@01  $FPM) r))
  :qid |qp.resPrmSumDef78|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@127@01  $FPM) r) $Perm.Write)
  :pattern ((inv@44@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@127@01  $FPM) r) $Perm.Write)
  :pattern ((inv@37@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] i < |ys|
; [eval] |ys|
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@126@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@126@01  $FPM) r))
  :qid |qp.resPrmSumDef77|)))
(assert (=>
  (not (<= 0 i@125@01))
  (and
    (not (<= 0 i@125@01))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@126@01  $FPM) r) $Perm.Write)
      :pattern ((inv@44@01 r))
      :qid |qp-fld-prm-bnd|))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@126@01  $FPM) r) $Perm.Write)
      :pattern ((inv@37@01 r))
      :qid |qp-fld-prm-bnd|)))))
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@127@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@127@01  $FPM) r))
  :qid |qp.resPrmSumDef78|)))
(assert (=>
  (<= 0 i@125@01)
  (and
    (<= 0 i@125@01)
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@127@01  $FPM) r) $Perm.Write)
      :pattern ((inv@44@01 r))
      :qid |qp-fld-prm-bnd|))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@127@01  $FPM) r) $Perm.Write)
      :pattern ((inv@37@01 r))
      :qid |qp-fld-prm-bnd|)))))
(assert (or (<= 0 i@125@01) (not (<= 0 i@125@01))))
(assert (and (<= 0 i@125@01) (< i@125@01 (Seq_length ys@31@01))))
; [eval] ys[i]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@125@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@128@01 ($Ref) Int)
(declare-fun img@129@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@126@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@126@01  $FPM) r))
  :qid |qp.resPrmSumDef77|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@127@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@127@01  $FPM) r))
  :qid |qp.resPrmSumDef78|)))
; Nested auxiliary terms: non-globals
(assert (forall ((i@125@01 Int)) (!
  (=>
    (and (<= 0 i@125@01) (< i@125@01 (Seq_length ys@31@01)))
    (and
      (=>
        (not (<= 0 i@125@01))
        (and
          (not (<= 0 i@125@01))
          (forall ((r $Ref)) (!
            (<= ($FVF.perm_f (as pm@126@01  $FPM) r) $Perm.Write)
            :pattern ((inv@44@01 r))
            :qid |qp-fld-prm-bnd|))
          (forall ((r $Ref)) (!
            (<= ($FVF.perm_f (as pm@126@01  $FPM) r) $Perm.Write)
            :pattern ((inv@37@01 r))
            :qid |qp-fld-prm-bnd|))))
      (=>
        (<= 0 i@125@01)
        (and
          (<= 0 i@125@01)
          (forall ((r $Ref)) (!
            (<= ($FVF.perm_f (as pm@127@01  $FPM) r) $Perm.Write)
            :pattern ((inv@44@01 r))
            :qid |qp-fld-prm-bnd|))
          (forall ((r $Ref)) (!
            (<= ($FVF.perm_f (as pm@127@01  $FPM) r) $Perm.Write)
            :pattern ((inv@37@01 r))
            :qid |qp-fld-prm-bnd|))))
      (or (<= 0 i@125@01) (not (<= 0 i@125@01)))))
  :pattern ((Seq_index ys@31@01 i@125@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@125@01 Int) (i2@125@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@125@01) (< i1@125@01 (Seq_length ys@31@01)))
      (and (<= 0 i2@125@01) (< i2@125@01 (Seq_length ys@31@01)))
      (= (Seq_index ys@31@01 i1@125@01) (Seq_index ys@31@01 i2@125@01)))
    (= i1@125@01 i2@125@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@125@01 Int)) (!
  (=>
    (and (<= 0 i@125@01) (< i@125@01 (Seq_length ys@31@01)))
    (and
      (= (inv@128@01 (Seq_index ys@31@01 i@125@01)) i@125@01)
      (img@129@01 (Seq_index ys@31@01 i@125@01))))
  :pattern ((Seq_index ys@31@01 i@125@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@129@01 r)
      (and (<= 0 (inv@128@01 r)) (< (inv@128@01 r) (Seq_length ys@31@01))))
    (= (Seq_index ys@31@01 (inv@128@01 r)) r))
  :pattern ((inv@128@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@125@01 Int)) (!
  (= (Seq_index ys@31@01 i@125@01) (Seq_index xs@30@01 i@125@01))
  
  :qid |quant-u-11385|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@128@01 r)) (< (inv@128@01 r) (Seq_length ys@31@01)))
      (img@129@01 r)
      (= r (Seq_index ys@31@01 (inv@128@01 r))))
    (>
      (+
        (ite
          (and
            (img@45@01 r)
            (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@38@01 r)
            (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-11386|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@130@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@130@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@128@01 r)) (< (inv@128@01 r) (Seq_length ys@31@01)))
        (img@129@01 r)))
    (=>
      (and
        (and (<= 0 (inv@128@01 r)) (< (inv@128@01 r) (Seq_length ys@31@01)))
        (img@129@01 r))
      (Set_in r ($FVF.domain_f (as sm@130@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@130@01  $FVF<f>))))
  :qid |qp.fvfDomDef81|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@128@01 r)) (< (inv@128@01 r) (Seq_length ys@31@01)))
        (img@129@01 r))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01)))))
    (= ($FVF.lookup_f (as sm@130@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@130@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef79|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@128@01 r)) (< (inv@128@01 r) (Seq_length ys@31@01)))
        (img@129@01 r))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01)))))
    (= ($FVF.lookup_f (as sm@130@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@130@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef80|)))
; [eval] 10 < |xs|
; [eval] |xs|
; [eval] |xs| == |ys|
; [eval] |xs|
; [eval] |ys|
(assert (fun02%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@118@01  $FVF<f>))
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<f>To$Snap (as sm@130@01  $FVF<f>))
        ($Snap.combine $Snap.unit $Snap.unit))))) xs@30@01 ys@31@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@109@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@109@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef60|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@109@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@109@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef61|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@110@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@110@01  $FPM) r))
  :qid |qp.resPrmSumDef62|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@111@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@111@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef63|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@111@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@111@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef64|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@112@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@112@01  $FPM) r))
  :qid |qp.resPrmSumDef65|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@114@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@114@01  $FPM) r))
  :qid |qp.resPrmSumDef66|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@115@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@115@01  $FPM) r))
  :qid |qp.resPrmSumDef67|)))
(assert (forall ((i@113@01 Int)) (!
  (=>
    (and (<= 0 i@113@01) (< i@113@01 (Seq_length xs@30@01)))
    (and
      (= (inv@116@01 (Seq_index xs@30@01 i@113@01)) i@113@01)
      (img@117@01 (Seq_index xs@30@01 i@113@01))))
  :pattern ((Seq_index xs@30@01 i@113@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@117@01 r)
      (and (<= 0 (inv@116@01 r)) (< (inv@116@01 r) (Seq_length xs@30@01))))
    (= (Seq_index xs@30@01 (inv@116@01 r)) r))
  :pattern ((inv@116@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@118@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@116@01 r)) (< (inv@116@01 r) (Seq_length xs@30@01)))
        (img@117@01 r)))
    (=>
      (and
        (and (<= 0 (inv@116@01 r)) (< (inv@116@01 r) (Seq_length xs@30@01)))
        (img@117@01 r))
      (Set_in r ($FVF.domain_f (as sm@118@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@118@01  $FVF<f>))))
  :qid |qp.fvfDomDef70|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@116@01 r)) (< (inv@116@01 r) (Seq_length xs@30@01)))
        (img@117@01 r))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01)))))
    (= ($FVF.lookup_f (as sm@118@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@118@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef68|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@116@01 r)) (< (inv@116@01 r) (Seq_length xs@30@01)))
        (img@117@01 r))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01)))))
    (= ($FVF.lookup_f (as sm@118@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@118@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef69|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@121@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@121@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef71|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@121@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@121@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef72|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@122@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@122@01  $FPM) r))
  :qid |qp.resPrmSumDef73|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@45@01 r)
      (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
    (= ($FVF.lookup_f (as sm@123@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@123@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef74|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
    (= ($FVF.lookup_f (as sm@123@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@123@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef75|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@124@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@124@01  $FPM) r))
  :qid |qp.resPrmSumDef76|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@126@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@126@01  $FPM) r))
  :qid |qp.resPrmSumDef77|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@127@01  $FPM) r)
    (+
      (ite
        (and
          (img@45@01 r)
          (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01))))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@38@01 r)
          (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@127@01  $FPM) r))
  :qid |qp.resPrmSumDef78|)))
(assert (forall ((i@125@01 Int)) (!
  (=>
    (and (<= 0 i@125@01) (< i@125@01 (Seq_length ys@31@01)))
    (and
      (= (inv@128@01 (Seq_index ys@31@01 i@125@01)) i@125@01)
      (img@129@01 (Seq_index ys@31@01 i@125@01))))
  :pattern ((Seq_index ys@31@01 i@125@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@129@01 r)
      (and (<= 0 (inv@128@01 r)) (< (inv@128@01 r) (Seq_length ys@31@01))))
    (= (Seq_index ys@31@01 (inv@128@01 r)) r))
  :pattern ((inv@128@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@130@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@128@01 r)) (< (inv@128@01 r) (Seq_length ys@31@01)))
        (img@129@01 r)))
    (=>
      (and
        (and (<= 0 (inv@128@01 r)) (< (inv@128@01 r) (Seq_length ys@31@01)))
        (img@129@01 r))
      (Set_in r ($FVF.domain_f (as sm@130@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@130@01  $FVF<f>))))
  :qid |qp.fvfDomDef81|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@128@01 r)) (< (inv@128@01 r) (Seq_length ys@31@01)))
        (img@129@01 r))
      (and
        (img@38@01 r)
        (and (<= 0 (inv@37@01 r)) (< (inv@37@01 r) (Seq_length xs@30@01)))))
    (= ($FVF.lookup_f (as sm@130@01  $FVF<f>) r) ($FVF.lookup_f $t@36@01 r)))
  :pattern (($FVF.lookup_f (as sm@130@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@36@01 r))
  :qid |qp.fvfValDef79|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@128@01 r)) (< (inv@128@01 r) (Seq_length ys@31@01)))
        (img@129@01 r))
      (and
        (img@45@01 r)
        (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) (Seq_length ys@31@01)))))
    (= ($FVF.lookup_f (as sm@130@01  $FVF<f>) r) ($FVF.lookup_f $t@43@01 r)))
  :pattern (($FVF.lookup_f (as sm@130@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@43@01 r))
  :qid |qp.fvfValDef80|)))
(assert (and
  (forall ((i@107@01 Int) (j@108@01 Int)) (!
    (=>
      (and
        (>= i@107@01 0)
        (and
          (< i@107@01 (Seq_length xs@30@01))
          (and
            (>= j@108@01 0)
            (and (< j@108@01 (Seq_length xs@30@01)) (not (= i@107@01 j@108@01))))))
      (not (= (Seq_index xs@30@01 i@107@01) (Seq_index xs@30@01 j@108@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@26@12@26@106|))
  (forall ((i@113@01 Int)) (!
    (=>
      (and (<= 0 i@113@01) (< i@113@01 (Seq_length xs@30@01)))
      (and
        (=>
          (not (<= 0 i@113@01))
          (and
            (not (<= 0 i@113@01))
            (forall ((r $Ref)) (!
              (<= ($FVF.perm_f (as pm@114@01  $FPM) r) $Perm.Write)
              :pattern ((inv@44@01 r))
              :qid |qp-fld-prm-bnd|))
            (forall ((r $Ref)) (!
              (<= ($FVF.perm_f (as pm@114@01  $FPM) r) $Perm.Write)
              :pattern ((inv@37@01 r))
              :qid |qp-fld-prm-bnd|))))
        (=>
          (<= 0 i@113@01)
          (and
            (<= 0 i@113@01)
            (forall ((r $Ref)) (!
              (<= ($FVF.perm_f (as pm@115@01  $FPM) r) $Perm.Write)
              :pattern ((inv@44@01 r))
              :qid |qp-fld-prm-bnd|))
            (forall ((r $Ref)) (!
              (<= ($FVF.perm_f (as pm@115@01  $FPM) r) $Perm.Write)
              :pattern ((inv@37@01 r))
              :qid |qp-fld-prm-bnd|))))
        (or (<= 0 i@113@01) (not (<= 0 i@113@01)))))
    :pattern ((Seq_index xs@30@01 i@113@01))
    :qid |f-aux|))
  (forall ((i@119@01 Int) (j@120@01 Int)) (!
    (=>
      (and
        (>= i@119@01 0)
        (and
          (< i@119@01 (Seq_length ys@31@01))
          (and
            (>= j@120@01 0)
            (and (< j@120@01 (Seq_length ys@31@01)) (not (= i@119@01 j@120@01))))))
      (not (= (Seq_index ys@31@01 i@119@01) (Seq_index ys@31@01 j@120@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions2.vpr@28@12@28@106|))
  (forall ((i@125@01 Int)) (!
    (=>
      (and (<= 0 i@125@01) (< i@125@01 (Seq_length ys@31@01)))
      (and
        (=>
          (not (<= 0 i@125@01))
          (and
            (not (<= 0 i@125@01))
            (forall ((r $Ref)) (!
              (<= ($FVF.perm_f (as pm@126@01  $FPM) r) $Perm.Write)
              :pattern ((inv@44@01 r))
              :qid |qp-fld-prm-bnd|))
            (forall ((r $Ref)) (!
              (<= ($FVF.perm_f (as pm@126@01  $FPM) r) $Perm.Write)
              :pattern ((inv@37@01 r))
              :qid |qp-fld-prm-bnd|))))
        (=>
          (<= 0 i@125@01)
          (and
            (<= 0 i@125@01)
            (forall ((r $Ref)) (!
              (<= ($FVF.perm_f (as pm@127@01  $FPM) r) $Perm.Write)
              :pattern ((inv@44@01 r))
              :qid |qp-fld-prm-bnd|))
            (forall ((r $Ref)) (!
              (<= ($FVF.perm_f (as pm@127@01  $FPM) r) $Perm.Write)
              :pattern ((inv@37@01 r))
              :qid |qp-fld-prm-bnd|))))
        (or (<= 0 i@125@01) (not (<= 0 i@125@01)))))
    :pattern ((Seq_index ys@31@01 i@125@01))
    :qid |f-aux|))
  (fun02%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<f>To$Snap (as sm@118@01  $FVF<f>))
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<f>To$Snap (as sm@130@01  $FVF<f>))
          ($Snap.combine $Snap.unit $Snap.unit))))) xs@30@01 ys@31@01)))
(push) ; 3
(assert (not (fun02 ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@118@01  $FVF<f>))
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<f>To$Snap (as sm@130@01  $FVF<f>))
        ($Snap.combine $Snap.unit $Snap.unit))))) xs@30@01 ys@31@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.03s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
