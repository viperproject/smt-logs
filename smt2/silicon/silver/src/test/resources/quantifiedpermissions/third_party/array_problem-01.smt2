(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-08 21:15:57
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
(declare-sort Set<Bool> 0)
(declare-sort Set<Seq<$Ref>> 0)
(declare-sort Set<Int> 0)
(declare-sort Set<$Ref> 0)
(declare-sort Set<$Snap> 0)
(declare-sort $FVF<val> 0)
(declare-sort $FVF<ar> 0)
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
(declare-fun $SortWrappers.Set<Bool>To$Snap (Set<Bool>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<Bool> ($Snap) Set<Bool>)
(assert (forall ((x Set<Bool>)) (!
    (= x ($SortWrappers.$SnapToSet<Bool>($SortWrappers.Set<Bool>To$Snap x)))
    :pattern (($SortWrappers.Set<Bool>To$Snap x))
    :qid |$Snap.$SnapToSet<Bool>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<Bool>To$Snap($SortWrappers.$SnapToSet<Bool> x)))
    :pattern (($SortWrappers.$SnapToSet<Bool> x))
    :qid |$Snap.Set<Bool>To$SnapToSet<Bool>|
    )))
(declare-fun $SortWrappers.Set<Seq<$Ref>>To$Snap (Set<Seq<$Ref>>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<Seq<$Ref>> ($Snap) Set<Seq<$Ref>>)
(assert (forall ((x Set<Seq<$Ref>>)) (!
    (= x ($SortWrappers.$SnapToSet<Seq<$Ref>>($SortWrappers.Set<Seq<$Ref>>To$Snap x)))
    :pattern (($SortWrappers.Set<Seq<$Ref>>To$Snap x))
    :qid |$Snap.$SnapToSet<Seq<$Ref>>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<Seq<$Ref>>To$Snap($SortWrappers.$SnapToSet<Seq<$Ref>> x)))
    :pattern (($SortWrappers.$SnapToSet<Seq<$Ref>> x))
    :qid |$Snap.Set<Seq<$Ref>>To$SnapToSet<Seq<$Ref>>|
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
(declare-fun $SortWrappers.$FVF<val>To$Snap ($FVF<val>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<val> ($Snap) $FVF<val>)
(assert (forall ((x $FVF<val>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<val>($SortWrappers.$FVF<val>To$Snap x)))
    :pattern (($SortWrappers.$FVF<val>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<val>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<val>To$Snap($SortWrappers.$SnapTo$FVF<val> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<val> x))
    :qid |$Snap.$FVF<val>To$SnapTo$FVF<val>|
    )))
(declare-fun $SortWrappers.$FVF<ar>To$Snap ($FVF<ar>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<ar> ($Snap) $FVF<ar>)
(assert (forall ((x $FVF<ar>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<ar>($SortWrappers.$FVF<ar>To$Snap x)))
    :pattern (($SortWrappers.$FVF<ar>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<ar>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<ar>To$Snap($SortWrappers.$SnapTo$FVF<ar> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<ar> x))
    :qid |$Snap.$FVF<ar>To$SnapTo$FVF<ar>|
    )))
; ////////// Symbols
(declare-fun Set_card (Set<Bool>) Int)
(declare-const Set_empty Set<Bool>)
(declare-fun Set_in (Bool Set<Bool>) Bool)
(declare-fun Set_singleton (Bool) Set<Bool>)
(declare-fun Set_unionone (Set<Bool> Bool) Set<Bool>)
(declare-fun Set_union (Set<Bool> Set<Bool>) Set<Bool>)
(declare-fun Set_intersection (Set<Bool> Set<Bool>) Set<Bool>)
(declare-fun Set_difference (Set<Bool> Set<Bool>) Set<Bool>)
(declare-fun Set_subset (Set<Bool> Set<Bool>) Bool)
(declare-fun Set_equal (Set<Bool> Set<Bool>) Bool)
(declare-fun Set_skolem_diff (Set<Bool> Set<Bool>) Bool)
(declare-fun Set_card (Set<Seq<$Ref>>) Int)
(declare-const Set_empty Set<Seq<$Ref>>)
(declare-fun Set_in (Seq<$Ref> Set<Seq<$Ref>>) Bool)
(declare-fun Set_singleton (Seq<$Ref>) Set<Seq<$Ref>>)
(declare-fun Set_unionone (Set<Seq<$Ref>> Seq<$Ref>) Set<Seq<$Ref>>)
(declare-fun Set_union (Set<Seq<$Ref>> Set<Seq<$Ref>>) Set<Seq<$Ref>>)
(declare-fun Set_intersection (Set<Seq<$Ref>> Set<Seq<$Ref>>) Set<Seq<$Ref>>)
(declare-fun Set_difference (Set<Seq<$Ref>> Set<Seq<$Ref>>) Set<Seq<$Ref>>)
(declare-fun Set_subset (Set<Seq<$Ref>> Set<Seq<$Ref>>) Bool)
(declare-fun Set_equal (Set<Seq<$Ref>> Set<Seq<$Ref>>) Bool)
(declare-fun Set_skolem_diff (Set<Seq<$Ref>> Set<Seq<$Ref>>) Seq<$Ref>)
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
; /field_value_functions_declarations.smt2 [val: Bool]
(declare-fun $FVF.domain_val ($FVF<val>) Set<$Ref>)
(declare-fun $FVF.lookup_val ($FVF<val> $Ref) Bool)
(declare-fun $FVF.after_val ($FVF<val> $FVF<val>) Bool)
(declare-fun $FVF.loc_val (Bool $Ref) Bool)
(declare-fun $FVF.perm_val ($FPM $Ref) $Perm)
(declare-const $fvfTOP_val $FVF<val>)
; /field_value_functions_declarations.smt2 [ar: Seq[Ref]]
(declare-fun $FVF.domain_ar ($FVF<ar>) Set<$Ref>)
(declare-fun $FVF.lookup_ar ($FVF<ar> $Ref) Seq<$Ref>)
(declare-fun $FVF.after_ar ($FVF<ar> $FVF<ar>) Bool)
(declare-fun $FVF.loc_ar (Seq<$Ref> $Ref) Bool)
(declare-fun $FVF.perm_ar ($FPM $Ref) $Perm)
(declare-const $fvfTOP_ar $FVF<ar>)
; Declaring symbols related to program functions (from program analysis)
(declare-fun count ($Snap Seq<$Ref> Int) Int)
(declare-fun count%limited ($Snap Seq<$Ref> Int) Int)
(declare-fun count%stateless (Seq<$Ref> Int) Bool)
(declare-fun count%precondition ($Snap Seq<$Ref> Int) Bool)
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
(assert (forall ((s Set<Bool>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o Bool)) (!
  (not (Set_in o (as Set_empty  Set<Bool>)))
  :pattern ((Set_in o (as Set_empty  Set<Bool>)))
  )))
(assert (forall ((s Set<Bool>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<Bool>)))
    (=> (not (= (Set_card s) 0)) (exists ((x Bool))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r Bool)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r Bool) (o Bool)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r Bool)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<Bool>) (x Bool) (o Bool)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<Bool>) (x Bool)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<Bool>) (x Bool) (y Bool)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<Bool>) (x Bool)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Bool>) (x Bool)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>) (o Bool)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>) (y Bool)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>) (y Bool)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>) (o Bool)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>) (o Bool)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>) (y Bool)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
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
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (=
    (Set_subset a b)
    (forall ((o Bool)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
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
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (=> (Set_equal a b) (= a b))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((s Set<Seq<$Ref>>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o Seq<$Ref>)) (!
  (not (Set_in o (as Set_empty  Set<Seq<$Ref>>)))
  :pattern ((Set_in o (as Set_empty  Set<Seq<$Ref>>)))
  )))
(assert (forall ((s Set<Seq<$Ref>>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<Seq<$Ref>>)))
    (=> (not (= (Set_card s) 0)) (exists ((x Seq<$Ref>))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r Seq<$Ref>)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r Seq<$Ref>) (o Seq<$Ref>)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r Seq<$Ref>)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (x Seq<$Ref>) (o Seq<$Ref>)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (x Seq<$Ref>)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (x Seq<$Ref>) (y Seq<$Ref>)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (x Seq<$Ref>)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (x Seq<$Ref>)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>) (o Seq<$Ref>)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>) (y Seq<$Ref>)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>) (y Seq<$Ref>)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>) (o Seq<$Ref>)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>) (o Seq<$Ref>)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>) (y Seq<$Ref>)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>)) (!
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
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>)) (!
  (=
    (Set_subset a b)
    (forall ((o Seq<$Ref>)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>)) (!
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
(assert (forall ((a Set<Seq<$Ref>>) (b Set<Seq<$Ref>>)) (!
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
; /field_value_functions_axioms.smt2 [val: Bool]
(assert (forall ((vs $FVF<val>) (ws $FVF<val>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_val vs) ($FVF.domain_val ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_val vs))
            (= ($FVF.lookup_val vs x) ($FVF.lookup_val ws x)))
          :pattern (($FVF.lookup_val vs x) ($FVF.lookup_val ws x))
          :qid |qp.$FVF<val>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<val>To$Snap vs)
              ($SortWrappers.$FVF<val>To$Snap ws)
              )
    :qid |qp.$FVF<val>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_val pm r))
    :pattern (($FVF.perm_val pm r)))))
