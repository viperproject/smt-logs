(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-27 03:03:08
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
(declare-sort $FVF<Ref__Integer_value> 0)
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
(declare-fun $SortWrappers.$FVF<Ref__Integer_value>To$Snap ($FVF<Ref__Integer_value>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap) $FVF<Ref__Integer_value>)
(assert (forall ((x $FVF<Ref__Integer_value>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<Ref__Integer_value>($SortWrappers.$FVF<Ref__Integer_value>To$Snap x)))
    :pattern (($SortWrappers.$FVF<Ref__Integer_value>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<Ref__Integer_value>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<Ref__Integer_value>To$Snap($SortWrappers.$SnapTo$FVF<Ref__Integer_value> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<Ref__Integer_value> x))
    :qid |$Snap.$FVF<Ref__Integer_value>To$SnapTo$FVF<Ref__Integer_value>|
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
; /field_value_functions_declarations.smt2 [Ref__Integer_value: Int]
(declare-fun $FVF.domain_Ref__Integer_value ($FVF<Ref__Integer_value>) Set<$Ref>)
(declare-fun $FVF.lookup_Ref__Integer_value ($FVF<Ref__Integer_value> $Ref) Int)
(declare-fun $FVF.after_Ref__Integer_value ($FVF<Ref__Integer_value> $FVF<Ref__Integer_value>) Bool)
(declare-fun $FVF.loc_Ref__Integer_value (Int $Ref) Bool)
(declare-fun $FVF.perm_Ref__Integer_value ($FPM $Ref) $Perm)
(declare-const $fvfTOP_Ref__Integer_value $FVF<Ref__Integer_value>)
; Declaring symbols related to program functions (from program analysis)
(declare-fun count_list ($Snap Int Int Seq<Int> Int) Int)
(declare-fun count_list%limited ($Snap Int Int Seq<Int> Int) Int)
(declare-fun count_list%stateless (Int Int Seq<Int> Int) Bool)
(declare-fun count_list%precondition ($Snap Int Int Seq<Int> Int) Bool)
(declare-fun sum_list ($Snap Int Int Seq<Int>) Int)
(declare-fun sum_list%limited ($Snap Int Int Seq<Int>) Int)
(declare-fun sum_list%stateless (Int Int Seq<Int>) Bool)
(declare-fun sum_list%precondition ($Snap Int Int Seq<Int>) Bool)
(declare-fun sum_square ($Snap Int Int Int Int Int Int Seq<$Ref>) Int)
(declare-fun sum_square%limited ($Snap Int Int Int Int Int Int Seq<$Ref>) Int)
(declare-fun sum_square%stateless (Int Int Int Int Int Int Seq<$Ref>) Bool)
(declare-fun sum_square%precondition ($Snap Int Int Int Int Int Int Seq<$Ref>) Bool)
(declare-fun count_square ($Snap Int Int Int Int Int Int Seq<$Ref> Int) Int)
(declare-fun count_square%limited ($Snap Int Int Int Int Int Int Seq<$Ref> Int) Int)
(declare-fun count_square%stateless (Int Int Int Int Int Int Seq<$Ref> Int) Bool)
(declare-fun count_square%precondition ($Snap Int Int Int Int Int Int Seq<$Ref> Int) Bool)
(declare-fun count_array ($Snap Int Int Seq<$Ref> Int) Int)
(declare-fun count_array%limited ($Snap Int Int Seq<$Ref> Int) Int)
(declare-fun count_array%stateless (Int Int Seq<$Ref> Int) Bool)
(declare-fun count_array%precondition ($Snap Int Int Seq<$Ref> Int) Bool)
(declare-fun sum_array ($Snap Int Int Int Seq<$Ref>) Int)
(declare-fun sum_array%limited ($Snap Int Int Int Seq<$Ref>) Int)
(declare-fun sum_array%stateless (Int Int Int Seq<$Ref>) Bool)
(declare-fun sum_array%precondition ($Snap Int Int Int Seq<$Ref>) Bool)
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
; /field_value_functions_axioms.smt2 [Ref__Integer_value: Int]
(assert (forall ((vs $FVF<Ref__Integer_value>) (ws $FVF<Ref__Integer_value>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_Ref__Integer_value vs) ($FVF.domain_Ref__Integer_value ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_Ref__Integer_value vs))
            (= ($FVF.lookup_Ref__Integer_value vs x) ($FVF.lookup_Ref__Integer_value ws x)))
          :pattern (($FVF.lookup_Ref__Integer_value vs x) ($FVF.lookup_Ref__Integer_value ws x))
          :qid |qp.$FVF<Ref__Integer_value>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<Ref__Integer_value>To$Snap vs)
              ($SortWrappers.$FVF<Ref__Integer_value>To$Snap ws)
              )
    :qid |qp.$FVF<Ref__Integer_value>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_Ref__Integer_value pm r))
    :pattern (($FVF.perm_Ref__Integer_value pm r)))))
(assert (forall ((r $Ref) (f Int)) (!
    (= ($FVF.loc_Ref__Integer_value f r) true)
    :pattern (($FVF.loc_Ref__Integer_value f r)))))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
(declare-fun $k@39@00 () $Perm)
(declare-fun inv@40@00 ($Snap Int Int Int Int Int Int Seq<$Ref> $Ref) Int)
(declare-fun img@41@00 ($Snap Int Int Int Int Int Int Seq<$Ref> $Ref) Bool)
(declare-fun $k@45@00 () $Perm)
(declare-fun inv@46@00 ($Snap Int Int Int Int Int Int Seq<$Ref> $Ref) Int)
(declare-fun img@47@00 ($Snap Int Int Int Int Int Int Seq<$Ref> $Ref) Bool)
(declare-fun sm@48@00 ($Snap Int Int Int Int Int Int Seq<$Ref>) $FVF<Ref__Integer_value>)
(declare-fun $k@52@00 () $Perm)
(declare-fun inv@53@00 ($Snap Int Int Int Int Int Int Seq<$Ref> Int $Ref) Int)
(declare-fun img@54@00 ($Snap Int Int Int Int Int Int Seq<$Ref> Int $Ref) Bool)
(declare-fun $k@58@00 () $Perm)
(declare-fun inv@59@00 ($Snap Int Int Int Int Int Int Seq<$Ref> Int $Ref) Int)
(declare-fun img@60@00 ($Snap Int Int Int Int Int Int Seq<$Ref> Int $Ref) Bool)
(declare-fun sm@61@00 ($Snap Int Int Int Int Int Int Seq<$Ref> Int) $FVF<Ref__Integer_value>)
(declare-fun $k@65@00 () $Perm)
(declare-fun inv@66@00 ($Snap Int Int Seq<$Ref> Int $Ref) Int)
(declare-fun img@67@00 ($Snap Int Int Seq<$Ref> Int $Ref) Bool)
(declare-fun $k@71@00 () $Perm)
(declare-fun inv@72@00 ($Snap Int Int Seq<$Ref> Int $Ref) Int)
(declare-fun img@73@00 ($Snap Int Int Seq<$Ref> Int $Ref) Bool)
(declare-fun sm@74@00 ($Snap Int Int Seq<$Ref> Int) $FVF<Ref__Integer_value>)
(declare-fun $k@78@00 () $Perm)
(declare-fun inv@79@00 ($Snap Int Int Int Seq<$Ref> $Ref) Int)
(declare-fun img@80@00 ($Snap Int Int Int Seq<$Ref> $Ref) Bool)
(declare-fun $k@84@00 () $Perm)
(declare-fun inv@85@00 ($Snap Int Int Int Seq<$Ref> $Ref) Int)
(declare-fun img@86@00 ($Snap Int Int Int Seq<$Ref> $Ref) Bool)
(declare-fun sm@87@00 ($Snap Int Int Int Seq<$Ref>) $FVF<Ref__Integer_value>)
(assert (forall ((s@$ $Snap) (i@0@00 Int) (hi@1@00 Int) (ar@2@00 Seq<Int>) (v@3@00 Int)) (!
  (=
    (count_list%limited s@$ i@0@00 hi@1@00 ar@2@00 v@3@00)
    (count_list s@$ i@0@00 hi@1@00 ar@2@00 v@3@00))
  :pattern ((count_list s@$ i@0@00 hi@1@00 ar@2@00 v@3@00))
  :qid |quant-u-16680|)))
(assert (forall ((s@$ $Snap) (i@0@00 Int) (hi@1@00 Int) (ar@2@00 Seq<Int>) (v@3@00 Int)) (!
  (count_list%stateless i@0@00 hi@1@00 ar@2@00 v@3@00)
  :pattern ((count_list%limited s@$ i@0@00 hi@1@00 ar@2@00 v@3@00))
  :qid |quant-u-16681|)))
(assert (forall ((s@$ $Snap) (i@0@00 Int) (hi@1@00 Int) (ar@2@00 Seq<Int>) (v@3@00 Int)) (!
  (=>
    (count_list%precondition s@$ i@0@00 hi@1@00 ar@2@00 v@3@00)
    (=
      (count_list s@$ i@0@00 hi@1@00 ar@2@00 v@3@00)
      (ite
        (< i@0@00 hi@1@00)
        (+
          (ite (= (Seq_index ar@2@00 i@0@00) v@3@00) 1 0)
          (count_list%limited ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit $Snap.unit)) (+ i@0@00 1) hi@1@00 ar@2@00 v@3@00))
        0)))
  :pattern ((count_list s@$ i@0@00 hi@1@00 ar@2@00 v@3@00))
  :qid |quant-u-16692|)))
(assert (forall ((s@$ $Snap) (i@0@00 Int) (hi@1@00 Int) (ar@2@00 Seq<Int>) (v@3@00 Int)) (!
  (=>
    (count_list%precondition s@$ i@0@00 hi@1@00 ar@2@00 v@3@00)
    (ite
      (< i@0@00 hi@1@00)
      (count_list%precondition ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit $Snap.unit)) (+ i@0@00 1) hi@1@00 ar@2@00 v@3@00)
      true))
  :pattern ((count_list s@$ i@0@00 hi@1@00 ar@2@00 v@3@00))
  :qid |quant-u-16693|)))
(assert (forall ((s@$ $Snap) (i@5@00 Int) (hi@6@00 Int) (ar@7@00 Seq<Int>)) (!
  (=
    (sum_list%limited s@$ i@5@00 hi@6@00 ar@7@00)
    (sum_list s@$ i@5@00 hi@6@00 ar@7@00))
  :pattern ((sum_list s@$ i@5@00 hi@6@00 ar@7@00))
  :qid |quant-u-16682|)))
(assert (forall ((s@$ $Snap) (i@5@00 Int) (hi@6@00 Int) (ar@7@00 Seq<Int>)) (!
  (sum_list%stateless i@5@00 hi@6@00 ar@7@00)
  :pattern ((sum_list%limited s@$ i@5@00 hi@6@00 ar@7@00))
  :qid |quant-u-16683|)))
(assert (forall ((s@$ $Snap) (i@5@00 Int) (hi@6@00 Int) (ar@7@00 Seq<Int>)) (!
  (=>
    (sum_list%precondition s@$ i@5@00 hi@6@00 ar@7@00)
    (=
      (sum_list s@$ i@5@00 hi@6@00 ar@7@00)
      (ite
        (< i@5@00 hi@6@00)
        (+
          (Seq_index ar@7@00 i@5@00)
          (sum_list%limited ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit $Snap.unit)) (+ i@5@00 1) hi@6@00 ar@7@00))
        0)))
  :pattern ((sum_list s@$ i@5@00 hi@6@00 ar@7@00))
  :qid |quant-u-16694|)))
(assert (forall ((s@$ $Snap) (i@5@00 Int) (hi@6@00 Int) (ar@7@00 Seq<Int>)) (!
  (=>
    (sum_list%precondition s@$ i@5@00 hi@6@00 ar@7@00)
    (ite
      (< i@5@00 hi@6@00)
      (sum_list%precondition ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit $Snap.unit)) (+ i@5@00 1) hi@6@00 ar@7@00)
      true))
  :pattern ((sum_list s@$ i@5@00 hi@6@00 ar@7@00))
  :qid |quant-u-16695|)))
(assert (forall ((s@$ $Snap) (i@9@00 Int) (lo@10@00 Int) (hi@11@00 Int) (step@12@00 Int) (min@13@00 Int) (max@14@00 Int) (ar@15@00 Seq<$Ref>)) (!
  (=
    (sum_square%limited s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00)
    (sum_square s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00))
  :pattern ((sum_square s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00))
  :qid |quant-u-16684|)))
(assert (forall ((s@$ $Snap) (i@9@00 Int) (lo@10@00 Int) (hi@11@00 Int) (step@12@00 Int) (min@13@00 Int) (max@14@00 Int) (ar@15@00 Seq<$Ref>)) (!
  (sum_square%stateless i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00)
  :pattern ((sum_square%limited s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00))
  :qid |quant-u-16685|)))
(assert (forall ((s@$ $Snap) (i@9@00 Int) (lo@10@00 Int) (hi@11@00 Int) (step@12@00 Int) (min@13@00 Int) (max@14@00 Int) (ar@15@00 Seq<$Ref>)) (!
  (and
    (forall ((k@38@00 Int)) (!
      (=>
        (and
          (and
            (<= min@13@00 k@38@00)
            (and
              (< k@38@00 max@14@00)
              (and
                (<= lo@10@00 (mod k@38@00 step@12@00))
                (< (mod k@38@00 step@12@00) hi@11@00))))
          (< $Perm.No $k@39@00))
        (and
          (=
            (inv@40@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 (Seq_index
              ar@15@00
              k@38@00))
            k@38@00)
          (img@41@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 (Seq_index
            ar@15@00
            k@38@00))))
      :pattern ((Seq_index ar@15@00 k@38@00))
      :qid |quant-u-16697|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@41@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
          (and
            (and
              (<=
                min@13@00
                (inv@40@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r))
              (and
                (<
                  (inv@40@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                  max@14@00)
                (and
                  (<=
                    lo@10@00
                    (mod
                      (inv@40@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                      step@12@00))
                  (<
                    (mod
                      (inv@40@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                      step@12@00)
                    hi@11@00))))
            (< $Perm.No $k@39@00)))
        (=
          (Seq_index
            ar@15@00
            (inv@40@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r))
          r))
      :pattern ((inv@40@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((k@44@00 Int)) (!
      (=>
        (and
          (and
            (<= min@13@00 k@44@00)
            (and
              (< k@44@00 max@14@00)
              (and
                (<= lo@10@00 (mod k@44@00 step@12@00))
                (< (mod k@44@00 step@12@00) hi@11@00))))
          (< $Perm.No $k@45@00))
        (and
          (=
            (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 (Seq_index
              ar@15@00
              k@44@00))
            k@44@00)
          (img@47@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 (Seq_index
            ar@15@00
            k@44@00))))
      :pattern ((Seq_index ar@15@00 k@44@00))
      :qid |Ref__Integer_value-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@47@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
          (and
            (and
              (<=
                min@13@00
                (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r))
              (and
                (<
                  (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                  max@14@00)
                (and
                  (<=
                    lo@10@00
                    (mod
                      (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                      step@12@00))
                  (<
                    (mod
                      (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                      step@12@00)
                    hi@11@00))))
            (< $Perm.No $k@45@00)))
        (=
          (Seq_index
            ar@15@00
            (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r))
          r))
      :pattern ((inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@48@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00)))
          (and
            (and
              (<=
                min@13@00
                (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r))
              (and
                (<
                  (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                  max@14@00)
                (and
                  (<=
                    lo@10@00
                    (mod
                      (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                      step@12@00))
                  (<
                    (mod
                      (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                      step@12@00)
                    hi@11@00))))
            (< $Perm.No $k@45@00)
            (img@47@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)))
        (=>
          (and
            (and
              (<=
                min@13@00
                (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r))
              (and
                (<
                  (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                  max@14@00)
                (and
                  (<=
                    lo@10@00
                    (mod
                      (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                      step@12@00))
                  (<
                    (mod
                      (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                      step@12@00)
                    hi@11@00))))
            (< $Perm.No $k@45@00)
            (img@47@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r))
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@48@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00)))))
      :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (sm@48@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00))))
      :qid |qp.fvfDomDef1|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (and
              (<=
                min@13@00
                (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r))
              (and
                (<
                  (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                  max@14@00)
                (and
                  (<=
                    lo@10@00
                    (mod
                      (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                      step@12@00))
                  (<
                    (mod
                      (inv@46@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                      step@12@00)
                    hi@11@00))))
            (< $Perm.No $k@45@00)
            (img@47@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r))
          (ite
            (and
              (img@41@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
              (and
                (<=
                  min@13@00
                  (inv@40@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r))
                (and
                  (<
                    (inv@40@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                    max@14@00)
                  (and
                    (<=
                      lo@10@00
                      (mod
                        (inv@40@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                        step@12@00))
                    (<
                      (mod
                        (inv@40@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00 r)
                        step@12@00)
                      hi@11@00)))))
            (< $Perm.No $k@39@00)
            false))
        (=
          ($FVF.lookup_Ref__Integer_value (sm@48@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00) r)
          ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) r)))
      :pattern (($FVF.lookup_Ref__Integer_value (sm@48@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00) r))
      :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) r))
      :qid |qp.fvfValDef0|))
    ($Perm.isReadVar $k@39@00)
    ($Perm.isReadVar $k@45@00)
    (=>
      (sum_square%precondition s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00)
      (=
        (sum_square s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00)
        (ite
          (< i@9@00 max@14@00)
          (+
            (ite
              (and
                (<= lo@10@00 (mod i@9@00 step@12@00))
                (< (mod i@9@00 step@12@00) hi@11@00))
              ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) (Seq_index
                ar@15@00
                i@9@00))
              0)
            (sum_square%limited ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine
                        $Snap.unit
                        ($Snap.combine
                          $Snap.unit
                          ($Snap.combine
                            $Snap.unit
                            ($Snap.combine
                              $Snap.unit
                              ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@48@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00))))))))))) (+
              i@9@00
              1) lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00))
          0))))
  :pattern ((sum_square s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00))
  :qid |quant-u-16700|)))
(assert (forall ((s@$ $Snap) (i@9@00 Int) (lo@10@00 Int) (hi@11@00 Int) (step@12@00 Int) (min@13@00 Int) (max@14@00 Int) (ar@15@00 Seq<$Ref>)) (!
  (=>
    (sum_square%precondition s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00)
    (ite
      (< i@9@00 max@14@00)
      (sum_square%precondition ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine
                        $Snap.unit
                        ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@48@00 s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00))))))))))) (+
        i@9@00
        1) lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00)
      true))
  :pattern ((sum_square s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00))
  :qid |quant-u-16701|)))
(assert (forall ((s@$ $Snap) (i@17@00 Int) (lo@18@00 Int) (hi@19@00 Int) (step@20@00 Int) (min@21@00 Int) (max@22@00 Int) (ar@23@00 Seq<$Ref>) (v@24@00 Int)) (!
  (=
    (count_square%limited s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00)
    (count_square s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00))
  :pattern ((count_square s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00))
  :qid |quant-u-16686|)))
(assert (forall ((s@$ $Snap) (i@17@00 Int) (lo@18@00 Int) (hi@19@00 Int) (step@20@00 Int) (min@21@00 Int) (max@22@00 Int) (ar@23@00 Seq<$Ref>) (v@24@00 Int)) (!
  (count_square%stateless i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00)
  :pattern ((count_square%limited s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00))
  :qid |quant-u-16687|)))
(assert (forall ((s@$ $Snap) (i@17@00 Int) (lo@18@00 Int) (hi@19@00 Int) (step@20@00 Int) (min@21@00 Int) (max@22@00 Int) (ar@23@00 Seq<$Ref>) (v@24@00 Int)) (!
  (and
    (forall ((k@51@00 Int)) (!
      (=>
        (and
          (and
            (<= min@21@00 k@51@00)
            (and
              (< k@51@00 max@22@00)
              (and
                (<= lo@18@00 (mod k@51@00 step@20@00))
                (< (mod k@51@00 step@20@00) hi@19@00))))
          (< $Perm.No $k@52@00))
        (and
          (=
            (inv@53@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 (Seq_index
              ar@23@00
              k@51@00))
            k@51@00)
          (img@54@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 (Seq_index
            ar@23@00
            k@51@00))))
      :pattern ((Seq_index ar@23@00 k@51@00))
      :qid |quant-u-16703|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@54@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
          (and
            (and
              (<=
                min@21@00
                (inv@53@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r))
              (and
                (<
                  (inv@53@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                  max@22@00)
                (and
                  (<=
                    lo@18@00
                    (mod
                      (inv@53@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                      step@20@00))
                  (<
                    (mod
                      (inv@53@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                      step@20@00)
                    hi@19@00))))
            (< $Perm.No $k@52@00)))
        (=
          (Seq_index
            ar@23@00
            (inv@53@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r))
          r))
      :pattern ((inv@53@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((k@57@00 Int)) (!
      (=>
        (and
          (and
            (<= min@21@00 k@57@00)
            (and
              (< k@57@00 max@22@00)
              (and
                (<= lo@18@00 (mod k@57@00 step@20@00))
                (< (mod k@57@00 step@20@00) hi@19@00))))
          (< $Perm.No $k@58@00))
        (and
          (=
            (inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 (Seq_index
              ar@23@00
              k@57@00))
            k@57@00)
          (img@60@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 (Seq_index
            ar@23@00
            k@57@00))))
      :pattern ((Seq_index ar@23@00 k@57@00))
      :qid |Ref__Integer_value-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@60@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
          (and
            (and
              (<=
                min@21@00
                (inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r))
              (and
                (<
                  (inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                  max@22@00)
                (and
                  (<=
                    lo@18@00
                    (mod
                      (inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                      step@20@00))
                  (<
                    (mod
                      (inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                      step@20@00)
                    hi@19@00))))
            (< $Perm.No $k@58@00)))
        (=
          (Seq_index
            ar@23@00
            (inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r))
          r))
      :pattern ((inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@61@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00)))
          (and
            (and
              (<=
                min@21@00
                (inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r))
              (and
                (<
                  (inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                  max@22@00)
                (and
                  (<=
                    lo@18@00
                    (mod
                      (inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                      step@20@00))
                  (<
                    (mod
                      (inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                      step@20@00)
                    hi@19@00))))
            (< $Perm.No $k@58@00)
            (img@60@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)))
        (=>
          (and
            (and
              (<=
                min@21@00
                (inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r))
              (and
                (<
                  (inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                  max@22@00)
                (and
                  (<=
                    lo@18@00
                    (mod
                      (inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                      step@20@00))
                  (<
                    (mod
                      (inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                      step@20@00)
                    hi@19@00))))
            (< $Perm.No $k@58@00)
            (img@60@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r))
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@61@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00)))))
      :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (sm@61@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00))))
      :qid |qp.fvfDomDef3|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (and
              (<=
                min@21@00
                (inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r))
              (and
                (<
                  (inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                  max@22@00)
                (and
                  (<=
                    lo@18@00
                    (mod
                      (inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                      step@20@00))
                  (<
                    (mod
                      (inv@59@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                      step@20@00)
                    hi@19@00))))
            (< $Perm.No $k@58@00)
            (img@60@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r))
          (ite
            (and
              (img@54@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
              (and
                (<=
                  min@21@00
                  (inv@53@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r))
                (and
                  (<
                    (inv@53@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                    max@22@00)
                  (and
                    (<=
                      lo@18@00
                      (mod
                        (inv@53@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                        step@20@00))
                    (<
                      (mod
                        (inv@53@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00 r)
                        step@20@00)
                      hi@19@00)))))
            (< $Perm.No $k@52@00)
            false))
        (=
          ($FVF.lookup_Ref__Integer_value (sm@61@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00) r)
          ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) r)))
      :pattern (($FVF.lookup_Ref__Integer_value (sm@61@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00) r))
      :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) r))
      :qid |qp.fvfValDef2|))
    ($Perm.isReadVar $k@52@00)
    ($Perm.isReadVar $k@58@00)
    (=>
      (count_square%precondition s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00)
      (=
        (count_square s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00)
        (ite
          (< i@17@00 max@22@00)
          (+
            (ite
              (and
                (<= lo@18@00 (mod i@17@00 step@20@00))
                (and
                  (< (mod i@17@00 step@20@00) hi@19@00)
                  (=
                    ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))))) (Seq_index
                      ar@23@00
                      i@17@00))
                    v@24@00)))
              1
              0)
            (count_square%limited ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine
                        $Snap.unit
                        ($Snap.combine
                          $Snap.unit
                          ($Snap.combine
                            $Snap.unit
                            ($Snap.combine
                              $Snap.unit
                              ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@61@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00))))))))))) (+
              i@17@00
              1) lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00))
          0))))
  :pattern ((count_square s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00))
  :qid |quant-u-16706|)))
(assert (forall ((s@$ $Snap) (i@17@00 Int) (lo@18@00 Int) (hi@19@00 Int) (step@20@00 Int) (min@21@00 Int) (max@22@00 Int) (ar@23@00 Seq<$Ref>) (v@24@00 Int)) (!
  (=>
    (count_square%precondition s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00)
    (ite
      (< i@17@00 max@22@00)
      (count_square%precondition ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine
                        $Snap.unit
                        ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@61@00 s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00))))))))))) (+
        i@17@00
        1) lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00)
      true))
  :pattern ((count_square s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00))
  :qid |quant-u-16707|)))
(assert (forall ((s@$ $Snap) (i@26@00 Int) (hi@27@00 Int) (ar@28@00 Seq<$Ref>) (v@29@00 Int)) (!
  (=
    (count_array%limited s@$ i@26@00 hi@27@00 ar@28@00 v@29@00)
    (count_array s@$ i@26@00 hi@27@00 ar@28@00 v@29@00))
  :pattern ((count_array s@$ i@26@00 hi@27@00 ar@28@00 v@29@00))
  :qid |quant-u-16688|)))
(assert (forall ((s@$ $Snap) (i@26@00 Int) (hi@27@00 Int) (ar@28@00 Seq<$Ref>) (v@29@00 Int)) (!
  (count_array%stateless i@26@00 hi@27@00 ar@28@00 v@29@00)
  :pattern ((count_array%limited s@$ i@26@00 hi@27@00 ar@28@00 v@29@00))
  :qid |quant-u-16689|)))
(assert (forall ((s@$ $Snap) (i@26@00 Int) (hi@27@00 Int) (ar@28@00 Seq<$Ref>) (v@29@00 Int)) (!
  (and
    (forall ((k@64@00 Int)) (!
      (=>
        (and (and (<= 0 k@64@00) (< k@64@00 hi@27@00)) (< $Perm.No $k@65@00))
        (and
          (=
            (inv@66@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 (Seq_index
              ar@28@00
              k@64@00))
            k@64@00)
          (img@67@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 (Seq_index
            ar@28@00
            k@64@00))))
      :pattern ((Seq_index ar@28@00 k@64@00))
      :qid |quant-u-16709|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@67@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r)
          (and
            (and
              (<= 0 (inv@66@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r))
              (< (inv@66@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r) hi@27@00))
            (< $Perm.No $k@65@00)))
        (=
          (Seq_index
            ar@28@00
            (inv@66@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r))
          r))
      :pattern ((inv@66@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((k@70@00 Int)) (!
      (=>
        (and (and (<= 0 k@70@00) (< k@70@00 hi@27@00)) (< $Perm.No $k@71@00))
        (and
          (=
            (inv@72@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 (Seq_index
              ar@28@00
              k@70@00))
            k@70@00)
          (img@73@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 (Seq_index
            ar@28@00
            k@70@00))))
      :pattern ((Seq_index ar@28@00 k@70@00))
      :qid |Ref__Integer_value-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@73@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r)
          (and
            (and
              (<= 0 (inv@72@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r))
              (< (inv@72@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r) hi@27@00))
            (< $Perm.No $k@71@00)))
        (=
          (Seq_index
            ar@28@00
            (inv@72@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r))
          r))
      :pattern ((inv@72@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@74@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00)))
          (and
            (and
              (<= 0 (inv@72@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r))
              (< (inv@72@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r) hi@27@00))
            (< $Perm.No $k@71@00)
            (img@73@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r)))
        (=>
          (and
            (and
              (<= 0 (inv@72@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r))
              (< (inv@72@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r) hi@27@00))
            (< $Perm.No $k@71@00)
            (img@73@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r))
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@74@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00)))))
      :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (sm@74@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00))))
      :qid |qp.fvfDomDef5|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (and
              (<= 0 (inv@72@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r))
              (< (inv@72@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r) hi@27@00))
            (< $Perm.No $k@71@00)
            (img@73@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r))
          (ite
            (and
              (img@67@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r)
              (and
                (<= 0 (inv@66@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r))
                (< (inv@66@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r) hi@27@00)))
            (< $Perm.No $k@65@00)
            false))
        (=
          ($FVF.lookup_Ref__Integer_value (sm@74@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00) r)
          ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))) r)))
      :pattern (($FVF.lookup_Ref__Integer_value (sm@74@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00) r))
      :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))) r))
      :qid |qp.fvfValDef4|))
    ($Perm.isReadVar $k@65@00)
    ($Perm.isReadVar $k@71@00)
    (=>
      (count_array%precondition s@$ i@26@00 hi@27@00 ar@28@00 v@29@00)
      (=
        (count_array s@$ i@26@00 hi@27@00 ar@28@00 v@29@00)
        (ite
          (< i@26@00 hi@27@00)
          (+
            (ite
              (=
                ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$))))) (Seq_index
                  ar@28@00
                  i@26@00))
                v@29@00)
              1
              0)
            (count_array%limited ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@74@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00)))))) (+
              i@26@00
              1) hi@27@00 ar@28@00 v@29@00))
          0))))
  :pattern ((count_array s@$ i@26@00 hi@27@00 ar@28@00 v@29@00))
  :qid |quant-u-16712|)))
