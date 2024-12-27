(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 01:51:15
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
  :qid |quant-u-8514|)))
(assert (forall ((s@$ $Snap) (i@0@00 Int) (hi@1@00 Int) (ar@2@00 Seq<Int>) (v@3@00 Int)) (!
  (count_list%stateless i@0@00 hi@1@00 ar@2@00 v@3@00)
  :pattern ((count_list%limited s@$ i@0@00 hi@1@00 ar@2@00 v@3@00))
  :qid |quant-u-8515|)))
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
  :qid |quant-u-8526|)))
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
  :qid |quant-u-8527|)))
(assert (forall ((s@$ $Snap) (i@5@00 Int) (hi@6@00 Int) (ar@7@00 Seq<Int>)) (!
  (=
    (sum_list%limited s@$ i@5@00 hi@6@00 ar@7@00)
    (sum_list s@$ i@5@00 hi@6@00 ar@7@00))
  :pattern ((sum_list s@$ i@5@00 hi@6@00 ar@7@00))
  :qid |quant-u-8516|)))
(assert (forall ((s@$ $Snap) (i@5@00 Int) (hi@6@00 Int) (ar@7@00 Seq<Int>)) (!
  (sum_list%stateless i@5@00 hi@6@00 ar@7@00)
  :pattern ((sum_list%limited s@$ i@5@00 hi@6@00 ar@7@00))
  :qid |quant-u-8517|)))
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
  :qid |quant-u-8528|)))
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
  :qid |quant-u-8529|)))
(assert (forall ((s@$ $Snap) (i@9@00 Int) (lo@10@00 Int) (hi@11@00 Int) (step@12@00 Int) (min@13@00 Int) (max@14@00 Int) (ar@15@00 Seq<$Ref>)) (!
  (=
    (sum_square%limited s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00)
    (sum_square s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00))
  :pattern ((sum_square s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00))
  :qid |quant-u-8518|)))
(assert (forall ((s@$ $Snap) (i@9@00 Int) (lo@10@00 Int) (hi@11@00 Int) (step@12@00 Int) (min@13@00 Int) (max@14@00 Int) (ar@15@00 Seq<$Ref>)) (!
  (sum_square%stateless i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00)
  :pattern ((sum_square%limited s@$ i@9@00 lo@10@00 hi@11@00 step@12@00 min@13@00 max@14@00 ar@15@00))
  :qid |quant-u-8519|)))
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
      :qid |quant-u-8531|))
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
  :qid |quant-u-8534|)))
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
  :qid |quant-u-8535|)))
(assert (forall ((s@$ $Snap) (i@17@00 Int) (lo@18@00 Int) (hi@19@00 Int) (step@20@00 Int) (min@21@00 Int) (max@22@00 Int) (ar@23@00 Seq<$Ref>) (v@24@00 Int)) (!
  (=
    (count_square%limited s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00)
    (count_square s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00))
  :pattern ((count_square s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00))
  :qid |quant-u-8520|)))
(assert (forall ((s@$ $Snap) (i@17@00 Int) (lo@18@00 Int) (hi@19@00 Int) (step@20@00 Int) (min@21@00 Int) (max@22@00 Int) (ar@23@00 Seq<$Ref>) (v@24@00 Int)) (!
  (count_square%stateless i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00)
  :pattern ((count_square%limited s@$ i@17@00 lo@18@00 hi@19@00 step@20@00 min@21@00 max@22@00 ar@23@00 v@24@00))
  :qid |quant-u-8521|)))
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
      :qid |quant-u-8537|))
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
  :qid |quant-u-8540|)))
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
  :qid |quant-u-8541|)))
(assert (forall ((s@$ $Snap) (i@26@00 Int) (hi@27@00 Int) (ar@28@00 Seq<$Ref>) (v@29@00 Int)) (!
  (=
    (count_array%limited s@$ i@26@00 hi@27@00 ar@28@00 v@29@00)
    (count_array s@$ i@26@00 hi@27@00 ar@28@00 v@29@00))
  :pattern ((count_array s@$ i@26@00 hi@27@00 ar@28@00 v@29@00))
  :qid |quant-u-8522|)))
(assert (forall ((s@$ $Snap) (i@26@00 Int) (hi@27@00 Int) (ar@28@00 Seq<$Ref>) (v@29@00 Int)) (!
  (count_array%stateless i@26@00 hi@27@00 ar@28@00 v@29@00)
  :pattern ((count_array%limited s@$ i@26@00 hi@27@00 ar@28@00 v@29@00))
  :qid |quant-u-8523|)))
(assert (forall ((s@$ $Snap) (i@26@00 Int) (hi@27@00 Int) (ar@28@00 Seq<$Ref>) (v@29@00 Int)) (!
  (and
    (forall ((k@64@00 Int)) (!
      (=>
        (and (Seq_contains (Seq_range 0 hi@27@00) k@64@00) (< $Perm.No $k@65@00))
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
      :qid |quant-u-8543|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@67@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r)
          (and
            (Seq_contains
              (Seq_range 0 hi@27@00)
              (inv@66@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r))
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
        (and (Seq_contains (Seq_range 0 hi@27@00) k@70@00) (< $Perm.No $k@71@00))
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
            (Seq_contains
              (Seq_range 0 hi@27@00)
              (inv@72@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r))
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
            (Seq_contains
              (Seq_range 0 hi@27@00)
              (inv@72@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r))
            (< $Perm.No $k@71@00)
            (img@73@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r)))
        (=>
          (and
            (Seq_contains
              (Seq_range 0 hi@27@00)
              (inv@72@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r))
            (< $Perm.No $k@71@00)
            (img@73@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r))
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@74@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00)))))
      :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (sm@74@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00))))
      :qid |qp.fvfDomDef5|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Seq_contains
              (Seq_range 0 hi@27@00)
              (inv@72@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r))
            (< $Perm.No $k@71@00)
            (img@73@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r))
          (ite
            (and
              (img@67@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r)
              (Seq_contains
                (Seq_range 0 hi@27@00)
                (inv@66@00 s@$ i@26@00 hi@27@00 ar@28@00 v@29@00 r)))
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
  :qid |quant-u-8546|)))
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
  :qid |quant-u-8547|)))
(assert (forall ((s@$ $Snap) (i@31@00 Int) (lo@32@00 Int) (hi@33@00 Int) (ar@34@00 Seq<$Ref>)) (!
  (=
    (sum_array%limited s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00)
    (sum_array s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00))
  :pattern ((sum_array s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00))
  :qid |quant-u-8524|)))
(assert (forall ((s@$ $Snap) (i@31@00 Int) (lo@32@00 Int) (hi@33@00 Int) (ar@34@00 Seq<$Ref>)) (!
  (sum_array%stateless i@31@00 lo@32@00 hi@33@00 ar@34@00)
  :pattern ((sum_array%limited s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00))
  :qid |quant-u-8525|)))
(assert (forall ((s@$ $Snap) (i@31@00 Int) (lo@32@00 Int) (hi@33@00 Int) (ar@34@00 Seq<$Ref>)) (!
  (and
    (forall ((k@77@00 Int)) (!
      (=>
        (and
          (Seq_contains (Seq_range lo@32@00 hi@33@00) k@77@00)
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
      :qid |quant-u-8549|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@80@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00 r)
          (and
            (Seq_contains
              (Seq_range lo@32@00 hi@33@00)
              (inv@79@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00 r))
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
          (Seq_contains (Seq_range lo@32@00 hi@33@00) k@83@00)
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
            (Seq_contains
              (Seq_range lo@32@00 hi@33@00)
              (inv@85@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00 r))
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
            (Seq_contains
              (Seq_range lo@32@00 hi@33@00)
              (inv@85@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00 r))
            (< $Perm.No $k@84@00)
            (img@86@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00 r)))
        (=>
          (and
            (Seq_contains
              (Seq_range lo@32@00 hi@33@00)
              (inv@85@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00 r))
            (< $Perm.No $k@84@00)
            (img@86@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00 r))
          (Set_in r ($FVF.domain_Ref__Integer_value (sm@87@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00)))))
      :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (sm@87@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00))))
      :qid |qp.fvfDomDef7|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Seq_contains
              (Seq_range lo@32@00 hi@33@00)
              (inv@85@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00 r))
            (< $Perm.No $k@84@00)
            (img@86@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00 r))
          (ite
            (and
              (img@80@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00 r)
              (Seq_contains
                (Seq_range lo@32@00 hi@33@00)
                (inv@79@00 s@$ i@31@00 lo@32@00 hi@33@00 ar@34@00 r)))
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
  :qid |quant-u-8552|)))
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
  :qid |quant-u-8553|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- Ref__loop_main_93 ----------
(declare-const diz@0@01 $Ref)
(declare-const P@1@01 Int)
(declare-const hist@2@01 Seq<$Ref>)
(declare-const diz@3@01 $Ref)
(declare-const P@4@01 Int)
(declare-const hist@5@01 Seq<$Ref>)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@6@01 $Snap)
(assert (= $t@6@01 ($Snap.combine ($Snap.first $t@6@01) ($Snap.second $t@6@01))))
(assert (= ($Snap.first $t@6@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@3@01 $Ref.null)))
(assert (=
  ($Snap.second $t@6@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@6@01))
    ($Snap.second ($Snap.second $t@6@01)))))
(assert (= ($Snap.first ($Snap.second $t@6@01)) $Snap.unit))
; [eval] P <= |hist|
; [eval] |hist|
(assert (<= P@4@01 (Seq_length hist@5@01)))
(assert (=
  ($Snap.second ($Snap.second $t@6@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@6@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@6@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@6@01))) $Snap.unit))
; [eval] (forall k: Int, j: Int :: { hist[k], hist[j] } k >= 0 && (k < |hist| && (j >= 0 && (j < |hist| && k != j))) ==> hist[k] != hist[j])
(declare-const k@7@01 Int)
(declare-const j@8@01 Int)
(push) ; 2
; [eval] k >= 0 && (k < |hist| && (j >= 0 && (j < |hist| && k != j))) ==> hist[k] != hist[j]
; [eval] k >= 0 && (k < |hist| && (j >= 0 && (j < |hist| && k != j)))
; [eval] k >= 0
(push) ; 3
; [then-branch: 0 | !(k@7@01 >= 0) | live]
; [else-branch: 0 | k@7@01 >= 0 | live]
(push) ; 4
; [then-branch: 0 | !(k@7@01 >= 0)]
(assert (not (>= k@7@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 0 | k@7@01 >= 0]
(assert (>= k@7@01 0))
; [eval] k < |hist|
; [eval] |hist|
(push) ; 5
; [then-branch: 1 | !(k@7@01 < |hist@5@01|) | live]
; [else-branch: 1 | k@7@01 < |hist@5@01| | live]
(push) ; 6
; [then-branch: 1 | !(k@7@01 < |hist@5@01|)]
(assert (not (< k@7@01 (Seq_length hist@5@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 1 | k@7@01 < |hist@5@01|]
(assert (< k@7@01 (Seq_length hist@5@01)))
; [eval] j >= 0
(push) ; 7
; [then-branch: 2 | !(j@8@01 >= 0) | live]
; [else-branch: 2 | j@8@01 >= 0 | live]
(push) ; 8
; [then-branch: 2 | !(j@8@01 >= 0)]
(assert (not (>= j@8@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 2 | j@8@01 >= 0]
(assert (>= j@8@01 0))
; [eval] j < |hist|
; [eval] |hist|
(push) ; 9
; [then-branch: 3 | !(j@8@01 < |hist@5@01|) | live]
; [else-branch: 3 | j@8@01 < |hist@5@01| | live]
(push) ; 10
; [then-branch: 3 | !(j@8@01 < |hist@5@01|)]
(assert (not (< j@8@01 (Seq_length hist@5@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 3 | j@8@01 < |hist@5@01|]
(assert (< j@8@01 (Seq_length hist@5@01)))
; [eval] k != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< j@8@01 (Seq_length hist@5@01)) (not (< j@8@01 (Seq_length hist@5@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@8@01 0)
  (and
    (>= j@8@01 0)
    (or
      (< j@8@01 (Seq_length hist@5@01))
      (not (< j@8@01 (Seq_length hist@5@01)))))))
(assert (or (>= j@8@01 0) (not (>= j@8@01 0))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@7@01 (Seq_length hist@5@01))
  (and
    (< k@7@01 (Seq_length hist@5@01))
    (=>
      (>= j@8@01 0)
      (and
        (>= j@8@01 0)
        (or
          (< j@8@01 (Seq_length hist@5@01))
          (not (< j@8@01 (Seq_length hist@5@01))))))
    (or (>= j@8@01 0) (not (>= j@8@01 0))))))
(assert (or (< k@7@01 (Seq_length hist@5@01)) (not (< k@7@01 (Seq_length hist@5@01)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@7@01 0)
  (and
    (>= k@7@01 0)
    (=>
      (< k@7@01 (Seq_length hist@5@01))
      (and
        (< k@7@01 (Seq_length hist@5@01))
        (=>
          (>= j@8@01 0)
          (and
            (>= j@8@01 0)
            (or
              (< j@8@01 (Seq_length hist@5@01))
              (not (< j@8@01 (Seq_length hist@5@01))))))
        (or (>= j@8@01 0) (not (>= j@8@01 0)))))
    (or
      (< k@7@01 (Seq_length hist@5@01))
      (not (< k@7@01 (Seq_length hist@5@01)))))))
(assert (or (>= k@7@01 0) (not (>= k@7@01 0))))
(push) ; 3
; [then-branch: 4 | k@7@01 >= 0 && k@7@01 < |hist@5@01| && j@8@01 >= 0 && j@8@01 < |hist@5@01| && k@7@01 != j@8@01 | live]
; [else-branch: 4 | !(k@7@01 >= 0 && k@7@01 < |hist@5@01| && j@8@01 >= 0 && j@8@01 < |hist@5@01| && k@7@01 != j@8@01) | live]
(push) ; 4
; [then-branch: 4 | k@7@01 >= 0 && k@7@01 < |hist@5@01| && j@8@01 >= 0 && j@8@01 < |hist@5@01| && k@7@01 != j@8@01]
(assert (and
  (>= k@7@01 0)
  (and
    (< k@7@01 (Seq_length hist@5@01))
    (and
      (>= j@8@01 0)
      (and (< j@8@01 (Seq_length hist@5@01)) (not (= k@7@01 j@8@01)))))))
; [eval] hist[k] != hist[j]
; [eval] hist[k]
; [eval] hist[j]
(pop) ; 4
(push) ; 4
; [else-branch: 4 | !(k@7@01 >= 0 && k@7@01 < |hist@5@01| && j@8@01 >= 0 && j@8@01 < |hist@5@01| && k@7@01 != j@8@01)]
(assert (not
  (and
    (>= k@7@01 0)
    (and
      (< k@7@01 (Seq_length hist@5@01))
      (and
        (>= j@8@01 0)
        (and (< j@8@01 (Seq_length hist@5@01)) (not (= k@7@01 j@8@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (>= k@7@01 0)
    (and
      (< k@7@01 (Seq_length hist@5@01))
      (and
        (>= j@8@01 0)
        (and (< j@8@01 (Seq_length hist@5@01)) (not (= k@7@01 j@8@01))))))
  (and
    (>= k@7@01 0)
    (< k@7@01 (Seq_length hist@5@01))
    (>= j@8@01 0)
    (< j@8@01 (Seq_length hist@5@01))
    (not (= k@7@01 j@8@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@7@01 0)
      (and
        (< k@7@01 (Seq_length hist@5@01))
        (and
          (>= j@8@01 0)
          (and (< j@8@01 (Seq_length hist@5@01)) (not (= k@7@01 j@8@01)))))))
  (and
    (>= k@7@01 0)
    (and
      (< k@7@01 (Seq_length hist@5@01))
      (and
        (>= j@8@01 0)
        (and (< j@8@01 (Seq_length hist@5@01)) (not (= k@7@01 j@8@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@7@01 Int) (j@8@01 Int)) (!
  (and
    (=>
      (>= k@7@01 0)
      (and
        (>= k@7@01 0)
        (=>
          (< k@7@01 (Seq_length hist@5@01))
          (and
            (< k@7@01 (Seq_length hist@5@01))
            (=>
              (>= j@8@01 0)
              (and
                (>= j@8@01 0)
                (or
                  (< j@8@01 (Seq_length hist@5@01))
                  (not (< j@8@01 (Seq_length hist@5@01))))))
            (or (>= j@8@01 0) (not (>= j@8@01 0)))))
        (or
          (< k@7@01 (Seq_length hist@5@01))
          (not (< k@7@01 (Seq_length hist@5@01))))))
    (or (>= k@7@01 0) (not (>= k@7@01 0)))
    (=>
      (and
        (>= k@7@01 0)
        (and
          (< k@7@01 (Seq_length hist@5@01))
          (and
            (>= j@8@01 0)
            (and (< j@8@01 (Seq_length hist@5@01)) (not (= k@7@01 j@8@01))))))
      (and
        (>= k@7@01 0)
        (< k@7@01 (Seq_length hist@5@01))
        (>= j@8@01 0)
        (< j@8@01 (Seq_length hist@5@01))
        (not (= k@7@01 j@8@01))))
    (or
      (not
        (and
          (>= k@7@01 0)
          (and
            (< k@7@01 (Seq_length hist@5@01))
            (and
              (>= j@8@01 0)
              (and (< j@8@01 (Seq_length hist@5@01)) (not (= k@7@01 j@8@01)))))))
      (and
        (>= k@7@01 0)
        (and
          (< k@7@01 (Seq_length hist@5@01))
          (and
            (>= j@8@01 0)
            (and (< j@8@01 (Seq_length hist@5@01)) (not (= k@7@01 j@8@01))))))))
  :pattern ((Seq_index hist@5@01 k@7@01) (Seq_index hist@5@01 j@8@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@63@12@63@114-aux|)))
(assert (forall ((k@7@01 Int) (j@8@01 Int)) (!
  (=>
    (and
      (>= k@7@01 0)
      (and
        (< k@7@01 (Seq_length hist@5@01))
        (and
          (>= j@8@01 0)
          (and (< j@8@01 (Seq_length hist@5@01)) (not (= k@7@01 j@8@01))))))
    (not (= (Seq_index hist@5@01 k@7@01) (Seq_index hist@5@01 j@8@01))))
  :pattern ((Seq_index hist@5@01 k@7@01) (Seq_index hist@5@01 j@8@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@63@12@63@114|)))
(declare-const k@9@01 Int)
(push) ; 2
; [eval] (k in [0..P))
; [eval] [0..P)
(assert (Seq_contains (Seq_range 0 P@4@01) k@9@01))
; [eval] hist[k]
(push) ; 3
(assert (not (>= k@9@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< k@9@01 (Seq_length hist@5@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@10@01 ($Ref) Int)
(declare-fun img@11@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((k1@9@01 Int) (k2@9@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 P@4@01) k1@9@01)
      (Seq_contains (Seq_range 0 P@4@01) k2@9@01)
      (= (Seq_index hist@5@01 k1@9@01) (Seq_index hist@5@01 k2@9@01)))
    (= k1@9@01 k2@9@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@9@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 P@4@01) k@9@01)
    (and
      (= (inv@10@01 (Seq_index hist@5@01 k@9@01)) k@9@01)
      (img@11@01 (Seq_index hist@5@01 k@9@01))))
  :pattern ((Seq_index hist@5@01 k@9@01))
  :qid |quant-u-8555|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@11@01 r) (Seq_contains (Seq_range 0 P@4@01) (inv@10@01 r)))
    (= (Seq_index hist@5@01 (inv@10@01 r)) r))
  :pattern ((inv@10@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((k@9@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 P@4@01) k@9@01)
    (not (= (Seq_index hist@5@01 k@9@01) $Ref.null)))
  :pattern ((Seq_index hist@5@01 k@9@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@12@01 $Snap)
(assert (= $t@12@01 ($Snap.combine ($Snap.first $t@12@01) ($Snap.second $t@12@01))))
(declare-const k@13@01 Int)
(push) ; 3
; [eval] (k in [0..P))
; [eval] [0..P)
(assert (Seq_contains (Seq_range 0 P@4@01) k@13@01))
; [eval] hist[k]
(push) ; 4
(assert (not (>= k@13@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< k@13@01 (Seq_length hist@5@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@14@01 ($Ref) Int)
(declare-fun img@15@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((k1@13@01 Int) (k2@13@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 P@4@01) k1@13@01)
      (Seq_contains (Seq_range 0 P@4@01) k2@13@01)
      (= (Seq_index hist@5@01 k1@13@01) (Seq_index hist@5@01 k2@13@01)))
    (= k1@13@01 k2@13@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@13@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 P@4@01) k@13@01)
    (and
      (= (inv@14@01 (Seq_index hist@5@01 k@13@01)) k@13@01)
      (img@15@01 (Seq_index hist@5@01 k@13@01))))
  :pattern ((Seq_index hist@5@01 k@13@01))
  :qid |quant-u-8557|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@15@01 r) (Seq_contains (Seq_range 0 P@4@01) (inv@14@01 r)))
    (= (Seq_index hist@5@01 (inv@14@01 r)) r))
  :pattern ((inv@14@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((k@13@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 P@4@01) k@13@01)
    (not (= (Seq_index hist@5@01 k@13@01) $Ref.null)))
  :pattern ((Seq_index hist@5@01 k@13@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (= ($Snap.second $t@12@01) $Snap.unit))
; [eval] (forall k: Int :: { (k in [0..P)) } { hist[k] } (k in [0..P)) ==> hist[k].Ref__Integer_value == 0)
(declare-const k@16@01 Int)
(push) ; 3
; [eval] (k in [0..P)) ==> hist[k].Ref__Integer_value == 0
; [eval] (k in [0..P))
; [eval] [0..P)
(push) ; 4
; [then-branch: 5 | k@16@01 in [0..P@4@01] | live]
; [else-branch: 5 | !(k@16@01 in [0..P@4@01]) | live]
(push) ; 5
; [then-branch: 5 | k@16@01 in [0..P@4@01]]
(assert (Seq_contains (Seq_range 0 P@4@01) k@16@01))
; [eval] hist[k].Ref__Integer_value == 0
; [eval] hist[k]
(push) ; 6
(assert (not (>= k@16@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k@16@01 (Seq_length hist@5@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (and
  (img@15@01 (Seq_index hist@5@01 k@16@01))
  (Seq_contains (Seq_range 0 P@4@01) (inv@14@01 (Seq_index hist@5@01 k@16@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 5 | !(k@16@01 in [0..P@4@01])]
(assert (not (Seq_contains (Seq_range 0 P@4@01) k@16@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range 0 P@4@01) k@16@01))
  (Seq_contains (Seq_range 0 P@4@01) k@16@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@16@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range 0 P@4@01) k@16@01))
    (Seq_contains (Seq_range 0 P@4@01) k@16@01))
  :pattern ((Seq_contains (Seq_range 0 P@4@01) k@16@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 P@4@01) k@16@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@66@12@66@80-aux|)))
(assert (forall ((k@16@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range 0 P@4@01) k@16@01))
    (Seq_contains (Seq_range 0 P@4@01) k@16@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 P@4@01) k@16@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@66@12@66@80-aux|)))
(assert (forall ((k@16@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range 0 P@4@01) k@16@01))
    (Seq_contains (Seq_range 0 P@4@01) k@16@01))
  :pattern ((Seq_index hist@5@01 k@16@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@66@12@66@80-aux|)))
(assert (forall ((k@16@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 P@4@01) k@16@01)
    (=
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@12@01)) (Seq_index
        hist@5@01
        k@16@01))
      0))
  :pattern ((Seq_contains (Seq_range 0 P@4@01) k@16@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 P@4@01) k@16@01))
  :pattern ((Seq_index hist@5@01 k@16@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@66@12@66@80|)))
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- Ref__loop_body_93 ----------
(declare-const diz@17@01 $Ref)
(declare-const k@18@01 Int)
(declare-const P@19@01 Int)
(declare-const hist@20@01 Seq<$Ref>)
(declare-const diz@21@01 $Ref)
(declare-const k@22@01 Int)
(declare-const P@23@01 Int)
(declare-const hist@24@01 Seq<$Ref>)
(push) ; 1
(declare-const $t@25@01 $Snap)
(assert (= $t@25@01 ($Snap.combine ($Snap.first $t@25@01) ($Snap.second $t@25@01))))
(assert (= ($Snap.first $t@25@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@21@01 $Ref.null)))
(assert (=
  ($Snap.second $t@25@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@25@01))
    ($Snap.second ($Snap.second $t@25@01)))))
(assert (= ($Snap.first ($Snap.second $t@25@01)) $Snap.unit))
; [eval] (k in [0..P))
; [eval] [0..P)
(assert (Seq_contains (Seq_range 0 P@23@01) k@22@01))
(assert (=
  ($Snap.second ($Snap.second $t@25@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@25@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@25@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@25@01))) $Snap.unit))
; [eval] P <= |hist|
; [eval] |hist|
(assert (<= P@23@01 (Seq_length hist@24@01)))
; [eval] hist[k]
(push) ; 2
(assert (not (>= k@22@01 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(assert (not (< k@22@01 (Seq_length hist@24@01))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index hist@24@01 k@22@01) $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@26@01 $Snap)
(assert (= $t@26@01 ($Snap.combine ($Snap.first $t@26@01) ($Snap.second $t@26@01))))
(assert (= ($Snap.first $t@26@01) $Snap.unit))
; [eval] (k in [0..P))
; [eval] [0..P)
(assert (=
  ($Snap.second $t@26@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@26@01))
    ($Snap.second ($Snap.second $t@26@01)))))
; [eval] hist[k]
(push) ; 3
(assert (not (>= k@22@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< k@22@01 (Seq_length hist@24@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= ($Snap.second ($Snap.second $t@26@01)) $Snap.unit))
; [eval] hist[k].Ref__Integer_value == 0
; [eval] hist[k]
(push) ; 3
(assert (not (>= k@22@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< k@22@01 (Seq_length hist@24@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@26@01))) 0))
(pop) ; 2
(push) ; 2
; [exec]
; var __flatten_3: Ref
(declare-const __flatten_3@27@01 $Ref)
; [exec]
; __flatten_3 := hist[k]
; [eval] hist[k]
(push) ; 3
(assert (not (>= k@22@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< k@22@01 (Seq_length hist@24@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_3@28@01 $Ref)
(assert (= __flatten_3@28@01 (Seq_index hist@24@01 k@22@01)))
; [exec]
; __flatten_3.Ref__Integer_value := 0
(push) ; 3
(set-option :timeout 10)
(assert (not (= (Seq_index hist@24@01 k@22@01) __flatten_3@28@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= __flatten_3@28@01 $Ref.null)))
; [eval] (k in [0..P))
; [eval] [0..P)
; [eval] hist[k]
(set-option :timeout 0)
(push) ; 3
(assert (not (>= k@22@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< k@22@01 (Seq_length hist@24@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] hist[k].Ref__Integer_value == 0
; [eval] hist[k]
(push) ; 3
(assert (not (>= k@22@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< k@22@01 (Seq_length hist@24@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- Ref__loop_main_113 ----------
(declare-const diz@29@01 $Ref)
(declare-const N@30@01 Int)
(declare-const M@31@01 Int)
(declare-const step@32@01 Int)
(declare-const hist@33@01 Seq<$Ref>)
(declare-const matrix@34@01 Seq<$Ref>)
(declare-const P@35@01 Int)
(declare-const diz@36@01 $Ref)
(declare-const N@37@01 Int)
(declare-const M@38@01 Int)
(declare-const step@39@01 Int)
(declare-const hist@40@01 Seq<$Ref>)
(declare-const matrix@41@01 Seq<$Ref>)
(declare-const P@42@01 Int)
(push) ; 1
(declare-const $t@43@01 $Snap)
(assert (= $t@43@01 ($Snap.combine ($Snap.first $t@43@01) ($Snap.second $t@43@01))))
(assert (= ($Snap.first $t@43@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@36@01 $Ref.null)))
(assert (=
  ($Snap.second $t@43@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@43@01))
    ($Snap.second ($Snap.second $t@43@01)))))
(assert (= ($Snap.first ($Snap.second $t@43@01)) $Snap.unit))
; [eval] M > 0
(assert (> M@38@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@43@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@43@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@43@01))) $Snap.unit))
; [eval] N > 0
(assert (> N@37@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@43@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@43@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@43@01))))
  $Snap.unit))
; [eval] step >= N
(assert (>= step@39@01 N@37@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01)))))
  $Snap.unit))
; [eval] P > 0
(assert (> P@42@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))
  $Snap.unit))
; [eval] P <= |hist|
; [eval] |hist|
(assert (<= P@42@01 (Seq_length hist@40@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01)))))))
  $Snap.unit))
; [eval] (forall k: Int, j: Int :: { hist[k], hist[j] } k >= 0 && (k < |hist| && (j >= 0 && (j < |hist| && k != j))) ==> hist[k] != hist[j])
(declare-const k@44@01 Int)
(declare-const j@45@01 Int)
(push) ; 2
; [eval] k >= 0 && (k < |hist| && (j >= 0 && (j < |hist| && k != j))) ==> hist[k] != hist[j]
; [eval] k >= 0 && (k < |hist| && (j >= 0 && (j < |hist| && k != j)))
; [eval] k >= 0
(push) ; 3
; [then-branch: 6 | !(k@44@01 >= 0) | live]
; [else-branch: 6 | k@44@01 >= 0 | live]
(push) ; 4
; [then-branch: 6 | !(k@44@01 >= 0)]
(assert (not (>= k@44@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 6 | k@44@01 >= 0]
(assert (>= k@44@01 0))
; [eval] k < |hist|
; [eval] |hist|
(push) ; 5
; [then-branch: 7 | !(k@44@01 < |hist@40@01|) | live]
; [else-branch: 7 | k@44@01 < |hist@40@01| | live]
(push) ; 6
; [then-branch: 7 | !(k@44@01 < |hist@40@01|)]
(assert (not (< k@44@01 (Seq_length hist@40@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 7 | k@44@01 < |hist@40@01|]
(assert (< k@44@01 (Seq_length hist@40@01)))
; [eval] j >= 0
(push) ; 7
; [then-branch: 8 | !(j@45@01 >= 0) | live]
; [else-branch: 8 | j@45@01 >= 0 | live]
(push) ; 8
; [then-branch: 8 | !(j@45@01 >= 0)]
(assert (not (>= j@45@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 8 | j@45@01 >= 0]
(assert (>= j@45@01 0))
; [eval] j < |hist|
; [eval] |hist|
(push) ; 9
; [then-branch: 9 | !(j@45@01 < |hist@40@01|) | live]
; [else-branch: 9 | j@45@01 < |hist@40@01| | live]
(push) ; 10
; [then-branch: 9 | !(j@45@01 < |hist@40@01|)]
(assert (not (< j@45@01 (Seq_length hist@40@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 9 | j@45@01 < |hist@40@01|]
(assert (< j@45@01 (Seq_length hist@40@01)))
; [eval] k != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (< j@45@01 (Seq_length hist@40@01))
  (not (< j@45@01 (Seq_length hist@40@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@45@01 0)
  (and
    (>= j@45@01 0)
    (or
      (< j@45@01 (Seq_length hist@40@01))
      (not (< j@45@01 (Seq_length hist@40@01)))))))
(assert (or (>= j@45@01 0) (not (>= j@45@01 0))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@44@01 (Seq_length hist@40@01))
  (and
    (< k@44@01 (Seq_length hist@40@01))
    (=>
      (>= j@45@01 0)
      (and
        (>= j@45@01 0)
        (or
          (< j@45@01 (Seq_length hist@40@01))
          (not (< j@45@01 (Seq_length hist@40@01))))))
    (or (>= j@45@01 0) (not (>= j@45@01 0))))))
(assert (or
  (< k@44@01 (Seq_length hist@40@01))
  (not (< k@44@01 (Seq_length hist@40@01)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@44@01 0)
  (and
    (>= k@44@01 0)
    (=>
      (< k@44@01 (Seq_length hist@40@01))
      (and
        (< k@44@01 (Seq_length hist@40@01))
        (=>
          (>= j@45@01 0)
          (and
            (>= j@45@01 0)
            (or
              (< j@45@01 (Seq_length hist@40@01))
              (not (< j@45@01 (Seq_length hist@40@01))))))
        (or (>= j@45@01 0) (not (>= j@45@01 0)))))
    (or
      (< k@44@01 (Seq_length hist@40@01))
      (not (< k@44@01 (Seq_length hist@40@01)))))))
(assert (or (>= k@44@01 0) (not (>= k@44@01 0))))
(push) ; 3
; [then-branch: 10 | k@44@01 >= 0 && k@44@01 < |hist@40@01| && j@45@01 >= 0 && j@45@01 < |hist@40@01| && k@44@01 != j@45@01 | live]
; [else-branch: 10 | !(k@44@01 >= 0 && k@44@01 < |hist@40@01| && j@45@01 >= 0 && j@45@01 < |hist@40@01| && k@44@01 != j@45@01) | live]
(push) ; 4
; [then-branch: 10 | k@44@01 >= 0 && k@44@01 < |hist@40@01| && j@45@01 >= 0 && j@45@01 < |hist@40@01| && k@44@01 != j@45@01]
(assert (and
  (>= k@44@01 0)
  (and
    (< k@44@01 (Seq_length hist@40@01))
    (and
      (>= j@45@01 0)
      (and (< j@45@01 (Seq_length hist@40@01)) (not (= k@44@01 j@45@01)))))))
; [eval] hist[k] != hist[j]
; [eval] hist[k]
; [eval] hist[j]
(pop) ; 4
(push) ; 4
; [else-branch: 10 | !(k@44@01 >= 0 && k@44@01 < |hist@40@01| && j@45@01 >= 0 && j@45@01 < |hist@40@01| && k@44@01 != j@45@01)]
(assert (not
  (and
    (>= k@44@01 0)
    (and
      (< k@44@01 (Seq_length hist@40@01))
      (and
        (>= j@45@01 0)
        (and (< j@45@01 (Seq_length hist@40@01)) (not (= k@44@01 j@45@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (>= k@44@01 0)
    (and
      (< k@44@01 (Seq_length hist@40@01))
      (and
        (>= j@45@01 0)
        (and (< j@45@01 (Seq_length hist@40@01)) (not (= k@44@01 j@45@01))))))
  (and
    (>= k@44@01 0)
    (< k@44@01 (Seq_length hist@40@01))
    (>= j@45@01 0)
    (< j@45@01 (Seq_length hist@40@01))
    (not (= k@44@01 j@45@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@44@01 0)
      (and
        (< k@44@01 (Seq_length hist@40@01))
        (and
          (>= j@45@01 0)
          (and (< j@45@01 (Seq_length hist@40@01)) (not (= k@44@01 j@45@01)))))))
  (and
    (>= k@44@01 0)
    (and
      (< k@44@01 (Seq_length hist@40@01))
      (and
        (>= j@45@01 0)
        (and (< j@45@01 (Seq_length hist@40@01)) (not (= k@44@01 j@45@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@44@01 Int) (j@45@01 Int)) (!
  (and
    (=>
      (>= k@44@01 0)
      (and
        (>= k@44@01 0)
        (=>
          (< k@44@01 (Seq_length hist@40@01))
          (and
            (< k@44@01 (Seq_length hist@40@01))
            (=>
              (>= j@45@01 0)
              (and
                (>= j@45@01 0)
                (or
                  (< j@45@01 (Seq_length hist@40@01))
                  (not (< j@45@01 (Seq_length hist@40@01))))))
            (or (>= j@45@01 0) (not (>= j@45@01 0)))))
        (or
          (< k@44@01 (Seq_length hist@40@01))
          (not (< k@44@01 (Seq_length hist@40@01))))))
    (or (>= k@44@01 0) (not (>= k@44@01 0)))
    (=>
      (and
        (>= k@44@01 0)
        (and
          (< k@44@01 (Seq_length hist@40@01))
          (and
            (>= j@45@01 0)
            (and (< j@45@01 (Seq_length hist@40@01)) (not (= k@44@01 j@45@01))))))
      (and
        (>= k@44@01 0)
        (< k@44@01 (Seq_length hist@40@01))
        (>= j@45@01 0)
        (< j@45@01 (Seq_length hist@40@01))
        (not (= k@44@01 j@45@01))))
    (or
      (not
        (and
          (>= k@44@01 0)
          (and
            (< k@44@01 (Seq_length hist@40@01))
            (and
              (>= j@45@01 0)
              (and (< j@45@01 (Seq_length hist@40@01)) (not (= k@44@01 j@45@01)))))))
      (and
        (>= k@44@01 0)
        (and
          (< k@44@01 (Seq_length hist@40@01))
          (and
            (>= j@45@01 0)
            (and (< j@45@01 (Seq_length hist@40@01)) (not (= k@44@01 j@45@01))))))))
  :pattern ((Seq_index hist@40@01 k@44@01) (Seq_index hist@40@01 j@45@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@89@12@89@114-aux|)))
(assert (forall ((k@44@01 Int) (j@45@01 Int)) (!
  (=>
    (and
      (>= k@44@01 0)
      (and
        (< k@44@01 (Seq_length hist@40@01))
        (and
          (>= j@45@01 0)
          (and (< j@45@01 (Seq_length hist@40@01)) (not (= k@44@01 j@45@01))))))
    (not (= (Seq_index hist@40@01 k@44@01) (Seq_index hist@40@01 j@45@01))))
  :pattern ((Seq_index hist@40@01 k@44@01) (Seq_index hist@40@01 j@45@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@89@12@89@114|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01)))))))))))
(declare-const k@46@01 Int)
(push) ; 2
; [eval] (k in [0..P))
; [eval] [0..P)
(assert (Seq_contains (Seq_range 0 P@42@01) k@46@01))
; [eval] hist[k]
(push) ; 3
(assert (not (>= k@46@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< k@46@01 (Seq_length hist@40@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@47@01 ($Ref) Int)
(declare-fun img@48@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((k1@46@01 Int) (k2@46@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 P@42@01) k1@46@01)
      (Seq_contains (Seq_range 0 P@42@01) k2@46@01)
      (= (Seq_index hist@40@01 k1@46@01) (Seq_index hist@40@01 k2@46@01)))
    (= k1@46@01 k2@46@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@46@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 P@42@01) k@46@01)
    (and
      (= (inv@47@01 (Seq_index hist@40@01 k@46@01)) k@46@01)
      (img@48@01 (Seq_index hist@40@01 k@46@01))))
  :pattern ((Seq_index hist@40@01 k@46@01))
  :qid |quant-u-8559|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@48@01 r) (Seq_contains (Seq_range 0 P@42@01) (inv@47@01 r)))
    (= (Seq_index hist@40@01 (inv@47@01 r)) r))
  :pattern ((inv@47@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((k@46@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 P@42@01) k@46@01)
    (not (= (Seq_index hist@40@01 k@46@01) $Ref.null)))
  :pattern ((Seq_index hist@40@01 k@46@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01)))))))))
  $Snap.unit))
; [eval] N <= step
(assert (<= N@37@01 step@39@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))))
  $Snap.unit))
; [eval] M * step <= |matrix|
; [eval] M * step
; [eval] |matrix|
(assert (<= (* M@38@01 step@39@01) (Seq_length matrix@41@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01)))))))))))
  $Snap.unit))
; [eval] (forall k: Int, j: Int :: { matrix[k], matrix[j] } k >= 0 && (k < |matrix| && (j >= 0 && (j < |matrix| && k != j))) ==> matrix[k] != matrix[j])
(declare-const k@49@01 Int)
(declare-const j@50@01 Int)
(push) ; 2
; [eval] k >= 0 && (k < |matrix| && (j >= 0 && (j < |matrix| && k != j))) ==> matrix[k] != matrix[j]
; [eval] k >= 0 && (k < |matrix| && (j >= 0 && (j < |matrix| && k != j)))
; [eval] k >= 0
(push) ; 3
; [then-branch: 11 | !(k@49@01 >= 0) | live]
; [else-branch: 11 | k@49@01 >= 0 | live]
(push) ; 4
; [then-branch: 11 | !(k@49@01 >= 0)]
(assert (not (>= k@49@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 11 | k@49@01 >= 0]
(assert (>= k@49@01 0))
; [eval] k < |matrix|
; [eval] |matrix|
(push) ; 5
; [then-branch: 12 | !(k@49@01 < |matrix@41@01|) | live]
; [else-branch: 12 | k@49@01 < |matrix@41@01| | live]
(push) ; 6
; [then-branch: 12 | !(k@49@01 < |matrix@41@01|)]
(assert (not (< k@49@01 (Seq_length matrix@41@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 12 | k@49@01 < |matrix@41@01|]
(assert (< k@49@01 (Seq_length matrix@41@01)))
; [eval] j >= 0
(push) ; 7
; [then-branch: 13 | !(j@50@01 >= 0) | live]
; [else-branch: 13 | j@50@01 >= 0 | live]
(push) ; 8
; [then-branch: 13 | !(j@50@01 >= 0)]
(assert (not (>= j@50@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 13 | j@50@01 >= 0]
(assert (>= j@50@01 0))
; [eval] j < |matrix|
; [eval] |matrix|
(push) ; 9
; [then-branch: 14 | !(j@50@01 < |matrix@41@01|) | live]
; [else-branch: 14 | j@50@01 < |matrix@41@01| | live]
(push) ; 10
; [then-branch: 14 | !(j@50@01 < |matrix@41@01|)]
(assert (not (< j@50@01 (Seq_length matrix@41@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 14 | j@50@01 < |matrix@41@01|]
(assert (< j@50@01 (Seq_length matrix@41@01)))
; [eval] k != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (< j@50@01 (Seq_length matrix@41@01))
  (not (< j@50@01 (Seq_length matrix@41@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@50@01 0)
  (and
    (>= j@50@01 0)
    (or
      (< j@50@01 (Seq_length matrix@41@01))
      (not (< j@50@01 (Seq_length matrix@41@01)))))))
(assert (or (>= j@50@01 0) (not (>= j@50@01 0))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@49@01 (Seq_length matrix@41@01))
  (and
    (< k@49@01 (Seq_length matrix@41@01))
    (=>
      (>= j@50@01 0)
      (and
        (>= j@50@01 0)
        (or
          (< j@50@01 (Seq_length matrix@41@01))
          (not (< j@50@01 (Seq_length matrix@41@01))))))
    (or (>= j@50@01 0) (not (>= j@50@01 0))))))
(assert (or
  (< k@49@01 (Seq_length matrix@41@01))
  (not (< k@49@01 (Seq_length matrix@41@01)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@49@01 0)
  (and
    (>= k@49@01 0)
    (=>
      (< k@49@01 (Seq_length matrix@41@01))
      (and
        (< k@49@01 (Seq_length matrix@41@01))
        (=>
          (>= j@50@01 0)
          (and
            (>= j@50@01 0)
            (or
              (< j@50@01 (Seq_length matrix@41@01))
              (not (< j@50@01 (Seq_length matrix@41@01))))))
        (or (>= j@50@01 0) (not (>= j@50@01 0)))))
    (or
      (< k@49@01 (Seq_length matrix@41@01))
      (not (< k@49@01 (Seq_length matrix@41@01)))))))
(assert (or (>= k@49@01 0) (not (>= k@49@01 0))))
(push) ; 3
; [then-branch: 15 | k@49@01 >= 0 && k@49@01 < |matrix@41@01| && j@50@01 >= 0 && j@50@01 < |matrix@41@01| && k@49@01 != j@50@01 | live]
; [else-branch: 15 | !(k@49@01 >= 0 && k@49@01 < |matrix@41@01| && j@50@01 >= 0 && j@50@01 < |matrix@41@01| && k@49@01 != j@50@01) | live]
(push) ; 4
; [then-branch: 15 | k@49@01 >= 0 && k@49@01 < |matrix@41@01| && j@50@01 >= 0 && j@50@01 < |matrix@41@01| && k@49@01 != j@50@01]
(assert (and
  (>= k@49@01 0)
  (and
    (< k@49@01 (Seq_length matrix@41@01))
    (and
      (>= j@50@01 0)
      (and (< j@50@01 (Seq_length matrix@41@01)) (not (= k@49@01 j@50@01)))))))
; [eval] matrix[k] != matrix[j]
; [eval] matrix[k]
; [eval] matrix[j]
(pop) ; 4
(push) ; 4
; [else-branch: 15 | !(k@49@01 >= 0 && k@49@01 < |matrix@41@01| && j@50@01 >= 0 && j@50@01 < |matrix@41@01| && k@49@01 != j@50@01)]
(assert (not
  (and
    (>= k@49@01 0)
    (and
      (< k@49@01 (Seq_length matrix@41@01))
      (and
        (>= j@50@01 0)
        (and (< j@50@01 (Seq_length matrix@41@01)) (not (= k@49@01 j@50@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (>= k@49@01 0)
    (and
      (< k@49@01 (Seq_length matrix@41@01))
      (and
        (>= j@50@01 0)
        (and (< j@50@01 (Seq_length matrix@41@01)) (not (= k@49@01 j@50@01))))))
  (and
    (>= k@49@01 0)
    (< k@49@01 (Seq_length matrix@41@01))
    (>= j@50@01 0)
    (< j@50@01 (Seq_length matrix@41@01))
    (not (= k@49@01 j@50@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@49@01 0)
      (and
        (< k@49@01 (Seq_length matrix@41@01))
        (and
          (>= j@50@01 0)
          (and (< j@50@01 (Seq_length matrix@41@01)) (not (= k@49@01 j@50@01)))))))
  (and
    (>= k@49@01 0)
    (and
      (< k@49@01 (Seq_length matrix@41@01))
      (and
        (>= j@50@01 0)
        (and (< j@50@01 (Seq_length matrix@41@01)) (not (= k@49@01 j@50@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@49@01 Int) (j@50@01 Int)) (!
  (and
    (=>
      (>= k@49@01 0)
      (and
        (>= k@49@01 0)
        (=>
          (< k@49@01 (Seq_length matrix@41@01))
          (and
            (< k@49@01 (Seq_length matrix@41@01))
            (=>
              (>= j@50@01 0)
              (and
                (>= j@50@01 0)
                (or
                  (< j@50@01 (Seq_length matrix@41@01))
                  (not (< j@50@01 (Seq_length matrix@41@01))))))
            (or (>= j@50@01 0) (not (>= j@50@01 0)))))
        (or
          (< k@49@01 (Seq_length matrix@41@01))
          (not (< k@49@01 (Seq_length matrix@41@01))))))
    (or (>= k@49@01 0) (not (>= k@49@01 0)))
    (=>
      (and
        (>= k@49@01 0)
        (and
          (< k@49@01 (Seq_length matrix@41@01))
          (and
            (>= j@50@01 0)
            (and (< j@50@01 (Seq_length matrix@41@01)) (not (= k@49@01 j@50@01))))))
      (and
        (>= k@49@01 0)
        (< k@49@01 (Seq_length matrix@41@01))
        (>= j@50@01 0)
        (< j@50@01 (Seq_length matrix@41@01))
        (not (= k@49@01 j@50@01))))
    (or
      (not
        (and
          (>= k@49@01 0)
          (and
            (< k@49@01 (Seq_length matrix@41@01))
            (and
              (>= j@50@01 0)
              (and
                (< j@50@01 (Seq_length matrix@41@01))
                (not (= k@49@01 j@50@01)))))))
      (and
        (>= k@49@01 0)
        (and
          (< k@49@01 (Seq_length matrix@41@01))
          (and
            (>= j@50@01 0)
            (and (< j@50@01 (Seq_length matrix@41@01)) (not (= k@49@01 j@50@01))))))))
  :pattern ((Seq_index matrix@41@01 k@49@01) (Seq_index matrix@41@01 j@50@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@93@12@93@122-aux|)))
(assert (forall ((k@49@01 Int) (j@50@01 Int)) (!
  (=>
    (and
      (>= k@49@01 0)
      (and
        (< k@49@01 (Seq_length matrix@41@01))
        (and
          (>= j@50@01 0)
          (and (< j@50@01 (Seq_length matrix@41@01)) (not (= k@49@01 j@50@01))))))
    (not (= (Seq_index matrix@41@01 k@49@01) (Seq_index matrix@41@01 j@50@01))))
  :pattern ((Seq_index matrix@41@01 k@49@01) (Seq_index matrix@41@01 j@50@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@93@12@93@122|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01)))))))))))))))
(declare-const j@51@01 Int)
(push) ; 2
; [eval] (j in [0..M * step)) && j % step < N
; [eval] (j in [0..M * step))
; [eval] [0..M * step)
; [eval] M * step
(push) ; 3
; [then-branch: 16 | !(j@51@01 in [0..M@38@01 * step@39@01]) | live]
; [else-branch: 16 | j@51@01 in [0..M@38@01 * step@39@01] | live]
(push) ; 4
; [then-branch: 16 | !(j@51@01 in [0..M@38@01 * step@39@01])]
(assert (not (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) j@51@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 16 | j@51@01 in [0..M@38@01 * step@39@01]]
(assert (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) j@51@01))
; [eval] j % step < N
; [eval] j % step
(push) ; 5
(assert (not (not (= step@39@01 0))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) j@51@01)
  (not (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) j@51@01))))
(assert (and
  (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) j@51@01)
  (< (mod j@51@01 step@39@01) N@37@01)))
; [eval] matrix[j]
(push) ; 3
(assert (not (>= j@51@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< j@51@01 (Seq_length matrix@41@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@52@01 ($Ref) Int)
(declare-fun img@53@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@51@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) j@51@01)
      (< (mod j@51@01 step@39@01) N@37@01))
    (or
      (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) j@51@01)
      (not (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) j@51@01))))
  :pattern ((Seq_index matrix@41@01 j@51@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((j1@51@01 Int) (j2@51@01 Int)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) j1@51@01)
        (< (mod j1@51@01 step@39@01) N@37@01))
      (and
        (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) j2@51@01)
        (< (mod j2@51@01 step@39@01) N@37@01))
      (= (Seq_index matrix@41@01 j1@51@01) (Seq_index matrix@41@01 j2@51@01)))
    (= j1@51@01 j2@51@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@51@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) j@51@01)
      (< (mod j@51@01 step@39@01) N@37@01))
    (and
      (= (inv@52@01 (Seq_index matrix@41@01 j@51@01)) j@51@01)
      (img@53@01 (Seq_index matrix@41@01 j@51@01))))
  :pattern ((Seq_index matrix@41@01 j@51@01))
  :qid |quant-u-8561|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@53@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) (inv@52@01 r))
        (< (mod (inv@52@01 r) step@39@01) N@37@01)))
    (= (Seq_index matrix@41@01 (inv@52@01 r)) r))
  :pattern ((inv@52@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@51@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) j@51@01)
      (< (mod j@51@01 step@39@01) N@37@01))
    (not (= (Seq_index matrix@41@01 j@51@01) $Ref.null)))
  :pattern ((Seq_index matrix@41@01 j@51@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index matrix@41@01 j@51@01) (Seq_index hist@40@01 k@46@01))
    (=
      (and
        (img@53@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) (inv@52@01 r))
          (< (mod (inv@52@01 r) step@39@01) N@37@01)))
      (and (img@48@01 r) (Seq_contains (Seq_range 0 P@42@01) (inv@47@01 r)))))
  
  :qid |quant-u-8562|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01)))))))))))))
  $Snap.unit))
; [eval] N <= step
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))))))))
  $Snap.unit))
; [eval] (forall k_fresh_rw_0: Int :: { (matrix[k_fresh_rw_0].Ref__Integer_value in [0..P)) } (k_fresh_rw_0 in [0..M * step)) && k_fresh_rw_0 % step < N ==> (matrix[k_fresh_rw_0].Ref__Integer_value in [0..P)))
(declare-const k_fresh_rw_0@54@01 Int)
(set-option :timeout 0)
(push) ; 2
; [eval] (k_fresh_rw_0 in [0..M * step)) && k_fresh_rw_0 % step < N ==> (matrix[k_fresh_rw_0].Ref__Integer_value in [0..P))
; [eval] (k_fresh_rw_0 in [0..M * step)) && k_fresh_rw_0 % step < N
; [eval] (k_fresh_rw_0 in [0..M * step))
; [eval] [0..M * step)
; [eval] M * step
(push) ; 3
; [then-branch: 17 | !(k_fresh_rw_0@54@01 in [0..M@38@01 * step@39@01]) | live]
; [else-branch: 17 | k_fresh_rw_0@54@01 in [0..M@38@01 * step@39@01] | live]
(push) ; 4
; [then-branch: 17 | !(k_fresh_rw_0@54@01 in [0..M@38@01 * step@39@01])]
(assert (not (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) k_fresh_rw_0@54@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 17 | k_fresh_rw_0@54@01 in [0..M@38@01 * step@39@01]]
(assert (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) k_fresh_rw_0@54@01))
; [eval] k_fresh_rw_0 % step < N
; [eval] k_fresh_rw_0 % step
(push) ; 5
(assert (not (not (= step@39@01 0))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) k_fresh_rw_0@54@01)
  (not (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) k_fresh_rw_0@54@01))))
(push) ; 3
; [then-branch: 18 | k_fresh_rw_0@54@01 in [0..M@38@01 * step@39@01] && k_fresh_rw_0@54@01 % step@39@01 < N@37@01 | live]
; [else-branch: 18 | !(k_fresh_rw_0@54@01 in [0..M@38@01 * step@39@01] && k_fresh_rw_0@54@01 % step@39@01 < N@37@01) | live]
(push) ; 4
; [then-branch: 18 | k_fresh_rw_0@54@01 in [0..M@38@01 * step@39@01] && k_fresh_rw_0@54@01 % step@39@01 < N@37@01]
(assert (and
  (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) k_fresh_rw_0@54@01)
  (< (mod k_fresh_rw_0@54@01 step@39@01) N@37@01)))
; [eval] (matrix[k_fresh_rw_0].Ref__Integer_value in [0..P))
; [eval] [0..P)
; [eval] matrix[k_fresh_rw_0]
(push) ; 5
(assert (not (>= k_fresh_rw_0@54@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k_fresh_rw_0@54@01 (Seq_length matrix@41@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@55@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@48@01 r) (Seq_contains (Seq_range 0 P@42@01) (inv@47@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@53@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) (inv@52@01 r))
        (< (mod (inv@52@01 r) step@39@01) N@37@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))))))) r))
  :qid |qp.fvfValDef1|)))
(declare-const pm@56@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@56@01  $FPM) r)
    (+
      (ite
        (and (img@48@01 r) (Seq_contains (Seq_range 0 P@42@01) (inv@47@01 r)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@53@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) (inv@52@01 r))
            (< (mod (inv@52@01 r) step@39@01) N@37@01)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@56@01  $FPM) r))
  :qid |qp.resPrmSumDef2|)))
(push) ; 5
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@56@01  $FPM) (Seq_index
    matrix@41@01
    k_fresh_rw_0@54@01)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 18 | !(k_fresh_rw_0@54@01 in [0..M@38@01 * step@39@01] && k_fresh_rw_0@54@01 % step@39@01 < N@37@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) k_fresh_rw_0@54@01)
    (< (mod k_fresh_rw_0@54@01 step@39@01) N@37@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@48@01 r) (Seq_contains (Seq_range 0 P@42@01) (inv@47@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@53@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) (inv@52@01 r))
        (< (mod (inv@52@01 r) step@39@01) N@37@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))))))) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@56@01  $FPM) r)
    (+
      (ite
        (and (img@48@01 r) (Seq_contains (Seq_range 0 P@42@01) (inv@47@01 r)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@53@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) (inv@52@01 r))
            (< (mod (inv@52@01 r) step@39@01) N@37@01)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@56@01  $FPM) r))
  :qid |qp.resPrmSumDef2|)))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) k_fresh_rw_0@54@01)
      (< (mod k_fresh_rw_0@54@01 step@39@01) N@37@01)))
  (and
    (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) k_fresh_rw_0@54@01)
    (< (mod k_fresh_rw_0@54@01 step@39@01) N@37@01))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@48@01 r) (Seq_contains (Seq_range 0 P@42@01) (inv@47@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@53@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) (inv@52@01 r))
        (< (mod (inv@52@01 r) step@39@01) N@37@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))))))) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@56@01  $FPM) r)
    (+
      (ite
        (and (img@48@01 r) (Seq_contains (Seq_range 0 P@42@01) (inv@47@01 r)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@53@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) (inv@52@01 r))
            (< (mod (inv@52@01 r) step@39@01) N@37@01)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@56@01  $FPM) r))
  :qid |qp.resPrmSumDef2|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k_fresh_rw_0@54@01 Int)) (!
  (and
    (or
      (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) k_fresh_rw_0@54@01)
      (not
        (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) k_fresh_rw_0@54@01)))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) k_fresh_rw_0@54@01)
          (< (mod k_fresh_rw_0@54@01 step@39@01) N@37@01)))
      (and
        (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) k_fresh_rw_0@54@01)
        (< (mod k_fresh_rw_0@54@01 step@39@01) N@37@01))))
  :pattern ((Seq_contains
    (Seq_range 0 P@42@01)
    ($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) (Seq_index
      matrix@41@01
      k_fresh_rw_0@54@01))))
  :pattern ((Seq_contains_trigger
    (Seq_range 0 P@42@01)
    ($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) (Seq_index
      matrix@41@01
      k_fresh_rw_0@54@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@95@28@95@172-aux|)))
(assert (forall ((k_fresh_rw_0@54@01 Int)) (!
  (and
    (or
      (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) k_fresh_rw_0@54@01)
      (not
        (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) k_fresh_rw_0@54@01)))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) k_fresh_rw_0@54@01)
          (< (mod k_fresh_rw_0@54@01 step@39@01) N@37@01)))
      (and
        (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) k_fresh_rw_0@54@01)
        (< (mod k_fresh_rw_0@54@01 step@39@01) N@37@01))))
  :pattern ((Seq_contains_trigger
    (Seq_range 0 P@42@01)
    ($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) (Seq_index
      matrix@41@01
      k_fresh_rw_0@54@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@95@28@95@172-aux|)))
(assert (forall ((k_fresh_rw_0@54@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) k_fresh_rw_0@54@01)
      (< (mod k_fresh_rw_0@54@01 step@39@01) N@37@01))
    (Seq_contains
      (Seq_range 0 P@42@01)
      ($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) (Seq_index
        matrix@41@01
        k_fresh_rw_0@54@01))))
  :pattern ((Seq_contains
    (Seq_range 0 P@42@01)
    ($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) (Seq_index
      matrix@41@01
      k_fresh_rw_0@54@01))))
  :pattern ((Seq_contains_trigger
    (Seq_range 0 P@42@01)
    ($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) (Seq_index
      matrix@41@01
      k_fresh_rw_0@54@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@95@28@95@172|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))))))))
  $Snap.unit))
; [eval] (forall k: Int, j: Int :: { hist[k], hist[j] } k >= 0 && (k < |hist| && (j >= 0 && (j < |hist| && k != j))) ==> hist[k] != hist[j])
(declare-const k@57@01 Int)
(declare-const j@58@01 Int)
(push) ; 2
; [eval] k >= 0 && (k < |hist| && (j >= 0 && (j < |hist| && k != j))) ==> hist[k] != hist[j]
; [eval] k >= 0 && (k < |hist| && (j >= 0 && (j < |hist| && k != j)))
; [eval] k >= 0
(push) ; 3
; [then-branch: 19 | !(k@57@01 >= 0) | live]
; [else-branch: 19 | k@57@01 >= 0 | live]
(push) ; 4
; [then-branch: 19 | !(k@57@01 >= 0)]
(assert (not (>= k@57@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 19 | k@57@01 >= 0]
(assert (>= k@57@01 0))
; [eval] k < |hist|
; [eval] |hist|
(push) ; 5
; [then-branch: 20 | !(k@57@01 < |hist@40@01|) | live]
; [else-branch: 20 | k@57@01 < |hist@40@01| | live]
(push) ; 6
; [then-branch: 20 | !(k@57@01 < |hist@40@01|)]
(assert (not (< k@57@01 (Seq_length hist@40@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 20 | k@57@01 < |hist@40@01|]
(assert (< k@57@01 (Seq_length hist@40@01)))
; [eval] j >= 0
(push) ; 7
; [then-branch: 21 | !(j@58@01 >= 0) | live]
; [else-branch: 21 | j@58@01 >= 0 | live]
(push) ; 8
; [then-branch: 21 | !(j@58@01 >= 0)]
(assert (not (>= j@58@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 21 | j@58@01 >= 0]
(assert (>= j@58@01 0))
; [eval] j < |hist|
; [eval] |hist|
(push) ; 9
; [then-branch: 22 | !(j@58@01 < |hist@40@01|) | live]
; [else-branch: 22 | j@58@01 < |hist@40@01| | live]
(push) ; 10
; [then-branch: 22 | !(j@58@01 < |hist@40@01|)]
(assert (not (< j@58@01 (Seq_length hist@40@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 22 | j@58@01 < |hist@40@01|]
(assert (< j@58@01 (Seq_length hist@40@01)))
; [eval] k != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (< j@58@01 (Seq_length hist@40@01))
  (not (< j@58@01 (Seq_length hist@40@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@58@01 0)
  (and
    (>= j@58@01 0)
    (or
      (< j@58@01 (Seq_length hist@40@01))
      (not (< j@58@01 (Seq_length hist@40@01)))))))
(assert (or (>= j@58@01 0) (not (>= j@58@01 0))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@57@01 (Seq_length hist@40@01))
  (and
    (< k@57@01 (Seq_length hist@40@01))
    (=>
      (>= j@58@01 0)
      (and
        (>= j@58@01 0)
        (or
          (< j@58@01 (Seq_length hist@40@01))
          (not (< j@58@01 (Seq_length hist@40@01))))))
    (or (>= j@58@01 0) (not (>= j@58@01 0))))))
(assert (or
  (< k@57@01 (Seq_length hist@40@01))
  (not (< k@57@01 (Seq_length hist@40@01)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@57@01 0)
  (and
    (>= k@57@01 0)
    (=>
      (< k@57@01 (Seq_length hist@40@01))
      (and
        (< k@57@01 (Seq_length hist@40@01))
        (=>
          (>= j@58@01 0)
          (and
            (>= j@58@01 0)
            (or
              (< j@58@01 (Seq_length hist@40@01))
              (not (< j@58@01 (Seq_length hist@40@01))))))
        (or (>= j@58@01 0) (not (>= j@58@01 0)))))
    (or
      (< k@57@01 (Seq_length hist@40@01))
      (not (< k@57@01 (Seq_length hist@40@01)))))))
(assert (or (>= k@57@01 0) (not (>= k@57@01 0))))
(push) ; 3
; [then-branch: 23 | k@57@01 >= 0 && k@57@01 < |hist@40@01| && j@58@01 >= 0 && j@58@01 < |hist@40@01| && k@57@01 != j@58@01 | live]
; [else-branch: 23 | !(k@57@01 >= 0 && k@57@01 < |hist@40@01| && j@58@01 >= 0 && j@58@01 < |hist@40@01| && k@57@01 != j@58@01) | live]
(push) ; 4
; [then-branch: 23 | k@57@01 >= 0 && k@57@01 < |hist@40@01| && j@58@01 >= 0 && j@58@01 < |hist@40@01| && k@57@01 != j@58@01]
(assert (and
  (>= k@57@01 0)
  (and
    (< k@57@01 (Seq_length hist@40@01))
    (and
      (>= j@58@01 0)
      (and (< j@58@01 (Seq_length hist@40@01)) (not (= k@57@01 j@58@01)))))))
; [eval] hist[k] != hist[j]
; [eval] hist[k]
; [eval] hist[j]
(pop) ; 4
(push) ; 4
; [else-branch: 23 | !(k@57@01 >= 0 && k@57@01 < |hist@40@01| && j@58@01 >= 0 && j@58@01 < |hist@40@01| && k@57@01 != j@58@01)]
(assert (not
  (and
    (>= k@57@01 0)
    (and
      (< k@57@01 (Seq_length hist@40@01))
      (and
        (>= j@58@01 0)
        (and (< j@58@01 (Seq_length hist@40@01)) (not (= k@57@01 j@58@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (>= k@57@01 0)
    (and
      (< k@57@01 (Seq_length hist@40@01))
      (and
        (>= j@58@01 0)
        (and (< j@58@01 (Seq_length hist@40@01)) (not (= k@57@01 j@58@01))))))
  (and
    (>= k@57@01 0)
    (< k@57@01 (Seq_length hist@40@01))
    (>= j@58@01 0)
    (< j@58@01 (Seq_length hist@40@01))
    (not (= k@57@01 j@58@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@57@01 0)
      (and
        (< k@57@01 (Seq_length hist@40@01))
        (and
          (>= j@58@01 0)
          (and (< j@58@01 (Seq_length hist@40@01)) (not (= k@57@01 j@58@01)))))))
  (and
    (>= k@57@01 0)
    (and
      (< k@57@01 (Seq_length hist@40@01))
      (and
        (>= j@58@01 0)
        (and (< j@58@01 (Seq_length hist@40@01)) (not (= k@57@01 j@58@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@57@01 Int) (j@58@01 Int)) (!
  (and
    (=>
      (>= k@57@01 0)
      (and
        (>= k@57@01 0)
        (=>
          (< k@57@01 (Seq_length hist@40@01))
          (and
            (< k@57@01 (Seq_length hist@40@01))
            (=>
              (>= j@58@01 0)
              (and
                (>= j@58@01 0)
                (or
                  (< j@58@01 (Seq_length hist@40@01))
                  (not (< j@58@01 (Seq_length hist@40@01))))))
            (or (>= j@58@01 0) (not (>= j@58@01 0)))))
        (or
          (< k@57@01 (Seq_length hist@40@01))
          (not (< k@57@01 (Seq_length hist@40@01))))))
    (or (>= k@57@01 0) (not (>= k@57@01 0)))
    (=>
      (and
        (>= k@57@01 0)
        (and
          (< k@57@01 (Seq_length hist@40@01))
          (and
            (>= j@58@01 0)
            (and (< j@58@01 (Seq_length hist@40@01)) (not (= k@57@01 j@58@01))))))
      (and
        (>= k@57@01 0)
        (< k@57@01 (Seq_length hist@40@01))
        (>= j@58@01 0)
        (< j@58@01 (Seq_length hist@40@01))
        (not (= k@57@01 j@58@01))))
    (or
      (not
        (and
          (>= k@57@01 0)
          (and
            (< k@57@01 (Seq_length hist@40@01))
            (and
              (>= j@58@01 0)
              (and (< j@58@01 (Seq_length hist@40@01)) (not (= k@57@01 j@58@01)))))))
      (and
        (>= k@57@01 0)
        (and
          (< k@57@01 (Seq_length hist@40@01))
          (and
            (>= j@58@01 0)
            (and (< j@58@01 (Seq_length hist@40@01)) (not (= k@57@01 j@58@01))))))))
  :pattern ((Seq_index hist@40@01 k@57@01) (Seq_index hist@40@01 j@58@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@96@12@96@114-aux|)))
(assert (forall ((k@57@01 Int) (j@58@01 Int)) (!
  (=>
    (and
      (>= k@57@01 0)
      (and
        (< k@57@01 (Seq_length hist@40@01))
        (and
          (>= j@58@01 0)
          (and (< j@58@01 (Seq_length hist@40@01)) (not (= k@57@01 j@58@01))))))
    (not (= (Seq_index hist@40@01 k@57@01) (Seq_index hist@40@01 j@58@01))))
  :pattern ((Seq_index hist@40@01 k@57@01) (Seq_index hist@40@01 j@58@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@96@12@96@114|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@59@01 $Snap)
(assert (= $t@59@01 ($Snap.combine ($Snap.first $t@59@01) ($Snap.second $t@59@01))))
(assert (= ($Snap.first $t@59@01) $Snap.unit))
; [eval] M > 0
(assert (=
  ($Snap.second $t@59@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@59@01))
    ($Snap.second ($Snap.second $t@59@01)))))
(assert (= ($Snap.first ($Snap.second $t@59@01)) $Snap.unit))
; [eval] N > 0
(assert (=
  ($Snap.second ($Snap.second $t@59@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@59@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@59@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@59@01))) $Snap.unit))
; [eval] step >= N
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@59@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@59@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@59@01))))
  $Snap.unit))
; [eval] P > 0
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01)))))
  $Snap.unit))
; [eval] N <= step
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01)))))))))
(declare-const j@60@01 Int)
(push) ; 3
; [eval] (j in [0..M * step)) && j % step < N
; [eval] (j in [0..M * step))
; [eval] [0..M * step)
; [eval] M * step
(push) ; 4
; [then-branch: 24 | !(j@60@01 in [0..M@38@01 * step@39@01]) | live]
; [else-branch: 24 | j@60@01 in [0..M@38@01 * step@39@01] | live]
(push) ; 5
; [then-branch: 24 | !(j@60@01 in [0..M@38@01 * step@39@01])]
(assert (not (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) j@60@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 24 | j@60@01 in [0..M@38@01 * step@39@01]]
(assert (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) j@60@01))
; [eval] j % step < N
; [eval] j % step
(push) ; 6
(assert (not (not (= step@39@01 0))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) j@60@01)
  (not (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) j@60@01))))
(assert (and
  (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) j@60@01)
  (< (mod j@60@01 step@39@01) N@37@01)))
; [eval] matrix[j]
(push) ; 4
(assert (not (>= j@60@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@60@01 (Seq_length matrix@41@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@61@01 ($Ref) Int)
(declare-fun img@62@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@60@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) j@60@01)
      (< (mod j@60@01 step@39@01) N@37@01))
    (or
      (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) j@60@01)
      (not (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) j@60@01))))
  :pattern ((Seq_index matrix@41@01 j@60@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@60@01 Int) (j2@60@01 Int)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) j1@60@01)
        (< (mod j1@60@01 step@39@01) N@37@01))
      (and
        (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) j2@60@01)
        (< (mod j2@60@01 step@39@01) N@37@01))
      (= (Seq_index matrix@41@01 j1@60@01) (Seq_index matrix@41@01 j2@60@01)))
    (= j1@60@01 j2@60@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@60@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) j@60@01)
      (< (mod j@60@01 step@39@01) N@37@01))
    (and
      (= (inv@61@01 (Seq_index matrix@41@01 j@60@01)) j@60@01)
      (img@62@01 (Seq_index matrix@41@01 j@60@01))))
  :pattern ((Seq_index matrix@41@01 j@60@01))
  :qid |quant-u-8564|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@62@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) (inv@61@01 r))
        (< (mod (inv@61@01 r) step@39@01) N@37@01)))
    (= (Seq_index matrix@41@01 (inv@61@01 r)) r))
  :pattern ((inv@61@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@60@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) j@60@01)
      (< (mod j@60@01 step@39@01) N@37@01))
    (not (= (Seq_index matrix@41@01 j@60@01) $Ref.null)))
  :pattern ((Seq_index matrix@41@01 j@60@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01))))))))))
(declare-const k@63@01 Int)
(push) ; 3
; [eval] (k in [0..P))
; [eval] [0..P)
(assert (Seq_contains (Seq_range 0 P@42@01) k@63@01))
; [eval] hist[k]
(push) ; 4
(assert (not (>= k@63@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< k@63@01 (Seq_length hist@40@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@64@01 ($Ref) Int)
(declare-fun img@65@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((k1@63@01 Int) (k2@63@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 P@42@01) k1@63@01)
      (Seq_contains (Seq_range 0 P@42@01) k2@63@01)
      (= (Seq_index hist@40@01 k1@63@01) (Seq_index hist@40@01 k2@63@01)))
    (= k1@63@01 k2@63@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@63@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 P@42@01) k@63@01)
    (and
      (= (inv@64@01 (Seq_index hist@40@01 k@63@01)) k@63@01)
      (img@65@01 (Seq_index hist@40@01 k@63@01))))
  :pattern ((Seq_index hist@40@01 k@63@01))
  :qid |quant-u-8566|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@65@01 r) (Seq_contains (Seq_range 0 P@42@01) (inv@64@01 r)))
    (= (Seq_index hist@40@01 (inv@64@01 r)) r))
  :pattern ((inv@64@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((k@63@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 P@42@01) k@63@01)
    (not (= (Seq_index hist@40@01 k@63@01) $Ref.null)))
  :pattern ((Seq_index hist@40@01 k@63@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index hist@40@01 k@63@01) (Seq_index matrix@41@01 j@60@01))
    (=
      (and (img@65@01 r) (Seq_contains (Seq_range 0 P@42@01) (inv@64@01 r)))
      (and
        (img@62@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) (inv@61@01 r))
          (< (mod (inv@61@01 r) step@39@01) N@37@01)))))
  
  :qid |quant-u-8567|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01))))))))
  $Snap.unit))
; [eval] (forall k: Int :: { (k in [0..P)) } { old(hist[k]) } (k in [0..P)) ==> hist[k].Ref__Integer_value == old(hist[k].Ref__Integer_value) + count_square(0, 0, N, step, 0, M * step, matrix, k))
(declare-const k@66@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (k in [0..P)) ==> hist[k].Ref__Integer_value == old(hist[k].Ref__Integer_value) + count_square(0, 0, N, step, 0, M * step, matrix, k)
; [eval] (k in [0..P))
; [eval] [0..P)
(push) ; 4
; [then-branch: 25 | k@66@01 in [0..P@42@01] | live]
; [else-branch: 25 | !(k@66@01 in [0..P@42@01]) | live]
(push) ; 5
; [then-branch: 25 | k@66@01 in [0..P@42@01]]
(assert (Seq_contains (Seq_range 0 P@42@01) k@66@01))
; [eval] hist[k].Ref__Integer_value == old(hist[k].Ref__Integer_value) + count_square(0, 0, N, step, 0, M * step, matrix, k)
; [eval] hist[k]
(push) ; 6
(assert (not (>= k@66@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k@66@01 (Seq_length hist@40@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@67@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@62@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) (inv@61@01 r))
        (< (mod (inv@61@01 r) step@39@01) N@37@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@67@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@67@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01))))))) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@65@01 r) (Seq_contains (Seq_range 0 P@42@01) (inv@64@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@67@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@67@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01)))))))) r))
  :qid |qp.fvfValDef4|)))
(declare-const pm@68@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@68@01  $FPM) r)
    (+
      (ite
        (and
          (img@62@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) (inv@61@01 r))
            (< (mod (inv@61@01 r) step@39@01) N@37@01)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (ite
        (and (img@65@01 r) (Seq_contains (Seq_range 0 P@42@01) (inv@64@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@68@01  $FPM) r))
  :qid |qp.resPrmSumDef5|)))
(push) ; 6
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@68@01  $FPM) (Seq_index
    hist@40@01
    k@66@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] old(hist[k].Ref__Integer_value) + count_square(0, 0, N, step, 0, M * step, matrix, k)
; [eval] old(hist[k].Ref__Integer_value)
; [eval] hist[k]
(push) ; 6
(assert (not (>= k@66@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k@66@01 (Seq_length hist@40@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@48@01 r) (Seq_contains (Seq_range 0 P@42@01) (inv@47@01 r)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))) r))
    :qid |qp.fvfValDef0|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@53@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) (inv@52@01 r))
          (< (mod (inv@52@01 r) step@39@01) N@37@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))))))) r))
    :qid |qp.fvfValDef1|))))
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@48@01 (Seq_index hist@40@01 k@66@01))
        (Seq_contains
          (Seq_range 0 P@42@01)
          (inv@47@01 (Seq_index hist@40@01 k@66@01))))
      $Perm.Write
      $Perm.No)
    (ite
      (and
        (img@53@01 (Seq_index hist@40@01 k@66@01))
        (and
          (Seq_contains
            (Seq_range 0 (* M@38@01 step@39@01))
            (inv@52@01 (Seq_index hist@40@01 k@66@01)))
          (< (mod (inv@52@01 (Seq_index hist@40@01 k@66@01)) step@39@01) N@37@01)))
      (/ (to_real 1) (to_real 4))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] count_square(0, 0, N, step, 0, M * step, matrix, k)
; [eval] M * step
(push) ; 6
; [eval] 0 <= lo
; [eval] lo <= hi
(push) ; 7
(assert (not (<= 0 N@37@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 N@37@01))
; [eval] hi <= step
; [eval] step > 0
(push) ; 7
(assert (not (> step@39@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (> step@39@01 0))
; [eval] 0 <= min
; [eval] min <= i
; [eval] i <= max
(push) ; 7
(assert (not (<= 0 (* M@38@01 step@39@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (* M@38@01 step@39@01)))
; [eval] max <= |ar|
; [eval] |ar|
; [eval] (forall k: Int, j: Int ::k >= 0 && (k < |ar| && (j >= 0 && (j < |ar| && k != j))) ==> ar[k] != ar[j])
(declare-const k@69@01 Int)
(declare-const j@70@01 Int)
(push) ; 7
; [eval] k >= 0 && (k < |ar| && (j >= 0 && (j < |ar| && k != j))) ==> ar[k] != ar[j]
; [eval] k >= 0 && (k < |ar| && (j >= 0 && (j < |ar| && k != j)))
; [eval] k >= 0
(push) ; 8
; [then-branch: 26 | !(k@69@01 >= 0) | live]
; [else-branch: 26 | k@69@01 >= 0 | live]
(push) ; 9
; [then-branch: 26 | !(k@69@01 >= 0)]
(assert (not (>= k@69@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 26 | k@69@01 >= 0]
(assert (>= k@69@01 0))
; [eval] k < |ar|
; [eval] |ar|
(push) ; 10
; [then-branch: 27 | !(k@69@01 < |matrix@41@01|) | live]
; [else-branch: 27 | k@69@01 < |matrix@41@01| | live]
(push) ; 11
; [then-branch: 27 | !(k@69@01 < |matrix@41@01|)]
(assert (not (< k@69@01 (Seq_length matrix@41@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 27 | k@69@01 < |matrix@41@01|]
(assert (< k@69@01 (Seq_length matrix@41@01)))
; [eval] j >= 0
(push) ; 12
; [then-branch: 28 | !(j@70@01 >= 0) | live]
; [else-branch: 28 | j@70@01 >= 0 | live]
(push) ; 13
; [then-branch: 28 | !(j@70@01 >= 0)]
(assert (not (>= j@70@01 0)))
(pop) ; 13
(push) ; 13
; [else-branch: 28 | j@70@01 >= 0]
(assert (>= j@70@01 0))
; [eval] j < |ar|
; [eval] |ar|
(push) ; 14
; [then-branch: 29 | !(j@70@01 < |matrix@41@01|) | live]
; [else-branch: 29 | j@70@01 < |matrix@41@01| | live]
(push) ; 15
; [then-branch: 29 | !(j@70@01 < |matrix@41@01|)]
(assert (not (< j@70@01 (Seq_length matrix@41@01))))
(pop) ; 15
(push) ; 15
; [else-branch: 29 | j@70@01 < |matrix@41@01|]
(assert (< j@70@01 (Seq_length matrix@41@01)))
; [eval] k != j
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or
  (< j@70@01 (Seq_length matrix@41@01))
  (not (< j@70@01 (Seq_length matrix@41@01)))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@70@01 0)
  (and
    (>= j@70@01 0)
    (or
      (< j@70@01 (Seq_length matrix@41@01))
      (not (< j@70@01 (Seq_length matrix@41@01)))))))
(assert (or (>= j@70@01 0) (not (>= j@70@01 0))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@69@01 (Seq_length matrix@41@01))
  (and
    (< k@69@01 (Seq_length matrix@41@01))
    (=>
      (>= j@70@01 0)
      (and
        (>= j@70@01 0)
        (or
          (< j@70@01 (Seq_length matrix@41@01))
          (not (< j@70@01 (Seq_length matrix@41@01))))))
    (or (>= j@70@01 0) (not (>= j@70@01 0))))))
(assert (or
  (< k@69@01 (Seq_length matrix@41@01))
  (not (< k@69@01 (Seq_length matrix@41@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@69@01 0)
  (and
    (>= k@69@01 0)
    (=>
      (< k@69@01 (Seq_length matrix@41@01))
      (and
        (< k@69@01 (Seq_length matrix@41@01))
        (=>
          (>= j@70@01 0)
          (and
            (>= j@70@01 0)
            (or
              (< j@70@01 (Seq_length matrix@41@01))
              (not (< j@70@01 (Seq_length matrix@41@01))))))
        (or (>= j@70@01 0) (not (>= j@70@01 0)))))
    (or
      (< k@69@01 (Seq_length matrix@41@01))
      (not (< k@69@01 (Seq_length matrix@41@01)))))))
(assert (or (>= k@69@01 0) (not (>= k@69@01 0))))
(push) ; 8
; [then-branch: 30 | k@69@01 >= 0 && k@69@01 < |matrix@41@01| && j@70@01 >= 0 && j@70@01 < |matrix@41@01| && k@69@01 != j@70@01 | live]
; [else-branch: 30 | !(k@69@01 >= 0 && k@69@01 < |matrix@41@01| && j@70@01 >= 0 && j@70@01 < |matrix@41@01| && k@69@01 != j@70@01) | live]
(push) ; 9
; [then-branch: 30 | k@69@01 >= 0 && k@69@01 < |matrix@41@01| && j@70@01 >= 0 && j@70@01 < |matrix@41@01| && k@69@01 != j@70@01]
(assert (and
  (>= k@69@01 0)
  (and
    (< k@69@01 (Seq_length matrix@41@01))
    (and
      (>= j@70@01 0)
      (and (< j@70@01 (Seq_length matrix@41@01)) (not (= k@69@01 j@70@01)))))))
; [eval] ar[k] != ar[j]
; [eval] ar[k]
; [eval] ar[j]
(pop) ; 9
(push) ; 9
; [else-branch: 30 | !(k@69@01 >= 0 && k@69@01 < |matrix@41@01| && j@70@01 >= 0 && j@70@01 < |matrix@41@01| && k@69@01 != j@70@01)]
(assert (not
  (and
    (>= k@69@01 0)
    (and
      (< k@69@01 (Seq_length matrix@41@01))
      (and
        (>= j@70@01 0)
        (and (< j@70@01 (Seq_length matrix@41@01)) (not (= k@69@01 j@70@01))))))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  (and
    (>= k@69@01 0)
    (and
      (< k@69@01 (Seq_length matrix@41@01))
      (and
        (>= j@70@01 0)
        (and (< j@70@01 (Seq_length matrix@41@01)) (not (= k@69@01 j@70@01))))))
  (and
    (>= k@69@01 0)
    (< k@69@01 (Seq_length matrix@41@01))
    (>= j@70@01 0)
    (< j@70@01 (Seq_length matrix@41@01))
    (not (= k@69@01 j@70@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@69@01 0)
      (and
        (< k@69@01 (Seq_length matrix@41@01))
        (and
          (>= j@70@01 0)
          (and (< j@70@01 (Seq_length matrix@41@01)) (not (= k@69@01 j@70@01)))))))
  (and
    (>= k@69@01 0)
    (and
      (< k@69@01 (Seq_length matrix@41@01))
      (and
        (>= j@70@01 0)
        (and (< j@70@01 (Seq_length matrix@41@01)) (not (= k@69@01 j@70@01))))))))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 7
(assert (not (forall ((k@69@01 Int) (j@70@01 Int)) (!
  (=>
    (and
      (>= k@69@01 0)
      (and
        (< k@69@01 (Seq_length matrix@41@01))
        (and
          (>= j@70@01 0)
          (and (< j@70@01 (Seq_length matrix@41@01)) (not (= k@69@01 j@70@01))))))
    (not (= (Seq_index matrix@41@01 k@69@01) (Seq_index matrix@41@01 j@70@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@38@12@38@106|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (forall ((k@69@01 Int) (j@70@01 Int)) (!
  (=>
    (and
      (>= k@69@01 0)
      (and
        (< k@69@01 (Seq_length matrix@41@01))
        (and
          (>= j@70@01 0)
          (and (< j@70@01 (Seq_length matrix@41@01)) (not (= k@69@01 j@70@01))))))
    (not (= (Seq_index matrix@41@01 k@69@01) (Seq_index matrix@41@01 j@70@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@38@12@38@106|)))
(declare-const k@71@01 Int)
(push) ; 7
; [eval] min <= k && (k < max && (lo <= k % step && k % step < hi))
; [eval] min <= k
(push) ; 8
; [then-branch: 31 | !(0 <= k@71@01) | live]
; [else-branch: 31 | 0 <= k@71@01 | live]
(push) ; 9
; [then-branch: 31 | !(0 <= k@71@01)]
(assert (not (<= 0 k@71@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 31 | 0 <= k@71@01]
(assert (<= 0 k@71@01))
; [eval] k < max
(push) ; 10
; [then-branch: 32 | !(k@71@01 < M@38@01 * step@39@01) | live]
; [else-branch: 32 | k@71@01 < M@38@01 * step@39@01 | live]
(push) ; 11
; [then-branch: 32 | !(k@71@01 < M@38@01 * step@39@01)]
(assert (not (< k@71@01 (* M@38@01 step@39@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 32 | k@71@01 < M@38@01 * step@39@01]
(assert (< k@71@01 (* M@38@01 step@39@01)))
; [eval] lo <= k % step
; [eval] k % step
(push) ; 12
(assert (not (not (= step@39@01 0))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(push) ; 12
; [then-branch: 33 | !(0 <= k@71@01 % step@39@01) | live]
; [else-branch: 33 | 0 <= k@71@01 % step@39@01 | live]
(push) ; 13
; [then-branch: 33 | !(0 <= k@71@01 % step@39@01)]
(assert (not (<= 0 (mod k@71@01 step@39@01))))
(pop) ; 13
(push) ; 13
; [else-branch: 33 | 0 <= k@71@01 % step@39@01]
(assert (<= 0 (mod k@71@01 step@39@01)))
; [eval] k % step < hi
; [eval] k % step
(push) ; 14
(assert (not (not (= step@39@01 0))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 (mod k@71@01 step@39@01)) (not (<= 0 (mod k@71@01 step@39@01)))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@71@01 (* M@38@01 step@39@01))
  (and
    (< k@71@01 (* M@38@01 step@39@01))
    (or (<= 0 (mod k@71@01 step@39@01)) (not (<= 0 (mod k@71@01 step@39@01)))))))
(assert (or (< k@71@01 (* M@38@01 step@39@01)) (not (< k@71@01 (* M@38@01 step@39@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@71@01)
  (and
    (<= 0 k@71@01)
    (=>
      (< k@71@01 (* M@38@01 step@39@01))
      (and
        (< k@71@01 (* M@38@01 step@39@01))
        (or
          (<= 0 (mod k@71@01 step@39@01))
          (not (<= 0 (mod k@71@01 step@39@01))))))
    (or
      (< k@71@01 (* M@38@01 step@39@01))
      (not (< k@71@01 (* M@38@01 step@39@01)))))))
(assert (or (<= 0 k@71@01) (not (<= 0 k@71@01))))
(assert (and
  (<= 0 k@71@01)
  (and
    (< k@71@01 (* M@38@01 step@39@01))
    (and (<= 0 (mod k@71@01 step@39@01)) (< (mod k@71@01 step@39@01) N@37@01)))))
(declare-const $k@72@01 $Perm)
(assert ($Perm.isReadVar $k@72@01))
; [eval] ar[k]
(push) ; 8
(assert (not (>= k@71@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (< k@71@01 (Seq_length matrix@41@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(declare-fun inv@73@01 ($Ref) Int)
(declare-fun img@74@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@72@01))
; Nested auxiliary terms: non-globals
(assert (forall ((k@71@01 Int)) (!
  (=>
    (and
      (<= 0 k@71@01)
      (and
        (< k@71@01 (* M@38@01 step@39@01))
        (and
          (<= 0 (mod k@71@01 step@39@01))
          (< (mod k@71@01 step@39@01) N@37@01))))
    (and
      (=>
        (<= 0 k@71@01)
        (and
          (<= 0 k@71@01)
          (=>
            (< k@71@01 (* M@38@01 step@39@01))
            (and
              (< k@71@01 (* M@38@01 step@39@01))
              (or
                (<= 0 (mod k@71@01 step@39@01))
                (not (<= 0 (mod k@71@01 step@39@01))))))
          (or
            (< k@71@01 (* M@38@01 step@39@01))
            (not (< k@71@01 (* M@38@01 step@39@01))))))
      (or (<= 0 k@71@01) (not (<= 0 k@71@01)))))
  :pattern ((Seq_index matrix@41@01 k@71@01))
  :qid |Ref__Integer_value-aux|)))
(push) ; 7
(assert (not (forall ((k@71@01 Int)) (!
  (=>
    (and
      (<= 0 k@71@01)
      (and
        (< k@71@01 (* M@38@01 step@39@01))
        (and
          (<= 0 (mod k@71@01 step@39@01))
          (< (mod k@71@01 step@39@01) N@37@01))))
    (or (= $k@72@01 $Perm.No) (< $Perm.No $k@72@01)))
  
  :qid |quant-u-8568|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((k1@71@01 Int) (k2@71@01 Int)) (!
  (=>
    (and
      (and
        (and
          (<= 0 k1@71@01)
          (and
            (< k1@71@01 (* M@38@01 step@39@01))
            (and
              (<= 0 (mod k1@71@01 step@39@01))
              (< (mod k1@71@01 step@39@01) N@37@01))))
        (< $Perm.No $k@72@01))
      (and
        (and
          (<= 0 k2@71@01)
          (and
            (< k2@71@01 (* M@38@01 step@39@01))
            (and
              (<= 0 (mod k2@71@01 step@39@01))
              (< (mod k2@71@01 step@39@01) N@37@01))))
        (< $Perm.No $k@72@01))
      (= (Seq_index matrix@41@01 k1@71@01) (Seq_index matrix@41@01 k2@71@01)))
    (= k1@71@01 k2@71@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@71@01 Int)) (!
  (=>
    (and
      (and
        (<= 0 k@71@01)
        (and
          (< k@71@01 (* M@38@01 step@39@01))
          (and
            (<= 0 (mod k@71@01 step@39@01))
            (< (mod k@71@01 step@39@01) N@37@01))))
      (< $Perm.No $k@72@01))
    (and
      (= (inv@73@01 (Seq_index matrix@41@01 k@71@01)) k@71@01)
      (img@74@01 (Seq_index matrix@41@01 k@71@01))))
  :pattern ((Seq_index matrix@41@01 k@71@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@01 r)
      (and
        (and
          (<= 0 (inv@73@01 r))
          (and
            (< (inv@73@01 r) (* M@38@01 step@39@01))
            (and
              (<= 0 (mod (inv@73@01 r) step@39@01))
              (< (mod (inv@73@01 r) step@39@01) N@37@01))))
        (< $Perm.No $k@72@01)))
    (= (Seq_index matrix@41@01 (inv@73@01 r)) r))
  :pattern ((inv@73@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((k@71@01 Int)) (!
  (= (Seq_index matrix@41@01 k@71@01) (Seq_index hist@40@01 k@71@01))
  
  :qid |quant-u-8569|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@73@01 r))
          (and
            (< (inv@73@01 r) (* M@38@01 step@39@01))
            (and
              (<= 0 (mod (inv@73@01 r) step@39@01))
              (< (mod (inv@73@01 r) step@39@01) N@37@01))))
        (img@74@01 r)
        (= r (Seq_index matrix@41@01 (inv@73@01 r))))
      (> $k@72@01 $Perm.No))
    (>
      (+
        (ite
          (and
            (img@62@01 r)
            (and
              (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) (inv@61@01 r))
              (< (mod (inv@61@01 r) step@39@01) N@37@01)))
          (/ (to_real 1) (to_real 4))
          $Perm.No)
        (ite
          (and (img@65@01 r) (Seq_contains (Seq_range 0 P@42@01) (inv@64@01 r)))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-8570|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@75@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@75@01  $FVF<Ref__Integer_value>)))
      (and
        (and
          (<= 0 (inv@73@01 r))
          (and
            (< (inv@73@01 r) (* M@38@01 step@39@01))
            (and
              (<= 0 (mod (inv@73@01 r) step@39@01))
              (< (mod (inv@73@01 r) step@39@01) N@37@01))))
        (< $Perm.No $k@72@01)
        (img@74@01 r)))
    (=>
      (and
        (and
          (<= 0 (inv@73@01 r))
          (and
            (< (inv@73@01 r) (* M@38@01 step@39@01))
            (and
              (<= 0 (mod (inv@73@01 r) step@39@01))
              (< (mod (inv@73@01 r) step@39@01) N@37@01))))
        (< $Perm.No $k@72@01)
        (img@74@01 r))
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@75@01  $FVF<Ref__Integer_value>)))))
  :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (as sm@75@01  $FVF<Ref__Integer_value>))))
  :qid |qp.fvfDomDef8|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@73@01 r))
          (and
            (< (inv@73@01 r) (* M@38@01 step@39@01))
            (and
              (<= 0 (mod (inv@73@01 r) step@39@01))
              (< (mod (inv@73@01 r) step@39@01) N@37@01))))
        (< $Perm.No $k@72@01)
        (img@74@01 r))
      (and
        (img@62@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) (inv@61@01 r))
          (< (mod (inv@61@01 r) step@39@01) N@37@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@75@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@75@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01))))))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@73@01 r))
          (and
            (< (inv@73@01 r) (* M@38@01 step@39@01))
            (and
              (<= 0 (mod (inv@73@01 r) step@39@01))
              (< (mod (inv@73@01 r) step@39@01) N@37@01))))
        (< $Perm.No $k@72@01)
        (img@74@01 r))
      (and (img@65@01 r) (Seq_contains (Seq_range 0 P@42@01) (inv@64@01 r))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@75@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@75@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01)))))))) r))
  :qid |qp.fvfValDef7|)))
(assert (count_square%precondition ($Snap.combine
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
                  ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@75@01  $FVF<Ref__Integer_value>))))))))))) 0 0 N@37@01 step@39@01 0 (*
  M@38@01
  step@39@01) matrix@41@01 k@66@01))
(pop) ; 6
; Joined path conditions
(assert ($Perm.isReadVar $k@72@01))
(assert (forall ((k@71@01 Int)) (!
  (=>
    (and
      (and
        (<= 0 k@71@01)
        (and
          (< k@71@01 (* M@38@01 step@39@01))
          (and
            (<= 0 (mod k@71@01 step@39@01))
            (< (mod k@71@01 step@39@01) N@37@01))))
      (< $Perm.No $k@72@01))
    (and
      (= (inv@73@01 (Seq_index matrix@41@01 k@71@01)) k@71@01)
      (img@74@01 (Seq_index matrix@41@01 k@71@01))))
  :pattern ((Seq_index matrix@41@01 k@71@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@01 r)
      (and
        (and
          (<= 0 (inv@73@01 r))
          (and
            (< (inv@73@01 r) (* M@38@01 step@39@01))
            (and
              (<= 0 (mod (inv@73@01 r) step@39@01))
              (< (mod (inv@73@01 r) step@39@01) N@37@01))))
        (< $Perm.No $k@72@01)))
    (= (Seq_index matrix@41@01 (inv@73@01 r)) r))
  :pattern ((inv@73@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@75@01  $FVF<Ref__Integer_value>)))
      (and
        (and
          (<= 0 (inv@73@01 r))
          (and
            (< (inv@73@01 r) (* M@38@01 step@39@01))
            (and
              (<= 0 (mod (inv@73@01 r) step@39@01))
              (< (mod (inv@73@01 r) step@39@01) N@37@01))))
        (< $Perm.No $k@72@01)
        (img@74@01 r)))
    (=>
      (and
        (and
          (<= 0 (inv@73@01 r))
          (and
            (< (inv@73@01 r) (* M@38@01 step@39@01))
            (and
              (<= 0 (mod (inv@73@01 r) step@39@01))
              (< (mod (inv@73@01 r) step@39@01) N@37@01))))
        (< $Perm.No $k@72@01)
        (img@74@01 r))
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@75@01  $FVF<Ref__Integer_value>)))))
  :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (as sm@75@01  $FVF<Ref__Integer_value>))))
  :qid |qp.fvfDomDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@73@01 r))
          (and
            (< (inv@73@01 r) (* M@38@01 step@39@01))
            (and
              (<= 0 (mod (inv@73@01 r) step@39@01))
              (< (mod (inv@73@01 r) step@39@01) N@37@01))))
        (< $Perm.No $k@72@01)
        (img@74@01 r))
      (and
        (img@62@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) (inv@61@01 r))
          (< (mod (inv@61@01 r) step@39@01) N@37@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@75@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@75@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01))))))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@73@01 r))
          (and
            (< (inv@73@01 r) (* M@38@01 step@39@01))
            (and
              (<= 0 (mod (inv@73@01 r) step@39@01))
              (< (mod (inv@73@01 r) step@39@01) N@37@01))))
        (< $Perm.No $k@72@01)
        (img@74@01 r))
      (and (img@65@01 r) (Seq_contains (Seq_range 0 P@42@01) (inv@64@01 r))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@75@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@75@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01)))))))) r))
  :qid |qp.fvfValDef7|)))
(assert (and
  (<= 0 N@37@01)
  (> step@39@01 0)
  (<= 0 (* M@38@01 step@39@01))
  (forall ((k@69@01 Int) (j@70@01 Int)) (!
    (=>
      (and
        (>= k@69@01 0)
        (and
          (< k@69@01 (Seq_length matrix@41@01))
          (and
            (>= j@70@01 0)
            (and (< j@70@01 (Seq_length matrix@41@01)) (not (= k@69@01 j@70@01))))))
      (not (= (Seq_index matrix@41@01 k@69@01) (Seq_index matrix@41@01 j@70@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@38@12@38@106|))
  (forall ((k@71@01 Int)) (!
    (=>
      (and
        (<= 0 k@71@01)
        (and
          (< k@71@01 (* M@38@01 step@39@01))
          (and
            (<= 0 (mod k@71@01 step@39@01))
            (< (mod k@71@01 step@39@01) N@37@01))))
      (and
        (=>
          (<= 0 k@71@01)
          (and
            (<= 0 k@71@01)
            (=>
              (< k@71@01 (* M@38@01 step@39@01))
              (and
                (< k@71@01 (* M@38@01 step@39@01))
                (or
                  (<= 0 (mod k@71@01 step@39@01))
                  (not (<= 0 (mod k@71@01 step@39@01))))))
            (or
              (< k@71@01 (* M@38@01 step@39@01))
              (not (< k@71@01 (* M@38@01 step@39@01))))))
        (or (<= 0 k@71@01) (not (<= 0 k@71@01)))))
    :pattern ((Seq_index matrix@41@01 k@71@01))
    :qid |Ref__Integer_value-aux|))
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
                    ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@75@01  $FVF<Ref__Integer_value>))))))))))) 0 0 N@37@01 step@39@01 0 (*
    M@38@01
    step@39@01) matrix@41@01 k@66@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 25 | !(k@66@01 in [0..P@42@01])]
(assert (not (Seq_contains (Seq_range 0 P@42@01) k@66@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@62@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) (inv@61@01 r))
        (< (mod (inv@61@01 r) step@39@01) N@37@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@67@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@67@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01))))))) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@65@01 r) (Seq_contains (Seq_range 0 P@42@01) (inv@64@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@67@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@67@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01)))))))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@68@01  $FPM) r)
    (+
      (ite
        (and
          (img@62@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) (inv@61@01 r))
            (< (mod (inv@61@01 r) step@39@01) N@37@01)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (ite
        (and (img@65@01 r) (Seq_contains (Seq_range 0 P@42@01) (inv@64@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@68@01  $FPM) r))
  :qid |qp.resPrmSumDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@48@01 r) (Seq_contains (Seq_range 0 P@42@01) (inv@47@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@53@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) (inv@52@01 r))
        (< (mod (inv@52@01 r) step@39@01) N@37@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))))))) r))
  :qid |qp.fvfValDef1|)))
(assert ($Perm.isReadVar $k@72@01))
(assert (forall ((k@71@01 Int)) (!
  (=>
    (and
      (and
        (<= 0 k@71@01)
        (and
          (< k@71@01 (* M@38@01 step@39@01))
          (and
            (<= 0 (mod k@71@01 step@39@01))
            (< (mod k@71@01 step@39@01) N@37@01))))
      (< $Perm.No $k@72@01))
    (and
      (= (inv@73@01 (Seq_index matrix@41@01 k@71@01)) k@71@01)
      (img@74@01 (Seq_index matrix@41@01 k@71@01))))
  :pattern ((Seq_index matrix@41@01 k@71@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@01 r)
      (and
        (and
          (<= 0 (inv@73@01 r))
          (and
            (< (inv@73@01 r) (* M@38@01 step@39@01))
            (and
              (<= 0 (mod (inv@73@01 r) step@39@01))
              (< (mod (inv@73@01 r) step@39@01) N@37@01))))
        (< $Perm.No $k@72@01)))
    (= (Seq_index matrix@41@01 (inv@73@01 r)) r))
  :pattern ((inv@73@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@75@01  $FVF<Ref__Integer_value>)))
      (and
        (and
          (<= 0 (inv@73@01 r))
          (and
            (< (inv@73@01 r) (* M@38@01 step@39@01))
            (and
              (<= 0 (mod (inv@73@01 r) step@39@01))
              (< (mod (inv@73@01 r) step@39@01) N@37@01))))
        (< $Perm.No $k@72@01)
        (img@74@01 r)))
    (=>
      (and
        (and
          (<= 0 (inv@73@01 r))
          (and
            (< (inv@73@01 r) (* M@38@01 step@39@01))
            (and
              (<= 0 (mod (inv@73@01 r) step@39@01))
              (< (mod (inv@73@01 r) step@39@01) N@37@01))))
        (< $Perm.No $k@72@01)
        (img@74@01 r))
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@75@01  $FVF<Ref__Integer_value>)))))
  :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (as sm@75@01  $FVF<Ref__Integer_value>))))
  :qid |qp.fvfDomDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@73@01 r))
          (and
            (< (inv@73@01 r) (* M@38@01 step@39@01))
            (and
              (<= 0 (mod (inv@73@01 r) step@39@01))
              (< (mod (inv@73@01 r) step@39@01) N@37@01))))
        (< $Perm.No $k@72@01)
        (img@74@01 r))
      (and
        (img@62@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) (inv@61@01 r))
          (< (mod (inv@61@01 r) step@39@01) N@37@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@75@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@75@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01))))))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@73@01 r))
          (and
            (< (inv@73@01 r) (* M@38@01 step@39@01))
            (and
              (<= 0 (mod (inv@73@01 r) step@39@01))
              (< (mod (inv@73@01 r) step@39@01) N@37@01))))
        (< $Perm.No $k@72@01)
        (img@74@01 r))
      (and (img@65@01 r) (Seq_contains (Seq_range 0 P@42@01) (inv@64@01 r))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@75@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@75@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01)))))))) r))
  :qid |qp.fvfValDef7|)))
(assert (=>
  (Seq_contains (Seq_range 0 P@42@01) k@66@01)
  (and
    (Seq_contains (Seq_range 0 P@42@01) k@66@01)
    (<= 0 N@37@01)
    (> step@39@01 0)
    (<= 0 (* M@38@01 step@39@01))
    (forall ((k@69@01 Int) (j@70@01 Int)) (!
      (=>
        (and
          (>= k@69@01 0)
          (and
            (< k@69@01 (Seq_length matrix@41@01))
            (and
              (>= j@70@01 0)
              (and
                (< j@70@01 (Seq_length matrix@41@01))
                (not (= k@69@01 j@70@01))))))
        (not
          (= (Seq_index matrix@41@01 k@69@01) (Seq_index matrix@41@01 j@70@01))))
      
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@38@12@38@106|))
    (forall ((k@71@01 Int)) (!
      (=>
        (and
          (<= 0 k@71@01)
          (and
            (< k@71@01 (* M@38@01 step@39@01))
            (and
              (<= 0 (mod k@71@01 step@39@01))
              (< (mod k@71@01 step@39@01) N@37@01))))
        (and
          (=>
            (<= 0 k@71@01)
            (and
              (<= 0 k@71@01)
              (=>
                (< k@71@01 (* M@38@01 step@39@01))
                (and
                  (< k@71@01 (* M@38@01 step@39@01))
                  (or
                    (<= 0 (mod k@71@01 step@39@01))
                    (not (<= 0 (mod k@71@01 step@39@01))))))
              (or
                (< k@71@01 (* M@38@01 step@39@01))
                (not (< k@71@01 (* M@38@01 step@39@01))))))
          (or (<= 0 k@71@01) (not (<= 0 k@71@01)))))
      :pattern ((Seq_index matrix@41@01 k@71@01))
      :qid |Ref__Integer_value-aux|))
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
                      ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@75@01  $FVF<Ref__Integer_value>))))))))))) 0 0 N@37@01 step@39@01 0 (*
      M@38@01
      step@39@01) matrix@41@01 k@66@01))))
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range 0 P@42@01) k@66@01))
  (Seq_contains (Seq_range 0 P@42@01) k@66@01)))
; [eval] old(hist[k])
; [eval] hist[k]
(push) ; 4
(assert (not (>= k@66@01 0)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@62@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) (inv@61@01 r))
        (< (mod (inv@61@01 r) step@39@01) N@37@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@67@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@67@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01))))))) r))
  :qid |qp.fvfValDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@65@01 r) (Seq_contains (Seq_range 0 P@42@01) (inv@64@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@67@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@67@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01)))))))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@68@01  $FPM) r)
    (+
      (ite
        (and
          (img@62@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) (inv@61@01 r))
            (< (mod (inv@61@01 r) step@39@01) N@37@01)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (ite
        (and (img@65@01 r) (Seq_contains (Seq_range 0 P@42@01) (inv@64@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@68@01  $FPM) r))
  :qid |qp.resPrmSumDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@48@01 r) (Seq_contains (Seq_range 0 P@42@01) (inv@47@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@53@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) (inv@52@01 r))
        (< (mod (inv@52@01 r) step@39@01) N@37@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))))))) r))
  :qid |qp.fvfValDef1|)))
(assert ($Perm.isReadVar $k@72@01))
(assert (forall ((k@71@01 Int)) (!
  (=>
    (and
      (and
        (<= 0 k@71@01)
        (and
          (< k@71@01 (* M@38@01 step@39@01))
          (and
            (<= 0 (mod k@71@01 step@39@01))
            (< (mod k@71@01 step@39@01) N@37@01))))
      (< $Perm.No $k@72@01))
    (and
      (= (inv@73@01 (Seq_index matrix@41@01 k@71@01)) k@71@01)
      (img@74@01 (Seq_index matrix@41@01 k@71@01))))
  :pattern ((Seq_index matrix@41@01 k@71@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@01 r)
      (and
        (and
          (<= 0 (inv@73@01 r))
          (and
            (< (inv@73@01 r) (* M@38@01 step@39@01))
            (and
              (<= 0 (mod (inv@73@01 r) step@39@01))
              (< (mod (inv@73@01 r) step@39@01) N@37@01))))
        (< $Perm.No $k@72@01)))
    (= (Seq_index matrix@41@01 (inv@73@01 r)) r))
  :pattern ((inv@73@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@75@01  $FVF<Ref__Integer_value>)))
      (and
        (and
          (<= 0 (inv@73@01 r))
          (and
            (< (inv@73@01 r) (* M@38@01 step@39@01))
            (and
              (<= 0 (mod (inv@73@01 r) step@39@01))
              (< (mod (inv@73@01 r) step@39@01) N@37@01))))
        (< $Perm.No $k@72@01)
        (img@74@01 r)))
    (=>
      (and
        (and
          (<= 0 (inv@73@01 r))
          (and
            (< (inv@73@01 r) (* M@38@01 step@39@01))
            (and
              (<= 0 (mod (inv@73@01 r) step@39@01))
              (< (mod (inv@73@01 r) step@39@01) N@37@01))))
        (< $Perm.No $k@72@01)
        (img@74@01 r))
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@75@01  $FVF<Ref__Integer_value>)))))
  :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (as sm@75@01  $FVF<Ref__Integer_value>))))
  :qid |qp.fvfDomDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@73@01 r))
          (and
            (< (inv@73@01 r) (* M@38@01 step@39@01))
            (and
              (<= 0 (mod (inv@73@01 r) step@39@01))
              (< (mod (inv@73@01 r) step@39@01) N@37@01))))
        (< $Perm.No $k@72@01)
        (img@74@01 r))
      (and
        (img@62@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) (inv@61@01 r))
          (< (mod (inv@61@01 r) step@39@01) N@37@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@75@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@75@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01))))))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@73@01 r))
          (and
            (< (inv@73@01 r) (* M@38@01 step@39@01))
            (and
              (<= 0 (mod (inv@73@01 r) step@39@01))
              (< (mod (inv@73@01 r) step@39@01) N@37@01))))
        (< $Perm.No $k@72@01)
        (img@74@01 r))
      (and (img@65@01 r) (Seq_contains (Seq_range 0 P@42@01) (inv@64@01 r))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@75@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@75@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01)))))))) r))
  :qid |qp.fvfValDef7|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@66@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 P@42@01) k@66@01)
      (and
        (Seq_contains (Seq_range 0 P@42@01) k@66@01)
        (<= 0 N@37@01)
        (> step@39@01 0)
        (<= 0 (* M@38@01 step@39@01))
        (forall ((k@69@01 Int) (j@70@01 Int)) (!
          (=>
            (and
              (>= k@69@01 0)
              (and
                (< k@69@01 (Seq_length matrix@41@01))
                (and
                  (>= j@70@01 0)
                  (and
                    (< j@70@01 (Seq_length matrix@41@01))
                    (not (= k@69@01 j@70@01))))))
            (not
              (=
                (Seq_index matrix@41@01 k@69@01)
                (Seq_index matrix@41@01 j@70@01))))
          
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@38@12@38@106|))
        (forall ((k@71@01 Int)) (!
          (=>
            (and
              (<= 0 k@71@01)
              (and
                (< k@71@01 (* M@38@01 step@39@01))
                (and
                  (<= 0 (mod k@71@01 step@39@01))
                  (< (mod k@71@01 step@39@01) N@37@01))))
            (and
              (=>
                (<= 0 k@71@01)
                (and
                  (<= 0 k@71@01)
                  (=>
                    (< k@71@01 (* M@38@01 step@39@01))
                    (and
                      (< k@71@01 (* M@38@01 step@39@01))
                      (or
                        (<= 0 (mod k@71@01 step@39@01))
                        (not (<= 0 (mod k@71@01 step@39@01))))))
                  (or
                    (< k@71@01 (* M@38@01 step@39@01))
                    (not (< k@71@01 (* M@38@01 step@39@01))))))
              (or (<= 0 k@71@01) (not (<= 0 k@71@01)))))
          :pattern ((Seq_index matrix@41@01 k@71@01))
          :qid |Ref__Integer_value-aux|))
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
                          ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@75@01  $FVF<Ref__Integer_value>))))))))))) 0 0 N@37@01 step@39@01 0 (*
          M@38@01
          step@39@01) matrix@41@01 k@66@01)))
    (or
      (not (Seq_contains (Seq_range 0 P@42@01) k@66@01))
      (Seq_contains (Seq_range 0 P@42@01) k@66@01)))
  :pattern ((Seq_contains (Seq_range 0 P@42@01) k@66@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 P@42@01) k@66@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@101@12@101@164-aux|)))
(assert (forall ((k@66@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 P@42@01) k@66@01)
      (and
        (Seq_contains (Seq_range 0 P@42@01) k@66@01)
        (<= 0 N@37@01)
        (> step@39@01 0)
        (<= 0 (* M@38@01 step@39@01))
        (forall ((k@69@01 Int) (j@70@01 Int)) (!
          (=>
            (and
              (>= k@69@01 0)
              (and
                (< k@69@01 (Seq_length matrix@41@01))
                (and
                  (>= j@70@01 0)
                  (and
                    (< j@70@01 (Seq_length matrix@41@01))
                    (not (= k@69@01 j@70@01))))))
            (not
              (=
                (Seq_index matrix@41@01 k@69@01)
                (Seq_index matrix@41@01 j@70@01))))
          
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@38@12@38@106|))
        (forall ((k@71@01 Int)) (!
          (=>
            (and
              (<= 0 k@71@01)
              (and
                (< k@71@01 (* M@38@01 step@39@01))
                (and
                  (<= 0 (mod k@71@01 step@39@01))
                  (< (mod k@71@01 step@39@01) N@37@01))))
            (and
              (=>
                (<= 0 k@71@01)
                (and
                  (<= 0 k@71@01)
                  (=>
                    (< k@71@01 (* M@38@01 step@39@01))
                    (and
                      (< k@71@01 (* M@38@01 step@39@01))
                      (or
                        (<= 0 (mod k@71@01 step@39@01))
                        (not (<= 0 (mod k@71@01 step@39@01))))))
                  (or
                    (< k@71@01 (* M@38@01 step@39@01))
                    (not (< k@71@01 (* M@38@01 step@39@01))))))
              (or (<= 0 k@71@01) (not (<= 0 k@71@01)))))
          :pattern ((Seq_index matrix@41@01 k@71@01))
          :qid |Ref__Integer_value-aux|))
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
                          ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@75@01  $FVF<Ref__Integer_value>))))))))))) 0 0 N@37@01 step@39@01 0 (*
          M@38@01
          step@39@01) matrix@41@01 k@66@01)))
    (or
      (not (Seq_contains (Seq_range 0 P@42@01) k@66@01))
      (Seq_contains (Seq_range 0 P@42@01) k@66@01)))
  :pattern ((Seq_contains_trigger (Seq_range 0 P@42@01) k@66@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@101@12@101@164-aux|)))
(assert (forall ((k@66@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 P@42@01) k@66@01)
      (and
        (Seq_contains (Seq_range 0 P@42@01) k@66@01)
        (<= 0 N@37@01)
        (> step@39@01 0)
        (<= 0 (* M@38@01 step@39@01))
        (forall ((k@69@01 Int) (j@70@01 Int)) (!
          (=>
            (and
              (>= k@69@01 0)
              (and
                (< k@69@01 (Seq_length matrix@41@01))
                (and
                  (>= j@70@01 0)
                  (and
                    (< j@70@01 (Seq_length matrix@41@01))
                    (not (= k@69@01 j@70@01))))))
            (not
              (=
                (Seq_index matrix@41@01 k@69@01)
                (Seq_index matrix@41@01 j@70@01))))
          
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@38@12@38@106|))
        (forall ((k@71@01 Int)) (!
          (=>
            (and
              (<= 0 k@71@01)
              (and
                (< k@71@01 (* M@38@01 step@39@01))
                (and
                  (<= 0 (mod k@71@01 step@39@01))
                  (< (mod k@71@01 step@39@01) N@37@01))))
            (and
              (=>
                (<= 0 k@71@01)
                (and
                  (<= 0 k@71@01)
                  (=>
                    (< k@71@01 (* M@38@01 step@39@01))
                    (and
                      (< k@71@01 (* M@38@01 step@39@01))
                      (or
                        (<= 0 (mod k@71@01 step@39@01))
                        (not (<= 0 (mod k@71@01 step@39@01))))))
                  (or
                    (< k@71@01 (* M@38@01 step@39@01))
                    (not (< k@71@01 (* M@38@01 step@39@01))))))
              (or (<= 0 k@71@01) (not (<= 0 k@71@01)))))
          :pattern ((Seq_index matrix@41@01 k@71@01))
          :qid |Ref__Integer_value-aux|))
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
                          ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@75@01  $FVF<Ref__Integer_value>))))))))))) 0 0 N@37@01 step@39@01 0 (*
          M@38@01
          step@39@01) matrix@41@01 k@66@01)))
    (or
      (not (Seq_contains (Seq_range 0 P@42@01) k@66@01))
      (Seq_contains (Seq_range 0 P@42@01) k@66@01)))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@101@12@101@164-aux|)))
(assert (forall ((k@66@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 P@42@01) k@66@01)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@67@01  $FVF<Ref__Integer_value>) (Seq_index
        hist@40@01
        k@66@01))
      (+
        ($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) (Seq_index
          hist@40@01
          k@66@01))
        (count_square ($Snap.combine
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
                          ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@75@01  $FVF<Ref__Integer_value>))))))))))) 0 0 N@37@01 step@39@01 0 (*
          M@38@01
          step@39@01) matrix@41@01 k@66@01))))
  :pattern ((Seq_contains (Seq_range 0 P@42@01) k@66@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 P@42@01) k@66@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@101@12@101@164|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01)))))))))
  $Snap.unit))
; [eval] N <= step
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01)))))))))
  $Snap.unit))
; [eval] (forall k_fresh_rw_0: Int :: { old(matrix[k_fresh_rw_0]) } (k_fresh_rw_0 in [0..M * step)) && k_fresh_rw_0 % step < N ==> matrix[k_fresh_rw_0].Ref__Integer_value == old(matrix[k_fresh_rw_0].Ref__Integer_value))
(declare-const k_fresh_rw_0@76@01 Int)
(push) ; 3
; [eval] (k_fresh_rw_0 in [0..M * step)) && k_fresh_rw_0 % step < N ==> matrix[k_fresh_rw_0].Ref__Integer_value == old(matrix[k_fresh_rw_0].Ref__Integer_value)
; [eval] (k_fresh_rw_0 in [0..M * step)) && k_fresh_rw_0 % step < N
; [eval] (k_fresh_rw_0 in [0..M * step))
; [eval] [0..M * step)
; [eval] M * step
(push) ; 4
; [then-branch: 34 | !(k_fresh_rw_0@76@01 in [0..M@38@01 * step@39@01]) | live]
; [else-branch: 34 | k_fresh_rw_0@76@01 in [0..M@38@01 * step@39@01] | live]
(push) ; 5
; [then-branch: 34 | !(k_fresh_rw_0@76@01 in [0..M@38@01 * step@39@01])]
(assert (not (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) k_fresh_rw_0@76@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 34 | k_fresh_rw_0@76@01 in [0..M@38@01 * step@39@01]]
(assert (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) k_fresh_rw_0@76@01))
; [eval] k_fresh_rw_0 % step < N
; [eval] k_fresh_rw_0 % step
(push) ; 6
(assert (not (not (= step@39@01 0))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) k_fresh_rw_0@76@01)
  (not (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) k_fresh_rw_0@76@01))))
(push) ; 4
; [then-branch: 35 | k_fresh_rw_0@76@01 in [0..M@38@01 * step@39@01] && k_fresh_rw_0@76@01 % step@39@01 < N@37@01 | live]
; [else-branch: 35 | !(k_fresh_rw_0@76@01 in [0..M@38@01 * step@39@01] && k_fresh_rw_0@76@01 % step@39@01 < N@37@01) | live]
(push) ; 5
; [then-branch: 35 | k_fresh_rw_0@76@01 in [0..M@38@01 * step@39@01] && k_fresh_rw_0@76@01 % step@39@01 < N@37@01]
(assert (and
  (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) k_fresh_rw_0@76@01)
  (< (mod k_fresh_rw_0@76@01 step@39@01) N@37@01)))
; [eval] matrix[k_fresh_rw_0].Ref__Integer_value == old(matrix[k_fresh_rw_0].Ref__Integer_value)
; [eval] matrix[k_fresh_rw_0]
(push) ; 6
(assert (not (>= k_fresh_rw_0@76@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k_fresh_rw_0@76@01 (Seq_length matrix@41@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@77@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@62@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) (inv@61@01 r))
        (< (mod (inv@61@01 r) step@39@01) N@37@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@77@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@77@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01))))))) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@65@01 r) (Seq_contains (Seq_range 0 P@42@01) (inv@64@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@77@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@77@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01)))))))) r))
  :qid |qp.fvfValDef10|)))
(declare-const pm@78@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@78@01  $FPM) r)
    (+
      (ite
        (and
          (img@62@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) (inv@61@01 r))
            (< (mod (inv@61@01 r) step@39@01) N@37@01)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (ite
        (and (img@65@01 r) (Seq_contains (Seq_range 0 P@42@01) (inv@64@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@78@01  $FPM) r))
  :qid |qp.resPrmSumDef11|)))
(push) ; 6
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@78@01  $FPM) (Seq_index
    matrix@41@01
    k_fresh_rw_0@76@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] old(matrix[k_fresh_rw_0].Ref__Integer_value)
; [eval] matrix[k_fresh_rw_0]
(push) ; 6
(assert (not (>= k_fresh_rw_0@76@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k_fresh_rw_0@76@01 (Seq_length matrix@41@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@48@01 r) (Seq_contains (Seq_range 0 P@42@01) (inv@47@01 r)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))) r))
    :qid |qp.fvfValDef0|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@53@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) (inv@52@01 r))
          (< (mod (inv@52@01 r) step@39@01) N@37@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))))))) r))
    :qid |qp.fvfValDef1|))))
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@48@01 (Seq_index matrix@41@01 k_fresh_rw_0@76@01))
        (Seq_contains
          (Seq_range 0 P@42@01)
          (inv@47@01 (Seq_index matrix@41@01 k_fresh_rw_0@76@01))))
      $Perm.Write
      $Perm.No)
    (ite
      (and
        (img@53@01 (Seq_index matrix@41@01 k_fresh_rw_0@76@01))
        (and
          (Seq_contains
            (Seq_range 0 (* M@38@01 step@39@01))
            (inv@52@01 (Seq_index matrix@41@01 k_fresh_rw_0@76@01)))
          (<
            (mod
              (inv@52@01 (Seq_index matrix@41@01 k_fresh_rw_0@76@01))
              step@39@01)
            N@37@01)))
      (/ (to_real 1) (to_real 4))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 35 | !(k_fresh_rw_0@76@01 in [0..M@38@01 * step@39@01] && k_fresh_rw_0@76@01 % step@39@01 < N@37@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) k_fresh_rw_0@76@01)
    (< (mod k_fresh_rw_0@76@01 step@39@01) N@37@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@62@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) (inv@61@01 r))
        (< (mod (inv@61@01 r) step@39@01) N@37@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@77@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@77@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01))))))) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@65@01 r) (Seq_contains (Seq_range 0 P@42@01) (inv@64@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@77@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@77@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01)))))))) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@78@01  $FPM) r)
    (+
      (ite
        (and
          (img@62@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) (inv@61@01 r))
            (< (mod (inv@61@01 r) step@39@01) N@37@01)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (ite
        (and (img@65@01 r) (Seq_contains (Seq_range 0 P@42@01) (inv@64@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@78@01  $FPM) r))
  :qid |qp.resPrmSumDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@48@01 r) (Seq_contains (Seq_range 0 P@42@01) (inv@47@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@53@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) (inv@52@01 r))
        (< (mod (inv@52@01 r) step@39@01) N@37@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))))))) r))
  :qid |qp.fvfValDef1|)))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) k_fresh_rw_0@76@01)
      (< (mod k_fresh_rw_0@76@01 step@39@01) N@37@01)))
  (and
    (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) k_fresh_rw_0@76@01)
    (< (mod k_fresh_rw_0@76@01 step@39@01) N@37@01))))
; [eval] old(matrix[k_fresh_rw_0])
; [eval] matrix[k_fresh_rw_0]
(push) ; 4
(assert (not (>= k_fresh_rw_0@76@01 0)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@62@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) (inv@61@01 r))
        (< (mod (inv@61@01 r) step@39@01) N@37@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@77@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@77@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01))))))) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@65@01 r) (Seq_contains (Seq_range 0 P@42@01) (inv@64@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@77@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@77@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@59@01)))))))) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@78@01  $FPM) r)
    (+
      (ite
        (and
          (img@62@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) (inv@61@01 r))
            (< (mod (inv@61@01 r) step@39@01) N@37@01)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (ite
        (and (img@65@01 r) (Seq_contains (Seq_range 0 P@42@01) (inv@64@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@78@01  $FPM) r))
  :qid |qp.resPrmSumDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@48@01 r) (Seq_contains (Seq_range 0 P@42@01) (inv@47@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@53@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) (inv@52@01 r))
        (< (mod (inv@52@01 r) step@39@01) N@37@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@43@01))))))))))))) r))
  :qid |qp.fvfValDef1|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k_fresh_rw_0@76@01 Int)) (!
  (and
    (or
      (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) k_fresh_rw_0@76@01)
      (not
        (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) k_fresh_rw_0@76@01)))
    (or
      (not
        (and
          (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) k_fresh_rw_0@76@01)
          (< (mod k_fresh_rw_0@76@01 step@39@01) N@37@01)))
      (and
        (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) k_fresh_rw_0@76@01)
        (< (mod k_fresh_rw_0@76@01 step@39@01) N@37@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@102@27@102@209-aux|)))
(assert (forall ((k_fresh_rw_0@76@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (* M@38@01 step@39@01)) k_fresh_rw_0@76@01)
      (< (mod k_fresh_rw_0@76@01 step@39@01) N@37@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@77@01  $FVF<Ref__Integer_value>) (Seq_index
        matrix@41@01
        k_fresh_rw_0@76@01))
      ($FVF.lookup_Ref__Integer_value (as sm@55@01  $FVF<Ref__Integer_value>) (Seq_index
        matrix@41@01
        k_fresh_rw_0@76@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@102@27@102@209|)))
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- Ref__loop_body_113 ----------
(declare-const diz@79@01 $Ref)
(declare-const step@80@01 Int)
(declare-const j@81@01 Int)
(declare-const i@82@01 Int)
(declare-const P@83@01 Int)
(declare-const N@84@01 Int)
(declare-const M@85@01 Int)
(declare-const hist@86@01 Seq<$Ref>)
(declare-const matrix@87@01 Seq<$Ref>)
(declare-const diz@88@01 $Ref)
(declare-const step@89@01 Int)
(declare-const j@90@01 Int)
(declare-const i@91@01 Int)
(declare-const P@92@01 Int)
(declare-const N@93@01 Int)
(declare-const M@94@01 Int)
(declare-const hist@95@01 Seq<$Ref>)
(declare-const matrix@96@01 Seq<$Ref>)
(push) ; 1
(declare-const $t@97@01 $Snap)
(assert (= $t@97@01 ($Snap.combine ($Snap.first $t@97@01) ($Snap.second $t@97@01))))
(assert (= ($Snap.first $t@97@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@88@01 $Ref.null)))
(assert (=
  ($Snap.second $t@97@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@97@01))
    ($Snap.second ($Snap.second $t@97@01)))))
(assert (= ($Snap.first ($Snap.second $t@97@01)) $Snap.unit))
; [eval] M > 0
(assert (> M@94@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@97@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@97@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@97@01))) $Snap.unit))
; [eval] N > 0
(assert (> N@93@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@97@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@97@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@97@01))))
  $Snap.unit))
; [eval] step >= N
(assert (>= step@89@01 N@93@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))
  $Snap.unit))
; [eval] P > 0
(assert (> P@92@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))
  $Snap.unit))
; [eval] (i in [0..M))
; [eval] [0..M)
(assert (Seq_contains (Seq_range 0 M@94@01) i@91@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))
  $Snap.unit))
; [eval] (j in [0..N))
; [eval] [0..N)
(assert (Seq_contains (Seq_range 0 N@93@01) j@90@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))
  $Snap.unit))
; [eval] P <= |hist|
; [eval] |hist|
(assert (<= P@92@01 (Seq_length hist@95@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))
  $Snap.unit))
; [eval] (forall k: Int, l: Int :: { hist[k], hist[l] } k >= 0 && (k < |hist| && (l >= 0 && (l < |hist| && k != l))) ==> hist[k] != hist[l])
(declare-const k@98@01 Int)
(declare-const l@99@01 Int)
(push) ; 2
; [eval] k >= 0 && (k < |hist| && (l >= 0 && (l < |hist| && k != l))) ==> hist[k] != hist[l]
; [eval] k >= 0 && (k < |hist| && (l >= 0 && (l < |hist| && k != l)))
; [eval] k >= 0
(push) ; 3
; [then-branch: 36 | !(k@98@01 >= 0) | live]
; [else-branch: 36 | k@98@01 >= 0 | live]
(push) ; 4
; [then-branch: 36 | !(k@98@01 >= 0)]
(assert (not (>= k@98@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 36 | k@98@01 >= 0]
(assert (>= k@98@01 0))
; [eval] k < |hist|
; [eval] |hist|
(push) ; 5
; [then-branch: 37 | !(k@98@01 < |hist@95@01|) | live]
; [else-branch: 37 | k@98@01 < |hist@95@01| | live]
(push) ; 6
; [then-branch: 37 | !(k@98@01 < |hist@95@01|)]
(assert (not (< k@98@01 (Seq_length hist@95@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 37 | k@98@01 < |hist@95@01|]
(assert (< k@98@01 (Seq_length hist@95@01)))
; [eval] l >= 0
(push) ; 7
; [then-branch: 38 | !(l@99@01 >= 0) | live]
; [else-branch: 38 | l@99@01 >= 0 | live]
(push) ; 8
; [then-branch: 38 | !(l@99@01 >= 0)]
(assert (not (>= l@99@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 38 | l@99@01 >= 0]
(assert (>= l@99@01 0))
; [eval] l < |hist|
; [eval] |hist|
(push) ; 9
; [then-branch: 39 | !(l@99@01 < |hist@95@01|) | live]
; [else-branch: 39 | l@99@01 < |hist@95@01| | live]
(push) ; 10
; [then-branch: 39 | !(l@99@01 < |hist@95@01|)]
(assert (not (< l@99@01 (Seq_length hist@95@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 39 | l@99@01 < |hist@95@01|]
(assert (< l@99@01 (Seq_length hist@95@01)))
; [eval] k != l
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (< l@99@01 (Seq_length hist@95@01))
  (not (< l@99@01 (Seq_length hist@95@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= l@99@01 0)
  (and
    (>= l@99@01 0)
    (or
      (< l@99@01 (Seq_length hist@95@01))
      (not (< l@99@01 (Seq_length hist@95@01)))))))
(assert (or (>= l@99@01 0) (not (>= l@99@01 0))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@98@01 (Seq_length hist@95@01))
  (and
    (< k@98@01 (Seq_length hist@95@01))
    (=>
      (>= l@99@01 0)
      (and
        (>= l@99@01 0)
        (or
          (< l@99@01 (Seq_length hist@95@01))
          (not (< l@99@01 (Seq_length hist@95@01))))))
    (or (>= l@99@01 0) (not (>= l@99@01 0))))))
(assert (or
  (< k@98@01 (Seq_length hist@95@01))
  (not (< k@98@01 (Seq_length hist@95@01)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@98@01 0)
  (and
    (>= k@98@01 0)
    (=>
      (< k@98@01 (Seq_length hist@95@01))
      (and
        (< k@98@01 (Seq_length hist@95@01))
        (=>
          (>= l@99@01 0)
          (and
            (>= l@99@01 0)
            (or
              (< l@99@01 (Seq_length hist@95@01))
              (not (< l@99@01 (Seq_length hist@95@01))))))
        (or (>= l@99@01 0) (not (>= l@99@01 0)))))
    (or
      (< k@98@01 (Seq_length hist@95@01))
      (not (< k@98@01 (Seq_length hist@95@01)))))))
(assert (or (>= k@98@01 0) (not (>= k@98@01 0))))
(push) ; 3
; [then-branch: 40 | k@98@01 >= 0 && k@98@01 < |hist@95@01| && l@99@01 >= 0 && l@99@01 < |hist@95@01| && k@98@01 != l@99@01 | live]
; [else-branch: 40 | !(k@98@01 >= 0 && k@98@01 < |hist@95@01| && l@99@01 >= 0 && l@99@01 < |hist@95@01| && k@98@01 != l@99@01) | live]
(push) ; 4
; [then-branch: 40 | k@98@01 >= 0 && k@98@01 < |hist@95@01| && l@99@01 >= 0 && l@99@01 < |hist@95@01| && k@98@01 != l@99@01]
(assert (and
  (>= k@98@01 0)
  (and
    (< k@98@01 (Seq_length hist@95@01))
    (and
      (>= l@99@01 0)
      (and (< l@99@01 (Seq_length hist@95@01)) (not (= k@98@01 l@99@01)))))))
; [eval] hist[k] != hist[l]
; [eval] hist[k]
; [eval] hist[l]
(pop) ; 4
(push) ; 4
; [else-branch: 40 | !(k@98@01 >= 0 && k@98@01 < |hist@95@01| && l@99@01 >= 0 && l@99@01 < |hist@95@01| && k@98@01 != l@99@01)]
(assert (not
  (and
    (>= k@98@01 0)
    (and
      (< k@98@01 (Seq_length hist@95@01))
      (and
        (>= l@99@01 0)
        (and (< l@99@01 (Seq_length hist@95@01)) (not (= k@98@01 l@99@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (>= k@98@01 0)
    (and
      (< k@98@01 (Seq_length hist@95@01))
      (and
        (>= l@99@01 0)
        (and (< l@99@01 (Seq_length hist@95@01)) (not (= k@98@01 l@99@01))))))
  (and
    (>= k@98@01 0)
    (< k@98@01 (Seq_length hist@95@01))
    (>= l@99@01 0)
    (< l@99@01 (Seq_length hist@95@01))
    (not (= k@98@01 l@99@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@98@01 0)
      (and
        (< k@98@01 (Seq_length hist@95@01))
        (and
          (>= l@99@01 0)
          (and (< l@99@01 (Seq_length hist@95@01)) (not (= k@98@01 l@99@01)))))))
  (and
    (>= k@98@01 0)
    (and
      (< k@98@01 (Seq_length hist@95@01))
      (and
        (>= l@99@01 0)
        (and (< l@99@01 (Seq_length hist@95@01)) (not (= k@98@01 l@99@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@98@01 Int) (l@99@01 Int)) (!
  (and
    (=>
      (>= k@98@01 0)
      (and
        (>= k@98@01 0)
        (=>
          (< k@98@01 (Seq_length hist@95@01))
          (and
            (< k@98@01 (Seq_length hist@95@01))
            (=>
              (>= l@99@01 0)
              (and
                (>= l@99@01 0)
                (or
                  (< l@99@01 (Seq_length hist@95@01))
                  (not (< l@99@01 (Seq_length hist@95@01))))))
            (or (>= l@99@01 0) (not (>= l@99@01 0)))))
        (or
          (< k@98@01 (Seq_length hist@95@01))
          (not (< k@98@01 (Seq_length hist@95@01))))))
    (or (>= k@98@01 0) (not (>= k@98@01 0)))
    (=>
      (and
        (>= k@98@01 0)
        (and
          (< k@98@01 (Seq_length hist@95@01))
          (and
            (>= l@99@01 0)
            (and (< l@99@01 (Seq_length hist@95@01)) (not (= k@98@01 l@99@01))))))
      (and
        (>= k@98@01 0)
        (< k@98@01 (Seq_length hist@95@01))
        (>= l@99@01 0)
        (< l@99@01 (Seq_length hist@95@01))
        (not (= k@98@01 l@99@01))))
    (or
      (not
        (and
          (>= k@98@01 0)
          (and
            (< k@98@01 (Seq_length hist@95@01))
            (and
              (>= l@99@01 0)
              (and (< l@99@01 (Seq_length hist@95@01)) (not (= k@98@01 l@99@01)))))))
      (and
        (>= k@98@01 0)
        (and
          (< k@98@01 (Seq_length hist@95@01))
          (and
            (>= l@99@01 0)
            (and (< l@99@01 (Seq_length hist@95@01)) (not (= k@98@01 l@99@01))))))))
  :pattern ((Seq_index hist@95@01 k@98@01) (Seq_index hist@95@01 l@99@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@112@12@112@114-aux|)))
(assert (forall ((k@98@01 Int) (l@99@01 Int)) (!
  (=>
    (and
      (>= k@98@01 0)
      (and
        (< k@98@01 (Seq_length hist@95@01))
        (and
          (>= l@99@01 0)
          (and (< l@99@01 (Seq_length hist@95@01)) (not (= k@98@01 l@99@01))))))
    (not (= (Seq_index hist@95@01 k@98@01) (Seq_index hist@95@01 l@99@01))))
  :pattern ((Seq_index hist@95@01 k@98@01) (Seq_index hist@95@01 l@99@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@112@12@112@114|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))))
(declare-const k@100@01 Int)
(push) ; 2
; [eval] (k in [0..P))
; [eval] [0..P)
(assert (Seq_contains (Seq_range 0 P@92@01) k@100@01))
; [eval] hist[k]
(push) ; 3
(assert (not (>= k@100@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< k@100@01 (Seq_length hist@95@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@101@01 ($Ref) Int)
(declare-fun img@102@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((k1@100@01 Int) (k2@100@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 P@92@01) k1@100@01)
      (Seq_contains (Seq_range 0 P@92@01) k2@100@01)
      (= (Seq_index hist@95@01 k1@100@01) (Seq_index hist@95@01 k2@100@01)))
    (= k1@100@01 k2@100@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@100@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 P@92@01) k@100@01)
    (and
      (= (inv@101@01 (Seq_index hist@95@01 k@100@01)) k@100@01)
      (img@102@01 (Seq_index hist@95@01 k@100@01))))
  :pattern ((Seq_index hist@95@01 k@100@01))
  :qid |quant-u-8572|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@102@01 r) (Seq_contains (Seq_range 0 P@92@01) (inv@101@01 r)))
    (= (Seq_index hist@95@01 (inv@101@01 r)) r))
  :pattern ((inv@101@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((k@100@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 P@92@01) k@100@01)
    (not (= (Seq_index hist@95@01 k@100@01) $Ref.null)))
  :pattern ((Seq_index hist@95@01 k@100@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))
  $Snap.unit))
; [eval] (forall k: Int :: { (k in [0..P)) } { hist[k] } (k in [0..P)) ==> hist[k].Ref__Integer_value == 0)
(declare-const k@103@01 Int)
(push) ; 2
; [eval] (k in [0..P)) ==> hist[k].Ref__Integer_value == 0
; [eval] (k in [0..P))
; [eval] [0..P)
(push) ; 3
; [then-branch: 41 | k@103@01 in [0..P@92@01] | live]
; [else-branch: 41 | !(k@103@01 in [0..P@92@01]) | live]
(push) ; 4
; [then-branch: 41 | k@103@01 in [0..P@92@01]]
(assert (Seq_contains (Seq_range 0 P@92@01) k@103@01))
; [eval] hist[k].Ref__Integer_value == 0
; [eval] hist[k]
(push) ; 5
(assert (not (>= k@103@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k@103@01 (Seq_length hist@95@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (and
  (img@102@01 (Seq_index hist@95@01 k@103@01))
  (Seq_contains
    (Seq_range 0 P@92@01)
    (inv@101@01 (Seq_index hist@95@01 k@103@01))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 41 | !(k@103@01 in [0..P@92@01])]
(assert (not (Seq_contains (Seq_range 0 P@92@01) k@103@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range 0 P@92@01) k@103@01))
  (Seq_contains (Seq_range 0 P@92@01) k@103@01)))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@103@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range 0 P@92@01) k@103@01))
    (Seq_contains (Seq_range 0 P@92@01) k@103@01))
  :pattern ((Seq_contains (Seq_range 0 P@92@01) k@103@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 P@92@01) k@103@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@114@13@114@81-aux|)))
(assert (forall ((k@103@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range 0 P@92@01) k@103@01))
    (Seq_contains (Seq_range 0 P@92@01) k@103@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 P@92@01) k@103@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@114@13@114@81-aux|)))
(assert (forall ((k@103@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range 0 P@92@01) k@103@01))
    (Seq_contains (Seq_range 0 P@92@01) k@103@01))
  :pattern ((Seq_index hist@95@01 k@103@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@114@13@114@81-aux|)))
(assert (forall ((k@103@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 P@92@01) k@103@01)
    (=
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))) (Seq_index
        hist@95@01
        k@103@01))
      0))
  :pattern ((Seq_contains (Seq_range 0 P@92@01) k@103@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 P@92@01) k@103@01))
  :pattern ((Seq_index hist@95@01 k@103@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@114@13@114@81|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))))
  $Snap.unit))
; [eval] i * step + j < |matrix|
; [eval] i * step + j
; [eval] i * step
; [eval] |matrix|
(assert (< (+ (* i@91@01 step@89@01) j@90@01) (Seq_length matrix@96@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))))))))
; [eval] matrix[i * step + j]
; [eval] i * step + j
; [eval] i * step
(push) ; 2
(assert (not (>= (+ (* i@91@01 step@89@01) j@90@01) 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(declare-const sm@104@01 $FVF<Ref__Integer_value>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_Ref__Integer_value (as sm@104@01  $FVF<Ref__Integer_value>) (Seq_index
    matrix@96@01
    (+ (* i@91@01 step@89@01) j@90@01)))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))))))))
(assert (<=
  $Perm.No
  (ite
    (=
      (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01))
      (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
    (/ (to_real 1) (to_real 4))
    $Perm.No)))
(assert (<=
  (ite
    (=
      (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01))
      (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
    (/ (to_real 1) (to_real 4))
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01))
    (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
  (not (= (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)) $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))))))
  $Snap.unit))
; [eval] (matrix[i * step + j].Ref__Integer_value in [0..P))
; [eval] [0..P)
; [eval] matrix[i * step + j]
; [eval] i * step + j
; [eval] i * step
(push) ; 2
(assert (not (>= (+ (* i@91@01 step@89@01) j@90@01) 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(declare-const sm@105@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@102@01 r) (Seq_contains (Seq_range 0 P@92@01) (inv@101@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@105@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@105@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@105@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@104@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@105@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@104@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef13|)))
(declare-const pm@106@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@106@01  $FPM) r)
    (+
      (ite
        (and (img@102@01 r) (Seq_contains (Seq_range 0 P@92@01) (inv@101@01 r)))
        $Perm.Write
        $Perm.No)
      (ite
        (= r (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@106@01  $FPM) r))
  :qid |qp.resPrmSumDef14|)))
(push) ; 2
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@106@01  $FPM) (Seq_index
    matrix@96@01
    (+ (* i@91@01 step@89@01) j@90@01))))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (Seq_contains
  (Seq_range 0 P@92@01)
  ($FVF.lookup_Ref__Integer_value (as sm@105@01  $FVF<Ref__Integer_value>) (Seq_index
    matrix@96@01
    (+ (* i@91@01 step@89@01) j@90@01)))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@107@01 $Snap)
(assert (= $t@107@01 ($Snap.combine ($Snap.first $t@107@01) ($Snap.second $t@107@01))))
(assert (= ($Snap.first $t@107@01) $Snap.unit))
; [eval] M > 0
(assert (=
  ($Snap.second $t@107@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@107@01))
    ($Snap.second ($Snap.second $t@107@01)))))
(assert (= ($Snap.first ($Snap.second $t@107@01)) $Snap.unit))
; [eval] N > 0
(assert (=
  ($Snap.second ($Snap.second $t@107@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@107@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@107@01))) $Snap.unit))
; [eval] step >= N
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@107@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@107@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@107@01))))
  $Snap.unit))
; [eval] P > 0
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))
  $Snap.unit))
; [eval] (i in [0..M))
; [eval] [0..M)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
  $Snap.unit))
; [eval] (j in [0..N))
; [eval] [0..N)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
; [eval] matrix[i * step + j]
; [eval] i * step + j
; [eval] i * step
(push) ; 3
(assert (not (>= (+ (* i@91@01 step@89@01) j@90@01) 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@108@01 $FVF<Ref__Integer_value>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) (Seq_index
    matrix@96@01
    (+ (* i@91@01 step@89@01) j@90@01)))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))))
(declare-const k@109@01 Int)
(push) ; 3
; [eval] (k in [0..P))
; [eval] [0..P)
(assert (Seq_contains (Seq_range 0 P@92@01) k@109@01))
; [eval] hist[k]
(push) ; 4
(assert (not (>= k@109@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< k@109@01 (Seq_length hist@95@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@110@01 ($Ref) Int)
(declare-fun img@111@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((k1@109@01 Int) (k2@109@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 P@92@01) k1@109@01)
      (Seq_contains (Seq_range 0 P@92@01) k2@109@01)
      (= (Seq_index hist@95@01 k1@109@01) (Seq_index hist@95@01 k2@109@01)))
    (= k1@109@01 k2@109@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@109@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 P@92@01) k@109@01)
    (and
      (= (inv@110@01 (Seq_index hist@95@01 k@109@01)) k@109@01)
      (img@111@01 (Seq_index hist@95@01 k@109@01))))
  :pattern ((Seq_index hist@95@01 k@109@01))
  :qid |quant-u-8574|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@111@01 r) (Seq_contains (Seq_range 0 P@92@01) (inv@110@01 r)))
    (= (Seq_index hist@95@01 (inv@110@01 r)) r))
  :pattern ((inv@110@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((k@109@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 P@92@01) k@109@01)
    (not (= (Seq_index hist@95@01 k@109@01) $Ref.null)))
  :pattern ((Seq_index hist@95@01 k@109@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))
  $Snap.unit))
; [eval] (forall k: Int :: { (k in [0..P)) } { hist[k] } (k in [0..P)) ==> hist[k].Ref__Integer_value == (matrix[i * step + j].Ref__Integer_value == k ? 1 : 0))
(declare-const k@112@01 Int)
(push) ; 3
; [eval] (k in [0..P)) ==> hist[k].Ref__Integer_value == (matrix[i * step + j].Ref__Integer_value == k ? 1 : 0)
; [eval] (k in [0..P))
; [eval] [0..P)
(push) ; 4
; [then-branch: 42 | k@112@01 in [0..P@92@01] | live]
; [else-branch: 42 | !(k@112@01 in [0..P@92@01]) | live]
(push) ; 5
; [then-branch: 42 | k@112@01 in [0..P@92@01]]
(assert (Seq_contains (Seq_range 0 P@92@01) k@112@01))
; [eval] hist[k].Ref__Integer_value == (matrix[i * step + j].Ref__Integer_value == k ? 1 : 0)
; [eval] hist[k]
(push) ; 6
(assert (not (>= k@112@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k@112@01 (Seq_length hist@95@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@113@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@113@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@113@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@111@01 r) (Seq_contains (Seq_range 0 P@92@01) (inv@110@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@113@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@113@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))) r))
  :qid |qp.fvfValDef16|)))
(declare-const pm@114@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@114@01  $FPM) r)
    (+
      (ite
        (= r (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (ite
        (and (img@111@01 r) (Seq_contains (Seq_range 0 P@92@01) (inv@110@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@114@01  $FPM) r))
  :qid |qp.resPrmSumDef17|)))
(push) ; 6
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@114@01  $FPM) (Seq_index
    hist@95@01
    k@112@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] (matrix[i * step + j].Ref__Integer_value == k ? 1 : 0)
; [eval] matrix[i * step + j].Ref__Integer_value == k
; [eval] matrix[i * step + j]
; [eval] i * step + j
; [eval] i * step
(push) ; 6
(assert (not (>= (+ (* i@91@01 step@89@01) j@90@01) 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@113@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@113@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) r))
    :qid |qp.fvfValDef15|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@111@01 r) (Seq_contains (Seq_range 0 P@92@01) (inv@110@01 r)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@113@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@113@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))) r))
    :qid |qp.fvfValDef16|))))
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    (ite
      (=
        (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01))
        (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
      (/ (to_real 1) (to_real 4))
      $Perm.No)
    (ite
      (and
        (img@111@01 (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
        (Seq_contains
          (Seq_range 0 P@92@01)
          (inv@110@01 (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
; [then-branch: 43 | Lookup(Ref__Integer_value, sm@113@01, matrix@96@01[i@91@01 * step@89@01 + j@90@01]) == k@112@01 | live]
; [else-branch: 43 | Lookup(Ref__Integer_value, sm@113@01, matrix@96@01[i@91@01 * step@89@01 + j@90@01]) != k@112@01 | live]
(push) ; 7
; [then-branch: 43 | Lookup(Ref__Integer_value, sm@113@01, matrix@96@01[i@91@01 * step@89@01 + j@90@01]) == k@112@01]
(assert (=
  ($FVF.lookup_Ref__Integer_value (as sm@113@01  $FVF<Ref__Integer_value>) (Seq_index
    matrix@96@01
    (+ (* i@91@01 step@89@01) j@90@01)))
  k@112@01))
(pop) ; 7
(push) ; 7
; [else-branch: 43 | Lookup(Ref__Integer_value, sm@113@01, matrix@96@01[i@91@01 * step@89@01 + j@90@01]) != k@112@01]
(assert (not
  (=
    ($FVF.lookup_Ref__Integer_value (as sm@113@01  $FVF<Ref__Integer_value>) (Seq_index
      matrix@96@01
      (+ (* i@91@01 step@89@01) j@90@01)))
    k@112@01)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@113@01  $FVF<Ref__Integer_value>) (Seq_index
        matrix@96@01
        (+ (* i@91@01 step@89@01) j@90@01)))
      k@112@01))
  (=
    ($FVF.lookup_Ref__Integer_value (as sm@113@01  $FVF<Ref__Integer_value>) (Seq_index
      matrix@96@01
      (+ (* i@91@01 step@89@01) j@90@01)))
    k@112@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 42 | !(k@112@01 in [0..P@92@01])]
(assert (not (Seq_contains (Seq_range 0 P@92@01) k@112@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@113@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@113@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@111@01 r) (Seq_contains (Seq_range 0 P@92@01) (inv@110@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@113@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@113@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@114@01  $FPM) r)
    (+
      (ite
        (= r (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (ite
        (and (img@111@01 r) (Seq_contains (Seq_range 0 P@92@01) (inv@110@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@114@01  $FPM) r))
  :qid |qp.resPrmSumDef17|)))
(assert (=>
  (Seq_contains (Seq_range 0 P@92@01) k@112@01)
  (and
    (Seq_contains (Seq_range 0 P@92@01) k@112@01)
    (or
      (not
        (=
          ($FVF.lookup_Ref__Integer_value (as sm@113@01  $FVF<Ref__Integer_value>) (Seq_index
            matrix@96@01
            (+ (* i@91@01 step@89@01) j@90@01)))
          k@112@01))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@113@01  $FVF<Ref__Integer_value>) (Seq_index
          matrix@96@01
          (+ (* i@91@01 step@89@01) j@90@01)))
        k@112@01)))))
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range 0 P@92@01) k@112@01))
  (Seq_contains (Seq_range 0 P@92@01) k@112@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@113@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@113@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@111@01 r) (Seq_contains (Seq_range 0 P@92@01) (inv@110@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@113@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@113@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@114@01  $FPM) r)
    (+
      (ite
        (= r (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (ite
        (and (img@111@01 r) (Seq_contains (Seq_range 0 P@92@01) (inv@110@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@114@01  $FPM) r))
  :qid |qp.resPrmSumDef17|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@112@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 P@92@01) k@112@01)
      (and
        (Seq_contains (Seq_range 0 P@92@01) k@112@01)
        (or
          (not
            (=
              ($FVF.lookup_Ref__Integer_value (as sm@113@01  $FVF<Ref__Integer_value>) (Seq_index
                matrix@96@01
                (+ (* i@91@01 step@89@01) j@90@01)))
              k@112@01))
          (=
            ($FVF.lookup_Ref__Integer_value (as sm@113@01  $FVF<Ref__Integer_value>) (Seq_index
              matrix@96@01
              (+ (* i@91@01 step@89@01) j@90@01)))
            k@112@01))))
    (or
      (not (Seq_contains (Seq_range 0 P@92@01) k@112@01))
      (Seq_contains (Seq_range 0 P@92@01) k@112@01)))
  :pattern ((Seq_contains (Seq_range 0 P@92@01) k@112@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 P@92@01) k@112@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@122@12@122@133-aux|)))
(assert (forall ((k@112@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 P@92@01) k@112@01)
      (and
        (Seq_contains (Seq_range 0 P@92@01) k@112@01)
        (or
          (not
            (=
              ($FVF.lookup_Ref__Integer_value (as sm@113@01  $FVF<Ref__Integer_value>) (Seq_index
                matrix@96@01
                (+ (* i@91@01 step@89@01) j@90@01)))
              k@112@01))
          (=
            ($FVF.lookup_Ref__Integer_value (as sm@113@01  $FVF<Ref__Integer_value>) (Seq_index
              matrix@96@01
              (+ (* i@91@01 step@89@01) j@90@01)))
            k@112@01))))
    (or
      (not (Seq_contains (Seq_range 0 P@92@01) k@112@01))
      (Seq_contains (Seq_range 0 P@92@01) k@112@01)))
  :pattern ((Seq_contains_trigger (Seq_range 0 P@92@01) k@112@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@122@12@122@133-aux|)))
(assert (forall ((k@112@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 P@92@01) k@112@01)
      (and
        (Seq_contains (Seq_range 0 P@92@01) k@112@01)
        (or
          (not
            (=
              ($FVF.lookup_Ref__Integer_value (as sm@113@01  $FVF<Ref__Integer_value>) (Seq_index
                matrix@96@01
                (+ (* i@91@01 step@89@01) j@90@01)))
              k@112@01))
          (=
            ($FVF.lookup_Ref__Integer_value (as sm@113@01  $FVF<Ref__Integer_value>) (Seq_index
              matrix@96@01
              (+ (* i@91@01 step@89@01) j@90@01)))
            k@112@01))))
    (or
      (not (Seq_contains (Seq_range 0 P@92@01) k@112@01))
      (Seq_contains (Seq_range 0 P@92@01) k@112@01)))
  :pattern ((Seq_index hist@95@01 k@112@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@122@12@122@133-aux|)))
(assert (forall ((k@112@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 P@92@01) k@112@01)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@113@01  $FVF<Ref__Integer_value>) (Seq_index
        hist@95@01
        k@112@01))
      (ite
        (=
          ($FVF.lookup_Ref__Integer_value (as sm@113@01  $FVF<Ref__Integer_value>) (Seq_index
            matrix@96@01
            (+ (* i@91@01 step@89@01) j@90@01)))
          k@112@01)
        1
        0)))
  :pattern ((Seq_contains (Seq_range 0 P@92@01) k@112@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 P@92@01) k@112@01))
  :pattern ((Seq_index hist@95@01 k@112@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@122@12@122@133|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01)))))))))
  $Snap.unit))
; [eval] matrix[i * step + j].Ref__Integer_value == old(matrix[i * step + j].Ref__Integer_value)
; [eval] matrix[i * step + j]
; [eval] i * step + j
; [eval] i * step
(push) ; 3
(assert (not (>= (+ (* i@91@01 step@89@01) j@90@01) 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@113@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@113@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@108@01  $FVF<Ref__Integer_value>) r))
    :qid |qp.fvfValDef15|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@111@01 r) (Seq_contains (Seq_range 0 P@92@01) (inv@110@01 r)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@113@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@113@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@107@01))))))))) r))
    :qid |qp.fvfValDef16|))))
(push) ; 3
(assert (not (<
  $Perm.No
  (+
    (ite
      (=
        (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01))
        (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
      (/ (to_real 1) (to_real 4))
      $Perm.No)
    (ite
      (and
        (img@111@01 (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
        (Seq_contains
          (Seq_range 0 P@92@01)
          (inv@110@01 (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(matrix[i * step + j].Ref__Integer_value)
; [eval] matrix[i * step + j]
; [eval] i * step + j
; [eval] i * step
(push) ; 3
(assert (not (>= (+ (* i@91@01 step@89@01) j@90@01) 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@102@01 r) (Seq_contains (Seq_range 0 P@92@01) (inv@101@01 r)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@105@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@105@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))) r))
    :qid |qp.fvfValDef12|))
  (forall ((r $Ref)) (!
    (=>
      (= r (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@105@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value (as sm@104@01  $FVF<Ref__Integer_value>) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@105@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@104@01  $FVF<Ref__Integer_value>) r))
    :qid |qp.fvfValDef13|))))
(push) ; 3
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@102@01 (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
        (Seq_contains
          (Seq_range 0 P@92@01)
          (inv@101@01 (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))))
      $Perm.Write
      $Perm.No)
    (ite
      (=
        (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01))
        (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
      (/ (to_real 1) (to_real 4))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_Ref__Integer_value (as sm@113@01  $FVF<Ref__Integer_value>) (Seq_index
    matrix@96@01
    (+ (* i@91@01 step@89@01) j@90@01)))
  ($FVF.lookup_Ref__Integer_value (as sm@105@01  $FVF<Ref__Integer_value>) (Seq_index
    matrix@96@01
    (+ (* i@91@01 step@89@01) j@90@01)))))
(pop) ; 2
(push) ; 2
; [exec]
; var __flatten_4: Ref
(declare-const __flatten_4@115@01 $Ref)
; [exec]
; var __flatten_5: Ref
(declare-const __flatten_5@116@01 $Ref)
; [exec]
; var __flatten_6: Int
(declare-const __flatten_6@117@01 Int)
; [exec]
; var __flatten_7: Ref
(declare-const __flatten_7@118@01 $Ref)
; [exec]
; var __flatten_8: Ref
(declare-const __flatten_8@119@01 $Ref)
; [exec]
; __flatten_4 := matrix[i * step + j]
; [eval] matrix[i * step + j]
; [eval] i * step + j
; [eval] i * step
(push) ; 3
(assert (not (>= (+ (* i@91@01 step@89@01) j@90@01) 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_4@120@01 $Ref)
(assert (=
  __flatten_4@120@01
  (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01))))
; [exec]
; __flatten_5 := hist[__flatten_4.Ref__Integer_value]
; [eval] hist[__flatten_4.Ref__Integer_value]
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@102@01 r) (Seq_contains (Seq_range 0 P@92@01) (inv@101@01 r)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@105@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@105@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))) r))
    :qid |qp.fvfValDef12|))
  (forall ((r $Ref)) (!
    (=>
      (= r (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@105@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value (as sm@104@01  $FVF<Ref__Integer_value>) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@105@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@104@01  $FVF<Ref__Integer_value>) r))
    :qid |qp.fvfValDef13|))))
(push) ; 3
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@102@01 __flatten_4@120@01)
        (Seq_contains (Seq_range 0 P@92@01) (inv@101@01 __flatten_4@120@01)))
      $Perm.Write
      $Perm.No)
    (ite
      (=
        __flatten_4@120@01
        (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
      (/ (to_real 1) (to_real 4))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (>=
  ($FVF.lookup_Ref__Integer_value (as sm@105@01  $FVF<Ref__Integer_value>) __flatten_4@120@01)
  0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  ($FVF.lookup_Ref__Integer_value (as sm@105@01  $FVF<Ref__Integer_value>) __flatten_4@120@01)
  (Seq_length hist@95@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_5@121@01 $Ref)
(assert (=
  __flatten_5@121@01
  (Seq_index
    hist@95@01
    ($FVF.lookup_Ref__Integer_value (as sm@105@01  $FVF<Ref__Integer_value>) __flatten_4@120@01))))
; [exec]
; __flatten_7 := matrix[i * step + j]
; [eval] matrix[i * step + j]
; [eval] i * step + j
; [eval] i * step
(push) ; 3
(assert (not (>= (+ (* i@91@01 step@89@01) j@90@01) 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_7@122@01 $Ref)
(assert (=
  __flatten_7@122@01
  (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01))))
; [exec]
; __flatten_8 := hist[__flatten_7.Ref__Integer_value]
; [eval] hist[__flatten_7.Ref__Integer_value]
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@102@01 r) (Seq_contains (Seq_range 0 P@92@01) (inv@101@01 r)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@105@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@105@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))) r))
    :qid |qp.fvfValDef12|))
  (forall ((r $Ref)) (!
    (=>
      (= r (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@105@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value (as sm@104@01  $FVF<Ref__Integer_value>) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@105@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@104@01  $FVF<Ref__Integer_value>) r))
    :qid |qp.fvfValDef13|))))
(push) ; 3
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@102@01 __flatten_7@122@01)
        (Seq_contains (Seq_range 0 P@92@01) (inv@101@01 __flatten_7@122@01)))
      $Perm.Write
      $Perm.No)
    (ite
      (=
        __flatten_7@122@01
        (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
      (/ (to_real 1) (to_real 4))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (>=
  ($FVF.lookup_Ref__Integer_value (as sm@105@01  $FVF<Ref__Integer_value>) __flatten_7@122@01)
  0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (<
  ($FVF.lookup_Ref__Integer_value (as sm@105@01  $FVF<Ref__Integer_value>) __flatten_7@122@01)
  (Seq_length hist@95@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_8@123@01 $Ref)
(assert (=
  __flatten_8@123@01
  (Seq_index
    hist@95@01
    ($FVF.lookup_Ref__Integer_value (as sm@105@01  $FVF<Ref__Integer_value>) __flatten_7@122@01))))
; [exec]
; __flatten_6 := __flatten_8.Ref__Integer_value + 1
; [eval] __flatten_8.Ref__Integer_value + 1
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@102@01 r) (Seq_contains (Seq_range 0 P@92@01) (inv@101@01 r)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@105@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@105@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))) r))
    :qid |qp.fvfValDef12|))
  (forall ((r $Ref)) (!
    (=>
      (= r (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@105@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value (as sm@104@01  $FVF<Ref__Integer_value>) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@105@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@104@01  $FVF<Ref__Integer_value>) r))
    :qid |qp.fvfValDef13|))))
(push) ; 3
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@102@01 __flatten_8@123@01)
        (Seq_contains (Seq_range 0 P@92@01) (inv@101@01 __flatten_8@123@01)))
      $Perm.Write
      $Perm.No)
    (ite
      (=
        __flatten_8@123@01
        (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
      (/ (to_real 1) (to_real 4))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const __flatten_6@124@01 Int)
(assert (=
  __flatten_6@124@01
  (+
    ($FVF.lookup_Ref__Integer_value (as sm@105@01  $FVF<Ref__Integer_value>) __flatten_8@123@01)
    1)))
; [exec]
; __flatten_5.Ref__Integer_value := __flatten_6
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01))
  __flatten_5@121@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@125@01 ((r $Ref)) $Perm
  (ite
    (= r __flatten_5@121@01)
    ($Perm.min
      (ite
        (and (img@102@01 r) (Seq_contains (Seq_range 0 P@92@01) (inv@101@01 r)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@126@01 ((r $Ref)) $Perm
  (ite
    (= r __flatten_5@121@01)
    ($Perm.min
      (ite
        (= r (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (- $Perm.Write (pTaken@125@01 r)))
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
        (and (img@102@01 r) (Seq_contains (Seq_range 0 P@92@01) (inv@101@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@125@01 r))
    $Perm.No)
  
  :qid |quant-u-8576|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@125@01 r) $Perm.No)
  
  :qid |quant-u-8577|))))
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
  (=> (= r __flatten_5@121@01) (= (- $Perm.Write (pTaken@125@01 r)) $Perm.No))
  
  :qid |quant-u-8578|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@127@01 $FVF<Ref__Integer_value>)
; Definitional axioms for singleton-FVF's value
(assert (=
  ($FVF.lookup_Ref__Integer_value (as sm@127@01  $FVF<Ref__Integer_value>) __flatten_5@121@01)
  __flatten_6@124@01))
; [eval] M > 0
; [eval] N > 0
; [eval] step >= N
; [eval] P > 0
; [eval] (i in [0..M))
; [eval] [0..M)
; [eval] (j in [0..N))
; [eval] [0..N)
; [eval] matrix[i * step + j]
; [eval] i * step + j
; [eval] i * step
(set-option :timeout 0)
(push) ; 3
(assert (not (>= (+ (* i@91@01 step@89@01) j@90@01) 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@128@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
    ($Perm.min
      (ite
        (= r (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (/ (to_real 1) (to_real 4)))
    $Perm.No))
(define-fun pTaken@129@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
    ($Perm.min
      (ite (= r __flatten_5@121@01) $Perm.Write $Perm.No)
      (- (/ (to_real 1) (to_real 4)) (pTaken@128@01 r)))
    $Perm.No))
(define-fun pTaken@130@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
    ($Perm.min
      (ite
        (and (img@102@01 r) (Seq_contains (Seq_range 0 P@92@01) (inv@101@01 r)))
        (- $Perm.Write (pTaken@125@01 r))
        $Perm.No)
      (- (- (/ (to_real 1) (to_real 4)) (pTaken@128@01 r)) (pTaken@129@01 r)))
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
    (ite
      (=
        (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01))
        (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
      (/ (to_real 1) (to_real 4))
      $Perm.No)
    (pTaken@128@01 (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01))))
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
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
    (= (- (/ (to_real 1) (to_real 4)) (pTaken@128@01 r)) $Perm.No))
  
  :qid |quant-u-8581|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const k@131@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (k in [0..P))
; [eval] [0..P)
(assert (Seq_contains (Seq_range 0 P@92@01) k@131@01))
; [eval] hist[k]
(push) ; 4
(assert (not (>= k@131@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< k@131@01 (Seq_length hist@95@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@132@01 ($Ref) Int)
(declare-fun img@133@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((k1@131@01 Int) (k2@131@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 P@92@01) k1@131@01)
      (Seq_contains (Seq_range 0 P@92@01) k2@131@01)
      (= (Seq_index hist@95@01 k1@131@01) (Seq_index hist@95@01 k2@131@01)))
    (= k1@131@01 k2@131@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@131@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 P@92@01) k@131@01)
    (and
      (= (inv@132@01 (Seq_index hist@95@01 k@131@01)) k@131@01)
      (img@133@01 (Seq_index hist@95@01 k@131@01))))
  :pattern ((Seq_index hist@95@01 k@131@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@133@01 r) (Seq_contains (Seq_range 0 P@92@01) (inv@132@01 r)))
    (= (Seq_index hist@95@01 (inv@132@01 r)) r))
  :pattern ((inv@132@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@134@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 P@92@01) (inv@132@01 r))
      (img@133@01 r)
      (= r (Seq_index hist@95@01 (inv@132@01 r))))
    ($Perm.min
      (ite
        (and (img@102@01 r) (Seq_contains (Seq_range 0 P@92@01) (inv@101@01 r)))
        (- $Perm.Write (pTaken@125@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@135@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 P@92@01) (inv@132@01 r))
      (img@133@01 r)
      (= r (Seq_index hist@95@01 (inv@132@01 r))))
    ($Perm.min
      (ite (= r __flatten_5@121@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@134@01 r)))
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
        (and (img@102@01 r) (Seq_contains (Seq_range 0 P@92@01) (inv@101@01 r)))
        (- $Perm.Write (pTaken@125@01 r))
        $Perm.No)
      (pTaken@134@01 r))
    $Perm.No)
  
  :qid |quant-u-8584|))))
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
      (Seq_contains (Seq_range 0 P@92@01) (inv@132@01 r))
      (img@133@01 r)
      (= r (Seq_index hist@95@01 (inv@132@01 r))))
    (= (- $Perm.Write (pTaken@134@01 r)) $Perm.No))
  
  :qid |quant-u-8585|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@135@01 __flatten_5@121@01)) $Perm.No)))
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
      (Seq_contains (Seq_range 0 P@92@01) (inv@132@01 r))
      (img@133@01 r)
      (= r (Seq_index hist@95@01 (inv@132@01 r))))
    (= (- (- $Perm.Write (pTaken@134@01 r)) (pTaken@135@01 r)) $Perm.No))
  
  :qid |quant-u-8587|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall k: Int :: { (k in [0..P)) } { hist[k] } (k in [0..P)) ==> hist[k].Ref__Integer_value == (matrix[i * step + j].Ref__Integer_value == k ? 1 : 0))
(declare-const k@136@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (k in [0..P)) ==> hist[k].Ref__Integer_value == (matrix[i * step + j].Ref__Integer_value == k ? 1 : 0)
; [eval] (k in [0..P))
; [eval] [0..P)
(push) ; 4
; [then-branch: 44 | k@136@01 in [0..P@92@01] | live]
; [else-branch: 44 | !(k@136@01 in [0..P@92@01]) | live]
(push) ; 5
; [then-branch: 44 | k@136@01 in [0..P@92@01]]
(assert (Seq_contains (Seq_range 0 P@92@01) k@136@01))
; [eval] hist[k].Ref__Integer_value == (matrix[i * step + j].Ref__Integer_value == k ? 1 : 0)
; [eval] hist[k]
(push) ; 6
(assert (not (>= k@136@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k@136@01 (Seq_length hist@95@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@137@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r __flatten_5@121@01)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@127@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@127@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@104@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@104@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@102@01 r) (Seq_contains (Seq_range 0 P@92@01) (inv@101@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@125@01 r)))
      false)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))) r))
  :qid |qp.fvfValDef20|)))
(declare-const pm@138@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@138@01  $FPM) r)
    (+
      (+
        (ite (= r __flatten_5@121@01) $Perm.Write $Perm.No)
        (ite
          (= r (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
          (/ (to_real 1) (to_real 4))
          $Perm.No))
      (ite
        (and (img@102@01 r) (Seq_contains (Seq_range 0 P@92@01) (inv@101@01 r)))
        (- $Perm.Write (pTaken@125@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@138@01  $FPM) r))
  :qid |qp.resPrmSumDef21|)))
(push) ; 6
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@138@01  $FPM) (Seq_index
    hist@95@01
    k@136@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] (matrix[i * step + j].Ref__Integer_value == k ? 1 : 0)
; [eval] matrix[i * step + j].Ref__Integer_value == k
; [eval] matrix[i * step + j]
; [eval] i * step + j
; [eval] i * step
(push) ; 6
(assert (not (>= (+ (* i@91@01 step@89@01) j@90@01) 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r __flatten_5@121@01)
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value (as sm@127@01  $FVF<Ref__Integer_value>) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@127@01  $FVF<Ref__Integer_value>) r))
    :qid |qp.fvfValDef18|))
  (forall ((r $Ref)) (!
    (=>
      (= r (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value (as sm@104@01  $FVF<Ref__Integer_value>) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@104@01  $FVF<Ref__Integer_value>) r))
    :qid |qp.fvfValDef19|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@102@01 r) (Seq_contains (Seq_range 0 P@92@01) (inv@101@01 r)))
        (< $Perm.No (- $Perm.Write (pTaken@125@01 r)))
        false)
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))) r))
    :qid |qp.fvfValDef20|))))
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (=
          (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01))
          __flatten_5@121@01)
        $Perm.Write
        $Perm.No)
      (ite
        (=
          (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01))
          (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
        (/ (to_real 1) (to_real 4))
        $Perm.No))
    (ite
      (and
        (img@102@01 (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
        (Seq_contains
          (Seq_range 0 P@92@01)
          (inv@101@01 (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))))
      (-
        $Perm.Write
        (pTaken@125@01 (Seq_index
          matrix@96@01
          (+ (* i@91@01 step@89@01) j@90@01))))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
; [then-branch: 45 | Lookup(Ref__Integer_value, sm@137@01, matrix@96@01[i@91@01 * step@89@01 + j@90@01]) == k@136@01 | live]
; [else-branch: 45 | Lookup(Ref__Integer_value, sm@137@01, matrix@96@01[i@91@01 * step@89@01 + j@90@01]) != k@136@01 | live]
(push) ; 7
; [then-branch: 45 | Lookup(Ref__Integer_value, sm@137@01, matrix@96@01[i@91@01 * step@89@01 + j@90@01]) == k@136@01]
(assert (=
  ($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) (Seq_index
    matrix@96@01
    (+ (* i@91@01 step@89@01) j@90@01)))
  k@136@01))
(pop) ; 7
(push) ; 7
; [else-branch: 45 | Lookup(Ref__Integer_value, sm@137@01, matrix@96@01[i@91@01 * step@89@01 + j@90@01]) != k@136@01]
(assert (not
  (=
    ($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) (Seq_index
      matrix@96@01
      (+ (* i@91@01 step@89@01) j@90@01)))
    k@136@01)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) (Seq_index
        matrix@96@01
        (+ (* i@91@01 step@89@01) j@90@01)))
      k@136@01))
  (=
    ($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) (Seq_index
      matrix@96@01
      (+ (* i@91@01 step@89@01) j@90@01)))
    k@136@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 44 | !(k@136@01 in [0..P@92@01])]
(assert (not (Seq_contains (Seq_range 0 P@92@01) k@136@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r __flatten_5@121@01)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@127@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@127@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@104@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@104@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@102@01 r) (Seq_contains (Seq_range 0 P@92@01) (inv@101@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@125@01 r)))
      false)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@138@01  $FPM) r)
    (+
      (+
        (ite (= r __flatten_5@121@01) $Perm.Write $Perm.No)
        (ite
          (= r (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
          (/ (to_real 1) (to_real 4))
          $Perm.No))
      (ite
        (and (img@102@01 r) (Seq_contains (Seq_range 0 P@92@01) (inv@101@01 r)))
        (- $Perm.Write (pTaken@125@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@138@01  $FPM) r))
  :qid |qp.resPrmSumDef21|)))
(assert (=>
  (Seq_contains (Seq_range 0 P@92@01) k@136@01)
  (and
    (Seq_contains (Seq_range 0 P@92@01) k@136@01)
    (or
      (not
        (=
          ($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) (Seq_index
            matrix@96@01
            (+ (* i@91@01 step@89@01) j@90@01)))
          k@136@01))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) (Seq_index
          matrix@96@01
          (+ (* i@91@01 step@89@01) j@90@01)))
        k@136@01)))))
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range 0 P@92@01) k@136@01))
  (Seq_contains (Seq_range 0 P@92@01) k@136@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (= r __flatten_5@121@01)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@127@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@127@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value (as sm@104@01  $FVF<Ref__Integer_value>) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@104@01  $FVF<Ref__Integer_value>) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@102@01 r) (Seq_contains (Seq_range 0 P@92@01) (inv@101@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@125@01 r)))
      false)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@138@01  $FPM) r)
    (+
      (+
        (ite (= r __flatten_5@121@01) $Perm.Write $Perm.No)
        (ite
          (= r (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
          (/ (to_real 1) (to_real 4))
          $Perm.No))
      (ite
        (and (img@102@01 r) (Seq_contains (Seq_range 0 P@92@01) (inv@101@01 r)))
        (- $Perm.Write (pTaken@125@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@138@01  $FPM) r))
  :qid |qp.resPrmSumDef21|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@136@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 P@92@01) k@136@01)
      (and
        (Seq_contains (Seq_range 0 P@92@01) k@136@01)
        (or
          (not
            (=
              ($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) (Seq_index
                matrix@96@01
                (+ (* i@91@01 step@89@01) j@90@01)))
              k@136@01))
          (=
            ($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) (Seq_index
              matrix@96@01
              (+ (* i@91@01 step@89@01) j@90@01)))
            k@136@01))))
    (or
      (not (Seq_contains (Seq_range 0 P@92@01) k@136@01))
      (Seq_contains (Seq_range 0 P@92@01) k@136@01)))
  :pattern ((Seq_contains (Seq_range 0 P@92@01) k@136@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 P@92@01) k@136@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@122@12@122@133-aux|)))
(assert (forall ((k@136@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 P@92@01) k@136@01)
      (and
        (Seq_contains (Seq_range 0 P@92@01) k@136@01)
        (or
          (not
            (=
              ($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) (Seq_index
                matrix@96@01
                (+ (* i@91@01 step@89@01) j@90@01)))
              k@136@01))
          (=
            ($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) (Seq_index
              matrix@96@01
              (+ (* i@91@01 step@89@01) j@90@01)))
            k@136@01))))
    (or
      (not (Seq_contains (Seq_range 0 P@92@01) k@136@01))
      (Seq_contains (Seq_range 0 P@92@01) k@136@01)))
  :pattern ((Seq_contains_trigger (Seq_range 0 P@92@01) k@136@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@122@12@122@133-aux|)))
(assert (forall ((k@136@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 P@92@01) k@136@01)
      (and
        (Seq_contains (Seq_range 0 P@92@01) k@136@01)
        (or
          (not
            (=
              ($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) (Seq_index
                matrix@96@01
                (+ (* i@91@01 step@89@01) j@90@01)))
              k@136@01))
          (=
            ($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) (Seq_index
              matrix@96@01
              (+ (* i@91@01 step@89@01) j@90@01)))
            k@136@01))))
    (or
      (not (Seq_contains (Seq_range 0 P@92@01) k@136@01))
      (Seq_contains (Seq_range 0 P@92@01) k@136@01)))
  :pattern ((Seq_index hist@95@01 k@136@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@122@12@122@133-aux|)))
(push) ; 3
(assert (not (forall ((k@136@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 P@92@01) k@136@01)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) (Seq_index
        hist@95@01
        k@136@01))
      (ite
        (=
          ($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) (Seq_index
            matrix@96@01
            (+ (* i@91@01 step@89@01) j@90@01)))
          k@136@01)
        1
        0)))
  :pattern ((Seq_contains (Seq_range 0 P@92@01) k@136@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 P@92@01) k@136@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 P@92@01) k@136@01))
  :pattern ((Seq_index hist@95@01 k@136@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@122@12@122@133|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((k@136@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 P@92@01) k@136@01)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) (Seq_index
        hist@95@01
        k@136@01))
      (ite
        (=
          ($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) (Seq_index
            matrix@96@01
            (+ (* i@91@01 step@89@01) j@90@01)))
          k@136@01)
        1
        0)))
  :pattern ((Seq_contains (Seq_range 0 P@92@01) k@136@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 P@92@01) k@136@01))
  :pattern ((Seq_index hist@95@01 k@136@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@122@12@122@133|)))
; [eval] matrix[i * step + j].Ref__Integer_value == old(matrix[i * step + j].Ref__Integer_value)
; [eval] matrix[i * step + j]
; [eval] i * step + j
; [eval] i * step
(push) ; 3
(assert (not (>= (+ (* i@91@01 step@89@01) j@90@01) 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r __flatten_5@121@01)
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value (as sm@127@01  $FVF<Ref__Integer_value>) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@127@01  $FVF<Ref__Integer_value>) r))
    :qid |qp.fvfValDef18|))
  (forall ((r $Ref)) (!
    (=>
      (= r (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value (as sm@104@01  $FVF<Ref__Integer_value>) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@104@01  $FVF<Ref__Integer_value>) r))
    :qid |qp.fvfValDef19|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@102@01 r) (Seq_contains (Seq_range 0 P@92@01) (inv@101@01 r)))
        (< $Perm.No (- $Perm.Write (pTaken@125@01 r)))
        false)
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))) r))
    :qid |qp.fvfValDef20|))))
(push) ; 3
(assert (not (<
  $Perm.No
  (+
    (+
      (ite
        (=
          (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01))
          __flatten_5@121@01)
        $Perm.Write
        $Perm.No)
      (ite
        (=
          (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01))
          (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
        (/ (to_real 1) (to_real 4))
        $Perm.No))
    (ite
      (and
        (img@102@01 (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
        (Seq_contains
          (Seq_range 0 P@92@01)
          (inv@101@01 (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))))
      (-
        $Perm.Write
        (pTaken@125@01 (Seq_index
          matrix@96@01
          (+ (* i@91@01 step@89@01) j@90@01))))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old(matrix[i * step + j].Ref__Integer_value)
; [eval] matrix[i * step + j]
; [eval] i * step + j
; [eval] i * step
(push) ; 3
(assert (not (>= (+ (* i@91@01 step@89@01) j@90@01) 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@102@01 r) (Seq_contains (Seq_range 0 P@92@01) (inv@101@01 r)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@105@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@105@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))) r))
    :qid |qp.fvfValDef12|))
  (forall ((r $Ref)) (!
    (=>
      (= r (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@105@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value (as sm@104@01  $FVF<Ref__Integer_value>) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@105@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@104@01  $FVF<Ref__Integer_value>) r))
    :qid |qp.fvfValDef13|))))
(push) ; 3
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@102@01 (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
        (Seq_contains
          (Seq_range 0 P@92@01)
          (inv@101@01 (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))))
      $Perm.Write
      $Perm.No)
    (ite
      (=
        (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01))
        (Seq_index matrix@96@01 (+ (* i@91@01 step@89@01) j@90@01)))
      (/ (to_real 1) (to_real 4))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (=
  ($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) (Seq_index
    matrix@96@01
    (+ (* i@91@01 step@89@01) j@90@01)))
  ($FVF.lookup_Ref__Integer_value (as sm@105@01  $FVF<Ref__Integer_value>) (Seq_index
    matrix@96@01
    (+ (* i@91@01 step@89@01) j@90@01))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_Ref__Integer_value (as sm@137@01  $FVF<Ref__Integer_value>) (Seq_index
    matrix@96@01
    (+ (* i@91@01 step@89@01) j@90@01)))
  ($FVF.lookup_Ref__Integer_value (as sm@105@01  $FVF<Ref__Integer_value>) (Seq_index
    matrix@96@01
    (+ (* i@91@01 step@89@01) j@90@01)))))
(pop) ; 2
(pop) ; 1
; ---------- Ref__histogram ----------
(declare-const diz@139@01 $Ref)
(declare-const M@140@01 Int)
(declare-const N@141@01 Int)
(declare-const step@142@01 Int)
(declare-const matrix@143@01 Seq<$Ref>)
(declare-const P@144@01 Int)
(declare-const hist@145@01 Seq<$Ref>)
(declare-const diz@146@01 $Ref)
(declare-const M@147@01 Int)
(declare-const N@148@01 Int)
(declare-const step@149@01 Int)
(declare-const matrix@150@01 Seq<$Ref>)
(declare-const P@151@01 Int)
(declare-const hist@152@01 Seq<$Ref>)
(push) ; 1
(declare-const $t@153@01 $Snap)
(assert (= $t@153@01 ($Snap.combine ($Snap.first $t@153@01) ($Snap.second $t@153@01))))
(assert (= ($Snap.first $t@153@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@146@01 $Ref.null)))
(assert (=
  ($Snap.second $t@153@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@153@01))
    ($Snap.second ($Snap.second $t@153@01)))))
(assert (= ($Snap.first ($Snap.second $t@153@01)) $Snap.unit))
; [eval] M > 0
(assert (> M@147@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@153@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@153@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@153@01))) $Snap.unit))
; [eval] N > 0
(assert (> N@148@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@153@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@153@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@153@01))))
  $Snap.unit))
; [eval] step >= N
(assert (>= step@149@01 N@148@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))
  $Snap.unit))
; [eval] P > 0
(assert (> P@151@01 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))
  $Snap.unit))
; [eval] N <= step
(assert (<= N@148@01 step@149@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))
  $Snap.unit))
; [eval] M * step <= |matrix|
; [eval] M * step
; [eval] |matrix|
(assert (<= (* M@147@01 step@149@01) (Seq_length matrix@150@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))
  $Snap.unit))
; [eval] (forall k: Int, j: Int :: { matrix[k], matrix[j] } k >= 0 && (k < |matrix| && (j >= 0 && (j < |matrix| && k != j))) ==> matrix[k] != matrix[j])
(declare-const k@154@01 Int)
(declare-const j@155@01 Int)
(push) ; 2
; [eval] k >= 0 && (k < |matrix| && (j >= 0 && (j < |matrix| && k != j))) ==> matrix[k] != matrix[j]
; [eval] k >= 0 && (k < |matrix| && (j >= 0 && (j < |matrix| && k != j)))
; [eval] k >= 0
(push) ; 3
; [then-branch: 46 | !(k@154@01 >= 0) | live]
; [else-branch: 46 | k@154@01 >= 0 | live]
(push) ; 4
; [then-branch: 46 | !(k@154@01 >= 0)]
(assert (not (>= k@154@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 46 | k@154@01 >= 0]
(assert (>= k@154@01 0))
; [eval] k < |matrix|
; [eval] |matrix|
(push) ; 5
; [then-branch: 47 | !(k@154@01 < |matrix@150@01|) | live]
; [else-branch: 47 | k@154@01 < |matrix@150@01| | live]
(push) ; 6
; [then-branch: 47 | !(k@154@01 < |matrix@150@01|)]
(assert (not (< k@154@01 (Seq_length matrix@150@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 47 | k@154@01 < |matrix@150@01|]
(assert (< k@154@01 (Seq_length matrix@150@01)))
; [eval] j >= 0
(push) ; 7
; [then-branch: 48 | !(j@155@01 >= 0) | live]
; [else-branch: 48 | j@155@01 >= 0 | live]
(push) ; 8
; [then-branch: 48 | !(j@155@01 >= 0)]
(assert (not (>= j@155@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 48 | j@155@01 >= 0]
(assert (>= j@155@01 0))
; [eval] j < |matrix|
; [eval] |matrix|
(push) ; 9
; [then-branch: 49 | !(j@155@01 < |matrix@150@01|) | live]
; [else-branch: 49 | j@155@01 < |matrix@150@01| | live]
(push) ; 10
; [then-branch: 49 | !(j@155@01 < |matrix@150@01|)]
(assert (not (< j@155@01 (Seq_length matrix@150@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 49 | j@155@01 < |matrix@150@01|]
(assert (< j@155@01 (Seq_length matrix@150@01)))
; [eval] k != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (< j@155@01 (Seq_length matrix@150@01))
  (not (< j@155@01 (Seq_length matrix@150@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@155@01 0)
  (and
    (>= j@155@01 0)
    (or
      (< j@155@01 (Seq_length matrix@150@01))
      (not (< j@155@01 (Seq_length matrix@150@01)))))))
(assert (or (>= j@155@01 0) (not (>= j@155@01 0))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@154@01 (Seq_length matrix@150@01))
  (and
    (< k@154@01 (Seq_length matrix@150@01))
    (=>
      (>= j@155@01 0)
      (and
        (>= j@155@01 0)
        (or
          (< j@155@01 (Seq_length matrix@150@01))
          (not (< j@155@01 (Seq_length matrix@150@01))))))
    (or (>= j@155@01 0) (not (>= j@155@01 0))))))
(assert (or
  (< k@154@01 (Seq_length matrix@150@01))
  (not (< k@154@01 (Seq_length matrix@150@01)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@154@01 0)
  (and
    (>= k@154@01 0)
    (=>
      (< k@154@01 (Seq_length matrix@150@01))
      (and
        (< k@154@01 (Seq_length matrix@150@01))
        (=>
          (>= j@155@01 0)
          (and
            (>= j@155@01 0)
            (or
              (< j@155@01 (Seq_length matrix@150@01))
              (not (< j@155@01 (Seq_length matrix@150@01))))))
        (or (>= j@155@01 0) (not (>= j@155@01 0)))))
    (or
      (< k@154@01 (Seq_length matrix@150@01))
      (not (< k@154@01 (Seq_length matrix@150@01)))))))
(assert (or (>= k@154@01 0) (not (>= k@154@01 0))))
(push) ; 3
; [then-branch: 50 | k@154@01 >= 0 && k@154@01 < |matrix@150@01| && j@155@01 >= 0 && j@155@01 < |matrix@150@01| && k@154@01 != j@155@01 | live]
; [else-branch: 50 | !(k@154@01 >= 0 && k@154@01 < |matrix@150@01| && j@155@01 >= 0 && j@155@01 < |matrix@150@01| && k@154@01 != j@155@01) | live]
(push) ; 4
; [then-branch: 50 | k@154@01 >= 0 && k@154@01 < |matrix@150@01| && j@155@01 >= 0 && j@155@01 < |matrix@150@01| && k@154@01 != j@155@01]
(assert (and
  (>= k@154@01 0)
  (and
    (< k@154@01 (Seq_length matrix@150@01))
    (and
      (>= j@155@01 0)
      (and (< j@155@01 (Seq_length matrix@150@01)) (not (= k@154@01 j@155@01)))))))
; [eval] matrix[k] != matrix[j]
; [eval] matrix[k]
; [eval] matrix[j]
(pop) ; 4
(push) ; 4
; [else-branch: 50 | !(k@154@01 >= 0 && k@154@01 < |matrix@150@01| && j@155@01 >= 0 && j@155@01 < |matrix@150@01| && k@154@01 != j@155@01)]
(assert (not
  (and
    (>= k@154@01 0)
    (and
      (< k@154@01 (Seq_length matrix@150@01))
      (and
        (>= j@155@01 0)
        (and (< j@155@01 (Seq_length matrix@150@01)) (not (= k@154@01 j@155@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (>= k@154@01 0)
    (and
      (< k@154@01 (Seq_length matrix@150@01))
      (and
        (>= j@155@01 0)
        (and (< j@155@01 (Seq_length matrix@150@01)) (not (= k@154@01 j@155@01))))))
  (and
    (>= k@154@01 0)
    (< k@154@01 (Seq_length matrix@150@01))
    (>= j@155@01 0)
    (< j@155@01 (Seq_length matrix@150@01))
    (not (= k@154@01 j@155@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@154@01 0)
      (and
        (< k@154@01 (Seq_length matrix@150@01))
        (and
          (>= j@155@01 0)
          (and
            (< j@155@01 (Seq_length matrix@150@01))
            (not (= k@154@01 j@155@01)))))))
  (and
    (>= k@154@01 0)
    (and
      (< k@154@01 (Seq_length matrix@150@01))
      (and
        (>= j@155@01 0)
        (and (< j@155@01 (Seq_length matrix@150@01)) (not (= k@154@01 j@155@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@154@01 Int) (j@155@01 Int)) (!
  (and
    (=>
      (>= k@154@01 0)
      (and
        (>= k@154@01 0)
        (=>
          (< k@154@01 (Seq_length matrix@150@01))
          (and
            (< k@154@01 (Seq_length matrix@150@01))
            (=>
              (>= j@155@01 0)
              (and
                (>= j@155@01 0)
                (or
                  (< j@155@01 (Seq_length matrix@150@01))
                  (not (< j@155@01 (Seq_length matrix@150@01))))))
            (or (>= j@155@01 0) (not (>= j@155@01 0)))))
        (or
          (< k@154@01 (Seq_length matrix@150@01))
          (not (< k@154@01 (Seq_length matrix@150@01))))))
    (or (>= k@154@01 0) (not (>= k@154@01 0)))
    (=>
      (and
        (>= k@154@01 0)
        (and
          (< k@154@01 (Seq_length matrix@150@01))
          (and
            (>= j@155@01 0)
            (and
              (< j@155@01 (Seq_length matrix@150@01))
              (not (= k@154@01 j@155@01))))))
      (and
        (>= k@154@01 0)
        (< k@154@01 (Seq_length matrix@150@01))
        (>= j@155@01 0)
        (< j@155@01 (Seq_length matrix@150@01))
        (not (= k@154@01 j@155@01))))
    (or
      (not
        (and
          (>= k@154@01 0)
          (and
            (< k@154@01 (Seq_length matrix@150@01))
            (and
              (>= j@155@01 0)
              (and
                (< j@155@01 (Seq_length matrix@150@01))
                (not (= k@154@01 j@155@01)))))))
      (and
        (>= k@154@01 0)
        (and
          (< k@154@01 (Seq_length matrix@150@01))
          (and
            (>= j@155@01 0)
            (and
              (< j@155@01 (Seq_length matrix@150@01))
              (not (= k@154@01 j@155@01))))))))
  :pattern ((Seq_index matrix@150@01 k@154@01) (Seq_index matrix@150@01 j@155@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@143@12@143@122-aux|)))
(assert (forall ((k@154@01 Int) (j@155@01 Int)) (!
  (=>
    (and
      (>= k@154@01 0)
      (and
        (< k@154@01 (Seq_length matrix@150@01))
        (and
          (>= j@155@01 0)
          (and
            (< j@155@01 (Seq_length matrix@150@01))
            (not (= k@154@01 j@155@01))))))
    (not
      (= (Seq_index matrix@150@01 k@154@01) (Seq_index matrix@150@01 j@155@01))))
  :pattern ((Seq_index matrix@150@01 k@154@01) (Seq_index matrix@150@01 j@155@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@143@12@143@122|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))))
(declare-const j1@156@01 Int)
(push) ; 2
; [eval] (j1 in [0..M * step)) && j1 % step < N
; [eval] (j1 in [0..M * step))
; [eval] [0..M * step)
; [eval] M * step
(push) ; 3
; [then-branch: 51 | !(j1@156@01 in [0..M@147@01 * step@149@01]) | live]
; [else-branch: 51 | j1@156@01 in [0..M@147@01 * step@149@01] | live]
(push) ; 4
; [then-branch: 51 | !(j1@156@01 in [0..M@147@01 * step@149@01])]
(assert (not (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j1@156@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 51 | j1@156@01 in [0..M@147@01 * step@149@01]]
(assert (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j1@156@01))
; [eval] j1 % step < N
; [eval] j1 % step
(push) ; 5
(assert (not (not (= step@149@01 0))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j1@156@01)
  (not (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j1@156@01))))
(assert (and
  (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j1@156@01)
  (< (mod j1@156@01 step@149@01) N@148@01)))
; [eval] matrix[j1]
(push) ; 3
(assert (not (>= j1@156@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< j1@156@01 (Seq_length matrix@150@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@157@01 ($Ref) Int)
(declare-fun img@158@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j1@156@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j1@156@01)
      (< (mod j1@156@01 step@149@01) N@148@01))
    (or
      (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j1@156@01)
      (not (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j1@156@01))))
  :pattern ((Seq_index matrix@150@01 j1@156@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((j11@156@01 Int) (j12@156@01 Int)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j11@156@01)
        (< (mod j11@156@01 step@149@01) N@148@01))
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j12@156@01)
        (< (mod j12@156@01 step@149@01) N@148@01))
      (=
        (Seq_index matrix@150@01 j11@156@01)
        (Seq_index matrix@150@01 j12@156@01)))
    (= j11@156@01 j12@156@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j1@156@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j1@156@01)
      (< (mod j1@156@01 step@149@01) N@148@01))
    (and
      (= (inv@157@01 (Seq_index matrix@150@01 j1@156@01)) j1@156@01)
      (img@158@01 (Seq_index matrix@150@01 j1@156@01))))
  :pattern ((Seq_index matrix@150@01 j1@156@01))
  :qid |quant-u-8589|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@158@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
        (< (mod (inv@157@01 r) step@149@01) N@148@01)))
    (= (Seq_index matrix@150@01 (inv@157@01 r)) r))
  :pattern ((inv@157@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j1@156@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j1@156@01)
      (< (mod j1@156@01 step@149@01) N@148@01))
    (not (= (Seq_index matrix@150@01 j1@156@01) $Ref.null)))
  :pattern ((Seq_index matrix@150@01 j1@156@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))
  $Snap.unit))
; [eval] N <= step
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))))
  $Snap.unit))
; [eval] (forall k_fresh_rw_0: Int :: { matrix[k_fresh_rw_0] } (k_fresh_rw_0 in [0..M * step)) && k_fresh_rw_0 % step < N ==> (matrix[k_fresh_rw_0].Ref__Integer_value in [0..P)))
(declare-const k_fresh_rw_0@159@01 Int)
(push) ; 2
; [eval] (k_fresh_rw_0 in [0..M * step)) && k_fresh_rw_0 % step < N ==> (matrix[k_fresh_rw_0].Ref__Integer_value in [0..P))
; [eval] (k_fresh_rw_0 in [0..M * step)) && k_fresh_rw_0 % step < N
; [eval] (k_fresh_rw_0 in [0..M * step))
; [eval] [0..M * step)
; [eval] M * step
(push) ; 3
; [then-branch: 52 | !(k_fresh_rw_0@159@01 in [0..M@147@01 * step@149@01]) | live]
; [else-branch: 52 | k_fresh_rw_0@159@01 in [0..M@147@01 * step@149@01] | live]
(push) ; 4
; [then-branch: 52 | !(k_fresh_rw_0@159@01 in [0..M@147@01 * step@149@01])]
(assert (not (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@159@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 52 | k_fresh_rw_0@159@01 in [0..M@147@01 * step@149@01]]
(assert (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@159@01))
; [eval] k_fresh_rw_0 % step < N
; [eval] k_fresh_rw_0 % step
(push) ; 5
(assert (not (not (= step@149@01 0))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@159@01)
  (not (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@159@01))))
(push) ; 3
; [then-branch: 53 | k_fresh_rw_0@159@01 in [0..M@147@01 * step@149@01] && k_fresh_rw_0@159@01 % step@149@01 < N@148@01 | live]
; [else-branch: 53 | !(k_fresh_rw_0@159@01 in [0..M@147@01 * step@149@01] && k_fresh_rw_0@159@01 % step@149@01 < N@148@01) | live]
(push) ; 4
; [then-branch: 53 | k_fresh_rw_0@159@01 in [0..M@147@01 * step@149@01] && k_fresh_rw_0@159@01 % step@149@01 < N@148@01]
(assert (and
  (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@159@01)
  (< (mod k_fresh_rw_0@159@01 step@149@01) N@148@01)))
; [eval] (matrix[k_fresh_rw_0].Ref__Integer_value in [0..P))
; [eval] [0..P)
; [eval] matrix[k_fresh_rw_0]
(push) ; 5
(assert (not (>= k_fresh_rw_0@159@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< k_fresh_rw_0@159@01 (Seq_length matrix@150@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (and
  (img@158@01 (Seq_index matrix@150@01 k_fresh_rw_0@159@01))
  (and
    (Seq_contains
      (Seq_range 0 (* M@147@01 step@149@01))
      (inv@157@01 (Seq_index matrix@150@01 k_fresh_rw_0@159@01)))
    (<
      (mod
        (inv@157@01 (Seq_index matrix@150@01 k_fresh_rw_0@159@01))
        step@149@01)
      N@148@01)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 53 | !(k_fresh_rw_0@159@01 in [0..M@147@01 * step@149@01] && k_fresh_rw_0@159@01 % step@149@01 < N@148@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@159@01)
    (< (mod k_fresh_rw_0@159@01 step@149@01) N@148@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@159@01)
      (< (mod k_fresh_rw_0@159@01 step@149@01) N@148@01)))
  (and
    (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@159@01)
    (< (mod k_fresh_rw_0@159@01 step@149@01) N@148@01))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k_fresh_rw_0@159@01 Int)) (!
  (and
    (or
      (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@159@01)
      (not
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@159@01)))
    (or
      (not
        (and
          (Seq_contains
            (Seq_range 0 (* M@147@01 step@149@01))
            k_fresh_rw_0@159@01)
          (< (mod k_fresh_rw_0@159@01 step@149@01) N@148@01)))
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@159@01)
        (< (mod k_fresh_rw_0@159@01 step@149@01) N@148@01))))
  :pattern ((Seq_index matrix@150@01 k_fresh_rw_0@159@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@146@12@149@56-aux|)))
(assert (forall ((k_fresh_rw_0@159@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@159@01)
      (< (mod k_fresh_rw_0@159@01 step@149@01) N@148@01))
    (Seq_contains
      (Seq_range 0 P@151@01)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) (Seq_index
        matrix@150@01
        k_fresh_rw_0@159@01))))
  :pattern ((Seq_index matrix@150@01 k_fresh_rw_0@159@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@146@12@149@56|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))))
  $Snap.unit))
; [eval] P <= |hist|
; [eval] |hist|
(assert (<= P@151@01 (Seq_length hist@152@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))))))
  $Snap.unit))
; [eval] (forall k: Int, j: Int :: { hist[k], hist[j] } k >= 0 && (k < |hist| && (j >= 0 && (j < |hist| && k != j))) ==> hist[k] != hist[j])
(declare-const k@160@01 Int)
(declare-const j@161@01 Int)
(push) ; 2
; [eval] k >= 0 && (k < |hist| && (j >= 0 && (j < |hist| && k != j))) ==> hist[k] != hist[j]
; [eval] k >= 0 && (k < |hist| && (j >= 0 && (j < |hist| && k != j)))
; [eval] k >= 0
(push) ; 3
; [then-branch: 54 | !(k@160@01 >= 0) | live]
; [else-branch: 54 | k@160@01 >= 0 | live]
(push) ; 4
; [then-branch: 54 | !(k@160@01 >= 0)]
(assert (not (>= k@160@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 54 | k@160@01 >= 0]
(assert (>= k@160@01 0))
; [eval] k < |hist|
; [eval] |hist|
(push) ; 5
; [then-branch: 55 | !(k@160@01 < |hist@152@01|) | live]
; [else-branch: 55 | k@160@01 < |hist@152@01| | live]
(push) ; 6
; [then-branch: 55 | !(k@160@01 < |hist@152@01|)]
(assert (not (< k@160@01 (Seq_length hist@152@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 55 | k@160@01 < |hist@152@01|]
(assert (< k@160@01 (Seq_length hist@152@01)))
; [eval] j >= 0
(push) ; 7
; [then-branch: 56 | !(j@161@01 >= 0) | live]
; [else-branch: 56 | j@161@01 >= 0 | live]
(push) ; 8
; [then-branch: 56 | !(j@161@01 >= 0)]
(assert (not (>= j@161@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 56 | j@161@01 >= 0]
(assert (>= j@161@01 0))
; [eval] j < |hist|
; [eval] |hist|
(push) ; 9
; [then-branch: 57 | !(j@161@01 < |hist@152@01|) | live]
; [else-branch: 57 | j@161@01 < |hist@152@01| | live]
(push) ; 10
; [then-branch: 57 | !(j@161@01 < |hist@152@01|)]
(assert (not (< j@161@01 (Seq_length hist@152@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 57 | j@161@01 < |hist@152@01|]
(assert (< j@161@01 (Seq_length hist@152@01)))
; [eval] k != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (< j@161@01 (Seq_length hist@152@01))
  (not (< j@161@01 (Seq_length hist@152@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@161@01 0)
  (and
    (>= j@161@01 0)
    (or
      (< j@161@01 (Seq_length hist@152@01))
      (not (< j@161@01 (Seq_length hist@152@01)))))))
(assert (or (>= j@161@01 0) (not (>= j@161@01 0))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@160@01 (Seq_length hist@152@01))
  (and
    (< k@160@01 (Seq_length hist@152@01))
    (=>
      (>= j@161@01 0)
      (and
        (>= j@161@01 0)
        (or
          (< j@161@01 (Seq_length hist@152@01))
          (not (< j@161@01 (Seq_length hist@152@01))))))
    (or (>= j@161@01 0) (not (>= j@161@01 0))))))
(assert (or
  (< k@160@01 (Seq_length hist@152@01))
  (not (< k@160@01 (Seq_length hist@152@01)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@160@01 0)
  (and
    (>= k@160@01 0)
    (=>
      (< k@160@01 (Seq_length hist@152@01))
      (and
        (< k@160@01 (Seq_length hist@152@01))
        (=>
          (>= j@161@01 0)
          (and
            (>= j@161@01 0)
            (or
              (< j@161@01 (Seq_length hist@152@01))
              (not (< j@161@01 (Seq_length hist@152@01))))))
        (or (>= j@161@01 0) (not (>= j@161@01 0)))))
    (or
      (< k@160@01 (Seq_length hist@152@01))
      (not (< k@160@01 (Seq_length hist@152@01)))))))
(assert (or (>= k@160@01 0) (not (>= k@160@01 0))))
(push) ; 3
; [then-branch: 58 | k@160@01 >= 0 && k@160@01 < |hist@152@01| && j@161@01 >= 0 && j@161@01 < |hist@152@01| && k@160@01 != j@161@01 | live]
; [else-branch: 58 | !(k@160@01 >= 0 && k@160@01 < |hist@152@01| && j@161@01 >= 0 && j@161@01 < |hist@152@01| && k@160@01 != j@161@01) | live]
(push) ; 4
; [then-branch: 58 | k@160@01 >= 0 && k@160@01 < |hist@152@01| && j@161@01 >= 0 && j@161@01 < |hist@152@01| && k@160@01 != j@161@01]
(assert (and
  (>= k@160@01 0)
  (and
    (< k@160@01 (Seq_length hist@152@01))
    (and
      (>= j@161@01 0)
      (and (< j@161@01 (Seq_length hist@152@01)) (not (= k@160@01 j@161@01)))))))
; [eval] hist[k] != hist[j]
; [eval] hist[k]
; [eval] hist[j]
(pop) ; 4
(push) ; 4
; [else-branch: 58 | !(k@160@01 >= 0 && k@160@01 < |hist@152@01| && j@161@01 >= 0 && j@161@01 < |hist@152@01| && k@160@01 != j@161@01)]
(assert (not
  (and
    (>= k@160@01 0)
    (and
      (< k@160@01 (Seq_length hist@152@01))
      (and
        (>= j@161@01 0)
        (and (< j@161@01 (Seq_length hist@152@01)) (not (= k@160@01 j@161@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (>= k@160@01 0)
    (and
      (< k@160@01 (Seq_length hist@152@01))
      (and
        (>= j@161@01 0)
        (and (< j@161@01 (Seq_length hist@152@01)) (not (= k@160@01 j@161@01))))))
  (and
    (>= k@160@01 0)
    (< k@160@01 (Seq_length hist@152@01))
    (>= j@161@01 0)
    (< j@161@01 (Seq_length hist@152@01))
    (not (= k@160@01 j@161@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@160@01 0)
      (and
        (< k@160@01 (Seq_length hist@152@01))
        (and
          (>= j@161@01 0)
          (and (< j@161@01 (Seq_length hist@152@01)) (not (= k@160@01 j@161@01)))))))
  (and
    (>= k@160@01 0)
    (and
      (< k@160@01 (Seq_length hist@152@01))
      (and
        (>= j@161@01 0)
        (and (< j@161@01 (Seq_length hist@152@01)) (not (= k@160@01 j@161@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@160@01 Int) (j@161@01 Int)) (!
  (and
    (=>
      (>= k@160@01 0)
      (and
        (>= k@160@01 0)
        (=>
          (< k@160@01 (Seq_length hist@152@01))
          (and
            (< k@160@01 (Seq_length hist@152@01))
            (=>
              (>= j@161@01 0)
              (and
                (>= j@161@01 0)
                (or
                  (< j@161@01 (Seq_length hist@152@01))
                  (not (< j@161@01 (Seq_length hist@152@01))))))
            (or (>= j@161@01 0) (not (>= j@161@01 0)))))
        (or
          (< k@160@01 (Seq_length hist@152@01))
          (not (< k@160@01 (Seq_length hist@152@01))))))
    (or (>= k@160@01 0) (not (>= k@160@01 0)))
    (=>
      (and
        (>= k@160@01 0)
        (and
          (< k@160@01 (Seq_length hist@152@01))
          (and
            (>= j@161@01 0)
            (and
              (< j@161@01 (Seq_length hist@152@01))
              (not (= k@160@01 j@161@01))))))
      (and
        (>= k@160@01 0)
        (< k@160@01 (Seq_length hist@152@01))
        (>= j@161@01 0)
        (< j@161@01 (Seq_length hist@152@01))
        (not (= k@160@01 j@161@01))))
    (or
      (not
        (and
          (>= k@160@01 0)
          (and
            (< k@160@01 (Seq_length hist@152@01))
            (and
              (>= j@161@01 0)
              (and
                (< j@161@01 (Seq_length hist@152@01))
                (not (= k@160@01 j@161@01)))))))
      (and
        (>= k@160@01 0)
        (and
          (< k@160@01 (Seq_length hist@152@01))
          (and
            (>= j@161@01 0)
            (and
              (< j@161@01 (Seq_length hist@152@01))
              (not (= k@160@01 j@161@01))))))))
  :pattern ((Seq_index hist@152@01 k@160@01) (Seq_index hist@152@01 j@161@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@151@12@151@114-aux|)))
(assert (forall ((k@160@01 Int) (j@161@01 Int)) (!
  (=>
    (and
      (>= k@160@01 0)
      (and
        (< k@160@01 (Seq_length hist@152@01))
        (and
          (>= j@161@01 0)
          (and (< j@161@01 (Seq_length hist@152@01)) (not (= k@160@01 j@161@01))))))
    (not (= (Seq_index hist@152@01 k@160@01) (Seq_index hist@152@01 j@161@01))))
  :pattern ((Seq_index hist@152@01 k@160@01) (Seq_index hist@152@01 j@161@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@151@12@151@114|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))))))
  $Snap.unit))
; [eval] (forall k: Int, j: Int :: { matrix[k], matrix[j] } k >= 0 && (k < |matrix| && (j >= 0 && (j < |matrix| && k != j))) ==> matrix[k] != matrix[j])
(declare-const k@162@01 Int)
(declare-const j@163@01 Int)
(push) ; 2
; [eval] k >= 0 && (k < |matrix| && (j >= 0 && (j < |matrix| && k != j))) ==> matrix[k] != matrix[j]
; [eval] k >= 0 && (k < |matrix| && (j >= 0 && (j < |matrix| && k != j)))
; [eval] k >= 0
(push) ; 3
; [then-branch: 59 | !(k@162@01 >= 0) | live]
; [else-branch: 59 | k@162@01 >= 0 | live]
(push) ; 4
; [then-branch: 59 | !(k@162@01 >= 0)]
(assert (not (>= k@162@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 59 | k@162@01 >= 0]
(assert (>= k@162@01 0))
; [eval] k < |matrix|
; [eval] |matrix|
(push) ; 5
; [then-branch: 60 | !(k@162@01 < |matrix@150@01|) | live]
; [else-branch: 60 | k@162@01 < |matrix@150@01| | live]
(push) ; 6
; [then-branch: 60 | !(k@162@01 < |matrix@150@01|)]
(assert (not (< k@162@01 (Seq_length matrix@150@01))))
(pop) ; 6
(push) ; 6
; [else-branch: 60 | k@162@01 < |matrix@150@01|]
(assert (< k@162@01 (Seq_length matrix@150@01)))
; [eval] j >= 0
(push) ; 7
; [then-branch: 61 | !(j@163@01 >= 0) | live]
; [else-branch: 61 | j@163@01 >= 0 | live]
(push) ; 8
; [then-branch: 61 | !(j@163@01 >= 0)]
(assert (not (>= j@163@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 61 | j@163@01 >= 0]
(assert (>= j@163@01 0))
; [eval] j < |matrix|
; [eval] |matrix|
(push) ; 9
; [then-branch: 62 | !(j@163@01 < |matrix@150@01|) | live]
; [else-branch: 62 | j@163@01 < |matrix@150@01| | live]
(push) ; 10
; [then-branch: 62 | !(j@163@01 < |matrix@150@01|)]
(assert (not (< j@163@01 (Seq_length matrix@150@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 62 | j@163@01 < |matrix@150@01|]
(assert (< j@163@01 (Seq_length matrix@150@01)))
; [eval] k != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (< j@163@01 (Seq_length matrix@150@01))
  (not (< j@163@01 (Seq_length matrix@150@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@163@01 0)
  (and
    (>= j@163@01 0)
    (or
      (< j@163@01 (Seq_length matrix@150@01))
      (not (< j@163@01 (Seq_length matrix@150@01)))))))
(assert (or (>= j@163@01 0) (not (>= j@163@01 0))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@162@01 (Seq_length matrix@150@01))
  (and
    (< k@162@01 (Seq_length matrix@150@01))
    (=>
      (>= j@163@01 0)
      (and
        (>= j@163@01 0)
        (or
          (< j@163@01 (Seq_length matrix@150@01))
          (not (< j@163@01 (Seq_length matrix@150@01))))))
    (or (>= j@163@01 0) (not (>= j@163@01 0))))))
(assert (or
  (< k@162@01 (Seq_length matrix@150@01))
  (not (< k@162@01 (Seq_length matrix@150@01)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@162@01 0)
  (and
    (>= k@162@01 0)
    (=>
      (< k@162@01 (Seq_length matrix@150@01))
      (and
        (< k@162@01 (Seq_length matrix@150@01))
        (=>
          (>= j@163@01 0)
          (and
            (>= j@163@01 0)
            (or
              (< j@163@01 (Seq_length matrix@150@01))
              (not (< j@163@01 (Seq_length matrix@150@01))))))
        (or (>= j@163@01 0) (not (>= j@163@01 0)))))
    (or
      (< k@162@01 (Seq_length matrix@150@01))
      (not (< k@162@01 (Seq_length matrix@150@01)))))))
(assert (or (>= k@162@01 0) (not (>= k@162@01 0))))
(push) ; 3
; [then-branch: 63 | k@162@01 >= 0 && k@162@01 < |matrix@150@01| && j@163@01 >= 0 && j@163@01 < |matrix@150@01| && k@162@01 != j@163@01 | live]
; [else-branch: 63 | !(k@162@01 >= 0 && k@162@01 < |matrix@150@01| && j@163@01 >= 0 && j@163@01 < |matrix@150@01| && k@162@01 != j@163@01) | live]
(push) ; 4
; [then-branch: 63 | k@162@01 >= 0 && k@162@01 < |matrix@150@01| && j@163@01 >= 0 && j@163@01 < |matrix@150@01| && k@162@01 != j@163@01]
(assert (and
  (>= k@162@01 0)
  (and
    (< k@162@01 (Seq_length matrix@150@01))
    (and
      (>= j@163@01 0)
      (and (< j@163@01 (Seq_length matrix@150@01)) (not (= k@162@01 j@163@01)))))))
; [eval] matrix[k] != matrix[j]
; [eval] matrix[k]
; [eval] matrix[j]
(pop) ; 4
(push) ; 4
; [else-branch: 63 | !(k@162@01 >= 0 && k@162@01 < |matrix@150@01| && j@163@01 >= 0 && j@163@01 < |matrix@150@01| && k@162@01 != j@163@01)]
(assert (not
  (and
    (>= k@162@01 0)
    (and
      (< k@162@01 (Seq_length matrix@150@01))
      (and
        (>= j@163@01 0)
        (and (< j@163@01 (Seq_length matrix@150@01)) (not (= k@162@01 j@163@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (>= k@162@01 0)
    (and
      (< k@162@01 (Seq_length matrix@150@01))
      (and
        (>= j@163@01 0)
        (and (< j@163@01 (Seq_length matrix@150@01)) (not (= k@162@01 j@163@01))))))
  (and
    (>= k@162@01 0)
    (< k@162@01 (Seq_length matrix@150@01))
    (>= j@163@01 0)
    (< j@163@01 (Seq_length matrix@150@01))
    (not (= k@162@01 j@163@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@162@01 0)
      (and
        (< k@162@01 (Seq_length matrix@150@01))
        (and
          (>= j@163@01 0)
          (and
            (< j@163@01 (Seq_length matrix@150@01))
            (not (= k@162@01 j@163@01)))))))
  (and
    (>= k@162@01 0)
    (and
      (< k@162@01 (Seq_length matrix@150@01))
      (and
        (>= j@163@01 0)
        (and (< j@163@01 (Seq_length matrix@150@01)) (not (= k@162@01 j@163@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@162@01 Int) (j@163@01 Int)) (!
  (and
    (=>
      (>= k@162@01 0)
      (and
        (>= k@162@01 0)
        (=>
          (< k@162@01 (Seq_length matrix@150@01))
          (and
            (< k@162@01 (Seq_length matrix@150@01))
            (=>
              (>= j@163@01 0)
              (and
                (>= j@163@01 0)
                (or
                  (< j@163@01 (Seq_length matrix@150@01))
                  (not (< j@163@01 (Seq_length matrix@150@01))))))
            (or (>= j@163@01 0) (not (>= j@163@01 0)))))
        (or
          (< k@162@01 (Seq_length matrix@150@01))
          (not (< k@162@01 (Seq_length matrix@150@01))))))
    (or (>= k@162@01 0) (not (>= k@162@01 0)))
    (=>
      (and
        (>= k@162@01 0)
        (and
          (< k@162@01 (Seq_length matrix@150@01))
          (and
            (>= j@163@01 0)
            (and
              (< j@163@01 (Seq_length matrix@150@01))
              (not (= k@162@01 j@163@01))))))
      (and
        (>= k@162@01 0)
        (< k@162@01 (Seq_length matrix@150@01))
        (>= j@163@01 0)
        (< j@163@01 (Seq_length matrix@150@01))
        (not (= k@162@01 j@163@01))))
    (or
      (not
        (and
          (>= k@162@01 0)
          (and
            (< k@162@01 (Seq_length matrix@150@01))
            (and
              (>= j@163@01 0)
              (and
                (< j@163@01 (Seq_length matrix@150@01))
                (not (= k@162@01 j@163@01)))))))
      (and
        (>= k@162@01 0)
        (and
          (< k@162@01 (Seq_length matrix@150@01))
          (and
            (>= j@163@01 0)
            (and
              (< j@163@01 (Seq_length matrix@150@01))
              (not (= k@162@01 j@163@01))))))))
  :pattern ((Seq_index matrix@150@01 k@162@01) (Seq_index matrix@150@01 j@163@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@152@12@152@122-aux|)))
(assert (forall ((k@162@01 Int) (j@163@01 Int)) (!
  (=>
    (and
      (>= k@162@01 0)
      (and
        (< k@162@01 (Seq_length matrix@150@01))
        (and
          (>= j@163@01 0)
          (and
            (< j@163@01 (Seq_length matrix@150@01))
            (not (= k@162@01 j@163@01))))))
    (not
      (= (Seq_index matrix@150@01 k@162@01) (Seq_index matrix@150@01 j@163@01))))
  :pattern ((Seq_index matrix@150@01 k@162@01) (Seq_index matrix@150@01 j@163@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@152@12@152@122|)))
(declare-const i1@164@01 Int)
(push) ; 2
; [eval] (i1 in [0..P))
; [eval] [0..P)
(assert (Seq_contains (Seq_range 0 P@151@01) i1@164@01))
; [eval] hist[i1]
(push) ; 3
(assert (not (>= i1@164@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i1@164@01 (Seq_length hist@152@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@165@01 ($Ref) Int)
(declare-fun img@166@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i11@164@01 Int) (i12@164@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 P@151@01) i11@164@01)
      (Seq_contains (Seq_range 0 P@151@01) i12@164@01)
      (= (Seq_index hist@152@01 i11@164@01) (Seq_index hist@152@01 i12@164@01)))
    (= i11@164@01 i12@164@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i1@164@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 P@151@01) i1@164@01)
    (and
      (= (inv@165@01 (Seq_index hist@152@01 i1@164@01)) i1@164@01)
      (img@166@01 (Seq_index hist@152@01 i1@164@01))))
  :pattern ((Seq_index hist@152@01 i1@164@01))
  :qid |quant-u-8591|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@166@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@165@01 r)))
    (= (Seq_index hist@152@01 (inv@165@01 r)) r))
  :pattern ((inv@165@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i1@164@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 P@151@01) i1@164@01)
    (not (= (Seq_index hist@152@01 i1@164@01) $Ref.null)))
  :pattern ((Seq_index hist@152@01 i1@164@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index hist@152@01 i1@164@01) (Seq_index matrix@150@01 j1@156@01))
    (=
      (and (img@166@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@165@01 r)))
      (and
        (img@158@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
          (< (mod (inv@157@01 r) step@149@01) N@148@01)))))
  
  :qid |quant-u-8592|))))
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
(declare-const $t@167@01 $Snap)
(assert (= $t@167@01 ($Snap.combine ($Snap.first $t@167@01) ($Snap.second $t@167@01))))
(assert (= ($Snap.first $t@167@01) $Snap.unit))
; [eval] M > 0
(assert (=
  ($Snap.second $t@167@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@167@01))
    ($Snap.second ($Snap.second $t@167@01)))))
(assert (= ($Snap.first ($Snap.second $t@167@01)) $Snap.unit))
; [eval] N > 0
(assert (=
  ($Snap.second ($Snap.second $t@167@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@167@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@167@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@167@01))) $Snap.unit))
; [eval] step >= N
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@167@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@167@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@167@01))))
  $Snap.unit))
; [eval] P > 0
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01)))))
  $Snap.unit))
; [eval] N <= step
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01)))))))))
(declare-const j1@168@01 Int)
(push) ; 3
; [eval] (j1 in [0..M * step)) && j1 % step < N
; [eval] (j1 in [0..M * step))
; [eval] [0..M * step)
; [eval] M * step
(push) ; 4
; [then-branch: 64 | !(j1@168@01 in [0..M@147@01 * step@149@01]) | live]
; [else-branch: 64 | j1@168@01 in [0..M@147@01 * step@149@01] | live]
(push) ; 5
; [then-branch: 64 | !(j1@168@01 in [0..M@147@01 * step@149@01])]
(assert (not (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j1@168@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 64 | j1@168@01 in [0..M@147@01 * step@149@01]]
(assert (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j1@168@01))
; [eval] j1 % step < N
; [eval] j1 % step
(push) ; 6
(assert (not (not (= step@149@01 0))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j1@168@01)
  (not (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j1@168@01))))
(assert (and
  (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j1@168@01)
  (< (mod j1@168@01 step@149@01) N@148@01)))
; [eval] matrix[j1]
(push) ; 4
(assert (not (>= j1@168@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j1@168@01 (Seq_length matrix@150@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@169@01 ($Ref) Int)
(declare-fun img@170@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j1@168@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j1@168@01)
      (< (mod j1@168@01 step@149@01) N@148@01))
    (or
      (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j1@168@01)
      (not (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j1@168@01))))
  :pattern ((Seq_index matrix@150@01 j1@168@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j11@168@01 Int) (j12@168@01 Int)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j11@168@01)
        (< (mod j11@168@01 step@149@01) N@148@01))
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j12@168@01)
        (< (mod j12@168@01 step@149@01) N@148@01))
      (=
        (Seq_index matrix@150@01 j11@168@01)
        (Seq_index matrix@150@01 j12@168@01)))
    (= j11@168@01 j12@168@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j1@168@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j1@168@01)
      (< (mod j1@168@01 step@149@01) N@148@01))
    (and
      (= (inv@169@01 (Seq_index matrix@150@01 j1@168@01)) j1@168@01)
      (img@170@01 (Seq_index matrix@150@01 j1@168@01))))
  :pattern ((Seq_index matrix@150@01 j1@168@01))
  :qid |quant-u-8594|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@170@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@169@01 r))
        (< (mod (inv@169@01 r) step@149@01) N@148@01)))
    (= (Seq_index matrix@150@01 (inv@169@01 r)) r))
  :pattern ((inv@169@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j1@168@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j1@168@01)
      (< (mod j1@168@01 step@149@01) N@148@01))
    (not (= (Seq_index matrix@150@01 j1@168@01) $Ref.null)))
  :pattern ((Seq_index matrix@150@01 j1@168@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01))))))))))
(declare-const i1@171@01 Int)
(push) ; 3
; [eval] (i1 in [0..P))
; [eval] [0..P)
(assert (Seq_contains (Seq_range 0 P@151@01) i1@171@01))
; [eval] hist[i1]
(push) ; 4
(assert (not (>= i1@171@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i1@171@01 (Seq_length hist@152@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@172@01 ($Ref) Int)
(declare-fun img@173@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i11@171@01 Int) (i12@171@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 P@151@01) i11@171@01)
      (Seq_contains (Seq_range 0 P@151@01) i12@171@01)
      (= (Seq_index hist@152@01 i11@171@01) (Seq_index hist@152@01 i12@171@01)))
    (= i11@171@01 i12@171@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i1@171@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 P@151@01) i1@171@01)
    (and
      (= (inv@172@01 (Seq_index hist@152@01 i1@171@01)) i1@171@01)
      (img@173@01 (Seq_index hist@152@01 i1@171@01))))
  :pattern ((Seq_index hist@152@01 i1@171@01))
  :qid |quant-u-8596|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@173@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@172@01 r)))
    (= (Seq_index hist@152@01 (inv@172@01 r)) r))
  :pattern ((inv@172@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i1@171@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 P@151@01) i1@171@01)
    (not (= (Seq_index hist@152@01 i1@171@01) $Ref.null)))
  :pattern ((Seq_index hist@152@01 i1@171@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index hist@152@01 i1@171@01) (Seq_index matrix@150@01 j1@168@01))
    (=
      (and (img@173@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@172@01 r)))
      (and
        (img@170@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@169@01 r))
          (< (mod (inv@169@01 r) step@149@01) N@148@01)))))
  
  :qid |quant-u-8597|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01))))))))
  $Snap.unit))
; [eval] (forall k: Int :: { (k in [0..P)) } { hist[k] } (k in [0..P)) ==> hist[k].Ref__Integer_value == count_square(0, 0, N, step, 0, M * step, matrix, k))
(declare-const k@174@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (k in [0..P)) ==> hist[k].Ref__Integer_value == count_square(0, 0, N, step, 0, M * step, matrix, k)
; [eval] (k in [0..P))
; [eval] [0..P)
(push) ; 4
; [then-branch: 65 | k@174@01 in [0..P@151@01] | live]
; [else-branch: 65 | !(k@174@01 in [0..P@151@01]) | live]
(push) ; 5
; [then-branch: 65 | k@174@01 in [0..P@151@01]]
(assert (Seq_contains (Seq_range 0 P@151@01) k@174@01))
; [eval] hist[k].Ref__Integer_value == count_square(0, 0, N, step, 0, M * step, matrix, k)
; [eval] hist[k]
(push) ; 6
(assert (not (>= k@174@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k@174@01 (Seq_length hist@152@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@175@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@170@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@169@01 r))
        (< (mod (inv@169@01 r) step@149@01) N@148@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@175@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@175@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01))))))) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@173@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@172@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@175@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@175@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01)))))))) r))
  :qid |qp.fvfValDef23|)))
(declare-const pm@176@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@176@01  $FPM) r)
    (+
      (ite
        (and
          (img@170@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@169@01 r))
            (< (mod (inv@169@01 r) step@149@01) N@148@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (ite
        (and (img@173@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@172@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@176@01  $FPM) r))
  :qid |qp.resPrmSumDef24|)))
(push) ; 6
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@176@01  $FPM) (Seq_index
    hist@152@01
    k@174@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] count_square(0, 0, N, step, 0, M * step, matrix, k)
; [eval] M * step
(push) ; 6
; [eval] 0 <= lo
; [eval] lo <= hi
(push) ; 7
(assert (not (<= 0 N@148@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 N@148@01))
; [eval] hi <= step
; [eval] step > 0
(push) ; 7
(assert (not (> step@149@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (> step@149@01 0))
; [eval] 0 <= min
; [eval] min <= i
; [eval] i <= max
(push) ; 7
(assert (not (<= 0 (* M@147@01 step@149@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (* M@147@01 step@149@01)))
; [eval] max <= |ar|
; [eval] |ar|
; [eval] (forall k: Int, j: Int ::k >= 0 && (k < |ar| && (j >= 0 && (j < |ar| && k != j))) ==> ar[k] != ar[j])
(declare-const k@177@01 Int)
(declare-const j@178@01 Int)
(push) ; 7
; [eval] k >= 0 && (k < |ar| && (j >= 0 && (j < |ar| && k != j))) ==> ar[k] != ar[j]
; [eval] k >= 0 && (k < |ar| && (j >= 0 && (j < |ar| && k != j)))
; [eval] k >= 0
(push) ; 8
; [then-branch: 66 | !(k@177@01 >= 0) | live]
; [else-branch: 66 | k@177@01 >= 0 | live]
(push) ; 9
; [then-branch: 66 | !(k@177@01 >= 0)]
(assert (not (>= k@177@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 66 | k@177@01 >= 0]
(assert (>= k@177@01 0))
; [eval] k < |ar|
; [eval] |ar|
(push) ; 10
; [then-branch: 67 | !(k@177@01 < |matrix@150@01|) | live]
; [else-branch: 67 | k@177@01 < |matrix@150@01| | live]
(push) ; 11
; [then-branch: 67 | !(k@177@01 < |matrix@150@01|)]
(assert (not (< k@177@01 (Seq_length matrix@150@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 67 | k@177@01 < |matrix@150@01|]
(assert (< k@177@01 (Seq_length matrix@150@01)))
; [eval] j >= 0
(push) ; 12
; [then-branch: 68 | !(j@178@01 >= 0) | live]
; [else-branch: 68 | j@178@01 >= 0 | live]
(push) ; 13
; [then-branch: 68 | !(j@178@01 >= 0)]
(assert (not (>= j@178@01 0)))
(pop) ; 13
(push) ; 13
; [else-branch: 68 | j@178@01 >= 0]
(assert (>= j@178@01 0))
; [eval] j < |ar|
; [eval] |ar|
(push) ; 14
; [then-branch: 69 | !(j@178@01 < |matrix@150@01|) | live]
; [else-branch: 69 | j@178@01 < |matrix@150@01| | live]
(push) ; 15
; [then-branch: 69 | !(j@178@01 < |matrix@150@01|)]
(assert (not (< j@178@01 (Seq_length matrix@150@01))))
(pop) ; 15
(push) ; 15
; [else-branch: 69 | j@178@01 < |matrix@150@01|]
(assert (< j@178@01 (Seq_length matrix@150@01)))
; [eval] k != j
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or
  (< j@178@01 (Seq_length matrix@150@01))
  (not (< j@178@01 (Seq_length matrix@150@01)))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@178@01 0)
  (and
    (>= j@178@01 0)
    (or
      (< j@178@01 (Seq_length matrix@150@01))
      (not (< j@178@01 (Seq_length matrix@150@01)))))))
(assert (or (>= j@178@01 0) (not (>= j@178@01 0))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@177@01 (Seq_length matrix@150@01))
  (and
    (< k@177@01 (Seq_length matrix@150@01))
    (=>
      (>= j@178@01 0)
      (and
        (>= j@178@01 0)
        (or
          (< j@178@01 (Seq_length matrix@150@01))
          (not (< j@178@01 (Seq_length matrix@150@01))))))
    (or (>= j@178@01 0) (not (>= j@178@01 0))))))
(assert (or
  (< k@177@01 (Seq_length matrix@150@01))
  (not (< k@177@01 (Seq_length matrix@150@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@177@01 0)
  (and
    (>= k@177@01 0)
    (=>
      (< k@177@01 (Seq_length matrix@150@01))
      (and
        (< k@177@01 (Seq_length matrix@150@01))
        (=>
          (>= j@178@01 0)
          (and
            (>= j@178@01 0)
            (or
              (< j@178@01 (Seq_length matrix@150@01))
              (not (< j@178@01 (Seq_length matrix@150@01))))))
        (or (>= j@178@01 0) (not (>= j@178@01 0)))))
    (or
      (< k@177@01 (Seq_length matrix@150@01))
      (not (< k@177@01 (Seq_length matrix@150@01)))))))
(assert (or (>= k@177@01 0) (not (>= k@177@01 0))))
(push) ; 8
; [then-branch: 70 | k@177@01 >= 0 && k@177@01 < |matrix@150@01| && j@178@01 >= 0 && j@178@01 < |matrix@150@01| && k@177@01 != j@178@01 | live]
; [else-branch: 70 | !(k@177@01 >= 0 && k@177@01 < |matrix@150@01| && j@178@01 >= 0 && j@178@01 < |matrix@150@01| && k@177@01 != j@178@01) | live]
(push) ; 9
; [then-branch: 70 | k@177@01 >= 0 && k@177@01 < |matrix@150@01| && j@178@01 >= 0 && j@178@01 < |matrix@150@01| && k@177@01 != j@178@01]
(assert (and
  (>= k@177@01 0)
  (and
    (< k@177@01 (Seq_length matrix@150@01))
    (and
      (>= j@178@01 0)
      (and (< j@178@01 (Seq_length matrix@150@01)) (not (= k@177@01 j@178@01)))))))
; [eval] ar[k] != ar[j]
; [eval] ar[k]
; [eval] ar[j]
(pop) ; 9
(push) ; 9
; [else-branch: 70 | !(k@177@01 >= 0 && k@177@01 < |matrix@150@01| && j@178@01 >= 0 && j@178@01 < |matrix@150@01| && k@177@01 != j@178@01)]
(assert (not
  (and
    (>= k@177@01 0)
    (and
      (< k@177@01 (Seq_length matrix@150@01))
      (and
        (>= j@178@01 0)
        (and (< j@178@01 (Seq_length matrix@150@01)) (not (= k@177@01 j@178@01))))))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  (and
    (>= k@177@01 0)
    (and
      (< k@177@01 (Seq_length matrix@150@01))
      (and
        (>= j@178@01 0)
        (and (< j@178@01 (Seq_length matrix@150@01)) (not (= k@177@01 j@178@01))))))
  (and
    (>= k@177@01 0)
    (< k@177@01 (Seq_length matrix@150@01))
    (>= j@178@01 0)
    (< j@178@01 (Seq_length matrix@150@01))
    (not (= k@177@01 j@178@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@177@01 0)
      (and
        (< k@177@01 (Seq_length matrix@150@01))
        (and
          (>= j@178@01 0)
          (and
            (< j@178@01 (Seq_length matrix@150@01))
            (not (= k@177@01 j@178@01)))))))
  (and
    (>= k@177@01 0)
    (and
      (< k@177@01 (Seq_length matrix@150@01))
      (and
        (>= j@178@01 0)
        (and (< j@178@01 (Seq_length matrix@150@01)) (not (= k@177@01 j@178@01))))))))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 7
(assert (not (forall ((k@177@01 Int) (j@178@01 Int)) (!
  (=>
    (and
      (>= k@177@01 0)
      (and
        (< k@177@01 (Seq_length matrix@150@01))
        (and
          (>= j@178@01 0)
          (and
            (< j@178@01 (Seq_length matrix@150@01))
            (not (= k@177@01 j@178@01))))))
    (not
      (= (Seq_index matrix@150@01 k@177@01) (Seq_index matrix@150@01 j@178@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@38@12@38@106|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (forall ((k@177@01 Int) (j@178@01 Int)) (!
  (=>
    (and
      (>= k@177@01 0)
      (and
        (< k@177@01 (Seq_length matrix@150@01))
        (and
          (>= j@178@01 0)
          (and
            (< j@178@01 (Seq_length matrix@150@01))
            (not (= k@177@01 j@178@01))))))
    (not
      (= (Seq_index matrix@150@01 k@177@01) (Seq_index matrix@150@01 j@178@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@38@12@38@106|)))
(declare-const k@179@01 Int)
(push) ; 7
; [eval] min <= k && (k < max && (lo <= k % step && k % step < hi))
; [eval] min <= k
(push) ; 8
; [then-branch: 71 | !(0 <= k@179@01) | live]
; [else-branch: 71 | 0 <= k@179@01 | live]
(push) ; 9
; [then-branch: 71 | !(0 <= k@179@01)]
(assert (not (<= 0 k@179@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 71 | 0 <= k@179@01]
(assert (<= 0 k@179@01))
; [eval] k < max
(push) ; 10
; [then-branch: 72 | !(k@179@01 < M@147@01 * step@149@01) | live]
; [else-branch: 72 | k@179@01 < M@147@01 * step@149@01 | live]
(push) ; 11
; [then-branch: 72 | !(k@179@01 < M@147@01 * step@149@01)]
(assert (not (< k@179@01 (* M@147@01 step@149@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 72 | k@179@01 < M@147@01 * step@149@01]
(assert (< k@179@01 (* M@147@01 step@149@01)))
; [eval] lo <= k % step
; [eval] k % step
(push) ; 12
(assert (not (not (= step@149@01 0))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(push) ; 12
; [then-branch: 73 | !(0 <= k@179@01 % step@149@01) | live]
; [else-branch: 73 | 0 <= k@179@01 % step@149@01 | live]
(push) ; 13
; [then-branch: 73 | !(0 <= k@179@01 % step@149@01)]
(assert (not (<= 0 (mod k@179@01 step@149@01))))
(pop) ; 13
(push) ; 13
; [else-branch: 73 | 0 <= k@179@01 % step@149@01]
(assert (<= 0 (mod k@179@01 step@149@01)))
; [eval] k % step < hi
; [eval] k % step
(push) ; 14
(assert (not (not (= step@149@01 0))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 (mod k@179@01 step@149@01)) (not (<= 0 (mod k@179@01 step@149@01)))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@179@01 (* M@147@01 step@149@01))
  (and
    (< k@179@01 (* M@147@01 step@149@01))
    (or
      (<= 0 (mod k@179@01 step@149@01))
      (not (<= 0 (mod k@179@01 step@149@01)))))))
(assert (or
  (< k@179@01 (* M@147@01 step@149@01))
  (not (< k@179@01 (* M@147@01 step@149@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@179@01)
  (and
    (<= 0 k@179@01)
    (=>
      (< k@179@01 (* M@147@01 step@149@01))
      (and
        (< k@179@01 (* M@147@01 step@149@01))
        (or
          (<= 0 (mod k@179@01 step@149@01))
          (not (<= 0 (mod k@179@01 step@149@01))))))
    (or
      (< k@179@01 (* M@147@01 step@149@01))
      (not (< k@179@01 (* M@147@01 step@149@01)))))))
(assert (or (<= 0 k@179@01) (not (<= 0 k@179@01))))
(assert (and
  (<= 0 k@179@01)
  (and
    (< k@179@01 (* M@147@01 step@149@01))
    (and
      (<= 0 (mod k@179@01 step@149@01))
      (< (mod k@179@01 step@149@01) N@148@01)))))
(declare-const $k@180@01 $Perm)
(assert ($Perm.isReadVar $k@180@01))
; [eval] ar[k]
(push) ; 8
(assert (not (>= k@179@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (< k@179@01 (Seq_length matrix@150@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(declare-fun inv@181@01 ($Ref) Int)
(declare-fun img@182@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@180@01))
; Nested auxiliary terms: non-globals
(assert (forall ((k@179@01 Int)) (!
  (=>
    (and
      (<= 0 k@179@01)
      (and
        (< k@179@01 (* M@147@01 step@149@01))
        (and
          (<= 0 (mod k@179@01 step@149@01))
          (< (mod k@179@01 step@149@01) N@148@01))))
    (and
      (=>
        (<= 0 k@179@01)
        (and
          (<= 0 k@179@01)
          (=>
            (< k@179@01 (* M@147@01 step@149@01))
            (and
              (< k@179@01 (* M@147@01 step@149@01))
              (or
                (<= 0 (mod k@179@01 step@149@01))
                (not (<= 0 (mod k@179@01 step@149@01))))))
          (or
            (< k@179@01 (* M@147@01 step@149@01))
            (not (< k@179@01 (* M@147@01 step@149@01))))))
      (or (<= 0 k@179@01) (not (<= 0 k@179@01)))))
  :pattern ((Seq_index matrix@150@01 k@179@01))
  :qid |Ref__Integer_value-aux|)))
(push) ; 7
(assert (not (forall ((k@179@01 Int)) (!
  (=>
    (and
      (<= 0 k@179@01)
      (and
        (< k@179@01 (* M@147@01 step@149@01))
        (and
          (<= 0 (mod k@179@01 step@149@01))
          (< (mod k@179@01 step@149@01) N@148@01))))
    (or (= $k@180@01 $Perm.No) (< $Perm.No $k@180@01)))
  
  :qid |quant-u-8598|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((k1@179@01 Int) (k2@179@01 Int)) (!
  (=>
    (and
      (and
        (and
          (<= 0 k1@179@01)
          (and
            (< k1@179@01 (* M@147@01 step@149@01))
            (and
              (<= 0 (mod k1@179@01 step@149@01))
              (< (mod k1@179@01 step@149@01) N@148@01))))
        (< $Perm.No $k@180@01))
      (and
        (and
          (<= 0 k2@179@01)
          (and
            (< k2@179@01 (* M@147@01 step@149@01))
            (and
              (<= 0 (mod k2@179@01 step@149@01))
              (< (mod k2@179@01 step@149@01) N@148@01))))
        (< $Perm.No $k@180@01))
      (= (Seq_index matrix@150@01 k1@179@01) (Seq_index matrix@150@01 k2@179@01)))
    (= k1@179@01 k2@179@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@179@01 Int)) (!
  (=>
    (and
      (and
        (<= 0 k@179@01)
        (and
          (< k@179@01 (* M@147@01 step@149@01))
          (and
            (<= 0 (mod k@179@01 step@149@01))
            (< (mod k@179@01 step@149@01) N@148@01))))
      (< $Perm.No $k@180@01))
    (and
      (= (inv@181@01 (Seq_index matrix@150@01 k@179@01)) k@179@01)
      (img@182@01 (Seq_index matrix@150@01 k@179@01))))
  :pattern ((Seq_index matrix@150@01 k@179@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@182@01 r)
      (and
        (and
          (<= 0 (inv@181@01 r))
          (and
            (< (inv@181@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@181@01 r) step@149@01))
              (< (mod (inv@181@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@180@01)))
    (= (Seq_index matrix@150@01 (inv@181@01 r)) r))
  :pattern ((inv@181@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((k@179@01 Int)) (!
  (= (Seq_index matrix@150@01 k@179@01) (Seq_index hist@152@01 k@179@01))
  
  :qid |quant-u-8599|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@181@01 r))
          (and
            (< (inv@181@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@181@01 r) step@149@01))
              (< (mod (inv@181@01 r) step@149@01) N@148@01))))
        (img@182@01 r)
        (= r (Seq_index matrix@150@01 (inv@181@01 r))))
      (> $k@180@01 $Perm.No))
    (>
      (+
        (ite
          (and
            (img@170@01 r)
            (and
              (Seq_contains
                (Seq_range 0 (* M@147@01 step@149@01))
                (inv@169@01 r))
              (< (mod (inv@169@01 r) step@149@01) N@148@01)))
          (/ (to_real 1) (to_real 2))
          $Perm.No)
        (ite
          (and
            (img@173@01 r)
            (Seq_contains (Seq_range 0 P@151@01) (inv@172@01 r)))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-8600|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@183@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@183@01  $FVF<Ref__Integer_value>)))
      (and
        (and
          (<= 0 (inv@181@01 r))
          (and
            (< (inv@181@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@181@01 r) step@149@01))
              (< (mod (inv@181@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@180@01)
        (img@182@01 r)))
    (=>
      (and
        (and
          (<= 0 (inv@181@01 r))
          (and
            (< (inv@181@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@181@01 r) step@149@01))
              (< (mod (inv@181@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@180@01)
        (img@182@01 r))
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@183@01  $FVF<Ref__Integer_value>)))))
  :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (as sm@183@01  $FVF<Ref__Integer_value>))))
  :qid |qp.fvfDomDef27|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@181@01 r))
          (and
            (< (inv@181@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@181@01 r) step@149@01))
              (< (mod (inv@181@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@180@01)
        (img@182@01 r))
      (and
        (img@170@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@169@01 r))
          (< (mod (inv@169@01 r) step@149@01) N@148@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@183@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@183@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01))))))) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@181@01 r))
          (and
            (< (inv@181@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@181@01 r) step@149@01))
              (< (mod (inv@181@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@180@01)
        (img@182@01 r))
      (and (img@173@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@172@01 r))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@183@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@183@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01)))))))) r))
  :qid |qp.fvfValDef26|)))
(assert (count_square%precondition ($Snap.combine
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
                  ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@183@01  $FVF<Ref__Integer_value>))))))))))) 0 0 N@148@01 step@149@01 0 (*
  M@147@01
  step@149@01) matrix@150@01 k@174@01))
(pop) ; 6
; Joined path conditions
(assert ($Perm.isReadVar $k@180@01))
(assert (forall ((k@179@01 Int)) (!
  (=>
    (and
      (and
        (<= 0 k@179@01)
        (and
          (< k@179@01 (* M@147@01 step@149@01))
          (and
            (<= 0 (mod k@179@01 step@149@01))
            (< (mod k@179@01 step@149@01) N@148@01))))
      (< $Perm.No $k@180@01))
    (and
      (= (inv@181@01 (Seq_index matrix@150@01 k@179@01)) k@179@01)
      (img@182@01 (Seq_index matrix@150@01 k@179@01))))
  :pattern ((Seq_index matrix@150@01 k@179@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@182@01 r)
      (and
        (and
          (<= 0 (inv@181@01 r))
          (and
            (< (inv@181@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@181@01 r) step@149@01))
              (< (mod (inv@181@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@180@01)))
    (= (Seq_index matrix@150@01 (inv@181@01 r)) r))
  :pattern ((inv@181@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@183@01  $FVF<Ref__Integer_value>)))
      (and
        (and
          (<= 0 (inv@181@01 r))
          (and
            (< (inv@181@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@181@01 r) step@149@01))
              (< (mod (inv@181@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@180@01)
        (img@182@01 r)))
    (=>
      (and
        (and
          (<= 0 (inv@181@01 r))
          (and
            (< (inv@181@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@181@01 r) step@149@01))
              (< (mod (inv@181@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@180@01)
        (img@182@01 r))
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@183@01  $FVF<Ref__Integer_value>)))))
  :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (as sm@183@01  $FVF<Ref__Integer_value>))))
  :qid |qp.fvfDomDef27|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@181@01 r))
          (and
            (< (inv@181@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@181@01 r) step@149@01))
              (< (mod (inv@181@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@180@01)
        (img@182@01 r))
      (and
        (img@170@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@169@01 r))
          (< (mod (inv@169@01 r) step@149@01) N@148@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@183@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@183@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01))))))) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@181@01 r))
          (and
            (< (inv@181@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@181@01 r) step@149@01))
              (< (mod (inv@181@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@180@01)
        (img@182@01 r))
      (and (img@173@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@172@01 r))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@183@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@183@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01)))))))) r))
  :qid |qp.fvfValDef26|)))
(assert (and
  (<= 0 N@148@01)
  (> step@149@01 0)
  (<= 0 (* M@147@01 step@149@01))
  (forall ((k@177@01 Int) (j@178@01 Int)) (!
    (=>
      (and
        (>= k@177@01 0)
        (and
          (< k@177@01 (Seq_length matrix@150@01))
          (and
            (>= j@178@01 0)
            (and
              (< j@178@01 (Seq_length matrix@150@01))
              (not (= k@177@01 j@178@01))))))
      (not
        (= (Seq_index matrix@150@01 k@177@01) (Seq_index matrix@150@01 j@178@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@38@12@38@106|))
  (forall ((k@179@01 Int)) (!
    (=>
      (and
        (<= 0 k@179@01)
        (and
          (< k@179@01 (* M@147@01 step@149@01))
          (and
            (<= 0 (mod k@179@01 step@149@01))
            (< (mod k@179@01 step@149@01) N@148@01))))
      (and
        (=>
          (<= 0 k@179@01)
          (and
            (<= 0 k@179@01)
            (=>
              (< k@179@01 (* M@147@01 step@149@01))
              (and
                (< k@179@01 (* M@147@01 step@149@01))
                (or
                  (<= 0 (mod k@179@01 step@149@01))
                  (not (<= 0 (mod k@179@01 step@149@01))))))
            (or
              (< k@179@01 (* M@147@01 step@149@01))
              (not (< k@179@01 (* M@147@01 step@149@01))))))
        (or (<= 0 k@179@01) (not (<= 0 k@179@01)))))
    :pattern ((Seq_index matrix@150@01 k@179@01))
    :qid |Ref__Integer_value-aux|))
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
                    ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@183@01  $FVF<Ref__Integer_value>))))))))))) 0 0 N@148@01 step@149@01 0 (*
    M@147@01
    step@149@01) matrix@150@01 k@174@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 65 | !(k@174@01 in [0..P@151@01])]
(assert (not (Seq_contains (Seq_range 0 P@151@01) k@174@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@170@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@169@01 r))
        (< (mod (inv@169@01 r) step@149@01) N@148@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@175@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@175@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01))))))) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@173@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@172@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@175@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@175@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01)))))))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@176@01  $FPM) r)
    (+
      (ite
        (and
          (img@170@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@169@01 r))
            (< (mod (inv@169@01 r) step@149@01) N@148@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (ite
        (and (img@173@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@172@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@176@01  $FPM) r))
  :qid |qp.resPrmSumDef24|)))
(assert ($Perm.isReadVar $k@180@01))
(assert (forall ((k@179@01 Int)) (!
  (=>
    (and
      (and
        (<= 0 k@179@01)
        (and
          (< k@179@01 (* M@147@01 step@149@01))
          (and
            (<= 0 (mod k@179@01 step@149@01))
            (< (mod k@179@01 step@149@01) N@148@01))))
      (< $Perm.No $k@180@01))
    (and
      (= (inv@181@01 (Seq_index matrix@150@01 k@179@01)) k@179@01)
      (img@182@01 (Seq_index matrix@150@01 k@179@01))))
  :pattern ((Seq_index matrix@150@01 k@179@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@182@01 r)
      (and
        (and
          (<= 0 (inv@181@01 r))
          (and
            (< (inv@181@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@181@01 r) step@149@01))
              (< (mod (inv@181@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@180@01)))
    (= (Seq_index matrix@150@01 (inv@181@01 r)) r))
  :pattern ((inv@181@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@183@01  $FVF<Ref__Integer_value>)))
      (and
        (and
          (<= 0 (inv@181@01 r))
          (and
            (< (inv@181@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@181@01 r) step@149@01))
              (< (mod (inv@181@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@180@01)
        (img@182@01 r)))
    (=>
      (and
        (and
          (<= 0 (inv@181@01 r))
          (and
            (< (inv@181@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@181@01 r) step@149@01))
              (< (mod (inv@181@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@180@01)
        (img@182@01 r))
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@183@01  $FVF<Ref__Integer_value>)))))
  :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (as sm@183@01  $FVF<Ref__Integer_value>))))
  :qid |qp.fvfDomDef27|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@181@01 r))
          (and
            (< (inv@181@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@181@01 r) step@149@01))
              (< (mod (inv@181@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@180@01)
        (img@182@01 r))
      (and
        (img@170@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@169@01 r))
          (< (mod (inv@169@01 r) step@149@01) N@148@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@183@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@183@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01))))))) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@181@01 r))
          (and
            (< (inv@181@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@181@01 r) step@149@01))
              (< (mod (inv@181@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@180@01)
        (img@182@01 r))
      (and (img@173@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@172@01 r))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@183@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@183@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01)))))))) r))
  :qid |qp.fvfValDef26|)))
(assert (=>
  (Seq_contains (Seq_range 0 P@151@01) k@174@01)
  (and
    (Seq_contains (Seq_range 0 P@151@01) k@174@01)
    (<= 0 N@148@01)
    (> step@149@01 0)
    (<= 0 (* M@147@01 step@149@01))
    (forall ((k@177@01 Int) (j@178@01 Int)) (!
      (=>
        (and
          (>= k@177@01 0)
          (and
            (< k@177@01 (Seq_length matrix@150@01))
            (and
              (>= j@178@01 0)
              (and
                (< j@178@01 (Seq_length matrix@150@01))
                (not (= k@177@01 j@178@01))))))
        (not
          (=
            (Seq_index matrix@150@01 k@177@01)
            (Seq_index matrix@150@01 j@178@01))))
      
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@38@12@38@106|))
    (forall ((k@179@01 Int)) (!
      (=>
        (and
          (<= 0 k@179@01)
          (and
            (< k@179@01 (* M@147@01 step@149@01))
            (and
              (<= 0 (mod k@179@01 step@149@01))
              (< (mod k@179@01 step@149@01) N@148@01))))
        (and
          (=>
            (<= 0 k@179@01)
            (and
              (<= 0 k@179@01)
              (=>
                (< k@179@01 (* M@147@01 step@149@01))
                (and
                  (< k@179@01 (* M@147@01 step@149@01))
                  (or
                    (<= 0 (mod k@179@01 step@149@01))
                    (not (<= 0 (mod k@179@01 step@149@01))))))
              (or
                (< k@179@01 (* M@147@01 step@149@01))
                (not (< k@179@01 (* M@147@01 step@149@01))))))
          (or (<= 0 k@179@01) (not (<= 0 k@179@01)))))
      :pattern ((Seq_index matrix@150@01 k@179@01))
      :qid |Ref__Integer_value-aux|))
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
                      ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@183@01  $FVF<Ref__Integer_value>))))))))))) 0 0 N@148@01 step@149@01 0 (*
      M@147@01
      step@149@01) matrix@150@01 k@174@01))))
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range 0 P@151@01) k@174@01))
  (Seq_contains (Seq_range 0 P@151@01) k@174@01)))
; [eval] hist[k]
(push) ; 4
(assert (not (>= k@174@01 0)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@170@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@169@01 r))
        (< (mod (inv@169@01 r) step@149@01) N@148@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@175@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@175@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01))))))) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@173@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@172@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@175@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@175@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01)))))))) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@176@01  $FPM) r)
    (+
      (ite
        (and
          (img@170@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@169@01 r))
            (< (mod (inv@169@01 r) step@149@01) N@148@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (ite
        (and (img@173@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@172@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@176@01  $FPM) r))
  :qid |qp.resPrmSumDef24|)))
(assert ($Perm.isReadVar $k@180@01))
(assert (forall ((k@179@01 Int)) (!
  (=>
    (and
      (and
        (<= 0 k@179@01)
        (and
          (< k@179@01 (* M@147@01 step@149@01))
          (and
            (<= 0 (mod k@179@01 step@149@01))
            (< (mod k@179@01 step@149@01) N@148@01))))
      (< $Perm.No $k@180@01))
    (and
      (= (inv@181@01 (Seq_index matrix@150@01 k@179@01)) k@179@01)
      (img@182@01 (Seq_index matrix@150@01 k@179@01))))
  :pattern ((Seq_index matrix@150@01 k@179@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@182@01 r)
      (and
        (and
          (<= 0 (inv@181@01 r))
          (and
            (< (inv@181@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@181@01 r) step@149@01))
              (< (mod (inv@181@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@180@01)))
    (= (Seq_index matrix@150@01 (inv@181@01 r)) r))
  :pattern ((inv@181@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@183@01  $FVF<Ref__Integer_value>)))
      (and
        (and
          (<= 0 (inv@181@01 r))
          (and
            (< (inv@181@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@181@01 r) step@149@01))
              (< (mod (inv@181@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@180@01)
        (img@182@01 r)))
    (=>
      (and
        (and
          (<= 0 (inv@181@01 r))
          (and
            (< (inv@181@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@181@01 r) step@149@01))
              (< (mod (inv@181@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@180@01)
        (img@182@01 r))
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@183@01  $FVF<Ref__Integer_value>)))))
  :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (as sm@183@01  $FVF<Ref__Integer_value>))))
  :qid |qp.fvfDomDef27|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@181@01 r))
          (and
            (< (inv@181@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@181@01 r) step@149@01))
              (< (mod (inv@181@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@180@01)
        (img@182@01 r))
      (and
        (img@170@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@169@01 r))
          (< (mod (inv@169@01 r) step@149@01) N@148@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@183@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@183@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01))))))) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@181@01 r))
          (and
            (< (inv@181@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@181@01 r) step@149@01))
              (< (mod (inv@181@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@180@01)
        (img@182@01 r))
      (and (img@173@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@172@01 r))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@183@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@183@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01)))))))) r))
  :qid |qp.fvfValDef26|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@174@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 P@151@01) k@174@01)
      (and
        (Seq_contains (Seq_range 0 P@151@01) k@174@01)
        (<= 0 N@148@01)
        (> step@149@01 0)
        (<= 0 (* M@147@01 step@149@01))
        (forall ((k@177@01 Int) (j@178@01 Int)) (!
          (=>
            (and
              (>= k@177@01 0)
              (and
                (< k@177@01 (Seq_length matrix@150@01))
                (and
                  (>= j@178@01 0)
                  (and
                    (< j@178@01 (Seq_length matrix@150@01))
                    (not (= k@177@01 j@178@01))))))
            (not
              (=
                (Seq_index matrix@150@01 k@177@01)
                (Seq_index matrix@150@01 j@178@01))))
          
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@38@12@38@106|))
        (forall ((k@179@01 Int)) (!
          (=>
            (and
              (<= 0 k@179@01)
              (and
                (< k@179@01 (* M@147@01 step@149@01))
                (and
                  (<= 0 (mod k@179@01 step@149@01))
                  (< (mod k@179@01 step@149@01) N@148@01))))
            (and
              (=>
                (<= 0 k@179@01)
                (and
                  (<= 0 k@179@01)
                  (=>
                    (< k@179@01 (* M@147@01 step@149@01))
                    (and
                      (< k@179@01 (* M@147@01 step@149@01))
                      (or
                        (<= 0 (mod k@179@01 step@149@01))
                        (not (<= 0 (mod k@179@01 step@149@01))))))
                  (or
                    (< k@179@01 (* M@147@01 step@149@01))
                    (not (< k@179@01 (* M@147@01 step@149@01))))))
              (or (<= 0 k@179@01) (not (<= 0 k@179@01)))))
          :pattern ((Seq_index matrix@150@01 k@179@01))
          :qid |Ref__Integer_value-aux|))
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
                          ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@183@01  $FVF<Ref__Integer_value>))))))))))) 0 0 N@148@01 step@149@01 0 (*
          M@147@01
          step@149@01) matrix@150@01 k@174@01)))
    (or
      (not (Seq_contains (Seq_range 0 P@151@01) k@174@01))
      (Seq_contains (Seq_range 0 P@151@01) k@174@01)))
  :pattern ((Seq_contains (Seq_range 0 P@151@01) k@174@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 P@151@01) k@174@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@158@12@158@130-aux|)))
(assert (forall ((k@174@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 P@151@01) k@174@01)
      (and
        (Seq_contains (Seq_range 0 P@151@01) k@174@01)
        (<= 0 N@148@01)
        (> step@149@01 0)
        (<= 0 (* M@147@01 step@149@01))
        (forall ((k@177@01 Int) (j@178@01 Int)) (!
          (=>
            (and
              (>= k@177@01 0)
              (and
                (< k@177@01 (Seq_length matrix@150@01))
                (and
                  (>= j@178@01 0)
                  (and
                    (< j@178@01 (Seq_length matrix@150@01))
                    (not (= k@177@01 j@178@01))))))
            (not
              (=
                (Seq_index matrix@150@01 k@177@01)
                (Seq_index matrix@150@01 j@178@01))))
          
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@38@12@38@106|))
        (forall ((k@179@01 Int)) (!
          (=>
            (and
              (<= 0 k@179@01)
              (and
                (< k@179@01 (* M@147@01 step@149@01))
                (and
                  (<= 0 (mod k@179@01 step@149@01))
                  (< (mod k@179@01 step@149@01) N@148@01))))
            (and
              (=>
                (<= 0 k@179@01)
                (and
                  (<= 0 k@179@01)
                  (=>
                    (< k@179@01 (* M@147@01 step@149@01))
                    (and
                      (< k@179@01 (* M@147@01 step@149@01))
                      (or
                        (<= 0 (mod k@179@01 step@149@01))
                        (not (<= 0 (mod k@179@01 step@149@01))))))
                  (or
                    (< k@179@01 (* M@147@01 step@149@01))
                    (not (< k@179@01 (* M@147@01 step@149@01))))))
              (or (<= 0 k@179@01) (not (<= 0 k@179@01)))))
          :pattern ((Seq_index matrix@150@01 k@179@01))
          :qid |Ref__Integer_value-aux|))
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
                          ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@183@01  $FVF<Ref__Integer_value>))))))))))) 0 0 N@148@01 step@149@01 0 (*
          M@147@01
          step@149@01) matrix@150@01 k@174@01)))
    (or
      (not (Seq_contains (Seq_range 0 P@151@01) k@174@01))
      (Seq_contains (Seq_range 0 P@151@01) k@174@01)))
  :pattern ((Seq_contains_trigger (Seq_range 0 P@151@01) k@174@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@158@12@158@130-aux|)))
(assert (forall ((k@174@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 P@151@01) k@174@01)
      (and
        (Seq_contains (Seq_range 0 P@151@01) k@174@01)
        (<= 0 N@148@01)
        (> step@149@01 0)
        (<= 0 (* M@147@01 step@149@01))
        (forall ((k@177@01 Int) (j@178@01 Int)) (!
          (=>
            (and
              (>= k@177@01 0)
              (and
                (< k@177@01 (Seq_length matrix@150@01))
                (and
                  (>= j@178@01 0)
                  (and
                    (< j@178@01 (Seq_length matrix@150@01))
                    (not (= k@177@01 j@178@01))))))
            (not
              (=
                (Seq_index matrix@150@01 k@177@01)
                (Seq_index matrix@150@01 j@178@01))))
          
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@38@12@38@106|))
        (forall ((k@179@01 Int)) (!
          (=>
            (and
              (<= 0 k@179@01)
              (and
                (< k@179@01 (* M@147@01 step@149@01))
                (and
                  (<= 0 (mod k@179@01 step@149@01))
                  (< (mod k@179@01 step@149@01) N@148@01))))
            (and
              (=>
                (<= 0 k@179@01)
                (and
                  (<= 0 k@179@01)
                  (=>
                    (< k@179@01 (* M@147@01 step@149@01))
                    (and
                      (< k@179@01 (* M@147@01 step@149@01))
                      (or
                        (<= 0 (mod k@179@01 step@149@01))
                        (not (<= 0 (mod k@179@01 step@149@01))))))
                  (or
                    (< k@179@01 (* M@147@01 step@149@01))
                    (not (< k@179@01 (* M@147@01 step@149@01))))))
              (or (<= 0 k@179@01) (not (<= 0 k@179@01)))))
          :pattern ((Seq_index matrix@150@01 k@179@01))
          :qid |Ref__Integer_value-aux|))
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
                          ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@183@01  $FVF<Ref__Integer_value>))))))))))) 0 0 N@148@01 step@149@01 0 (*
          M@147@01
          step@149@01) matrix@150@01 k@174@01)))
    (or
      (not (Seq_contains (Seq_range 0 P@151@01) k@174@01))
      (Seq_contains (Seq_range 0 P@151@01) k@174@01)))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@158@12@158@130-aux|)))
(assert (forall ((k@174@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 P@151@01) k@174@01)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@175@01  $FVF<Ref__Integer_value>) (Seq_index
        hist@152@01
        k@174@01))
      (count_square ($Snap.combine
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
                        ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@183@01  $FVF<Ref__Integer_value>))))))))))) 0 0 N@148@01 step@149@01 0 (*
        M@147@01
        step@149@01) matrix@150@01 k@174@01)))
  :pattern ((Seq_contains (Seq_range 0 P@151@01) k@174@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 P@151@01) k@174@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@158@12@158@130|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01)))))))))
  $Snap.unit))
; [eval] N <= step
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01)))))))))
  $Snap.unit))
; [eval] (forall k_fresh_rw_0: Int :: { old(matrix[k_fresh_rw_0]) } (k_fresh_rw_0 in [0..M * step)) && k_fresh_rw_0 % step < N ==> matrix[k_fresh_rw_0].Ref__Integer_value == old(matrix[k_fresh_rw_0].Ref__Integer_value))
(declare-const k_fresh_rw_0@184@01 Int)
(push) ; 3
; [eval] (k_fresh_rw_0 in [0..M * step)) && k_fresh_rw_0 % step < N ==> matrix[k_fresh_rw_0].Ref__Integer_value == old(matrix[k_fresh_rw_0].Ref__Integer_value)
; [eval] (k_fresh_rw_0 in [0..M * step)) && k_fresh_rw_0 % step < N
; [eval] (k_fresh_rw_0 in [0..M * step))
; [eval] [0..M * step)
; [eval] M * step
(push) ; 4
; [then-branch: 74 | !(k_fresh_rw_0@184@01 in [0..M@147@01 * step@149@01]) | live]
; [else-branch: 74 | k_fresh_rw_0@184@01 in [0..M@147@01 * step@149@01] | live]
(push) ; 5
; [then-branch: 74 | !(k_fresh_rw_0@184@01 in [0..M@147@01 * step@149@01])]
(assert (not (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@184@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 74 | k_fresh_rw_0@184@01 in [0..M@147@01 * step@149@01]]
(assert (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@184@01))
; [eval] k_fresh_rw_0 % step < N
; [eval] k_fresh_rw_0 % step
(push) ; 6
(assert (not (not (= step@149@01 0))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@184@01)
  (not (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@184@01))))
(push) ; 4
; [then-branch: 75 | k_fresh_rw_0@184@01 in [0..M@147@01 * step@149@01] && k_fresh_rw_0@184@01 % step@149@01 < N@148@01 | live]
; [else-branch: 75 | !(k_fresh_rw_0@184@01 in [0..M@147@01 * step@149@01] && k_fresh_rw_0@184@01 % step@149@01 < N@148@01) | live]
(push) ; 5
; [then-branch: 75 | k_fresh_rw_0@184@01 in [0..M@147@01 * step@149@01] && k_fresh_rw_0@184@01 % step@149@01 < N@148@01]
(assert (and
  (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@184@01)
  (< (mod k_fresh_rw_0@184@01 step@149@01) N@148@01)))
; [eval] matrix[k_fresh_rw_0].Ref__Integer_value == old(matrix[k_fresh_rw_0].Ref__Integer_value)
; [eval] matrix[k_fresh_rw_0]
(push) ; 6
(assert (not (>= k_fresh_rw_0@184@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k_fresh_rw_0@184@01 (Seq_length matrix@150@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@185@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@170@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@169@01 r))
        (< (mod (inv@169@01 r) step@149@01) N@148@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@185@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@185@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01))))))) r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@173@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@172@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@185@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@185@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01)))))))) r))
  :qid |qp.fvfValDef29|)))
(declare-const pm@186@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@186@01  $FPM) r)
    (+
      (ite
        (and
          (img@170@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@169@01 r))
            (< (mod (inv@169@01 r) step@149@01) N@148@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (ite
        (and (img@173@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@172@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@186@01  $FPM) r))
  :qid |qp.resPrmSumDef30|)))
(push) ; 6
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@186@01  $FPM) (Seq_index
    matrix@150@01
    k_fresh_rw_0@184@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] old(matrix[k_fresh_rw_0].Ref__Integer_value)
; [eval] matrix[k_fresh_rw_0]
(push) ; 6
(assert (not (>= k_fresh_rw_0@184@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k_fresh_rw_0@184@01 (Seq_length matrix@150@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@187@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@158@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
        (< (mod (inv@157@01 r) step@149@01) N@148@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@187@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@187@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@166@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@165@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@187@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@187@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))))))) r))
  :qid |qp.fvfValDef32|)))
(declare-const pm@188@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@188@01  $FPM) r)
    (+
      (ite
        (and
          (img@158@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
            (< (mod (inv@157@01 r) step@149@01) N@148@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (ite
        (and (img@166@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@165@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@188@01  $FPM) r))
  :qid |qp.resPrmSumDef33|)))
(push) ; 6
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@188@01  $FPM) (Seq_index
    matrix@150@01
    k_fresh_rw_0@184@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 75 | !(k_fresh_rw_0@184@01 in [0..M@147@01 * step@149@01] && k_fresh_rw_0@184@01 % step@149@01 < N@148@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@184@01)
    (< (mod k_fresh_rw_0@184@01 step@149@01) N@148@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@170@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@169@01 r))
        (< (mod (inv@169@01 r) step@149@01) N@148@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@185@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@185@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01))))))) r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@173@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@172@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@185@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@185@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01)))))))) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@186@01  $FPM) r)
    (+
      (ite
        (and
          (img@170@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@169@01 r))
            (< (mod (inv@169@01 r) step@149@01) N@148@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (ite
        (and (img@173@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@172@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@186@01  $FPM) r))
  :qid |qp.resPrmSumDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@158@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
        (< (mod (inv@157@01 r) step@149@01) N@148@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@187@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@187@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@166@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@165@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@187@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@187@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))))))) r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@188@01  $FPM) r)
    (+
      (ite
        (and
          (img@158@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
            (< (mod (inv@157@01 r) step@149@01) N@148@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (ite
        (and (img@166@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@165@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@188@01  $FPM) r))
  :qid |qp.resPrmSumDef33|)))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@184@01)
      (< (mod k_fresh_rw_0@184@01 step@149@01) N@148@01)))
  (and
    (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@184@01)
    (< (mod k_fresh_rw_0@184@01 step@149@01) N@148@01))))
; [eval] old(matrix[k_fresh_rw_0])
; [eval] matrix[k_fresh_rw_0]
(push) ; 4
(assert (not (>= k_fresh_rw_0@184@01 0)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@170@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@169@01 r))
        (< (mod (inv@169@01 r) step@149@01) N@148@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@185@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@185@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01))))))) r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@173@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@172@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@185@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@185@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@167@01)))))))) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@186@01  $FPM) r)
    (+
      (ite
        (and
          (img@170@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@169@01 r))
            (< (mod (inv@169@01 r) step@149@01) N@148@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (ite
        (and (img@173@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@172@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@186@01  $FPM) r))
  :qid |qp.resPrmSumDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@158@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
        (< (mod (inv@157@01 r) step@149@01) N@148@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@187@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@187@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@166@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@165@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@187@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@187@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))))))) r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@188@01  $FPM) r)
    (+
      (ite
        (and
          (img@158@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
            (< (mod (inv@157@01 r) step@149@01) N@148@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (ite
        (and (img@166@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@165@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@188@01  $FPM) r))
  :qid |qp.resPrmSumDef33|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k_fresh_rw_0@184@01 Int)) (!
  (and
    (or
      (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@184@01)
      (not
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@184@01)))
    (or
      (not
        (and
          (Seq_contains
            (Seq_range 0 (* M@147@01 step@149@01))
            k_fresh_rw_0@184@01)
          (< (mod k_fresh_rw_0@184@01 step@149@01) N@148@01)))
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@184@01)
        (< (mod k_fresh_rw_0@184@01 step@149@01) N@148@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@159@27@159@209-aux|)))
(assert (forall ((k_fresh_rw_0@184@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@184@01)
      (< (mod k_fresh_rw_0@184@01 step@149@01) N@148@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@185@01  $FVF<Ref__Integer_value>) (Seq_index
        matrix@150@01
        k_fresh_rw_0@184@01))
      ($FVF.lookup_Ref__Integer_value (as sm@187@01  $FVF<Ref__Integer_value>) (Seq_index
        matrix@150@01
        k_fresh_rw_0@184@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@159@27@159@209|)))
(pop) ; 2
(push) ; 2
; [exec]
; Ref__loop_main_93(diz, P, hist)
; [eval] diz != null
; [eval] P <= |hist|
; [eval] |hist|
; [eval] (forall k: Int, j: Int :: { hist[k], hist[j] } k >= 0 && (k < |hist| && (j >= 0 && (j < |hist| && k != j))) ==> hist[k] != hist[j])
(declare-const k@189@01 Int)
(declare-const j@190@01 Int)
(push) ; 3
; [eval] k >= 0 && (k < |hist| && (j >= 0 && (j < |hist| && k != j))) ==> hist[k] != hist[j]
; [eval] k >= 0 && (k < |hist| && (j >= 0 && (j < |hist| && k != j)))
; [eval] k >= 0
(push) ; 4
; [then-branch: 76 | !(k@189@01 >= 0) | live]
; [else-branch: 76 | k@189@01 >= 0 | live]
(push) ; 5
; [then-branch: 76 | !(k@189@01 >= 0)]
(assert (not (>= k@189@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 76 | k@189@01 >= 0]
(assert (>= k@189@01 0))
; [eval] k < |hist|
; [eval] |hist|
(push) ; 6
; [then-branch: 77 | !(k@189@01 < |hist@152@01|) | live]
; [else-branch: 77 | k@189@01 < |hist@152@01| | live]
(push) ; 7
; [then-branch: 77 | !(k@189@01 < |hist@152@01|)]
(assert (not (< k@189@01 (Seq_length hist@152@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 77 | k@189@01 < |hist@152@01|]
(assert (< k@189@01 (Seq_length hist@152@01)))
; [eval] j >= 0
(push) ; 8
; [then-branch: 78 | !(j@190@01 >= 0) | live]
; [else-branch: 78 | j@190@01 >= 0 | live]
(push) ; 9
; [then-branch: 78 | !(j@190@01 >= 0)]
(assert (not (>= j@190@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 78 | j@190@01 >= 0]
(assert (>= j@190@01 0))
; [eval] j < |hist|
; [eval] |hist|
(push) ; 10
; [then-branch: 79 | !(j@190@01 < |hist@152@01|) | live]
; [else-branch: 79 | j@190@01 < |hist@152@01| | live]
(push) ; 11
; [then-branch: 79 | !(j@190@01 < |hist@152@01|)]
(assert (not (< j@190@01 (Seq_length hist@152@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 79 | j@190@01 < |hist@152@01|]
(assert (< j@190@01 (Seq_length hist@152@01)))
; [eval] k != j
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (< j@190@01 (Seq_length hist@152@01))
  (not (< j@190@01 (Seq_length hist@152@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@190@01 0)
  (and
    (>= j@190@01 0)
    (or
      (< j@190@01 (Seq_length hist@152@01))
      (not (< j@190@01 (Seq_length hist@152@01)))))))
(assert (or (>= j@190@01 0) (not (>= j@190@01 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@189@01 (Seq_length hist@152@01))
  (and
    (< k@189@01 (Seq_length hist@152@01))
    (=>
      (>= j@190@01 0)
      (and
        (>= j@190@01 0)
        (or
          (< j@190@01 (Seq_length hist@152@01))
          (not (< j@190@01 (Seq_length hist@152@01))))))
    (or (>= j@190@01 0) (not (>= j@190@01 0))))))
(assert (or
  (< k@189@01 (Seq_length hist@152@01))
  (not (< k@189@01 (Seq_length hist@152@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@189@01 0)
  (and
    (>= k@189@01 0)
    (=>
      (< k@189@01 (Seq_length hist@152@01))
      (and
        (< k@189@01 (Seq_length hist@152@01))
        (=>
          (>= j@190@01 0)
          (and
            (>= j@190@01 0)
            (or
              (< j@190@01 (Seq_length hist@152@01))
              (not (< j@190@01 (Seq_length hist@152@01))))))
        (or (>= j@190@01 0) (not (>= j@190@01 0)))))
    (or
      (< k@189@01 (Seq_length hist@152@01))
      (not (< k@189@01 (Seq_length hist@152@01)))))))
(assert (or (>= k@189@01 0) (not (>= k@189@01 0))))
(push) ; 4
; [then-branch: 80 | k@189@01 >= 0 && k@189@01 < |hist@152@01| && j@190@01 >= 0 && j@190@01 < |hist@152@01| && k@189@01 != j@190@01 | live]
; [else-branch: 80 | !(k@189@01 >= 0 && k@189@01 < |hist@152@01| && j@190@01 >= 0 && j@190@01 < |hist@152@01| && k@189@01 != j@190@01) | live]
(push) ; 5
; [then-branch: 80 | k@189@01 >= 0 && k@189@01 < |hist@152@01| && j@190@01 >= 0 && j@190@01 < |hist@152@01| && k@189@01 != j@190@01]
(assert (and
  (>= k@189@01 0)
  (and
    (< k@189@01 (Seq_length hist@152@01))
    (and
      (>= j@190@01 0)
      (and (< j@190@01 (Seq_length hist@152@01)) (not (= k@189@01 j@190@01)))))))
; [eval] hist[k] != hist[j]
; [eval] hist[k]
; [eval] hist[j]
(pop) ; 5
(push) ; 5
; [else-branch: 80 | !(k@189@01 >= 0 && k@189@01 < |hist@152@01| && j@190@01 >= 0 && j@190@01 < |hist@152@01| && k@189@01 != j@190@01)]
(assert (not
  (and
    (>= k@189@01 0)
    (and
      (< k@189@01 (Seq_length hist@152@01))
      (and
        (>= j@190@01 0)
        (and (< j@190@01 (Seq_length hist@152@01)) (not (= k@189@01 j@190@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (>= k@189@01 0)
    (and
      (< k@189@01 (Seq_length hist@152@01))
      (and
        (>= j@190@01 0)
        (and (< j@190@01 (Seq_length hist@152@01)) (not (= k@189@01 j@190@01))))))
  (and
    (>= k@189@01 0)
    (< k@189@01 (Seq_length hist@152@01))
    (>= j@190@01 0)
    (< j@190@01 (Seq_length hist@152@01))
    (not (= k@189@01 j@190@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@189@01 0)
      (and
        (< k@189@01 (Seq_length hist@152@01))
        (and
          (>= j@190@01 0)
          (and (< j@190@01 (Seq_length hist@152@01)) (not (= k@189@01 j@190@01)))))))
  (and
    (>= k@189@01 0)
    (and
      (< k@189@01 (Seq_length hist@152@01))
      (and
        (>= j@190@01 0)
        (and (< j@190@01 (Seq_length hist@152@01)) (not (= k@189@01 j@190@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@189@01 Int) (j@190@01 Int)) (!
  (and
    (=>
      (>= k@189@01 0)
      (and
        (>= k@189@01 0)
        (=>
          (< k@189@01 (Seq_length hist@152@01))
          (and
            (< k@189@01 (Seq_length hist@152@01))
            (=>
              (>= j@190@01 0)
              (and
                (>= j@190@01 0)
                (or
                  (< j@190@01 (Seq_length hist@152@01))
                  (not (< j@190@01 (Seq_length hist@152@01))))))
            (or (>= j@190@01 0) (not (>= j@190@01 0)))))
        (or
          (< k@189@01 (Seq_length hist@152@01))
          (not (< k@189@01 (Seq_length hist@152@01))))))
    (or (>= k@189@01 0) (not (>= k@189@01 0)))
    (=>
      (and
        (>= k@189@01 0)
        (and
          (< k@189@01 (Seq_length hist@152@01))
          (and
            (>= j@190@01 0)
            (and
              (< j@190@01 (Seq_length hist@152@01))
              (not (= k@189@01 j@190@01))))))
      (and
        (>= k@189@01 0)
        (< k@189@01 (Seq_length hist@152@01))
        (>= j@190@01 0)
        (< j@190@01 (Seq_length hist@152@01))
        (not (= k@189@01 j@190@01))))
    (or
      (not
        (and
          (>= k@189@01 0)
          (and
            (< k@189@01 (Seq_length hist@152@01))
            (and
              (>= j@190@01 0)
              (and
                (< j@190@01 (Seq_length hist@152@01))
                (not (= k@189@01 j@190@01)))))))
      (and
        (>= k@189@01 0)
        (and
          (< k@189@01 (Seq_length hist@152@01))
          (and
            (>= j@190@01 0)
            (and
              (< j@190@01 (Seq_length hist@152@01))
              (not (= k@189@01 j@190@01))))))))
  :pattern ((Seq_index hist@152@01 k@189@01) (Seq_index hist@152@01 j@190@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@63@12@63@114-aux|)))
(push) ; 3
(assert (not (forall ((k@189@01 Int) (j@190@01 Int)) (!
  (=>
    (and
      (>= k@189@01 0)
      (and
        (< k@189@01 (Seq_length hist@152@01))
        (and
          (>= j@190@01 0)
          (and (< j@190@01 (Seq_length hist@152@01)) (not (= k@189@01 j@190@01))))))
    (not (= (Seq_index hist@152@01 k@189@01) (Seq_index hist@152@01 j@190@01))))
  :pattern ((Seq_index hist@152@01 k@189@01) (Seq_index hist@152@01 j@190@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@63@12@63@114|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((k@189@01 Int) (j@190@01 Int)) (!
  (=>
    (and
      (>= k@189@01 0)
      (and
        (< k@189@01 (Seq_length hist@152@01))
        (and
          (>= j@190@01 0)
          (and (< j@190@01 (Seq_length hist@152@01)) (not (= k@189@01 j@190@01))))))
    (not (= (Seq_index hist@152@01 k@189@01) (Seq_index hist@152@01 j@190@01))))
  :pattern ((Seq_index hist@152@01 k@189@01) (Seq_index hist@152@01 j@190@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@63@12@63@114|)))
(declare-const k@191@01 Int)
(push) ; 3
; [eval] (k in [0..P))
; [eval] [0..P)
(assert (Seq_contains (Seq_range 0 P@151@01) k@191@01))
; [eval] hist[k]
(push) ; 4
(assert (not (>= k@191@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< k@191@01 (Seq_length hist@152@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@192@01 ($Ref) Int)
(declare-fun img@193@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((k1@191@01 Int) (k2@191@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 P@151@01) k1@191@01)
      (Seq_contains (Seq_range 0 P@151@01) k2@191@01)
      (= (Seq_index hist@152@01 k1@191@01) (Seq_index hist@152@01 k2@191@01)))
    (= k1@191@01 k2@191@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@191@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 P@151@01) k@191@01)
    (and
      (= (inv@192@01 (Seq_index hist@152@01 k@191@01)) k@191@01)
      (img@193@01 (Seq_index hist@152@01 k@191@01))))
  :pattern ((Seq_index hist@152@01 k@191@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@193@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@192@01 r)))
    (= (Seq_index hist@152@01 (inv@192@01 r)) r))
  :pattern ((inv@192@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((k@191@01 Int)) (!
  (= (Seq_index hist@152@01 k@191@01) (Seq_index matrix@150@01 k@191@01))
  
  :qid |quant-u-8602|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@194@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 P@151@01) (inv@192@01 r))
      (img@193@01 r)
      (= r (Seq_index hist@152@01 (inv@192@01 r))))
    ($Perm.min
      (ite
        (and (img@166@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@165@01 r)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@195@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 P@151@01) (inv@192@01 r))
      (img@193@01 r)
      (= r (Seq_index hist@152@01 (inv@192@01 r))))
    ($Perm.min
      (ite
        (and
          (img@158@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
            (< (mod (inv@157@01 r) step@149@01) N@148@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- $Perm.Write (pTaken@194@01 r)))
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
        (and (img@166@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@165@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@194@01 r))
    $Perm.No)
  
  :qid |quant-u-8604|))))
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
      (Seq_contains (Seq_range 0 P@151@01) (inv@192@01 r))
      (img@193@01 r)
      (= r (Seq_index hist@152@01 (inv@192@01 r))))
    (= (- $Perm.Write (pTaken@194@01 r)) $Perm.No))
  
  :qid |quant-u-8605|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const $t@196@01 $Snap)
(assert (= $t@196@01 ($Snap.combine ($Snap.first $t@196@01) ($Snap.second $t@196@01))))
(declare-const k@197@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (k in [0..P))
; [eval] [0..P)
(assert (Seq_contains (Seq_range 0 P@151@01) k@197@01))
; [eval] hist[k]
(push) ; 4
(assert (not (>= k@197@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< k@197@01 (Seq_length hist@152@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@198@01 ($Ref) Int)
(declare-fun img@199@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((k1@197@01 Int) (k2@197@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 P@151@01) k1@197@01)
      (Seq_contains (Seq_range 0 P@151@01) k2@197@01)
      (= (Seq_index hist@152@01 k1@197@01) (Seq_index hist@152@01 k2@197@01)))
    (= k1@197@01 k2@197@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@197@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 P@151@01) k@197@01)
    (and
      (= (inv@198@01 (Seq_index hist@152@01 k@197@01)) k@197@01)
      (img@199@01 (Seq_index hist@152@01 k@197@01))))
  :pattern ((Seq_index hist@152@01 k@197@01))
  :qid |quant-u-8607|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@199@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@198@01 r)))
    (= (Seq_index hist@152@01 (inv@198@01 r)) r))
  :pattern ((inv@198@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((k@197@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 P@151@01) k@197@01)
    (not (= (Seq_index hist@152@01 k@197@01) $Ref.null)))
  :pattern ((Seq_index hist@152@01 k@197@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index hist@152@01 k@197@01) (Seq_index matrix@150@01 j1@156@01))
    (=
      (and (img@199@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@198@01 r)))
      (and
        (img@158@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
          (< (mod (inv@157@01 r) step@149@01) N@148@01)))))
  
  :qid |quant-u-8608|))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(assert (= ($Snap.second $t@196@01) $Snap.unit))
; [eval] (forall k: Int :: { (k in [0..P)) } { hist[k] } (k in [0..P)) ==> hist[k].Ref__Integer_value == 0)
(declare-const k@200@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (k in [0..P)) ==> hist[k].Ref__Integer_value == 0
; [eval] (k in [0..P))
; [eval] [0..P)
(push) ; 4
; [then-branch: 81 | k@200@01 in [0..P@151@01] | live]
; [else-branch: 81 | !(k@200@01 in [0..P@151@01]) | live]
(push) ; 5
; [then-branch: 81 | k@200@01 in [0..P@151@01]]
(assert (Seq_contains (Seq_range 0 P@151@01) k@200@01))
; [eval] hist[k].Ref__Integer_value == 0
; [eval] hist[k]
(push) ; 6
(assert (not (>= k@200@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k@200@01 (Seq_length hist@152@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@201@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@158@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
        (< (mod (inv@157@01 r) step@149@01) N@148@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef34|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@199@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@198@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@196@01)) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@196@01)) r))
  :qid |qp.fvfValDef35|)))
(declare-const pm@202@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@202@01  $FPM) r)
    (+
      (ite
        (and
          (img@158@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
            (< (mod (inv@157@01 r) step@149@01) N@148@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (ite
        (and (img@199@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@198@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@202@01  $FPM) r))
  :qid |qp.resPrmSumDef36|)))
(push) ; 6
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@202@01  $FPM) (Seq_index
    hist@152@01
    k@200@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 81 | !(k@200@01 in [0..P@151@01])]
(assert (not (Seq_contains (Seq_range 0 P@151@01) k@200@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@158@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
        (< (mod (inv@157@01 r) step@149@01) N@148@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef34|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@199@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@198@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@196@01)) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@196@01)) r))
  :qid |qp.fvfValDef35|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@202@01  $FPM) r)
    (+
      (ite
        (and
          (img@158@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
            (< (mod (inv@157@01 r) step@149@01) N@148@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (ite
        (and (img@199@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@198@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@202@01  $FPM) r))
  :qid |qp.resPrmSumDef36|)))
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range 0 P@151@01) k@200@01))
  (Seq_contains (Seq_range 0 P@151@01) k@200@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@158@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
        (< (mod (inv@157@01 r) step@149@01) N@148@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef34|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@199@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@198@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@196@01)) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@196@01)) r))
  :qid |qp.fvfValDef35|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@202@01  $FPM) r)
    (+
      (ite
        (and
          (img@158@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
            (< (mod (inv@157@01 r) step@149@01) N@148@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (ite
        (and (img@199@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@198@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@202@01  $FPM) r))
  :qid |qp.resPrmSumDef36|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@200@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range 0 P@151@01) k@200@01))
    (Seq_contains (Seq_range 0 P@151@01) k@200@01))
  :pattern ((Seq_contains (Seq_range 0 P@151@01) k@200@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 P@151@01) k@200@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@66@12@66@80-aux|)))
(assert (forall ((k@200@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range 0 P@151@01) k@200@01))
    (Seq_contains (Seq_range 0 P@151@01) k@200@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 P@151@01) k@200@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@66@12@66@80-aux|)))
(assert (forall ((k@200@01 Int)) (!
  (or
    (not (Seq_contains (Seq_range 0 P@151@01) k@200@01))
    (Seq_contains (Seq_range 0 P@151@01) k@200@01))
  :pattern ((Seq_index hist@152@01 k@200@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@66@12@66@80-aux|)))
(assert (forall ((k@200@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 P@151@01) k@200@01)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) (Seq_index
        hist@152@01
        k@200@01))
      0))
  :pattern ((Seq_contains (Seq_range 0 P@151@01) k@200@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 P@151@01) k@200@01))
  :pattern ((Seq_index hist@152@01 k@200@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@66@12@66@80|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; Ref__loop_main_113(diz, N, M, step, hist, matrix, P)
; [eval] diz != null
; [eval] M > 0
; [eval] N > 0
; [eval] step >= N
; [eval] P > 0
; [eval] P <= |hist|
; [eval] |hist|
; [eval] (forall k: Int, j: Int :: { hist[k], hist[j] } k >= 0 && (k < |hist| && (j >= 0 && (j < |hist| && k != j))) ==> hist[k] != hist[j])
(declare-const k@203@01 Int)
(declare-const j@204@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] k >= 0 && (k < |hist| && (j >= 0 && (j < |hist| && k != j))) ==> hist[k] != hist[j]
; [eval] k >= 0 && (k < |hist| && (j >= 0 && (j < |hist| && k != j)))
; [eval] k >= 0
(push) ; 4
; [then-branch: 82 | !(k@203@01 >= 0) | live]
; [else-branch: 82 | k@203@01 >= 0 | live]
(push) ; 5
; [then-branch: 82 | !(k@203@01 >= 0)]
(assert (not (>= k@203@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 82 | k@203@01 >= 0]
(assert (>= k@203@01 0))
; [eval] k < |hist|
; [eval] |hist|
(push) ; 6
; [then-branch: 83 | !(k@203@01 < |hist@152@01|) | live]
; [else-branch: 83 | k@203@01 < |hist@152@01| | live]
(push) ; 7
; [then-branch: 83 | !(k@203@01 < |hist@152@01|)]
(assert (not (< k@203@01 (Seq_length hist@152@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 83 | k@203@01 < |hist@152@01|]
(assert (< k@203@01 (Seq_length hist@152@01)))
; [eval] j >= 0
(push) ; 8
; [then-branch: 84 | !(j@204@01 >= 0) | live]
; [else-branch: 84 | j@204@01 >= 0 | live]
(push) ; 9
; [then-branch: 84 | !(j@204@01 >= 0)]
(assert (not (>= j@204@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 84 | j@204@01 >= 0]
(assert (>= j@204@01 0))
; [eval] j < |hist|
; [eval] |hist|
(push) ; 10
; [then-branch: 85 | !(j@204@01 < |hist@152@01|) | live]
; [else-branch: 85 | j@204@01 < |hist@152@01| | live]
(push) ; 11
; [then-branch: 85 | !(j@204@01 < |hist@152@01|)]
(assert (not (< j@204@01 (Seq_length hist@152@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 85 | j@204@01 < |hist@152@01|]
(assert (< j@204@01 (Seq_length hist@152@01)))
; [eval] k != j
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (< j@204@01 (Seq_length hist@152@01))
  (not (< j@204@01 (Seq_length hist@152@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@204@01 0)
  (and
    (>= j@204@01 0)
    (or
      (< j@204@01 (Seq_length hist@152@01))
      (not (< j@204@01 (Seq_length hist@152@01)))))))
(assert (or (>= j@204@01 0) (not (>= j@204@01 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@203@01 (Seq_length hist@152@01))
  (and
    (< k@203@01 (Seq_length hist@152@01))
    (=>
      (>= j@204@01 0)
      (and
        (>= j@204@01 0)
        (or
          (< j@204@01 (Seq_length hist@152@01))
          (not (< j@204@01 (Seq_length hist@152@01))))))
    (or (>= j@204@01 0) (not (>= j@204@01 0))))))
(assert (or
  (< k@203@01 (Seq_length hist@152@01))
  (not (< k@203@01 (Seq_length hist@152@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@203@01 0)
  (and
    (>= k@203@01 0)
    (=>
      (< k@203@01 (Seq_length hist@152@01))
      (and
        (< k@203@01 (Seq_length hist@152@01))
        (=>
          (>= j@204@01 0)
          (and
            (>= j@204@01 0)
            (or
              (< j@204@01 (Seq_length hist@152@01))
              (not (< j@204@01 (Seq_length hist@152@01))))))
        (or (>= j@204@01 0) (not (>= j@204@01 0)))))
    (or
      (< k@203@01 (Seq_length hist@152@01))
      (not (< k@203@01 (Seq_length hist@152@01)))))))
(assert (or (>= k@203@01 0) (not (>= k@203@01 0))))
(push) ; 4
; [then-branch: 86 | k@203@01 >= 0 && k@203@01 < |hist@152@01| && j@204@01 >= 0 && j@204@01 < |hist@152@01| && k@203@01 != j@204@01 | live]
; [else-branch: 86 | !(k@203@01 >= 0 && k@203@01 < |hist@152@01| && j@204@01 >= 0 && j@204@01 < |hist@152@01| && k@203@01 != j@204@01) | live]
(push) ; 5
; [then-branch: 86 | k@203@01 >= 0 && k@203@01 < |hist@152@01| && j@204@01 >= 0 && j@204@01 < |hist@152@01| && k@203@01 != j@204@01]
(assert (and
  (>= k@203@01 0)
  (and
    (< k@203@01 (Seq_length hist@152@01))
    (and
      (>= j@204@01 0)
      (and (< j@204@01 (Seq_length hist@152@01)) (not (= k@203@01 j@204@01)))))))
; [eval] hist[k] != hist[j]
; [eval] hist[k]
; [eval] hist[j]
(pop) ; 5
(push) ; 5
; [else-branch: 86 | !(k@203@01 >= 0 && k@203@01 < |hist@152@01| && j@204@01 >= 0 && j@204@01 < |hist@152@01| && k@203@01 != j@204@01)]
(assert (not
  (and
    (>= k@203@01 0)
    (and
      (< k@203@01 (Seq_length hist@152@01))
      (and
        (>= j@204@01 0)
        (and (< j@204@01 (Seq_length hist@152@01)) (not (= k@203@01 j@204@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (>= k@203@01 0)
    (and
      (< k@203@01 (Seq_length hist@152@01))
      (and
        (>= j@204@01 0)
        (and (< j@204@01 (Seq_length hist@152@01)) (not (= k@203@01 j@204@01))))))
  (and
    (>= k@203@01 0)
    (< k@203@01 (Seq_length hist@152@01))
    (>= j@204@01 0)
    (< j@204@01 (Seq_length hist@152@01))
    (not (= k@203@01 j@204@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@203@01 0)
      (and
        (< k@203@01 (Seq_length hist@152@01))
        (and
          (>= j@204@01 0)
          (and (< j@204@01 (Seq_length hist@152@01)) (not (= k@203@01 j@204@01)))))))
  (and
    (>= k@203@01 0)
    (and
      (< k@203@01 (Seq_length hist@152@01))
      (and
        (>= j@204@01 0)
        (and (< j@204@01 (Seq_length hist@152@01)) (not (= k@203@01 j@204@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@203@01 Int) (j@204@01 Int)) (!
  (and
    (=>
      (>= k@203@01 0)
      (and
        (>= k@203@01 0)
        (=>
          (< k@203@01 (Seq_length hist@152@01))
          (and
            (< k@203@01 (Seq_length hist@152@01))
            (=>
              (>= j@204@01 0)
              (and
                (>= j@204@01 0)
                (or
                  (< j@204@01 (Seq_length hist@152@01))
                  (not (< j@204@01 (Seq_length hist@152@01))))))
            (or (>= j@204@01 0) (not (>= j@204@01 0)))))
        (or
          (< k@203@01 (Seq_length hist@152@01))
          (not (< k@203@01 (Seq_length hist@152@01))))))
    (or (>= k@203@01 0) (not (>= k@203@01 0)))
    (=>
      (and
        (>= k@203@01 0)
        (and
          (< k@203@01 (Seq_length hist@152@01))
          (and
            (>= j@204@01 0)
            (and
              (< j@204@01 (Seq_length hist@152@01))
              (not (= k@203@01 j@204@01))))))
      (and
        (>= k@203@01 0)
        (< k@203@01 (Seq_length hist@152@01))
        (>= j@204@01 0)
        (< j@204@01 (Seq_length hist@152@01))
        (not (= k@203@01 j@204@01))))
    (or
      (not
        (and
          (>= k@203@01 0)
          (and
            (< k@203@01 (Seq_length hist@152@01))
            (and
              (>= j@204@01 0)
              (and
                (< j@204@01 (Seq_length hist@152@01))
                (not (= k@203@01 j@204@01)))))))
      (and
        (>= k@203@01 0)
        (and
          (< k@203@01 (Seq_length hist@152@01))
          (and
            (>= j@204@01 0)
            (and
              (< j@204@01 (Seq_length hist@152@01))
              (not (= k@203@01 j@204@01))))))))
  :pattern ((Seq_index hist@152@01 k@203@01) (Seq_index hist@152@01 j@204@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@89@12@89@114-aux|)))
(push) ; 3
(assert (not (forall ((k@203@01 Int) (j@204@01 Int)) (!
  (=>
    (and
      (>= k@203@01 0)
      (and
        (< k@203@01 (Seq_length hist@152@01))
        (and
          (>= j@204@01 0)
          (and (< j@204@01 (Seq_length hist@152@01)) (not (= k@203@01 j@204@01))))))
    (not (= (Seq_index hist@152@01 k@203@01) (Seq_index hist@152@01 j@204@01))))
  :pattern ((Seq_index hist@152@01 k@203@01) (Seq_index hist@152@01 j@204@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@89@12@89@114|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((k@203@01 Int) (j@204@01 Int)) (!
  (=>
    (and
      (>= k@203@01 0)
      (and
        (< k@203@01 (Seq_length hist@152@01))
        (and
          (>= j@204@01 0)
          (and (< j@204@01 (Seq_length hist@152@01)) (not (= k@203@01 j@204@01))))))
    (not (= (Seq_index hist@152@01 k@203@01) (Seq_index hist@152@01 j@204@01))))
  :pattern ((Seq_index hist@152@01 k@203@01) (Seq_index hist@152@01 j@204@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@89@12@89@114|)))
(declare-const k@205@01 Int)
(push) ; 3
; [eval] (k in [0..P))
; [eval] [0..P)
(assert (Seq_contains (Seq_range 0 P@151@01) k@205@01))
; [eval] hist[k]
(push) ; 4
(assert (not (>= k@205@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< k@205@01 (Seq_length hist@152@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@206@01 ($Ref) Int)
(declare-fun img@207@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((k1@205@01 Int) (k2@205@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 P@151@01) k1@205@01)
      (Seq_contains (Seq_range 0 P@151@01) k2@205@01)
      (= (Seq_index hist@152@01 k1@205@01) (Seq_index hist@152@01 k2@205@01)))
    (= k1@205@01 k2@205@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@205@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 P@151@01) k@205@01)
    (and
      (= (inv@206@01 (Seq_index hist@152@01 k@205@01)) k@205@01)
      (img@207@01 (Seq_index hist@152@01 k@205@01))))
  :pattern ((Seq_index hist@152@01 k@205@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@207@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@206@01 r)))
    (= (Seq_index hist@152@01 (inv@206@01 r)) r))
  :pattern ((inv@206@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((k@205@01 Int)) (!
  (= (Seq_index hist@152@01 k@205@01) (Seq_index matrix@150@01 k@205@01))
  
  :qid |quant-u-8610|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@208@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 P@151@01) (inv@206@01 r))
      (img@207@01 r)
      (= r (Seq_index hist@152@01 (inv@206@01 r))))
    ($Perm.min
      (ite
        (and (img@199@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@198@01 r)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@209@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 P@151@01) (inv@206@01 r))
      (img@207@01 r)
      (= r (Seq_index hist@152@01 (inv@206@01 r))))
    ($Perm.min
      (ite
        (and
          (img@158@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
            (< (mod (inv@157@01 r) step@149@01) N@148@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- $Perm.Write (pTaken@208@01 r)))
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
        (and (img@199@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@198@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@208@01 r))
    $Perm.No)
  
  :qid |quant-u-8612|))))
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
      (Seq_contains (Seq_range 0 P@151@01) (inv@206@01 r))
      (img@207@01 r)
      (= r (Seq_index hist@152@01 (inv@206@01 r))))
    (= (- $Perm.Write (pTaken@208@01 r)) $Perm.No))
  
  :qid |quant-u-8613|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] N <= step
; [eval] M * step <= |matrix|
; [eval] M * step
; [eval] |matrix|
; [eval] (forall k: Int, j: Int :: { matrix[k], matrix[j] } k >= 0 && (k < |matrix| && (j >= 0 && (j < |matrix| && k != j))) ==> matrix[k] != matrix[j])
(declare-const k@210@01 Int)
(declare-const j@211@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] k >= 0 && (k < |matrix| && (j >= 0 && (j < |matrix| && k != j))) ==> matrix[k] != matrix[j]
; [eval] k >= 0 && (k < |matrix| && (j >= 0 && (j < |matrix| && k != j)))
; [eval] k >= 0
(push) ; 4
; [then-branch: 87 | !(k@210@01 >= 0) | live]
; [else-branch: 87 | k@210@01 >= 0 | live]
(push) ; 5
; [then-branch: 87 | !(k@210@01 >= 0)]
(assert (not (>= k@210@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 87 | k@210@01 >= 0]
(assert (>= k@210@01 0))
; [eval] k < |matrix|
; [eval] |matrix|
(push) ; 6
; [then-branch: 88 | !(k@210@01 < |matrix@150@01|) | live]
; [else-branch: 88 | k@210@01 < |matrix@150@01| | live]
(push) ; 7
; [then-branch: 88 | !(k@210@01 < |matrix@150@01|)]
(assert (not (< k@210@01 (Seq_length matrix@150@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 88 | k@210@01 < |matrix@150@01|]
(assert (< k@210@01 (Seq_length matrix@150@01)))
; [eval] j >= 0
(push) ; 8
; [then-branch: 89 | !(j@211@01 >= 0) | live]
; [else-branch: 89 | j@211@01 >= 0 | live]
(push) ; 9
; [then-branch: 89 | !(j@211@01 >= 0)]
(assert (not (>= j@211@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 89 | j@211@01 >= 0]
(assert (>= j@211@01 0))
; [eval] j < |matrix|
; [eval] |matrix|
(push) ; 10
; [then-branch: 90 | !(j@211@01 < |matrix@150@01|) | live]
; [else-branch: 90 | j@211@01 < |matrix@150@01| | live]
(push) ; 11
; [then-branch: 90 | !(j@211@01 < |matrix@150@01|)]
(assert (not (< j@211@01 (Seq_length matrix@150@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 90 | j@211@01 < |matrix@150@01|]
(assert (< j@211@01 (Seq_length matrix@150@01)))
; [eval] k != j
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (< j@211@01 (Seq_length matrix@150@01))
  (not (< j@211@01 (Seq_length matrix@150@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@211@01 0)
  (and
    (>= j@211@01 0)
    (or
      (< j@211@01 (Seq_length matrix@150@01))
      (not (< j@211@01 (Seq_length matrix@150@01)))))))
(assert (or (>= j@211@01 0) (not (>= j@211@01 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@210@01 (Seq_length matrix@150@01))
  (and
    (< k@210@01 (Seq_length matrix@150@01))
    (=>
      (>= j@211@01 0)
      (and
        (>= j@211@01 0)
        (or
          (< j@211@01 (Seq_length matrix@150@01))
          (not (< j@211@01 (Seq_length matrix@150@01))))))
    (or (>= j@211@01 0) (not (>= j@211@01 0))))))
(assert (or
  (< k@210@01 (Seq_length matrix@150@01))
  (not (< k@210@01 (Seq_length matrix@150@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@210@01 0)
  (and
    (>= k@210@01 0)
    (=>
      (< k@210@01 (Seq_length matrix@150@01))
      (and
        (< k@210@01 (Seq_length matrix@150@01))
        (=>
          (>= j@211@01 0)
          (and
            (>= j@211@01 0)
            (or
              (< j@211@01 (Seq_length matrix@150@01))
              (not (< j@211@01 (Seq_length matrix@150@01))))))
        (or (>= j@211@01 0) (not (>= j@211@01 0)))))
    (or
      (< k@210@01 (Seq_length matrix@150@01))
      (not (< k@210@01 (Seq_length matrix@150@01)))))))
(assert (or (>= k@210@01 0) (not (>= k@210@01 0))))
(push) ; 4
; [then-branch: 91 | k@210@01 >= 0 && k@210@01 < |matrix@150@01| && j@211@01 >= 0 && j@211@01 < |matrix@150@01| && k@210@01 != j@211@01 | live]
; [else-branch: 91 | !(k@210@01 >= 0 && k@210@01 < |matrix@150@01| && j@211@01 >= 0 && j@211@01 < |matrix@150@01| && k@210@01 != j@211@01) | live]
(push) ; 5
; [then-branch: 91 | k@210@01 >= 0 && k@210@01 < |matrix@150@01| && j@211@01 >= 0 && j@211@01 < |matrix@150@01| && k@210@01 != j@211@01]
(assert (and
  (>= k@210@01 0)
  (and
    (< k@210@01 (Seq_length matrix@150@01))
    (and
      (>= j@211@01 0)
      (and (< j@211@01 (Seq_length matrix@150@01)) (not (= k@210@01 j@211@01)))))))
; [eval] matrix[k] != matrix[j]
; [eval] matrix[k]
; [eval] matrix[j]
(pop) ; 5
(push) ; 5
; [else-branch: 91 | !(k@210@01 >= 0 && k@210@01 < |matrix@150@01| && j@211@01 >= 0 && j@211@01 < |matrix@150@01| && k@210@01 != j@211@01)]
(assert (not
  (and
    (>= k@210@01 0)
    (and
      (< k@210@01 (Seq_length matrix@150@01))
      (and
        (>= j@211@01 0)
        (and (< j@211@01 (Seq_length matrix@150@01)) (not (= k@210@01 j@211@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (>= k@210@01 0)
    (and
      (< k@210@01 (Seq_length matrix@150@01))
      (and
        (>= j@211@01 0)
        (and (< j@211@01 (Seq_length matrix@150@01)) (not (= k@210@01 j@211@01))))))
  (and
    (>= k@210@01 0)
    (< k@210@01 (Seq_length matrix@150@01))
    (>= j@211@01 0)
    (< j@211@01 (Seq_length matrix@150@01))
    (not (= k@210@01 j@211@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@210@01 0)
      (and
        (< k@210@01 (Seq_length matrix@150@01))
        (and
          (>= j@211@01 0)
          (and
            (< j@211@01 (Seq_length matrix@150@01))
            (not (= k@210@01 j@211@01)))))))
  (and
    (>= k@210@01 0)
    (and
      (< k@210@01 (Seq_length matrix@150@01))
      (and
        (>= j@211@01 0)
        (and (< j@211@01 (Seq_length matrix@150@01)) (not (= k@210@01 j@211@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@210@01 Int) (j@211@01 Int)) (!
  (and
    (=>
      (>= k@210@01 0)
      (and
        (>= k@210@01 0)
        (=>
          (< k@210@01 (Seq_length matrix@150@01))
          (and
            (< k@210@01 (Seq_length matrix@150@01))
            (=>
              (>= j@211@01 0)
              (and
                (>= j@211@01 0)
                (or
                  (< j@211@01 (Seq_length matrix@150@01))
                  (not (< j@211@01 (Seq_length matrix@150@01))))))
            (or (>= j@211@01 0) (not (>= j@211@01 0)))))
        (or
          (< k@210@01 (Seq_length matrix@150@01))
          (not (< k@210@01 (Seq_length matrix@150@01))))))
    (or (>= k@210@01 0) (not (>= k@210@01 0)))
    (=>
      (and
        (>= k@210@01 0)
        (and
          (< k@210@01 (Seq_length matrix@150@01))
          (and
            (>= j@211@01 0)
            (and
              (< j@211@01 (Seq_length matrix@150@01))
              (not (= k@210@01 j@211@01))))))
      (and
        (>= k@210@01 0)
        (< k@210@01 (Seq_length matrix@150@01))
        (>= j@211@01 0)
        (< j@211@01 (Seq_length matrix@150@01))
        (not (= k@210@01 j@211@01))))
    (or
      (not
        (and
          (>= k@210@01 0)
          (and
            (< k@210@01 (Seq_length matrix@150@01))
            (and
              (>= j@211@01 0)
              (and
                (< j@211@01 (Seq_length matrix@150@01))
                (not (= k@210@01 j@211@01)))))))
      (and
        (>= k@210@01 0)
        (and
          (< k@210@01 (Seq_length matrix@150@01))
          (and
            (>= j@211@01 0)
            (and
              (< j@211@01 (Seq_length matrix@150@01))
              (not (= k@210@01 j@211@01))))))))
  :pattern ((Seq_index matrix@150@01 k@210@01) (Seq_index matrix@150@01 j@211@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@93@12@93@122-aux|)))
(push) ; 3
(assert (not (forall ((k@210@01 Int) (j@211@01 Int)) (!
  (=>
    (and
      (>= k@210@01 0)
      (and
        (< k@210@01 (Seq_length matrix@150@01))
        (and
          (>= j@211@01 0)
          (and
            (< j@211@01 (Seq_length matrix@150@01))
            (not (= k@210@01 j@211@01))))))
    (not
      (= (Seq_index matrix@150@01 k@210@01) (Seq_index matrix@150@01 j@211@01))))
  :pattern ((Seq_index matrix@150@01 k@210@01) (Seq_index matrix@150@01 j@211@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@93@12@93@122|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((k@210@01 Int) (j@211@01 Int)) (!
  (=>
    (and
      (>= k@210@01 0)
      (and
        (< k@210@01 (Seq_length matrix@150@01))
        (and
          (>= j@211@01 0)
          (and
            (< j@211@01 (Seq_length matrix@150@01))
            (not (= k@210@01 j@211@01))))))
    (not
      (= (Seq_index matrix@150@01 k@210@01) (Seq_index matrix@150@01 j@211@01))))
  :pattern ((Seq_index matrix@150@01 k@210@01) (Seq_index matrix@150@01 j@211@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@93@12@93@122|)))
(declare-const j@212@01 Int)
(push) ; 3
; [eval] (j in [0..M * step)) && j % step < N
; [eval] (j in [0..M * step))
; [eval] [0..M * step)
; [eval] M * step
(push) ; 4
; [then-branch: 92 | !(j@212@01 in [0..M@147@01 * step@149@01]) | live]
; [else-branch: 92 | j@212@01 in [0..M@147@01 * step@149@01] | live]
(push) ; 5
; [then-branch: 92 | !(j@212@01 in [0..M@147@01 * step@149@01])]
(assert (not (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j@212@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 92 | j@212@01 in [0..M@147@01 * step@149@01]]
(assert (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j@212@01))
; [eval] j % step < N
; [eval] j % step
(push) ; 6
(assert (not (not (= step@149@01 0))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j@212@01)
  (not (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j@212@01))))
(assert (and
  (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j@212@01)
  (< (mod j@212@01 step@149@01) N@148@01)))
; [eval] matrix[j]
(push) ; 4
(assert (not (>= j@212@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@212@01 (Seq_length matrix@150@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@213@01 ($Ref) Int)
(declare-fun img@214@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@212@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j@212@01)
      (< (mod j@212@01 step@149@01) N@148@01))
    (or
      (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j@212@01)
      (not (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j@212@01))))
  :pattern ((Seq_index matrix@150@01 j@212@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@212@01 Int) (j2@212@01 Int)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j1@212@01)
        (< (mod j1@212@01 step@149@01) N@148@01))
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j2@212@01)
        (< (mod j2@212@01 step@149@01) N@148@01))
      (= (Seq_index matrix@150@01 j1@212@01) (Seq_index matrix@150@01 j2@212@01)))
    (= j1@212@01 j2@212@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@212@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j@212@01)
      (< (mod j@212@01 step@149@01) N@148@01))
    (and
      (= (inv@213@01 (Seq_index matrix@150@01 j@212@01)) j@212@01)
      (img@214@01 (Seq_index matrix@150@01 j@212@01))))
  :pattern ((Seq_index matrix@150@01 j@212@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@214@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@213@01 r))
        (< (mod (inv@213@01 r) step@149@01) N@148@01)))
    (= (Seq_index matrix@150@01 (inv@213@01 r)) r))
  :pattern ((inv@213@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@215@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@213@01 r))
        (< (mod (inv@213@01 r) step@149@01) N@148@01))
      (img@214@01 r)
      (= r (Seq_index matrix@150@01 (inv@213@01 r))))
    ($Perm.min
      (ite
        (and
          (img@158@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
            (< (mod (inv@157@01 r) step@149@01) N@148@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (/ (to_real 1) (to_real 4)))
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
          (img@158@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
            (< (mod (inv@157@01 r) step@149@01) N@148@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@215@01 r))
    $Perm.No)
  
  :qid |quant-u-8616|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@215@01 r) $Perm.No)
  
  :qid |quant-u-8617|))))
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
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@213@01 r))
        (< (mod (inv@213@01 r) step@149@01) N@148@01))
      (img@214@01 r)
      (= r (Seq_index matrix@150@01 (inv@213@01 r))))
    (= (- (/ (to_real 1) (to_real 4)) (pTaken@215@01 r)) $Perm.No))
  
  :qid |quant-u-8618|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] N <= step
; [eval] (forall k_fresh_rw_0: Int :: { (matrix[k_fresh_rw_0].Ref__Integer_value in [0..P)) } (k_fresh_rw_0 in [0..M * step)) && k_fresh_rw_0 % step < N ==> (matrix[k_fresh_rw_0].Ref__Integer_value in [0..P)))
(declare-const k_fresh_rw_0@216@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (k_fresh_rw_0 in [0..M * step)) && k_fresh_rw_0 % step < N ==> (matrix[k_fresh_rw_0].Ref__Integer_value in [0..P))
; [eval] (k_fresh_rw_0 in [0..M * step)) && k_fresh_rw_0 % step < N
; [eval] (k_fresh_rw_0 in [0..M * step))
; [eval] [0..M * step)
; [eval] M * step
(push) ; 4
; [then-branch: 93 | !(k_fresh_rw_0@216@01 in [0..M@147@01 * step@149@01]) | live]
; [else-branch: 93 | k_fresh_rw_0@216@01 in [0..M@147@01 * step@149@01] | live]
(push) ; 5
; [then-branch: 93 | !(k_fresh_rw_0@216@01 in [0..M@147@01 * step@149@01])]
(assert (not (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@216@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 93 | k_fresh_rw_0@216@01 in [0..M@147@01 * step@149@01]]
(assert (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@216@01))
; [eval] k_fresh_rw_0 % step < N
; [eval] k_fresh_rw_0 % step
(push) ; 6
(assert (not (not (= step@149@01 0))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@216@01)
  (not (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@216@01))))
(push) ; 4
; [then-branch: 94 | k_fresh_rw_0@216@01 in [0..M@147@01 * step@149@01] && k_fresh_rw_0@216@01 % step@149@01 < N@148@01 | live]
; [else-branch: 94 | !(k_fresh_rw_0@216@01 in [0..M@147@01 * step@149@01] && k_fresh_rw_0@216@01 % step@149@01 < N@148@01) | live]
(push) ; 5
; [then-branch: 94 | k_fresh_rw_0@216@01 in [0..M@147@01 * step@149@01] && k_fresh_rw_0@216@01 % step@149@01 < N@148@01]
(assert (and
  (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@216@01)
  (< (mod k_fresh_rw_0@216@01 step@149@01) N@148@01)))
; [eval] (matrix[k_fresh_rw_0].Ref__Integer_value in [0..P))
; [eval] [0..P)
; [eval] matrix[k_fresh_rw_0]
(push) ; 6
(assert (not (>= k_fresh_rw_0@216@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k_fresh_rw_0@216@01 (Seq_length matrix@150@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@158@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
          (< (mod (inv@157@01 r) step@149@01) N@148@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
    :qid |qp.fvfValDef34|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@199@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@198@01 r)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@196@01)) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@196@01)) r))
    :qid |qp.fvfValDef35|))))
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@158@01 (Seq_index matrix@150@01 k_fresh_rw_0@216@01))
        (and
          (Seq_contains
            (Seq_range 0 (* M@147@01 step@149@01))
            (inv@157@01 (Seq_index matrix@150@01 k_fresh_rw_0@216@01)))
          (<
            (mod
              (inv@157@01 (Seq_index matrix@150@01 k_fresh_rw_0@216@01))
              step@149@01)
            N@148@01)))
      (/ (to_real 1) (to_real 2))
      $Perm.No)
    (ite
      (and
        (img@199@01 (Seq_index matrix@150@01 k_fresh_rw_0@216@01))
        (Seq_contains
          (Seq_range 0 P@151@01)
          (inv@198@01 (Seq_index matrix@150@01 k_fresh_rw_0@216@01))))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 94 | !(k_fresh_rw_0@216@01 in [0..M@147@01 * step@149@01] && k_fresh_rw_0@216@01 % step@149@01 < N@148@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@216@01)
    (< (mod k_fresh_rw_0@216@01 step@149@01) N@148@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@158@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
        (< (mod (inv@157@01 r) step@149@01) N@148@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef34|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@199@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@198@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@196@01)) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@196@01)) r))
  :qid |qp.fvfValDef35|)))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@216@01)
      (< (mod k_fresh_rw_0@216@01 step@149@01) N@148@01)))
  (and
    (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@216@01)
    (< (mod k_fresh_rw_0@216@01 step@149@01) N@148@01))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@158@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
        (< (mod (inv@157@01 r) step@149@01) N@148@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef34|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@199@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@198@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@196@01)) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@196@01)) r))
  :qid |qp.fvfValDef35|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k_fresh_rw_0@216@01 Int)) (!
  (and
    (or
      (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@216@01)
      (not
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@216@01)))
    (or
      (not
        (and
          (Seq_contains
            (Seq_range 0 (* M@147@01 step@149@01))
            k_fresh_rw_0@216@01)
          (< (mod k_fresh_rw_0@216@01 step@149@01) N@148@01)))
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@216@01)
        (< (mod k_fresh_rw_0@216@01 step@149@01) N@148@01))))
  :pattern ((Seq_contains
    (Seq_range 0 P@151@01)
    ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) (Seq_index
      matrix@150@01
      k_fresh_rw_0@216@01))))
  :pattern ((Seq_contains_trigger
    (Seq_range 0 P@151@01)
    ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) (Seq_index
      matrix@150@01
      k_fresh_rw_0@216@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@95@28@95@172-aux|)))
(assert (forall ((k_fresh_rw_0@216@01 Int)) (!
  (and
    (or
      (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@216@01)
      (not
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@216@01)))
    (or
      (not
        (and
          (Seq_contains
            (Seq_range 0 (* M@147@01 step@149@01))
            k_fresh_rw_0@216@01)
          (< (mod k_fresh_rw_0@216@01 step@149@01) N@148@01)))
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@216@01)
        (< (mod k_fresh_rw_0@216@01 step@149@01) N@148@01))))
  :pattern ((Seq_contains_trigger
    (Seq_range 0 P@151@01)
    ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) (Seq_index
      matrix@150@01
      k_fresh_rw_0@216@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@95@28@95@172-aux|)))
(push) ; 3
(assert (not (forall ((k_fresh_rw_0@216@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@216@01)
      (< (mod k_fresh_rw_0@216@01 step@149@01) N@148@01))
    (Seq_contains
      (Seq_range 0 P@151@01)
      ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) (Seq_index
        matrix@150@01
        k_fresh_rw_0@216@01))))
  :pattern ((Seq_contains
    (Seq_range 0 P@151@01)
    ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) (Seq_index
      matrix@150@01
      k_fresh_rw_0@216@01))))
  :pattern ((Seq_contains_trigger
    (Seq_range 0 P@151@01)
    ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) (Seq_index
      matrix@150@01
      k_fresh_rw_0@216@01))))
  :pattern ((Seq_contains_trigger
    (Seq_range 0 P@151@01)
    ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) (Seq_index
      matrix@150@01
      k_fresh_rw_0@216@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@95@28@95@172|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((k_fresh_rw_0@216@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@216@01)
      (< (mod k_fresh_rw_0@216@01 step@149@01) N@148@01))
    (Seq_contains
      (Seq_range 0 P@151@01)
      ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) (Seq_index
        matrix@150@01
        k_fresh_rw_0@216@01))))
  :pattern ((Seq_contains
    (Seq_range 0 P@151@01)
    ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) (Seq_index
      matrix@150@01
      k_fresh_rw_0@216@01))))
  :pattern ((Seq_contains_trigger
    (Seq_range 0 P@151@01)
    ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) (Seq_index
      matrix@150@01
      k_fresh_rw_0@216@01))))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@95@28@95@172|)))
; [eval] (forall k: Int, j: Int :: { hist[k], hist[j] } k >= 0 && (k < |hist| && (j >= 0 && (j < |hist| && k != j))) ==> hist[k] != hist[j])
(declare-const k@217@01 Int)
(declare-const j@218@01 Int)
(push) ; 3
; [eval] k >= 0 && (k < |hist| && (j >= 0 && (j < |hist| && k != j))) ==> hist[k] != hist[j]
; [eval] k >= 0 && (k < |hist| && (j >= 0 && (j < |hist| && k != j)))
; [eval] k >= 0
(push) ; 4
; [then-branch: 95 | !(k@217@01 >= 0) | live]
; [else-branch: 95 | k@217@01 >= 0 | live]
(push) ; 5
; [then-branch: 95 | !(k@217@01 >= 0)]
(assert (not (>= k@217@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 95 | k@217@01 >= 0]
(assert (>= k@217@01 0))
; [eval] k < |hist|
; [eval] |hist|
(push) ; 6
; [then-branch: 96 | !(k@217@01 < |hist@152@01|) | live]
; [else-branch: 96 | k@217@01 < |hist@152@01| | live]
(push) ; 7
; [then-branch: 96 | !(k@217@01 < |hist@152@01|)]
(assert (not (< k@217@01 (Seq_length hist@152@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 96 | k@217@01 < |hist@152@01|]
(assert (< k@217@01 (Seq_length hist@152@01)))
; [eval] j >= 0
(push) ; 8
; [then-branch: 97 | !(j@218@01 >= 0) | live]
; [else-branch: 97 | j@218@01 >= 0 | live]
(push) ; 9
; [then-branch: 97 | !(j@218@01 >= 0)]
(assert (not (>= j@218@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 97 | j@218@01 >= 0]
(assert (>= j@218@01 0))
; [eval] j < |hist|
; [eval] |hist|
(push) ; 10
; [then-branch: 98 | !(j@218@01 < |hist@152@01|) | live]
; [else-branch: 98 | j@218@01 < |hist@152@01| | live]
(push) ; 11
; [then-branch: 98 | !(j@218@01 < |hist@152@01|)]
(assert (not (< j@218@01 (Seq_length hist@152@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 98 | j@218@01 < |hist@152@01|]
(assert (< j@218@01 (Seq_length hist@152@01)))
; [eval] k != j
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (< j@218@01 (Seq_length hist@152@01))
  (not (< j@218@01 (Seq_length hist@152@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@218@01 0)
  (and
    (>= j@218@01 0)
    (or
      (< j@218@01 (Seq_length hist@152@01))
      (not (< j@218@01 (Seq_length hist@152@01)))))))
(assert (or (>= j@218@01 0) (not (>= j@218@01 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@217@01 (Seq_length hist@152@01))
  (and
    (< k@217@01 (Seq_length hist@152@01))
    (=>
      (>= j@218@01 0)
      (and
        (>= j@218@01 0)
        (or
          (< j@218@01 (Seq_length hist@152@01))
          (not (< j@218@01 (Seq_length hist@152@01))))))
    (or (>= j@218@01 0) (not (>= j@218@01 0))))))
(assert (or
  (< k@217@01 (Seq_length hist@152@01))
  (not (< k@217@01 (Seq_length hist@152@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@217@01 0)
  (and
    (>= k@217@01 0)
    (=>
      (< k@217@01 (Seq_length hist@152@01))
      (and
        (< k@217@01 (Seq_length hist@152@01))
        (=>
          (>= j@218@01 0)
          (and
            (>= j@218@01 0)
            (or
              (< j@218@01 (Seq_length hist@152@01))
              (not (< j@218@01 (Seq_length hist@152@01))))))
        (or (>= j@218@01 0) (not (>= j@218@01 0)))))
    (or
      (< k@217@01 (Seq_length hist@152@01))
      (not (< k@217@01 (Seq_length hist@152@01)))))))
(assert (or (>= k@217@01 0) (not (>= k@217@01 0))))
(push) ; 4
; [then-branch: 99 | k@217@01 >= 0 && k@217@01 < |hist@152@01| && j@218@01 >= 0 && j@218@01 < |hist@152@01| && k@217@01 != j@218@01 | live]
; [else-branch: 99 | !(k@217@01 >= 0 && k@217@01 < |hist@152@01| && j@218@01 >= 0 && j@218@01 < |hist@152@01| && k@217@01 != j@218@01) | live]
(push) ; 5
; [then-branch: 99 | k@217@01 >= 0 && k@217@01 < |hist@152@01| && j@218@01 >= 0 && j@218@01 < |hist@152@01| && k@217@01 != j@218@01]
(assert (and
  (>= k@217@01 0)
  (and
    (< k@217@01 (Seq_length hist@152@01))
    (and
      (>= j@218@01 0)
      (and (< j@218@01 (Seq_length hist@152@01)) (not (= k@217@01 j@218@01)))))))
; [eval] hist[k] != hist[j]
; [eval] hist[k]
; [eval] hist[j]
(pop) ; 5
(push) ; 5
; [else-branch: 99 | !(k@217@01 >= 0 && k@217@01 < |hist@152@01| && j@218@01 >= 0 && j@218@01 < |hist@152@01| && k@217@01 != j@218@01)]
(assert (not
  (and
    (>= k@217@01 0)
    (and
      (< k@217@01 (Seq_length hist@152@01))
      (and
        (>= j@218@01 0)
        (and (< j@218@01 (Seq_length hist@152@01)) (not (= k@217@01 j@218@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (>= k@217@01 0)
    (and
      (< k@217@01 (Seq_length hist@152@01))
      (and
        (>= j@218@01 0)
        (and (< j@218@01 (Seq_length hist@152@01)) (not (= k@217@01 j@218@01))))))
  (and
    (>= k@217@01 0)
    (< k@217@01 (Seq_length hist@152@01))
    (>= j@218@01 0)
    (< j@218@01 (Seq_length hist@152@01))
    (not (= k@217@01 j@218@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@217@01 0)
      (and
        (< k@217@01 (Seq_length hist@152@01))
        (and
          (>= j@218@01 0)
          (and (< j@218@01 (Seq_length hist@152@01)) (not (= k@217@01 j@218@01)))))))
  (and
    (>= k@217@01 0)
    (and
      (< k@217@01 (Seq_length hist@152@01))
      (and
        (>= j@218@01 0)
        (and (< j@218@01 (Seq_length hist@152@01)) (not (= k@217@01 j@218@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@217@01 Int) (j@218@01 Int)) (!
  (and
    (=>
      (>= k@217@01 0)
      (and
        (>= k@217@01 0)
        (=>
          (< k@217@01 (Seq_length hist@152@01))
          (and
            (< k@217@01 (Seq_length hist@152@01))
            (=>
              (>= j@218@01 0)
              (and
                (>= j@218@01 0)
                (or
                  (< j@218@01 (Seq_length hist@152@01))
                  (not (< j@218@01 (Seq_length hist@152@01))))))
            (or (>= j@218@01 0) (not (>= j@218@01 0)))))
        (or
          (< k@217@01 (Seq_length hist@152@01))
          (not (< k@217@01 (Seq_length hist@152@01))))))
    (or (>= k@217@01 0) (not (>= k@217@01 0)))
    (=>
      (and
        (>= k@217@01 0)
        (and
          (< k@217@01 (Seq_length hist@152@01))
          (and
            (>= j@218@01 0)
            (and
              (< j@218@01 (Seq_length hist@152@01))
              (not (= k@217@01 j@218@01))))))
      (and
        (>= k@217@01 0)
        (< k@217@01 (Seq_length hist@152@01))
        (>= j@218@01 0)
        (< j@218@01 (Seq_length hist@152@01))
        (not (= k@217@01 j@218@01))))
    (or
      (not
        (and
          (>= k@217@01 0)
          (and
            (< k@217@01 (Seq_length hist@152@01))
            (and
              (>= j@218@01 0)
              (and
                (< j@218@01 (Seq_length hist@152@01))
                (not (= k@217@01 j@218@01)))))))
      (and
        (>= k@217@01 0)
        (and
          (< k@217@01 (Seq_length hist@152@01))
          (and
            (>= j@218@01 0)
            (and
              (< j@218@01 (Seq_length hist@152@01))
              (not (= k@217@01 j@218@01))))))))
  :pattern ((Seq_index hist@152@01 k@217@01) (Seq_index hist@152@01 j@218@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@96@12@96@114-aux|)))
(push) ; 3
(assert (not (forall ((k@217@01 Int) (j@218@01 Int)) (!
  (=>
    (and
      (>= k@217@01 0)
      (and
        (< k@217@01 (Seq_length hist@152@01))
        (and
          (>= j@218@01 0)
          (and (< j@218@01 (Seq_length hist@152@01)) (not (= k@217@01 j@218@01))))))
    (not (= (Seq_index hist@152@01 k@217@01) (Seq_index hist@152@01 j@218@01))))
  :pattern ((Seq_index hist@152@01 k@217@01) (Seq_index hist@152@01 j@218@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@96@12@96@114|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((k@217@01 Int) (j@218@01 Int)) (!
  (=>
    (and
      (>= k@217@01 0)
      (and
        (< k@217@01 (Seq_length hist@152@01))
        (and
          (>= j@218@01 0)
          (and (< j@218@01 (Seq_length hist@152@01)) (not (= k@217@01 j@218@01))))))
    (not (= (Seq_index hist@152@01 k@217@01) (Seq_index hist@152@01 j@218@01))))
  :pattern ((Seq_index hist@152@01 k@217@01) (Seq_index hist@152@01 j@218@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@96@12@96@114|)))
(declare-const $t@219@01 $Snap)
(assert (= $t@219@01 ($Snap.combine ($Snap.first $t@219@01) ($Snap.second $t@219@01))))
(assert (= ($Snap.first $t@219@01) $Snap.unit))
; [eval] M > 0
(assert (=
  ($Snap.second $t@219@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@219@01))
    ($Snap.second ($Snap.second $t@219@01)))))
(assert (= ($Snap.first ($Snap.second $t@219@01)) $Snap.unit))
; [eval] N > 0
(assert (=
  ($Snap.second ($Snap.second $t@219@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@219@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@219@01))) $Snap.unit))
; [eval] step >= N
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@219@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@219@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@219@01))))
  $Snap.unit))
; [eval] P > 0
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))
  $Snap.unit))
; [eval] N <= step
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))))
(declare-const j@220@01 Int)
(push) ; 3
; [eval] (j in [0..M * step)) && j % step < N
; [eval] (j in [0..M * step))
; [eval] [0..M * step)
; [eval] M * step
(push) ; 4
; [then-branch: 100 | !(j@220@01 in [0..M@147@01 * step@149@01]) | live]
; [else-branch: 100 | j@220@01 in [0..M@147@01 * step@149@01] | live]
(push) ; 5
; [then-branch: 100 | !(j@220@01 in [0..M@147@01 * step@149@01])]
(assert (not (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j@220@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 100 | j@220@01 in [0..M@147@01 * step@149@01]]
(assert (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j@220@01))
; [eval] j % step < N
; [eval] j % step
(push) ; 6
(assert (not (not (= step@149@01 0))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j@220@01)
  (not (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j@220@01))))
(assert (and
  (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j@220@01)
  (< (mod j@220@01 step@149@01) N@148@01)))
; [eval] matrix[j]
(push) ; 4
(assert (not (>= j@220@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@220@01 (Seq_length matrix@150@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@221@01 ($Ref) Int)
(declare-fun img@222@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@220@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j@220@01)
      (< (mod j@220@01 step@149@01) N@148@01))
    (or
      (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j@220@01)
      (not (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j@220@01))))
  :pattern ((Seq_index matrix@150@01 j@220@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@220@01 Int) (j2@220@01 Int)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j1@220@01)
        (< (mod j1@220@01 step@149@01) N@148@01))
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j2@220@01)
        (< (mod j2@220@01 step@149@01) N@148@01))
      (= (Seq_index matrix@150@01 j1@220@01) (Seq_index matrix@150@01 j2@220@01)))
    (= j1@220@01 j2@220@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@220@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j@220@01)
      (< (mod j@220@01 step@149@01) N@148@01))
    (and
      (= (inv@221@01 (Seq_index matrix@150@01 j@220@01)) j@220@01)
      (img@222@01 (Seq_index matrix@150@01 j@220@01))))
  :pattern ((Seq_index matrix@150@01 j@220@01))
  :qid |quant-u-8620|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@222@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@221@01 r))
        (< (mod (inv@221@01 r) step@149@01) N@148@01)))
    (= (Seq_index matrix@150@01 (inv@221@01 r)) r))
  :pattern ((inv@221@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@220@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j@220@01)
      (< (mod j@220@01 step@149@01) N@148@01))
    (not (= (Seq_index matrix@150@01 j@220@01) $Ref.null)))
  :pattern ((Seq_index matrix@150@01 j@220@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index matrix@150@01 j@220@01) (Seq_index matrix@150@01 j1@156@01))
    (=
      (and
        (img@222@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@221@01 r))
          (< (mod (inv@221@01 r) step@149@01) N@148@01)))
      (and
        (img@158@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
          (< (mod (inv@157@01 r) step@149@01) N@148@01)))))
  
  :qid |quant-u-8621|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))))))
(declare-const k@223@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (k in [0..P))
; [eval] [0..P)
(assert (Seq_contains (Seq_range 0 P@151@01) k@223@01))
; [eval] hist[k]
(push) ; 4
(assert (not (>= k@223@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< k@223@01 (Seq_length hist@152@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@224@01 ($Ref) Int)
(declare-fun img@225@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((k1@223@01 Int) (k2@223@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 P@151@01) k1@223@01)
      (Seq_contains (Seq_range 0 P@151@01) k2@223@01)
      (= (Seq_index hist@152@01 k1@223@01) (Seq_index hist@152@01 k2@223@01)))
    (= k1@223@01 k2@223@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@223@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 P@151@01) k@223@01)
    (and
      (= (inv@224@01 (Seq_index hist@152@01 k@223@01)) k@223@01)
      (img@225@01 (Seq_index hist@152@01 k@223@01))))
  :pattern ((Seq_index hist@152@01 k@223@01))
  :qid |quant-u-8623|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r)))
    (= (Seq_index hist@152@01 (inv@224@01 r)) r))
  :pattern ((inv@224@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((k@223@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 P@151@01) k@223@01)
    (not (= (Seq_index hist@152@01 k@223@01) $Ref.null)))
  :pattern ((Seq_index hist@152@01 k@223@01))
  :qid |Ref__Integer_value-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index hist@152@01 k@223@01) (Seq_index matrix@150@01 j@220@01))
    (=
      (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r)))
      (and
        (img@222@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@221@01 r))
          (< (mod (inv@221@01 r) step@149@01) N@148@01)))))
  
  :qid |quant-u-8624|))))
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
    (= (Seq_index hist@152@01 k@223@01) (Seq_index matrix@150@01 j1@156@01))
    (=
      (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r)))
      (and
        (img@158@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
          (< (mod (inv@157@01 r) step@149@01) N@148@01)))))
  
  :qid |quant-u-8625|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))))
  $Snap.unit))
; [eval] (forall k: Int :: { (k in [0..P)) } { old(hist[k]) } (k in [0..P)) ==> hist[k].Ref__Integer_value == old(hist[k].Ref__Integer_value) + count_square(0, 0, N, step, 0, M * step, matrix, k))
(declare-const k@226@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (k in [0..P)) ==> hist[k].Ref__Integer_value == old(hist[k].Ref__Integer_value) + count_square(0, 0, N, step, 0, M * step, matrix, k)
; [eval] (k in [0..P))
; [eval] [0..P)
(push) ; 4
; [then-branch: 101 | k@226@01 in [0..P@151@01] | live]
; [else-branch: 101 | !(k@226@01 in [0..P@151@01]) | live]
(push) ; 5
; [then-branch: 101 | k@226@01 in [0..P@151@01]]
(assert (Seq_contains (Seq_range 0 P@151@01) k@226@01))
; [eval] hist[k].Ref__Integer_value == old(hist[k].Ref__Integer_value) + count_square(0, 0, N, step, 0, M * step, matrix, k)
; [eval] hist[k]
(push) ; 6
(assert (not (>= k@226@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k@226@01 (Seq_length hist@152@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@227@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@158@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
          (< (mod (inv@157@01 r) step@149@01) N@148@01)))
      (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@215@01 r)))
      false)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@227@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@227@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef37|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@222@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@221@01 r))
        (< (mod (inv@221@01 r) step@149@01) N@148@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@227@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@227@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r))
  :qid |qp.fvfValDef38|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@227@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@227@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r))
  :qid |qp.fvfValDef39|)))
(declare-const pm@228@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@228@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@158@01 r)
            (and
              (Seq_contains
                (Seq_range 0 (* M@147@01 step@149@01))
                (inv@157@01 r))
              (< (mod (inv@157@01 r) step@149@01) N@148@01)))
          (- (/ (to_real 1) (to_real 2)) (pTaken@215@01 r))
          $Perm.No)
        (ite
          (and
            (img@222@01 r)
            (and
              (Seq_contains
                (Seq_range 0 (* M@147@01 step@149@01))
                (inv@221@01 r))
              (< (mod (inv@221@01 r) step@149@01) N@148@01)))
          (/ (to_real 1) (to_real 4))
          $Perm.No))
      (ite
        (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@228@01  $FPM) r))
  :qid |qp.resPrmSumDef40|)))
(push) ; 6
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@228@01  $FPM) (Seq_index
    hist@152@01
    k@226@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] old(hist[k].Ref__Integer_value) + count_square(0, 0, N, step, 0, M * step, matrix, k)
; [eval] old(hist[k].Ref__Integer_value)
; [eval] hist[k]
(push) ; 6
(assert (not (>= k@226@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k@226@01 (Seq_length hist@152@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@158@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
          (< (mod (inv@157@01 r) step@149@01) N@148@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
    :qid |qp.fvfValDef34|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@199@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@198@01 r)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@196@01)) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@196@01)) r))
    :qid |qp.fvfValDef35|))))
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@158@01 (Seq_index hist@152@01 k@226@01))
        (and
          (Seq_contains
            (Seq_range 0 (* M@147@01 step@149@01))
            (inv@157@01 (Seq_index hist@152@01 k@226@01)))
          (<
            (mod (inv@157@01 (Seq_index hist@152@01 k@226@01)) step@149@01)
            N@148@01)))
      (/ (to_real 1) (to_real 2))
      $Perm.No)
    (ite
      (and
        (img@199@01 (Seq_index hist@152@01 k@226@01))
        (Seq_contains
          (Seq_range 0 P@151@01)
          (inv@198@01 (Seq_index hist@152@01 k@226@01))))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] count_square(0, 0, N, step, 0, M * step, matrix, k)
; [eval] M * step
(push) ; 6
; [eval] 0 <= lo
; [eval] lo <= hi
(push) ; 7
(assert (not (<= 0 N@148@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 N@148@01))
; [eval] hi <= step
; [eval] step > 0
(push) ; 7
(assert (not (> step@149@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (> step@149@01 0))
; [eval] 0 <= min
; [eval] min <= i
; [eval] i <= max
(push) ; 7
(assert (not (<= 0 (* M@147@01 step@149@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (* M@147@01 step@149@01)))
; [eval] max <= |ar|
; [eval] |ar|
; [eval] (forall k: Int, j: Int ::k >= 0 && (k < |ar| && (j >= 0 && (j < |ar| && k != j))) ==> ar[k] != ar[j])
(declare-const k@229@01 Int)
(declare-const j@230@01 Int)
(push) ; 7
; [eval] k >= 0 && (k < |ar| && (j >= 0 && (j < |ar| && k != j))) ==> ar[k] != ar[j]
; [eval] k >= 0 && (k < |ar| && (j >= 0 && (j < |ar| && k != j)))
; [eval] k >= 0
(push) ; 8
; [then-branch: 102 | !(k@229@01 >= 0) | live]
; [else-branch: 102 | k@229@01 >= 0 | live]
(push) ; 9
; [then-branch: 102 | !(k@229@01 >= 0)]
(assert (not (>= k@229@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 102 | k@229@01 >= 0]
(assert (>= k@229@01 0))
; [eval] k < |ar|
; [eval] |ar|
(push) ; 10
; [then-branch: 103 | !(k@229@01 < |matrix@150@01|) | live]
; [else-branch: 103 | k@229@01 < |matrix@150@01| | live]
(push) ; 11
; [then-branch: 103 | !(k@229@01 < |matrix@150@01|)]
(assert (not (< k@229@01 (Seq_length matrix@150@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 103 | k@229@01 < |matrix@150@01|]
(assert (< k@229@01 (Seq_length matrix@150@01)))
; [eval] j >= 0
(push) ; 12
; [then-branch: 104 | !(j@230@01 >= 0) | live]
; [else-branch: 104 | j@230@01 >= 0 | live]
(push) ; 13
; [then-branch: 104 | !(j@230@01 >= 0)]
(assert (not (>= j@230@01 0)))
(pop) ; 13
(push) ; 13
; [else-branch: 104 | j@230@01 >= 0]
(assert (>= j@230@01 0))
; [eval] j < |ar|
; [eval] |ar|
(push) ; 14
; [then-branch: 105 | !(j@230@01 < |matrix@150@01|) | live]
; [else-branch: 105 | j@230@01 < |matrix@150@01| | live]
(push) ; 15
; [then-branch: 105 | !(j@230@01 < |matrix@150@01|)]
(assert (not (< j@230@01 (Seq_length matrix@150@01))))
(pop) ; 15
(push) ; 15
; [else-branch: 105 | j@230@01 < |matrix@150@01|]
(assert (< j@230@01 (Seq_length matrix@150@01)))
; [eval] k != j
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or
  (< j@230@01 (Seq_length matrix@150@01))
  (not (< j@230@01 (Seq_length matrix@150@01)))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@230@01 0)
  (and
    (>= j@230@01 0)
    (or
      (< j@230@01 (Seq_length matrix@150@01))
      (not (< j@230@01 (Seq_length matrix@150@01)))))))
(assert (or (>= j@230@01 0) (not (>= j@230@01 0))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@229@01 (Seq_length matrix@150@01))
  (and
    (< k@229@01 (Seq_length matrix@150@01))
    (=>
      (>= j@230@01 0)
      (and
        (>= j@230@01 0)
        (or
          (< j@230@01 (Seq_length matrix@150@01))
          (not (< j@230@01 (Seq_length matrix@150@01))))))
    (or (>= j@230@01 0) (not (>= j@230@01 0))))))
(assert (or
  (< k@229@01 (Seq_length matrix@150@01))
  (not (< k@229@01 (Seq_length matrix@150@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@229@01 0)
  (and
    (>= k@229@01 0)
    (=>
      (< k@229@01 (Seq_length matrix@150@01))
      (and
        (< k@229@01 (Seq_length matrix@150@01))
        (=>
          (>= j@230@01 0)
          (and
            (>= j@230@01 0)
            (or
              (< j@230@01 (Seq_length matrix@150@01))
              (not (< j@230@01 (Seq_length matrix@150@01))))))
        (or (>= j@230@01 0) (not (>= j@230@01 0)))))
    (or
      (< k@229@01 (Seq_length matrix@150@01))
      (not (< k@229@01 (Seq_length matrix@150@01)))))))
(assert (or (>= k@229@01 0) (not (>= k@229@01 0))))
(push) ; 8
; [then-branch: 106 | k@229@01 >= 0 && k@229@01 < |matrix@150@01| && j@230@01 >= 0 && j@230@01 < |matrix@150@01| && k@229@01 != j@230@01 | live]
; [else-branch: 106 | !(k@229@01 >= 0 && k@229@01 < |matrix@150@01| && j@230@01 >= 0 && j@230@01 < |matrix@150@01| && k@229@01 != j@230@01) | live]
(push) ; 9
; [then-branch: 106 | k@229@01 >= 0 && k@229@01 < |matrix@150@01| && j@230@01 >= 0 && j@230@01 < |matrix@150@01| && k@229@01 != j@230@01]
(assert (and
  (>= k@229@01 0)
  (and
    (< k@229@01 (Seq_length matrix@150@01))
    (and
      (>= j@230@01 0)
      (and (< j@230@01 (Seq_length matrix@150@01)) (not (= k@229@01 j@230@01)))))))
; [eval] ar[k] != ar[j]
; [eval] ar[k]
; [eval] ar[j]
(pop) ; 9
(push) ; 9
; [else-branch: 106 | !(k@229@01 >= 0 && k@229@01 < |matrix@150@01| && j@230@01 >= 0 && j@230@01 < |matrix@150@01| && k@229@01 != j@230@01)]
(assert (not
  (and
    (>= k@229@01 0)
    (and
      (< k@229@01 (Seq_length matrix@150@01))
      (and
        (>= j@230@01 0)
        (and (< j@230@01 (Seq_length matrix@150@01)) (not (= k@229@01 j@230@01))))))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  (and
    (>= k@229@01 0)
    (and
      (< k@229@01 (Seq_length matrix@150@01))
      (and
        (>= j@230@01 0)
        (and (< j@230@01 (Seq_length matrix@150@01)) (not (= k@229@01 j@230@01))))))
  (and
    (>= k@229@01 0)
    (< k@229@01 (Seq_length matrix@150@01))
    (>= j@230@01 0)
    (< j@230@01 (Seq_length matrix@150@01))
    (not (= k@229@01 j@230@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@229@01 0)
      (and
        (< k@229@01 (Seq_length matrix@150@01))
        (and
          (>= j@230@01 0)
          (and
            (< j@230@01 (Seq_length matrix@150@01))
            (not (= k@229@01 j@230@01)))))))
  (and
    (>= k@229@01 0)
    (and
      (< k@229@01 (Seq_length matrix@150@01))
      (and
        (>= j@230@01 0)
        (and (< j@230@01 (Seq_length matrix@150@01)) (not (= k@229@01 j@230@01))))))))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 7
(assert (not (forall ((k@229@01 Int) (j@230@01 Int)) (!
  (=>
    (and
      (>= k@229@01 0)
      (and
        (< k@229@01 (Seq_length matrix@150@01))
        (and
          (>= j@230@01 0)
          (and
            (< j@230@01 (Seq_length matrix@150@01))
            (not (= k@229@01 j@230@01))))))
    (not
      (= (Seq_index matrix@150@01 k@229@01) (Seq_index matrix@150@01 j@230@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@38@12@38@106|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (forall ((k@229@01 Int) (j@230@01 Int)) (!
  (=>
    (and
      (>= k@229@01 0)
      (and
        (< k@229@01 (Seq_length matrix@150@01))
        (and
          (>= j@230@01 0)
          (and
            (< j@230@01 (Seq_length matrix@150@01))
            (not (= k@229@01 j@230@01))))))
    (not
      (= (Seq_index matrix@150@01 k@229@01) (Seq_index matrix@150@01 j@230@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@38@12@38@106|)))
(declare-const k@231@01 Int)
(push) ; 7
; [eval] min <= k && (k < max && (lo <= k % step && k % step < hi))
; [eval] min <= k
(push) ; 8
; [then-branch: 107 | !(0 <= k@231@01) | live]
; [else-branch: 107 | 0 <= k@231@01 | live]
(push) ; 9
; [then-branch: 107 | !(0 <= k@231@01)]
(assert (not (<= 0 k@231@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 107 | 0 <= k@231@01]
(assert (<= 0 k@231@01))
; [eval] k < max
(push) ; 10
; [then-branch: 108 | !(k@231@01 < M@147@01 * step@149@01) | live]
; [else-branch: 108 | k@231@01 < M@147@01 * step@149@01 | live]
(push) ; 11
; [then-branch: 108 | !(k@231@01 < M@147@01 * step@149@01)]
(assert (not (< k@231@01 (* M@147@01 step@149@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 108 | k@231@01 < M@147@01 * step@149@01]
(assert (< k@231@01 (* M@147@01 step@149@01)))
; [eval] lo <= k % step
; [eval] k % step
(push) ; 12
(assert (not (not (= step@149@01 0))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(push) ; 12
; [then-branch: 109 | !(0 <= k@231@01 % step@149@01) | live]
; [else-branch: 109 | 0 <= k@231@01 % step@149@01 | live]
(push) ; 13
; [then-branch: 109 | !(0 <= k@231@01 % step@149@01)]
(assert (not (<= 0 (mod k@231@01 step@149@01))))
(pop) ; 13
(push) ; 13
; [else-branch: 109 | 0 <= k@231@01 % step@149@01]
(assert (<= 0 (mod k@231@01 step@149@01)))
; [eval] k % step < hi
; [eval] k % step
(push) ; 14
(assert (not (not (= step@149@01 0))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 (mod k@231@01 step@149@01)) (not (<= 0 (mod k@231@01 step@149@01)))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@231@01 (* M@147@01 step@149@01))
  (and
    (< k@231@01 (* M@147@01 step@149@01))
    (or
      (<= 0 (mod k@231@01 step@149@01))
      (not (<= 0 (mod k@231@01 step@149@01)))))))
(assert (or
  (< k@231@01 (* M@147@01 step@149@01))
  (not (< k@231@01 (* M@147@01 step@149@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@231@01)
  (and
    (<= 0 k@231@01)
    (=>
      (< k@231@01 (* M@147@01 step@149@01))
      (and
        (< k@231@01 (* M@147@01 step@149@01))
        (or
          (<= 0 (mod k@231@01 step@149@01))
          (not (<= 0 (mod k@231@01 step@149@01))))))
    (or
      (< k@231@01 (* M@147@01 step@149@01))
      (not (< k@231@01 (* M@147@01 step@149@01)))))))
(assert (or (<= 0 k@231@01) (not (<= 0 k@231@01))))
(assert (and
  (<= 0 k@231@01)
  (and
    (< k@231@01 (* M@147@01 step@149@01))
    (and
      (<= 0 (mod k@231@01 step@149@01))
      (< (mod k@231@01 step@149@01) N@148@01)))))
(declare-const $k@232@01 $Perm)
(assert ($Perm.isReadVar $k@232@01))
; [eval] ar[k]
(push) ; 8
(assert (not (>= k@231@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (< k@231@01 (Seq_length matrix@150@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(declare-fun inv@233@01 ($Ref) Int)
(declare-fun img@234@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@232@01))
; Nested auxiliary terms: non-globals
(assert (forall ((k@231@01 Int)) (!
  (=>
    (and
      (<= 0 k@231@01)
      (and
        (< k@231@01 (* M@147@01 step@149@01))
        (and
          (<= 0 (mod k@231@01 step@149@01))
          (< (mod k@231@01 step@149@01) N@148@01))))
    (and
      (=>
        (<= 0 k@231@01)
        (and
          (<= 0 k@231@01)
          (=>
            (< k@231@01 (* M@147@01 step@149@01))
            (and
              (< k@231@01 (* M@147@01 step@149@01))
              (or
                (<= 0 (mod k@231@01 step@149@01))
                (not (<= 0 (mod k@231@01 step@149@01))))))
          (or
            (< k@231@01 (* M@147@01 step@149@01))
            (not (< k@231@01 (* M@147@01 step@149@01))))))
      (or (<= 0 k@231@01) (not (<= 0 k@231@01)))))
  :pattern ((Seq_index matrix@150@01 k@231@01))
  :qid |Ref__Integer_value-aux|)))
(push) ; 7
(assert (not (forall ((k@231@01 Int)) (!
  (=>
    (and
      (<= 0 k@231@01)
      (and
        (< k@231@01 (* M@147@01 step@149@01))
        (and
          (<= 0 (mod k@231@01 step@149@01))
          (< (mod k@231@01 step@149@01) N@148@01))))
    (or (= $k@232@01 $Perm.No) (< $Perm.No $k@232@01)))
  
  :qid |quant-u-8626|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((k1@231@01 Int) (k2@231@01 Int)) (!
  (=>
    (and
      (and
        (and
          (<= 0 k1@231@01)
          (and
            (< k1@231@01 (* M@147@01 step@149@01))
            (and
              (<= 0 (mod k1@231@01 step@149@01))
              (< (mod k1@231@01 step@149@01) N@148@01))))
        (< $Perm.No $k@232@01))
      (and
        (and
          (<= 0 k2@231@01)
          (and
            (< k2@231@01 (* M@147@01 step@149@01))
            (and
              (<= 0 (mod k2@231@01 step@149@01))
              (< (mod k2@231@01 step@149@01) N@148@01))))
        (< $Perm.No $k@232@01))
      (= (Seq_index matrix@150@01 k1@231@01) (Seq_index matrix@150@01 k2@231@01)))
    (= k1@231@01 k2@231@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@231@01 Int)) (!
  (=>
    (and
      (and
        (<= 0 k@231@01)
        (and
          (< k@231@01 (* M@147@01 step@149@01))
          (and
            (<= 0 (mod k@231@01 step@149@01))
            (< (mod k@231@01 step@149@01) N@148@01))))
      (< $Perm.No $k@232@01))
    (and
      (= (inv@233@01 (Seq_index matrix@150@01 k@231@01)) k@231@01)
      (img@234@01 (Seq_index matrix@150@01 k@231@01))))
  :pattern ((Seq_index matrix@150@01 k@231@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@234@01 r)
      (and
        (and
          (<= 0 (inv@233@01 r))
          (and
            (< (inv@233@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@233@01 r) step@149@01))
              (< (mod (inv@233@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@232@01)))
    (= (Seq_index matrix@150@01 (inv@233@01 r)) r))
  :pattern ((inv@233@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((k@231@01 Int)) (!
  (= (Seq_index matrix@150@01 k@231@01) (Seq_index hist@152@01 k@231@01))
  
  :qid |quant-u-8627|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@233@01 r))
          (and
            (< (inv@233@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@233@01 r) step@149@01))
              (< (mod (inv@233@01 r) step@149@01) N@148@01))))
        (img@234@01 r)
        (= r (Seq_index matrix@150@01 (inv@233@01 r))))
      (> $k@232@01 $Perm.No))
    (>
      (+
        (+
          (ite
            (and
              (img@158@01 r)
              (and
                (Seq_contains
                  (Seq_range 0 (* M@147@01 step@149@01))
                  (inv@157@01 r))
                (< (mod (inv@157@01 r) step@149@01) N@148@01)))
            (- (/ (to_real 1) (to_real 2)) (pTaken@215@01 r))
            $Perm.No)
          (ite
            (and
              (img@222@01 r)
              (and
                (Seq_contains
                  (Seq_range 0 (* M@147@01 step@149@01))
                  (inv@221@01 r))
                (< (mod (inv@221@01 r) step@149@01) N@148@01)))
            (/ (to_real 1) (to_real 4))
            $Perm.No))
        (ite
          (and
            (img@225@01 r)
            (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r)))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-8628|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@235@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@235@01  $FVF<Ref__Integer_value>)))
      (and
        (and
          (<= 0 (inv@233@01 r))
          (and
            (< (inv@233@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@233@01 r) step@149@01))
              (< (mod (inv@233@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@232@01)
        (img@234@01 r)))
    (=>
      (and
        (and
          (<= 0 (inv@233@01 r))
          (and
            (< (inv@233@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@233@01 r) step@149@01))
              (< (mod (inv@233@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@232@01)
        (img@234@01 r))
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@235@01  $FVF<Ref__Integer_value>)))))
  :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (as sm@235@01  $FVF<Ref__Integer_value>))))
  :qid |qp.fvfDomDef44|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@233@01 r))
          (and
            (< (inv@233@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@233@01 r) step@149@01))
              (< (mod (inv@233@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@232@01)
        (img@234@01 r))
      (ite
        (and
          (img@158@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
            (< (mod (inv@157@01 r) step@149@01) N@148@01)))
        (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@215@01 r)))
        false))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@235@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@235@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef41|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@233@01 r))
          (and
            (< (inv@233@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@233@01 r) step@149@01))
              (< (mod (inv@233@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@232@01)
        (img@234@01 r))
      (and
        (img@222@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@221@01 r))
          (< (mod (inv@221@01 r) step@149@01) N@148@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@235@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@235@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r))
  :qid |qp.fvfValDef42|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@233@01 r))
          (and
            (< (inv@233@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@233@01 r) step@149@01))
              (< (mod (inv@233@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@232@01)
        (img@234@01 r))
      (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@235@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@235@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r))
  :qid |qp.fvfValDef43|)))
(assert (count_square%precondition ($Snap.combine
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
                  ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@235@01  $FVF<Ref__Integer_value>))))))))))) 0 0 N@148@01 step@149@01 0 (*
  M@147@01
  step@149@01) matrix@150@01 k@226@01))
(pop) ; 6
; Joined path conditions
(assert ($Perm.isReadVar $k@232@01))
(assert (forall ((k@231@01 Int)) (!
  (=>
    (and
      (and
        (<= 0 k@231@01)
        (and
          (< k@231@01 (* M@147@01 step@149@01))
          (and
            (<= 0 (mod k@231@01 step@149@01))
            (< (mod k@231@01 step@149@01) N@148@01))))
      (< $Perm.No $k@232@01))
    (and
      (= (inv@233@01 (Seq_index matrix@150@01 k@231@01)) k@231@01)
      (img@234@01 (Seq_index matrix@150@01 k@231@01))))
  :pattern ((Seq_index matrix@150@01 k@231@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@234@01 r)
      (and
        (and
          (<= 0 (inv@233@01 r))
          (and
            (< (inv@233@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@233@01 r) step@149@01))
              (< (mod (inv@233@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@232@01)))
    (= (Seq_index matrix@150@01 (inv@233@01 r)) r))
  :pattern ((inv@233@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@235@01  $FVF<Ref__Integer_value>)))
      (and
        (and
          (<= 0 (inv@233@01 r))
          (and
            (< (inv@233@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@233@01 r) step@149@01))
              (< (mod (inv@233@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@232@01)
        (img@234@01 r)))
    (=>
      (and
        (and
          (<= 0 (inv@233@01 r))
          (and
            (< (inv@233@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@233@01 r) step@149@01))
              (< (mod (inv@233@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@232@01)
        (img@234@01 r))
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@235@01  $FVF<Ref__Integer_value>)))))
  :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (as sm@235@01  $FVF<Ref__Integer_value>))))
  :qid |qp.fvfDomDef44|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@233@01 r))
          (and
            (< (inv@233@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@233@01 r) step@149@01))
              (< (mod (inv@233@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@232@01)
        (img@234@01 r))
      (ite
        (and
          (img@158@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
            (< (mod (inv@157@01 r) step@149@01) N@148@01)))
        (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@215@01 r)))
        false))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@235@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@235@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef41|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@233@01 r))
          (and
            (< (inv@233@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@233@01 r) step@149@01))
              (< (mod (inv@233@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@232@01)
        (img@234@01 r))
      (and
        (img@222@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@221@01 r))
          (< (mod (inv@221@01 r) step@149@01) N@148@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@235@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@235@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r))
  :qid |qp.fvfValDef42|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@233@01 r))
          (and
            (< (inv@233@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@233@01 r) step@149@01))
              (< (mod (inv@233@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@232@01)
        (img@234@01 r))
      (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@235@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@235@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r))
  :qid |qp.fvfValDef43|)))
(assert (and
  (<= 0 N@148@01)
  (> step@149@01 0)
  (<= 0 (* M@147@01 step@149@01))
  (forall ((k@229@01 Int) (j@230@01 Int)) (!
    (=>
      (and
        (>= k@229@01 0)
        (and
          (< k@229@01 (Seq_length matrix@150@01))
          (and
            (>= j@230@01 0)
            (and
              (< j@230@01 (Seq_length matrix@150@01))
              (not (= k@229@01 j@230@01))))))
      (not
        (= (Seq_index matrix@150@01 k@229@01) (Seq_index matrix@150@01 j@230@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@38@12@38@106|))
  (forall ((k@231@01 Int)) (!
    (=>
      (and
        (<= 0 k@231@01)
        (and
          (< k@231@01 (* M@147@01 step@149@01))
          (and
            (<= 0 (mod k@231@01 step@149@01))
            (< (mod k@231@01 step@149@01) N@148@01))))
      (and
        (=>
          (<= 0 k@231@01)
          (and
            (<= 0 k@231@01)
            (=>
              (< k@231@01 (* M@147@01 step@149@01))
              (and
                (< k@231@01 (* M@147@01 step@149@01))
                (or
                  (<= 0 (mod k@231@01 step@149@01))
                  (not (<= 0 (mod k@231@01 step@149@01))))))
            (or
              (< k@231@01 (* M@147@01 step@149@01))
              (not (< k@231@01 (* M@147@01 step@149@01))))))
        (or (<= 0 k@231@01) (not (<= 0 k@231@01)))))
    :pattern ((Seq_index matrix@150@01 k@231@01))
    :qid |Ref__Integer_value-aux|))
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
                    ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@235@01  $FVF<Ref__Integer_value>))))))))))) 0 0 N@148@01 step@149@01 0 (*
    M@147@01
    step@149@01) matrix@150@01 k@226@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 101 | !(k@226@01 in [0..P@151@01])]
(assert (not (Seq_contains (Seq_range 0 P@151@01) k@226@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@158@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
          (< (mod (inv@157@01 r) step@149@01) N@148@01)))
      (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@215@01 r)))
      false)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@227@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@227@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef37|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@222@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@221@01 r))
        (< (mod (inv@221@01 r) step@149@01) N@148@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@227@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@227@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r))
  :qid |qp.fvfValDef38|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@227@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@227@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r))
  :qid |qp.fvfValDef39|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@228@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@158@01 r)
            (and
              (Seq_contains
                (Seq_range 0 (* M@147@01 step@149@01))
                (inv@157@01 r))
              (< (mod (inv@157@01 r) step@149@01) N@148@01)))
          (- (/ (to_real 1) (to_real 2)) (pTaken@215@01 r))
          $Perm.No)
        (ite
          (and
            (img@222@01 r)
            (and
              (Seq_contains
                (Seq_range 0 (* M@147@01 step@149@01))
                (inv@221@01 r))
              (< (mod (inv@221@01 r) step@149@01) N@148@01)))
          (/ (to_real 1) (to_real 4))
          $Perm.No))
      (ite
        (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@228@01  $FPM) r))
  :qid |qp.resPrmSumDef40|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@158@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
        (< (mod (inv@157@01 r) step@149@01) N@148@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef34|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@199@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@198@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@196@01)) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@196@01)) r))
  :qid |qp.fvfValDef35|)))
(assert ($Perm.isReadVar $k@232@01))
(assert (forall ((k@231@01 Int)) (!
  (=>
    (and
      (and
        (<= 0 k@231@01)
        (and
          (< k@231@01 (* M@147@01 step@149@01))
          (and
            (<= 0 (mod k@231@01 step@149@01))
            (< (mod k@231@01 step@149@01) N@148@01))))
      (< $Perm.No $k@232@01))
    (and
      (= (inv@233@01 (Seq_index matrix@150@01 k@231@01)) k@231@01)
      (img@234@01 (Seq_index matrix@150@01 k@231@01))))
  :pattern ((Seq_index matrix@150@01 k@231@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@234@01 r)
      (and
        (and
          (<= 0 (inv@233@01 r))
          (and
            (< (inv@233@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@233@01 r) step@149@01))
              (< (mod (inv@233@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@232@01)))
    (= (Seq_index matrix@150@01 (inv@233@01 r)) r))
  :pattern ((inv@233@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@235@01  $FVF<Ref__Integer_value>)))
      (and
        (and
          (<= 0 (inv@233@01 r))
          (and
            (< (inv@233@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@233@01 r) step@149@01))
              (< (mod (inv@233@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@232@01)
        (img@234@01 r)))
    (=>
      (and
        (and
          (<= 0 (inv@233@01 r))
          (and
            (< (inv@233@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@233@01 r) step@149@01))
              (< (mod (inv@233@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@232@01)
        (img@234@01 r))
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@235@01  $FVF<Ref__Integer_value>)))))
  :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (as sm@235@01  $FVF<Ref__Integer_value>))))
  :qid |qp.fvfDomDef44|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@233@01 r))
          (and
            (< (inv@233@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@233@01 r) step@149@01))
              (< (mod (inv@233@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@232@01)
        (img@234@01 r))
      (ite
        (and
          (img@158@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
            (< (mod (inv@157@01 r) step@149@01) N@148@01)))
        (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@215@01 r)))
        false))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@235@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@235@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef41|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@233@01 r))
          (and
            (< (inv@233@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@233@01 r) step@149@01))
              (< (mod (inv@233@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@232@01)
        (img@234@01 r))
      (and
        (img@222@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@221@01 r))
          (< (mod (inv@221@01 r) step@149@01) N@148@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@235@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@235@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r))
  :qid |qp.fvfValDef42|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@233@01 r))
          (and
            (< (inv@233@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@233@01 r) step@149@01))
              (< (mod (inv@233@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@232@01)
        (img@234@01 r))
      (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@235@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@235@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r))
  :qid |qp.fvfValDef43|)))
(assert (=>
  (Seq_contains (Seq_range 0 P@151@01) k@226@01)
  (and
    (Seq_contains (Seq_range 0 P@151@01) k@226@01)
    (<= 0 N@148@01)
    (> step@149@01 0)
    (<= 0 (* M@147@01 step@149@01))
    (forall ((k@229@01 Int) (j@230@01 Int)) (!
      (=>
        (and
          (>= k@229@01 0)
          (and
            (< k@229@01 (Seq_length matrix@150@01))
            (and
              (>= j@230@01 0)
              (and
                (< j@230@01 (Seq_length matrix@150@01))
                (not (= k@229@01 j@230@01))))))
        (not
          (=
            (Seq_index matrix@150@01 k@229@01)
            (Seq_index matrix@150@01 j@230@01))))
      
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@38@12@38@106|))
    (forall ((k@231@01 Int)) (!
      (=>
        (and
          (<= 0 k@231@01)
          (and
            (< k@231@01 (* M@147@01 step@149@01))
            (and
              (<= 0 (mod k@231@01 step@149@01))
              (< (mod k@231@01 step@149@01) N@148@01))))
        (and
          (=>
            (<= 0 k@231@01)
            (and
              (<= 0 k@231@01)
              (=>
                (< k@231@01 (* M@147@01 step@149@01))
                (and
                  (< k@231@01 (* M@147@01 step@149@01))
                  (or
                    (<= 0 (mod k@231@01 step@149@01))
                    (not (<= 0 (mod k@231@01 step@149@01))))))
              (or
                (< k@231@01 (* M@147@01 step@149@01))
                (not (< k@231@01 (* M@147@01 step@149@01))))))
          (or (<= 0 k@231@01) (not (<= 0 k@231@01)))))
      :pattern ((Seq_index matrix@150@01 k@231@01))
      :qid |Ref__Integer_value-aux|))
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
                      ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@235@01  $FVF<Ref__Integer_value>))))))))))) 0 0 N@148@01 step@149@01 0 (*
      M@147@01
      step@149@01) matrix@150@01 k@226@01))))
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range 0 P@151@01) k@226@01))
  (Seq_contains (Seq_range 0 P@151@01) k@226@01)))
; [eval] old(hist[k])
; [eval] hist[k]
(push) ; 4
(assert (not (>= k@226@01 0)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@158@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
          (< (mod (inv@157@01 r) step@149@01) N@148@01)))
      (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@215@01 r)))
      false)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@227@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@227@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef37|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@222@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@221@01 r))
        (< (mod (inv@221@01 r) step@149@01) N@148@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@227@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@227@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r))
  :qid |qp.fvfValDef38|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@227@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@227@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r))
  :qid |qp.fvfValDef39|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@228@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@158@01 r)
            (and
              (Seq_contains
                (Seq_range 0 (* M@147@01 step@149@01))
                (inv@157@01 r))
              (< (mod (inv@157@01 r) step@149@01) N@148@01)))
          (- (/ (to_real 1) (to_real 2)) (pTaken@215@01 r))
          $Perm.No)
        (ite
          (and
            (img@222@01 r)
            (and
              (Seq_contains
                (Seq_range 0 (* M@147@01 step@149@01))
                (inv@221@01 r))
              (< (mod (inv@221@01 r) step@149@01) N@148@01)))
          (/ (to_real 1) (to_real 4))
          $Perm.No))
      (ite
        (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@228@01  $FPM) r))
  :qid |qp.resPrmSumDef40|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@158@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
        (< (mod (inv@157@01 r) step@149@01) N@148@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef34|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@199@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@198@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@196@01)) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@196@01)) r))
  :qid |qp.fvfValDef35|)))
(assert ($Perm.isReadVar $k@232@01))
(assert (forall ((k@231@01 Int)) (!
  (=>
    (and
      (and
        (<= 0 k@231@01)
        (and
          (< k@231@01 (* M@147@01 step@149@01))
          (and
            (<= 0 (mod k@231@01 step@149@01))
            (< (mod k@231@01 step@149@01) N@148@01))))
      (< $Perm.No $k@232@01))
    (and
      (= (inv@233@01 (Seq_index matrix@150@01 k@231@01)) k@231@01)
      (img@234@01 (Seq_index matrix@150@01 k@231@01))))
  :pattern ((Seq_index matrix@150@01 k@231@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@234@01 r)
      (and
        (and
          (<= 0 (inv@233@01 r))
          (and
            (< (inv@233@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@233@01 r) step@149@01))
              (< (mod (inv@233@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@232@01)))
    (= (Seq_index matrix@150@01 (inv@233@01 r)) r))
  :pattern ((inv@233@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@235@01  $FVF<Ref__Integer_value>)))
      (and
        (and
          (<= 0 (inv@233@01 r))
          (and
            (< (inv@233@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@233@01 r) step@149@01))
              (< (mod (inv@233@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@232@01)
        (img@234@01 r)))
    (=>
      (and
        (and
          (<= 0 (inv@233@01 r))
          (and
            (< (inv@233@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@233@01 r) step@149@01))
              (< (mod (inv@233@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@232@01)
        (img@234@01 r))
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@235@01  $FVF<Ref__Integer_value>)))))
  :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (as sm@235@01  $FVF<Ref__Integer_value>))))
  :qid |qp.fvfDomDef44|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@233@01 r))
          (and
            (< (inv@233@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@233@01 r) step@149@01))
              (< (mod (inv@233@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@232@01)
        (img@234@01 r))
      (ite
        (and
          (img@158@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
            (< (mod (inv@157@01 r) step@149@01) N@148@01)))
        (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@215@01 r)))
        false))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@235@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@235@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef41|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@233@01 r))
          (and
            (< (inv@233@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@233@01 r) step@149@01))
              (< (mod (inv@233@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@232@01)
        (img@234@01 r))
      (and
        (img@222@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@221@01 r))
          (< (mod (inv@221@01 r) step@149@01) N@148@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@235@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@235@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r))
  :qid |qp.fvfValDef42|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@233@01 r))
          (and
            (< (inv@233@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@233@01 r) step@149@01))
              (< (mod (inv@233@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@232@01)
        (img@234@01 r))
      (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@235@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@235@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r))
  :qid |qp.fvfValDef43|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@226@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 P@151@01) k@226@01)
      (and
        (Seq_contains (Seq_range 0 P@151@01) k@226@01)
        (<= 0 N@148@01)
        (> step@149@01 0)
        (<= 0 (* M@147@01 step@149@01))
        (forall ((k@229@01 Int) (j@230@01 Int)) (!
          (=>
            (and
              (>= k@229@01 0)
              (and
                (< k@229@01 (Seq_length matrix@150@01))
                (and
                  (>= j@230@01 0)
                  (and
                    (< j@230@01 (Seq_length matrix@150@01))
                    (not (= k@229@01 j@230@01))))))
            (not
              (=
                (Seq_index matrix@150@01 k@229@01)
                (Seq_index matrix@150@01 j@230@01))))
          
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@38@12@38@106|))
        (forall ((k@231@01 Int)) (!
          (=>
            (and
              (<= 0 k@231@01)
              (and
                (< k@231@01 (* M@147@01 step@149@01))
                (and
                  (<= 0 (mod k@231@01 step@149@01))
                  (< (mod k@231@01 step@149@01) N@148@01))))
            (and
              (=>
                (<= 0 k@231@01)
                (and
                  (<= 0 k@231@01)
                  (=>
                    (< k@231@01 (* M@147@01 step@149@01))
                    (and
                      (< k@231@01 (* M@147@01 step@149@01))
                      (or
                        (<= 0 (mod k@231@01 step@149@01))
                        (not (<= 0 (mod k@231@01 step@149@01))))))
                  (or
                    (< k@231@01 (* M@147@01 step@149@01))
                    (not (< k@231@01 (* M@147@01 step@149@01))))))
              (or (<= 0 k@231@01) (not (<= 0 k@231@01)))))
          :pattern ((Seq_index matrix@150@01 k@231@01))
          :qid |Ref__Integer_value-aux|))
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
                          ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@235@01  $FVF<Ref__Integer_value>))))))))))) 0 0 N@148@01 step@149@01 0 (*
          M@147@01
          step@149@01) matrix@150@01 k@226@01)))
    (or
      (not (Seq_contains (Seq_range 0 P@151@01) k@226@01))
      (Seq_contains (Seq_range 0 P@151@01) k@226@01)))
  :pattern ((Seq_contains (Seq_range 0 P@151@01) k@226@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 P@151@01) k@226@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@101@12@101@164-aux|)))
(assert (forall ((k@226@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 P@151@01) k@226@01)
      (and
        (Seq_contains (Seq_range 0 P@151@01) k@226@01)
        (<= 0 N@148@01)
        (> step@149@01 0)
        (<= 0 (* M@147@01 step@149@01))
        (forall ((k@229@01 Int) (j@230@01 Int)) (!
          (=>
            (and
              (>= k@229@01 0)
              (and
                (< k@229@01 (Seq_length matrix@150@01))
                (and
                  (>= j@230@01 0)
                  (and
                    (< j@230@01 (Seq_length matrix@150@01))
                    (not (= k@229@01 j@230@01))))))
            (not
              (=
                (Seq_index matrix@150@01 k@229@01)
                (Seq_index matrix@150@01 j@230@01))))
          
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@38@12@38@106|))
        (forall ((k@231@01 Int)) (!
          (=>
            (and
              (<= 0 k@231@01)
              (and
                (< k@231@01 (* M@147@01 step@149@01))
                (and
                  (<= 0 (mod k@231@01 step@149@01))
                  (< (mod k@231@01 step@149@01) N@148@01))))
            (and
              (=>
                (<= 0 k@231@01)
                (and
                  (<= 0 k@231@01)
                  (=>
                    (< k@231@01 (* M@147@01 step@149@01))
                    (and
                      (< k@231@01 (* M@147@01 step@149@01))
                      (or
                        (<= 0 (mod k@231@01 step@149@01))
                        (not (<= 0 (mod k@231@01 step@149@01))))))
                  (or
                    (< k@231@01 (* M@147@01 step@149@01))
                    (not (< k@231@01 (* M@147@01 step@149@01))))))
              (or (<= 0 k@231@01) (not (<= 0 k@231@01)))))
          :pattern ((Seq_index matrix@150@01 k@231@01))
          :qid |Ref__Integer_value-aux|))
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
                          ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@235@01  $FVF<Ref__Integer_value>))))))))))) 0 0 N@148@01 step@149@01 0 (*
          M@147@01
          step@149@01) matrix@150@01 k@226@01)))
    (or
      (not (Seq_contains (Seq_range 0 P@151@01) k@226@01))
      (Seq_contains (Seq_range 0 P@151@01) k@226@01)))
  :pattern ((Seq_contains_trigger (Seq_range 0 P@151@01) k@226@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@101@12@101@164-aux|)))
(assert (forall ((k@226@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 P@151@01) k@226@01)
      (and
        (Seq_contains (Seq_range 0 P@151@01) k@226@01)
        (<= 0 N@148@01)
        (> step@149@01 0)
        (<= 0 (* M@147@01 step@149@01))
        (forall ((k@229@01 Int) (j@230@01 Int)) (!
          (=>
            (and
              (>= k@229@01 0)
              (and
                (< k@229@01 (Seq_length matrix@150@01))
                (and
                  (>= j@230@01 0)
                  (and
                    (< j@230@01 (Seq_length matrix@150@01))
                    (not (= k@229@01 j@230@01))))))
            (not
              (=
                (Seq_index matrix@150@01 k@229@01)
                (Seq_index matrix@150@01 j@230@01))))
          
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@38@12@38@106|))
        (forall ((k@231@01 Int)) (!
          (=>
            (and
              (<= 0 k@231@01)
              (and
                (< k@231@01 (* M@147@01 step@149@01))
                (and
                  (<= 0 (mod k@231@01 step@149@01))
                  (< (mod k@231@01 step@149@01) N@148@01))))
            (and
              (=>
                (<= 0 k@231@01)
                (and
                  (<= 0 k@231@01)
                  (=>
                    (< k@231@01 (* M@147@01 step@149@01))
                    (and
                      (< k@231@01 (* M@147@01 step@149@01))
                      (or
                        (<= 0 (mod k@231@01 step@149@01))
                        (not (<= 0 (mod k@231@01 step@149@01))))))
                  (or
                    (< k@231@01 (* M@147@01 step@149@01))
                    (not (< k@231@01 (* M@147@01 step@149@01))))))
              (or (<= 0 k@231@01) (not (<= 0 k@231@01)))))
          :pattern ((Seq_index matrix@150@01 k@231@01))
          :qid |Ref__Integer_value-aux|))
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
                          ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@235@01  $FVF<Ref__Integer_value>))))))))))) 0 0 N@148@01 step@149@01 0 (*
          M@147@01
          step@149@01) matrix@150@01 k@226@01)))
    (or
      (not (Seq_contains (Seq_range 0 P@151@01) k@226@01))
      (Seq_contains (Seq_range 0 P@151@01) k@226@01)))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@101@12@101@164-aux|)))
(assert (forall ((k@226@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 P@151@01) k@226@01)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@227@01  $FVF<Ref__Integer_value>) (Seq_index
        hist@152@01
        k@226@01))
      (+
        ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) (Seq_index
          hist@152@01
          k@226@01))
        (count_square ($Snap.combine
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
                          ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@235@01  $FVF<Ref__Integer_value>))))))))))) 0 0 N@148@01 step@149@01 0 (*
          M@147@01
          step@149@01) matrix@150@01 k@226@01))))
  :pattern ((Seq_contains (Seq_range 0 P@151@01) k@226@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 P@151@01) k@226@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@101@12@101@164|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))))
  $Snap.unit))
; [eval] N <= step
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))))
  $Snap.unit))
; [eval] (forall k_fresh_rw_0: Int :: { old(matrix[k_fresh_rw_0]) } (k_fresh_rw_0 in [0..M * step)) && k_fresh_rw_0 % step < N ==> matrix[k_fresh_rw_0].Ref__Integer_value == old(matrix[k_fresh_rw_0].Ref__Integer_value))
(declare-const k_fresh_rw_0@236@01 Int)
(push) ; 3
; [eval] (k_fresh_rw_0 in [0..M * step)) && k_fresh_rw_0 % step < N ==> matrix[k_fresh_rw_0].Ref__Integer_value == old(matrix[k_fresh_rw_0].Ref__Integer_value)
; [eval] (k_fresh_rw_0 in [0..M * step)) && k_fresh_rw_0 % step < N
; [eval] (k_fresh_rw_0 in [0..M * step))
; [eval] [0..M * step)
; [eval] M * step
(push) ; 4
; [then-branch: 110 | !(k_fresh_rw_0@236@01 in [0..M@147@01 * step@149@01]) | live]
; [else-branch: 110 | k_fresh_rw_0@236@01 in [0..M@147@01 * step@149@01] | live]
(push) ; 5
; [then-branch: 110 | !(k_fresh_rw_0@236@01 in [0..M@147@01 * step@149@01])]
(assert (not (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@236@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 110 | k_fresh_rw_0@236@01 in [0..M@147@01 * step@149@01]]
(assert (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@236@01))
; [eval] k_fresh_rw_0 % step < N
; [eval] k_fresh_rw_0 % step
(push) ; 6
(assert (not (not (= step@149@01 0))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@236@01)
  (not (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@236@01))))
(push) ; 4
; [then-branch: 111 | k_fresh_rw_0@236@01 in [0..M@147@01 * step@149@01] && k_fresh_rw_0@236@01 % step@149@01 < N@148@01 | live]
; [else-branch: 111 | !(k_fresh_rw_0@236@01 in [0..M@147@01 * step@149@01] && k_fresh_rw_0@236@01 % step@149@01 < N@148@01) | live]
(push) ; 5
; [then-branch: 111 | k_fresh_rw_0@236@01 in [0..M@147@01 * step@149@01] && k_fresh_rw_0@236@01 % step@149@01 < N@148@01]
(assert (and
  (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@236@01)
  (< (mod k_fresh_rw_0@236@01 step@149@01) N@148@01)))
; [eval] matrix[k_fresh_rw_0].Ref__Integer_value == old(matrix[k_fresh_rw_0].Ref__Integer_value)
; [eval] matrix[k_fresh_rw_0]
(push) ; 6
(assert (not (>= k_fresh_rw_0@236@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k_fresh_rw_0@236@01 (Seq_length matrix@150@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@237@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@158@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
          (< (mod (inv@157@01 r) step@149@01) N@148@01)))
      (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@215@01 r)))
      false)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@237@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@237@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef45|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@222@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@221@01 r))
        (< (mod (inv@221@01 r) step@149@01) N@148@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@237@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@237@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r))
  :qid |qp.fvfValDef46|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@237@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@237@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r))
  :qid |qp.fvfValDef47|)))
(declare-const pm@238@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@238@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@158@01 r)
            (and
              (Seq_contains
                (Seq_range 0 (* M@147@01 step@149@01))
                (inv@157@01 r))
              (< (mod (inv@157@01 r) step@149@01) N@148@01)))
          (- (/ (to_real 1) (to_real 2)) (pTaken@215@01 r))
          $Perm.No)
        (ite
          (and
            (img@222@01 r)
            (and
              (Seq_contains
                (Seq_range 0 (* M@147@01 step@149@01))
                (inv@221@01 r))
              (< (mod (inv@221@01 r) step@149@01) N@148@01)))
          (/ (to_real 1) (to_real 4))
          $Perm.No))
      (ite
        (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@238@01  $FPM) r))
  :qid |qp.resPrmSumDef48|)))
(push) ; 6
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@238@01  $FPM) (Seq_index
    matrix@150@01
    k_fresh_rw_0@236@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.01s
; (get-info :all-statistics)
; [eval] old(matrix[k_fresh_rw_0].Ref__Integer_value)
; [eval] matrix[k_fresh_rw_0]
(push) ; 6
(assert (not (>= k_fresh_rw_0@236@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k_fresh_rw_0@236@01 (Seq_length matrix@150@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@158@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
          (< (mod (inv@157@01 r) step@149@01) N@148@01)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
    :qid |qp.fvfValDef34|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@199@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@198@01 r)))
      (=
        ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r)
        ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@196@01)) r)))
    :pattern (($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r))
    :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@196@01)) r))
    :qid |qp.fvfValDef35|))))
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@158@01 (Seq_index matrix@150@01 k_fresh_rw_0@236@01))
        (and
          (Seq_contains
            (Seq_range 0 (* M@147@01 step@149@01))
            (inv@157@01 (Seq_index matrix@150@01 k_fresh_rw_0@236@01)))
          (<
            (mod
              (inv@157@01 (Seq_index matrix@150@01 k_fresh_rw_0@236@01))
              step@149@01)
            N@148@01)))
      (/ (to_real 1) (to_real 2))
      $Perm.No)
    (ite
      (and
        (img@199@01 (Seq_index matrix@150@01 k_fresh_rw_0@236@01))
        (Seq_contains
          (Seq_range 0 P@151@01)
          (inv@198@01 (Seq_index matrix@150@01 k_fresh_rw_0@236@01))))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 111 | !(k_fresh_rw_0@236@01 in [0..M@147@01 * step@149@01] && k_fresh_rw_0@236@01 % step@149@01 < N@148@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@236@01)
    (< (mod k_fresh_rw_0@236@01 step@149@01) N@148@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@158@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
          (< (mod (inv@157@01 r) step@149@01) N@148@01)))
      (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@215@01 r)))
      false)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@237@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@237@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef45|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@222@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@221@01 r))
        (< (mod (inv@221@01 r) step@149@01) N@148@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@237@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@237@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r))
  :qid |qp.fvfValDef46|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@237@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@237@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r))
  :qid |qp.fvfValDef47|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@238@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@158@01 r)
            (and
              (Seq_contains
                (Seq_range 0 (* M@147@01 step@149@01))
                (inv@157@01 r))
              (< (mod (inv@157@01 r) step@149@01) N@148@01)))
          (- (/ (to_real 1) (to_real 2)) (pTaken@215@01 r))
          $Perm.No)
        (ite
          (and
            (img@222@01 r)
            (and
              (Seq_contains
                (Seq_range 0 (* M@147@01 step@149@01))
                (inv@221@01 r))
              (< (mod (inv@221@01 r) step@149@01) N@148@01)))
          (/ (to_real 1) (to_real 4))
          $Perm.No))
      (ite
        (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@238@01  $FPM) r))
  :qid |qp.resPrmSumDef48|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@158@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
        (< (mod (inv@157@01 r) step@149@01) N@148@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef34|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@199@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@198@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@196@01)) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@196@01)) r))
  :qid |qp.fvfValDef35|)))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@236@01)
      (< (mod k_fresh_rw_0@236@01 step@149@01) N@148@01)))
  (and
    (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@236@01)
    (< (mod k_fresh_rw_0@236@01 step@149@01) N@148@01))))
; [eval] old(matrix[k_fresh_rw_0])
; [eval] matrix[k_fresh_rw_0]
(push) ; 4
(assert (not (>= k_fresh_rw_0@236@01 0)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@158@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
          (< (mod (inv@157@01 r) step@149@01) N@148@01)))
      (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@215@01 r)))
      false)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@237@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@237@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef45|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@222@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@221@01 r))
        (< (mod (inv@221@01 r) step@149@01) N@148@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@237@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@237@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r))
  :qid |qp.fvfValDef46|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@237@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@237@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r))
  :qid |qp.fvfValDef47|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@238@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@158@01 r)
            (and
              (Seq_contains
                (Seq_range 0 (* M@147@01 step@149@01))
                (inv@157@01 r))
              (< (mod (inv@157@01 r) step@149@01) N@148@01)))
          (- (/ (to_real 1) (to_real 2)) (pTaken@215@01 r))
          $Perm.No)
        (ite
          (and
            (img@222@01 r)
            (and
              (Seq_contains
                (Seq_range 0 (* M@147@01 step@149@01))
                (inv@221@01 r))
              (< (mod (inv@221@01 r) step@149@01) N@148@01)))
          (/ (to_real 1) (to_real 4))
          $Perm.No))
      (ite
        (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@238@01  $FPM) r))
  :qid |qp.resPrmSumDef48|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@158@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
        (< (mod (inv@157@01 r) step@149@01) N@148@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef34|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@199@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@198@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@196@01)) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first $t@196@01)) r))
  :qid |qp.fvfValDef35|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k_fresh_rw_0@236@01 Int)) (!
  (and
    (or
      (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@236@01)
      (not
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@236@01)))
    (or
      (not
        (and
          (Seq_contains
            (Seq_range 0 (* M@147@01 step@149@01))
            k_fresh_rw_0@236@01)
          (< (mod k_fresh_rw_0@236@01 step@149@01) N@148@01)))
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@236@01)
        (< (mod k_fresh_rw_0@236@01 step@149@01) N@148@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@102@27@102@209-aux|)))
(assert (forall ((k_fresh_rw_0@236@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@236@01)
      (< (mod k_fresh_rw_0@236@01 step@149@01) N@148@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@237@01  $FVF<Ref__Integer_value>) (Seq_index
        matrix@150@01
        k_fresh_rw_0@236@01))
      ($FVF.lookup_Ref__Integer_value (as sm@201@01  $FVF<Ref__Integer_value>) (Seq_index
        matrix@150@01
        k_fresh_rw_0@236@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@102@27@102@209|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] M > 0
; [eval] N > 0
; [eval] step >= N
; [eval] P > 0
; [eval] N <= step
(declare-const j1@239@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (j1 in [0..M * step)) && j1 % step < N
; [eval] (j1 in [0..M * step))
; [eval] [0..M * step)
; [eval] M * step
(push) ; 4
; [then-branch: 112 | !(j1@239@01 in [0..M@147@01 * step@149@01]) | live]
; [else-branch: 112 | j1@239@01 in [0..M@147@01 * step@149@01] | live]
(push) ; 5
; [then-branch: 112 | !(j1@239@01 in [0..M@147@01 * step@149@01])]
(assert (not (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j1@239@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 112 | j1@239@01 in [0..M@147@01 * step@149@01]]
(assert (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j1@239@01))
; [eval] j1 % step < N
; [eval] j1 % step
(push) ; 6
(assert (not (not (= step@149@01 0))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j1@239@01)
  (not (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j1@239@01))))
(assert (and
  (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j1@239@01)
  (< (mod j1@239@01 step@149@01) N@148@01)))
; [eval] matrix[j1]
(push) ; 4
(assert (not (>= j1@239@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j1@239@01 (Seq_length matrix@150@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@240@01 ($Ref) Int)
(declare-fun img@241@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j1@239@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j1@239@01)
      (< (mod j1@239@01 step@149@01) N@148@01))
    (or
      (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j1@239@01)
      (not (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j1@239@01))))
  :pattern ((Seq_index matrix@150@01 j1@239@01))
  :qid |Ref__Integer_value-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j11@239@01 Int) (j12@239@01 Int)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j11@239@01)
        (< (mod j11@239@01 step@149@01) N@148@01))
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j12@239@01)
        (< (mod j12@239@01 step@149@01) N@148@01))
      (=
        (Seq_index matrix@150@01 j11@239@01)
        (Seq_index matrix@150@01 j12@239@01)))
    (= j11@239@01 j12@239@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j1@239@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) j1@239@01)
      (< (mod j1@239@01 step@149@01) N@148@01))
    (and
      (= (inv@240@01 (Seq_index matrix@150@01 j1@239@01)) j1@239@01)
      (img@241@01 (Seq_index matrix@150@01 j1@239@01))))
  :pattern ((Seq_index matrix@150@01 j1@239@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@241@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@240@01 r))
        (< (mod (inv@240@01 r) step@149@01) N@148@01)))
    (= (Seq_index matrix@150@01 (inv@240@01 r)) r))
  :pattern ((inv@240@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((j1@239@01 Int)) (!
  (= (Seq_index matrix@150@01 j1@239@01) (Seq_index hist@152@01 j1@239@01))
  
  :qid |quant-u-8630|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@242@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@240@01 r))
        (< (mod (inv@240@01 r) step@149@01) N@148@01))
      (img@241@01 r)
      (= r (Seq_index matrix@150@01 (inv@240@01 r))))
    ($Perm.min
      (ite
        (and
          (img@158@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
            (< (mod (inv@157@01 r) step@149@01) N@148@01)))
        (- (/ (to_real 1) (to_real 2)) (pTaken@215@01 r))
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
    $Perm.No))
(define-fun pTaken@243@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@240@01 r))
        (< (mod (inv@240@01 r) step@149@01) N@148@01))
      (img@241@01 r)
      (= r (Seq_index matrix@150@01 (inv@240@01 r))))
    ($Perm.min
      (ite
        (and
          (img@222@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@221@01 r))
            (< (mod (inv@221@01 r) step@149@01) N@148@01)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (- (/ (to_real 1) (to_real 2)) (pTaken@242@01 r)))
    $Perm.No))
(define-fun pTaken@244@01 ((r $Ref)) $Perm
  (ite
    (and
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@240@01 r))
        (< (mod (inv@240@01 r) step@149@01) N@148@01))
      (img@241@01 r)
      (= r (Seq_index matrix@150@01 (inv@240@01 r))))
    ($Perm.min
      (ite
        (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r)))
        $Perm.Write
        $Perm.No)
      (- (- (/ (to_real 1) (to_real 2)) (pTaken@242@01 r)) (pTaken@243@01 r)))
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
          (img@158@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
            (< (mod (inv@157@01 r) step@149@01) N@148@01)))
        (- (/ (to_real 1) (to_real 2)) (pTaken@215@01 r))
        $Perm.No)
      (pTaken@242@01 r))
    $Perm.No)
  
  :qid |quant-u-8632|))))
(check-sat)
; unsat
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@240@01 r))
        (< (mod (inv@240@01 r) step@149@01) N@148@01))
      (img@241@01 r)
      (= r (Seq_index matrix@150@01 (inv@240@01 r))))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@242@01 r)) $Perm.No))
  
  :qid |quant-u-8633|))))
(check-sat)
; unknown
(pop) ; 3
; 0.50s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@222@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@221@01 r))
            (< (mod (inv@221@01 r) step@149@01) N@148@01)))
        (/ (to_real 1) (to_real 4))
        $Perm.No)
      (pTaken@243@01 r))
    $Perm.No)
  
  :qid |quant-u-8634|))))
(check-sat)
; unsat
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@240@01 r))
        (< (mod (inv@240@01 r) step@149@01) N@148@01))
      (img@241@01 r)
      (= r (Seq_index matrix@150@01 (inv@240@01 r))))
    (=
      (- (- (/ (to_real 1) (to_real 2)) (pTaken@242@01 r)) (pTaken@243@01 r))
      $Perm.No))
  
  :qid |quant-u-8635|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const i1@245@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (i1 in [0..P))
; [eval] [0..P)
(assert (Seq_contains (Seq_range 0 P@151@01) i1@245@01))
; [eval] hist[i1]
(push) ; 4
(assert (not (>= i1@245@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i1@245@01 (Seq_length hist@152@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@246@01 ($Ref) Int)
(declare-fun img@247@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i11@245@01 Int) (i12@245@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 P@151@01) i11@245@01)
      (Seq_contains (Seq_range 0 P@151@01) i12@245@01)
      (= (Seq_index hist@152@01 i11@245@01) (Seq_index hist@152@01 i12@245@01)))
    (= i11@245@01 i12@245@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i1@245@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 P@151@01) i1@245@01)
    (and
      (= (inv@246@01 (Seq_index hist@152@01 i1@245@01)) i1@245@01)
      (img@247@01 (Seq_index hist@152@01 i1@245@01))))
  :pattern ((Seq_index hist@152@01 i1@245@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@247@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@246@01 r)))
    (= (Seq_index hist@152@01 (inv@246@01 r)) r))
  :pattern ((inv@246@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@248@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_range 0 P@151@01) (inv@246@01 r))
      (img@247@01 r)
      (= r (Seq_index hist@152@01 (inv@246@01 r))))
    ($Perm.min
      (ite
        (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r)))
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
        (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@248@01 r))
    $Perm.No)
  
  :qid |quant-u-8638|))))
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
      (Seq_contains (Seq_range 0 P@151@01) (inv@246@01 r))
      (img@247@01 r)
      (= r (Seq_index hist@152@01 (inv@246@01 r))))
    (= (- $Perm.Write (pTaken@248@01 r)) $Perm.No))
  
  :qid |quant-u-8639|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall k: Int :: { (k in [0..P)) } { hist[k] } (k in [0..P)) ==> hist[k].Ref__Integer_value == count_square(0, 0, N, step, 0, M * step, matrix, k))
(declare-const k@249@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] (k in [0..P)) ==> hist[k].Ref__Integer_value == count_square(0, 0, N, step, 0, M * step, matrix, k)
; [eval] (k in [0..P))
; [eval] [0..P)
(push) ; 4
; [then-branch: 113 | k@249@01 in [0..P@151@01] | live]
; [else-branch: 113 | !(k@249@01 in [0..P@151@01]) | live]
(push) ; 5
; [then-branch: 113 | k@249@01 in [0..P@151@01]]
(assert (Seq_contains (Seq_range 0 P@151@01) k@249@01))
; [eval] hist[k].Ref__Integer_value == count_square(0, 0, N, step, 0, M * step, matrix, k)
; [eval] hist[k]
(push) ; 6
(assert (not (>= k@249@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k@249@01 (Seq_length hist@152@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@250@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@158@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
          (< (mod (inv@157@01 r) step@149@01) N@148@01)))
      (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@215@01 r)))
      false)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@250@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@250@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef49|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@222@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@221@01 r))
        (< (mod (inv@221@01 r) step@149@01) N@148@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@250@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@250@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r))
  :qid |qp.fvfValDef50|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@250@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@250@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r))
  :qid |qp.fvfValDef51|)))
(declare-const pm@251@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@251@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@158@01 r)
            (and
              (Seq_contains
                (Seq_range 0 (* M@147@01 step@149@01))
                (inv@157@01 r))
              (< (mod (inv@157@01 r) step@149@01) N@148@01)))
          (- (/ (to_real 1) (to_real 2)) (pTaken@215@01 r))
          $Perm.No)
        (ite
          (and
            (img@222@01 r)
            (and
              (Seq_contains
                (Seq_range 0 (* M@147@01 step@149@01))
                (inv@221@01 r))
              (< (mod (inv@221@01 r) step@149@01) N@148@01)))
          (/ (to_real 1) (to_real 4))
          $Perm.No))
      (ite
        (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@251@01  $FPM) r))
  :qid |qp.resPrmSumDef52|)))
(push) ; 6
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@251@01  $FPM) (Seq_index
    hist@152@01
    k@249@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] count_square(0, 0, N, step, 0, M * step, matrix, k)
; [eval] M * step
(push) ; 6
; [eval] 0 <= lo
; [eval] lo <= hi
(push) ; 7
(assert (not (<= 0 N@148@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 N@148@01))
; [eval] hi <= step
; [eval] step > 0
(push) ; 7
(assert (not (> step@149@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (> step@149@01 0))
; [eval] 0 <= min
; [eval] min <= i
; [eval] i <= max
(push) ; 7
(assert (not (<= 0 (* M@147@01 step@149@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (* M@147@01 step@149@01)))
; [eval] max <= |ar|
; [eval] |ar|
; [eval] (forall k: Int, j: Int ::k >= 0 && (k < |ar| && (j >= 0 && (j < |ar| && k != j))) ==> ar[k] != ar[j])
(declare-const k@252@01 Int)
(declare-const j@253@01 Int)
(push) ; 7
; [eval] k >= 0 && (k < |ar| && (j >= 0 && (j < |ar| && k != j))) ==> ar[k] != ar[j]
; [eval] k >= 0 && (k < |ar| && (j >= 0 && (j < |ar| && k != j)))
; [eval] k >= 0
(push) ; 8
; [then-branch: 114 | !(k@252@01 >= 0) | live]
; [else-branch: 114 | k@252@01 >= 0 | live]
(push) ; 9
; [then-branch: 114 | !(k@252@01 >= 0)]
(assert (not (>= k@252@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 114 | k@252@01 >= 0]
(assert (>= k@252@01 0))
; [eval] k < |ar|
; [eval] |ar|
(push) ; 10
; [then-branch: 115 | !(k@252@01 < |matrix@150@01|) | live]
; [else-branch: 115 | k@252@01 < |matrix@150@01| | live]
(push) ; 11
; [then-branch: 115 | !(k@252@01 < |matrix@150@01|)]
(assert (not (< k@252@01 (Seq_length matrix@150@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 115 | k@252@01 < |matrix@150@01|]
(assert (< k@252@01 (Seq_length matrix@150@01)))
; [eval] j >= 0
(push) ; 12
; [then-branch: 116 | !(j@253@01 >= 0) | live]
; [else-branch: 116 | j@253@01 >= 0 | live]
(push) ; 13
; [then-branch: 116 | !(j@253@01 >= 0)]
(assert (not (>= j@253@01 0)))
(pop) ; 13
(push) ; 13
; [else-branch: 116 | j@253@01 >= 0]
(assert (>= j@253@01 0))
; [eval] j < |ar|
; [eval] |ar|
(push) ; 14
; [then-branch: 117 | !(j@253@01 < |matrix@150@01|) | live]
; [else-branch: 117 | j@253@01 < |matrix@150@01| | live]
(push) ; 15
; [then-branch: 117 | !(j@253@01 < |matrix@150@01|)]
(assert (not (< j@253@01 (Seq_length matrix@150@01))))
(pop) ; 15
(push) ; 15
; [else-branch: 117 | j@253@01 < |matrix@150@01|]
(assert (< j@253@01 (Seq_length matrix@150@01)))
; [eval] k != j
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or
  (< j@253@01 (Seq_length matrix@150@01))
  (not (< j@253@01 (Seq_length matrix@150@01)))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@253@01 0)
  (and
    (>= j@253@01 0)
    (or
      (< j@253@01 (Seq_length matrix@150@01))
      (not (< j@253@01 (Seq_length matrix@150@01)))))))
(assert (or (>= j@253@01 0) (not (>= j@253@01 0))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@252@01 (Seq_length matrix@150@01))
  (and
    (< k@252@01 (Seq_length matrix@150@01))
    (=>
      (>= j@253@01 0)
      (and
        (>= j@253@01 0)
        (or
          (< j@253@01 (Seq_length matrix@150@01))
          (not (< j@253@01 (Seq_length matrix@150@01))))))
    (or (>= j@253@01 0) (not (>= j@253@01 0))))))
(assert (or
  (< k@252@01 (Seq_length matrix@150@01))
  (not (< k@252@01 (Seq_length matrix@150@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@252@01 0)
  (and
    (>= k@252@01 0)
    (=>
      (< k@252@01 (Seq_length matrix@150@01))
      (and
        (< k@252@01 (Seq_length matrix@150@01))
        (=>
          (>= j@253@01 0)
          (and
            (>= j@253@01 0)
            (or
              (< j@253@01 (Seq_length matrix@150@01))
              (not (< j@253@01 (Seq_length matrix@150@01))))))
        (or (>= j@253@01 0) (not (>= j@253@01 0)))))
    (or
      (< k@252@01 (Seq_length matrix@150@01))
      (not (< k@252@01 (Seq_length matrix@150@01)))))))
(assert (or (>= k@252@01 0) (not (>= k@252@01 0))))
(push) ; 8
; [then-branch: 118 | k@252@01 >= 0 && k@252@01 < |matrix@150@01| && j@253@01 >= 0 && j@253@01 < |matrix@150@01| && k@252@01 != j@253@01 | live]
; [else-branch: 118 | !(k@252@01 >= 0 && k@252@01 < |matrix@150@01| && j@253@01 >= 0 && j@253@01 < |matrix@150@01| && k@252@01 != j@253@01) | live]
(push) ; 9
; [then-branch: 118 | k@252@01 >= 0 && k@252@01 < |matrix@150@01| && j@253@01 >= 0 && j@253@01 < |matrix@150@01| && k@252@01 != j@253@01]
(assert (and
  (>= k@252@01 0)
  (and
    (< k@252@01 (Seq_length matrix@150@01))
    (and
      (>= j@253@01 0)
      (and (< j@253@01 (Seq_length matrix@150@01)) (not (= k@252@01 j@253@01)))))))
; [eval] ar[k] != ar[j]
; [eval] ar[k]
; [eval] ar[j]
(pop) ; 9
(push) ; 9
; [else-branch: 118 | !(k@252@01 >= 0 && k@252@01 < |matrix@150@01| && j@253@01 >= 0 && j@253@01 < |matrix@150@01| && k@252@01 != j@253@01)]
(assert (not
  (and
    (>= k@252@01 0)
    (and
      (< k@252@01 (Seq_length matrix@150@01))
      (and
        (>= j@253@01 0)
        (and (< j@253@01 (Seq_length matrix@150@01)) (not (= k@252@01 j@253@01))))))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  (and
    (>= k@252@01 0)
    (and
      (< k@252@01 (Seq_length matrix@150@01))
      (and
        (>= j@253@01 0)
        (and (< j@253@01 (Seq_length matrix@150@01)) (not (= k@252@01 j@253@01))))))
  (and
    (>= k@252@01 0)
    (< k@252@01 (Seq_length matrix@150@01))
    (>= j@253@01 0)
    (< j@253@01 (Seq_length matrix@150@01))
    (not (= k@252@01 j@253@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@252@01 0)
      (and
        (< k@252@01 (Seq_length matrix@150@01))
        (and
          (>= j@253@01 0)
          (and
            (< j@253@01 (Seq_length matrix@150@01))
            (not (= k@252@01 j@253@01)))))))
  (and
    (>= k@252@01 0)
    (and
      (< k@252@01 (Seq_length matrix@150@01))
      (and
        (>= j@253@01 0)
        (and (< j@253@01 (Seq_length matrix@150@01)) (not (= k@252@01 j@253@01))))))))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 7
(assert (not (forall ((k@252@01 Int) (j@253@01 Int)) (!
  (=>
    (and
      (>= k@252@01 0)
      (and
        (< k@252@01 (Seq_length matrix@150@01))
        (and
          (>= j@253@01 0)
          (and
            (< j@253@01 (Seq_length matrix@150@01))
            (not (= k@252@01 j@253@01))))))
    (not
      (= (Seq_index matrix@150@01 k@252@01) (Seq_index matrix@150@01 j@253@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@38@12@38@106|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (forall ((k@252@01 Int) (j@253@01 Int)) (!
  (=>
    (and
      (>= k@252@01 0)
      (and
        (< k@252@01 (Seq_length matrix@150@01))
        (and
          (>= j@253@01 0)
          (and
            (< j@253@01 (Seq_length matrix@150@01))
            (not (= k@252@01 j@253@01))))))
    (not
      (= (Seq_index matrix@150@01 k@252@01) (Seq_index matrix@150@01 j@253@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@38@12@38@106|)))
(declare-const k@254@01 Int)
(push) ; 7
; [eval] min <= k && (k < max && (lo <= k % step && k % step < hi))
; [eval] min <= k
(push) ; 8
; [then-branch: 119 | !(0 <= k@254@01) | live]
; [else-branch: 119 | 0 <= k@254@01 | live]
(push) ; 9
; [then-branch: 119 | !(0 <= k@254@01)]
(assert (not (<= 0 k@254@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 119 | 0 <= k@254@01]
(assert (<= 0 k@254@01))
; [eval] k < max
(push) ; 10
; [then-branch: 120 | !(k@254@01 < M@147@01 * step@149@01) | live]
; [else-branch: 120 | k@254@01 < M@147@01 * step@149@01 | live]
(push) ; 11
; [then-branch: 120 | !(k@254@01 < M@147@01 * step@149@01)]
(assert (not (< k@254@01 (* M@147@01 step@149@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 120 | k@254@01 < M@147@01 * step@149@01]
(assert (< k@254@01 (* M@147@01 step@149@01)))
; [eval] lo <= k % step
; [eval] k % step
(push) ; 12
(assert (not (not (= step@149@01 0))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(push) ; 12
; [then-branch: 121 | !(0 <= k@254@01 % step@149@01) | live]
; [else-branch: 121 | 0 <= k@254@01 % step@149@01 | live]
(push) ; 13
; [then-branch: 121 | !(0 <= k@254@01 % step@149@01)]
(assert (not (<= 0 (mod k@254@01 step@149@01))))
(pop) ; 13
(push) ; 13
; [else-branch: 121 | 0 <= k@254@01 % step@149@01]
(assert (<= 0 (mod k@254@01 step@149@01)))
; [eval] k % step < hi
; [eval] k % step
(push) ; 14
(assert (not (not (= step@149@01 0))))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 (mod k@254@01 step@149@01)) (not (<= 0 (mod k@254@01 step@149@01)))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@254@01 (* M@147@01 step@149@01))
  (and
    (< k@254@01 (* M@147@01 step@149@01))
    (or
      (<= 0 (mod k@254@01 step@149@01))
      (not (<= 0 (mod k@254@01 step@149@01)))))))
(assert (or
  (< k@254@01 (* M@147@01 step@149@01))
  (not (< k@254@01 (* M@147@01 step@149@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 k@254@01)
  (and
    (<= 0 k@254@01)
    (=>
      (< k@254@01 (* M@147@01 step@149@01))
      (and
        (< k@254@01 (* M@147@01 step@149@01))
        (or
          (<= 0 (mod k@254@01 step@149@01))
          (not (<= 0 (mod k@254@01 step@149@01))))))
    (or
      (< k@254@01 (* M@147@01 step@149@01))
      (not (< k@254@01 (* M@147@01 step@149@01)))))))
(assert (or (<= 0 k@254@01) (not (<= 0 k@254@01))))
(assert (and
  (<= 0 k@254@01)
  (and
    (< k@254@01 (* M@147@01 step@149@01))
    (and
      (<= 0 (mod k@254@01 step@149@01))
      (< (mod k@254@01 step@149@01) N@148@01)))))
(declare-const $k@255@01 $Perm)
(assert ($Perm.isReadVar $k@255@01))
; [eval] ar[k]
(push) ; 8
(assert (not (>= k@254@01 0)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(assert (not (< k@254@01 (Seq_length matrix@150@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(declare-fun inv@256@01 ($Ref) Int)
(declare-fun img@257@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@255@01))
; Nested auxiliary terms: non-globals
(assert (forall ((k@254@01 Int)) (!
  (=>
    (and
      (<= 0 k@254@01)
      (and
        (< k@254@01 (* M@147@01 step@149@01))
        (and
          (<= 0 (mod k@254@01 step@149@01))
          (< (mod k@254@01 step@149@01) N@148@01))))
    (and
      (=>
        (<= 0 k@254@01)
        (and
          (<= 0 k@254@01)
          (=>
            (< k@254@01 (* M@147@01 step@149@01))
            (and
              (< k@254@01 (* M@147@01 step@149@01))
              (or
                (<= 0 (mod k@254@01 step@149@01))
                (not (<= 0 (mod k@254@01 step@149@01))))))
          (or
            (< k@254@01 (* M@147@01 step@149@01))
            (not (< k@254@01 (* M@147@01 step@149@01))))))
      (or (<= 0 k@254@01) (not (<= 0 k@254@01)))))
  :pattern ((Seq_index matrix@150@01 k@254@01))
  :qid |Ref__Integer_value-aux|)))
(push) ; 7
(assert (not (forall ((k@254@01 Int)) (!
  (=>
    (and
      (<= 0 k@254@01)
      (and
        (< k@254@01 (* M@147@01 step@149@01))
        (and
          (<= 0 (mod k@254@01 step@149@01))
          (< (mod k@254@01 step@149@01) N@148@01))))
    (or (= $k@255@01 $Perm.No) (< $Perm.No $k@255@01)))
  
  :qid |quant-u-8640|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((k1@254@01 Int) (k2@254@01 Int)) (!
  (=>
    (and
      (and
        (and
          (<= 0 k1@254@01)
          (and
            (< k1@254@01 (* M@147@01 step@149@01))
            (and
              (<= 0 (mod k1@254@01 step@149@01))
              (< (mod k1@254@01 step@149@01) N@148@01))))
        (< $Perm.No $k@255@01))
      (and
        (and
          (<= 0 k2@254@01)
          (and
            (< k2@254@01 (* M@147@01 step@149@01))
            (and
              (<= 0 (mod k2@254@01 step@149@01))
              (< (mod k2@254@01 step@149@01) N@148@01))))
        (< $Perm.No $k@255@01))
      (= (Seq_index matrix@150@01 k1@254@01) (Seq_index matrix@150@01 k2@254@01)))
    (= k1@254@01 k2@254@01))
  
  :qid |Ref__Integer_value-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((k@254@01 Int)) (!
  (=>
    (and
      (and
        (<= 0 k@254@01)
        (and
          (< k@254@01 (* M@147@01 step@149@01))
          (and
            (<= 0 (mod k@254@01 step@149@01))
            (< (mod k@254@01 step@149@01) N@148@01))))
      (< $Perm.No $k@255@01))
    (and
      (= (inv@256@01 (Seq_index matrix@150@01 k@254@01)) k@254@01)
      (img@257@01 (Seq_index matrix@150@01 k@254@01))))
  :pattern ((Seq_index matrix@150@01 k@254@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@257@01 r)
      (and
        (and
          (<= 0 (inv@256@01 r))
          (and
            (< (inv@256@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@256@01 r) step@149@01))
              (< (mod (inv@256@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@255@01)))
    (= (Seq_index matrix@150@01 (inv@256@01 r)) r))
  :pattern ((inv@256@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((k@254@01 Int)) (!
  (= (Seq_index matrix@150@01 k@254@01) (Seq_index hist@152@01 k@254@01))
  
  :qid |quant-u-8641|))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@256@01 r))
          (and
            (< (inv@256@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@256@01 r) step@149@01))
              (< (mod (inv@256@01 r) step@149@01) N@148@01))))
        (img@257@01 r)
        (= r (Seq_index matrix@150@01 (inv@256@01 r))))
      (> $k@255@01 $Perm.No))
    (>
      (+
        (+
          (ite
            (and
              (img@158@01 r)
              (and
                (Seq_contains
                  (Seq_range 0 (* M@147@01 step@149@01))
                  (inv@157@01 r))
                (< (mod (inv@157@01 r) step@149@01) N@148@01)))
            (- (/ (to_real 1) (to_real 2)) (pTaken@215@01 r))
            $Perm.No)
          (ite
            (and
              (img@222@01 r)
              (and
                (Seq_contains
                  (Seq_range 0 (* M@147@01 step@149@01))
                  (inv@221@01 r))
                (< (mod (inv@221@01 r) step@149@01) N@148@01)))
            (/ (to_real 1) (to_real 4))
            $Perm.No))
        (ite
          (and
            (img@225@01 r)
            (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r)))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-8642|))))
(check-sat)
; unsat
(pop) ; 7
; 0.02s
; (get-info :all-statistics)
(declare-const sm@258@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@258@01  $FVF<Ref__Integer_value>)))
      (and
        (and
          (<= 0 (inv@256@01 r))
          (and
            (< (inv@256@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@256@01 r) step@149@01))
              (< (mod (inv@256@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@255@01)
        (img@257@01 r)))
    (=>
      (and
        (and
          (<= 0 (inv@256@01 r))
          (and
            (< (inv@256@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@256@01 r) step@149@01))
              (< (mod (inv@256@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@255@01)
        (img@257@01 r))
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@258@01  $FVF<Ref__Integer_value>)))))
  :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (as sm@258@01  $FVF<Ref__Integer_value>))))
  :qid |qp.fvfDomDef56|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@256@01 r))
          (and
            (< (inv@256@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@256@01 r) step@149@01))
              (< (mod (inv@256@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@255@01)
        (img@257@01 r))
      (ite
        (and
          (img@158@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
            (< (mod (inv@157@01 r) step@149@01) N@148@01)))
        (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@215@01 r)))
        false))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@258@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@258@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef53|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@256@01 r))
          (and
            (< (inv@256@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@256@01 r) step@149@01))
              (< (mod (inv@256@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@255@01)
        (img@257@01 r))
      (and
        (img@222@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@221@01 r))
          (< (mod (inv@221@01 r) step@149@01) N@148@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@258@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@258@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r))
  :qid |qp.fvfValDef54|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@256@01 r))
          (and
            (< (inv@256@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@256@01 r) step@149@01))
              (< (mod (inv@256@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@255@01)
        (img@257@01 r))
      (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@258@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@258@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r))
  :qid |qp.fvfValDef55|)))
(assert (count_square%precondition ($Snap.combine
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
                  ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@258@01  $FVF<Ref__Integer_value>))))))))))) 0 0 N@148@01 step@149@01 0 (*
  M@147@01
  step@149@01) matrix@150@01 k@249@01))
(pop) ; 6
; Joined path conditions
(assert ($Perm.isReadVar $k@255@01))
(assert (forall ((k@254@01 Int)) (!
  (=>
    (and
      (and
        (<= 0 k@254@01)
        (and
          (< k@254@01 (* M@147@01 step@149@01))
          (and
            (<= 0 (mod k@254@01 step@149@01))
            (< (mod k@254@01 step@149@01) N@148@01))))
      (< $Perm.No $k@255@01))
    (and
      (= (inv@256@01 (Seq_index matrix@150@01 k@254@01)) k@254@01)
      (img@257@01 (Seq_index matrix@150@01 k@254@01))))
  :pattern ((Seq_index matrix@150@01 k@254@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@257@01 r)
      (and
        (and
          (<= 0 (inv@256@01 r))
          (and
            (< (inv@256@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@256@01 r) step@149@01))
              (< (mod (inv@256@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@255@01)))
    (= (Seq_index matrix@150@01 (inv@256@01 r)) r))
  :pattern ((inv@256@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@258@01  $FVF<Ref__Integer_value>)))
      (and
        (and
          (<= 0 (inv@256@01 r))
          (and
            (< (inv@256@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@256@01 r) step@149@01))
              (< (mod (inv@256@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@255@01)
        (img@257@01 r)))
    (=>
      (and
        (and
          (<= 0 (inv@256@01 r))
          (and
            (< (inv@256@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@256@01 r) step@149@01))
              (< (mod (inv@256@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@255@01)
        (img@257@01 r))
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@258@01  $FVF<Ref__Integer_value>)))))
  :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (as sm@258@01  $FVF<Ref__Integer_value>))))
  :qid |qp.fvfDomDef56|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@256@01 r))
          (and
            (< (inv@256@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@256@01 r) step@149@01))
              (< (mod (inv@256@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@255@01)
        (img@257@01 r))
      (ite
        (and
          (img@158@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
            (< (mod (inv@157@01 r) step@149@01) N@148@01)))
        (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@215@01 r)))
        false))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@258@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@258@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef53|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@256@01 r))
          (and
            (< (inv@256@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@256@01 r) step@149@01))
              (< (mod (inv@256@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@255@01)
        (img@257@01 r))
      (and
        (img@222@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@221@01 r))
          (< (mod (inv@221@01 r) step@149@01) N@148@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@258@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@258@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r))
  :qid |qp.fvfValDef54|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@256@01 r))
          (and
            (< (inv@256@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@256@01 r) step@149@01))
              (< (mod (inv@256@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@255@01)
        (img@257@01 r))
      (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@258@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@258@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r))
  :qid |qp.fvfValDef55|)))
(assert (and
  (<= 0 N@148@01)
  (> step@149@01 0)
  (<= 0 (* M@147@01 step@149@01))
  (forall ((k@252@01 Int) (j@253@01 Int)) (!
    (=>
      (and
        (>= k@252@01 0)
        (and
          (< k@252@01 (Seq_length matrix@150@01))
          (and
            (>= j@253@01 0)
            (and
              (< j@253@01 (Seq_length matrix@150@01))
              (not (= k@252@01 j@253@01))))))
      (not
        (= (Seq_index matrix@150@01 k@252@01) (Seq_index matrix@150@01 j@253@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@38@12@38@106|))
  (forall ((k@254@01 Int)) (!
    (=>
      (and
        (<= 0 k@254@01)
        (and
          (< k@254@01 (* M@147@01 step@149@01))
          (and
            (<= 0 (mod k@254@01 step@149@01))
            (< (mod k@254@01 step@149@01) N@148@01))))
      (and
        (=>
          (<= 0 k@254@01)
          (and
            (<= 0 k@254@01)
            (=>
              (< k@254@01 (* M@147@01 step@149@01))
              (and
                (< k@254@01 (* M@147@01 step@149@01))
                (or
                  (<= 0 (mod k@254@01 step@149@01))
                  (not (<= 0 (mod k@254@01 step@149@01))))))
            (or
              (< k@254@01 (* M@147@01 step@149@01))
              (not (< k@254@01 (* M@147@01 step@149@01))))))
        (or (<= 0 k@254@01) (not (<= 0 k@254@01)))))
    :pattern ((Seq_index matrix@150@01 k@254@01))
    :qid |Ref__Integer_value-aux|))
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
                    ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@258@01  $FVF<Ref__Integer_value>))))))))))) 0 0 N@148@01 step@149@01 0 (*
    M@147@01
    step@149@01) matrix@150@01 k@249@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 113 | !(k@249@01 in [0..P@151@01])]
(assert (not (Seq_contains (Seq_range 0 P@151@01) k@249@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@158@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
          (< (mod (inv@157@01 r) step@149@01) N@148@01)))
      (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@215@01 r)))
      false)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@250@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@250@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef49|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@222@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@221@01 r))
        (< (mod (inv@221@01 r) step@149@01) N@148@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@250@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@250@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r))
  :qid |qp.fvfValDef50|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@250@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@250@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r))
  :qid |qp.fvfValDef51|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@251@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@158@01 r)
            (and
              (Seq_contains
                (Seq_range 0 (* M@147@01 step@149@01))
                (inv@157@01 r))
              (< (mod (inv@157@01 r) step@149@01) N@148@01)))
          (- (/ (to_real 1) (to_real 2)) (pTaken@215@01 r))
          $Perm.No)
        (ite
          (and
            (img@222@01 r)
            (and
              (Seq_contains
                (Seq_range 0 (* M@147@01 step@149@01))
                (inv@221@01 r))
              (< (mod (inv@221@01 r) step@149@01) N@148@01)))
          (/ (to_real 1) (to_real 4))
          $Perm.No))
      (ite
        (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@251@01  $FPM) r))
  :qid |qp.resPrmSumDef52|)))
(assert ($Perm.isReadVar $k@255@01))
(assert (forall ((k@254@01 Int)) (!
  (=>
    (and
      (and
        (<= 0 k@254@01)
        (and
          (< k@254@01 (* M@147@01 step@149@01))
          (and
            (<= 0 (mod k@254@01 step@149@01))
            (< (mod k@254@01 step@149@01) N@148@01))))
      (< $Perm.No $k@255@01))
    (and
      (= (inv@256@01 (Seq_index matrix@150@01 k@254@01)) k@254@01)
      (img@257@01 (Seq_index matrix@150@01 k@254@01))))
  :pattern ((Seq_index matrix@150@01 k@254@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@257@01 r)
      (and
        (and
          (<= 0 (inv@256@01 r))
          (and
            (< (inv@256@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@256@01 r) step@149@01))
              (< (mod (inv@256@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@255@01)))
    (= (Seq_index matrix@150@01 (inv@256@01 r)) r))
  :pattern ((inv@256@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@258@01  $FVF<Ref__Integer_value>)))
      (and
        (and
          (<= 0 (inv@256@01 r))
          (and
            (< (inv@256@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@256@01 r) step@149@01))
              (< (mod (inv@256@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@255@01)
        (img@257@01 r)))
    (=>
      (and
        (and
          (<= 0 (inv@256@01 r))
          (and
            (< (inv@256@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@256@01 r) step@149@01))
              (< (mod (inv@256@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@255@01)
        (img@257@01 r))
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@258@01  $FVF<Ref__Integer_value>)))))
  :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (as sm@258@01  $FVF<Ref__Integer_value>))))
  :qid |qp.fvfDomDef56|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@256@01 r))
          (and
            (< (inv@256@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@256@01 r) step@149@01))
              (< (mod (inv@256@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@255@01)
        (img@257@01 r))
      (ite
        (and
          (img@158@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
            (< (mod (inv@157@01 r) step@149@01) N@148@01)))
        (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@215@01 r)))
        false))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@258@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@258@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef53|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@256@01 r))
          (and
            (< (inv@256@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@256@01 r) step@149@01))
              (< (mod (inv@256@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@255@01)
        (img@257@01 r))
      (and
        (img@222@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@221@01 r))
          (< (mod (inv@221@01 r) step@149@01) N@148@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@258@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@258@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r))
  :qid |qp.fvfValDef54|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@256@01 r))
          (and
            (< (inv@256@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@256@01 r) step@149@01))
              (< (mod (inv@256@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@255@01)
        (img@257@01 r))
      (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@258@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@258@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r))
  :qid |qp.fvfValDef55|)))
(assert (=>
  (Seq_contains (Seq_range 0 P@151@01) k@249@01)
  (and
    (Seq_contains (Seq_range 0 P@151@01) k@249@01)
    (<= 0 N@148@01)
    (> step@149@01 0)
    (<= 0 (* M@147@01 step@149@01))
    (forall ((k@252@01 Int) (j@253@01 Int)) (!
      (=>
        (and
          (>= k@252@01 0)
          (and
            (< k@252@01 (Seq_length matrix@150@01))
            (and
              (>= j@253@01 0)
              (and
                (< j@253@01 (Seq_length matrix@150@01))
                (not (= k@252@01 j@253@01))))))
        (not
          (=
            (Seq_index matrix@150@01 k@252@01)
            (Seq_index matrix@150@01 j@253@01))))
      
      :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@38@12@38@106|))
    (forall ((k@254@01 Int)) (!
      (=>
        (and
          (<= 0 k@254@01)
          (and
            (< k@254@01 (* M@147@01 step@149@01))
            (and
              (<= 0 (mod k@254@01 step@149@01))
              (< (mod k@254@01 step@149@01) N@148@01))))
        (and
          (=>
            (<= 0 k@254@01)
            (and
              (<= 0 k@254@01)
              (=>
                (< k@254@01 (* M@147@01 step@149@01))
                (and
                  (< k@254@01 (* M@147@01 step@149@01))
                  (or
                    (<= 0 (mod k@254@01 step@149@01))
                    (not (<= 0 (mod k@254@01 step@149@01))))))
              (or
                (< k@254@01 (* M@147@01 step@149@01))
                (not (< k@254@01 (* M@147@01 step@149@01))))))
          (or (<= 0 k@254@01) (not (<= 0 k@254@01)))))
      :pattern ((Seq_index matrix@150@01 k@254@01))
      :qid |Ref__Integer_value-aux|))
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
                      ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@258@01  $FVF<Ref__Integer_value>))))))))))) 0 0 N@148@01 step@149@01 0 (*
      M@147@01
      step@149@01) matrix@150@01 k@249@01))))
; Joined path conditions
(assert (or
  (not (Seq_contains (Seq_range 0 P@151@01) k@249@01))
  (Seq_contains (Seq_range 0 P@151@01) k@249@01)))
; [eval] hist[k]
(push) ; 4
(assert (not (>= k@249@01 0)))
(check-sat)
; unknown
(pop) ; 4
; 0.02s
; (get-info :all-statistics)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@158@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
          (< (mod (inv@157@01 r) step@149@01) N@148@01)))
      (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@215@01 r)))
      false)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@250@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@250@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef49|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@222@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@221@01 r))
        (< (mod (inv@221@01 r) step@149@01) N@148@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@250@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@250@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r))
  :qid |qp.fvfValDef50|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@250@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@250@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r))
  :qid |qp.fvfValDef51|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@251@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@158@01 r)
            (and
              (Seq_contains
                (Seq_range 0 (* M@147@01 step@149@01))
                (inv@157@01 r))
              (< (mod (inv@157@01 r) step@149@01) N@148@01)))
          (- (/ (to_real 1) (to_real 2)) (pTaken@215@01 r))
          $Perm.No)
        (ite
          (and
            (img@222@01 r)
            (and
              (Seq_contains
                (Seq_range 0 (* M@147@01 step@149@01))
                (inv@221@01 r))
              (< (mod (inv@221@01 r) step@149@01) N@148@01)))
          (/ (to_real 1) (to_real 4))
          $Perm.No))
      (ite
        (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@251@01  $FPM) r))
  :qid |qp.resPrmSumDef52|)))
(assert ($Perm.isReadVar $k@255@01))
(assert (forall ((k@254@01 Int)) (!
  (=>
    (and
      (and
        (<= 0 k@254@01)
        (and
          (< k@254@01 (* M@147@01 step@149@01))
          (and
            (<= 0 (mod k@254@01 step@149@01))
            (< (mod k@254@01 step@149@01) N@148@01))))
      (< $Perm.No $k@255@01))
    (and
      (= (inv@256@01 (Seq_index matrix@150@01 k@254@01)) k@254@01)
      (img@257@01 (Seq_index matrix@150@01 k@254@01))))
  :pattern ((Seq_index matrix@150@01 k@254@01))
  :qid |Ref__Integer_value-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@257@01 r)
      (and
        (and
          (<= 0 (inv@256@01 r))
          (and
            (< (inv@256@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@256@01 r) step@149@01))
              (< (mod (inv@256@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@255@01)))
    (= (Seq_index matrix@150@01 (inv@256@01 r)) r))
  :pattern ((inv@256@01 r))
  :qid |Ref__Integer_value-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@258@01  $FVF<Ref__Integer_value>)))
      (and
        (and
          (<= 0 (inv@256@01 r))
          (and
            (< (inv@256@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@256@01 r) step@149@01))
              (< (mod (inv@256@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@255@01)
        (img@257@01 r)))
    (=>
      (and
        (and
          (<= 0 (inv@256@01 r))
          (and
            (< (inv@256@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@256@01 r) step@149@01))
              (< (mod (inv@256@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@255@01)
        (img@257@01 r))
      (Set_in r ($FVF.domain_Ref__Integer_value (as sm@258@01  $FVF<Ref__Integer_value>)))))
  :pattern ((Set_in r ($FVF.domain_Ref__Integer_value (as sm@258@01  $FVF<Ref__Integer_value>))))
  :qid |qp.fvfDomDef56|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@256@01 r))
          (and
            (< (inv@256@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@256@01 r) step@149@01))
              (< (mod (inv@256@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@255@01)
        (img@257@01 r))
      (ite
        (and
          (img@158@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
            (< (mod (inv@157@01 r) step@149@01) N@148@01)))
        (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@215@01 r)))
        false))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@258@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@258@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef53|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@256@01 r))
          (and
            (< (inv@256@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@256@01 r) step@149@01))
              (< (mod (inv@256@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@255@01)
        (img@257@01 r))
      (and
        (img@222@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@221@01 r))
          (< (mod (inv@221@01 r) step@149@01) N@148@01))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@258@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@258@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r))
  :qid |qp.fvfValDef54|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and
          (<= 0 (inv@256@01 r))
          (and
            (< (inv@256@01 r) (* M@147@01 step@149@01))
            (and
              (<= 0 (mod (inv@256@01 r) step@149@01))
              (< (mod (inv@256@01 r) step@149@01) N@148@01))))
        (< $Perm.No $k@255@01)
        (img@257@01 r))
      (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r))))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@258@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@258@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r))
  :qid |qp.fvfValDef55|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@249@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 P@151@01) k@249@01)
      (and
        (Seq_contains (Seq_range 0 P@151@01) k@249@01)
        (<= 0 N@148@01)
        (> step@149@01 0)
        (<= 0 (* M@147@01 step@149@01))
        (forall ((k@252@01 Int) (j@253@01 Int)) (!
          (=>
            (and
              (>= k@252@01 0)
              (and
                (< k@252@01 (Seq_length matrix@150@01))
                (and
                  (>= j@253@01 0)
                  (and
                    (< j@253@01 (Seq_length matrix@150@01))
                    (not (= k@252@01 j@253@01))))))
            (not
              (=
                (Seq_index matrix@150@01 k@252@01)
                (Seq_index matrix@150@01 j@253@01))))
          
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@38@12@38@106|))
        (forall ((k@254@01 Int)) (!
          (=>
            (and
              (<= 0 k@254@01)
              (and
                (< k@254@01 (* M@147@01 step@149@01))
                (and
                  (<= 0 (mod k@254@01 step@149@01))
                  (< (mod k@254@01 step@149@01) N@148@01))))
            (and
              (=>
                (<= 0 k@254@01)
                (and
                  (<= 0 k@254@01)
                  (=>
                    (< k@254@01 (* M@147@01 step@149@01))
                    (and
                      (< k@254@01 (* M@147@01 step@149@01))
                      (or
                        (<= 0 (mod k@254@01 step@149@01))
                        (not (<= 0 (mod k@254@01 step@149@01))))))
                  (or
                    (< k@254@01 (* M@147@01 step@149@01))
                    (not (< k@254@01 (* M@147@01 step@149@01))))))
              (or (<= 0 k@254@01) (not (<= 0 k@254@01)))))
          :pattern ((Seq_index matrix@150@01 k@254@01))
          :qid |Ref__Integer_value-aux|))
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
                          ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@258@01  $FVF<Ref__Integer_value>))))))))))) 0 0 N@148@01 step@149@01 0 (*
          M@147@01
          step@149@01) matrix@150@01 k@249@01)))
    (or
      (not (Seq_contains (Seq_range 0 P@151@01) k@249@01))
      (Seq_contains (Seq_range 0 P@151@01) k@249@01)))
  :pattern ((Seq_contains (Seq_range 0 P@151@01) k@249@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 P@151@01) k@249@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@158@12@158@130-aux|)))
(assert (forall ((k@249@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 P@151@01) k@249@01)
      (and
        (Seq_contains (Seq_range 0 P@151@01) k@249@01)
        (<= 0 N@148@01)
        (> step@149@01 0)
        (<= 0 (* M@147@01 step@149@01))
        (forall ((k@252@01 Int) (j@253@01 Int)) (!
          (=>
            (and
              (>= k@252@01 0)
              (and
                (< k@252@01 (Seq_length matrix@150@01))
                (and
                  (>= j@253@01 0)
                  (and
                    (< j@253@01 (Seq_length matrix@150@01))
                    (not (= k@252@01 j@253@01))))))
            (not
              (=
                (Seq_index matrix@150@01 k@252@01)
                (Seq_index matrix@150@01 j@253@01))))
          
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@38@12@38@106|))
        (forall ((k@254@01 Int)) (!
          (=>
            (and
              (<= 0 k@254@01)
              (and
                (< k@254@01 (* M@147@01 step@149@01))
                (and
                  (<= 0 (mod k@254@01 step@149@01))
                  (< (mod k@254@01 step@149@01) N@148@01))))
            (and
              (=>
                (<= 0 k@254@01)
                (and
                  (<= 0 k@254@01)
                  (=>
                    (< k@254@01 (* M@147@01 step@149@01))
                    (and
                      (< k@254@01 (* M@147@01 step@149@01))
                      (or
                        (<= 0 (mod k@254@01 step@149@01))
                        (not (<= 0 (mod k@254@01 step@149@01))))))
                  (or
                    (< k@254@01 (* M@147@01 step@149@01))
                    (not (< k@254@01 (* M@147@01 step@149@01))))))
              (or (<= 0 k@254@01) (not (<= 0 k@254@01)))))
          :pattern ((Seq_index matrix@150@01 k@254@01))
          :qid |Ref__Integer_value-aux|))
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
                          ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@258@01  $FVF<Ref__Integer_value>))))))))))) 0 0 N@148@01 step@149@01 0 (*
          M@147@01
          step@149@01) matrix@150@01 k@249@01)))
    (or
      (not (Seq_contains (Seq_range 0 P@151@01) k@249@01))
      (Seq_contains (Seq_range 0 P@151@01) k@249@01)))
  :pattern ((Seq_contains_trigger (Seq_range 0 P@151@01) k@249@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@158@12@158@130-aux|)))
(assert (forall ((k@249@01 Int)) (!
  (and
    (=>
      (Seq_contains (Seq_range 0 P@151@01) k@249@01)
      (and
        (Seq_contains (Seq_range 0 P@151@01) k@249@01)
        (<= 0 N@148@01)
        (> step@149@01 0)
        (<= 0 (* M@147@01 step@149@01))
        (forall ((k@252@01 Int) (j@253@01 Int)) (!
          (=>
            (and
              (>= k@252@01 0)
              (and
                (< k@252@01 (Seq_length matrix@150@01))
                (and
                  (>= j@253@01 0)
                  (and
                    (< j@253@01 (Seq_length matrix@150@01))
                    (not (= k@252@01 j@253@01))))))
            (not
              (=
                (Seq_index matrix@150@01 k@252@01)
                (Seq_index matrix@150@01 j@253@01))))
          
          :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@38@12@38@106|))
        (forall ((k@254@01 Int)) (!
          (=>
            (and
              (<= 0 k@254@01)
              (and
                (< k@254@01 (* M@147@01 step@149@01))
                (and
                  (<= 0 (mod k@254@01 step@149@01))
                  (< (mod k@254@01 step@149@01) N@148@01))))
            (and
              (=>
                (<= 0 k@254@01)
                (and
                  (<= 0 k@254@01)
                  (=>
                    (< k@254@01 (* M@147@01 step@149@01))
                    (and
                      (< k@254@01 (* M@147@01 step@149@01))
                      (or
                        (<= 0 (mod k@254@01 step@149@01))
                        (not (<= 0 (mod k@254@01 step@149@01))))))
                  (or
                    (< k@254@01 (* M@147@01 step@149@01))
                    (not (< k@254@01 (* M@147@01 step@149@01))))))
              (or (<= 0 k@254@01) (not (<= 0 k@254@01)))))
          :pattern ((Seq_index matrix@150@01 k@254@01))
          :qid |Ref__Integer_value-aux|))
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
                          ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@258@01  $FVF<Ref__Integer_value>))))))))))) 0 0 N@148@01 step@149@01 0 (*
          M@147@01
          step@149@01) matrix@150@01 k@249@01)))
    (or
      (not (Seq_contains (Seq_range 0 P@151@01) k@249@01))
      (Seq_contains (Seq_range 0 P@151@01) k@249@01)))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@158@12@158@130-aux|)))
(assert (forall ((k@249@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 P@151@01) k@249@01)
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
                      ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@258@01  $FVF<Ref__Integer_value>))))))))))) 0 0 N@148@01 step@149@01 0 (*
      M@147@01
      step@149@01) matrix@150@01 k@249@01))
  :pattern ((Seq_contains (Seq_range 0 P@151@01) k@249@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 P@151@01) k@249@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 P@151@01) k@249@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@158@12@158@130_precondition|)))
(push) ; 3
(assert (not (forall ((k@249@01 Int)) (!
  (=>
    (and
      (=>
        (Seq_contains (Seq_range 0 P@151@01) k@249@01)
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
                          ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@258@01  $FVF<Ref__Integer_value>))))))))))) 0 0 N@148@01 step@149@01 0 (*
          M@147@01
          step@149@01) matrix@150@01 k@249@01))
      (Seq_contains (Seq_range 0 P@151@01) k@249@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@250@01  $FVF<Ref__Integer_value>) (Seq_index
        hist@152@01
        k@249@01))
      (count_square ($Snap.combine
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
                        ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@258@01  $FVF<Ref__Integer_value>))))))))))) 0 0 N@148@01 step@149@01 0 (*
        M@147@01
        step@149@01) matrix@150@01 k@249@01)))
  :pattern ((Seq_contains (Seq_range 0 P@151@01) k@249@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 P@151@01) k@249@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 P@151@01) k@249@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@158@12@158@130|))))
(check-sat)
; unsat
(pop) ; 3
; 0.03s
; (get-info :all-statistics)
(assert (forall ((k@249@01 Int)) (!
  (=>
    (Seq_contains (Seq_range 0 P@151@01) k@249@01)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@250@01  $FVF<Ref__Integer_value>) (Seq_index
        hist@152@01
        k@249@01))
      (count_square ($Snap.combine
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
                        ($SortWrappers.$FVF<Ref__Integer_value>To$Snap (as sm@258@01  $FVF<Ref__Integer_value>))))))))))) 0 0 N@148@01 step@149@01 0 (*
        M@147@01
        step@149@01) matrix@150@01 k@249@01)))
  :pattern ((Seq_contains (Seq_range 0 P@151@01) k@249@01))
  :pattern ((Seq_contains_trigger (Seq_range 0 P@151@01) k@249@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@158@12@158@130|)))
; [eval] N <= step
; [eval] (forall k_fresh_rw_0: Int :: { old(matrix[k_fresh_rw_0]) } (k_fresh_rw_0 in [0..M * step)) && k_fresh_rw_0 % step < N ==> matrix[k_fresh_rw_0].Ref__Integer_value == old(matrix[k_fresh_rw_0].Ref__Integer_value))
(declare-const k_fresh_rw_0@259@01 Int)
(push) ; 3
; [eval] (k_fresh_rw_0 in [0..M * step)) && k_fresh_rw_0 % step < N ==> matrix[k_fresh_rw_0].Ref__Integer_value == old(matrix[k_fresh_rw_0].Ref__Integer_value)
; [eval] (k_fresh_rw_0 in [0..M * step)) && k_fresh_rw_0 % step < N
; [eval] (k_fresh_rw_0 in [0..M * step))
; [eval] [0..M * step)
; [eval] M * step
(push) ; 4
; [then-branch: 122 | !(k_fresh_rw_0@259@01 in [0..M@147@01 * step@149@01]) | live]
; [else-branch: 122 | k_fresh_rw_0@259@01 in [0..M@147@01 * step@149@01] | live]
(push) ; 5
; [then-branch: 122 | !(k_fresh_rw_0@259@01 in [0..M@147@01 * step@149@01])]
(assert (not (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@259@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 122 | k_fresh_rw_0@259@01 in [0..M@147@01 * step@149@01]]
(assert (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@259@01))
; [eval] k_fresh_rw_0 % step < N
; [eval] k_fresh_rw_0 % step
(push) ; 6
(assert (not (not (= step@149@01 0))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@259@01)
  (not (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@259@01))))
(push) ; 4
; [then-branch: 123 | k_fresh_rw_0@259@01 in [0..M@147@01 * step@149@01] && k_fresh_rw_0@259@01 % step@149@01 < N@148@01 | live]
; [else-branch: 123 | !(k_fresh_rw_0@259@01 in [0..M@147@01 * step@149@01] && k_fresh_rw_0@259@01 % step@149@01 < N@148@01) | live]
(push) ; 5
; [then-branch: 123 | k_fresh_rw_0@259@01 in [0..M@147@01 * step@149@01] && k_fresh_rw_0@259@01 % step@149@01 < N@148@01]
(assert (and
  (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@259@01)
  (< (mod k_fresh_rw_0@259@01 step@149@01) N@148@01)))
; [eval] matrix[k_fresh_rw_0].Ref__Integer_value == old(matrix[k_fresh_rw_0].Ref__Integer_value)
; [eval] matrix[k_fresh_rw_0]
(push) ; 6
(assert (not (>= k_fresh_rw_0@259@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k_fresh_rw_0@259@01 (Seq_length matrix@150@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@260@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@158@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
          (< (mod (inv@157@01 r) step@149@01) N@148@01)))
      (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@215@01 r)))
      false)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@260@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@260@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef57|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@222@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@221@01 r))
        (< (mod (inv@221@01 r) step@149@01) N@148@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@260@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@260@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r))
  :qid |qp.fvfValDef58|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@260@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@260@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r))
  :qid |qp.fvfValDef59|)))
(declare-const pm@261@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@261@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@158@01 r)
            (and
              (Seq_contains
                (Seq_range 0 (* M@147@01 step@149@01))
                (inv@157@01 r))
              (< (mod (inv@157@01 r) step@149@01) N@148@01)))
          (- (/ (to_real 1) (to_real 2)) (pTaken@215@01 r))
          $Perm.No)
        (ite
          (and
            (img@222@01 r)
            (and
              (Seq_contains
                (Seq_range 0 (* M@147@01 step@149@01))
                (inv@221@01 r))
              (< (mod (inv@221@01 r) step@149@01) N@148@01)))
          (/ (to_real 1) (to_real 4))
          $Perm.No))
      (ite
        (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@261@01  $FPM) r))
  :qid |qp.resPrmSumDef60|)))
(push) ; 6
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@261@01  $FPM) (Seq_index
    matrix@150@01
    k_fresh_rw_0@259@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.02s
; (get-info :all-statistics)
; [eval] old(matrix[k_fresh_rw_0].Ref__Integer_value)
; [eval] matrix[k_fresh_rw_0]
(push) ; 6
(assert (not (>= k_fresh_rw_0@259@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< k_fresh_rw_0@259@01 (Seq_length matrix@150@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@262@01 $FVF<Ref__Integer_value>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@158@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
        (< (mod (inv@157@01 r) step@149@01) N@148@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef61|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@166@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@165@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))))))) r))
  :qid |qp.fvfValDef62|)))
(declare-const pm@263@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@263@01  $FPM) r)
    (+
      (ite
        (and
          (img@158@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
            (< (mod (inv@157@01 r) step@149@01) N@148@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (ite
        (and (img@166@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@165@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@263@01  $FPM) r))
  :qid |qp.resPrmSumDef63|)))
(push) ; 6
(assert (not (<
  $Perm.No
  ($FVF.perm_Ref__Integer_value (as pm@263@01  $FPM) (Seq_index
    matrix@150@01
    k_fresh_rw_0@259@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.01s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 123 | !(k_fresh_rw_0@259@01 in [0..M@147@01 * step@149@01] && k_fresh_rw_0@259@01 % step@149@01 < N@148@01)]
(assert (not
  (and
    (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@259@01)
    (< (mod k_fresh_rw_0@259@01 step@149@01) N@148@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@158@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
          (< (mod (inv@157@01 r) step@149@01) N@148@01)))
      (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@215@01 r)))
      false)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@260@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@260@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef57|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@222@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@221@01 r))
        (< (mod (inv@221@01 r) step@149@01) N@148@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@260@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@260@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r))
  :qid |qp.fvfValDef58|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@260@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@260@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r))
  :qid |qp.fvfValDef59|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@261@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@158@01 r)
            (and
              (Seq_contains
                (Seq_range 0 (* M@147@01 step@149@01))
                (inv@157@01 r))
              (< (mod (inv@157@01 r) step@149@01) N@148@01)))
          (- (/ (to_real 1) (to_real 2)) (pTaken@215@01 r))
          $Perm.No)
        (ite
          (and
            (img@222@01 r)
            (and
              (Seq_contains
                (Seq_range 0 (* M@147@01 step@149@01))
                (inv@221@01 r))
              (< (mod (inv@221@01 r) step@149@01) N@148@01)))
          (/ (to_real 1) (to_real 4))
          $Perm.No))
      (ite
        (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@261@01  $FPM) r))
  :qid |qp.resPrmSumDef60|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@158@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
        (< (mod (inv@157@01 r) step@149@01) N@148@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef61|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@166@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@165@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))))))) r))
  :qid |qp.fvfValDef62|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@263@01  $FPM) r)
    (+
      (ite
        (and
          (img@158@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
            (< (mod (inv@157@01 r) step@149@01) N@148@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (ite
        (and (img@166@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@165@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@263@01  $FPM) r))
  :qid |qp.resPrmSumDef63|)))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@259@01)
      (< (mod k_fresh_rw_0@259@01 step@149@01) N@148@01)))
  (and
    (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@259@01)
    (< (mod k_fresh_rw_0@259@01 step@149@01) N@148@01))))
; [eval] old(matrix[k_fresh_rw_0])
; [eval] matrix[k_fresh_rw_0]
(push) ; 4
(assert (not (>= k_fresh_rw_0@259@01 0)))
(check-sat)
; unknown
(pop) ; 4
; 0.01s
; (get-info :all-statistics)
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@158@01 r)
        (and
          (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
          (< (mod (inv@157@01 r) step@149@01) N@148@01)))
      (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@215@01 r)))
      false)
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@260@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@260@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef57|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@222@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@221@01 r))
        (< (mod (inv@221@01 r) step@149@01) N@148@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@260@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@260@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01))))))) r))
  :qid |qp.fvfValDef58|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@260@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@260@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@219@01)))))))) r))
  :qid |qp.fvfValDef59|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@261@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@158@01 r)
            (and
              (Seq_contains
                (Seq_range 0 (* M@147@01 step@149@01))
                (inv@157@01 r))
              (< (mod (inv@157@01 r) step@149@01) N@148@01)))
          (- (/ (to_real 1) (to_real 2)) (pTaken@215@01 r))
          $Perm.No)
        (ite
          (and
            (img@222@01 r)
            (and
              (Seq_contains
                (Seq_range 0 (* M@147@01 step@149@01))
                (inv@221@01 r))
              (< (mod (inv@221@01 r) step@149@01) N@148@01)))
          (/ (to_real 1) (to_real 4))
          $Perm.No))
      (ite
        (and (img@225@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@224@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@261@01  $FPM) r))
  :qid |qp.resPrmSumDef60|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@158@01 r)
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
        (< (mod (inv@157@01 r) step@149@01) N@148@01)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01)))))))))) r))
  :qid |qp.fvfValDef61|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@166@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@165@01 r)))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) r)
      ($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))))))) r)))
  :pattern (($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) r))
  :pattern (($FVF.lookup_Ref__Integer_value ($SortWrappers.$SnapTo$FVF<Ref__Integer_value> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@153@01))))))))))))))) r))
  :qid |qp.fvfValDef62|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_Ref__Integer_value (as pm@263@01  $FPM) r)
    (+
      (ite
        (and
          (img@158@01 r)
          (and
            (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) (inv@157@01 r))
            (< (mod (inv@157@01 r) step@149@01) N@148@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (ite
        (and (img@166@01 r) (Seq_contains (Seq_range 0 P@151@01) (inv@165@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_Ref__Integer_value (as pm@263@01  $FPM) r))
  :qid |qp.resPrmSumDef63|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k_fresh_rw_0@259@01 Int)) (!
  (and
    (or
      (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@259@01)
      (not
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@259@01)))
    (or
      (not
        (and
          (Seq_contains
            (Seq_range 0 (* M@147@01 step@149@01))
            k_fresh_rw_0@259@01)
          (< (mod k_fresh_rw_0@259@01 step@149@01) N@148@01)))
      (and
        (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@259@01)
        (< (mod k_fresh_rw_0@259@01 step@149@01) N@148@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@159@27@159@209-aux|)))
(push) ; 3
(assert (not (forall ((k_fresh_rw_0@259@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@259@01)
      (< (mod k_fresh_rw_0@259@01 step@149@01) N@148@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@260@01  $FVF<Ref__Integer_value>) (Seq_index
        matrix@150@01
        k_fresh_rw_0@259@01))
      ($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) (Seq_index
        matrix@150@01
        k_fresh_rw_0@259@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@159@27@159@209|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((k_fresh_rw_0@259@01 Int)) (!
  (=>
    (and
      (Seq_contains (Seq_range 0 (* M@147@01 step@149@01)) k_fresh_rw_0@259@01)
      (< (mod k_fresh_rw_0@259@01 step@149@01) N@148@01))
    (=
      ($FVF.lookup_Ref__Integer_value (as sm@260@01  $FVF<Ref__Integer_value>) (Seq_index
        matrix@150@01
        k_fresh_rw_0@259@01))
      ($FVF.lookup_Ref__Integer_value (as sm@262@01  $FVF<Ref__Integer_value>) (Seq_index
        matrix@150@01
        k_fresh_rw_0@259@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/testHistogramFull-old.vpr@159@27@159@209|)))
(pop) ; 2
(pop) ; 1