(assert (forall ((r $Ref) (f Bool)) (!
    (= ($FVF.loc_val f r) true)
    :pattern (($FVF.loc_val f r)))))
; /field_value_functions_axioms.smt2 [ar: Seq[Ref]]
(assert (forall ((vs $FVF<ar>) (ws $FVF<ar>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_ar vs) ($FVF.domain_ar ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_ar vs))
            (= ($FVF.lookup_ar vs x) ($FVF.lookup_ar ws x)))
          :pattern (($FVF.lookup_ar vs x) ($FVF.lookup_ar ws x))
          :qid |qp.$FVF<ar>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<ar>To$Snap vs)
              ($SortWrappers.$FVF<ar>To$Snap ws)
              )
    :qid |qp.$FVF<ar>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_ar pm r))
    :pattern (($FVF.perm_ar pm r)))))
(assert (forall ((r $Ref) (f Seq<$Ref>)) (!
    (= ($FVF.loc_ar f r) true)
    :pattern (($FVF.loc_ar f r)))))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
(declare-fun inv@7@00 ($Snap Seq<$Ref> Int $Ref) Int)
(declare-fun img@8@00 ($Snap Seq<$Ref> Int $Ref) Bool)
(declare-fun inv@13@00 ($Snap Seq<$Ref> Int $Ref) Int)
(declare-fun img@14@00 ($Snap Seq<$Ref> Int $Ref) Bool)
(declare-fun sm@15@00 ($Snap Seq<$Ref> Int) $FVF<val>)
(assert (forall ((s@$ $Snap) (l@0@00 Seq<$Ref>) (n@1@00 Int)) (!
  (= (count%limited s@$ l@0@00 n@1@00) (count s@$ l@0@00 n@1@00))
  :pattern ((count s@$ l@0@00 n@1@00))
  :qid |quant-u-9538|)))
(assert (forall ((s@$ $Snap) (l@0@00 Seq<$Ref>) (n@1@00 Int)) (!
  (count%stateless l@0@00 n@1@00)
  :pattern ((count%limited s@$ l@0@00 n@1@00))
  :qid |quant-u-9539|)))
(assert (forall ((s@$ $Snap) (l@0@00 Seq<$Ref>) (n@1@00 Int)) (!
  (and
    (forall ((i@6@00 Int)) (!
      (=>
        (Seq_contains (Seq_range 0 (Seq_length l@0@00)) i@6@00)
        (and
          (= (inv@7@00 s@$ l@0@00 n@1@00 (Seq_index l@0@00 i@6@00)) i@6@00)
          (img@8@00 s@$ l@0@00 n@1@00 (Seq_index l@0@00 i@6@00))))
      :pattern ((Seq_index l@0@00 i@6@00))
      :qid |quant-u-9541|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@8@00 s@$ l@0@00 n@1@00 r)
          (Seq_contains
            (Seq_range 0 (Seq_length l@0@00))
            (inv@7@00 s@$ l@0@00 n@1@00 r)))
        (= (Seq_index l@0@00 (inv@7@00 s@$ l@0@00 n@1@00 r)) r))
      :pattern ((inv@7@00 s@$ l@0@00 n@1@00 r))
      :qid |val-fctOfInv|))
    (forall ((i@12@00 Int)) (!
      (=>
        (Seq_contains (Seq_range 0 (Seq_length l@0@00)) i@12@00)
        (and
          (= (inv@13@00 s@$ l@0@00 n@1@00 (Seq_index l@0@00 i@12@00)) i@12@00)
          (img@14@00 s@$ l@0@00 n@1@00 (Seq_index l@0@00 i@12@00))))
      :pattern ((Seq_index l@0@00 i@12@00))
      :qid |val-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@14@00 s@$ l@0@00 n@1@00 r)
          (Seq_contains
            (Seq_range 0 (Seq_length l@0@00))
            (inv@13@00 s@$ l@0@00 n@1@00 r)))
        (= (Seq_index l@0@00 (inv@13@00 s@$ l@0@00 n@1@00 r)) r))
      :pattern ((inv@13@00 s@$ l@0@00 n@1@00 r))
      :qid |val-fctOfInv|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_val (sm@15@00 s@$ l@0@00 n@1@00)))
          (and
            (Seq_contains
              (Seq_range 0 (Seq_length l@0@00))
              (inv@13@00 s@$ l@0@00 n@1@00 r))
            (img@14@00 s@$ l@0@00 n@1@00 r)))
        (=>
          (and
            (Seq_contains
              (Seq_range 0 (Seq_length l@0@00))
              (inv@13@00 s@$ l@0@00 n@1@00 r))
            (img@14@00 s@$ l@0@00 n@1@00 r))
          (Set_in r ($FVF.domain_val (sm@15@00 s@$ l@0@00 n@1@00)))))
      :pattern ((Set_in r ($FVF.domain_val (sm@15@00 s@$ l@0@00 n@1@00))))
      :qid |qp.fvfDomDef1|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (Seq_contains
              (Seq_range 0 (Seq_length l@0@00))
              (inv@13@00 s@$ l@0@00 n@1@00 r))
            (img@14@00 s@$ l@0@00 n@1@00 r))
          (and
            (img@8@00 s@$ l@0@00 n@1@00 r)
            (Seq_contains
              (Seq_range 0 (Seq_length l@0@00))
              (inv@7@00 s@$ l@0@00 n@1@00 r))))
        (=
          ($FVF.lookup_val (sm@15@00 s@$ l@0@00 n@1@00) r)
          ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) r)))
      :pattern (($FVF.lookup_val (sm@15@00 s@$ l@0@00 n@1@00) r))
      :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) r))
      :qid |qp.fvfValDef0|))
    (=>
      (count%precondition s@$ l@0@00 n@1@00)
      (=
        (count s@$ l@0@00 n@1@00)
        (ite
          (= n@1@00 0)
          0
          (+
            (count%limited ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      ($SortWrappers.$FVF<val>To$Snap (sm@15@00 s@$ l@0@00 n@1@00))
                      $Snap.unit))))) l@0@00 (- n@1@00 1))
            (ite
              ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))) (Seq_index
                l@0@00
                (- n@1@00 1)))
              1
              0))))))
  :pattern ((count s@$ l@0@00 n@1@00))
  :qid |quant-u-9544|)))
(assert (forall ((s@$ $Snap) (l@0@00 Seq<$Ref>) (n@1@00 Int)) (!
  (=>
    (count%precondition s@$ l@0@00 n@1@00)
    (ite
      (= n@1@00 0)
      true
      (count%precondition ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($SortWrappers.$FVF<val>To$Snap (sm@15@00 s@$ l@0@00 n@1@00))
                $Snap.unit))))) l@0@00 (- n@1@00 1))))
  :pattern ((count s@$ l@0@00 n@1@00))
  :qid |quant-u-9545|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- main ----------
(declare-const this@0@01 $Ref)
(declare-const this@1@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@2@01 $Snap)
(assert (= $t@2@01 ($Snap.combine ($Snap.first $t@2@01) ($Snap.second $t@2@01))))
(declare-const $k@3@01 $Perm)
(assert ($Perm.isReadVar $k@3@01))
(assert (<= $Perm.No $k@3@01))
(assert (<= $k@3@01 $Perm.Write))
(assert (=> (< $Perm.No $k@3@01) (not (= this@1@01 $Ref.null))))
(assert (=
  ($Snap.second $t@2@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@2@01))
    ($Snap.second ($Snap.second $t@2@01)))))
(assert (= ($Snap.first ($Snap.second $t@2@01)) $Snap.unit))
; [eval] (forall i: Int :: { (i in [0..|this.ar|)) } { this.ar[i] } (i in [0..|this.ar|)) ==> this.ar[i] != null)
(declare-const i@4@01 Int)
(push) ; 2
; [eval] (i in [0..|this.ar|)) ==> this.ar[i] != null
; [eval] (i in [0..|this.ar|))
; [eval] [0..|this.ar|)
; [eval] |this.ar|
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@3@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | i@4@01 in [0..|First:($t@2@01)|] | live]
; [else-branch: 0 | !(i@4@01 in [0..|First:($t@2@01)|]) | live]
(push) ; 4
; [then-branch: 0 | i@4@01 in [0..|First:($t@2@01)|]]
(assert (Seq_contains
  (Seq_range
    0
    (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
  i@4@01))
; [eval] this.ar[i] != null
; [eval] this.ar[i]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@3@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@4@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@4@01 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 0 | !(i@4@01 in [0..|First:($t@2@01)|])]
(assert (not
  (Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i@4@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i@4@01))
  (Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i@4@01)))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@4@01 Int)) (!
  (or
    (not
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i@4@01))
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i@4@01))
  :pattern ((Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i@4@01))
  :pattern ((Seq_contains_trigger
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i@4@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/array_problem.vpr@24@12@24@68-aux|)))
(assert (forall ((i@4@01 Int)) (!
  (or
    (not
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i@4@01))
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i@4@01))
  :pattern ((Seq_contains_trigger
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i@4@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/array_problem.vpr@24@12@24@68-aux|)))
(assert (forall ((i@4@01 Int)) (!
  (or
    (not
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i@4@01))
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i@4@01))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
    i@4@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/array_problem.vpr@24@12@24@68-aux|)))