(assert (forall ((s@$ $Snap) (i@26@00 Int) (hi@27@00 Int) (ar@28@00 Seq<$Ref>) (v@29@00 Int)) (!
  (=>
    (count_array%precondition s@$ i@26@00 hi@27@00 ar@28@00 v@29@00)
    (ite
      (< i@26@00 hi@27@00)
      (count_array%precondition ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@74@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00)))))) (+
        i@26@00
        1) hi@27@00 ar@28@00 v@29@00)
      true))
  :pattern ((count_array s@$ i@26@00 hi@27@00 ar@28@00 v@29@00))
  :qid |quant-u-16713|)))
(assert (forall ((s@$ $Snap) (i@31@00 Int) (lo@32@00 Int) (hi@33@00 Int) (ar@34@00 Seq<$Ref>)) (!
  (=
    (sum_array%limited s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00)
    (sum_array s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00))
  :pattern ((sum_array s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00))
  :qid |quant-u-16690|)))
(assert (forall ((s@$ $Snap) (i@31@00 Int) (lo@32@00 Int) (hi@33@00 Int) (ar@34@00 Seq<$Ref>)) (!
  (sum_array%stateless i@31@00 lo@32@00 hi@33@00 ar@34@00)
  :pattern ((sum_array%limited s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00))
  :qid |quant-u-16691|)))
(assert (forall ((s@$ $Snap) (i@31@00 Int) (lo@32@00 Int) (hi@33@00 Int) (ar@34@00 Seq<$Ref>)) (!
  (and
    (forall ((k@77@00 Int)) (!
      (=>
        (and
          (and (<= lo@32@00 k@77@00) (< k@77@00 hi@33@00))
          (< $Perm.No $k@78@00))
        (and
          (=
            (inv@79@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00 (Seq_index
              ar@34@00
              k@77@00))
            k@77@00)
          (img@80@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00 (Seq_index
            ar@34@00
            k@77@00))))
      :pattern ((Seq_index ar@34@00 k@77@00))
      :qid |quant-u-16715|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@80@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00 r)
          (and
            (and
              (<= lo@32@00 (inv@79@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00 r))
              (< (inv@79@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00 r) hi@33@00))
            (< $Perm.No $k@78@00)))
        (=
          (Seq_index
            ar@34@00
            (inv@79@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00 r))
          r))
      :pattern ((inv@79@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((k@83@00 Int)) (!
      (=>
        (and
          (and (<= lo@32@00 k@83@00) (< k@83@00 hi@33@00))
          (< $Perm.No $k@84@00))
        (and
          (=
            (inv@85@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00 (Seq_index
              ar@34@00
              k@83@00))
            k@83@00)
          (img@86@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00 (Seq_index
            ar@34@00
            k@83@00))))
      :pattern ((Seq_index ar@34@00 k@83@00))
      :qid |Ref__Integer_value-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@86@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00 r)
          (and
            (and
              (<= lo@32@00 (inv@85@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00 r))
              (< (inv@85@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00 r) hi@33@00))
            (< $Perm.No $k@84@00)))
        (=
          (Seq_index
            ar@34@00
            (inv@85@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00 r))
          r))
      :pattern ((inv@85@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00 r))
      :qid |Ref__Integer_value-fctOfInv|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@87@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00)))
          (and
            (and
              (<= lo@32@00 (inv@85@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00 r))
              (< (inv@85@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00 r) hi@33@00))
            (< $Perm.No $k@84@00)
            (img@86@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00 r)))
        (=>
          (and
            (and
              (<= lo@32@00 (inv@85@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00 r))
              (< (inv@85@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00 r) hi@33@00))
            (< $Perm.No $k@84@00)
            (img@86@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00 r))
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@87@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00)))))
      :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (sm@87@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00))))
      :qid |qp.fvfDomDef7|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (and
              (<= lo@32@00 (inv@85@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00 r))
              (< (inv@85@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00 r) hi@33@00))
            (< $Perm.No $k@84@00)
            (img@86@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00 r))
          (ite
            (and
              (img@80@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00 r)
              (and
                (<=
                  lo@32@00
                  (inv@79@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00 r))
                (< (inv@79@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00 r) hi@33@00)))
            (< $Perm.No $k@78@00)
            false))
        (=
          ($FVF.lookup_Ref__Integer_value (sm@87@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00) r)
          ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) r)))
      :pattern (($FVF.lookup_Ref__Integer_value (sm@87@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00) r))
      :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) r))
      :qid |qp.fvfValDef6|))
    ($Perm.isReadVar $k@78@00)
    ($Perm.isReadVar $k@84@00)
    (=>
      (sum_array%precondition s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00)
      (=
        (sum_array s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00)
        (ite
          (< i@31@00 hi@33@00)
          (+
            ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) (Seq_index
              ar@34@00
              i@31@00))
            (sum_array%limited ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      $Snap.unit
                      ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@87@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00))))))) (+
              i@31@00
              1) lo@32@00 hi@33@00 ar@34@00))
          0))))
  :pattern ((sum_array s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00))
  :qid |quant-u-16718|)))
(assert (forall ((s@$ $Snap) (i@31@00 Int) (lo@32@00 Int) (hi@33@00 Int) (ar@34@00 Seq<$Ref>)) (!
  (=>
    (sum_array%precondition s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00)
    (ite
      (< i@31@00 hi@33@00)
      (sum_array%precondition ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (sm@87@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00))))))) (+
        i@31@00
        1) lo@32@00 hi@33@00 ar@34@00)
      true))
  :pattern ((sum_array s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00))
  :qid |quant-u-16719|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- Ref__loop_main_54 ----------
(declare-const diz@0@01 $Ref)
(declare-const current_thread_id@1@01 Int)
(declare-const len@2@01 Int)
(declare-const ar@3@01 Seq<$Ref>)
(declare-const br@4@01 Seq<$Ref>)
(declare-const cr@5@01 Seq<$Ref>)
(declare-const diz@6@01 $Ref)
(declare-const current_thread_id@7@01 Int)
(declare-const len@8@01 Int)
(declare-const ar@9@01 Seq<$Ref>)
(declare-const br@10@01 Seq<$Ref>)
(declare-const cr@11@01 Seq<$Ref>)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@12@01 $Snap)
(assert (= $t@12@01 ($Snap.combine ($Snap.first $t@12@01) ($Snap.second $t@12@01))))
(assert (= ($Snap.first $t@12@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@6@01 $Ref.null)))
(assert (=
  ($Snap.second $t@12@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@12@01))
    ($Snap.second ($Snap.second $t@12@01)))))
(assert (= ($Snap.first ($Snap.second $t@12@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@7@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@12@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@12@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@12@01))) $Snap.unit))
; [eval] 0 < len ==> |ar| == len
; [eval] 0 < len
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< 0 len@8@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< 0 len@8@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | 0 < len@8@01 | live]
; [else-branch: 0 | !(0 < len@8@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | 0 < len@8@01]
(assert (< 0 len@8@01))
; [eval] |ar| == len
; [eval] |ar|
(pop) ; 3
(push) ; 3
; [else-branch: 0 | !(0 < len@8@01)]
(assert (not (< 0 len@8@01)))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (or (not (< 0 len@8@01)) (< 0 len@8@01)))
(assert (=> (< 0 len@8@01) (= (Seq_length ar@9@01) len@8@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@12@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@12@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@12@01))))
  $Snap.unit))
