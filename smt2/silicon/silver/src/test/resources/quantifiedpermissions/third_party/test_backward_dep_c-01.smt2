(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-08 21:15:24
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
  :qid |quant-u-6716|)))
(assert (forall ((s@$ $Snap) (i@0@00 Int) (hi@1@00 Int) (ar@2@00 Seq<Int>) (v@3@00 Int)) (!
  (count_list%stateless i@0@00 hi@1@00 ar@2@00 v@3@00)
  :pattern ((count_list%limited s@$ i@0@00 hi@1@00 ar@2@00 v@3@00))
  :qid |quant-u-6717|)))
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
  :qid |quant-u-6728|)))
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
  :qid |quant-u-6729|)))
(assert (forall ((s@$ $Snap) (i@5@00 Int) (hi@6@00 Int) (ar@7@00 Seq<Int>)) (!
  (=
    (sum_list%limited s@$ i@5@00 hi@6@00 ar@7@00)
    (sum_list s@$ i@5@00 hi@6@00 ar@7@00))
  :pattern ((sum_list s@$ i@5@00 hi@6@00 ar@7@00))
  :qid |quant-u-6718|)))
(assert (forall ((s@$ $Snap) (i@5@00 Int) (hi@6@00 Int) (ar@7@00 Seq<Int>)) (!
  (sum_list%stateless i@5@00 hi@6@00 ar@7@00)
  :pattern ((sum_list%limited s@$ i@5@00 hi@6@00 ar@7@00))
  :qid |quant-u-6719|)))
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
  :qid |quant-u-6730|)))
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
  :qid |quant-u-6731|)))
(assert (forall ((s@$ $Snap) (i@9@00 Int) (lo@10@00 Int) (hi@11@00 Int) (step@12@00 Int) (min@13@00 Int) (max@14@00 Int) (ar@15@00 Seq<$Ref>)) (!
  (=
    (sum_square%limited s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00)
    (sum_square s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00))
  :pattern ((sum_square s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00))
  :qid |quant-u-6720|)))
(assert (forall ((s@$ $Snap) (i@9@00 Int) (lo@10@00 Int) (hi@11@00 Int) (step@12@00 Int) (min@13@00 Int) (max@14@00 Int) (ar@15@00 Seq<$Ref>)) (!
  (sum_square%stateless i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00)
  :pattern ((sum_square%limited s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00))
  :qid |quant-u-6721|)))
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
      :qid |quant-u-6733|))
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
  :qid |quant-u-6736|)))
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
  :qid |quant-u-6737|)))
(assert (forall ((s@$ $Snap) (i@17@00 Int) (lo@18@00 Int) (hi@19@00 Int) (step@20@00 Int) (min@21@00 Int) (max@22@00 Int) (ar@23@00 Seq<$Ref>) (v@24@00 Int)) (!
  (=
    (count_square%limited s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00)
    (count_square s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00))
  :pattern ((count_square s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00))
  :qid |quant-u-6722|)))
(assert (forall ((s@$ $Snap) (i@17@00 Int) (lo@18@00 Int) (hi@19@00 Int) (step@20@00 Int) (min@21@00 Int) (max@22@00 Int) (ar@23@00 Seq<$Ref>) (v@24@00 Int)) (!
  (count_square%stateless i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00)
  :pattern ((count_square%limited s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00))
  :qid |quant-u-6723|)))
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
      :qid |quant-u-6739|))
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
  :qid |quant-u-6742|)))
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
  :qid |quant-u-6743|)))
(assert (forall ((s@$ $Snap) (i@26@00 Int) (hi@27@00 Int) (ar@28@00 Seq<$Ref>) (v@29@00 Int)) (!
  (=
    (count_array%limited s@$ i@26@00 hi@27@00 ar@28@00 v@29@00)
    (count_array s@$ i@26@00 hi@27@00 ar@28@00 v@29@00))
  :pattern ((count_array s@$ i@26@00 hi@27@00 ar@28@00 v@29@00))
  :qid |quant-u-6724|)))
(assert (forall ((s@$ $Snap) (i@26@00 Int) (hi@27@00 Int) (ar@28@00 Seq<$Ref>) (v@29@00 Int)) (!
  (count_array%stateless i@26@00 hi@27@00 ar@28@00 v@29@00)
  :pattern ((count_array%limited s@$ i@26@00 hi@27@00 ar@28@00 v@29@00))
  :qid |quant-u-6725|)))
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
      :qid |quant-u-6745|))
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
  :qid |quant-u-6748|)))
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
  :qid |quant-u-6749|)))
(assert (forall ((s@$ $Snap) (i@31@00 Int) (lo@32@00 Int) (hi@33@00 Int) (ar@34@00 Seq<$Ref>)) (!
  (=
    (sum_array%limited s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00)
    (sum_array s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00))
  :pattern ((sum_array s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00))
  :qid |quant-u-6726|)))
(assert (forall ((s@$ $Snap) (i@31@00 Int) (lo@32@00 Int) (hi@33@00 Int) (ar@34@00 Seq<$Ref>)) (!
  (sum_array%stateless i@31@00 lo@32@00 hi@33@00 ar@34@00)
  :pattern ((sum_array%limited s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00))
  :qid |quant-u-6727|)))
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
      :qid |quant-u-6751|))
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
  :qid |quant-u-6754|)))
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
  :qid |quant-u-6755|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- Ref__loop_main_72 ----------
(declare-const diz@0@01 $Ref)
(declare-const current_thread_id@1@01 Int)
(declare-const len@2@01 Int)
(declare-const b@3@01 Seq<$Ref>)
(declare-const a@4@01 Seq<$Ref>)
(declare-const c@5@01 Seq<$Ref>)
(declare-const diz@6@01 $Ref)
(declare-const current_thread_id@7@01 Int)
(declare-const len@8@01 Int)
(declare-const b@9@01 Seq<$Ref>)
(declare-const a@10@01 Seq<$Ref>)
(declare-const c@11@01 Seq<$Ref>)
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
; [eval] |a| == len
; [eval] |a|
(assert (= (Seq_length a@10@01) len@8@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@12@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@12@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@12@01))))
  $Snap.unit))
; [eval] |b| == len
; [eval] |b|
(assert (= (Seq_length b@9@01) len@8@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))
  $Snap.unit))
; [eval] |c| == len
; [eval] |c|
(assert (= (Seq_length c@11@01) len@8@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))
  $Snap.unit))
; [eval] (forall j: Int, k: Int :: { a[j], a[k] } 0 <= j && (j < len && (0 <= k && (k < len && j != k))) ==> a[j] != a[k])
(declare-const j@13@01 Int)
(declare-const k@14@01 Int)
(push) ; 2
; [eval] 0 <= j && (j < len && (0 <= k && (k < len && j != k))) ==> a[j] != a[k]
; [eval] 0 <= j && (j < len && (0 <= k && (k < len && j != k)))
; [eval] 0 <= j
(push) ; 3
; [then-branch: 0 | !(0 <= j@13@01) | live]
; [else-branch: 0 | 0 <= j@13@01 | live]
(push) ; 4
; [then-branch: 0 | !(0 <= j@13@01)]
(assert (not (<= 0 j@13@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 0 | 0 <= j@13@01]
(assert (<= 0 j@13@01))
; [eval] j < len
(push) ; 5
; [then-branch: 1 | !(j@13@01 < len@8@01) | live]
; [else-branch: 1 | j@13@01 < len@8@01 | live]
(push) ; 6
; [then-branch: 1 | !(j@13@01 < len@8@01)]
(assert (not (< j@13@01 len@8@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 1 | j@13@01 < len@8@01]
(assert (< j@13@01 len@8@01))
; [eval] 0 <= k
(push) ; 7
; [then-branch: 2 | !(0 <= k@14@01) | live]
; [else-branch: 2 | 0 <= k@14@01 | live]
(push) ; 8
; [then-branch: 2 | !(0 <= k@14@01)]
(assert (not (<= 0 k@14@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 2 | 0 <= k@14@01]
(assert (<= 0 k@14@01))
; [eval] k < len
(push) ; 9
; [then-branch: 3 | !(k@14@01 < len@8@01) | live]
; [else-branch: 3 | k@14@01 < len@8@01 | live]
(push) ; 10
; [then-branch: 3 | !(k@14@01 < len@8@01)]
(assert (not (< k@14@01 len@8@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 3 | k@14@01 < len@8@01]
(assert (< k@14@01 len@8@01))
; [eval] j != k
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< k@14@01 len@8@01) (not (< k@14@01 len@8@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@14@01)
  (and (<= 0 k@14@01) (or (< k@14@01 len@8@01) (not (< k@14@01 len@8@01))))))
(assert (or (<= 0 k@14@01) (not (<= 0 k@14@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@13@01 len@8@01)
  (and
    (< j@13@01 len@8@01)
    (=>
      (<= 0 k@14@01)
      (and (<= 0 k@14@01) (or (< k@14@01 len@8@01) (not (< k@14@01 len@8@01)))))
    (or (<= 0 k@14@01) (not (<= 0 k@14@01))))))
(assert (or (< j@13@01 len@8@01) (not (< j@13@01 len@8@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@13@01)
  (and
    (<= 0 j@13@01)
    (=>
      (< j@13@01 len@8@01)
      (and
        (< j@13@01 len@8@01)
        (=>
          (<= 0 k@14@01)
          (and
            (<= 0 k@14@01)
            (or (< k@14@01 len@8@01) (not (< k@14@01 len@8@01)))))
        (or (<= 0 k@14@01) (not (<= 0 k@14@01)))))
    (or (< j@13@01 len@8@01) (not (< j@13@01 len@8@01))))))
(assert (or (<= 0 j@13@01) (not (<= 0 j@13@01))))
(push) ; 3
; [then-branch: 4 | 0 <= j@13@01 && j@13@01 < len@8@01 && 0 <= k@14@01 && k@14@01 < len@8@01 && j@13@01 != k@14@01 | live]
; [else-branch: 4 | !(0 <= j@13@01 && j@13@01 < len@8@01 && 0 <= k@14@01 && k@14@01 < len@8@01 && j@13@01 != k@14@01) | live]
(push) ; 4
; [then-branch: 4 | 0 <= j@13@01 && j@13@01 < len@8@01 && 0 <= k@14@01 && k@14@01 < len@8@01 && j@13@01 != k@14@01]
(assert (and
  (<= 0 j@13@01)
  (and
    (< j@13@01 len@8@01)
    (and (<= 0 k@14@01) (and (< k@14@01 len@8@01) (not (= j@13@01 k@14@01)))))))
; [eval] a[j] != a[k]
; [eval] a[j]
(push) ; 5
(assert (not (>= j@13@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< j@13@01 (Seq_length a@10@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] a[k]
(push) ; 5
(assert (not (>= k@14@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@14@01 (Seq_length a@10@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 4 | !(0 <= j@13@01 && j@13@01 < len@8@01 && 0 <= k@14@01 && k@14@01 < len@8@01 && j@13@01 != k@14@01)]
(assert (not
  (and
    (<= 0 j@13@01)
    (and
      (< j@13@01 len@8@01)
      (and (<= 0 k@14@01) (and (< k@14@01 len@8@01) (not (= j@13@01 k@14@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@13@01)
    (and
      (< j@13@01 len@8@01)
      (and (<= 0 k@14@01) (and (< k@14@01 len@8@01) (not (= j@13@01 k@14@01))))))
  (and
    (<= 0 j@13@01)
    (< j@13@01 len@8@01)
    (<= 0 k@14@01)
    (< k@14@01 len@8@01)
    (not (= j@13@01 k@14@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@13@01)
      (and
        (< j@13@01 len@8@01)
        (and (<= 0 k@14@01) (and (< k@14@01 len@8@01) (not (= j@13@01 k@14@01)))))))
  (and
    (<= 0 j@13@01)
    (and
      (< j@13@01 len@8@01)
      (and (<= 0 k@14@01) (and (< k@14@01 len@8@01) (not (= j@13@01 k@14@01))))))))
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
          (< j@13@01 len@8@01)
          (and
            (< j@13@01 len@8@01)
            (=>
              (<= 0 k@14@01)
              (and
                (<= 0 k@14@01)
                (or (< k@14@01 len@8@01) (not (< k@14@01 len@8@01)))))
            (or (<= 0 k@14@01) (not (<= 0 k@14@01)))))
        (or (< j@13@01 len@8@01) (not (< j@13@01 len@8@01)))))
    (or (<= 0 j@13@01) (not (<= 0 j@13@01)))
    (=>
      (and
        (<= 0 j@13@01)
        (and
          (< j@13@01 len@8@01)
          (and
            (<= 0 k@14@01)
            (and (< k@14@01 len@8@01) (not (= j@13@01 k@14@01))))))
      (and
        (<= 0 j@13@01)
        (< j@13@01 len@8@01)
        (<= 0 k@14@01)
        (< k@14@01 len@8@01)
        (not (= j@13@01 k@14@01))))
    (or
      (not
        (and
          (<= 0 j@13@01)
          (and
            (< j@13@01 len@8@01)
            (and
              (<= 0 k@14@01)
              (and (< k@14@01 len@8@01) (not (= j@13@01 k@14@01)))))))
      (and
        (<= 0 j@13@01)
        (and
          (< j@13@01 len@8@01)
          (and
            (<= 0 k@14@01)
            (and (< k@14@01 len@8@01) (not (= j@13@01 k@14@01))))))))
  :pattern ((Seq_index a@10@01 j@13@01) (Seq_index a@10@01 k@14@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@62@12@62@102-aux|)))
(assert (forall ((j@13@01 Int) (k@14@01 Int)) (!
  (=>
    (and
      (<= 0 j@13@01)
      (and
        (< j@13@01 len@8@01)
        (and (<= 0 k@14@01) (and (< k@14@01 len@8@01) (not (= j@13@01 k@14@01))))))
    (not (= (Seq_index a@10@01 j@13@01) (Seq_index a@10@01 k@14@01))))
  :pattern ((Seq_index a@10@01 j@13@01) (Seq_index a@10@01 k@14@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@62@12@62@102|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))
(declare-const i@15@01 Int)
(push) ; 2
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 3
; [then-branch: 5 | !(0 <= i@15@01) | live]
; [else-branch: 5 | 0 <= i@15@01 | live]
(push) ; 4
; [then-branch: 5 | !(0 <= i@15@01)]
(assert (not (<= 0 i@15@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 5 | 0 <= i@15@01]
(assert (<= 0 i@15@01))
; [eval] i < len
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@15@01) (not (<= 0 i@15@01))))
(assert (and (<= 0 i@15@01) (< i@15@01 len@8@01)))
; [eval] a[i]
(push) ; 3
(assert (not (>= i@15@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@15@01 (Seq_length a@10@01))))
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
  :pattern ((Seq_index a@10@01 i@15@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@15@01 Int) (i2@15@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@15@01) (< i1@15@01 len@8@01))
      (and (<= 0 i2@15@01) (< i2@15@01 len@8@01))
      (= (Seq_index a@10@01 i1@15@01) (Seq_index a@10@01 i2@15@01)))
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
      (= (inv@16@01 (Seq_index a@10@01 i@15@01)) i@15@01)
      (img@17@01 (Seq_index a@10@01 i@15@01))))
  :pattern ((Seq_index a@10@01 i@15@01))
  :qid |quant-u-6757|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@17@01 r) (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))
    (= (Seq_index a@10@01 (inv@16@01 r)) r))
  :pattern ((inv@16@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@15@01 Int)) (!
  (=>
    (and (<= 0 i@15@01) (< i@15@01 len@8@01))
    (not (= (Seq_index a@10@01 i@15@01) $Ref.null)))
  :pattern ((Seq_index a@10@01 i@15@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))
; [eval] 0 <= 0 && 0 < len
; [eval] 0 <= 0
(push) ; 2
; [then-branch: 6 | False | live]
; [else-branch: 6 | True | live]
(push) ; 3
; [then-branch: 6 | False]
(assert false)
(pop) ; 3
(push) ; 3
; [else-branch: 6 | True]
; [eval] 0 < len
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(push) ; 2
(set-option :timeout 10)
(assert (not (not (< 0 len@8@01))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< 0 len@8@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 7 | 0 < len@8@01 | live]
; [else-branch: 7 | !(0 < len@8@01) | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 7 | 0 < len@8@01]
(assert (< 0 len@8@01))
; [eval] a[0]
(push) ; 3
(assert (not (< 0 (Seq_length a@10@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@18@01 $FVF<Ref__Integer_value>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_Ref__Integer_value (as sm@18@01  $FVF<Ref__Integer_value>) (Seq_index
    a@10@01
    0))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))
(assert (<=
  $Perm.No
  (ite
    (= (Seq_index a@10@01 0) (Seq_index a@10@01 0))
    (/ (to_real 1) (to_real 2))
    $Perm.No)))
(assert (<=
  (ite
    (= (Seq_index a@10@01 0) (Seq_index a@10@01 0))
    (/ (to_real 1) (to_real 2))
    $Perm.No)
  $Perm.Write))
(assert (=>
  (= (Seq_index a@10@01 0) (Seq_index a@10@01 0))
  (not (= (Seq_index a@10@01 0) $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))
(declare-const i@19@01 Int)
(push) ; 3
; [eval] 1 <= i && i < (len - 1 < len ? len - 1 : len) + 1
; [eval] 1 <= i
(push) ; 4
; [then-branch: 8 | !(1 <= i@19@01) | live]
; [else-branch: 8 | 1 <= i@19@01 | live]
(push) ; 5
; [then-branch: 8 | !(1 <= i@19@01)]
(assert (not (<= 1 i@19@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 8 | 1 <= i@19@01]
(assert (<= 1 i@19@01))
; [eval] i < (len - 1 < len ? len - 1 : len) + 1
; [eval] (len - 1 < len ? len - 1 : len) + 1
; [eval] (len - 1 < len ? len - 1 : len)
; [eval] len - 1 < len
; [eval] len - 1
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not (< (- len@8@01 1) len@8@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< (- len@8@01 1) len@8@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 9 | len@8@01 - 1 < len@8@01 | live]
; [else-branch: 9 | !(len@8@01 - 1 < len@8@01) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 9 | len@8@01 - 1 < len@8@01]
(assert (< (- len@8@01 1) len@8@01))
; [eval] len - 1
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (< (- len@8@01 1) len@8@01))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=> (<= 1 i@19@01) (and (<= 1 i@19@01) (< (- len@8@01 1) len@8@01))))
(assert (or (<= 1 i@19@01) (not (<= 1 i@19@01))))
(assert (and (<= 1 i@19@01) (< i@19@01 (+ (- len@8@01 1) 1))))
; [eval] a[i]
(push) ; 4
(assert (not (>= i@19@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@19@01 (Seq_length a@10@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@20@01 ($Ref) Int)
(declare-fun img@21@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@19@01 Int)) (!
  (=>
    (and (<= 1 i@19@01) (< i@19@01 (+ (- len@8@01 1) 1)))
    (and
      (=> (<= 1 i@19@01) (and (<= 1 i@19@01) (< (- len@8@01 1) len@8@01)))
      (or (<= 1 i@19@01) (not (<= 1 i@19@01)))))
  :pattern ((Seq_index a@10@01 i@19@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@19@01 Int) (i2@19@01 Int)) (!
  (=>
    (and
      (and (<= 1 i1@19@01) (< i1@19@01 (+ (- len@8@01 1) 1)))
      (and (<= 1 i2@19@01) (< i2@19@01 (+ (- len@8@01 1) 1)))
      (= (Seq_index a@10@01 i1@19@01) (Seq_index a@10@01 i2@19@01)))
    (= i1@19@01 i2@19@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@19@01 Int)) (!
  (=>
    (and (<= 1 i@19@01) (< i@19@01 (+ (- len@8@01 1) 1)))
    (and
      (= (inv@20@01 (Seq_index a@10@01 i@19@01)) i@19@01)
      (img@21@01 (Seq_index a@10@01 i@19@01))))
  :pattern ((Seq_index a@10@01 i@19@01))
  :qid |quant-u-6759|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@21@01 r)
      (and (<= 1 (inv@20@01 r)) (< (inv@20@01 r) (+ (- len@8@01 1) 1))))
    (= (Seq_index a@10@01 (inv@20@01 r)) r))
  :pattern ((inv@20@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@19@01 Int)) (!
  (=>
    (and (<= 1 i@19@01) (< i@19@01 (+ (- len@8@01 1) 1)))
    (not (= (Seq_index a@10@01 i@19@01) $Ref.null)))
  :pattern ((Seq_index a@10@01 i@19@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index a@10@01 i@19@01) (Seq_index a@10@01 i@15@01))
    (=
      (and
        (img@21@01 r)
        (and (<= 1 (inv@20@01 r)) (< (inv@20@01 r) (+ (- len@8@01 1) 1))))
      (and (img@17@01 r) (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))))
  
  :qid |quant-u-6760|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))
  $Snap.unit))
; [eval] (forall j: Int, k: Int :: { b[j], b[k] } 0 <= j && (j < len && (0 <= k && (k < len && j != k))) ==> b[j] != b[k])
(declare-const j@22@01 Int)
(declare-const k@23@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= j && (j < len && (0 <= k && (k < len && j != k))) ==> b[j] != b[k]
; [eval] 0 <= j && (j < len && (0 <= k && (k < len && j != k)))
; [eval] 0 <= j
(push) ; 4
; [then-branch: 10 | !(0 <= j@22@01) | live]
; [else-branch: 10 | 0 <= j@22@01 | live]
(push) ; 5
; [then-branch: 10 | !(0 <= j@22@01)]
(assert (not (<= 0 j@22@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 10 | 0 <= j@22@01]
(assert (<= 0 j@22@01))
; [eval] j < len
(push) ; 6
; [then-branch: 11 | !(j@22@01 < len@8@01) | live]
; [else-branch: 11 | j@22@01 < len@8@01 | live]
(push) ; 7
; [then-branch: 11 | !(j@22@01 < len@8@01)]
(assert (not (< j@22@01 len@8@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 11 | j@22@01 < len@8@01]
(assert (< j@22@01 len@8@01))
; [eval] 0 <= k
(push) ; 8
; [then-branch: 12 | !(0 <= k@23@01) | live]
; [else-branch: 12 | 0 <= k@23@01 | live]
(push) ; 9
; [then-branch: 12 | !(0 <= k@23@01)]
(assert (not (<= 0 k@23@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 12 | 0 <= k@23@01]
(assert (<= 0 k@23@01))
; [eval] k < len
(push) ; 10
; [then-branch: 13 | !(k@23@01 < len@8@01) | live]
; [else-branch: 13 | k@23@01 < len@8@01 | live]
(push) ; 11
; [then-branch: 13 | !(k@23@01 < len@8@01)]
(assert (not (< k@23@01 len@8@01)))
(pop) ; 11
(push) ; 11
; [else-branch: 13 | k@23@01 < len@8@01]
(assert (< k@23@01 len@8@01))
; [eval] j != k
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (< k@23@01 len@8@01) (not (< k@23@01 len@8@01))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@23@01)
  (and (<= 0 k@23@01) (or (< k@23@01 len@8@01) (not (< k@23@01 len@8@01))))))
(assert (or (<= 0 k@23@01) (not (<= 0 k@23@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@22@01 len@8@01)
  (and
    (< j@22@01 len@8@01)
    (=>
      (<= 0 k@23@01)
      (and (<= 0 k@23@01) (or (< k@23@01 len@8@01) (not (< k@23@01 len@8@01)))))
    (or (<= 0 k@23@01) (not (<= 0 k@23@01))))))
(assert (or (< j@22@01 len@8@01) (not (< j@22@01 len@8@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@22@01)
  (and
    (<= 0 j@22@01)
    (=>
      (< j@22@01 len@8@01)
      (and
        (< j@22@01 len@8@01)
        (=>
          (<= 0 k@23@01)
          (and
            (<= 0 k@23@01)
            (or (< k@23@01 len@8@01) (not (< k@23@01 len@8@01)))))
        (or (<= 0 k@23@01) (not (<= 0 k@23@01)))))
    (or (< j@22@01 len@8@01) (not (< j@22@01 len@8@01))))))
(assert (or (<= 0 j@22@01) (not (<= 0 j@22@01))))
(push) ; 4
; [then-branch: 14 | 0 <= j@22@01 && j@22@01 < len@8@01 && 0 <= k@23@01 && k@23@01 < len@8@01 && j@22@01 != k@23@01 | live]
; [else-branch: 14 | !(0 <= j@22@01 && j@22@01 < len@8@01 && 0 <= k@23@01 && k@23@01 < len@8@01 && j@22@01 != k@23@01) | live]
(push) ; 5
; [then-branch: 14 | 0 <= j@22@01 && j@22@01 < len@8@01 && 0 <= k@23@01 && k@23@01 < len@8@01 && j@22@01 != k@23@01]
(assert (and
  (<= 0 j@22@01)
  (and
    (< j@22@01 len@8@01)
    (and (<= 0 k@23@01) (and (< k@23@01 len@8@01) (not (= j@22@01 k@23@01)))))))
; [eval] b[j] != b[k]
; [eval] b[j]
(push) ; 6
(assert (not (>= j@22@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< j@22@01 (Seq_length b@9@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] b[k]
(push) ; 6
(assert (not (>= k@23@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k@23@01 (Seq_length b@9@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 14 | !(0 <= j@22@01 && j@22@01 < len@8@01 && 0 <= k@23@01 && k@23@01 < len@8@01 && j@22@01 != k@23@01)]
(assert (not
  (and
    (<= 0 j@22@01)
    (and
      (< j@22@01 len@8@01)
      (and (<= 0 k@23@01) (and (< k@23@01 len@8@01) (not (= j@22@01 k@23@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@22@01)
    (and
      (< j@22@01 len@8@01)
      (and (<= 0 k@23@01) (and (< k@23@01 len@8@01) (not (= j@22@01 k@23@01))))))
  (and
    (<= 0 j@22@01)
    (< j@22@01 len@8@01)
    (<= 0 k@23@01)
    (< k@23@01 len@8@01)
    (not (= j@22@01 k@23@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@22@01)
      (and
        (< j@22@01 len@8@01)
        (and (<= 0 k@23@01) (and (< k@23@01 len@8@01) (not (= j@22@01 k@23@01)))))))
  (and
    (<= 0 j@22@01)
    (and
      (< j@22@01 len@8@01)
      (and (<= 0 k@23@01) (and (< k@23@01 len@8@01) (not (= j@22@01 k@23@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@22@01 Int) (k@23@01 Int)) (!
  (and
    (=>
      (<= 0 j@22@01)
      (and
        (<= 0 j@22@01)
        (=>
          (< j@22@01 len@8@01)
          (and
            (< j@22@01 len@8@01)
            (=>
              (<= 0 k@23@01)
              (and
                (<= 0 k@23@01)
                (or (< k@23@01 len@8@01) (not (< k@23@01 len@8@01)))))
            (or (<= 0 k@23@01) (not (<= 0 k@23@01)))))
        (or (< j@22@01 len@8@01) (not (< j@22@01 len@8@01)))))
    (or (<= 0 j@22@01) (not (<= 0 j@22@01)))
    (=>
      (and
        (<= 0 j@22@01)
        (and
          (< j@22@01 len@8@01)
          (and
            (<= 0 k@23@01)
            (and (< k@23@01 len@8@01) (not (= j@22@01 k@23@01))))))
      (and
        (<= 0 j@22@01)
        (< j@22@01 len@8@01)
        (<= 0 k@23@01)
        (< k@23@01 len@8@01)
        (not (= j@22@01 k@23@01))))
    (or
      (not
        (and
          (<= 0 j@22@01)
          (and
            (< j@22@01 len@8@01)
            (and
              (<= 0 k@23@01)
              (and (< k@23@01 len@8@01) (not (= j@22@01 k@23@01)))))))
      (and
        (<= 0 j@22@01)
        (and
          (< j@22@01 len@8@01)
          (and
            (<= 0 k@23@01)
            (and (< k@23@01 len@8@01) (not (= j@22@01 k@23@01))))))))
  :pattern ((Seq_index b@9@01 j@22@01) (Seq_index b@9@01 k@23@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@66@12@66@102-aux|)))
(assert (forall ((j@22@01 Int) (k@23@01 Int)) (!
  (=>
    (and
      (<= 0 j@22@01)
      (and
        (< j@22@01 len@8@01)
        (and (<= 0 k@23@01) (and (< k@23@01 len@8@01) (not (= j@22@01 k@23@01))))))
    (not (= (Seq_index b@9@01 j@22@01) (Seq_index b@9@01 k@23@01))))
  :pattern ((Seq_index b@9@01 j@22@01) (Seq_index b@9@01 k@23@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@66@12@66@102|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))))
(declare-const i@24@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 15 | !(0 <= i@24@01) | live]
; [else-branch: 15 | 0 <= i@24@01 | live]
(push) ; 5
; [then-branch: 15 | !(0 <= i@24@01)]
(assert (not (<= 0 i@24@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 15 | 0 <= i@24@01]
(assert (<= 0 i@24@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@24@01) (not (<= 0 i@24@01))))
(assert (and (<= 0 i@24@01) (< i@24@01 len@8@01)))
; [eval] b[i]
(push) ; 4
(assert (not (>= i@24@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@24@01 (Seq_length b@9@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@25@01 ($Ref) Int)
(declare-fun img@26@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@24@01 Int)) (!
  (=>
    (and (<= 0 i@24@01) (< i@24@01 len@8@01))
    (or (<= 0 i@24@01) (not (<= 0 i@24@01))))
  :pattern ((Seq_index b@9@01 i@24@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@24@01 Int) (i2@24@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@24@01) (< i1@24@01 len@8@01))
      (and (<= 0 i2@24@01) (< i2@24@01 len@8@01))
      (= (Seq_index b@9@01 i1@24@01) (Seq_index b@9@01 i2@24@01)))
    (= i1@24@01 i2@24@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@24@01 Int)) (!
  (=>
    (and (<= 0 i@24@01) (< i@24@01 len@8@01))
    (and
      (= (inv@25@01 (Seq_index b@9@01 i@24@01)) i@24@01)
      (img@26@01 (Seq_index b@9@01 i@24@01))))
  :pattern ((Seq_index b@9@01 i@24@01))
  :qid |quant-u-6762|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@26@01 r) (and (<= 0 (inv@25@01 r)) (< (inv@25@01 r) len@8@01)))
    (= (Seq_index b@9@01 (inv@25@01 r)) r))
  :pattern ((inv@25@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@24@01 Int)) (!
  (=>
    (and (<= 0 i@24@01) (< i@24@01 len@8@01))
    (not (= (Seq_index b@9@01 i@24@01) $Ref.null)))
  :pattern ((Seq_index b@9@01 i@24@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index b@9@01 i@24@01) (Seq_index a@10@01 i@19@01))
    (=
      (and (img@26@01 r) (and (<= 0 (inv@25@01 r)) (< (inv@25@01 r) len@8@01)))
      (and
        (img@21@01 r)
        (and (<= 1 (inv@20@01 r)) (< (inv@20@01 r) (+ (- len@8@01 1) 1))))))
  
  :qid |quant-u-6763|))))
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
    (= (Seq_index b@9@01 i@24@01) (Seq_index a@10@01 i@15@01))
    (=
      (and (img@26@01 r) (and (<= 0 (inv@25@01 r)) (< (inv@25@01 r) len@8@01)))
      (and (img@17@01 r) (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))))
  
  :qid |quant-u-6764|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))
  $Snap.unit))
; [eval] (forall j: Int, k: Int :: { c[j], c[k] } 0 <= j && (j < len && (0 <= k && (k < len && j != k))) ==> c[j] != c[k])
(declare-const j@27@01 Int)
(declare-const k@28@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= j && (j < len && (0 <= k && (k < len && j != k))) ==> c[j] != c[k]
; [eval] 0 <= j && (j < len && (0 <= k && (k < len && j != k)))
; [eval] 0 <= j
(push) ; 4
; [then-branch: 16 | !(0 <= j@27@01) | live]
; [else-branch: 16 | 0 <= j@27@01 | live]
(push) ; 5
; [then-branch: 16 | !(0 <= j@27@01)]
(assert (not (<= 0 j@27@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 16 | 0 <= j@27@01]
(assert (<= 0 j@27@01))
; [eval] j < len
(push) ; 6
; [then-branch: 17 | !(j@27@01 < len@8@01) | live]
; [else-branch: 17 | j@27@01 < len@8@01 | live]
(push) ; 7
; [then-branch: 17 | !(j@27@01 < len@8@01)]
(assert (not (< j@27@01 len@8@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 17 | j@27@01 < len@8@01]
(assert (< j@27@01 len@8@01))
; [eval] 0 <= k
(push) ; 8
; [then-branch: 18 | !(0 <= k@28@01) | live]
; [else-branch: 18 | 0 <= k@28@01 | live]
(push) ; 9
; [then-branch: 18 | !(0 <= k@28@01)]
(assert (not (<= 0 k@28@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 18 | 0 <= k@28@01]
(assert (<= 0 k@28@01))
; [eval] k < len
(push) ; 10
; [then-branch: 19 | !(k@28@01 < len@8@01) | live]
; [else-branch: 19 | k@28@01 < len@8@01 | live]
(push) ; 11
; [then-branch: 19 | !(k@28@01 < len@8@01)]
(assert (not (< k@28@01 len@8@01)))
(pop) ; 11
(push) ; 11
; [else-branch: 19 | k@28@01 < len@8@01]
(assert (< k@28@01 len@8@01))
; [eval] j != k
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (< k@28@01 len@8@01) (not (< k@28@01 len@8@01))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@28@01)
  (and (<= 0 k@28@01) (or (< k@28@01 len@8@01) (not (< k@28@01 len@8@01))))))
(assert (or (<= 0 k@28@01) (not (<= 0 k@28@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@27@01 len@8@01)
  (and
    (< j@27@01 len@8@01)
    (=>
      (<= 0 k@28@01)
      (and (<= 0 k@28@01) (or (< k@28@01 len@8@01) (not (< k@28@01 len@8@01)))))
    (or (<= 0 k@28@01) (not (<= 0 k@28@01))))))
(assert (or (< j@27@01 len@8@01) (not (< j@27@01 len@8@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@27@01)
  (and
    (<= 0 j@27@01)
    (=>
      (< j@27@01 len@8@01)
      (and
        (< j@27@01 len@8@01)
        (=>
          (<= 0 k@28@01)
          (and
            (<= 0 k@28@01)
            (or (< k@28@01 len@8@01) (not (< k@28@01 len@8@01)))))
        (or (<= 0 k@28@01) (not (<= 0 k@28@01)))))
    (or (< j@27@01 len@8@01) (not (< j@27@01 len@8@01))))))
(assert (or (<= 0 j@27@01) (not (<= 0 j@27@01))))
(push) ; 4
; [then-branch: 20 | 0 <= j@27@01 && j@27@01 < len@8@01 && 0 <= k@28@01 && k@28@01 < len@8@01 && j@27@01 != k@28@01 | live]
; [else-branch: 20 | !(0 <= j@27@01 && j@27@01 < len@8@01 && 0 <= k@28@01 && k@28@01 < len@8@01 && j@27@01 != k@28@01) | live]
(push) ; 5
; [then-branch: 20 | 0 <= j@27@01 && j@27@01 < len@8@01 && 0 <= k@28@01 && k@28@01 < len@8@01 && j@27@01 != k@28@01]
(assert (and
  (<= 0 j@27@01)
  (and
    (< j@27@01 len@8@01)
    (and (<= 0 k@28@01) (and (< k@28@01 len@8@01) (not (= j@27@01 k@28@01)))))))
; [eval] c[j] != c[k]
; [eval] c[j]
(push) ; 6
(assert (not (>= j@27@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< j@27@01 (Seq_length c@11@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] c[k]
(push) ; 6
(assert (not (>= k@28@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k@28@01 (Seq_length c@11@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 20 | !(0 <= j@27@01 && j@27@01 < len@8@01 && 0 <= k@28@01 && k@28@01 < len@8@01 && j@27@01 != k@28@01)]
(assert (not
  (and
    (<= 0 j@27@01)
    (and
      (< j@27@01 len@8@01)
      (and (<= 0 k@28@01) (and (< k@28@01 len@8@01) (not (= j@27@01 k@28@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@27@01)
    (and
      (< j@27@01 len@8@01)
      (and (<= 0 k@28@01) (and (< k@28@01 len@8@01) (not (= j@27@01 k@28@01))))))
  (and
    (<= 0 j@27@01)
    (< j@27@01 len@8@01)
    (<= 0 k@28@01)
    (< k@28@01 len@8@01)
    (not (= j@27@01 k@28@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@27@01)
      (and
        (< j@27@01 len@8@01)
        (and (<= 0 k@28@01) (and (< k@28@01 len@8@01) (not (= j@27@01 k@28@01)))))))
  (and
    (<= 0 j@27@01)
    (and
      (< j@27@01 len@8@01)
      (and (<= 0 k@28@01) (and (< k@28@01 len@8@01) (not (= j@27@01 k@28@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@27@01 Int) (k@28@01 Int)) (!
  (and
    (=>
      (<= 0 j@27@01)
      (and
        (<= 0 j@27@01)
        (=>
          (< j@27@01 len@8@01)
          (and
            (< j@27@01 len@8@01)
            (=>
              (<= 0 k@28@01)
              (and
                (<= 0 k@28@01)
                (or (< k@28@01 len@8@01) (not (< k@28@01 len@8@01)))))
            (or (<= 0 k@28@01) (not (<= 0 k@28@01)))))
        (or (< j@27@01 len@8@01) (not (< j@27@01 len@8@01)))))
    (or (<= 0 j@27@01) (not (<= 0 j@27@01)))
    (=>
      (and
        (<= 0 j@27@01)
        (and
          (< j@27@01 len@8@01)
          (and
            (<= 0 k@28@01)
            (and (< k@28@01 len@8@01) (not (= j@27@01 k@28@01))))))
      (and
        (<= 0 j@27@01)
        (< j@27@01 len@8@01)
        (<= 0 k@28@01)
        (< k@28@01 len@8@01)
        (not (= j@27@01 k@28@01))))
    (or
      (not
        (and
          (<= 0 j@27@01)
          (and
            (< j@27@01 len@8@01)
            (and
              (<= 0 k@28@01)
              (and (< k@28@01 len@8@01) (not (= j@27@01 k@28@01)))))))
      (and
        (<= 0 j@27@01)
        (and
          (< j@27@01 len@8@01)
          (and
            (<= 0 k@28@01)
            (and (< k@28@01 len@8@01) (not (= j@27@01 k@28@01))))))))
  :pattern ((Seq_index c@11@01 j@27@01) (Seq_index c@11@01 k@28@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@68@12@68@102-aux|)))
(assert (forall ((j@27@01 Int) (k@28@01 Int)) (!
  (=>
    (and
      (<= 0 j@27@01)
      (and
        (< j@27@01 len@8@01)
        (and (<= 0 k@28@01) (and (< k@28@01 len@8@01) (not (= j@27@01 k@28@01))))))
    (not (= (Seq_index c@11@01 j@27@01) (Seq_index c@11@01 k@28@01))))
  :pattern ((Seq_index c@11@01 j@27@01) (Seq_index c@11@01 k@28@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@68@12@68@102|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))))))
(declare-const i@29@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 21 | !(0 <= i@29@01) | live]
; [else-branch: 21 | 0 <= i@29@01 | live]
(push) ; 5
; [then-branch: 21 | !(0 <= i@29@01)]
(assert (not (<= 0 i@29@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 21 | 0 <= i@29@01]
(assert (<= 0 i@29@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@29@01) (not (<= 0 i@29@01))))
(assert (and (<= 0 i@29@01) (< i@29@01 len@8@01)))
; [eval] c[i]
(push) ; 4
(assert (not (>= i@29@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@29@01 (Seq_length c@11@01))))
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
  :pattern ((Seq_index c@11@01 i@29@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@29@01 Int) (i2@29@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@29@01) (< i1@29@01 len@8@01))
      (and (<= 0 i2@29@01) (< i2@29@01 len@8@01))
      (= (Seq_index c@11@01 i1@29@01) (Seq_index c@11@01 i2@29@01)))
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
      (= (inv@30@01 (Seq_index c@11@01 i@29@01)) i@29@01)
      (img@31@01 (Seq_index c@11@01 i@29@01))))
  :pattern ((Seq_index c@11@01 i@29@01))
  :qid |quant-u-6766|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) len@8@01)))
    (= (Seq_index c@11@01 (inv@30@01 r)) r))
  :pattern ((inv@30@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@29@01 Int)) (!
  (=>
    (and (<= 0 i@29@01) (< i@29@01 len@8@01))
    (not (= (Seq_index c@11@01 i@29@01) $Ref.null)))
  :pattern ((Seq_index c@11@01 i@29@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index c@11@01 i@29@01) (Seq_index b@9@01 i@24@01))
    (=
      (and (img@31@01 r) (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) len@8@01)))
      (and (img@26@01 r) (and (<= 0 (inv@25@01 r)) (< (inv@25@01 r) len@8@01)))))
  
  :qid |quant-u-6767|))))
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
    (= (Seq_index c@11@01 i@29@01) (Seq_index a@10@01 i@19@01))
    (=
      (and (img@31@01 r) (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) len@8@01)))
      (and
        (img@21@01 r)
        (and (<= 1 (inv@20@01 r)) (< (inv@20@01 r) (+ (- len@8@01 1) 1))))))
  
  :qid |quant-u-6768|))))
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
    (= (Seq_index c@11@01 i@29@01) (Seq_index a@10@01 i@15@01))
    (=
      (and (img@31@01 r) (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) len@8@01)))
      (and (img@17@01 r) (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))))
  
  :qid |quant-u-6769|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))))
  $Snap.unit))
; [eval] (forall __rw_i3: Int :: { a[__rw_i3] } true ==> 0 <= __rw_i3 - 1 && __rw_i3 - 1 < (len - 1 < len ? len - 1 : len) ==> a[__rw_i3].Ref__Integer_value == 0)
(declare-const __rw_i3@32@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] true ==> 0 <= __rw_i3 - 1 && __rw_i3 - 1 < (len - 1 < len ? len - 1 : len) ==> a[__rw_i3].Ref__Integer_value == 0
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 22 | True | live]
; [else-branch: 22 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 22 | True]
; [eval] 0 <= __rw_i3 - 1 && __rw_i3 - 1 < (len - 1 < len ? len - 1 : len) ==> a[__rw_i3].Ref__Integer_value == 0
; [eval] 0 <= __rw_i3 - 1 && __rw_i3 - 1 < (len - 1 < len ? len - 1 : len)
; [eval] 0 <= __rw_i3 - 1
; [eval] __rw_i3 - 1
(push) ; 6
; [then-branch: 23 | !(0 <= __rw_i3@32@01 - 1) | live]
; [else-branch: 23 | 0 <= __rw_i3@32@01 - 1 | live]
(push) ; 7
; [then-branch: 23 | !(0 <= __rw_i3@32@01 - 1)]
(assert (not (<= 0 (- __rw_i3@32@01 1))))
(pop) ; 7
(push) ; 7
; [else-branch: 23 | 0 <= __rw_i3@32@01 - 1]
(assert (<= 0 (- __rw_i3@32@01 1)))
; [eval] __rw_i3 - 1 < (len - 1 < len ? len - 1 : len)
; [eval] __rw_i3 - 1
; [eval] (len - 1 < len ? len - 1 : len)
; [eval] len - 1 < len
; [eval] len - 1
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (< (- len@8@01 1) len@8@01))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< (- len@8@01 1) len@8@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 24 | len@8@01 - 1 < len@8@01 | live]
; [else-branch: 24 | !(len@8@01 - 1 < len@8@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 24 | len@8@01 - 1 < len@8@01]
(assert (< (- len@8@01 1) len@8@01))
; [eval] len - 1
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (< (- len@8@01 1) len@8@01))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 (- __rw_i3@32@01 1))
  (and (<= 0 (- __rw_i3@32@01 1)) (< (- len@8@01 1) len@8@01))))
(assert (or (<= 0 (- __rw_i3@32@01 1)) (not (<= 0 (- __rw_i3@32@01 1)))))
(push) ; 6
; [then-branch: 25 | 0 <= __rw_i3@32@01 - 1 && __rw_i3@32@01 - 1 < len@8@01 - 1 | live]
; [else-branch: 25 | !(0 <= __rw_i3@32@01 - 1 && __rw_i3@32@01 - 1 < len@8@01 - 1) | live]
(push) ; 7
; [then-branch: 25 | 0 <= __rw_i3@32@01 - 1 && __rw_i3@32@01 - 1 < len@8@01 - 1]
(assert (and (<= 0 (- __rw_i3@32@01 1)) (< (- __rw_i3@32@01 1) (- len@8@01 1))))
; [eval] a[__rw_i3].Ref__Integer_value == 0
; [eval] a[__rw_i3]
(push) ; 8
(assert (not (>= __rw_i3@32@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (< __rw_i3@32@01 (Seq_length a@10@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(declare-const sm@33@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@17@01 r) (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index a@10@01 0))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@18@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@18@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@21@01 r)
      (and (<= 1 (inv@20@01 r)) (< (inv@20@01 r) (+ (- len@8@01 1) 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))) r))
  :qid |qp.fvfValDef2|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@26@01 r) (and (<= 0 (inv@25@01 r)) (< (inv@25@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r))
  :qid |qp.fvfValDef4|)))
(declare-const pm@34@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@34@01  $FPM) r)
    (+
      (+
        (+
          (+
            (ite
              (and
                (img@17@01 r)
                (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))
              (/ (to_real 1) (to_real 2))
              $Perm.No)
            (ite
              (= r (Seq_index a@10@01 0))
              (/ (to_real 1) (to_real 2))
              $Perm.No))
          (ite
            (and
              (img@21@01 r)
              (and (<= 1 (inv@20@01 r)) (< (inv@20@01 r) (+ (- len@8@01 1) 1))))
            (/ (to_real 1) (to_real 2))
            $Perm.No))
        (ite
          (and
            (img@26@01 r)
            (and (<= 0 (inv@25@01 r)) (< (inv@25@01 r) len@8@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and (img@31@01 r) (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) len@8@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@34@01  $FPM) r))
  :qid |qp.resPrmSumDef5|)))
(push) ; 8
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@34@01  $FPM) (Seq_index
    a@10@01
    __rw_i3@32@01)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(push) ; 7
; [else-branch: 25 | !(0 <= __rw_i3@32@01 - 1 && __rw_i3@32@01 - 1 < len@8@01 - 1)]
(assert (not (and (<= 0 (- __rw_i3@32@01 1)) (< (- __rw_i3@32@01 1) (- len@8@01 1)))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@17@01 r) (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index a@10@01 0))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@18@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@18@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@21@01 r)
      (and (<= 1 (inv@20@01 r)) (< (inv@20@01 r) (+ (- len@8@01 1) 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))) r))
  :qid |qp.fvfValDef2|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@26@01 r) (and (<= 0 (inv@25@01 r)) (< (inv@25@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@34@01  $FPM) r)
    (+
      (+
        (+
          (+
            (ite
              (and
                (img@17@01 r)
                (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))
              (/ (to_real 1) (to_real 2))
              $Perm.No)
            (ite
              (= r (Seq_index a@10@01 0))
              (/ (to_real 1) (to_real 2))
              $Perm.No))
          (ite
            (and
              (img@21@01 r)
              (and (<= 1 (inv@20@01 r)) (< (inv@20@01 r) (+ (- len@8@01 1) 1))))
            (/ (to_real 1) (to_real 2))
            $Perm.No))
        (ite
          (and
            (img@26@01 r)
            (and (<= 0 (inv@25@01 r)) (< (inv@25@01 r) len@8@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and (img@31@01 r) (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) len@8@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@34@01  $FPM) r))
  :qid |qp.resPrmSumDef5|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 (- __rw_i3@32@01 1)) (< (- __rw_i3@32@01 1) (- len@8@01 1))))
  (and (<= 0 (- __rw_i3@32@01 1)) (< (- __rw_i3@32@01 1) (- len@8@01 1)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@17@01 r) (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index a@10@01 0))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@18@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@18@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@21@01 r)
      (and (<= 1 (inv@20@01 r)) (< (inv@20@01 r) (+ (- len@8@01 1) 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))) r))
  :qid |qp.fvfValDef2|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@26@01 r) (and (<= 0 (inv@25@01 r)) (< (inv@25@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@34@01  $FPM) r)
    (+
      (+
        (+
          (+
            (ite
              (and
                (img@17@01 r)
                (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))
              (/ (to_real 1) (to_real 2))
              $Perm.No)
            (ite
              (= r (Seq_index a@10@01 0))
              (/ (to_real 1) (to_real 2))
              $Perm.No))
          (ite
            (and
              (img@21@01 r)
              (and (<= 1 (inv@20@01 r)) (< (inv@20@01 r) (+ (- len@8@01 1) 1))))
            (/ (to_real 1) (to_real 2))
            $Perm.No))
        (ite
          (and
            (img@26@01 r)
            (and (<= 0 (inv@25@01 r)) (< (inv@25@01 r) len@8@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and (img@31@01 r) (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) len@8@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@34@01  $FPM) r))
  :qid |qp.resPrmSumDef5|)))
(assert (and
  (=>
    (<= 0 (- __rw_i3@32@01 1))
    (and (<= 0 (- __rw_i3@32@01 1)) (< (- len@8@01 1) len@8@01)))
  (or (<= 0 (- __rw_i3@32@01 1)) (not (<= 0 (- __rw_i3@32@01 1))))
  (or
    (not (and (<= 0 (- __rw_i3@32@01 1)) (< (- __rw_i3@32@01 1) (- len@8@01 1))))
    (and (<= 0 (- __rw_i3@32@01 1)) (< (- __rw_i3@32@01 1) (- len@8@01 1))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@17@01 r) (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index a@10@01 0))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@18@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@18@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@21@01 r)
      (and (<= 1 (inv@20@01 r)) (< (inv@20@01 r) (+ (- len@8@01 1) 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))) r))
  :qid |qp.fvfValDef2|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@26@01 r) (and (<= 0 (inv@25@01 r)) (< (inv@25@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@34@01  $FPM) r)
    (+
      (+
        (+
          (+
            (ite
              (and
                (img@17@01 r)
                (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))
              (/ (to_real 1) (to_real 2))
              $Perm.No)
            (ite
              (= r (Seq_index a@10@01 0))
              (/ (to_real 1) (to_real 2))
              $Perm.No))
          (ite
            (and
              (img@21@01 r)
              (and (<= 1 (inv@20@01 r)) (< (inv@20@01 r) (+ (- len@8@01 1) 1))))
            (/ (to_real 1) (to_real 2))
            $Perm.No))
        (ite
          (and
            (img@26@01 r)
            (and (<= 0 (inv@25@01 r)) (< (inv@25@01 r) len@8@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and (img@31@01 r) (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) len@8@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@34@01  $FPM) r))
  :qid |qp.resPrmSumDef5|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((__rw_i3@32@01 Int)) (!
  (and
    (=>
      (<= 0 (- __rw_i3@32@01 1))
      (and (<= 0 (- __rw_i3@32@01 1)) (< (- len@8@01 1) len@8@01)))
    (or (<= 0 (- __rw_i3@32@01 1)) (not (<= 0 (- __rw_i3@32@01 1))))
    (or
      (not
        (and (<= 0 (- __rw_i3@32@01 1)) (< (- __rw_i3@32@01 1) (- len@8@01 1))))
      (and (<= 0 (- __rw_i3@32@01 1)) (< (- __rw_i3@32@01 1) (- len@8@01 1)))))
  :pattern ((Seq_index a@10@01 __rw_i3@32@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@70@13@70@118-aux|)))
(assert (forall ((__rw_i3@32@01 Int)) (!
  (=>
    (and (<= 0 (- __rw_i3@32@01 1)) (< (- __rw_i3@32@01 1) (- len@8@01 1)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) (Seq_index
        a@10@01
        __rw_i3@32@01))
      0))
  :pattern ((Seq_index a@10@01 __rw_i3@32@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@70@13@70@118|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))))
  $Snap.unit))
; [eval] (forall i: Int :: { b[i] } 0 <= i && i < len ==> b[i].Ref__Integer_value == i)
(declare-const i@35@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len ==> b[i].Ref__Integer_value == i
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
(push) ; 4
; [then-branch: 27 | 0 <= i@35@01 && i@35@01 < len@8@01 | live]
; [else-branch: 27 | !(0 <= i@35@01 && i@35@01 < len@8@01) | live]
(push) ; 5
; [then-branch: 27 | 0 <= i@35@01 && i@35@01 < len@8@01]
(assert (and (<= 0 i@35@01) (< i@35@01 len@8@01)))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 6
(assert (not (>= i@35@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@35@01 (Seq_length b@9@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@17@01 r) (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))) r))
    :qid |qp.fvfValDef0|))
  (forall ((r $Ref)) (!
    (=>
      (= r (Seq_index a@10@01 0))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value (as sm@18@01  $FVF<Ref__Integer_value>) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@18@01  $FVF<Ref__Integer_value>) r))
    :qid |qp.fvfValDef1|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@21@01 r)
        (and (<= 1 (inv@20@01 r)) (< (inv@20@01 r) (+ (- len@8@01 1) 1))))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))) r))
    :qid |qp.fvfValDef2|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@26@01 r) (and (<= 0 (inv@25@01 r)) (< (inv@25@01 r) len@8@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))) r))
    :qid |qp.fvfValDef3|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@31@01 r) (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) len@8@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r))
    :qid |qp.fvfValDef4|))))
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    (+
      (+
        (+
          (ite
            (and
              (img@17@01 (Seq_index b@9@01 i@35@01))
              (and
                (<= 0 (inv@16@01 (Seq_index b@9@01 i@35@01)))
                (< (inv@16@01 (Seq_index b@9@01 i@35@01)) len@8@01)))
            (/ (to_real 1) (to_real 2))
            $Perm.No)
          (ite
            (= (Seq_index b@9@01 i@35@01) (Seq_index a@10@01 0))
            (/ (to_real 1) (to_real 2))
            $Perm.No))
        (ite
          (and
            (img@21@01 (Seq_index b@9@01 i@35@01))
            (and
              (<= 1 (inv@20@01 (Seq_index b@9@01 i@35@01)))
              (< (inv@20@01 (Seq_index b@9@01 i@35@01)) (+ (- len@8@01 1) 1))))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and
          (img@26@01 (Seq_index b@9@01 i@35@01))
          (and
            (<= 0 (inv@25@01 (Seq_index b@9@01 i@35@01)))
            (< (inv@25@01 (Seq_index b@9@01 i@35@01)) len@8@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (and
        (img@31@01 (Seq_index b@9@01 i@35@01))
        (and
          (<= 0 (inv@30@01 (Seq_index b@9@01 i@35@01)))
          (< (inv@30@01 (Seq_index b@9@01 i@35@01)) len@8@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 27 | !(0 <= i@35@01 && i@35@01 < len@8@01)]
(assert (not (and (<= 0 i@35@01) (< i@35@01 len@8@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@17@01 r) (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index a@10@01 0))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@18@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@18@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@21@01 r)
      (and (<= 1 (inv@20@01 r)) (< (inv@20@01 r) (+ (- len@8@01 1) 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))) r))
  :qid |qp.fvfValDef2|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@26@01 r) (and (<= 0 (inv@25@01 r)) (< (inv@25@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r))
  :qid |qp.fvfValDef4|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@35@01) (< i@35@01 len@8@01)))
  (and (<= 0 i@35@01) (< i@35@01 len@8@01))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@17@01 r) (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index a@10@01 0))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@18@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@18@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@21@01 r)
      (and (<= 1 (inv@20@01 r)) (< (inv@20@01 r) (+ (- len@8@01 1) 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))) r))
  :qid |qp.fvfValDef2|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@26@01 r) (and (<= 0 (inv@25@01 r)) (< (inv@25@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@31@01 r) (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r))
  :qid |qp.fvfValDef4|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@35@01 Int)) (!
  (and
    (or (<= 0 i@35@01) (not (<= 0 i@35@01)))
    (or
      (not (and (<= 0 i@35@01) (< i@35@01 len@8@01)))
      (and (<= 0 i@35@01) (< i@35@01 len@8@01))))
  :pattern ((Seq_index b@9@01 i@35@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@71@13@71@86-aux|)))
(assert (forall ((i@35@01 Int)) (!
  (=>
    (and (<= 0 i@35@01) (< i@35@01 len@8@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@33@01  $FVF<Ref__Integer_value>) (Seq_index
        b@9@01
        i@35@01))
      i@35@01))
  :pattern ((Seq_index b@9@01 i@35@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@71@13@71@86|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(declare-const $t@36@01 $Snap)
(assert (= $t@36@01 ($Snap.combine ($Snap.first $t@36@01) ($Snap.second $t@36@01))))
(assert (= ($Snap.first $t@36@01) $Snap.unit))
; [eval] |a| == len
; [eval] |a|
(assert (=
  ($Snap.second $t@36@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@36@01))
    ($Snap.second ($Snap.second $t@36@01)))))
(assert (= ($Snap.first ($Snap.second $t@36@01)) $Snap.unit))
; [eval] |b| == len
; [eval] |b|
(assert (=
  ($Snap.second ($Snap.second $t@36@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@36@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@36@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@36@01))) $Snap.unit))
; [eval] |c| == len
; [eval] |c|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@36@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@36@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01)))))))
(declare-const i@37@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 28 | !(0 <= i@37@01) | live]
; [else-branch: 28 | 0 <= i@37@01 | live]
(push) ; 6
; [then-branch: 28 | !(0 <= i@37@01)]
(assert (not (<= 0 i@37@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 28 | 0 <= i@37@01]
(assert (<= 0 i@37@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@37@01) (not (<= 0 i@37@01))))
(assert (and (<= 0 i@37@01) (< i@37@01 len@8@01)))
; [eval] a[i]
(push) ; 5
(assert (not (>= i@37@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@37@01 (Seq_length a@10@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@38@01 ($Ref) Int)
(declare-fun img@39@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@37@01 Int)) (!
  (=>
    (and (<= 0 i@37@01) (< i@37@01 len@8@01))
    (or (<= 0 i@37@01) (not (<= 0 i@37@01))))
  :pattern ((Seq_index a@10@01 i@37@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@37@01 Int) (i2@37@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@37@01) (< i1@37@01 len@8@01))
      (and (<= 0 i2@37@01) (< i2@37@01 len@8@01))
      (= (Seq_index a@10@01 i1@37@01) (Seq_index a@10@01 i2@37@01)))
    (= i1@37@01 i2@37@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@37@01 Int)) (!
  (=>
    (and (<= 0 i@37@01) (< i@37@01 len@8@01))
    (and
      (= (inv@38@01 (Seq_index a@10@01 i@37@01)) i@37@01)
      (img@39@01 (Seq_index a@10@01 i@37@01))))
  :pattern ((Seq_index a@10@01 i@37@01))
  :qid |quant-u-6771|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@39@01 r) (and (<= 0 (inv@38@01 r)) (< (inv@38@01 r) len@8@01)))
    (= (Seq_index a@10@01 (inv@38@01 r)) r))
  :pattern ((inv@38@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@37@01 Int)) (!
  (=>
    (and (<= 0 i@37@01) (< i@37@01 len@8@01))
    (not (= (Seq_index a@10@01 i@37@01) $Ref.null)))
  :pattern ((Seq_index a@10@01 i@37@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01))))))))
(declare-const i@40@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 29 | !(0 <= i@40@01) | live]
; [else-branch: 29 | 0 <= i@40@01 | live]
(push) ; 6
; [then-branch: 29 | !(0 <= i@40@01)]
(assert (not (<= 0 i@40@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 29 | 0 <= i@40@01]
(assert (<= 0 i@40@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@40@01) (not (<= 0 i@40@01))))
(assert (and (<= 0 i@40@01) (< i@40@01 len@8@01)))
; [eval] b[i]
(push) ; 5
(assert (not (>= i@40@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@40@01 (Seq_length b@9@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@41@01 ($Ref) Int)
(declare-fun img@42@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@40@01 Int)) (!
  (=>
    (and (<= 0 i@40@01) (< i@40@01 len@8@01))
    (or (<= 0 i@40@01) (not (<= 0 i@40@01))))
  :pattern ((Seq_index b@9@01 i@40@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@40@01 Int) (i2@40@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@40@01) (< i1@40@01 len@8@01))
      (and (<= 0 i2@40@01) (< i2@40@01 len@8@01))
      (= (Seq_index b@9@01 i1@40@01) (Seq_index b@9@01 i2@40@01)))
    (= i1@40@01 i2@40@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@40@01 Int)) (!
  (=>
    (and (<= 0 i@40@01) (< i@40@01 len@8@01))
    (and
      (= (inv@41@01 (Seq_index b@9@01 i@40@01)) i@40@01)
      (img@42@01 (Seq_index b@9@01 i@40@01))))
  :pattern ((Seq_index b@9@01 i@40@01))
  :qid |quant-u-6773|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@42@01 r) (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) len@8@01)))
    (= (Seq_index b@9@01 (inv@41@01 r)) r))
  :pattern ((inv@41@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@40@01 Int)) (!
  (=>
    (and (<= 0 i@40@01) (< i@40@01 len@8@01))
    (not (= (Seq_index b@9@01 i@40@01) $Ref.null)))
  :pattern ((Seq_index b@9@01 i@40@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index b@9@01 i@40@01) (Seq_index a@10@01 i@37@01))
    (=
      (and (img@42@01 r) (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) len@8@01)))
      (and (img@39@01 r) (and (<= 0 (inv@38@01 r)) (< (inv@38@01 r) len@8@01)))))
  
  :qid |quant-u-6774|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01)))))))))
(declare-const i@43@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 30 | !(0 <= i@43@01) | live]
; [else-branch: 30 | 0 <= i@43@01 | live]
(push) ; 6
; [then-branch: 30 | !(0 <= i@43@01)]
(assert (not (<= 0 i@43@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 30 | 0 <= i@43@01]
(assert (<= 0 i@43@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@43@01) (not (<= 0 i@43@01))))
(assert (and (<= 0 i@43@01) (< i@43@01 len@8@01)))
; [eval] c[i]
(push) ; 5
(assert (not (>= i@43@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@43@01 (Seq_length c@11@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@44@01 ($Ref) Int)
(declare-fun img@45@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@43@01 Int)) (!
  (=>
    (and (<= 0 i@43@01) (< i@43@01 len@8@01))
    (or (<= 0 i@43@01) (not (<= 0 i@43@01))))
  :pattern ((Seq_index c@11@01 i@43@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@43@01 Int) (i2@43@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@43@01) (< i1@43@01 len@8@01))
      (and (<= 0 i2@43@01) (< i2@43@01 len@8@01))
      (= (Seq_index c@11@01 i1@43@01) (Seq_index c@11@01 i2@43@01)))
    (= i1@43@01 i2@43@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@43@01 Int)) (!
  (=>
    (and (<= 0 i@43@01) (< i@43@01 len@8@01))
    (and
      (= (inv@44@01 (Seq_index c@11@01 i@43@01)) i@43@01)
      (img@45@01 (Seq_index c@11@01 i@43@01))))
  :pattern ((Seq_index c@11@01 i@43@01))
  :qid |quant-u-6776|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@45@01 r) (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) len@8@01)))
    (= (Seq_index c@11@01 (inv@44@01 r)) r))
  :pattern ((inv@44@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@43@01 Int)) (!
  (=>
    (and (<= 0 i@43@01) (< i@43@01 len@8@01))
    (not (= (Seq_index c@11@01 i@43@01) $Ref.null)))
  :pattern ((Seq_index c@11@01 i@43@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index c@11@01 i@43@01) (Seq_index b@9@01 i@40@01))
    (=
      (and (img@45@01 r) (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) len@8@01)))
      (and (img@42@01 r) (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) len@8@01)))))
  
  :qid |quant-u-6777|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index c@11@01 i@43@01) (Seq_index a@10@01 i@37@01))
    (=
      (and (img@45@01 r) (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) len@8@01)))
      (and (img@39@01 r) (and (<= 0 (inv@38@01 r)) (< (inv@38@01 r) len@8@01)))))
  
  :qid |quant-u-6778|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01)))))))
  $Snap.unit))
; [eval] (forall i: Int :: { a[i] } 0 <= i && i < len ==> a[i].Ref__Integer_value == i + 1)
(declare-const i@46@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= i && i < len ==> a[i].Ref__Integer_value == i + 1
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 31 | !(0 <= i@46@01) | live]
; [else-branch: 31 | 0 <= i@46@01 | live]
(push) ; 6
; [then-branch: 31 | !(0 <= i@46@01)]
(assert (not (<= 0 i@46@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 31 | 0 <= i@46@01]
(assert (<= 0 i@46@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@46@01) (not (<= 0 i@46@01))))
(push) ; 5
; [then-branch: 32 | 0 <= i@46@01 && i@46@01 < len@8@01 | live]
; [else-branch: 32 | !(0 <= i@46@01 && i@46@01 < len@8@01) | live]
(push) ; 6
; [then-branch: 32 | 0 <= i@46@01 && i@46@01 < len@8@01]
(assert (and (<= 0 i@46@01) (< i@46@01 len@8@01)))
; [eval] a[i].Ref__Integer_value == i + 1
; [eval] a[i]
(push) ; 7
(assert (not (>= i@46@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@46@01 (Seq_length a@10@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@47@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@39@01 r) (and (<= 0 (inv@38@01 r)) (< (inv@38@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@36@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@36@01))))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@42@01 r) (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01)))))) r))
  :qid |qp.fvfValDef7|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@45@01 r) (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01))))))) r))
  :qid |qp.fvfValDef8|)))
(declare-const pm@48@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@48@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@39@01 r)
            (and (<= 0 (inv@38@01 r)) (< (inv@38@01 r) len@8@01)))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@42@01 r)
            (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) len@8@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and (img@45@01 r) (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) len@8@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@48@01  $FPM) r))
  :qid |qp.resPrmSumDef9|)))
(push) ; 7
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@48@01  $FPM) (Seq_index a@10@01 i@46@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] i + 1
(pop) ; 6
(push) ; 6
; [else-branch: 32 | !(0 <= i@46@01 && i@46@01 < len@8@01)]
(assert (not (and (<= 0 i@46@01) (< i@46@01 len@8@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@39@01 r) (and (<= 0 (inv@38@01 r)) (< (inv@38@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@36@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@36@01))))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@42@01 r) (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01)))))) r))
  :qid |qp.fvfValDef7|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@45@01 r) (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01))))))) r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@48@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@39@01 r)
            (and (<= 0 (inv@38@01 r)) (< (inv@38@01 r) len@8@01)))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@42@01 r)
            (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) len@8@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and (img@45@01 r) (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) len@8@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@48@01  $FPM) r))
  :qid |qp.resPrmSumDef9|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@46@01) (< i@46@01 len@8@01)))
  (and (<= 0 i@46@01) (< i@46@01 len@8@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@39@01 r) (and (<= 0 (inv@38@01 r)) (< (inv@38@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@36@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@36@01))))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@42@01 r) (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01)))))) r))
  :qid |qp.fvfValDef7|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@45@01 r) (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01))))))) r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@48@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@39@01 r)
            (and (<= 0 (inv@38@01 r)) (< (inv@38@01 r) len@8@01)))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@42@01 r)
            (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) len@8@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and (img@45@01 r) (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) len@8@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@48@01  $FPM) r))
  :qid |qp.resPrmSumDef9|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@46@01 Int)) (!
  (and
    (or (<= 0 i@46@01) (not (<= 0 i@46@01)))
    (or
      (not (and (<= 0 i@46@01) (< i@46@01 len@8@01)))
      (and (<= 0 i@46@01) (< i@46@01 len@8@01))))
  :pattern ((Seq_index a@10@01 i@46@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@76@12@76@89-aux|)))
(assert (forall ((i@46@01 Int)) (!
  (=>
    (and (<= 0 i@46@01) (< i@46@01 len@8@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) (Seq_index
        a@10@01
        i@46@01))
      (+ i@46@01 1)))
  :pattern ((Seq_index a@10@01 i@46@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@76@12@76@89|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01))))))))
  $Snap.unit))
; [eval] (forall i: Int :: { b[i] } 0 <= i && i < len ==> b[i].Ref__Integer_value == i)
(declare-const i@49@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len ==> b[i].Ref__Integer_value == i
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 33 | !(0 <= i@49@01) | live]
; [else-branch: 33 | 0 <= i@49@01 | live]
(push) ; 6
; [then-branch: 33 | !(0 <= i@49@01)]
(assert (not (<= 0 i@49@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 33 | 0 <= i@49@01]
(assert (<= 0 i@49@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@49@01) (not (<= 0 i@49@01))))
(push) ; 5
; [then-branch: 34 | 0 <= i@49@01 && i@49@01 < len@8@01 | live]
; [else-branch: 34 | !(0 <= i@49@01 && i@49@01 < len@8@01) | live]
(push) ; 6
; [then-branch: 34 | 0 <= i@49@01 && i@49@01 < len@8@01]
(assert (and (<= 0 i@49@01) (< i@49@01 len@8@01)))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 7
(assert (not (>= i@49@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@49@01 (Seq_length b@9@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@39@01 r) (and (<= 0 (inv@38@01 r)) (< (inv@38@01 r) len@8@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@36@01))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@36@01))))) r))
    :qid |qp.fvfValDef6|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@42@01 r) (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) len@8@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01)))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01)))))) r))
    :qid |qp.fvfValDef7|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@45@01 r) (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) len@8@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01))))))) r))
    :qid |qp.fvfValDef8|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@39@01 (Seq_index b@9@01 i@49@01))
          (and
            (<= 0 (inv@38@01 (Seq_index b@9@01 i@49@01)))
            (< (inv@38@01 (Seq_index b@9@01 i@49@01)) len@8@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@42@01 (Seq_index b@9@01 i@49@01))
          (and
            (<= 0 (inv@41@01 (Seq_index b@9@01 i@49@01)))
            (< (inv@41@01 (Seq_index b@9@01 i@49@01)) len@8@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (and
        (img@45@01 (Seq_index b@9@01 i@49@01))
        (and
          (<= 0 (inv@44@01 (Seq_index b@9@01 i@49@01)))
          (< (inv@44@01 (Seq_index b@9@01 i@49@01)) len@8@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 34 | !(0 <= i@49@01 && i@49@01 < len@8@01)]
(assert (not (and (<= 0 i@49@01) (< i@49@01 len@8@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@39@01 r) (and (<= 0 (inv@38@01 r)) (< (inv@38@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@36@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@36@01))))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@42@01 r) (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01)))))) r))
  :qid |qp.fvfValDef7|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@45@01 r) (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01))))))) r))
  :qid |qp.fvfValDef8|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@49@01) (< i@49@01 len@8@01)))
  (and (<= 0 i@49@01) (< i@49@01 len@8@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@39@01 r) (and (<= 0 (inv@38@01 r)) (< (inv@38@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@36@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@36@01))))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@42@01 r) (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01)))))) r))
  :qid |qp.fvfValDef7|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@45@01 r) (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01))))))) r))
  :qid |qp.fvfValDef8|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@49@01 Int)) (!
  (and
    (or (<= 0 i@49@01) (not (<= 0 i@49@01)))
    (or
      (not (and (<= 0 i@49@01) (< i@49@01 len@8@01)))
      (and (<= 0 i@49@01) (< i@49@01 len@8@01))))
  :pattern ((Seq_index b@9@01 i@49@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@77@12@77@85-aux|)))
(assert (forall ((i@49@01 Int)) (!
  (=>
    (and (<= 0 i@49@01) (< i@49@01 len@8@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) (Seq_index
        b@9@01
        i@49@01))
      i@49@01))
  :pattern ((Seq_index b@9@01 i@49@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@77@12@77@85|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01))))))))
  $Snap.unit))
; [eval] (forall i: Int :: { c[i] } 0 <= i && i < (len - 1 < len ? len - 1 : len) ==> c[i].Ref__Integer_value == 2)
(declare-const i@50@01 Int)
(push) ; 4
; [eval] 0 <= i && i < (len - 1 < len ? len - 1 : len) ==> c[i].Ref__Integer_value == 2
; [eval] 0 <= i && i < (len - 1 < len ? len - 1 : len)
; [eval] 0 <= i
(push) ; 5
; [then-branch: 35 | !(0 <= i@50@01) | live]
; [else-branch: 35 | 0 <= i@50@01 | live]
(push) ; 6
; [then-branch: 35 | !(0 <= i@50@01)]
(assert (not (<= 0 i@50@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 35 | 0 <= i@50@01]
(assert (<= 0 i@50@01))
; [eval] i < (len - 1 < len ? len - 1 : len)
; [eval] (len - 1 < len ? len - 1 : len)
; [eval] len - 1 < len
; [eval] len - 1
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not (< (- len@8@01 1) len@8@01))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (< (- len@8@01 1) len@8@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 36 | len@8@01 - 1 < len@8@01 | live]
; [else-branch: 36 | !(len@8@01 - 1 < len@8@01) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 36 | len@8@01 - 1 < len@8@01]
(assert (< (- len@8@01 1) len@8@01))
; [eval] len - 1
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (< (- len@8@01 1) len@8@01))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=> (<= 0 i@50@01) (and (<= 0 i@50@01) (< (- len@8@01 1) len@8@01))))
(assert (or (<= 0 i@50@01) (not (<= 0 i@50@01))))
(push) ; 5
; [then-branch: 37 | 0 <= i@50@01 && i@50@01 < len@8@01 - 1 | live]
; [else-branch: 37 | !(0 <= i@50@01 && i@50@01 < len@8@01 - 1) | live]
(push) ; 6
; [then-branch: 37 | 0 <= i@50@01 && i@50@01 < len@8@01 - 1]
(assert (and (<= 0 i@50@01) (< i@50@01 (- len@8@01 1))))
; [eval] c[i].Ref__Integer_value == 2
; [eval] c[i]
(push) ; 7
(assert (not (>= i@50@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@50@01 (Seq_length c@11@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@39@01 r) (and (<= 0 (inv@38@01 r)) (< (inv@38@01 r) len@8@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@36@01))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@36@01))))) r))
    :qid |qp.fvfValDef6|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@42@01 r) (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) len@8@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01)))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01)))))) r))
    :qid |qp.fvfValDef7|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@45@01 r) (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) len@8@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01))))))) r))
    :qid |qp.fvfValDef8|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@39@01 (Seq_index c@11@01 i@50@01))
          (and
            (<= 0 (inv@38@01 (Seq_index c@11@01 i@50@01)))
            (< (inv@38@01 (Seq_index c@11@01 i@50@01)) len@8@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@42@01 (Seq_index c@11@01 i@50@01))
          (and
            (<= 0 (inv@41@01 (Seq_index c@11@01 i@50@01)))
            (< (inv@41@01 (Seq_index c@11@01 i@50@01)) len@8@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (and
        (img@45@01 (Seq_index c@11@01 i@50@01))
        (and
          (<= 0 (inv@44@01 (Seq_index c@11@01 i@50@01)))
          (< (inv@44@01 (Seq_index c@11@01 i@50@01)) len@8@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 37 | !(0 <= i@50@01 && i@50@01 < len@8@01 - 1)]
(assert (not (and (<= 0 i@50@01) (< i@50@01 (- len@8@01 1)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@39@01 r) (and (<= 0 (inv@38@01 r)) (< (inv@38@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@36@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@36@01))))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@42@01 r) (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01)))))) r))
  :qid |qp.fvfValDef7|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@45@01 r) (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01))))))) r))
  :qid |qp.fvfValDef8|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@50@01) (< i@50@01 (- len@8@01 1))))
  (and (<= 0 i@50@01) (< i@50@01 (- len@8@01 1)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@39@01 r) (and (<= 0 (inv@38@01 r)) (< (inv@38@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@36@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@36@01))))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@42@01 r) (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01)))))) r))
  :qid |qp.fvfValDef7|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@45@01 r) (and (<= 0 (inv@44@01 r)) (< (inv@44@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@36@01))))))) r))
  :qid |qp.fvfValDef8|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@50@01 Int)) (!
  (and
    (=> (<= 0 i@50@01) (and (<= 0 i@50@01) (< (- len@8@01 1) len@8@01)))
    (or (<= 0 i@50@01) (not (<= 0 i@50@01)))
    (or
      (not (and (<= 0 i@50@01) (< i@50@01 (- len@8@01 1))))
      (and (<= 0 i@50@01) (< i@50@01 (- len@8@01 1)))))
  :pattern ((Seq_index c@11@01 i@50@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@78@12@78@113-aux|)))
(assert (forall ((i@50@01 Int)) (!
  (=>
    (and (<= 0 i@50@01) (< i@50@01 (- len@8@01 1)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@47@01  $FVF<Ref__Integer_value>) (Seq_index
        c@11@01
        i@50@01))
      2))
  :pattern ((Seq_index c@11@01 i@50@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@78@12@78@113|)))
(pop) ; 3
(push) ; 3
; [exec]
; inhale false
(pop) ; 3
(pop) ; 2
(push) ; 2
; [else-branch: 7 | !(0 < len@8@01)]
(assert (not (< 0 len@8@01)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))
(declare-const i@51@01 Int)
(push) ; 3
; [eval] 1 <= i && i < (len - 1 < len ? len - 1 : len) + 1
; [eval] 1 <= i
(push) ; 4
; [then-branch: 38 | !(1 <= i@51@01) | live]
; [else-branch: 38 | 1 <= i@51@01 | live]
(push) ; 5
; [then-branch: 38 | !(1 <= i@51@01)]
(assert (not (<= 1 i@51@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 38 | 1 <= i@51@01]
(assert (<= 1 i@51@01))
; [eval] i < (len - 1 < len ? len - 1 : len) + 1
; [eval] (len - 1 < len ? len - 1 : len) + 1
; [eval] (len - 1 < len ? len - 1 : len)
; [eval] len - 1 < len
; [eval] len - 1
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not (< (- len@8@01 1) len@8@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (< (- len@8@01 1) len@8@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 39 | len@8@01 - 1 < len@8@01 | live]
; [else-branch: 39 | !(len@8@01 - 1 < len@8@01) | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 39 | len@8@01 - 1 < len@8@01]
(assert (< (- len@8@01 1) len@8@01))
; [eval] len - 1
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (< (- len@8@01 1) len@8@01))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=> (<= 1 i@51@01) (and (<= 1 i@51@01) (< (- len@8@01 1) len@8@01))))
(assert (or (<= 1 i@51@01) (not (<= 1 i@51@01))))
(assert (and (<= 1 i@51@01) (< i@51@01 (+ (- len@8@01 1) 1))))
; [eval] a[i]
(push) ; 4
(assert (not (>= i@51@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@51@01 (Seq_length a@10@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@52@01 ($Ref) Int)
(declare-fun img@53@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@51@01 Int)) (!
  (=>
    (and (<= 1 i@51@01) (< i@51@01 (+ (- len@8@01 1) 1)))
    (and
      (=> (<= 1 i@51@01) (and (<= 1 i@51@01) (< (- len@8@01 1) len@8@01)))
      (or (<= 1 i@51@01) (not (<= 1 i@51@01)))))
  :pattern ((Seq_index a@10@01 i@51@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@51@01 Int) (i2@51@01 Int)) (!
  (=>
    (and
      (and (<= 1 i1@51@01) (< i1@51@01 (+ (- len@8@01 1) 1)))
      (and (<= 1 i2@51@01) (< i2@51@01 (+ (- len@8@01 1) 1)))
      (= (Seq_index a@10@01 i1@51@01) (Seq_index a@10@01 i2@51@01)))
    (= i1@51@01 i2@51@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@51@01 Int)) (!
  (=>
    (and (<= 1 i@51@01) (< i@51@01 (+ (- len@8@01 1) 1)))
    (and
      (= (inv@52@01 (Seq_index a@10@01 i@51@01)) i@51@01)
      (img@53@01 (Seq_index a@10@01 i@51@01))))
  :pattern ((Seq_index a@10@01 i@51@01))
  :qid |quant-u-6780|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@53@01 r)
      (and (<= 1 (inv@52@01 r)) (< (inv@52@01 r) (+ (- len@8@01 1) 1))))
    (= (Seq_index a@10@01 (inv@52@01 r)) r))
  :pattern ((inv@52@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@51@01 Int)) (!
  (=>
    (and (<= 1 i@51@01) (< i@51@01 (+ (- len@8@01 1) 1)))
    (not (= (Seq_index a@10@01 i@51@01) $Ref.null)))
  :pattern ((Seq_index a@10@01 i@51@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index a@10@01 i@51@01) (Seq_index a@10@01 i@15@01))
    (=
      (and
        (img@53@01 r)
        (and (<= 1 (inv@52@01 r)) (< (inv@52@01 r) (+ (- len@8@01 1) 1))))
      (and (img@17@01 r) (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))))
  
  :qid |quant-u-6781|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))
  $Snap.unit))
; [eval] (forall j: Int, k: Int :: { b[j], b[k] } 0 <= j && (j < len && (0 <= k && (k < len && j != k))) ==> b[j] != b[k])
(declare-const j@54@01 Int)
(declare-const k@55@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= j && (j < len && (0 <= k && (k < len && j != k))) ==> b[j] != b[k]
; [eval] 0 <= j && (j < len && (0 <= k && (k < len && j != k)))
; [eval] 0 <= j
(push) ; 4
; [then-branch: 40 | !(0 <= j@54@01) | live]
; [else-branch: 40 | 0 <= j@54@01 | live]
(push) ; 5
; [then-branch: 40 | !(0 <= j@54@01)]
(assert (not (<= 0 j@54@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 40 | 0 <= j@54@01]
(assert (<= 0 j@54@01))
; [eval] j < len
(push) ; 6
; [then-branch: 41 | !(j@54@01 < len@8@01) | live]
; [else-branch: 41 | j@54@01 < len@8@01 | live]
(push) ; 7
; [then-branch: 41 | !(j@54@01 < len@8@01)]
(assert (not (< j@54@01 len@8@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 41 | j@54@01 < len@8@01]
(assert (< j@54@01 len@8@01))
; [eval] 0 <= k
(push) ; 8
; [then-branch: 42 | !(0 <= k@55@01) | live]
; [else-branch: 42 | 0 <= k@55@01 | live]
(push) ; 9
; [then-branch: 42 | !(0 <= k@55@01)]
(assert (not (<= 0 k@55@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 42 | 0 <= k@55@01]
(assert (<= 0 k@55@01))
; [eval] k < len
(push) ; 10
; [then-branch: 43 | !(k@55@01 < len@8@01) | live]
; [else-branch: 43 | k@55@01 < len@8@01 | live]
(push) ; 11
; [then-branch: 43 | !(k@55@01 < len@8@01)]
(assert (not (< k@55@01 len@8@01)))
(pop) ; 11
(push) ; 11
; [else-branch: 43 | k@55@01 < len@8@01]
(assert (< k@55@01 len@8@01))
; [eval] j != k
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (< k@55@01 len@8@01) (not (< k@55@01 len@8@01))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@55@01)
  (and (<= 0 k@55@01) (or (< k@55@01 len@8@01) (not (< k@55@01 len@8@01))))))
(assert (or (<= 0 k@55@01) (not (<= 0 k@55@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@54@01 len@8@01)
  (and
    (< j@54@01 len@8@01)
    (=>
      (<= 0 k@55@01)
      (and (<= 0 k@55@01) (or (< k@55@01 len@8@01) (not (< k@55@01 len@8@01)))))
    (or (<= 0 k@55@01) (not (<= 0 k@55@01))))))
(assert (or (< j@54@01 len@8@01) (not (< j@54@01 len@8@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@54@01)
  (and
    (<= 0 j@54@01)
    (=>
      (< j@54@01 len@8@01)
      (and
        (< j@54@01 len@8@01)
        (=>
          (<= 0 k@55@01)
          (and
            (<= 0 k@55@01)
            (or (< k@55@01 len@8@01) (not (< k@55@01 len@8@01)))))
        (or (<= 0 k@55@01) (not (<= 0 k@55@01)))))
    (or (< j@54@01 len@8@01) (not (< j@54@01 len@8@01))))))
(assert (or (<= 0 j@54@01) (not (<= 0 j@54@01))))
(push) ; 4
; [then-branch: 44 | 0 <= j@54@01 && j@54@01 < len@8@01 && 0 <= k@55@01 && k@55@01 < len@8@01 && j@54@01 != k@55@01 | live]
; [else-branch: 44 | !(0 <= j@54@01 && j@54@01 < len@8@01 && 0 <= k@55@01 && k@55@01 < len@8@01 && j@54@01 != k@55@01) | live]
(push) ; 5
; [then-branch: 44 | 0 <= j@54@01 && j@54@01 < len@8@01 && 0 <= k@55@01 && k@55@01 < len@8@01 && j@54@01 != k@55@01]
(assert (and
  (<= 0 j@54@01)
  (and
    (< j@54@01 len@8@01)
    (and (<= 0 k@55@01) (and (< k@55@01 len@8@01) (not (= j@54@01 k@55@01)))))))
; [eval] b[j] != b[k]
; [eval] b[j]
(push) ; 6
(assert (not (>= j@54@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< j@54@01 (Seq_length b@9@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] b[k]
(push) ; 6
(assert (not (>= k@55@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k@55@01 (Seq_length b@9@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 44 | !(0 <= j@54@01 && j@54@01 < len@8@01 && 0 <= k@55@01 && k@55@01 < len@8@01 && j@54@01 != k@55@01)]
(assert (not
  (and
    (<= 0 j@54@01)
    (and
      (< j@54@01 len@8@01)
      (and (<= 0 k@55@01) (and (< k@55@01 len@8@01) (not (= j@54@01 k@55@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@54@01)
    (and
      (< j@54@01 len@8@01)
      (and (<= 0 k@55@01) (and (< k@55@01 len@8@01) (not (= j@54@01 k@55@01))))))
  (and
    (<= 0 j@54@01)
    (< j@54@01 len@8@01)
    (<= 0 k@55@01)
    (< k@55@01 len@8@01)
    (not (= j@54@01 k@55@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@54@01)
      (and
        (< j@54@01 len@8@01)
        (and (<= 0 k@55@01) (and (< k@55@01 len@8@01) (not (= j@54@01 k@55@01)))))))
  (and
    (<= 0 j@54@01)
    (and
      (< j@54@01 len@8@01)
      (and (<= 0 k@55@01) (and (< k@55@01 len@8@01) (not (= j@54@01 k@55@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@54@01 Int) (k@55@01 Int)) (!
  (and
    (=>
      (<= 0 j@54@01)
      (and
        (<= 0 j@54@01)
        (=>
          (< j@54@01 len@8@01)
          (and
            (< j@54@01 len@8@01)
            (=>
              (<= 0 k@55@01)
              (and
                (<= 0 k@55@01)
                (or (< k@55@01 len@8@01) (not (< k@55@01 len@8@01)))))
            (or (<= 0 k@55@01) (not (<= 0 k@55@01)))))
        (or (< j@54@01 len@8@01) (not (< j@54@01 len@8@01)))))
    (or (<= 0 j@54@01) (not (<= 0 j@54@01)))
    (=>
      (and
        (<= 0 j@54@01)
        (and
          (< j@54@01 len@8@01)
          (and
            (<= 0 k@55@01)
            (and (< k@55@01 len@8@01) (not (= j@54@01 k@55@01))))))
      (and
        (<= 0 j@54@01)
        (< j@54@01 len@8@01)
        (<= 0 k@55@01)
        (< k@55@01 len@8@01)
        (not (= j@54@01 k@55@01))))
    (or
      (not
        (and
          (<= 0 j@54@01)
          (and
            (< j@54@01 len@8@01)
            (and
              (<= 0 k@55@01)
              (and (< k@55@01 len@8@01) (not (= j@54@01 k@55@01)))))))
      (and
        (<= 0 j@54@01)
        (and
          (< j@54@01 len@8@01)
          (and
            (<= 0 k@55@01)
            (and (< k@55@01 len@8@01) (not (= j@54@01 k@55@01))))))))
  :pattern ((Seq_index b@9@01 j@54@01) (Seq_index b@9@01 k@55@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@66@12@66@102-aux|)))
(assert (forall ((j@54@01 Int) (k@55@01 Int)) (!
  (=>
    (and
      (<= 0 j@54@01)
      (and
        (< j@54@01 len@8@01)
        (and (<= 0 k@55@01) (and (< k@55@01 len@8@01) (not (= j@54@01 k@55@01))))))
    (not (= (Seq_index b@9@01 j@54@01) (Seq_index b@9@01 k@55@01))))
  :pattern ((Seq_index b@9@01 j@54@01) (Seq_index b@9@01 k@55@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@66@12@66@102|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))))
(declare-const i@56@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 45 | !(0 <= i@56@01) | live]
; [else-branch: 45 | 0 <= i@56@01 | live]
(push) ; 5
; [then-branch: 45 | !(0 <= i@56@01)]
(assert (not (<= 0 i@56@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 45 | 0 <= i@56@01]
(assert (<= 0 i@56@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@56@01) (not (<= 0 i@56@01))))
(assert (and (<= 0 i@56@01) (< i@56@01 len@8@01)))
; [eval] b[i]
(push) ; 4
(assert (not (>= i@56@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@56@01 (Seq_length b@9@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@57@01 ($Ref) Int)
(declare-fun img@58@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@56@01 Int)) (!
  (=>
    (and (<= 0 i@56@01) (< i@56@01 len@8@01))
    (or (<= 0 i@56@01) (not (<= 0 i@56@01))))
  :pattern ((Seq_index b@9@01 i@56@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@56@01 Int) (i2@56@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@56@01) (< i1@56@01 len@8@01))
      (and (<= 0 i2@56@01) (< i2@56@01 len@8@01))
      (= (Seq_index b@9@01 i1@56@01) (Seq_index b@9@01 i2@56@01)))
    (= i1@56@01 i2@56@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@56@01 Int)) (!
  (=>
    (and (<= 0 i@56@01) (< i@56@01 len@8@01))
    (and
      (= (inv@57@01 (Seq_index b@9@01 i@56@01)) i@56@01)
      (img@58@01 (Seq_index b@9@01 i@56@01))))
  :pattern ((Seq_index b@9@01 i@56@01))
  :qid |quant-u-6783|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@58@01 r) (and (<= 0 (inv@57@01 r)) (< (inv@57@01 r) len@8@01)))
    (= (Seq_index b@9@01 (inv@57@01 r)) r))
  :pattern ((inv@57@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@56@01 Int)) (!
  (=>
    (and (<= 0 i@56@01) (< i@56@01 len@8@01))
    (not (= (Seq_index b@9@01 i@56@01) $Ref.null)))
  :pattern ((Seq_index b@9@01 i@56@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index b@9@01 i@56@01) (Seq_index a@10@01 i@51@01))
    (=
      (and (img@58@01 r) (and (<= 0 (inv@57@01 r)) (< (inv@57@01 r) len@8@01)))
      (and
        (img@53@01 r)
        (and (<= 1 (inv@52@01 r)) (< (inv@52@01 r) (+ (- len@8@01 1) 1))))))
  
  :qid |quant-u-6784|))))
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
    (= (Seq_index b@9@01 i@56@01) (Seq_index a@10@01 i@15@01))
    (=
      (and (img@58@01 r) (and (<= 0 (inv@57@01 r)) (< (inv@57@01 r) len@8@01)))
      (and (img@17@01 r) (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))))
  
  :qid |quant-u-6785|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))
  $Snap.unit))
; [eval] (forall j: Int, k: Int :: { c[j], c[k] } 0 <= j && (j < len && (0 <= k && (k < len && j != k))) ==> c[j] != c[k])
(declare-const j@59@01 Int)
(declare-const k@60@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= j && (j < len && (0 <= k && (k < len && j != k))) ==> c[j] != c[k]
; [eval] 0 <= j && (j < len && (0 <= k && (k < len && j != k)))
; [eval] 0 <= j
(push) ; 4
; [then-branch: 46 | !(0 <= j@59@01) | live]
; [else-branch: 46 | 0 <= j@59@01 | live]
(push) ; 5
; [then-branch: 46 | !(0 <= j@59@01)]
(assert (not (<= 0 j@59@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 46 | 0 <= j@59@01]
(assert (<= 0 j@59@01))
; [eval] j < len
(push) ; 6
; [then-branch: 47 | !(j@59@01 < len@8@01) | live]
; [else-branch: 47 | j@59@01 < len@8@01 | live]
(push) ; 7
; [then-branch: 47 | !(j@59@01 < len@8@01)]
(assert (not (< j@59@01 len@8@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 47 | j@59@01 < len@8@01]
(assert (< j@59@01 len@8@01))
; [eval] 0 <= k
(push) ; 8
; [then-branch: 48 | !(0 <= k@60@01) | live]
; [else-branch: 48 | 0 <= k@60@01 | live]
(push) ; 9
; [then-branch: 48 | !(0 <= k@60@01)]
(assert (not (<= 0 k@60@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 48 | 0 <= k@60@01]
(assert (<= 0 k@60@01))
; [eval] k < len
(push) ; 10
; [then-branch: 49 | !(k@60@01 < len@8@01) | live]
; [else-branch: 49 | k@60@01 < len@8@01 | live]
(push) ; 11
; [then-branch: 49 | !(k@60@01 < len@8@01)]
(assert (not (< k@60@01 len@8@01)))
(pop) ; 11
(push) ; 11
; [else-branch: 49 | k@60@01 < len@8@01]
(assert (< k@60@01 len@8@01))
; [eval] j != k
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (< k@60@01 len@8@01) (not (< k@60@01 len@8@01))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@60@01)
  (and (<= 0 k@60@01) (or (< k@60@01 len@8@01) (not (< k@60@01 len@8@01))))))
(assert (or (<= 0 k@60@01) (not (<= 0 k@60@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@59@01 len@8@01)
  (and
    (< j@59@01 len@8@01)
    (=>
      (<= 0 k@60@01)
      (and (<= 0 k@60@01) (or (< k@60@01 len@8@01) (not (< k@60@01 len@8@01)))))
    (or (<= 0 k@60@01) (not (<= 0 k@60@01))))))
(assert (or (< j@59@01 len@8@01) (not (< j@59@01 len@8@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@59@01)
  (and
    (<= 0 j@59@01)
    (=>
      (< j@59@01 len@8@01)
      (and
        (< j@59@01 len@8@01)
        (=>
          (<= 0 k@60@01)
          (and
            (<= 0 k@60@01)
            (or (< k@60@01 len@8@01) (not (< k@60@01 len@8@01)))))
        (or (<= 0 k@60@01) (not (<= 0 k@60@01)))))
    (or (< j@59@01 len@8@01) (not (< j@59@01 len@8@01))))))
(assert (or (<= 0 j@59@01) (not (<= 0 j@59@01))))
(push) ; 4
; [then-branch: 50 | 0 <= j@59@01 && j@59@01 < len@8@01 && 0 <= k@60@01 && k@60@01 < len@8@01 && j@59@01 != k@60@01 | live]
; [else-branch: 50 | !(0 <= j@59@01 && j@59@01 < len@8@01 && 0 <= k@60@01 && k@60@01 < len@8@01 && j@59@01 != k@60@01) | live]
(push) ; 5
; [then-branch: 50 | 0 <= j@59@01 && j@59@01 < len@8@01 && 0 <= k@60@01 && k@60@01 < len@8@01 && j@59@01 != k@60@01]
(assert (and
  (<= 0 j@59@01)
  (and
    (< j@59@01 len@8@01)
    (and (<= 0 k@60@01) (and (< k@60@01 len@8@01) (not (= j@59@01 k@60@01)))))))
; [eval] c[j] != c[k]
; [eval] c[j]
(push) ; 6
(assert (not (>= j@59@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< j@59@01 (Seq_length c@11@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] c[k]
(push) ; 6
(assert (not (>= k@60@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k@60@01 (Seq_length c@11@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 50 | !(0 <= j@59@01 && j@59@01 < len@8@01 && 0 <= k@60@01 && k@60@01 < len@8@01 && j@59@01 != k@60@01)]
(assert (not
  (and
    (<= 0 j@59@01)
    (and
      (< j@59@01 len@8@01)
      (and (<= 0 k@60@01) (and (< k@60@01 len@8@01) (not (= j@59@01 k@60@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@59@01)
    (and
      (< j@59@01 len@8@01)
      (and (<= 0 k@60@01) (and (< k@60@01 len@8@01) (not (= j@59@01 k@60@01))))))
  (and
    (<= 0 j@59@01)
    (< j@59@01 len@8@01)
    (<= 0 k@60@01)
    (< k@60@01 len@8@01)
    (not (= j@59@01 k@60@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@59@01)
      (and
        (< j@59@01 len@8@01)
        (and (<= 0 k@60@01) (and (< k@60@01 len@8@01) (not (= j@59@01 k@60@01)))))))
  (and
    (<= 0 j@59@01)
    (and
      (< j@59@01 len@8@01)
      (and (<= 0 k@60@01) (and (< k@60@01 len@8@01) (not (= j@59@01 k@60@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@59@01 Int) (k@60@01 Int)) (!
  (and
    (=>
      (<= 0 j@59@01)
      (and
        (<= 0 j@59@01)
        (=>
          (< j@59@01 len@8@01)
          (and
            (< j@59@01 len@8@01)
            (=>
              (<= 0 k@60@01)
              (and
                (<= 0 k@60@01)
                (or (< k@60@01 len@8@01) (not (< k@60@01 len@8@01)))))
            (or (<= 0 k@60@01) (not (<= 0 k@60@01)))))
        (or (< j@59@01 len@8@01) (not (< j@59@01 len@8@01)))))
    (or (<= 0 j@59@01) (not (<= 0 j@59@01)))
    (=>
      (and
        (<= 0 j@59@01)
        (and
          (< j@59@01 len@8@01)
          (and
            (<= 0 k@60@01)
            (and (< k@60@01 len@8@01) (not (= j@59@01 k@60@01))))))
      (and
        (<= 0 j@59@01)
        (< j@59@01 len@8@01)
        (<= 0 k@60@01)
        (< k@60@01 len@8@01)
        (not (= j@59@01 k@60@01))))
    (or
      (not
        (and
          (<= 0 j@59@01)
          (and
            (< j@59@01 len@8@01)
            (and
              (<= 0 k@60@01)
              (and (< k@60@01 len@8@01) (not (= j@59@01 k@60@01)))))))
      (and
        (<= 0 j@59@01)
        (and
          (< j@59@01 len@8@01)
          (and
            (<= 0 k@60@01)
            (and (< k@60@01 len@8@01) (not (= j@59@01 k@60@01))))))))
  :pattern ((Seq_index c@11@01 j@59@01) (Seq_index c@11@01 k@60@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@68@12@68@102-aux|)))
(assert (forall ((j@59@01 Int) (k@60@01 Int)) (!
  (=>
    (and
      (<= 0 j@59@01)
      (and
        (< j@59@01 len@8@01)
        (and (<= 0 k@60@01) (and (< k@60@01 len@8@01) (not (= j@59@01 k@60@01))))))
    (not (= (Seq_index c@11@01 j@59@01) (Seq_index c@11@01 k@60@01))))
  :pattern ((Seq_index c@11@01 j@59@01) (Seq_index c@11@01 k@60@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@68@12@68@102|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))))))
(declare-const i@61@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 51 | !(0 <= i@61@01) | live]
; [else-branch: 51 | 0 <= i@61@01 | live]
(push) ; 5
; [then-branch: 51 | !(0 <= i@61@01)]
(assert (not (<= 0 i@61@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 51 | 0 <= i@61@01]
(assert (<= 0 i@61@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@61@01) (not (<= 0 i@61@01))))
(assert (and (<= 0 i@61@01) (< i@61@01 len@8@01)))
; [eval] c[i]
(push) ; 4
(assert (not (>= i@61@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@61@01 (Seq_length c@11@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@62@01 ($Ref) Int)
(declare-fun img@63@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@61@01 Int)) (!
  (=>
    (and (<= 0 i@61@01) (< i@61@01 len@8@01))
    (or (<= 0 i@61@01) (not (<= 0 i@61@01))))
  :pattern ((Seq_index c@11@01 i@61@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@61@01 Int) (i2@61@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@61@01) (< i1@61@01 len@8@01))
      (and (<= 0 i2@61@01) (< i2@61@01 len@8@01))
      (= (Seq_index c@11@01 i1@61@01) (Seq_index c@11@01 i2@61@01)))
    (= i1@61@01 i2@61@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@61@01 Int)) (!
  (=>
    (and (<= 0 i@61@01) (< i@61@01 len@8@01))
    (and
      (= (inv@62@01 (Seq_index c@11@01 i@61@01)) i@61@01)
      (img@63@01 (Seq_index c@11@01 i@61@01))))
  :pattern ((Seq_index c@11@01 i@61@01))
  :qid |quant-u-6787|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@63@01 r) (and (<= 0 (inv@62@01 r)) (< (inv@62@01 r) len@8@01)))
    (= (Seq_index c@11@01 (inv@62@01 r)) r))
  :pattern ((inv@62@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@61@01 Int)) (!
  (=>
    (and (<= 0 i@61@01) (< i@61@01 len@8@01))
    (not (= (Seq_index c@11@01 i@61@01) $Ref.null)))
  :pattern ((Seq_index c@11@01 i@61@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index c@11@01 i@61@01) (Seq_index b@9@01 i@56@01))
    (=
      (and (img@63@01 r) (and (<= 0 (inv@62@01 r)) (< (inv@62@01 r) len@8@01)))
      (and (img@58@01 r) (and (<= 0 (inv@57@01 r)) (< (inv@57@01 r) len@8@01)))))
  
  :qid |quant-u-6788|))))
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
    (= (Seq_index c@11@01 i@61@01) (Seq_index a@10@01 i@51@01))
    (=
      (and (img@63@01 r) (and (<= 0 (inv@62@01 r)) (< (inv@62@01 r) len@8@01)))
      (and
        (img@53@01 r)
        (and (<= 1 (inv@52@01 r)) (< (inv@52@01 r) (+ (- len@8@01 1) 1))))))
  
  :qid |quant-u-6789|))))
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
    (= (Seq_index c@11@01 i@61@01) (Seq_index a@10@01 i@15@01))
    (=
      (and (img@63@01 r) (and (<= 0 (inv@62@01 r)) (< (inv@62@01 r) len@8@01)))
      (and (img@17@01 r) (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))))
  
  :qid |quant-u-6790|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))))
  $Snap.unit))
; [eval] (forall __rw_i3: Int :: { a[__rw_i3] } true ==> 0 <= __rw_i3 - 1 && __rw_i3 - 1 < (len - 1 < len ? len - 1 : len) ==> a[__rw_i3].Ref__Integer_value == 0)
(declare-const __rw_i3@64@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] true ==> 0 <= __rw_i3 - 1 && __rw_i3 - 1 < (len - 1 < len ? len - 1 : len) ==> a[__rw_i3].Ref__Integer_value == 0
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 52 | True | live]
; [else-branch: 52 | False | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 52 | True]
; [eval] 0 <= __rw_i3 - 1 && __rw_i3 - 1 < (len - 1 < len ? len - 1 : len) ==> a[__rw_i3].Ref__Integer_value == 0
; [eval] 0 <= __rw_i3 - 1 && __rw_i3 - 1 < (len - 1 < len ? len - 1 : len)
; [eval] 0 <= __rw_i3 - 1
; [eval] __rw_i3 - 1
(push) ; 6
; [then-branch: 53 | !(0 <= __rw_i3@64@01 - 1) | live]
; [else-branch: 53 | 0 <= __rw_i3@64@01 - 1 | live]
(push) ; 7
; [then-branch: 53 | !(0 <= __rw_i3@64@01 - 1)]
(assert (not (<= 0 (- __rw_i3@64@01 1))))
(pop) ; 7
(push) ; 7
; [else-branch: 53 | 0 <= __rw_i3@64@01 - 1]
(assert (<= 0 (- __rw_i3@64@01 1)))
; [eval] __rw_i3 - 1 < (len - 1 < len ? len - 1 : len)
; [eval] __rw_i3 - 1
; [eval] (len - 1 < len ? len - 1 : len)
; [eval] len - 1 < len
; [eval] len - 1
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (< (- len@8@01 1) len@8@01))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (< (- len@8@01 1) len@8@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 54 | len@8@01 - 1 < len@8@01 | live]
; [else-branch: 54 | !(len@8@01 - 1 < len@8@01) | dead]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 54 | len@8@01 - 1 < len@8@01]
(assert (< (- len@8@01 1) len@8@01))
; [eval] len - 1
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (< (- len@8@01 1) len@8@01))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 (- __rw_i3@64@01 1))
  (and (<= 0 (- __rw_i3@64@01 1)) (< (- len@8@01 1) len@8@01))))
(assert (or (<= 0 (- __rw_i3@64@01 1)) (not (<= 0 (- __rw_i3@64@01 1)))))
(push) ; 6
; [then-branch: 55 | 0 <= __rw_i3@64@01 - 1 && __rw_i3@64@01 - 1 < len@8@01 - 1 | live]
; [else-branch: 55 | !(0 <= __rw_i3@64@01 - 1 && __rw_i3@64@01 - 1 < len@8@01 - 1) | live]
(push) ; 7
; [then-branch: 55 | 0 <= __rw_i3@64@01 - 1 && __rw_i3@64@01 - 1 < len@8@01 - 1]
(assert (and (<= 0 (- __rw_i3@64@01 1)) (< (- __rw_i3@64@01 1) (- len@8@01 1))))
; [eval] a[__rw_i3].Ref__Integer_value == 0
; [eval] a[__rw_i3]
(push) ; 8
(assert (not (>= __rw_i3@64@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (< __rw_i3@64@01 (Seq_length a@10@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(declare-const sm@65@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@17@01 r) (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@53@01 r)
      (and (<= 1 (inv@52@01 r)) (< (inv@52@01 r) (+ (- len@8@01 1) 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@58@01 r) (and (<= 0 (inv@57@01 r)) (< (inv@57@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@63@01 r) (and (<= 0 (inv@62@01 r)) (< (inv@62@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r))
  :qid |qp.fvfValDef13|)))
(declare-const pm@66@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@66@01  $FPM) r)
    (+
      (+
        (+
          (ite
            (and
              (img@17@01 r)
              (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))
            (/ (to_real 1) (to_real 2))
            $Perm.No)
          (ite
            (and
              (img@53@01 r)
              (and (<= 1 (inv@52@01 r)) (< (inv@52@01 r) (+ (- len@8@01 1) 1))))
            (/ (to_real 1) (to_real 2))
            $Perm.No))
        (ite
          (and
            (img@58@01 r)
            (and (<= 0 (inv@57@01 r)) (< (inv@57@01 r) len@8@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and (img@63@01 r) (and (<= 0 (inv@62@01 r)) (< (inv@62@01 r) len@8@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@66@01  $FPM) r))
  :qid |qp.resPrmSumDef14|)))
(push) ; 8
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@66@01  $FPM) (Seq_index
    a@10@01
    __rw_i3@64@01)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(push) ; 7
; [else-branch: 55 | !(0 <= __rw_i3@64@01 - 1 && __rw_i3@64@01 - 1 < len@8@01 - 1)]
(assert (not (and (<= 0 (- __rw_i3@64@01 1)) (< (- __rw_i3@64@01 1) (- len@8@01 1)))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@17@01 r) (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@53@01 r)
      (and (<= 1 (inv@52@01 r)) (< (inv@52@01 r) (+ (- len@8@01 1) 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@58@01 r) (and (<= 0 (inv@57@01 r)) (< (inv@57@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@63@01 r) (and (<= 0 (inv@62@01 r)) (< (inv@62@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r))
  :qid |qp.fvfValDef13|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@66@01  $FPM) r)
    (+
      (+
        (+
          (ite
            (and
              (img@17@01 r)
              (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))
            (/ (to_real 1) (to_real 2))
            $Perm.No)
          (ite
            (and
              (img@53@01 r)
              (and (<= 1 (inv@52@01 r)) (< (inv@52@01 r) (+ (- len@8@01 1) 1))))
            (/ (to_real 1) (to_real 2))
            $Perm.No))
        (ite
          (and
            (img@58@01 r)
            (and (<= 0 (inv@57@01 r)) (< (inv@57@01 r) len@8@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and (img@63@01 r) (and (<= 0 (inv@62@01 r)) (< (inv@62@01 r) len@8@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@66@01  $FPM) r))
  :qid |qp.resPrmSumDef14|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 (- __rw_i3@64@01 1)) (< (- __rw_i3@64@01 1) (- len@8@01 1))))
  (and (<= 0 (- __rw_i3@64@01 1)) (< (- __rw_i3@64@01 1) (- len@8@01 1)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@17@01 r) (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@53@01 r)
      (and (<= 1 (inv@52@01 r)) (< (inv@52@01 r) (+ (- len@8@01 1) 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@58@01 r) (and (<= 0 (inv@57@01 r)) (< (inv@57@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@63@01 r) (and (<= 0 (inv@62@01 r)) (< (inv@62@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r))
  :qid |qp.fvfValDef13|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@66@01  $FPM) r)
    (+
      (+
        (+
          (ite
            (and
              (img@17@01 r)
              (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))
            (/ (to_real 1) (to_real 2))
            $Perm.No)
          (ite
            (and
              (img@53@01 r)
              (and (<= 1 (inv@52@01 r)) (< (inv@52@01 r) (+ (- len@8@01 1) 1))))
            (/ (to_real 1) (to_real 2))
            $Perm.No))
        (ite
          (and
            (img@58@01 r)
            (and (<= 0 (inv@57@01 r)) (< (inv@57@01 r) len@8@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and (img@63@01 r) (and (<= 0 (inv@62@01 r)) (< (inv@62@01 r) len@8@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@66@01  $FPM) r))
  :qid |qp.resPrmSumDef14|)))
(assert (and
  (=>
    (<= 0 (- __rw_i3@64@01 1))
    (and (<= 0 (- __rw_i3@64@01 1)) (< (- len@8@01 1) len@8@01)))
  (or (<= 0 (- __rw_i3@64@01 1)) (not (<= 0 (- __rw_i3@64@01 1))))
  (or
    (not (and (<= 0 (- __rw_i3@64@01 1)) (< (- __rw_i3@64@01 1) (- len@8@01 1))))
    (and (<= 0 (- __rw_i3@64@01 1)) (< (- __rw_i3@64@01 1) (- len@8@01 1))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@17@01 r) (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@53@01 r)
      (and (<= 1 (inv@52@01 r)) (< (inv@52@01 r) (+ (- len@8@01 1) 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@58@01 r) (and (<= 0 (inv@57@01 r)) (< (inv@57@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@63@01 r) (and (<= 0 (inv@62@01 r)) (< (inv@62@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r))
  :qid |qp.fvfValDef13|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@66@01  $FPM) r)
    (+
      (+
        (+
          (ite
            (and
              (img@17@01 r)
              (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))
            (/ (to_real 1) (to_real 2))
            $Perm.No)
          (ite
            (and
              (img@53@01 r)
              (and (<= 1 (inv@52@01 r)) (< (inv@52@01 r) (+ (- len@8@01 1) 1))))
            (/ (to_real 1) (to_real 2))
            $Perm.No))
        (ite
          (and
            (img@58@01 r)
            (and (<= 0 (inv@57@01 r)) (< (inv@57@01 r) len@8@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and (img@63@01 r) (and (<= 0 (inv@62@01 r)) (< (inv@62@01 r) len@8@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@66@01  $FPM) r))
  :qid |qp.resPrmSumDef14|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((__rw_i3@64@01 Int)) (!
  (and
    (=>
      (<= 0 (- __rw_i3@64@01 1))
      (and (<= 0 (- __rw_i3@64@01 1)) (< (- len@8@01 1) len@8@01)))
    (or (<= 0 (- __rw_i3@64@01 1)) (not (<= 0 (- __rw_i3@64@01 1))))
    (or
      (not
        (and (<= 0 (- __rw_i3@64@01 1)) (< (- __rw_i3@64@01 1) (- len@8@01 1))))
      (and (<= 0 (- __rw_i3@64@01 1)) (< (- __rw_i3@64@01 1) (- len@8@01 1)))))
  :pattern ((Seq_index a@10@01 __rw_i3@64@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@70@13@70@118-aux|)))
(assert (forall ((__rw_i3@64@01 Int)) (!
  (=>
    (and (<= 0 (- __rw_i3@64@01 1)) (< (- __rw_i3@64@01 1) (- len@8@01 1)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) (Seq_index
        a@10@01
        __rw_i3@64@01))
      0))
  :pattern ((Seq_index a@10@01 __rw_i3@64@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@70@13@70@118|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01))))))))))))))
  $Snap.unit))
; [eval] (forall i: Int :: { b[i] } 0 <= i && i < len ==> b[i].Ref__Integer_value == i)
(declare-const i@67@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len ==> b[i].Ref__Integer_value == i
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 56 | !(0 <= i@67@01) | live]
; [else-branch: 56 | 0 <= i@67@01 | live]
(push) ; 5
; [then-branch: 56 | !(0 <= i@67@01)]
(assert (not (<= 0 i@67@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 56 | 0 <= i@67@01]
(assert (<= 0 i@67@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@67@01) (not (<= 0 i@67@01))))
(push) ; 4
; [then-branch: 57 | 0 <= i@67@01 && i@67@01 < len@8@01 | live]
; [else-branch: 57 | !(0 <= i@67@01 && i@67@01 < len@8@01) | live]
(push) ; 5
; [then-branch: 57 | 0 <= i@67@01 && i@67@01 < len@8@01]
(assert (and (<= 0 i@67@01) (< i@67@01 len@8@01)))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 6
(assert (not (>= i@67@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@67@01 (Seq_length b@9@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@17@01 r) (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))) r))
    :qid |qp.fvfValDef10|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@53@01 r)
        (and (<= 1 (inv@52@01 r)) (< (inv@52@01 r) (+ (- len@8@01 1) 1))))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))) r))
    :qid |qp.fvfValDef11|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@58@01 r) (and (<= 0 (inv@57@01 r)) (< (inv@57@01 r) len@8@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))) r))
    :qid |qp.fvfValDef12|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@63@01 r) (and (<= 0 (inv@62@01 r)) (< (inv@62@01 r) len@8@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r))
    :qid |qp.fvfValDef13|))))
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    (+
      (+
        (ite
          (and
            (img@17@01 (Seq_index b@9@01 i@67@01))
            (and
              (<= 0 (inv@16@01 (Seq_index b@9@01 i@67@01)))
              (< (inv@16@01 (Seq_index b@9@01 i@67@01)) len@8@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No)
        (ite
          (and
            (img@53@01 (Seq_index b@9@01 i@67@01))
            (and
              (<= 1 (inv@52@01 (Seq_index b@9@01 i@67@01)))
              (< (inv@52@01 (Seq_index b@9@01 i@67@01)) (+ (- len@8@01 1) 1))))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and
          (img@58@01 (Seq_index b@9@01 i@67@01))
          (and
            (<= 0 (inv@57@01 (Seq_index b@9@01 i@67@01)))
            (< (inv@57@01 (Seq_index b@9@01 i@67@01)) len@8@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (and
        (img@63@01 (Seq_index b@9@01 i@67@01))
        (and
          (<= 0 (inv@62@01 (Seq_index b@9@01 i@67@01)))
          (< (inv@62@01 (Seq_index b@9@01 i@67@01)) len@8@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 57 | !(0 <= i@67@01 && i@67@01 < len@8@01)]
(assert (not (and (<= 0 i@67@01) (< i@67@01 len@8@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@17@01 r) (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@53@01 r)
      (and (<= 1 (inv@52@01 r)) (< (inv@52@01 r) (+ (- len@8@01 1) 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@58@01 r) (and (<= 0 (inv@57@01 r)) (< (inv@57@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@63@01 r) (and (<= 0 (inv@62@01 r)) (< (inv@62@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r))
  :qid |qp.fvfValDef13|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@67@01) (< i@67@01 len@8@01)))
  (and (<= 0 i@67@01) (< i@67@01 len@8@01))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@17@01 r) (and (<= 0 (inv@16@01 r)) (< (inv@16@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@53@01 r)
      (and (<= 1 (inv@52@01 r)) (< (inv@52@01 r) (+ (- len@8@01 1) 1))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@58@01 r) (and (<= 0 (inv@57@01 r)) (< (inv@57@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@63@01 r) (and (<= 0 (inv@62@01 r)) (< (inv@62@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@12@01)))))))))))))) r))
  :qid |qp.fvfValDef13|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@67@01 Int)) (!
  (and
    (or (<= 0 i@67@01) (not (<= 0 i@67@01)))
    (or
      (not (and (<= 0 i@67@01) (< i@67@01 len@8@01)))
      (and (<= 0 i@67@01) (< i@67@01 len@8@01))))
  :pattern ((Seq_index b@9@01 i@67@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@71@13@71@86-aux|)))
(assert (forall ((i@67@01 Int)) (!
  (=>
    (and (<= 0 i@67@01) (< i@67@01 len@8@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@65@01  $FVF<Ref__Integer_value>) (Seq_index
        b@9@01
        i@67@01))
      i@67@01))
  :pattern ((Seq_index b@9@01 i@67@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@71@13@71@86|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(declare-const $t@68@01 $Snap)
(assert (= $t@68@01 ($Snap.combine ($Snap.first $t@68@01) ($Snap.second $t@68@01))))
(assert (= ($Snap.first $t@68@01) $Snap.unit))
; [eval] |a| == len
; [eval] |a|
(assert (=
  ($Snap.second $t@68@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@68@01))
    ($Snap.second ($Snap.second $t@68@01)))))
(assert (= ($Snap.first ($Snap.second $t@68@01)) $Snap.unit))
; [eval] |b| == len
; [eval] |b|
(assert (=
  ($Snap.second ($Snap.second $t@68@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@68@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@68@01))) $Snap.unit))
; [eval] |c| == len
; [eval] |c|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@68@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@68@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))))
(declare-const i@69@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 58 | !(0 <= i@69@01) | live]
; [else-branch: 58 | 0 <= i@69@01 | live]
(push) ; 6
; [then-branch: 58 | !(0 <= i@69@01)]
(assert (not (<= 0 i@69@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 58 | 0 <= i@69@01]
(assert (<= 0 i@69@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@69@01) (not (<= 0 i@69@01))))
(assert (and (<= 0 i@69@01) (< i@69@01 len@8@01)))
; [eval] a[i]
(push) ; 5
(assert (not (>= i@69@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@69@01 (Seq_length a@10@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@70@01 ($Ref) Int)
(declare-fun img@71@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@69@01 Int)) (!
  (=>
    (and (<= 0 i@69@01) (< i@69@01 len@8@01))
    (or (<= 0 i@69@01) (not (<= 0 i@69@01))))
  :pattern ((Seq_index a@10@01 i@69@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@69@01 Int) (i2@69@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@69@01) (< i1@69@01 len@8@01))
      (and (<= 0 i2@69@01) (< i2@69@01 len@8@01))
      (= (Seq_index a@10@01 i1@69@01) (Seq_index a@10@01 i2@69@01)))
    (= i1@69@01 i2@69@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@69@01 Int)) (!
  (=>
    (and (<= 0 i@69@01) (< i@69@01 len@8@01))
    (and
      (= (inv@70@01 (Seq_index a@10@01 i@69@01)) i@69@01)
      (img@71@01 (Seq_index a@10@01 i@69@01))))
  :pattern ((Seq_index a@10@01 i@69@01))
  :qid |quant-u-6792|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@71@01 r) (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) len@8@01)))
    (= (Seq_index a@10@01 (inv@70@01 r)) r))
  :pattern ((inv@70@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@69@01 Int)) (!
  (=>
    (and (<= 0 i@69@01) (< i@69@01 len@8@01))
    (not (= (Seq_index a@10@01 i@69@01) $Ref.null)))
  :pattern ((Seq_index a@10@01 i@69@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
(declare-const i@72@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 59 | !(0 <= i@72@01) | live]
; [else-branch: 59 | 0 <= i@72@01 | live]
(push) ; 6
; [then-branch: 59 | !(0 <= i@72@01)]
(assert (not (<= 0 i@72@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 59 | 0 <= i@72@01]
(assert (<= 0 i@72@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@72@01) (not (<= 0 i@72@01))))
(assert (and (<= 0 i@72@01) (< i@72@01 len@8@01)))
; [eval] b[i]
(push) ; 5
(assert (not (>= i@72@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@72@01 (Seq_length b@9@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@73@01 ($Ref) Int)
(declare-fun img@74@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@72@01 Int)) (!
  (=>
    (and (<= 0 i@72@01) (< i@72@01 len@8@01))
    (or (<= 0 i@72@01) (not (<= 0 i@72@01))))
  :pattern ((Seq_index b@9@01 i@72@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@72@01 Int) (i2@72@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@72@01) (< i1@72@01 len@8@01))
      (and (<= 0 i2@72@01) (< i2@72@01 len@8@01))
      (= (Seq_index b@9@01 i1@72@01) (Seq_index b@9@01 i2@72@01)))
    (= i1@72@01 i2@72@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@72@01 Int)) (!
  (=>
    (and (<= 0 i@72@01) (< i@72@01 len@8@01))
    (and
      (= (inv@73@01 (Seq_index b@9@01 i@72@01)) i@72@01)
      (img@74@01 (Seq_index b@9@01 i@72@01))))
  :pattern ((Seq_index b@9@01 i@72@01))
  :qid |quant-u-6794|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (and (<= 0 (inv@73@01 r)) (< (inv@73@01 r) len@8@01)))
    (= (Seq_index b@9@01 (inv@73@01 r)) r))
  :pattern ((inv@73@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@72@01 Int)) (!
  (=>
    (and (<= 0 i@72@01) (< i@72@01 len@8@01))
    (not (= (Seq_index b@9@01 i@72@01) $Ref.null)))
  :pattern ((Seq_index b@9@01 i@72@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index b@9@01 i@72@01) (Seq_index a@10@01 i@69@01))
    (=
      (and (img@74@01 r) (and (<= 0 (inv@73@01 r)) (< (inv@73@01 r) len@8@01)))
      (and (img@71@01 r) (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) len@8@01)))))
  
  :qid |quant-u-6795|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))))))
(declare-const i@75@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 60 | !(0 <= i@75@01) | live]
; [else-branch: 60 | 0 <= i@75@01 | live]
(push) ; 6
; [then-branch: 60 | !(0 <= i@75@01)]
(assert (not (<= 0 i@75@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 60 | 0 <= i@75@01]
(assert (<= 0 i@75@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@75@01) (not (<= 0 i@75@01))))
(assert (and (<= 0 i@75@01) (< i@75@01 len@8@01)))
; [eval] c[i]
(push) ; 5
(assert (not (>= i@75@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@75@01 (Seq_length c@11@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@76@01 ($Ref) Int)
(declare-fun img@77@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@75@01 Int)) (!
  (=>
    (and (<= 0 i@75@01) (< i@75@01 len@8@01))
    (or (<= 0 i@75@01) (not (<= 0 i@75@01))))
  :pattern ((Seq_index c@11@01 i@75@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@75@01 Int) (i2@75@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@75@01) (< i1@75@01 len@8@01))
      (and (<= 0 i2@75@01) (< i2@75@01 len@8@01))
      (= (Seq_index c@11@01 i1@75@01) (Seq_index c@11@01 i2@75@01)))
    (= i1@75@01 i2@75@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@75@01 Int)) (!
  (=>
    (and (<= 0 i@75@01) (< i@75@01 len@8@01))
    (and
      (= (inv@76@01 (Seq_index c@11@01 i@75@01)) i@75@01)
      (img@77@01 (Seq_index c@11@01 i@75@01))))
  :pattern ((Seq_index c@11@01 i@75@01))
  :qid |quant-u-6797|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@77@01 r) (and (<= 0 (inv@76@01 r)) (< (inv@76@01 r) len@8@01)))
    (= (Seq_index c@11@01 (inv@76@01 r)) r))
  :pattern ((inv@76@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@75@01 Int)) (!
  (=>
    (and (<= 0 i@75@01) (< i@75@01 len@8@01))
    (not (= (Seq_index c@11@01 i@75@01) $Ref.null)))
  :pattern ((Seq_index c@11@01 i@75@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index c@11@01 i@75@01) (Seq_index b@9@01 i@72@01))
    (=
      (and (img@77@01 r) (and (<= 0 (inv@76@01 r)) (< (inv@76@01 r) len@8@01)))
      (and (img@74@01 r) (and (<= 0 (inv@73@01 r)) (< (inv@73@01 r) len@8@01)))))
  
  :qid |quant-u-6798|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index c@11@01 i@75@01) (Seq_index a@10@01 i@69@01))
    (=
      (and (img@77@01 r) (and (<= 0 (inv@76@01 r)) (< (inv@76@01 r) len@8@01)))
      (and (img@71@01 r) (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) len@8@01)))))
  
  :qid |quant-u-6799|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))))
  $Snap.unit))
; [eval] (forall i: Int :: { a[i] } 0 <= i && i < len ==> a[i].Ref__Integer_value == i + 1)
(declare-const i@78@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= i && i < len ==> a[i].Ref__Integer_value == i + 1
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 61 | !(0 <= i@78@01) | live]
; [else-branch: 61 | 0 <= i@78@01 | live]
(push) ; 6
; [then-branch: 61 | !(0 <= i@78@01)]
(assert (not (<= 0 i@78@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 61 | 0 <= i@78@01]
(assert (<= 0 i@78@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@78@01) (not (<= 0 i@78@01))))
(push) ; 5
; [then-branch: 62 | 0 <= i@78@01 && i@78@01 < len@8@01 | live]
; [else-branch: 62 | !(0 <= i@78@01 && i@78@01 < len@8@01) | live]
(push) ; 6
; [then-branch: 62 | 0 <= i@78@01 && i@78@01 < len@8@01]
(assert (and (<= 0 i@78@01) (< i@78@01 len@8@01)))
; [eval] a[i].Ref__Integer_value == i + 1
; [eval] a[i]
(push) ; 7
(assert (not (>= i@78@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@78@01 (Seq_length a@10@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@79@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@71@01 r) (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@68@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@68@01))))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (and (<= 0 (inv@73@01 r)) (< (inv@73@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@77@01 r) (and (<= 0 (inv@76@01 r)) (< (inv@76@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))) r))
  :qid |qp.fvfValDef17|)))
(declare-const pm@80@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@80@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@71@01 r)
            (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) len@8@01)))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@74@01 r)
            (and (<= 0 (inv@73@01 r)) (< (inv@73@01 r) len@8@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and (img@77@01 r) (and (<= 0 (inv@76@01 r)) (< (inv@76@01 r) len@8@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@80@01  $FPM) r))
  :qid |qp.resPrmSumDef18|)))
(push) ; 7
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@80@01  $FPM) (Seq_index a@10@01 i@78@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] i + 1
(pop) ; 6
(push) ; 6
; [else-branch: 62 | !(0 <= i@78@01 && i@78@01 < len@8@01)]
(assert (not (and (<= 0 i@78@01) (< i@78@01 len@8@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@71@01 r) (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@68@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@68@01))))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (and (<= 0 (inv@73@01 r)) (< (inv@73@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@77@01 r) (and (<= 0 (inv@76@01 r)) (< (inv@76@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@80@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@71@01 r)
            (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) len@8@01)))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@74@01 r)
            (and (<= 0 (inv@73@01 r)) (< (inv@73@01 r) len@8@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and (img@77@01 r) (and (<= 0 (inv@76@01 r)) (< (inv@76@01 r) len@8@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@80@01  $FPM) r))
  :qid |qp.resPrmSumDef18|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@78@01) (< i@78@01 len@8@01)))
  (and (<= 0 i@78@01) (< i@78@01 len@8@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@71@01 r) (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@68@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@68@01))))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (and (<= 0 (inv@73@01 r)) (< (inv@73@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@77@01 r) (and (<= 0 (inv@76@01 r)) (< (inv@76@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@80@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@71@01 r)
            (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) len@8@01)))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@74@01 r)
            (and (<= 0 (inv@73@01 r)) (< (inv@73@01 r) len@8@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and (img@77@01 r) (and (<= 0 (inv@76@01 r)) (< (inv@76@01 r) len@8@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@80@01  $FPM) r))
  :qid |qp.resPrmSumDef18|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@78@01 Int)) (!
  (and
    (or (<= 0 i@78@01) (not (<= 0 i@78@01)))
    (or
      (not (and (<= 0 i@78@01) (< i@78@01 len@8@01)))
      (and (<= 0 i@78@01) (< i@78@01 len@8@01))))
  :pattern ((Seq_index a@10@01 i@78@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@76@12@76@89-aux|)))
(assert (forall ((i@78@01 Int)) (!
  (=>
    (and (<= 0 i@78@01) (< i@78@01 len@8@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) (Seq_index
        a@10@01
        i@78@01))
      (+ i@78@01 1)))
  :pattern ((Seq_index a@10@01 i@78@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@76@12@76@89|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
  $Snap.unit))
; [eval] (forall i: Int :: { b[i] } 0 <= i && i < len ==> b[i].Ref__Integer_value == i)
(declare-const i@81@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len ==> b[i].Ref__Integer_value == i
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 63 | !(0 <= i@81@01) | live]
; [else-branch: 63 | 0 <= i@81@01 | live]
(push) ; 6
; [then-branch: 63 | !(0 <= i@81@01)]
(assert (not (<= 0 i@81@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 63 | 0 <= i@81@01]
(assert (<= 0 i@81@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@81@01) (not (<= 0 i@81@01))))
(push) ; 5
; [then-branch: 64 | 0 <= i@81@01 && i@81@01 < len@8@01 | live]
; [else-branch: 64 | !(0 <= i@81@01 && i@81@01 < len@8@01) | live]
(push) ; 6
; [then-branch: 64 | 0 <= i@81@01 && i@81@01 < len@8@01]
(assert (and (<= 0 i@81@01) (< i@81@01 len@8@01)))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 7
(assert (not (>= i@81@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@81@01 (Seq_length b@9@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@71@01 r) (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) len@8@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@68@01))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@68@01))))) r))
    :qid |qp.fvfValDef15|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@74@01 r) (and (<= 0 (inv@73@01 r)) (< (inv@73@01 r) len@8@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))) r))
    :qid |qp.fvfValDef16|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@77@01 r) (and (<= 0 (inv@76@01 r)) (< (inv@76@01 r) len@8@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))) r))
    :qid |qp.fvfValDef17|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@71@01 (Seq_index b@9@01 i@81@01))
          (and
            (<= 0 (inv@70@01 (Seq_index b@9@01 i@81@01)))
            (< (inv@70@01 (Seq_index b@9@01 i@81@01)) len@8@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@74@01 (Seq_index b@9@01 i@81@01))
          (and
            (<= 0 (inv@73@01 (Seq_index b@9@01 i@81@01)))
            (< (inv@73@01 (Seq_index b@9@01 i@81@01)) len@8@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (and
        (img@77@01 (Seq_index b@9@01 i@81@01))
        (and
          (<= 0 (inv@76@01 (Seq_index b@9@01 i@81@01)))
          (< (inv@76@01 (Seq_index b@9@01 i@81@01)) len@8@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 64 | !(0 <= i@81@01 && i@81@01 < len@8@01)]
(assert (not (and (<= 0 i@81@01) (< i@81@01 len@8@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@71@01 r) (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@68@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@68@01))))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (and (<= 0 (inv@73@01 r)) (< (inv@73@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@77@01 r) (and (<= 0 (inv@76@01 r)) (< (inv@76@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))) r))
  :qid |qp.fvfValDef17|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@81@01) (< i@81@01 len@8@01)))
  (and (<= 0 i@81@01) (< i@81@01 len@8@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@71@01 r) (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@68@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@68@01))))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (and (<= 0 (inv@73@01 r)) (< (inv@73@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@77@01 r) (and (<= 0 (inv@76@01 r)) (< (inv@76@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))) r))
  :qid |qp.fvfValDef17|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@81@01 Int)) (!
  (and
    (or (<= 0 i@81@01) (not (<= 0 i@81@01)))
    (or
      (not (and (<= 0 i@81@01) (< i@81@01 len@8@01)))
      (and (<= 0 i@81@01) (< i@81@01 len@8@01))))
  :pattern ((Seq_index b@9@01 i@81@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@77@12@77@85-aux|)))
(assert (forall ((i@81@01 Int)) (!
  (=>
    (and (<= 0 i@81@01) (< i@81@01 len@8@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) (Seq_index
        b@9@01
        i@81@01))
      i@81@01))
  :pattern ((Seq_index b@9@01 i@81@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@77@12@77@85|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))))
  $Snap.unit))
; [eval] (forall i: Int :: { c[i] } 0 <= i && i < (len - 1 < len ? len - 1 : len) ==> c[i].Ref__Integer_value == 2)
(declare-const i@82@01 Int)
(push) ; 4
; [eval] 0 <= i && i < (len - 1 < len ? len - 1 : len) ==> c[i].Ref__Integer_value == 2
; [eval] 0 <= i && i < (len - 1 < len ? len - 1 : len)
; [eval] 0 <= i
(push) ; 5
; [then-branch: 65 | !(0 <= i@82@01) | live]
; [else-branch: 65 | 0 <= i@82@01 | live]
(push) ; 6
; [then-branch: 65 | !(0 <= i@82@01)]
(assert (not (<= 0 i@82@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 65 | 0 <= i@82@01]
(assert (<= 0 i@82@01))
; [eval] i < (len - 1 < len ? len - 1 : len)
; [eval] (len - 1 < len ? len - 1 : len)
; [eval] len - 1 < len
; [eval] len - 1
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not (< (- len@8@01 1) len@8@01))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (< (- len@8@01 1) len@8@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 66 | len@8@01 - 1 < len@8@01 | live]
; [else-branch: 66 | !(len@8@01 - 1 < len@8@01) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 66 | len@8@01 - 1 < len@8@01]
(assert (< (- len@8@01 1) len@8@01))
; [eval] len - 1
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (< (- len@8@01 1) len@8@01))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=> (<= 0 i@82@01) (and (<= 0 i@82@01) (< (- len@8@01 1) len@8@01))))
(assert (or (<= 0 i@82@01) (not (<= 0 i@82@01))))
(push) ; 5
; [then-branch: 67 | 0 <= i@82@01 && i@82@01 < len@8@01 - 1 | live]
; [else-branch: 67 | !(0 <= i@82@01 && i@82@01 < len@8@01 - 1) | live]
(push) ; 6
; [then-branch: 67 | 0 <= i@82@01 && i@82@01 < len@8@01 - 1]
(assert (and (<= 0 i@82@01) (< i@82@01 (- len@8@01 1))))
; [eval] c[i].Ref__Integer_value == 2
; [eval] c[i]
(push) ; 7
(assert (not (>= i@82@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@82@01 (Seq_length c@11@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@71@01 r) (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) len@8@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@68@01))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@68@01))))) r))
    :qid |qp.fvfValDef15|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@74@01 r) (and (<= 0 (inv@73@01 r)) (< (inv@73@01 r) len@8@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))) r))
    :qid |qp.fvfValDef16|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@77@01 r) (and (<= 0 (inv@76@01 r)) (< (inv@76@01 r) len@8@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))) r))
    :qid |qp.fvfValDef17|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@71@01 (Seq_index c@11@01 i@82@01))
          (and
            (<= 0 (inv@70@01 (Seq_index c@11@01 i@82@01)))
            (< (inv@70@01 (Seq_index c@11@01 i@82@01)) len@8@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@74@01 (Seq_index c@11@01 i@82@01))
          (and
            (<= 0 (inv@73@01 (Seq_index c@11@01 i@82@01)))
            (< (inv@73@01 (Seq_index c@11@01 i@82@01)) len@8@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (and
        (img@77@01 (Seq_index c@11@01 i@82@01))
        (and
          (<= 0 (inv@76@01 (Seq_index c@11@01 i@82@01)))
          (< (inv@76@01 (Seq_index c@11@01 i@82@01)) len@8@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 67 | !(0 <= i@82@01 && i@82@01 < len@8@01 - 1)]
(assert (not (and (<= 0 i@82@01) (< i@82@01 (- len@8@01 1)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@71@01 r) (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@68@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@68@01))))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (and (<= 0 (inv@73@01 r)) (< (inv@73@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@77@01 r) (and (<= 0 (inv@76@01 r)) (< (inv@76@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))) r))
  :qid |qp.fvfValDef17|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@82@01) (< i@82@01 (- len@8@01 1))))
  (and (<= 0 i@82@01) (< i@82@01 (- len@8@01 1)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@71@01 r) (and (<= 0 (inv@70@01 r)) (< (inv@70@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@68@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@68@01))))) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (and (<= 0 (inv@73@01 r)) (< (inv@73@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01)))))) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@77@01 r) (and (<= 0 (inv@76@01 r)) (< (inv@76@01 r) len@8@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))) r))
  :qid |qp.fvfValDef17|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@82@01 Int)) (!
  (and
    (=> (<= 0 i@82@01) (and (<= 0 i@82@01) (< (- len@8@01 1) len@8@01)))
    (or (<= 0 i@82@01) (not (<= 0 i@82@01)))
    (or
      (not (and (<= 0 i@82@01) (< i@82@01 (- len@8@01 1))))
      (and (<= 0 i@82@01) (< i@82@01 (- len@8@01 1)))))
  :pattern ((Seq_index c@11@01 i@82@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@78@12@78@113-aux|)))
(assert (forall ((i@82@01 Int)) (!
  (=>
    (and (<= 0 i@82@01) (< i@82@01 (- len@8@01 1)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@79@01  $FVF<Ref__Integer_value>) (Seq_index
        c@11@01
        i@82@01))
      2))
  :pattern ((Seq_index c@11@01 i@82@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@78@12@78@113|)))
(pop) ; 3
(push) ; 3
; [exec]
; inhale false
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- Ref__recv_body_202 ----------
(declare-const diz@83@01 $Ref)
(declare-const current_thread_id@84@01 Int)
(declare-const len@85@01 Int)
(declare-const a@86@01 Seq<$Ref>)
(declare-const i@87@01 Int)
(declare-const diz@88@01 $Ref)
(declare-const current_thread_id@89@01 Int)
(declare-const len@90@01 Int)
(declare-const a@91@01 Seq<$Ref>)
(declare-const i@92@01 Int)
(push) ; 1
(declare-const $t@93@01 $Snap)
(assert (= $t@93@01 ($Snap.combine ($Snap.first $t@93@01) ($Snap.second $t@93@01))))
(assert (= ($Snap.first $t@93@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@88@01 $Ref.null)))
(assert (=
  ($Snap.second $t@93@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@93@01))
    ($Snap.second ($Snap.second $t@93@01)))))
(assert (= ($Snap.first ($Snap.second $t@93@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@89@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@93@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@93@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@93@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@93@01))) $Snap.unit))
; [eval] 0 <= i
(assert (<= 0 i@92@01))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@93@01))) $Snap.unit))
; [eval] i < |a|
; [eval] |a|
(assert (< i@92@01 (Seq_length a@91@01)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@94@01 $Snap)
(assert (= $t@94@01 ($Snap.combine ($Snap.first $t@94@01) ($Snap.second $t@94@01))))
(assert (= ($Snap.first $t@94@01) $Snap.unit))
; [eval] i == i - 1 + 1
; [eval] i - 1 + 1
; [eval] i - 1
(assert (= i@92@01 (+ (- i@92@01 1) 1)))
(assert (=
  ($Snap.second $t@94@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@94@01))
    ($Snap.second ($Snap.second $t@94@01)))))
(assert (= ($Snap.first ($Snap.second $t@94@01)) $Snap.unit))
; [eval] |a| == len
; [eval] |a|
(assert (= (Seq_length a@91@01) len@90@01))
; [eval] a[i]
(push) ; 3
(assert (not (>= i@92@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index a@91@01 i@92@01) $Ref.null)))
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- Ref__send_body_212 ----------
(declare-const diz@95@01 $Ref)
(declare-const current_thread_id@96@01 Int)
(declare-const len@97@01 Int)
(declare-const a@98@01 Seq<$Ref>)
(declare-const i@99@01 Int)
(declare-const diz@100@01 $Ref)
(declare-const current_thread_id@101@01 Int)
(declare-const len@102@01 Int)
(declare-const a@103@01 Seq<$Ref>)
(declare-const i@104@01 Int)
(push) ; 1
(declare-const $t@105@01 $Snap)
(assert (= $t@105@01 ($Snap.combine ($Snap.first $t@105@01) ($Snap.second $t@105@01))))
(assert (= ($Snap.first $t@105@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@100@01 $Ref.null)))
(assert (=
  ($Snap.second $t@105@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@105@01))
    ($Snap.second ($Snap.second $t@105@01)))))
(assert (= ($Snap.first ($Snap.second $t@105@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@101@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@105@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@105@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@105@01))) $Snap.unit))
; [eval] |a| == len
; [eval] |a|
(assert (= (Seq_length a@103@01) len@102@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@105@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@105@01))))
  $Snap.unit))
; [eval] -1 <= i
; [eval] -1
(assert (<= (- 0 1) i@104@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@105@01)))))
  $Snap.unit))
; [eval] i < |a| - 1
; [eval] |a| - 1
; [eval] |a|
(assert (< i@104@01 (- (Seq_length a@103@01) 1)))
; [eval] a[i + 1]
; [eval] i + 1
(push) ; 2
(assert (not (>= (+ i@104@01 1) 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(assert (not (< (+ i@104@01 1) (Seq_length a@103@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index a@103@01 (+ i@104@01 1)) $Ref.null)))
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
; ---------- Ref__loop_body_72 ----------
(declare-const diz@106@01 $Ref)
(declare-const current_thread_id@107@01 Int)
(declare-const b@108@01 Seq<$Ref>)
(declare-const len@109@01 Int)
(declare-const a@110@01 Seq<$Ref>)
(declare-const i@111@01 Int)
(declare-const c@112@01 Seq<$Ref>)
(declare-const diz@113@01 $Ref)
(declare-const current_thread_id@114@01 Int)
(declare-const b@115@01 Seq<$Ref>)
(declare-const len@116@01 Int)
(declare-const a@117@01 Seq<$Ref>)
(declare-const i@118@01 Int)
(declare-const c@119@01 Seq<$Ref>)
(push) ; 1
(declare-const $t@120@01 $Snap)
(assert (= $t@120@01 ($Snap.combine ($Snap.first $t@120@01) ($Snap.second $t@120@01))))
(assert (= ($Snap.first $t@120@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@113@01 $Ref.null)))
(assert (=
  ($Snap.second $t@120@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@120@01))
    ($Snap.second ($Snap.second $t@120@01)))))
(assert (= ($Snap.first ($Snap.second $t@120@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@114@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@120@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@120@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@120@01))) $Snap.unit))
; [eval] |a| == len
; [eval] |a|
(assert (= (Seq_length a@117@01) len@116@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@120@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@120@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@120@01))))
  $Snap.unit))
; [eval] |b| == len
; [eval] |b|
(assert (= (Seq_length b@115@01) len@116@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))
  $Snap.unit))
; [eval] |c| == len
; [eval] |c|
(assert (= (Seq_length c@119@01) len@116@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))
  $Snap.unit))
; [eval] 0 <= i
(assert (<= 0 i@118@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))
  $Snap.unit))
; [eval] i < len
(assert (< i@118@01 len@116@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))))
; [eval] a[i]
(push) ; 2
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(assert (not (< i@118@01 (Seq_length a@117@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index a@117@01 i@118@01) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))))))
; [eval] i == 0
(push) ; 2
(set-option :timeout 10)
(assert (not (not (= i@118@01 0))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= i@118@01 0)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 68 | i@118@01 == 0 | live]
; [else-branch: 68 | i@118@01 != 0 | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 68 | i@118@01 == 0]
(assert (= i@118@01 0))
; [eval] a[i]
(push) ; 3
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@118@01 (Seq_length a@117@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))))))
; [eval] i < len - 1
; [eval] len - 1
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< i@118@01 (- len@116@01 1)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< i@118@01 (- len@116@01 1))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 69 | i@118@01 < len@116@01 - 1 | live]
; [else-branch: 69 | !(i@118@01 < len@116@01 - 1) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 69 | i@118@01 < len@116@01 - 1]
(assert (< i@118@01 (- len@116@01 1)))
; [eval] a[i + 1]
; [eval] i + 1
(push) ; 4
(assert (not (>= (+ i@118@01 1) 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< (+ i@118@01 1) (Seq_length a@117@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index a@117@01 i@118@01) (Seq_index a@117@01 (+ i@118@01 1)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index a@117@01 (+ i@118@01 1)) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))))))))
; [eval] b[i]
(set-option :timeout 0)
(push) ; 4
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@118@01 (Seq_length b@115@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index a@117@01 (+ i@118@01 1)) (Seq_index b@115@01 i@118@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index a@117@01 i@118@01) (Seq_index b@115@01 i@118@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index b@115@01 i@118@01) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))))))))
; [eval] c[i]
(set-option :timeout 0)
(push) ; 4
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@118@01 (Seq_length c@119@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index b@115@01 i@118@01) (Seq_index c@119@01 i@118@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index a@117@01 (+ i@118@01 1)) (Seq_index c@119@01 i@118@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index a@117@01 i@118@01) (Seq_index c@119@01 i@118@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index c@119@01 i@118@01) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))))))
  $Snap.unit))
; [eval] i < len - 1 ==> a[i + 1].Ref__Integer_value == 0
; [eval] i < len - 1
; [eval] len - 1
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (< i@118@01 (- len@116@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 70 | i@118@01 < len@116@01 - 1 | live]
; [else-branch: 70 | !(i@118@01 < len@116@01 - 1) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 70 | i@118@01 < len@116@01 - 1]
; [eval] a[i + 1].Ref__Integer_value == 0
; [eval] a[i + 1]
; [eval] i + 1
(push) ; 6
(assert (not (>= (+ i@118@01 1) 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< (+ i@118@01 1) (Seq_length a@117@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (< i@118@01 (- len@116@01 1))
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))))
    0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))))))
  $Snap.unit))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 4
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@118@01 (Seq_length b@115@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))))))
  i@118@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(declare-const $t@121@01 $Snap)
(assert (= $t@121@01 ($Snap.combine ($Snap.first $t@121@01) ($Snap.second $t@121@01))))
(assert (= ($Snap.first $t@121@01) $Snap.unit))
; [eval] |a| == len
; [eval] |a|
(assert (=
  ($Snap.second $t@121@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@121@01))
    ($Snap.second ($Snap.second $t@121@01)))))
(assert (= ($Snap.first ($Snap.second $t@121@01)) $Snap.unit))
; [eval] |b| == len
; [eval] |b|
(assert (=
  ($Snap.second ($Snap.second $t@121@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@121@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@121@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@121@01))) $Snap.unit))
; [eval] |c| == len
; [eval] |c|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@121@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@121@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@121@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@121@01))))
  $Snap.unit))
; [eval] 0 <= i
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@121@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@121@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@121@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@121@01)))))
  $Snap.unit))
; [eval] i < len
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@121@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@121@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@121@01)))))))))
; [eval] a[i]
(push) ; 5
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@118@01 (Seq_length a@117@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@121@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@121@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@121@01))))))))))
; [eval] b[i]
(push) ; 5
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@118@01 (Seq_length b@115@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index a@117@01 i@118@01) (Seq_index b@115@01 i@118@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@121@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@121@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@121@01)))))))))))
; [eval] c[i]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@118@01 (Seq_length c@119@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index b@115@01 i@118@01) (Seq_index c@119@01 i@118@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index a@117@01 i@118@01) (Seq_index c@119@01 i@118@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@121@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@121@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@121@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@121@01)))))))))
  $Snap.unit))
; [eval] a[i].Ref__Integer_value == i + 1
; [eval] a[i]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@118@01 (Seq_length a@117@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] i + 1
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@121@01)))))))
  (+ i@118@01 1)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@121@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@121@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@121@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@121@01))))))))))
  $Snap.unit))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 5
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@118@01 (Seq_length b@115@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@121@01))))))))
  i@118@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@121@01))))))))))
  $Snap.unit))
; [eval] i < len - 1 ==> c[i].Ref__Integer_value == 2
; [eval] i < len - 1
; [eval] len - 1
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not (< i@118@01 (- len@116@01 1)))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 71 | i@118@01 < len@116@01 - 1 | live]
; [else-branch: 71 | !(i@118@01 < len@116@01 - 1) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 71 | i@118@01 < len@116@01 - 1]
; [eval] c[i].Ref__Integer_value == 2
; [eval] c[i]
(push) ; 7
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@118@01 (Seq_length c@119@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (< i@118@01 (- len@116@01 1))
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@121@01)))))))))
    2)))
(pop) ; 4
(push) ; 4
; [exec]
; var __flatten_5: Ref
(declare-const __flatten_5@122@01 $Ref)
; [exec]
; var __flatten_6: Int
(declare-const __flatten_6@123@01 Int)
; [exec]
; var __flatten_7: Ref
(declare-const __flatten_7@124@01 $Ref)
; [exec]
; var __flatten_8: Ref
(declare-const __flatten_8@125@01 $Ref)
; [exec]
; var __flatten_9: Int
(declare-const __flatten_9@126@01 Int)
; [exec]
; var __flatten_10: Ref
(declare-const __flatten_10@127@01 $Ref)
; [eval] i > 0
(push) ; 5
(set-option :timeout 10)
(assert (not (not (> i@118@01 0))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 72 | i@118@01 > 0 | dead]
; [else-branch: 72 | !(i@118@01 > 0) | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 72 | !(i@118@01 > 0)]
(assert (not (> i@118@01 0)))
(pop) ; 5
; [eval] !(i > 0)
; [eval] i > 0
(push) ; 5
(set-option :timeout 10)
(assert (not (> i@118@01 0)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (> i@118@01 0))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 73 | !(i@118@01 > 0) | live]
; [else-branch: 73 | i@118@01 > 0 | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 73 | !(i@118@01 > 0)]
(assert (not (> i@118@01 0)))
; [exec]
; __flatten_5 := a[i]
; [eval] a[i]
(push) ; 6
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@118@01 (Seq_length a@117@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_5@128@01 $Ref)
(assert (= __flatten_5@128@01 (Seq_index a@117@01 i@118@01)))
; [exec]
; __flatten_7 := b[i]
; [eval] b[i]
(push) ; 6
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@118@01 (Seq_length b@115@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_7@129@01 $Ref)
(assert (= __flatten_7@129@01 (Seq_index b@115@01 i@118@01)))
; [exec]
; __flatten_6 := __flatten_7.Ref__Integer_value + 1
; [eval] __flatten_7.Ref__Integer_value + 1
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index c@119@01 i@118@01) __flatten_7@129@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index b@115@01 i@118@01) __flatten_7@129@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_6@130@01 Int)
(assert (=
  __flatten_6@130@01
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))))))
    1)))
; [exec]
; __flatten_5.Ref__Integer_value := __flatten_6
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index c@119@01 i@118@01) __flatten_5@128@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index b@115@01 i@118@01) __flatten_5@128@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index a@117@01 (+ i@118@01 1)) __flatten_5@128@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index a@117@01 i@118@01) __flatten_5@128@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index c@119@01 i@118@01) __flatten_5@128@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index b@115@01 i@118@01) __flatten_5@128@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index a@117@01 (+ i@118@01 1)) __flatten_5@128@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (not (= __flatten_5@128@01 $Ref.null)))
; [eval] i < len - 1
; [eval] len - 1
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (< i@118@01 (- len@116@01 1)))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 74 | i@118@01 < len@116@01 - 1 | live]
; [else-branch: 74 | !(i@118@01 < len@116@01 - 1) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 74 | i@118@01 < len@116@01 - 1]
; [exec]
; __flatten_8 := c[i]
; [eval] c[i]
(push) ; 7
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@118@01 (Seq_length c@119@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_8@131@01 $Ref)
(assert (= __flatten_8@131@01 (Seq_index c@119@01 i@118@01)))
; [exec]
; __flatten_10 := a[i + 1]
; [eval] a[i + 1]
; [eval] i + 1
(push) ; 7
(assert (not (>= (+ i@118@01 1) 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< (+ i@118@01 1) (Seq_length a@117@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_10@132@01 $Ref)
(assert (= __flatten_10@132@01 (Seq_index a@117@01 (+ i@118@01 1))))
; [exec]
; __flatten_9 := __flatten_10.Ref__Integer_value + 2
; [eval] __flatten_10.Ref__Integer_value + 2
(push) ; 7
(set-option :timeout 10)
(assert (not (= __flatten_5@128@01 __flatten_10@132@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index c@119@01 i@118@01) __flatten_10@132@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index b@115@01 i@118@01) __flatten_10@132@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index a@117@01 (+ i@118@01 1)) __flatten_10@132@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_9@133@01 Int)
(assert (=
  __flatten_9@133@01
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))))
    2)))
; [exec]
; __flatten_8.Ref__Integer_value := __flatten_9
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= __flatten_5@128@01 __flatten_8@131@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index c@119@01 i@118@01) __flatten_8@131@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= __flatten_5@128@01 __flatten_8@131@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index b@115@01 i@118@01) __flatten_8@131@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index a@117@01 (+ i@118@01 1)) __flatten_8@131@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not (= __flatten_8@131@01 $Ref.null)))
; [exec]
; Ref__send_body_212(diz, current_thread_id, len, a, i)
; [eval] diz != null
; [eval] current_thread_id >= 0
; [eval] |a| == len
; [eval] |a|
; [eval] -1 <= i
; [eval] -1
(set-option :timeout 0)
(push) ; 7
(assert (not (<= (- 0 1) i@118@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= (- 0 1) i@118@01))
; [eval] i < |a| - 1
; [eval] |a| - 1
; [eval] |a|
(push) ; 7
(assert (not (< i@118@01 (- (Seq_length a@117@01) 1))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (< i@118@01 (- (Seq_length a@117@01) 1)))
; [eval] a[i + 1]
; [eval] i + 1
(push) ; 7
(assert (not (>= (+ i@118@01 1) 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< (+ i@118@01 1) (Seq_length a@117@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] |a| == len
; [eval] |a|
; [eval] |b| == len
; [eval] |b|
; [eval] |c| == len
; [eval] |c|
; [eval] 0 <= i
; [eval] i < len
; [eval] a[i]
(set-option :timeout 0)
(push) ; 7
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@118@01 (Seq_length a@117@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(set-option :timeout 10)
(assert (not (= __flatten_8@131@01 (Seq_index a@117@01 i@118@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] b[i]
(set-option :timeout 0)
(push) ; 7
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@118@01 (Seq_length b@115@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] c[i]
(push) ; 7
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@118@01 (Seq_length c@119@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] a[i].Ref__Integer_value == i + 1
; [eval] a[i]
(push) ; 7
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@118@01 (Seq_length a@117@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(set-option :timeout 10)
(assert (not (= __flatten_8@131@01 (Seq_index a@117@01 i@118@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] i + 1
(set-option :timeout 0)
(push) ; 7
(assert (not (= __flatten_6@130@01 (+ i@118@01 1))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (= __flatten_6@130@01 (+ i@118@01 1)))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 7
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@118@01 (Seq_length b@115@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] i < len - 1 ==> c[i].Ref__Integer_value == 2
; [eval] i < len - 1
; [eval] len - 1
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not (< i@118@01 (- len@116@01 1)))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 75 | i@118@01 < len@116@01 - 1 | live]
; [else-branch: 75 | !(i@118@01 < len@116@01 - 1) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 75 | i@118@01 < len@116@01 - 1]
; [eval] c[i].Ref__Integer_value == 2
; [eval] c[i]
(push) ; 9
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (< i@118@01 (Seq_length c@119@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(pop) ; 7
; Joined path conditions
(push) ; 7
(assert (not (=> (< i@118@01 (- len@116@01 1)) (= __flatten_9@133@01 2))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (=> (< i@118@01 (- len@116@01 1)) (= __flatten_9@133@01 2)))
(pop) ; 6
; [eval] !(i < len - 1)
; [eval] i < len - 1
; [eval] len - 1
; [then-branch: 76 | !(i@118@01 < len@116@01 - 1) | dead]
; [else-branch: 76 | i@118@01 < len@116@01 - 1 | live]
(push) ; 6
; [else-branch: 76 | i@118@01 < len@116@01 - 1]
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 69 | !(i@118@01 < len@116@01 - 1)]
(assert (not (< i@118@01 (- len@116@01 1))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))))))))
; [eval] b[i]
(push) ; 4
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@118@01 (Seq_length b@115@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index a@117@01 i@118@01) (Seq_index b@115@01 i@118@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index b@115@01 i@118@01) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))))))))
; [eval] c[i]
(set-option :timeout 0)
(push) ; 4
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@118@01 (Seq_length c@119@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index b@115@01 i@118@01) (Seq_index c@119@01 i@118@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index a@117@01 i@118@01) (Seq_index c@119@01 i@118@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index c@119@01 i@118@01) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))))))
  $Snap.unit))
; [eval] i < len - 1 ==> a[i + 1].Ref__Integer_value == 0
; [eval] i < len - 1
; [eval] len - 1
(set-option :timeout 0)
(push) ; 4
; [then-branch: 77 | i@118@01 < len@116@01 - 1 | dead]
; [else-branch: 77 | !(i@118@01 < len@116@01 - 1) | live]
(push) ; 5
; [else-branch: 77 | !(i@118@01 < len@116@01 - 1)]
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))))))
  $Snap.unit))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 4
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@118@01 (Seq_length b@115@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))))))
  i@118@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(declare-const $t@134@01 $Snap)
(assert (= $t@134@01 ($Snap.combine ($Snap.first $t@134@01) ($Snap.second $t@134@01))))
(assert (= ($Snap.first $t@134@01) $Snap.unit))
; [eval] |a| == len
; [eval] |a|
(assert (=
  ($Snap.second $t@134@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@134@01))
    ($Snap.second ($Snap.second $t@134@01)))))
(assert (= ($Snap.first ($Snap.second $t@134@01)) $Snap.unit))
; [eval] |b| == len
; [eval] |b|
(assert (=
  ($Snap.second ($Snap.second $t@134@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@134@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@134@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@134@01))) $Snap.unit))
; [eval] |c| == len
; [eval] |c|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@134@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@134@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@134@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@134@01))))
  $Snap.unit))
; [eval] 0 <= i
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@134@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@134@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@134@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@134@01)))))
  $Snap.unit))
; [eval] i < len
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@134@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@134@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@134@01)))))))))
; [eval] a[i]
(push) ; 5
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@118@01 (Seq_length a@117@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@134@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@134@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@134@01))))))))))
; [eval] b[i]
(push) ; 5
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@118@01 (Seq_length b@115@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index a@117@01 i@118@01) (Seq_index b@115@01 i@118@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@134@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@134@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@134@01)))))))))))
; [eval] c[i]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@118@01 (Seq_length c@119@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index b@115@01 i@118@01) (Seq_index c@119@01 i@118@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index a@117@01 i@118@01) (Seq_index c@119@01 i@118@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@134@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@134@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@134@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@134@01)))))))))
  $Snap.unit))
; [eval] a[i].Ref__Integer_value == i + 1
; [eval] a[i]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@118@01 (Seq_length a@117@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] i + 1
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@134@01)))))))
  (+ i@118@01 1)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@134@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@134@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@134@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@134@01))))))))))
  $Snap.unit))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 5
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@118@01 (Seq_length b@115@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@134@01))))))))
  i@118@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@134@01))))))))))
  $Snap.unit))
; [eval] i < len - 1 ==> c[i].Ref__Integer_value == 2
; [eval] i < len - 1
; [eval] len - 1
(push) ; 5
; [then-branch: 78 | i@118@01 < len@116@01 - 1 | dead]
; [else-branch: 78 | !(i@118@01 < len@116@01 - 1) | live]
(push) ; 6
; [else-branch: 78 | !(i@118@01 < len@116@01 - 1)]
(pop) ; 6
(pop) ; 5
; Joined path conditions
(pop) ; 4
(push) ; 4
; [exec]
; var __flatten_5: Ref
(declare-const __flatten_5@135@01 $Ref)
; [exec]
; var __flatten_6: Int
(declare-const __flatten_6@136@01 Int)
; [exec]
; var __flatten_7: Ref
(declare-const __flatten_7@137@01 $Ref)
; [exec]
; var __flatten_8: Ref
(declare-const __flatten_8@138@01 $Ref)
; [exec]
; var __flatten_9: Int
(declare-const __flatten_9@139@01 Int)
; [exec]
; var __flatten_10: Ref
(declare-const __flatten_10@140@01 $Ref)
; [eval] i > 0
(push) ; 5
(set-option :timeout 10)
(assert (not (not (> i@118@01 0))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 79 | i@118@01 > 0 | dead]
; [else-branch: 79 | !(i@118@01 > 0) | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 79 | !(i@118@01 > 0)]
(assert (not (> i@118@01 0)))
(pop) ; 5
; [eval] !(i > 0)
; [eval] i > 0
(push) ; 5
(set-option :timeout 10)
(assert (not (> i@118@01 0)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (> i@118@01 0))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 80 | !(i@118@01 > 0) | live]
; [else-branch: 80 | i@118@01 > 0 | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 80 | !(i@118@01 > 0)]
(assert (not (> i@118@01 0)))
; [exec]
; __flatten_5 := a[i]
; [eval] a[i]
(push) ; 6
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@118@01 (Seq_length a@117@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_5@141@01 $Ref)
(assert (= __flatten_5@141@01 (Seq_index a@117@01 i@118@01)))
; [exec]
; __flatten_7 := b[i]
; [eval] b[i]
(push) ; 6
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@118@01 (Seq_length b@115@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_7@142@01 $Ref)
(assert (= __flatten_7@142@01 (Seq_index b@115@01 i@118@01)))
; [exec]
; __flatten_6 := __flatten_7.Ref__Integer_value + 1
; [eval] __flatten_7.Ref__Integer_value + 1
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index c@119@01 i@118@01) __flatten_7@142@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index b@115@01 i@118@01) __flatten_7@142@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_6@143@01 Int)
(assert (=
  __flatten_6@143@01
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))))))
    1)))
; [exec]
; __flatten_5.Ref__Integer_value := __flatten_6
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index c@119@01 i@118@01) __flatten_5@141@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index b@115@01 i@118@01) __flatten_5@141@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index a@117@01 i@118@01) __flatten_5@141@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index c@119@01 i@118@01) __flatten_5@141@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index b@115@01 i@118@01) __flatten_5@141@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (not (= __flatten_5@141@01 $Ref.null)))
; [eval] i < len - 1
; [eval] len - 1
; [then-branch: 81 | i@118@01 < len@116@01 - 1 | dead]
; [else-branch: 81 | !(i@118@01 < len@116@01 - 1) | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 81 | !(i@118@01 < len@116@01 - 1)]
(pop) ; 6
; [eval] !(i < len - 1)
; [eval] i < len - 1
; [eval] len - 1
(push) ; 6
(set-option :timeout 10)
(assert (not (< i@118@01 (- len@116@01 1))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 82 | !(i@118@01 < len@116@01 - 1) | live]
; [else-branch: 82 | i@118@01 < len@116@01 - 1 | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 82 | !(i@118@01 < len@116@01 - 1)]
; [eval] |a| == len
; [eval] |a|
; [eval] |b| == len
; [eval] |b|
; [eval] |c| == len
; [eval] |c|
; [eval] 0 <= i
; [eval] i < len
; [eval] a[i]
(push) ; 7
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@118@01 (Seq_length a@117@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] b[i]
(push) ; 7
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@118@01 (Seq_length b@115@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] c[i]
(push) ; 7
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@118@01 (Seq_length c@119@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] a[i].Ref__Integer_value == i + 1
; [eval] a[i]
(push) ; 7
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@118@01 (Seq_length a@117@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] i + 1
(push) ; 7
(assert (not (= __flatten_6@143@01 (+ i@118@01 1))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (= __flatten_6@143@01 (+ i@118@01 1)))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 7
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@118@01 (Seq_length b@115@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] i < len - 1 ==> c[i].Ref__Integer_value == 2
; [eval] i < len - 1
; [eval] len - 1
(push) ; 7
; [then-branch: 83 | i@118@01 < len@116@01 - 1 | dead]
; [else-branch: 83 | !(i@118@01 < len@116@01 - 1) | live]
(push) ; 8
; [else-branch: 83 | !(i@118@01 < len@116@01 - 1)]
(pop) ; 8
(pop) ; 7
; Joined path conditions
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(push) ; 2
; [else-branch: 68 | i@118@01 != 0]
(assert (not (= i@118@01 0)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))))))
; [eval] i < len - 1
; [eval] len - 1
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< i@118@01 (- len@116@01 1)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< i@118@01 (- len@116@01 1))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 84 | i@118@01 < len@116@01 - 1 | live]
; [else-branch: 84 | !(i@118@01 < len@116@01 - 1) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 84 | i@118@01 < len@116@01 - 1]
(assert (< i@118@01 (- len@116@01 1)))
; [eval] a[i + 1]
; [eval] i + 1
(push) ; 4
(assert (not (>= (+ i@118@01 1) 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< (+ i@118@01 1) (Seq_length a@117@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index a@117@01 i@118@01) (Seq_index a@117@01 (+ i@118@01 1)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index a@117@01 (+ i@118@01 1)) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))))))))
; [eval] b[i]
(set-option :timeout 0)
(push) ; 4
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@118@01 (Seq_length b@115@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index a@117@01 (+ i@118@01 1)) (Seq_index b@115@01 i@118@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index a@117@01 i@118@01) (Seq_index b@115@01 i@118@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index b@115@01 i@118@01) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))))))))
; [eval] c[i]
(set-option :timeout 0)
(push) ; 4
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@118@01 (Seq_length c@119@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index b@115@01 i@118@01) (Seq_index c@119@01 i@118@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index a@117@01 (+ i@118@01 1)) (Seq_index c@119@01 i@118@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index a@117@01 i@118@01) (Seq_index c@119@01 i@118@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index c@119@01 i@118@01) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))))))
  $Snap.unit))
; [eval] i < len - 1 ==> a[i + 1].Ref__Integer_value == 0
; [eval] i < len - 1
; [eval] len - 1
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (< i@118@01 (- len@116@01 1)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 85 | i@118@01 < len@116@01 - 1 | live]
; [else-branch: 85 | !(i@118@01 < len@116@01 - 1) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 85 | i@118@01 < len@116@01 - 1]
; [eval] a[i + 1].Ref__Integer_value == 0
; [eval] a[i + 1]
; [eval] i + 1
(push) ; 6
(assert (not (>= (+ i@118@01 1) 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< (+ i@118@01 1) (Seq_length a@117@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (< i@118@01 (- len@116@01 1))
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))))
    0)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))))))
  $Snap.unit))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 4
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@118@01 (Seq_length b@115@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))))))
  i@118@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(declare-const $t@144@01 $Snap)
(assert (= $t@144@01 ($Snap.combine ($Snap.first $t@144@01) ($Snap.second $t@144@01))))
(assert (= ($Snap.first $t@144@01) $Snap.unit))
; [eval] |a| == len
; [eval] |a|
(assert (=
  ($Snap.second $t@144@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@144@01))
    ($Snap.second ($Snap.second $t@144@01)))))
(assert (= ($Snap.first ($Snap.second $t@144@01)) $Snap.unit))
; [eval] |b| == len
; [eval] |b|
(assert (=
  ($Snap.second ($Snap.second $t@144@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@144@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@144@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@144@01))) $Snap.unit))
; [eval] |c| == len
; [eval] |c|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@144@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@144@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@144@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@144@01))))
  $Snap.unit))
; [eval] 0 <= i
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@144@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@144@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@144@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@144@01)))))
  $Snap.unit))
; [eval] i < len
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@144@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@144@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@144@01)))))))))
; [eval] a[i]
(push) ; 5
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@118@01 (Seq_length a@117@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@144@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@144@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@144@01))))))))))
; [eval] b[i]
(push) ; 5
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@118@01 (Seq_length b@115@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index a@117@01 i@118@01) (Seq_index b@115@01 i@118@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@144@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@144@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@144@01)))))))))))
; [eval] c[i]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@118@01 (Seq_length c@119@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index b@115@01 i@118@01) (Seq_index c@119@01 i@118@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index a@117@01 i@118@01) (Seq_index c@119@01 i@118@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@144@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@144@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@144@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@144@01)))))))))
  $Snap.unit))
; [eval] a[i].Ref__Integer_value == i + 1
; [eval] a[i]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@118@01 (Seq_length a@117@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] i + 1
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@144@01)))))))
  (+ i@118@01 1)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@144@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@144@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@144@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@144@01))))))))))
  $Snap.unit))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 5
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@118@01 (Seq_length b@115@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@144@01))))))))
  i@118@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@144@01))))))))))
  $Snap.unit))
; [eval] i < len - 1 ==> c[i].Ref__Integer_value == 2
; [eval] i < len - 1
; [eval] len - 1
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not (< i@118@01 (- len@116@01 1)))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 86 | i@118@01 < len@116@01 - 1 | live]
; [else-branch: 86 | !(i@118@01 < len@116@01 - 1) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 86 | i@118@01 < len@116@01 - 1]
; [eval] c[i].Ref__Integer_value == 2
; [eval] c[i]
(push) ; 7
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@118@01 (Seq_length c@119@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (< i@118@01 (- len@116@01 1))
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@144@01)))))))))
    2)))
(pop) ; 4
(push) ; 4
; [exec]
; var __flatten_5: Ref
(declare-const __flatten_5@145@01 $Ref)
; [exec]
; var __flatten_6: Int
(declare-const __flatten_6@146@01 Int)
; [exec]
; var __flatten_7: Ref
(declare-const __flatten_7@147@01 $Ref)
; [exec]
; var __flatten_8: Ref
(declare-const __flatten_8@148@01 $Ref)
; [exec]
; var __flatten_9: Int
(declare-const __flatten_9@149@01 Int)
; [exec]
; var __flatten_10: Ref
(declare-const __flatten_10@150@01 $Ref)
; [eval] i > 0
(push) ; 5
(set-option :timeout 10)
(assert (not (not (> i@118@01 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (> i@118@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 87 | i@118@01 > 0 | live]
; [else-branch: 87 | !(i@118@01 > 0) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 87 | i@118@01 > 0]
(assert (> i@118@01 0))
; [exec]
; Ref__recv_body_202(diz, current_thread_id, len, a, i)
; [eval] diz != null
; [eval] current_thread_id >= 0
; [eval] 0 <= i
; [eval] i < |a|
; [eval] |a|
(push) ; 6
(assert (not (< i@118@01 (Seq_length a@117@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (< i@118@01 (Seq_length a@117@01)))
(declare-const $t@151@01 $Snap)
(assert (= $t@151@01 ($Snap.combine ($Snap.first $t@151@01) ($Snap.second $t@151@01))))
(assert (= ($Snap.first $t@151@01) $Snap.unit))
; [eval] i == i - 1 + 1
; [eval] i - 1 + 1
; [eval] i - 1
(assert (= i@118@01 (+ (- i@118@01 1) 1)))
(assert (=
  ($Snap.second $t@151@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@151@01))
    ($Snap.second ($Snap.second $t@151@01)))))
(assert (= ($Snap.first ($Snap.second $t@151@01)) $Snap.unit))
; [eval] |a| == len
; [eval] |a|
; [eval] a[i]
(push) ; 6
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))
  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second $t@151@01)))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; __flatten_5 := a[i]
; [eval] a[i]
(set-option :timeout 0)
(push) ; 6
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_5@152@01 $Ref)
(assert (= __flatten_5@152@01 (Seq_index a@117@01 i@118@01)))
; [exec]
; __flatten_7 := b[i]
; [eval] b[i]
(push) ; 6
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@118@01 (Seq_length b@115@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_7@153@01 $Ref)
(assert (= __flatten_7@153@01 (Seq_index b@115@01 i@118@01)))
; [exec]
; __flatten_6 := __flatten_7.Ref__Integer_value + 1
; [eval] __flatten_7.Ref__Integer_value + 1
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index a@117@01 i@118@01) __flatten_7@153@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index c@119@01 i@118@01) __flatten_7@153@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index b@115@01 i@118@01) __flatten_7@153@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_6@154@01 Int)
(assert (=
  __flatten_6@154@01
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))))))
    1)))
; [exec]
; __flatten_5.Ref__Integer_value := __flatten_6
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index a@117@01 i@118@01) __flatten_5@152@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index c@119@01 i@118@01) __flatten_5@152@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index b@115@01 i@118@01) __flatten_5@152@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index a@117@01 (+ i@118@01 1)) __flatten_5@152@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (not (= __flatten_5@152@01 $Ref.null)))
; [eval] i < len - 1
; [eval] len - 1
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (< i@118@01 (- len@116@01 1)))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 88 | i@118@01 < len@116@01 - 1 | live]
; [else-branch: 88 | !(i@118@01 < len@116@01 - 1) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 88 | i@118@01 < len@116@01 - 1]
; [exec]
; __flatten_8 := c[i]
; [eval] c[i]
(push) ; 7
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@118@01 (Seq_length c@119@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_8@155@01 $Ref)
(assert (= __flatten_8@155@01 (Seq_index c@119@01 i@118@01)))
; [exec]
; __flatten_10 := a[i + 1]
; [eval] a[i + 1]
; [eval] i + 1
(push) ; 7
(assert (not (>= (+ i@118@01 1) 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< (+ i@118@01 1) (Seq_length a@117@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_10@156@01 $Ref)
(assert (= __flatten_10@156@01 (Seq_index a@117@01 (+ i@118@01 1))))
; [exec]
; __flatten_9 := __flatten_10.Ref__Integer_value + 2
; [eval] __flatten_10.Ref__Integer_value + 2
(push) ; 7
(set-option :timeout 10)
(assert (not (= __flatten_5@152@01 __flatten_10@156@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index c@119@01 i@118@01) __flatten_10@156@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index b@115@01 i@118@01) __flatten_10@156@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index a@117@01 (+ i@118@01 1)) __flatten_10@156@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_9@157@01 Int)
(assert (=
  __flatten_9@157@01
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))))
    2)))
; [exec]
; __flatten_8.Ref__Integer_value := __flatten_9
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= __flatten_5@152@01 __flatten_8@155@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index c@119@01 i@118@01) __flatten_8@155@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= __flatten_5@152@01 __flatten_8@155@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index b@115@01 i@118@01) __flatten_8@155@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= (Seq_index a@117@01 (+ i@118@01 1)) __flatten_8@155@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not (= __flatten_8@155@01 $Ref.null)))
; [exec]
; Ref__send_body_212(diz, current_thread_id, len, a, i)
; [eval] diz != null
; [eval] current_thread_id >= 0
; [eval] |a| == len
; [eval] |a|
; [eval] -1 <= i
; [eval] -1
(set-option :timeout 0)
(push) ; 7
(assert (not (<= (- 0 1) i@118@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= (- 0 1) i@118@01))
; [eval] i < |a| - 1
; [eval] |a| - 1
; [eval] |a|
(push) ; 7
(assert (not (< i@118@01 (- (Seq_length a@117@01) 1))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (< i@118@01 (- (Seq_length a@117@01) 1)))
; [eval] a[i + 1]
; [eval] i + 1
(push) ; 7
(assert (not (>= (+ i@118@01 1) 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< (+ i@118@01 1) (Seq_length a@117@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] |a| == len
; [eval] |a|
; [eval] |b| == len
; [eval] |b|
; [eval] |c| == len
; [eval] |c|
; [eval] 0 <= i
; [eval] i < len
; [eval] a[i]
(set-option :timeout 0)
(push) ; 7
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(set-option :timeout 10)
(assert (not (= __flatten_8@155@01 (Seq_index a@117@01 i@118@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] b[i]
(set-option :timeout 0)
(push) ; 7
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@118@01 (Seq_length b@115@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] c[i]
(push) ; 7
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@118@01 (Seq_length c@119@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] a[i].Ref__Integer_value == i + 1
; [eval] a[i]
(push) ; 7
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(set-option :timeout 10)
(assert (not (= __flatten_8@155@01 (Seq_index a@117@01 i@118@01))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] i + 1
(set-option :timeout 0)
(push) ; 7
(assert (not (= __flatten_6@154@01 (+ i@118@01 1))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (= __flatten_6@154@01 (+ i@118@01 1)))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 7
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@118@01 (Seq_length b@115@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] i < len - 1 ==> c[i].Ref__Integer_value == 2
; [eval] i < len - 1
; [eval] len - 1
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not (< i@118@01 (- len@116@01 1)))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 89 | i@118@01 < len@116@01 - 1 | live]
; [else-branch: 89 | !(i@118@01 < len@116@01 - 1) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 89 | i@118@01 < len@116@01 - 1]
; [eval] c[i].Ref__Integer_value == 2
; [eval] c[i]
(push) ; 9
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (< i@118@01 (Seq_length c@119@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(pop) ; 7
; Joined path conditions
(push) ; 7
(assert (not (=> (< i@118@01 (- len@116@01 1)) (= __flatten_9@157@01 2))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (=> (< i@118@01 (- len@116@01 1)) (= __flatten_9@157@01 2)))
(pop) ; 6
; [eval] !(i < len - 1)
; [eval] i < len - 1
; [eval] len - 1
; [then-branch: 90 | !(i@118@01 < len@116@01 - 1) | dead]
; [else-branch: 90 | i@118@01 < len@116@01 - 1 | live]
(push) ; 6
; [else-branch: 90 | i@118@01 < len@116@01 - 1]
(pop) ; 6
(pop) ; 5
; [eval] !(i > 0)
; [eval] i > 0
(push) ; 5
(set-option :timeout 10)
(assert (not (> i@118@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 91 | !(i@118@01 > 0) | dead]
; [else-branch: 91 | i@118@01 > 0 | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 91 | i@118@01 > 0]
(assert (> i@118@01 0))
(pop) ; 5
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 84 | !(i@118@01 < len@116@01 - 1)]
(assert (not (< i@118@01 (- len@116@01 1))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))))))))
; [eval] b[i]
(push) ; 4
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@118@01 (Seq_length b@115@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index a@117@01 i@118@01) (Seq_index b@115@01 i@118@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index b@115@01 i@118@01) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))))))))
; [eval] c[i]
(set-option :timeout 0)
(push) ; 4
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@118@01 (Seq_length c@119@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index b@115@01 i@118@01) (Seq_index c@119@01 i@118@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index a@117@01 i@118@01) (Seq_index c@119@01 i@118@01))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index c@119@01 i@118@01) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))))))
  $Snap.unit))
; [eval] i < len - 1 ==> a[i + 1].Ref__Integer_value == 0
; [eval] i < len - 1
; [eval] len - 1
(set-option :timeout 0)
(push) ; 4
; [then-branch: 92 | i@118@01 < len@116@01 - 1 | dead]
; [else-branch: 92 | !(i@118@01 < len@116@01 - 1) | live]
(push) ; 5
; [else-branch: 92 | !(i@118@01 < len@116@01 - 1)]
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))))))
  $Snap.unit))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 4
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@118@01 (Seq_length b@115@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))))))
  i@118@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(declare-const $t@158@01 $Snap)
(assert (= $t@158@01 ($Snap.combine ($Snap.first $t@158@01) ($Snap.second $t@158@01))))
(assert (= ($Snap.first $t@158@01) $Snap.unit))
; [eval] |a| == len
; [eval] |a|
(assert (=
  ($Snap.second $t@158@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@158@01))
    ($Snap.second ($Snap.second $t@158@01)))))
(assert (= ($Snap.first ($Snap.second $t@158@01)) $Snap.unit))
; [eval] |b| == len
; [eval] |b|
(assert (=
  ($Snap.second ($Snap.second $t@158@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@158@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@158@01))) $Snap.unit))
; [eval] |c| == len
; [eval] |c|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@158@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@158@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@158@01))))
  $Snap.unit))
; [eval] 0 <= i
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))
  $Snap.unit))
; [eval] i < len
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))
; [eval] a[i]
(push) ; 5
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@118@01 (Seq_length a@117@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))
; [eval] b[i]
(push) ; 5
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@118@01 (Seq_length b@115@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index a@117@01 i@118@01) (Seq_index b@115@01 i@118@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))
; [eval] c[i]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@118@01 (Seq_length c@119@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index b@115@01 i@118@01) (Seq_index c@119@01 i@118@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_index a@117@01 i@118@01) (Seq_index c@119@01 i@118@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))
  $Snap.unit))
; [eval] a[i].Ref__Integer_value == i + 1
; [eval] a[i]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@118@01 (Seq_length a@117@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] i + 1
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))
  (+ i@118@01 1)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))
  $Snap.unit))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 5
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@118@01 (Seq_length b@115@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))
  i@118@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@158@01))))))))))
  $Snap.unit))
; [eval] i < len - 1 ==> c[i].Ref__Integer_value == 2
; [eval] i < len - 1
; [eval] len - 1
(push) ; 5
; [then-branch: 93 | i@118@01 < len@116@01 - 1 | dead]
; [else-branch: 93 | !(i@118@01 < len@116@01 - 1) | live]
(push) ; 6
; [else-branch: 93 | !(i@118@01 < len@116@01 - 1)]
(pop) ; 6
(pop) ; 5
; Joined path conditions
(pop) ; 4
(push) ; 4
; [exec]
; var __flatten_5: Ref
(declare-const __flatten_5@159@01 $Ref)
; [exec]
; var __flatten_6: Int
(declare-const __flatten_6@160@01 Int)
; [exec]
; var __flatten_7: Ref
(declare-const __flatten_7@161@01 $Ref)
; [exec]
; var __flatten_8: Ref
(declare-const __flatten_8@162@01 $Ref)
; [exec]
; var __flatten_9: Int
(declare-const __flatten_9@163@01 Int)
; [exec]
; var __flatten_10: Ref
(declare-const __flatten_10@164@01 $Ref)
; [eval] i > 0
(push) ; 5
(set-option :timeout 10)
(assert (not (not (> i@118@01 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (> i@118@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 94 | i@118@01 > 0 | live]
; [else-branch: 94 | !(i@118@01 > 0) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 94 | i@118@01 > 0]
(assert (> i@118@01 0))
; [exec]
; Ref__recv_body_202(diz, current_thread_id, len, a, i)
; [eval] diz != null
; [eval] current_thread_id >= 0
; [eval] 0 <= i
; [eval] i < |a|
; [eval] |a|
(push) ; 6
(assert (not (< i@118@01 (Seq_length a@117@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (< i@118@01 (Seq_length a@117@01)))
(declare-const $t@165@01 $Snap)
(assert (= $t@165@01 ($Snap.combine ($Snap.first $t@165@01) ($Snap.second $t@165@01))))
(assert (= ($Snap.first $t@165@01) $Snap.unit))
; [eval] i == i - 1 + 1
; [eval] i - 1 + 1
; [eval] i - 1
(assert (= i@118@01 (+ (- i@118@01 1) 1)))
(assert (=
  ($Snap.second $t@165@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@165@01))
    ($Snap.second ($Snap.second $t@165@01)))))
(assert (= ($Snap.first ($Snap.second $t@165@01)) $Snap.unit))
; [eval] |a| == len
; [eval] |a|
; [eval] a[i]
(push) ; 6
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))))
  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second $t@165@01)))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; __flatten_5 := a[i]
; [eval] a[i]
(set-option :timeout 0)
(push) ; 6
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_5@166@01 $Ref)
(assert (= __flatten_5@166@01 (Seq_index a@117@01 i@118@01)))
; [exec]
; __flatten_7 := b[i]
; [eval] b[i]
(push) ; 6
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@118@01 (Seq_length b@115@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_7@167@01 $Ref)
(assert (= __flatten_7@167@01 (Seq_index b@115@01 i@118@01)))
; [exec]
; __flatten_6 := __flatten_7.Ref__Integer_value + 1
; [eval] __flatten_7.Ref__Integer_value + 1
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index a@117@01 i@118@01) __flatten_7@167@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index c@119@01 i@118@01) __flatten_7@167@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index b@115@01 i@118@01) __flatten_7@167@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_6@168@01 Int)
(assert (=
  __flatten_6@168@01
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))))))
    1)))
; [exec]
; __flatten_5.Ref__Integer_value := __flatten_6
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index a@117@01 i@118@01) __flatten_5@166@01)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index c@119@01 i@118@01) __flatten_5@166@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= (Seq_index b@115@01 i@118@01) __flatten_5@166@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (not (= __flatten_5@166@01 $Ref.null)))
; [eval] i < len - 1
; [eval] len - 1
; [then-branch: 95 | i@118@01 < len@116@01 - 1 | dead]
; [else-branch: 95 | !(i@118@01 < len@116@01 - 1) | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 95 | !(i@118@01 < len@116@01 - 1)]
(pop) ; 6
; [eval] !(i < len - 1)
; [eval] i < len - 1
; [eval] len - 1
(push) ; 6
(set-option :timeout 10)
(assert (not (< i@118@01 (- len@116@01 1))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 96 | !(i@118@01 < len@116@01 - 1) | live]
; [else-branch: 96 | i@118@01 < len@116@01 - 1 | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 96 | !(i@118@01 < len@116@01 - 1)]
; [eval] |a| == len
; [eval] |a|
; [eval] |b| == len
; [eval] |b|
; [eval] |c| == len
; [eval] |c|
; [eval] 0 <= i
; [eval] i < len
; [eval] a[i]
(push) ; 7
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] b[i]
(push) ; 7
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@118@01 (Seq_length b@115@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] c[i]
(push) ; 7
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@118@01 (Seq_length c@119@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] a[i].Ref__Integer_value == i + 1
; [eval] a[i]
(push) ; 7
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] i + 1
(push) ; 7
(assert (not (= __flatten_6@168@01 (+ i@118@01 1))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (= __flatten_6@168@01 (+ i@118@01 1)))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 7
(assert (not (>= i@118@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@118@01 (Seq_length b@115@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] i < len - 1 ==> c[i].Ref__Integer_value == 2
; [eval] i < len - 1
; [eval] len - 1
(push) ; 7
; [then-branch: 97 | i@118@01 < len@116@01 - 1 | dead]
; [else-branch: 97 | !(i@118@01 < len@116@01 - 1) | live]
(push) ; 8
; [else-branch: 97 | !(i@118@01 < len@116@01 - 1)]
(pop) ; 8
(pop) ; 7
; Joined path conditions
(pop) ; 6
(pop) ; 5
; [eval] !(i > 0)
; [eval] i > 0
(push) ; 5
(set-option :timeout 10)
(assert (not (> i@118@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 98 | !(i@118@01 > 0) | dead]
; [else-branch: 98 | i@118@01 > 0 | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 98 | i@118@01 > 0]
(assert (> i@118@01 0))
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- Ref__guard_check_S2_S1 ----------
(declare-const diz@169@01 $Ref)
(declare-const current_thread_id@170@01 Int)
(declare-const b@171@01 Seq<$Ref>)
(declare-const len@172@01 Int)
(declare-const a@173@01 Seq<$Ref>)
(declare-const i@174@01 Int)
(declare-const c@175@01 Seq<$Ref>)
(declare-const diz@176@01 $Ref)
(declare-const current_thread_id@177@01 Int)
(declare-const b@178@01 Seq<$Ref>)
(declare-const len@179@01 Int)
(declare-const a@180@01 Seq<$Ref>)
(declare-const i@181@01 Int)
(declare-const c@182@01 Seq<$Ref>)
(push) ; 1
(declare-const $t@183@01 $Snap)
(assert (= $t@183@01 ($Snap.combine ($Snap.first $t@183@01) ($Snap.second $t@183@01))))
(assert (= ($Snap.first $t@183@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@176@01 $Ref.null)))
(assert (=
  ($Snap.second $t@183@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@183@01))
    ($Snap.second ($Snap.second $t@183@01)))))
(assert (= ($Snap.first ($Snap.second $t@183@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@177@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@183@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@183@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@183@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@183@01))) $Snap.unit))
; [eval] 0 <= i
(assert (<= 0 i@181@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@183@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@183@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@183@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@183@01))))
  $Snap.unit))
; [eval] i < len
(assert (< i@181@01 len@179@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@183@01))))
  $Snap.unit))
; [eval] i > 0
(assert (> i@181@01 0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@184@01 $Snap)
(assert (= $t@184@01 ($Snap.combine ($Snap.first $t@184@01) ($Snap.second $t@184@01))))
(assert (= ($Snap.first $t@184@01) $Snap.unit))
; [eval] 1 <= i
(assert (<= 1 i@181@01))
(assert (= ($Snap.second $t@184@01) $Snap.unit))
; [eval] i - 1 < len - 1
; [eval] i - 1
; [eval] len - 1
(assert (< (- i@181@01 1) (- len@179@01 1)))
(pop) ; 2
(push) ; 2
; [eval] 1 <= i
(push) ; 3
(assert (not (<= 1 i@181@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 1 i@181@01))
; [eval] i - 1 < len - 1
; [eval] i - 1
; [eval] len - 1
(push) ; 3
(assert (not (< (- i@181@01 1) (- len@179@01 1))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< (- i@181@01 1) (- len@179@01 1)))
(pop) ; 2
(pop) ; 1
; ---------- Ref__resource_check_S2_S1 ----------
(declare-const diz@185@01 $Ref)
(declare-const current_thread_id@186@01 Int)
(declare-const b@187@01 Seq<$Ref>)
(declare-const len@188@01 Int)
(declare-const a@189@01 Seq<$Ref>)
(declare-const i@190@01 Int)
(declare-const c@191@01 Seq<$Ref>)
(declare-const diz@192@01 $Ref)
(declare-const current_thread_id@193@01 Int)
(declare-const b@194@01 Seq<$Ref>)
(declare-const len@195@01 Int)
(declare-const a@196@01 Seq<$Ref>)
(declare-const i@197@01 Int)
(declare-const c@198@01 Seq<$Ref>)
(push) ; 1
(declare-const $t@199@01 $Snap)
(assert (= $t@199@01 ($Snap.combine ($Snap.first $t@199@01) ($Snap.second $t@199@01))))
(assert (= ($Snap.first $t@199@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@192@01 $Ref.null)))
(assert (=
  ($Snap.second $t@199@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@199@01))
    ($Snap.second ($Snap.second $t@199@01)))))
(assert (= ($Snap.first ($Snap.second $t@199@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@193@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@199@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@199@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@199@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@199@01))) $Snap.unit))
; [eval] 0 <= i
(assert (<= 0 i@197@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@199@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@199@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@199@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@199@01))))
  $Snap.unit))
; [eval] i < len
(assert (< i@197@01 len@195@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@199@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@199@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@199@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@199@01)))))
  $Snap.unit))
; [eval] i - 1 < len - 1
; [eval] i - 1
; [eval] len - 1
(assert (< (- i@197@01 1) (- len@195@01 1)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@199@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@199@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@199@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@199@01))))))
  $Snap.unit))
; [eval] i > 0
(assert (> i@197@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@199@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@199@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@199@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@199@01)))))))
  $Snap.unit))
; [eval] |a| == len
; [eval] |a|
(assert (= (Seq_length a@196@01) len@195@01))
; [eval] a[i - 1 + 1]
; [eval] i - 1 + 1
; [eval] i - 1
(push) ; 2
(assert (not (>= (+ (- i@197@01 1) 1) 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(assert (not (< (+ (- i@197@01 1) 1) (Seq_length a@196@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index a@196@01 (+ (- i@197@01 1) 1)) $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@200@01 $Snap)
(assert (= $t@200@01 ($Snap.combine ($Snap.first $t@200@01) ($Snap.second $t@200@01))))
(assert (= ($Snap.first $t@200@01) $Snap.unit))
; [eval] i - 1 < len - 1
; [eval] i - 1
; [eval] len - 1
(assert (=
  ($Snap.second $t@200@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@200@01))
    ($Snap.second ($Snap.second $t@200@01)))))
(assert (= ($Snap.first ($Snap.second $t@200@01)) $Snap.unit))
; [eval] i == i - 1 + 1
; [eval] i - 1 + 1
; [eval] i - 1
(assert (= i@197@01 (+ (- i@197@01 1) 1)))
(assert (=
  ($Snap.second ($Snap.second $t@200@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@200@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@200@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@200@01))) $Snap.unit))
; [eval] |a| == len
; [eval] |a|
; [eval] a[i]
(push) ; 3
(assert (not (>= i@197@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@197@01 (Seq_length a@196@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index a@196@01 i@197@01) $Ref.null)))
(pop) ; 2
(push) ; 2
; [eval] i - 1 < len - 1
; [eval] i - 1
; [eval] len - 1
; [eval] i == i - 1 + 1
; [eval] i - 1 + 1
; [eval] i - 1
(push) ; 3
(assert (not (= i@197@01 (+ (- i@197@01 1) 1))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= i@197@01 (+ (- i@197@01 1) 1)))
; [eval] |a| == len
; [eval] |a|
; [eval] a[i]
(push) ; 3
(assert (not (>= i@197@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@197@01 (Seq_length a@196@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (Seq_index a@196@01 (+ (- i@197@01 1) 1)) (Seq_index a@196@01 i@197@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- Ref__example ----------
(declare-const diz@201@01 $Ref)
(declare-const current_thread_id@202@01 Int)
(declare-const a@203@01 Seq<$Ref>)
(declare-const b@204@01 Seq<$Ref>)
(declare-const c@205@01 Seq<$Ref>)
(declare-const len@206@01 Int)
(declare-const diz@207@01 $Ref)
(declare-const current_thread_id@208@01 Int)
(declare-const a@209@01 Seq<$Ref>)
(declare-const b@210@01 Seq<$Ref>)
(declare-const c@211@01 Seq<$Ref>)
(declare-const len@212@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@213@01 $Snap)
(assert (= $t@213@01 ($Snap.combine ($Snap.first $t@213@01) ($Snap.second $t@213@01))))
(assert (= ($Snap.first $t@213@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@207@01 $Ref.null)))
(assert (=
  ($Snap.second $t@213@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@213@01))
    ($Snap.second ($Snap.second $t@213@01)))))
(assert (= ($Snap.first ($Snap.second $t@213@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@208@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@213@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@213@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@213@01))) $Snap.unit))
; [eval] |a| == len
; [eval] |a|
(assert (= (Seq_length a@209@01) len@212@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@213@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@213@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@213@01))))
  $Snap.unit))
; [eval] (forall j: Int, k: Int :: { a[j], a[k] } 0 <= j && (j < len && (0 <= k && (k < len && j != k))) ==> a[j] != a[k])
(declare-const j@214@01 Int)
(declare-const k@215@01 Int)
(push) ; 2
; [eval] 0 <= j && (j < len && (0 <= k && (k < len && j != k))) ==> a[j] != a[k]
; [eval] 0 <= j && (j < len && (0 <= k && (k < len && j != k)))
; [eval] 0 <= j
(push) ; 3
; [then-branch: 99 | !(0 <= j@214@01) | live]
; [else-branch: 99 | 0 <= j@214@01 | live]
(push) ; 4
; [then-branch: 99 | !(0 <= j@214@01)]
(assert (not (<= 0 j@214@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 99 | 0 <= j@214@01]
(assert (<= 0 j@214@01))
; [eval] j < len
(push) ; 5
; [then-branch: 100 | !(j@214@01 < len@212@01) | live]
; [else-branch: 100 | j@214@01 < len@212@01 | live]
(push) ; 6
; [then-branch: 100 | !(j@214@01 < len@212@01)]
(assert (not (< j@214@01 len@212@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 100 | j@214@01 < len@212@01]
(assert (< j@214@01 len@212@01))
; [eval] 0 <= k
(push) ; 7
; [then-branch: 101 | !(0 <= k@215@01) | live]
; [else-branch: 101 | 0 <= k@215@01 | live]
(push) ; 8
; [then-branch: 101 | !(0 <= k@215@01)]
(assert (not (<= 0 k@215@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 101 | 0 <= k@215@01]
(assert (<= 0 k@215@01))
; [eval] k < len
(push) ; 9
; [then-branch: 102 | !(k@215@01 < len@212@01) | live]
; [else-branch: 102 | k@215@01 < len@212@01 | live]
(push) ; 10
; [then-branch: 102 | !(k@215@01 < len@212@01)]
(assert (not (< k@215@01 len@212@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 102 | k@215@01 < len@212@01]
(assert (< k@215@01 len@212@01))
; [eval] j != k
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< k@215@01 len@212@01) (not (< k@215@01 len@212@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@215@01)
  (and
    (<= 0 k@215@01)
    (or (< k@215@01 len@212@01) (not (< k@215@01 len@212@01))))))
(assert (or (<= 0 k@215@01) (not (<= 0 k@215@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@214@01 len@212@01)
  (and
    (< j@214@01 len@212@01)
    (=>
      (<= 0 k@215@01)
      (and
        (<= 0 k@215@01)
        (or (< k@215@01 len@212@01) (not (< k@215@01 len@212@01)))))
    (or (<= 0 k@215@01) (not (<= 0 k@215@01))))))
(assert (or (< j@214@01 len@212@01) (not (< j@214@01 len@212@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@214@01)
  (and
    (<= 0 j@214@01)
    (=>
      (< j@214@01 len@212@01)
      (and
        (< j@214@01 len@212@01)
        (=>
          (<= 0 k@215@01)
          (and
            (<= 0 k@215@01)
            (or (< k@215@01 len@212@01) (not (< k@215@01 len@212@01)))))
        (or (<= 0 k@215@01) (not (<= 0 k@215@01)))))
    (or (< j@214@01 len@212@01) (not (< j@214@01 len@212@01))))))
(assert (or (<= 0 j@214@01) (not (<= 0 j@214@01))))
(push) ; 3
; [then-branch: 103 | 0 <= j@214@01 && j@214@01 < len@212@01 && 0 <= k@215@01 && k@215@01 < len@212@01 && j@214@01 != k@215@01 | live]
; [else-branch: 103 | !(0 <= j@214@01 && j@214@01 < len@212@01 && 0 <= k@215@01 && k@215@01 < len@212@01 && j@214@01 != k@215@01) | live]
(push) ; 4
; [then-branch: 103 | 0 <= j@214@01 && j@214@01 < len@212@01 && 0 <= k@215@01 && k@215@01 < len@212@01 && j@214@01 != k@215@01]
(assert (and
  (<= 0 j@214@01)
  (and
    (< j@214@01 len@212@01)
    (and
      (<= 0 k@215@01)
      (and (< k@215@01 len@212@01) (not (= j@214@01 k@215@01)))))))
; [eval] a[j] != a[k]
; [eval] a[j]
(push) ; 5
(assert (not (>= j@214@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< j@214@01 (Seq_length a@209@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] a[k]
(push) ; 5
(assert (not (>= k@215@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@215@01 (Seq_length a@209@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 103 | !(0 <= j@214@01 && j@214@01 < len@212@01 && 0 <= k@215@01 && k@215@01 < len@212@01 && j@214@01 != k@215@01)]
(assert (not
  (and
    (<= 0 j@214@01)
    (and
      (< j@214@01 len@212@01)
      (and
        (<= 0 k@215@01)
        (and (< k@215@01 len@212@01) (not (= j@214@01 k@215@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@214@01)
    (and
      (< j@214@01 len@212@01)
      (and
        (<= 0 k@215@01)
        (and (< k@215@01 len@212@01) (not (= j@214@01 k@215@01))))))
  (and
    (<= 0 j@214@01)
    (< j@214@01 len@212@01)
    (<= 0 k@215@01)
    (< k@215@01 len@212@01)
    (not (= j@214@01 k@215@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@214@01)
      (and
        (< j@214@01 len@212@01)
        (and
          (<= 0 k@215@01)
          (and (< k@215@01 len@212@01) (not (= j@214@01 k@215@01)))))))
  (and
    (<= 0 j@214@01)
    (and
      (< j@214@01 len@212@01)
      (and
        (<= 0 k@215@01)
        (and (< k@215@01 len@212@01) (not (= j@214@01 k@215@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@214@01 Int) (k@215@01 Int)) (!
  (and
    (=>
      (<= 0 j@214@01)
      (and
        (<= 0 j@214@01)
        (=>
          (< j@214@01 len@212@01)
          (and
            (< j@214@01 len@212@01)
            (=>
              (<= 0 k@215@01)
              (and
                (<= 0 k@215@01)
                (or (< k@215@01 len@212@01) (not (< k@215@01 len@212@01)))))
            (or (<= 0 k@215@01) (not (<= 0 k@215@01)))))
        (or (< j@214@01 len@212@01) (not (< j@214@01 len@212@01)))))
    (or (<= 0 j@214@01) (not (<= 0 j@214@01)))
    (=>
      (and
        (<= 0 j@214@01)
        (and
          (< j@214@01 len@212@01)
          (and
            (<= 0 k@215@01)
            (and (< k@215@01 len@212@01) (not (= j@214@01 k@215@01))))))
      (and
        (<= 0 j@214@01)
        (< j@214@01 len@212@01)
        (<= 0 k@215@01)
        (< k@215@01 len@212@01)
        (not (= j@214@01 k@215@01))))
    (or
      (not
        (and
          (<= 0 j@214@01)
          (and
            (< j@214@01 len@212@01)
            (and
              (<= 0 k@215@01)
              (and (< k@215@01 len@212@01) (not (= j@214@01 k@215@01)))))))
      (and
        (<= 0 j@214@01)
        (and
          (< j@214@01 len@212@01)
          (and
            (<= 0 k@215@01)
            (and (< k@215@01 len@212@01) (not (= j@214@01 k@215@01))))))))
  :pattern ((Seq_index a@209@01 j@214@01) (Seq_index a@209@01 k@215@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@176@12@176@102-aux|)))
(assert (forall ((j@214@01 Int) (k@215@01 Int)) (!
  (=>
    (and
      (<= 0 j@214@01)
      (and
        (< j@214@01 len@212@01)
        (and
          (<= 0 k@215@01)
          (and (< k@215@01 len@212@01) (not (= j@214@01 k@215@01))))))
    (not (= (Seq_index a@209@01 j@214@01) (Seq_index a@209@01 k@215@01))))
  :pattern ((Seq_index a@209@01 j@214@01) (Seq_index a@209@01 k@215@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@176@12@176@102|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))
(declare-const i@216@01 Int)
(push) ; 2
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 3
; [then-branch: 104 | !(0 <= i@216@01) | live]
; [else-branch: 104 | 0 <= i@216@01 | live]
(push) ; 4
; [then-branch: 104 | !(0 <= i@216@01)]
(assert (not (<= 0 i@216@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 104 | 0 <= i@216@01]
(assert (<= 0 i@216@01))
; [eval] i < len
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@216@01) (not (<= 0 i@216@01))))
(assert (and (<= 0 i@216@01) (< i@216@01 len@212@01)))
; [eval] a[i]
(push) ; 3
(assert (not (>= i@216@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@216@01 (Seq_length a@209@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@217@01 ($Ref) Int)
(declare-fun img@218@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@216@01 Int)) (!
  (=>
    (and (<= 0 i@216@01) (< i@216@01 len@212@01))
    (or (<= 0 i@216@01) (not (<= 0 i@216@01))))
  :pattern ((Seq_index a@209@01 i@216@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@216@01 Int) (i2@216@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@216@01) (< i1@216@01 len@212@01))
      (and (<= 0 i2@216@01) (< i2@216@01 len@212@01))
      (= (Seq_index a@209@01 i1@216@01) (Seq_index a@209@01 i2@216@01)))
    (= i1@216@01 i2@216@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@216@01 Int)) (!
  (=>
    (and (<= 0 i@216@01) (< i@216@01 len@212@01))
    (and
      (= (inv@217@01 (Seq_index a@209@01 i@216@01)) i@216@01)
      (img@218@01 (Seq_index a@209@01 i@216@01))))
  :pattern ((Seq_index a@209@01 i@216@01))
  :qid |quant-u-6801|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@218@01 r)
      (and (<= 0 (inv@217@01 r)) (< (inv@217@01 r) len@212@01)))
    (= (Seq_index a@209@01 (inv@217@01 r)) r))
  :pattern ((inv@217@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@216@01 Int)) (!
  (=>
    (and (<= 0 i@216@01) (< i@216@01 len@212@01))
    (not (= (Seq_index a@209@01 i@216@01) $Ref.null)))
  :pattern ((Seq_index a@209@01 i@216@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))
  $Snap.unit))
; [eval] |b| == len
; [eval] |b|
(assert (= (Seq_length b@210@01) len@212@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))
  $Snap.unit))
; [eval] (forall j: Int, k: Int :: { b[j], b[k] } 0 <= j && (j < len && (0 <= k && (k < len && j != k))) ==> b[j] != b[k])
(declare-const j@219@01 Int)
(declare-const k@220@01 Int)
(push) ; 2
; [eval] 0 <= j && (j < len && (0 <= k && (k < len && j != k))) ==> b[j] != b[k]
; [eval] 0 <= j && (j < len && (0 <= k && (k < len && j != k)))
; [eval] 0 <= j
(push) ; 3
; [then-branch: 105 | !(0 <= j@219@01) | live]
; [else-branch: 105 | 0 <= j@219@01 | live]
(push) ; 4
; [then-branch: 105 | !(0 <= j@219@01)]
(assert (not (<= 0 j@219@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 105 | 0 <= j@219@01]
(assert (<= 0 j@219@01))
; [eval] j < len
(push) ; 5
; [then-branch: 106 | !(j@219@01 < len@212@01) | live]
; [else-branch: 106 | j@219@01 < len@212@01 | live]
(push) ; 6
; [then-branch: 106 | !(j@219@01 < len@212@01)]
(assert (not (< j@219@01 len@212@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 106 | j@219@01 < len@212@01]
(assert (< j@219@01 len@212@01))
; [eval] 0 <= k
(push) ; 7
; [then-branch: 107 | !(0 <= k@220@01) | live]
; [else-branch: 107 | 0 <= k@220@01 | live]
(push) ; 8
; [then-branch: 107 | !(0 <= k@220@01)]
(assert (not (<= 0 k@220@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 107 | 0 <= k@220@01]
(assert (<= 0 k@220@01))
; [eval] k < len
(push) ; 9
; [then-branch: 108 | !(k@220@01 < len@212@01) | live]
; [else-branch: 108 | k@220@01 < len@212@01 | live]
(push) ; 10
; [then-branch: 108 | !(k@220@01 < len@212@01)]
(assert (not (< k@220@01 len@212@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 108 | k@220@01 < len@212@01]
(assert (< k@220@01 len@212@01))
; [eval] j != k
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< k@220@01 len@212@01) (not (< k@220@01 len@212@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@220@01)
  (and
    (<= 0 k@220@01)
    (or (< k@220@01 len@212@01) (not (< k@220@01 len@212@01))))))
(assert (or (<= 0 k@220@01) (not (<= 0 k@220@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@219@01 len@212@01)
  (and
    (< j@219@01 len@212@01)
    (=>
      (<= 0 k@220@01)
      (and
        (<= 0 k@220@01)
        (or (< k@220@01 len@212@01) (not (< k@220@01 len@212@01)))))
    (or (<= 0 k@220@01) (not (<= 0 k@220@01))))))
(assert (or (< j@219@01 len@212@01) (not (< j@219@01 len@212@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@219@01)
  (and
    (<= 0 j@219@01)
    (=>
      (< j@219@01 len@212@01)
      (and
        (< j@219@01 len@212@01)
        (=>
          (<= 0 k@220@01)
          (and
            (<= 0 k@220@01)
            (or (< k@220@01 len@212@01) (not (< k@220@01 len@212@01)))))
        (or (<= 0 k@220@01) (not (<= 0 k@220@01)))))
    (or (< j@219@01 len@212@01) (not (< j@219@01 len@212@01))))))
(assert (or (<= 0 j@219@01) (not (<= 0 j@219@01))))
(push) ; 3
; [then-branch: 109 | 0 <= j@219@01 && j@219@01 < len@212@01 && 0 <= k@220@01 && k@220@01 < len@212@01 && j@219@01 != k@220@01 | live]
; [else-branch: 109 | !(0 <= j@219@01 && j@219@01 < len@212@01 && 0 <= k@220@01 && k@220@01 < len@212@01 && j@219@01 != k@220@01) | live]
(push) ; 4
; [then-branch: 109 | 0 <= j@219@01 && j@219@01 < len@212@01 && 0 <= k@220@01 && k@220@01 < len@212@01 && j@219@01 != k@220@01]
(assert (and
  (<= 0 j@219@01)
  (and
    (< j@219@01 len@212@01)
    (and
      (<= 0 k@220@01)
      (and (< k@220@01 len@212@01) (not (= j@219@01 k@220@01)))))))
; [eval] b[j] != b[k]
; [eval] b[j]
(push) ; 5
(assert (not (>= j@219@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< j@219@01 (Seq_length b@210@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] b[k]
(push) ; 5
(assert (not (>= k@220@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@220@01 (Seq_length b@210@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 109 | !(0 <= j@219@01 && j@219@01 < len@212@01 && 0 <= k@220@01 && k@220@01 < len@212@01 && j@219@01 != k@220@01)]
(assert (not
  (and
    (<= 0 j@219@01)
    (and
      (< j@219@01 len@212@01)
      (and
        (<= 0 k@220@01)
        (and (< k@220@01 len@212@01) (not (= j@219@01 k@220@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@219@01)
    (and
      (< j@219@01 len@212@01)
      (and
        (<= 0 k@220@01)
        (and (< k@220@01 len@212@01) (not (= j@219@01 k@220@01))))))
  (and
    (<= 0 j@219@01)
    (< j@219@01 len@212@01)
    (<= 0 k@220@01)
    (< k@220@01 len@212@01)
    (not (= j@219@01 k@220@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@219@01)
      (and
        (< j@219@01 len@212@01)
        (and
          (<= 0 k@220@01)
          (and (< k@220@01 len@212@01) (not (= j@219@01 k@220@01)))))))
  (and
    (<= 0 j@219@01)
    (and
      (< j@219@01 len@212@01)
      (and
        (<= 0 k@220@01)
        (and (< k@220@01 len@212@01) (not (= j@219@01 k@220@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@219@01 Int) (k@220@01 Int)) (!
  (and
    (=>
      (<= 0 j@219@01)
      (and
        (<= 0 j@219@01)
        (=>
          (< j@219@01 len@212@01)
          (and
            (< j@219@01 len@212@01)
            (=>
              (<= 0 k@220@01)
              (and
                (<= 0 k@220@01)
                (or (< k@220@01 len@212@01) (not (< k@220@01 len@212@01)))))
            (or (<= 0 k@220@01) (not (<= 0 k@220@01)))))
        (or (< j@219@01 len@212@01) (not (< j@219@01 len@212@01)))))
    (or (<= 0 j@219@01) (not (<= 0 j@219@01)))
    (=>
      (and
        (<= 0 j@219@01)
        (and
          (< j@219@01 len@212@01)
          (and
            (<= 0 k@220@01)
            (and (< k@220@01 len@212@01) (not (= j@219@01 k@220@01))))))
      (and
        (<= 0 j@219@01)
        (< j@219@01 len@212@01)
        (<= 0 k@220@01)
        (< k@220@01 len@212@01)
        (not (= j@219@01 k@220@01))))
    (or
      (not
        (and
          (<= 0 j@219@01)
          (and
            (< j@219@01 len@212@01)
            (and
              (<= 0 k@220@01)
              (and (< k@220@01 len@212@01) (not (= j@219@01 k@220@01)))))))
      (and
        (<= 0 j@219@01)
        (and
          (< j@219@01 len@212@01)
          (and
            (<= 0 k@220@01)
            (and (< k@220@01 len@212@01) (not (= j@219@01 k@220@01))))))))
  :pattern ((Seq_index b@210@01 j@219@01) (Seq_index b@210@01 k@220@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@179@12@179@102-aux|)))
(assert (forall ((j@219@01 Int) (k@220@01 Int)) (!
  (=>
    (and
      (<= 0 j@219@01)
      (and
        (< j@219@01 len@212@01)
        (and
          (<= 0 k@220@01)
          (and (< k@220@01 len@212@01) (not (= j@219@01 k@220@01))))))
    (not (= (Seq_index b@210@01 j@219@01) (Seq_index b@210@01 k@220@01))))
  :pattern ((Seq_index b@210@01 j@219@01) (Seq_index b@210@01 k@220@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@179@12@179@102|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))
(declare-const i@221@01 Int)
(push) ; 2
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 3
; [then-branch: 110 | !(0 <= i@221@01) | live]
; [else-branch: 110 | 0 <= i@221@01 | live]
(push) ; 4
; [then-branch: 110 | !(0 <= i@221@01)]
(assert (not (<= 0 i@221@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 110 | 0 <= i@221@01]
(assert (<= 0 i@221@01))
; [eval] i < len
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@221@01) (not (<= 0 i@221@01))))
(assert (and (<= 0 i@221@01) (< i@221@01 len@212@01)))
; [eval] b[i]
(push) ; 3
(assert (not (>= i@221@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@221@01 (Seq_length b@210@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@222@01 ($Ref) Int)
(declare-fun img@223@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@221@01 Int)) (!
  (=>
    (and (<= 0 i@221@01) (< i@221@01 len@212@01))
    (or (<= 0 i@221@01) (not (<= 0 i@221@01))))
  :pattern ((Seq_index b@210@01 i@221@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@221@01 Int) (i2@221@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@221@01) (< i1@221@01 len@212@01))
      (and (<= 0 i2@221@01) (< i2@221@01 len@212@01))
      (= (Seq_index b@210@01 i1@221@01) (Seq_index b@210@01 i2@221@01)))
    (= i1@221@01 i2@221@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@221@01 Int)) (!
  (=>
    (and (<= 0 i@221@01) (< i@221@01 len@212@01))
    (and
      (= (inv@222@01 (Seq_index b@210@01 i@221@01)) i@221@01)
      (img@223@01 (Seq_index b@210@01 i@221@01))))
  :pattern ((Seq_index b@210@01 i@221@01))
  :qid |quant-u-6803|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@223@01 r)
      (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) len@212@01)))
    (= (Seq_index b@210@01 (inv@222@01 r)) r))
  :pattern ((inv@222@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@221@01 Int)) (!
  (=>
    (and (<= 0 i@221@01) (< i@221@01 len@212@01))
    (not (= (Seq_index b@210@01 i@221@01) $Ref.null)))
  :pattern ((Seq_index b@210@01 i@221@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index b@210@01 i@221@01) (Seq_index a@209@01 i@216@01))
    (=
      (and
        (img@223@01 r)
        (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) len@212@01)))
      (and
        (img@218@01 r)
        (and (<= 0 (inv@217@01 r)) (< (inv@217@01 r) len@212@01)))))
  
  :qid |quant-u-6804|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))
  $Snap.unit))
; [eval] |c| == len
; [eval] |c|
(assert (= (Seq_length c@211@01) len@212@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))))
  $Snap.unit))
; [eval] (forall j: Int, k: Int :: { c[j], c[k] } 0 <= j && (j < len && (0 <= k && (k < len && j != k))) ==> c[j] != c[k])
(declare-const j@224@01 Int)
(declare-const k@225@01 Int)
(set-option :timeout 0)
(push) ; 2
; [eval] 0 <= j && (j < len && (0 <= k && (k < len && j != k))) ==> c[j] != c[k]
; [eval] 0 <= j && (j < len && (0 <= k && (k < len && j != k)))
; [eval] 0 <= j
(push) ; 3
; [then-branch: 111 | !(0 <= j@224@01) | live]
; [else-branch: 111 | 0 <= j@224@01 | live]
(push) ; 4
; [then-branch: 111 | !(0 <= j@224@01)]
(assert (not (<= 0 j@224@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 111 | 0 <= j@224@01]
(assert (<= 0 j@224@01))
; [eval] j < len
(push) ; 5
; [then-branch: 112 | !(j@224@01 < len@212@01) | live]
; [else-branch: 112 | j@224@01 < len@212@01 | live]
(push) ; 6
; [then-branch: 112 | !(j@224@01 < len@212@01)]
(assert (not (< j@224@01 len@212@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 112 | j@224@01 < len@212@01]
(assert (< j@224@01 len@212@01))
; [eval] 0 <= k
(push) ; 7
; [then-branch: 113 | !(0 <= k@225@01) | live]
; [else-branch: 113 | 0 <= k@225@01 | live]
(push) ; 8
; [then-branch: 113 | !(0 <= k@225@01)]
(assert (not (<= 0 k@225@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 113 | 0 <= k@225@01]
(assert (<= 0 k@225@01))
; [eval] k < len
(push) ; 9
; [then-branch: 114 | !(k@225@01 < len@212@01) | live]
; [else-branch: 114 | k@225@01 < len@212@01 | live]
(push) ; 10
; [then-branch: 114 | !(k@225@01 < len@212@01)]
(assert (not (< k@225@01 len@212@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 114 | k@225@01 < len@212@01]
(assert (< k@225@01 len@212@01))
; [eval] j != k
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< k@225@01 len@212@01) (not (< k@225@01 len@212@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@225@01)
  (and
    (<= 0 k@225@01)
    (or (< k@225@01 len@212@01) (not (< k@225@01 len@212@01))))))
(assert (or (<= 0 k@225@01) (not (<= 0 k@225@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@224@01 len@212@01)
  (and
    (< j@224@01 len@212@01)
    (=>
      (<= 0 k@225@01)
      (and
        (<= 0 k@225@01)
        (or (< k@225@01 len@212@01) (not (< k@225@01 len@212@01)))))
    (or (<= 0 k@225@01) (not (<= 0 k@225@01))))))
(assert (or (< j@224@01 len@212@01) (not (< j@224@01 len@212@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@224@01)
  (and
    (<= 0 j@224@01)
    (=>
      (< j@224@01 len@212@01)
      (and
        (< j@224@01 len@212@01)
        (=>
          (<= 0 k@225@01)
          (and
            (<= 0 k@225@01)
            (or (< k@225@01 len@212@01) (not (< k@225@01 len@212@01)))))
        (or (<= 0 k@225@01) (not (<= 0 k@225@01)))))
    (or (< j@224@01 len@212@01) (not (< j@224@01 len@212@01))))))
(assert (or (<= 0 j@224@01) (not (<= 0 j@224@01))))
(push) ; 3
; [then-branch: 115 | 0 <= j@224@01 && j@224@01 < len@212@01 && 0 <= k@225@01 && k@225@01 < len@212@01 && j@224@01 != k@225@01 | live]
; [else-branch: 115 | !(0 <= j@224@01 && j@224@01 < len@212@01 && 0 <= k@225@01 && k@225@01 < len@212@01 && j@224@01 != k@225@01) | live]
(push) ; 4
; [then-branch: 115 | 0 <= j@224@01 && j@224@01 < len@212@01 && 0 <= k@225@01 && k@225@01 < len@212@01 && j@224@01 != k@225@01]
(assert (and
  (<= 0 j@224@01)
  (and
    (< j@224@01 len@212@01)
    (and
      (<= 0 k@225@01)
      (and (< k@225@01 len@212@01) (not (= j@224@01 k@225@01)))))))
; [eval] c[j] != c[k]
; [eval] c[j]
(push) ; 5
(assert (not (>= j@224@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< j@224@01 (Seq_length c@211@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] c[k]
(push) ; 5
(assert (not (>= k@225@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@225@01 (Seq_length c@211@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 115 | !(0 <= j@224@01 && j@224@01 < len@212@01 && 0 <= k@225@01 && k@225@01 < len@212@01 && j@224@01 != k@225@01)]
(assert (not
  (and
    (<= 0 j@224@01)
    (and
      (< j@224@01 len@212@01)
      (and
        (<= 0 k@225@01)
        (and (< k@225@01 len@212@01) (not (= j@224@01 k@225@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@224@01)
    (and
      (< j@224@01 len@212@01)
      (and
        (<= 0 k@225@01)
        (and (< k@225@01 len@212@01) (not (= j@224@01 k@225@01))))))
  (and
    (<= 0 j@224@01)
    (< j@224@01 len@212@01)
    (<= 0 k@225@01)
    (< k@225@01 len@212@01)
    (not (= j@224@01 k@225@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@224@01)
      (and
        (< j@224@01 len@212@01)
        (and
          (<= 0 k@225@01)
          (and (< k@225@01 len@212@01) (not (= j@224@01 k@225@01)))))))
  (and
    (<= 0 j@224@01)
    (and
      (< j@224@01 len@212@01)
      (and
        (<= 0 k@225@01)
        (and (< k@225@01 len@212@01) (not (= j@224@01 k@225@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@224@01 Int) (k@225@01 Int)) (!
  (and
    (=>
      (<= 0 j@224@01)
      (and
        (<= 0 j@224@01)
        (=>
          (< j@224@01 len@212@01)
          (and
            (< j@224@01 len@212@01)
            (=>
              (<= 0 k@225@01)
              (and
                (<= 0 k@225@01)
                (or (< k@225@01 len@212@01) (not (< k@225@01 len@212@01)))))
            (or (<= 0 k@225@01) (not (<= 0 k@225@01)))))
        (or (< j@224@01 len@212@01) (not (< j@224@01 len@212@01)))))
    (or (<= 0 j@224@01) (not (<= 0 j@224@01)))
    (=>
      (and
        (<= 0 j@224@01)
        (and
          (< j@224@01 len@212@01)
          (and
            (<= 0 k@225@01)
            (and (< k@225@01 len@212@01) (not (= j@224@01 k@225@01))))))
      (and
        (<= 0 j@224@01)
        (< j@224@01 len@212@01)
        (<= 0 k@225@01)
        (< k@225@01 len@212@01)
        (not (= j@224@01 k@225@01))))
    (or
      (not
        (and
          (<= 0 j@224@01)
          (and
            (< j@224@01 len@212@01)
            (and
              (<= 0 k@225@01)
              (and (< k@225@01 len@212@01) (not (= j@224@01 k@225@01)))))))
      (and
        (<= 0 j@224@01)
        (and
          (< j@224@01 len@212@01)
          (and
            (<= 0 k@225@01)
            (and (< k@225@01 len@212@01) (not (= j@224@01 k@225@01))))))))
  :pattern ((Seq_index c@211@01 j@224@01) (Seq_index c@211@01 k@225@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@182@12@182@102-aux|)))
(assert (forall ((j@224@01 Int) (k@225@01 Int)) (!
  (=>
    (and
      (<= 0 j@224@01)
      (and
        (< j@224@01 len@212@01)
        (and
          (<= 0 k@225@01)
          (and (< k@225@01 len@212@01) (not (= j@224@01 k@225@01))))))
    (not (= (Seq_index c@211@01 j@224@01) (Seq_index c@211@01 k@225@01))))
  :pattern ((Seq_index c@211@01 j@224@01) (Seq_index c@211@01 k@225@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@182@12@182@102|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))))))))
(declare-const i@226@01 Int)
(push) ; 2
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 3
; [then-branch: 116 | !(0 <= i@226@01) | live]
; [else-branch: 116 | 0 <= i@226@01 | live]
(push) ; 4
; [then-branch: 116 | !(0 <= i@226@01)]
(assert (not (<= 0 i@226@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 116 | 0 <= i@226@01]
(assert (<= 0 i@226@01))
; [eval] i < len
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@226@01) (not (<= 0 i@226@01))))
(assert (and (<= 0 i@226@01) (< i@226@01 len@212@01)))
; [eval] c[i]
(push) ; 3
(assert (not (>= i@226@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@226@01 (Seq_length c@211@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@227@01 ($Ref) Int)
(declare-fun img@228@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@226@01 Int)) (!
  (=>
    (and (<= 0 i@226@01) (< i@226@01 len@212@01))
    (or (<= 0 i@226@01) (not (<= 0 i@226@01))))
  :pattern ((Seq_index c@211@01 i@226@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@226@01 Int) (i2@226@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@226@01) (< i1@226@01 len@212@01))
      (and (<= 0 i2@226@01) (< i2@226@01 len@212@01))
      (= (Seq_index c@211@01 i1@226@01) (Seq_index c@211@01 i2@226@01)))
    (= i1@226@01 i2@226@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@226@01 Int)) (!
  (=>
    (and (<= 0 i@226@01) (< i@226@01 len@212@01))
    (and
      (= (inv@227@01 (Seq_index c@211@01 i@226@01)) i@226@01)
      (img@228@01 (Seq_index c@211@01 i@226@01))))
  :pattern ((Seq_index c@211@01 i@226@01))
  :qid |quant-u-6806|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@228@01 r)
      (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@212@01)))
    (= (Seq_index c@211@01 (inv@227@01 r)) r))
  :pattern ((inv@227@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@226@01 Int)) (!
  (=>
    (and (<= 0 i@226@01) (< i@226@01 len@212@01))
    (not (= (Seq_index c@211@01 i@226@01) $Ref.null)))
  :pattern ((Seq_index c@211@01 i@226@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index c@211@01 i@226@01) (Seq_index b@210@01 i@221@01))
    (=
      (and
        (img@228@01 r)
        (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@212@01)))
      (and
        (img@223@01 r)
        (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) len@212@01)))))
  
  :qid |quant-u-6807|))))
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
    (= (Seq_index c@211@01 i@226@01) (Seq_index a@209@01 i@216@01))
    (=
      (and
        (img@228@01 r)
        (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@212@01)))
      (and
        (img@218@01 r)
        (and (<= 0 (inv@217@01 r)) (< (inv@217@01 r) len@212@01)))))
  
  :qid |quant-u-6808|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))))))
  $Snap.unit))
; [eval] (forall tid: Int :: { a[tid] } 0 <= tid && tid < len ==> a[tid].Ref__Integer_value == 0)
(declare-const tid@229@01 Int)
(set-option :timeout 0)
(push) ; 2
; [eval] 0 <= tid && tid < len ==> a[tid].Ref__Integer_value == 0
; [eval] 0 <= tid && tid < len
; [eval] 0 <= tid
(push) ; 3
; [then-branch: 117 | !(0 <= tid@229@01) | live]
; [else-branch: 117 | 0 <= tid@229@01 | live]
(push) ; 4
; [then-branch: 117 | !(0 <= tid@229@01)]
(assert (not (<= 0 tid@229@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 117 | 0 <= tid@229@01]
(assert (<= 0 tid@229@01))
; [eval] tid < len
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 tid@229@01) (not (<= 0 tid@229@01))))
(push) ; 3
; [then-branch: 118 | 0 <= tid@229@01 && tid@229@01 < len@212@01 | live]
; [else-branch: 118 | !(0 <= tid@229@01 && tid@229@01 < len@212@01) | live]
(push) ; 4
; [then-branch: 118 | 0 <= tid@229@01 && tid@229@01 < len@212@01]
(assert (and (<= 0 tid@229@01) (< tid@229@01 len@212@01)))
; [eval] a[tid].Ref__Integer_value == 0
; [eval] a[tid]
(push) ; 5
(assert (not (>= tid@229@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< tid@229@01 (Seq_length a@209@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@230@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@218@01 r)
      (and (<= 0 (inv@217@01 r)) (< (inv@217@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@223@01 r)
      (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@228@01 r)
      (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r))
  :qid |qp.fvfValDef21|)))
(declare-const pm@231@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@231@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@218@01 r)
            (and (<= 0 (inv@217@01 r)) (< (inv@217@01 r) len@212@01)))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@223@01 r)
            (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) len@212@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and
          (img@228@01 r)
          (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@212@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@231@01  $FPM) r))
  :qid |qp.resPrmSumDef22|)))
(push) ; 5
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@231@01  $FPM) (Seq_index
    a@209@01
    tid@229@01)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 118 | !(0 <= tid@229@01 && tid@229@01 < len@212@01)]
(assert (not (and (<= 0 tid@229@01) (< tid@229@01 len@212@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@218@01 r)
      (and (<= 0 (inv@217@01 r)) (< (inv@217@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@223@01 r)
      (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@228@01 r)
      (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@231@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@218@01 r)
            (and (<= 0 (inv@217@01 r)) (< (inv@217@01 r) len@212@01)))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@223@01 r)
            (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) len@212@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and
          (img@228@01 r)
          (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@212@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@231@01  $FPM) r))
  :qid |qp.resPrmSumDef22|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 tid@229@01) (< tid@229@01 len@212@01)))
  (and (<= 0 tid@229@01) (< tid@229@01 len@212@01))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@218@01 r)
      (and (<= 0 (inv@217@01 r)) (< (inv@217@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@223@01 r)
      (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@228@01 r)
      (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@231@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@218@01 r)
            (and (<= 0 (inv@217@01 r)) (< (inv@217@01 r) len@212@01)))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@223@01 r)
            (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) len@212@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and
          (img@228@01 r)
          (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@212@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@231@01  $FPM) r))
  :qid |qp.resPrmSumDef22|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((tid@229@01 Int)) (!
  (and
    (or (<= 0 tid@229@01) (not (<= 0 tid@229@01)))
    (or
      (not (and (<= 0 tid@229@01) (< tid@229@01 len@212@01)))
      (and (<= 0 tid@229@01) (< tid@229@01 len@212@01))))
  :pattern ((Seq_index a@209@01 tid@229@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@184@13@184@94-aux|)))
(assert (forall ((tid@229@01 Int)) (!
  (=>
    (and (<= 0 tid@229@01) (< tid@229@01 len@212@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) (Seq_index
        a@209@01
        tid@229@01))
      0))
  :pattern ((Seq_index a@209@01 tid@229@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@184@13@184@94|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))))))
  $Snap.unit))
; [eval] (forall tid: Int :: { b[tid] } 0 <= tid && tid < len ==> b[tid].Ref__Integer_value == tid)
(declare-const tid@232@01 Int)
(push) ; 2
; [eval] 0 <= tid && tid < len ==> b[tid].Ref__Integer_value == tid
; [eval] 0 <= tid && tid < len
; [eval] 0 <= tid
(push) ; 3
; [then-branch: 119 | !(0 <= tid@232@01) | live]
; [else-branch: 119 | 0 <= tid@232@01 | live]
(push) ; 4
; [then-branch: 119 | !(0 <= tid@232@01)]
(assert (not (<= 0 tid@232@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 119 | 0 <= tid@232@01]
(assert (<= 0 tid@232@01))
; [eval] tid < len
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 tid@232@01) (not (<= 0 tid@232@01))))
(push) ; 3
; [then-branch: 120 | 0 <= tid@232@01 && tid@232@01 < len@212@01 | live]
; [else-branch: 120 | !(0 <= tid@232@01 && tid@232@01 < len@212@01) | live]
(push) ; 4
; [then-branch: 120 | 0 <= tid@232@01 && tid@232@01 < len@212@01]
(assert (and (<= 0 tid@232@01) (< tid@232@01 len@212@01)))
; [eval] b[tid].Ref__Integer_value == tid
; [eval] b[tid]
(push) ; 5
(assert (not (>= tid@232@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< tid@232@01 (Seq_length b@210@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@218@01 r)
        (and (<= 0 (inv@217@01 r)) (< (inv@217@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r))
    :qid |qp.fvfValDef19|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@223@01 r)
        (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r))
    :qid |qp.fvfValDef20|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@228@01 r)
        (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r))
    :qid |qp.fvfValDef21|))))
(push) ; 5
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@218@01 (Seq_index b@210@01 tid@232@01))
          (and
            (<= 0 (inv@217@01 (Seq_index b@210@01 tid@232@01)))
            (< (inv@217@01 (Seq_index b@210@01 tid@232@01)) len@212@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@223@01 (Seq_index b@210@01 tid@232@01))
          (and
            (<= 0 (inv@222@01 (Seq_index b@210@01 tid@232@01)))
            (< (inv@222@01 (Seq_index b@210@01 tid@232@01)) len@212@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (and
        (img@228@01 (Seq_index b@210@01 tid@232@01))
        (and
          (<= 0 (inv@227@01 (Seq_index b@210@01 tid@232@01)))
          (< (inv@227@01 (Seq_index b@210@01 tid@232@01)) len@212@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 120 | !(0 <= tid@232@01 && tid@232@01 < len@212@01)]
(assert (not (and (<= 0 tid@232@01) (< tid@232@01 len@212@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@218@01 r)
      (and (<= 0 (inv@217@01 r)) (< (inv@217@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@223@01 r)
      (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@228@01 r)
      (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r))
  :qid |qp.fvfValDef21|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 tid@232@01) (< tid@232@01 len@212@01)))
  (and (<= 0 tid@232@01) (< tid@232@01 len@212@01))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@218@01 r)
      (and (<= 0 (inv@217@01 r)) (< (inv@217@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@223@01 r)
      (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@228@01 r)
      (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r))
  :qid |qp.fvfValDef21|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((tid@232@01 Int)) (!
  (and
    (or (<= 0 tid@232@01) (not (<= 0 tid@232@01)))
    (or
      (not (and (<= 0 tid@232@01) (< tid@232@01 len@212@01)))
      (and (<= 0 tid@232@01) (< tid@232@01 len@212@01))))
  :pattern ((Seq_index b@210@01 tid@232@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@185@13@185@96-aux|)))
(assert (forall ((tid@232@01 Int)) (!
  (=>
    (and (<= 0 tid@232@01) (< tid@232@01 len@212@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) (Seq_index
        b@210@01
        tid@232@01))
      tid@232@01))
  :pattern ((Seq_index b@210@01 tid@232@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@185@13@185@96|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@233@01 $Snap)
(assert (= $t@233@01 ($Snap.combine ($Snap.first $t@233@01) ($Snap.second $t@233@01))))
(assert (= ($Snap.first $t@233@01) $Snap.unit))
; [eval] |a| == len
; [eval] |a|
(assert (=
  ($Snap.second $t@233@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@233@01))
    ($Snap.second ($Snap.second $t@233@01)))))
(declare-const i@234@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 121 | !(0 <= i@234@01) | live]
; [else-branch: 121 | 0 <= i@234@01 | live]
(push) ; 5
; [then-branch: 121 | !(0 <= i@234@01)]
(assert (not (<= 0 i@234@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 121 | 0 <= i@234@01]
(assert (<= 0 i@234@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@234@01) (not (<= 0 i@234@01))))
(assert (and (<= 0 i@234@01) (< i@234@01 len@212@01)))
; [eval] a[i]
(push) ; 4
(assert (not (>= i@234@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@234@01 (Seq_length a@209@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@235@01 ($Ref) Int)
(declare-fun img@236@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@234@01 Int)) (!
  (=>
    (and (<= 0 i@234@01) (< i@234@01 len@212@01))
    (or (<= 0 i@234@01) (not (<= 0 i@234@01))))
  :pattern ((Seq_index a@209@01 i@234@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@234@01 Int) (i2@234@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@234@01) (< i1@234@01 len@212@01))
      (and (<= 0 i2@234@01) (< i2@234@01 len@212@01))
      (= (Seq_index a@209@01 i1@234@01) (Seq_index a@209@01 i2@234@01)))
    (= i1@234@01 i2@234@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@234@01 Int)) (!
  (=>
    (and (<= 0 i@234@01) (< i@234@01 len@212@01))
    (and
      (= (inv@235@01 (Seq_index a@209@01 i@234@01)) i@234@01)
      (img@236@01 (Seq_index a@209@01 i@234@01))))
  :pattern ((Seq_index a@209@01 i@234@01))
  :qid |quant-u-6810|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@236@01 r)
      (and (<= 0 (inv@235@01 r)) (< (inv@235@01 r) len@212@01)))
    (= (Seq_index a@209@01 (inv@235@01 r)) r))
  :pattern ((inv@235@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@234@01 Int)) (!
  (=>
    (and (<= 0 i@234@01) (< i@234@01 len@212@01))
    (not (= (Seq_index a@209@01 i@234@01) $Ref.null)))
  :pattern ((Seq_index a@209@01 i@234@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second $t@233@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@233@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@233@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@233@01))) $Snap.unit))
; [eval] |b| == len
; [eval] |b|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@233@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@233@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01)))))))
(declare-const i@237@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 122 | !(0 <= i@237@01) | live]
; [else-branch: 122 | 0 <= i@237@01 | live]
(push) ; 5
; [then-branch: 122 | !(0 <= i@237@01)]
(assert (not (<= 0 i@237@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 122 | 0 <= i@237@01]
(assert (<= 0 i@237@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@237@01) (not (<= 0 i@237@01))))
(assert (and (<= 0 i@237@01) (< i@237@01 len@212@01)))
; [eval] b[i]
(push) ; 4
(assert (not (>= i@237@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@237@01 (Seq_length b@210@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@238@01 ($Ref) Int)
(declare-fun img@239@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@237@01 Int)) (!
  (=>
    (and (<= 0 i@237@01) (< i@237@01 len@212@01))
    (or (<= 0 i@237@01) (not (<= 0 i@237@01))))
  :pattern ((Seq_index b@210@01 i@237@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@237@01 Int) (i2@237@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@237@01) (< i1@237@01 len@212@01))
      (and (<= 0 i2@237@01) (< i2@237@01 len@212@01))
      (= (Seq_index b@210@01 i1@237@01) (Seq_index b@210@01 i2@237@01)))
    (= i1@237@01 i2@237@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@237@01 Int)) (!
  (=>
    (and (<= 0 i@237@01) (< i@237@01 len@212@01))
    (and
      (= (inv@238@01 (Seq_index b@210@01 i@237@01)) i@237@01)
      (img@239@01 (Seq_index b@210@01 i@237@01))))
  :pattern ((Seq_index b@210@01 i@237@01))
  :qid |quant-u-6812|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@239@01 r)
      (and (<= 0 (inv@238@01 r)) (< (inv@238@01 r) len@212@01)))
    (= (Seq_index b@210@01 (inv@238@01 r)) r))
  :pattern ((inv@238@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@237@01 Int)) (!
  (=>
    (and (<= 0 i@237@01) (< i@237@01 len@212@01))
    (not (= (Seq_index b@210@01 i@237@01) $Ref.null)))
  :pattern ((Seq_index b@210@01 i@237@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index b@210@01 i@237@01) (Seq_index a@209@01 i@234@01))
    (=
      (and
        (img@239@01 r)
        (and (<= 0 (inv@238@01 r)) (< (inv@238@01 r) len@212@01)))
      (and
        (img@236@01 r)
        (and (<= 0 (inv@235@01 r)) (< (inv@235@01 r) len@212@01)))))
  
  :qid |quant-u-6813|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01)))))
  $Snap.unit))
; [eval] |c| == len
; [eval] |c|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01)))))))))
(declare-const i@240@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 123 | !(0 <= i@240@01) | live]
; [else-branch: 123 | 0 <= i@240@01 | live]
(push) ; 5
; [then-branch: 123 | !(0 <= i@240@01)]
(assert (not (<= 0 i@240@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 123 | 0 <= i@240@01]
(assert (<= 0 i@240@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@240@01) (not (<= 0 i@240@01))))
(assert (and (<= 0 i@240@01) (< i@240@01 len@212@01)))
; [eval] c[i]
(push) ; 4
(assert (not (>= i@240@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@240@01 (Seq_length c@211@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@241@01 ($Ref) Int)
(declare-fun img@242@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@240@01 Int)) (!
  (=>
    (and (<= 0 i@240@01) (< i@240@01 len@212@01))
    (or (<= 0 i@240@01) (not (<= 0 i@240@01))))
  :pattern ((Seq_index c@211@01 i@240@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@240@01 Int) (i2@240@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@240@01) (< i1@240@01 len@212@01))
      (and (<= 0 i2@240@01) (< i2@240@01 len@212@01))
      (= (Seq_index c@211@01 i1@240@01) (Seq_index c@211@01 i2@240@01)))
    (= i1@240@01 i2@240@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@240@01 Int)) (!
  (=>
    (and (<= 0 i@240@01) (< i@240@01 len@212@01))
    (and
      (= (inv@241@01 (Seq_index c@211@01 i@240@01)) i@240@01)
      (img@242@01 (Seq_index c@211@01 i@240@01))))
  :pattern ((Seq_index c@211@01 i@240@01))
  :qid |quant-u-6815|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@242@01 r)
      (and (<= 0 (inv@241@01 r)) (< (inv@241@01 r) len@212@01)))
    (= (Seq_index c@211@01 (inv@241@01 r)) r))
  :pattern ((inv@241@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@240@01 Int)) (!
  (=>
    (and (<= 0 i@240@01) (< i@240@01 len@212@01))
    (not (= (Seq_index c@211@01 i@240@01) $Ref.null)))
  :pattern ((Seq_index c@211@01 i@240@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index c@211@01 i@240@01) (Seq_index b@210@01 i@237@01))
    (=
      (and
        (img@242@01 r)
        (and (<= 0 (inv@241@01 r)) (< (inv@241@01 r) len@212@01)))
      (and
        (img@239@01 r)
        (and (<= 0 (inv@238@01 r)) (< (inv@238@01 r) len@212@01)))))
  
  :qid |quant-u-6816|))))
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
    (= (Seq_index c@211@01 i@240@01) (Seq_index a@209@01 i@234@01))
    (=
      (and
        (img@242@01 r)
        (and (<= 0 (inv@241@01 r)) (< (inv@241@01 r) len@212@01)))
      (and
        (img@236@01 r)
        (and (<= 0 (inv@235@01 r)) (< (inv@235@01 r) len@212@01)))))
  
  :qid |quant-u-6817|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01)))))))
  $Snap.unit))
; [eval] (forall i: Int :: { a[i] } 0 <= i && i < len ==> a[i].Ref__Integer_value == i + 1)
(declare-const i@243@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= i && i < len ==> a[i].Ref__Integer_value == i + 1
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 124 | !(0 <= i@243@01) | live]
; [else-branch: 124 | 0 <= i@243@01 | live]
(push) ; 5
; [then-branch: 124 | !(0 <= i@243@01)]
(assert (not (<= 0 i@243@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 124 | 0 <= i@243@01]
(assert (<= 0 i@243@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@243@01) (not (<= 0 i@243@01))))
(push) ; 4
; [then-branch: 125 | 0 <= i@243@01 && i@243@01 < len@212@01 | live]
; [else-branch: 125 | !(0 <= i@243@01 && i@243@01 < len@212@01) | live]
(push) ; 5
; [then-branch: 125 | 0 <= i@243@01 && i@243@01 < len@212@01]
(assert (and (<= 0 i@243@01) (< i@243@01 len@212@01)))
; [eval] a[i].Ref__Integer_value == i + 1
; [eval] a[i]
(push) ; 6
(assert (not (>= i@243@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@243@01 (Seq_length a@209@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@244@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@236@01 r)
      (and (<= 0 (inv@235@01 r)) (< (inv@235@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@233@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@233@01))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@239@01 r)
      (and (<= 0 (inv@238@01 r)) (< (inv@238@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@233@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@233@01))))) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@242@01 r)
      (and (<= 0 (inv@241@01 r)) (< (inv@241@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01))))))) r))
  :qid |qp.fvfValDef25|)))
(declare-const pm@245@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@245@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@236@01 r)
            (and (<= 0 (inv@235@01 r)) (< (inv@235@01 r) len@212@01)))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@239@01 r)
            (and (<= 0 (inv@238@01 r)) (< (inv@238@01 r) len@212@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and
          (img@242@01 r)
          (and (<= 0 (inv@241@01 r)) (< (inv@241@01 r) len@212@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@245@01  $FPM) r))
  :qid |qp.resPrmSumDef26|)))
(push) ; 6
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@245@01  $FPM) (Seq_index
    a@209@01
    i@243@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] i + 1
(pop) ; 5
(push) ; 5
; [else-branch: 125 | !(0 <= i@243@01 && i@243@01 < len@212@01)]
(assert (not (and (<= 0 i@243@01) (< i@243@01 len@212@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@236@01 r)
      (and (<= 0 (inv@235@01 r)) (< (inv@235@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@233@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@233@01))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@239@01 r)
      (and (<= 0 (inv@238@01 r)) (< (inv@238@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@233@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@233@01))))) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@242@01 r)
      (and (<= 0 (inv@241@01 r)) (< (inv@241@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01))))))) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@245@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@236@01 r)
            (and (<= 0 (inv@235@01 r)) (< (inv@235@01 r) len@212@01)))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@239@01 r)
            (and (<= 0 (inv@238@01 r)) (< (inv@238@01 r) len@212@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and
          (img@242@01 r)
          (and (<= 0 (inv@241@01 r)) (< (inv@241@01 r) len@212@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@245@01  $FPM) r))
  :qid |qp.resPrmSumDef26|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@243@01) (< i@243@01 len@212@01)))
  (and (<= 0 i@243@01) (< i@243@01 len@212@01))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@236@01 r)
      (and (<= 0 (inv@235@01 r)) (< (inv@235@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@233@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@233@01))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@239@01 r)
      (and (<= 0 (inv@238@01 r)) (< (inv@238@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@233@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@233@01))))) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@242@01 r)
      (and (<= 0 (inv@241@01 r)) (< (inv@241@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01))))))) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@245@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@236@01 r)
            (and (<= 0 (inv@235@01 r)) (< (inv@235@01 r) len@212@01)))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@239@01 r)
            (and (<= 0 (inv@238@01 r)) (< (inv@238@01 r) len@212@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and
          (img@242@01 r)
          (and (<= 0 (inv@241@01 r)) (< (inv@241@01 r) len@212@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@245@01  $FPM) r))
  :qid |qp.resPrmSumDef26|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@243@01 Int)) (!
  (and
    (or (<= 0 i@243@01) (not (<= 0 i@243@01)))
    (or
      (not (and (<= 0 i@243@01) (< i@243@01 len@212@01)))
      (and (<= 0 i@243@01) (< i@243@01 len@212@01))))
  :pattern ((Seq_index a@209@01 i@243@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@192@12@192@89-aux|)))
(assert (forall ((i@243@01 Int)) (!
  (=>
    (and (<= 0 i@243@01) (< i@243@01 len@212@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) (Seq_index
        a@209@01
        i@243@01))
      (+ i@243@01 1)))
  :pattern ((Seq_index a@209@01 i@243@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@192@12@192@89|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01))))))))
  $Snap.unit))
; [eval] (forall i: Int :: { b[i] } 0 <= i && i < len ==> b[i].Ref__Integer_value == i)
(declare-const i@246@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len ==> b[i].Ref__Integer_value == i
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 126 | !(0 <= i@246@01) | live]
; [else-branch: 126 | 0 <= i@246@01 | live]
(push) ; 5
; [then-branch: 126 | !(0 <= i@246@01)]
(assert (not (<= 0 i@246@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 126 | 0 <= i@246@01]
(assert (<= 0 i@246@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@246@01) (not (<= 0 i@246@01))))
(push) ; 4
; [then-branch: 127 | 0 <= i@246@01 && i@246@01 < len@212@01 | live]
; [else-branch: 127 | !(0 <= i@246@01 && i@246@01 < len@212@01) | live]
(push) ; 5
; [then-branch: 127 | 0 <= i@246@01 && i@246@01 < len@212@01]
(assert (and (<= 0 i@246@01) (< i@246@01 len@212@01)))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 6
(assert (not (>= i@246@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@246@01 (Seq_length b@210@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@236@01 r)
        (and (<= 0 (inv@235@01 r)) (< (inv@235@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@233@01))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@233@01))) r))
    :qid |qp.fvfValDef23|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@239@01 r)
        (and (<= 0 (inv@238@01 r)) (< (inv@238@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@233@01))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@233@01))))) r))
    :qid |qp.fvfValDef24|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@242@01 r)
        (and (<= 0 (inv@241@01 r)) (< (inv@241@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01))))))) r))
    :qid |qp.fvfValDef25|))))
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@236@01 (Seq_index b@210@01 i@246@01))
          (and
            (<= 0 (inv@235@01 (Seq_index b@210@01 i@246@01)))
            (< (inv@235@01 (Seq_index b@210@01 i@246@01)) len@212@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@239@01 (Seq_index b@210@01 i@246@01))
          (and
            (<= 0 (inv@238@01 (Seq_index b@210@01 i@246@01)))
            (< (inv@238@01 (Seq_index b@210@01 i@246@01)) len@212@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (and
        (img@242@01 (Seq_index b@210@01 i@246@01))
        (and
          (<= 0 (inv@241@01 (Seq_index b@210@01 i@246@01)))
          (< (inv@241@01 (Seq_index b@210@01 i@246@01)) len@212@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 127 | !(0 <= i@246@01 && i@246@01 < len@212@01)]
(assert (not (and (<= 0 i@246@01) (< i@246@01 len@212@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@236@01 r)
      (and (<= 0 (inv@235@01 r)) (< (inv@235@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@233@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@233@01))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@239@01 r)
      (and (<= 0 (inv@238@01 r)) (< (inv@238@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@233@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@233@01))))) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@242@01 r)
      (and (<= 0 (inv@241@01 r)) (< (inv@241@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01))))))) r))
  :qid |qp.fvfValDef25|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@246@01) (< i@246@01 len@212@01)))
  (and (<= 0 i@246@01) (< i@246@01 len@212@01))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@236@01 r)
      (and (<= 0 (inv@235@01 r)) (< (inv@235@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@233@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@233@01))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@239@01 r)
      (and (<= 0 (inv@238@01 r)) (< (inv@238@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@233@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@233@01))))) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@242@01 r)
      (and (<= 0 (inv@241@01 r)) (< (inv@241@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01))))))) r))
  :qid |qp.fvfValDef25|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@246@01 Int)) (!
  (and
    (or (<= 0 i@246@01) (not (<= 0 i@246@01)))
    (or
      (not (and (<= 0 i@246@01) (< i@246@01 len@212@01)))
      (and (<= 0 i@246@01) (< i@246@01 len@212@01))))
  :pattern ((Seq_index b@210@01 i@246@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@193@12@193@85-aux|)))
(assert (forall ((i@246@01 Int)) (!
  (=>
    (and (<= 0 i@246@01) (< i@246@01 len@212@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) (Seq_index
        b@210@01
        i@246@01))
      i@246@01))
  :pattern ((Seq_index b@210@01 i@246@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@193@12@193@85|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01))))))))
  $Snap.unit))
; [eval] (forall i: Int :: { c[i] } 0 <= i && i < len - 1 ==> c[i].Ref__Integer_value == 2)
(declare-const i@247@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len - 1 ==> c[i].Ref__Integer_value == 2
; [eval] 0 <= i && i < len - 1
; [eval] 0 <= i
(push) ; 4
; [then-branch: 128 | !(0 <= i@247@01) | live]
; [else-branch: 128 | 0 <= i@247@01 | live]
(push) ; 5
; [then-branch: 128 | !(0 <= i@247@01)]
(assert (not (<= 0 i@247@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 128 | 0 <= i@247@01]
(assert (<= 0 i@247@01))
; [eval] i < len - 1
; [eval] len - 1
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@247@01) (not (<= 0 i@247@01))))
(push) ; 4
; [then-branch: 129 | 0 <= i@247@01 && i@247@01 < len@212@01 - 1 | live]
; [else-branch: 129 | !(0 <= i@247@01 && i@247@01 < len@212@01 - 1) | live]
(push) ; 5
; [then-branch: 129 | 0 <= i@247@01 && i@247@01 < len@212@01 - 1]
(assert (and (<= 0 i@247@01) (< i@247@01 (- len@212@01 1))))
; [eval] c[i].Ref__Integer_value == 2
; [eval] c[i]
(push) ; 6
(assert (not (>= i@247@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@247@01 (Seq_length c@211@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@236@01 r)
        (and (<= 0 (inv@235@01 r)) (< (inv@235@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@233@01))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@233@01))) r))
    :qid |qp.fvfValDef23|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@239@01 r)
        (and (<= 0 (inv@238@01 r)) (< (inv@238@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@233@01))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@233@01))))) r))
    :qid |qp.fvfValDef24|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@242@01 r)
        (and (<= 0 (inv@241@01 r)) (< (inv@241@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01))))))) r))
    :qid |qp.fvfValDef25|))))
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@236@01 (Seq_index c@211@01 i@247@01))
          (and
            (<= 0 (inv@235@01 (Seq_index c@211@01 i@247@01)))
            (< (inv@235@01 (Seq_index c@211@01 i@247@01)) len@212@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@239@01 (Seq_index c@211@01 i@247@01))
          (and
            (<= 0 (inv@238@01 (Seq_index c@211@01 i@247@01)))
            (< (inv@238@01 (Seq_index c@211@01 i@247@01)) len@212@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (and
        (img@242@01 (Seq_index c@211@01 i@247@01))
        (and
          (<= 0 (inv@241@01 (Seq_index c@211@01 i@247@01)))
          (< (inv@241@01 (Seq_index c@211@01 i@247@01)) len@212@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 129 | !(0 <= i@247@01 && i@247@01 < len@212@01 - 1)]
(assert (not (and (<= 0 i@247@01) (< i@247@01 (- len@212@01 1)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@236@01 r)
      (and (<= 0 (inv@235@01 r)) (< (inv@235@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@233@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@233@01))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@239@01 r)
      (and (<= 0 (inv@238@01 r)) (< (inv@238@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@233@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@233@01))))) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@242@01 r)
      (and (<= 0 (inv@241@01 r)) (< (inv@241@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01))))))) r))
  :qid |qp.fvfValDef25|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@247@01) (< i@247@01 (- len@212@01 1))))
  (and (<= 0 i@247@01) (< i@247@01 (- len@212@01 1)))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@236@01 r)
      (and (<= 0 (inv@235@01 r)) (< (inv@235@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@233@01))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second $t@233@01))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@239@01 r)
      (and (<= 0 (inv@238@01 r)) (< (inv@238@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@233@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@233@01))))) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@242@01 r)
      (and (<= 0 (inv@241@01 r)) (< (inv@241@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@233@01))))))) r))
  :qid |qp.fvfValDef25|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@247@01 Int)) (!
  (and
    (or (<= 0 i@247@01) (not (<= 0 i@247@01)))
    (or
      (not (and (<= 0 i@247@01) (< i@247@01 (- len@212@01 1))))
      (and (<= 0 i@247@01) (< i@247@01 (- len@212@01 1)))))
  :pattern ((Seq_index c@211@01 i@247@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@194@12@194@89-aux|)))
(assert (forall ((i@247@01 Int)) (!
  (=>
    (and (<= 0 i@247@01) (< i@247@01 (- len@212@01 1)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@244@01  $FVF<Ref__Integer_value>) (Seq_index
        c@211@01
        i@247@01))
      2))
  :pattern ((Seq_index c@211@01 i@247@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@194@12@194@89|)))
(pop) ; 2
(push) ; 2
; [exec]
; Ref__loop_main_72(diz, current_thread_id, len, b, a, c)
; [eval] diz != null
; [eval] current_thread_id >= 0
; [eval] |a| == len
; [eval] |a|
; [eval] |b| == len
; [eval] |b|
; [eval] |c| == len
; [eval] |c|
; [eval] (forall j: Int, k: Int :: { a[j], a[k] } 0 <= j && (j < len && (0 <= k && (k < len && j != k))) ==> a[j] != a[k])
(declare-const j@248@01 Int)
(declare-const k@249@01 Int)
(push) ; 3
; [eval] 0 <= j && (j < len && (0 <= k && (k < len && j != k))) ==> a[j] != a[k]
; [eval] 0 <= j && (j < len && (0 <= k && (k < len && j != k)))
; [eval] 0 <= j
(push) ; 4
; [then-branch: 130 | !(0 <= j@248@01) | live]
; [else-branch: 130 | 0 <= j@248@01 | live]
(push) ; 5
; [then-branch: 130 | !(0 <= j@248@01)]
(assert (not (<= 0 j@248@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 130 | 0 <= j@248@01]
(assert (<= 0 j@248@01))
; [eval] j < len
(push) ; 6
; [then-branch: 131 | !(j@248@01 < len@212@01) | live]
; [else-branch: 131 | j@248@01 < len@212@01 | live]
(push) ; 7
; [then-branch: 131 | !(j@248@01 < len@212@01)]
(assert (not (< j@248@01 len@212@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 131 | j@248@01 < len@212@01]
(assert (< j@248@01 len@212@01))
; [eval] 0 <= k
(push) ; 8
; [then-branch: 132 | !(0 <= k@249@01) | live]
; [else-branch: 132 | 0 <= k@249@01 | live]
(push) ; 9
; [then-branch: 132 | !(0 <= k@249@01)]
(assert (not (<= 0 k@249@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 132 | 0 <= k@249@01]
(assert (<= 0 k@249@01))
; [eval] k < len
(push) ; 10
; [then-branch: 133 | !(k@249@01 < len@212@01) | live]
; [else-branch: 133 | k@249@01 < len@212@01 | live]
(push) ; 11
; [then-branch: 133 | !(k@249@01 < len@212@01)]
(assert (not (< k@249@01 len@212@01)))
(pop) ; 11
(push) ; 11
; [else-branch: 133 | k@249@01 < len@212@01]
(assert (< k@249@01 len@212@01))
; [eval] j != k
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (< k@249@01 len@212@01) (not (< k@249@01 len@212@01))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@249@01)
  (and
    (<= 0 k@249@01)
    (or (< k@249@01 len@212@01) (not (< k@249@01 len@212@01))))))
(assert (or (<= 0 k@249@01) (not (<= 0 k@249@01))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@248@01 len@212@01)
  (and
    (< j@248@01 len@212@01)
    (=>
      (<= 0 k@249@01)
      (and
        (<= 0 k@249@01)
        (or (< k@249@01 len@212@01) (not (< k@249@01 len@212@01)))))
    (or (<= 0 k@249@01) (not (<= 0 k@249@01))))))
(assert (or (< j@248@01 len@212@01) (not (< j@248@01 len@212@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@248@01)
  (and
    (<= 0 j@248@01)
    (=>
      (< j@248@01 len@212@01)
      (and
        (< j@248@01 len@212@01)
        (=>
          (<= 0 k@249@01)
          (and
            (<= 0 k@249@01)
            (or (< k@249@01 len@212@01) (not (< k@249@01 len@212@01)))))
        (or (<= 0 k@249@01) (not (<= 0 k@249@01)))))
    (or (< j@248@01 len@212@01) (not (< j@248@01 len@212@01))))))
(assert (or (<= 0 j@248@01) (not (<= 0 j@248@01))))
(push) ; 4
; [then-branch: 134 | 0 <= j@248@01 && j@248@01 < len@212@01 && 0 <= k@249@01 && k@249@01 < len@212@01 && j@248@01 != k@249@01 | live]
; [else-branch: 134 | !(0 <= j@248@01 && j@248@01 < len@212@01 && 0 <= k@249@01 && k@249@01 < len@212@01 && j@248@01 != k@249@01) | live]
(push) ; 5
; [then-branch: 134 | 0 <= j@248@01 && j@248@01 < len@212@01 && 0 <= k@249@01 && k@249@01 < len@212@01 && j@248@01 != k@249@01]
(assert (and
  (<= 0 j@248@01)
  (and
    (< j@248@01 len@212@01)
    (and
      (<= 0 k@249@01)
      (and (< k@249@01 len@212@01) (not (= j@248@01 k@249@01)))))))
; [eval] a[j] != a[k]
; [eval] a[j]
(push) ; 6
(assert (not (>= j@248@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< j@248@01 (Seq_length a@209@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] a[k]
(push) ; 6
(assert (not (>= k@249@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k@249@01 (Seq_length a@209@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 134 | !(0 <= j@248@01 && j@248@01 < len@212@01 && 0 <= k@249@01 && k@249@01 < len@212@01 && j@248@01 != k@249@01)]
(assert (not
  (and
    (<= 0 j@248@01)
    (and
      (< j@248@01 len@212@01)
      (and
        (<= 0 k@249@01)
        (and (< k@249@01 len@212@01) (not (= j@248@01 k@249@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@248@01)
    (and
      (< j@248@01 len@212@01)
      (and
        (<= 0 k@249@01)
        (and (< k@249@01 len@212@01) (not (= j@248@01 k@249@01))))))
  (and
    (<= 0 j@248@01)
    (< j@248@01 len@212@01)
    (<= 0 k@249@01)
    (< k@249@01 len@212@01)
    (not (= j@248@01 k@249@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@248@01)
      (and
        (< j@248@01 len@212@01)
        (and
          (<= 0 k@249@01)
          (and (< k@249@01 len@212@01) (not (= j@248@01 k@249@01)))))))
  (and
    (<= 0 j@248@01)
    (and
      (< j@248@01 len@212@01)
      (and
        (<= 0 k@249@01)
        (and (< k@249@01 len@212@01) (not (= j@248@01 k@249@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@248@01 Int) (k@249@01 Int)) (!
  (and
    (=>
      (<= 0 j@248@01)
      (and
        (<= 0 j@248@01)
        (=>
          (< j@248@01 len@212@01)
          (and
            (< j@248@01 len@212@01)
            (=>
              (<= 0 k@249@01)
              (and
                (<= 0 k@249@01)
                (or (< k@249@01 len@212@01) (not (< k@249@01 len@212@01)))))
            (or (<= 0 k@249@01) (not (<= 0 k@249@01)))))
        (or (< j@248@01 len@212@01) (not (< j@248@01 len@212@01)))))
    (or (<= 0 j@248@01) (not (<= 0 j@248@01)))
    (=>
      (and
        (<= 0 j@248@01)
        (and
          (< j@248@01 len@212@01)
          (and
            (<= 0 k@249@01)
            (and (< k@249@01 len@212@01) (not (= j@248@01 k@249@01))))))
      (and
        (<= 0 j@248@01)
        (< j@248@01 len@212@01)
        (<= 0 k@249@01)
        (< k@249@01 len@212@01)
        (not (= j@248@01 k@249@01))))
    (or
      (not
        (and
          (<= 0 j@248@01)
          (and
            (< j@248@01 len@212@01)
            (and
              (<= 0 k@249@01)
              (and (< k@249@01 len@212@01) (not (= j@248@01 k@249@01)))))))
      (and
        (<= 0 j@248@01)
        (and
          (< j@248@01 len@212@01)
          (and
            (<= 0 k@249@01)
            (and (< k@249@01 len@212@01) (not (= j@248@01 k@249@01))))))))
  :pattern ((Seq_index a@209@01 j@248@01) (Seq_index a@209@01 k@249@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@62@12@62@102-aux|)))
(push) ; 3
(assert (not (forall ((j@248@01 Int) (k@249@01 Int)) (!
  (=>
    (and
      (<= 0 j@248@01)
      (and
        (< j@248@01 len@212@01)
        (and
          (<= 0 k@249@01)
          (and (< k@249@01 len@212@01) (not (= j@248@01 k@249@01))))))
    (not (= (Seq_index a@209@01 j@248@01) (Seq_index a@209@01 k@249@01))))
  :pattern ((Seq_index a@209@01 j@248@01) (Seq_index a@209@01 k@249@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@62@12@62@102|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((j@248@01 Int) (k@249@01 Int)) (!
  (=>
    (and
      (<= 0 j@248@01)
      (and
        (< j@248@01 len@212@01)
        (and
          (<= 0 k@249@01)
          (and (< k@249@01 len@212@01) (not (= j@248@01 k@249@01))))))
    (not (= (Seq_index a@209@01 j@248@01) (Seq_index a@209@01 k@249@01))))
  :pattern ((Seq_index a@209@01 j@248@01) (Seq_index a@209@01 k@249@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@62@12@62@102|)))
(declare-const i@250@01 Int)
(push) ; 3
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 4
; [then-branch: 135 | !(0 <= i@250@01) | live]
; [else-branch: 135 | 0 <= i@250@01 | live]
(push) ; 5
; [then-branch: 135 | !(0 <= i@250@01)]
(assert (not (<= 0 i@250@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 135 | 0 <= i@250@01]
(assert (<= 0 i@250@01))
; [eval] i < len
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@250@01) (not (<= 0 i@250@01))))
(assert (and (<= 0 i@250@01) (< i@250@01 len@212@01)))
; [eval] a[i]
(push) ; 4
(assert (not (>= i@250@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@250@01 (Seq_length a@209@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@251@01 ($Ref) Int)
(declare-fun img@252@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@250@01 Int)) (!
  (=>
    (and (<= 0 i@250@01) (< i@250@01 len@212@01))
    (or (<= 0 i@250@01) (not (<= 0 i@250@01))))
  :pattern ((Seq_index a@209@01 i@250@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@250@01 Int) (i2@250@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@250@01) (< i1@250@01 len@212@01))
      (and (<= 0 i2@250@01) (< i2@250@01 len@212@01))
      (= (Seq_index a@209@01 i1@250@01) (Seq_index a@209@01 i2@250@01)))
    (= i1@250@01 i2@250@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@250@01 Int)) (!
  (=>
    (and (<= 0 i@250@01) (< i@250@01 len@212@01))
    (and
      (= (inv@251@01 (Seq_index a@209@01 i@250@01)) i@250@01)
      (img@252@01 (Seq_index a@209@01 i@250@01))))
  :pattern ((Seq_index a@209@01 i@250@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@252@01 r)
      (and (<= 0 (inv@251@01 r)) (< (inv@251@01 r) len@212@01)))
    (= (Seq_index a@209@01 (inv@251@01 r)) r))
  :pattern ((inv@251@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@250@01 Int)) (!
  (= (Seq_index a@209@01 i@250@01) (Seq_index b@210@01 i@250@01))
  
  :qid |quant-u-6819|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@250@01 Int)) (!
  (= (Seq_index a@209@01 i@250@01) (Seq_index c@211@01 i@250@01))
  
  :qid |quant-u-6820|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@253@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@251@01 r)) (< (inv@251@01 r) len@212@01))
      (img@252@01 r)
      (= r (Seq_index a@209@01 (inv@251@01 r))))
    ($Perm.min
      (ite
        (and
          (img@218@01 r)
          (and (<= 0 (inv@217@01 r)) (< (inv@217@01 r) len@212@01)))
        $Perm.Write
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@254@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@251@01 r)) (< (inv@251@01 r) len@212@01))
      (img@252@01 r)
      (= r (Seq_index a@209@01 (inv@251@01 r))))
    ($Perm.min
      (ite
        (and
          (img@223@01 r)
          (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) len@212@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@253@01 r)))
    $Perm.No))
(define-fun pTaken@255@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@251@01 r)) (< (inv@251@01 r) len@212@01))
      (img@252@01 r)
      (= r (Seq_index a@209@01 (inv@251@01 r))))
    ($Perm.min
      (ite
        (and
          (img@228@01 r)
          (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@212@01)))
        $Perm.Write
        $Perm.No)
      (- (- (/ (to_real 1) (to_real 2)) (pTaken@253@01 r)) (pTaken@254@01 r)))
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
          (img@218@01 r)
          (and (<= 0 (inv@217@01 r)) (< (inv@217@01 r) len@212@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@253@01 r))
    $Perm.No)
  
  :qid |quant-u-6822|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@253@01 r) $Perm.No)
  
  :qid |quant-u-6823|))))
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
      (and (<= 0 (inv@251@01 r)) (< (inv@251@01 r) len@212@01))
      (img@252@01 r)
      (= r (Seq_index a@209@01 (inv@251@01 r))))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@253@01 r)) $Perm.No))
  
  :qid |quant-u-6824|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] 0 <= 0 && 0 < len
; [eval] 0 <= 0
(set-option :timeout 0)
(push) ; 3
; [then-branch: 136 | False | live]
; [else-branch: 136 | True | live]
(push) ; 4
; [then-branch: 136 | False]
(assert false)
(pop) ; 4
(push) ; 4
; [else-branch: 136 | True]
; [eval] 0 < len
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< 0 len@212@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< 0 len@212@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 137 | 0 < len@212@01 | live]
; [else-branch: 137 | !(0 < len@212@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 137 | 0 < len@212@01]
(assert (< 0 len@212@01))
; [eval] a[0]
(push) ; 4
(assert (not (< 0 (Seq_length a@209@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@256@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index a@209@01 0))
    ($Perm.min
      (ite
        (and
          (img@218@01 r)
          (and (<= 0 (inv@217@01 r)) (< (inv@217@01 r) len@212@01)))
        (- $Perm.Write (pTaken@253@01 r))
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@257@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index a@209@01 0))
    ($Perm.min
      (ite
        (and
          (img@228@01 r)
          (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@212@01)))
        $Perm.Write
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@256@01 r)))
    $Perm.No))
(define-fun pTaken@258@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index a@209@01 0))
    ($Perm.min
      (ite
        (and
          (img@223@01 r)
          (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) len@212@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- (- (/ (to_real 1) (to_real 2)) (pTaken@256@01 r)) (pTaken@257@01 r)))
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
          (img@218@01 r)
          (and (<= 0 (inv@217@01 r)) (< (inv@217@01 r) len@212@01)))
        (- $Perm.Write (pTaken@253@01 r))
        $Perm.No)
      (pTaken@256@01 r))
    $Perm.No)
  
  :qid |quant-u-6826|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@256@01 r) $Perm.No)
  
  :qid |quant-u-6827|))))
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
    (= r (Seq_index a@209@01 0))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@256@01 r)) $Perm.No))
  
  :qid |quant-u-6828|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const i@259@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 1 <= i && i < (len - 1 < len ? len - 1 : len) + 1
; [eval] 1 <= i
(push) ; 5
; [then-branch: 138 | !(1 <= i@259@01) | live]
; [else-branch: 138 | 1 <= i@259@01 | live]
(push) ; 6
; [then-branch: 138 | !(1 <= i@259@01)]
(assert (not (<= 1 i@259@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 138 | 1 <= i@259@01]
(assert (<= 1 i@259@01))
; [eval] i < (len - 1 < len ? len - 1 : len) + 1
; [eval] (len - 1 < len ? len - 1 : len) + 1
; [eval] (len - 1 < len ? len - 1 : len)
; [eval] len - 1 < len
; [eval] len - 1
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not (< (- len@212@01 1) len@212@01))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (< (- len@212@01 1) len@212@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 139 | len@212@01 - 1 < len@212@01 | live]
; [else-branch: 139 | !(len@212@01 - 1 < len@212@01) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 139 | len@212@01 - 1 < len@212@01]
(assert (< (- len@212@01 1) len@212@01))
; [eval] len - 1
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (< (- len@212@01 1) len@212@01))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=> (<= 1 i@259@01) (and (<= 1 i@259@01) (< (- len@212@01 1) len@212@01))))
(assert (or (<= 1 i@259@01) (not (<= 1 i@259@01))))
(assert (and (<= 1 i@259@01) (< i@259@01 (+ (- len@212@01 1) 1))))
; [eval] a[i]
(push) ; 5
(assert (not (>= i@259@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@259@01 (Seq_length a@209@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@260@01 ($Ref) Int)
(declare-fun img@261@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@259@01 Int)) (!
  (=>
    (and (<= 1 i@259@01) (< i@259@01 (+ (- len@212@01 1) 1)))
    (and
      (=> (<= 1 i@259@01) (and (<= 1 i@259@01) (< (- len@212@01 1) len@212@01)))
      (or (<= 1 i@259@01) (not (<= 1 i@259@01)))))
  :pattern ((Seq_index a@209@01 i@259@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@259@01 Int) (i2@259@01 Int)) (!
  (=>
    (and
      (and (<= 1 i1@259@01) (< i1@259@01 (+ (- len@212@01 1) 1)))
      (and (<= 1 i2@259@01) (< i2@259@01 (+ (- len@212@01 1) 1)))
      (= (Seq_index a@209@01 i1@259@01) (Seq_index a@209@01 i2@259@01)))
    (= i1@259@01 i2@259@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@259@01 Int)) (!
  (=>
    (and (<= 1 i@259@01) (< i@259@01 (+ (- len@212@01 1) 1)))
    (and
      (= (inv@260@01 (Seq_index a@209@01 i@259@01)) i@259@01)
      (img@261@01 (Seq_index a@209@01 i@259@01))))
  :pattern ((Seq_index a@209@01 i@259@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@261@01 r)
      (and (<= 1 (inv@260@01 r)) (< (inv@260@01 r) (+ (- len@212@01 1) 1))))
    (= (Seq_index a@209@01 (inv@260@01 r)) r))
  :pattern ((inv@260@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@259@01 Int)) (!
  (= (Seq_index a@209@01 i@259@01) (Seq_index b@210@01 i@259@01))
  
  :qid |quant-u-6830|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@259@01 Int)) (!
  (= (Seq_index a@209@01 i@259@01) (Seq_index c@211@01 i@259@01))
  
  :qid |quant-u-6831|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@262@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 1 (inv@260@01 r)) (< (inv@260@01 r) (+ (- len@212@01 1) 1)))
      (img@261@01 r)
      (= r (Seq_index a@209@01 (inv@260@01 r))))
    ($Perm.min
      (ite
        (and
          (img@218@01 r)
          (and (<= 0 (inv@217@01 r)) (< (inv@217@01 r) len@212@01)))
        (- (- $Perm.Write (pTaken@253@01 r)) (pTaken@256@01 r))
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@263@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 1 (inv@260@01 r)) (< (inv@260@01 r) (+ (- len@212@01 1) 1)))
      (img@261@01 r)
      (= r (Seq_index a@209@01 (inv@260@01 r))))
    ($Perm.min
      (ite
        (and
          (img@223@01 r)
          (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) len@212@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@262@01 r)))
    $Perm.No))
(define-fun pTaken@264@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 1 (inv@260@01 r)) (< (inv@260@01 r) (+ (- len@212@01 1) 1)))
      (img@261@01 r)
      (= r (Seq_index a@209@01 (inv@260@01 r))))
    ($Perm.min
      (ite
        (and
          (img@228@01 r)
          (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@212@01)))
        $Perm.Write
        $Perm.No)
      (- (- (/ (to_real 1) (to_real 2)) (pTaken@262@01 r)) (pTaken@263@01 r)))
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
          (img@218@01 r)
          (and (<= 0 (inv@217@01 r)) (< (inv@217@01 r) len@212@01)))
        (- (- $Perm.Write (pTaken@253@01 r)) (pTaken@256@01 r))
        $Perm.No)
      (pTaken@262@01 r))
    $Perm.No)
  
  :qid |quant-u-6833|))))
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
      (and (<= 1 (inv@260@01 r)) (< (inv@260@01 r) (+ (- len@212@01 1) 1)))
      (img@261@01 r)
      (= r (Seq_index a@209@01 (inv@260@01 r))))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@262@01 r)) $Perm.No))
  
  :qid |quant-u-6834|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall j: Int, k: Int :: { b[j], b[k] } 0 <= j && (j < len && (0 <= k && (k < len && j != k))) ==> b[j] != b[k])
(declare-const j@265@01 Int)
(declare-const k@266@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= j && (j < len && (0 <= k && (k < len && j != k))) ==> b[j] != b[k]
; [eval] 0 <= j && (j < len && (0 <= k && (k < len && j != k)))
; [eval] 0 <= j
(push) ; 5
; [then-branch: 140 | !(0 <= j@265@01) | live]
; [else-branch: 140 | 0 <= j@265@01 | live]
(push) ; 6
; [then-branch: 140 | !(0 <= j@265@01)]
(assert (not (<= 0 j@265@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 140 | 0 <= j@265@01]
(assert (<= 0 j@265@01))
; [eval] j < len
(push) ; 7
; [then-branch: 141 | !(j@265@01 < len@212@01) | live]
; [else-branch: 141 | j@265@01 < len@212@01 | live]
(push) ; 8
; [then-branch: 141 | !(j@265@01 < len@212@01)]
(assert (not (< j@265@01 len@212@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 141 | j@265@01 < len@212@01]
(assert (< j@265@01 len@212@01))
; [eval] 0 <= k
(push) ; 9
; [then-branch: 142 | !(0 <= k@266@01) | live]
; [else-branch: 142 | 0 <= k@266@01 | live]
(push) ; 10
; [then-branch: 142 | !(0 <= k@266@01)]
(assert (not (<= 0 k@266@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 142 | 0 <= k@266@01]
(assert (<= 0 k@266@01))
; [eval] k < len
(push) ; 11
; [then-branch: 143 | !(k@266@01 < len@212@01) | live]
; [else-branch: 143 | k@266@01 < len@212@01 | live]
(push) ; 12
; [then-branch: 143 | !(k@266@01 < len@212@01)]
(assert (not (< k@266@01 len@212@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 143 | k@266@01 < len@212@01]
(assert (< k@266@01 len@212@01))
; [eval] j != k
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (< k@266@01 len@212@01) (not (< k@266@01 len@212@01))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@266@01)
  (and
    (<= 0 k@266@01)
    (or (< k@266@01 len@212@01) (not (< k@266@01 len@212@01))))))
(assert (or (<= 0 k@266@01) (not (<= 0 k@266@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@265@01 len@212@01)
  (and
    (< j@265@01 len@212@01)
    (=>
      (<= 0 k@266@01)
      (and
        (<= 0 k@266@01)
        (or (< k@266@01 len@212@01) (not (< k@266@01 len@212@01)))))
    (or (<= 0 k@266@01) (not (<= 0 k@266@01))))))
(assert (or (< j@265@01 len@212@01) (not (< j@265@01 len@212@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@265@01)
  (and
    (<= 0 j@265@01)
    (=>
      (< j@265@01 len@212@01)
      (and
        (< j@265@01 len@212@01)
        (=>
          (<= 0 k@266@01)
          (and
            (<= 0 k@266@01)
            (or (< k@266@01 len@212@01) (not (< k@266@01 len@212@01)))))
        (or (<= 0 k@266@01) (not (<= 0 k@266@01)))))
    (or (< j@265@01 len@212@01) (not (< j@265@01 len@212@01))))))
(assert (or (<= 0 j@265@01) (not (<= 0 j@265@01))))
(push) ; 5
; [then-branch: 144 | 0 <= j@265@01 && j@265@01 < len@212@01 && 0 <= k@266@01 && k@266@01 < len@212@01 && j@265@01 != k@266@01 | live]
; [else-branch: 144 | !(0 <= j@265@01 && j@265@01 < len@212@01 && 0 <= k@266@01 && k@266@01 < len@212@01 && j@265@01 != k@266@01) | live]
(push) ; 6
; [then-branch: 144 | 0 <= j@265@01 && j@265@01 < len@212@01 && 0 <= k@266@01 && k@266@01 < len@212@01 && j@265@01 != k@266@01]
(assert (and
  (<= 0 j@265@01)
  (and
    (< j@265@01 len@212@01)
    (and
      (<= 0 k@266@01)
      (and (< k@266@01 len@212@01) (not (= j@265@01 k@266@01)))))))
; [eval] b[j] != b[k]
; [eval] b[j]
(push) ; 7
(assert (not (>= j@265@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< j@265@01 (Seq_length b@210@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] b[k]
(push) ; 7
(assert (not (>= k@266@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< k@266@01 (Seq_length b@210@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 144 | !(0 <= j@265@01 && j@265@01 < len@212@01 && 0 <= k@266@01 && k@266@01 < len@212@01 && j@265@01 != k@266@01)]
(assert (not
  (and
    (<= 0 j@265@01)
    (and
      (< j@265@01 len@212@01)
      (and
        (<= 0 k@266@01)
        (and (< k@266@01 len@212@01) (not (= j@265@01 k@266@01))))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@265@01)
    (and
      (< j@265@01 len@212@01)
      (and
        (<= 0 k@266@01)
        (and (< k@266@01 len@212@01) (not (= j@265@01 k@266@01))))))
  (and
    (<= 0 j@265@01)
    (< j@265@01 len@212@01)
    (<= 0 k@266@01)
    (< k@266@01 len@212@01)
    (not (= j@265@01 k@266@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@265@01)
      (and
        (< j@265@01 len@212@01)
        (and
          (<= 0 k@266@01)
          (and (< k@266@01 len@212@01) (not (= j@265@01 k@266@01)))))))
  (and
    (<= 0 j@265@01)
    (and
      (< j@265@01 len@212@01)
      (and
        (<= 0 k@266@01)
        (and (< k@266@01 len@212@01) (not (= j@265@01 k@266@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@265@01 Int) (k@266@01 Int)) (!
  (and
    (=>
      (<= 0 j@265@01)
      (and
        (<= 0 j@265@01)
        (=>
          (< j@265@01 len@212@01)
          (and
            (< j@265@01 len@212@01)
            (=>
              (<= 0 k@266@01)
              (and
                (<= 0 k@266@01)
                (or (< k@266@01 len@212@01) (not (< k@266@01 len@212@01)))))
            (or (<= 0 k@266@01) (not (<= 0 k@266@01)))))
        (or (< j@265@01 len@212@01) (not (< j@265@01 len@212@01)))))
    (or (<= 0 j@265@01) (not (<= 0 j@265@01)))
    (=>
      (and
        (<= 0 j@265@01)
        (and
          (< j@265@01 len@212@01)
          (and
            (<= 0 k@266@01)
            (and (< k@266@01 len@212@01) (not (= j@265@01 k@266@01))))))
      (and
        (<= 0 j@265@01)
        (< j@265@01 len@212@01)
        (<= 0 k@266@01)
        (< k@266@01 len@212@01)
        (not (= j@265@01 k@266@01))))
    (or
      (not
        (and
          (<= 0 j@265@01)
          (and
            (< j@265@01 len@212@01)
            (and
              (<= 0 k@266@01)
              (and (< k@266@01 len@212@01) (not (= j@265@01 k@266@01)))))))
      (and
        (<= 0 j@265@01)
        (and
          (< j@265@01 len@212@01)
          (and
            (<= 0 k@266@01)
            (and (< k@266@01 len@212@01) (not (= j@265@01 k@266@01))))))))
  :pattern ((Seq_index b@210@01 j@265@01) (Seq_index b@210@01 k@266@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@66@12@66@102-aux|)))
(push) ; 4
(assert (not (forall ((j@265@01 Int) (k@266@01 Int)) (!
  (=>
    (and
      (<= 0 j@265@01)
      (and
        (< j@265@01 len@212@01)
        (and
          (<= 0 k@266@01)
          (and (< k@266@01 len@212@01) (not (= j@265@01 k@266@01))))))
    (not (= (Seq_index b@210@01 j@265@01) (Seq_index b@210@01 k@266@01))))
  :pattern ((Seq_index b@210@01 j@265@01) (Seq_index b@210@01 k@266@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@66@12@66@102|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((j@265@01 Int) (k@266@01 Int)) (!
  (=>
    (and
      (<= 0 j@265@01)
      (and
        (< j@265@01 len@212@01)
        (and
          (<= 0 k@266@01)
          (and (< k@266@01 len@212@01) (not (= j@265@01 k@266@01))))))
    (not (= (Seq_index b@210@01 j@265@01) (Seq_index b@210@01 k@266@01))))
  :pattern ((Seq_index b@210@01 j@265@01) (Seq_index b@210@01 k@266@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@66@12@66@102|)))
(declare-const i@267@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 145 | !(0 <= i@267@01) | live]
; [else-branch: 145 | 0 <= i@267@01 | live]
(push) ; 6
; [then-branch: 145 | !(0 <= i@267@01)]
(assert (not (<= 0 i@267@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 145 | 0 <= i@267@01]
(assert (<= 0 i@267@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@267@01) (not (<= 0 i@267@01))))
(assert (and (<= 0 i@267@01) (< i@267@01 len@212@01)))
; [eval] b[i]
(push) ; 5
(assert (not (>= i@267@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@267@01 (Seq_length b@210@01))))
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
(assert (forall ((i@267@01 Int)) (!
  (=>
    (and (<= 0 i@267@01) (< i@267@01 len@212@01))
    (or (<= 0 i@267@01) (not (<= 0 i@267@01))))
  :pattern ((Seq_index b@210@01 i@267@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@267@01 Int) (i2@267@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@267@01) (< i1@267@01 len@212@01))
      (and (<= 0 i2@267@01) (< i2@267@01 len@212@01))
      (= (Seq_index b@210@01 i1@267@01) (Seq_index b@210@01 i2@267@01)))
    (= i1@267@01 i2@267@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@267@01 Int)) (!
  (=>
    (and (<= 0 i@267@01) (< i@267@01 len@212@01))
    (and
      (= (inv@268@01 (Seq_index b@210@01 i@267@01)) i@267@01)
      (img@269@01 (Seq_index b@210@01 i@267@01))))
  :pattern ((Seq_index b@210@01 i@267@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@269@01 r)
      (and (<= 0 (inv@268@01 r)) (< (inv@268@01 r) len@212@01)))
    (= (Seq_index b@210@01 (inv@268@01 r)) r))
  :pattern ((inv@268@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@267@01 Int)) (!
  (= (Seq_index b@210@01 i@267@01) (Seq_index c@211@01 i@267@01))
  
  :qid |quant-u-6836|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@270@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@268@01 r)) (< (inv@268@01 r) len@212@01))
      (img@269@01 r)
      (= r (Seq_index b@210@01 (inv@268@01 r))))
    ($Perm.min
      (ite
        (and
          (img@223@01 r)
          (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) len@212@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@271@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@268@01 r)) (< (inv@268@01 r) len@212@01))
      (img@269@01 r)
      (= r (Seq_index b@210@01 (inv@268@01 r))))
    ($Perm.min
      (ite
        (and
          (img@228@01 r)
          (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@212@01)))
        $Perm.Write
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@270@01 r)))
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
          (img@223@01 r)
          (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) len@212@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@270@01 r))
    $Perm.No)
  
  :qid |quant-u-6838|))))
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
      (and (<= 0 (inv@268@01 r)) (< (inv@268@01 r) len@212@01))
      (img@269@01 r)
      (= r (Seq_index b@210@01 (inv@268@01 r))))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@270@01 r)) $Perm.No))
  
  :qid |quant-u-6839|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall j: Int, k: Int :: { c[j], c[k] } 0 <= j && (j < len && (0 <= k && (k < len && j != k))) ==> c[j] != c[k])
(declare-const j@272@01 Int)
(declare-const k@273@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= j && (j < len && (0 <= k && (k < len && j != k))) ==> c[j] != c[k]
; [eval] 0 <= j && (j < len && (0 <= k && (k < len && j != k)))
; [eval] 0 <= j
(push) ; 5
; [then-branch: 146 | !(0 <= j@272@01) | live]
; [else-branch: 146 | 0 <= j@272@01 | live]
(push) ; 6
; [then-branch: 146 | !(0 <= j@272@01)]
(assert (not (<= 0 j@272@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 146 | 0 <= j@272@01]
(assert (<= 0 j@272@01))
; [eval] j < len
(push) ; 7
; [then-branch: 147 | !(j@272@01 < len@212@01) | live]
; [else-branch: 147 | j@272@01 < len@212@01 | live]
(push) ; 8
; [then-branch: 147 | !(j@272@01 < len@212@01)]
(assert (not (< j@272@01 len@212@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 147 | j@272@01 < len@212@01]
(assert (< j@272@01 len@212@01))
; [eval] 0 <= k
(push) ; 9
; [then-branch: 148 | !(0 <= k@273@01) | live]
; [else-branch: 148 | 0 <= k@273@01 | live]
(push) ; 10
; [then-branch: 148 | !(0 <= k@273@01)]
(assert (not (<= 0 k@273@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 148 | 0 <= k@273@01]
(assert (<= 0 k@273@01))
; [eval] k < len
(push) ; 11
; [then-branch: 149 | !(k@273@01 < len@212@01) | live]
; [else-branch: 149 | k@273@01 < len@212@01 | live]
(push) ; 12
; [then-branch: 149 | !(k@273@01 < len@212@01)]
(assert (not (< k@273@01 len@212@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 149 | k@273@01 < len@212@01]
(assert (< k@273@01 len@212@01))
; [eval] j != k
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (< k@273@01 len@212@01) (not (< k@273@01 len@212@01))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@273@01)
  (and
    (<= 0 k@273@01)
    (or (< k@273@01 len@212@01) (not (< k@273@01 len@212@01))))))
(assert (or (<= 0 k@273@01) (not (<= 0 k@273@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@272@01 len@212@01)
  (and
    (< j@272@01 len@212@01)
    (=>
      (<= 0 k@273@01)
      (and
        (<= 0 k@273@01)
        (or (< k@273@01 len@212@01) (not (< k@273@01 len@212@01)))))
    (or (<= 0 k@273@01) (not (<= 0 k@273@01))))))
(assert (or (< j@272@01 len@212@01) (not (< j@272@01 len@212@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@272@01)
  (and
    (<= 0 j@272@01)
    (=>
      (< j@272@01 len@212@01)
      (and
        (< j@272@01 len@212@01)
        (=>
          (<= 0 k@273@01)
          (and
            (<= 0 k@273@01)
            (or (< k@273@01 len@212@01) (not (< k@273@01 len@212@01)))))
        (or (<= 0 k@273@01) (not (<= 0 k@273@01)))))
    (or (< j@272@01 len@212@01) (not (< j@272@01 len@212@01))))))
(assert (or (<= 0 j@272@01) (not (<= 0 j@272@01))))
(push) ; 5
; [then-branch: 150 | 0 <= j@272@01 && j@272@01 < len@212@01 && 0 <= k@273@01 && k@273@01 < len@212@01 && j@272@01 != k@273@01 | live]
; [else-branch: 150 | !(0 <= j@272@01 && j@272@01 < len@212@01 && 0 <= k@273@01 && k@273@01 < len@212@01 && j@272@01 != k@273@01) | live]
(push) ; 6
; [then-branch: 150 | 0 <= j@272@01 && j@272@01 < len@212@01 && 0 <= k@273@01 && k@273@01 < len@212@01 && j@272@01 != k@273@01]
(assert (and
  (<= 0 j@272@01)
  (and
    (< j@272@01 len@212@01)
    (and
      (<= 0 k@273@01)
      (and (< k@273@01 len@212@01) (not (= j@272@01 k@273@01)))))))
; [eval] c[j] != c[k]
; [eval] c[j]
(push) ; 7
(assert (not (>= j@272@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< j@272@01 (Seq_length c@211@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] c[k]
(push) ; 7
(assert (not (>= k@273@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< k@273@01 (Seq_length c@211@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 150 | !(0 <= j@272@01 && j@272@01 < len@212@01 && 0 <= k@273@01 && k@273@01 < len@212@01 && j@272@01 != k@273@01)]
(assert (not
  (and
    (<= 0 j@272@01)
    (and
      (< j@272@01 len@212@01)
      (and
        (<= 0 k@273@01)
        (and (< k@273@01 len@212@01) (not (= j@272@01 k@273@01))))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@272@01)
    (and
      (< j@272@01 len@212@01)
      (and
        (<= 0 k@273@01)
        (and (< k@273@01 len@212@01) (not (= j@272@01 k@273@01))))))
  (and
    (<= 0 j@272@01)
    (< j@272@01 len@212@01)
    (<= 0 k@273@01)
    (< k@273@01 len@212@01)
    (not (= j@272@01 k@273@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@272@01)
      (and
        (< j@272@01 len@212@01)
        (and
          (<= 0 k@273@01)
          (and (< k@273@01 len@212@01) (not (= j@272@01 k@273@01)))))))
  (and
    (<= 0 j@272@01)
    (and
      (< j@272@01 len@212@01)
      (and
        (<= 0 k@273@01)
        (and (< k@273@01 len@212@01) (not (= j@272@01 k@273@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@272@01 Int) (k@273@01 Int)) (!
  (and
    (=>
      (<= 0 j@272@01)
      (and
        (<= 0 j@272@01)
        (=>
          (< j@272@01 len@212@01)
          (and
            (< j@272@01 len@212@01)
            (=>
              (<= 0 k@273@01)
              (and
                (<= 0 k@273@01)
                (or (< k@273@01 len@212@01) (not (< k@273@01 len@212@01)))))
            (or (<= 0 k@273@01) (not (<= 0 k@273@01)))))
        (or (< j@272@01 len@212@01) (not (< j@272@01 len@212@01)))))
    (or (<= 0 j@272@01) (not (<= 0 j@272@01)))
    (=>
      (and
        (<= 0 j@272@01)
        (and
          (< j@272@01 len@212@01)
          (and
            (<= 0 k@273@01)
            (and (< k@273@01 len@212@01) (not (= j@272@01 k@273@01))))))
      (and
        (<= 0 j@272@01)
        (< j@272@01 len@212@01)
        (<= 0 k@273@01)
        (< k@273@01 len@212@01)
        (not (= j@272@01 k@273@01))))
    (or
      (not
        (and
          (<= 0 j@272@01)
          (and
            (< j@272@01 len@212@01)
            (and
              (<= 0 k@273@01)
              (and (< k@273@01 len@212@01) (not (= j@272@01 k@273@01)))))))
      (and
        (<= 0 j@272@01)
        (and
          (< j@272@01 len@212@01)
          (and
            (<= 0 k@273@01)
            (and (< k@273@01 len@212@01) (not (= j@272@01 k@273@01))))))))
  :pattern ((Seq_index c@211@01 j@272@01) (Seq_index c@211@01 k@273@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@68@12@68@102-aux|)))
(push) ; 4
(assert (not (forall ((j@272@01 Int) (k@273@01 Int)) (!
  (=>
    (and
      (<= 0 j@272@01)
      (and
        (< j@272@01 len@212@01)
        (and
          (<= 0 k@273@01)
          (and (< k@273@01 len@212@01) (not (= j@272@01 k@273@01))))))
    (not (= (Seq_index c@211@01 j@272@01) (Seq_index c@211@01 k@273@01))))
  :pattern ((Seq_index c@211@01 j@272@01) (Seq_index c@211@01 k@273@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@68@12@68@102|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((j@272@01 Int) (k@273@01 Int)) (!
  (=>
    (and
      (<= 0 j@272@01)
      (and
        (< j@272@01 len@212@01)
        (and
          (<= 0 k@273@01)
          (and (< k@273@01 len@212@01) (not (= j@272@01 k@273@01))))))
    (not (= (Seq_index c@211@01 j@272@01) (Seq_index c@211@01 k@273@01))))
  :pattern ((Seq_index c@211@01 j@272@01) (Seq_index c@211@01 k@273@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@68@12@68@102|)))
(declare-const i@274@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 151 | !(0 <= i@274@01) | live]
; [else-branch: 151 | 0 <= i@274@01 | live]
(push) ; 6
; [then-branch: 151 | !(0 <= i@274@01)]
(assert (not (<= 0 i@274@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 151 | 0 <= i@274@01]
(assert (<= 0 i@274@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@274@01) (not (<= 0 i@274@01))))
(assert (and (<= 0 i@274@01) (< i@274@01 len@212@01)))
; [eval] c[i]
(push) ; 5
(assert (not (>= i@274@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@274@01 (Seq_length c@211@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@275@01 ($Ref) Int)
(declare-fun img@276@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@274@01 Int)) (!
  (=>
    (and (<= 0 i@274@01) (< i@274@01 len@212@01))
    (or (<= 0 i@274@01) (not (<= 0 i@274@01))))
  :pattern ((Seq_index c@211@01 i@274@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@274@01 Int) (i2@274@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@274@01) (< i1@274@01 len@212@01))
      (and (<= 0 i2@274@01) (< i2@274@01 len@212@01))
      (= (Seq_index c@211@01 i1@274@01) (Seq_index c@211@01 i2@274@01)))
    (= i1@274@01 i2@274@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@274@01 Int)) (!
  (=>
    (and (<= 0 i@274@01) (< i@274@01 len@212@01))
    (and
      (= (inv@275@01 (Seq_index c@211@01 i@274@01)) i@274@01)
      (img@276@01 (Seq_index c@211@01 i@274@01))))
  :pattern ((Seq_index c@211@01 i@274@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@276@01 r)
      (and (<= 0 (inv@275@01 r)) (< (inv@275@01 r) len@212@01)))
    (= (Seq_index c@211@01 (inv@275@01 r)) r))
  :pattern ((inv@275@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@277@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@275@01 r)) (< (inv@275@01 r) len@212@01))
      (img@276@01 r)
      (= r (Seq_index c@211@01 (inv@275@01 r))))
    ($Perm.min
      (ite
        (and
          (img@228@01 r)
          (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@212@01)))
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
          (img@228@01 r)
          (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@212@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@277@01 r))
    $Perm.No)
  
  :qid |quant-u-6842|))))
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
      (and (<= 0 (inv@275@01 r)) (< (inv@275@01 r) len@212@01))
      (img@276@01 r)
      (= r (Seq_index c@211@01 (inv@275@01 r))))
    (= (- $Perm.Write (pTaken@277@01 r)) $Perm.No))
  
  :qid |quant-u-6843|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall __rw_i3: Int :: { a[__rw_i3] } true ==> 0 <= __rw_i3 - 1 && __rw_i3 - 1 < (len - 1 < len ? len - 1 : len) ==> a[__rw_i3].Ref__Integer_value == 0)
(declare-const __rw_i3@278@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] true ==> 0 <= __rw_i3 - 1 && __rw_i3 - 1 < (len - 1 < len ? len - 1 : len) ==> a[__rw_i3].Ref__Integer_value == 0
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 152 | True | live]
; [else-branch: 152 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 152 | True]
; [eval] 0 <= __rw_i3 - 1 && __rw_i3 - 1 < (len - 1 < len ? len - 1 : len) ==> a[__rw_i3].Ref__Integer_value == 0
; [eval] 0 <= __rw_i3 - 1 && __rw_i3 - 1 < (len - 1 < len ? len - 1 : len)
; [eval] 0 <= __rw_i3 - 1
; [eval] __rw_i3 - 1
(push) ; 7
; [then-branch: 153 | !(0 <= __rw_i3@278@01 - 1) | live]
; [else-branch: 153 | 0 <= __rw_i3@278@01 - 1 | live]
(push) ; 8
; [then-branch: 153 | !(0 <= __rw_i3@278@01 - 1)]
(assert (not (<= 0 (- __rw_i3@278@01 1))))
(pop) ; 8
(push) ; 8
; [else-branch: 153 | 0 <= __rw_i3@278@01 - 1]
(assert (<= 0 (- __rw_i3@278@01 1)))
; [eval] __rw_i3 - 1 < (len - 1 < len ? len - 1 : len)
; [eval] __rw_i3 - 1
; [eval] (len - 1 < len ? len - 1 : len)
; [eval] len - 1 < len
; [eval] len - 1
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not (< (- len@212@01 1) len@212@01))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (< (- len@212@01 1) len@212@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 154 | len@212@01 - 1 < len@212@01 | live]
; [else-branch: 154 | !(len@212@01 - 1 < len@212@01) | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 154 | len@212@01 - 1 < len@212@01]
(assert (< (- len@212@01 1) len@212@01))
; [eval] len - 1
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (< (- len@212@01 1) len@212@01))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 (- __rw_i3@278@01 1))
  (and (<= 0 (- __rw_i3@278@01 1)) (< (- len@212@01 1) len@212@01))))
(assert (or (<= 0 (- __rw_i3@278@01 1)) (not (<= 0 (- __rw_i3@278@01 1)))))
(push) ; 7
; [then-branch: 155 | 0 <= __rw_i3@278@01 - 1 && __rw_i3@278@01 - 1 < len@212@01 - 1 | live]
; [else-branch: 155 | !(0 <= __rw_i3@278@01 - 1 && __rw_i3@278@01 - 1 < len@212@01 - 1) | live]
(push) ; 8
; [then-branch: 155 | 0 <= __rw_i3@278@01 - 1 && __rw_i3@278@01 - 1 < len@212@01 - 1]
(assert (and (<= 0 (- __rw_i3@278@01 1)) (< (- __rw_i3@278@01 1) (- len@212@01 1))))
; [eval] a[__rw_i3].Ref__Integer_value == 0
; [eval] a[__rw_i3]
(push) ; 9
(assert (not (>= __rw_i3@278@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (< __rw_i3@278@01 (Seq_length a@209@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@218@01 r)
        (and (<= 0 (inv@217@01 r)) (< (inv@217@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r))
    :qid |qp.fvfValDef19|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@223@01 r)
        (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r))
    :qid |qp.fvfValDef20|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@228@01 r)
        (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r))
    :qid |qp.fvfValDef21|))))
(push) ; 9
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@218@01 (Seq_index a@209@01 __rw_i3@278@01))
          (and
            (<= 0 (inv@217@01 (Seq_index a@209@01 __rw_i3@278@01)))
            (< (inv@217@01 (Seq_index a@209@01 __rw_i3@278@01)) len@212@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@223@01 (Seq_index a@209@01 __rw_i3@278@01))
          (and
            (<= 0 (inv@222@01 (Seq_index a@209@01 __rw_i3@278@01)))
            (< (inv@222@01 (Seq_index a@209@01 __rw_i3@278@01)) len@212@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (and
        (img@228@01 (Seq_index a@209@01 __rw_i3@278@01))
        (and
          (<= 0 (inv@227@01 (Seq_index a@209@01 __rw_i3@278@01)))
          (< (inv@227@01 (Seq_index a@209@01 __rw_i3@278@01)) len@212@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 155 | !(0 <= __rw_i3@278@01 - 1 && __rw_i3@278@01 - 1 < len@212@01 - 1)]
(assert (not (and (<= 0 (- __rw_i3@278@01 1)) (< (- __rw_i3@278@01 1) (- len@212@01 1)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@218@01 r)
      (and (<= 0 (inv@217@01 r)) (< (inv@217@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@223@01 r)
      (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@228@01 r)
      (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r))
  :qid |qp.fvfValDef21|)))
; Joined path conditions
(assert (or
  (not
    (and (<= 0 (- __rw_i3@278@01 1)) (< (- __rw_i3@278@01 1) (- len@212@01 1))))
  (and (<= 0 (- __rw_i3@278@01 1)) (< (- __rw_i3@278@01 1) (- len@212@01 1)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@218@01 r)
      (and (<= 0 (inv@217@01 r)) (< (inv@217@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@223@01 r)
      (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@228@01 r)
      (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r))
  :qid |qp.fvfValDef21|)))
(assert (and
  (=>
    (<= 0 (- __rw_i3@278@01 1))
    (and (<= 0 (- __rw_i3@278@01 1)) (< (- len@212@01 1) len@212@01)))
  (or (<= 0 (- __rw_i3@278@01 1)) (not (<= 0 (- __rw_i3@278@01 1))))
  (or
    (not
      (and (<= 0 (- __rw_i3@278@01 1)) (< (- __rw_i3@278@01 1) (- len@212@01 1))))
    (and (<= 0 (- __rw_i3@278@01 1)) (< (- __rw_i3@278@01 1) (- len@212@01 1))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@218@01 r)
      (and (<= 0 (inv@217@01 r)) (< (inv@217@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@223@01 r)
      (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@228@01 r)
      (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r))
  :qid |qp.fvfValDef21|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((__rw_i3@278@01 Int)) (!
  (and
    (=>
      (<= 0 (- __rw_i3@278@01 1))
      (and (<= 0 (- __rw_i3@278@01 1)) (< (- len@212@01 1) len@212@01)))
    (or (<= 0 (- __rw_i3@278@01 1)) (not (<= 0 (- __rw_i3@278@01 1))))
    (or
      (not
        (and
          (<= 0 (- __rw_i3@278@01 1))
          (< (- __rw_i3@278@01 1) (- len@212@01 1))))
      (and (<= 0 (- __rw_i3@278@01 1)) (< (- __rw_i3@278@01 1) (- len@212@01 1)))))
  :pattern ((Seq_index a@209@01 __rw_i3@278@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@70@13@70@118-aux|)))
(push) ; 4
(assert (not (forall ((__rw_i3@278@01 Int)) (!
  (=>
    (and (<= 0 (- __rw_i3@278@01 1)) (< (- __rw_i3@278@01 1) (- len@212@01 1)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) (Seq_index
        a@209@01
        __rw_i3@278@01))
      0))
  :pattern ((Seq_index a@209@01 __rw_i3@278@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@70@13@70@118|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((__rw_i3@278@01 Int)) (!
  (=>
    (and (<= 0 (- __rw_i3@278@01 1)) (< (- __rw_i3@278@01 1) (- len@212@01 1)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) (Seq_index
        a@209@01
        __rw_i3@278@01))
      0))
  :pattern ((Seq_index a@209@01 __rw_i3@278@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@70@13@70@118|)))
; [eval] (forall i: Int :: { b[i] } 0 <= i && i < len ==> b[i].Ref__Integer_value == i)
(declare-const i@279@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len ==> b[i].Ref__Integer_value == i
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 156 | !(0 <= i@279@01) | live]
; [else-branch: 156 | 0 <= i@279@01 | live]
(push) ; 6
; [then-branch: 156 | !(0 <= i@279@01)]
(assert (not (<= 0 i@279@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 156 | 0 <= i@279@01]
(assert (<= 0 i@279@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@279@01) (not (<= 0 i@279@01))))
(push) ; 5
; [then-branch: 157 | 0 <= i@279@01 && i@279@01 < len@212@01 | live]
; [else-branch: 157 | !(0 <= i@279@01 && i@279@01 < len@212@01) | live]
(push) ; 6
; [then-branch: 157 | 0 <= i@279@01 && i@279@01 < len@212@01]
(assert (and (<= 0 i@279@01) (< i@279@01 len@212@01)))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 7
(assert (not (>= i@279@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@279@01 (Seq_length b@210@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@218@01 r)
        (and (<= 0 (inv@217@01 r)) (< (inv@217@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r))
    :qid |qp.fvfValDef19|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@223@01 r)
        (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r))
    :qid |qp.fvfValDef20|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@228@01 r)
        (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r))
    :qid |qp.fvfValDef21|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@218@01 (Seq_index b@210@01 i@279@01))
          (and
            (<= 0 (inv@217@01 (Seq_index b@210@01 i@279@01)))
            (< (inv@217@01 (Seq_index b@210@01 i@279@01)) len@212@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@223@01 (Seq_index b@210@01 i@279@01))
          (and
            (<= 0 (inv@222@01 (Seq_index b@210@01 i@279@01)))
            (< (inv@222@01 (Seq_index b@210@01 i@279@01)) len@212@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (and
        (img@228@01 (Seq_index b@210@01 i@279@01))
        (and
          (<= 0 (inv@227@01 (Seq_index b@210@01 i@279@01)))
          (< (inv@227@01 (Seq_index b@210@01 i@279@01)) len@212@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 157 | !(0 <= i@279@01 && i@279@01 < len@212@01)]
(assert (not (and (<= 0 i@279@01) (< i@279@01 len@212@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@218@01 r)
      (and (<= 0 (inv@217@01 r)) (< (inv@217@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@223@01 r)
      (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@228@01 r)
      (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r))
  :qid |qp.fvfValDef21|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@279@01) (< i@279@01 len@212@01)))
  (and (<= 0 i@279@01) (< i@279@01 len@212@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@218@01 r)
      (and (<= 0 (inv@217@01 r)) (< (inv@217@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@223@01 r)
      (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@228@01 r)
      (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r))
  :qid |qp.fvfValDef21|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@279@01 Int)) (!
  (and
    (or (<= 0 i@279@01) (not (<= 0 i@279@01)))
    (or
      (not (and (<= 0 i@279@01) (< i@279@01 len@212@01)))
      (and (<= 0 i@279@01) (< i@279@01 len@212@01))))
  :pattern ((Seq_index b@210@01 i@279@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@71@13@71@86-aux|)))
(push) ; 4
(assert (not (forall ((i@279@01 Int)) (!
  (=>
    (and (<= 0 i@279@01) (< i@279@01 len@212@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) (Seq_index
        b@210@01
        i@279@01))
      i@279@01))
  :pattern ((Seq_index b@210@01 i@279@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@71@13@71@86|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@279@01 Int)) (!
  (=>
    (and (<= 0 i@279@01) (< i@279@01 len@212@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) (Seq_index
        b@210@01
        i@279@01))
      i@279@01))
  :pattern ((Seq_index b@210@01 i@279@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@71@13@71@86|)))
(declare-const $t@280@01 $Snap)
(assert (= $t@280@01 ($Snap.combine ($Snap.first $t@280@01) ($Snap.second $t@280@01))))
(assert (= ($Snap.first $t@280@01) $Snap.unit))
; [eval] |a| == len
; [eval] |a|
(assert (=
  ($Snap.second $t@280@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@280@01))
    ($Snap.second ($Snap.second $t@280@01)))))
(assert (= ($Snap.first ($Snap.second $t@280@01)) $Snap.unit))
; [eval] |b| == len
; [eval] |b|
(assert (=
  ($Snap.second ($Snap.second $t@280@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@280@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@280@01))) $Snap.unit))
; [eval] |c| == len
; [eval] |c|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@280@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@280@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))))
(declare-const i@281@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 158 | !(0 <= i@281@01) | live]
; [else-branch: 158 | 0 <= i@281@01 | live]
(push) ; 6
; [then-branch: 158 | !(0 <= i@281@01)]
(assert (not (<= 0 i@281@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 158 | 0 <= i@281@01]
(assert (<= 0 i@281@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@281@01) (not (<= 0 i@281@01))))
(assert (and (<= 0 i@281@01) (< i@281@01 len@212@01)))
; [eval] a[i]
(push) ; 5
(assert (not (>= i@281@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@281@01 (Seq_length a@209@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@282@01 ($Ref) Int)
(declare-fun img@283@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@281@01 Int)) (!
  (=>
    (and (<= 0 i@281@01) (< i@281@01 len@212@01))
    (or (<= 0 i@281@01) (not (<= 0 i@281@01))))
  :pattern ((Seq_index a@209@01 i@281@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@281@01 Int) (i2@281@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@281@01) (< i1@281@01 len@212@01))
      (and (<= 0 i2@281@01) (< i2@281@01 len@212@01))
      (= (Seq_index a@209@01 i1@281@01) (Seq_index a@209@01 i2@281@01)))
    (= i1@281@01 i2@281@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@281@01 Int)) (!
  (=>
    (and (<= 0 i@281@01) (< i@281@01 len@212@01))
    (and
      (= (inv@282@01 (Seq_index a@209@01 i@281@01)) i@281@01)
      (img@283@01 (Seq_index a@209@01 i@281@01))))
  :pattern ((Seq_index a@209@01 i@281@01))
  :qid |quant-u-6845|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@283@01 r)
      (and (<= 0 (inv@282@01 r)) (< (inv@282@01 r) len@212@01)))
    (= (Seq_index a@209@01 (inv@282@01 r)) r))
  :pattern ((inv@282@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@281@01 Int)) (!
  (=>
    (and (<= 0 i@281@01) (< i@281@01 len@212@01))
    (not (= (Seq_index a@209@01 i@281@01) $Ref.null)))
  :pattern ((Seq_index a@209@01 i@281@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))))
(declare-const i@284@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 159 | !(0 <= i@284@01) | live]
; [else-branch: 159 | 0 <= i@284@01 | live]
(push) ; 6
; [then-branch: 159 | !(0 <= i@284@01)]
(assert (not (<= 0 i@284@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 159 | 0 <= i@284@01]
(assert (<= 0 i@284@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@284@01) (not (<= 0 i@284@01))))
(assert (and (<= 0 i@284@01) (< i@284@01 len@212@01)))
; [eval] b[i]
(push) ; 5
(assert (not (>= i@284@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@284@01 (Seq_length b@210@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@285@01 ($Ref) Int)
(declare-fun img@286@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@284@01 Int)) (!
  (=>
    (and (<= 0 i@284@01) (< i@284@01 len@212@01))
    (or (<= 0 i@284@01) (not (<= 0 i@284@01))))
  :pattern ((Seq_index b@210@01 i@284@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@284@01 Int) (i2@284@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@284@01) (< i1@284@01 len@212@01))
      (and (<= 0 i2@284@01) (< i2@284@01 len@212@01))
      (= (Seq_index b@210@01 i1@284@01) (Seq_index b@210@01 i2@284@01)))
    (= i1@284@01 i2@284@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@284@01 Int)) (!
  (=>
    (and (<= 0 i@284@01) (< i@284@01 len@212@01))
    (and
      (= (inv@285@01 (Seq_index b@210@01 i@284@01)) i@284@01)
      (img@286@01 (Seq_index b@210@01 i@284@01))))
  :pattern ((Seq_index b@210@01 i@284@01))
  :qid |quant-u-6847|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@286@01 r)
      (and (<= 0 (inv@285@01 r)) (< (inv@285@01 r) len@212@01)))
    (= (Seq_index b@210@01 (inv@285@01 r)) r))
  :pattern ((inv@285@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@284@01 Int)) (!
  (=>
    (and (<= 0 i@284@01) (< i@284@01 len@212@01))
    (not (= (Seq_index b@210@01 i@284@01) $Ref.null)))
  :pattern ((Seq_index b@210@01 i@284@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index b@210@01 i@284@01) (Seq_index a@209@01 i@281@01))
    (=
      (and
        (img@286@01 r)
        (and (<= 0 (inv@285@01 r)) (< (inv@285@01 r) len@212@01)))
      (and
        (img@283@01 r)
        (and (<= 0 (inv@282@01 r)) (< (inv@282@01 r) len@212@01)))))
  
  :qid |quant-u-6848|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))))))
(declare-const i@287@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 160 | !(0 <= i@287@01) | live]
; [else-branch: 160 | 0 <= i@287@01 | live]
(push) ; 6
; [then-branch: 160 | !(0 <= i@287@01)]
(assert (not (<= 0 i@287@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 160 | 0 <= i@287@01]
(assert (<= 0 i@287@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@287@01) (not (<= 0 i@287@01))))
(assert (and (<= 0 i@287@01) (< i@287@01 len@212@01)))
; [eval] c[i]
(push) ; 5
(assert (not (>= i@287@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@287@01 (Seq_length c@211@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@288@01 ($Ref) Int)
(declare-fun img@289@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@287@01 Int)) (!
  (=>
    (and (<= 0 i@287@01) (< i@287@01 len@212@01))
    (or (<= 0 i@287@01) (not (<= 0 i@287@01))))
  :pattern ((Seq_index c@211@01 i@287@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@287@01 Int) (i2@287@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@287@01) (< i1@287@01 len@212@01))
      (and (<= 0 i2@287@01) (< i2@287@01 len@212@01))
      (= (Seq_index c@211@01 i1@287@01) (Seq_index c@211@01 i2@287@01)))
    (= i1@287@01 i2@287@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@287@01 Int)) (!
  (=>
    (and (<= 0 i@287@01) (< i@287@01 len@212@01))
    (and
      (= (inv@288@01 (Seq_index c@211@01 i@287@01)) i@287@01)
      (img@289@01 (Seq_index c@211@01 i@287@01))))
  :pattern ((Seq_index c@211@01 i@287@01))
  :qid |quant-u-6850|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@289@01 r)
      (and (<= 0 (inv@288@01 r)) (< (inv@288@01 r) len@212@01)))
    (= (Seq_index c@211@01 (inv@288@01 r)) r))
  :pattern ((inv@288@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@287@01 Int)) (!
  (=>
    (and (<= 0 i@287@01) (< i@287@01 len@212@01))
    (not (= (Seq_index c@211@01 i@287@01) $Ref.null)))
  :pattern ((Seq_index c@211@01 i@287@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index c@211@01 i@287@01) (Seq_index b@210@01 i@284@01))
    (=
      (and
        (img@289@01 r)
        (and (<= 0 (inv@288@01 r)) (< (inv@288@01 r) len@212@01)))
      (and
        (img@286@01 r)
        (and (<= 0 (inv@285@01 r)) (< (inv@285@01 r) len@212@01)))))
  
  :qid |quant-u-6851|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index c@211@01 i@287@01) (Seq_index a@209@01 i@281@01))
    (=
      (and
        (img@289@01 r)
        (and (<= 0 (inv@288@01 r)) (< (inv@288@01 r) len@212@01)))
      (and
        (img@283@01 r)
        (and (<= 0 (inv@282@01 r)) (< (inv@282@01 r) len@212@01)))))
  
  :qid |quant-u-6852|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))))
  $Snap.unit))
; [eval] (forall i: Int :: { a[i] } 0 <= i && i < len ==> a[i].Ref__Integer_value == i + 1)
(declare-const i@290@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= i && i < len ==> a[i].Ref__Integer_value == i + 1
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 161 | !(0 <= i@290@01) | live]
; [else-branch: 161 | 0 <= i@290@01 | live]
(push) ; 6
; [then-branch: 161 | !(0 <= i@290@01)]
(assert (not (<= 0 i@290@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 161 | 0 <= i@290@01]
(assert (<= 0 i@290@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@290@01) (not (<= 0 i@290@01))))
(push) ; 5
; [then-branch: 162 | 0 <= i@290@01 && i@290@01 < len@212@01 | live]
; [else-branch: 162 | !(0 <= i@290@01 && i@290@01 < len@212@01) | live]
(push) ; 6
; [then-branch: 162 | 0 <= i@290@01 && i@290@01 < len@212@01]
(assert (and (<= 0 i@290@01) (< i@290@01 len@212@01)))
; [eval] a[i].Ref__Integer_value == i + 1
; [eval] a[i]
(push) ; 7
(assert (not (>= i@290@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@290@01 (Seq_length a@209@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@291@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@283@01 r)
      (and (<= 0 (inv@282@01 r)) (< (inv@282@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@280@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@280@01))))) r))
  :qid |qp.fvfValDef27|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@286@01 r)
      (and (<= 0 (inv@285@01 r)) (< (inv@285@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))) r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@289@01 r)
      (and (<= 0 (inv@288@01 r)) (< (inv@288@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))) r))
  :qid |qp.fvfValDef29|)))
(declare-const pm@292@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@292@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@283@01 r)
            (and (<= 0 (inv@282@01 r)) (< (inv@282@01 r) len@212@01)))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@286@01 r)
            (and (<= 0 (inv@285@01 r)) (< (inv@285@01 r) len@212@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and
          (img@289@01 r)
          (and (<= 0 (inv@288@01 r)) (< (inv@288@01 r) len@212@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@292@01  $FPM) r))
  :qid |qp.resPrmSumDef30|)))
(push) ; 7
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@292@01  $FPM) (Seq_index
    a@209@01
    i@290@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] i + 1
(pop) ; 6
(push) ; 6
; [else-branch: 162 | !(0 <= i@290@01 && i@290@01 < len@212@01)]
(assert (not (and (<= 0 i@290@01) (< i@290@01 len@212@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@283@01 r)
      (and (<= 0 (inv@282@01 r)) (< (inv@282@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@280@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@280@01))))) r))
  :qid |qp.fvfValDef27|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@286@01 r)
      (and (<= 0 (inv@285@01 r)) (< (inv@285@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))) r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@289@01 r)
      (and (<= 0 (inv@288@01 r)) (< (inv@288@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@292@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@283@01 r)
            (and (<= 0 (inv@282@01 r)) (< (inv@282@01 r) len@212@01)))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@286@01 r)
            (and (<= 0 (inv@285@01 r)) (< (inv@285@01 r) len@212@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and
          (img@289@01 r)
          (and (<= 0 (inv@288@01 r)) (< (inv@288@01 r) len@212@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@292@01  $FPM) r))
  :qid |qp.resPrmSumDef30|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@290@01) (< i@290@01 len@212@01)))
  (and (<= 0 i@290@01) (< i@290@01 len@212@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@283@01 r)
      (and (<= 0 (inv@282@01 r)) (< (inv@282@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@280@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@280@01))))) r))
  :qid |qp.fvfValDef27|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@286@01 r)
      (and (<= 0 (inv@285@01 r)) (< (inv@285@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))) r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@289@01 r)
      (and (<= 0 (inv@288@01 r)) (< (inv@288@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@292@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@283@01 r)
            (and (<= 0 (inv@282@01 r)) (< (inv@282@01 r) len@212@01)))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@286@01 r)
            (and (<= 0 (inv@285@01 r)) (< (inv@285@01 r) len@212@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and
          (img@289@01 r)
          (and (<= 0 (inv@288@01 r)) (< (inv@288@01 r) len@212@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@292@01  $FPM) r))
  :qid |qp.resPrmSumDef30|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@290@01 Int)) (!
  (and
    (or (<= 0 i@290@01) (not (<= 0 i@290@01)))
    (or
      (not (and (<= 0 i@290@01) (< i@290@01 len@212@01)))
      (and (<= 0 i@290@01) (< i@290@01 len@212@01))))
  :pattern ((Seq_index a@209@01 i@290@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@76@12@76@89-aux|)))
(assert (forall ((i@290@01 Int)) (!
  (=>
    (and (<= 0 i@290@01) (< i@290@01 len@212@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) (Seq_index
        a@209@01
        i@290@01))
      (+ i@290@01 1)))
  :pattern ((Seq_index a@209@01 i@290@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@76@12@76@89|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))))
  $Snap.unit))
; [eval] (forall i: Int :: { b[i] } 0 <= i && i < len ==> b[i].Ref__Integer_value == i)
(declare-const i@293@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len ==> b[i].Ref__Integer_value == i
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 163 | !(0 <= i@293@01) | live]
; [else-branch: 163 | 0 <= i@293@01 | live]
(push) ; 6
; [then-branch: 163 | !(0 <= i@293@01)]
(assert (not (<= 0 i@293@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 163 | 0 <= i@293@01]
(assert (<= 0 i@293@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@293@01) (not (<= 0 i@293@01))))
(push) ; 5
; [then-branch: 164 | 0 <= i@293@01 && i@293@01 < len@212@01 | live]
; [else-branch: 164 | !(0 <= i@293@01 && i@293@01 < len@212@01) | live]
(push) ; 6
; [then-branch: 164 | 0 <= i@293@01 && i@293@01 < len@212@01]
(assert (and (<= 0 i@293@01) (< i@293@01 len@212@01)))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 7
(assert (not (>= i@293@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@293@01 (Seq_length b@210@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@283@01 r)
        (and (<= 0 (inv@282@01 r)) (< (inv@282@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@280@01))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@280@01))))) r))
    :qid |qp.fvfValDef27|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@286@01 r)
        (and (<= 0 (inv@285@01 r)) (< (inv@285@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))) r))
    :qid |qp.fvfValDef28|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@289@01 r)
        (and (<= 0 (inv@288@01 r)) (< (inv@288@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))) r))
    :qid |qp.fvfValDef29|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@283@01 (Seq_index b@210@01 i@293@01))
          (and
            (<= 0 (inv@282@01 (Seq_index b@210@01 i@293@01)))
            (< (inv@282@01 (Seq_index b@210@01 i@293@01)) len@212@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@286@01 (Seq_index b@210@01 i@293@01))
          (and
            (<= 0 (inv@285@01 (Seq_index b@210@01 i@293@01)))
            (< (inv@285@01 (Seq_index b@210@01 i@293@01)) len@212@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (and
        (img@289@01 (Seq_index b@210@01 i@293@01))
        (and
          (<= 0 (inv@288@01 (Seq_index b@210@01 i@293@01)))
          (< (inv@288@01 (Seq_index b@210@01 i@293@01)) len@212@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 164 | !(0 <= i@293@01 && i@293@01 < len@212@01)]
(assert (not (and (<= 0 i@293@01) (< i@293@01 len@212@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@283@01 r)
      (and (<= 0 (inv@282@01 r)) (< (inv@282@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@280@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@280@01))))) r))
  :qid |qp.fvfValDef27|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@286@01 r)
      (and (<= 0 (inv@285@01 r)) (< (inv@285@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))) r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@289@01 r)
      (and (<= 0 (inv@288@01 r)) (< (inv@288@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))) r))
  :qid |qp.fvfValDef29|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@293@01) (< i@293@01 len@212@01)))
  (and (<= 0 i@293@01) (< i@293@01 len@212@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@283@01 r)
      (and (<= 0 (inv@282@01 r)) (< (inv@282@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@280@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@280@01))))) r))
  :qid |qp.fvfValDef27|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@286@01 r)
      (and (<= 0 (inv@285@01 r)) (< (inv@285@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))) r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@289@01 r)
      (and (<= 0 (inv@288@01 r)) (< (inv@288@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))) r))
  :qid |qp.fvfValDef29|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@293@01 Int)) (!
  (and
    (or (<= 0 i@293@01) (not (<= 0 i@293@01)))
    (or
      (not (and (<= 0 i@293@01) (< i@293@01 len@212@01)))
      (and (<= 0 i@293@01) (< i@293@01 len@212@01))))
  :pattern ((Seq_index b@210@01 i@293@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@77@12@77@85-aux|)))
(assert (forall ((i@293@01 Int)) (!
  (=>
    (and (<= 0 i@293@01) (< i@293@01 len@212@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) (Seq_index
        b@210@01
        i@293@01))
      i@293@01))
  :pattern ((Seq_index b@210@01 i@293@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@77@12@77@85|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))))
  $Snap.unit))
; [eval] (forall i: Int :: { c[i] } 0 <= i && i < (len - 1 < len ? len - 1 : len) ==> c[i].Ref__Integer_value == 2)
(declare-const i@294@01 Int)
(push) ; 4
; [eval] 0 <= i && i < (len - 1 < len ? len - 1 : len) ==> c[i].Ref__Integer_value == 2
; [eval] 0 <= i && i < (len - 1 < len ? len - 1 : len)
; [eval] 0 <= i
(push) ; 5
; [then-branch: 165 | !(0 <= i@294@01) | live]
; [else-branch: 165 | 0 <= i@294@01 | live]
(push) ; 6
; [then-branch: 165 | !(0 <= i@294@01)]
(assert (not (<= 0 i@294@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 165 | 0 <= i@294@01]
(assert (<= 0 i@294@01))
; [eval] i < (len - 1 < len ? len - 1 : len)
; [eval] (len - 1 < len ? len - 1 : len)
; [eval] len - 1 < len
; [eval] len - 1
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not (< (- len@212@01 1) len@212@01))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (< (- len@212@01 1) len@212@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 166 | len@212@01 - 1 < len@212@01 | live]
; [else-branch: 166 | !(len@212@01 - 1 < len@212@01) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 166 | len@212@01 - 1 < len@212@01]
(assert (< (- len@212@01 1) len@212@01))
; [eval] len - 1
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (< (- len@212@01 1) len@212@01))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=> (<= 0 i@294@01) (and (<= 0 i@294@01) (< (- len@212@01 1) len@212@01))))
(assert (or (<= 0 i@294@01) (not (<= 0 i@294@01))))
(push) ; 5
; [then-branch: 167 | 0 <= i@294@01 && i@294@01 < len@212@01 - 1 | live]
; [else-branch: 167 | !(0 <= i@294@01 && i@294@01 < len@212@01 - 1) | live]
(push) ; 6
; [then-branch: 167 | 0 <= i@294@01 && i@294@01 < len@212@01 - 1]
(assert (and (<= 0 i@294@01) (< i@294@01 (- len@212@01 1))))
; [eval] c[i].Ref__Integer_value == 2
; [eval] c[i]
(push) ; 7
(assert (not (>= i@294@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@294@01 (Seq_length c@211@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@283@01 r)
        (and (<= 0 (inv@282@01 r)) (< (inv@282@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@280@01))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@280@01))))) r))
    :qid |qp.fvfValDef27|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@286@01 r)
        (and (<= 0 (inv@285@01 r)) (< (inv@285@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))) r))
    :qid |qp.fvfValDef28|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@289@01 r)
        (and (<= 0 (inv@288@01 r)) (< (inv@288@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))) r))
    :qid |qp.fvfValDef29|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@283@01 (Seq_index c@211@01 i@294@01))
          (and
            (<= 0 (inv@282@01 (Seq_index c@211@01 i@294@01)))
            (< (inv@282@01 (Seq_index c@211@01 i@294@01)) len@212@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@286@01 (Seq_index c@211@01 i@294@01))
          (and
            (<= 0 (inv@285@01 (Seq_index c@211@01 i@294@01)))
            (< (inv@285@01 (Seq_index c@211@01 i@294@01)) len@212@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (and
        (img@289@01 (Seq_index c@211@01 i@294@01))
        (and
          (<= 0 (inv@288@01 (Seq_index c@211@01 i@294@01)))
          (< (inv@288@01 (Seq_index c@211@01 i@294@01)) len@212@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 167 | !(0 <= i@294@01 && i@294@01 < len@212@01 - 1)]
(assert (not (and (<= 0 i@294@01) (< i@294@01 (- len@212@01 1)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@283@01 r)
      (and (<= 0 (inv@282@01 r)) (< (inv@282@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@280@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@280@01))))) r))
  :qid |qp.fvfValDef27|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@286@01 r)
      (and (<= 0 (inv@285@01 r)) (< (inv@285@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))) r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@289@01 r)
      (and (<= 0 (inv@288@01 r)) (< (inv@288@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))) r))
  :qid |qp.fvfValDef29|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@294@01) (< i@294@01 (- len@212@01 1))))
  (and (<= 0 i@294@01) (< i@294@01 (- len@212@01 1)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@283@01 r)
      (and (<= 0 (inv@282@01 r)) (< (inv@282@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@280@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@280@01))))) r))
  :qid |qp.fvfValDef27|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@286@01 r)
      (and (<= 0 (inv@285@01 r)) (< (inv@285@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))) r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@289@01 r)
      (and (<= 0 (inv@288@01 r)) (< (inv@288@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))) r))
  :qid |qp.fvfValDef29|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@294@01 Int)) (!
  (and
    (=> (<= 0 i@294@01) (and (<= 0 i@294@01) (< (- len@212@01 1) len@212@01)))
    (or (<= 0 i@294@01) (not (<= 0 i@294@01)))
    (or
      (not (and (<= 0 i@294@01) (< i@294@01 (- len@212@01 1))))
      (and (<= 0 i@294@01) (< i@294@01 (- len@212@01 1)))))
  :pattern ((Seq_index c@211@01 i@294@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@78@12@78@113-aux|)))
(assert (forall ((i@294@01 Int)) (!
  (=>
    (and (<= 0 i@294@01) (< i@294@01 (- len@212@01 1)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) (Seq_index
        c@211@01
        i@294@01))
      2))
  :pattern ((Seq_index c@211@01 i@294@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@78@12@78@113|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] |a| == len
; [eval] |a|
(declare-const i@295@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 168 | !(0 <= i@295@01) | live]
; [else-branch: 168 | 0 <= i@295@01 | live]
(push) ; 6
; [then-branch: 168 | !(0 <= i@295@01)]
(assert (not (<= 0 i@295@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 168 | 0 <= i@295@01]
(assert (<= 0 i@295@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@295@01) (not (<= 0 i@295@01))))
(assert (and (<= 0 i@295@01) (< i@295@01 len@212@01)))
; [eval] a[i]
(push) ; 5
(assert (not (>= i@295@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@295@01 (Seq_length a@209@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@296@01 ($Ref) Int)
(declare-fun img@297@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@295@01 Int)) (!
  (=>
    (and (<= 0 i@295@01) (< i@295@01 len@212@01))
    (or (<= 0 i@295@01) (not (<= 0 i@295@01))))
  :pattern ((Seq_index a@209@01 i@295@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@295@01 Int) (i2@295@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@295@01) (< i1@295@01 len@212@01))
      (and (<= 0 i2@295@01) (< i2@295@01 len@212@01))
      (= (Seq_index a@209@01 i1@295@01) (Seq_index a@209@01 i2@295@01)))
    (= i1@295@01 i2@295@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@295@01 Int)) (!
  (=>
    (and (<= 0 i@295@01) (< i@295@01 len@212@01))
    (and
      (= (inv@296@01 (Seq_index a@209@01 i@295@01)) i@295@01)
      (img@297@01 (Seq_index a@209@01 i@295@01))))
  :pattern ((Seq_index a@209@01 i@295@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@297@01 r)
      (and (<= 0 (inv@296@01 r)) (< (inv@296@01 r) len@212@01)))
    (= (Seq_index a@209@01 (inv@296@01 r)) r))
  :pattern ((inv@296@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@295@01 Int)) (!
  (= (Seq_index a@209@01 i@295@01) (Seq_index b@210@01 i@295@01))
  
  :qid |quant-u-6854|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@295@01 Int)) (!
  (= (Seq_index a@209@01 i@295@01) (Seq_index c@211@01 i@295@01))
  
  :qid |quant-u-6855|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@298@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@296@01 r)) (< (inv@296@01 r) len@212@01))
      (img@297@01 r)
      (= r (Seq_index a@209@01 (inv@296@01 r))))
    ($Perm.min
      (ite
        (and
          (img@283@01 r)
          (and (<= 0 (inv@282@01 r)) (< (inv@282@01 r) len@212@01)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@299@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@296@01 r)) (< (inv@296@01 r) len@212@01))
      (img@297@01 r)
      (= r (Seq_index a@209@01 (inv@296@01 r))))
    ($Perm.min
      (ite
        (and
          (img@286@01 r)
          (and (<= 0 (inv@285@01 r)) (< (inv@285@01 r) len@212@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- $Perm.Write (pTaken@298@01 r)))
    $Perm.No))
(define-fun pTaken@300@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@296@01 r)) (< (inv@296@01 r) len@212@01))
      (img@297@01 r)
      (= r (Seq_index a@209@01 (inv@296@01 r))))
    ($Perm.min
      (ite
        (and
          (img@289@01 r)
          (and (<= 0 (inv@288@01 r)) (< (inv@288@01 r) len@212@01)))
        $Perm.Write
        $Perm.No)
      (- (- $Perm.Write (pTaken@298@01 r)) (pTaken@299@01 r)))
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
          (img@283@01 r)
          (and (<= 0 (inv@282@01 r)) (< (inv@282@01 r) len@212@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@298@01 r))
    $Perm.No)
  
  :qid |quant-u-6857|))))
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
      (and (<= 0 (inv@296@01 r)) (< (inv@296@01 r) len@212@01))
      (img@297@01 r)
      (= r (Seq_index a@209@01 (inv@296@01 r))))
    (= (- $Perm.Write (pTaken@298@01 r)) $Perm.No))
  
  :qid |quant-u-6858|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] |b| == len
; [eval] |b|
(declare-const i@301@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 169 | !(0 <= i@301@01) | live]
; [else-branch: 169 | 0 <= i@301@01 | live]
(push) ; 6
; [then-branch: 169 | !(0 <= i@301@01)]
(assert (not (<= 0 i@301@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 169 | 0 <= i@301@01]
(assert (<= 0 i@301@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@301@01) (not (<= 0 i@301@01))))
(assert (and (<= 0 i@301@01) (< i@301@01 len@212@01)))
; [eval] b[i]
(push) ; 5
(assert (not (>= i@301@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@301@01 (Seq_length b@210@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@302@01 ($Ref) Int)
(declare-fun img@303@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@301@01 Int)) (!
  (=>
    (and (<= 0 i@301@01) (< i@301@01 len@212@01))
    (or (<= 0 i@301@01) (not (<= 0 i@301@01))))
  :pattern ((Seq_index b@210@01 i@301@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@301@01 Int) (i2@301@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@301@01) (< i1@301@01 len@212@01))
      (and (<= 0 i2@301@01) (< i2@301@01 len@212@01))
      (= (Seq_index b@210@01 i1@301@01) (Seq_index b@210@01 i2@301@01)))
    (= i1@301@01 i2@301@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@301@01 Int)) (!
  (=>
    (and (<= 0 i@301@01) (< i@301@01 len@212@01))
    (and
      (= (inv@302@01 (Seq_index b@210@01 i@301@01)) i@301@01)
      (img@303@01 (Seq_index b@210@01 i@301@01))))
  :pattern ((Seq_index b@210@01 i@301@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@303@01 r)
      (and (<= 0 (inv@302@01 r)) (< (inv@302@01 r) len@212@01)))
    (= (Seq_index b@210@01 (inv@302@01 r)) r))
  :pattern ((inv@302@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@301@01 Int)) (!
  (= (Seq_index b@210@01 i@301@01) (Seq_index c@211@01 i@301@01))
  
  :qid |quant-u-6860|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@304@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@302@01 r)) (< (inv@302@01 r) len@212@01))
      (img@303@01 r)
      (= r (Seq_index b@210@01 (inv@302@01 r))))
    ($Perm.min
      (ite
        (and
          (img@286@01 r)
          (and (<= 0 (inv@285@01 r)) (< (inv@285@01 r) len@212@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@305@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@302@01 r)) (< (inv@302@01 r) len@212@01))
      (img@303@01 r)
      (= r (Seq_index b@210@01 (inv@302@01 r))))
    ($Perm.min
      (ite
        (and
          (img@289@01 r)
          (and (<= 0 (inv@288@01 r)) (< (inv@288@01 r) len@212@01)))
        $Perm.Write
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@304@01 r)))
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
          (img@286@01 r)
          (and (<= 0 (inv@285@01 r)) (< (inv@285@01 r) len@212@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@304@01 r))
    $Perm.No)
  
  :qid |quant-u-6862|))))
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
      (and (<= 0 (inv@302@01 r)) (< (inv@302@01 r) len@212@01))
      (img@303@01 r)
      (= r (Seq_index b@210@01 (inv@302@01 r))))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@304@01 r)) $Perm.No))
  
  :qid |quant-u-6863|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] |c| == len
; [eval] |c|
(declare-const i@306@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 170 | !(0 <= i@306@01) | live]
; [else-branch: 170 | 0 <= i@306@01 | live]
(push) ; 6
; [then-branch: 170 | !(0 <= i@306@01)]
(assert (not (<= 0 i@306@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 170 | 0 <= i@306@01]
(assert (<= 0 i@306@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@306@01) (not (<= 0 i@306@01))))
(assert (and (<= 0 i@306@01) (< i@306@01 len@212@01)))
; [eval] c[i]
(push) ; 5
(assert (not (>= i@306@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@306@01 (Seq_length c@211@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@307@01 ($Ref) Int)
(declare-fun img@308@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@306@01 Int)) (!
  (=>
    (and (<= 0 i@306@01) (< i@306@01 len@212@01))
    (or (<= 0 i@306@01) (not (<= 0 i@306@01))))
  :pattern ((Seq_index c@211@01 i@306@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@306@01 Int) (i2@306@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@306@01) (< i1@306@01 len@212@01))
      (and (<= 0 i2@306@01) (< i2@306@01 len@212@01))
      (= (Seq_index c@211@01 i1@306@01) (Seq_index c@211@01 i2@306@01)))
    (= i1@306@01 i2@306@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@306@01 Int)) (!
  (=>
    (and (<= 0 i@306@01) (< i@306@01 len@212@01))
    (and
      (= (inv@307@01 (Seq_index c@211@01 i@306@01)) i@306@01)
      (img@308@01 (Seq_index c@211@01 i@306@01))))
  :pattern ((Seq_index c@211@01 i@306@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@308@01 r)
      (and (<= 0 (inv@307@01 r)) (< (inv@307@01 r) len@212@01)))
    (= (Seq_index c@211@01 (inv@307@01 r)) r))
  :pattern ((inv@307@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@309@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@307@01 r)) (< (inv@307@01 r) len@212@01))
      (img@308@01 r)
      (= r (Seq_index c@211@01 (inv@307@01 r))))
    ($Perm.min
      (ite
        (and
          (img@289@01 r)
          (and (<= 0 (inv@288@01 r)) (< (inv@288@01 r) len@212@01)))
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
          (img@289@01 r)
          (and (<= 0 (inv@288@01 r)) (< (inv@288@01 r) len@212@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@309@01 r))
    $Perm.No)
  
  :qid |quant-u-6866|))))
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
      (and (<= 0 (inv@307@01 r)) (< (inv@307@01 r) len@212@01))
      (img@308@01 r)
      (= r (Seq_index c@211@01 (inv@307@01 r))))
    (= (- $Perm.Write (pTaken@309@01 r)) $Perm.No))
  
  :qid |quant-u-6867|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall i: Int :: { a[i] } 0 <= i && i < len ==> a[i].Ref__Integer_value == i + 1)
(declare-const i@310@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= i && i < len ==> a[i].Ref__Integer_value == i + 1
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 171 | !(0 <= i@310@01) | live]
; [else-branch: 171 | 0 <= i@310@01 | live]
(push) ; 6
; [then-branch: 171 | !(0 <= i@310@01)]
(assert (not (<= 0 i@310@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 171 | 0 <= i@310@01]
(assert (<= 0 i@310@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@310@01) (not (<= 0 i@310@01))))
(push) ; 5
; [then-branch: 172 | 0 <= i@310@01 && i@310@01 < len@212@01 | live]
; [else-branch: 172 | !(0 <= i@310@01 && i@310@01 < len@212@01) | live]
(push) ; 6
; [then-branch: 172 | 0 <= i@310@01 && i@310@01 < len@212@01]
(assert (and (<= 0 i@310@01) (< i@310@01 len@212@01)))
; [eval] a[i].Ref__Integer_value == i + 1
; [eval] a[i]
(push) ; 7
(assert (not (>= i@310@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@310@01 (Seq_length a@209@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@283@01 r)
        (and (<= 0 (inv@282@01 r)) (< (inv@282@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@280@01))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@280@01))))) r))
    :qid |qp.fvfValDef27|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@286@01 r)
        (and (<= 0 (inv@285@01 r)) (< (inv@285@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))) r))
    :qid |qp.fvfValDef28|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@289@01 r)
        (and (<= 0 (inv@288@01 r)) (< (inv@288@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))) r))
    :qid |qp.fvfValDef29|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@283@01 (Seq_index a@209@01 i@310@01))
          (and
            (<= 0 (inv@282@01 (Seq_index a@209@01 i@310@01)))
            (< (inv@282@01 (Seq_index a@209@01 i@310@01)) len@212@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@286@01 (Seq_index a@209@01 i@310@01))
          (and
            (<= 0 (inv@285@01 (Seq_index a@209@01 i@310@01)))
            (< (inv@285@01 (Seq_index a@209@01 i@310@01)) len@212@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (and
        (img@289@01 (Seq_index a@209@01 i@310@01))
        (and
          (<= 0 (inv@288@01 (Seq_index a@209@01 i@310@01)))
          (< (inv@288@01 (Seq_index a@209@01 i@310@01)) len@212@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] i + 1
(pop) ; 6
(push) ; 6
; [else-branch: 172 | !(0 <= i@310@01 && i@310@01 < len@212@01)]
(assert (not (and (<= 0 i@310@01) (< i@310@01 len@212@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@283@01 r)
      (and (<= 0 (inv@282@01 r)) (< (inv@282@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@280@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@280@01))))) r))
  :qid |qp.fvfValDef27|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@286@01 r)
      (and (<= 0 (inv@285@01 r)) (< (inv@285@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))) r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@289@01 r)
      (and (<= 0 (inv@288@01 r)) (< (inv@288@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))) r))
  :qid |qp.fvfValDef29|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@310@01) (< i@310@01 len@212@01)))
  (and (<= 0 i@310@01) (< i@310@01 len@212@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@283@01 r)
      (and (<= 0 (inv@282@01 r)) (< (inv@282@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@280@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@280@01))))) r))
  :qid |qp.fvfValDef27|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@286@01 r)
      (and (<= 0 (inv@285@01 r)) (< (inv@285@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))) r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@289@01 r)
      (and (<= 0 (inv@288@01 r)) (< (inv@288@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))) r))
  :qid |qp.fvfValDef29|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@310@01 Int)) (!
  (and
    (or (<= 0 i@310@01) (not (<= 0 i@310@01)))
    (or
      (not (and (<= 0 i@310@01) (< i@310@01 len@212@01)))
      (and (<= 0 i@310@01) (< i@310@01 len@212@01))))
  :pattern ((Seq_index a@209@01 i@310@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@192@12@192@89-aux|)))
(push) ; 4
(assert (not (forall ((i@310@01 Int)) (!
  (=>
    (and (<= 0 i@310@01) (< i@310@01 len@212@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) (Seq_index
        a@209@01
        i@310@01))
      (+ i@310@01 1)))
  :pattern ((Seq_index a@209@01 i@310@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@192@12@192@89|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@310@01 Int)) (!
  (=>
    (and (<= 0 i@310@01) (< i@310@01 len@212@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) (Seq_index
        a@209@01
        i@310@01))
      (+ i@310@01 1)))
  :pattern ((Seq_index a@209@01 i@310@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@192@12@192@89|)))
; [eval] (forall i: Int :: { b[i] } 0 <= i && i < len ==> b[i].Ref__Integer_value == i)
(declare-const i@311@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len ==> b[i].Ref__Integer_value == i
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 173 | !(0 <= i@311@01) | live]
; [else-branch: 173 | 0 <= i@311@01 | live]
(push) ; 6
; [then-branch: 173 | !(0 <= i@311@01)]
(assert (not (<= 0 i@311@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 173 | 0 <= i@311@01]
(assert (<= 0 i@311@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@311@01) (not (<= 0 i@311@01))))
(push) ; 5
; [then-branch: 174 | 0 <= i@311@01 && i@311@01 < len@212@01 | live]
; [else-branch: 174 | !(0 <= i@311@01 && i@311@01 < len@212@01) | live]
(push) ; 6
; [then-branch: 174 | 0 <= i@311@01 && i@311@01 < len@212@01]
(assert (and (<= 0 i@311@01) (< i@311@01 len@212@01)))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 7
(assert (not (>= i@311@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@311@01 (Seq_length b@210@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@283@01 r)
        (and (<= 0 (inv@282@01 r)) (< (inv@282@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@280@01))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@280@01))))) r))
    :qid |qp.fvfValDef27|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@286@01 r)
        (and (<= 0 (inv@285@01 r)) (< (inv@285@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))) r))
    :qid |qp.fvfValDef28|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@289@01 r)
        (and (<= 0 (inv@288@01 r)) (< (inv@288@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))) r))
    :qid |qp.fvfValDef29|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@283@01 (Seq_index b@210@01 i@311@01))
          (and
            (<= 0 (inv@282@01 (Seq_index b@210@01 i@311@01)))
            (< (inv@282@01 (Seq_index b@210@01 i@311@01)) len@212@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@286@01 (Seq_index b@210@01 i@311@01))
          (and
            (<= 0 (inv@285@01 (Seq_index b@210@01 i@311@01)))
            (< (inv@285@01 (Seq_index b@210@01 i@311@01)) len@212@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (and
        (img@289@01 (Seq_index b@210@01 i@311@01))
        (and
          (<= 0 (inv@288@01 (Seq_index b@210@01 i@311@01)))
          (< (inv@288@01 (Seq_index b@210@01 i@311@01)) len@212@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 174 | !(0 <= i@311@01 && i@311@01 < len@212@01)]
(assert (not (and (<= 0 i@311@01) (< i@311@01 len@212@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@283@01 r)
      (and (<= 0 (inv@282@01 r)) (< (inv@282@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@280@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@280@01))))) r))
  :qid |qp.fvfValDef27|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@286@01 r)
      (and (<= 0 (inv@285@01 r)) (< (inv@285@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))) r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@289@01 r)
      (and (<= 0 (inv@288@01 r)) (< (inv@288@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))) r))
  :qid |qp.fvfValDef29|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@311@01) (< i@311@01 len@212@01)))
  (and (<= 0 i@311@01) (< i@311@01 len@212@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@283@01 r)
      (and (<= 0 (inv@282@01 r)) (< (inv@282@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@280@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@280@01))))) r))
  :qid |qp.fvfValDef27|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@286@01 r)
      (and (<= 0 (inv@285@01 r)) (< (inv@285@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))) r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@289@01 r)
      (and (<= 0 (inv@288@01 r)) (< (inv@288@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))) r))
  :qid |qp.fvfValDef29|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@311@01 Int)) (!
  (and
    (or (<= 0 i@311@01) (not (<= 0 i@311@01)))
    (or
      (not (and (<= 0 i@311@01) (< i@311@01 len@212@01)))
      (and (<= 0 i@311@01) (< i@311@01 len@212@01))))
  :pattern ((Seq_index b@210@01 i@311@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@193@12@193@85-aux|)))
(push) ; 4
(assert (not (forall ((i@311@01 Int)) (!
  (=>
    (and (<= 0 i@311@01) (< i@311@01 len@212@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) (Seq_index
        b@210@01
        i@311@01))
      i@311@01))
  :pattern ((Seq_index b@210@01 i@311@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@193@12@193@85|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@311@01 Int)) (!
  (=>
    (and (<= 0 i@311@01) (< i@311@01 len@212@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) (Seq_index
        b@210@01
        i@311@01))
      i@311@01))
  :pattern ((Seq_index b@210@01 i@311@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@193@12@193@85|)))
; [eval] (forall i: Int :: { c[i] } 0 <= i && i < len - 1 ==> c[i].Ref__Integer_value == 2)
(declare-const i@312@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len - 1 ==> c[i].Ref__Integer_value == 2
; [eval] 0 <= i && i < len - 1
; [eval] 0 <= i
(push) ; 5
; [then-branch: 175 | !(0 <= i@312@01) | live]
; [else-branch: 175 | 0 <= i@312@01 | live]
(push) ; 6
; [then-branch: 175 | !(0 <= i@312@01)]
(assert (not (<= 0 i@312@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 175 | 0 <= i@312@01]
(assert (<= 0 i@312@01))
; [eval] i < len - 1
; [eval] len - 1
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@312@01) (not (<= 0 i@312@01))))
(push) ; 5
; [then-branch: 176 | 0 <= i@312@01 && i@312@01 < len@212@01 - 1 | live]
; [else-branch: 176 | !(0 <= i@312@01 && i@312@01 < len@212@01 - 1) | live]
(push) ; 6
; [then-branch: 176 | 0 <= i@312@01 && i@312@01 < len@212@01 - 1]
(assert (and (<= 0 i@312@01) (< i@312@01 (- len@212@01 1))))
; [eval] c[i].Ref__Integer_value == 2
; [eval] c[i]
(push) ; 7
(assert (not (>= i@312@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@312@01 (Seq_length c@211@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@283@01 r)
        (and (<= 0 (inv@282@01 r)) (< (inv@282@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@280@01))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@280@01))))) r))
    :qid |qp.fvfValDef27|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@286@01 r)
        (and (<= 0 (inv@285@01 r)) (< (inv@285@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))) r))
    :qid |qp.fvfValDef28|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@289@01 r)
        (and (<= 0 (inv@288@01 r)) (< (inv@288@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))) r))
    :qid |qp.fvfValDef29|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@283@01 (Seq_index c@211@01 i@312@01))
          (and
            (<= 0 (inv@282@01 (Seq_index c@211@01 i@312@01)))
            (< (inv@282@01 (Seq_index c@211@01 i@312@01)) len@212@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@286@01 (Seq_index c@211@01 i@312@01))
          (and
            (<= 0 (inv@285@01 (Seq_index c@211@01 i@312@01)))
            (< (inv@285@01 (Seq_index c@211@01 i@312@01)) len@212@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (and
        (img@289@01 (Seq_index c@211@01 i@312@01))
        (and
          (<= 0 (inv@288@01 (Seq_index c@211@01 i@312@01)))
          (< (inv@288@01 (Seq_index c@211@01 i@312@01)) len@212@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 176 | !(0 <= i@312@01 && i@312@01 < len@212@01 - 1)]
(assert (not (and (<= 0 i@312@01) (< i@312@01 (- len@212@01 1)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@283@01 r)
      (and (<= 0 (inv@282@01 r)) (< (inv@282@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@280@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@280@01))))) r))
  :qid |qp.fvfValDef27|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@286@01 r)
      (and (<= 0 (inv@285@01 r)) (< (inv@285@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))) r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@289@01 r)
      (and (<= 0 (inv@288@01 r)) (< (inv@288@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))) r))
  :qid |qp.fvfValDef29|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@312@01) (< i@312@01 (- len@212@01 1))))
  (and (<= 0 i@312@01) (< i@312@01 (- len@212@01 1)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@283@01 r)
      (and (<= 0 (inv@282@01 r)) (< (inv@282@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@280@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@280@01))))) r))
  :qid |qp.fvfValDef27|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@286@01 r)
      (and (<= 0 (inv@285@01 r)) (< (inv@285@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01)))))) r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@289@01 r)
      (and (<= 0 (inv@288@01 r)) (< (inv@288@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@280@01))))))) r))
  :qid |qp.fvfValDef29|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@312@01 Int)) (!
  (and
    (or (<= 0 i@312@01) (not (<= 0 i@312@01)))
    (or
      (not (and (<= 0 i@312@01) (< i@312@01 (- len@212@01 1))))
      (and (<= 0 i@312@01) (< i@312@01 (- len@212@01 1)))))
  :pattern ((Seq_index c@211@01 i@312@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@194@12@194@89-aux|)))
(push) ; 4
(assert (not (forall ((i@312@01 Int)) (!
  (=>
    (and (<= 0 i@312@01) (< i@312@01 (- len@212@01 1)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) (Seq_index
        c@211@01
        i@312@01))
      2))
  :pattern ((Seq_index c@211@01 i@312@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@194@12@194@89|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@312@01 Int)) (!
  (=>
    (and (<= 0 i@312@01) (< i@312@01 (- len@212@01 1)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@291@01  $FVF<Ref__Integer_value>) (Seq_index
        c@211@01
        i@312@01))
      2))
  :pattern ((Seq_index c@211@01 i@312@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@194@12@194@89|)))
(pop) ; 3
(push) ; 3
; [else-branch: 137 | !(0 < len@212@01)]
(assert (not (< 0 len@212@01)))
(declare-const i@313@01 Int)
(push) ; 4
; [eval] 1 <= i && i < (len - 1 < len ? len - 1 : len) + 1
; [eval] 1 <= i
(push) ; 5
; [then-branch: 177 | !(1 <= i@313@01) | live]
; [else-branch: 177 | 1 <= i@313@01 | live]
(push) ; 6
; [then-branch: 177 | !(1 <= i@313@01)]
(assert (not (<= 1 i@313@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 177 | 1 <= i@313@01]
(assert (<= 1 i@313@01))
; [eval] i < (len - 1 < len ? len - 1 : len) + 1
; [eval] (len - 1 < len ? len - 1 : len) + 1
; [eval] (len - 1 < len ? len - 1 : len)
; [eval] len - 1 < len
; [eval] len - 1
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not (< (- len@212@01 1) len@212@01))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (< (- len@212@01 1) len@212@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 178 | len@212@01 - 1 < len@212@01 | live]
; [else-branch: 178 | !(len@212@01 - 1 < len@212@01) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 178 | len@212@01 - 1 < len@212@01]
(assert (< (- len@212@01 1) len@212@01))
; [eval] len - 1
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (< (- len@212@01 1) len@212@01))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=> (<= 1 i@313@01) (and (<= 1 i@313@01) (< (- len@212@01 1) len@212@01))))
(assert (or (<= 1 i@313@01) (not (<= 1 i@313@01))))
(assert (and (<= 1 i@313@01) (< i@313@01 (+ (- len@212@01 1) 1))))
; [eval] a[i]
(push) ; 5
(assert (not (>= i@313@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@313@01 (Seq_length a@209@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@314@01 ($Ref) Int)
(declare-fun img@315@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@313@01 Int)) (!
  (=>
    (and (<= 1 i@313@01) (< i@313@01 (+ (- len@212@01 1) 1)))
    (and
      (=> (<= 1 i@313@01) (and (<= 1 i@313@01) (< (- len@212@01 1) len@212@01)))
      (or (<= 1 i@313@01) (not (<= 1 i@313@01)))))
  :pattern ((Seq_index a@209@01 i@313@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@313@01 Int) (i2@313@01 Int)) (!
  (=>
    (and
      (and (<= 1 i1@313@01) (< i1@313@01 (+ (- len@212@01 1) 1)))
      (and (<= 1 i2@313@01) (< i2@313@01 (+ (- len@212@01 1) 1)))
      (= (Seq_index a@209@01 i1@313@01) (Seq_index a@209@01 i2@313@01)))
    (= i1@313@01 i2@313@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@313@01 Int)) (!
  (=>
    (and (<= 1 i@313@01) (< i@313@01 (+ (- len@212@01 1) 1)))
    (and
      (= (inv@314@01 (Seq_index a@209@01 i@313@01)) i@313@01)
      (img@315@01 (Seq_index a@209@01 i@313@01))))
  :pattern ((Seq_index a@209@01 i@313@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@315@01 r)
      (and (<= 1 (inv@314@01 r)) (< (inv@314@01 r) (+ (- len@212@01 1) 1))))
    (= (Seq_index a@209@01 (inv@314@01 r)) r))
  :pattern ((inv@314@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@313@01 Int)) (!
  (= (Seq_index a@209@01 i@313@01) (Seq_index c@211@01 i@313@01))
  
  :qid |quant-u-6869|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@313@01 Int)) (!
  (= (Seq_index a@209@01 i@313@01) (Seq_index b@210@01 i@313@01))
  
  :qid |quant-u-6870|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@316@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 1 (inv@314@01 r)) (< (inv@314@01 r) (+ (- len@212@01 1) 1)))
      (img@315@01 r)
      (= r (Seq_index a@209@01 (inv@314@01 r))))
    ($Perm.min
      (ite
        (and
          (img@228@01 r)
          (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@212@01)))
        $Perm.Write
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@317@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 1 (inv@314@01 r)) (< (inv@314@01 r) (+ (- len@212@01 1) 1)))
      (img@315@01 r)
      (= r (Seq_index a@209@01 (inv@314@01 r))))
    ($Perm.min
      (ite
        (and
          (img@223@01 r)
          (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) len@212@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@316@01 r)))
    $Perm.No))
(define-fun pTaken@318@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 1 (inv@314@01 r)) (< (inv@314@01 r) (+ (- len@212@01 1) 1)))
      (img@315@01 r)
      (= r (Seq_index a@209@01 (inv@314@01 r))))
    ($Perm.min
      (ite
        (and
          (img@218@01 r)
          (and (<= 0 (inv@217@01 r)) (< (inv@217@01 r) len@212@01)))
        (- $Perm.Write (pTaken@253@01 r))
        $Perm.No)
      (- (- (/ (to_real 1) (to_real 2)) (pTaken@316@01 r)) (pTaken@317@01 r)))
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
          (img@228@01 r)
          (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@212@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@316@01 r))
    $Perm.No)
  
  :qid |quant-u-6872|))))
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
      (and (<= 1 (inv@314@01 r)) (< (inv@314@01 r) (+ (- len@212@01 1) 1)))
      (img@315@01 r)
      (= r (Seq_index a@209@01 (inv@314@01 r))))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@316@01 r)) $Perm.No))
  
  :qid |quant-u-6873|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall j: Int, k: Int :: { b[j], b[k] } 0 <= j && (j < len && (0 <= k && (k < len && j != k))) ==> b[j] != b[k])
(declare-const j@319@01 Int)
(declare-const k@320@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= j && (j < len && (0 <= k && (k < len && j != k))) ==> b[j] != b[k]
; [eval] 0 <= j && (j < len && (0 <= k && (k < len && j != k)))
; [eval] 0 <= j
(push) ; 5
; [then-branch: 179 | !(0 <= j@319@01) | live]
; [else-branch: 179 | 0 <= j@319@01 | live]
(push) ; 6
; [then-branch: 179 | !(0 <= j@319@01)]
(assert (not (<= 0 j@319@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 179 | 0 <= j@319@01]
(assert (<= 0 j@319@01))
; [eval] j < len
(push) ; 7
; [then-branch: 180 | !(j@319@01 < len@212@01) | live]
; [else-branch: 180 | j@319@01 < len@212@01 | live]
(push) ; 8
; [then-branch: 180 | !(j@319@01 < len@212@01)]
(assert (not (< j@319@01 len@212@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 180 | j@319@01 < len@212@01]
(assert (< j@319@01 len@212@01))
; [eval] 0 <= k
(push) ; 9
; [then-branch: 181 | !(0 <= k@320@01) | live]
; [else-branch: 181 | 0 <= k@320@01 | live]
(push) ; 10
; [then-branch: 181 | !(0 <= k@320@01)]
(assert (not (<= 0 k@320@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 181 | 0 <= k@320@01]
(assert (<= 0 k@320@01))
; [eval] k < len
(push) ; 11
; [then-branch: 182 | !(k@320@01 < len@212@01) | live]
; [else-branch: 182 | k@320@01 < len@212@01 | live]
(push) ; 12
; [then-branch: 182 | !(k@320@01 < len@212@01)]
(assert (not (< k@320@01 len@212@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 182 | k@320@01 < len@212@01]
(assert (< k@320@01 len@212@01))
; [eval] j != k
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (< k@320@01 len@212@01) (not (< k@320@01 len@212@01))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@320@01)
  (and
    (<= 0 k@320@01)
    (or (< k@320@01 len@212@01) (not (< k@320@01 len@212@01))))))
(assert (or (<= 0 k@320@01) (not (<= 0 k@320@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@319@01 len@212@01)
  (and
    (< j@319@01 len@212@01)
    (=>
      (<= 0 k@320@01)
      (and
        (<= 0 k@320@01)
        (or (< k@320@01 len@212@01) (not (< k@320@01 len@212@01)))))
    (or (<= 0 k@320@01) (not (<= 0 k@320@01))))))
(assert (or (< j@319@01 len@212@01) (not (< j@319@01 len@212@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@319@01)
  (and
    (<= 0 j@319@01)
    (=>
      (< j@319@01 len@212@01)
      (and
        (< j@319@01 len@212@01)
        (=>
          (<= 0 k@320@01)
          (and
            (<= 0 k@320@01)
            (or (< k@320@01 len@212@01) (not (< k@320@01 len@212@01)))))
        (or (<= 0 k@320@01) (not (<= 0 k@320@01)))))
    (or (< j@319@01 len@212@01) (not (< j@319@01 len@212@01))))))
(assert (or (<= 0 j@319@01) (not (<= 0 j@319@01))))
(push) ; 5
; [then-branch: 183 | 0 <= j@319@01 && j@319@01 < len@212@01 && 0 <= k@320@01 && k@320@01 < len@212@01 && j@319@01 != k@320@01 | live]
; [else-branch: 183 | !(0 <= j@319@01 && j@319@01 < len@212@01 && 0 <= k@320@01 && k@320@01 < len@212@01 && j@319@01 != k@320@01) | live]
(push) ; 6
; [then-branch: 183 | 0 <= j@319@01 && j@319@01 < len@212@01 && 0 <= k@320@01 && k@320@01 < len@212@01 && j@319@01 != k@320@01]
(assert (and
  (<= 0 j@319@01)
  (and
    (< j@319@01 len@212@01)
    (and
      (<= 0 k@320@01)
      (and (< k@320@01 len@212@01) (not (= j@319@01 k@320@01)))))))
; [eval] b[j] != b[k]
; [eval] b[j]
(push) ; 7
(assert (not (>= j@319@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< j@319@01 (Seq_length b@210@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] b[k]
(push) ; 7
(assert (not (>= k@320@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< k@320@01 (Seq_length b@210@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 183 | !(0 <= j@319@01 && j@319@01 < len@212@01 && 0 <= k@320@01 && k@320@01 < len@212@01 && j@319@01 != k@320@01)]
(assert (not
  (and
    (<= 0 j@319@01)
    (and
      (< j@319@01 len@212@01)
      (and
        (<= 0 k@320@01)
        (and (< k@320@01 len@212@01) (not (= j@319@01 k@320@01))))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@319@01)
    (and
      (< j@319@01 len@212@01)
      (and
        (<= 0 k@320@01)
        (and (< k@320@01 len@212@01) (not (= j@319@01 k@320@01))))))
  (and
    (<= 0 j@319@01)
    (< j@319@01 len@212@01)
    (<= 0 k@320@01)
    (< k@320@01 len@212@01)
    (not (= j@319@01 k@320@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@319@01)
      (and
        (< j@319@01 len@212@01)
        (and
          (<= 0 k@320@01)
          (and (< k@320@01 len@212@01) (not (= j@319@01 k@320@01)))))))
  (and
    (<= 0 j@319@01)
    (and
      (< j@319@01 len@212@01)
      (and
        (<= 0 k@320@01)
        (and (< k@320@01 len@212@01) (not (= j@319@01 k@320@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@319@01 Int) (k@320@01 Int)) (!
  (and
    (=>
      (<= 0 j@319@01)
      (and
        (<= 0 j@319@01)
        (=>
          (< j@319@01 len@212@01)
          (and
            (< j@319@01 len@212@01)
            (=>
              (<= 0 k@320@01)
              (and
                (<= 0 k@320@01)
                (or (< k@320@01 len@212@01) (not (< k@320@01 len@212@01)))))
            (or (<= 0 k@320@01) (not (<= 0 k@320@01)))))
        (or (< j@319@01 len@212@01) (not (< j@319@01 len@212@01)))))
    (or (<= 0 j@319@01) (not (<= 0 j@319@01)))
    (=>
      (and
        (<= 0 j@319@01)
        (and
          (< j@319@01 len@212@01)
          (and
            (<= 0 k@320@01)
            (and (< k@320@01 len@212@01) (not (= j@319@01 k@320@01))))))
      (and
        (<= 0 j@319@01)
        (< j@319@01 len@212@01)
        (<= 0 k@320@01)
        (< k@320@01 len@212@01)
        (not (= j@319@01 k@320@01))))
    (or
      (not
        (and
          (<= 0 j@319@01)
          (and
            (< j@319@01 len@212@01)
            (and
              (<= 0 k@320@01)
              (and (< k@320@01 len@212@01) (not (= j@319@01 k@320@01)))))))
      (and
        (<= 0 j@319@01)
        (and
          (< j@319@01 len@212@01)
          (and
            (<= 0 k@320@01)
            (and (< k@320@01 len@212@01) (not (= j@319@01 k@320@01))))))))
  :pattern ((Seq_index b@210@01 j@319@01) (Seq_index b@210@01 k@320@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@66@12@66@102-aux|)))
(push) ; 4
(assert (not (forall ((j@319@01 Int) (k@320@01 Int)) (!
  (=>
    (and
      (<= 0 j@319@01)
      (and
        (< j@319@01 len@212@01)
        (and
          (<= 0 k@320@01)
          (and (< k@320@01 len@212@01) (not (= j@319@01 k@320@01))))))
    (not (= (Seq_index b@210@01 j@319@01) (Seq_index b@210@01 k@320@01))))
  :pattern ((Seq_index b@210@01 j@319@01) (Seq_index b@210@01 k@320@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@66@12@66@102|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((j@319@01 Int) (k@320@01 Int)) (!
  (=>
    (and
      (<= 0 j@319@01)
      (and
        (< j@319@01 len@212@01)
        (and
          (<= 0 k@320@01)
          (and (< k@320@01 len@212@01) (not (= j@319@01 k@320@01))))))
    (not (= (Seq_index b@210@01 j@319@01) (Seq_index b@210@01 k@320@01))))
  :pattern ((Seq_index b@210@01 j@319@01) (Seq_index b@210@01 k@320@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@66@12@66@102|)))
(declare-const i@321@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 184 | !(0 <= i@321@01) | live]
; [else-branch: 184 | 0 <= i@321@01 | live]
(push) ; 6
; [then-branch: 184 | !(0 <= i@321@01)]
(assert (not (<= 0 i@321@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 184 | 0 <= i@321@01]
(assert (<= 0 i@321@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@321@01) (not (<= 0 i@321@01))))
(assert (and (<= 0 i@321@01) (< i@321@01 len@212@01)))
; [eval] b[i]
(push) ; 5
(assert (not (>= i@321@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@321@01 (Seq_length b@210@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@322@01 ($Ref) Int)
(declare-fun img@323@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@321@01 Int)) (!
  (=>
    (and (<= 0 i@321@01) (< i@321@01 len@212@01))
    (or (<= 0 i@321@01) (not (<= 0 i@321@01))))
  :pattern ((Seq_index b@210@01 i@321@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@321@01 Int) (i2@321@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@321@01) (< i1@321@01 len@212@01))
      (and (<= 0 i2@321@01) (< i2@321@01 len@212@01))
      (= (Seq_index b@210@01 i1@321@01) (Seq_index b@210@01 i2@321@01)))
    (= i1@321@01 i2@321@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@321@01 Int)) (!
  (=>
    (and (<= 0 i@321@01) (< i@321@01 len@212@01))
    (and
      (= (inv@322@01 (Seq_index b@210@01 i@321@01)) i@321@01)
      (img@323@01 (Seq_index b@210@01 i@321@01))))
  :pattern ((Seq_index b@210@01 i@321@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@323@01 r)
      (and (<= 0 (inv@322@01 r)) (< (inv@322@01 r) len@212@01)))
    (= (Seq_index b@210@01 (inv@322@01 r)) r))
  :pattern ((inv@322@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@321@01 Int)) (!
  (= (Seq_index b@210@01 i@321@01) (Seq_index a@209@01 i@321@01))
  
  :qid |quant-u-6875|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@324@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@322@01 r)) (< (inv@322@01 r) len@212@01))
      (img@323@01 r)
      (= r (Seq_index b@210@01 (inv@322@01 r))))
    ($Perm.min
      (ite
        (and
          (img@218@01 r)
          (and (<= 0 (inv@217@01 r)) (< (inv@217@01 r) len@212@01)))
        (- $Perm.Write (pTaken@253@01 r))
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@325@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@322@01 r)) (< (inv@322@01 r) len@212@01))
      (img@323@01 r)
      (= r (Seq_index b@210@01 (inv@322@01 r))))
    ($Perm.min
      (ite
        (and
          (img@223@01 r)
          (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) len@212@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@324@01 r)))
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
          (img@218@01 r)
          (and (<= 0 (inv@217@01 r)) (< (inv@217@01 r) len@212@01)))
        (- $Perm.Write (pTaken@253@01 r))
        $Perm.No)
      (pTaken@324@01 r))
    $Perm.No)
  
  :qid |quant-u-6877|))))
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
      (and (<= 0 (inv@322@01 r)) (< (inv@322@01 r) len@212@01))
      (img@323@01 r)
      (= r (Seq_index b@210@01 (inv@322@01 r))))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@324@01 r)) $Perm.No))
  
  :qid |quant-u-6878|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall j: Int, k: Int :: { c[j], c[k] } 0 <= j && (j < len && (0 <= k && (k < len && j != k))) ==> c[j] != c[k])
(declare-const j@326@01 Int)
(declare-const k@327@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= j && (j < len && (0 <= k && (k < len && j != k))) ==> c[j] != c[k]
; [eval] 0 <= j && (j < len && (0 <= k && (k < len && j != k)))
; [eval] 0 <= j
(push) ; 5
; [then-branch: 185 | !(0 <= j@326@01) | live]
; [else-branch: 185 | 0 <= j@326@01 | live]
(push) ; 6
; [then-branch: 185 | !(0 <= j@326@01)]
(assert (not (<= 0 j@326@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 185 | 0 <= j@326@01]
(assert (<= 0 j@326@01))
; [eval] j < len
(push) ; 7
; [then-branch: 186 | !(j@326@01 < len@212@01) | live]
; [else-branch: 186 | j@326@01 < len@212@01 | live]
(push) ; 8
; [then-branch: 186 | !(j@326@01 < len@212@01)]
(assert (not (< j@326@01 len@212@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 186 | j@326@01 < len@212@01]
(assert (< j@326@01 len@212@01))
; [eval] 0 <= k
(push) ; 9
; [then-branch: 187 | !(0 <= k@327@01) | live]
; [else-branch: 187 | 0 <= k@327@01 | live]
(push) ; 10
; [then-branch: 187 | !(0 <= k@327@01)]
(assert (not (<= 0 k@327@01)))
(pop) ; 10
(push) ; 10
; [else-branch: 187 | 0 <= k@327@01]
(assert (<= 0 k@327@01))
; [eval] k < len
(push) ; 11
; [then-branch: 188 | !(k@327@01 < len@212@01) | live]
; [else-branch: 188 | k@327@01 < len@212@01 | live]
(push) ; 12
; [then-branch: 188 | !(k@327@01 < len@212@01)]
(assert (not (< k@327@01 len@212@01)))
(pop) ; 12
(push) ; 12
; [else-branch: 188 | k@327@01 < len@212@01]
(assert (< k@327@01 len@212@01))
; [eval] j != k
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (< k@327@01 len@212@01) (not (< k@327@01 len@212@01))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@327@01)
  (and
    (<= 0 k@327@01)
    (or (< k@327@01 len@212@01) (not (< k@327@01 len@212@01))))))
(assert (or (<= 0 k@327@01) (not (<= 0 k@327@01))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (< j@326@01 len@212@01)
  (and
    (< j@326@01 len@212@01)
    (=>
      (<= 0 k@327@01)
      (and
        (<= 0 k@327@01)
        (or (< k@327@01 len@212@01) (not (< k@327@01 len@212@01)))))
    (or (<= 0 k@327@01) (not (<= 0 k@327@01))))))
(assert (or (< j@326@01 len@212@01) (not (< j@326@01 len@212@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@326@01)
  (and
    (<= 0 j@326@01)
    (=>
      (< j@326@01 len@212@01)
      (and
        (< j@326@01 len@212@01)
        (=>
          (<= 0 k@327@01)
          (and
            (<= 0 k@327@01)
            (or (< k@327@01 len@212@01) (not (< k@327@01 len@212@01)))))
        (or (<= 0 k@327@01) (not (<= 0 k@327@01)))))
    (or (< j@326@01 len@212@01) (not (< j@326@01 len@212@01))))))
(assert (or (<= 0 j@326@01) (not (<= 0 j@326@01))))
(push) ; 5
; [then-branch: 189 | 0 <= j@326@01 && j@326@01 < len@212@01 && 0 <= k@327@01 && k@327@01 < len@212@01 && j@326@01 != k@327@01 | live]
; [else-branch: 189 | !(0 <= j@326@01 && j@326@01 < len@212@01 && 0 <= k@327@01 && k@327@01 < len@212@01 && j@326@01 != k@327@01) | live]
(push) ; 6
; [then-branch: 189 | 0 <= j@326@01 && j@326@01 < len@212@01 && 0 <= k@327@01 && k@327@01 < len@212@01 && j@326@01 != k@327@01]
(assert (and
  (<= 0 j@326@01)
  (and
    (< j@326@01 len@212@01)
    (and
      (<= 0 k@327@01)
      (and (< k@327@01 len@212@01) (not (= j@326@01 k@327@01)))))))
; [eval] c[j] != c[k]
; [eval] c[j]
(push) ; 7
(assert (not (>= j@326@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< j@326@01 (Seq_length c@211@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] c[k]
(push) ; 7
(assert (not (>= k@327@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< k@327@01 (Seq_length c@211@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 189 | !(0 <= j@326@01 && j@326@01 < len@212@01 && 0 <= k@327@01 && k@327@01 < len@212@01 && j@326@01 != k@327@01)]
(assert (not
  (and
    (<= 0 j@326@01)
    (and
      (< j@326@01 len@212@01)
      (and
        (<= 0 k@327@01)
        (and (< k@327@01 len@212@01) (not (= j@326@01 k@327@01))))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (<= 0 j@326@01)
    (and
      (< j@326@01 len@212@01)
      (and
        (<= 0 k@327@01)
        (and (< k@327@01 len@212@01) (not (= j@326@01 k@327@01))))))
  (and
    (<= 0 j@326@01)
    (< j@326@01 len@212@01)
    (<= 0 k@327@01)
    (< k@327@01 len@212@01)
    (not (= j@326@01 k@327@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 j@326@01)
      (and
        (< j@326@01 len@212@01)
        (and
          (<= 0 k@327@01)
          (and (< k@327@01 len@212@01) (not (= j@326@01 k@327@01)))))))
  (and
    (<= 0 j@326@01)
    (and
      (< j@326@01 len@212@01)
      (and
        (<= 0 k@327@01)
        (and (< k@327@01 len@212@01) (not (= j@326@01 k@327@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((j@326@01 Int) (k@327@01 Int)) (!
  (and
    (=>
      (<= 0 j@326@01)
      (and
        (<= 0 j@326@01)
        (=>
          (< j@326@01 len@212@01)
          (and
            (< j@326@01 len@212@01)
            (=>
              (<= 0 k@327@01)
              (and
                (<= 0 k@327@01)
                (or (< k@327@01 len@212@01) (not (< k@327@01 len@212@01)))))
            (or (<= 0 k@327@01) (not (<= 0 k@327@01)))))
        (or (< j@326@01 len@212@01) (not (< j@326@01 len@212@01)))))
    (or (<= 0 j@326@01) (not (<= 0 j@326@01)))
    (=>
      (and
        (<= 0 j@326@01)
        (and
          (< j@326@01 len@212@01)
          (and
            (<= 0 k@327@01)
            (and (< k@327@01 len@212@01) (not (= j@326@01 k@327@01))))))
      (and
        (<= 0 j@326@01)
        (< j@326@01 len@212@01)
        (<= 0 k@327@01)
        (< k@327@01 len@212@01)
        (not (= j@326@01 k@327@01))))
    (or
      (not
        (and
          (<= 0 j@326@01)
          (and
            (< j@326@01 len@212@01)
            (and
              (<= 0 k@327@01)
              (and (< k@327@01 len@212@01) (not (= j@326@01 k@327@01)))))))
      (and
        (<= 0 j@326@01)
        (and
          (< j@326@01 len@212@01)
          (and
            (<= 0 k@327@01)
            (and (< k@327@01 len@212@01) (not (= j@326@01 k@327@01))))))))
  :pattern ((Seq_index c@211@01 j@326@01) (Seq_index c@211@01 k@327@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@68@12@68@102-aux|)))
(push) ; 4
(assert (not (forall ((j@326@01 Int) (k@327@01 Int)) (!
  (=>
    (and
      (<= 0 j@326@01)
      (and
        (< j@326@01 len@212@01)
        (and
          (<= 0 k@327@01)
          (and (< k@327@01 len@212@01) (not (= j@326@01 k@327@01))))))
    (not (= (Seq_index c@211@01 j@326@01) (Seq_index c@211@01 k@327@01))))
  :pattern ((Seq_index c@211@01 j@326@01) (Seq_index c@211@01 k@327@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@68@12@68@102|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((j@326@01 Int) (k@327@01 Int)) (!
  (=>
    (and
      (<= 0 j@326@01)
      (and
        (< j@326@01 len@212@01)
        (and
          (<= 0 k@327@01)
          (and (< k@327@01 len@212@01) (not (= j@326@01 k@327@01))))))
    (not (= (Seq_index c@211@01 j@326@01) (Seq_index c@211@01 k@327@01))))
  :pattern ((Seq_index c@211@01 j@326@01) (Seq_index c@211@01 k@327@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@68@12@68@102|)))
(declare-const i@328@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 190 | !(0 <= i@328@01) | live]
; [else-branch: 190 | 0 <= i@328@01 | live]
(push) ; 6
; [then-branch: 190 | !(0 <= i@328@01)]
(assert (not (<= 0 i@328@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 190 | 0 <= i@328@01]
(assert (<= 0 i@328@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@328@01) (not (<= 0 i@328@01))))
(assert (and (<= 0 i@328@01) (< i@328@01 len@212@01)))
; [eval] c[i]
(push) ; 5
(assert (not (>= i@328@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@328@01 (Seq_length c@211@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@329@01 ($Ref) Int)
(declare-fun img@330@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@328@01 Int)) (!
  (=>
    (and (<= 0 i@328@01) (< i@328@01 len@212@01))
    (or (<= 0 i@328@01) (not (<= 0 i@328@01))))
  :pattern ((Seq_index c@211@01 i@328@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@328@01 Int) (i2@328@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@328@01) (< i1@328@01 len@212@01))
      (and (<= 0 i2@328@01) (< i2@328@01 len@212@01))
      (= (Seq_index c@211@01 i1@328@01) (Seq_index c@211@01 i2@328@01)))
    (= i1@328@01 i2@328@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@328@01 Int)) (!
  (=>
    (and (<= 0 i@328@01) (< i@328@01 len@212@01))
    (and
      (= (inv@329@01 (Seq_index c@211@01 i@328@01)) i@328@01)
      (img@330@01 (Seq_index c@211@01 i@328@01))))
  :pattern ((Seq_index c@211@01 i@328@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@330@01 r)
      (and (<= 0 (inv@329@01 r)) (< (inv@329@01 r) len@212@01)))
    (= (Seq_index c@211@01 (inv@329@01 r)) r))
  :pattern ((inv@329@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@328@01 Int)) (!
  (= (Seq_index c@211@01 i@328@01) (Seq_index b@210@01 i@328@01))
  
  :qid |quant-u-6880|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@331@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@329@01 r)) (< (inv@329@01 r) len@212@01))
      (img@330@01 r)
      (= r (Seq_index c@211@01 (inv@329@01 r))))
    ($Perm.min
      (ite
        (and
          (img@223@01 r)
          (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) len@212@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      $Perm.Write)
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
          (img@223@01 r)
          (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) len@212@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@331@01 r))
    $Perm.No)
  
  :qid |quant-u-6882|))))
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
      (and (<= 0 (inv@329@01 r)) (< (inv@329@01 r) len@212@01))
      (img@330@01 r)
      (= r (Seq_index c@211@01 (inv@329@01 r))))
    (= (- $Perm.Write (pTaken@331@01 r)) $Perm.No))
  
  :qid |quant-u-6883|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall __rw_i3: Int :: { a[__rw_i3] } true ==> 0 <= __rw_i3 - 1 && __rw_i3 - 1 < (len - 1 < len ? len - 1 : len) ==> a[__rw_i3].Ref__Integer_value == 0)
(declare-const __rw_i3@332@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] true ==> 0 <= __rw_i3 - 1 && __rw_i3 - 1 < (len - 1 < len ? len - 1 : len) ==> a[__rw_i3].Ref__Integer_value == 0
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 191 | True | live]
; [else-branch: 191 | False | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 191 | True]
; [eval] 0 <= __rw_i3 - 1 && __rw_i3 - 1 < (len - 1 < len ? len - 1 : len) ==> a[__rw_i3].Ref__Integer_value == 0
; [eval] 0 <= __rw_i3 - 1 && __rw_i3 - 1 < (len - 1 < len ? len - 1 : len)
; [eval] 0 <= __rw_i3 - 1
; [eval] __rw_i3 - 1
(push) ; 7
; [then-branch: 192 | !(0 <= __rw_i3@332@01 - 1) | live]
; [else-branch: 192 | 0 <= __rw_i3@332@01 - 1 | live]
(push) ; 8
; [then-branch: 192 | !(0 <= __rw_i3@332@01 - 1)]
(assert (not (<= 0 (- __rw_i3@332@01 1))))
(pop) ; 8
(push) ; 8
; [else-branch: 192 | 0 <= __rw_i3@332@01 - 1]
(assert (<= 0 (- __rw_i3@332@01 1)))
; [eval] __rw_i3 - 1 < (len - 1 < len ? len - 1 : len)
; [eval] __rw_i3 - 1
; [eval] (len - 1 < len ? len - 1 : len)
; [eval] len - 1 < len
; [eval] len - 1
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not (< (- len@212@01 1) len@212@01))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (< (- len@212@01 1) len@212@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 193 | len@212@01 - 1 < len@212@01 | live]
; [else-branch: 193 | !(len@212@01 - 1 < len@212@01) | dead]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 193 | len@212@01 - 1 < len@212@01]
(assert (< (- len@212@01 1) len@212@01))
; [eval] len - 1
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (< (- len@212@01 1) len@212@01))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 (- __rw_i3@332@01 1))
  (and (<= 0 (- __rw_i3@332@01 1)) (< (- len@212@01 1) len@212@01))))
(assert (or (<= 0 (- __rw_i3@332@01 1)) (not (<= 0 (- __rw_i3@332@01 1)))))
(push) ; 7
; [then-branch: 194 | 0 <= __rw_i3@332@01 - 1 && __rw_i3@332@01 - 1 < len@212@01 - 1 | live]
; [else-branch: 194 | !(0 <= __rw_i3@332@01 - 1 && __rw_i3@332@01 - 1 < len@212@01 - 1) | live]
(push) ; 8
; [then-branch: 194 | 0 <= __rw_i3@332@01 - 1 && __rw_i3@332@01 - 1 < len@212@01 - 1]
(assert (and (<= 0 (- __rw_i3@332@01 1)) (< (- __rw_i3@332@01 1) (- len@212@01 1))))
; [eval] a[__rw_i3].Ref__Integer_value == 0
; [eval] a[__rw_i3]
(push) ; 9
(assert (not (>= __rw_i3@332@01 0)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(push) ; 9
(assert (not (< __rw_i3@332@01 (Seq_length a@209@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@218@01 r)
        (and (<= 0 (inv@217@01 r)) (< (inv@217@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r))
    :qid |qp.fvfValDef19|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@223@01 r)
        (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r))
    :qid |qp.fvfValDef20|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@228@01 r)
        (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r))
    :qid |qp.fvfValDef21|))))
(push) ; 9
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@218@01 (Seq_index a@209@01 __rw_i3@332@01))
          (and
            (<= 0 (inv@217@01 (Seq_index a@209@01 __rw_i3@332@01)))
            (< (inv@217@01 (Seq_index a@209@01 __rw_i3@332@01)) len@212@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@223@01 (Seq_index a@209@01 __rw_i3@332@01))
          (and
            (<= 0 (inv@222@01 (Seq_index a@209@01 __rw_i3@332@01)))
            (< (inv@222@01 (Seq_index a@209@01 __rw_i3@332@01)) len@212@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (and
        (img@228@01 (Seq_index a@209@01 __rw_i3@332@01))
        (and
          (<= 0 (inv@227@01 (Seq_index a@209@01 __rw_i3@332@01)))
          (< (inv@227@01 (Seq_index a@209@01 __rw_i3@332@01)) len@212@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 194 | !(0 <= __rw_i3@332@01 - 1 && __rw_i3@332@01 - 1 < len@212@01 - 1)]
(assert (not (and (<= 0 (- __rw_i3@332@01 1)) (< (- __rw_i3@332@01 1) (- len@212@01 1)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@218@01 r)
      (and (<= 0 (inv@217@01 r)) (< (inv@217@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@223@01 r)
      (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@228@01 r)
      (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r))
  :qid |qp.fvfValDef21|)))
; Joined path conditions
(assert (or
  (not
    (and (<= 0 (- __rw_i3@332@01 1)) (< (- __rw_i3@332@01 1) (- len@212@01 1))))
  (and (<= 0 (- __rw_i3@332@01 1)) (< (- __rw_i3@332@01 1) (- len@212@01 1)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@218@01 r)
      (and (<= 0 (inv@217@01 r)) (< (inv@217@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@223@01 r)
      (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@228@01 r)
      (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r))
  :qid |qp.fvfValDef21|)))
(assert (and
  (=>
    (<= 0 (- __rw_i3@332@01 1))
    (and (<= 0 (- __rw_i3@332@01 1)) (< (- len@212@01 1) len@212@01)))
  (or (<= 0 (- __rw_i3@332@01 1)) (not (<= 0 (- __rw_i3@332@01 1))))
  (or
    (not
      (and (<= 0 (- __rw_i3@332@01 1)) (< (- __rw_i3@332@01 1) (- len@212@01 1))))
    (and (<= 0 (- __rw_i3@332@01 1)) (< (- __rw_i3@332@01 1) (- len@212@01 1))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@218@01 r)
      (and (<= 0 (inv@217@01 r)) (< (inv@217@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@223@01 r)
      (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@228@01 r)
      (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r))
  :qid |qp.fvfValDef21|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((__rw_i3@332@01 Int)) (!
  (and
    (=>
      (<= 0 (- __rw_i3@332@01 1))
      (and (<= 0 (- __rw_i3@332@01 1)) (< (- len@212@01 1) len@212@01)))
    (or (<= 0 (- __rw_i3@332@01 1)) (not (<= 0 (- __rw_i3@332@01 1))))
    (or
      (not
        (and
          (<= 0 (- __rw_i3@332@01 1))
          (< (- __rw_i3@332@01 1) (- len@212@01 1))))
      (and (<= 0 (- __rw_i3@332@01 1)) (< (- __rw_i3@332@01 1) (- len@212@01 1)))))
  :pattern ((Seq_index a@209@01 __rw_i3@332@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@70@13@70@118-aux|)))
(push) ; 4
(assert (not (forall ((__rw_i3@332@01 Int)) (!
  (=>
    (and (<= 0 (- __rw_i3@332@01 1)) (< (- __rw_i3@332@01 1) (- len@212@01 1)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) (Seq_index
        a@209@01
        __rw_i3@332@01))
      0))
  :pattern ((Seq_index a@209@01 __rw_i3@332@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@70@13@70@118|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((__rw_i3@332@01 Int)) (!
  (=>
    (and (<= 0 (- __rw_i3@332@01 1)) (< (- __rw_i3@332@01 1) (- len@212@01 1)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) (Seq_index
        a@209@01
        __rw_i3@332@01))
      0))
  :pattern ((Seq_index a@209@01 __rw_i3@332@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@70@13@70@118|)))
; [eval] (forall i: Int :: { b[i] } 0 <= i && i < len ==> b[i].Ref__Integer_value == i)
(declare-const i@333@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len ==> b[i].Ref__Integer_value == i
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 195 | !(0 <= i@333@01) | live]
; [else-branch: 195 | 0 <= i@333@01 | live]
(push) ; 6
; [then-branch: 195 | !(0 <= i@333@01)]
(assert (not (<= 0 i@333@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 195 | 0 <= i@333@01]
(assert (<= 0 i@333@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@333@01) (not (<= 0 i@333@01))))
(push) ; 5
; [then-branch: 196 | 0 <= i@333@01 && i@333@01 < len@212@01 | live]
; [else-branch: 196 | !(0 <= i@333@01 && i@333@01 < len@212@01) | live]
(push) ; 6
; [then-branch: 196 | 0 <= i@333@01 && i@333@01 < len@212@01]
(assert (and (<= 0 i@333@01) (< i@333@01 len@212@01)))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 7
(assert (not (>= i@333@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@333@01 (Seq_length b@210@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@218@01 r)
        (and (<= 0 (inv@217@01 r)) (< (inv@217@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r))
    :qid |qp.fvfValDef19|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@223@01 r)
        (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r))
    :qid |qp.fvfValDef20|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@228@01 r)
        (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r))
    :qid |qp.fvfValDef21|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@218@01 (Seq_index b@210@01 i@333@01))
          (and
            (<= 0 (inv@217@01 (Seq_index b@210@01 i@333@01)))
            (< (inv@217@01 (Seq_index b@210@01 i@333@01)) len@212@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@223@01 (Seq_index b@210@01 i@333@01))
          (and
            (<= 0 (inv@222@01 (Seq_index b@210@01 i@333@01)))
            (< (inv@222@01 (Seq_index b@210@01 i@333@01)) len@212@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (and
        (img@228@01 (Seq_index b@210@01 i@333@01))
        (and
          (<= 0 (inv@227@01 (Seq_index b@210@01 i@333@01)))
          (< (inv@227@01 (Seq_index b@210@01 i@333@01)) len@212@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 196 | !(0 <= i@333@01 && i@333@01 < len@212@01)]
(assert (not (and (<= 0 i@333@01) (< i@333@01 len@212@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@218@01 r)
      (and (<= 0 (inv@217@01 r)) (< (inv@217@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@223@01 r)
      (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@228@01 r)
      (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r))
  :qid |qp.fvfValDef21|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@333@01) (< i@333@01 len@212@01)))
  (and (<= 0 i@333@01) (< i@333@01 len@212@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@218@01 r)
      (and (<= 0 (inv@217@01 r)) (< (inv@217@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@223@01 r)
      (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01))))))))) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@228@01 r)
      (and (<= 0 (inv@227@01 r)) (< (inv@227@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@213@01)))))))))))) r))
  :qid |qp.fvfValDef21|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@333@01 Int)) (!
  (and
    (or (<= 0 i@333@01) (not (<= 0 i@333@01)))
    (or
      (not (and (<= 0 i@333@01) (< i@333@01 len@212@01)))
      (and (<= 0 i@333@01) (< i@333@01 len@212@01))))
  :pattern ((Seq_index b@210@01 i@333@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@71@13@71@86-aux|)))
(push) ; 4
(assert (not (forall ((i@333@01 Int)) (!
  (=>
    (and (<= 0 i@333@01) (< i@333@01 len@212@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) (Seq_index
        b@210@01
        i@333@01))
      i@333@01))
  :pattern ((Seq_index b@210@01 i@333@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@71@13@71@86|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@333@01 Int)) (!
  (=>
    (and (<= 0 i@333@01) (< i@333@01 len@212@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@230@01  $FVF<Ref__Integer_value>) (Seq_index
        b@210@01
        i@333@01))
      i@333@01))
  :pattern ((Seq_index b@210@01 i@333@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@71@13@71@86|)))
(declare-const $t@334@01 $Snap)
(assert (= $t@334@01 ($Snap.combine ($Snap.first $t@334@01) ($Snap.second $t@334@01))))
(assert (= ($Snap.first $t@334@01) $Snap.unit))
; [eval] |a| == len
; [eval] |a|
(assert (=
  ($Snap.second $t@334@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@334@01))
    ($Snap.second ($Snap.second $t@334@01)))))
(assert (= ($Snap.first ($Snap.second $t@334@01)) $Snap.unit))
; [eval] |b| == len
; [eval] |b|
(assert (=
  ($Snap.second ($Snap.second $t@334@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@334@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@334@01))) $Snap.unit))
; [eval] |c| == len
; [eval] |c|
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@334@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))))
(declare-const i@335@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 197 | !(0 <= i@335@01) | live]
; [else-branch: 197 | 0 <= i@335@01 | live]
(push) ; 6
; [then-branch: 197 | !(0 <= i@335@01)]
(assert (not (<= 0 i@335@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 197 | 0 <= i@335@01]
(assert (<= 0 i@335@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@335@01) (not (<= 0 i@335@01))))
(assert (and (<= 0 i@335@01) (< i@335@01 len@212@01)))
; [eval] a[i]
(push) ; 5
(assert (not (>= i@335@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@335@01 (Seq_length a@209@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@336@01 ($Ref) Int)
(declare-fun img@337@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@335@01 Int)) (!
  (=>
    (and (<= 0 i@335@01) (< i@335@01 len@212@01))
    (or (<= 0 i@335@01) (not (<= 0 i@335@01))))
  :pattern ((Seq_index a@209@01 i@335@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@335@01 Int) (i2@335@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@335@01) (< i1@335@01 len@212@01))
      (and (<= 0 i2@335@01) (< i2@335@01 len@212@01))
      (= (Seq_index a@209@01 i1@335@01) (Seq_index a@209@01 i2@335@01)))
    (= i1@335@01 i2@335@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@335@01 Int)) (!
  (=>
    (and (<= 0 i@335@01) (< i@335@01 len@212@01))
    (and
      (= (inv@336@01 (Seq_index a@209@01 i@335@01)) i@335@01)
      (img@337@01 (Seq_index a@209@01 i@335@01))))
  :pattern ((Seq_index a@209@01 i@335@01))
  :qid |quant-u-6885|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@337@01 r)
      (and (<= 0 (inv@336@01 r)) (< (inv@336@01 r) len@212@01)))
    (= (Seq_index a@209@01 (inv@336@01 r)) r))
  :pattern ((inv@336@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@335@01 Int)) (!
  (=>
    (and (<= 0 i@335@01) (< i@335@01 len@212@01))
    (not (= (Seq_index a@209@01 i@335@01) $Ref.null)))
  :pattern ((Seq_index a@209@01 i@335@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))))
(declare-const i@338@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 198 | !(0 <= i@338@01) | live]
; [else-branch: 198 | 0 <= i@338@01 | live]
(push) ; 6
; [then-branch: 198 | !(0 <= i@338@01)]
(assert (not (<= 0 i@338@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 198 | 0 <= i@338@01]
(assert (<= 0 i@338@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@338@01) (not (<= 0 i@338@01))))
(assert (and (<= 0 i@338@01) (< i@338@01 len@212@01)))
; [eval] b[i]
(push) ; 5
(assert (not (>= i@338@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@338@01 (Seq_length b@210@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@339@01 ($Ref) Int)
(declare-fun img@340@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@338@01 Int)) (!
  (=>
    (and (<= 0 i@338@01) (< i@338@01 len@212@01))
    (or (<= 0 i@338@01) (not (<= 0 i@338@01))))
  :pattern ((Seq_index b@210@01 i@338@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@338@01 Int) (i2@338@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@338@01) (< i1@338@01 len@212@01))
      (and (<= 0 i2@338@01) (< i2@338@01 len@212@01))
      (= (Seq_index b@210@01 i1@338@01) (Seq_index b@210@01 i2@338@01)))
    (= i1@338@01 i2@338@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@338@01 Int)) (!
  (=>
    (and (<= 0 i@338@01) (< i@338@01 len@212@01))
    (and
      (= (inv@339@01 (Seq_index b@210@01 i@338@01)) i@338@01)
      (img@340@01 (Seq_index b@210@01 i@338@01))))
  :pattern ((Seq_index b@210@01 i@338@01))
  :qid |quant-u-6887|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@340@01 r)
      (and (<= 0 (inv@339@01 r)) (< (inv@339@01 r) len@212@01)))
    (= (Seq_index b@210@01 (inv@339@01 r)) r))
  :pattern ((inv@339@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@338@01 Int)) (!
  (=>
    (and (<= 0 i@338@01) (< i@338@01 len@212@01))
    (not (= (Seq_index b@210@01 i@338@01) $Ref.null)))
  :pattern ((Seq_index b@210@01 i@338@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index b@210@01 i@338@01) (Seq_index a@209@01 i@335@01))
    (=
      (and
        (img@340@01 r)
        (and (<= 0 (inv@339@01 r)) (< (inv@339@01 r) len@212@01)))
      (and
        (img@337@01 r)
        (and (<= 0 (inv@336@01 r)) (< (inv@336@01 r) len@212@01)))))
  
  :qid |quant-u-6888|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))))))
(declare-const i@341@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 199 | !(0 <= i@341@01) | live]
; [else-branch: 199 | 0 <= i@341@01 | live]
(push) ; 6
; [then-branch: 199 | !(0 <= i@341@01)]
(assert (not (<= 0 i@341@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 199 | 0 <= i@341@01]
(assert (<= 0 i@341@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@341@01) (not (<= 0 i@341@01))))
(assert (and (<= 0 i@341@01) (< i@341@01 len@212@01)))
; [eval] c[i]
(push) ; 5
(assert (not (>= i@341@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@341@01 (Seq_length c@211@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@342@01 ($Ref) Int)
(declare-fun img@343@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@341@01 Int)) (!
  (=>
    (and (<= 0 i@341@01) (< i@341@01 len@212@01))
    (or (<= 0 i@341@01) (not (<= 0 i@341@01))))
  :pattern ((Seq_index c@211@01 i@341@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@341@01 Int) (i2@341@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@341@01) (< i1@341@01 len@212@01))
      (and (<= 0 i2@341@01) (< i2@341@01 len@212@01))
      (= (Seq_index c@211@01 i1@341@01) (Seq_index c@211@01 i2@341@01)))
    (= i1@341@01 i2@341@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@341@01 Int)) (!
  (=>
    (and (<= 0 i@341@01) (< i@341@01 len@212@01))
    (and
      (= (inv@342@01 (Seq_index c@211@01 i@341@01)) i@341@01)
      (img@343@01 (Seq_index c@211@01 i@341@01))))
  :pattern ((Seq_index c@211@01 i@341@01))
  :qid |quant-u-6890|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@343@01 r)
      (and (<= 0 (inv@342@01 r)) (< (inv@342@01 r) len@212@01)))
    (= (Seq_index c@211@01 (inv@342@01 r)) r))
  :pattern ((inv@342@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@341@01 Int)) (!
  (=>
    (and (<= 0 i@341@01) (< i@341@01 len@212@01))
    (not (= (Seq_index c@211@01 i@341@01) $Ref.null)))
  :pattern ((Seq_index c@211@01 i@341@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index c@211@01 i@341@01) (Seq_index b@210@01 i@338@01))
    (=
      (and
        (img@343@01 r)
        (and (<= 0 (inv@342@01 r)) (< (inv@342@01 r) len@212@01)))
      (and
        (img@340@01 r)
        (and (<= 0 (inv@339@01 r)) (< (inv@339@01 r) len@212@01)))))
  
  :qid |quant-u-6891|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index c@211@01 i@341@01) (Seq_index a@209@01 i@335@01))
    (=
      (and
        (img@343@01 r)
        (and (<= 0 (inv@342@01 r)) (< (inv@342@01 r) len@212@01)))
      (and
        (img@337@01 r)
        (and (<= 0 (inv@336@01 r)) (< (inv@336@01 r) len@212@01)))))
  
  :qid |quant-u-6892|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))))
  $Snap.unit))
; [eval] (forall i: Int :: { a[i] } 0 <= i && i < len ==> a[i].Ref__Integer_value == i + 1)
(declare-const i@344@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= i && i < len ==> a[i].Ref__Integer_value == i + 1
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 200 | !(0 <= i@344@01) | live]
; [else-branch: 200 | 0 <= i@344@01 | live]
(push) ; 6
; [then-branch: 200 | !(0 <= i@344@01)]
(assert (not (<= 0 i@344@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 200 | 0 <= i@344@01]
(assert (<= 0 i@344@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@344@01) (not (<= 0 i@344@01))))
(push) ; 5
; [then-branch: 201 | 0 <= i@344@01 && i@344@01 < len@212@01 | live]
; [else-branch: 201 | !(0 <= i@344@01 && i@344@01 < len@212@01) | live]
(push) ; 6
; [then-branch: 201 | 0 <= i@344@01 && i@344@01 < len@212@01]
(assert (and (<= 0 i@344@01) (< i@344@01 len@212@01)))
; [eval] a[i].Ref__Integer_value == i + 1
; [eval] a[i]
(push) ; 7
(assert (not (>= i@344@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@344@01 (Seq_length a@209@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@345@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@337@01 r)
      (and (<= 0 (inv@336@01 r)) (< (inv@336@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@340@01 r)
      (and (<= 0 (inv@339@01 r)) (< (inv@339@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))) r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@343@01 r)
      (and (<= 0 (inv@342@01 r)) (< (inv@342@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))) r))
  :qid |qp.fvfValDef33|)))
(declare-const pm@346@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@346@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@337@01 r)
            (and (<= 0 (inv@336@01 r)) (< (inv@336@01 r) len@212@01)))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@340@01 r)
            (and (<= 0 (inv@339@01 r)) (< (inv@339@01 r) len@212@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and
          (img@343@01 r)
          (and (<= 0 (inv@342@01 r)) (< (inv@342@01 r) len@212@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@346@01  $FPM) r))
  :qid |qp.resPrmSumDef34|)))
(push) ; 7
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@346@01  $FPM) (Seq_index
    a@209@01
    i@344@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] i + 1
(pop) ; 6
(push) ; 6
; [else-branch: 201 | !(0 <= i@344@01 && i@344@01 < len@212@01)]
(assert (not (and (<= 0 i@344@01) (< i@344@01 len@212@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@337@01 r)
      (and (<= 0 (inv@336@01 r)) (< (inv@336@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@340@01 r)
      (and (<= 0 (inv@339@01 r)) (< (inv@339@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))) r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@343@01 r)
      (and (<= 0 (inv@342@01 r)) (< (inv@342@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))) r))
  :qid |qp.fvfValDef33|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@346@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@337@01 r)
            (and (<= 0 (inv@336@01 r)) (< (inv@336@01 r) len@212@01)))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@340@01 r)
            (and (<= 0 (inv@339@01 r)) (< (inv@339@01 r) len@212@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and
          (img@343@01 r)
          (and (<= 0 (inv@342@01 r)) (< (inv@342@01 r) len@212@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@346@01  $FPM) r))
  :qid |qp.resPrmSumDef34|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@344@01) (< i@344@01 len@212@01)))
  (and (<= 0 i@344@01) (< i@344@01 len@212@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@337@01 r)
      (and (<= 0 (inv@336@01 r)) (< (inv@336@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@340@01 r)
      (and (<= 0 (inv@339@01 r)) (< (inv@339@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))) r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@343@01 r)
      (and (<= 0 (inv@342@01 r)) (< (inv@342@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))) r))
  :qid |qp.fvfValDef33|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@346@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@337@01 r)
            (and (<= 0 (inv@336@01 r)) (< (inv@336@01 r) len@212@01)))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@340@01 r)
            (and (<= 0 (inv@339@01 r)) (< (inv@339@01 r) len@212@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No))
      (ite
        (and
          (img@343@01 r)
          (and (<= 0 (inv@342@01 r)) (< (inv@342@01 r) len@212@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@346@01  $FPM) r))
  :qid |qp.resPrmSumDef34|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@344@01 Int)) (!
  (and
    (or (<= 0 i@344@01) (not (<= 0 i@344@01)))
    (or
      (not (and (<= 0 i@344@01) (< i@344@01 len@212@01)))
      (and (<= 0 i@344@01) (< i@344@01 len@212@01))))
  :pattern ((Seq_index a@209@01 i@344@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@76@12@76@89-aux|)))
(assert (forall ((i@344@01 Int)) (!
  (=>
    (and (<= 0 i@344@01) (< i@344@01 len@212@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) (Seq_index
        a@209@01
        i@344@01))
      (+ i@344@01 1)))
  :pattern ((Seq_index a@209@01 i@344@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@76@12@76@89|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))))
  $Snap.unit))
; [eval] (forall i: Int :: { b[i] } 0 <= i && i < len ==> b[i].Ref__Integer_value == i)
(declare-const i@347@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len ==> b[i].Ref__Integer_value == i
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 202 | !(0 <= i@347@01) | live]
; [else-branch: 202 | 0 <= i@347@01 | live]
(push) ; 6
; [then-branch: 202 | !(0 <= i@347@01)]
(assert (not (<= 0 i@347@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 202 | 0 <= i@347@01]
(assert (<= 0 i@347@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@347@01) (not (<= 0 i@347@01))))
(push) ; 5
; [then-branch: 203 | 0 <= i@347@01 && i@347@01 < len@212@01 | live]
; [else-branch: 203 | !(0 <= i@347@01 && i@347@01 < len@212@01) | live]
(push) ; 6
; [then-branch: 203 | 0 <= i@347@01 && i@347@01 < len@212@01]
(assert (and (<= 0 i@347@01) (< i@347@01 len@212@01)))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 7
(assert (not (>= i@347@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@347@01 (Seq_length b@210@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@337@01 r)
        (and (<= 0 (inv@336@01 r)) (< (inv@336@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))) r))
    :qid |qp.fvfValDef31|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@340@01 r)
        (and (<= 0 (inv@339@01 r)) (< (inv@339@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))) r))
    :qid |qp.fvfValDef32|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@343@01 r)
        (and (<= 0 (inv@342@01 r)) (< (inv@342@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))) r))
    :qid |qp.fvfValDef33|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@337@01 (Seq_index b@210@01 i@347@01))
          (and
            (<= 0 (inv@336@01 (Seq_index b@210@01 i@347@01)))
            (< (inv@336@01 (Seq_index b@210@01 i@347@01)) len@212@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@340@01 (Seq_index b@210@01 i@347@01))
          (and
            (<= 0 (inv@339@01 (Seq_index b@210@01 i@347@01)))
            (< (inv@339@01 (Seq_index b@210@01 i@347@01)) len@212@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (and
        (img@343@01 (Seq_index b@210@01 i@347@01))
        (and
          (<= 0 (inv@342@01 (Seq_index b@210@01 i@347@01)))
          (< (inv@342@01 (Seq_index b@210@01 i@347@01)) len@212@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 203 | !(0 <= i@347@01 && i@347@01 < len@212@01)]
(assert (not (and (<= 0 i@347@01) (< i@347@01 len@212@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@337@01 r)
      (and (<= 0 (inv@336@01 r)) (< (inv@336@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@340@01 r)
      (and (<= 0 (inv@339@01 r)) (< (inv@339@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))) r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@343@01 r)
      (and (<= 0 (inv@342@01 r)) (< (inv@342@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))) r))
  :qid |qp.fvfValDef33|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@347@01) (< i@347@01 len@212@01)))
  (and (<= 0 i@347@01) (< i@347@01 len@212@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@337@01 r)
      (and (<= 0 (inv@336@01 r)) (< (inv@336@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@340@01 r)
      (and (<= 0 (inv@339@01 r)) (< (inv@339@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))) r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@343@01 r)
      (and (<= 0 (inv@342@01 r)) (< (inv@342@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))) r))
  :qid |qp.fvfValDef33|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@347@01 Int)) (!
  (and
    (or (<= 0 i@347@01) (not (<= 0 i@347@01)))
    (or
      (not (and (<= 0 i@347@01) (< i@347@01 len@212@01)))
      (and (<= 0 i@347@01) (< i@347@01 len@212@01))))
  :pattern ((Seq_index b@210@01 i@347@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@77@12@77@85-aux|)))
(assert (forall ((i@347@01 Int)) (!
  (=>
    (and (<= 0 i@347@01) (< i@347@01 len@212@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) (Seq_index
        b@210@01
        i@347@01))
      i@347@01))
  :pattern ((Seq_index b@210@01 i@347@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@77@12@77@85|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))))
  $Snap.unit))
; [eval] (forall i: Int :: { c[i] } 0 <= i && i < (len - 1 < len ? len - 1 : len) ==> c[i].Ref__Integer_value == 2)
(declare-const i@348@01 Int)
(push) ; 4
; [eval] 0 <= i && i < (len - 1 < len ? len - 1 : len) ==> c[i].Ref__Integer_value == 2
; [eval] 0 <= i && i < (len - 1 < len ? len - 1 : len)
; [eval] 0 <= i
(push) ; 5
; [then-branch: 204 | !(0 <= i@348@01) | live]
; [else-branch: 204 | 0 <= i@348@01 | live]
(push) ; 6
; [then-branch: 204 | !(0 <= i@348@01)]
(assert (not (<= 0 i@348@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 204 | 0 <= i@348@01]
(assert (<= 0 i@348@01))
; [eval] i < (len - 1 < len ? len - 1 : len)
; [eval] (len - 1 < len ? len - 1 : len)
; [eval] len - 1 < len
; [eval] len - 1
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not (< (- len@212@01 1) len@212@01))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (< (- len@212@01 1) len@212@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 205 | len@212@01 - 1 < len@212@01 | live]
; [else-branch: 205 | !(len@212@01 - 1 < len@212@01) | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 205 | len@212@01 - 1 < len@212@01]
(assert (< (- len@212@01 1) len@212@01))
; [eval] len - 1
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (< (- len@212@01 1) len@212@01))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=> (<= 0 i@348@01) (and (<= 0 i@348@01) (< (- len@212@01 1) len@212@01))))
(assert (or (<= 0 i@348@01) (not (<= 0 i@348@01))))
(push) ; 5
; [then-branch: 206 | 0 <= i@348@01 && i@348@01 < len@212@01 - 1 | live]
; [else-branch: 206 | !(0 <= i@348@01 && i@348@01 < len@212@01 - 1) | live]
(push) ; 6
; [then-branch: 206 | 0 <= i@348@01 && i@348@01 < len@212@01 - 1]
(assert (and (<= 0 i@348@01) (< i@348@01 (- len@212@01 1))))
; [eval] c[i].Ref__Integer_value == 2
; [eval] c[i]
(push) ; 7
(assert (not (>= i@348@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@348@01 (Seq_length c@211@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@337@01 r)
        (and (<= 0 (inv@336@01 r)) (< (inv@336@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))) r))
    :qid |qp.fvfValDef31|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@340@01 r)
        (and (<= 0 (inv@339@01 r)) (< (inv@339@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))) r))
    :qid |qp.fvfValDef32|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@343@01 r)
        (and (<= 0 (inv@342@01 r)) (< (inv@342@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))) r))
    :qid |qp.fvfValDef33|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@337@01 (Seq_index c@211@01 i@348@01))
          (and
            (<= 0 (inv@336@01 (Seq_index c@211@01 i@348@01)))
            (< (inv@336@01 (Seq_index c@211@01 i@348@01)) len@212@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@340@01 (Seq_index c@211@01 i@348@01))
          (and
            (<= 0 (inv@339@01 (Seq_index c@211@01 i@348@01)))
            (< (inv@339@01 (Seq_index c@211@01 i@348@01)) len@212@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (and
        (img@343@01 (Seq_index c@211@01 i@348@01))
        (and
          (<= 0 (inv@342@01 (Seq_index c@211@01 i@348@01)))
          (< (inv@342@01 (Seq_index c@211@01 i@348@01)) len@212@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 206 | !(0 <= i@348@01 && i@348@01 < len@212@01 - 1)]
(assert (not (and (<= 0 i@348@01) (< i@348@01 (- len@212@01 1)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@337@01 r)
      (and (<= 0 (inv@336@01 r)) (< (inv@336@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@340@01 r)
      (and (<= 0 (inv@339@01 r)) (< (inv@339@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))) r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@343@01 r)
      (and (<= 0 (inv@342@01 r)) (< (inv@342@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))) r))
  :qid |qp.fvfValDef33|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@348@01) (< i@348@01 (- len@212@01 1))))
  (and (<= 0 i@348@01) (< i@348@01 (- len@212@01 1)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@337@01 r)
      (and (<= 0 (inv@336@01 r)) (< (inv@336@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@340@01 r)
      (and (<= 0 (inv@339@01 r)) (< (inv@339@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))) r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@343@01 r)
      (and (<= 0 (inv@342@01 r)) (< (inv@342@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))) r))
  :qid |qp.fvfValDef33|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@348@01 Int)) (!
  (and
    (=> (<= 0 i@348@01) (and (<= 0 i@348@01) (< (- len@212@01 1) len@212@01)))
    (or (<= 0 i@348@01) (not (<= 0 i@348@01)))
    (or
      (not (and (<= 0 i@348@01) (< i@348@01 (- len@212@01 1))))
      (and (<= 0 i@348@01) (< i@348@01 (- len@212@01 1)))))
  :pattern ((Seq_index c@211@01 i@348@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@78@12@78@113-aux|)))
(assert (forall ((i@348@01 Int)) (!
  (=>
    (and (<= 0 i@348@01) (< i@348@01 (- len@212@01 1)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) (Seq_index
        c@211@01
        i@348@01))
      2))
  :pattern ((Seq_index c@211@01 i@348@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@78@12@78@113|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] |a| == len
; [eval] |a|
(declare-const i@349@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 207 | !(0 <= i@349@01) | live]
; [else-branch: 207 | 0 <= i@349@01 | live]
(push) ; 6
; [then-branch: 207 | !(0 <= i@349@01)]
(assert (not (<= 0 i@349@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 207 | 0 <= i@349@01]
(assert (<= 0 i@349@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@349@01) (not (<= 0 i@349@01))))
(assert (and (<= 0 i@349@01) (< i@349@01 len@212@01)))
; [eval] a[i]
(push) ; 5
(assert (not (>= i@349@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@349@01 (Seq_length a@209@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@350@01 ($Ref) Int)
(declare-fun img@351@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@349@01 Int)) (!
  (=>
    (and (<= 0 i@349@01) (< i@349@01 len@212@01))
    (or (<= 0 i@349@01) (not (<= 0 i@349@01))))
  :pattern ((Seq_index a@209@01 i@349@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@349@01 Int) (i2@349@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@349@01) (< i1@349@01 len@212@01))
      (and (<= 0 i2@349@01) (< i2@349@01 len@212@01))
      (= (Seq_index a@209@01 i1@349@01) (Seq_index a@209@01 i2@349@01)))
    (= i1@349@01 i2@349@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@349@01 Int)) (!
  (=>
    (and (<= 0 i@349@01) (< i@349@01 len@212@01))
    (and
      (= (inv@350@01 (Seq_index a@209@01 i@349@01)) i@349@01)
      (img@351@01 (Seq_index a@209@01 i@349@01))))
  :pattern ((Seq_index a@209@01 i@349@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@351@01 r)
      (and (<= 0 (inv@350@01 r)) (< (inv@350@01 r) len@212@01)))
    (= (Seq_index a@209@01 (inv@350@01 r)) r))
  :pattern ((inv@350@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@349@01 Int)) (!
  (= (Seq_index a@209@01 i@349@01) (Seq_index b@210@01 i@349@01))
  
  :qid |quant-u-6894|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@349@01 Int)) (!
  (= (Seq_index a@209@01 i@349@01) (Seq_index c@211@01 i@349@01))
  
  :qid |quant-u-6895|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@352@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@350@01 r)) (< (inv@350@01 r) len@212@01))
      (img@351@01 r)
      (= r (Seq_index a@209@01 (inv@350@01 r))))
    ($Perm.min
      (ite
        (and
          (img@337@01 r)
          (and (<= 0 (inv@336@01 r)) (< (inv@336@01 r) len@212@01)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@353@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@350@01 r)) (< (inv@350@01 r) len@212@01))
      (img@351@01 r)
      (= r (Seq_index a@209@01 (inv@350@01 r))))
    ($Perm.min
      (ite
        (and
          (img@340@01 r)
          (and (<= 0 (inv@339@01 r)) (< (inv@339@01 r) len@212@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- $Perm.Write (pTaken@352@01 r)))
    $Perm.No))
(define-fun pTaken@354@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@350@01 r)) (< (inv@350@01 r) len@212@01))
      (img@351@01 r)
      (= r (Seq_index a@209@01 (inv@350@01 r))))
    ($Perm.min
      (ite
        (and
          (img@343@01 r)
          (and (<= 0 (inv@342@01 r)) (< (inv@342@01 r) len@212@01)))
        $Perm.Write
        $Perm.No)
      (- (- $Perm.Write (pTaken@352@01 r)) (pTaken@353@01 r)))
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
          (img@337@01 r)
          (and (<= 0 (inv@336@01 r)) (< (inv@336@01 r) len@212@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@352@01 r))
    $Perm.No)
  
  :qid |quant-u-6897|))))
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
      (and (<= 0 (inv@350@01 r)) (< (inv@350@01 r) len@212@01))
      (img@351@01 r)
      (= r (Seq_index a@209@01 (inv@350@01 r))))
    (= (- $Perm.Write (pTaken@352@01 r)) $Perm.No))
  
  :qid |quant-u-6898|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] |b| == len
; [eval] |b|
(declare-const i@355@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 208 | !(0 <= i@355@01) | live]
; [else-branch: 208 | 0 <= i@355@01 | live]
(push) ; 6
; [then-branch: 208 | !(0 <= i@355@01)]
(assert (not (<= 0 i@355@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 208 | 0 <= i@355@01]
(assert (<= 0 i@355@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@355@01) (not (<= 0 i@355@01))))
(assert (and (<= 0 i@355@01) (< i@355@01 len@212@01)))
; [eval] b[i]
(push) ; 5
(assert (not (>= i@355@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@355@01 (Seq_length b@210@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@356@01 ($Ref) Int)
(declare-fun img@357@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@355@01 Int)) (!
  (=>
    (and (<= 0 i@355@01) (< i@355@01 len@212@01))
    (or (<= 0 i@355@01) (not (<= 0 i@355@01))))
  :pattern ((Seq_index b@210@01 i@355@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@355@01 Int) (i2@355@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@355@01) (< i1@355@01 len@212@01))
      (and (<= 0 i2@355@01) (< i2@355@01 len@212@01))
      (= (Seq_index b@210@01 i1@355@01) (Seq_index b@210@01 i2@355@01)))
    (= i1@355@01 i2@355@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@355@01 Int)) (!
  (=>
    (and (<= 0 i@355@01) (< i@355@01 len@212@01))
    (and
      (= (inv@356@01 (Seq_index b@210@01 i@355@01)) i@355@01)
      (img@357@01 (Seq_index b@210@01 i@355@01))))
  :pattern ((Seq_index b@210@01 i@355@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@357@01 r)
      (and (<= 0 (inv@356@01 r)) (< (inv@356@01 r) len@212@01)))
    (= (Seq_index b@210@01 (inv@356@01 r)) r))
  :pattern ((inv@356@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@355@01 Int)) (!
  (= (Seq_index b@210@01 i@355@01) (Seq_index c@211@01 i@355@01))
  
  :qid |quant-u-6900|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@358@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@356@01 r)) (< (inv@356@01 r) len@212@01))
      (img@357@01 r)
      (= r (Seq_index b@210@01 (inv@356@01 r))))
    ($Perm.min
      (ite
        (and
          (img@343@01 r)
          (and (<= 0 (inv@342@01 r)) (< (inv@342@01 r) len@212@01)))
        $Perm.Write
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@359@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@356@01 r)) (< (inv@356@01 r) len@212@01))
      (img@357@01 r)
      (= r (Seq_index b@210@01 (inv@356@01 r))))
    ($Perm.min
      (ite
        (and
          (img@340@01 r)
          (and (<= 0 (inv@339@01 r)) (< (inv@339@01 r) len@212@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@358@01 r)))
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
          (img@343@01 r)
          (and (<= 0 (inv@342@01 r)) (< (inv@342@01 r) len@212@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@358@01 r))
    $Perm.No)
  
  :qid |quant-u-6902|))))
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
      (and (<= 0 (inv@356@01 r)) (< (inv@356@01 r) len@212@01))
      (img@357@01 r)
      (= r (Seq_index b@210@01 (inv@356@01 r))))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@358@01 r)) $Perm.No))
  
  :qid |quant-u-6903|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] |c| == len
; [eval] |c|
(declare-const i@360@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 209 | !(0 <= i@360@01) | live]
; [else-branch: 209 | 0 <= i@360@01 | live]
(push) ; 6
; [then-branch: 209 | !(0 <= i@360@01)]
(assert (not (<= 0 i@360@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 209 | 0 <= i@360@01]
(assert (<= 0 i@360@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@360@01) (not (<= 0 i@360@01))))
(assert (and (<= 0 i@360@01) (< i@360@01 len@212@01)))
; [eval] c[i]
(push) ; 5
(assert (not (>= i@360@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@360@01 (Seq_length c@211@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@361@01 ($Ref) Int)
(declare-fun img@362@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@360@01 Int)) (!
  (=>
    (and (<= 0 i@360@01) (< i@360@01 len@212@01))
    (or (<= 0 i@360@01) (not (<= 0 i@360@01))))
  :pattern ((Seq_index c@211@01 i@360@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@360@01 Int) (i2@360@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@360@01) (< i1@360@01 len@212@01))
      (and (<= 0 i2@360@01) (< i2@360@01 len@212@01))
      (= (Seq_index c@211@01 i1@360@01) (Seq_index c@211@01 i2@360@01)))
    (= i1@360@01 i2@360@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@360@01 Int)) (!
  (=>
    (and (<= 0 i@360@01) (< i@360@01 len@212@01))
    (and
      (= (inv@361@01 (Seq_index c@211@01 i@360@01)) i@360@01)
      (img@362@01 (Seq_index c@211@01 i@360@01))))
  :pattern ((Seq_index c@211@01 i@360@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@362@01 r)
      (and (<= 0 (inv@361@01 r)) (< (inv@361@01 r) len@212@01)))
    (= (Seq_index c@211@01 (inv@361@01 r)) r))
  :pattern ((inv@361@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((i@360@01 Int)) (!
  (= (Seq_index c@211@01 i@360@01) (Seq_index b@210@01 i@360@01))
  
  :qid |quant-u-6905|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@363@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@361@01 r)) (< (inv@361@01 r) len@212@01))
      (img@362@01 r)
      (= r (Seq_index c@211@01 (inv@361@01 r))))
    ($Perm.min
      (ite
        (and
          (img@340@01 r)
          (and (<= 0 (inv@339@01 r)) (< (inv@339@01 r) len@212@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      $Perm.Write)
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
          (img@340@01 r)
          (and (<= 0 (inv@339@01 r)) (< (inv@339@01 r) len@212@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@363@01 r))
    $Perm.No)
  
  :qid |quant-u-6907|))))
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
      (and (<= 0 (inv@361@01 r)) (< (inv@361@01 r) len@212@01))
      (img@362@01 r)
      (= r (Seq_index c@211@01 (inv@361@01 r))))
    (= (- $Perm.Write (pTaken@363@01 r)) $Perm.No))
  
  :qid |quant-u-6908|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall i: Int :: { a[i] } 0 <= i && i < len ==> a[i].Ref__Integer_value == i + 1)
(declare-const i@364@01 Int)
(set-option :timeout 0)
(push) ; 4
; [eval] 0 <= i && i < len ==> a[i].Ref__Integer_value == i + 1
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 210 | !(0 <= i@364@01) | live]
; [else-branch: 210 | 0 <= i@364@01 | live]
(push) ; 6
; [then-branch: 210 | !(0 <= i@364@01)]
(assert (not (<= 0 i@364@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 210 | 0 <= i@364@01]
(assert (<= 0 i@364@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@364@01) (not (<= 0 i@364@01))))
(push) ; 5
; [then-branch: 211 | 0 <= i@364@01 && i@364@01 < len@212@01 | live]
; [else-branch: 211 | !(0 <= i@364@01 && i@364@01 < len@212@01) | live]
(push) ; 6
; [then-branch: 211 | 0 <= i@364@01 && i@364@01 < len@212@01]
(assert (and (<= 0 i@364@01) (< i@364@01 len@212@01)))
; [eval] a[i].Ref__Integer_value == i + 1
; [eval] a[i]
(push) ; 7
(assert (not (>= i@364@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@364@01 (Seq_length a@209@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@337@01 r)
        (and (<= 0 (inv@336@01 r)) (< (inv@336@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))) r))
    :qid |qp.fvfValDef31|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@340@01 r)
        (and (<= 0 (inv@339@01 r)) (< (inv@339@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))) r))
    :qid |qp.fvfValDef32|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@343@01 r)
        (and (<= 0 (inv@342@01 r)) (< (inv@342@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))) r))
    :qid |qp.fvfValDef33|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@337@01 (Seq_index a@209@01 i@364@01))
          (and
            (<= 0 (inv@336@01 (Seq_index a@209@01 i@364@01)))
            (< (inv@336@01 (Seq_index a@209@01 i@364@01)) len@212@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@340@01 (Seq_index a@209@01 i@364@01))
          (and
            (<= 0 (inv@339@01 (Seq_index a@209@01 i@364@01)))
            (< (inv@339@01 (Seq_index a@209@01 i@364@01)) len@212@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (and
        (img@343@01 (Seq_index a@209@01 i@364@01))
        (and
          (<= 0 (inv@342@01 (Seq_index a@209@01 i@364@01)))
          (< (inv@342@01 (Seq_index a@209@01 i@364@01)) len@212@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] i + 1
(pop) ; 6
(push) ; 6
; [else-branch: 211 | !(0 <= i@364@01 && i@364@01 < len@212@01)]
(assert (not (and (<= 0 i@364@01) (< i@364@01 len@212@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@337@01 r)
      (and (<= 0 (inv@336@01 r)) (< (inv@336@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@340@01 r)
      (and (<= 0 (inv@339@01 r)) (< (inv@339@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))) r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@343@01 r)
      (and (<= 0 (inv@342@01 r)) (< (inv@342@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))) r))
  :qid |qp.fvfValDef33|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@364@01) (< i@364@01 len@212@01)))
  (and (<= 0 i@364@01) (< i@364@01 len@212@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@337@01 r)
      (and (<= 0 (inv@336@01 r)) (< (inv@336@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@340@01 r)
      (and (<= 0 (inv@339@01 r)) (< (inv@339@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))) r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@343@01 r)
      (and (<= 0 (inv@342@01 r)) (< (inv@342@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))) r))
  :qid |qp.fvfValDef33|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@364@01 Int)) (!
  (and
    (or (<= 0 i@364@01) (not (<= 0 i@364@01)))
    (or
      (not (and (<= 0 i@364@01) (< i@364@01 len@212@01)))
      (and (<= 0 i@364@01) (< i@364@01 len@212@01))))
  :pattern ((Seq_index a@209@01 i@364@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@192@12@192@89-aux|)))
(push) ; 4
(assert (not (forall ((i@364@01 Int)) (!
  (=>
    (and (<= 0 i@364@01) (< i@364@01 len@212@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) (Seq_index
        a@209@01
        i@364@01))
      (+ i@364@01 1)))
  :pattern ((Seq_index a@209@01 i@364@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@192@12@192@89|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@364@01 Int)) (!
  (=>
    (and (<= 0 i@364@01) (< i@364@01 len@212@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) (Seq_index
        a@209@01
        i@364@01))
      (+ i@364@01 1)))
  :pattern ((Seq_index a@209@01 i@364@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@192@12@192@89|)))
; [eval] (forall i: Int :: { b[i] } 0 <= i && i < len ==> b[i].Ref__Integer_value == i)
(declare-const i@365@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len ==> b[i].Ref__Integer_value == i
; [eval] 0 <= i && i < len
; [eval] 0 <= i
(push) ; 5
; [then-branch: 212 | !(0 <= i@365@01) | live]
; [else-branch: 212 | 0 <= i@365@01 | live]
(push) ; 6
; [then-branch: 212 | !(0 <= i@365@01)]
(assert (not (<= 0 i@365@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 212 | 0 <= i@365@01]
(assert (<= 0 i@365@01))
; [eval] i < len
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@365@01) (not (<= 0 i@365@01))))
(push) ; 5
; [then-branch: 213 | 0 <= i@365@01 && i@365@01 < len@212@01 | live]
; [else-branch: 213 | !(0 <= i@365@01 && i@365@01 < len@212@01) | live]
(push) ; 6
; [then-branch: 213 | 0 <= i@365@01 && i@365@01 < len@212@01]
(assert (and (<= 0 i@365@01) (< i@365@01 len@212@01)))
; [eval] b[i].Ref__Integer_value == i
; [eval] b[i]
(push) ; 7
(assert (not (>= i@365@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@365@01 (Seq_length b@210@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@337@01 r)
        (and (<= 0 (inv@336@01 r)) (< (inv@336@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))) r))
    :qid |qp.fvfValDef31|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@340@01 r)
        (and (<= 0 (inv@339@01 r)) (< (inv@339@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))) r))
    :qid |qp.fvfValDef32|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@343@01 r)
        (and (<= 0 (inv@342@01 r)) (< (inv@342@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))) r))
    :qid |qp.fvfValDef33|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@337@01 (Seq_index b@210@01 i@365@01))
          (and
            (<= 0 (inv@336@01 (Seq_index b@210@01 i@365@01)))
            (< (inv@336@01 (Seq_index b@210@01 i@365@01)) len@212@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@340@01 (Seq_index b@210@01 i@365@01))
          (and
            (<= 0 (inv@339@01 (Seq_index b@210@01 i@365@01)))
            (< (inv@339@01 (Seq_index b@210@01 i@365@01)) len@212@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (and
        (img@343@01 (Seq_index b@210@01 i@365@01))
        (and
          (<= 0 (inv@342@01 (Seq_index b@210@01 i@365@01)))
          (< (inv@342@01 (Seq_index b@210@01 i@365@01)) len@212@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 213 | !(0 <= i@365@01 && i@365@01 < len@212@01)]
(assert (not (and (<= 0 i@365@01) (< i@365@01 len@212@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@337@01 r)
      (and (<= 0 (inv@336@01 r)) (< (inv@336@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@340@01 r)
      (and (<= 0 (inv@339@01 r)) (< (inv@339@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))) r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@343@01 r)
      (and (<= 0 (inv@342@01 r)) (< (inv@342@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))) r))
  :qid |qp.fvfValDef33|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@365@01) (< i@365@01 len@212@01)))
  (and (<= 0 i@365@01) (< i@365@01 len@212@01))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@337@01 r)
      (and (<= 0 (inv@336@01 r)) (< (inv@336@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@340@01 r)
      (and (<= 0 (inv@339@01 r)) (< (inv@339@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))) r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@343@01 r)
      (and (<= 0 (inv@342@01 r)) (< (inv@342@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))) r))
  :qid |qp.fvfValDef33|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@365@01 Int)) (!
  (and
    (or (<= 0 i@365@01) (not (<= 0 i@365@01)))
    (or
      (not (and (<= 0 i@365@01) (< i@365@01 len@212@01)))
      (and (<= 0 i@365@01) (< i@365@01 len@212@01))))
  :pattern ((Seq_index b@210@01 i@365@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@193@12@193@85-aux|)))
(push) ; 4
(assert (not (forall ((i@365@01 Int)) (!
  (=>
    (and (<= 0 i@365@01) (< i@365@01 len@212@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) (Seq_index
        b@210@01
        i@365@01))
      i@365@01))
  :pattern ((Seq_index b@210@01 i@365@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@193@12@193@85|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@365@01 Int)) (!
  (=>
    (and (<= 0 i@365@01) (< i@365@01 len@212@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) (Seq_index
        b@210@01
        i@365@01))
      i@365@01))
  :pattern ((Seq_index b@210@01 i@365@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@193@12@193@85|)))
; [eval] (forall i: Int :: { c[i] } 0 <= i && i < len - 1 ==> c[i].Ref__Integer_value == 2)
(declare-const i@366@01 Int)
(push) ; 4
; [eval] 0 <= i && i < len - 1 ==> c[i].Ref__Integer_value == 2
; [eval] 0 <= i && i < len - 1
; [eval] 0 <= i
(push) ; 5
; [then-branch: 214 | !(0 <= i@366@01) | live]
; [else-branch: 214 | 0 <= i@366@01 | live]
(push) ; 6
; [then-branch: 214 | !(0 <= i@366@01)]
(assert (not (<= 0 i@366@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 214 | 0 <= i@366@01]
(assert (<= 0 i@366@01))
; [eval] i < len - 1
; [eval] len - 1
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@366@01) (not (<= 0 i@366@01))))
(push) ; 5
; [then-branch: 215 | 0 <= i@366@01 && i@366@01 < len@212@01 - 1 | live]
; [else-branch: 215 | !(0 <= i@366@01 && i@366@01 < len@212@01 - 1) | live]
(push) ; 6
; [then-branch: 215 | 0 <= i@366@01 && i@366@01 < len@212@01 - 1]
(assert (and (<= 0 i@366@01) (< i@366@01 (- len@212@01 1))))
; [eval] c[i].Ref__Integer_value == 2
; [eval] c[i]
(push) ; 7
(assert (not (>= i@366@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@366@01 (Seq_length c@211@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@337@01 r)
        (and (<= 0 (inv@336@01 r)) (< (inv@336@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))) r))
    :qid |qp.fvfValDef31|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@340@01 r)
        (and (<= 0 (inv@339@01 r)) (< (inv@339@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))) r))
    :qid |qp.fvfValDef32|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@343@01 r)
        (and (<= 0 (inv@342@01 r)) (< (inv@342@01 r) len@212@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))) r))
    :qid |qp.fvfValDef33|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (and
          (img@337@01 (Seq_index c@211@01 i@366@01))
          (and
            (<= 0 (inv@336@01 (Seq_index c@211@01 i@366@01)))
            (< (inv@336@01 (Seq_index c@211@01 i@366@01)) len@212@01)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@340@01 (Seq_index c@211@01 i@366@01))
          (and
            (<= 0 (inv@339@01 (Seq_index c@211@01 i@366@01)))
            (< (inv@339@01 (Seq_index c@211@01 i@366@01)) len@212@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No))
    (ite
      (and
        (img@343@01 (Seq_index c@211@01 i@366@01))
        (and
          (<= 0 (inv@342@01 (Seq_index c@211@01 i@366@01)))
          (< (inv@342@01 (Seq_index c@211@01 i@366@01)) len@212@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 215 | !(0 <= i@366@01 && i@366@01 < len@212@01 - 1)]
(assert (not (and (<= 0 i@366@01) (< i@366@01 (- len@212@01 1)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@337@01 r)
      (and (<= 0 (inv@336@01 r)) (< (inv@336@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@340@01 r)
      (and (<= 0 (inv@339@01 r)) (< (inv@339@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))) r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@343@01 r)
      (and (<= 0 (inv@342@01 r)) (< (inv@342@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))) r))
  :qid |qp.fvfValDef33|)))
; Joined path conditions
(assert (or
  (not (and (<= 0 i@366@01) (< i@366@01 (- len@212@01 1))))
  (and (<= 0 i@366@01) (< i@366@01 (- len@212@01 1)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@337@01 r)
      (and (<= 0 (inv@336@01 r)) (< (inv@336@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@334@01))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@340@01 r)
      (and (<= 0 (inv@339@01 r)) (< (inv@339@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01)))))) r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@343@01 r)
      (and (<= 0 (inv@342@01 r)) (< (inv@342@01 r) len@212@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@334@01))))))) r))
  :qid |qp.fvfValDef33|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@366@01 Int)) (!
  (and
    (or (<= 0 i@366@01) (not (<= 0 i@366@01)))
    (or
      (not (and (<= 0 i@366@01) (< i@366@01 (- len@212@01 1))))
      (and (<= 0 i@366@01) (< i@366@01 (- len@212@01 1)))))
  :pattern ((Seq_index c@211@01 i@366@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@194@12@194@89-aux|)))
(push) ; 4
(assert (not (forall ((i@366@01 Int)) (!
  (=>
    (and (<= 0 i@366@01) (< i@366@01 (- len@212@01 1)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) (Seq_index
        c@211@01
        i@366@01))
      2))
  :pattern ((Seq_index c@211@01 i@366@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@194@12@194@89|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@366@01 Int)) (!
  (=>
    (and (<= 0 i@366@01) (< i@366@01 (- len@212@01 1)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@345@01  $FVF<Ref__Integer_value>) (Seq_index
        c@211@01
        i@366@01))
      2))
  :pattern ((Seq_index c@211@01 i@366@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/test_backward_dep_c.vpr@194@12@194@89|)))
(pop) ; 3
(pop) ; 2
(pop) ; 1