(assert (forall ((i@4@01 Int)) (!
  (=>
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i@4@01)
    (not
      (=
        (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)) i@4@01)
        $Ref.null)))
  :pattern ((Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i@4@01))
  :pattern ((Seq_contains_trigger
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i@4@01))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
    i@4@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/array_problem.vpr@24@12@24@68|)))
(assert (=
  ($Snap.second ($Snap.second $t@2@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@2@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@2@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@2@01))) $Snap.unit))
; [eval] (forall i1: Int, i2: Int :: { (i1 in [0..|this.ar|)), (i2 in [0..|this.ar|)) } { (i1 in [0..|this.ar|)), this.ar[i2] } { (i2 in [0..|this.ar|)), this.ar[i1] } { this.ar[i1], this.ar[i2] } (i1 in [0..|this.ar|)) && ((i2 in [0..|this.ar|)) && i1 != i2) ==> this.ar[i1] != this.ar[i2])
(declare-const i1@5@01 Int)
(declare-const i2@6@01 Int)
(push) ; 2
; [eval] (i1 in [0..|this.ar|)) && ((i2 in [0..|this.ar|)) && i1 != i2) ==> this.ar[i1] != this.ar[i2]
; [eval] (i1 in [0..|this.ar|)) && ((i2 in [0..|this.ar|)) && i1 != i2)
; [eval] (i1 in [0..|this.ar|))
; [eval] [0..|this.ar|)
; [eval] |this.ar|
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@3@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
; [then-branch: 1 | !(i1@5@01 in [0..|First:($t@2@01)|]) | live]
; [else-branch: 1 | i1@5@01 in [0..|First:($t@2@01)|] | live]
(push) ; 4
; [then-branch: 1 | !(i1@5@01 in [0..|First:($t@2@01)|])]
(assert (not
  (Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i1@5@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 1 | i1@5@01 in [0..|First:($t@2@01)|]]
(assert (Seq_contains
  (Seq_range
    0
    (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
  i1@5@01))
; [eval] (i2 in [0..|this.ar|))
; [eval] [0..|this.ar|)
; [eval] |this.ar|
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@3@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
; [then-branch: 2 | !(i2@6@01 in [0..|First:($t@2@01)|]) | live]
; [else-branch: 2 | i2@6@01 in [0..|First:($t@2@01)|] | live]
(push) ; 6
; [then-branch: 2 | !(i2@6@01 in [0..|First:($t@2@01)|])]
(assert (not
  (Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i2@6@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 2 | i2@6@01 in [0..|First:($t@2@01)|]]
(assert (Seq_contains
  (Seq_range
    0
    (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
  i2@6@01))
; [eval] i1 != i2
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i2@6@01)
  (not
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i2@6@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i1@5@01)
  (and
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i1@5@01)
    (or
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i2@6@01)
      (not
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i2@6@01))))))
(assert (or
  (Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i1@5@01)
  (not
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i1@5@01))))
(push) ; 3
; [then-branch: 3 | i1@5@01 in [0..|First:($t@2@01)|] && i2@6@01 in [0..|First:($t@2@01)|] && i1@5@01 != i2@6@01 | live]
; [else-branch: 3 | !(i1@5@01 in [0..|First:($t@2@01)|] && i2@6@01 in [0..|First:($t@2@01)|] && i1@5@01 != i2@6@01) | live]
(push) ; 4
; [then-branch: 3 | i1@5@01 in [0..|First:($t@2@01)|] && i2@6@01 in [0..|First:($t@2@01)|] && i1@5@01 != i2@6@01]
(assert (and
  (Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i1@5@01)
  (and
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i2@6@01)
    (not (= i1@5@01 i2@6@01)))))
; [eval] this.ar[i1] != this.ar[i2]
; [eval] this.ar[i1]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@3@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i1@5@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i1@5@01 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] this.ar[i2]
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@3@01)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i2@6@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i2@6@01 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 3 | !(i1@5@01 in [0..|First:($t@2@01)|] && i2@6@01 in [0..|First:($t@2@01)|] && i1@5@01 != i2@6@01)]
(assert (not
  (and
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i1@5@01)
    (and
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i2@6@01)
      (not (= i1@5@01 i2@6@01))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i1@5@01)
    (and
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i2@6@01)
      (not (= i1@5@01 i2@6@01))))
  (and
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i1@5@01)
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i2@6@01)
    (not (= i1@5@01 i2@6@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i1@5@01)
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i2@6@01)
        (not (= i1@5@01 i2@6@01)))))
  (and
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i1@5@01)
    (and
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i2@6@01)
      (not (= i1@5@01 i2@6@01))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i1@5@01 Int) (i2@6@01 Int)) (!
  (and
    (=>
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i1@5@01)
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@5@01)
        (or
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            i2@6@01)
          (not
            (Seq_contains
              (Seq_range
                0
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
              i2@6@01)))))
    (or
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i1@5@01)
      (not
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@5@01)))
    (=>
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@5@01)
        (and
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            i2@6@01)
          (not (= i1@5@01 i2@6@01))))
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@5@01)
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i2@6@01)
        (not (= i1@5@01 i2@6@01))))
    (or
      (not
        (and
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            i1@5@01)
          (and
            (Seq_contains
              (Seq_range
                0
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
              i2@6@01)
            (not (= i1@5@01 i2@6@01)))))
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@5@01)
        (and
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            i2@6@01)
          (not (= i1@5@01 i2@6@01))))))
  :pattern ((Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i1@5@01) (Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i2@6@01))
  :pattern ((Seq_contains_trigger
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i1@5@01) (Seq_contains_trigger
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i2@6@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/array_problem.vpr@25@12@25@124-aux|)))
(assert (forall ((i1@5@01 Int) (i2@6@01 Int)) (!
  (and
    (=>
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i1@5@01)
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@5@01)
        (or
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            i2@6@01)
          (not
            (Seq_contains
              (Seq_range
                0
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
              i2@6@01)))))
    (or
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i1@5@01)
      (not
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@5@01)))
    (=>
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@5@01)
        (and
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            i2@6@01)
          (not (= i1@5@01 i2@6@01))))
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@5@01)
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i2@6@01)
        (not (= i1@5@01 i2@6@01))))
    (or
      (not
        (and
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            i1@5@01)
          (and
            (Seq_contains
              (Seq_range
                0
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
              i2@6@01)
            (not (= i1@5@01 i2@6@01)))))
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@5@01)
        (and
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            i2@6@01)
          (not (= i1@5@01 i2@6@01))))))
  :pattern ((Seq_contains_trigger
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i1@5@01) (Seq_contains_trigger
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i2@6@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/array_problem.vpr@25@12@25@124-aux|)))
(assert (forall ((i1@5@01 Int) (i2@6@01 Int)) (!
  (and
    (=>
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i1@5@01)
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@5@01)
        (or
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            i2@6@01)
          (not
            (Seq_contains
              (Seq_range
                0
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
              i2@6@01)))))
    (or
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i1@5@01)
      (not
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@5@01)))
    (=>
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@5@01)
        (and
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            i2@6@01)
          (not (= i1@5@01 i2@6@01))))
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@5@01)
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i2@6@01)
        (not (= i1@5@01 i2@6@01))))
    (or
      (not
        (and
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            i1@5@01)
          (and
            (Seq_contains
              (Seq_range
                0
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
              i2@6@01)
            (not (= i1@5@01 i2@6@01)))))
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@5@01)
        (and
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            i2@6@01)
          (not (= i1@5@01 i2@6@01))))))
  :pattern ((Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i1@5@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
    i2@6@01))
  :pattern ((Seq_contains_trigger
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i1@5@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
    i2@6@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/array_problem.vpr@25@12@25@124-aux|)))
(assert (forall ((i1@5@01 Int) (i2@6@01 Int)) (!
  (and
    (=>
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i1@5@01)
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@5@01)
        (or
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            i2@6@01)
          (not
            (Seq_contains
              (Seq_range
                0
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
              i2@6@01)))))
    (or
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i1@5@01)
      (not
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@5@01)))
    (=>
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@5@01)
        (and
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            i2@6@01)
          (not (= i1@5@01 i2@6@01))))
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@5@01)
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i2@6@01)
        (not (= i1@5@01 i2@6@01))))
    (or
      (not
        (and
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            i1@5@01)
          (and
            (Seq_contains
              (Seq_range
                0
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
              i2@6@01)
            (not (= i1@5@01 i2@6@01)))))
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@5@01)
        (and
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            i2@6@01)
          (not (= i1@5@01 i2@6@01))))))
  :pattern ((Seq_contains_trigger
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i1@5@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
    i2@6@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/array_problem.vpr@25@12@25@124-aux|)))