; [eval] (forall j: Int, k: Int :: { ar[j], ar[k] } 0 <= j && (j < |ar| && (0 <= k && (k < |ar| && j != k))) ==> ar[j] != ar[k])
(declare-const j@13@01 Int)
(declare-const k@14@01 Int)
(push) ; 2
; [eval] 0 <= j && (j < |ar| && (0 <= k && (k < |ar| && j != k))) ==> ar[j] != ar[k]
; [eval] 0 <= j && (j < |ar| && (0 <= k && (k < |ar| && j != k)))
; [eval] 0 <= j
(push) ; 3
; [then-branch: 1 | !(0 <= j@13@01) | live]
; [else-branch: 1 | 0 <= j@13@01 | live]
(push) ; 4
; [then-branch: 1 | !(0 <= j@13@01)]
(assert (not (<= 0 j@13@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 1 | 0 <= j@13@01]
(assert (<= 0 j@13@01))
; [eval] j < |ar|
; [eval] |ar|
(push) ; 5
; [then-branch: 2 | !(j@13@01 < |ar@9@01|) | live]
; [else-branch: 2 | j@13@01 < |ar@9@01| | live]
(push) ; 6
; [then-branch: 2 | !(j@13@01 < |ar@9@01|)]
(assert (not (< j@13@01 (Seq_length ar@9@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 2 | j@13@01 < |ar@9@01|]
(assert (< j@13@01 (Seq_length ar@9@01)))
; [eval] 0 <= k
(push) ; 7
; [then-branch: 3 | !(0 <= k@14@01) | live]
; [else-branch: 3 | 0 <= k@14@01 | live]
(push) ; 8
; [then-branch: 3 | !(0 <= k@14@01)]
(assert (not (<= 0 k@14@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 3 | 0 <= k@14@01]
(assert (<= 0 k@14@01))
; [eval] k < |ar|
; [eval] |ar|
(push) ; 9
; [then-branch: 4 | !(k@14@01 < |ar@9@01|) | live]
; [else-branch: 4 | k@14@01 < |ar@9@01| | live]
(push) ; 10
; [then-branch: 4 | !(k@14@01 < |ar@9@01|)]
(assert (not (< k@14@01 (Seq_length ar@9@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 4 | k@14@01 < |ar@9@01|]
(assert (< k@14@01 (Seq_length ar@9@01)))
; [eval] j != k
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< k@14@01 (Seq_length ar@9@01)) (not (< k@14@01 (Seq_length ar@9@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@14@01)
  (and
    (<= 0 k@14@01)
    (or (< k@14@01 (Seq_length ar@9@01)) (not (< k@14@01 (Seq_length ar@9@01)))))))
(assert (or (<= 0 k@14@01) (not (<= 0 k@14@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@13@01 (Seq_length ar@9@01))
  (and
    (< j@13@01 (Seq_length ar@9@01))
    (=>
      (<= 0 k@14@01)
      (and
        (<= 0 k@14@01)
        (or
          (< k@14@01 (Seq_length ar@9@01))
          (not (< k@14@01 (Seq_length ar@9@01))))))
    (or (<= 0 k@14@01) (not (<= 0 k@14@01))))))
(assert (or (< j@13@01 (Seq_length ar@9@01)) (not (< j@13@01 (Seq_length ar@9@01)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@13@01)
  (and
    (<= 0 j@13@01)
    (=>
      (< j@13@01 (Seq_length ar@9@01))
      (and
        (< j@13@01 (Seq_length ar@9@01))
        (=>
          (<= 0 k@14@01)
          (and
            (<= 0 k@14@01)
            (or
              (< k@14@01 (Seq_length ar@9@01))
              (not (< k@14@01 (Seq_length ar@9@01))))))
        (or (<= 0 k@14@01) (not (<= 0 k@14@01)))))
    (or (< j@13@01 (Seq_length ar@9@01)) (not (< j@13@01 (Seq_length ar@9@01)))))))
(assert (or (<= 0 j@13@01) (not (<= 0 j@13@01))))
(push) ; 3
; [then-branch: 5 | 0 <= j@13@01 && j@13@01 < |ar@9@01| && 0 <= k@14@01 && k@14@01 < |ar@9@01| && j@13@01 != k@14@01 | live]
; [else-branch: 5 | !(0 <= j@13@01 && j@13@01 < |ar@9@01| && 0 <= k@14@01 && k@14@01 < |ar@9@01| && j@13@01 != k@14@01) | live]
(push) ; 4
; [then-branch: 5 | 0 <= j@13@01 && j@13@01 < |ar@9@01| && 0 <= k@14@01 && k@14@01 < |ar@9@01| && j@13@01 != k@14@01]
(assert (and
  (<= 0 j@13@01)
  (and
    (< j@13@01 (Seq_length ar@9@01))
    (and
      (<= 0 k@14@01)
      (and (< k@14@01 (Seq_length ar@9@01)) (not (= j@13@01 k@14@01)))))))
; [eval] ar[j] != ar[k]
; [eval] ar[j]
(push) ; 5
(assert (not (>= j@13@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] ar[k]
(push) ; 5
(assert (not (>= k@14@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 5 | !(0 <= j@13@01 && j@13@01 < |ar@9@01| && 0 <= k@14@01 && k@14@01 < |ar@9@01| && j@13@01 != k@14@01)]
(assert (not
  (and
    (<= 0 j@13@01)
    (and
      (< j@13@01 (Seq_length ar@9@01))
      (and
        (<= 0 k@14@01)
        (and (< k@14@01 (Seq_length ar@9@01)) (not (= j@13@01 k@14@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@13@01)
    (and
      (< j@13@01 (Seq_length ar@9@01))
      (and
        (<= 0 k@14@01)
        (and (< k@14@01 (Seq_length ar@9@01)) (not (= j@13@01 k@14@01))))))
  (and
    (<= 0 j@13@01)
    (< j@13@01 (Seq_length ar@9@01))
    (<= 0 k@14@01)
    (< k@14@01 (Seq_length ar@9@01))
    (not (= j@13@01 k@14@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@13@01)
      (and
        (< j@13@01 (Seq_length ar@9@01))
        (and
          (<= 0 k@14@01)
          (and (< k@14@01 (Seq_length ar@9@01)) (not (= j@13@01 k@14@01)))))))
  (and
    (<= 0 j@13@01)
    (and
      (< j@13@01 (Seq_length ar@9@01))
      (and
        (<= 0 k@14@01)
        (and (< k@14@01 (Seq_length ar@9@01)) (not (= j@13@01 k@14@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@13@01 Int) (k@14@01 Int)) (!
  (and
    (=>
      (<= 0 j@13@01)
      (and
        (<= 0 j@13@01)
        (=>
          (< j@13@01 (Seq_length ar@9@01))
          (and
            (< j@13@01 (Seq_length ar@9@01))
            (=>
              (<= 0 k@14@01)
              (and
                (<= 0 k@14@01)
                (or
                  (< k@14@01 (Seq_length ar@9@01))
                  (not (< k@14@01 (Seq_length ar@9@01))))))
            (or (<= 0 k@14@01) (not (<= 0 k@14@01)))))
        (or
          (< j@13@01 (Seq_length ar@9@01))
          (not (< j@13@01 (Seq_length ar@9@01))))))
    (or (<= 0 j@13@01) (not (<= 0 j@13@01)))
    (=>
      (and
        (<= 0 j@13@01)
        (and
          (< j@13@01 (Seq_length ar@9@01))
          (and
            (<= 0 k@14@01)
            (and (< k@14@01 (Seq_length ar@9@01)) (not (= j@13@01 k@14@01))))))
      (and
        (<= 0 j@13@01)
        (< j@13@01 (Seq_length ar@9@01))
        (<= 0 k@14@01)
        (< k@14@01 (Seq_length ar@9@01))
        (not (= j@13@01 k@14@01))))
    (or
      (not
        (and
          (<= 0 j@13@01)
          (and
            (< j@13@01 (Seq_length ar@9@01))
            (and
              (<= 0 k@14@01)
              (and (< k@14@01 (Seq_length ar@9@01)) (not (= j@13@01 k@14@01)))))))
      (and
        (<= 0 j@13@01)
        (and
          (< j@13@01 (Seq_length ar@9@01))
          (and
            (<= 0 k@14@01)
            (and (< k@14@01 (Seq_length ar@9@01)) (not (= j@13@01 k@14@01))))))))
  :pattern ((Seq_index ar@9@01 j@13@01) (Seq_index ar@9@01 k@14@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopE1.vpr@62@12@62@106-aux|)))
(assert (forall ((j@13@01 Int) (k@14@01 Int)) (!
  (=>
    (and
      (<= 0 j@13@01)
      (and
        (< j@13@01 (Seq_length ar@9@01))
        (and
          (<= 0 k@14@01)
          (and (< k@14@01 (Seq_length ar@9@01)) (not (= j@13@01 k@14@01))))))
    (not (= (Seq_index ar@9@01 j@13@01) (Seq_index ar@9@01 k@14@01))))
  :pattern ((Seq_index ar@9@01 j@13@01) (Seq_index ar@9@01 k@14@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopE1.vpr@62@12@62@106|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))
(declare-const i@15@01 Int)
(push) ; 2
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 3
; [then-branch: 6 | !(0 <= i@15@01) | live]
; [else-branch: 6 | 0 <= i@15@01 | live]
(push) ; 4
; [then-branch: 6 | !(0 <= i@15@01)]
(assert (not (<= 0 i@15@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 6 | 0 <= i@15@01]
(assert (<= 0 i@15@01))
; [eval] i < len
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@15@01) (not (<= 0 i@15@01))))
(assert (and (<= 0 i@15@01) (< i@15@01 len@8@01)))
; [eval] ar[i]
(push) ; 3
(assert (not (>= i@15@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@15@01 (Seq_length ar@9@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@16@01 ($Ref) Int)
(declare-fun img@17@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@15@01 Int)) (!
  (=>
    (and (<= 0 i@15@01) (< i@15@01 len@8@01))
    (or (<= 0 i@15@01) (not (<= 0 i@15@01))))
  :pattern ((Seq_index ar@9@01 i@15@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@15@01 Int) (i2@15@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@15@01) (< i1@15@01 len@8@01))
      (and (<= 0 i2@15@01) (< i2@15@01 len@8@01))
      (= (Seq_index ar@9@01 i1@15@01) (Seq_index ar@9@01 i2@15@01)))
    (= i1@15@01 i2@15@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@15@01 Int)) (!
  (=>
    (and (<= 0 i@15@01) (< i@15@01 len@8@01))
    (and
      (= (inv@16@01 (Seq_index ar@9@01 i@15@01)) i@15@01)
      (img@17@01 (Seq_index ar@9@01 i@15@01))))
  :pattern ((Seq_index ar@9@01 i@15@01))
  :qid |quant-u-16721|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@17@01 r) (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))
    (= (Seq_index ar@9@01 (inv@16@01 r)) r))
  :pattern ((inv@16@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@15@01 Int)) (!
  (=>
    (and (<= 0 i@15@01) (< i@15@01 len@8@01))
    (not (= (Seq_index ar@9@01 i@15@01) $Ref.null)))
  :pattern ((Seq_index ar@9@01 i@15@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))
  $Snap.unit))
; [eval] 0 < len ==> |br| == len
; [eval] 0 < len
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< 0 len@8@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< 0 len@8@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 7 | 0 < len@8@01 | live]
; [else-branch: 7 | !(0 < len@8@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 7 | 0 < len@8@01]
(assert (< 0 len@8@01))
; [eval] |br| == len
; [eval] |br|
(pop) ; 3
(push) ; 3
; [else-branch: 7 | !(0 < len@8@01)]
(assert (not (< 0 len@8@01)))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=> (< 0 len@8@01) (= (Seq_length br@10@01) len@8@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
  $Snap.unit))
; [eval] (forall j: Int, k: Int :: { br[j], br[k] } 0 <= j && (j < |br| && (0 <= k && (k < |br| && j != k))) ==> br[j] != br[k])
(declare-const j@18@01 Int)
(declare-const k@19@01 Int)
(push) ; 2
; [eval] 0 <= j && (j < |br| && (0 <= k && (k < |br| && j != k))) ==> br[j] != br[k]
; [eval] 0 <= j && (j < |br| && (0 <= k && (k < |br| && j != k)))
; [eval] 0 <= j
(push) ; 3
; [then-branch: 8 | !(0 <= j@18@01) | live]
; [else-branch: 8 | 0 <= j@18@01 | live]
(push) ; 4
; [then-branch: 8 | !(0 <= j@18@01)]
(assert (not (<= 0 j@18@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 8 | 0 <= j@18@01]
(assert (<= 0 j@18@01))
; [eval] j < |br|
; [eval] |br|
(push) ; 5
; [then-branch: 9 | !(j@18@01 < |br@10@01|) | live]
; [else-branch: 9 | j@18@01 < |br@10@01| | live]
(push) ; 6
; [then-branch: 9 | !(j@18@01 < |br@10@01|)]
(assert (not (< j@18@01 (Seq_length br@10@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 9 | j@18@01 < |br@10@01|]
(assert (< j@18@01 (Seq_length br@10@01)))
; [eval] 0 <= k
(push) ; 7
; [then-branch: 10 | !(0 <= k@19@01) | live]
; [else-branch: 10 | 0 <= k@19@01 | live]
(push) ; 8
; [then-branch: 10 | !(0 <= k@19@01)]
(assert (not (<= 0 k@19@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 10 | 0 <= k@19@01]
(assert (<= 0 k@19@01))
; [eval] k < |br|
; [eval] |br|
(push) ; 9
; [then-branch: 11 | !(k@19@01 < |br@10@01|) | live]
; [else-branch: 11 | k@19@01 < |br@10@01| | live]
(push) ; 10
; [then-branch: 11 | !(k@19@01 < |br@10@01|)]
(assert (not (< k@19@01 (Seq_length br@10@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 11 | k@19@01 < |br@10@01|]
(assert (< k@19@01 (Seq_length br@10@01)))
; [eval] j != k
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< k@19@01 (Seq_length br@10@01)) (not (< k@19@01 (Seq_length br@10@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@19@01)
  (and
    (<= 0 k@19@01)
    (or
      (< k@19@01 (Seq_length br@10@01))
      (not (< k@19@01 (Seq_length br@10@01)))))))
(assert (or (<= 0 k@19@01) (not (<= 0 k@19@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@18@01 (Seq_length br@10@01))
  (and
    (< j@18@01 (Seq_length br@10@01))
    (=>
      (<= 0 k@19@01)
      (and
        (<= 0 k@19@01)
        (or
          (< k@19@01 (Seq_length br@10@01))
          (not (< k@19@01 (Seq_length br@10@01))))))
    (or (<= 0 k@19@01) (not (<= 0 k@19@01))))))
(assert (or (< j@18@01 (Seq_length br@10@01)) (not (< j@18@01 (Seq_length br@10@01)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@18@01)
  (and
    (<= 0 j@18@01)
    (=>
      (< j@18@01 (Seq_length br@10@01))
      (and
        (< j@18@01 (Seq_length br@10@01))
        (=>
          (<= 0 k@19@01)
          (and
            (<= 0 k@19@01)
            (or
              (< k@19@01 (Seq_length br@10@01))
              (not (< k@19@01 (Seq_length br@10@01))))))
        (or (<= 0 k@19@01) (not (<= 0 k@19@01)))))
    (or
      (< j@18@01 (Seq_length br@10@01))
      (not (< j@18@01 (Seq_length br@10@01)))))))
(assert (or (<= 0 j@18@01) (not (<= 0 j@18@01))))
(push) ; 3
; [then-branch: 12 | 0 <= j@18@01 && j@18@01 < |br@10@01| && 0 <= k@19@01 && k@19@01 < |br@10@01| && j@18@01 != k@19@01 | live]
; [else-branch: 12 | !(0 <= j@18@01 && j@18@01 < |br@10@01| && 0 <= k@19@01 && k@19@01 < |br@10@01| && j@18@01 != k@19@01) | live]
(push) ; 4
; [then-branch: 12 | 0 <= j@18@01 && j@18@01 < |br@10@01| && 0 <= k@19@01 && k@19@01 < |br@10@01| && j@18@01 != k@19@01]
(assert (and
  (<= 0 j@18@01)
  (and
    (< j@18@01 (Seq_length br@10@01))
    (and
      (<= 0 k@19@01)
      (and (< k@19@01 (Seq_length br@10@01)) (not (= j@18@01 k@19@01)))))))
; [eval] br[j] != br[k]
; [eval] br[j]
(push) ; 5
(assert (not (>= j@18@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] br[k]
(push) ; 5
(assert (not (>= k@19@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 12 | !(0 <= j@18@01 && j@18@01 < |br@10@01| && 0 <= k@19@01 && k@19@01 < |br@10@01| && j@18@01 != k@19@01)]
(assert (not
  (and
    (<= 0 j@18@01)
    (and
      (< j@18@01 (Seq_length br@10@01))
      (and
        (<= 0 k@19@01)
        (and (< k@19@01 (Seq_length br@10@01)) (not (= j@18@01 k@19@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@18@01)
    (and
      (< j@18@01 (Seq_length br@10@01))
      (and
        (<= 0 k@19@01)
        (and (< k@19@01 (Seq_length br@10@01)) (not (= j@18@01 k@19@01))))))
  (and
    (<= 0 j@18@01)
    (< j@18@01 (Seq_length br@10@01))
    (<= 0 k@19@01)
    (< k@19@01 (Seq_length br@10@01))
    (not (= j@18@01 k@19@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@18@01)
      (and
        (< j@18@01 (Seq_length br@10@01))
        (and
          (<= 0 k@19@01)
          (and (< k@19@01 (Seq_length br@10@01)) (not (= j@18@01 k@19@01)))))))
  (and
    (<= 0 j@18@01)
    (and
      (< j@18@01 (Seq_length br@10@01))
      (and
        (<= 0 k@19@01)
        (and (< k@19@01 (Seq_length br@10@01)) (not (= j@18@01 k@19@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@18@01 Int) (k@19@01 Int)) (!
  (and
    (=>
      (<= 0 j@18@01)
      (and
        (<= 0 j@18@01)
        (=>
          (< j@18@01 (Seq_length br@10@01))
          (and
            (< j@18@01 (Seq_length br@10@01))
            (=>
              (<= 0 k@19@01)
              (and
                (<= 0 k@19@01)
                (or
                  (< k@19@01 (Seq_length br@10@01))
                  (not (< k@19@01 (Seq_length br@10@01))))))
            (or (<= 0 k@19@01) (not (<= 0 k@19@01)))))
        (or
          (< j@18@01 (Seq_length br@10@01))
          (not (< j@18@01 (Seq_length br@10@01))))))
    (or (<= 0 j@18@01) (not (<= 0 j@18@01)))
    (=>
      (and
        (<= 0 j@18@01)
        (and
          (< j@18@01 (Seq_length br@10@01))
          (and
            (<= 0 k@19@01)
            (and (< k@19@01 (Seq_length br@10@01)) (not (= j@18@01 k@19@01))))))
      (and
        (<= 0 j@18@01)
        (< j@18@01 (Seq_length br@10@01))
        (<= 0 k@19@01)
        (< k@19@01 (Seq_length br@10@01))
        (not (= j@18@01 k@19@01))))
    (or
      (not
        (and
          (<= 0 j@18@01)
          (and
            (< j@18@01 (Seq_length br@10@01))
            (and
              (<= 0 k@19@01)
              (and (< k@19@01 (Seq_length br@10@01)) (not (= j@18@01 k@19@01)))))))
      (and
        (<= 0 j@18@01)
        (and
          (< j@18@01 (Seq_length br@10@01))
          (and
            (<= 0 k@19@01)
            (and (< k@19@01 (Seq_length br@10@01)) (not (= j@18@01 k@19@01))))))))
  :pattern ((Seq_index br@10@01 j@18@01) (Seq_index br@10@01 k@19@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopE1.vpr@65@12@65@106-aux|)))
(assert (forall ((j@18@01 Int) (k@19@01 Int)) (!
  (=>
    (and
      (<= 0 j@18@01)
      (and
        (< j@18@01 (Seq_length br@10@01))
        (and
          (<= 0 k@19@01)
          (and (< k@19@01 (Seq_length br@10@01)) (not (= j@18@01 k@19@01))))))
    (not (= (Seq_index br@10@01 j@18@01) (Seq_index br@10@01 k@19@01))))
  :pattern ((Seq_index br@10@01 j@18@01) (Seq_index br@10@01 k@19@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopE1.vpr@65@12@65@106|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))
(declare-const i@20@01 Int)
(push) ; 2
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 3
; [then-branch: 13 | !(0 <= i@20@01) | live]
; [else-branch: 13 | 0 <= i@20@01 | live]
(push) ; 4
; [then-branch: 13 | !(0 <= i@20@01)]
(assert (not (<= 0 i@20@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 13 | 0 <= i@20@01]
(assert (<= 0 i@20@01))
; [eval] i < len
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@20@01) (not (<= 0 i@20@01))))
(assert (and (<= 0 i@20@01) (< i@20@01 len@8@01)))
; [eval] br[i]
(push) ; 3
(assert (not (>= i@20@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@20@01 (Seq_length br@10@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@21@01 ($Ref) Int)
(declare-fun img@22@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@20@01 Int)) (!
  (=>
    (and (<= 0 i@20@01) (< i@20@01 len@8@01))
    (or (<= 0 i@20@01) (not (<= 0 i@20@01))))
  :pattern ((Seq_index br@10@01 i@20@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@20@01 Int) (i2@20@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@20@01) (< i1@20@01 len@8@01))
      (and (<= 0 i2@20@01) (< i2@20@01 len@8@01))
      (= (Seq_index br@10@01 i1@20@01) (Seq_index br@10@01 i2@20@01)))
    (= i1@20@01 i2@20@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@20@01 Int)) (!
  (=>
    (and (<= 0 i@20@01) (< i@20@01 len@8@01))
    (and
      (= (inv@21@01 (Seq_index br@10@01 i@20@01)) i@20@01)
      (img@22@01 (Seq_index br@10@01 i@20@01))))
  :pattern ((Seq_index br@10@01 i@20@01))
  :qid |quant-u-16723|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@22@01 r) (and (<= 0 (inv@21@01 r)) (< (inv@21@01 r) len@8@01)))
    (= (Seq_index br@10@01 (inv@21@01 r)) r))
  :pattern ((inv@21@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@20@01 Int)) (!
  (=>
    (and (<= 0 i@20@01) (< i@20@01 len@8@01))
    (not (= (Seq_index br@10@01 i@20@01) $Ref.null)))
  :pattern ((Seq_index br@10@01 i@20@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index br@10@01 i@20@01) (Seq_index ar@9@01 i@15@01))
    (=
      (and (img@22@01 r) (and (<= 0 (inv@21@01 r)) (< (inv@21@01 r) len@8@01)))
      (and (img@17@01 r) (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))))
  
  :qid |quant-u-16724|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
  $Snap.unit))
; [eval] 0 < len ==> |cr| == len
; [eval] 0 < len
(set-option :timeout 0)
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< 0 len@8@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< 0 len@8@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 14 | 0 < len@8@01 | live]
; [else-branch: 14 | !(0 < len@8@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 14 | 0 < len@8@01]
(assert (< 0 len@8@01))
; [eval] |cr| == len
; [eval] |cr|
(pop) ; 3
(push) ; 3
; [else-branch: 14 | !(0 < len@8@01)]
(assert (not (< 0 len@8@01)))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert (=> (< 0 len@8@01) (= (Seq_length cr@11@01) len@8@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))
  $Snap.unit))
; [eval] (forall j: Int, k: Int :: { cr[j], cr[k] } 0 <= j && (j < |cr| && (0 <= k && (k < |cr| && j != k))) ==> cr[j] != cr[k])
(declare-const j@23@01 Int)
(declare-const k@24@01 Int)
(push) ; 2
; [eval] 0 <= j && (j < |cr| && (0 <= k && (k < |cr| && j != k))) ==> cr[j] != cr[k]
; [eval] 0 <= j && (j < |cr| && (0 <= k && (k < |cr| && j != k)))
; [eval] 0 <= j
(push) ; 3
; [then-branch: 15 | !(0 <= j@23@01) | live]
; [else-branch: 15 | 0 <= j@23@01 | live]
(push) ; 4
; [then-branch: 15 | !(0 <= j@23@01)]
(assert (not (<= 0 j@23@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 15 | 0 <= j@23@01]
(assert (<= 0 j@23@01))
; [eval] j < |cr|
; [eval] |cr|
(push) ; 5
; [then-branch: 16 | !(j@23@01 < |cr@11@01|) | live]
; [else-branch: 16 | j@23@01 < |cr@11@01| | live]
(push) ; 6
; [then-branch: 16 | !(j@23@01 < |cr@11@01|)]
(assert (not (< j@23@01 (Seq_length cr@11@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 16 | j@23@01 < |cr@11@01|]
(assert (< j@23@01 (Seq_length cr@11@01)))
; [eval] 0 <= k
(push) ; 7
; [then-branch: 17 | !(0 <= k@24@01) | live]
; [else-branch: 17 | 0 <= k@24@01 | live]
(push) ; 8
; [then-branch: 17 | !(0 <= k@24@01)]
(assert (not (<= 0 k@24@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 17 | 0 <= k@24@01]
(assert (<= 0 k@24@01))
; [eval] k < |cr|
; [eval] |cr|
(push) ; 9
; [then-branch: 18 | !(k@24@01 < |cr@11@01|) | live]
; [else-branch: 18 | k@24@01 < |cr@11@01| | live]
(push) ; 10
; [then-branch: 18 | !(k@24@01 < |cr@11@01|)]
(assert (not (< k@24@01 (Seq_length cr@11@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 18 | k@24@01 < |cr@11@01|]
(assert (< k@24@01 (Seq_length cr@11@01)))
; [eval] j != k
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< k@24@01 (Seq_length cr@11@01)) (not (< k@24@01 (Seq_length cr@11@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@24@01)
  (and
    (<= 0 k@24@01)
    (or
      (< k@24@01 (Seq_length cr@11@01))
      (not (< k@24@01 (Seq_length cr@11@01)))))))
(assert (or (<= 0 k@24@01) (not (<= 0 k@24@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@23@01 (Seq_length cr@11@01))
  (and
    (< j@23@01 (Seq_length cr@11@01))
    (=>
      (<= 0 k@24@01)
      (and
        (<= 0 k@24@01)
        (or
          (< k@24@01 (Seq_length cr@11@01))
          (not (< k@24@01 (Seq_length cr@11@01))))))
    (or (<= 0 k@24@01) (not (<= 0 k@24@01))))))
(assert (or (< j@23@01 (Seq_length cr@11@01)) (not (< j@23@01 (Seq_length cr@11@01)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@23@01)
  (and
    (<= 0 j@23@01)
    (=>
      (< j@23@01 (Seq_length cr@11@01))
      (and
        (< j@23@01 (Seq_length cr@11@01))
        (=>
          (<= 0 k@24@01)
          (and
            (<= 0 k@24@01)
            (or
              (< k@24@01 (Seq_length cr@11@01))
              (not (< k@24@01 (Seq_length cr@11@01))))))
        (or (<= 0 k@24@01) (not (<= 0 k@24@01)))))
    (or
      (< j@23@01 (Seq_length cr@11@01))
      (not (< j@23@01 (Seq_length cr@11@01)))))))
(assert (or (<= 0 j@23@01) (not (<= 0 j@23@01))))
(push) ; 3
; [then-branch: 19 | 0 <= j@23@01 && j@23@01 < |cr@11@01| && 0 <= k@24@01 && k@24@01 < |cr@11@01| && j@23@01 != k@24@01 | live]
; [else-branch: 19 | !(0 <= j@23@01 && j@23@01 < |cr@11@01| && 0 <= k@24@01 && k@24@01 < |cr@11@01| && j@23@01 != k@24@01) | live]
(push) ; 4
; [then-branch: 19 | 0 <= j@23@01 && j@23@01 < |cr@11@01| && 0 <= k@24@01 && k@24@01 < |cr@11@01| && j@23@01 != k@24@01]
(assert (and
  (<= 0 j@23@01)
  (and
    (< j@23@01 (Seq_length cr@11@01))
    (and
      (<= 0 k@24@01)
      (and (< k@24@01 (Seq_length cr@11@01)) (not (= j@23@01 k@24@01)))))))
; [eval] cr[j] != cr[k]
; [eval] cr[j]
(push) ; 5
(assert (not (>= j@23@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] cr[k]
(push) ; 5
(assert (not (>= k@24@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 19 | !(0 <= j@23@01 && j@23@01 < |cr@11@01| && 0 <= k@24@01 && k@24@01 < |cr@11@01| && j@23@01 != k@24@01)]
(assert (not
  (and
    (<= 0 j@23@01)
    (and
      (< j@23@01 (Seq_length cr@11@01))
      (and
        (<= 0 k@24@01)
        (and (< k@24@01 (Seq_length cr@11@01)) (not (= j@23@01 k@24@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@23@01)
    (and
      (< j@23@01 (Seq_length cr@11@01))
      (and
        (<= 0 k@24@01)
        (and (< k@24@01 (Seq_length cr@11@01)) (not (= j@23@01 k@24@01))))))
  (and
    (<= 0 j@23@01)
    (< j@23@01 (Seq_length cr@11@01))
    (<= 0 k@24@01)
    (< k@24@01 (Seq_length cr@11@01))
    (not (= j@23@01 k@24@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@23@01)
      (and
        (< j@23@01 (Seq_length cr@11@01))
        (and
          (<= 0 k@24@01)
          (and (< k@24@01 (Seq_length cr@11@01)) (not (= j@23@01 k@24@01)))))))
  (and
    (<= 0 j@23@01)
    (and
      (< j@23@01 (Seq_length cr@11@01))
      (and
        (<= 0 k@24@01)
        (and (< k@24@01 (Seq_length cr@11@01)) (not (= j@23@01 k@24@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@23@01 Int) (k@24@01 Int)) (!
  (and
    (=>
      (<= 0 j@23@01)
      (and
        (<= 0 j@23@01)
        (=>
          (< j@23@01 (Seq_length cr@11@01))
          (and
            (< j@23@01 (Seq_length cr@11@01))
            (=>
              (<= 0 k@24@01)
              (and
                (<= 0 k@24@01)
                (or
                  (< k@24@01 (Seq_length cr@11@01))
                  (not (< k@24@01 (Seq_length cr@11@01))))))
            (or (<= 0 k@24@01) (not (<= 0 k@24@01)))))
        (or
          (< j@23@01 (Seq_length cr@11@01))
          (not (< j@23@01 (Seq_length cr@11@01))))))
    (or (<= 0 j@23@01) (not (<= 0 j@23@01)))
    (=>
      (and
        (<= 0 j@23@01)
        (and
          (< j@23@01 (Seq_length cr@11@01))
          (and
            (<= 0 k@24@01)
            (and (< k@24@01 (Seq_length cr@11@01)) (not (= j@23@01 k@24@01))))))
      (and
        (<= 0 j@23@01)
        (< j@23@01 (Seq_length cr@11@01))
        (<= 0 k@24@01)
        (< k@24@01 (Seq_length cr@11@01))
        (not (= j@23@01 k@24@01))))
    (or
      (not
        (and
          (<= 0 j@23@01)
          (and
            (< j@23@01 (Seq_length cr@11@01))
            (and
              (<= 0 k@24@01)
              (and (< k@24@01 (Seq_length cr@11@01)) (not (= j@23@01 k@24@01)))))))
      (and
        (<= 0 j@23@01)
        (and
          (< j@23@01 (Seq_length cr@11@01))
          (and
            (<= 0 k@24@01)
            (and (< k@24@01 (Seq_length cr@11@01)) (not (= j@23@01 k@24@01))))))))
  :pattern ((Seq_index cr@11@01 j@23@01) (Seq_index cr@11@01 k@24@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopE1.vpr@68@12@68@106-aux|)))
(assert (forall ((j@23@01 Int) (k@24@01 Int)) (!
  (=>
    (and
      (<= 0 j@23@01)
      (and
        (< j@23@01 (Seq_length cr@11@01))
        (and
          (<= 0 k@24@01)
          (and (< k@24@01 (Seq_length cr@11@01)) (not (= j@23@01 k@24@01))))))
    (not (= (Seq_index cr@11@01 j@23@01) (Seq_index cr@11@01 k@24@01))))
  :pattern ((Seq_index cr@11@01 j@23@01) (Seq_index cr@11@01 k@24@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopE1.vpr@68@12@68@106|)))
(declare-const i@25@01 Int)
(push) ; 2
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 3
; [then-branch: 20 | !(0 <= i@25@01) | live]
; [else-branch: 20 | 0 <= i@25@01 | live]
(push) ; 4
; [then-branch: 20 | !(0 <= i@25@01)]
(assert (not (<= 0 i@25@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 20 | 0 <= i@25@01]
(assert (<= 0 i@25@01))
; [eval] i < len
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@25@01) (not (<= 0 i@25@01))))
(assert (and (<= 0 i@25@01) (< i@25@01 len@8@01)))
; [eval] cr[i]
(push) ; 3
(assert (not (>= i@25@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@25@01 (Seq_length cr@11@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@26@01 ($Ref) Int)
(declare-fun img@27@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@25@01 Int)) (!
  (=>
    (and (<= 0 i@25@01) (< i@25@01 len@8@01))
    (or (<= 0 i@25@01) (not (<= 0 i@25@01))))
  :pattern ((Seq_index cr@11@01 i@25@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@25@01 Int) (i2@25@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@25@01) (< i1@25@01 len@8@01))
      (and (<= 0 i2@25@01) (< i2@25@01 len@8@01))
      (= (Seq_index cr@11@01 i1@25@01) (Seq_index cr@11@01 i2@25@01)))
    (= i1@25@01 i2@25@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@25@01 Int)) (!
  (=>
    (and (<= 0 i@25@01) (< i@25@01 len@8@01))
    (and
      (= (inv@26@01 (Seq_index cr@11@01 i@25@01)) i@25@01)
      (img@27@01 (Seq_index cr@11@01 i@25@01))))
  :pattern ((Seq_index cr@11@01 i@25@01))
  :qid |quant-u-16726|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@27@01 r) (and (<= 0 (inv@26@01 r)) (< (inv@26@01 r) len@8@01)))
    (= (Seq_index cr@11@01 (inv@26@01 r)) r))
  :pattern ((inv@26@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@25@01 Int)) (!
  (=>
    (and (<= 0 i@25@01) (< i@25@01 len@8@01))
    (not (= (Seq_index cr@11@01 i@25@01) $Ref.null)))
  :pattern ((Seq_index cr@11@01 i@25@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index cr@11@01 i@25@01) (Seq_index br@10@01 i@20@01))
    (=
      (and (img@27@01 r) (and (<= 0 (inv@26@01 r)) (< (inv@26@01 r) len@8@01)))
      (and (img@22@01 r) (and (<= 0 (inv@21@01 r)) (< (inv@21@01 r) len@8@01)))))
  
  :qid |quant-u-16727|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index cr@11@01 i@25@01) (Seq_index ar@9@01 i@15@01))
    (=
      (and (img@27@01 r) (and (<= 0 (inv@26@01 r)) (< (inv@26@01 r) len@8@01)))
      (and (img@17@01 r) (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))))
  
  :qid |quant-u-16728|))))
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
(declare-const $t@28@01 $Snap)
(assert (= $t@28@01 ($Snap.combine ($Snap.first $t@28@01) ($Snap.second $t@28@01))))
(assert (= ($Snap.first $t@28@01) $Snap.unit))
; [eval] 0 < len ==> |ar| == len
; [eval] 0 < len
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (< 0 len@8@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< 0 len@8@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 21 | 0 < len@8@01 | live]
; [else-branch: 21 | !(0 < len@8@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 21 | 0 < len@8@01]
(assert (< 0 len@8@01))
; [eval] |ar| == len
; [eval] |ar|
(pop) ; 4
(push) ; 4
; [else-branch: 21 | !(0 < len@8@01)]
(assert (not (< 0 len@8@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=
  ($Snap.second $t@28@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@28@01))
    ($Snap.second ($Snap.second $t@28@01)))))
(declare-const i@29@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 22 | !(0 <= i@29@01) | live]
; [else-branch: 22 | 0 <= i@29@01 | live]
(push) ; 5
; [then-branch: 22 | !(0 <= i@29@01)]
(assert (not (<= 0 i@29@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 22 | 0 <= i@29@01]
(assert (<= 0 i@29@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@29@01) (not (<= 0 i@29@01))))
(assert (and (<= 0 i@29@01) (< i@29@01 len@8@01)))
; [eval] ar[i]
(push) ; 4
(assert (not (>= i@29@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@29@01 (Seq_length ar@9@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@30@01 ($Ref) Int)
(declare-fun img@31@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@29@01 Int)) (!
  (=>
    (and (<= 0 i@29@01) (< i@29@01 len@8@01))
    (or (<= 0 i@29@01) (not (<= 0 i@29@01))))
  :pattern ((Seq_index ar@9@01 i@29@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@29@01 Int) (i2@29@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@29@01) (< i1@29@01 len@8@01))
      (and (<= 0 i2@29@01) (< i2@29@01 len@8@01))
      (= (Seq_index ar@9@01 i1@29@01) (Seq_index ar@9@01 i2@29@01)))
    (= i1@29@01 i2@29@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@29@01 Int)) (!
  (=>
    (and (<= 0 i@29@01) (< i@29@01 len@8@01))
    (and
      (= (inv@30@01 (Seq_index ar@9@01 i@29@01)) i@29@01)
      (img@31@01 (Seq_index ar@9@01 i@29@01))))
  :pattern ((Seq_index ar@9@01 i@29@01))
  :qid |quant-u-16730|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) len@8@01)))
    (= (Seq_index ar@9@01 (inv@30@01 r)) r))
  :pattern ((inv@30@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@29@01 Int)) (!
  (=>
    (and (<= 0 i@29@01) (< i@29@01 len@8@01))
    (not (= (Seq_index ar@9@01 i@29@01) $Ref.null)))
  :pattern ((Seq_index ar@9@01 i@29@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second $t@28@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@28@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@28@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@28@01))) $Snap.unit))
; [eval] 0 < len ==> |br| == len
; [eval] 0 < len
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (< 0 len@8@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< 0 len@8@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 23 | 0 < len@8@01 | live]
; [else-branch: 23 | !(0 < len@8@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 23 | 0 < len@8@01]
(assert (< 0 len@8@01))
; [eval] |br| == len
; [eval] |br|
(pop) ; 4
(push) ; 4
; [else-branch: 23 | !(0 < len@8@01)]
(assert (not (< 0 len@8@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@28@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@28@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@28@01)))))))
(declare-const i@32@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 24 | !(0 <= i@32@01) | live]
; [else-branch: 24 | 0 <= i@32@01 | live]
(push) ; 5
; [then-branch: 24 | !(0 <= i@32@01)]
(assert (not (<= 0 i@32@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 24 | 0 <= i@32@01]
(assert (<= 0 i@32@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@32@01) (not (<= 0 i@32@01))))
(assert (and (<= 0 i@32@01) (< i@32@01 len@8@01)))
; [eval] br[i]
(push) ; 4
(assert (not (>= i@32@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@32@01 (Seq_length br@10@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@33@01 ($Ref) Int)
(declare-fun img@34@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@32@01 Int)) (!
  (=>
    (and (<= 0 i@32@01) (< i@32@01 len@8@01))
    (or (<= 0 i@32@01) (not (<= 0 i@32@01))))
  :pattern ((Seq_index br@10@01 i@32@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@32@01 Int) (i2@32@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@32@01) (< i1@32@01 len@8@01))
      (and (<= 0 i2@32@01) (< i2@32@01 len@8@01))
      (= (Seq_index br@10@01 i1@32@01) (Seq_index br@10@01 i2@32@01)))
    (= i1@32@01 i2@32@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@32@01 Int)) (!
  (=>
    (and (<= 0 i@32@01) (< i@32@01 len@8@01))
    (and
      (= (inv@33@01 (Seq_index br@10@01 i@32@01)) i@32@01)
      (img@34@01 (Seq_index br@10@01 i@32@01))))
  :pattern ((Seq_index br@10@01 i@32@01))
  :qid |quant-u-16732|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) len@8@01)))
    (= (Seq_index br@10@01 (inv@33@01 r)) r))
  :pattern ((inv@33@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@32@01 Int)) (!
  (=>
    (and (<= 0 i@32@01) (< i@32@01 len@8@01))
    (not (= (Seq_index br@10@01 i@32@01) $Ref.null)))
  :pattern ((Seq_index br@10@01 i@32@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index br@10@01 i@32@01) (Seq_index ar@9@01 i@29@01))
    (=
      (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) len@8@01)))
      (and (img@31@01 r) (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) len@8@01)))))
  
  :qid |quant-u-16733|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@28@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@28@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@28@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@28@01)))))
  $Snap.unit))
; [eval] 0 < len ==> |cr| == len
; [eval] 0 < len
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (< 0 len@8@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< 0 len@8@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 25 | 0 < len@8@01 | live]
; [else-branch: 25 | !(0 < len@8@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 25 | 0 < len@8@01]
(assert (< 0 len@8@01))
; [eval] |cr| == len
; [eval] |cr|
(pop) ; 4
(push) ; 4
; [else-branch: 25 | !(0 < len@8@01)]
(assert (not (< 0 len@8@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@28@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@28@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@28@01)))))))))
(declare-const i@35@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 26 | !(0 <= i@35@01) | live]
; [else-branch: 26 | 0 <= i@35@01 | live]
(push) ; 5
; [then-branch: 26 | !(0 <= i@35@01)]
(assert (not (<= 0 i@35@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 26 | 0 <= i@35@01]
(assert (<= 0 i@35@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@35@01) (not (<= 0 i@35@01))))
(assert (and (<= 0 i@35@01) (< i@35@01 len@8@01)))
; [eval] cr[i]
(push) ; 4
(assert (not (>= i@35@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@35@01 (Seq_length cr@11@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@36@01 ($Ref) Int)
(declare-fun img@37@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@35@01 Int)) (!
  (=>
    (and (<= 0 i@35@01) (< i@35@01 len@8@01))
    (or (<= 0 i@35@01) (not (<= 0 i@35@01))))
  :pattern ((Seq_index cr@11@01 i@35@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@35@01 Int) (i2@35@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@35@01) (< i1@35@01 len@8@01))
      (and (<= 0 i2@35@01) (< i2@35@01 len@8@01))
      (= (Seq_index cr@11@01 i1@35@01) (Seq_index cr@11@01 i2@35@01)))
    (= i1@35@01 i2@35@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@35@01 Int)) (!
  (=>
    (and (<= 0 i@35@01) (< i@35@01 len@8@01))
    (and
      (= (inv@36@01 (Seq_index cr@11@01 i@35@01)) i@35@01)
      (img@37@01 (Seq_index cr@11@01 i@35@01))))
  :pattern ((Seq_index cr@11@01 i@35@01))
  :qid |quant-u-16735|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@37@01 r) (and (<= 0 (inv@36@01 r)) (< (inv@36@01 r) len@8@01)))
    (= (Seq_index cr@11@01 (inv@36@01 r)) r))
  :pattern ((inv@36@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@35@01 Int)) (!
  (=>
    (and (<= 0 i@35@01) (< i@35@01 len@8@01))
    (not (= (Seq_index cr@11@01 i@35@01) $Ref.null)))
  :pattern ((Seq_index cr@11@01 i@35@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index cr@11@01 i@35@01) (Seq_index br@10@01 i@32@01))
    (=
      (and (img@37@01 r) (and (<= 0 (inv@36@01 r)) (< (inv@36@01 r) len@8@01)))
      (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) len@8@01)))))
  
  :qid |quant-u-16736|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index cr@11@01 i@35@01) (Seq_index ar@9@01 i@29@01))
    (=
      (and (img@37@01 r) (and (<= 0 (inv@36@01 r)) (< (inv@36@01 r) len@8@01)))
      (and (img@31@01 r) (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) len@8@01)))))
  
  :qid |quant-u-16737|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@28@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@28@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@28@01))))))))))
(declare-const i@38@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (0 <= 0 ? 1 : 0) - 1 <= i && i < len - 1
; [eval] (0 <= 0 ? 1 : 0) - 1 <= i
; [eval] (0 <= 0 ? 1 : 0) - 1
; [eval] (0 <= 0 ? 1 : 0)
; [eval] 0 <= 0
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 27 | True | live]
; [else-branch: 27 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 27 | True]
(pop) ; 5
(pop) ; 4
; Joined path conditions
(push) ; 4
; [then-branch: 28 | !(0 <= i@38@01) | live]
; [else-branch: 28 | 0 <= i@38@01 | live]
(push) ; 5
; [then-branch: 28 | !(0 <= i@38@01)]
(assert (not (<= 0 i@38@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 28 | 0 <= i@38@01]
(assert (<= 0 i@38@01))
; [eval] i < len - 1
; [eval] len - 1
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@38@01) (not (<= 0 i@38@01))))
(assert (and (<= 0 i@38@01) (< i@38@01 (- len@8@01 1))))
; [eval] ar[i]
(push) ; 4
(assert (not (>= i@38@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@38@01 (Seq_length ar@9@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@39@01 ($Ref) Int)
(declare-fun img@40@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@38@01 Int)) (!
  (=>
    (and (<= 0 i@38@01) (< i@38@01 (- len@8@01 1)))
    (or (<= 0 i@38@01) (not (<= 0 i@38@01))))
  :pattern ((Seq_index ar@9@01 i@38@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@38@01 Int) (i2@38@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@38@01) (< i1@38@01 (- len@8@01 1)))
      (and (<= 0 i2@38@01) (< i2@38@01 (- len@8@01 1)))
      (= (Seq_index ar@9@01 i1@38@01) (Seq_index ar@9@01 i2@38@01)))
    (= i1@38@01 i2@38@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@38@01 Int)) (!
  (=>
    (and (<= 0 i@38@01) (< i@38@01 (- len@8@01 1)))
    (and
      (= (inv@39@01 (Seq_index ar@9@01 i@38@01)) i@38@01)
      (img@40@01 (Seq_index ar@9@01 i@38@01))))
  :pattern ((Seq_index ar@9@01 i@38@01))
  :qid |quant-u-16739|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@40@01 r)
      (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) (- len@8@01 1))))
    (= (Seq_index ar@9@01 (inv@39@01 r)) r))
  :pattern ((inv@39@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@38@01 Int)) (!
  (=>
    (and (<= 0 i@38@01) (< i@38@01 (- len@8@01 1)))
    (not (= (Seq_index ar@9@01 i@38@01) $Ref.null)))
  :pattern ((Seq_index ar@9@01 i@38@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ar@9@01 i@38@01) (Seq_index cr@11@01 i@35@01))
    (=
      (and
        (img@40@01 r)
        (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) (- len@8@01 1))))
      (and (img@37@01 r) (and (<= 0 (inv@36@01 r)) (< (inv@36@01 r) len@8@01)))))
  
  :qid |quant-u-16740|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ar@9@01 i@38@01) (Seq_index br@10@01 i@32@01))
    (=
      (and
        (img@40@01 r)
        (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) (- len@8@01 1))))
      (and (img@34@01 r) (and (<= 0 (inv@33@01 r)) (< (inv@33@01 r) len@8@01)))))
  
  :qid |quant-u-16741|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ar@9@01 i@38@01) (Seq_index ar@9@01 i@29@01))
    (=
      (and
        (img@40@01 r)
        (and (<= 0 (inv@39@01 r)) (< (inv@39@01 r) (- len@8@01 1))))
      (and (img@31@01 r) (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) len@8@01)))))
  
  :qid |quant-u-16742|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] 0 <= |ar| - 1 && |ar| - 1 < len
; [eval] 0 <= |ar| - 1
; [eval] |ar| - 1
; [eval] |ar|
(set-option :timeout 0)
(push) ; 3
; [then-branch: 29 | !(0 <= |ar@9@01| - 1) | live]
; [else-branch: 29 | 0 <= |ar@9@01| - 1 | live]
(push) ; 4
; [then-branch: 29 | !(0 <= |ar@9@01| - 1)]
(assert (not (<= 0 (- (Seq_length ar@9@01) 1))))
(pop) ; 4
(push) ; 4
; [else-branch: 29 | 0 <= |ar@9@01| - 1]
(assert (<= 0 (- (Seq_length ar@9@01) 1)))
; [eval] |ar| - 1 < len
; [eval] |ar| - 1
; [eval] |ar|
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 (- (Seq_length ar@9@01) 1)) (not (<= 0 (- (Seq_length ar@9@01) 1)))))
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (and (<= 0 (- (Seq_length ar@9@01) 1)) (< (- (Seq_length ar@9@01) 1) len@8@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and (<= 0 (- (Seq_length ar@9@01) 1)) (< (- (Seq_length ar@9@01) 1) len@8@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 30 | 0 <= |ar@9@01| - 1 && |ar@9@01| - 1 < len@8@01 | live]
; [else-branch: 30 | !(0 <= |ar@9@01| - 1 && |ar@9@01| - 1 < len@8@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 30 | 0 <= |ar@9@01| - 1 && |ar@9@01| - 1 < len@8@01]
(assert (and (<= 0 (- (Seq_length ar@9@01) 1)) (< (- (Seq_length ar@9@01) 1) len@8@01)))
; [eval] ar[|ar| - 1]
; [eval] |ar| - 1
; [eval] |ar|
(push) ; 4
(assert (not (>= (- (Seq_length ar@9@01) 1) 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< (- (Seq_length ar@9@01) 1) (Seq_length ar@9@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@41@01 $FVF<Ref__Integer_value>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_Ref__Integer_value (as sm@41@01  $FVF<Ref__Integer_value>) (Seq_index
    ar@9@01
    (- (Seq_length ar@9@01) 1)))
  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@28@01))))))))))
(assert (<=
  $Perm.No
  (ite
    (=
      (Seq_index ar@9@01 (- (Seq_length ar@9@01) 1))
      (Seq_index ar@9@01 (- (Seq_length ar@9@01) 1)))
    (/ (to_real 1) (to_real 2))
    $Perm.No)))
(assert (<=
  (ite
    (=
      (Seq_index ar@9@01 (- (Seq_length ar@9@01) 1))
      (Seq_index ar@9@01 (- (Seq_length ar@9@01) 1)))
    (/ (to_real 1) (to_real 2))
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (Seq_index ar@9@01 (- (Seq_length ar@9@01) 1))
    (Seq_index ar@9@01 (- (Seq_length ar@9@01) 1)))
  (not (= (Seq_index ar@9@01 (- (Seq_length ar@9@01) 1)) $Ref.null))))
(pop) ; 3
(push) ; 3
; [else-branch: 30 | !(0 <= |ar@9@01| - 1 && |ar@9@01| - 1 < len@8@01)]
(assert (not
  (and (<= 0 (- (Seq_length ar@9@01) 1)) (< (- (Seq_length ar@9@01) 1) len@8@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@28@01)))))))
  $Snap.unit))