(assert (forall ((i1@5@01 Int) (i2@6@01 Int)) (!
  (and
    (=>
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i1@5@01)
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@5@01)
        (or
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            i2@6@01)
          (not
            (Seq_contains
              (Seq_range
                0
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
              i2@6@01)))))
    (or
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i1@5@01)
      (not
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@5@01)))
    (=>
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@5@01)
        (and
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            i2@6@01)
          (not (= i1@5@01 i2@6@01))))
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@5@01)
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i2@6@01)
        (not (= i1@5@01 i2@6@01))))
    (or
      (not
        (and
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            i1@5@01)
          (and
            (Seq_contains
              (Seq_range
                0
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
              i2@6@01)
            (not (= i1@5@01 i2@6@01)))))
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@5@01)
        (and
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            i2@6@01)
          (not (= i1@5@01 i2@6@01))))))
  :pattern ((Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i2@6@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
    i1@5@01))
  :pattern ((Seq_contains_trigger
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i2@6@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
    i1@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/array_problem.vpr@25@12@25@124-aux|)))
(assert (forall ((i1@5@01 Int) (i2@6@01 Int)) (!
  (and
    (=>
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i1@5@01)
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@5@01)
        (or
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            i2@6@01)
          (not
            (Seq_contains
              (Seq_range
                0
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
              i2@6@01)))))
    (or
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i1@5@01)
      (not
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@5@01)))
    (=>
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@5@01)
        (and
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            i2@6@01)
          (not (= i1@5@01 i2@6@01))))
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@5@01)
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i2@6@01)
        (not (= i1@5@01 i2@6@01))))
    (or
      (not
        (and
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            i1@5@01)
          (and
            (Seq_contains
              (Seq_range
                0
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
              i2@6@01)
            (not (= i1@5@01 i2@6@01)))))
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@5@01)
        (and
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            i2@6@01)
          (not (= i1@5@01 i2@6@01))))))
  :pattern ((Seq_contains_trigger
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i2@6@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
    i1@5@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/array_problem.vpr@25@12@25@124-aux|)))
(assert (forall ((i1@5@01 Int) (i2@6@01 Int)) (!
  (and
    (=>
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i1@5@01)
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@5@01)
        (or
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            i2@6@01)
          (not
            (Seq_contains
              (Seq_range
                0
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
              i2@6@01)))))
    (or
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i1@5@01)
      (not
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@5@01)))
    (=>
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@5@01)
        (and
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            i2@6@01)
          (not (= i1@5@01 i2@6@01))))
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@5@01)
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i2@6@01)
        (not (= i1@5@01 i2@6@01))))
    (or
      (not
        (and
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            i1@5@01)
          (and
            (Seq_contains
              (Seq_range
                0
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
              i2@6@01)
            (not (= i1@5@01 i2@6@01)))))
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@5@01)
        (and
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            i2@6@01)
          (not (= i1@5@01 i2@6@01))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
    i1@5@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
    i2@6@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/array_problem.vpr@25@12@25@124-aux|)))
(assert (forall ((i1@5@01 Int) (i2@6@01 Int)) (!
  (=>
    (and
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i1@5@01)
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i2@6@01)
        (not (= i1@5@01 i2@6@01))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          i1@5@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          i2@6@01))))
  :pattern ((Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i1@5@01) (Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i2@6@01))
  :pattern ((Seq_contains_trigger
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i1@5@01) (Seq_contains_trigger
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i2@6@01))
  :pattern ((Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i1@5@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
    i2@6@01))
  :pattern ((Seq_contains_trigger
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i1@5@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
    i2@6@01))
  :pattern ((Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i2@6@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
    i1@5@01))
  :pattern ((Seq_contains_trigger
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i2@6@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
    i1@5@01))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
    i1@5@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
    i2@6@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/array_problem.vpr@25@12@25@124|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@2@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@2@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@2@01)))))))
(declare-const i@7@01 Int)
(push) ; 2
; [eval] (i in [0..|this.ar|))
; [eval] [0..|this.ar|)
; [eval] |this.ar|
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@3@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Seq_contains
  (Seq_range
    0
    (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
  i@7@01))
; [eval] this.ar[i]
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@3@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (>= i@7@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@7@01 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@8@01 ($Ref) Int)
(declare-fun img@9@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((i1@7@01 Int) (i2@7@01 Int)) (!
  (=>
    (and
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i1@7@01)
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i2@7@01)
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          i1@7@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          i2@7@01)))
    (= i1@7@01 i2@7@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@7@01 Int)) (!
  (=>
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i@7@01)
    (and
      (=
        (inv@8@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          i@7@01))
        i@7@01)
      (img@9@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
        i@7@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
    i@7@01))
  :qid |quant-u-9547|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@9@01 r)
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        (inv@8@01 r)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
        (inv@8@01 r))
      r))
  :pattern ((inv@8@01 r))
  :qid |val-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@7@01 Int)) (!
  (=>
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i@7@01)
    (not
      (=
        (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)) i@7@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
    i@7@01))
  :qid |val-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@2@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@2@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@2@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@2@01)))))
  $Snap.unit))
; [eval] |this.ar| > 10
; [eval] |this.ar|
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@3@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (> (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))) 10))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@2@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@2@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@2@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@2@01))))))
  $Snap.unit))
; [eval] count(this.ar, |this.ar|) == 4
; [eval] count(this.ar, |this.ar|)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@3@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [eval] |this.ar|
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@3@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
; [eval] 0 <= n
(push) ; 3
(assert (not (<= 0 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)))))
; [eval] n <= |l|
; [eval] |l|
; [eval] (forall i: Int ::(i in [0..|l|)) ==> l[i] != null)
(declare-const i@10@01 Int)
(push) ; 3
; [eval] (i in [0..|l|)) ==> l[i] != null
; [eval] (i in [0..|l|))
; [eval] [0..|l|)
; [eval] |l|
(push) ; 4
; [then-branch: 4 | i@10@01 in [0..|First:($t@2@01)|] | live]
; [else-branch: 4 | !(i@10@01 in [0..|First:($t@2@01)|]) | live]
(push) ; 5
; [then-branch: 4 | i@10@01 in [0..|First:($t@2@01)|]]
(assert (Seq_contains
  (Seq_range
    0
    (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
  i@10@01))
; [eval] l[i] != null
; [eval] l[i]
(push) ; 6
(assert (not (>= i@10@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i@10@01 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 4 | !(i@10@01 in [0..|First:($t@2@01)|])]
(assert (not
  (Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i@10@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i@10@01))
  (Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i@10@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 3
(assert (not (forall ((i@10@01 Int)) (!
  (=>
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i@10@01)
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          i@10@01)
        $Ref.null)))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/array_problem.vpr@14@35@14@79|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@10@01 Int)) (!
  (=>
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i@10@01)
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          i@10@01)
        $Ref.null)))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/array_problem.vpr@14@35@14@79|)))
; [eval] (forall i1: Int, i2: Int ::(i1 in [0..|l|)) && ((i2 in [0..|l|)) && i1 != i2) ==> l[i1] != l[i2])
(declare-const i1@11@01 Int)
(declare-const i2@12@01 Int)
(push) ; 3
; [eval] (i1 in [0..|l|)) && ((i2 in [0..|l|)) && i1 != i2) ==> l[i1] != l[i2]
; [eval] (i1 in [0..|l|)) && ((i2 in [0..|l|)) && i1 != i2)
; [eval] (i1 in [0..|l|))
; [eval] [0..|l|)
; [eval] |l|
(push) ; 4
; [then-branch: 5 | !(i1@11@01 in [0..|First:($t@2@01)|]) | live]
; [else-branch: 5 | i1@11@01 in [0..|First:($t@2@01)|] | live]
(push) ; 5
; [then-branch: 5 | !(i1@11@01 in [0..|First:($t@2@01)|])]
(assert (not
  (Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i1@11@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 5 | i1@11@01 in [0..|First:($t@2@01)|]]
(assert (Seq_contains
  (Seq_range
    0
    (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
  i1@11@01))
; [eval] (i2 in [0..|l|))
; [eval] [0..|l|)
; [eval] |l|
(push) ; 6
; [then-branch: 6 | !(i2@12@01 in [0..|First:($t@2@01)|]) | live]
; [else-branch: 6 | i2@12@01 in [0..|First:($t@2@01)|] | live]
(push) ; 7
; [then-branch: 6 | !(i2@12@01 in [0..|First:($t@2@01)|])]
(assert (not
  (Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i2@12@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 6 | i2@12@01 in [0..|First:($t@2@01)|]]
(assert (Seq_contains
  (Seq_range
    0
    (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
  i2@12@01))
; [eval] i1 != i2
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i2@12@01)
  (not
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i2@12@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i1@11@01)
  (and
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i1@11@01)
    (or
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i2@12@01)
      (not
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i2@12@01))))))
(assert (or
  (Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i1@11@01)
  (not
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i1@11@01))))
(push) ; 4
; [then-branch: 7 | i1@11@01 in [0..|First:($t@2@01)|] && i2@12@01 in [0..|First:($t@2@01)|] && i1@11@01 != i2@12@01 | live]
; [else-branch: 7 | !(i1@11@01 in [0..|First:($t@2@01)|] && i2@12@01 in [0..|First:($t@2@01)|] && i1@11@01 != i2@12@01) | live]
(push) ; 5
; [then-branch: 7 | i1@11@01 in [0..|First:($t@2@01)|] && i2@12@01 in [0..|First:($t@2@01)|] && i1@11@01 != i2@12@01]
(assert (and
  (Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i1@11@01)
  (and
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i2@12@01)
    (not (= i1@11@01 i2@12@01)))))
; [eval] l[i1] != l[i2]
; [eval] l[i1]
(push) ; 6
(assert (not (>= i1@11@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i1@11@01 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] l[i2]
(push) ; 6
(assert (not (>= i2@12@01 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (< i2@12@01 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 7 | !(i1@11@01 in [0..|First:($t@2@01)|] && i2@12@01 in [0..|First:($t@2@01)|] && i1@11@01 != i2@12@01)]
(assert (not
  (and
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i1@11@01)
    (and
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i2@12@01)
      (not (= i1@11@01 i2@12@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i1@11@01)
    (and
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i2@12@01)
      (not (= i1@11@01 i2@12@01))))
  (and
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i1@11@01)
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i2@12@01)
    (not (= i1@11@01 i2@12@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i1@11@01)
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i2@12@01)
        (not (= i1@11@01 i2@12@01)))))
  (and
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i1@11@01)
    (and
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i2@12@01)
      (not (= i1@11@01 i2@12@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 3
(assert (not (forall ((i1@11@01 Int) (i2@12@01 Int)) (!
  (=>
    (and
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i1@11@01)
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i2@12@01)
        (not (= i1@11@01 i2@12@01))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          i1@11@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          i2@12@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/array_problem.vpr@15@11@15@99|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@11@01 Int) (i2@12@01 Int)) (!
  (=>
    (and
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i1@11@01)
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i2@12@01)
        (not (= i1@11@01 i2@12@01))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          i1@11@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          i2@12@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/array_problem.vpr@15@11@15@99|)))
(declare-const i@13@01 Int)
(push) ; 3
; [eval] (i in [0..|l|))
; [eval] [0..|l|)
; [eval] |l|
(assert (Seq_contains
  (Seq_range
    0
    (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
  i@13@01))
; [eval] l[i]
(push) ; 4
(assert (not (>= i@13@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< i@13@01 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))))
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
(assert (not (forall ((i1@13@01 Int) (i2@13@01 Int)) (!
  (=>
    (and
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i1@13@01)
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i2@13@01)
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          i1@13@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          i2@13@01)))
    (= i1@13@01 i2@13@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@13@01 Int)) (!
  (=>
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i@13@01)
    (and
      (=
        (inv@14@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          i@13@01))
        i@13@01)
      (img@15@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
        i@13@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
    i@13@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@15@01 r)
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        (inv@14@01 r)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
        (inv@14@01 r))
      r))
  :pattern ((inv@14@01 r))
  :qid |val-fctOfInv|)))
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        (inv@14@01 r))
      (img@15@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          (inv@14@01 r))))
    (>
      (ite
        (and
          (img@9@01 r)
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            (inv@8@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-9549|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@16@01 $FVF<val>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@16@01  $FVF<val>)))
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          (inv@14@01 r))
        (img@15@01 r)))
    (=>
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          (inv@14@01 r))
        (img@15@01 r))
      (Set_in r ($FVF.domain_val (as sm@16@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@16@01  $FVF<val>))))
  :qid |qp.fvfDomDef1|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          (inv@14@01 r))
        (img@15@01 r))
      (and
        (img@9@01 r)
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          (inv@8@01 r))))
    (=
      ($FVF.lookup_val (as sm@16@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@2@01))))) r)))
  :pattern (($FVF.lookup_val (as sm@16@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@2@01))))) r))
  :qid |qp.fvfValDef0|)))
; [eval] n > 0 ==> l[n - 1] != null
; [eval] n > 0
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (> (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))) 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (> (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))) 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 8 | |First:($t@2@01)| > 0 | live]
; [else-branch: 8 | !(|First:($t@2@01)| > 0) | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 8 | |First:($t@2@01)| > 0]
(assert (> (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))) 0))
; [eval] l[n - 1] != null
; [eval] l[n - 1]
; [eval] n - 1
(push) ; 5
(assert (not (>= (- (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))) 1) 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (<
  (- (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))) 1)
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (> (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))) 0))
(push) ; 3
(assert (not (=>
  (> (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))) 0)
  (not
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
        (- (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))) 1))
      $Ref.null)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (> (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))) 0)
  (not
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
        (- (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))) 1))
      $Ref.null))))
(assert (count%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<val>To$Snap (as sm@16@01  $FVF<val>))
          $Snap.unit))))) ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)) (Seq_length
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)))))
(pop) ; 2
; Joined path conditions
(assert (forall ((i@13@01 Int)) (!
  (=>
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i@13@01)
    (and
      (=
        (inv@14@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          i@13@01))
        i@13@01)
      (img@15@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
        i@13@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
    i@13@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@15@01 r)
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        (inv@14@01 r)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
        (inv@14@01 r))
      r))
  :pattern ((inv@14@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@16@01  $FVF<val>)))
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          (inv@14@01 r))
        (img@15@01 r)))
    (=>
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          (inv@14@01 r))
        (img@15@01 r))
      (Set_in r ($FVF.domain_val (as sm@16@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@16@01  $FVF<val>))))
  :qid |qp.fvfDomDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          (inv@14@01 r))
        (img@15@01 r))
      (and
        (img@9@01 r)
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          (inv@8@01 r))))
    (=
      ($FVF.lookup_val (as sm@16@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@2@01))))) r)))
  :pattern (($FVF.lookup_val (as sm@16@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@2@01))))) r))
  :qid |qp.fvfValDef0|)))
(assert (and
  (<= 0 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
  (forall ((i@10@01 Int)) (!
    (=>
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i@10@01)
      (not
        (=
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
            i@10@01)
          $Ref.null)))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/array_problem.vpr@14@35@14@79|))
  (forall ((i1@11@01 Int) (i2@12@01 Int)) (!
    (=>
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@11@01)
        (and
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            i2@12@01)
          (not (= i1@11@01 i2@12@01))))
      (not
        (=
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
            i1@11@01)
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
            i2@12@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/array_problem.vpr@15@11@15@99|))
  (> (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))) 0)
  (=>
    (> (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))) 0)
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          (-
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)))
            1))
        $Ref.null)))
  (count%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($SortWrappers.$FVF<val>To$Snap (as sm@16@01  $FVF<val>))
            $Snap.unit))))) ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)) (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))))
(assert (=
  (count ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($SortWrappers.$FVF<val>To$Snap (as sm@16@01  $FVF<val>))
            $Snap.unit))))) ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)) (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
  4))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@2@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@2@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@2@01))))))))))
; [eval] this.ar[3]
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@3@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(assert (not (< 3 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(declare-const sm@17@01 $FVF<val>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_val (as sm@17@01  $FVF<val>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
    3))
  ($SortWrappers.$SnapToBool ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@2@01))))))))))
(assert (<=
  $Perm.No
  (ite
    (=
      (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)) 3)
      (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)) 3))
    (/ (to_real 1) (to_real 2))
    $Perm.No)))
(assert (<=
  (ite
    (=
      (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)) 3)
      (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)) 3))
    (/ (to_real 1) (to_real 2))
    $Perm.No)
  $Perm.Write))
(assert (=>
  (=
    (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)) 3)
    (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)) 3))
  (not
    (=
      (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)) 3)
      $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@2@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@2@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@2@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@2@01))))))))
  $Snap.unit))
; [eval] this.ar[3]
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@3@01)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(assert (not (< 3 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(declare-const sm@18@01 $FVF<val>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@9@01 r)
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        (inv@8@01 r)))
    (=
      ($FVF.lookup_val (as sm@18@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@2@01))))) r)))
  :pattern (($FVF.lookup_val (as sm@18@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@2@01))))) r))
  :qid |qp.fvfValDef2|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)) 3))
    (=
      ($FVF.lookup_val (as sm@18@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@17@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@18@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@17@01  $FVF<val>) r))
  :qid |qp.fvfValDef3|)))