(pop) ; 3
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- Ref__send_body_146 ----------
(declare-const diz@42@01 $Ref)
(declare-const current_thread_id@43@01 Int)
(declare-const ar@44@01 Seq<$Ref>)
(declare-const i@45@01 Int)
(declare-const diz@46@01 $Ref)
(declare-const current_thread_id@47@01 Int)
(declare-const ar@48@01 Seq<$Ref>)
(declare-const i@49@01 Int)
(push) ; 1
(declare-const $t@50@01 $Snap)
(assert (= $t@50@01 ($Snap.combine ($Snap.first $t@50@01) ($Snap.second $t@50@01))))
(assert (= ($Snap.first $t@50@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@46@01 $Ref.null)))
(assert (=
  ($Snap.second $t@50@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@50@01))
    ($Snap.second ($Snap.second $t@50@01)))))
(assert (= ($Snap.first ($Snap.second $t@50@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@47@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@50@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@50@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@50@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@50@01))) $Snap.unit))
; [eval] 0 <= i
(assert (<= 0 i@49@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@50@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@50@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@50@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@50@01))))
  $Snap.unit))
; [eval] i < |ar|
; [eval] |ar|
(assert (< i@49@01 (Seq_length ar@48@01)))
; [eval] ar[i]
(push) ; 2
(assert (not (>= i@49@01 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index ar@48@01 i@49@01) $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- Ref__recv_body_148 ----------
(declare-const diz@51@01 $Ref)
(declare-const current_thread_id@52@01 Int)
(declare-const ar@53@01 Seq<$Ref>)
(declare-const i@54@01 Int)
(declare-const diz@55@01 $Ref)
(declare-const current_thread_id@56@01 Int)
(declare-const ar@57@01 Seq<$Ref>)
(declare-const i@58@01 Int)
(push) ; 1
(declare-const $t@59@01 $Snap)
(assert (= $t@59@01 ($Snap.combine ($Snap.first $t@59@01) ($Snap.second $t@59@01))))
(assert (= ($Snap.first $t@59@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@55@01 $Ref.null)))
(assert (=
  ($Snap.second $t@59@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@59@01))
    ($Snap.second ($Snap.second $t@59@01)))))
(assert (= ($Snap.first ($Snap.second $t@59@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@56@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@59@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@59@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@59@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@59@01))) $Snap.unit))
; [eval] 0 < i
(assert (< 0 i@58@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@59@01))) $Snap.unit))
; [eval] i <= |ar|
; [eval] |ar|
(assert (<= i@58@01 (Seq_length ar@57@01)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
; [eval] ar[i - 1]
; [eval] i - 1
(push) ; 3
(assert (not (>= (- i@58@01 1) 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< (- i@58@01 1) (Seq_length ar@57@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $t@60@01 Int)
(assert (not (= (Seq_index ar@57@01 (- i@58@01 1)) $Ref.null)))
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- Ref__loop_body_54 ----------
(declare-const diz@61@01 $Ref)
(declare-const current_thread_id@62@01 Int)
(declare-const len@63@01 Int)
(declare-const ar@64@01 Seq<$Ref>)
(declare-const br@65@01 Seq<$Ref>)
(declare-const i@66@01 Int)
(declare-const cr@67@01 Seq<$Ref>)
(declare-const diz@68@01 $Ref)
(declare-const current_thread_id@69@01 Int)
(declare-const len@70@01 Int)
(declare-const ar@71@01 Seq<$Ref>)
(declare-const br@72@01 Seq<$Ref>)
(declare-const i@73@01 Int)
(declare-const cr@74@01 Seq<$Ref>)
(push) ; 1
(declare-const $t@75@01 $Snap)
(assert (= $t@75@01 ($Snap.combine ($Snap.first $t@75@01) ($Snap.second $t@75@01))))
(assert (= ($Snap.first $t@75@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@68@01 $Ref.null)))
(assert (=
  ($Snap.second $t@75@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@75@01))
    ($Snap.second ($Snap.second $t@75@01)))))
(assert (= ($Snap.first ($Snap.second $t@75@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@69@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@75@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@75@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@75@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@75@01))) $Snap.unit))
; [eval] 0 <= i
(assert (<= 0 i@73@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@75@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@75@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@75@01))))
  $Snap.unit))
; [eval] i < len
(assert (< i@73@01 len@70@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01)))))
  $Snap.unit))
; [eval] |ar| == len + 1
; [eval] |ar|
; [eval] len + 1
(assert (= (Seq_length ar@71@01) (+ len@70@01 1)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01)))))))))
; [eval] ar[i]
(push) ; 2
(assert (not (>= i@73@01 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(assert (not (< i@73@01 (Seq_length ar@71@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index ar@71@01 i@73@01) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01)))))))
  $Snap.unit))
; [eval] |br| == len
; [eval] |br|
(assert (= (Seq_length br@72@01) len@70@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01)))))))))))
; [eval] br[i]
(push) ; 2
(assert (not (>= i@73@01 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(assert (not (< i@73@01 (Seq_length br@72@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(set-option :timeout 10)
(assert (not (= (Seq_index ar@71@01 i@73@01) (Seq_index br@72@01 i@73@01))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index br@72@01 i@73@01) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01)))))))))
  $Snap.unit))
; [eval] |cr| == len
; [eval] |cr|
(assert (= (Seq_length cr@74@01) len@70@01))
; [eval] cr[i]
(set-option :timeout 0)
(push) ; 2
(assert (not (>= i@73@01 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(assert (not (< i@73@01 (Seq_length cr@74@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(set-option :timeout 10)
(assert (not (= (Seq_index br@72@01 i@73@01) (Seq_index cr@74@01 i@73@01))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= (Seq_index ar@71@01 i@73@01) (Seq_index cr@74@01 i@73@01))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index cr@74@01 i@73@01) $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@76@01 $Snap)
(assert (= $t@76@01 ($Snap.combine ($Snap.first $t@76@01) ($Snap.second $t@76@01))))
(assert (= ($Snap.first $t@76@01) $Snap.unit))
; [eval] 0 <= i
(assert (=
  ($Snap.second $t@76@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@76@01))
    ($Snap.second ($Snap.second $t@76@01)))))
(assert (= ($Snap.first ($Snap.second $t@76@01)) $Snap.unit))
; [eval] i < len
(assert (=
  ($Snap.second ($Snap.second $t@76@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@76@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@76@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@76@01))) $Snap.unit))
; [eval] |ar| == len + 1
; [eval] |ar|
; [eval] len + 1
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@76@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@76@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@76@01)))))))
; [eval] ar[i]
(push) ; 3
(assert (not (>= i@73@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@73@01 (Seq_length ar@71@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@76@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@76@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@76@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@76@01)))))
  $Snap.unit))
; [eval] |br| == len
; [eval] |br|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@76@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@76@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@76@01)))))))))
; [eval] br[i]
(push) ; 3
(assert (not (>= i@73@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@73@01 (Seq_length br@72@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (Seq_index ar@71@01 i@73@01) (Seq_index br@72@01 i@73@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@76@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@76@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@76@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@76@01)))))))
  $Snap.unit))
; [eval] |cr| == len
; [eval] |cr|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@76@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@76@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@76@01)))))))))))
; [eval] cr[i]
(set-option :timeout 0)
(push) ; 3
(assert (not (>= i@73@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@73@01 (Seq_length cr@74@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (Seq_index br@72@01 i@73@01) (Seq_index cr@74@01 i@73@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (Seq_index ar@71@01 i@73@01) (Seq_index cr@74@01 i@73@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@76@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@76@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@76@01))))))))))))
; [eval] i > 0
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (> i@73@01 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (> i@73@01 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 31 | i@73@01 > 0 | live]
; [else-branch: 31 | !(i@73@01 > 0) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 31 | i@73@01 > 0]
(assert (> i@73@01 0))
; [eval] ar[i - 1]
; [eval] i - 1
(push) ; 4
(assert (not (>= (- i@73@01 1) 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< (- i@73@01 1) (Seq_length ar@71@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index cr@74@01 i@73@01) (Seq_index ar@71@01 (- i@73@01 1)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index br@72@01 i@73@01) (Seq_index ar@71@01 (- i@73@01 1)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index ar@71@01 i@73@01) (Seq_index ar@71@01 (- i@73@01 1)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index ar@71@01 (- i@73@01 1)) $Ref.null)))
; [eval] i == |ar| - 1
; [eval] |ar| - 1
; [eval] |ar|
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= i@73@01 (- (Seq_length ar@71@01) 1)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 32 | i@73@01 == |ar@71@01| - 1 | dead]
; [else-branch: 32 | i@73@01 != |ar@71@01| - 1 | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 32 | i@73@01 != |ar@71@01| - 1]
(assert (not (= i@73@01 (- (Seq_length ar@71@01) 1))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@76@01)))))))))
  $Snap.unit))
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 31 | !(i@73@01 > 0)]
(assert (not (> i@73@01 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@76@01)))))))))
  $Snap.unit))
; [eval] i == |ar| - 1
; [eval] |ar| - 1
; [eval] |ar|
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= i@73@01 (- (Seq_length ar@71@01) 1)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 33 | i@73@01 == |ar@71@01| - 1 | dead]
; [else-branch: 33 | i@73@01 != |ar@71@01| - 1 | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 33 | i@73@01 != |ar@71@01| - 1]
(assert (not (= i@73@01 (- (Seq_length ar@71@01) 1))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@76@01)))))))))
  $Snap.unit))
(pop) ; 4
(pop) ; 3
(pop) ; 2
(push) ; 2
; [exec]
; var __flatten_4: Ref
(declare-const __flatten_4@77@01 $Ref)
; [exec]
; var __flatten_5: Int
(declare-const __flatten_5@78@01 Int)
; [exec]
; var __flatten_6: Ref
(declare-const __flatten_6@79@01 $Ref)
; [exec]
; var __flatten_9: Ref
(declare-const __flatten_9@80@01 $Ref)
; [exec]
; var __flatten_10: Int
(declare-const __flatten_10@81@01 Int)
; [exec]
; var __flatten_11: Ref
(declare-const __flatten_11@82@01 $Ref)
; [exec]
; __flatten_4 := ar[i]
; [eval] ar[i]
(push) ; 3
(assert (not (>= i@73@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@73@01 (Seq_length ar@71@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_4@83@01 $Ref)
(assert (= __flatten_4@83@01 (Seq_index ar@71@01 i@73@01)))
; [exec]
; __flatten_6 := br[i]
; [eval] br[i]
(push) ; 3
(assert (not (>= i@73@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@73@01 (Seq_length br@72@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_6@84@01 $Ref)
(assert (= __flatten_6@84@01 (Seq_index br@72@01 i@73@01)))
; [exec]
; __flatten_5 := __flatten_6.Ref__Integer_value + 1
; [eval] __flatten_6.Ref__Integer_value + 1
(push) ; 3
(set-option :timeout 10)
(assert (not (= (Seq_index cr@74@01 i@73@01) __flatten_6@84@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (Seq_index br@72@01 i@73@01) __flatten_6@84@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_5@85@01 Int)
(assert (=
  __flatten_5@85@01
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01)))))))))
    1)))
; [exec]
; __flatten_4.Ref__Integer_value := __flatten_5
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (Seq_index cr@74@01 i@73@01) __flatten_4@83@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (Seq_index br@72@01 i@73@01) __flatten_4@83@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (Seq_index ar@71@01 i@73@01) __flatten_4@83@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (Seq_index cr@74@01 i@73@01) __flatten_4@83@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (Seq_index br@72@01 i@73@01) __flatten_4@83@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= __flatten_4@83@01 $Ref.null)))
; [eval] i < len - 1
; [eval] len - 1
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< i@73@01 (- len@70@01 1)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< i@73@01 (- len@70@01 1))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 34 | i@73@01 < len@70@01 - 1 | live]
; [else-branch: 34 | !(i@73@01 < len@70@01 - 1) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 34 | i@73@01 < len@70@01 - 1]
(assert (< i@73@01 (- len@70@01 1)))
; [exec]
; Ref__send_body_146(diz, current_thread_id, ar, i)
; [eval] diz != null
; [eval] current_thread_id >= 0
; [eval] 0 <= i
; [eval] i < |ar|
; [eval] |ar|
(push) ; 4
(assert (not (< i@73@01 (Seq_length ar@71@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< i@73@01 (Seq_length ar@71@01)))
; [eval] ar[i]
(push) ; 4
(assert (not (>= i@73@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] i > 0
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (> i@73@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (> i@73@01 0)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 35 | i@73@01 > 0 | live]
; [else-branch: 35 | !(i@73@01 > 0) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 35 | i@73@01 > 0]
(assert (> i@73@01 0))
; [exec]
; Ref__recv_body_148(diz, current_thread_id, ar, i)
; [eval] diz != null
; [eval] current_thread_id >= 0
; [eval] 0 < i
(push) ; 5
(assert (not (< 0 i@73@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (< 0 i@73@01))
; [eval] i <= |ar|
; [eval] |ar|
(push) ; 5
(assert (not (<= i@73@01 (Seq_length ar@71@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (<= i@73@01 (Seq_length ar@71@01)))
; [eval] ar[i - 1]
; [eval] i - 1
(push) ; 5
(assert (not (>= (- i@73@01 1) 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< (- i@73@01 1) (Seq_length ar@71@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $t@86@01 Int)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index cr@74@01 i@73@01) (Seq_index ar@71@01 (- i@73@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index br@72@01 i@73@01) (Seq_index ar@71@01 (- i@73@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= __flatten_4@83@01 (Seq_index ar@71@01 (- i@73@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index ar@71@01 (- i@73@01 1)) $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; __flatten_9 := cr[i]
; [eval] cr[i]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@73@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@73@01 (Seq_length cr@74@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_9@87@01 $Ref)
(assert (= __flatten_9@87@01 (Seq_index cr@74@01 i@73@01)))
; [exec]
; __flatten_11 := ar[i + 1]
; [eval] ar[i + 1]
; [eval] i + 1
(push) ; 5
(assert (not (>= (+ i@73@01 1) 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< (+ i@73@01 1) (Seq_length ar@71@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_11@88@01 $Ref)
(assert (= __flatten_11@88@01 (Seq_index ar@71@01 (+ i@73@01 1))))
; [exec]
; __flatten_10 := __flatten_11.Ref__Integer_value + 2
; [eval] __flatten_11.Ref__Integer_value + 2
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index ar@71@01 (- i@73@01 1)) __flatten_11@88@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index cr@74@01 i@73@01) __flatten_11@88@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index br@72@01 i@73@01) __flatten_11@88@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= __flatten_4@83@01 __flatten_11@88@01)))
(check-sat)
; unknown
(pop) ; 5
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
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index ar@71@01 (- i@73@01 1)) (Seq_index cr@74@01 i@73@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index cr@74@01 i@73@01) (Seq_index br@72@01 i@73@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index ar@71@01 (- i@73@01 1)) (Seq_index br@72@01 i@73@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index br@72@01 i@73@01) __flatten_4@83@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index cr@74@01 i@73@01) __flatten_4@83@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index ar@71@01 (- i@73@01 1)) __flatten_4@83@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (=
    __flatten_5@85@01
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01)))))))))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (=
    __flatten_5@85@01
    ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01))))))))))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= __flatten_5@85@01 $t@86@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01)))))))))
    __flatten_5@85@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01)))))))))
    ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01))))))))))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01)))))))))
    $t@86@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01))))))))))
    __flatten_5@85@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01))))))))))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01)))))))))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01))))))))))
    $t@86@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= $t@86@01 __flatten_5@85@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (=
    $t@86@01
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01)))))))))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (=
    $t@86@01
    ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01))))))))))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (and
  (not (= __flatten_4@83@01 (Seq_index cr@74@01 i@73@01)))
  (not (= (Seq_index br@72@01 i@73@01) (Seq_index cr@74@01 i@73@01)))
  (and
    (not (= (Seq_index cr@74@01 i@73@01) __flatten_4@83@01))
    (not (= (Seq_index cr@74@01 i@73@01) (Seq_index br@72@01 i@73@01)))
    (not (= (Seq_index cr@74@01 i@73@01) (Seq_index ar@71@01 (- i@73@01 1)))))
  (not (= (Seq_index ar@71@01 (- i@73@01 1)) (Seq_index cr@74@01 i@73@01)))))
(assert (and
  (not (= __flatten_4@83@01 (Seq_index br@72@01 i@73@01)))
  (not (= (Seq_index br@72@01 i@73@01) __flatten_4@83@01))))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= __flatten_4@83@01 __flatten_11@88@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index br@72@01 i@73@01) __flatten_11@88@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index cr@74@01 i@73@01) __flatten_11@88@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index ar@71@01 (- i@73@01 1)) __flatten_11@88@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- Ref__guard_check_S1_S2 ----------
(declare-const diz@89@01 $Ref)
(declare-const current_thread_id@90@01 Int)
(declare-const len@91@01 Int)
(declare-const ar@92@01 Seq<$Ref>)
(declare-const br@93@01 Seq<$Ref>)
(declare-const i@94@01 Int)
(declare-const cr@95@01 Seq<$Ref>)
(declare-const diz@96@01 $Ref)
(declare-const current_thread_id@97@01 Int)
(declare-const len@98@01 Int)
(declare-const ar@99@01 Seq<$Ref>)
(declare-const br@100@01 Seq<$Ref>)
(declare-const i@101@01 Int)
(declare-const cr@102@01 Seq<$Ref>)
(push) ; 1
(declare-const $t@103@01 $Snap)
(assert (= $t@103@01 ($Snap.combine ($Snap.first $t@103@01) ($Snap.second $t@103@01))))
(assert (= ($Snap.first $t@103@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@96@01 $Ref.null)))
(assert (=
  ($Snap.second $t@103@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@103@01))
    ($Snap.second ($Snap.second $t@103@01)))))
(assert (= ($Snap.first ($Snap.second $t@103@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@97@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@103@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@103@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@103@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@103@01))) $Snap.unit))
; [eval] 0 <= i
(assert (<= 0 i@101@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@103@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@103@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@103@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@103@01))))
  $Snap.unit))
; [eval] i < len
(assert (< i@101@01 len@98@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@103@01))))
  $Snap.unit))
; [eval] i > 0
(assert (> i@101@01 0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@104@01 $Snap)
(assert (= $t@104@01 ($Snap.combine ($Snap.first $t@104@01) ($Snap.second $t@104@01))))
(assert (= ($Snap.first $t@104@01) $Snap.unit))
; [eval] 1 <= i
(assert (<= 1 i@101@01))
(assert (= ($Snap.second $t@104@01) $Snap.unit))
; [eval] i - 1 < len - 1
; [eval] i - 1
; [eval] len - 1
(assert (< (- i@101@01 1) (- len@98@01 1)))
(pop) ; 2
(push) ; 2
; [eval] 1 <= i
(push) ; 3
(assert (not (<= 1 i@101@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 1 i@101@01))
; [eval] i - 1 < len - 1
; [eval] i - 1
; [eval] len - 1
(push) ; 3
(assert (not (< (- i@101@01 1) (- len@98@01 1))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< (- i@101@01 1) (- len@98@01 1)))
(pop) ; 2
(pop) ; 1
; ---------- Ref__resource_check_S1_S2 ----------
(declare-const diz@105@01 $Ref)
(declare-const current_thread_id@106@01 Int)
(declare-const len@107@01 Int)
(declare-const ar@108@01 Seq<$Ref>)
(declare-const br@109@01 Seq<$Ref>)
(declare-const i@110@01 Int)
(declare-const cr@111@01 Seq<$Ref>)
(declare-const diz@112@01 $Ref)
(declare-const current_thread_id@113@01 Int)
(declare-const len@114@01 Int)
(declare-const ar@115@01 Seq<$Ref>)
(declare-const br@116@01 Seq<$Ref>)
(declare-const i@117@01 Int)
(declare-const cr@118@01 Seq<$Ref>)
(push) ; 1
(declare-const $t@119@01 $Snap)
(assert (= $t@119@01 ($Snap.combine ($Snap.first $t@119@01) ($Snap.second $t@119@01))))
(assert (= ($Snap.first $t@119@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@112@01 $Ref.null)))
(assert (=
  ($Snap.second $t@119@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@119@01))
    ($Snap.second ($Snap.second $t@119@01)))))
(assert (= ($Snap.first ($Snap.second $t@119@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@113@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@119@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@119@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@119@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@119@01))) $Snap.unit))
; [eval] 0 <= i
(assert (<= 0 i@117@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@119@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@119@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@119@01))))
  $Snap.unit))
; [eval] i < len
(assert (< i@117@01 len@114@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))
  $Snap.unit))
; [eval] i - 1 < len - 1
; [eval] i - 1
; [eval] len - 1
(assert (< (- i@117@01 1) (- len@114@01 1)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01))))))
  $Snap.unit))
; [eval] i > 0
(assert (> i@117@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@119@01)))))))
  $Snap.unit))