(declare-const pm@19@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_val (as pm@19@01  $FPM) r)
    (+
      (ite
        (and
          (img@9@01 r)
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            (inv@8@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (ite
        (=
          r
          (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)) 3))
        (/ (to_real 1) (to_real 2))
        $Perm.No)))
  :pattern (($FVF.perm_val (as pm@19@01  $FPM) r))
  :qid |qp.resPrmSumDef4|)))
(push) ; 2
(assert (not (<
  $Perm.No
  ($FVF.perm_val (as pm@19@01  $FPM) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
    3)))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert ($FVF.lookup_val (as sm@18@01  $FVF<val>) (Seq_index
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
  3)))
(declare-const sm@20@01 $FVF<val>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_val (as sm@20@01  $FVF<val>) this@1@01)
  ($SortWrappers.$SnapToBool ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@2@01)))))))))))
(push) ; 2
(set-option :timeout 10)
(assert (not (and
  (=
    (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)) 3)
    (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)) 3))
  (=
    this@1@01
    (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)) 3)))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= this@1@01 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; this.ar[3].val := false
; [eval] this.ar[3]
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@3@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (< 3 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@21@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)) 3))
    ($Perm.min
      (ite
        (=
          r
          (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)) 3))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@22@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)) 3))
    ($Perm.min
      (ite
        (and
          (img@9@01 r)
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            (inv@8@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (- $Perm.Write (pTaken@21@01 r)))
    $Perm.No))
(define-fun pTaken@23@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)) 3))
    ($Perm.min
      (ite (= r this@1@01) $Perm.Write $Perm.No)
      (- (- $Perm.Write (pTaken@21@01 r)) (pTaken@22@01 r)))
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
        (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)) 3)
        (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)) 3))
      (/ (to_real 1) (to_real 2))
      $Perm.No)
    (pTaken@21@01 (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
      3)))
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
    (= r (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)) 3))
    (= (- $Perm.Write (pTaken@21@01 r)) $Perm.No))
  
  :qid |quant-u-9552|))))
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
        (and
          (img@9@01 r)
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            (inv@8@01 r)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@22@01 r))
    $Perm.No)
  
  :qid |quant-u-9553|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@22@01 r) $Perm.No)
  
  :qid |quant-u-9554|))))
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
    (= r (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)) 3))
    (= (- (- $Perm.Write (pTaken@21@01 r)) (pTaken@22@01 r)) $Perm.No))
  
  :qid |quant-u-9555|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@24@01 $FVF<val>)
; Definitional axioms for singleton-FVF's value
(assert (=
  ($FVF.lookup_val (as sm@24@01  $FVF<val>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
    3))
  false))
; [exec]
; inhale count(this.ar, |this.ar|) == 3
(declare-const $t@25@01 $Snap)
(assert (= $t@25@01 $Snap.unit))
; [eval] count(this.ar, |this.ar|) == 3
; [eval] count(this.ar, |this.ar|)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@3@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] |this.ar|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@3@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= n
; [eval] n <= |l|
; [eval] |l|
; [eval] (forall i: Int ::(i in [0..|l|)) ==> l[i] != null)
(declare-const i@26@01 Int)
(push) ; 4
; [eval] (i in [0..|l|)) ==> l[i] != null
; [eval] (i in [0..|l|))
; [eval] [0..|l|)
; [eval] |l|
(push) ; 5
; [then-branch: 9 | i@26@01 in [0..|First:($t@2@01)|] | live]
; [else-branch: 9 | !(i@26@01 in [0..|First:($t@2@01)|]) | live]
(push) ; 6
; [then-branch: 9 | i@26@01 in [0..|First:($t@2@01)|]]
(assert (Seq_contains
  (Seq_range
    0
    (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
  i@26@01))
; [eval] l[i] != null
; [eval] l[i]
(push) ; 7
(assert (not (>= i@26@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@26@01 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 9 | !(i@26@01 in [0..|First:($t@2@01)|])]
(assert (not
  (Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i@26@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i@26@01))
  (Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i@26@01)))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((i@26@01 Int)) (!
  (=>
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i@26@01)
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          i@26@01)
        $Ref.null)))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/array_problem.vpr@14@35@14@79|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@26@01 Int)) (!
  (=>
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i@26@01)
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          i@26@01)
        $Ref.null)))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/array_problem.vpr@14@35@14@79|)))
; [eval] (forall i1: Int, i2: Int ::(i1 in [0..|l|)) && ((i2 in [0..|l|)) && i1 != i2) ==> l[i1] != l[i2])
(declare-const i1@27@01 Int)
(declare-const i2@28@01 Int)
(push) ; 4
; [eval] (i1 in [0..|l|)) && ((i2 in [0..|l|)) && i1 != i2) ==> l[i1] != l[i2]
; [eval] (i1 in [0..|l|)) && ((i2 in [0..|l|)) && i1 != i2)
; [eval] (i1 in [0..|l|))
; [eval] [0..|l|)
; [eval] |l|
(push) ; 5
; [then-branch: 10 | !(i1@27@01 in [0..|First:($t@2@01)|]) | live]
; [else-branch: 10 | i1@27@01 in [0..|First:($t@2@01)|] | live]
(push) ; 6
; [then-branch: 10 | !(i1@27@01 in [0..|First:($t@2@01)|])]
(assert (not
  (Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i1@27@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 10 | i1@27@01 in [0..|First:($t@2@01)|]]
(assert (Seq_contains
  (Seq_range
    0
    (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
  i1@27@01))
; [eval] (i2 in [0..|l|))
; [eval] [0..|l|)
; [eval] |l|
(push) ; 7
; [then-branch: 11 | !(i2@28@01 in [0..|First:($t@2@01)|]) | live]
; [else-branch: 11 | i2@28@01 in [0..|First:($t@2@01)|] | live]
(push) ; 8
; [then-branch: 11 | !(i2@28@01 in [0..|First:($t@2@01)|])]
(assert (not
  (Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i2@28@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 11 | i2@28@01 in [0..|First:($t@2@01)|]]
(assert (Seq_contains
  (Seq_range
    0
    (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
  i2@28@01))
; [eval] i1 != i2
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i2@28@01)
  (not
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i2@28@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i1@27@01)
  (and
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i1@27@01)
    (or
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i2@28@01)
      (not
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i2@28@01))))))
(assert (or
  (Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i1@27@01)
  (not
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i1@27@01))))
(push) ; 5
; [then-branch: 12 | i1@27@01 in [0..|First:($t@2@01)|] && i2@28@01 in [0..|First:($t@2@01)|] && i1@27@01 != i2@28@01 | live]
; [else-branch: 12 | !(i1@27@01 in [0..|First:($t@2@01)|] && i2@28@01 in [0..|First:($t@2@01)|] && i1@27@01 != i2@28@01) | live]
(push) ; 6
; [then-branch: 12 | i1@27@01 in [0..|First:($t@2@01)|] && i2@28@01 in [0..|First:($t@2@01)|] && i1@27@01 != i2@28@01]
(assert (and
  (Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i1@27@01)
  (and
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i2@28@01)
    (not (= i1@27@01 i2@28@01)))))
; [eval] l[i1] != l[i2]
; [eval] l[i1]
(push) ; 7
(assert (not (>= i1@27@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i1@27@01 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] l[i2]
(push) ; 7
(assert (not (>= i2@28@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i2@28@01 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 12 | !(i1@27@01 in [0..|First:($t@2@01)|] && i2@28@01 in [0..|First:($t@2@01)|] && i1@27@01 != i2@28@01)]
(assert (not
  (and
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i1@27@01)
    (and
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i2@28@01)
      (not (= i1@27@01 i2@28@01))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i1@27@01)
    (and
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i2@28@01)
      (not (= i1@27@01 i2@28@01))))
  (and
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i1@27@01)
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i2@28@01)
    (not (= i1@27@01 i2@28@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i1@27@01)
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i2@28@01)
        (not (= i1@27@01 i2@28@01)))))
  (and
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i1@27@01)
    (and
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i2@28@01)
      (not (= i1@27@01 i2@28@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((i1@27@01 Int) (i2@28@01 Int)) (!
  (=>
    (and
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i1@27@01)
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i2@28@01)
        (not (= i1@27@01 i2@28@01))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          i1@27@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          i2@28@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/array_problem.vpr@15@11@15@99|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@27@01 Int) (i2@28@01 Int)) (!
  (=>
    (and
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i1@27@01)
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i2@28@01)
        (not (= i1@27@01 i2@28@01))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          i1@27@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          i2@28@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/array_problem.vpr@15@11@15@99|)))