; [eval] len <= |ar|
; [eval] |ar|
(assert (<= len@114@01 (Seq_length ar@115@01)))
; [eval] ar[i - 1]
; [eval] i - 1
(push) ; 2
(assert (not (>= (- i@117@01 1) 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(assert (not (< (- i@117@01 1) (Seq_length ar@115@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index ar@115@01 (- i@117@01 1)) $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@120@01 $Snap)
(assert (= $t@120@01 ($Snap.combine ($Snap.first $t@120@01) ($Snap.second $t@120@01))))
(assert (= ($Snap.first $t@120@01) $Snap.unit))
; [eval] i - 1 < len - 1
; [eval] i - 1
; [eval] len - 1
; [eval] ar[i - 1]
; [eval] i - 1
(push) ; 3
(assert (not (>= (- i@117@01 1) 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< (- i@117@01 1) (Seq_length ar@115@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(push) ; 2
; [eval] i - 1 < len - 1
; [eval] i - 1
; [eval] len - 1
; [eval] ar[i - 1]
; [eval] i - 1
(push) ; 3
(assert (not (>= (- i@117@01 1) 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< (- i@117@01 1) (Seq_length ar@115@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- Ref__zero_array ----------
(declare-const diz@121@01 $Ref)
(declare-const current_thread_id@122@01 Int)
(declare-const ar@123@01 Seq<$Ref>)
(declare-const br@124@01 Seq<$Ref>)
(declare-const cr@125@01 Seq<$Ref>)
(declare-const len@126@01 Int)
(declare-const diz@127@01 $Ref)
(declare-const current_thread_id@128@01 Int)
(declare-const ar@129@01 Seq<$Ref>)
(declare-const br@130@01 Seq<$Ref>)
(declare-const cr@131@01 Seq<$Ref>)
(declare-const len@132@01 Int)
(push) ; 1
(declare-const $t@133@01 $Snap)
(assert (= $t@133@01 ($Snap.combine ($Snap.first $t@133@01) ($Snap.second $t@133@01))))
(assert (= ($Snap.first $t@133@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@127@01 $Ref.null)))
(assert (=
  ($Snap.second $t@133@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@133@01))
    ($Snap.second ($Snap.second $t@133@01)))))
(assert (= ($Snap.first ($Snap.second $t@133@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@128@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@133@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@133@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@133@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@133@01))) $Snap.unit))
; [eval] |ar| == len
; [eval] |ar|
(assert (= (Seq_length ar@129@01) len@132@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@133@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@133@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@133@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@133@01))))
  $Snap.unit))
; [eval] (forall j: Int, k: Int :: { ar[j], ar[k] } 0 <= j && (j < |ar| && (0 <= k && (k < |ar| && j != k))) ==> ar[j] != ar[k])
(declare-const j@134@01 Int)
(declare-const k@135@01 Int)
(push) ; 2
; [eval] 0 <= j && (j < |ar| && (0 <= k && (k < |ar| && j != k))) ==> ar[j] != ar[k]
; [eval] 0 <= j && (j < |ar| && (0 <= k && (k < |ar| && j != k)))
; [eval] 0 <= j
(push) ; 3
; [then-branch: 36 | !(0 <= j@134@01) | live]
; [else-branch: 36 | 0 <= j@134@01 | live]
(push) ; 4
; [then-branch: 36 | !(0 <= j@134@01)]
(assert (not (<= 0 j@134@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 36 | 0 <= j@134@01]
(assert (<= 0 j@134@01))
; [eval] j < |ar|
; [eval] |ar|
(push) ; 5
; [then-branch: 37 | !(j@134@01 < |ar@129@01|) | live]
; [else-branch: 37 | j@134@01 < |ar@129@01| | live]
(push) ; 6
; [then-branch: 37 | !(j@134@01 < |ar@129@01|)]
(assert (not (< j@134@01 (Seq_length ar@129@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 37 | j@134@01 < |ar@129@01|]
(assert (< j@134@01 (Seq_length ar@129@01)))
; [eval] 0 <= k
(push) ; 7
; [then-branch: 38 | !(0 <= k@135@01) | live]
; [else-branch: 38 | 0 <= k@135@01 | live]
(push) ; 8
; [then-branch: 38 | !(0 <= k@135@01)]
(assert (not (<= 0 k@135@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 38 | 0 <= k@135@01]
(assert (<= 0 k@135@01))
; [eval] k < |ar|
; [eval] |ar|
(push) ; 9
; [then-branch: 39 | !(k@135@01 < |ar@129@01|) | live]
; [else-branch: 39 | k@135@01 < |ar@129@01| | live]
(push) ; 10
; [then-branch: 39 | !(k@135@01 < |ar@129@01|)]
(assert (not (< k@135@01 (Seq_length ar@129@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 39 | k@135@01 < |ar@129@01|]
(assert (< k@135@01 (Seq_length ar@129@01)))
; [eval] j != k
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (< k@135@01 (Seq_length ar@129@01))
  (not (< k@135@01 (Seq_length ar@129@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@135@01)
  (and
    (<= 0 k@135@01)
    (or
      (< k@135@01 (Seq_length ar@129@01))
      (not (< k@135@01 (Seq_length ar@129@01)))))))
(assert (or (<= 0 k@135@01) (not (<= 0 k@135@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@134@01 (Seq_length ar@129@01))
  (and
    (< j@134@01 (Seq_length ar@129@01))
    (=>
      (<= 0 k@135@01)
      (and
        (<= 0 k@135@01)
        (or
          (< k@135@01 (Seq_length ar@129@01))
          (not (< k@135@01 (Seq_length ar@129@01))))))
    (or (<= 0 k@135@01) (not (<= 0 k@135@01))))))
(assert (or
  (< j@134@01 (Seq_length ar@129@01))
  (not (< j@134@01 (Seq_length ar@129@01)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@134@01)
  (and
    (<= 0 j@134@01)
    (=>
      (< j@134@01 (Seq_length ar@129@01))
      (and
        (< j@134@01 (Seq_length ar@129@01))
        (=>
          (<= 0 k@135@01)
          (and
            (<= 0 k@135@01)
            (or
              (< k@135@01 (Seq_length ar@129@01))
              (not (< k@135@01 (Seq_length ar@129@01))))))
        (or (<= 0 k@135@01) (not (<= 0 k@135@01)))))
    (or
      (< j@134@01 (Seq_length ar@129@01))
      (not (< j@134@01 (Seq_length ar@129@01)))))))
(assert (or (<= 0 j@134@01) (not (<= 0 j@134@01))))
(push) ; 3
; [then-branch: 40 | 0 <= j@134@01 && j@134@01 < |ar@129@01| && 0 <= k@135@01 && k@135@01 < |ar@129@01| && j@134@01 != k@135@01 | live]
; [else-branch: 40 | !(0 <= j@134@01 && j@134@01 < |ar@129@01| && 0 <= k@135@01 && k@135@01 < |ar@129@01| && j@134@01 != k@135@01) | live]
(push) ; 4
; [then-branch: 40 | 0 <= j@134@01 && j@134@01 < |ar@129@01| && 0 <= k@135@01 && k@135@01 < |ar@129@01| && j@134@01 != k@135@01]
(assert (and
  (<= 0 j@134@01)
  (and
    (< j@134@01 (Seq_length ar@129@01))
    (and
      (<= 0 k@135@01)
      (and (< k@135@01 (Seq_length ar@129@01)) (not (= j@134@01 k@135@01)))))))
; [eval] ar[j] != ar[k]
; [eval] ar[j]
(push) ; 5
(assert (not (>= j@134@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] ar[k]
(push) ; 5
(assert (not (>= k@135@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 40 | !(0 <= j@134@01 && j@134@01 < |ar@129@01| && 0 <= k@135@01 && k@135@01 < |ar@129@01| && j@134@01 != k@135@01)]
(assert (not
  (and
    (<= 0 j@134@01)
    (and
      (< j@134@01 (Seq_length ar@129@01))
      (and
        (<= 0 k@135@01)
        (and (< k@135@01 (Seq_length ar@129@01)) (not (= j@134@01 k@135@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@134@01)
    (and
      (< j@134@01 (Seq_length ar@129@01))
      (and
        (<= 0 k@135@01)
        (and (< k@135@01 (Seq_length ar@129@01)) (not (= j@134@01 k@135@01))))))
  (and
    (<= 0 j@134@01)
    (< j@134@01 (Seq_length ar@129@01))
    (<= 0 k@135@01)
    (< k@135@01 (Seq_length ar@129@01))
    (not (= j@134@01 k@135@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@134@01)
      (and
        (< j@134@01 (Seq_length ar@129@01))
        (and
          (<= 0 k@135@01)
          (and (< k@135@01 (Seq_length ar@129@01)) (not (= j@134@01 k@135@01)))))))
  (and
    (<= 0 j@134@01)
    (and
      (< j@134@01 (Seq_length ar@129@01))
      (and
        (<= 0 k@135@01)
        (and (< k@135@01 (Seq_length ar@129@01)) (not (= j@134@01 k@135@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@134@01 Int) (k@135@01 Int)) (!
  (and
    (=>
      (<= 0 j@134@01)
      (and
        (<= 0 j@134@01)
        (=>
          (< j@134@01 (Seq_length ar@129@01))
          (and
            (< j@134@01 (Seq_length ar@129@01))
            (=>
              (<= 0 k@135@01)
              (and
                (<= 0 k@135@01)
                (or
                  (< k@135@01 (Seq_length ar@129@01))
                  (not (< k@135@01 (Seq_length ar@129@01))))))
            (or (<= 0 k@135@01) (not (<= 0 k@135@01)))))
        (or
          (< j@134@01 (Seq_length ar@129@01))
          (not (< j@134@01 (Seq_length ar@129@01))))))
    (or (<= 0 j@134@01) (not (<= 0 j@134@01)))
    (=>
      (and
        (<= 0 j@134@01)
        (and
          (< j@134@01 (Seq_length ar@129@01))
          (and
            (<= 0 k@135@01)
            (and (< k@135@01 (Seq_length ar@129@01)) (not (= j@134@01 k@135@01))))))
      (and
        (<= 0 j@134@01)
        (< j@134@01 (Seq_length ar@129@01))
        (<= 0 k@135@01)
        (< k@135@01 (Seq_length ar@129@01))
        (not (= j@134@01 k@135@01))))
    (or
      (not
        (and
          (<= 0 j@134@01)
          (and
            (< j@134@01 (Seq_length ar@129@01))
            (and
              (<= 0 k@135@01)
              (and
                (< k@135@01 (Seq_length ar@129@01))
                (not (= j@134@01 k@135@01)))))))
      (and
        (<= 0 j@134@01)
        (and
          (< j@134@01 (Seq_length ar@129@01))
          (and
            (<= 0 k@135@01)
            (and (< k@135@01 (Seq_length ar@129@01)) (not (= j@134@01 k@135@01))))))))
  :pattern ((Seq_index ar@129@01 j@134@01) (Seq_index ar@129@01 k@135@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopE1.vpr@171@12@171@106-aux|)))
(assert (forall ((j@134@01 Int) (k@135@01 Int)) (!
  (=>
    (and
      (<= 0 j@134@01)
      (and
        (< j@134@01 (Seq_length ar@129@01))
        (and
          (<= 0 k@135@01)
          (and (< k@135@01 (Seq_length ar@129@01)) (not (= j@134@01 k@135@01))))))
    (not (= (Seq_index ar@129@01 j@134@01) (Seq_index ar@129@01 k@135@01))))
  :pattern ((Seq_index ar@129@01 j@134@01) (Seq_index ar@129@01 k@135@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopE1.vpr@171@12@171@106|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@133@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@133@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@133@01))))))))
(declare-const i@136@01 Int)
(push) ; 2
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 3
; [then-branch: 41 | !(0 <= i@136@01) | live]
; [else-branch: 41 | 0 <= i@136@01 | live]
(push) ; 4
; [then-branch: 41 | !(0 <= i@136@01)]
(assert (not (<= 0 i@136@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 41 | 0 <= i@136@01]
(assert (<= 0 i@136@01))
; [eval] i < len
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@136@01) (not (<= 0 i@136@01))))
(assert (and (<= 0 i@136@01) (< i@136@01 len@132@01)))
; [eval] ar[i]
(push) ; 3
(assert (not (>= i@136@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@136@01 (Seq_length ar@129@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@137@01 ($Ref) Int)
(declare-fun img@138@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@136@01 Int)) (!
  (=>
    (and (<= 0 i@136@01) (< i@136@01 len@132@01))
    (or (<= 0 i@136@01) (not (<= 0 i@136@01))))
  :pattern ((Seq_index ar@129@01 i@136@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@136@01 Int) (i2@136@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@136@01) (< i1@136@01 len@132@01))
      (and (<= 0 i2@136@01) (< i2@136@01 len@132@01))
      (= (Seq_index ar@129@01 i1@136@01) (Seq_index ar@129@01 i2@136@01)))
    (= i1@136@01 i2@136@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@136@01 Int)) (!
  (=>
    (and (<= 0 i@136@01) (< i@136@01 len@132@01))
    (and
      (= (inv@137@01 (Seq_index ar@129@01 i@136@01)) i@136@01)
      (img@138@01 (Seq_index ar@129@01 i@136@01))))
  :pattern ((Seq_index ar@129@01 i@136@01))
  :qid |quant-u-16744|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@138@01 r)
      (and (<= 0 (inv@137@01 r)) (< (inv@137@01 r) len@132@01)))
    (= (Seq_index ar@129@01 (inv@137@01 r)) r))
  :pattern ((inv@137@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@136@01 Int)) (!
  (=>
    (and (<= 0 i@136@01) (< i@136@01 len@132@01))
    (not (= (Seq_index ar@129@01 i@136@01) $Ref.null)))
  :pattern ((Seq_index ar@129@01 i@136@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@133@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@133@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@133@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@133@01))))))
  $Snap.unit))
; [eval] |br| == len
; [eval] |br|
(assert (= (Seq_length br@130@01) len@132@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@133@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@133@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@133@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@133@01)))))))
  $Snap.unit))
; [eval] (forall j: Int, k: Int :: { br[j], br[k] } 0 <= j && (j < |br| && (0 <= k && (k < |br| && j != k))) ==> br[j] != br[k])
(declare-const j@139@01 Int)
(declare-const k@140@01 Int)
(push) ; 2
; [eval] 0 <= j && (j < |br| && (0 <= k && (k < |br| && j != k))) ==> br[j] != br[k]
; [eval] 0 <= j && (j < |br| && (0 <= k && (k < |br| && j != k)))
; [eval] 0 <= j
(push) ; 3
; [then-branch: 42 | !(0 <= j@139@01) | live]
; [else-branch: 42 | 0 <= j@139@01 | live]
(push) ; 4
; [then-branch: 42 | !(0 <= j@139@01)]
(assert (not (<= 0 j@139@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 42 | 0 <= j@139@01]
(assert (<= 0 j@139@01))
; [eval] j < |br|
; [eval] |br|
(push) ; 5
; [then-branch: 43 | !(j@139@01 < |br@130@01|) | live]
; [else-branch: 43 | j@139@01 < |br@130@01| | live]
(push) ; 6
; [then-branch: 43 | !(j@139@01 < |br@130@01|)]
(assert (not (< j@139@01 (Seq_length br@130@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 43 | j@139@01 < |br@130@01|]
(assert (< j@139@01 (Seq_length br@130@01)))
; [eval] 0 <= k
(push) ; 7
; [then-branch: 44 | !(0 <= k@140@01) | live]
; [else-branch: 44 | 0 <= k@140@01 | live]
(push) ; 8
; [then-branch: 44 | !(0 <= k@140@01)]
(assert (not (<= 0 k@140@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 44 | 0 <= k@140@01]
(assert (<= 0 k@140@01))
; [eval] k < |br|
; [eval] |br|
(push) ; 9
; [then-branch: 45 | !(k@140@01 < |br@130@01|) | live]
; [else-branch: 45 | k@140@01 < |br@130@01| | live]
(push) ; 10
; [then-branch: 45 | !(k@140@01 < |br@130@01|)]
(assert (not (< k@140@01 (Seq_length br@130@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 45 | k@140@01 < |br@130@01|]
(assert (< k@140@01 (Seq_length br@130@01)))
; [eval] j != k
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (< k@140@01 (Seq_length br@130@01))
  (not (< k@140@01 (Seq_length br@130@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@140@01)
  (and
    (<= 0 k@140@01)
    (or
      (< k@140@01 (Seq_length br@130@01))
      (not (< k@140@01 (Seq_length br@130@01)))))))
(assert (or (<= 0 k@140@01) (not (<= 0 k@140@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@139@01 (Seq_length br@130@01))
  (and
    (< j@139@01 (Seq_length br@130@01))
    (=>
      (<= 0 k@140@01)
      (and
        (<= 0 k@140@01)
        (or
          (< k@140@01 (Seq_length br@130@01))
          (not (< k@140@01 (Seq_length br@130@01))))))
    (or (<= 0 k@140@01) (not (<= 0 k@140@01))))))
(assert (or
  (< j@139@01 (Seq_length br@130@01))
  (not (< j@139@01 (Seq_length br@130@01)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@139@01)
  (and
    (<= 0 j@139@01)
    (=>
      (< j@139@01 (Seq_length br@130@01))
      (and
        (< j@139@01 (Seq_length br@130@01))
        (=>
          (<= 0 k@140@01)
          (and
            (<= 0 k@140@01)
            (or
              (< k@140@01 (Seq_length br@130@01))
              (not (< k@140@01 (Seq_length br@130@01))))))
        (or (<= 0 k@140@01) (not (<= 0 k@140@01)))))
    (or
      (< j@139@01 (Seq_length br@130@01))
      (not (< j@139@01 (Seq_length br@130@01)))))))
(assert (or (<= 0 j@139@01) (not (<= 0 j@139@01))))
(push) ; 3
; [then-branch: 46 | 0 <= j@139@01 && j@139@01 < |br@130@01| && 0 <= k@140@01 && k@140@01 < |br@130@01| && j@139@01 != k@140@01 | live]
; [else-branch: 46 | !(0 <= j@139@01 && j@139@01 < |br@130@01| && 0 <= k@140@01 && k@140@01 < |br@130@01| && j@139@01 != k@140@01) | live]
(push) ; 4
; [then-branch: 46 | 0 <= j@139@01 && j@139@01 < |br@130@01| && 0 <= k@140@01 && k@140@01 < |br@130@01| && j@139@01 != k@140@01]
(assert (and
  (<= 0 j@139@01)
  (and
    (< j@139@01 (Seq_length br@130@01))
    (and
      (<= 0 k@140@01)
      (and (< k@140@01 (Seq_length br@130@01)) (not (= j@139@01 k@140@01)))))))
; [eval] br[j] != br[k]
; [eval] br[j]
(push) ; 5
(assert (not (>= j@139@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] br[k]
(push) ; 5
(assert (not (>= k@140@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 46 | !(0 <= j@139@01 && j@139@01 < |br@130@01| && 0 <= k@140@01 && k@140@01 < |br@130@01| && j@139@01 != k@140@01)]
(assert (not
  (and
    (<= 0 j@139@01)
    (and
      (< j@139@01 (Seq_length br@130@01))
      (and
        (<= 0 k@140@01)
        (and (< k@140@01 (Seq_length br@130@01)) (not (= j@139@01 k@140@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@139@01)
    (and
      (< j@139@01 (Seq_length br@130@01))
      (and
        (<= 0 k@140@01)
        (and (< k@140@01 (Seq_length br@130@01)) (not (= j@139@01 k@140@01))))))
  (and
    (<= 0 j@139@01)
    (< j@139@01 (Seq_length br@130@01))
    (<= 0 k@140@01)
    (< k@140@01 (Seq_length br@130@01))
    (not (= j@139@01 k@140@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@139@01)
      (and
        (< j@139@01 (Seq_length br@130@01))
        (and
          (<= 0 k@140@01)
          (and (< k@140@01 (Seq_length br@130@01)) (not (= j@139@01 k@140@01)))))))
  (and
    (<= 0 j@139@01)
    (and
      (< j@139@01 (Seq_length br@130@01))
      (and
        (<= 0 k@140@01)
        (and (< k@140@01 (Seq_length br@130@01)) (not (= j@139@01 k@140@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@139@01 Int) (k@140@01 Int)) (!
  (and
    (=>
      (<= 0 j@139@01)
      (and
        (<= 0 j@139@01)
        (=>
          (< j@139@01 (Seq_length br@130@01))
          (and
            (< j@139@01 (Seq_length br@130@01))
            (=>
              (<= 0 k@140@01)
              (and
                (<= 0 k@140@01)
                (or
                  (< k@140@01 (Seq_length br@130@01))
                  (not (< k@140@01 (Seq_length br@130@01))))))
            (or (<= 0 k@140@01) (not (<= 0 k@140@01)))))
        (or
          (< j@139@01 (Seq_length br@130@01))
          (not (< j@139@01 (Seq_length br@130@01))))))
    (or (<= 0 j@139@01) (not (<= 0 j@139@01)))
    (=>
      (and
        (<= 0 j@139@01)
        (and
          (< j@139@01 (Seq_length br@130@01))
          (and
            (<= 0 k@140@01)
            (and (< k@140@01 (Seq_length br@130@01)) (not (= j@139@01 k@140@01))))))
      (and
        (<= 0 j@139@01)
        (< j@139@01 (Seq_length br@130@01))
        (<= 0 k@140@01)
        (< k@140@01 (Seq_length br@130@01))
        (not (= j@139@01 k@140@01))))
    (or
      (not
        (and
          (<= 0 j@139@01)
          (and
            (< j@139@01 (Seq_length br@130@01))
            (and
              (<= 0 k@140@01)
              (and
                (< k@140@01 (Seq_length br@130@01))
                (not (= j@139@01 k@140@01)))))))
      (and
        (<= 0 j@139@01)
        (and
          (< j@139@01 (Seq_length br@130@01))
          (and
            (<= 0 k@140@01)
            (and (< k@140@01 (Seq_length br@130@01)) (not (= j@139@01 k@140@01))))))))
  :pattern ((Seq_index br@130@01 j@139@01) (Seq_index br@130@01 k@140@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopE1.vpr@174@12@174@106-aux|)))
(assert (forall ((j@139@01 Int) (k@140@01 Int)) (!
  (=>
    (and
      (<= 0 j@139@01)
      (and
        (< j@139@01 (Seq_length br@130@01))
        (and
          (<= 0 k@140@01)
          (and (< k@140@01 (Seq_length br@130@01)) (not (= j@139@01 k@140@01))))))
    (not (= (Seq_index br@130@01 j@139@01) (Seq_index br@130@01 k@140@01))))
  :pattern ((Seq_index br@130@01 j@139@01) (Seq_index br@130@01 k@140@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopE1.vpr@174@12@174@106|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@133@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@133@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@133@01)))))))))))
(declare-const i@141@01 Int)
(push) ; 2
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 3
; [then-branch: 47 | !(0 <= i@141@01) | live]
; [else-branch: 47 | 0 <= i@141@01 | live]
(push) ; 4
; [then-branch: 47 | !(0 <= i@141@01)]
(assert (not (<= 0 i@141@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 47 | 0 <= i@141@01]
(assert (<= 0 i@141@01))
; [eval] i < len
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@141@01) (not (<= 0 i@141@01))))
(assert (and (<= 0 i@141@01) (< i@141@01 len@132@01)))
; [eval] br[i]
(push) ; 3
(assert (not (>= i@141@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@141@01 (Seq_length br@130@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@142@01 ($Ref) Int)
(declare-fun img@143@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@141@01 Int)) (!
  (=>
    (and (<= 0 i@141@01) (< i@141@01 len@132@01))
    (or (<= 0 i@141@01) (not (<= 0 i@141@01))))
  :pattern ((Seq_index br@130@01 i@141@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@141@01 Int) (i2@141@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@141@01) (< i1@141@01 len@132@01))
      (and (<= 0 i2@141@01) (< i2@141@01 len@132@01))
      (= (Seq_index br@130@01 i1@141@01) (Seq_index br@130@01 i2@141@01)))
    (= i1@141@01 i2@141@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@141@01 Int)) (!
  (=>
    (and (<= 0 i@141@01) (< i@141@01 len@132@01))
    (and
      (= (inv@142@01 (Seq_index br@130@01 i@141@01)) i@141@01)
      (img@143@01 (Seq_index br@130@01 i@141@01))))
  :pattern ((Seq_index br@130@01 i@141@01))
  :qid |quant-u-16746|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@143@01 r)
      (and (<= 0 (inv@142@01 r)) (< (inv@142@01 r) len@132@01)))
    (= (Seq_index br@130@01 (inv@142@01 r)) r))
  :pattern ((inv@142@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@141@01 Int)) (!
  (=>
    (and (<= 0 i@141@01) (< i@141@01 len@132@01))
    (not (= (Seq_index br@130@01 i@141@01) $Ref.null)))
  :pattern ((Seq_index br@130@01 i@141@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index br@130@01 i@141@01) (Seq_index ar@129@01 i@136@01))
    (=
      (and
        (img@143@01 r)
        (and (<= 0 (inv@142@01 r)) (< (inv@142@01 r) len@132@01)))
      (and
        (img@138@01 r)
        (and (<= 0 (inv@137@01 r)) (< (inv@137@01 r) len@132@01)))))
  
  :qid |quant-u-16747|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@133@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@133@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@133@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@133@01)))))))))
  $Snap.unit))
; [eval] |cr| == len
; [eval] |cr|
(assert (= (Seq_length cr@131@01) len@132@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@133@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@133@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@133@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@133@01))))))))))
  $Snap.unit))
; [eval] (forall j: Int, k: Int :: { cr[j], cr[k] } 0 <= j && (j < |cr| && (0 <= k && (k < |cr| && j != k))) ==> cr[j] != cr[k])
(declare-const j@144@01 Int)
(declare-const k@145@01 Int)
(set-option :timeout 0)
(push) ; 2
; [eval] 0 <= j && (j < |cr| && (0 <= k && (k < |cr| && j != k))) ==> cr[j] != cr[k]
; [eval] 0 <= j && (j < |cr| && (0 <= k && (k < |cr| && j != k)))
; [eval] 0 <= j
(push) ; 3
; [then-branch: 48 | !(0 <= j@144@01) | live]
; [else-branch: 48 | 0 <= j@144@01 | live]
(push) ; 4
; [then-branch: 48 | !(0 <= j@144@01)]
(assert (not (<= 0 j@144@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 48 | 0 <= j@144@01]
(assert (<= 0 j@144@01))
; [eval] j < |cr|
; [eval] |cr|
(push) ; 5
; [then-branch: 49 | !(j@144@01 < |cr@131@01|) | live]
; [else-branch: 49 | j@144@01 < |cr@131@01| | live]
(push) ; 6
; [then-branch: 49 | !(j@144@01 < |cr@131@01|)]
(assert (not (< j@144@01 (Seq_length cr@131@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 49 | j@144@01 < |cr@131@01|]
(assert (< j@144@01 (Seq_length cr@131@01)))
; [eval] 0 <= k
(push) ; 7
; [then-branch: 50 | !(0 <= k@145@01) | live]
; [else-branch: 50 | 0 <= k@145@01 | live]
(push) ; 8
; [then-branch: 50 | !(0 <= k@145@01)]
(assert (not (<= 0 k@145@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 50 | 0 <= k@145@01]
(assert (<= 0 k@145@01))
; [eval] k < |cr|
; [eval] |cr|
(push) ; 9
; [then-branch: 51 | !(k@145@01 < |cr@131@01|) | live]
; [else-branch: 51 | k@145@01 < |cr@131@01| | live]
(push) ; 10
; [then-branch: 51 | !(k@145@01 < |cr@131@01|)]
(assert (not (< k@145@01 (Seq_length cr@131@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 51 | k@145@01 < |cr@131@01|]
(assert (< k@145@01 (Seq_length cr@131@01)))
; [eval] j != k
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (< k@145@01 (Seq_length cr@131@01))
  (not (< k@145@01 (Seq_length cr@131@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@145@01)
  (and
    (<= 0 k@145@01)
    (or
      (< k@145@01 (Seq_length cr@131@01))
      (not (< k@145@01 (Seq_length cr@131@01)))))))
(assert (or (<= 0 k@145@01) (not (<= 0 k@145@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@144@01 (Seq_length cr@131@01))
  (and
    (< j@144@01 (Seq_length cr@131@01))
    (=>
      (<= 0 k@145@01)
      (and
        (<= 0 k@145@01)
        (or
          (< k@145@01 (Seq_length cr@131@01))
          (not (< k@145@01 (Seq_length cr@131@01))))))
    (or (<= 0 k@145@01) (not (<= 0 k@145@01))))))
(assert (or
  (< j@144@01 (Seq_length cr@131@01))
  (not (< j@144@01 (Seq_length cr@131@01)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@144@01)
  (and
    (<= 0 j@144@01)
    (=>
      (< j@144@01 (Seq_length cr@131@01))
      (and
        (< j@144@01 (Seq_length cr@131@01))
        (=>
          (<= 0 k@145@01)
          (and
            (<= 0 k@145@01)
            (or
              (< k@145@01 (Seq_length cr@131@01))
              (not (< k@145@01 (Seq_length cr@131@01))))))
        (or (<= 0 k@145@01) (not (<= 0 k@145@01)))))
    (or
      (< j@144@01 (Seq_length cr@131@01))
      (not (< j@144@01 (Seq_length cr@131@01)))))))
(assert (or (<= 0 j@144@01) (not (<= 0 j@144@01))))
(push) ; 3
; [then-branch: 52 | 0 <= j@144@01 && j@144@01 < |cr@131@01| && 0 <= k@145@01 && k@145@01 < |cr@131@01| && j@144@01 != k@145@01 | live]
; [else-branch: 52 | !(0 <= j@144@01 && j@144@01 < |cr@131@01| && 0 <= k@145@01 && k@145@01 < |cr@131@01| && j@144@01 != k@145@01) | live]
(push) ; 4
; [then-branch: 52 | 0 <= j@144@01 && j@144@01 < |cr@131@01| && 0 <= k@145@01 && k@145@01 < |cr@131@01| && j@144@01 != k@145@01]
(assert (and
  (<= 0 j@144@01)
  (and
    (< j@144@01 (Seq_length cr@131@01))
    (and
      (<= 0 k@145@01)
      (and (< k@145@01 (Seq_length cr@131@01)) (not (= j@144@01 k@145@01)))))))
; [eval] cr[j] != cr[k]
; [eval] cr[j]
(push) ; 5
(assert (not (>= j@144@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] cr[k]
(push) ; 5
(assert (not (>= k@145@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 52 | !(0 <= j@144@01 && j@144@01 < |cr@131@01| && 0 <= k@145@01 && k@145@01 < |cr@131@01| && j@144@01 != k@145@01)]
(assert (not
  (and
    (<= 0 j@144@01)
    (and
      (< j@144@01 (Seq_length cr@131@01))
      (and
        (<= 0 k@145@01)
        (and (< k@145@01 (Seq_length cr@131@01)) (not (= j@144@01 k@145@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@144@01)
    (and
      (< j@144@01 (Seq_length cr@131@01))
      (and
        (<= 0 k@145@01)
        (and (< k@145@01 (Seq_length cr@131@01)) (not (= j@144@01 k@145@01))))))
  (and
    (<= 0 j@144@01)
    (< j@144@01 (Seq_length cr@131@01))
    (<= 0 k@145@01)
    (< k@145@01 (Seq_length cr@131@01))
    (not (= j@144@01 k@145@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@144@01)
      (and
        (< j@144@01 (Seq_length cr@131@01))
        (and
          (<= 0 k@145@01)
          (and (< k@145@01 (Seq_length cr@131@01)) (not (= j@144@01 k@145@01)))))))
  (and
    (<= 0 j@144@01)
    (and
      (< j@144@01 (Seq_length cr@131@01))
      (and
        (<= 0 k@145@01)
        (and (< k@145@01 (Seq_length cr@131@01)) (not (= j@144@01 k@145@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@144@01 Int) (k@145@01 Int)) (!
  (and
    (=>
      (<= 0 j@144@01)
      (and
        (<= 0 j@144@01)
        (=>
          (< j@144@01 (Seq_length cr@131@01))
          (and
            (< j@144@01 (Seq_length cr@131@01))
            (=>
              (<= 0 k@145@01)
              (and
                (<= 0 k@145@01)
                (or
                  (< k@145@01 (Seq_length cr@131@01))
                  (not (< k@145@01 (Seq_length cr@131@01))))))
            (or (<= 0 k@145@01) (not (<= 0 k@145@01)))))
        (or
          (< j@144@01 (Seq_length cr@131@01))
          (not (< j@144@01 (Seq_length cr@131@01))))))
    (or (<= 0 j@144@01) (not (<= 0 j@144@01)))
    (=>
      (and
        (<= 0 j@144@01)
        (and
          (< j@144@01 (Seq_length cr@131@01))
          (and
            (<= 0 k@145@01)
            (and (< k@145@01 (Seq_length cr@131@01)) (not (= j@144@01 k@145@01))))))
      (and
        (<= 0 j@144@01)
        (< j@144@01 (Seq_length cr@131@01))
        (<= 0 k@145@01)
        (< k@145@01 (Seq_length cr@131@01))
        (not (= j@144@01 k@145@01))))
    (or
      (not
        (and
          (<= 0 j@144@01)
          (and
            (< j@144@01 (Seq_length cr@131@01))
            (and
              (<= 0 k@145@01)
              (and
                (< k@145@01 (Seq_length cr@131@01))
                (not (= j@144@01 k@145@01)))))))
      (and
        (<= 0 j@144@01)
        (and
          (< j@144@01 (Seq_length cr@131@01))
          (and
            (<= 0 k@145@01)
            (and (< k@145@01 (Seq_length cr@131@01)) (not (= j@144@01 k@145@01))))))))
  :pattern ((Seq_index cr@131@01 j@144@01) (Seq_index cr@131@01 k@145@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopE1.vpr@177@12@177@106-aux|)))
(assert (forall ((j@144@01 Int) (k@145@01 Int)) (!
  (=>
    (and
      (<= 0 j@144@01)
      (and
        (< j@144@01 (Seq_length cr@131@01))
        (and
          (<= 0 k@145@01)
          (and (< k@145@01 (Seq_length cr@131@01)) (not (= j@144@01 k@145@01))))))
    (not (= (Seq_index cr@131@01 j@144@01) (Seq_index cr@131@01 k@145@01))))
  :pattern ((Seq_index cr@131@01 j@144@01) (Seq_index cr@131@01 k@145@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopE1.vpr@177@12@177@106|)))
(declare-const i@146@01 Int)
(push) ; 2
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 3
; [then-branch: 53 | !(0 <= i@146@01) | live]
; [else-branch: 53 | 0 <= i@146@01 | live]
(push) ; 4
; [then-branch: 53 | !(0 <= i@146@01)]
(assert (not (<= 0 i@146@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 53 | 0 <= i@146@01]
(assert (<= 0 i@146@01))
; [eval] i < len
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@146@01) (not (<= 0 i@146@01))))
(assert (and (<= 0 i@146@01) (< i@146@01 len@132@01)))
; [eval] cr[i]
(push) ; 3
(assert (not (>= i@146@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@146@01 (Seq_length cr@131@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@147@01 ($Ref) Int)
(declare-fun img@148@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@146@01 Int)) (!
  (=>
    (and (<= 0 i@146@01) (< i@146@01 len@132@01))
    (or (<= 0 i@146@01) (not (<= 0 i@146@01))))
  :pattern ((Seq_index cr@131@01 i@146@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@146@01 Int) (i2@146@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@146@01) (< i1@146@01 len@132@01))
      (and (<= 0 i2@146@01) (< i2@146@01 len@132@01))
      (= (Seq_index cr@131@01 i1@146@01) (Seq_index cr@131@01 i2@146@01)))
    (= i1@146@01 i2@146@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@146@01 Int)) (!
  (=>
    (and (<= 0 i@146@01) (< i@146@01 len@132@01))
    (and
      (= (inv@147@01 (Seq_index cr@131@01 i@146@01)) i@146@01)
      (img@148@01 (Seq_index cr@131@01 i@146@01))))
  :pattern ((Seq_index cr@131@01 i@146@01))
  :qid |quant-u-16749|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@148@01 r)
      (and (<= 0 (inv@147@01 r)) (< (inv@147@01 r) len@132@01)))
    (= (Seq_index cr@131@01 (inv@147@01 r)) r))
  :pattern ((inv@147@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@146@01 Int)) (!
  (=>
    (and (<= 0 i@146@01) (< i@146@01 len@132@01))
    (not (= (Seq_index cr@131@01 i@146@01) $Ref.null)))
  :pattern ((Seq_index cr@131@01 i@146@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index cr@131@01 i@146@01) (Seq_index br@130@01 i@141@01))
    (=
      (and
        (img@148@01 r)
        (and (<= 0 (inv@147@01 r)) (< (inv@147@01 r) len@132@01)))
      (and
        (img@143@01 r)
        (and (<= 0 (inv@142@01 r)) (< (inv@142@01 r) len@132@01)))))
  
  :qid |quant-u-16750|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index cr@131@01 i@146@01) (Seq_index ar@129@01 i@136@01))
    (=
      (and
        (img@148@01 r)
        (and (<= 0 (inv@147@01 r)) (< (inv@147@01 r) len@132@01)))
      (and
        (img@138@01 r)
        (and (<= 0 (inv@137@01 r)) (< (inv@137@01 r) len@132@01)))))
  
  :qid |quant-u-16751|))))
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
(declare-const $t@149@01 $Snap)
(assert (= $t@149@01 ($Snap.combine ($Snap.first $t@149@01) ($Snap.second $t@149@01))))
(assert (= ($Snap.first $t@149@01) $Snap.unit))
; [eval] |ar| == len
; [eval] |ar|
(assert (=
  ($Snap.second $t@149@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@149@01))
    ($Snap.second ($Snap.second $t@149@01)))))
(declare-const i@150@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 54 | !(0 <= i@150@01) | live]
; [else-branch: 54 | 0 <= i@150@01 | live]
(push) ; 5
; [then-branch: 54 | !(0 <= i@150@01)]
(assert (not (<= 0 i@150@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 54 | 0 <= i@150@01]
(assert (<= 0 i@150@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@150@01) (not (<= 0 i@150@01))))
(assert (and (<= 0 i@150@01) (< i@150@01 len@132@01)))
; [eval] ar[i]
(push) ; 4
(assert (not (>= i@150@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@150@01 (Seq_length ar@129@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@151@01 ($Ref) Int)
(declare-fun img@152@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@150@01 Int)) (!
  (=>
    (and (<= 0 i@150@01) (< i@150@01 len@132@01))
    (or (<= 0 i@150@01) (not (<= 0 i@150@01))))
  :pattern ((Seq_index ar@129@01 i@150@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@150@01 Int) (i2@150@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@150@01) (< i1@150@01 len@132@01))
      (and (<= 0 i2@150@01) (< i2@150@01 len@132@01))
      (= (Seq_index ar@129@01 i1@150@01) (Seq_index ar@129@01 i2@150@01)))
    (= i1@150@01 i2@150@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@150@01 Int)) (!
  (=>
    (and (<= 0 i@150@01) (< i@150@01 len@132@01))
    (and
      (= (inv@151@01 (Seq_index ar@129@01 i@150@01)) i@150@01)
      (img@152@01 (Seq_index ar@129@01 i@150@01))))
  :pattern ((Seq_index ar@129@01 i@150@01))
  :qid |quant-u-16753|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@152@01 r)
      (and (<= 0 (inv@151@01 r)) (< (inv@151@01 r) len@132@01)))
    (= (Seq_index ar@129@01 (inv@151@01 r)) r))
  :pattern ((inv@151@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@150@01 Int)) (!
  (=>
    (and (<= 0 i@150@01) (< i@150@01 len@132@01))
    (not (= (Seq_index ar@129@01 i@150@01) $Ref.null)))
  :pattern ((Seq_index ar@129@01 i@150@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second $t@149@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@149@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@149@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@149@01))) $Snap.unit))
; [eval] |br| == len
; [eval] |br|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@149@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@149@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01)))))))
(declare-const i@153@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 55 | !(0 <= i@153@01) | live]
; [else-branch: 55 | 0 <= i@153@01 | live]
(push) ; 5
; [then-branch: 55 | !(0 <= i@153@01)]
(assert (not (<= 0 i@153@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 55 | 0 <= i@153@01]
(assert (<= 0 i@153@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@153@01) (not (<= 0 i@153@01))))
(assert (and (<= 0 i@153@01) (< i@153@01 len@132@01)))
; [eval] br[i]
(push) ; 4
(assert (not (>= i@153@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@153@01 (Seq_length br@130@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@154@01 ($Ref) Int)
(declare-fun img@155@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@153@01 Int)) (!
  (=>
    (and (<= 0 i@153@01) (< i@153@01 len@132@01))
    (or (<= 0 i@153@01) (not (<= 0 i@153@01))))
  :pattern ((Seq_index br@130@01 i@153@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@153@01 Int) (i2@153@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@153@01) (< i1@153@01 len@132@01))
      (and (<= 0 i2@153@01) (< i2@153@01 len@132@01))
      (= (Seq_index br@130@01 i1@153@01) (Seq_index br@130@01 i2@153@01)))
    (= i1@153@01 i2@153@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@153@01 Int)) (!
  (=>
    (and (<= 0 i@153@01) (< i@153@01 len@132@01))
    (and
      (= (inv@154@01 (Seq_index br@130@01 i@153@01)) i@153@01)
      (img@155@01 (Seq_index br@130@01 i@153@01))))
  :pattern ((Seq_index br@130@01 i@153@01))
  :qid |quant-u-16755|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@155@01 r)
      (and (<= 0 (inv@154@01 r)) (< (inv@154@01 r) len@132@01)))
    (= (Seq_index br@130@01 (inv@154@01 r)) r))
  :pattern ((inv@154@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@153@01 Int)) (!
  (=>
    (and (<= 0 i@153@01) (< i@153@01 len@132@01))
    (not (= (Seq_index br@130@01 i@153@01) $Ref.null)))
  :pattern ((Seq_index br@130@01 i@153@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index br@130@01 i@153@01) (Seq_index ar@129@01 i@150@01))
    (=
      (and
        (img@155@01 r)
        (and (<= 0 (inv@154@01 r)) (< (inv@154@01 r) len@132@01)))
      (and
        (img@152@01 r)
        (and (<= 0 (inv@151@01 r)) (< (inv@151@01 r) len@132@01)))))
  
  :qid |quant-u-16756|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@149@01)))))
  $Snap.unit))
; [eval] |cr| == len
; [eval] |cr|
(declare-const i@156@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 56 | !(0 <= i@156@01) | live]
; [else-branch: 56 | 0 <= i@156@01 | live]
(push) ; 5
; [then-branch: 56 | !(0 <= i@156@01)]
(assert (not (<= 0 i@156@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 56 | 0 <= i@156@01]
(assert (<= 0 i@156@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@156@01) (not (<= 0 i@156@01))))
(assert (and (<= 0 i@156@01) (< i@156@01 len@132@01)))
; [eval] cr[i]
(push) ; 4
(assert (not (>= i@156@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@156@01 (Seq_length cr@131@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@157@01 ($Ref) Int)
(declare-fun img@158@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@156@01 Int)) (!
  (=>
    (and (<= 0 i@156@01) (< i@156@01 len@132@01))
    (or (<= 0 i@156@01) (not (<= 0 i@156@01))))
  :pattern ((Seq_index cr@131@01 i@156@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@156@01 Int) (i2@156@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@156@01) (< i1@156@01 len@132@01))
      (and (<= 0 i2@156@01) (< i2@156@01 len@132@01))
      (= (Seq_index cr@131@01 i1@156@01) (Seq_index cr@131@01 i2@156@01)))
    (= i1@156@01 i2@156@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@156@01 Int)) (!
  (=>
    (and (<= 0 i@156@01) (< i@156@01 len@132@01))
    (and
      (= (inv@157@01 (Seq_index cr@131@01 i@156@01)) i@156@01)
      (img@158@01 (Seq_index cr@131@01 i@156@01))))
  :pattern ((Seq_index cr@131@01 i@156@01))
  :qid |quant-u-16758|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@158@01 r)
      (and (<= 0 (inv@157@01 r)) (< (inv@157@01 r) len@132@01)))
    (= (Seq_index cr@131@01 (inv@157@01 r)) r))
  :pattern ((inv@157@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@156@01 Int)) (!
  (=>
    (and (<= 0 i@156@01) (< i@156@01 len@132@01))
    (not (= (Seq_index cr@131@01 i@156@01) $Ref.null)))
  :pattern ((Seq_index cr@131@01 i@156@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index cr@131@01 i@156@01) (Seq_index br@130@01 i@153@01))
    (=
      (and
        (img@158@01 r)
        (and (<= 0 (inv@157@01 r)) (< (inv@157@01 r) len@132@01)))
      (and
        (img@155@01 r)
        (and (<= 0 (inv@154@01 r)) (< (inv@154@01 r) len@132@01)))))
  
  :qid |quant-u-16759|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index cr@131@01 i@156@01) (Seq_index ar@129@01 i@150@01))
    (=
      (and
        (img@158@01 r)
        (and (<= 0 (inv@157@01 r)) (< (inv@157@01 r) len@132@01)))
      (and
        (img@152@01 r)
        (and (<= 0 (inv@151@01 r)) (< (inv@151@01 r) len@132@01)))))
  
  :qid |quant-u-16760|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(set-option :timeout 0)
(push) ; 2
; [exec]
; assert |ar| == len
; [eval] |ar| == len
; [eval] |ar|
; [exec]
; assert |br| == len
; [eval] |br| == len
; [eval] |br|
; [exec]
; assert |cr| == len
; [eval] |cr| == len
; [eval] |cr|
; [exec]
; Ref__loop_main_54(diz, current_thread_id, len, ar, br, cr)
; [eval] diz != null
; [eval] current_thread_id >= 0
; [eval] 0 < len ==> |ar| == len
; [eval] 0 < len
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (< 0 len@132@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< 0 len@132@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 57 | 0 < len@132@01 | live]
; [else-branch: 57 | !(0 < len@132@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 57 | 0 < len@132@01]
(assert (< 0 len@132@01))
; [eval] |ar| == len
; [eval] |ar|
(pop) ; 4
(push) ; 4
; [else-branch: 57 | !(0 < len@132@01)]
(assert (not (< 0 len@132@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not (< 0 len@132@01)) (< 0 len@132@01)))
(push) ; 3
(assert (not (=> (< 0 len@132@01) (= (Seq_length ar@129@01) len@132@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=> (< 0 len@132@01) (= (Seq_length ar@129@01) len@132@01)))
; [eval] (forall j: Int, k: Int :: { ar[j], ar[k] } 0 <= j && (j < |ar| && (0 <= k && (k < |ar| && j != k))) ==> ar[j] != ar[k])
(declare-const j@159@01 Int)
(declare-const k@160@01 Int)
(push) ; 3
; [eval] 0 <= j && (j < |ar| && (0 <= k && (k < |ar| && j != k))) ==> ar[j] != ar[k]
; [eval] 0 <= j && (j < |ar| && (0 <= k && (k < |ar| && j != k)))
; [eval] 0 <= j
(push) ; 4
; [then-branch: 58 | !(0 <= j@159@01) | live]
; [else-branch: 58 | 0 <= j@159@01 | live]
(push) ; 5
; [then-branch: 58 | !(0 <= j@159@01)]
(assert (not (<= 0 j@159@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 58 | 0 <= j@159@01]
(assert (<= 0 j@159@01))
; [eval] j < |ar|
; [eval] |ar|
(push) ; 6
; [then-branch: 59 | !(j@159@01 < |ar@129@01|) | live]
; [else-branch: 59 | j@159@01 < |ar@129@01| | live]
(push) ; 7
; [then-branch: 59 | !(j@159@01 < |ar@129@01|)]
(assert (not (< j@159@01 (Seq_length ar@129@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 59 | j@159@01 < |ar@129@01|]
(assert (< j@159@01 (Seq_length ar@129@01)))
; [eval] 0 <= k
(push) ; 8
; [then-branch: 60 | !(0 <= k@160@01) | live]
; [else-branch: 60 | 0 <= k@160@01 | live]
(push) ; 9
; [then-branch: 60 | !(0 <= k@160@01)]
(assert (not (<= 0 k@160@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 60 | 0 <= k@160@01]
(assert (<= 0 k@160@01))
; [eval] k < |ar|
; [eval] |ar|
(push) ; 10
; [then-branch: 61 | !(k@160@01 < |ar@129@01|) | live]
; [else-branch: 61 | k@160@01 < |ar@129@01| | live]
(push) ; 11
; [then-branch: 61 | !(k@160@01 < |ar@129@01|)]
(assert (not (< k@160@01 (Seq_length ar@129@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 61 | k@160@01 < |ar@129@01|]
(assert (< k@160@01 (Seq_length ar@129@01)))
; [eval] j != k
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (< k@160@01 (Seq_length ar@129@01))
  (not (< k@160@01 (Seq_length ar@129@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@160@01)
  (and
    (<= 0 k@160@01)
    (or
      (< k@160@01 (Seq_length ar@129@01))
      (not (< k@160@01 (Seq_length ar@129@01)))))))
(assert (or (<= 0 k@160@01) (not (<= 0 k@160@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@159@01 (Seq_length ar@129@01))
  (and
    (< j@159@01 (Seq_length ar@129@01))
    (=>
      (<= 0 k@160@01)
      (and
        (<= 0 k@160@01)
        (or
          (< k@160@01 (Seq_length ar@129@01))
          (not (< k@160@01 (Seq_length ar@129@01))))))
    (or (<= 0 k@160@01) (not (<= 0 k@160@01))))))
(assert (or
  (< j@159@01 (Seq_length ar@129@01))
  (not (< j@159@01 (Seq_length ar@129@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@159@01)
  (and
    (<= 0 j@159@01)
    (=>
      (< j@159@01 (Seq_length ar@129@01))
      (and
        (< j@159@01 (Seq_length ar@129@01))
        (=>
          (<= 0 k@160@01)
          (and
            (<= 0 k@160@01)
            (or
              (< k@160@01 (Seq_length ar@129@01))
              (not (< k@160@01 (Seq_length ar@129@01))))))
        (or (<= 0 k@160@01) (not (<= 0 k@160@01)))))
    (or
      (< j@159@01 (Seq_length ar@129@01))
      (not (< j@159@01 (Seq_length ar@129@01)))))))
(assert (or (<= 0 j@159@01) (not (<= 0 j@159@01))))
(push) ; 4
; [then-branch: 62 | 0 <= j@159@01 && j@159@01 < |ar@129@01| && 0 <= k@160@01 && k@160@01 < |ar@129@01| && j@159@01 != k@160@01 | live]
; [else-branch: 62 | !(0 <= j@159@01 && j@159@01 < |ar@129@01| && 0 <= k@160@01 && k@160@01 < |ar@129@01| && j@159@01 != k@160@01) | live]
(push) ; 5
; [then-branch: 62 | 0 <= j@159@01 && j@159@01 < |ar@129@01| && 0 <= k@160@01 && k@160@01 < |ar@129@01| && j@159@01 != k@160@01]
(assert (and
  (<= 0 j@159@01)
  (and
    (< j@159@01 (Seq_length ar@129@01))
    (and
      (<= 0 k@160@01)
      (and (< k@160@01 (Seq_length ar@129@01)) (not (= j@159@01 k@160@01)))))))
; [eval] ar[j] != ar[k]
; [eval] ar[j]
(push) ; 6
(assert (not (>= j@159@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] ar[k]
(push) ; 6
(assert (not (>= k@160@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 62 | !(0 <= j@159@01 && j@159@01 < |ar@129@01| && 0 <= k@160@01 && k@160@01 < |ar@129@01| && j@159@01 != k@160@01)]
(assert (not
  (and
    (<= 0 j@159@01)
    (and
      (< j@159@01 (Seq_length ar@129@01))
      (and
        (<= 0 k@160@01)
        (and (< k@160@01 (Seq_length ar@129@01)) (not (= j@159@01 k@160@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@159@01)
    (and
      (< j@159@01 (Seq_length ar@129@01))
      (and
        (<= 0 k@160@01)
        (and (< k@160@01 (Seq_length ar@129@01)) (not (= j@159@01 k@160@01))))))
  (and
    (<= 0 j@159@01)
    (< j@159@01 (Seq_length ar@129@01))
    (<= 0 k@160@01)
    (< k@160@01 (Seq_length ar@129@01))
    (not (= j@159@01 k@160@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@159@01)
      (and
        (< j@159@01 (Seq_length ar@129@01))
        (and
          (<= 0 k@160@01)
          (and (< k@160@01 (Seq_length ar@129@01)) (not (= j@159@01 k@160@01)))))))
  (and
    (<= 0 j@159@01)
    (and
      (< j@159@01 (Seq_length ar@129@01))
      (and
        (<= 0 k@160@01)
        (and (< k@160@01 (Seq_length ar@129@01)) (not (= j@159@01 k@160@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@159@01 Int) (k@160@01 Int)) (!
  (and
    (=>
      (<= 0 j@159@01)
      (and
        (<= 0 j@159@01)
        (=>
          (< j@159@01 (Seq_length ar@129@01))
          (and
            (< j@159@01 (Seq_length ar@129@01))
            (=>
              (<= 0 k@160@01)
              (and
                (<= 0 k@160@01)
                (or
                  (< k@160@01 (Seq_length ar@129@01))
                  (not (< k@160@01 (Seq_length ar@129@01))))))
            (or (<= 0 k@160@01) (not (<= 0 k@160@01)))))
        (or
          (< j@159@01 (Seq_length ar@129@01))
          (not (< j@159@01 (Seq_length ar@129@01))))))
    (or (<= 0 j@159@01) (not (<= 0 j@159@01)))
    (=>
      (and
        (<= 0 j@159@01)
        (and
          (< j@159@01 (Seq_length ar@129@01))
          (and
            (<= 0 k@160@01)
            (and (< k@160@01 (Seq_length ar@129@01)) (not (= j@159@01 k@160@01))))))
      (and
        (<= 0 j@159@01)
        (< j@159@01 (Seq_length ar@129@01))
        (<= 0 k@160@01)
        (< k@160@01 (Seq_length ar@129@01))
        (not (= j@159@01 k@160@01))))
    (or
      (not
        (and
          (<= 0 j@159@01)
          (and
            (< j@159@01 (Seq_length ar@129@01))
            (and
              (<= 0 k@160@01)
              (and
                (< k@160@01 (Seq_length ar@129@01))
                (not (= j@159@01 k@160@01)))))))
      (and
        (<= 0 j@159@01)
        (and
          (< j@159@01 (Seq_length ar@129@01))
          (and
            (<= 0 k@160@01)
            (and (< k@160@01 (Seq_length ar@129@01)) (not (= j@159@01 k@160@01))))))))
  :pattern ((Seq_index ar@129@01 j@159@01) (Seq_index ar@129@01 k@160@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopE1.vpr@62@12@62@106-aux|)))
(push) ; 3
(assert (not (forall ((j@159@01 Int) (k@160@01 Int)) (!
  (=>
    (and
      (<= 0 j@159@01)
      (and
        (< j@159@01 (Seq_length ar@129@01))
        (and
          (<= 0 k@160@01)
          (and (< k@160@01 (Seq_length ar@129@01)) (not (= j@159@01 k@160@01))))))
    (not (= (Seq_index ar@129@01 j@159@01) (Seq_index ar@129@01 k@160@01))))
  :pattern ((Seq_index ar@129@01 j@159@01) (Seq_index ar@129@01 k@160@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopE1.vpr@62@12@62@106|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((j@159@01 Int) (k@160@01 Int)) (!
  (=>
    (and
      (<= 0 j@159@01)
      (and
        (< j@159@01 (Seq_length ar@129@01))
        (and
          (<= 0 k@160@01)
          (and (< k@160@01 (Seq_length ar@129@01)) (not (= j@159@01 k@160@01))))))
    (not (= (Seq_index ar@129@01 j@159@01) (Seq_index ar@129@01 k@160@01))))
  :pattern ((Seq_index ar@129@01 j@159@01) (Seq_index ar@129@01 k@160@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopE1.vpr@62@12@62@106|)))
(declare-const i@161@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 63 | !(0 <= i@161@01) | live]
; [else-branch: 63 | 0 <= i@161@01 | live]
(push) ; 5
; [then-branch: 63 | !(0 <= i@161@01)]
(assert (not (<= 0 i@161@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 63 | 0 <= i@161@01]
(assert (<= 0 i@161@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@161@01) (not (<= 0 i@161@01))))
(assert (and (<= 0 i@161@01) (< i@161@01 len@132@01)))
; [eval] ar[i]
(push) ; 4
(assert (not (>= i@161@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@161@01 (Seq_length ar@129@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@162@01 ($Ref) Int)
(declare-fun img@163@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@161@01 Int)) (!
  (=>
    (and (<= 0 i@161@01) (< i@161@01 len@132@01))
    (or (<= 0 i@161@01) (not (<= 0 i@161@01))))
  :pattern ((Seq_index ar@129@01 i@161@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@161@01 Int) (i2@161@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@161@01) (< i1@161@01 len@132@01))
      (and (<= 0 i2@161@01) (< i2@161@01 len@132@01))
      (= (Seq_index ar@129@01 i1@161@01) (Seq_index ar@129@01 i2@161@01)))
    (= i1@161@01 i2@161@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@161@01 Int)) (!
  (=>
    (and (<= 0 i@161@01) (< i@161@01 len@132@01))
    (and
      (= (inv@162@01 (Seq_index ar@129@01 i@161@01)) i@161@01)
      (img@163@01 (Seq_index ar@129@01 i@161@01))))
  :pattern ((Seq_index ar@129@01 i@161@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@163@01 r)
      (and (<= 0 (inv@162@01 r)) (< (inv@162@01 r) len@132@01)))
    (= (Seq_index ar@129@01 (inv@162@01 r)) r))
  :pattern ((inv@162@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@161@01 Int)) (!
  (= (Seq_index ar@129@01 i@161@01) (Seq_index br@130@01 i@161@01))
  
  :qid |quant-u-16762|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@161@01 Int)) (!
  (= (Seq_index ar@129@01 i@161@01) (Seq_index cr@131@01 i@161@01))
  
  :qid |quant-u-16763|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@164@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@162@01 r)) (< (inv@162@01 r) len@132@01))
      (img@163@01 r)
      (= r (Seq_index ar@129@01 (inv@162@01 r))))
    ($Perm.min
      (ite
        (and
          (img@138@01 r)
          (and (<= 0 (inv@137@01 r)) (< (inv@137@01 r) len@132@01)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@165@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@162@01 r)) (< (inv@162@01 r) len@132@01))
      (img@163@01 r)
      (= r (Seq_index ar@129@01 (inv@162@01 r))))
    ($Perm.min
      (ite
        (and
          (img@143@01 r)
          (and (<= 0 (inv@142@01 r)) (< (inv@142@01 r) len@132@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- $Perm.Write (pTaken@164@01 r)))
    $Perm.No))
(define-fun pTaken@166@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@162@01 r)) (< (inv@162@01 r) len@132@01))
      (img@163@01 r)
      (= r (Seq_index ar@129@01 (inv@162@01 r))))
    ($Perm.min
      (ite
        (and
          (img@148@01 r)
          (and (<= 0 (inv@147@01 r)) (< (inv@147@01 r) len@132@01)))
        $Perm.Write
        $Perm.No)
      (- (- $Perm.Write (pTaken@164@01 r)) (pTaken@165@01 r)))
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
          (img@138@01 r)
          (and (<= 0 (inv@137@01 r)) (< (inv@137@01 r) len@132@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@164@01 r))
    $Perm.No)
  
  :qid |quant-u-16765|))))
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
      (and (<= 0 (inv@162@01 r)) (< (inv@162@01 r) len@132@01))
      (img@163@01 r)
      (= r (Seq_index ar@129@01 (inv@162@01 r))))
    (= (- $Perm.Write (pTaken@164@01 r)) $Perm.No))
  
  :qid |quant-u-16766|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] 0 < len ==> |br| == len
; [eval] 0 < len
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (< 0 len@132@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< 0 len@132@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 64 | 0 < len@132@01 | live]
; [else-branch: 64 | !(0 < len@132@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 64 | 0 < len@132@01]
(assert (< 0 len@132@01))
; [eval] |br| == len
; [eval] |br|
(pop) ; 4
(push) ; 4
; [else-branch: 64 | !(0 < len@132@01)]
(assert (not (< 0 len@132@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(push) ; 3
(assert (not (=> (< 0 len@132@01) (= (Seq_length br@130@01) len@132@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=> (< 0 len@132@01) (= (Seq_length br@130@01) len@132@01)))
; [eval] (forall j: Int, k: Int :: { br[j], br[k] } 0 <= j && (j < |br| && (0 <= k && (k < |br| && j != k))) ==> br[j] != br[k])
(declare-const j@167@01 Int)
(declare-const k@168@01 Int)
(push) ; 3
; [eval] 0 <= j && (j < |br| && (0 <= k && (k < |br| && j != k))) ==> br[j] != br[k]
; [eval] 0 <= j && (j < |br| && (0 <= k && (k < |br| && j != k)))
; [eval] 0 <= j
(push) ; 4
; [then-branch: 65 | !(0 <= j@167@01) | live]
; [else-branch: 65 | 0 <= j@167@01 | live]
(push) ; 5
; [then-branch: 65 | !(0 <= j@167@01)]
(assert (not (<= 0 j@167@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 65 | 0 <= j@167@01]
(assert (<= 0 j@167@01))
; [eval] j < |br|
; [eval] |br|
(push) ; 6
; [then-branch: 66 | !(j@167@01 < |br@130@01|) | live]
; [else-branch: 66 | j@167@01 < |br@130@01| | live]
(push) ; 7
; [then-branch: 66 | !(j@167@01 < |br@130@01|)]
(assert (not (< j@167@01 (Seq_length br@130@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 66 | j@167@01 < |br@130@01|]
(assert (< j@167@01 (Seq_length br@130@01)))
; [eval] 0 <= k
(push) ; 8
; [then-branch: 67 | !(0 <= k@168@01) | live]
; [else-branch: 67 | 0 <= k@168@01 | live]
(push) ; 9
; [then-branch: 67 | !(0 <= k@168@01)]
(assert (not (<= 0 k@168@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 67 | 0 <= k@168@01]
(assert (<= 0 k@168@01))
; [eval] k < |br|
; [eval] |br|
(push) ; 10
; [then-branch: 68 | !(k@168@01 < |br@130@01|) | live]
; [else-branch: 68 | k@168@01 < |br@130@01| | live]
(push) ; 11
; [then-branch: 68 | !(k@168@01 < |br@130@01|)]
(assert (not (< k@168@01 (Seq_length br@130@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 68 | k@168@01 < |br@130@01|]
(assert (< k@168@01 (Seq_length br@130@01)))
; [eval] j != k
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (< k@168@01 (Seq_length br@130@01))
  (not (< k@168@01 (Seq_length br@130@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@168@01)
  (and
    (<= 0 k@168@01)
    (or
      (< k@168@01 (Seq_length br@130@01))
      (not (< k@168@01 (Seq_length br@130@01)))))))
(assert (or (<= 0 k@168@01) (not (<= 0 k@168@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@167@01 (Seq_length br@130@01))
  (and
    (< j@167@01 (Seq_length br@130@01))
    (=>
      (<= 0 k@168@01)
      (and
        (<= 0 k@168@01)
        (or
          (< k@168@01 (Seq_length br@130@01))
          (not (< k@168@01 (Seq_length br@130@01))))))
    (or (<= 0 k@168@01) (not (<= 0 k@168@01))))))
(assert (or
  (< j@167@01 (Seq_length br@130@01))
  (not (< j@167@01 (Seq_length br@130@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@167@01)
  (and
    (<= 0 j@167@01)
    (=>
      (< j@167@01 (Seq_length br@130@01))
      (and
        (< j@167@01 (Seq_length br@130@01))
        (=>
          (<= 0 k@168@01)
          (and
            (<= 0 k@168@01)
            (or
              (< k@168@01 (Seq_length br@130@01))
              (not (< k@168@01 (Seq_length br@130@01))))))
        (or (<= 0 k@168@01) (not (<= 0 k@168@01)))))
    (or
      (< j@167@01 (Seq_length br@130@01))
      (not (< j@167@01 (Seq_length br@130@01)))))))
(assert (or (<= 0 j@167@01) (not (<= 0 j@167@01))))
(push) ; 4
; [then-branch: 69 | 0 <= j@167@01 && j@167@01 < |br@130@01| && 0 <= k@168@01 && k@168@01 < |br@130@01| && j@167@01 != k@168@01 | live]
; [else-branch: 69 | !(0 <= j@167@01 && j@167@01 < |br@130@01| && 0 <= k@168@01 && k@168@01 < |br@130@01| && j@167@01 != k@168@01) | live]
(push) ; 5
; [then-branch: 69 | 0 <= j@167@01 && j@167@01 < |br@130@01| && 0 <= k@168@01 && k@168@01 < |br@130@01| && j@167@01 != k@168@01]
(assert (and
  (<= 0 j@167@01)
  (and
    (< j@167@01 (Seq_length br@130@01))
    (and
      (<= 0 k@168@01)
      (and (< k@168@01 (Seq_length br@130@01)) (not (= j@167@01 k@168@01)))))))
; [eval] br[j] != br[k]
; [eval] br[j]
(push) ; 6
(assert (not (>= j@167@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] br[k]
(push) ; 6
(assert (not (>= k@168@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 69 | !(0 <= j@167@01 && j@167@01 < |br@130@01| && 0 <= k@168@01 && k@168@01 < |br@130@01| && j@167@01 != k@168@01)]
(assert (not
  (and
    (<= 0 j@167@01)
    (and
      (< j@167@01 (Seq_length br@130@01))
      (and
        (<= 0 k@168@01)
        (and (< k@168@01 (Seq_length br@130@01)) (not (= j@167@01 k@168@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@167@01)
    (and
      (< j@167@01 (Seq_length br@130@01))
      (and
        (<= 0 k@168@01)
        (and (< k@168@01 (Seq_length br@130@01)) (not (= j@167@01 k@168@01))))))
  (and
    (<= 0 j@167@01)
    (< j@167@01 (Seq_length br@130@01))
    (<= 0 k@168@01)
    (< k@168@01 (Seq_length br@130@01))
    (not (= j@167@01 k@168@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@167@01)
      (and
        (< j@167@01 (Seq_length br@130@01))
        (and
          (<= 0 k@168@01)
          (and (< k@168@01 (Seq_length br@130@01)) (not (= j@167@01 k@168@01)))))))
  (and
    (<= 0 j@167@01)
    (and
      (< j@167@01 (Seq_length br@130@01))
      (and
        (<= 0 k@168@01)
        (and (< k@168@01 (Seq_length br@130@01)) (not (= j@167@01 k@168@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@167@01 Int) (k@168@01 Int)) (!
  (and
    (=>
      (<= 0 j@167@01)
      (and
        (<= 0 j@167@01)
        (=>
          (< j@167@01 (Seq_length br@130@01))
          (and
            (< j@167@01 (Seq_length br@130@01))
            (=>
              (<= 0 k@168@01)
              (and
                (<= 0 k@168@01)
                (or
                  (< k@168@01 (Seq_length br@130@01))
                  (not (< k@168@01 (Seq_length br@130@01))))))
            (or (<= 0 k@168@01) (not (<= 0 k@168@01)))))
        (or
          (< j@167@01 (Seq_length br@130@01))
          (not (< j@167@01 (Seq_length br@130@01))))))
    (or (<= 0 j@167@01) (not (<= 0 j@167@01)))
    (=>
      (and
        (<= 0 j@167@01)
        (and
          (< j@167@01 (Seq_length br@130@01))
          (and
            (<= 0 k@168@01)
            (and (< k@168@01 (Seq_length br@130@01)) (not (= j@167@01 k@168@01))))))
      (and
        (<= 0 j@167@01)
        (< j@167@01 (Seq_length br@130@01))
        (<= 0 k@168@01)
        (< k@168@01 (Seq_length br@130@01))
        (not (= j@167@01 k@168@01))))
    (or
      (not
        (and
          (<= 0 j@167@01)
          (and
            (< j@167@01 (Seq_length br@130@01))
            (and
              (<= 0 k@168@01)
              (and
                (< k@168@01 (Seq_length br@130@01))
                (not (= j@167@01 k@168@01)))))))
      (and
        (<= 0 j@167@01)
        (and
          (< j@167@01 (Seq_length br@130@01))
          (and
            (<= 0 k@168@01)
            (and (< k@168@01 (Seq_length br@130@01)) (not (= j@167@01 k@168@01))))))))
  :pattern ((Seq_index br@130@01 j@167@01) (Seq_index br@130@01 k@168@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopE1.vpr@65@12@65@106-aux|)))
(push) ; 3
(assert (not (forall ((j@167@01 Int) (k@168@01 Int)) (!
  (=>
    (and
      (<= 0 j@167@01)
      (and
        (< j@167@01 (Seq_length br@130@01))
        (and
          (<= 0 k@168@01)
          (and (< k@168@01 (Seq_length br@130@01)) (not (= j@167@01 k@168@01))))))
    (not (= (Seq_index br@130@01 j@167@01) (Seq_index br@130@01 k@168@01))))
  :pattern ((Seq_index br@130@01 j@167@01) (Seq_index br@130@01 k@168@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopE1.vpr@65@12@65@106|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((j@167@01 Int) (k@168@01 Int)) (!
  (=>
    (and
      (<= 0 j@167@01)
      (and
        (< j@167@01 (Seq_length br@130@01))
        (and
          (<= 0 k@168@01)
          (and (< k@168@01 (Seq_length br@130@01)) (not (= j@167@01 k@168@01))))))
    (not (= (Seq_index br@130@01 j@167@01) (Seq_index br@130@01 k@168@01))))
  :pattern ((Seq_index br@130@01 j@167@01) (Seq_index br@130@01 k@168@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopE1.vpr@65@12@65@106|)))
(declare-const i@169@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 70 | !(0 <= i@169@01) | live]
; [else-branch: 70 | 0 <= i@169@01 | live]
(push) ; 5
; [then-branch: 70 | !(0 <= i@169@01)]
(assert (not (<= 0 i@169@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 70 | 0 <= i@169@01]
(assert (<= 0 i@169@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@169@01) (not (<= 0 i@169@01))))
(assert (and (<= 0 i@169@01) (< i@169@01 len@132@01)))
; [eval] br[i]
(push) ; 4
(assert (not (>= i@169@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@169@01 (Seq_length br@130@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@170@01 ($Ref) Int)
(declare-fun img@171@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@169@01 Int)) (!
  (=>
    (and (<= 0 i@169@01) (< i@169@01 len@132@01))
    (or (<= 0 i@169@01) (not (<= 0 i@169@01))))
  :pattern ((Seq_index br@130@01 i@169@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@169@01 Int) (i2@169@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@169@01) (< i1@169@01 len@132@01))
      (and (<= 0 i2@169@01) (< i2@169@01 len@132@01))
      (= (Seq_index br@130@01 i1@169@01) (Seq_index br@130@01 i2@169@01)))
    (= i1@169@01 i2@169@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@169@01 Int)) (!
  (=>
    (and (<= 0 i@169@01) (< i@169@01 len@132@01))
    (and
      (= (inv@170@01 (Seq_index br@130@01 i@169@01)) i@169@01)
      (img@171@01 (Seq_index br@130@01 i@169@01))))
  :pattern ((Seq_index br@130@01 i@169@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@171@01 r)
      (and (<= 0 (inv@170@01 r)) (< (inv@170@01 r) len@132@01)))
    (= (Seq_index br@130@01 (inv@170@01 r)) r))
  :pattern ((inv@170@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@169@01 Int)) (!
  (= (Seq_index br@130@01 i@169@01) (Seq_index cr@131@01 i@169@01))
  
  :qid |quant-u-16768|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@172@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@170@01 r)) (< (inv@170@01 r) len@132@01))
      (img@171@01 r)
      (= r (Seq_index br@130@01 (inv@170@01 r))))
    ($Perm.min
      (ite
        (and
          (img@143@01 r)
          (and (<= 0 (inv@142@01 r)) (< (inv@142@01 r) len@132@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@173@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@170@01 r)) (< (inv@170@01 r) len@132@01))
      (img@171@01 r)
      (= r (Seq_index br@130@01 (inv@170@01 r))))
    ($Perm.min
      (ite
        (and
          (img@148@01 r)
          (and (<= 0 (inv@147@01 r)) (< (inv@147@01 r) len@132@01)))
        $Perm.Write
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@172@01 r)))
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
          (img@143@01 r)
          (and (<= 0 (inv@142@01 r)) (< (inv@142@01 r) len@132@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@172@01 r))
    $Perm.No)
  
  :qid |quant-u-16770|))))
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
      (and (<= 0 (inv@170@01 r)) (< (inv@170@01 r) len@132@01))
      (img@171@01 r)
      (= r (Seq_index br@130@01 (inv@170@01 r))))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@172@01 r)) $Perm.No))
  
  :qid |quant-u-16771|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] 0 < len ==> |cr| == len
; [eval] 0 < len
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (< 0 len@132@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< 0 len@132@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 71 | 0 < len@132@01 | live]
; [else-branch: 71 | !(0 < len@132@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 71 | 0 < len@132@01]
(assert (< 0 len@132@01))
; [eval] |cr| == len
; [eval] |cr|
(pop) ; 4
(push) ; 4
; [else-branch: 71 | !(0 < len@132@01)]
(assert (not (< 0 len@132@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(push) ; 3
(assert (not (=> (< 0 len@132@01) (= (Seq_length cr@131@01) len@132@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=> (< 0 len@132@01) (= (Seq_length cr@131@01) len@132@01)))
; [eval] (forall j: Int, k: Int :: { cr[j], cr[k] } 0 <= j && (j < |cr| && (0 <= k && (k < |cr| && j != k))) ==> cr[j] != cr[k])
(declare-const j@174@01 Int)
(declare-const k@175@01 Int)
(push) ; 3
; [eval] 0 <= j && (j < |cr| && (0 <= k && (k < |cr| && j != k))) ==> cr[j] != cr[k]
; [eval] 0 <= j && (j < |cr| && (0 <= k && (k < |cr| && j != k)))
; [eval] 0 <= j
(push) ; 4
; [then-branch: 72 | !(0 <= j@174@01) | live]
; [else-branch: 72 | 0 <= j@174@01 | live]
(push) ; 5
; [then-branch: 72 | !(0 <= j@174@01)]
(assert (not (<= 0 j@174@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 72 | 0 <= j@174@01]
(assert (<= 0 j@174@01))
; [eval] j < |cr|
; [eval] |cr|
(push) ; 6
; [then-branch: 73 | !(j@174@01 < |cr@131@01|) | live]
; [else-branch: 73 | j@174@01 < |cr@131@01| | live]
(push) ; 7
; [then-branch: 73 | !(j@174@01 < |cr@131@01|)]
(assert (not (< j@174@01 (Seq_length cr@131@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 73 | j@174@01 < |cr@131@01|]
(assert (< j@174@01 (Seq_length cr@131@01)))
; [eval] 0 <= k
(push) ; 8
; [then-branch: 74 | !(0 <= k@175@01) | live]
; [else-branch: 74 | 0 <= k@175@01 | live]
(push) ; 9
; [then-branch: 74 | !(0 <= k@175@01)]
(assert (not (<= 0 k@175@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 74 | 0 <= k@175@01]
(assert (<= 0 k@175@01))
; [eval] k < |cr|
; [eval] |cr|
(push) ; 10
; [then-branch: 75 | !(k@175@01 < |cr@131@01|) | live]
; [else-branch: 75 | k@175@01 < |cr@131@01| | live]
(push) ; 11
; [then-branch: 75 | !(k@175@01 < |cr@131@01|)]
(assert (not (< k@175@01 (Seq_length cr@131@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 75 | k@175@01 < |cr@131@01|]
(assert (< k@175@01 (Seq_length cr@131@01)))
; [eval] j != k
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (< k@175@01 (Seq_length cr@131@01))
  (not (< k@175@01 (Seq_length cr@131@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@175@01)
  (and
    (<= 0 k@175@01)
    (or
      (< k@175@01 (Seq_length cr@131@01))
      (not (< k@175@01 (Seq_length cr@131@01)))))))
(assert (or (<= 0 k@175@01) (not (<= 0 k@175@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@174@01 (Seq_length cr@131@01))
  (and
    (< j@174@01 (Seq_length cr@131@01))
    (=>
      (<= 0 k@175@01)
      (and
        (<= 0 k@175@01)
        (or
          (< k@175@01 (Seq_length cr@131@01))
          (not (< k@175@01 (Seq_length cr@131@01))))))
    (or (<= 0 k@175@01) (not (<= 0 k@175@01))))))
(assert (or
  (< j@174@01 (Seq_length cr@131@01))
  (not (< j@174@01 (Seq_length cr@131@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@174@01)
  (and
    (<= 0 j@174@01)
    (=>
      (< j@174@01 (Seq_length cr@131@01))
      (and
        (< j@174@01 (Seq_length cr@131@01))
        (=>
          (<= 0 k@175@01)
          (and
            (<= 0 k@175@01)
            (or
              (< k@175@01 (Seq_length cr@131@01))
              (not (< k@175@01 (Seq_length cr@131@01))))))
        (or (<= 0 k@175@01) (not (<= 0 k@175@01)))))
    (or
      (< j@174@01 (Seq_length cr@131@01))
      (not (< j@174@01 (Seq_length cr@131@01)))))))
(assert (or (<= 0 j@174@01) (not (<= 0 j@174@01))))
(push) ; 4
; [then-branch: 76 | 0 <= j@174@01 && j@174@01 < |cr@131@01| && 0 <= k@175@01 && k@175@01 < |cr@131@01| && j@174@01 != k@175@01 | live]
; [else-branch: 76 | !(0 <= j@174@01 && j@174@01 < |cr@131@01| && 0 <= k@175@01 && k@175@01 < |cr@131@01| && j@174@01 != k@175@01) | live]
(push) ; 5
; [then-branch: 76 | 0 <= j@174@01 && j@174@01 < |cr@131@01| && 0 <= k@175@01 && k@175@01 < |cr@131@01| && j@174@01 != k@175@01]
(assert (and
  (<= 0 j@174@01)
  (and
    (< j@174@01 (Seq_length cr@131@01))
    (and
      (<= 0 k@175@01)
      (and (< k@175@01 (Seq_length cr@131@01)) (not (= j@174@01 k@175@01)))))))
; [eval] cr[j] != cr[k]
; [eval] cr[j]
(push) ; 6
(assert (not (>= j@174@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] cr[k]
(push) ; 6
(assert (not (>= k@175@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 76 | !(0 <= j@174@01 && j@174@01 < |cr@131@01| && 0 <= k@175@01 && k@175@01 < |cr@131@01| && j@174@01 != k@175@01)]
(assert (not
  (and
    (<= 0 j@174@01)
    (and
      (< j@174@01 (Seq_length cr@131@01))
      (and
        (<= 0 k@175@01)
        (and (< k@175@01 (Seq_length cr@131@01)) (not (= j@174@01 k@175@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@174@01)
    (and
      (< j@174@01 (Seq_length cr@131@01))
      (and
        (<= 0 k@175@01)
        (and (< k@175@01 (Seq_length cr@131@01)) (not (= j@174@01 k@175@01))))))
  (and
    (<= 0 j@174@01)
    (< j@174@01 (Seq_length cr@131@01))
    (<= 0 k@175@01)
    (< k@175@01 (Seq_length cr@131@01))
    (not (= j@174@01 k@175@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@174@01)
      (and
        (< j@174@01 (Seq_length cr@131@01))
        (and
          (<= 0 k@175@01)
          (and (< k@175@01 (Seq_length cr@131@01)) (not (= j@174@01 k@175@01)))))))
  (and
    (<= 0 j@174@01)
    (and
      (< j@174@01 (Seq_length cr@131@01))
      (and
        (<= 0 k@175@01)
        (and (< k@175@01 (Seq_length cr@131@01)) (not (= j@174@01 k@175@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@174@01 Int) (k@175@01 Int)) (!
  (and
    (=>
      (<= 0 j@174@01)
      (and
        (<= 0 j@174@01)
        (=>
          (< j@174@01 (Seq_length cr@131@01))
          (and
            (< j@174@01 (Seq_length cr@131@01))
            (=>
              (<= 0 k@175@01)
              (and
                (<= 0 k@175@01)
                (or
                  (< k@175@01 (Seq_length cr@131@01))
                  (not (< k@175@01 (Seq_length cr@131@01))))))
            (or (<= 0 k@175@01) (not (<= 0 k@175@01)))))
        (or
          (< j@174@01 (Seq_length cr@131@01))
          (not (< j@174@01 (Seq_length cr@131@01))))))
    (or (<= 0 j@174@01) (not (<= 0 j@174@01)))
    (=>
      (and
        (<= 0 j@174@01)
        (and
          (< j@174@01 (Seq_length cr@131@01))
          (and
            (<= 0 k@175@01)
            (and (< k@175@01 (Seq_length cr@131@01)) (not (= j@174@01 k@175@01))))))
      (and
        (<= 0 j@174@01)
        (< j@174@01 (Seq_length cr@131@01))
        (<= 0 k@175@01)
        (< k@175@01 (Seq_length cr@131@01))
        (not (= j@174@01 k@175@01))))
    (or
      (not
        (and
          (<= 0 j@174@01)
          (and
            (< j@174@01 (Seq_length cr@131@01))
            (and
              (<= 0 k@175@01)
              (and
                (< k@175@01 (Seq_length cr@131@01))
                (not (= j@174@01 k@175@01)))))))
      (and
        (<= 0 j@174@01)
        (and
          (< j@174@01 (Seq_length cr@131@01))
          (and
            (<= 0 k@175@01)
            (and (< k@175@01 (Seq_length cr@131@01)) (not (= j@174@01 k@175@01))))))))
  :pattern ((Seq_index cr@131@01 j@174@01) (Seq_index cr@131@01 k@175@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopE1.vpr@68@12@68@106-aux|)))
(push) ; 3
(assert (not (forall ((j@174@01 Int) (k@175@01 Int)) (!
  (=>
    (and
      (<= 0 j@174@01)
      (and
        (< j@174@01 (Seq_length cr@131@01))
        (and
          (<= 0 k@175@01)
          (and (< k@175@01 (Seq_length cr@131@01)) (not (= j@174@01 k@175@01))))))
    (not (= (Seq_index cr@131@01 j@174@01) (Seq_index cr@131@01 k@175@01))))
  :pattern ((Seq_index cr@131@01 j@174@01) (Seq_index cr@131@01 k@175@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopE1.vpr@68@12@68@106|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((j@174@01 Int) (k@175@01 Int)) (!
  (=>
    (and
      (<= 0 j@174@01)
      (and
        (< j@174@01 (Seq_length cr@131@01))
        (and
          (<= 0 k@175@01)
          (and (< k@175@01 (Seq_length cr@131@01)) (not (= j@174@01 k@175@01))))))
    (not (= (Seq_index cr@131@01 j@174@01) (Seq_index cr@131@01 k@175@01))))
  :pattern ((Seq_index cr@131@01 j@174@01) (Seq_index cr@131@01 k@175@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testDepParLoopE1.vpr@68@12@68@106|)))
(declare-const i@176@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 77 | !(0 <= i@176@01) | live]
; [else-branch: 77 | 0 <= i@176@01 | live]
(push) ; 5
; [then-branch: 77 | !(0 <= i@176@01)]
(assert (not (<= 0 i@176@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 77 | 0 <= i@176@01]
(assert (<= 0 i@176@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@176@01) (not (<= 0 i@176@01))))
(assert (and (<= 0 i@176@01) (< i@176@01 len@132@01)))
; [eval] cr[i]
(push) ; 4
(assert (not (>= i@176@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@176@01 (Seq_length cr@131@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@177@01 ($Ref) Int)
(declare-fun img@178@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@176@01 Int)) (!
  (=>
    (and (<= 0 i@176@01) (< i@176@01 len@132@01))
    (or (<= 0 i@176@01) (not (<= 0 i@176@01))))
  :pattern ((Seq_index cr@131@01 i@176@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@176@01 Int) (i2@176@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@176@01) (< i1@176@01 len@132@01))
      (and (<= 0 i2@176@01) (< i2@176@01 len@132@01))
      (= (Seq_index cr@131@01 i1@176@01) (Seq_index cr@131@01 i2@176@01)))
    (= i1@176@01 i2@176@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@176@01 Int)) (!
  (=>
    (and (<= 0 i@176@01) (< i@176@01 len@132@01))
    (and
      (= (inv@177@01 (Seq_index cr@131@01 i@176@01)) i@176@01)
      (img@178@01 (Seq_index cr@131@01 i@176@01))))
  :pattern ((Seq_index cr@131@01 i@176@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@178@01 r)
      (and (<= 0 (inv@177@01 r)) (< (inv@177@01 r) len@132@01)))
    (= (Seq_index cr@131@01 (inv@177@01 r)) r))
  :pattern ((inv@177@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@179@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@177@01 r)) (< (inv@177@01 r) len@132@01))
      (img@178@01 r)
      (= r (Seq_index cr@131@01 (inv@177@01 r))))
    ($Perm.min
      (ite
        (and
          (img@148@01 r)
          (and (<= 0 (inv@147@01 r)) (< (inv@147@01 r) len@132@01)))
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
          (img@148@01 r)
          (and (<= 0 (inv@147@01 r)) (< (inv@147@01 r) len@132@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@179@01 r))
    $Perm.No)
  
  :qid |quant-u-16774|))))
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
      (and (<= 0 (inv@177@01 r)) (< (inv@177@01 r) len@132@01))
      (img@178@01 r)
      (= r (Seq_index cr@131@01 (inv@177@01 r))))
    (= (- $Perm.Write (pTaken@179@01 r)) $Perm.No))
  
  :qid |quant-u-16775|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const $t@180@01 $Snap)
(assert (= $t@180@01 ($Snap.combine ($Snap.first $t@180@01) ($Snap.second $t@180@01))))
(assert (= ($Snap.first $t@180@01) $Snap.unit))
; [eval] 0 < len ==> |ar| == len
; [eval] 0 < len
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (< 0 len@132@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< 0 len@132@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 78 | 0 < len@132@01 | live]
; [else-branch: 78 | !(0 < len@132@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 78 | 0 < len@132@01]
(assert (< 0 len@132@01))
; [eval] |ar| == len
; [eval] |ar|
(pop) ; 4
(push) ; 4
; [else-branch: 78 | !(0 < len@132@01)]
(assert (not (< 0 len@132@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=
  ($Snap.second $t@180@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@180@01))
    ($Snap.second ($Snap.second $t@180@01)))))
(declare-const i@181@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 79 | !(0 <= i@181@01) | live]
; [else-branch: 79 | 0 <= i@181@01 | live]
(push) ; 5
; [then-branch: 79 | !(0 <= i@181@01)]
(assert (not (<= 0 i@181@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 79 | 0 <= i@181@01]
(assert (<= 0 i@181@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@181@01) (not (<= 0 i@181@01))))
(assert (and (<= 0 i@181@01) (< i@181@01 len@132@01)))
; [eval] ar[i]
(push) ; 4
(assert (not (>= i@181@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@181@01 (Seq_length ar@129@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@182@01 ($Ref) Int)
(declare-fun img@183@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@181@01 Int)) (!
  (=>
    (and (<= 0 i@181@01) (< i@181@01 len@132@01))
    (or (<= 0 i@181@01) (not (<= 0 i@181@01))))
  :pattern ((Seq_index ar@129@01 i@181@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@181@01 Int) (i2@181@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@181@01) (< i1@181@01 len@132@01))
      (and (<= 0 i2@181@01) (< i2@181@01 len@132@01))
      (= (Seq_index ar@129@01 i1@181@01) (Seq_index ar@129@01 i2@181@01)))
    (= i1@181@01 i2@181@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@181@01 Int)) (!
  (=>
    (and (<= 0 i@181@01) (< i@181@01 len@132@01))
    (and
      (= (inv@182@01 (Seq_index ar@129@01 i@181@01)) i@181@01)
      (img@183@01 (Seq_index ar@129@01 i@181@01))))
  :pattern ((Seq_index ar@129@01 i@181@01))
  :qid |quant-u-16777|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@183@01 r)
      (and (<= 0 (inv@182@01 r)) (< (inv@182@01 r) len@132@01)))
    (= (Seq_index ar@129@01 (inv@182@01 r)) r))
  :pattern ((inv@182@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@181@01 Int)) (!
  (=>
    (and (<= 0 i@181@01) (< i@181@01 len@132@01))
    (not (= (Seq_index ar@129@01 i@181@01) $Ref.null)))
  :pattern ((Seq_index ar@129@01 i@181@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second $t@180@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@180@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@180@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@180@01))) $Snap.unit))
; [eval] 0 < len ==> |br| == len
; [eval] 0 < len
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (< 0 len@132@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< 0 len@132@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 80 | 0 < len@132@01 | live]
; [else-branch: 80 | !(0 < len@132@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 80 | 0 < len@132@01]
(assert (< 0 len@132@01))
; [eval] |br| == len
; [eval] |br|
(pop) ; 4
(push) ; 4
; [else-branch: 80 | !(0 < len@132@01)]
(assert (not (< 0 len@132@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@180@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@180@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@180@01)))))))
(declare-const i@184@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 81 | !(0 <= i@184@01) | live]
; [else-branch: 81 | 0 <= i@184@01 | live]
(push) ; 5
; [then-branch: 81 | !(0 <= i@184@01)]
(assert (not (<= 0 i@184@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 81 | 0 <= i@184@01]
(assert (<= 0 i@184@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@184@01) (not (<= 0 i@184@01))))
(assert (and (<= 0 i@184@01) (< i@184@01 len@132@01)))
; [eval] br[i]
(push) ; 4
(assert (not (>= i@184@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@184@01 (Seq_length br@130@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@185@01 ($Ref) Int)
(declare-fun img@186@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@184@01 Int)) (!
  (=>
    (and (<= 0 i@184@01) (< i@184@01 len@132@01))
    (or (<= 0 i@184@01) (not (<= 0 i@184@01))))
  :pattern ((Seq_index br@130@01 i@184@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@184@01 Int) (i2@184@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@184@01) (< i1@184@01 len@132@01))
      (and (<= 0 i2@184@01) (< i2@184@01 len@132@01))
      (= (Seq_index br@130@01 i1@184@01) (Seq_index br@130@01 i2@184@01)))
    (= i1@184@01 i2@184@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@184@01 Int)) (!
  (=>
    (and (<= 0 i@184@01) (< i@184@01 len@132@01))
    (and
      (= (inv@185@01 (Seq_index br@130@01 i@184@01)) i@184@01)
      (img@186@01 (Seq_index br@130@01 i@184@01))))
  :pattern ((Seq_index br@130@01 i@184@01))
  :qid |quant-u-16779|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@186@01 r)
      (and (<= 0 (inv@185@01 r)) (< (inv@185@01 r) len@132@01)))
    (= (Seq_index br@130@01 (inv@185@01 r)) r))
  :pattern ((inv@185@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@184@01 Int)) (!
  (=>
    (and (<= 0 i@184@01) (< i@184@01 len@132@01))
    (not (= (Seq_index br@130@01 i@184@01) $Ref.null)))
  :pattern ((Seq_index br@130@01 i@184@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index br@130@01 i@184@01) (Seq_index ar@129@01 i@181@01))
    (=
      (and
        (img@186@01 r)
        (and (<= 0 (inv@185@01 r)) (< (inv@185@01 r) len@132@01)))
      (and
        (img@183@01 r)
        (and (<= 0 (inv@182@01 r)) (< (inv@182@01 r) len@132@01)))))
  
  :qid |quant-u-16780|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@180@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@180@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@180@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@180@01)))))
  $Snap.unit))
; [eval] 0 < len ==> |cr| == len
; [eval] 0 < len
(set-option :timeout 0)
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (< 0 len@132@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< 0 len@132@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 82 | 0 < len@132@01 | live]
; [else-branch: 82 | !(0 < len@132@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 82 | 0 < len@132@01]
(assert (< 0 len@132@01))
; [eval] |cr| == len
; [eval] |cr|
(pop) ; 4
(push) ; 4
; [else-branch: 82 | !(0 < len@132@01)]
(assert (not (< 0 len@132@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@180@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@180@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@180@01)))))))))
(declare-const i@187@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 83 | !(0 <= i@187@01) | live]
; [else-branch: 83 | 0 <= i@187@01 | live]
(push) ; 5
; [then-branch: 83 | !(0 <= i@187@01)]
(assert (not (<= 0 i@187@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 83 | 0 <= i@187@01]
(assert (<= 0 i@187@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@187@01) (not (<= 0 i@187@01))))
(assert (and (<= 0 i@187@01) (< i@187@01 len@132@01)))
; [eval] cr[i]
(push) ; 4
(assert (not (>= i@187@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@187@01 (Seq_length cr@131@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@188@01 ($Ref) Int)
(declare-fun img@189@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@187@01 Int)) (!
  (=>
    (and (<= 0 i@187@01) (< i@187@01 len@132@01))
    (or (<= 0 i@187@01) (not (<= 0 i@187@01))))
  :pattern ((Seq_index cr@131@01 i@187@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@187@01 Int) (i2@187@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@187@01) (< i1@187@01 len@132@01))
      (and (<= 0 i2@187@01) (< i2@187@01 len@132@01))
      (= (Seq_index cr@131@01 i1@187@01) (Seq_index cr@131@01 i2@187@01)))
    (= i1@187@01 i2@187@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@187@01 Int)) (!
  (=>
    (and (<= 0 i@187@01) (< i@187@01 len@132@01))
    (and
      (= (inv@188@01 (Seq_index cr@131@01 i@187@01)) i@187@01)
      (img@189@01 (Seq_index cr@131@01 i@187@01))))
  :pattern ((Seq_index cr@131@01 i@187@01))
  :qid |quant-u-16782|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@189@01 r)
      (and (<= 0 (inv@188@01 r)) (< (inv@188@01 r) len@132@01)))
    (= (Seq_index cr@131@01 (inv@188@01 r)) r))
  :pattern ((inv@188@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@187@01 Int)) (!
  (=>
    (and (<= 0 i@187@01) (< i@187@01 len@132@01))
    (not (= (Seq_index cr@131@01 i@187@01) $Ref.null)))
  :pattern ((Seq_index cr@131@01 i@187@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index cr@131@01 i@187@01) (Seq_index br@130@01 i@184@01))
    (=
      (and
        (img@189@01 r)
        (and (<= 0 (inv@188@01 r)) (< (inv@188@01 r) len@132@01)))
      (and
        (img@186@01 r)
        (and (<= 0 (inv@185@01 r)) (< (inv@185@01 r) len@132@01)))))
  
  :qid |quant-u-16783|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index cr@131@01 i@187@01) (Seq_index ar@129@01 i@181@01))
    (=
      (and
        (img@189@01 r)
        (and (<= 0 (inv@188@01 r)) (< (inv@188@01 r) len@132@01)))
      (and
        (img@183@01 r)
        (and (<= 0 (inv@182@01 r)) (< (inv@182@01 r) len@132@01)))))
  
  :qid |quant-u-16784|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@180@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@180@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@180@01))))))))))
(declare-const i@190@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (0 <= 0 ? 1 : 0) - 1 <= i && i < len - 1
; [eval] (0 <= 0 ? 1 : 0) - 1 <= i
; [eval] (0 <= 0 ? 1 : 0) - 1
; [eval] (0 <= 0 ? 1 : 0)
; [eval] 0 <= 0
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 84 | True | live]
; [else-branch: 84 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 84 | True]
(pop) ; 5
(pop) ; 4
; Joined path conditions
(push) ; 4
; [then-branch: 85 | !(0 <= i@190@01) | live]
; [else-branch: 85 | 0 <= i@190@01 | live]
(push) ; 5
; [then-branch: 85 | !(0 <= i@190@01)]
(assert (not (<= 0 i@190@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 85 | 0 <= i@190@01]
(assert (<= 0 i@190@01))
; [eval] i < len - 1
; [eval] len - 1
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@190@01) (not (<= 0 i@190@01))))
(assert (and (<= 0 i@190@01) (< i@190@01 (- len@132@01 1))))
; [eval] ar[i]
(push) ; 4
(assert (not (>= i@190@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@190@01 (Seq_length ar@129@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@191@01 ($Ref) Int)
(declare-fun img@192@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@190@01 Int)) (!
  (=>
    (and (<= 0 i@190@01) (< i@190@01 (- len@132@01 1)))
    (or (<= 0 i@190@01) (not (<= 0 i@190@01))))
  :pattern ((Seq_index ar@129@01 i@190@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@190@01 Int) (i2@190@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@190@01) (< i1@190@01 (- len@132@01 1)))
      (and (<= 0 i2@190@01) (< i2@190@01 (- len@132@01 1)))
      (= (Seq_index ar@129@01 i1@190@01) (Seq_index ar@129@01 i2@190@01)))
    (= i1@190@01 i2@190@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@190@01 Int)) (!
  (=>
    (and (<= 0 i@190@01) (< i@190@01 (- len@132@01 1)))
    (and
      (= (inv@191@01 (Seq_index ar@129@01 i@190@01)) i@190@01)
      (img@192@01 (Seq_index ar@129@01 i@190@01))))
  :pattern ((Seq_index ar@129@01 i@190@01))
  :qid |quant-u-16786|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@192@01 r)
      (and (<= 0 (inv@191@01 r)) (< (inv@191@01 r) (- len@132@01 1))))
    (= (Seq_index ar@129@01 (inv@191@01 r)) r))
  :pattern ((inv@191@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@190@01 Int)) (!
  (=>
    (and (<= 0 i@190@01) (< i@190@01 (- len@132@01 1)))
    (not (= (Seq_index ar@129@01 i@190@01) $Ref.null)))
  :pattern ((Seq_index ar@129@01 i@190@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ar@129@01 i@190@01) (Seq_index cr@131@01 i@187@01))
    (=
      (and
        (img@192@01 r)
        (and (<= 0 (inv@191@01 r)) (< (inv@191@01 r) (- len@132@01 1))))
      (and
        (img@189@01 r)
        (and (<= 0 (inv@188@01 r)) (< (inv@188@01 r) len@132@01)))))
  
  :qid |quant-u-16787|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ar@129@01 i@190@01) (Seq_index br@130@01 i@184@01))
    (=
      (and
        (img@192@01 r)
        (and (<= 0 (inv@191@01 r)) (< (inv@191@01 r) (- len@132@01 1))))
      (and
        (img@186@01 r)
        (and (<= 0 (inv@185@01 r)) (< (inv@185@01 r) len@132@01)))))
  
  :qid |quant-u-16788|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index ar@129@01 i@190@01) (Seq_index ar@129@01 i@181@01))
    (=
      (and
        (img@192@01 r)
        (and (<= 0 (inv@191@01 r)) (< (inv@191@01 r) (- len@132@01 1))))
      (and
        (img@183@01 r)
        (and (<= 0 (inv@182@01 r)) (< (inv@182@01 r) len@132@01)))))
  
  :qid |quant-u-16789|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] 0 <= |ar| - 1 && |ar| - 1 < len
; [eval] 0 <= |ar| - 1
; [eval] |ar| - 1
; [eval] |ar|
(set-option :timeout 0)
(push) ; 3
; [then-branch: 86 | !(0 <= |ar@129@01| - 1) | live]
; [else-branch: 86 | 0 <= |ar@129@01| - 1 | live]
(push) ; 4
; [then-branch: 86 | !(0 <= |ar@129@01| - 1)]
(assert (not (<= 0 (- (Seq_length ar@129@01) 1))))
(pop) ; 4
(push) ; 4
; [else-branch: 86 | 0 <= |ar@129@01| - 1]
(assert (<= 0 (- (Seq_length ar@129@01) 1)))
; [eval] |ar| - 1 < len
; [eval] |ar| - 1
; [eval] |ar|
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (<= 0 (- (Seq_length ar@129@01) 1))
  (not (<= 0 (- (Seq_length ar@129@01) 1)))))
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (and
    (<= 0 (- (Seq_length ar@129@01) 1))
    (< (- (Seq_length ar@129@01) 1) len@132@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (<= 0 (- (Seq_length ar@129@01) 1))
  (< (- (Seq_length ar@129@01) 1) len@132@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 87 | 0 <= |ar@129@01| - 1 && |ar@129@01| - 1 < len@132@01 | live]
; [else-branch: 87 | !(0 <= |ar@129@01| - 1 && |ar@129@01| - 1 < len@132@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 87 | 0 <= |ar@129@01| - 1 && |ar@129@01| - 1 < len@132@01]
(assert (and
  (<= 0 (- (Seq_length ar@129@01) 1))
  (< (- (Seq_length ar@129@01) 1) len@132@01)))
; [eval] ar[|ar| - 1]
; [eval] |ar| - 1
; [eval] |ar|
(push) ; 4
(assert (not (>= (- (Seq_length ar@129@01) 1) 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< (- (Seq_length ar@129@01) 1) (Seq_length ar@129@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@193@01 $FVF<Ref__Integer_value>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_Ref__Integer_value (as sm@193@01  $FVF<Ref__Integer_value>) (Seq_index
    ar@129@01
    (- (Seq_length ar@129@01) 1)))
  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@180@01))))))))))
(assert (<=
  $Perm.No
  (ite
    (=
      (Seq_index ar@129@01 (- (Seq_length ar@129@01) 1))
      (Seq_index ar@129@01 (- (Seq_length ar@129@01) 1)))
    (/ (to_real 1) (to_real 2))
    $Perm.No)))
(assert (<=
  (ite
    (=
      (Seq_index ar@129@01 (- (Seq_length ar@129@01) 1))
      (Seq_index ar@129@01 (- (Seq_length ar@129@01) 1)))
    (/ (to_real 1) (to_real 2))
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (Seq_index ar@129@01 (- (Seq_length ar@129@01) 1))
    (Seq_index ar@129@01 (- (Seq_length ar@129@01) 1)))
  (not (= (Seq_index ar@129@01 (- (Seq_length ar@129@01) 1)) $Ref.null))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] |ar| == len
; [eval] |ar|
(declare-const i@194@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 88 | !(0 <= i@194@01) | live]
; [else-branch: 88 | 0 <= i@194@01 | live]
(push) ; 6
; [then-branch: 88 | !(0 <= i@194@01)]
(assert (not (<= 0 i@194@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 88 | 0 <= i@194@01]
(assert (<= 0 i@194@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@194@01) (not (<= 0 i@194@01))))
(assert (and (<= 0 i@194@01) (< i@194@01 len@132@01)))
; [eval] ar[i]
(push) ; 5
(assert (not (>= i@194@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@194@01 (Seq_length ar@129@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@195@01 ($Ref) Int)
(declare-fun img@196@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@194@01 Int)) (!
  (=>
    (and (<= 0 i@194@01) (< i@194@01 len@132@01))
    (or (<= 0 i@194@01) (not (<= 0 i@194@01))))
  :pattern ((Seq_index ar@129@01 i@194@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@194@01 Int) (i2@194@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@194@01) (< i1@194@01 len@132@01))
      (and (<= 0 i2@194@01) (< i2@194@01 len@132@01))
      (= (Seq_index ar@129@01 i1@194@01) (Seq_index ar@129@01 i2@194@01)))
    (= i1@194@01 i2@194@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@194@01 Int)) (!
  (=>
    (and (<= 0 i@194@01) (< i@194@01 len@132@01))
    (and
      (= (inv@195@01 (Seq_index ar@129@01 i@194@01)) i@194@01)
      (img@196@01 (Seq_index ar@129@01 i@194@01))))
  :pattern ((Seq_index ar@129@01 i@194@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@196@01 r)
      (and (<= 0 (inv@195@01 r)) (< (inv@195@01 r) len@132@01)))
    (= (Seq_index ar@129@01 (inv@195@01 r)) r))
  :pattern ((inv@195@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@194@01 Int)) (!
  (= (Seq_index ar@129@01 i@194@01) (Seq_index br@130@01 i@194@01))
  
  :qid |quant-u-16791|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@194@01 Int)) (!
  (= (Seq_index ar@129@01 i@194@01) (Seq_index cr@131@01 i@194@01))
  
  :qid |quant-u-16792|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@197@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@195@01 r)) (< (inv@195@01 r) len@132@01))
      (img@196@01 r)
      (= r (Seq_index ar@129@01 (inv@195@01 r))))
    ($Perm.min
      (ite
        (and
          (img@183@01 r)
          (and (<= 0 (inv@182@01 r)) (< (inv@182@01 r) len@132@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@198@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@195@01 r)) (< (inv@195@01 r) len@132@01))
      (img@196@01 r)
      (= r (Seq_index ar@129@01 (inv@195@01 r))))
    ($Perm.min
      (ite
        (and
          (img@192@01 r)
          (and (<= 0 (inv@191@01 r)) (< (inv@191@01 r) (- len@132@01 1))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- $Perm.Write (pTaken@197@01 r)))
    $Perm.No))
(define-fun pTaken@199@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@195@01 r)) (< (inv@195@01 r) len@132@01))
      (img@196@01 r)
      (= r (Seq_index ar@129@01 (inv@195@01 r))))
    ($Perm.min
      (ite
        (= r (Seq_index ar@129@01 (- (Seq_length ar@129@01) 1)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- (- $Perm.Write (pTaken@197@01 r)) (pTaken@198@01 r)))
    $Perm.No))
(define-fun pTaken@200@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@195@01 r)) (< (inv@195@01 r) len@132@01))
      (img@196@01 r)
      (= r (Seq_index ar@129@01 (inv@195@01 r))))
    ($Perm.min
      (ite
        (and
          (img@186@01 r)
          (and (<= 0 (inv@185@01 r)) (< (inv@185@01 r) len@132@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (-
        (- (- $Perm.Write (pTaken@197@01 r)) (pTaken@198@01 r))
        (pTaken@199@01 r)))
    $Perm.No))
(define-fun pTaken@201@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@195@01 r)) (< (inv@195@01 r) len@132@01))
      (img@196@01 r)
      (= r (Seq_index ar@129@01 (inv@195@01 r))))
    ($Perm.min
      (ite
        (and
          (img@189@01 r)
          (and (<= 0 (inv@188@01 r)) (< (inv@188@01 r) len@132@01)))
        $Perm.Write
        $Perm.No)
      (-
        (-
          (- (- $Perm.Write (pTaken@197@01 r)) (pTaken@198@01 r))
          (pTaken@199@01 r))
        (pTaken@200@01 r)))
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
      (ite
        (and
          (img@183@01 r)
          (and (<= 0 (inv@182@01 r)) (< (inv@182@01 r) len@132@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@197@01 r))
    $Perm.No)
  
  :qid |quant-u-16794|))))
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
      (and (<= 0 (inv@195@01 r)) (< (inv@195@01 r) len@132@01))
      (img@196@01 r)
      (= r (Seq_index ar@129@01 (inv@195@01 r))))
    (= (- $Perm.Write (pTaken@197@01 r)) $Perm.No))
  
  :qid |quant-u-16795|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@192@01 r)
          (and (<= 0 (inv@191@01 r)) (< (inv@191@01 r) (- len@132@01 1))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@198@01 r))
    $Perm.No)
  
  :qid |quant-u-16796|))))
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
      (and (<= 0 (inv@195@01 r)) (< (inv@195@01 r) len@132@01))
      (img@196@01 r)
      (= r (Seq_index ar@129@01 (inv@195@01 r))))
    (= (- (- $Perm.Write (pTaken@197@01 r)) (pTaken@198@01 r)) $Perm.No))
  
  :qid |quant-u-16797|))))
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
    (ite
      (=
        (Seq_index ar@129@01 (- (Seq_length ar@129@01) 1))
        (Seq_index ar@129@01 (- (Seq_length ar@129@01) 1)))
      (/ (to_real 1) (to_real 2))
      $Perm.No)
    (pTaken@199@01 (Seq_index ar@129@01 (- (Seq_length ar@129@01) 1))))
  $Perm.No)))
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
      (and (<= 0 (inv@195@01 r)) (< (inv@195@01 r) len@132@01))
      (img@196@01 r)
      (= r (Seq_index ar@129@01 (inv@195@01 r))))
    (=
      (-
        (- (- $Perm.Write (pTaken@197@01 r)) (pTaken@198@01 r))
        (pTaken@199@01 r))
      $Perm.No))
  
  :qid |quant-u-16799|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] |br| == len
; [eval] |br|
(declare-const i@202@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 89 | !(0 <= i@202@01) | live]
; [else-branch: 89 | 0 <= i@202@01 | live]
(push) ; 6
; [then-branch: 89 | !(0 <= i@202@01)]
(assert (not (<= 0 i@202@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 89 | 0 <= i@202@01]
(assert (<= 0 i@202@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@202@01) (not (<= 0 i@202@01))))
(assert (and (<= 0 i@202@01) (< i@202@01 len@132@01)))
; [eval] br[i]
(push) ; 5
(assert (not (>= i@202@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@202@01 (Seq_length br@130@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@203@01 ($Ref) Int)
(declare-fun img@204@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@202@01 Int)) (!
  (=>
    (and (<= 0 i@202@01) (< i@202@01 len@132@01))
    (or (<= 0 i@202@01) (not (<= 0 i@202@01))))
  :pattern ((Seq_index br@130@01 i@202@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@202@01 Int) (i2@202@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@202@01) (< i1@202@01 len@132@01))
      (and (<= 0 i2@202@01) (< i2@202@01 len@132@01))
      (= (Seq_index br@130@01 i1@202@01) (Seq_index br@130@01 i2@202@01)))
    (= i1@202@01 i2@202@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@202@01 Int)) (!
  (=>
    (and (<= 0 i@202@01) (< i@202@01 len@132@01))
    (and
      (= (inv@203@01 (Seq_index br@130@01 i@202@01)) i@202@01)
      (img@204@01 (Seq_index br@130@01 i@202@01))))
  :pattern ((Seq_index br@130@01 i@202@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@204@01 r)
      (and (<= 0 (inv@203@01 r)) (< (inv@203@01 r) len@132@01)))
    (= (Seq_index br@130@01 (inv@203@01 r)) r))
  :pattern ((inv@203@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@202@01 Int)) (!
  (= (Seq_index br@130@01 i@202@01) (Seq_index cr@131@01 i@202@01))
  
  :qid |quant-u-16801|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@205@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@203@01 r)) (< (inv@203@01 r) len@132@01))
      (img@204@01 r)
      (= r (Seq_index br@130@01 (inv@203@01 r))))
    ($Perm.min
      (ite
        (and
          (img@186@01 r)
          (and (<= 0 (inv@185@01 r)) (< (inv@185@01 r) len@132@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@206@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@203@01 r)) (< (inv@203@01 r) len@132@01))
      (img@204@01 r)
      (= r (Seq_index br@130@01 (inv@203@01 r))))
    ($Perm.min
      (ite
        (and
          (img@189@01 r)
          (and (<= 0 (inv@188@01 r)) (< (inv@188@01 r) len@132@01)))
        $Perm.Write
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@205@01 r)))
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
      (ite
        (and
          (img@186@01 r)
          (and (<= 0 (inv@185@01 r)) (< (inv@185@01 r) len@132@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@205@01 r))
    $Perm.No)
  
  :qid |quant-u-16803|))))
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
      (and (<= 0 (inv@203@01 r)) (< (inv@203@01 r) len@132@01))
      (img@204@01 r)
      (= r (Seq_index br@130@01 (inv@203@01 r))))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@205@01 r)) $Perm.No))
  
  :qid |quant-u-16804|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] |cr| == len
; [eval] |cr|
(declare-const i@207@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 90 | !(0 <= i@207@01) | live]
; [else-branch: 90 | 0 <= i@207@01 | live]
(push) ; 6
; [then-branch: 90 | !(0 <= i@207@01)]
(assert (not (<= 0 i@207@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 90 | 0 <= i@207@01]
(assert (<= 0 i@207@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@207@01) (not (<= 0 i@207@01))))
(assert (and (<= 0 i@207@01) (< i@207@01 len@132@01)))
; [eval] cr[i]
(push) ; 5
(assert (not (>= i@207@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@207@01 (Seq_length cr@131@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@208@01 ($Ref) Int)
(declare-fun img@209@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@207@01 Int)) (!
  (=>
    (and (<= 0 i@207@01) (< i@207@01 len@132@01))
    (or (<= 0 i@207@01) (not (<= 0 i@207@01))))
  :pattern ((Seq_index cr@131@01 i@207@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@207@01 Int) (i2@207@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@207@01) (< i1@207@01 len@132@01))
      (and (<= 0 i2@207@01) (< i2@207@01 len@132@01))
      (= (Seq_index cr@131@01 i1@207@01) (Seq_index cr@131@01 i2@207@01)))
    (= i1@207@01 i2@207@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@207@01 Int)) (!
  (=>
    (and (<= 0 i@207@01) (< i@207@01 len@132@01))
    (and
      (= (inv@208@01 (Seq_index cr@131@01 i@207@01)) i@207@01)
      (img@209@01 (Seq_index cr@131@01 i@207@01))))
  :pattern ((Seq_index cr@131@01 i@207@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@209@01 r)
      (and (<= 0 (inv@208@01 r)) (< (inv@208@01 r) len@132@01)))
    (= (Seq_index cr@131@01 (inv@208@01 r)) r))
  :pattern ((inv@208@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@210@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@208@01 r)) (< (inv@208@01 r) len@132@01))
      (img@209@01 r)
      (= r (Seq_index cr@131@01 (inv@208@01 r))))
    ($Perm.min
      (ite
        (and
          (img@189@01 r)
          (and (<= 0 (inv@188@01 r)) (< (inv@188@01 r) len@132@01)))
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
          (img@189@01 r)
          (and (<= 0 (inv@188@01 r)) (< (inv@188@01 r) len@132@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@210@01 r))
    $Perm.No)
  
  :qid |quant-u-16807|))))
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
      (and (<= 0 (inv@208@01 r)) (< (inv@208@01 r) len@132@01))
      (img@209@01 r)
      (= r (Seq_index cr@131@01 (inv@208@01 r))))
    (= (- $Perm.Write (pTaken@210@01 r)) $Perm.No))
  
  :qid |quant-u-16808|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 87 | !(0 <= |ar@129@01| - 1 && |ar@129@01| - 1 < len@132@01)]
(assert (not
  (and
    (<= 0 (- (Seq_length ar@129@01) 1))
    (< (- (Seq_length ar@129@01) 1) len@132@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@180@01)))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] |ar| == len
; [eval] |ar|
(declare-const i@211@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 91 | !(0 <= i@211@01) | live]
; [else-branch: 91 | 0 <= i@211@01 | live]
(push) ; 6
; [then-branch: 91 | !(0 <= i@211@01)]
(assert (not (<= 0 i@211@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 91 | 0 <= i@211@01]
(assert (<= 0 i@211@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@211@01) (not (<= 0 i@211@01))))
(assert (and (<= 0 i@211@01) (< i@211@01 len@132@01)))
; [eval] ar[i]
(push) ; 5
(assert (not (>= i@211@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@211@01 (Seq_length ar@129@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@212@01 ($Ref) Int)
(declare-fun img@213@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@211@01 Int)) (!
  (=>
    (and (<= 0 i@211@01) (< i@211@01 len@132@01))
    (or (<= 0 i@211@01) (not (<= 0 i@211@01))))
  :pattern ((Seq_index ar@129@01 i@211@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@211@01 Int) (i2@211@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@211@01) (< i1@211@01 len@132@01))
      (and (<= 0 i2@211@01) (< i2@211@01 len@132@01))
      (= (Seq_index ar@129@01 i1@211@01) (Seq_index ar@129@01 i2@211@01)))
    (= i1@211@01 i2@211@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@211@01 Int)) (!
  (=>
    (and (<= 0 i@211@01) (< i@211@01 len@132@01))
    (and
      (= (inv@212@01 (Seq_index ar@129@01 i@211@01)) i@211@01)
      (img@213@01 (Seq_index ar@129@01 i@211@01))))
  :pattern ((Seq_index ar@129@01 i@211@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@213@01 r)
      (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@132@01)))
    (= (Seq_index ar@129@01 (inv@212@01 r)) r))
  :pattern ((inv@212@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@211@01 Int)) (!
  (= (Seq_index ar@129@01 i@211@01) (Seq_index br@130@01 i@211@01))
  
  :qid |quant-u-16810|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@211@01 Int)) (!
  (= (Seq_index ar@129@01 i@211@01) (Seq_index cr@131@01 i@211@01))
  
  :qid |quant-u-16811|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@214@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@132@01))
      (img@213@01 r)
      (= r (Seq_index ar@129@01 (inv@212@01 r))))
    ($Perm.min
      (ite
        (and
          (img@183@01 r)
          (and (<= 0 (inv@182@01 r)) (< (inv@182@01 r) len@132@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@215@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@132@01))
      (img@213@01 r)
      (= r (Seq_index ar@129@01 (inv@212@01 r))))
    ($Perm.min
      (ite
        (and
          (img@186@01 r)
          (and (<= 0 (inv@185@01 r)) (< (inv@185@01 r) len@132@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- $Perm.Write (pTaken@214@01 r)))
    $Perm.No))
(define-fun pTaken@216@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@132@01))
      (img@213@01 r)
      (= r (Seq_index ar@129@01 (inv@212@01 r))))
    ($Perm.min
      (ite
        (and
          (img@189@01 r)
          (and (<= 0 (inv@188@01 r)) (< (inv@188@01 r) len@132@01)))
        $Perm.Write
        $Perm.No)
      (- (- $Perm.Write (pTaken@214@01 r)) (pTaken@215@01 r)))
    $Perm.No))
(define-fun pTaken@217@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@132@01))
      (img@213@01 r)
      (= r (Seq_index ar@129@01 (inv@212@01 r))))
    ($Perm.min
      (ite
        (and
          (img@192@01 r)
          (and (<= 0 (inv@191@01 r)) (< (inv@191@01 r) (- len@132@01 1))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (-
        (- (- $Perm.Write (pTaken@214@01 r)) (pTaken@215@01 r))
        (pTaken@216@01 r)))
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
      (ite
        (and
          (img@183@01 r)
          (and (<= 0 (inv@182@01 r)) (< (inv@182@01 r) len@132@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@214@01 r))
    $Perm.No)
  
  :qid |quant-u-16813|))))
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
      (and (<= 0 (inv@212@01 r)) (< (inv@212@01 r) len@132@01))
      (img@213@01 r)
      (= r (Seq_index ar@129@01 (inv@212@01 r))))
    (= (- $Perm.Write (pTaken@214@01 r)) $Perm.No))
  
  :qid |quant-u-16814|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] |br| == len
; [eval] |br|
(declare-const i@218@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 92 | !(0 <= i@218@01) | live]
; [else-branch: 92 | 0 <= i@218@01 | live]
(push) ; 6
; [then-branch: 92 | !(0 <= i@218@01)]
(assert (not (<= 0 i@218@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 92 | 0 <= i@218@01]
(assert (<= 0 i@218@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@218@01) (not (<= 0 i@218@01))))
(assert (and (<= 0 i@218@01) (< i@218@01 len@132@01)))
; [eval] br[i]
(push) ; 5
(assert (not (>= i@218@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@218@01 (Seq_length br@130@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@219@01 ($Ref) Int)
(declare-fun img@220@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@218@01 Int)) (!
  (=>
    (and (<= 0 i@218@01) (< i@218@01 len@132@01))
    (or (<= 0 i@218@01) (not (<= 0 i@218@01))))
  :pattern ((Seq_index br@130@01 i@218@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@218@01 Int) (i2@218@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@218@01) (< i1@218@01 len@132@01))
      (and (<= 0 i2@218@01) (< i2@218@01 len@132@01))
      (= (Seq_index br@130@01 i1@218@01) (Seq_index br@130@01 i2@218@01)))
    (= i1@218@01 i2@218@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@218@01 Int)) (!
  (=>
    (and (<= 0 i@218@01) (< i@218@01 len@132@01))
    (and
      (= (inv@219@01 (Seq_index br@130@01 i@218@01)) i@218@01)
      (img@220@01 (Seq_index br@130@01 i@218@01))))
  :pattern ((Seq_index br@130@01 i@218@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@220@01 r)
      (and (<= 0 (inv@219@01 r)) (< (inv@219@01 r) len@132@01)))
    (= (Seq_index br@130@01 (inv@219@01 r)) r))
  :pattern ((inv@219@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@218@01 Int)) (!
  (= (Seq_index br@130@01 i@218@01) (Seq_index ar@129@01 i@218@01))
  
  :qid |quant-u-16816|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@218@01 Int)) (!
  (= (Seq_index br@130@01 i@218@01) (Seq_index cr@131@01 i@218@01))
  
  :qid |quant-u-16817|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@221@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@219@01 r)) (< (inv@219@01 r) len@132@01))
      (img@220@01 r)
      (= r (Seq_index br@130@01 (inv@219@01 r))))
    ($Perm.min
      (ite
        (and
          (img@192@01 r)
          (and (<= 0 (inv@191@01 r)) (< (inv@191@01 r) (- len@132@01 1))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@222@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@219@01 r)) (< (inv@219@01 r) len@132@01))
      (img@220@01 r)
      (= r (Seq_index br@130@01 (inv@219@01 r))))
    ($Perm.min
      (ite
        (and
          (img@189@01 r)
          (and (<= 0 (inv@188@01 r)) (< (inv@188@01 r) len@132@01)))
        $Perm.Write
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@221@01 r)))
    $Perm.No))