(declare-const i@29@01 Int)
(push) ; 4
; [eval] (i in [0..|l|))
; [eval] [0..|l|)
; [eval] |l|
(assert (Seq_contains
  (Seq_range
    0
    (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
  i@29@01))
; [eval] l[i]
(push) ; 5
(assert (not (>= i@29@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@29@01 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@30@01 ($Ref) Int)
(declare-fun img@31@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@29@01 Int) (i2@29@01 Int)) (!
  (=>
    (and
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i1@29@01)
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i2@29@01)
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          i1@29@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          i2@29@01)))
    (= i1@29@01 i2@29@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@29@01 Int)) (!
  (=>
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i@29@01)
    (and
      (=
        (inv@30@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          i@29@01))
        i@29@01)
      (img@31@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
        i@29@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
    i@29@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@31@01 r)
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        (inv@30@01 r)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
        (inv@30@01 r))
      r))
  :pattern ((inv@30@01 r))
  :qid |val-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        (inv@30@01 r))
      (img@31@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          (inv@30@01 r))))
    (>
      (+
        (+
          (ite
            (and
              (img@9@01 r)
              (Seq_contains
                (Seq_range
                  0
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
                (inv@8@01 r)))
            (- (/ (to_real 1) (to_real 2)) (pTaken@22@01 r))
            $Perm.No)
          (ite
            (=
              r
              (Seq_index
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
                3))
            $Perm.Write
            $Perm.No))
        (ite (= r this@1@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-9557|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@32@01 $FVF<val>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@32@01  $FVF<val>)))
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          (inv@30@01 r))
        (img@31@01 r)))
    (=>
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          (inv@30@01 r))
        (img@31@01 r))
      (Set_in r ($FVF.domain_val (as sm@32@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@32@01  $FVF<val>))))
  :qid |qp.fvfDomDef8|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          (inv@30@01 r))
        (img@31@01 r))
      (= r (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)) 3)))
    (=
      ($FVF.lookup_val (as sm@32@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@24@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@32@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@24@01  $FVF<val>) r))
  :qid |qp.fvfValDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          (inv@30@01 r))
        (img@31@01 r))
      (= r this@1@01))
    (=
      ($FVF.lookup_val (as sm@32@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@20@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@32@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@20@01  $FVF<val>) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          (inv@30@01 r))
        (img@31@01 r))
      (ite
        (and
          (img@9@01 r)
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            (inv@8@01 r)))
        (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@22@01 r)))
        false))
    (=
      ($FVF.lookup_val (as sm@32@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@2@01))))) r)))
  :pattern (($FVF.lookup_val (as sm@32@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@2@01))))) r))
  :qid |qp.fvfValDef7|)))
; [eval] n > 0 ==> l[n - 1] != null
; [eval] n > 0
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (> (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))) 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 13 | |First:($t@2@01)| > 0 | live]
; [else-branch: 13 | !(|First:($t@2@01)| > 0) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 13 | |First:($t@2@01)| > 0]
; [eval] l[n - 1] != null
; [eval] l[n - 1]
; [eval] n - 1
(push) ; 6
(assert (not (>= (- (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))) 1) 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (<
  (- (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))) 1)
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (count%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<val>To$Snap (as sm@32@01  $FVF<val>))
          $Snap.unit))))) ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)) (Seq_length
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)))))
(pop) ; 3
; Joined path conditions
(assert (forall ((i@29@01 Int)) (!
  (=>
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i@29@01)
    (and
      (=
        (inv@30@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          i@29@01))
        i@29@01)
      (img@31@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
        i@29@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
    i@29@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@31@01 r)
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        (inv@30@01 r)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
        (inv@30@01 r))
      r))
  :pattern ((inv@30@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@32@01  $FVF<val>)))
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          (inv@30@01 r))
        (img@31@01 r)))
    (=>
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          (inv@30@01 r))
        (img@31@01 r))
      (Set_in r ($FVF.domain_val (as sm@32@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@32@01  $FVF<val>))))
  :qid |qp.fvfDomDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          (inv@30@01 r))
        (img@31@01 r))
      (= r (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)) 3)))
    (=
      ($FVF.lookup_val (as sm@32@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@24@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@32@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@24@01  $FVF<val>) r))
  :qid |qp.fvfValDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          (inv@30@01 r))
        (img@31@01 r))
      (= r this@1@01))
    (=
      ($FVF.lookup_val (as sm@32@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@20@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@32@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@20@01  $FVF<val>) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          (inv@30@01 r))
        (img@31@01 r))
      (ite
        (and
          (img@9@01 r)
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            (inv@8@01 r)))
        (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@22@01 r)))
        false))
    (=
      ($FVF.lookup_val (as sm@32@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@2@01))))) r)))
  :pattern (($FVF.lookup_val (as sm@32@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@2@01))))) r))
  :qid |qp.fvfValDef7|)))
(assert (and
  (forall ((i@26@01 Int)) (!
    (=>
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i@26@01)
      (not
        (=
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
            i@26@01)
          $Ref.null)))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/array_problem.vpr@14@35@14@79|))
  (forall ((i1@27@01 Int) (i2@28@01 Int)) (!
    (=>
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@27@01)
        (and
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            i2@28@01)
          (not (= i1@27@01 i2@28@01))))
      (not
        (=
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
            i1@27@01)
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
            i2@28@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/array_problem.vpr@15@11@15@99|))
  (count%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($SortWrappers.$FVF<val>To$Snap (as sm@32@01  $FVF<val>))
            $Snap.unit))))) ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)) (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))))
(assert (=
  (count ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($SortWrappers.$FVF<val>To$Snap (as sm@32@01  $FVF<val>))
            $Snap.unit))))) ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)) (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
  3))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert count(this.ar, |this.ar|) == 3
; [eval] count(this.ar, |this.ar|) == 3
; [eval] count(this.ar, |this.ar|)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@3@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] |this.ar|
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@3@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= n
; [eval] n <= |l|
; [eval] |l|
; [eval] (forall i: Int ::(i in [0..|l|)) ==> l[i] != null)
(declare-const i@33@01 Int)
(push) ; 4
; [eval] (i in [0..|l|)) ==> l[i] != null
; [eval] (i in [0..|l|))
; [eval] [0..|l|)
; [eval] |l|
(push) ; 5
; [then-branch: 14 | i@33@01 in [0..|First:($t@2@01)|] | live]
; [else-branch: 14 | !(i@33@01 in [0..|First:($t@2@01)|]) | live]
(push) ; 6
; [then-branch: 14 | i@33@01 in [0..|First:($t@2@01)|]]
(assert (Seq_contains
  (Seq_range
    0
    (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
  i@33@01))
; [eval] l[i] != null
; [eval] l[i]
(push) ; 7
(assert (not (>= i@33@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i@33@01 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 14 | !(i@33@01 in [0..|First:($t@2@01)|])]
(assert (not
  (Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i@33@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or
  (not
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i@33@01))
  (Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i@33@01)))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((i@33@01 Int)) (!
  (=>
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i@33@01)
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          i@33@01)
        $Ref.null)))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/array_problem.vpr@14@35@14@79|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@33@01 Int)) (!
  (=>
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i@33@01)
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          i@33@01)
        $Ref.null)))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/array_problem.vpr@14@35@14@79|)))