(define-fun pTaken@223@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@219@01 r)) (< (inv@219@01 r) len@132@01))
      (img@220@01 r)
      (= r (Seq_index br@130@01 (inv@219@01 r))))
    ($Perm.min
      (ite
        (and
          (img@186@01 r)
          (and (<= 0 (inv@185@01 r)) (< (inv@185@01 r) len@132@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- (- (/ (to_real 1) (to_real 2)) (pTaken@221@01 r)) (pTaken@222@01 r)))
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
      (ite
        (and
          (img@192@01 r)
          (and (<= 0 (inv@191@01 r)) (< (inv@191@01 r) (- len@132@01 1))))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@221@01 r))
    $Perm.No)
  
  :qid |quant-u-16819|))))
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
      (and (<= 0 (inv@219@01 r)) (< (inv@219@01 r) len@132@01))
      (img@220@01 r)
      (= r (Seq_index br@130@01 (inv@219@01 r))))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@221@01 r)) $Perm.No))
  
  :qid |quant-u-16820|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] |cr| == len
; [eval] |cr|
(declare-const i@224@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 93 | !(0 <= i@224@01) | live]
; [else-branch: 93 | 0 <= i@224@01 | live]
(push) ; 6
; [then-branch: 93 | !(0 <= i@224@01)]
(assert (not (<= 0 i@224@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 93 | 0 <= i@224@01]
(assert (<= 0 i@224@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@224@01) (not (<= 0 i@224@01))))
(assert (and (<= 0 i@224@01) (< i@224@01 len@132@01)))
; [eval] cr[i]
(push) ; 5
(assert (not (>= i@224@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@224@01 (Seq_length cr@131@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@225@01 ($Ref) Int)
(declare-fun img@226@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@224@01 Int)) (!
  (=>
    (and (<= 0 i@224@01) (< i@224@01 len@132@01))
    (or (<= 0 i@224@01) (not (<= 0 i@224@01))))
  :pattern ((Seq_index cr@131@01 i@224@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@224@01 Int) (i2@224@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@224@01) (< i1@224@01 len@132@01))
      (and (<= 0 i2@224@01) (< i2@224@01 len@132@01))
      (= (Seq_index cr@131@01 i1@224@01) (Seq_index cr@131@01 i2@224@01)))
    (= i1@224@01 i2@224@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@224@01 Int)) (!
  (=>
    (and (<= 0 i@224@01) (< i@224@01 len@132@01))
    (and
      (= (inv@225@01 (Seq_index cr@131@01 i@224@01)) i@224@01)
      (img@226@01 (Seq_index cr@131@01 i@224@01))))
  :pattern ((Seq_index cr@131@01 i@224@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@226@01 r)
      (and (<= 0 (inv@225@01 r)) (< (inv@225@01 r) len@132@01)))
    (= (Seq_index cr@131@01 (inv@225@01 r)) r))
  :pattern ((inv@225@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@224@01 Int)) (!
  (= (Seq_index cr@131@01 i@224@01) (Seq_index br@130@01 i@224@01))
  
  :qid |quant-u-16822|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@227@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@225@01 r)) (< (inv@225@01 r) len@132@01))
      (img@226@01 r)
      (= r (Seq_index cr@131@01 (inv@225@01 r))))
    ($Perm.min
      (ite
        (and
          (img@186@01 r)
          (and (<= 0 (inv@185@01 r)) (< (inv@185@01 r) len@132@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@228@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@225@01 r)) (< (inv@225@01 r) len@132@01))
      (img@226@01 r)
      (= r (Seq_index cr@131@01 (inv@225@01 r))))
    ($Perm.min
      (ite
        (and
          (img@189@01 r)
          (and (<= 0 (inv@188@01 r)) (< (inv@188@01 r) len@132@01)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@227@01 r)))
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
      (ite
        (and
          (img@186@01 r)
          (and (<= 0 (inv@185@01 r)) (< (inv@185@01 r) len@132@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@227@01 r))
    $Perm.No)
  
  :qid |quant-u-16824|))))
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
      (and (<= 0 (inv@225@01 r)) (< (inv@225@01 r) len@132@01))
      (img@226@01 r)
      (= r (Seq_index cr@131@01 (inv@225@01 r))))
    (= (- $Perm.Write (pTaken@227@01 r)) $Perm.No))
  
  :qid |quant-u-16825|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 3
(pop) ; 2
(pop) ; 1