; [eval] (forall i1: Int, i2: Int ::(i1 in [0..|l|)) && ((i2 in [0..|l|)) && i1 != i2) ==> l[i1] != l[i2])
(declare-const i1@34@01 Int)
(declare-const i2@35@01 Int)
(push) ; 4
; [eval] (i1 in [0..|l|)) && ((i2 in [0..|l|)) && i1 != i2) ==> l[i1] != l[i2]
; [eval] (i1 in [0..|l|)) && ((i2 in [0..|l|)) && i1 != i2)
; [eval] (i1 in [0..|l|))
; [eval] [0..|l|)
; [eval] |l|
(push) ; 5
; [then-branch: 15 | !(i1@34@01 in [0..|First:($t@2@01)|]) | live]
; [else-branch: 15 | i1@34@01 in [0..|First:($t@2@01)|] | live]
(push) ; 6
; [then-branch: 15 | !(i1@34@01 in [0..|First:($t@2@01)|])]
(assert (not
  (Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i1@34@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 15 | i1@34@01 in [0..|First:($t@2@01)|]]
(assert (Seq_contains
  (Seq_range
    0
    (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
  i1@34@01))
; [eval] (i2 in [0..|l|))
; [eval] [0..|l|)
; [eval] |l|
(push) ; 7
; [then-branch: 16 | !(i2@35@01 in [0..|First:($t@2@01)|]) | live]
; [else-branch: 16 | i2@35@01 in [0..|First:($t@2@01)|] | live]
(push) ; 8
; [then-branch: 16 | !(i2@35@01 in [0..|First:($t@2@01)|])]
(assert (not
  (Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i2@35@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 16 | i2@35@01 in [0..|First:($t@2@01)|]]
(assert (Seq_contains
  (Seq_range
    0
    (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
  i2@35@01))
; [eval] i1 != i2
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i2@35@01)
  (not
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i2@35@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i1@34@01)
  (and
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i1@34@01)
    (or
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i2@35@01)
      (not
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i2@35@01))))))
(assert (or
  (Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i1@34@01)
  (not
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i1@34@01))))
(push) ; 5
; [then-branch: 17 | i1@34@01 in [0..|First:($t@2@01)|] && i2@35@01 in [0..|First:($t@2@01)|] && i1@34@01 != i2@35@01 | live]
; [else-branch: 17 | !(i1@34@01 in [0..|First:($t@2@01)|] && i2@35@01 in [0..|First:($t@2@01)|] && i1@34@01 != i2@35@01) | live]
(push) ; 6
; [then-branch: 17 | i1@34@01 in [0..|First:($t@2@01)|] && i2@35@01 in [0..|First:($t@2@01)|] && i1@34@01 != i2@35@01]
(assert (and
  (Seq_contains
    (Seq_range
      0
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
    i1@34@01)
  (and
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i2@35@01)
    (not (= i1@34@01 i2@35@01)))))
; [eval] l[i1] != l[i2]
; [eval] l[i1]
(push) ; 7
(assert (not (>= i1@34@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i1@34@01 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] l[i2]
(push) ; 7
(assert (not (>= i2@35@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (< i2@35@01 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 17 | !(i1@34@01 in [0..|First:($t@2@01)|] && i2@35@01 in [0..|First:($t@2@01)|] && i1@34@01 != i2@35@01)]
(assert (not
  (and
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i1@34@01)
    (and
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i2@35@01)
      (not (= i1@34@01 i2@35@01))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i1@34@01)
    (and
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i2@35@01)
      (not (= i1@34@01 i2@35@01))))
  (and
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i1@34@01)
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i2@35@01)
    (not (= i1@34@01 i2@35@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i1@34@01)
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i2@35@01)
        (not (= i1@34@01 i2@35@01)))))
  (and
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i1@34@01)
    (and
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i2@35@01)
      (not (= i1@34@01 i2@35@01))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((i1@34@01 Int) (i2@35@01 Int)) (!
  (=>
    (and
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i1@34@01)
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i2@35@01)
        (not (= i1@34@01 i2@35@01))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          i1@34@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          i2@35@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/array_problem.vpr@15@11@15@99|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i1@34@01 Int) (i2@35@01 Int)) (!
  (=>
    (and
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i1@34@01)
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i2@35@01)
        (not (= i1@34@01 i2@35@01))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          i1@34@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          i2@35@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/array_problem.vpr@15@11@15@99|)))
(declare-const i@36@01 Int)
(push) ; 4
; [eval] (i in [0..|l|))
; [eval] [0..|l|)
; [eval] |l|
(assert (Seq_contains
  (Seq_range
    0
    (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
  i@36@01))
; [eval] l[i]
(push) ; 5
(assert (not (>= i@36@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< i@36@01 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@37@01 ($Ref) Int)
(declare-fun img@38@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@36@01 Int) (i2@36@01 Int)) (!
  (=>
    (and
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i1@36@01)
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i2@36@01)
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          i1@36@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          i2@36@01)))
    (= i1@36@01 i2@36@01))
  
  :qid |val-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@36@01 Int)) (!
  (=>
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i@36@01)
    (and
      (=
        (inv@37@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          i@36@01))
        i@36@01)
      (img@38@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
        i@36@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
    i@36@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        (inv@37@01 r)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
        (inv@37@01 r))
      r))
  :pattern ((inv@37@01 r))
  :qid |val-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        (inv@37@01 r))
      (img@38@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          (inv@37@01 r))))
    (>
      (+
        (+
          (ite
            (and
              (img@9@01 r)
              (Seq_contains
                (Seq_range
                  0
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
                (inv@8@01 r)))
            (- (/ (to_real 1) (to_real 2)) (pTaken@22@01 r))
            $Perm.No)
          (ite
            (=
              r
              (Seq_index
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
                3))
            $Perm.Write
            $Perm.No))
        (ite (= r this@1@01) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-9559|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@39@01 $FVF<val>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@39@01  $FVF<val>)))
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          (inv@37@01 r))
        (img@38@01 r)))
    (=>
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          (inv@37@01 r))
        (img@38@01 r))
      (Set_in r ($FVF.domain_val (as sm@39@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@39@01  $FVF<val>))))
  :qid |qp.fvfDomDef12|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          (inv@37@01 r))
        (img@38@01 r))
      (= r (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)) 3)))
    (=
      ($FVF.lookup_val (as sm@39@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@24@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@39@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@24@01  $FVF<val>) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          (inv@37@01 r))
        (img@38@01 r))
      (= r this@1@01))
    (=
      ($FVF.lookup_val (as sm@39@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@20@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@39@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@20@01  $FVF<val>) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          (inv@37@01 r))
        (img@38@01 r))
      (ite
        (and
          (img@9@01 r)
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            (inv@8@01 r)))
        (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@22@01 r)))
        false))
    (=
      ($FVF.lookup_val (as sm@39@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@2@01))))) r)))
  :pattern (($FVF.lookup_val (as sm@39@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@2@01))))) r))
  :qid |qp.fvfValDef11|)))
; [eval] n > 0 ==> l[n - 1] != null
; [eval] n > 0
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (> (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))) 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 18 | |First:($t@2@01)| > 0 | live]
; [else-branch: 18 | !(|First:($t@2@01)| > 0) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 18 | |First:($t@2@01)| > 0]
; [eval] l[n - 1] != null
; [eval] l[n - 1]
; [eval] n - 1
(push) ; 6
(assert (not (>= (- (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))) 1) 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (<
  (- (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))) 1)
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (count%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<val>To$Snap (as sm@39@01  $FVF<val>))
          $Snap.unit))))) ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)) (Seq_length
  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)))))
(pop) ; 3
; Joined path conditions
(assert (forall ((i@36@01 Int)) (!
  (=>
    (Seq_contains
      (Seq_range
        0
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
      i@36@01)
    (and
      (=
        (inv@37@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
          i@36@01))
        i@36@01)
      (img@38@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
        i@36@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
    i@36@01))
  :qid |val-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        (inv@37@01 r)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
        (inv@37@01 r))
      r))
  :pattern ((inv@37@01 r))
  :qid |val-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_val (as sm@39@01  $FVF<val>)))
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          (inv@37@01 r))
        (img@38@01 r)))
    (=>
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          (inv@37@01 r))
        (img@38@01 r))
      (Set_in r ($FVF.domain_val (as sm@39@01  $FVF<val>)))))
  :pattern ((Set_in r ($FVF.domain_val (as sm@39@01  $FVF<val>))))
  :qid |qp.fvfDomDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          (inv@37@01 r))
        (img@38@01 r))
      (= r (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)) 3)))
    (=
      ($FVF.lookup_val (as sm@39@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@24@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@39@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@24@01  $FVF<val>) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          (inv@37@01 r))
        (img@38@01 r))
      (= r this@1@01))
    (=
      ($FVF.lookup_val (as sm@39@01  $FVF<val>) r)
      ($FVF.lookup_val (as sm@20@01  $FVF<val>) r)))
  :pattern (($FVF.lookup_val (as sm@39@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val (as sm@20@01  $FVF<val>) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          (inv@37@01 r))
        (img@38@01 r))
      (ite
        (and
          (img@9@01 r)
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            (inv@8@01 r)))
        (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@22@01 r)))
        false))
    (=
      ($FVF.lookup_val (as sm@39@01  $FVF<val>) r)
      ($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@2@01))))) r)))
  :pattern (($FVF.lookup_val (as sm@39@01  $FVF<val>) r))
  :pattern (($FVF.lookup_val ($SortWrappers.$SnapTo$FVF<val> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@2@01))))) r))
  :qid |qp.fvfValDef11|)))
(assert (and
  (forall ((i@33@01 Int)) (!
    (=>
      (Seq_contains
        (Seq_range
          0
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
        i@33@01)
      (not
        (=
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
            i@33@01)
          $Ref.null)))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/array_problem.vpr@14@35@14@79|))
  (forall ((i1@34@01 Int) (i2@35@01 Int)) (!
    (=>
      (and
        (Seq_contains
          (Seq_range
            0
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
          i1@34@01)
        (and
          (Seq_contains
            (Seq_range
              0
              (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
            i2@35@01)
          (not (= i1@34@01 i2@35@01))))
      (not
        (=
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
            i1@34@01)
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))
            i2@35@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/third_party/array_problem.vpr@15@11@15@99|))
  (count%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($SortWrappers.$FVF<val>To$Snap (as sm@39@01  $FVF<val>))
            $Snap.unit))))) ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)) (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))))
(push) ; 3
(assert (not (=
  (count ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($SortWrappers.$FVF<val>To$Snap (as sm@39@01  $FVF<val>))
            $Snap.unit))))) ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)) (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
  3)))
(check-sat)
; unsat
(pop) ; 3
; 0.02s
; (get-info :all-statistics)
(assert (=
  (count ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($SortWrappers.$FVF<val>To$Snap (as sm@39@01  $FVF<val>))
            $Snap.unit))))) ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01)) (Seq_length
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@2@01))))
  3))
(pop) ; 2
(pop) ; 1
