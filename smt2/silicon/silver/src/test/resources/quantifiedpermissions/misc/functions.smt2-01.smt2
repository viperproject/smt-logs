(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 19:32:06
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
(declare-sort Set<Seq<$Ref>> 0)
(declare-sort Set<$Ref> 0)
(declare-sort Set<$Snap> 0)
(declare-sort $FVF<f> 0)
(declare-sort $FVF<ss> 0)
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
(declare-fun $SortWrappers.$FVF<ss>To$Snap ($FVF<ss>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<ss> ($Snap) $FVF<ss>)
(assert (forall ((x $FVF<ss>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<ss>($SortWrappers.$FVF<ss>To$Snap x)))
    :pattern (($SortWrappers.$FVF<ss>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<ss>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<ss>To$Snap($SortWrappers.$SnapTo$FVF<ss> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<ss> x))
    :qid |$Snap.$FVF<ss>To$SnapTo$FVF<ss>|
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
; /field_value_functions_declarations.smt2 [ss: Seq[Ref]]
(declare-fun $FVF.domain_ss ($FVF<ss>) Set<$Ref>)
(declare-fun $FVF.lookup_ss ($FVF<ss> $Ref) Seq<$Ref>)
(declare-fun $FVF.after_ss ($FVF<ss> $FVF<ss>) Bool)
(declare-fun $FVF.loc_ss (Seq<$Ref> $Ref) Bool)
(declare-fun $FVF.perm_ss ($FPM $Ref) $Perm)
(declare-const $fvfTOP_ss $FVF<ss>)
; Declaring symbols related to program functions (from program analysis)
(declare-fun fun07 ($Snap Seq<$Ref> Int) Int)
(declare-fun fun07%limited ($Snap Seq<$Ref> Int) Int)
(declare-fun fun07%stateless (Seq<$Ref> Int) Bool)
(declare-fun fun07%precondition ($Snap Seq<$Ref> Int) Bool)
(declare-fun fun08 ($Snap Seq<$Ref> Int) Int)
(declare-fun fun08%limited ($Snap Seq<$Ref> Int) Int)
(declare-fun fun08%stateless (Seq<$Ref> Int) Bool)
(declare-fun fun08%precondition ($Snap Seq<$Ref> Int) Bool)
(declare-fun fun01 ($Snap Seq<$Ref>) Int)
(declare-fun fun01%limited ($Snap Seq<$Ref>) Int)
(declare-fun fun01%stateless (Seq<$Ref>) Bool)
(declare-fun fun01%precondition ($Snap Seq<$Ref>) Bool)
(declare-fun fun02 ($Snap Seq<$Ref>) Int)
(declare-fun fun02%limited ($Snap Seq<$Ref>) Int)
(declare-fun fun02%stateless (Seq<$Ref>) Bool)
(declare-fun fun02%precondition ($Snap Seq<$Ref>) Bool)
(declare-fun fun04 ($Snap $Ref Int Int) Int)
(declare-fun fun04%limited ($Snap $Ref Int Int) Int)
(declare-fun fun04%stateless ($Ref Int Int) Bool)
(declare-fun fun04%precondition ($Snap $Ref Int Int) Bool)
(declare-fun fun06 ($Snap Seq<$Ref> Int Int) Int)
(declare-fun fun06%limited ($Snap Seq<$Ref> Int Int) Int)
(declare-fun fun06%stateless (Seq<$Ref> Int Int) Bool)
(declare-fun fun06%precondition ($Snap Seq<$Ref> Int Int) Bool)
(declare-fun fun03 ($Snap Seq<$Ref> Int) Int)
(declare-fun fun03%limited ($Snap Seq<$Ref> Int) Int)
(declare-fun fun03%stateless (Seq<$Ref> Int) Bool)
(declare-fun fun03%precondition ($Snap Seq<$Ref> Int) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun P02%trigger ($Snap Seq<$Ref> Int) Bool)
(declare-fun P01%trigger ($Snap $Ref Int) Bool)
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
; /field_value_functions_axioms.smt2 [ss: Seq[Ref]]
(assert (forall ((vs $FVF<ss>) (ws $FVF<ss>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_ss vs) ($FVF.domain_ss ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_ss vs))
            (= ($FVF.lookup_ss vs x) ($FVF.lookup_ss ws x)))
          :pattern (($FVF.lookup_ss vs x) ($FVF.lookup_ss ws x))
          :qid |qp.$FVF<ss>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<ss>To$Snap vs)
              ($SortWrappers.$FVF<ss>To$Snap ws)
              )
    :qid |qp.$FVF<ss>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_ss pm r))
    :pattern (($FVF.perm_ss pm r)))))
(assert (forall ((r $Ref) (f Seq<$Ref>)) (!
    (= ($FVF.loc_ss f r) true)
    :pattern (($FVF.loc_ss f r)))))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
(declare-fun inv@24@00 ($Snap Seq<$Ref> Int $Ref) Int)
(declare-fun img@25@00 ($Snap Seq<$Ref> Int $Ref) Bool)
(declare-fun inv@30@00 ($Snap Seq<$Ref> Int $Ref) Int)
(declare-fun img@31@00 ($Snap Seq<$Ref> Int $Ref) Bool)
(declare-fun inv@36@00 ($Snap Seq<$Ref> Int $Ref) Int)
(declare-fun img@37@00 ($Snap Seq<$Ref> Int $Ref) Bool)
(declare-fun sm@32@00 ($Snap Seq<$Ref> Int) $FVF<f>)
(declare-fun sm@38@00 ($Snap Seq<$Ref> Int) $FVF<f>)
(declare-fun inv@42@00 ($Snap Seq<$Ref> Int $Ref) Int)
(declare-fun img@43@00 ($Snap Seq<$Ref> Int $Ref) Bool)
(declare-fun inv@48@00 ($Snap Seq<$Ref> $Ref) Int)
(declare-fun img@49@00 ($Snap Seq<$Ref> $Ref) Bool)
(declare-fun inv@53@00 ($Snap Seq<$Ref> $Ref) Int)
(declare-fun img@54@00 ($Snap Seq<$Ref> $Ref) Bool)
(declare-fun inv@58@00 ($Snap $Ref Int Int $Ref) Int)
(declare-fun img@59@00 ($Snap $Ref Int Int $Ref) Bool)
(declare-fun inv@61@00 ($Snap $Ref Int Int $Ref) Int)
(declare-fun img@62@00 ($Snap $Ref Int Int $Ref) Bool)
(declare-fun sm@63@00 ($Snap $Ref Int Int) $FVF<f>)
(declare-fun inv@68@00 ($Snap Seq<$Ref> Int Int $Ref) Int)
(declare-fun img@69@00 ($Snap Seq<$Ref> Int Int $Ref) Bool)
(declare-fun inv@71@00 ($Snap Seq<$Ref> Int Int $Ref) Int)
(declare-fun img@72@00 ($Snap Seq<$Ref> Int Int $Ref) Bool)
(declare-fun sm@73@00 ($Snap Seq<$Ref> Int Int) $FVF<f>)
(declare-fun inv@78@00 ($Snap Seq<$Ref> Int $Ref) Int)
(declare-fun img@79@00 ($Snap Seq<$Ref> Int $Ref) Bool)
(declare-fun inv@81@00 ($Snap Seq<$Ref> Int $Ref) Int)
(declare-fun img@82@00 ($Snap Seq<$Ref> Int $Ref) Bool)
(declare-fun sm@83@00 ($Snap Seq<$Ref> Int) $FVF<f>)
(assert (forall ((s@$ $Snap) (xs@0@00 Seq<$Ref>) (j@1@00 Int)) (!
  (= (fun07%limited s@$ xs@0@00 j@1@00) (fun07 s@$ xs@0@00 j@1@00))
  :pattern ((fun07 s@$ xs@0@00 j@1@00))
  :qid |quant-u-11512|)))
(assert (forall ((s@$ $Snap) (xs@0@00 Seq<$Ref>) (j@1@00 Int)) (!
  (fun07%stateless xs@0@00 j@1@00)
  :pattern ((fun07%limited s@$ xs@0@00 j@1@00))
  :qid |quant-u-11513|)))
(assert (forall ((s@$ $Snap) (xs@0@00 Seq<$Ref>) (j@1@00 Int)) (!
  (let ((result@2@00 (fun07%limited s@$ xs@0@00 j@1@00))) (and
    (forall ((i@23@00 Int)) (!
      (=>
        (and (<= 0 i@23@00) (< i@23@00 (Seq_length xs@0@00)))
        (and
          (= (inv@24@00 s@$ xs@0@00 j@1@00 (Seq_index xs@0@00 i@23@00)) i@23@00)
          (img@25@00 s@$ xs@0@00 j@1@00 (Seq_index xs@0@00 i@23@00))))
      :pattern ((Seq_index xs@0@00 i@23@00))
      :qid |quant-u-11527|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@25@00 s@$ xs@0@00 j@1@00 r)
          (and
            (<= 0 (inv@24@00 s@$ xs@0@00 j@1@00 r))
            (< (inv@24@00 s@$ xs@0@00 j@1@00 r) (Seq_length xs@0@00))))
        (= (Seq_index xs@0@00 (inv@24@00 s@$ xs@0@00 j@1@00 r)) r))
      :pattern ((inv@24@00 s@$ xs@0@00 j@1@00 r))
      :qid |f-fctOfInv|))
    (=> (fun07%precondition s@$ xs@0@00 j@1@00) (>= result@2@00 0))))
  :pattern ((fun07%limited s@$ xs@0@00 j@1@00))
  :qid |quant-u-11528|)))
(assert (forall ((s@$ $Snap) (xs@0@00 Seq<$Ref>) (j@1@00 Int)) (!
  (let ((result@2@00 (fun07%limited s@$ xs@0@00 j@1@00))) true)
  :pattern ((fun07%limited s@$ xs@0@00 j@1@00))
  :qid |quant-u-11529|)))
(assert (forall ((s@$ $Snap) (xs@0@00 Seq<$Ref>) (j@1@00 Int)) (!
  (and
    (forall ((i@23@00 Int)) (!
      (=>
        (and (<= 0 i@23@00) (< i@23@00 (Seq_length xs@0@00)))
        (and
          (= (inv@24@00 s@$ xs@0@00 j@1@00 (Seq_index xs@0@00 i@23@00)) i@23@00)
          (img@25@00 s@$ xs@0@00 j@1@00 (Seq_index xs@0@00 i@23@00))))
      :pattern ((Seq_index xs@0@00 i@23@00))
      :qid |quant-u-11527|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@25@00 s@$ xs@0@00 j@1@00 r)
          (and
            (<= 0 (inv@24@00 s@$ xs@0@00 j@1@00 r))
            (< (inv@24@00 s@$ xs@0@00 j@1@00 r) (Seq_length xs@0@00))))
        (= (Seq_index xs@0@00 (inv@24@00 s@$ xs@0@00 j@1@00 r)) r))
      :pattern ((inv@24@00 s@$ xs@0@00 j@1@00 r))
      :qid |f-fctOfInv|))
    (forall ((i@29@00 Int)) (!
      (=>
        (and (<= 0 i@29@00) (< i@29@00 (Seq_length xs@0@00)))
        (and
          (= (inv@30@00 s@$ xs@0@00 j@1@00 (Seq_index xs@0@00 i@29@00)) i@29@00)
          (img@31@00 s@$ xs@0@00 j@1@00 (Seq_index xs@0@00 i@29@00))))
      :pattern ((Seq_index xs@0@00 i@29@00))
      :qid |f-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@31@00 s@$ xs@0@00 j@1@00 r)
          (and
            (<= 0 (inv@30@00 s@$ xs@0@00 j@1@00 r))
            (< (inv@30@00 s@$ xs@0@00 j@1@00 r) (Seq_length xs@0@00))))
        (= (Seq_index xs@0@00 (inv@30@00 s@$ xs@0@00 j@1@00 r)) r))
      :pattern ((inv@30@00 s@$ xs@0@00 j@1@00 r))
      :qid |f-fctOfInv|))
    (forall ((i@35@00 Int)) (!
      (=>
        (and (<= 0 i@35@00) (< i@35@00 (Seq_length xs@0@00)))
        (and
          (= (inv@36@00 s@$ xs@0@00 j@1@00 (Seq_index xs@0@00 i@35@00)) i@35@00)
          (img@37@00 s@$ xs@0@00 j@1@00 (Seq_index xs@0@00 i@35@00))))
      :pattern ((Seq_index xs@0@00 i@35@00))
      :qid |f-invOfFct|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@37@00 s@$ xs@0@00 j@1@00 r)
          (and
            (<= 0 (inv@36@00 s@$ xs@0@00 j@1@00 r))
            (< (inv@36@00 s@$ xs@0@00 j@1@00 r) (Seq_length xs@0@00))))
        (= (Seq_index xs@0@00 (inv@36@00 s@$ xs@0@00 j@1@00 r)) r))
      :pattern ((inv@36@00 s@$ xs@0@00 j@1@00 r))
      :qid |f-fctOfInv|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_f (sm@32@00 s@$ xs@0@00 j@1@00)))
          (and
            (and
              (<= 0 (inv@30@00 s@$ xs@0@00 j@1@00 r))
              (< (inv@30@00 s@$ xs@0@00 j@1@00 r) (Seq_length xs@0@00)))
            (img@31@00 s@$ xs@0@00 j@1@00 r)))
        (=>
          (and
            (and
              (<= 0 (inv@30@00 s@$ xs@0@00 j@1@00 r))
              (< (inv@30@00 s@$ xs@0@00 j@1@00 r) (Seq_length xs@0@00)))
            (img@31@00 s@$ xs@0@00 j@1@00 r))
          (Set_in r ($FVF.domain_f (sm@32@00 s@$ xs@0@00 j@1@00)))))
      :pattern ((Set_in r ($FVF.domain_f (sm@32@00 s@$ xs@0@00 j@1@00))))
      :qid |qp.fvfDomDef1|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (and
              (<= 0 (inv@30@00 s@$ xs@0@00 j@1@00 r))
              (< (inv@30@00 s@$ xs@0@00 j@1@00 r) (Seq_length xs@0@00)))
            (img@31@00 s@$ xs@0@00 j@1@00 r))
          (and
            (img@25@00 s@$ xs@0@00 j@1@00 r)
            (and
              (<= 0 (inv@24@00 s@$ xs@0@00 j@1@00 r))
              (< (inv@24@00 s@$ xs@0@00 j@1@00 r) (Seq_length xs@0@00)))))
        (=
          ($FVF.lookup_f (sm@32@00 s@$ xs@0@00 j@1@00) r)
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second s@$)) r)))
      :pattern (($FVF.lookup_f (sm@32@00 s@$ xs@0@00 j@1@00) r))
      :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second s@$)) r))
      :qid |qp.fvfValDef0|))
    (forall ((r $Ref)) (!
      (and
        (=>
          (Set_in r ($FVF.domain_f (sm@38@00 s@$ xs@0@00 j@1@00)))
          (and
            (and
              (<= 0 (inv@36@00 s@$ xs@0@00 j@1@00 r))
              (< (inv@36@00 s@$ xs@0@00 j@1@00 r) (Seq_length xs@0@00)))
            (img@37@00 s@$ xs@0@00 j@1@00 r)))
        (=>
          (and
            (and
              (<= 0 (inv@36@00 s@$ xs@0@00 j@1@00 r))
              (< (inv@36@00 s@$ xs@0@00 j@1@00 r) (Seq_length xs@0@00)))
            (img@37@00 s@$ xs@0@00 j@1@00 r))
          (Set_in r ($FVF.domain_f (sm@38@00 s@$ xs@0@00 j@1@00)))))
      :pattern ((Set_in r ($FVF.domain_f (sm@38@00 s@$ xs@0@00 j@1@00))))
      :qid |qp.fvfDomDef3|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (and
            (and
              (<= 0 (inv@36@00 s@$ xs@0@00 j@1@00 r))
              (< (inv@36@00 s@$ xs@0@00 j@1@00 r) (Seq_length xs@0@00)))
            (img@37@00 s@$ xs@0@00 j@1@00 r))
          (and
            (img@25@00 s@$ xs@0@00 j@1@00 r)
            (and
              (<= 0 (inv@24@00 s@$ xs@0@00 j@1@00 r))
              (< (inv@24@00 s@$ xs@0@00 j@1@00 r) (Seq_length xs@0@00)))))
        (=
          ($FVF.lookup_f (sm@38@00 s@$ xs@0@00 j@1@00) r)
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second s@$)) r)))
      :pattern (($FVF.lookup_f (sm@38@00 s@$ xs@0@00 j@1@00) r))
      :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second s@$)) r))
      :qid |qp.fvfValDef2|))
    (=>
      (fun07%precondition s@$ xs@0@00 j@1@00)
      (=
        (fun07 s@$ xs@0@00 j@1@00)
        (ite
          (< j@1@00 0)
          (fun07%limited ($Snap.combine
            $Snap.unit
            ($SortWrappers.$FVF<f>To$Snap (sm@32@00 s@$ xs@0@00 j@1@00))) xs@0@00 (+
            j@1@00
            1))
          (ite
            (<= (Seq_length xs@0@00) j@1@00)
            (fun07%limited ($Snap.combine
              $Snap.unit
              ($SortWrappers.$FVF<f>To$Snap (sm@38@00 s@$ xs@0@00 j@1@00))) xs@0@00 (-
              j@1@00
              1))
            (*
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second s@$)) (Seq_index
                xs@0@00
                j@1@00))
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second s@$)) (Seq_index
                xs@0@00
                j@1@00))))))))
  :pattern ((fun07 s@$ xs@0@00 j@1@00))
  :qid |quant-u-11534|)))
(assert (forall ((s@$ $Snap) (xs@0@00 Seq<$Ref>) (j@1@00 Int)) (!
  (=>
    (fun07%precondition s@$ xs@0@00 j@1@00)
    (ite
      (< j@1@00 0)
      (fun07%precondition ($Snap.combine
        $Snap.unit
        ($SortWrappers.$FVF<f>To$Snap (sm@32@00 s@$ xs@0@00 j@1@00))) xs@0@00 (+
        j@1@00
        1))
      (ite
        (<= (Seq_length xs@0@00) j@1@00)
        (fun07%precondition ($Snap.combine
          $Snap.unit
          ($SortWrappers.$FVF<f>To$Snap (sm@38@00 s@$ xs@0@00 j@1@00))) xs@0@00 (-
          j@1@00
          1))
        true)))
  :pattern ((fun07 s@$ xs@0@00 j@1@00))
  :qid |quant-u-11535|)))
(assert (forall ((s@$ $Snap) (xs@3@00 Seq<$Ref>) (i@4@00 Int)) (!
  (= (fun08%limited s@$ xs@3@00 i@4@00) (fun08 s@$ xs@3@00 i@4@00))
  :pattern ((fun08 s@$ xs@3@00 i@4@00))
  :qid |quant-u-11514|)))
(assert (forall ((s@$ $Snap) (xs@3@00 Seq<$Ref>) (i@4@00 Int)) (!
  (fun08%stateless xs@3@00 i@4@00)
  :pattern ((fun08%limited s@$ xs@3@00 i@4@00))
  :qid |quant-u-11515|)))
(assert (forall ((s@$ $Snap) (xs@3@00 Seq<$Ref>) (i@4@00 Int)) (!
  (let ((result@5@00 (fun08%limited s@$ xs@3@00 i@4@00))) (and
    (forall ((j@41@00 Int)) (!
      (=>
        (and (<= 0 j@41@00) (< j@41@00 (Seq_length xs@3@00)))
        (and
          (= (inv@42@00 s@$ xs@3@00 i@4@00 (Seq_index xs@3@00 j@41@00)) j@41@00)
          (img@43@00 s@$ xs@3@00 i@4@00 (Seq_index xs@3@00 j@41@00))))
      :pattern ((Seq_index xs@3@00 j@41@00))
      :qid |quant-u-11537|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@43@00 s@$ xs@3@00 i@4@00 r)
          (and
            (<= 0 (inv@42@00 s@$ xs@3@00 i@4@00 r))
            (< (inv@42@00 s@$ xs@3@00 i@4@00 r) (Seq_length xs@3@00))))
        (= (Seq_index xs@3@00 (inv@42@00 s@$ xs@3@00 i@4@00 r)) r))
      :pattern ((inv@42@00 s@$ xs@3@00 i@4@00 r))
      :qid |f-fctOfInv|))
    (=>
      (fun08%precondition s@$ xs@3@00 i@4@00)
      (>
        result@5@00
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second s@$))) (Seq_index
          xs@3@00
          i@4@00))))))
  :pattern ((fun08%limited s@$ xs@3@00 i@4@00))
  :qid |quant-u-11538|)))
(assert (forall ((s@$ $Snap) (xs@3@00 Seq<$Ref>) (i@4@00 Int)) (!
  (let ((result@5@00 (fun08%limited s@$ xs@3@00 i@4@00))) true)
  :pattern ((fun08%limited s@$ xs@3@00 i@4@00))
  :qid |quant-u-11539|)))
(assert (forall ((s@$ $Snap) (xs@3@00 Seq<$Ref>) (i@4@00 Int)) (!
  (and
    (forall ((j@41@00 Int)) (!
      (=>
        (and (<= 0 j@41@00) (< j@41@00 (Seq_length xs@3@00)))
        (and
          (= (inv@42@00 s@$ xs@3@00 i@4@00 (Seq_index xs@3@00 j@41@00)) j@41@00)
          (img@43@00 s@$ xs@3@00 i@4@00 (Seq_index xs@3@00 j@41@00))))
      :pattern ((Seq_index xs@3@00 j@41@00))
      :qid |quant-u-11537|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@43@00 s@$ xs@3@00 i@4@00 r)
          (and
            (<= 0 (inv@42@00 s@$ xs@3@00 i@4@00 r))
            (< (inv@42@00 s@$ xs@3@00 i@4@00 r) (Seq_length xs@3@00))))
        (= (Seq_index xs@3@00 (inv@42@00 s@$ xs@3@00 i@4@00 r)) r))
      :pattern ((inv@42@00 s@$ xs@3@00 i@4@00 r))
      :qid |f-fctOfInv|))
    (=>
      (fun08%precondition s@$ xs@3@00 i@4@00)
      (=
        (fun08 s@$ xs@3@00 i@4@00)
        (+
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second s@$))) (Seq_index
            xs@3@00
            i@4@00))
          1))))
  :pattern ((fun08 s@$ xs@3@00 i@4@00))
  :qid |quant-u-11540|)))
(assert (forall ((s@$ $Snap) (xs@3@00 Seq<$Ref>) (i@4@00 Int)) (!
  true
  :pattern ((fun08 s@$ xs@3@00 i@4@00))
  :qid |quant-u-11541|)))
(assert (forall ((s@$ $Snap) (xs@6@00 Seq<$Ref>)) (!
  (= (fun01%limited s@$ xs@6@00) (fun01 s@$ xs@6@00))
  :pattern ((fun01 s@$ xs@6@00))
  :qid |quant-u-11516|)))
(assert (forall ((s@$ $Snap) (xs@6@00 Seq<$Ref>)) (!
  (fun01%stateless xs@6@00)
  :pattern ((fun01%limited s@$ xs@6@00))
  :qid |quant-u-11517|)))
(assert (forall ((s@$ $Snap) (xs@6@00 Seq<$Ref>)) (!
  (and
    (forall ((i@47@00 Int)) (!
      (=>
        (and (<= 0 i@47@00) (< i@47@00 (Seq_length xs@6@00)))
        (and
          (= (inv@48@00 s@$ xs@6@00 (Seq_index xs@6@00 i@47@00)) i@47@00)
          (img@49@00 s@$ xs@6@00 (Seq_index xs@6@00 i@47@00))))
      :pattern ((Seq_index xs@6@00 i@47@00))
      :qid |quant-u-11543|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@49@00 s@$ xs@6@00 r)
          (and
            (<= 0 (inv@48@00 s@$ xs@6@00 r))
            (< (inv@48@00 s@$ xs@6@00 r) (Seq_length xs@6@00))))
        (= (Seq_index xs@6@00 (inv@48@00 s@$ xs@6@00 r)) r))
      :pattern ((inv@48@00 s@$ xs@6@00 r))
      :qid |f-fctOfInv|))
    (=>
      (fun01%precondition s@$ xs@6@00)
      (=
        (fun01 s@$ xs@6@00)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second s@$))) (Seq_index
          xs@6@00
          0)))))
  :pattern ((fun01 s@$ xs@6@00))
  :qid |quant-u-11544|)))
(assert (forall ((s@$ $Snap) (xs@6@00 Seq<$Ref>)) (!
  true
  :pattern ((fun01 s@$ xs@6@00))
  :qid |quant-u-11545|)))
(assert (forall ((s@$ $Snap) (xs@8@00 Seq<$Ref>)) (!
  (= (fun02%limited s@$ xs@8@00) (fun02 s@$ xs@8@00))
  :pattern ((fun02 s@$ xs@8@00))
  :qid |quant-u-11518|)))
(assert (forall ((s@$ $Snap) (xs@8@00 Seq<$Ref>)) (!
  (fun02%stateless xs@8@00)
  :pattern ((fun02%limited s@$ xs@8@00))
  :qid |quant-u-11519|)))
(assert (forall ((s@$ $Snap) (xs@8@00 Seq<$Ref>)) (!
  (and
    (forall ((i@52@00 Int)) (!
      (=>
        (and (<= 0 i@52@00) (< i@52@00 (Seq_length xs@8@00)))
        (and
          (= (inv@53@00 s@$ xs@8@00 (Seq_index xs@8@00 i@52@00)) i@52@00)
          (img@54@00 s@$ xs@8@00 (Seq_index xs@8@00 i@52@00))))
      :pattern ((Seq_index xs@8@00 i@52@00))
      :qid |quant-u-11547|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@54@00 s@$ xs@8@00 r)
          (and
            (<= 0 (inv@53@00 s@$ xs@8@00 r))
            (< (inv@53@00 s@$ xs@8@00 r) (Seq_length xs@8@00))))
        (= (Seq_index xs@8@00 (inv@53@00 s@$ xs@8@00 r)) r))
      :pattern ((inv@53@00 s@$ xs@8@00 r))
      :qid |f-fctOfInv|))
    (=>
      (fun02%precondition s@$ xs@8@00)
      (=
        (fun02 s@$ xs@8@00)
        (+
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second s@$))) (Seq_index
            xs@8@00
            0))
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second s@$))) (Seq_index
            xs@8@00
            1))))))
  :pattern ((fun02 s@$ xs@8@00))
  :qid |quant-u-11548|)))
(assert (forall ((s@$ $Snap) (xs@8@00 Seq<$Ref>)) (!
  true
  :pattern ((fun02 s@$ xs@8@00))
  :qid |quant-u-11549|)))
(assert (forall ((s@$ $Snap) (x@10@00 $Ref) (n@11@00 Int) (i@12@00 Int)) (!
  (=
    (fun04%limited s@$ x@10@00 n@11@00 i@12@00)
    (fun04 s@$ x@10@00 n@11@00 i@12@00))
  :pattern ((fun04 s@$ x@10@00 n@11@00 i@12@00))
  :qid |quant-u-11520|)))
(assert (forall ((s@$ $Snap) (x@10@00 $Ref) (n@11@00 Int) (i@12@00 Int)) (!
  (fun04%stateless x@10@00 n@11@00 i@12@00)
  :pattern ((fun04%limited s@$ x@10@00 n@11@00 i@12@00))
  :qid |quant-u-11521|)))
(assert (forall ((s@$ $Snap) (x@10@00 $Ref) (n@11@00 Int) (i@12@00 Int)) (!
  (and
    (forall ((j@57@00 Int)) (!
      (=>
        (and (<= 0 j@57@00) (< j@57@00 3))
        (and
          (=
            (inv@58@00 s@$ x@10@00 n@11@00 i@12@00 (Seq_index
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.first s@$)))
              j@57@00))
            j@57@00)
          (img@59@00 s@$ x@10@00 n@11@00 i@12@00 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.first s@$)))
            j@57@00))))
      :pattern ((Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.first s@$)))
        j@57@00))
      :qid |quant-u-11551|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@59@00 s@$ x@10@00 n@11@00 i@12@00 r)
          (and
            (<= 0 (inv@58@00 s@$ x@10@00 n@11@00 i@12@00 r))
            (< (inv@58@00 s@$ x@10@00 n@11@00 i@12@00 r) 3)))
        (=
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.first s@$)))
            (inv@58@00 s@$ x@10@00 n@11@00 i@12@00 r))
          r))
      :pattern ((inv@58@00 s@$ x@10@00 n@11@00 i@12@00 r))
      :qid |f-fctOfInv|))
    (forall ((j@60@00 Int)) (!
      (=>
        (and (<= 3 j@60@00) (< j@60@00 n@11@00))
        (and
          (=
            (inv@61@00 s@$ x@10@00 n@11@00 i@12@00 (Seq_index
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.first s@$)))
              j@60@00))
            j@60@00)
          (img@62@00 s@$ x@10@00 n@11@00 i@12@00 (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.first s@$)))
            j@60@00))))
      :pattern ((Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.first s@$)))
        j@60@00))
      :qid |quant-u-11553|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@62@00 s@$ x@10@00 n@11@00 i@12@00 r)
          (and
            (<= 3 (inv@61@00 s@$ x@10@00 n@11@00 i@12@00 r))
            (< (inv@61@00 s@$ x@10@00 n@11@00 i@12@00 r) n@11@00)))
        (=
          (Seq_index
            ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.first s@$)))
            (inv@61@00 s@$ x@10@00 n@11@00 i@12@00 r))
          r))
      :pattern ((inv@61@00 s@$ x@10@00 n@11@00 i@12@00 r))
      :qid |f-fctOfInv|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@59@00 s@$ x@10@00 n@11@00 i@12@00 r)
          (and
            (<= 0 (inv@58@00 s@$ x@10@00 n@11@00 i@12@00 r))
            (< (inv@58@00 s@$ x@10@00 n@11@00 i@12@00 r) 3)))
        (=
          ($FVF.lookup_f (sm@63@00 s@$ x@10@00 n@11@00 i@12@00) r)
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) r)))
      :pattern (($FVF.lookup_f (sm@63@00 s@$ x@10@00 n@11@00 i@12@00) r))
      :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) r))
      :qid |qp.fvfValDef4|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@62@00 s@$ x@10@00 n@11@00 i@12@00 r)
          (and
            (<= 3 (inv@61@00 s@$ x@10@00 n@11@00 i@12@00 r))
            (< (inv@61@00 s@$ x@10@00 n@11@00 i@12@00 r) n@11@00)))
        (=
          ($FVF.lookup_f (sm@63@00 s@$ x@10@00 n@11@00 i@12@00) r)
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) r)))
      :pattern (($FVF.lookup_f (sm@63@00 s@$ x@10@00 n@11@00 i@12@00) r))
      :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))) r))
      :qid |qp.fvfValDef5|))
    (=>
      (fun04%precondition s@$ x@10@00 n@11@00 i@12@00)
      (=
        (fun04 s@$ x@10@00 n@11@00 i@12@00)
        ($FVF.lookup_f (sm@63@00 s@$ x@10@00 n@11@00 i@12@00) (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first ($Snap.first s@$)))
          i@12@00)))))
  :pattern ((fun04 s@$ x@10@00 n@11@00 i@12@00))
  :qid |quant-u-11555|)))
(assert (forall ((s@$ $Snap) (x@10@00 $Ref) (n@11@00 Int) (i@12@00 Int)) (!
  true
  :pattern ((fun04 s@$ x@10@00 n@11@00 i@12@00))
  :qid |quant-u-11556|)))
(assert (forall ((s@$ $Snap) (xs@14@00 Seq<$Ref>) (n@15@00 Int) (i@16@00 Int)) (!
  (=
    (fun06%limited s@$ xs@14@00 n@15@00 i@16@00)
    (fun06 s@$ xs@14@00 n@15@00 i@16@00))
  :pattern ((fun06 s@$ xs@14@00 n@15@00 i@16@00))
  :qid |quant-u-11522|)))
(assert (forall ((s@$ $Snap) (xs@14@00 Seq<$Ref>) (n@15@00 Int) (i@16@00 Int)) (!
  (fun06%stateless xs@14@00 n@15@00 i@16@00)
  :pattern ((fun06%limited s@$ xs@14@00 n@15@00 i@16@00))
  :qid |quant-u-11523|)))
(assert (forall ((s@$ $Snap) (xs@14@00 Seq<$Ref>) (n@15@00 Int) (i@16@00 Int)) (!
  (and
    (forall ((j@67@00 Int)) (!
      (=>
        (and (<= 0 j@67@00) (< j@67@00 3))
        (and
          (=
            (inv@68@00 s@$ xs@14@00 n@15@00 i@16@00 (Seq_index xs@14@00 j@67@00))
            j@67@00)
          (img@69@00 s@$ xs@14@00 n@15@00 i@16@00 (Seq_index xs@14@00 j@67@00))))
      :pattern ((Seq_index xs@14@00 j@67@00))
      :qid |quant-u-11558|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@69@00 s@$ xs@14@00 n@15@00 i@16@00 r)
          (and
            (<= 0 (inv@68@00 s@$ xs@14@00 n@15@00 i@16@00 r))
            (< (inv@68@00 s@$ xs@14@00 n@15@00 i@16@00 r) 3)))
        (= (Seq_index xs@14@00 (inv@68@00 s@$ xs@14@00 n@15@00 i@16@00 r)) r))
      :pattern ((inv@68@00 s@$ xs@14@00 n@15@00 i@16@00 r))
      :qid |f-fctOfInv|))
    (forall ((j@70@00 Int)) (!
      (=>
        (and (<= 3 j@70@00) (< j@70@00 n@15@00))
        (and
          (=
            (inv@71@00 s@$ xs@14@00 n@15@00 i@16@00 (Seq_index xs@14@00 j@70@00))
            j@70@00)
          (img@72@00 s@$ xs@14@00 n@15@00 i@16@00 (Seq_index xs@14@00 j@70@00))))
      :pattern ((Seq_index xs@14@00 j@70@00))
      :qid |quant-u-11560|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@72@00 s@$ xs@14@00 n@15@00 i@16@00 r)
          (and
            (<= 3 (inv@71@00 s@$ xs@14@00 n@15@00 i@16@00 r))
            (< (inv@71@00 s@$ xs@14@00 n@15@00 i@16@00 r) n@15@00)))
        (= (Seq_index xs@14@00 (inv@71@00 s@$ xs@14@00 n@15@00 i@16@00 r)) r))
      :pattern ((inv@71@00 s@$ xs@14@00 n@15@00 i@16@00 r))
      :qid |f-fctOfInv|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@69@00 s@$ xs@14@00 n@15@00 i@16@00 r)
          (and
            (<= 0 (inv@68@00 s@$ xs@14@00 n@15@00 i@16@00 r))
            (< (inv@68@00 s@$ xs@14@00 n@15@00 i@16@00 r) 3)))
        (=
          ($FVF.lookup_f (sm@73@00 s@$ xs@14@00 n@15@00 i@16@00) r)
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))) r)))
      :pattern (($FVF.lookup_f (sm@73@00 s@$ xs@14@00 n@15@00 i@16@00) r))
      :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))) r))
      :qid |qp.fvfValDef7|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@72@00 s@$ xs@14@00 n@15@00 i@16@00 r)
          (and
            (<= 3 (inv@71@00 s@$ xs@14@00 n@15@00 i@16@00 r))
            (< (inv@71@00 s@$ xs@14@00 n@15@00 i@16@00 r) n@15@00)))
        (=
          ($FVF.lookup_f (sm@73@00 s@$ xs@14@00 n@15@00 i@16@00) r)
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))) r)))
      :pattern (($FVF.lookup_f (sm@73@00 s@$ xs@14@00 n@15@00 i@16@00) r))
      :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))) r))
      :qid |qp.fvfValDef8|))
    (=>
      (fun06%precondition s@$ xs@14@00 n@15@00 i@16@00)
      (=
        (fun06 s@$ xs@14@00 n@15@00 i@16@00)
        ($FVF.lookup_f (sm@73@00 s@$ xs@14@00 n@15@00 i@16@00) (Seq_index
          xs@14@00
          i@16@00)))))
  :pattern ((fun06 s@$ xs@14@00 n@15@00 i@16@00))
  :qid |quant-u-11562|)))
(assert (forall ((s@$ $Snap) (xs@14@00 Seq<$Ref>) (n@15@00 Int) (i@16@00 Int)) (!
  true
  :pattern ((fun06 s@$ xs@14@00 n@15@00 i@16@00))
  :qid |quant-u-11563|)))
(assert (forall ((s@$ $Snap) (xs@18@00 Seq<$Ref>) (i@19@00 Int)) (!
  (= (fun03%limited s@$ xs@18@00 i@19@00) (fun03 s@$ xs@18@00 i@19@00))
  :pattern ((fun03 s@$ xs@18@00 i@19@00))
  :qid |quant-u-11524|)))
(assert (forall ((s@$ $Snap) (xs@18@00 Seq<$Ref>) (i@19@00 Int)) (!
  (fun03%stateless xs@18@00 i@19@00)
  :pattern ((fun03%limited s@$ xs@18@00 i@19@00))
  :qid |quant-u-11525|)))
(assert (forall ((s@$ $Snap) (xs@18@00 Seq<$Ref>) (i@19@00 Int)) (!
  (and
    (forall ((j@77@00 Int)) (!
      (=>
        (and (<= 0 j@77@00) (< j@77@00 3))
        (and
          (=
            (inv@78@00 s@$ xs@18@00 i@19@00 (Seq_index xs@18@00 j@77@00))
            j@77@00)
          (img@79@00 s@$ xs@18@00 i@19@00 (Seq_index xs@18@00 j@77@00))))
      :pattern ((Seq_index xs@18@00 j@77@00))
      :qid |quant-u-11565|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@79@00 s@$ xs@18@00 i@19@00 r)
          (and
            (<= 0 (inv@78@00 s@$ xs@18@00 i@19@00 r))
            (< (inv@78@00 s@$ xs@18@00 i@19@00 r) 3)))
        (= (Seq_index xs@18@00 (inv@78@00 s@$ xs@18@00 i@19@00 r)) r))
      :pattern ((inv@78@00 s@$ xs@18@00 i@19@00 r))
      :qid |f-fctOfInv|))
    (forall ((j@80@00 Int)) (!
      (=>
        (and (<= 3 j@80@00) (< j@80@00 (Seq_length xs@18@00)))
        (and
          (=
            (inv@81@00 s@$ xs@18@00 i@19@00 (Seq_index xs@18@00 j@80@00))
            j@80@00)
          (img@82@00 s@$ xs@18@00 i@19@00 (Seq_index xs@18@00 j@80@00))))
      :pattern ((Seq_index xs@18@00 j@80@00))
      :qid |quant-u-11567|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@82@00 s@$ xs@18@00 i@19@00 r)
          (and
            (<= 3 (inv@81@00 s@$ xs@18@00 i@19@00 r))
            (< (inv@81@00 s@$ xs@18@00 i@19@00 r) (Seq_length xs@18@00))))
        (= (Seq_index xs@18@00 (inv@81@00 s@$ xs@18@00 i@19@00 r)) r))
      :pattern ((inv@81@00 s@$ xs@18@00 i@19@00 r))
      :qid |f-fctOfInv|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@79@00 s@$ xs@18@00 i@19@00 r)
          (and
            (<= 0 (inv@78@00 s@$ xs@18@00 i@19@00 r))
            (< (inv@78@00 s@$ xs@18@00 i@19@00 r) 3)))
        (=
          ($FVF.lookup_f (sm@83@00 s@$ xs@18@00 i@19@00) r)
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second s@$)))) r)))
      :pattern (($FVF.lookup_f (sm@83@00 s@$ xs@18@00 i@19@00) r))
      :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second s@$)))) r))
      :qid |qp.fvfValDef10|))
    (forall ((r $Ref)) (!
      (=>
        (and
          (img@82@00 s@$ xs@18@00 i@19@00 r)
          (and
            (<= 3 (inv@81@00 s@$ xs@18@00 i@19@00 r))
            (< (inv@81@00 s@$ xs@18@00 i@19@00 r) (Seq_length xs@18@00))))
        (=
          ($FVF.lookup_f (sm@83@00 s@$ xs@18@00 i@19@00) r)
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))) r)))
      :pattern (($FVF.lookup_f (sm@83@00 s@$ xs@18@00 i@19@00) r))
      :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))) r))
      :qid |qp.fvfValDef11|))
    (=>
      (fun03%precondition s@$ xs@18@00 i@19@00)
      (=
        (fun03 s@$ xs@18@00 i@19@00)
        ($FVF.lookup_f (sm@83@00 s@$ xs@18@00 i@19@00) (Seq_index
          xs@18@00
          i@19@00)))))
  :pattern ((fun03 s@$ xs@18@00 i@19@00))
  :qid |quant-u-11569|)))
(assert (forall ((s@$ $Snap) (xs@18@00 Seq<$Ref>) (i@19@00 Int)) (!
  true
  :pattern ((fun03 s@$ xs@18@00 i@19@00))
  :qid |quant-u-11570|)))
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
; inhale (forall i: Int, j: Int ::
;     { xs[i], xs[j] }
;     i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==>
;     xs[i] != xs[j])
(declare-const $t@2@01 $Snap)
(assert (= $t@2@01 $Snap.unit))
; [eval] (forall i: Int, j: Int :: { xs[i], xs[j] } i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j])
(declare-const i@3@01 Int)
(declare-const j@4@01 Int)
(push) ; 3
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j]
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j)))
; [eval] i >= 0
(push) ; 4
; [then-branch: 0 | !(i@3@01 >= 0) | live]
; [else-branch: 0 | i@3@01 >= 0 | live]
(push) ; 5
; [then-branch: 0 | !(i@3@01 >= 0)]
(assert (not (>= i@3@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 0 | i@3@01 >= 0]
(assert (>= i@3@01 0))
; [eval] i < |xs|
; [eval] |xs|
(push) ; 6
; [then-branch: 1 | !(i@3@01 < |xs@1@01|) | live]
; [else-branch: 1 | i@3@01 < |xs@1@01| | live]
(push) ; 7
; [then-branch: 1 | !(i@3@01 < |xs@1@01|)]
(assert (not (< i@3@01 (Seq_length xs@1@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 1 | i@3@01 < |xs@1@01|]
(assert (< i@3@01 (Seq_length xs@1@01)))
; [eval] j >= 0
(push) ; 8
; [then-branch: 2 | !(j@4@01 >= 0) | live]
; [else-branch: 2 | j@4@01 >= 0 | live]
(push) ; 9
; [then-branch: 2 | !(j@4@01 >= 0)]
(assert (not (>= j@4@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 2 | j@4@01 >= 0]
(assert (>= j@4@01 0))
; [eval] j < |xs|
; [eval] |xs|
(push) ; 10
; [then-branch: 3 | !(j@4@01 < |xs@1@01|) | live]
; [else-branch: 3 | j@4@01 < |xs@1@01| | live]
(push) ; 11
; [then-branch: 3 | !(j@4@01 < |xs@1@01|)]
(assert (not (< j@4@01 (Seq_length xs@1@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 3 | j@4@01 < |xs@1@01|]
(assert (< j@4@01 (Seq_length xs@1@01)))
; [eval] i != j
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (< j@4@01 (Seq_length xs@1@01)) (not (< j@4@01 (Seq_length xs@1@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@4@01 0)
  (and
    (>= j@4@01 0)
    (or (< j@4@01 (Seq_length xs@1@01)) (not (< j@4@01 (Seq_length xs@1@01)))))))
(assert (or (>= j@4@01 0) (not (>= j@4@01 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@3@01 (Seq_length xs@1@01))
  (and
    (< i@3@01 (Seq_length xs@1@01))
    (=>
      (>= j@4@01 0)
      (and
        (>= j@4@01 0)
        (or
          (< j@4@01 (Seq_length xs@1@01))
          (not (< j@4@01 (Seq_length xs@1@01))))))
    (or (>= j@4@01 0) (not (>= j@4@01 0))))))
(assert (or (< i@3@01 (Seq_length xs@1@01)) (not (< i@3@01 (Seq_length xs@1@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= i@3@01 0)
  (and
    (>= i@3@01 0)
    (=>
      (< i@3@01 (Seq_length xs@1@01))
      (and
        (< i@3@01 (Seq_length xs@1@01))
        (=>
          (>= j@4@01 0)
          (and
            (>= j@4@01 0)
            (or
              (< j@4@01 (Seq_length xs@1@01))
              (not (< j@4@01 (Seq_length xs@1@01))))))
        (or (>= j@4@01 0) (not (>= j@4@01 0)))))
    (or (< i@3@01 (Seq_length xs@1@01)) (not (< i@3@01 (Seq_length xs@1@01)))))))
(assert (or (>= i@3@01 0) (not (>= i@3@01 0))))
(push) ; 4
; [then-branch: 4 | i@3@01 >= 0 && i@3@01 < |xs@1@01| && j@4@01 >= 0 && j@4@01 < |xs@1@01| && i@3@01 != j@4@01 | live]
; [else-branch: 4 | !(i@3@01 >= 0 && i@3@01 < |xs@1@01| && j@4@01 >= 0 && j@4@01 < |xs@1@01| && i@3@01 != j@4@01) | live]
(push) ; 5
; [then-branch: 4 | i@3@01 >= 0 && i@3@01 < |xs@1@01| && j@4@01 >= 0 && j@4@01 < |xs@1@01| && i@3@01 != j@4@01]
(assert (and
  (>= i@3@01 0)
  (and
    (< i@3@01 (Seq_length xs@1@01))
    (and
      (>= j@4@01 0)
      (and (< j@4@01 (Seq_length xs@1@01)) (not (= i@3@01 j@4@01)))))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
; [eval] xs[j]
(pop) ; 5
(push) ; 5
; [else-branch: 4 | !(i@3@01 >= 0 && i@3@01 < |xs@1@01| && j@4@01 >= 0 && j@4@01 < |xs@1@01| && i@3@01 != j@4@01)]
(assert (not
  (and
    (>= i@3@01 0)
    (and
      (< i@3@01 (Seq_length xs@1@01))
      (and
        (>= j@4@01 0)
        (and (< j@4@01 (Seq_length xs@1@01)) (not (= i@3@01 j@4@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (>= i@3@01 0)
    (and
      (< i@3@01 (Seq_length xs@1@01))
      (and
        (>= j@4@01 0)
        (and (< j@4@01 (Seq_length xs@1@01)) (not (= i@3@01 j@4@01))))))
  (and
    (>= i@3@01 0)
    (< i@3@01 (Seq_length xs@1@01))
    (>= j@4@01 0)
    (< j@4@01 (Seq_length xs@1@01))
    (not (= i@3@01 j@4@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= i@3@01 0)
      (and
        (< i@3@01 (Seq_length xs@1@01))
        (and
          (>= j@4@01 0)
          (and (< j@4@01 (Seq_length xs@1@01)) (not (= i@3@01 j@4@01)))))))
  (and
    (>= i@3@01 0)
    (and
      (< i@3@01 (Seq_length xs@1@01))
      (and
        (>= j@4@01 0)
        (and (< j@4@01 (Seq_length xs@1@01)) (not (= i@3@01 j@4@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@3@01 Int) (j@4@01 Int)) (!
  (and
    (=>
      (>= i@3@01 0)
      (and
        (>= i@3@01 0)
        (=>
          (< i@3@01 (Seq_length xs@1@01))
          (and
            (< i@3@01 (Seq_length xs@1@01))
            (=>
              (>= j@4@01 0)
              (and
                (>= j@4@01 0)
                (or
                  (< j@4@01 (Seq_length xs@1@01))
                  (not (< j@4@01 (Seq_length xs@1@01))))))
            (or (>= j@4@01 0) (not (>= j@4@01 0)))))
        (or
          (< i@3@01 (Seq_length xs@1@01))
          (not (< i@3@01 (Seq_length xs@1@01))))))
    (or (>= i@3@01 0) (not (>= i@3@01 0)))
    (=>
      (and
        (>= i@3@01 0)
        (and
          (< i@3@01 (Seq_length xs@1@01))
          (and
            (>= j@4@01 0)
            (and (< j@4@01 (Seq_length xs@1@01)) (not (= i@3@01 j@4@01))))))
      (and
        (>= i@3@01 0)
        (< i@3@01 (Seq_length xs@1@01))
        (>= j@4@01 0)
        (< j@4@01 (Seq_length xs@1@01))
        (not (= i@3@01 j@4@01))))
    (or
      (not
        (and
          (>= i@3@01 0)
          (and
            (< i@3@01 (Seq_length xs@1@01))
            (and
              (>= j@4@01 0)
              (and (< j@4@01 (Seq_length xs@1@01)) (not (= i@3@01 j@4@01)))))))
      (and
        (>= i@3@01 0)
        (and
          (< i@3@01 (Seq_length xs@1@01))
          (and
            (>= j@4@01 0)
            (and (< j@4@01 (Seq_length xs@1@01)) (not (= i@3@01 j@4@01))))))))
  :pattern ((Seq_index xs@1@01 i@3@01) (Seq_index xs@1@01 j@4@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@13@10@13@104-aux|)))
(assert (forall ((i@3@01 Int) (j@4@01 Int)) (!
  (=>
    (and
      (>= i@3@01 0)
      (and
        (< i@3@01 (Seq_length xs@1@01))
        (and
          (>= j@4@01 0)
          (and (< j@4@01 (Seq_length xs@1@01)) (not (= i@3@01 j@4@01))))))
    (not (= (Seq_index xs@1@01 i@3@01) (Seq_index xs@1@01 j@4@01))))
  :pattern ((Seq_index xs@1@01 i@3@01) (Seq_index xs@1@01 j@4@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@13@10@13@104|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i: Int ::0 <= i && i < |xs| ==> acc(xs[i].f, write))
(declare-const i@5@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= i && i < |xs|
; [eval] 0 <= i
(push) ; 4
; [then-branch: 5 | !(0 <= i@5@01) | live]
; [else-branch: 5 | 0 <= i@5@01 | live]
(push) ; 5
; [then-branch: 5 | !(0 <= i@5@01)]
(assert (not (<= 0 i@5@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 5 | 0 <= i@5@01]
(assert (<= 0 i@5@01))
; [eval] i < |xs|
; [eval] |xs|
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@5@01) (not (<= 0 i@5@01))))
(assert (and (<= 0 i@5@01) (< i@5@01 (Seq_length xs@1@01))))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@5@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-const $t@6@01 $FVF<f>)
(declare-fun inv@7@01 ($Ref) Int)
(declare-fun img@8@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@5@01 Int)) (!
  (=>
    (and (<= 0 i@5@01) (< i@5@01 (Seq_length xs@1@01)))
    (or (<= 0 i@5@01) (not (<= 0 i@5@01))))
  :pattern ((Seq_index xs@1@01 i@5@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@5@01 Int) (i2@5@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@5@01) (< i1@5@01 (Seq_length xs@1@01)))
      (and (<= 0 i2@5@01) (< i2@5@01 (Seq_length xs@1@01)))
      (= (Seq_index xs@1@01 i1@5@01) (Seq_index xs@1@01 i2@5@01)))
    (= i1@5@01 i2@5@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@5@01 Int)) (!
  (=>
    (and (<= 0 i@5@01) (< i@5@01 (Seq_length xs@1@01)))
    (and
      (= (inv@7@01 (Seq_index xs@1@01 i@5@01)) i@5@01)
      (img@8@01 (Seq_index xs@1@01 i@5@01))))
  :pattern ((Seq_index xs@1@01 i@5@01))
  :qid |quant-u-11582|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@8@01 r)
      (and (<= 0 (inv@7@01 r)) (< (inv@7@01 r) (Seq_length xs@1@01))))
    (= (Seq_index xs@1@01 (inv@7@01 r)) r))
  :pattern ((inv@7@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@5@01 Int)) (!
  (=>
    (and (<= 0 i@5@01) (< i@5@01 (Seq_length xs@1@01)))
    (not (= (Seq_index xs@1@01 i@5@01) $Ref.null)))
  :pattern ((Seq_index xs@1@01 i@5@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale |xs| > 3
(declare-const $t@9@01 $Snap)
(assert (= $t@9@01 $Snap.unit))
; [eval] |xs| > 3
; [eval] |xs|
(assert (> (Seq_length xs@1@01) 3))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale fun01(xs) == 5
(declare-const $t@10@01 $Snap)
(assert (= $t@10@01 $Snap.unit))
; [eval] fun01(xs) == 5
; [eval] fun01(xs)
(set-option :timeout 0)
(push) ; 3
; [eval] (forall i: Int, j: Int ::i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j])
(declare-const i@11@01 Int)
(declare-const j@12@01 Int)
(push) ; 4
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j]
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j)))
; [eval] i >= 0
(push) ; 5
; [then-branch: 6 | !(i@11@01 >= 0) | live]
; [else-branch: 6 | i@11@01 >= 0 | live]
(push) ; 6
; [then-branch: 6 | !(i@11@01 >= 0)]
(assert (not (>= i@11@01 0)))
(pop) ; 6
(push) ; 6
; [else-branch: 6 | i@11@01 >= 0]
(assert (>= i@11@01 0))
; [eval] i < |xs|
; [eval] |xs|
(push) ; 7
; [then-branch: 7 | !(i@11@01 < |xs@1@01|) | live]
; [else-branch: 7 | i@11@01 < |xs@1@01| | live]
(push) ; 8
; [then-branch: 7 | !(i@11@01 < |xs@1@01|)]
(assert (not (< i@11@01 (Seq_length xs@1@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 7 | i@11@01 < |xs@1@01|]
(assert (< i@11@01 (Seq_length xs@1@01)))
; [eval] j >= 0
(push) ; 9
; [then-branch: 8 | !(j@12@01 >= 0) | live]
; [else-branch: 8 | j@12@01 >= 0 | live]
(push) ; 10
; [then-branch: 8 | !(j@12@01 >= 0)]
(assert (not (>= j@12@01 0)))
(pop) ; 10
(push) ; 10
; [else-branch: 8 | j@12@01 >= 0]
(assert (>= j@12@01 0))
; [eval] j < |xs|
; [eval] |xs|
(push) ; 11
; [then-branch: 9 | !(j@12@01 < |xs@1@01|) | live]
; [else-branch: 9 | j@12@01 < |xs@1@01| | live]
(push) ; 12
; [then-branch: 9 | !(j@12@01 < |xs@1@01|)]
(assert (not (< j@12@01 (Seq_length xs@1@01))))
(pop) ; 12
(push) ; 12
; [else-branch: 9 | j@12@01 < |xs@1@01|]
(assert (< j@12@01 (Seq_length xs@1@01)))
; [eval] i != j
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (< j@12@01 (Seq_length xs@1@01)) (not (< j@12@01 (Seq_length xs@1@01)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@12@01 0)
  (and
    (>= j@12@01 0)
    (or (< j@12@01 (Seq_length xs@1@01)) (not (< j@12@01 (Seq_length xs@1@01)))))))
(assert (or (>= j@12@01 0) (not (>= j@12@01 0))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@11@01 (Seq_length xs@1@01))
  (and
    (< i@11@01 (Seq_length xs@1@01))
    (=>
      (>= j@12@01 0)
      (and
        (>= j@12@01 0)
        (or
          (< j@12@01 (Seq_length xs@1@01))
          (not (< j@12@01 (Seq_length xs@1@01))))))
    (or (>= j@12@01 0) (not (>= j@12@01 0))))))
(assert (or (< i@11@01 (Seq_length xs@1@01)) (not (< i@11@01 (Seq_length xs@1@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= i@11@01 0)
  (and
    (>= i@11@01 0)
    (=>
      (< i@11@01 (Seq_length xs@1@01))
      (and
        (< i@11@01 (Seq_length xs@1@01))
        (=>
          (>= j@12@01 0)
          (and
            (>= j@12@01 0)
            (or
              (< j@12@01 (Seq_length xs@1@01))
              (not (< j@12@01 (Seq_length xs@1@01))))))
        (or (>= j@12@01 0) (not (>= j@12@01 0)))))
    (or (< i@11@01 (Seq_length xs@1@01)) (not (< i@11@01 (Seq_length xs@1@01)))))))
(assert (or (>= i@11@01 0) (not (>= i@11@01 0))))
(push) ; 5
; [then-branch: 10 | i@11@01 >= 0 && i@11@01 < |xs@1@01| && j@12@01 >= 0 && j@12@01 < |xs@1@01| && i@11@01 != j@12@01 | live]
; [else-branch: 10 | !(i@11@01 >= 0 && i@11@01 < |xs@1@01| && j@12@01 >= 0 && j@12@01 < |xs@1@01| && i@11@01 != j@12@01) | live]
(push) ; 6
; [then-branch: 10 | i@11@01 >= 0 && i@11@01 < |xs@1@01| && j@12@01 >= 0 && j@12@01 < |xs@1@01| && i@11@01 != j@12@01]
(assert (and
  (>= i@11@01 0)
  (and
    (< i@11@01 (Seq_length xs@1@01))
    (and
      (>= j@12@01 0)
      (and (< j@12@01 (Seq_length xs@1@01)) (not (= i@11@01 j@12@01)))))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
; [eval] xs[j]
(pop) ; 6
(push) ; 6
; [else-branch: 10 | !(i@11@01 >= 0 && i@11@01 < |xs@1@01| && j@12@01 >= 0 && j@12@01 < |xs@1@01| && i@11@01 != j@12@01)]
(assert (not
  (and
    (>= i@11@01 0)
    (and
      (< i@11@01 (Seq_length xs@1@01))
      (and
        (>= j@12@01 0)
        (and (< j@12@01 (Seq_length xs@1@01)) (not (= i@11@01 j@12@01))))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (>= i@11@01 0)
    (and
      (< i@11@01 (Seq_length xs@1@01))
      (and
        (>= j@12@01 0)
        (and (< j@12@01 (Seq_length xs@1@01)) (not (= i@11@01 j@12@01))))))
  (and
    (>= i@11@01 0)
    (< i@11@01 (Seq_length xs@1@01))
    (>= j@12@01 0)
    (< j@12@01 (Seq_length xs@1@01))
    (not (= i@11@01 j@12@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= i@11@01 0)
      (and
        (< i@11@01 (Seq_length xs@1@01))
        (and
          (>= j@12@01 0)
          (and (< j@12@01 (Seq_length xs@1@01)) (not (= i@11@01 j@12@01)))))))
  (and
    (>= i@11@01 0)
    (and
      (< i@11@01 (Seq_length xs@1@01))
      (and
        (>= j@12@01 0)
        (and (< j@12@01 (Seq_length xs@1@01)) (not (= i@11@01 j@12@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((i@11@01 Int) (j@12@01 Int)) (!
  (=>
    (and
      (>= i@11@01 0)
      (and
        (< i@11@01 (Seq_length xs@1@01))
        (and
          (>= j@12@01 0)
          (and (< j@12@01 (Seq_length xs@1@01)) (not (= i@11@01 j@12@01))))))
    (not (= (Seq_index xs@1@01 i@11@01) (Seq_index xs@1@01 j@12@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@7@12@7@106|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@11@01 Int) (j@12@01 Int)) (!
  (=>
    (and
      (>= i@11@01 0)
      (and
        (< i@11@01 (Seq_length xs@1@01))
        (and
          (>= j@12@01 0)
          (and (< j@12@01 (Seq_length xs@1@01)) (not (= i@11@01 j@12@01))))))
    (not (= (Seq_index xs@1@01 i@11@01) (Seq_index xs@1@01 j@12@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@7@12@7@106|)))
(declare-const i@13@01 Int)
(push) ; 4
; [eval] 0 <= i && i < |xs|
; [eval] 0 <= i
(push) ; 5
; [then-branch: 11 | !(0 <= i@13@01) | live]
; [else-branch: 11 | 0 <= i@13@01 | live]
(push) ; 6
; [then-branch: 11 | !(0 <= i@13@01)]
(assert (not (<= 0 i@13@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 11 | 0 <= i@13@01]
(assert (<= 0 i@13@01))
; [eval] i < |xs|
; [eval] |xs|
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@13@01) (not (<= 0 i@13@01))))
(assert (and (<= 0 i@13@01) (< i@13@01 (Seq_length xs@1@01))))
; [eval] xs[i]
(push) ; 5
(assert (not (>= i@13@01 0)))
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
(assert (forall ((i@13@01 Int)) (!
  (=>
    (and (<= 0 i@13@01) (< i@13@01 (Seq_length xs@1@01)))
    (or (<= 0 i@13@01) (not (<= 0 i@13@01))))
  :pattern ((Seq_index xs@1@01 i@13@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@13@01 Int) (i2@13@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@13@01) (< i1@13@01 (Seq_length xs@1@01)))
      (and (<= 0 i2@13@01) (< i2@13@01 (Seq_length xs@1@01)))
      (= (Seq_index xs@1@01 i1@13@01) (Seq_index xs@1@01 i2@13@01)))
    (= i1@13@01 i2@13@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@13@01 Int)) (!
  (=>
    (and (<= 0 i@13@01) (< i@13@01 (Seq_length xs@1@01)))
    (and
      (= (inv@14@01 (Seq_index xs@1@01 i@13@01)) i@13@01)
      (img@15@01 (Seq_index xs@1@01 i@13@01))))
  :pattern ((Seq_index xs@1@01 i@13@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@15@01 r)
      (and (<= 0 (inv@14@01 r)) (< (inv@14@01 r) (Seq_length xs@1@01))))
    (= (Seq_index xs@1@01 (inv@14@01 r)) r))
  :pattern ((inv@14@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@14@01 r)) (< (inv@14@01 r) (Seq_length xs@1@01)))
      (img@15@01 r)
      (= r (Seq_index xs@1@01 (inv@14@01 r))))
    (>
      (ite
        (and
          (img@8@01 r)
          (and (<= 0 (inv@7@01 r)) (< (inv@7@01 r) (Seq_length xs@1@01))))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-11584|))))
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
      (and
        (and (<= 0 (inv@14@01 r)) (< (inv@14@01 r) (Seq_length xs@1@01)))
        (img@15@01 r)))
    (=>
      (and
        (and (<= 0 (inv@14@01 r)) (< (inv@14@01 r) (Seq_length xs@1@01)))
        (img@15@01 r))
      (Set_in r ($FVF.domain_f (as sm@16@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@16@01  $FVF<f>))))
  :qid |qp.fvfDomDef1|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@14@01 r)) (< (inv@14@01 r) (Seq_length xs@1@01)))
        (img@15@01 r))
      (and
        (img@8@01 r)
        (and (<= 0 (inv@7@01 r)) (< (inv@7@01 r) (Seq_length xs@1@01)))))
    (= ($FVF.lookup_f (as sm@16@01  $FVF<f>) r) ($FVF.lookup_f $t@6@01 r)))
  :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@6@01 r))
  :qid |qp.fvfValDef0|)))
; [eval] |xs| > 3
; [eval] |xs|
(assert (fun01%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@16@01  $FVF<f>))
    $Snap.unit)) xs@1@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((i@13@01 Int)) (!
  (=>
    (and (<= 0 i@13@01) (< i@13@01 (Seq_length xs@1@01)))
    (and
      (= (inv@14@01 (Seq_index xs@1@01 i@13@01)) i@13@01)
      (img@15@01 (Seq_index xs@1@01 i@13@01))))
  :pattern ((Seq_index xs@1@01 i@13@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@15@01 r)
      (and (<= 0 (inv@14@01 r)) (< (inv@14@01 r) (Seq_length xs@1@01))))
    (= (Seq_index xs@1@01 (inv@14@01 r)) r))
  :pattern ((inv@14@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@16@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@14@01 r)) (< (inv@14@01 r) (Seq_length xs@1@01)))
        (img@15@01 r)))
    (=>
      (and
        (and (<= 0 (inv@14@01 r)) (< (inv@14@01 r) (Seq_length xs@1@01)))
        (img@15@01 r))
      (Set_in r ($FVF.domain_f (as sm@16@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@16@01  $FVF<f>))))
  :qid |qp.fvfDomDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@14@01 r)) (< (inv@14@01 r) (Seq_length xs@1@01)))
        (img@15@01 r))
      (and
        (img@8@01 r)
        (and (<= 0 (inv@7@01 r)) (< (inv@7@01 r) (Seq_length xs@1@01)))))
    (= ($FVF.lookup_f (as sm@16@01  $FVF<f>) r) ($FVF.lookup_f $t@6@01 r)))
  :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@6@01 r))
  :qid |qp.fvfValDef0|)))
(assert (and
  (forall ((i@11@01 Int) (j@12@01 Int)) (!
    (=>
      (and
        (>= i@11@01 0)
        (and
          (< i@11@01 (Seq_length xs@1@01))
          (and
            (>= j@12@01 0)
            (and (< j@12@01 (Seq_length xs@1@01)) (not (= i@11@01 j@12@01))))))
      (not (= (Seq_index xs@1@01 i@11@01) (Seq_index xs@1@01 j@12@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@7@12@7@106|))
  (forall ((i@13@01 Int)) (!
    (=>
      (and (<= 0 i@13@01) (< i@13@01 (Seq_length xs@1@01)))
      (or (<= 0 i@13@01) (not (<= 0 i@13@01))))
    :pattern ((Seq_index xs@1@01 i@13@01))
    :qid |f-aux|))
  (fun01%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<f>To$Snap (as sm@16@01  $FVF<f>))
      $Snap.unit)) xs@1@01)))
(assert (=
  (fun01 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<f>To$Snap (as sm@16@01  $FVF<f>))
      $Snap.unit)) xs@1@01)
  5))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert fun01(xs) == 5
; [eval] fun01(xs) == 5
; [eval] fun01(xs)
(set-option :timeout 0)
(push) ; 3
; [eval] (forall i: Int, j: Int ::i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j])
(declare-const i@17@01 Int)
(declare-const j@18@01 Int)
(push) ; 4
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j]
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j)))
; [eval] i >= 0
(push) ; 5
; [then-branch: 12 | !(i@17@01 >= 0) | live]
; [else-branch: 12 | i@17@01 >= 0 | live]
(push) ; 6
; [then-branch: 12 | !(i@17@01 >= 0)]
(assert (not (>= i@17@01 0)))
(pop) ; 6
(push) ; 6
; [else-branch: 12 | i@17@01 >= 0]
(assert (>= i@17@01 0))
; [eval] i < |xs|
; [eval] |xs|
(push) ; 7
; [then-branch: 13 | !(i@17@01 < |xs@1@01|) | live]
; [else-branch: 13 | i@17@01 < |xs@1@01| | live]
(push) ; 8
; [then-branch: 13 | !(i@17@01 < |xs@1@01|)]
(assert (not (< i@17@01 (Seq_length xs@1@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 13 | i@17@01 < |xs@1@01|]
(assert (< i@17@01 (Seq_length xs@1@01)))
; [eval] j >= 0
(push) ; 9
; [then-branch: 14 | !(j@18@01 >= 0) | live]
; [else-branch: 14 | j@18@01 >= 0 | live]
(push) ; 10
; [then-branch: 14 | !(j@18@01 >= 0)]
(assert (not (>= j@18@01 0)))
(pop) ; 10
(push) ; 10
; [else-branch: 14 | j@18@01 >= 0]
(assert (>= j@18@01 0))
; [eval] j < |xs|
; [eval] |xs|
(push) ; 11
; [then-branch: 15 | !(j@18@01 < |xs@1@01|) | live]
; [else-branch: 15 | j@18@01 < |xs@1@01| | live]
(push) ; 12
; [then-branch: 15 | !(j@18@01 < |xs@1@01|)]
(assert (not (< j@18@01 (Seq_length xs@1@01))))
(pop) ; 12
(push) ; 12
; [else-branch: 15 | j@18@01 < |xs@1@01|]
(assert (< j@18@01 (Seq_length xs@1@01)))
; [eval] i != j
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (< j@18@01 (Seq_length xs@1@01)) (not (< j@18@01 (Seq_length xs@1@01)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@18@01 0)
  (and
    (>= j@18@01 0)
    (or (< j@18@01 (Seq_length xs@1@01)) (not (< j@18@01 (Seq_length xs@1@01)))))))
(assert (or (>= j@18@01 0) (not (>= j@18@01 0))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@17@01 (Seq_length xs@1@01))
  (and
    (< i@17@01 (Seq_length xs@1@01))
    (=>
      (>= j@18@01 0)
      (and
        (>= j@18@01 0)
        (or
          (< j@18@01 (Seq_length xs@1@01))
          (not (< j@18@01 (Seq_length xs@1@01))))))
    (or (>= j@18@01 0) (not (>= j@18@01 0))))))
(assert (or (< i@17@01 (Seq_length xs@1@01)) (not (< i@17@01 (Seq_length xs@1@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= i@17@01 0)
  (and
    (>= i@17@01 0)
    (=>
      (< i@17@01 (Seq_length xs@1@01))
      (and
        (< i@17@01 (Seq_length xs@1@01))
        (=>
          (>= j@18@01 0)
          (and
            (>= j@18@01 0)
            (or
              (< j@18@01 (Seq_length xs@1@01))
              (not (< j@18@01 (Seq_length xs@1@01))))))
        (or (>= j@18@01 0) (not (>= j@18@01 0)))))
    (or (< i@17@01 (Seq_length xs@1@01)) (not (< i@17@01 (Seq_length xs@1@01)))))))
(assert (or (>= i@17@01 0) (not (>= i@17@01 0))))
(push) ; 5
; [then-branch: 16 | i@17@01 >= 0 && i@17@01 < |xs@1@01| && j@18@01 >= 0 && j@18@01 < |xs@1@01| && i@17@01 != j@18@01 | live]
; [else-branch: 16 | !(i@17@01 >= 0 && i@17@01 < |xs@1@01| && j@18@01 >= 0 && j@18@01 < |xs@1@01| && i@17@01 != j@18@01) | live]
(push) ; 6
; [then-branch: 16 | i@17@01 >= 0 && i@17@01 < |xs@1@01| && j@18@01 >= 0 && j@18@01 < |xs@1@01| && i@17@01 != j@18@01]
(assert (and
  (>= i@17@01 0)
  (and
    (< i@17@01 (Seq_length xs@1@01))
    (and
      (>= j@18@01 0)
      (and (< j@18@01 (Seq_length xs@1@01)) (not (= i@17@01 j@18@01)))))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
; [eval] xs[j]
(pop) ; 6
(push) ; 6
; [else-branch: 16 | !(i@17@01 >= 0 && i@17@01 < |xs@1@01| && j@18@01 >= 0 && j@18@01 < |xs@1@01| && i@17@01 != j@18@01)]
(assert (not
  (and
    (>= i@17@01 0)
    (and
      (< i@17@01 (Seq_length xs@1@01))
      (and
        (>= j@18@01 0)
        (and (< j@18@01 (Seq_length xs@1@01)) (not (= i@17@01 j@18@01))))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (>= i@17@01 0)
    (and
      (< i@17@01 (Seq_length xs@1@01))
      (and
        (>= j@18@01 0)
        (and (< j@18@01 (Seq_length xs@1@01)) (not (= i@17@01 j@18@01))))))
  (and
    (>= i@17@01 0)
    (< i@17@01 (Seq_length xs@1@01))
    (>= j@18@01 0)
    (< j@18@01 (Seq_length xs@1@01))
    (not (= i@17@01 j@18@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= i@17@01 0)
      (and
        (< i@17@01 (Seq_length xs@1@01))
        (and
          (>= j@18@01 0)
          (and (< j@18@01 (Seq_length xs@1@01)) (not (= i@17@01 j@18@01)))))))
  (and
    (>= i@17@01 0)
    (and
      (< i@17@01 (Seq_length xs@1@01))
      (and
        (>= j@18@01 0)
        (and (< j@18@01 (Seq_length xs@1@01)) (not (= i@17@01 j@18@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((i@17@01 Int) (j@18@01 Int)) (!
  (=>
    (and
      (>= i@17@01 0)
      (and
        (< i@17@01 (Seq_length xs@1@01))
        (and
          (>= j@18@01 0)
          (and (< j@18@01 (Seq_length xs@1@01)) (not (= i@17@01 j@18@01))))))
    (not (= (Seq_index xs@1@01 i@17@01) (Seq_index xs@1@01 j@18@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@7@12@7@106|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@17@01 Int) (j@18@01 Int)) (!
  (=>
    (and
      (>= i@17@01 0)
      (and
        (< i@17@01 (Seq_length xs@1@01))
        (and
          (>= j@18@01 0)
          (and (< j@18@01 (Seq_length xs@1@01)) (not (= i@17@01 j@18@01))))))
    (not (= (Seq_index xs@1@01 i@17@01) (Seq_index xs@1@01 j@18@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@7@12@7@106|)))
(declare-const i@19@01 Int)
(push) ; 4
; [eval] 0 <= i && i < |xs|
; [eval] 0 <= i
(push) ; 5
; [then-branch: 17 | !(0 <= i@19@01) | live]
; [else-branch: 17 | 0 <= i@19@01 | live]
(push) ; 6
; [then-branch: 17 | !(0 <= i@19@01)]
(assert (not (<= 0 i@19@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 17 | 0 <= i@19@01]
(assert (<= 0 i@19@01))
; [eval] i < |xs|
; [eval] |xs|
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@19@01) (not (<= 0 i@19@01))))
(assert (and (<= 0 i@19@01) (< i@19@01 (Seq_length xs@1@01))))
; [eval] xs[i]
(push) ; 5
(assert (not (>= i@19@01 0)))
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
(assert (forall ((i@19@01 Int)) (!
  (=>
    (and (<= 0 i@19@01) (< i@19@01 (Seq_length xs@1@01)))
    (or (<= 0 i@19@01) (not (<= 0 i@19@01))))
  :pattern ((Seq_index xs@1@01 i@19@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@19@01 Int) (i2@19@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@19@01) (< i1@19@01 (Seq_length xs@1@01)))
      (and (<= 0 i2@19@01) (< i2@19@01 (Seq_length xs@1@01)))
      (= (Seq_index xs@1@01 i1@19@01) (Seq_index xs@1@01 i2@19@01)))
    (= i1@19@01 i2@19@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@19@01 Int)) (!
  (=>
    (and (<= 0 i@19@01) (< i@19@01 (Seq_length xs@1@01)))
    (and
      (= (inv@20@01 (Seq_index xs@1@01 i@19@01)) i@19@01)
      (img@21@01 (Seq_index xs@1@01 i@19@01))))
  :pattern ((Seq_index xs@1@01 i@19@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@21@01 r)
      (and (<= 0 (inv@20@01 r)) (< (inv@20@01 r) (Seq_length xs@1@01))))
    (= (Seq_index xs@1@01 (inv@20@01 r)) r))
  :pattern ((inv@20@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@20@01 r)) (< (inv@20@01 r) (Seq_length xs@1@01)))
      (img@21@01 r)
      (= r (Seq_index xs@1@01 (inv@20@01 r))))
    (>
      (ite
        (and
          (img@8@01 r)
          (and (<= 0 (inv@7@01 r)) (< (inv@7@01 r) (Seq_length xs@1@01))))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-11586|))))
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
      (and
        (and (<= 0 (inv@20@01 r)) (< (inv@20@01 r) (Seq_length xs@1@01)))
        (img@21@01 r)))
    (=>
      (and
        (and (<= 0 (inv@20@01 r)) (< (inv@20@01 r) (Seq_length xs@1@01)))
        (img@21@01 r))
      (Set_in r ($FVF.domain_f (as sm@22@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@22@01  $FVF<f>))))
  :qid |qp.fvfDomDef3|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@20@01 r)) (< (inv@20@01 r) (Seq_length xs@1@01)))
        (img@21@01 r))
      (and
        (img@8@01 r)
        (and (<= 0 (inv@7@01 r)) (< (inv@7@01 r) (Seq_length xs@1@01)))))
    (= ($FVF.lookup_f (as sm@22@01  $FVF<f>) r) ($FVF.lookup_f $t@6@01 r)))
  :pattern (($FVF.lookup_f (as sm@22@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@6@01 r))
  :qid |qp.fvfValDef2|)))
; [eval] |xs| > 3
; [eval] |xs|
(assert (fun01%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@22@01  $FVF<f>))
    $Snap.unit)) xs@1@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((i@19@01 Int)) (!
  (=>
    (and (<= 0 i@19@01) (< i@19@01 (Seq_length xs@1@01)))
    (and
      (= (inv@20@01 (Seq_index xs@1@01 i@19@01)) i@19@01)
      (img@21@01 (Seq_index xs@1@01 i@19@01))))
  :pattern ((Seq_index xs@1@01 i@19@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@21@01 r)
      (and (<= 0 (inv@20@01 r)) (< (inv@20@01 r) (Seq_length xs@1@01))))
    (= (Seq_index xs@1@01 (inv@20@01 r)) r))
  :pattern ((inv@20@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@22@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@20@01 r)) (< (inv@20@01 r) (Seq_length xs@1@01)))
        (img@21@01 r)))
    (=>
      (and
        (and (<= 0 (inv@20@01 r)) (< (inv@20@01 r) (Seq_length xs@1@01)))
        (img@21@01 r))
      (Set_in r ($FVF.domain_f (as sm@22@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@22@01  $FVF<f>))))
  :qid |qp.fvfDomDef3|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@20@01 r)) (< (inv@20@01 r) (Seq_length xs@1@01)))
        (img@21@01 r))
      (and
        (img@8@01 r)
        (and (<= 0 (inv@7@01 r)) (< (inv@7@01 r) (Seq_length xs@1@01)))))
    (= ($FVF.lookup_f (as sm@22@01  $FVF<f>) r) ($FVF.lookup_f $t@6@01 r)))
  :pattern (($FVF.lookup_f (as sm@22@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@6@01 r))
  :qid |qp.fvfValDef2|)))
(assert (and
  (forall ((i@17@01 Int) (j@18@01 Int)) (!
    (=>
      (and
        (>= i@17@01 0)
        (and
          (< i@17@01 (Seq_length xs@1@01))
          (and
            (>= j@18@01 0)
            (and (< j@18@01 (Seq_length xs@1@01)) (not (= i@17@01 j@18@01))))))
      (not (= (Seq_index xs@1@01 i@17@01) (Seq_index xs@1@01 j@18@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@7@12@7@106|))
  (forall ((i@19@01 Int)) (!
    (=>
      (and (<= 0 i@19@01) (< i@19@01 (Seq_length xs@1@01)))
      (or (<= 0 i@19@01) (not (<= 0 i@19@01))))
    :pattern ((Seq_index xs@1@01 i@19@01))
    :qid |f-aux|))
  (fun01%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<f>To$Snap (as sm@22@01  $FVF<f>))
      $Snap.unit)) xs@1@01)))
(push) ; 3
(assert (not (=
  (fun01 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<f>To$Snap (as sm@22@01  $FVF<f>))
      $Snap.unit)) xs@1@01)
  5)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (fun01 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<f>To$Snap (as sm@22@01  $FVF<f>))
      $Snap.unit)) xs@1@01)
  5))
(pop) ; 2
(pop) ; 1
; ---------- test02 ----------
(declare-const xs@23@01 Seq<$Ref>)
(declare-const xs@24@01 Seq<$Ref>)
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
(declare-const $t@25@01 $Snap)
(assert (= $t@25@01 $Snap.unit))
; [eval] (forall i: Int, j: Int :: { xs[i], xs[j] } i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j])
(declare-const i@26@01 Int)
(declare-const j@27@01 Int)
(push) ; 3
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j]
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j)))
; [eval] i >= 0
(push) ; 4
; [then-branch: 18 | !(i@26@01 >= 0) | live]
; [else-branch: 18 | i@26@01 >= 0 | live]
(push) ; 5
; [then-branch: 18 | !(i@26@01 >= 0)]
(assert (not (>= i@26@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 18 | i@26@01 >= 0]
(assert (>= i@26@01 0))
; [eval] i < |xs|
; [eval] |xs|
(push) ; 6
; [then-branch: 19 | !(i@26@01 < |xs@24@01|) | live]
; [else-branch: 19 | i@26@01 < |xs@24@01| | live]
(push) ; 7
; [then-branch: 19 | !(i@26@01 < |xs@24@01|)]
(assert (not (< i@26@01 (Seq_length xs@24@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 19 | i@26@01 < |xs@24@01|]
(assert (< i@26@01 (Seq_length xs@24@01)))
; [eval] j >= 0
(push) ; 8
; [then-branch: 20 | !(j@27@01 >= 0) | live]
; [else-branch: 20 | j@27@01 >= 0 | live]
(push) ; 9
; [then-branch: 20 | !(j@27@01 >= 0)]
(assert (not (>= j@27@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 20 | j@27@01 >= 0]
(assert (>= j@27@01 0))
; [eval] j < |xs|
; [eval] |xs|
(push) ; 10
; [then-branch: 21 | !(j@27@01 < |xs@24@01|) | live]
; [else-branch: 21 | j@27@01 < |xs@24@01| | live]
(push) ; 11
; [then-branch: 21 | !(j@27@01 < |xs@24@01|)]
(assert (not (< j@27@01 (Seq_length xs@24@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 21 | j@27@01 < |xs@24@01|]
(assert (< j@27@01 (Seq_length xs@24@01)))
; [eval] i != j
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (< j@27@01 (Seq_length xs@24@01)) (not (< j@27@01 (Seq_length xs@24@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@27@01 0)
  (and
    (>= j@27@01 0)
    (or
      (< j@27@01 (Seq_length xs@24@01))
      (not (< j@27@01 (Seq_length xs@24@01)))))))
(assert (or (>= j@27@01 0) (not (>= j@27@01 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@26@01 (Seq_length xs@24@01))
  (and
    (< i@26@01 (Seq_length xs@24@01))
    (=>
      (>= j@27@01 0)
      (and
        (>= j@27@01 0)
        (or
          (< j@27@01 (Seq_length xs@24@01))
          (not (< j@27@01 (Seq_length xs@24@01))))))
    (or (>= j@27@01 0) (not (>= j@27@01 0))))))
(assert (or (< i@26@01 (Seq_length xs@24@01)) (not (< i@26@01 (Seq_length xs@24@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= i@26@01 0)
  (and
    (>= i@26@01 0)
    (=>
      (< i@26@01 (Seq_length xs@24@01))
      (and
        (< i@26@01 (Seq_length xs@24@01))
        (=>
          (>= j@27@01 0)
          (and
            (>= j@27@01 0)
            (or
              (< j@27@01 (Seq_length xs@24@01))
              (not (< j@27@01 (Seq_length xs@24@01))))))
        (or (>= j@27@01 0) (not (>= j@27@01 0)))))
    (or
      (< i@26@01 (Seq_length xs@24@01))
      (not (< i@26@01 (Seq_length xs@24@01)))))))
(assert (or (>= i@26@01 0) (not (>= i@26@01 0))))
(push) ; 4
; [then-branch: 22 | i@26@01 >= 0 && i@26@01 < |xs@24@01| && j@27@01 >= 0 && j@27@01 < |xs@24@01| && i@26@01 != j@27@01 | live]
; [else-branch: 22 | !(i@26@01 >= 0 && i@26@01 < |xs@24@01| && j@27@01 >= 0 && j@27@01 < |xs@24@01| && i@26@01 != j@27@01) | live]
(push) ; 5
; [then-branch: 22 | i@26@01 >= 0 && i@26@01 < |xs@24@01| && j@27@01 >= 0 && j@27@01 < |xs@24@01| && i@26@01 != j@27@01]
(assert (and
  (>= i@26@01 0)
  (and
    (< i@26@01 (Seq_length xs@24@01))
    (and
      (>= j@27@01 0)
      (and (< j@27@01 (Seq_length xs@24@01)) (not (= i@26@01 j@27@01)))))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
; [eval] xs[j]
(pop) ; 5
(push) ; 5
; [else-branch: 22 | !(i@26@01 >= 0 && i@26@01 < |xs@24@01| && j@27@01 >= 0 && j@27@01 < |xs@24@01| && i@26@01 != j@27@01)]
(assert (not
  (and
    (>= i@26@01 0)
    (and
      (< i@26@01 (Seq_length xs@24@01))
      (and
        (>= j@27@01 0)
        (and (< j@27@01 (Seq_length xs@24@01)) (not (= i@26@01 j@27@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (>= i@26@01 0)
    (and
      (< i@26@01 (Seq_length xs@24@01))
      (and
        (>= j@27@01 0)
        (and (< j@27@01 (Seq_length xs@24@01)) (not (= i@26@01 j@27@01))))))
  (and
    (>= i@26@01 0)
    (< i@26@01 (Seq_length xs@24@01))
    (>= j@27@01 0)
    (< j@27@01 (Seq_length xs@24@01))
    (not (= i@26@01 j@27@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= i@26@01 0)
      (and
        (< i@26@01 (Seq_length xs@24@01))
        (and
          (>= j@27@01 0)
          (and (< j@27@01 (Seq_length xs@24@01)) (not (= i@26@01 j@27@01)))))))
  (and
    (>= i@26@01 0)
    (and
      (< i@26@01 (Seq_length xs@24@01))
      (and
        (>= j@27@01 0)
        (and (< j@27@01 (Seq_length xs@24@01)) (not (= i@26@01 j@27@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@26@01 Int) (j@27@01 Int)) (!
  (and
    (=>
      (>= i@26@01 0)
      (and
        (>= i@26@01 0)
        (=>
          (< i@26@01 (Seq_length xs@24@01))
          (and
            (< i@26@01 (Seq_length xs@24@01))
            (=>
              (>= j@27@01 0)
              (and
                (>= j@27@01 0)
                (or
                  (< j@27@01 (Seq_length xs@24@01))
                  (not (< j@27@01 (Seq_length xs@24@01))))))
            (or (>= j@27@01 0) (not (>= j@27@01 0)))))
        (or
          (< i@26@01 (Seq_length xs@24@01))
          (not (< i@26@01 (Seq_length xs@24@01))))))
    (or (>= i@26@01 0) (not (>= i@26@01 0)))
    (=>
      (and
        (>= i@26@01 0)
        (and
          (< i@26@01 (Seq_length xs@24@01))
          (and
            (>= j@27@01 0)
            (and (< j@27@01 (Seq_length xs@24@01)) (not (= i@26@01 j@27@01))))))
      (and
        (>= i@26@01 0)
        (< i@26@01 (Seq_length xs@24@01))
        (>= j@27@01 0)
        (< j@27@01 (Seq_length xs@24@01))
        (not (= i@26@01 j@27@01))))
    (or
      (not
        (and
          (>= i@26@01 0)
          (and
            (< i@26@01 (Seq_length xs@24@01))
            (and
              (>= j@27@01 0)
              (and (< j@27@01 (Seq_length xs@24@01)) (not (= i@26@01 j@27@01)))))))
      (and
        (>= i@26@01 0)
        (and
          (< i@26@01 (Seq_length xs@24@01))
          (and
            (>= j@27@01 0)
            (and (< j@27@01 (Seq_length xs@24@01)) (not (= i@26@01 j@27@01))))))))
  :pattern ((Seq_index xs@24@01 i@26@01) (Seq_index xs@24@01 j@27@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@28@10@28@104-aux|)))
(assert (forall ((i@26@01 Int) (j@27@01 Int)) (!
  (=>
    (and
      (>= i@26@01 0)
      (and
        (< i@26@01 (Seq_length xs@24@01))
        (and
          (>= j@27@01 0)
          (and (< j@27@01 (Seq_length xs@24@01)) (not (= i@26@01 j@27@01))))))
    (not (= (Seq_index xs@24@01 i@26@01) (Seq_index xs@24@01 j@27@01))))
  :pattern ((Seq_index xs@24@01 i@26@01) (Seq_index xs@24@01 j@27@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@28@10@28@104|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i: Int ::0 <= i && i < |xs| ==> acc(xs[i].f, write))
(declare-const i@28@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= i && i < |xs|
; [eval] 0 <= i
(push) ; 4
; [then-branch: 23 | !(0 <= i@28@01) | live]
; [else-branch: 23 | 0 <= i@28@01 | live]
(push) ; 5
; [then-branch: 23 | !(0 <= i@28@01)]
(assert (not (<= 0 i@28@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 23 | 0 <= i@28@01]
(assert (<= 0 i@28@01))
; [eval] i < |xs|
; [eval] |xs|
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@28@01) (not (<= 0 i@28@01))))
(assert (and (<= 0 i@28@01) (< i@28@01 (Seq_length xs@24@01))))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@28@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-const $t@29@01 $FVF<f>)
(declare-fun inv@30@01 ($Ref) Int)
(declare-fun img@31@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@28@01 Int)) (!
  (=>
    (and (<= 0 i@28@01) (< i@28@01 (Seq_length xs@24@01)))
    (or (<= 0 i@28@01) (not (<= 0 i@28@01))))
  :pattern ((Seq_index xs@24@01 i@28@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@28@01 Int) (i2@28@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@28@01) (< i1@28@01 (Seq_length xs@24@01)))
      (and (<= 0 i2@28@01) (< i2@28@01 (Seq_length xs@24@01)))
      (= (Seq_index xs@24@01 i1@28@01) (Seq_index xs@24@01 i2@28@01)))
    (= i1@28@01 i2@28@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@28@01 Int)) (!
  (=>
    (and (<= 0 i@28@01) (< i@28@01 (Seq_length xs@24@01)))
    (and
      (= (inv@30@01 (Seq_index xs@24@01 i@28@01)) i@28@01)
      (img@31@01 (Seq_index xs@24@01 i@28@01))))
  :pattern ((Seq_index xs@24@01 i@28@01))
  :qid |quant-u-11588|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@31@01 r)
      (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
    (= (Seq_index xs@24@01 (inv@30@01 r)) r))
  :pattern ((inv@30@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@28@01 Int)) (!
  (=>
    (and (<= 0 i@28@01) (< i@28@01 (Seq_length xs@24@01)))
    (not (= (Seq_index xs@24@01 i@28@01) $Ref.null)))
  :pattern ((Seq_index xs@24@01 i@28@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale |xs| > 3
(declare-const $t@32@01 $Snap)
(assert (= $t@32@01 $Snap.unit))
; [eval] |xs| > 3
; [eval] |xs|
(assert (> (Seq_length xs@24@01) 3))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; xs[0].f := 3
; [eval] xs[0]
(set-option :timeout 0)
(push) ; 3
(assert (not (< 0 (Seq_length xs@24@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@33@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index xs@24@01 0))
    ($Perm.min
      (ite
        (and
          (img@31@01 r)
          (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
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
          (img@31@01 r)
          (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
        $Perm.Write
        $Perm.No)
      (pTaken@33@01 r))
    $Perm.No)
  
  :qid |quant-u-11590|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@33@01 r) $Perm.No)
  
  :qid |quant-u-11591|))))
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
  (=> (= r (Seq_index xs@24@01 0)) (= (- $Perm.Write (pTaken@33@01 r)) $Perm.No))
  
  :qid |quant-u-11592|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@34@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_f (as sm@34@01  $FVF<f>) (Seq_index xs@24@01 0)) 3))
; [exec]
; xs[1].f := 7
; [eval] xs[1]
(set-option :timeout 0)
(push) ; 3
(assert (not (< 1 (Seq_length xs@24@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@35@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index xs@24@01 1))
    ($Perm.min
      (ite
        (and
          (img@31@01 r)
          (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
        (- $Perm.Write (pTaken@33@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@36@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index xs@24@01 1))
    ($Perm.min
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@35@01 r)))
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
          (img@31@01 r)
          (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
        (- $Perm.Write (pTaken@33@01 r))
        $Perm.No)
      (pTaken@35@01 r))
    $Perm.No)
  
  :qid |quant-u-11594|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@35@01 r) $Perm.No)
  
  :qid |quant-u-11595|))))
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
  (=> (= r (Seq_index xs@24@01 1)) (= (- $Perm.Write (pTaken@35@01 r)) $Perm.No))
  
  :qid |quant-u-11596|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@37@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)) 7))
; [exec]
; assert fun02(xs) == 10
; [eval] fun02(xs) == 10
; [eval] fun02(xs)
(set-option :timeout 0)
(push) ; 3
; [eval] (forall i: Int, j: Int ::i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j])
(declare-const i@38@01 Int)
(declare-const j@39@01 Int)
(push) ; 4
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j]
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j)))
; [eval] i >= 0
(push) ; 5
; [then-branch: 24 | !(i@38@01 >= 0) | live]
; [else-branch: 24 | i@38@01 >= 0 | live]
(push) ; 6
; [then-branch: 24 | !(i@38@01 >= 0)]
(assert (not (>= i@38@01 0)))
(pop) ; 6
(push) ; 6
; [else-branch: 24 | i@38@01 >= 0]
(assert (>= i@38@01 0))
; [eval] i < |xs|
; [eval] |xs|
(push) ; 7
; [then-branch: 25 | !(i@38@01 < |xs@24@01|) | live]
; [else-branch: 25 | i@38@01 < |xs@24@01| | live]
(push) ; 8
; [then-branch: 25 | !(i@38@01 < |xs@24@01|)]
(assert (not (< i@38@01 (Seq_length xs@24@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 25 | i@38@01 < |xs@24@01|]
(assert (< i@38@01 (Seq_length xs@24@01)))
; [eval] j >= 0
(push) ; 9
; [then-branch: 26 | !(j@39@01 >= 0) | live]
; [else-branch: 26 | j@39@01 >= 0 | live]
(push) ; 10
; [then-branch: 26 | !(j@39@01 >= 0)]
(assert (not (>= j@39@01 0)))
(pop) ; 10
(push) ; 10
; [else-branch: 26 | j@39@01 >= 0]
(assert (>= j@39@01 0))
; [eval] j < |xs|
; [eval] |xs|
(push) ; 11
; [then-branch: 27 | !(j@39@01 < |xs@24@01|) | live]
; [else-branch: 27 | j@39@01 < |xs@24@01| | live]
(push) ; 12
; [then-branch: 27 | !(j@39@01 < |xs@24@01|)]
(assert (not (< j@39@01 (Seq_length xs@24@01))))
(pop) ; 12
(push) ; 12
; [else-branch: 27 | j@39@01 < |xs@24@01|]
(assert (< j@39@01 (Seq_length xs@24@01)))
; [eval] i != j
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (< j@39@01 (Seq_length xs@24@01)) (not (< j@39@01 (Seq_length xs@24@01)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@39@01 0)
  (and
    (>= j@39@01 0)
    (or
      (< j@39@01 (Seq_length xs@24@01))
      (not (< j@39@01 (Seq_length xs@24@01)))))))
(assert (or (>= j@39@01 0) (not (>= j@39@01 0))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@38@01 (Seq_length xs@24@01))
  (and
    (< i@38@01 (Seq_length xs@24@01))
    (=>
      (>= j@39@01 0)
      (and
        (>= j@39@01 0)
        (or
          (< j@39@01 (Seq_length xs@24@01))
          (not (< j@39@01 (Seq_length xs@24@01))))))
    (or (>= j@39@01 0) (not (>= j@39@01 0))))))
(assert (or (< i@38@01 (Seq_length xs@24@01)) (not (< i@38@01 (Seq_length xs@24@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= i@38@01 0)
  (and
    (>= i@38@01 0)
    (=>
      (< i@38@01 (Seq_length xs@24@01))
      (and
        (< i@38@01 (Seq_length xs@24@01))
        (=>
          (>= j@39@01 0)
          (and
            (>= j@39@01 0)
            (or
              (< j@39@01 (Seq_length xs@24@01))
              (not (< j@39@01 (Seq_length xs@24@01))))))
        (or (>= j@39@01 0) (not (>= j@39@01 0)))))
    (or
      (< i@38@01 (Seq_length xs@24@01))
      (not (< i@38@01 (Seq_length xs@24@01)))))))
(assert (or (>= i@38@01 0) (not (>= i@38@01 0))))
(push) ; 5
; [then-branch: 28 | i@38@01 >= 0 && i@38@01 < |xs@24@01| && j@39@01 >= 0 && j@39@01 < |xs@24@01| && i@38@01 != j@39@01 | live]
; [else-branch: 28 | !(i@38@01 >= 0 && i@38@01 < |xs@24@01| && j@39@01 >= 0 && j@39@01 < |xs@24@01| && i@38@01 != j@39@01) | live]
(push) ; 6
; [then-branch: 28 | i@38@01 >= 0 && i@38@01 < |xs@24@01| && j@39@01 >= 0 && j@39@01 < |xs@24@01| && i@38@01 != j@39@01]
(assert (and
  (>= i@38@01 0)
  (and
    (< i@38@01 (Seq_length xs@24@01))
    (and
      (>= j@39@01 0)
      (and (< j@39@01 (Seq_length xs@24@01)) (not (= i@38@01 j@39@01)))))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
; [eval] xs[j]
(pop) ; 6
(push) ; 6
; [else-branch: 28 | !(i@38@01 >= 0 && i@38@01 < |xs@24@01| && j@39@01 >= 0 && j@39@01 < |xs@24@01| && i@38@01 != j@39@01)]
(assert (not
  (and
    (>= i@38@01 0)
    (and
      (< i@38@01 (Seq_length xs@24@01))
      (and
        (>= j@39@01 0)
        (and (< j@39@01 (Seq_length xs@24@01)) (not (= i@38@01 j@39@01))))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (>= i@38@01 0)
    (and
      (< i@38@01 (Seq_length xs@24@01))
      (and
        (>= j@39@01 0)
        (and (< j@39@01 (Seq_length xs@24@01)) (not (= i@38@01 j@39@01))))))
  (and
    (>= i@38@01 0)
    (< i@38@01 (Seq_length xs@24@01))
    (>= j@39@01 0)
    (< j@39@01 (Seq_length xs@24@01))
    (not (= i@38@01 j@39@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= i@38@01 0)
      (and
        (< i@38@01 (Seq_length xs@24@01))
        (and
          (>= j@39@01 0)
          (and (< j@39@01 (Seq_length xs@24@01)) (not (= i@38@01 j@39@01)))))))
  (and
    (>= i@38@01 0)
    (and
      (< i@38@01 (Seq_length xs@24@01))
      (and
        (>= j@39@01 0)
        (and (< j@39@01 (Seq_length xs@24@01)) (not (= i@38@01 j@39@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((i@38@01 Int) (j@39@01 Int)) (!
  (=>
    (and
      (>= i@38@01 0)
      (and
        (< i@38@01 (Seq_length xs@24@01))
        (and
          (>= j@39@01 0)
          (and (< j@39@01 (Seq_length xs@24@01)) (not (= i@38@01 j@39@01))))))
    (not (= (Seq_index xs@24@01 i@38@01) (Seq_index xs@24@01 j@39@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@22@12@22@106|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@38@01 Int) (j@39@01 Int)) (!
  (=>
    (and
      (>= i@38@01 0)
      (and
        (< i@38@01 (Seq_length xs@24@01))
        (and
          (>= j@39@01 0)
          (and (< j@39@01 (Seq_length xs@24@01)) (not (= i@38@01 j@39@01))))))
    (not (= (Seq_index xs@24@01 i@38@01) (Seq_index xs@24@01 j@39@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@22@12@22@106|)))
(declare-const i@40@01 Int)
(push) ; 4
; [eval] 0 <= i && i < |xs|
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
; [eval] i < |xs|
; [eval] |xs|
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@40@01) (not (<= 0 i@40@01))))
(assert (and (<= 0 i@40@01) (< i@40@01 (Seq_length xs@24@01))))
; [eval] xs[i]
(push) ; 5
(assert (not (>= i@40@01 0)))
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
    (and (<= 0 i@40@01) (< i@40@01 (Seq_length xs@24@01)))
    (or (<= 0 i@40@01) (not (<= 0 i@40@01))))
  :pattern ((Seq_index xs@24@01 i@40@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@40@01 Int) (i2@40@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@40@01) (< i1@40@01 (Seq_length xs@24@01)))
      (and (<= 0 i2@40@01) (< i2@40@01 (Seq_length xs@24@01)))
      (= (Seq_index xs@24@01 i1@40@01) (Seq_index xs@24@01 i2@40@01)))
    (= i1@40@01 i2@40@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@40@01 Int)) (!
  (=>
    (and (<= 0 i@40@01) (< i@40@01 (Seq_length xs@24@01)))
    (and
      (= (inv@41@01 (Seq_index xs@24@01 i@40@01)) i@40@01)
      (img@42@01 (Seq_index xs@24@01 i@40@01))))
  :pattern ((Seq_index xs@24@01 i@40@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@42@01 r)
      (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) (Seq_length xs@24@01))))
    (= (Seq_index xs@24@01 (inv@41@01 r)) r))
  :pattern ((inv@41@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) (Seq_length xs@24@01)))
      (img@42@01 r)
      (= r (Seq_index xs@24@01 (inv@41@01 r))))
    (>
      (+
        (+
          (ite
            (and
              (img@31@01 r)
              (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
            (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
            $Perm.No)
          (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
        (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-11598|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@43@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@43@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) (Seq_length xs@24@01)))
        (img@42@01 r)))
    (=>
      (and
        (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) (Seq_length xs@24@01)))
        (img@42@01 r))
      (Set_in r ($FVF.domain_f (as sm@43@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@43@01  $FVF<f>))))
  :qid |qp.fvfDomDef7|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) (Seq_length xs@24@01)))
        (img@42@01 r))
      (= r (Seq_index xs@24@01 1)))
    (=
      ($FVF.lookup_f (as sm@43@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@43@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) (Seq_length xs@24@01)))
        (img@42@01 r))
      (= r (Seq_index xs@24@01 0)))
    (=
      ($FVF.lookup_f (as sm@43@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@43@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :qid |qp.fvfValDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) (Seq_length xs@24@01)))
        (img@42@01 r))
      (ite
        (and
          (img@31@01 r)
          (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
        (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
        false))
    (= ($FVF.lookup_f (as sm@43@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@43@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef6|)))
; [eval] |xs| > 3
; [eval] |xs|
(assert (fun02%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@43@01  $FVF<f>))
    $Snap.unit)) xs@24@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((i@40@01 Int)) (!
  (=>
    (and (<= 0 i@40@01) (< i@40@01 (Seq_length xs@24@01)))
    (and
      (= (inv@41@01 (Seq_index xs@24@01 i@40@01)) i@40@01)
      (img@42@01 (Seq_index xs@24@01 i@40@01))))
  :pattern ((Seq_index xs@24@01 i@40@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@42@01 r)
      (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) (Seq_length xs@24@01))))
    (= (Seq_index xs@24@01 (inv@41@01 r)) r))
  :pattern ((inv@41@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@43@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) (Seq_length xs@24@01)))
        (img@42@01 r)))
    (=>
      (and
        (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) (Seq_length xs@24@01)))
        (img@42@01 r))
      (Set_in r ($FVF.domain_f (as sm@43@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@43@01  $FVF<f>))))
  :qid |qp.fvfDomDef7|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) (Seq_length xs@24@01)))
        (img@42@01 r))
      (= r (Seq_index xs@24@01 1)))
    (=
      ($FVF.lookup_f (as sm@43@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@43@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) (Seq_length xs@24@01)))
        (img@42@01 r))
      (= r (Seq_index xs@24@01 0)))
    (=
      ($FVF.lookup_f (as sm@43@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@43@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :qid |qp.fvfValDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@41@01 r)) (< (inv@41@01 r) (Seq_length xs@24@01)))
        (img@42@01 r))
      (ite
        (and
          (img@31@01 r)
          (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
        (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
        false))
    (= ($FVF.lookup_f (as sm@43@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@43@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef6|)))
(assert (and
  (forall ((i@38@01 Int) (j@39@01 Int)) (!
    (=>
      (and
        (>= i@38@01 0)
        (and
          (< i@38@01 (Seq_length xs@24@01))
          (and
            (>= j@39@01 0)
            (and (< j@39@01 (Seq_length xs@24@01)) (not (= i@38@01 j@39@01))))))
      (not (= (Seq_index xs@24@01 i@38@01) (Seq_index xs@24@01 j@39@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@22@12@22@106|))
  (forall ((i@40@01 Int)) (!
    (=>
      (and (<= 0 i@40@01) (< i@40@01 (Seq_length xs@24@01)))
      (or (<= 0 i@40@01) (not (<= 0 i@40@01))))
    :pattern ((Seq_index xs@24@01 i@40@01))
    :qid |f-aux|))
  (fun02%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<f>To$Snap (as sm@43@01  $FVF<f>))
      $Snap.unit)) xs@24@01)))
(push) ; 3
(assert (not (=
  (fun02 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<f>To$Snap (as sm@43@01  $FVF<f>))
      $Snap.unit)) xs@24@01)
  10)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (fun02 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<f>To$Snap (as sm@43@01  $FVF<f>))
      $Snap.unit)) xs@24@01)
  10))
; [exec]
; xs[0].f := xs[1].f
; [eval] xs[0]
(push) ; 3
(assert (not (< 0 (Seq_length xs@24@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] xs[1]
(push) ; 3
(assert (not (< 1 (Seq_length xs@24@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@44@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 1))
    (=
      ($FVF.lookup_f (as sm@44@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@44@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 0))
    (=
      ($FVF.lookup_f (as sm@44@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@44@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@31@01 r)
        (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
      (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@44@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@44@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef10|)))
(declare-const pm@45@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@45@01  $FPM) r)
    (+
      (+
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
        (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No))
      (ite
        (and
          (img@31@01 r)
          (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
        (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@45@01  $FPM) r))
  :qid |qp.resPrmSumDef11|)))
(push) ; 3
(assert (not (< $Perm.No ($FVF.perm_f (as pm@45@01  $FPM) (Seq_index xs@24@01 1)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@46@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index xs@24@01 0))
    ($Perm.min
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@47@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index xs@24@01 0))
    ($Perm.min
      (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@46@01 r)))
    $Perm.No))
(define-fun pTaken@48@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index xs@24@01 0))
    ($Perm.min
      (ite
        (and
          (img@31@01 r)
          (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
        (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
        $Perm.No)
      (- (- $Perm.Write (pTaken@46@01 r)) (pTaken@47@01 r)))
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
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (pTaken@46@01 (Seq_index xs@24@01 0)))
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
  (=> (= r (Seq_index xs@24@01 0)) (= (- $Perm.Write (pTaken@46@01 r)) $Perm.No))
  
  :qid |quant-u-11601|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@49@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (=
  ($FVF.lookup_f (as sm@49@01  $FVF<f>) (Seq_index xs@24@01 0))
  ($FVF.lookup_f (as sm@44@01  $FVF<f>) (Seq_index xs@24@01 1))))
; [exec]
; assert fun02(xs) == 14
; [eval] fun02(xs) == 14
; [eval] fun02(xs)
(set-option :timeout 0)
(push) ; 3
; [eval] (forall i: Int, j: Int ::i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j])
(declare-const i@50@01 Int)
(declare-const j@51@01 Int)
(push) ; 4
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j]
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j)))
; [eval] i >= 0
(push) ; 5
; [then-branch: 30 | !(i@50@01 >= 0) | live]
; [else-branch: 30 | i@50@01 >= 0 | live]
(push) ; 6
; [then-branch: 30 | !(i@50@01 >= 0)]
(assert (not (>= i@50@01 0)))
(pop) ; 6
(push) ; 6
; [else-branch: 30 | i@50@01 >= 0]
(assert (>= i@50@01 0))
; [eval] i < |xs|
; [eval] |xs|
(push) ; 7
; [then-branch: 31 | !(i@50@01 < |xs@24@01|) | live]
; [else-branch: 31 | i@50@01 < |xs@24@01| | live]
(push) ; 8
; [then-branch: 31 | !(i@50@01 < |xs@24@01|)]
(assert (not (< i@50@01 (Seq_length xs@24@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 31 | i@50@01 < |xs@24@01|]
(assert (< i@50@01 (Seq_length xs@24@01)))
; [eval] j >= 0
(push) ; 9
; [then-branch: 32 | !(j@51@01 >= 0) | live]
; [else-branch: 32 | j@51@01 >= 0 | live]
(push) ; 10
; [then-branch: 32 | !(j@51@01 >= 0)]
(assert (not (>= j@51@01 0)))
(pop) ; 10
(push) ; 10
; [else-branch: 32 | j@51@01 >= 0]
(assert (>= j@51@01 0))
; [eval] j < |xs|
; [eval] |xs|
(push) ; 11
; [then-branch: 33 | !(j@51@01 < |xs@24@01|) | live]
; [else-branch: 33 | j@51@01 < |xs@24@01| | live]
(push) ; 12
; [then-branch: 33 | !(j@51@01 < |xs@24@01|)]
(assert (not (< j@51@01 (Seq_length xs@24@01))))
(pop) ; 12
(push) ; 12
; [else-branch: 33 | j@51@01 < |xs@24@01|]
(assert (< j@51@01 (Seq_length xs@24@01)))
; [eval] i != j
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (< j@51@01 (Seq_length xs@24@01)) (not (< j@51@01 (Seq_length xs@24@01)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@51@01 0)
  (and
    (>= j@51@01 0)
    (or
      (< j@51@01 (Seq_length xs@24@01))
      (not (< j@51@01 (Seq_length xs@24@01)))))))
(assert (or (>= j@51@01 0) (not (>= j@51@01 0))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@50@01 (Seq_length xs@24@01))
  (and
    (< i@50@01 (Seq_length xs@24@01))
    (=>
      (>= j@51@01 0)
      (and
        (>= j@51@01 0)
        (or
          (< j@51@01 (Seq_length xs@24@01))
          (not (< j@51@01 (Seq_length xs@24@01))))))
    (or (>= j@51@01 0) (not (>= j@51@01 0))))))
(assert (or (< i@50@01 (Seq_length xs@24@01)) (not (< i@50@01 (Seq_length xs@24@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= i@50@01 0)
  (and
    (>= i@50@01 0)
    (=>
      (< i@50@01 (Seq_length xs@24@01))
      (and
        (< i@50@01 (Seq_length xs@24@01))
        (=>
          (>= j@51@01 0)
          (and
            (>= j@51@01 0)
            (or
              (< j@51@01 (Seq_length xs@24@01))
              (not (< j@51@01 (Seq_length xs@24@01))))))
        (or (>= j@51@01 0) (not (>= j@51@01 0)))))
    (or
      (< i@50@01 (Seq_length xs@24@01))
      (not (< i@50@01 (Seq_length xs@24@01)))))))
(assert (or (>= i@50@01 0) (not (>= i@50@01 0))))
(push) ; 5
; [then-branch: 34 | i@50@01 >= 0 && i@50@01 < |xs@24@01| && j@51@01 >= 0 && j@51@01 < |xs@24@01| && i@50@01 != j@51@01 | live]
; [else-branch: 34 | !(i@50@01 >= 0 && i@50@01 < |xs@24@01| && j@51@01 >= 0 && j@51@01 < |xs@24@01| && i@50@01 != j@51@01) | live]
(push) ; 6
; [then-branch: 34 | i@50@01 >= 0 && i@50@01 < |xs@24@01| && j@51@01 >= 0 && j@51@01 < |xs@24@01| && i@50@01 != j@51@01]
(assert (and
  (>= i@50@01 0)
  (and
    (< i@50@01 (Seq_length xs@24@01))
    (and
      (>= j@51@01 0)
      (and (< j@51@01 (Seq_length xs@24@01)) (not (= i@50@01 j@51@01)))))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
; [eval] xs[j]
(pop) ; 6
(push) ; 6
; [else-branch: 34 | !(i@50@01 >= 0 && i@50@01 < |xs@24@01| && j@51@01 >= 0 && j@51@01 < |xs@24@01| && i@50@01 != j@51@01)]
(assert (not
  (and
    (>= i@50@01 0)
    (and
      (< i@50@01 (Seq_length xs@24@01))
      (and
        (>= j@51@01 0)
        (and (< j@51@01 (Seq_length xs@24@01)) (not (= i@50@01 j@51@01))))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (>= i@50@01 0)
    (and
      (< i@50@01 (Seq_length xs@24@01))
      (and
        (>= j@51@01 0)
        (and (< j@51@01 (Seq_length xs@24@01)) (not (= i@50@01 j@51@01))))))
  (and
    (>= i@50@01 0)
    (< i@50@01 (Seq_length xs@24@01))
    (>= j@51@01 0)
    (< j@51@01 (Seq_length xs@24@01))
    (not (= i@50@01 j@51@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= i@50@01 0)
      (and
        (< i@50@01 (Seq_length xs@24@01))
        (and
          (>= j@51@01 0)
          (and (< j@51@01 (Seq_length xs@24@01)) (not (= i@50@01 j@51@01)))))))
  (and
    (>= i@50@01 0)
    (and
      (< i@50@01 (Seq_length xs@24@01))
      (and
        (>= j@51@01 0)
        (and (< j@51@01 (Seq_length xs@24@01)) (not (= i@50@01 j@51@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((i@50@01 Int) (j@51@01 Int)) (!
  (=>
    (and
      (>= i@50@01 0)
      (and
        (< i@50@01 (Seq_length xs@24@01))
        (and
          (>= j@51@01 0)
          (and (< j@51@01 (Seq_length xs@24@01)) (not (= i@50@01 j@51@01))))))
    (not (= (Seq_index xs@24@01 i@50@01) (Seq_index xs@24@01 j@51@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@22@12@22@106|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@50@01 Int) (j@51@01 Int)) (!
  (=>
    (and
      (>= i@50@01 0)
      (and
        (< i@50@01 (Seq_length xs@24@01))
        (and
          (>= j@51@01 0)
          (and (< j@51@01 (Seq_length xs@24@01)) (not (= i@50@01 j@51@01))))))
    (not (= (Seq_index xs@24@01 i@50@01) (Seq_index xs@24@01 j@51@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@22@12@22@106|)))
(declare-const i@52@01 Int)
(push) ; 4
; [eval] 0 <= i && i < |xs|
; [eval] 0 <= i
(push) ; 5
; [then-branch: 35 | !(0 <= i@52@01) | live]
; [else-branch: 35 | 0 <= i@52@01 | live]
(push) ; 6
; [then-branch: 35 | !(0 <= i@52@01)]
(assert (not (<= 0 i@52@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 35 | 0 <= i@52@01]
(assert (<= 0 i@52@01))
; [eval] i < |xs|
; [eval] |xs|
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@52@01) (not (<= 0 i@52@01))))
(assert (and (<= 0 i@52@01) (< i@52@01 (Seq_length xs@24@01))))
; [eval] xs[i]
(push) ; 5
(assert (not (>= i@52@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@53@01 ($Ref) Int)
(declare-fun img@54@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@52@01 Int)) (!
  (=>
    (and (<= 0 i@52@01) (< i@52@01 (Seq_length xs@24@01)))
    (or (<= 0 i@52@01) (not (<= 0 i@52@01))))
  :pattern ((Seq_index xs@24@01 i@52@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@52@01 Int) (i2@52@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@52@01) (< i1@52@01 (Seq_length xs@24@01)))
      (and (<= 0 i2@52@01) (< i2@52@01 (Seq_length xs@24@01)))
      (= (Seq_index xs@24@01 i1@52@01) (Seq_index xs@24@01 i2@52@01)))
    (= i1@52@01 i2@52@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@52@01 Int)) (!
  (=>
    (and (<= 0 i@52@01) (< i@52@01 (Seq_length xs@24@01)))
    (and
      (= (inv@53@01 (Seq_index xs@24@01 i@52@01)) i@52@01)
      (img@54@01 (Seq_index xs@24@01 i@52@01))))
  :pattern ((Seq_index xs@24@01 i@52@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@54@01 r)
      (and (<= 0 (inv@53@01 r)) (< (inv@53@01 r) (Seq_length xs@24@01))))
    (= (Seq_index xs@24@01 (inv@53@01 r)) r))
  :pattern ((inv@53@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@53@01 r)) (< (inv@53@01 r) (Seq_length xs@24@01)))
      (img@54@01 r)
      (= r (Seq_index xs@24@01 (inv@53@01 r))))
    (>
      (+
        (+
          (ite
            (and
              (img@31@01 r)
              (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
            (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
            $Perm.No)
          (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No))
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-11603|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@55@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@55@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@53@01 r)) (< (inv@53@01 r) (Seq_length xs@24@01)))
        (img@54@01 r)))
    (=>
      (and
        (and (<= 0 (inv@53@01 r)) (< (inv@53@01 r) (Seq_length xs@24@01)))
        (img@54@01 r))
      (Set_in r ($FVF.domain_f (as sm@55@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@55@01  $FVF<f>))))
  :qid |qp.fvfDomDef15|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@53@01 r)) (< (inv@53@01 r) (Seq_length xs@24@01)))
        (img@54@01 r))
      (= r (Seq_index xs@24@01 0)))
    (=
      ($FVF.lookup_f (as sm@55@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@49@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@55@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@49@01  $FVF<f>) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@53@01 r)) (< (inv@53@01 r) (Seq_length xs@24@01)))
        (img@54@01 r))
      (ite
        (and
          (img@31@01 r)
          (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
        (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
        false))
    (= ($FVF.lookup_f (as sm@55@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@55@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef13|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@53@01 r)) (< (inv@53@01 r) (Seq_length xs@24@01)))
        (img@54@01 r))
      (= r (Seq_index xs@24@01 1)))
    (=
      ($FVF.lookup_f (as sm@55@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@55@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef14|)))
; [eval] |xs| > 3
; [eval] |xs|
(assert (fun02%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@55@01  $FVF<f>))
    $Snap.unit)) xs@24@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((i@52@01 Int)) (!
  (=>
    (and (<= 0 i@52@01) (< i@52@01 (Seq_length xs@24@01)))
    (and
      (= (inv@53@01 (Seq_index xs@24@01 i@52@01)) i@52@01)
      (img@54@01 (Seq_index xs@24@01 i@52@01))))
  :pattern ((Seq_index xs@24@01 i@52@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@54@01 r)
      (and (<= 0 (inv@53@01 r)) (< (inv@53@01 r) (Seq_length xs@24@01))))
    (= (Seq_index xs@24@01 (inv@53@01 r)) r))
  :pattern ((inv@53@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@55@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@53@01 r)) (< (inv@53@01 r) (Seq_length xs@24@01)))
        (img@54@01 r)))
    (=>
      (and
        (and (<= 0 (inv@53@01 r)) (< (inv@53@01 r) (Seq_length xs@24@01)))
        (img@54@01 r))
      (Set_in r ($FVF.domain_f (as sm@55@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@55@01  $FVF<f>))))
  :qid |qp.fvfDomDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@53@01 r)) (< (inv@53@01 r) (Seq_length xs@24@01)))
        (img@54@01 r))
      (= r (Seq_index xs@24@01 0)))
    (=
      ($FVF.lookup_f (as sm@55@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@49@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@55@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@49@01  $FVF<f>) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@53@01 r)) (< (inv@53@01 r) (Seq_length xs@24@01)))
        (img@54@01 r))
      (ite
        (and
          (img@31@01 r)
          (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
        (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
        false))
    (= ($FVF.lookup_f (as sm@55@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@55@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef13|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@53@01 r)) (< (inv@53@01 r) (Seq_length xs@24@01)))
        (img@54@01 r))
      (= r (Seq_index xs@24@01 1)))
    (=
      ($FVF.lookup_f (as sm@55@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@55@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef14|)))
(assert (and
  (forall ((i@50@01 Int) (j@51@01 Int)) (!
    (=>
      (and
        (>= i@50@01 0)
        (and
          (< i@50@01 (Seq_length xs@24@01))
          (and
            (>= j@51@01 0)
            (and (< j@51@01 (Seq_length xs@24@01)) (not (= i@50@01 j@51@01))))))
      (not (= (Seq_index xs@24@01 i@50@01) (Seq_index xs@24@01 j@51@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@22@12@22@106|))
  (forall ((i@52@01 Int)) (!
    (=>
      (and (<= 0 i@52@01) (< i@52@01 (Seq_length xs@24@01)))
      (or (<= 0 i@52@01) (not (<= 0 i@52@01))))
    :pattern ((Seq_index xs@24@01 i@52@01))
    :qid |f-aux|))
  (fun02%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<f>To$Snap (as sm@55@01  $FVF<f>))
      $Snap.unit)) xs@24@01)))
(push) ; 3
(assert (not (=
  (fun02 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<f>To$Snap (as sm@55@01  $FVF<f>))
      $Snap.unit)) xs@24@01)
  14)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  (fun02 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<f>To$Snap (as sm@55@01  $FVF<f>))
      $Snap.unit)) xs@24@01)
  14))
; [exec]
; xs[0].f := xs[2].f
; [eval] xs[0]
(push) ; 3
(assert (not (< 0 (Seq_length xs@24@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] xs[2]
(push) ; 3
(assert (not (< 2 (Seq_length xs@24@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@56@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 0))
    (=
      ($FVF.lookup_f (as sm@56@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@49@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@56@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@49@01  $FVF<f>) r))
  :qid |qp.fvfValDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@31@01 r)
        (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
      (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@56@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@56@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 1))
    (=
      ($FVF.lookup_f (as sm@56@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@56@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef18|)))
(declare-const pm@57@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@57@01  $FPM) r)
    (+
      (+
        (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No))
      (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@57@01  $FPM) r))
  :qid |qp.resPrmSumDef19|)))
(push) ; 3
(assert (not (< $Perm.No ($FVF.perm_f (as pm@57@01  $FPM) (Seq_index xs@24@01 2)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@58@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index xs@24@01 0))
    ($Perm.min
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@59@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index xs@24@01 0))
    ($Perm.min
      (ite
        (and
          (img@31@01 r)
          (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
        (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
        $Perm.No)
      (- $Perm.Write (pTaken@58@01 r)))
    $Perm.No))
(define-fun pTaken@60@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index xs@24@01 0))
    ($Perm.min
      (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
      (- (- $Perm.Write (pTaken@58@01 r)) (pTaken@59@01 r)))
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
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (pTaken@58@01 (Seq_index xs@24@01 0)))
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
  (=> (= r (Seq_index xs@24@01 0)) (= (- $Perm.Write (pTaken@58@01 r)) $Perm.No))
  
  :qid |quant-u-11606|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@61@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (=
  ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
  ($FVF.lookup_f (as sm@56@01  $FVF<f>) (Seq_index xs@24@01 2))))
; [exec]
; assert fun02(xs) == 14
; [eval] fun02(xs) == 14
; [eval] fun02(xs)
(set-option :timeout 0)
(push) ; 3
; [eval] (forall i: Int, j: Int ::i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j])
(declare-const i@62@01 Int)
(declare-const j@63@01 Int)
(push) ; 4
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j]
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j)))
; [eval] i >= 0
(push) ; 5
; [then-branch: 36 | !(i@62@01 >= 0) | live]
; [else-branch: 36 | i@62@01 >= 0 | live]
(push) ; 6
; [then-branch: 36 | !(i@62@01 >= 0)]
(assert (not (>= i@62@01 0)))
(pop) ; 6
(push) ; 6
; [else-branch: 36 | i@62@01 >= 0]
(assert (>= i@62@01 0))
; [eval] i < |xs|
; [eval] |xs|
(push) ; 7
; [then-branch: 37 | !(i@62@01 < |xs@24@01|) | live]
; [else-branch: 37 | i@62@01 < |xs@24@01| | live]
(push) ; 8
; [then-branch: 37 | !(i@62@01 < |xs@24@01|)]
(assert (not (< i@62@01 (Seq_length xs@24@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 37 | i@62@01 < |xs@24@01|]
(assert (< i@62@01 (Seq_length xs@24@01)))
; [eval] j >= 0
(push) ; 9
; [then-branch: 38 | !(j@63@01 >= 0) | live]
; [else-branch: 38 | j@63@01 >= 0 | live]
(push) ; 10
; [then-branch: 38 | !(j@63@01 >= 0)]
(assert (not (>= j@63@01 0)))
(pop) ; 10
(push) ; 10
; [else-branch: 38 | j@63@01 >= 0]
(assert (>= j@63@01 0))
; [eval] j < |xs|
; [eval] |xs|
(push) ; 11
; [then-branch: 39 | !(j@63@01 < |xs@24@01|) | live]
; [else-branch: 39 | j@63@01 < |xs@24@01| | live]
(push) ; 12
; [then-branch: 39 | !(j@63@01 < |xs@24@01|)]
(assert (not (< j@63@01 (Seq_length xs@24@01))))
(pop) ; 12
(push) ; 12
; [else-branch: 39 | j@63@01 < |xs@24@01|]
(assert (< j@63@01 (Seq_length xs@24@01)))
; [eval] i != j
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (< j@63@01 (Seq_length xs@24@01)) (not (< j@63@01 (Seq_length xs@24@01)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@63@01 0)
  (and
    (>= j@63@01 0)
    (or
      (< j@63@01 (Seq_length xs@24@01))
      (not (< j@63@01 (Seq_length xs@24@01)))))))
(assert (or (>= j@63@01 0) (not (>= j@63@01 0))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@62@01 (Seq_length xs@24@01))
  (and
    (< i@62@01 (Seq_length xs@24@01))
    (=>
      (>= j@63@01 0)
      (and
        (>= j@63@01 0)
        (or
          (< j@63@01 (Seq_length xs@24@01))
          (not (< j@63@01 (Seq_length xs@24@01))))))
    (or (>= j@63@01 0) (not (>= j@63@01 0))))))
(assert (or (< i@62@01 (Seq_length xs@24@01)) (not (< i@62@01 (Seq_length xs@24@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= i@62@01 0)
  (and
    (>= i@62@01 0)
    (=>
      (< i@62@01 (Seq_length xs@24@01))
      (and
        (< i@62@01 (Seq_length xs@24@01))
        (=>
          (>= j@63@01 0)
          (and
            (>= j@63@01 0)
            (or
              (< j@63@01 (Seq_length xs@24@01))
              (not (< j@63@01 (Seq_length xs@24@01))))))
        (or (>= j@63@01 0) (not (>= j@63@01 0)))))
    (or
      (< i@62@01 (Seq_length xs@24@01))
      (not (< i@62@01 (Seq_length xs@24@01)))))))
(assert (or (>= i@62@01 0) (not (>= i@62@01 0))))
(push) ; 5
; [then-branch: 40 | i@62@01 >= 0 && i@62@01 < |xs@24@01| && j@63@01 >= 0 && j@63@01 < |xs@24@01| && i@62@01 != j@63@01 | live]
; [else-branch: 40 | !(i@62@01 >= 0 && i@62@01 < |xs@24@01| && j@63@01 >= 0 && j@63@01 < |xs@24@01| && i@62@01 != j@63@01) | live]
(push) ; 6
; [then-branch: 40 | i@62@01 >= 0 && i@62@01 < |xs@24@01| && j@63@01 >= 0 && j@63@01 < |xs@24@01| && i@62@01 != j@63@01]
(assert (and
  (>= i@62@01 0)
  (and
    (< i@62@01 (Seq_length xs@24@01))
    (and
      (>= j@63@01 0)
      (and (< j@63@01 (Seq_length xs@24@01)) (not (= i@62@01 j@63@01)))))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
; [eval] xs[j]
(pop) ; 6
(push) ; 6
; [else-branch: 40 | !(i@62@01 >= 0 && i@62@01 < |xs@24@01| && j@63@01 >= 0 && j@63@01 < |xs@24@01| && i@62@01 != j@63@01)]
(assert (not
  (and
    (>= i@62@01 0)
    (and
      (< i@62@01 (Seq_length xs@24@01))
      (and
        (>= j@63@01 0)
        (and (< j@63@01 (Seq_length xs@24@01)) (not (= i@62@01 j@63@01))))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (>= i@62@01 0)
    (and
      (< i@62@01 (Seq_length xs@24@01))
      (and
        (>= j@63@01 0)
        (and (< j@63@01 (Seq_length xs@24@01)) (not (= i@62@01 j@63@01))))))
  (and
    (>= i@62@01 0)
    (< i@62@01 (Seq_length xs@24@01))
    (>= j@63@01 0)
    (< j@63@01 (Seq_length xs@24@01))
    (not (= i@62@01 j@63@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= i@62@01 0)
      (and
        (< i@62@01 (Seq_length xs@24@01))
        (and
          (>= j@63@01 0)
          (and (< j@63@01 (Seq_length xs@24@01)) (not (= i@62@01 j@63@01)))))))
  (and
    (>= i@62@01 0)
    (and
      (< i@62@01 (Seq_length xs@24@01))
      (and
        (>= j@63@01 0)
        (and (< j@63@01 (Seq_length xs@24@01)) (not (= i@62@01 j@63@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((i@62@01 Int) (j@63@01 Int)) (!
  (=>
    (and
      (>= i@62@01 0)
      (and
        (< i@62@01 (Seq_length xs@24@01))
        (and
          (>= j@63@01 0)
          (and (< j@63@01 (Seq_length xs@24@01)) (not (= i@62@01 j@63@01))))))
    (not (= (Seq_index xs@24@01 i@62@01) (Seq_index xs@24@01 j@63@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@22@12@22@106|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@62@01 Int) (j@63@01 Int)) (!
  (=>
    (and
      (>= i@62@01 0)
      (and
        (< i@62@01 (Seq_length xs@24@01))
        (and
          (>= j@63@01 0)
          (and (< j@63@01 (Seq_length xs@24@01)) (not (= i@62@01 j@63@01))))))
    (not (= (Seq_index xs@24@01 i@62@01) (Seq_index xs@24@01 j@63@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@22@12@22@106|)))
(declare-const i@64@01 Int)
(push) ; 4
; [eval] 0 <= i && i < |xs|
; [eval] 0 <= i
(push) ; 5
; [then-branch: 41 | !(0 <= i@64@01) | live]
; [else-branch: 41 | 0 <= i@64@01 | live]
(push) ; 6
; [then-branch: 41 | !(0 <= i@64@01)]
(assert (not (<= 0 i@64@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 41 | 0 <= i@64@01]
(assert (<= 0 i@64@01))
; [eval] i < |xs|
; [eval] |xs|
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@64@01) (not (<= 0 i@64@01))))
(assert (and (<= 0 i@64@01) (< i@64@01 (Seq_length xs@24@01))))
; [eval] xs[i]
(push) ; 5
(assert (not (>= i@64@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@65@01 ($Ref) Int)
(declare-fun img@66@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@64@01 Int)) (!
  (=>
    (and (<= 0 i@64@01) (< i@64@01 (Seq_length xs@24@01)))
    (or (<= 0 i@64@01) (not (<= 0 i@64@01))))
  :pattern ((Seq_index xs@24@01 i@64@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@64@01 Int) (i2@64@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@64@01) (< i1@64@01 (Seq_length xs@24@01)))
      (and (<= 0 i2@64@01) (< i2@64@01 (Seq_length xs@24@01)))
      (= (Seq_index xs@24@01 i1@64@01) (Seq_index xs@24@01 i2@64@01)))
    (= i1@64@01 i2@64@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@64@01 Int)) (!
  (=>
    (and (<= 0 i@64@01) (< i@64@01 (Seq_length xs@24@01)))
    (and
      (= (inv@65@01 (Seq_index xs@24@01 i@64@01)) i@64@01)
      (img@66@01 (Seq_index xs@24@01 i@64@01))))
  :pattern ((Seq_index xs@24@01 i@64@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@66@01 r)
      (and (<= 0 (inv@65@01 r)) (< (inv@65@01 r) (Seq_length xs@24@01))))
    (= (Seq_index xs@24@01 (inv@65@01 r)) r))
  :pattern ((inv@65@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@65@01 r)) (< (inv@65@01 r) (Seq_length xs@24@01)))
      (img@66@01 r)
      (= r (Seq_index xs@24@01 (inv@65@01 r))))
    (>
      (+
        (+
          (ite
            (and
              (img@31@01 r)
              (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
            (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
            $Perm.No)
          (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No))
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-11608|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@67@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@67@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@65@01 r)) (< (inv@65@01 r) (Seq_length xs@24@01)))
        (img@66@01 r)))
    (=>
      (and
        (and (<= 0 (inv@65@01 r)) (< (inv@65@01 r) (Seq_length xs@24@01)))
        (img@66@01 r))
      (Set_in r ($FVF.domain_f (as sm@67@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@67@01  $FVF<f>))))
  :qid |qp.fvfDomDef23|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@65@01 r)) (< (inv@65@01 r) (Seq_length xs@24@01)))
        (img@66@01 r))
      (= r (Seq_index xs@24@01 0)))
    (=
      ($FVF.lookup_f (as sm@67@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@67@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@65@01 r)) (< (inv@65@01 r) (Seq_length xs@24@01)))
        (img@66@01 r))
      (= r (Seq_index xs@24@01 1)))
    (=
      ($FVF.lookup_f (as sm@67@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@67@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@65@01 r)) (< (inv@65@01 r) (Seq_length xs@24@01)))
        (img@66@01 r))
      (ite
        (and
          (img@31@01 r)
          (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
        (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
        false))
    (= ($FVF.lookup_f (as sm@67@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@67@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef22|)))
; [eval] |xs| > 3
; [eval] |xs|
(assert (fun02%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@67@01  $FVF<f>))
    $Snap.unit)) xs@24@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((i@64@01 Int)) (!
  (=>
    (and (<= 0 i@64@01) (< i@64@01 (Seq_length xs@24@01)))
    (and
      (= (inv@65@01 (Seq_index xs@24@01 i@64@01)) i@64@01)
      (img@66@01 (Seq_index xs@24@01 i@64@01))))
  :pattern ((Seq_index xs@24@01 i@64@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@66@01 r)
      (and (<= 0 (inv@65@01 r)) (< (inv@65@01 r) (Seq_length xs@24@01))))
    (= (Seq_index xs@24@01 (inv@65@01 r)) r))
  :pattern ((inv@65@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@67@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@65@01 r)) (< (inv@65@01 r) (Seq_length xs@24@01)))
        (img@66@01 r)))
    (=>
      (and
        (and (<= 0 (inv@65@01 r)) (< (inv@65@01 r) (Seq_length xs@24@01)))
        (img@66@01 r))
      (Set_in r ($FVF.domain_f (as sm@67@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@67@01  $FVF<f>))))
  :qid |qp.fvfDomDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@65@01 r)) (< (inv@65@01 r) (Seq_length xs@24@01)))
        (img@66@01 r))
      (= r (Seq_index xs@24@01 0)))
    (=
      ($FVF.lookup_f (as sm@67@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@67@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@65@01 r)) (< (inv@65@01 r) (Seq_length xs@24@01)))
        (img@66@01 r))
      (= r (Seq_index xs@24@01 1)))
    (=
      ($FVF.lookup_f (as sm@67@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@67@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef21|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@65@01 r)) (< (inv@65@01 r) (Seq_length xs@24@01)))
        (img@66@01 r))
      (ite
        (and
          (img@31@01 r)
          (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
        (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
        false))
    (= ($FVF.lookup_f (as sm@67@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@67@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef22|)))
(assert (and
  (forall ((i@62@01 Int) (j@63@01 Int)) (!
    (=>
      (and
        (>= i@62@01 0)
        (and
          (< i@62@01 (Seq_length xs@24@01))
          (and
            (>= j@63@01 0)
            (and (< j@63@01 (Seq_length xs@24@01)) (not (= i@62@01 j@63@01))))))
      (not (= (Seq_index xs@24@01 i@62@01) (Seq_index xs@24@01 j@63@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@22@12@22@106|))
  (forall ((i@64@01 Int)) (!
    (=>
      (and (<= 0 i@64@01) (< i@64@01 (Seq_length xs@24@01)))
      (or (<= 0 i@64@01) (not (<= 0 i@64@01))))
    :pattern ((Seq_index xs@24@01 i@64@01))
    :qid |f-aux|))
  (fun02%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<f>To$Snap (as sm@67@01  $FVF<f>))
      $Snap.unit)) xs@24@01)))
(push) ; 3
(assert (not (=
  (fun02 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<f>To$Snap (as sm@67@01  $FVF<f>))
      $Snap.unit)) xs@24@01)
  14)))
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
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
(declare-const sm@68@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 0))
    (=
      ($FVF.lookup_f (as sm@68@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@68@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 1))
    (=
      ($FVF.lookup_f (as sm@68@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@68@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@31@01 r)
        (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
      (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@68@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@68@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef26|)))
(declare-const pm@69@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@69@01  $FPM) r)
    (+
      (+
        (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite
        (and
          (img@31@01 r)
          (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
        (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@69@01  $FPM) r))
  :qid |qp.resPrmSumDef27|)))
(assert (<= ($FVF.perm_f (as pm@69@01  $FPM) (Seq_index xs@24@01 0)) $Perm.Write))
(assert (<= ($FVF.perm_f (as pm@69@01  $FPM) (Seq_index xs@24@01 1)) $Perm.Write))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@69@01  $FPM) r) $Perm.Write)
  :pattern ((inv@30@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] fun02(xs) == 14
; [eval] fun02(xs)
(set-option :timeout 0)
(push) ; 3
; [eval] (forall i: Int, j: Int ::i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j])
(declare-const i@70@01 Int)
(declare-const j@71@01 Int)
(push) ; 4
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j]
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j)))
; [eval] i >= 0
(push) ; 5
; [then-branch: 42 | !(i@70@01 >= 0) | live]
; [else-branch: 42 | i@70@01 >= 0 | live]
(push) ; 6
; [then-branch: 42 | !(i@70@01 >= 0)]
(assert (not (>= i@70@01 0)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
(declare-const sm@72@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@31@01 r)
        (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
      (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@72@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@72@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 1))
    (=
      ($FVF.lookup_f (as sm@72@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@72@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 0))
    (=
      ($FVF.lookup_f (as sm@72@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@72@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :qid |qp.fvfValDef30|)))
(declare-const pm@73@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@73@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@73@01  $FPM) r))
  :qid |qp.resPrmSumDef31|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@73@01  $FPM) r) $Perm.Write)
  :pattern ((inv@30@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@73@01  $FPM) (Seq_index xs@24@01 1)) $Perm.Write))
(assert (<= ($FVF.perm_f (as pm@73@01  $FPM) (Seq_index xs@24@01 0)) $Perm.Write))
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 42 | i@70@01 >= 0]
(assert (>= i@70@01 0))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
(declare-const sm@74@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@31@01 r)
        (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
      (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@74@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@74@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 1))
    (=
      ($FVF.lookup_f (as sm@74@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@74@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef33|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 0))
    (=
      ($FVF.lookup_f (as sm@74@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@74@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :qid |qp.fvfValDef34|)))
(declare-const pm@75@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@75@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@75@01  $FPM) r))
  :qid |qp.resPrmSumDef35|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@75@01  $FPM) r) $Perm.Write)
  :pattern ((inv@30@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@75@01  $FPM) (Seq_index xs@24@01 1)) $Perm.Write))
(assert (<= ($FVF.perm_f (as pm@75@01  $FPM) (Seq_index xs@24@01 0)) $Perm.Write))
; [eval] i < |xs|
; [eval] |xs|
(set-option :timeout 0)
(push) ; 7
; [then-branch: 43 | !(i@70@01 < |xs@24@01|) | live]
; [else-branch: 43 | i@70@01 < |xs@24@01| | live]
(push) ; 8
; [then-branch: 43 | !(i@70@01 < |xs@24@01|)]
(assert (not (< i@70@01 (Seq_length xs@24@01))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
(check-sat)
; unknown
(pop) ; 9
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(pop) ; 8
(set-option :timeout 0)
(push) ; 8
; [else-branch: 43 | i@70@01 < |xs@24@01|]
(assert (< i@70@01 (Seq_length xs@24@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
(check-sat)
; unknown
(pop) ; 9
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] j >= 0
(set-option :timeout 0)
(push) ; 9
; [then-branch: 44 | !(j@71@01 >= 0) | live]
; [else-branch: 44 | j@71@01 >= 0 | live]
(push) ; 10
; [then-branch: 44 | !(j@71@01 >= 0)]
(assert (not (>= j@71@01 0)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(pop) ; 10
(set-option :timeout 0)
(push) ; 10
; [else-branch: 44 | j@71@01 >= 0]
(assert (>= j@71@01 0))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] j < |xs|
; [eval] |xs|
(set-option :timeout 0)
(push) ; 11
; [then-branch: 45 | !(j@71@01 < |xs@24@01|) | live]
; [else-branch: 45 | j@71@01 < |xs@24@01| | live]
(push) ; 12
; [then-branch: 45 | !(j@71@01 < |xs@24@01|)]
(assert (not (< j@71@01 (Seq_length xs@24@01))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(pop) ; 12
(set-option :timeout 0)
(push) ; 12
; [else-branch: 45 | j@71@01 < |xs@24@01|]
(assert (< j@71@01 (Seq_length xs@24@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] i != j
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=>
  (not (< j@71@01 (Seq_length xs@24@01)))
  (and
    (not (< j@71@01 (Seq_length xs@24@01)))
    (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
    (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0))))))
; Joined path conditions
(assert (=>
  (< j@71@01 (Seq_length xs@24@01))
  (and
    (< j@71@01 (Seq_length xs@24@01))
    (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
    (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0))))))
(assert (or (< j@71@01 (Seq_length xs@24@01)) (not (< j@71@01 (Seq_length xs@24@01)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (not (>= j@71@01 0))
  (and
    (not (>= j@71@01 0))
    (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
    (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1))))))
; Joined path conditions
(assert (=>
  (>= j@71@01 0)
  (and
    (>= j@71@01 0)
    (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
    (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
    (=>
      (not (< j@71@01 (Seq_length xs@24@01)))
      (and
        (not (< j@71@01 (Seq_length xs@24@01)))
        (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
        (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
    (=>
      (< j@71@01 (Seq_length xs@24@01))
      (and
        (< j@71@01 (Seq_length xs@24@01))
        (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
        (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
    (or
      (< j@71@01 (Seq_length xs@24@01))
      (not (< j@71@01 (Seq_length xs@24@01)))))))
(assert (or (>= j@71@01 0) (not (>= j@71@01 0))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  (not (< i@70@01 (Seq_length xs@24@01)))
  (and
    (not (< i@70@01 (Seq_length xs@24@01)))
    (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
    (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0))))))
; Joined path conditions
(assert (=>
  (< i@70@01 (Seq_length xs@24@01))
  (and
    (< i@70@01 (Seq_length xs@24@01))
    (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
    (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
    (=>
      (not (>= j@71@01 0))
      (and
        (not (>= j@71@01 0))
        (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
        (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
    (=>
      (>= j@71@01 0)
      (and
        (>= j@71@01 0)
        (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
        (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
        (=>
          (not (< j@71@01 (Seq_length xs@24@01)))
          (and
            (not (< j@71@01 (Seq_length xs@24@01)))
            (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
            (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
        (=>
          (< j@71@01 (Seq_length xs@24@01))
          (and
            (< j@71@01 (Seq_length xs@24@01))
            (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
            (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
        (or
          (< j@71@01 (Seq_length xs@24@01))
          (not (< j@71@01 (Seq_length xs@24@01))))))
    (or (>= j@71@01 0) (not (>= j@71@01 0))))))
(assert (or (< i@70@01 (Seq_length xs@24@01)) (not (< i@70@01 (Seq_length xs@24@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@31@01 r)
        (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
      (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@72@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@72@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 1))
    (=
      ($FVF.lookup_f (as sm@72@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@72@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 0))
    (=
      ($FVF.lookup_f (as sm@72@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@72@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :qid |qp.fvfValDef30|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@73@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@73@01  $FPM) r))
  :qid |qp.resPrmSumDef31|)))
(assert (=>
  (not (>= i@70@01 0))
  (and
    (not (>= i@70@01 0))
    (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
    (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@73@01  $FPM) r) $Perm.Write)
      :pattern ((inv@30@01 r))
      :qid |qp-fld-prm-bnd|))
    (<= ($FVF.perm_f (as pm@73@01  $FPM) (Seq_index xs@24@01 1)) $Perm.Write)
    (<= ($FVF.perm_f (as pm@73@01  $FPM) (Seq_index xs@24@01 0)) $Perm.Write))))
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@31@01 r)
        (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
      (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@74@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@74@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 1))
    (=
      ($FVF.lookup_f (as sm@74@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@74@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef33|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 0))
    (=
      ($FVF.lookup_f (as sm@74@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@74@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :qid |qp.fvfValDef34|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@75@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@75@01  $FPM) r))
  :qid |qp.resPrmSumDef35|)))
(assert (=>
  (>= i@70@01 0)
  (and
    (>= i@70@01 0)
    (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
    (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@75@01  $FPM) r) $Perm.Write)
      :pattern ((inv@30@01 r))
      :qid |qp-fld-prm-bnd|))
    (<= ($FVF.perm_f (as pm@75@01  $FPM) (Seq_index xs@24@01 1)) $Perm.Write)
    (<= ($FVF.perm_f (as pm@75@01  $FPM) (Seq_index xs@24@01 0)) $Perm.Write)
    (=>
      (not (< i@70@01 (Seq_length xs@24@01)))
      (and
        (not (< i@70@01 (Seq_length xs@24@01)))
        (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
        (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
    (=>
      (< i@70@01 (Seq_length xs@24@01))
      (and
        (< i@70@01 (Seq_length xs@24@01))
        (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
        (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
        (=>
          (not (>= j@71@01 0))
          (and
            (not (>= j@71@01 0))
            (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
            (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
        (=>
          (>= j@71@01 0)
          (and
            (>= j@71@01 0)
            (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
            (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
            (=>
              (not (< j@71@01 (Seq_length xs@24@01)))
              (and
                (not (< j@71@01 (Seq_length xs@24@01)))
                (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
                (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
            (=>
              (< j@71@01 (Seq_length xs@24@01))
              (and
                (< j@71@01 (Seq_length xs@24@01))
                (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
                (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
            (or
              (< j@71@01 (Seq_length xs@24@01))
              (not (< j@71@01 (Seq_length xs@24@01))))))
        (or (>= j@71@01 0) (not (>= j@71@01 0)))))
    (or
      (< i@70@01 (Seq_length xs@24@01))
      (not (< i@70@01 (Seq_length xs@24@01)))))))
(assert (or (>= i@70@01 0) (not (>= i@70@01 0))))
(set-option :timeout 0)
(push) ; 5
; [then-branch: 46 | i@70@01 >= 0 && i@70@01 < |xs@24@01| && j@71@01 >= 0 && j@71@01 < |xs@24@01| && i@70@01 != j@71@01 | live]
; [else-branch: 46 | !(i@70@01 >= 0 && i@70@01 < |xs@24@01| && j@71@01 >= 0 && j@71@01 < |xs@24@01| && i@70@01 != j@71@01) | live]
(push) ; 6
; [then-branch: 46 | i@70@01 >= 0 && i@70@01 < |xs@24@01| && j@71@01 >= 0 && j@71@01 < |xs@24@01| && i@70@01 != j@71@01]
(assert (and
  (>= i@70@01 0)
  (and
    (< i@70@01 (Seq_length xs@24@01))
    (and
      (>= j@71@01 0)
      (and (< j@71@01 (Seq_length xs@24@01)) (not (= i@70@01 j@71@01)))))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@75@01  $FPM) r) $Perm.Write)
  :pattern ((inv@30@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@75@01  $FPM) (Seq_index xs@24@01 1)) $Perm.Write))
(assert (<= ($FVF.perm_f (as pm@75@01  $FPM) (Seq_index xs@24@01 0)) $Perm.Write))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
; [eval] xs[j]
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 46 | !(i@70@01 >= 0 && i@70@01 < |xs@24@01| && j@71@01 >= 0 && j@71@01 < |xs@24@01| && i@70@01 != j@71@01)]
(assert (not
  (and
    (>= i@70@01 0)
    (and
      (< i@70@01 (Seq_length xs@24@01))
      (and
        (>= j@71@01 0)
        (and (< j@71@01 (Seq_length xs@24@01)) (not (= i@70@01 j@71@01))))))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@75@01  $FPM) r) $Perm.Write)
  :pattern ((inv@30@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@75@01  $FPM) (Seq_index xs@24@01 1)) $Perm.Write))
(assert (<= ($FVF.perm_f (as pm@75@01  $FPM) (Seq_index xs@24@01 0)) $Perm.Write))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (>= i@70@01 0)
    (and
      (< i@70@01 (Seq_length xs@24@01))
      (and
        (>= j@71@01 0)
        (and (< j@71@01 (Seq_length xs@24@01)) (not (= i@70@01 j@71@01))))))
  (and
    (>= i@70@01 0)
    (< i@70@01 (Seq_length xs@24@01))
    (>= j@71@01 0)
    (< j@71@01 (Seq_length xs@24@01))
    (not (= i@70@01 j@71@01))
    (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
    (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@75@01  $FPM) r) $Perm.Write)
      :pattern ((inv@30@01 r))
      :qid |qp-fld-prm-bnd|))
    (<= ($FVF.perm_f (as pm@75@01  $FPM) (Seq_index xs@24@01 1)) $Perm.Write)
    (<= ($FVF.perm_f (as pm@75@01  $FPM) (Seq_index xs@24@01 0)) $Perm.Write))))
; Joined path conditions
(assert (=>
  (not
    (and
      (>= i@70@01 0)
      (and
        (< i@70@01 (Seq_length xs@24@01))
        (and
          (>= j@71@01 0)
          (and (< j@71@01 (Seq_length xs@24@01)) (not (= i@70@01 j@71@01)))))))
  (and
    (not
      (and
        (>= i@70@01 0)
        (and
          (< i@70@01 (Seq_length xs@24@01))
          (and
            (>= j@71@01 0)
            (and (< j@71@01 (Seq_length xs@24@01)) (not (= i@70@01 j@71@01)))))))
    (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
    (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@75@01  $FPM) r) $Perm.Write)
      :pattern ((inv@30@01 r))
      :qid |qp-fld-prm-bnd|))
    (<= ($FVF.perm_f (as pm@75@01  $FPM) (Seq_index xs@24@01 1)) $Perm.Write)
    (<= ($FVF.perm_f (as pm@75@01  $FPM) (Seq_index xs@24@01 0)) $Perm.Write))))
(assert (or
  (not
    (and
      (>= i@70@01 0)
      (and
        (< i@70@01 (Seq_length xs@24@01))
        (and
          (>= j@71@01 0)
          (and (< j@71@01 (Seq_length xs@24@01)) (not (= i@70@01 j@71@01)))))))
  (and
    (>= i@70@01 0)
    (and
      (< i@70@01 (Seq_length xs@24@01))
      (and
        (>= j@71@01 0)
        (and (< j@71@01 (Seq_length xs@24@01)) (not (= i@70@01 j@71@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@31@01 r)
        (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
      (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@72@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@72@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 1))
    (=
      ($FVF.lookup_f (as sm@72@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@72@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 0))
    (=
      ($FVF.lookup_f (as sm@72@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@72@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :qid |qp.fvfValDef30|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@73@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@73@01  $FPM) r))
  :qid |qp.resPrmSumDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@31@01 r)
        (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
      (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@74@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@74@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 1))
    (=
      ($FVF.lookup_f (as sm@74@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@74@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef33|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 0))
    (=
      ($FVF.lookup_f (as sm@74@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@74@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :qid |qp.fvfValDef34|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@75@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@75@01  $FPM) r))
  :qid |qp.resPrmSumDef35|)))
; Nested auxiliary terms: non-globals (aux)
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((i@70@01 Int) (j@71@01 Int)) (!
  (=>
    (and
      (>= i@70@01 0)
      (and
        (< i@70@01 (Seq_length xs@24@01))
        (and
          (>= j@71@01 0)
          (and (< j@71@01 (Seq_length xs@24@01)) (not (= i@70@01 j@71@01))))))
    (not (= (Seq_index xs@24@01 i@70@01) (Seq_index xs@24@01 j@71@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@22@12@22@106|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@70@01 Int) (j@71@01 Int)) (!
  (=>
    (and
      (>= i@70@01 0)
      (and
        (< i@70@01 (Seq_length xs@24@01))
        (and
          (>= j@71@01 0)
          (and (< j@71@01 (Seq_length xs@24@01)) (not (= i@70@01 j@71@01))))))
    (not (= (Seq_index xs@24@01 i@70@01) (Seq_index xs@24@01 j@71@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@22@12@22@106|)))
(declare-const i@76@01 Int)
(push) ; 4
; [eval] 0 <= i && i < |xs|
; [eval] 0 <= i
(push) ; 5
; [then-branch: 47 | !(0 <= i@76@01) | live]
; [else-branch: 47 | 0 <= i@76@01 | live]
(push) ; 6
; [then-branch: 47 | !(0 <= i@76@01)]
(assert (not (<= 0 i@76@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(declare-const pm@77@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@77@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@77@01  $FPM) r))
  :qid |qp.resPrmSumDef36|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@77@01  $FPM) r) $Perm.Write)
  :pattern ((inv@30@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@77@01  $FPM) (Seq_index xs@24@01 1)) $Perm.Write))
(assert (<= ($FVF.perm_f (as pm@77@01  $FPM) (Seq_index xs@24@01 0)) $Perm.Write))
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 47 | 0 <= i@76@01]
(assert (<= 0 i@76@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(declare-const pm@78@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@78@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@78@01  $FPM) r))
  :qid |qp.resPrmSumDef37|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@78@01  $FPM) r) $Perm.Write)
  :pattern ((inv@30@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@78@01  $FPM) (Seq_index xs@24@01 1)) $Perm.Write))
(assert (<= ($FVF.perm_f (as pm@78@01  $FPM) (Seq_index xs@24@01 0)) $Perm.Write))
; [eval] i < |xs|
; [eval] |xs|
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@77@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@77@01  $FPM) r))
  :qid |qp.resPrmSumDef36|)))
(assert (=>
  (not (<= 0 i@76@01))
  (and
    (not (<= 0 i@76@01))
    (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
    (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@77@01  $FPM) r) $Perm.Write)
      :pattern ((inv@30@01 r))
      :qid |qp-fld-prm-bnd|))
    (<= ($FVF.perm_f (as pm@77@01  $FPM) (Seq_index xs@24@01 1)) $Perm.Write)
    (<= ($FVF.perm_f (as pm@77@01  $FPM) (Seq_index xs@24@01 0)) $Perm.Write))))
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@78@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@78@01  $FPM) r))
  :qid |qp.resPrmSumDef37|)))
(assert (=>
  (<= 0 i@76@01)
  (and
    (<= 0 i@76@01)
    (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
    (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@78@01  $FPM) r) $Perm.Write)
      :pattern ((inv@30@01 r))
      :qid |qp-fld-prm-bnd|))
    (<= ($FVF.perm_f (as pm@78@01  $FPM) (Seq_index xs@24@01 1)) $Perm.Write)
    (<= ($FVF.perm_f (as pm@78@01  $FPM) (Seq_index xs@24@01 0)) $Perm.Write))))
(assert (or (<= 0 i@76@01) (not (<= 0 i@76@01))))
(assert (and (<= 0 i@76@01) (< i@76@01 (Seq_length xs@24@01))))
; [eval] xs[i]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@76@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@79@01 ($Ref) Int)
(declare-fun img@80@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@77@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@77@01  $FPM) r))
  :qid |qp.resPrmSumDef36|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@78@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@78@01  $FPM) r))
  :qid |qp.resPrmSumDef37|)))
; Nested auxiliary terms: non-globals
(assert (forall ((i@76@01 Int)) (!
  (=>
    (and (<= 0 i@76@01) (< i@76@01 (Seq_length xs@24@01)))
    (and
      (=>
        (not (<= 0 i@76@01))
        (and
          (not (<= 0 i@76@01))
          (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
          (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
          (forall ((r $Ref)) (!
            (<= ($FVF.perm_f (as pm@77@01  $FPM) r) $Perm.Write)
            :pattern ((inv@30@01 r))
            :qid |qp-fld-prm-bnd|))
          (<=
            ($FVF.perm_f (as pm@77@01  $FPM) (Seq_index xs@24@01 1))
            $Perm.Write)
          (<=
            ($FVF.perm_f (as pm@77@01  $FPM) (Seq_index xs@24@01 0))
            $Perm.Write)))
      (=>
        (<= 0 i@76@01)
        (and
          (<= 0 i@76@01)
          (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
          (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
          (forall ((r $Ref)) (!
            (<= ($FVF.perm_f (as pm@78@01  $FPM) r) $Perm.Write)
            :pattern ((inv@30@01 r))
            :qid |qp-fld-prm-bnd|))
          (<=
            ($FVF.perm_f (as pm@78@01  $FPM) (Seq_index xs@24@01 1))
            $Perm.Write)
          (<=
            ($FVF.perm_f (as pm@78@01  $FPM) (Seq_index xs@24@01 0))
            $Perm.Write)))
      (or (<= 0 i@76@01) (not (<= 0 i@76@01)))))
  :pattern ((Seq_index xs@24@01 i@76@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@76@01 Int) (i2@76@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@76@01) (< i1@76@01 (Seq_length xs@24@01)))
      (and (<= 0 i2@76@01) (< i2@76@01 (Seq_length xs@24@01)))
      (= (Seq_index xs@24@01 i1@76@01) (Seq_index xs@24@01 i2@76@01)))
    (= i1@76@01 i2@76@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@76@01 Int)) (!
  (=>
    (and (<= 0 i@76@01) (< i@76@01 (Seq_length xs@24@01)))
    (and
      (= (inv@79@01 (Seq_index xs@24@01 i@76@01)) i@76@01)
      (img@80@01 (Seq_index xs@24@01 i@76@01))))
  :pattern ((Seq_index xs@24@01 i@76@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@80@01 r)
      (and (<= 0 (inv@79@01 r)) (< (inv@79@01 r) (Seq_length xs@24@01))))
    (= (Seq_index xs@24@01 (inv@79@01 r)) r))
  :pattern ((inv@79@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@79@01 r)) (< (inv@79@01 r) (Seq_length xs@24@01)))
      (img@80@01 r)
      (= r (Seq_index xs@24@01 (inv@79@01 r))))
    (>
      (+
        (+
          (ite
            (and
              (img@31@01 r)
              (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
            (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
            $Perm.No)
          (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
        (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-11610|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@81@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@81@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@79@01 r)) (< (inv@79@01 r) (Seq_length xs@24@01)))
        (img@80@01 r)))
    (=>
      (and
        (and (<= 0 (inv@79@01 r)) (< (inv@79@01 r) (Seq_length xs@24@01)))
        (img@80@01 r))
      (Set_in r ($FVF.domain_f (as sm@81@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@81@01  $FVF<f>))))
  :qid |qp.fvfDomDef41|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@79@01 r)) (< (inv@79@01 r) (Seq_length xs@24@01)))
        (img@80@01 r))
      (ite
        (and
          (img@31@01 r)
          (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
        (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
        false))
    (= ($FVF.lookup_f (as sm@81@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@81@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef38|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@79@01 r)) (< (inv@79@01 r) (Seq_length xs@24@01)))
        (img@80@01 r))
      (= r (Seq_index xs@24@01 1)))
    (=
      ($FVF.lookup_f (as sm@81@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@81@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef39|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@79@01 r)) (< (inv@79@01 r) (Seq_length xs@24@01)))
        (img@80@01 r))
      (= r (Seq_index xs@24@01 0)))
    (=
      ($FVF.lookup_f (as sm@81@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@81@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :qid |qp.fvfValDef40|)))
; [eval] |xs| > 3
; [eval] |xs|
(assert (fun02%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@81@01  $FVF<f>))
    $Snap.unit)) xs@24@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@31@01 r)
        (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
      (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@72@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@72@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 1))
    (=
      ($FVF.lookup_f (as sm@72@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@72@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 0))
    (=
      ($FVF.lookup_f (as sm@72@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@72@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :qid |qp.fvfValDef30|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@73@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@73@01  $FPM) r))
  :qid |qp.resPrmSumDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@31@01 r)
        (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
      (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@74@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@74@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef32|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 1))
    (=
      ($FVF.lookup_f (as sm@74@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@74@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef33|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 0))
    (=
      ($FVF.lookup_f (as sm@74@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@74@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :qid |qp.fvfValDef34|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@75@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@75@01  $FPM) r))
  :qid |qp.resPrmSumDef35|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@77@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@77@01  $FPM) r))
  :qid |qp.resPrmSumDef36|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@78@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@78@01  $FPM) r))
  :qid |qp.resPrmSumDef37|)))
(assert (forall ((i@76@01 Int)) (!
  (=>
    (and (<= 0 i@76@01) (< i@76@01 (Seq_length xs@24@01)))
    (and
      (= (inv@79@01 (Seq_index xs@24@01 i@76@01)) i@76@01)
      (img@80@01 (Seq_index xs@24@01 i@76@01))))
  :pattern ((Seq_index xs@24@01 i@76@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@80@01 r)
      (and (<= 0 (inv@79@01 r)) (< (inv@79@01 r) (Seq_length xs@24@01))))
    (= (Seq_index xs@24@01 (inv@79@01 r)) r))
  :pattern ((inv@79@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@81@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@79@01 r)) (< (inv@79@01 r) (Seq_length xs@24@01)))
        (img@80@01 r)))
    (=>
      (and
        (and (<= 0 (inv@79@01 r)) (< (inv@79@01 r) (Seq_length xs@24@01)))
        (img@80@01 r))
      (Set_in r ($FVF.domain_f (as sm@81@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@81@01  $FVF<f>))))
  :qid |qp.fvfDomDef41|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@79@01 r)) (< (inv@79@01 r) (Seq_length xs@24@01)))
        (img@80@01 r))
      (ite
        (and
          (img@31@01 r)
          (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
        (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
        false))
    (= ($FVF.lookup_f (as sm@81@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@81@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef38|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@79@01 r)) (< (inv@79@01 r) (Seq_length xs@24@01)))
        (img@80@01 r))
      (= r (Seq_index xs@24@01 1)))
    (=
      ($FVF.lookup_f (as sm@81@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@81@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef39|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@79@01 r)) (< (inv@79@01 r) (Seq_length xs@24@01)))
        (img@80@01 r))
      (= r (Seq_index xs@24@01 0)))
    (=
      ($FVF.lookup_f (as sm@81@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@81@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :qid |qp.fvfValDef40|)))
(assert (and
  (forall ((i@70@01 Int) (j@71@01 Int)) (!
    (=>
      (and
        (>= i@70@01 0)
        (and
          (< i@70@01 (Seq_length xs@24@01))
          (and
            (>= j@71@01 0)
            (and (< j@71@01 (Seq_length xs@24@01)) (not (= i@70@01 j@71@01))))))
      (not (= (Seq_index xs@24@01 i@70@01) (Seq_index xs@24@01 j@71@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@22@12@22@106|))
  (forall ((i@76@01 Int)) (!
    (=>
      (and (<= 0 i@76@01) (< i@76@01 (Seq_length xs@24@01)))
      (and
        (=>
          (not (<= 0 i@76@01))
          (and
            (not (<= 0 i@76@01))
            (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
            (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
            (forall ((r $Ref)) (!
              (<= ($FVF.perm_f (as pm@77@01  $FPM) r) $Perm.Write)
              :pattern ((inv@30@01 r))
              :qid |qp-fld-prm-bnd|))
            (<=
              ($FVF.perm_f (as pm@77@01  $FPM) (Seq_index xs@24@01 1))
              $Perm.Write)
            (<=
              ($FVF.perm_f (as pm@77@01  $FPM) (Seq_index xs@24@01 0))
              $Perm.Write)))
        (=>
          (<= 0 i@76@01)
          (and
            (<= 0 i@76@01)
            (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
            (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
            (forall ((r $Ref)) (!
              (<= ($FVF.perm_f (as pm@78@01  $FPM) r) $Perm.Write)
              :pattern ((inv@30@01 r))
              :qid |qp-fld-prm-bnd|))
            (<=
              ($FVF.perm_f (as pm@78@01  $FPM) (Seq_index xs@24@01 1))
              $Perm.Write)
            (<=
              ($FVF.perm_f (as pm@78@01  $FPM) (Seq_index xs@24@01 0))
              $Perm.Write)))
        (or (<= 0 i@76@01) (not (<= 0 i@76@01)))))
    :pattern ((Seq_index xs@24@01 i@76@01))
    :qid |f-aux|))
  (fun02%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<f>To$Snap (as sm@81@01  $FVF<f>))
      $Snap.unit)) xs@24@01)))
(push) ; 3
(assert (not (=
  (fun02 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<f>To$Snap (as sm@81@01  $FVF<f>))
      $Snap.unit)) xs@24@01)
  14)))
(check-sat)
; unknown
(pop) ; 3
; 0.07s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
(declare-const sm@82@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 0))
    (=
      ($FVF.lookup_f (as sm@82@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@82@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :qid |qp.fvfValDef42|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 1))
    (=
      ($FVF.lookup_f (as sm@82@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@82@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef43|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@31@01 r)
        (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
      (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@82@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@82@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef44|)))
(declare-const pm@83@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@83@01  $FPM) r)
    (+
      (+
        (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite
        (and
          (img@31@01 r)
          (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
        (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@83@01  $FPM) r))
  :qid |qp.resPrmSumDef45|)))
(assert (<= ($FVF.perm_f (as pm@83@01  $FPM) (Seq_index xs@24@01 0)) $Perm.Write))
(assert (<= ($FVF.perm_f (as pm@83@01  $FPM) (Seq_index xs@24@01 1)) $Perm.Write))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@83@01  $FPM) r) $Perm.Write)
  :pattern ((inv@30@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] fun02(xs) == 14
; [eval] fun02(xs)
(set-option :timeout 0)
(push) ; 3
; [eval] (forall i: Int, j: Int ::i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j])
(declare-const i@84@01 Int)
(declare-const j@85@01 Int)
(push) ; 4
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j]
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j)))
; [eval] i >= 0
(push) ; 5
; [then-branch: 48 | !(i@84@01 >= 0) | live]
; [else-branch: 48 | i@84@01 >= 0 | live]
(push) ; 6
; [then-branch: 48 | !(i@84@01 >= 0)]
(assert (not (>= i@84@01 0)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 48 | i@84@01 >= 0]
(assert (>= i@84@01 0))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] i < |xs|
; [eval] |xs|
(set-option :timeout 0)
(push) ; 7
; [then-branch: 49 | !(i@84@01 < |xs@24@01|) | live]
; [else-branch: 49 | i@84@01 < |xs@24@01| | live]
(push) ; 8
; [then-branch: 49 | !(i@84@01 < |xs@24@01|)]
(assert (not (< i@84@01 (Seq_length xs@24@01))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
(check-sat)
; unknown
(pop) ; 9
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 9
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 9
; 0.01s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
(declare-const sm@86@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@31@01 r)
        (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
      (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@86@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@86@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef46|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 1))
    (=
      ($FVF.lookup_f (as sm@86@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@86@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef47|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 0))
    (=
      ($FVF.lookup_f (as sm@86@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@86@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :qid |qp.fvfValDef48|)))
(declare-const pm@87@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@87@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@87@01  $FPM) r))
  :qid |qp.resPrmSumDef49|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@87@01  $FPM) r) $Perm.Write)
  :pattern ((inv@30@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@87@01  $FPM) (Seq_index xs@24@01 1)) $Perm.Write))
(assert (<= ($FVF.perm_f (as pm@87@01  $FPM) (Seq_index xs@24@01 0)) $Perm.Write))
(pop) ; 8
(set-option :timeout 0)
(push) ; 8
; [else-branch: 49 | i@84@01 < |xs@24@01|]
(assert (< i@84@01 (Seq_length xs@24@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
(check-sat)
; unknown
(pop) ; 9
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 9
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 9
; 0.01s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
(declare-const sm@88@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@31@01 r)
        (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
      (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@88@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@88@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef50|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 1))
    (=
      ($FVF.lookup_f (as sm@88@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@88@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef51|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 0))
    (=
      ($FVF.lookup_f (as sm@88@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@88@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :qid |qp.fvfValDef52|)))
(declare-const pm@89@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@89@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@89@01  $FPM) r))
  :qid |qp.resPrmSumDef53|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@89@01  $FPM) r) $Perm.Write)
  :pattern ((inv@30@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@89@01  $FPM) (Seq_index xs@24@01 1)) $Perm.Write))
(assert (<= ($FVF.perm_f (as pm@89@01  $FPM) (Seq_index xs@24@01 0)) $Perm.Write))
; [eval] j >= 0
(set-option :timeout 0)
(push) ; 9
; [then-branch: 50 | !(j@85@01 >= 0) | live]
; [else-branch: 50 | j@85@01 >= 0 | live]
(push) ; 10
; [then-branch: 50 | !(j@85@01 >= 0)]
(assert (not (>= j@85@01 0)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
(check-sat)
; unknown
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(pop) ; 10
(set-option :timeout 0)
(push) ; 10
; [else-branch: 50 | j@85@01 >= 0]
(assert (>= j@85@01 0))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
(check-sat)
; unknown
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] j < |xs|
; [eval] |xs|
(set-option :timeout 0)
(push) ; 11
; [then-branch: 51 | !(j@85@01 < |xs@24@01|) | live]
; [else-branch: 51 | j@85@01 < |xs@24@01| | live]
(push) ; 12
; [then-branch: 51 | !(j@85@01 < |xs@24@01|)]
(assert (not (< j@85@01 (Seq_length xs@24@01))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
(check-sat)
; unknown
(pop) ; 13
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 13
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 13
; 0.01s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(pop) ; 12
(set-option :timeout 0)
(push) ; 12
; [else-branch: 51 | j@85@01 < |xs@24@01|]
(assert (< j@85@01 (Seq_length xs@24@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
(check-sat)
; unknown
(pop) ; 13
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] i != j
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=>
  (not (< j@85@01 (Seq_length xs@24@01)))
  (and
    (not (< j@85@01 (Seq_length xs@24@01)))
    (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
    (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1))))))
; Joined path conditions
(assert (=>
  (< j@85@01 (Seq_length xs@24@01))
  (and
    (< j@85@01 (Seq_length xs@24@01))
    (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
    (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1))))))
(assert (or (< j@85@01 (Seq_length xs@24@01)) (not (< j@85@01 (Seq_length xs@24@01)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (not (>= j@85@01 0))
  (and
    (not (>= j@85@01 0))
    (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
    (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0))))))
; Joined path conditions
(assert (=>
  (>= j@85@01 0)
  (and
    (>= j@85@01 0)
    (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
    (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
    (=>
      (not (< j@85@01 (Seq_length xs@24@01)))
      (and
        (not (< j@85@01 (Seq_length xs@24@01)))
        (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
        (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
    (=>
      (< j@85@01 (Seq_length xs@24@01))
      (and
        (< j@85@01 (Seq_length xs@24@01))
        (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
        (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
    (or
      (< j@85@01 (Seq_length xs@24@01))
      (not (< j@85@01 (Seq_length xs@24@01)))))))
(assert (or (>= j@85@01 0) (not (>= j@85@01 0))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@31@01 r)
        (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
      (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@86@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@86@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef46|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 1))
    (=
      ($FVF.lookup_f (as sm@86@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@86@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef47|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 0))
    (=
      ($FVF.lookup_f (as sm@86@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@86@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :qid |qp.fvfValDef48|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@87@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@87@01  $FPM) r))
  :qid |qp.resPrmSumDef49|)))
(assert (=>
  (not (< i@84@01 (Seq_length xs@24@01)))
  (and
    (not (< i@84@01 (Seq_length xs@24@01)))
    (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
    (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@87@01  $FPM) r) $Perm.Write)
      :pattern ((inv@30@01 r))
      :qid |qp-fld-prm-bnd|))
    (<= ($FVF.perm_f (as pm@87@01  $FPM) (Seq_index xs@24@01 1)) $Perm.Write)
    (<= ($FVF.perm_f (as pm@87@01  $FPM) (Seq_index xs@24@01 0)) $Perm.Write))))
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@31@01 r)
        (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
      (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@88@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@88@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef50|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 1))
    (=
      ($FVF.lookup_f (as sm@88@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@88@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef51|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 0))
    (=
      ($FVF.lookup_f (as sm@88@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@88@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :qid |qp.fvfValDef52|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@89@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@89@01  $FPM) r))
  :qid |qp.resPrmSumDef53|)))
(assert (=>
  (< i@84@01 (Seq_length xs@24@01))
  (and
    (< i@84@01 (Seq_length xs@24@01))
    (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
    (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@89@01  $FPM) r) $Perm.Write)
      :pattern ((inv@30@01 r))
      :qid |qp-fld-prm-bnd|))
    (<= ($FVF.perm_f (as pm@89@01  $FPM) (Seq_index xs@24@01 1)) $Perm.Write)
    (<= ($FVF.perm_f (as pm@89@01  $FPM) (Seq_index xs@24@01 0)) $Perm.Write)
    (=>
      (not (>= j@85@01 0))
      (and
        (not (>= j@85@01 0))
        (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
        (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
    (=>
      (>= j@85@01 0)
      (and
        (>= j@85@01 0)
        (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
        (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
        (=>
          (not (< j@85@01 (Seq_length xs@24@01)))
          (and
            (not (< j@85@01 (Seq_length xs@24@01)))
            (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
            (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
        (=>
          (< j@85@01 (Seq_length xs@24@01))
          (and
            (< j@85@01 (Seq_length xs@24@01))
            (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
            (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
        (or
          (< j@85@01 (Seq_length xs@24@01))
          (not (< j@85@01 (Seq_length xs@24@01))))))
    (or (>= j@85@01 0) (not (>= j@85@01 0))))))
(assert (or (< i@84@01 (Seq_length xs@24@01)) (not (< i@84@01 (Seq_length xs@24@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (not (>= i@84@01 0))
  (and
    (not (>= i@84@01 0))
    (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
    (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0))))))
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@31@01 r)
        (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
      (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@86@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@86@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef46|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 1))
    (=
      ($FVF.lookup_f (as sm@86@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@86@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef47|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 0))
    (=
      ($FVF.lookup_f (as sm@86@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@86@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :qid |qp.fvfValDef48|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@87@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@87@01  $FPM) r))
  :qid |qp.resPrmSumDef49|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@31@01 r)
        (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
      (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@88@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@88@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef50|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 1))
    (=
      ($FVF.lookup_f (as sm@88@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@88@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef51|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 0))
    (=
      ($FVF.lookup_f (as sm@88@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@88@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :qid |qp.fvfValDef52|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@89@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@89@01  $FPM) r))
  :qid |qp.resPrmSumDef53|)))
(assert (=>
  (>= i@84@01 0)
  (and
    (>= i@84@01 0)
    (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
    (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
    (=>
      (not (< i@84@01 (Seq_length xs@24@01)))
      (and
        (not (< i@84@01 (Seq_length xs@24@01)))
        (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
        (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
        (forall ((r $Ref)) (!
          (<= ($FVF.perm_f (as pm@87@01  $FPM) r) $Perm.Write)
          :pattern ((inv@30@01 r))
          :qid |qp-fld-prm-bnd|))
        (<= ($FVF.perm_f (as pm@87@01  $FPM) (Seq_index xs@24@01 1)) $Perm.Write)
        (<= ($FVF.perm_f (as pm@87@01  $FPM) (Seq_index xs@24@01 0)) $Perm.Write)))
    (=>
      (< i@84@01 (Seq_length xs@24@01))
      (and
        (< i@84@01 (Seq_length xs@24@01))
        (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
        (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
        (forall ((r $Ref)) (!
          (<= ($FVF.perm_f (as pm@89@01  $FPM) r) $Perm.Write)
          :pattern ((inv@30@01 r))
          :qid |qp-fld-prm-bnd|))
        (<= ($FVF.perm_f (as pm@89@01  $FPM) (Seq_index xs@24@01 1)) $Perm.Write)
        (<= ($FVF.perm_f (as pm@89@01  $FPM) (Seq_index xs@24@01 0)) $Perm.Write)
        (=>
          (not (>= j@85@01 0))
          (and
            (not (>= j@85@01 0))
            (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
            (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
        (=>
          (>= j@85@01 0)
          (and
            (>= j@85@01 0)
            (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
            (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
            (=>
              (not (< j@85@01 (Seq_length xs@24@01)))
              (and
                (not (< j@85@01 (Seq_length xs@24@01)))
                (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
                (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
            (=>
              (< j@85@01 (Seq_length xs@24@01))
              (and
                (< j@85@01 (Seq_length xs@24@01))
                (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
                (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
            (or
              (< j@85@01 (Seq_length xs@24@01))
              (not (< j@85@01 (Seq_length xs@24@01))))))
        (or (>= j@85@01 0) (not (>= j@85@01 0)))))
    (or
      (< i@84@01 (Seq_length xs@24@01))
      (not (< i@84@01 (Seq_length xs@24@01)))))))
(assert (or (>= i@84@01 0) (not (>= i@84@01 0))))
(set-option :timeout 0)
(push) ; 5
; [then-branch: 52 | i@84@01 >= 0 && i@84@01 < |xs@24@01| && j@85@01 >= 0 && j@85@01 < |xs@24@01| && i@84@01 != j@85@01 | live]
; [else-branch: 52 | !(i@84@01 >= 0 && i@84@01 < |xs@24@01| && j@85@01 >= 0 && j@85@01 < |xs@24@01| && i@84@01 != j@85@01) | live]
(push) ; 6
; [then-branch: 52 | i@84@01 >= 0 && i@84@01 < |xs@24@01| && j@85@01 >= 0 && j@85@01 < |xs@24@01| && i@84@01 != j@85@01]
(assert (and
  (>= i@84@01 0)
  (and
    (< i@84@01 (Seq_length xs@24@01))
    (and
      (>= j@85@01 0)
      (and (< j@85@01 (Seq_length xs@24@01)) (not (= i@84@01 j@85@01)))))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] xs[i] != xs[j]
; [eval] xs[i]
; [eval] xs[j]
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 52 | !(i@84@01 >= 0 && i@84@01 < |xs@24@01| && j@85@01 >= 0 && j@85@01 < |xs@24@01| && i@84@01 != j@85@01)]
(assert (not
  (and
    (>= i@84@01 0)
    (and
      (< i@84@01 (Seq_length xs@24@01))
      (and
        (>= j@85@01 0)
        (and (< j@85@01 (Seq_length xs@24@01)) (not (= i@84@01 j@85@01))))))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (>= i@84@01 0)
    (and
      (< i@84@01 (Seq_length xs@24@01))
      (and
        (>= j@85@01 0)
        (and (< j@85@01 (Seq_length xs@24@01)) (not (= i@84@01 j@85@01))))))
  (and
    (>= i@84@01 0)
    (< i@84@01 (Seq_length xs@24@01))
    (>= j@85@01 0)
    (< j@85@01 (Seq_length xs@24@01))
    (not (= i@84@01 j@85@01))
    (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
    (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0))))))
; Joined path conditions
(assert (=>
  (not
    (and
      (>= i@84@01 0)
      (and
        (< i@84@01 (Seq_length xs@24@01))
        (and
          (>= j@85@01 0)
          (and (< j@85@01 (Seq_length xs@24@01)) (not (= i@84@01 j@85@01)))))))
  (and
    (not
      (and
        (>= i@84@01 0)
        (and
          (< i@84@01 (Seq_length xs@24@01))
          (and
            (>= j@85@01 0)
            (and (< j@85@01 (Seq_length xs@24@01)) (not (= i@84@01 j@85@01)))))))
    (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
    (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0))))))
(assert (or
  (not
    (and
      (>= i@84@01 0)
      (and
        (< i@84@01 (Seq_length xs@24@01))
        (and
          (>= j@85@01 0)
          (and (< j@85@01 (Seq_length xs@24@01)) (not (= i@84@01 j@85@01)))))))
  (and
    (>= i@84@01 0)
    (and
      (< i@84@01 (Seq_length xs@24@01))
      (and
        (>= j@85@01 0)
        (and (< j@85@01 (Seq_length xs@24@01)) (not (= i@84@01 j@85@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@31@01 r)
        (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
      (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@86@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@86@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef46|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 1))
    (=
      ($FVF.lookup_f (as sm@86@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@86@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef47|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 0))
    (=
      ($FVF.lookup_f (as sm@86@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@86@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :qid |qp.fvfValDef48|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@87@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@87@01  $FPM) r))
  :qid |qp.resPrmSumDef49|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@31@01 r)
        (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
      (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@88@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@88@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef50|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 1))
    (=
      ($FVF.lookup_f (as sm@88@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@88@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef51|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 0))
    (=
      ($FVF.lookup_f (as sm@88@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@88@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :qid |qp.fvfValDef52|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@89@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@89@01  $FPM) r))
  :qid |qp.resPrmSumDef53|)))
; Nested auxiliary terms: non-globals (aux)
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((i@84@01 Int) (j@85@01 Int)) (!
  (=>
    (and
      (>= i@84@01 0)
      (and
        (< i@84@01 (Seq_length xs@24@01))
        (and
          (>= j@85@01 0)
          (and (< j@85@01 (Seq_length xs@24@01)) (not (= i@84@01 j@85@01))))))
    (not (= (Seq_index xs@24@01 i@84@01) (Seq_index xs@24@01 j@85@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@22@12@22@106|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@84@01 Int) (j@85@01 Int)) (!
  (=>
    (and
      (>= i@84@01 0)
      (and
        (< i@84@01 (Seq_length xs@24@01))
        (and
          (>= j@85@01 0)
          (and (< j@85@01 (Seq_length xs@24@01)) (not (= i@84@01 j@85@01))))))
    (not (= (Seq_index xs@24@01 i@84@01) (Seq_index xs@24@01 j@85@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@22@12@22@106|)))
(declare-const i@90@01 Int)
(push) ; 4
; [eval] 0 <= i && i < |xs|
; [eval] 0 <= i
(push) ; 5
; [then-branch: 53 | !(0 <= i@90@01) | live]
; [else-branch: 53 | 0 <= i@90@01 | live]
(push) ; 6
; [then-branch: 53 | !(0 <= i@90@01)]
(assert (not (<= 0 i@90@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 53 | 0 <= i@90@01]
(assert (<= 0 i@90@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] i < |xs|
; [eval] |xs|
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (not (<= 0 i@90@01))
  (and
    (not (<= 0 i@90@01))
    (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
    (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0))))))
; Joined path conditions
(assert (=>
  (<= 0 i@90@01)
  (and
    (<= 0 i@90@01)
    (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
    (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0))))))
(assert (or (<= 0 i@90@01) (not (<= 0 i@90@01))))
(assert (and (<= 0 i@90@01) (< i@90@01 (Seq_length xs@24@01))))
; [eval] xs[i]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@90@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@91@01 ($Ref) Int)
(declare-fun img@92@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@90@01 Int)) (!
  (=>
    (and (<= 0 i@90@01) (< i@90@01 (Seq_length xs@24@01)))
    (and
      (=>
        (not (<= 0 i@90@01))
        (and
          (not (<= 0 i@90@01))
          (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
          (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
      (=>
        (<= 0 i@90@01)
        (and
          (<= 0 i@90@01)
          (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
          (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
      (or (<= 0 i@90@01) (not (<= 0 i@90@01)))))
  :pattern ((Seq_index xs@24@01 i@90@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@90@01 Int) (i2@90@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@90@01) (< i1@90@01 (Seq_length xs@24@01)))
      (and (<= 0 i2@90@01) (< i2@90@01 (Seq_length xs@24@01)))
      (= (Seq_index xs@24@01 i1@90@01) (Seq_index xs@24@01 i2@90@01)))
    (= i1@90@01 i2@90@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@90@01 Int)) (!
  (=>
    (and (<= 0 i@90@01) (< i@90@01 (Seq_length xs@24@01)))
    (and
      (= (inv@91@01 (Seq_index xs@24@01 i@90@01)) i@90@01)
      (img@92@01 (Seq_index xs@24@01 i@90@01))))
  :pattern ((Seq_index xs@24@01 i@90@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@92@01 r)
      (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (Seq_length xs@24@01))))
    (= (Seq_index xs@24@01 (inv@91@01 r)) r))
  :pattern ((inv@91@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (Seq_length xs@24@01)))
      (img@92@01 r)
      (= r (Seq_index xs@24@01 (inv@91@01 r))))
    (>
      (+
        (+
          (ite
            (and
              (img@31@01 r)
              (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
            (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
            $Perm.No)
          (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No))
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-11612|))))
(check-sat)
; unsat
(pop) ; 4
; 0.02s
; (get-info :all-statistics)
(declare-const sm@93@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@93@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (Seq_length xs@24@01)))
        (img@92@01 r)))
    (=>
      (and
        (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (Seq_length xs@24@01)))
        (img@92@01 r))
      (Set_in r ($FVF.domain_f (as sm@93@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@93@01  $FVF<f>))))
  :qid |qp.fvfDomDef57|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (Seq_length xs@24@01)))
        (img@92@01 r))
      (= r (Seq_index xs@24@01 0)))
    (=
      ($FVF.lookup_f (as sm@93@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@93@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :qid |qp.fvfValDef54|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (Seq_length xs@24@01)))
        (img@92@01 r))
      (= r (Seq_index xs@24@01 1)))
    (=
      ($FVF.lookup_f (as sm@93@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@93@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef55|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (Seq_length xs@24@01)))
        (img@92@01 r))
      (ite
        (and
          (img@31@01 r)
          (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
        (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
        false))
    (= ($FVF.lookup_f (as sm@93@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@93@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef56|)))
; [eval] |xs| > 3
; [eval] |xs|
(assert (fun02%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@93@01  $FVF<f>))
    $Snap.unit)) xs@24@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@31@01 r)
        (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
      (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@86@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@86@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef46|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 1))
    (=
      ($FVF.lookup_f (as sm@86@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@86@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef47|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 0))
    (=
      ($FVF.lookup_f (as sm@86@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@86@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :qid |qp.fvfValDef48|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@87@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@87@01  $FPM) r))
  :qid |qp.resPrmSumDef49|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@31@01 r)
        (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
      (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@88@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@88@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef50|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 1))
    (=
      ($FVF.lookup_f (as sm@88@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@88@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef51|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 0))
    (=
      ($FVF.lookup_f (as sm@88@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@88@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :qid |qp.fvfValDef52|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@89@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@89@01  $FPM) r))
  :qid |qp.resPrmSumDef53|)))
(assert (forall ((i@90@01 Int)) (!
  (=>
    (and (<= 0 i@90@01) (< i@90@01 (Seq_length xs@24@01)))
    (and
      (= (inv@91@01 (Seq_index xs@24@01 i@90@01)) i@90@01)
      (img@92@01 (Seq_index xs@24@01 i@90@01))))
  :pattern ((Seq_index xs@24@01 i@90@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@92@01 r)
      (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (Seq_length xs@24@01))))
    (= (Seq_index xs@24@01 (inv@91@01 r)) r))
  :pattern ((inv@91@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@93@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (Seq_length xs@24@01)))
        (img@92@01 r)))
    (=>
      (and
        (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (Seq_length xs@24@01)))
        (img@92@01 r))
      (Set_in r ($FVF.domain_f (as sm@93@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@93@01  $FVF<f>))))
  :qid |qp.fvfDomDef57|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (Seq_length xs@24@01)))
        (img@92@01 r))
      (= r (Seq_index xs@24@01 0)))
    (=
      ($FVF.lookup_f (as sm@93@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@93@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :qid |qp.fvfValDef54|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (Seq_length xs@24@01)))
        (img@92@01 r))
      (= r (Seq_index xs@24@01 1)))
    (=
      ($FVF.lookup_f (as sm@93@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@93@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef55|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@91@01 r)) (< (inv@91@01 r) (Seq_length xs@24@01)))
        (img@92@01 r))
      (ite
        (and
          (img@31@01 r)
          (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
        (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
        false))
    (= ($FVF.lookup_f (as sm@93@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@93@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef56|)))
(assert (and
  (forall ((i@84@01 Int) (j@85@01 Int)) (!
    (=>
      (and
        (>= i@84@01 0)
        (and
          (< i@84@01 (Seq_length xs@24@01))
          (and
            (>= j@85@01 0)
            (and (< j@85@01 (Seq_length xs@24@01)) (not (= i@84@01 j@85@01))))))
      (not (= (Seq_index xs@24@01 i@84@01) (Seq_index xs@24@01 j@85@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@22@12@22@106|))
  (forall ((i@90@01 Int)) (!
    (=>
      (and (<= 0 i@90@01) (< i@90@01 (Seq_length xs@24@01)))
      (and
        (=>
          (not (<= 0 i@90@01))
          (and
            (not (<= 0 i@90@01))
            (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
            (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
        (=>
          (<= 0 i@90@01)
          (and
            (<= 0 i@90@01)
            (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
            (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
        (or (<= 0 i@90@01) (not (<= 0 i@90@01)))))
    :pattern ((Seq_index xs@24@01 i@90@01))
    :qid |f-aux|))
  (fun02%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<f>To$Snap (as sm@93@01  $FVF<f>))
      $Snap.unit)) xs@24@01)))
(push) ; 3
(assert (not (=
  (fun02 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<f>To$Snap (as sm@93@01  $FVF<f>))
      $Snap.unit)) xs@24@01)
  14)))
(check-sat)
; unknown
(pop) ; 3
; 0.09s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] fun02(xs) == 14
; [eval] fun02(xs)
(set-option :timeout 0)
(push) ; 3
; [eval] (forall i: Int, j: Int ::i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j])
(declare-const i@94@01 Int)
(declare-const j@95@01 Int)
(push) ; 4
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j))) ==> xs[i] != xs[j]
; [eval] i >= 0 && (i < |xs| && (j >= 0 && (j < |xs| && i != j)))
; [eval] i >= 0
(push) ; 5
; [then-branch: 54 | !(i@94@01 >= 0) | live]
; [else-branch: 54 | i@94@01 >= 0 | live]
(push) ; 6
; [then-branch: 54 | !(i@94@01 >= 0)]
(assert (not (>= i@94@01 0)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
(declare-const sm@96@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@31@01 r)
        (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
      (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@96@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@96@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef58|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 1))
    (=
      ($FVF.lookup_f (as sm@96@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@96@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef59|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 0))
    (=
      ($FVF.lookup_f (as sm@96@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@96@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :qid |qp.fvfValDef60|)))
(declare-const pm@97@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@97@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@97@01  $FPM) r))
  :qid |qp.resPrmSumDef61|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@97@01  $FPM) r) $Perm.Write)
  :pattern ((inv@30@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@97@01  $FPM) (Seq_index xs@24@01 1)) $Perm.Write))
(assert (<= ($FVF.perm_f (as pm@97@01  $FPM) (Seq_index xs@24@01 0)) $Perm.Write))
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 54 | i@94@01 >= 0]
(assert (>= i@94@01 0))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
(declare-const sm@98@01 $FVF<f>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@31@01 r)
        (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
      (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@98@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@98@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef62|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 1))
    (=
      ($FVF.lookup_f (as sm@98@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@98@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef63|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 0))
    (=
      ($FVF.lookup_f (as sm@98@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@98@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :qid |qp.fvfValDef64|)))
(declare-const pm@99@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@99@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@99@01  $FPM) r))
  :qid |qp.resPrmSumDef65|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@99@01  $FPM) r) $Perm.Write)
  :pattern ((inv@30@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@99@01  $FPM) (Seq_index xs@24@01 1)) $Perm.Write))
(assert (<= ($FVF.perm_f (as pm@99@01  $FPM) (Seq_index xs@24@01 0)) $Perm.Write))
; [eval] i < |xs|
; [eval] |xs|
(set-option :timeout 0)
(push) ; 7
; [then-branch: 55 | !(i@94@01 < |xs@24@01|) | live]
; [else-branch: 55 | i@94@01 < |xs@24@01| | live]
(push) ; 8
; [then-branch: 55 | !(i@94@01 < |xs@24@01|)]
(assert (not (< i@94@01 (Seq_length xs@24@01))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
(check-sat)
; unknown
(pop) ; 9
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 9
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 9
; 0.01s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(pop) ; 8
(set-option :timeout 0)
(push) ; 8
; [else-branch: 55 | i@94@01 < |xs@24@01|]
(assert (< i@94@01 (Seq_length xs@24@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
(check-sat)
; unknown
(pop) ; 9
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 9
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 9
; 0.01s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] j >= 0
(set-option :timeout 0)
(push) ; 9
; [then-branch: 56 | !(j@95@01 >= 0) | live]
; [else-branch: 56 | j@95@01 >= 0 | live]
(push) ; 10
; [then-branch: 56 | !(j@95@01 >= 0)]
(assert (not (>= j@95@01 0)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
(check-sat)
; unknown
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(pop) ; 10
(set-option :timeout 0)
(push) ; 10
; [else-branch: 56 | j@95@01 >= 0]
(assert (>= j@95@01 0))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
(check-sat)
; unknown
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] j < |xs|
; [eval] |xs|
(set-option :timeout 0)
(push) ; 11
; [then-branch: 57 | !(j@95@01 < |xs@24@01|) | live]
; [else-branch: 57 | j@95@01 < |xs@24@01| | live]
(push) ; 12
; [then-branch: 57 | !(j@95@01 < |xs@24@01|)]
(assert (not (< j@95@01 (Seq_length xs@24@01))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
(check-sat)
; unknown
(pop) ; 13
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 13
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 13
; 0.01s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(pop) ; 12
(set-option :timeout 0)
(push) ; 12
; [else-branch: 57 | j@95@01 < |xs@24@01|]
(assert (< j@95@01 (Seq_length xs@24@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
(check-sat)
; unknown
(pop) ; 13
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 13
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 13
; 0.01s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] i != j
(pop) ; 12
(pop) ; 11
; Joined path conditions
(assert (=>
  (not (< j@95@01 (Seq_length xs@24@01)))
  (and
    (not (< j@95@01 (Seq_length xs@24@01)))
    (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
    (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0))))))
; Joined path conditions
(assert (=>
  (< j@95@01 (Seq_length xs@24@01))
  (and
    (< j@95@01 (Seq_length xs@24@01))
    (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
    (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0))))))
(assert (or (< j@95@01 (Seq_length xs@24@01)) (not (< j@95@01 (Seq_length xs@24@01)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (=>
  (not (>= j@95@01 0))
  (and
    (not (>= j@95@01 0))
    (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
    (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1))))))
; Joined path conditions
(assert (=>
  (>= j@95@01 0)
  (and
    (>= j@95@01 0)
    (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
    (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
    (=>
      (not (< j@95@01 (Seq_length xs@24@01)))
      (and
        (not (< j@95@01 (Seq_length xs@24@01)))
        (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
        (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
    (=>
      (< j@95@01 (Seq_length xs@24@01))
      (and
        (< j@95@01 (Seq_length xs@24@01))
        (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
        (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
    (or
      (< j@95@01 (Seq_length xs@24@01))
      (not (< j@95@01 (Seq_length xs@24@01)))))))
(assert (or (>= j@95@01 0) (not (>= j@95@01 0))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  (not (< i@94@01 (Seq_length xs@24@01)))
  (and
    (not (< i@94@01 (Seq_length xs@24@01)))
    (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
    (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0))))))
; Joined path conditions
(assert (=>
  (< i@94@01 (Seq_length xs@24@01))
  (and
    (< i@94@01 (Seq_length xs@24@01))
    (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
    (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
    (=>
      (not (>= j@95@01 0))
      (and
        (not (>= j@95@01 0))
        (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
        (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
    (=>
      (>= j@95@01 0)
      (and
        (>= j@95@01 0)
        (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
        (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
        (=>
          (not (< j@95@01 (Seq_length xs@24@01)))
          (and
            (not (< j@95@01 (Seq_length xs@24@01)))
            (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
            (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
        (=>
          (< j@95@01 (Seq_length xs@24@01))
          (and
            (< j@95@01 (Seq_length xs@24@01))
            (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
            (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
        (or
          (< j@95@01 (Seq_length xs@24@01))
          (not (< j@95@01 (Seq_length xs@24@01))))))
    (or (>= j@95@01 0) (not (>= j@95@01 0))))))
(assert (or (< i@94@01 (Seq_length xs@24@01)) (not (< i@94@01 (Seq_length xs@24@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@31@01 r)
        (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
      (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@96@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@96@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef58|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 1))
    (=
      ($FVF.lookup_f (as sm@96@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@96@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef59|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 0))
    (=
      ($FVF.lookup_f (as sm@96@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@96@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :qid |qp.fvfValDef60|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@97@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@97@01  $FPM) r))
  :qid |qp.resPrmSumDef61|)))
(assert (=>
  (not (>= i@94@01 0))
  (and
    (not (>= i@94@01 0))
    (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
    (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@97@01  $FPM) r) $Perm.Write)
      :pattern ((inv@30@01 r))
      :qid |qp-fld-prm-bnd|))
    (<= ($FVF.perm_f (as pm@97@01  $FPM) (Seq_index xs@24@01 1)) $Perm.Write)
    (<= ($FVF.perm_f (as pm@97@01  $FPM) (Seq_index xs@24@01 0)) $Perm.Write))))
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@31@01 r)
        (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
      (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@98@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@98@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef62|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 1))
    (=
      ($FVF.lookup_f (as sm@98@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@98@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef63|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 0))
    (=
      ($FVF.lookup_f (as sm@98@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@98@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :qid |qp.fvfValDef64|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@99@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@99@01  $FPM) r))
  :qid |qp.resPrmSumDef65|)))
(assert (=>
  (>= i@94@01 0)
  (and
    (>= i@94@01 0)
    (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
    (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@99@01  $FPM) r) $Perm.Write)
      :pattern ((inv@30@01 r))
      :qid |qp-fld-prm-bnd|))
    (<= ($FVF.perm_f (as pm@99@01  $FPM) (Seq_index xs@24@01 1)) $Perm.Write)
    (<= ($FVF.perm_f (as pm@99@01  $FPM) (Seq_index xs@24@01 0)) $Perm.Write)
    (=>
      (not (< i@94@01 (Seq_length xs@24@01)))
      (and
        (not (< i@94@01 (Seq_length xs@24@01)))
        (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
        (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
    (=>
      (< i@94@01 (Seq_length xs@24@01))
      (and
        (< i@94@01 (Seq_length xs@24@01))
        (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
        (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
        (=>
          (not (>= j@95@01 0))
          (and
            (not (>= j@95@01 0))
            (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
            (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
        (=>
          (>= j@95@01 0)
          (and
            (>= j@95@01 0)
            (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
            (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
            (=>
              (not (< j@95@01 (Seq_length xs@24@01)))
              (and
                (not (< j@95@01 (Seq_length xs@24@01)))
                (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
                (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
            (=>
              (< j@95@01 (Seq_length xs@24@01))
              (and
                (< j@95@01 (Seq_length xs@24@01))
                (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
                (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
            (or
              (< j@95@01 (Seq_length xs@24@01))
              (not (< j@95@01 (Seq_length xs@24@01))))))
        (or (>= j@95@01 0) (not (>= j@95@01 0)))))
    (or
      (< i@94@01 (Seq_length xs@24@01))
      (not (< i@94@01 (Seq_length xs@24@01)))))))
(assert (or (>= i@94@01 0) (not (>= i@94@01 0))))
(set-option :timeout 0)
(push) ; 5
; [then-branch: 58 | i@94@01 >= 0 && i@94@01 < |xs@24@01| && j@95@01 >= 0 && j@95@01 < |xs@24@01| && i@94@01 != j@95@01 | live]
; [else-branch: 58 | !(i@94@01 >= 0 && i@94@01 < |xs@24@01| && j@95@01 >= 0 && j@95@01 < |xs@24@01| && i@94@01 != j@95@01) | live]
(push) ; 6
; [then-branch: 58 | i@94@01 >= 0 && i@94@01 < |xs@24@01| && j@95@01 >= 0 && j@95@01 < |xs@24@01| && i@94@01 != j@95@01]
(assert (and
  (>= i@94@01 0)
  (and
    (< i@94@01 (Seq_length xs@24@01))
    (and
      (>= j@95@01 0)
      (and (< j@95@01 (Seq_length xs@24@01)) (not (= i@94@01 j@95@01)))))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@99@01  $FPM) r) $Perm.Write)
  :pattern ((inv@30@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@99@01  $FPM) (Seq_index xs@24@01 1)) $Perm.Write))
(assert (<= ($FVF.perm_f (as pm@99@01  $FPM) (Seq_index xs@24@01 0)) $Perm.Write))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
; [eval] xs[j]
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 58 | !(i@94@01 >= 0 && i@94@01 < |xs@24@01| && j@95@01 >= 0 && j@95@01 < |xs@24@01| && i@94@01 != j@95@01)]
(assert (not
  (and
    (>= i@94@01 0)
    (and
      (< i@94@01 (Seq_length xs@24@01))
      (and
        (>= j@95@01 0)
        (and (< j@95@01 (Seq_length xs@24@01)) (not (= i@94@01 j@95@01))))))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@99@01  $FPM) r) $Perm.Write)
  :pattern ((inv@30@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@99@01  $FPM) (Seq_index xs@24@01 1)) $Perm.Write))
(assert (<= ($FVF.perm_f (as pm@99@01  $FPM) (Seq_index xs@24@01 0)) $Perm.Write))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (>= i@94@01 0)
    (and
      (< i@94@01 (Seq_length xs@24@01))
      (and
        (>= j@95@01 0)
        (and (< j@95@01 (Seq_length xs@24@01)) (not (= i@94@01 j@95@01))))))
  (and
    (>= i@94@01 0)
    (< i@94@01 (Seq_length xs@24@01))
    (>= j@95@01 0)
    (< j@95@01 (Seq_length xs@24@01))
    (not (= i@94@01 j@95@01))
    (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
    (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@99@01  $FPM) r) $Perm.Write)
      :pattern ((inv@30@01 r))
      :qid |qp-fld-prm-bnd|))
    (<= ($FVF.perm_f (as pm@99@01  $FPM) (Seq_index xs@24@01 1)) $Perm.Write)
    (<= ($FVF.perm_f (as pm@99@01  $FPM) (Seq_index xs@24@01 0)) $Perm.Write))))
; Joined path conditions
(assert (=>
  (not
    (and
      (>= i@94@01 0)
      (and
        (< i@94@01 (Seq_length xs@24@01))
        (and
          (>= j@95@01 0)
          (and (< j@95@01 (Seq_length xs@24@01)) (not (= i@94@01 j@95@01)))))))
  (and
    (not
      (and
        (>= i@94@01 0)
        (and
          (< i@94@01 (Seq_length xs@24@01))
          (and
            (>= j@95@01 0)
            (and (< j@95@01 (Seq_length xs@24@01)) (not (= i@94@01 j@95@01)))))))
    (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
    (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@99@01  $FPM) r) $Perm.Write)
      :pattern ((inv@30@01 r))
      :qid |qp-fld-prm-bnd|))
    (<= ($FVF.perm_f (as pm@99@01  $FPM) (Seq_index xs@24@01 1)) $Perm.Write)
    (<= ($FVF.perm_f (as pm@99@01  $FPM) (Seq_index xs@24@01 0)) $Perm.Write))))
(assert (or
  (not
    (and
      (>= i@94@01 0)
      (and
        (< i@94@01 (Seq_length xs@24@01))
        (and
          (>= j@95@01 0)
          (and (< j@95@01 (Seq_length xs@24@01)) (not (= i@94@01 j@95@01)))))))
  (and
    (>= i@94@01 0)
    (and
      (< i@94@01 (Seq_length xs@24@01))
      (and
        (>= j@95@01 0)
        (and (< j@95@01 (Seq_length xs@24@01)) (not (= i@94@01 j@95@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@31@01 r)
        (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
      (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@96@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@96@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef58|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 1))
    (=
      ($FVF.lookup_f (as sm@96@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@96@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef59|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 0))
    (=
      ($FVF.lookup_f (as sm@96@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@96@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :qid |qp.fvfValDef60|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@97@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@97@01  $FPM) r))
  :qid |qp.resPrmSumDef61|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@31@01 r)
        (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
      (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@98@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@98@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef62|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 1))
    (=
      ($FVF.lookup_f (as sm@98@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@98@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef63|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 0))
    (=
      ($FVF.lookup_f (as sm@98@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@98@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :qid |qp.fvfValDef64|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@99@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@99@01  $FPM) r))
  :qid |qp.resPrmSumDef65|)))
; Nested auxiliary terms: non-globals (aux)
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((i@94@01 Int) (j@95@01 Int)) (!
  (=>
    (and
      (>= i@94@01 0)
      (and
        (< i@94@01 (Seq_length xs@24@01))
        (and
          (>= j@95@01 0)
          (and (< j@95@01 (Seq_length xs@24@01)) (not (= i@94@01 j@95@01))))))
    (not (= (Seq_index xs@24@01 i@94@01) (Seq_index xs@24@01 j@95@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@22@12@22@106|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@94@01 Int) (j@95@01 Int)) (!
  (=>
    (and
      (>= i@94@01 0)
      (and
        (< i@94@01 (Seq_length xs@24@01))
        (and
          (>= j@95@01 0)
          (and (< j@95@01 (Seq_length xs@24@01)) (not (= i@94@01 j@95@01))))))
    (not (= (Seq_index xs@24@01 i@94@01) (Seq_index xs@24@01 j@95@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@22@12@22@106|)))
(declare-const i@100@01 Int)
(push) ; 4
; [eval] 0 <= i && i < |xs|
; [eval] 0 <= i
(push) ; 5
; [then-branch: 59 | !(0 <= i@100@01) | live]
; [else-branch: 59 | 0 <= i@100@01 | live]
(push) ; 6
; [then-branch: 59 | !(0 <= i@100@01)]
(assert (not (<= 0 i@100@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(declare-const pm@101@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@101@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@101@01  $FPM) r))
  :qid |qp.resPrmSumDef66|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@101@01  $FPM) r) $Perm.Write)
  :pattern ((inv@30@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@101@01  $FPM) (Seq_index xs@24@01 1)) $Perm.Write))
(assert (<= ($FVF.perm_f (as pm@101@01  $FPM) (Seq_index xs@24@01 0)) $Perm.Write))
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 59 | 0 <= i@100@01]
(assert (<= 0 i@100@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)
    (ite (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1))
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0)))
  (not
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1))
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (and
  (and
    (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 0))
    (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 1)))
  (not
    (=
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) (Seq_index xs@24@01 0))
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) (Seq_index xs@24@01 1)))))))
(check-sat)
; unknown
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
  (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))))
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(declare-const pm@102@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@102@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@102@01  $FPM) r))
  :qid |qp.resPrmSumDef67|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@102@01  $FPM) r) $Perm.Write)
  :pattern ((inv@30@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@102@01  $FPM) (Seq_index xs@24@01 1)) $Perm.Write))
(assert (<= ($FVF.perm_f (as pm@102@01  $FPM) (Seq_index xs@24@01 0)) $Perm.Write))
; [eval] i < |xs|
; [eval] |xs|
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@101@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@101@01  $FPM) r))
  :qid |qp.resPrmSumDef66|)))
(assert (=>
  (not (<= 0 i@100@01))
  (and
    (not (<= 0 i@100@01))
    (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
    (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@101@01  $FPM) r) $Perm.Write)
      :pattern ((inv@30@01 r))
      :qid |qp-fld-prm-bnd|))
    (<= ($FVF.perm_f (as pm@101@01  $FPM) (Seq_index xs@24@01 1)) $Perm.Write)
    (<= ($FVF.perm_f (as pm@101@01  $FPM) (Seq_index xs@24@01 0)) $Perm.Write))))
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@102@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@102@01  $FPM) r))
  :qid |qp.resPrmSumDef67|)))
(assert (=>
  (<= 0 i@100@01)
  (and
    (<= 0 i@100@01)
    (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
    (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@102@01  $FPM) r) $Perm.Write)
      :pattern ((inv@30@01 r))
      :qid |qp-fld-prm-bnd|))
    (<= ($FVF.perm_f (as pm@102@01  $FPM) (Seq_index xs@24@01 1)) $Perm.Write)
    (<= ($FVF.perm_f (as pm@102@01  $FPM) (Seq_index xs@24@01 0)) $Perm.Write))))
(assert (or (<= 0 i@100@01) (not (<= 0 i@100@01))))
(assert (and (<= 0 i@100@01) (< i@100@01 (Seq_length xs@24@01))))
; [eval] xs[i]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@100@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@103@01 ($Ref) Int)
(declare-fun img@104@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@101@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@101@01  $FPM) r))
  :qid |qp.resPrmSumDef66|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@102@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@102@01  $FPM) r))
  :qid |qp.resPrmSumDef67|)))
; Nested auxiliary terms: non-globals
(assert (forall ((i@100@01 Int)) (!
  (=>
    (and (<= 0 i@100@01) (< i@100@01 (Seq_length xs@24@01)))
    (and
      (=>
        (not (<= 0 i@100@01))
        (and
          (not (<= 0 i@100@01))
          (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
          (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
          (forall ((r $Ref)) (!
            (<= ($FVF.perm_f (as pm@101@01  $FPM) r) $Perm.Write)
            :pattern ((inv@30@01 r))
            :qid |qp-fld-prm-bnd|))
          (<=
            ($FVF.perm_f (as pm@101@01  $FPM) (Seq_index xs@24@01 1))
            $Perm.Write)
          (<=
            ($FVF.perm_f (as pm@101@01  $FPM) (Seq_index xs@24@01 0))
            $Perm.Write)))
      (=>
        (<= 0 i@100@01)
        (and
          (<= 0 i@100@01)
          (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
          (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
          (forall ((r $Ref)) (!
            (<= ($FVF.perm_f (as pm@102@01  $FPM) r) $Perm.Write)
            :pattern ((inv@30@01 r))
            :qid |qp-fld-prm-bnd|))
          (<=
            ($FVF.perm_f (as pm@102@01  $FPM) (Seq_index xs@24@01 1))
            $Perm.Write)
          (<=
            ($FVF.perm_f (as pm@102@01  $FPM) (Seq_index xs@24@01 0))
            $Perm.Write)))
      (or (<= 0 i@100@01) (not (<= 0 i@100@01)))))
  :pattern ((Seq_index xs@24@01 i@100@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@100@01 Int) (i2@100@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@100@01) (< i1@100@01 (Seq_length xs@24@01)))
      (and (<= 0 i2@100@01) (< i2@100@01 (Seq_length xs@24@01)))
      (= (Seq_index xs@24@01 i1@100@01) (Seq_index xs@24@01 i2@100@01)))
    (= i1@100@01 i2@100@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@100@01 Int)) (!
  (=>
    (and (<= 0 i@100@01) (< i@100@01 (Seq_length xs@24@01)))
    (and
      (= (inv@103@01 (Seq_index xs@24@01 i@100@01)) i@100@01)
      (img@104@01 (Seq_index xs@24@01 i@100@01))))
  :pattern ((Seq_index xs@24@01 i@100@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@104@01 r)
      (and (<= 0 (inv@103@01 r)) (< (inv@103@01 r) (Seq_length xs@24@01))))
    (= (Seq_index xs@24@01 (inv@103@01 r)) r))
  :pattern ((inv@103@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@103@01 r)) (< (inv@103@01 r) (Seq_length xs@24@01)))
      (img@104@01 r)
      (= r (Seq_index xs@24@01 (inv@103@01 r))))
    (>
      (+
        (+
          (ite
            (and
              (img@31@01 r)
              (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
            (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
            $Perm.No)
          (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
        (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No))
      $Perm.No))
  
  :qid |quant-u-11614|))))
(check-sat)
; unsat
(pop) ; 4
; 0.01s
; (get-info :all-statistics)
(declare-const sm@105@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@105@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@103@01 r)) (< (inv@103@01 r) (Seq_length xs@24@01)))
        (img@104@01 r)))
    (=>
      (and
        (and (<= 0 (inv@103@01 r)) (< (inv@103@01 r) (Seq_length xs@24@01)))
        (img@104@01 r))
      (Set_in r ($FVF.domain_f (as sm@105@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@105@01  $FVF<f>))))
  :qid |qp.fvfDomDef71|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@103@01 r)) (< (inv@103@01 r) (Seq_length xs@24@01)))
        (img@104@01 r))
      (ite
        (and
          (img@31@01 r)
          (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
        (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
        false))
    (= ($FVF.lookup_f (as sm@105@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@105@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef68|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@103@01 r)) (< (inv@103@01 r) (Seq_length xs@24@01)))
        (img@104@01 r))
      (= r (Seq_index xs@24@01 1)))
    (=
      ($FVF.lookup_f (as sm@105@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@105@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef69|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@103@01 r)) (< (inv@103@01 r) (Seq_length xs@24@01)))
        (img@104@01 r))
      (= r (Seq_index xs@24@01 0)))
    (=
      ($FVF.lookup_f (as sm@105@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@105@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :qid |qp.fvfValDef70|)))
; [eval] |xs| > 3
; [eval] |xs|
(assert (fun02%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@105@01  $FVF<f>))
    $Snap.unit)) xs@24@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@31@01 r)
        (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
      (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@96@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@96@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef58|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 1))
    (=
      ($FVF.lookup_f (as sm@96@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@96@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef59|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 0))
    (=
      ($FVF.lookup_f (as sm@96@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@96@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :qid |qp.fvfValDef60|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@97@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@97@01  $FPM) r))
  :qid |qp.resPrmSumDef61|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and
        (img@31@01 r)
        (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
      (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
      false)
    (= ($FVF.lookup_f (as sm@98@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@98@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef62|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 1))
    (=
      ($FVF.lookup_f (as sm@98@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@98@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef63|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@24@01 0))
    (=
      ($FVF.lookup_f (as sm@98@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@98@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :qid |qp.fvfValDef64|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@99@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@99@01  $FPM) r))
  :qid |qp.resPrmSumDef65|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@101@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@101@01  $FPM) r))
  :qid |qp.resPrmSumDef66|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@102@01  $FPM) r)
    (+
      (+
        (ite
          (and
            (img@31@01 r)
            (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
          (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r))
          $Perm.No)
        (ite (= r (Seq_index xs@24@01 1)) $Perm.Write $Perm.No))
      (ite (= r (Seq_index xs@24@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@102@01  $FPM) r))
  :qid |qp.resPrmSumDef67|)))
(assert (forall ((i@100@01 Int)) (!
  (=>
    (and (<= 0 i@100@01) (< i@100@01 (Seq_length xs@24@01)))
    (and
      (= (inv@103@01 (Seq_index xs@24@01 i@100@01)) i@100@01)
      (img@104@01 (Seq_index xs@24@01 i@100@01))))
  :pattern ((Seq_index xs@24@01 i@100@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@104@01 r)
      (and (<= 0 (inv@103@01 r)) (< (inv@103@01 r) (Seq_length xs@24@01))))
    (= (Seq_index xs@24@01 (inv@103@01 r)) r))
  :pattern ((inv@103@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@105@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@103@01 r)) (< (inv@103@01 r) (Seq_length xs@24@01)))
        (img@104@01 r)))
    (=>
      (and
        (and (<= 0 (inv@103@01 r)) (< (inv@103@01 r) (Seq_length xs@24@01)))
        (img@104@01 r))
      (Set_in r ($FVF.domain_f (as sm@105@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@105@01  $FVF<f>))))
  :qid |qp.fvfDomDef71|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@103@01 r)) (< (inv@103@01 r) (Seq_length xs@24@01)))
        (img@104@01 r))
      (ite
        (and
          (img@31@01 r)
          (and (<= 0 (inv@30@01 r)) (< (inv@30@01 r) (Seq_length xs@24@01))))
        (< $Perm.No (- (- $Perm.Write (pTaken@33@01 r)) (pTaken@35@01 r)))
        false))
    (= ($FVF.lookup_f (as sm@105@01  $FVF<f>) r) ($FVF.lookup_f $t@29@01 r)))
  :pattern (($FVF.lookup_f (as sm@105@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@29@01 r))
  :qid |qp.fvfValDef68|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@103@01 r)) (< (inv@103@01 r) (Seq_length xs@24@01)))
        (img@104@01 r))
      (= r (Seq_index xs@24@01 1)))
    (=
      ($FVF.lookup_f (as sm@105@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@105@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :qid |qp.fvfValDef69|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@103@01 r)) (< (inv@103@01 r) (Seq_length xs@24@01)))
        (img@104@01 r))
      (= r (Seq_index xs@24@01 0)))
    (=
      ($FVF.lookup_f (as sm@105@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@61@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@105@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@61@01  $FVF<f>) r))
  :qid |qp.fvfValDef70|)))
(assert (and
  (forall ((i@94@01 Int) (j@95@01 Int)) (!
    (=>
      (and
        (>= i@94@01 0)
        (and
          (< i@94@01 (Seq_length xs@24@01))
          (and
            (>= j@95@01 0)
            (and (< j@95@01 (Seq_length xs@24@01)) (not (= i@94@01 j@95@01))))))
      (not (= (Seq_index xs@24@01 i@94@01) (Seq_index xs@24@01 j@95@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@22@12@22@106|))
  (forall ((i@100@01 Int)) (!
    (=>
      (and (<= 0 i@100@01) (< i@100@01 (Seq_length xs@24@01)))
      (and
        (=>
          (not (<= 0 i@100@01))
          (and
            (not (<= 0 i@100@01))
            (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
            (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
            (forall ((r $Ref)) (!
              (<= ($FVF.perm_f (as pm@101@01  $FPM) r) $Perm.Write)
              :pattern ((inv@30@01 r))
              :qid |qp-fld-prm-bnd|))
            (<=
              ($FVF.perm_f (as pm@101@01  $FPM) (Seq_index xs@24@01 1))
              $Perm.Write)
            (<=
              ($FVF.perm_f (as pm@101@01  $FPM) (Seq_index xs@24@01 0))
              $Perm.Write)))
        (=>
          (<= 0 i@100@01)
          (and
            (<= 0 i@100@01)
            (not (= (Seq_index xs@24@01 1) (Seq_index xs@24@01 0)))
            (not (= (Seq_index xs@24@01 0) (Seq_index xs@24@01 1)))
            (forall ((r $Ref)) (!
              (<= ($FVF.perm_f (as pm@102@01  $FPM) r) $Perm.Write)
              :pattern ((inv@30@01 r))
              :qid |qp-fld-prm-bnd|))
            (<=
              ($FVF.perm_f (as pm@102@01  $FPM) (Seq_index xs@24@01 1))
              $Perm.Write)
            (<=
              ($FVF.perm_f (as pm@102@01  $FPM) (Seq_index xs@24@01 0))
              $Perm.Write)))
        (or (<= 0 i@100@01) (not (<= 0 i@100@01)))))
    :pattern ((Seq_index xs@24@01 i@100@01))
    :qid |f-aux|))
  (fun02%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<f>To$Snap (as sm@105@01  $FVF<f>))
      $Snap.unit)) xs@24@01)))
(push) ; 3
(assert (not (=
  (fun02 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<f>To$Snap (as sm@105@01  $FVF<f>))
      $Snap.unit)) xs@24@01)
  14)))
(check-sat)
; unknown
(pop) ; 3
; 0.22s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- test03 ----------
(declare-const xs@106@01 Seq<$Ref>)
(declare-const xs@107@01 Seq<$Ref>)
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
; inhale |xs| > 6
(declare-const $t@108@01 $Snap)
(assert (= $t@108@01 $Snap.unit))
; [eval] |xs| > 6
; [eval] |xs|
(assert (> (Seq_length xs@107@01) 6))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall k: Int, j: Int ::
;     { xs[k], xs[j] }
;     k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==>
;     xs[k] != xs[j])
(declare-const $t@109@01 $Snap)
(assert (= $t@109@01 $Snap.unit))
; [eval] (forall k: Int, j: Int :: { xs[k], xs[j] } k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j])
(declare-const k@110@01 Int)
(declare-const j@111@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j]
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j)))
; [eval] k >= 0
(push) ; 4
; [then-branch: 60 | !(k@110@01 >= 0) | live]
; [else-branch: 60 | k@110@01 >= 0 | live]
(push) ; 5
; [then-branch: 60 | !(k@110@01 >= 0)]
(assert (not (>= k@110@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 60 | k@110@01 >= 0]
(assert (>= k@110@01 0))
; [eval] k < |xs|
; [eval] |xs|
(push) ; 6
; [then-branch: 61 | !(k@110@01 < |xs@107@01|) | live]
; [else-branch: 61 | k@110@01 < |xs@107@01| | live]
(push) ; 7
; [then-branch: 61 | !(k@110@01 < |xs@107@01|)]
(assert (not (< k@110@01 (Seq_length xs@107@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 61 | k@110@01 < |xs@107@01|]
(assert (< k@110@01 (Seq_length xs@107@01)))
; [eval] j >= 0
(push) ; 8
; [then-branch: 62 | !(j@111@01 >= 0) | live]
; [else-branch: 62 | j@111@01 >= 0 | live]
(push) ; 9
; [then-branch: 62 | !(j@111@01 >= 0)]
(assert (not (>= j@111@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 62 | j@111@01 >= 0]
(assert (>= j@111@01 0))
; [eval] j < |xs|
; [eval] |xs|
(push) ; 10
; [then-branch: 63 | !(j@111@01 < |xs@107@01|) | live]
; [else-branch: 63 | j@111@01 < |xs@107@01| | live]
(push) ; 11
; [then-branch: 63 | !(j@111@01 < |xs@107@01|)]
(assert (not (< j@111@01 (Seq_length xs@107@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 63 | j@111@01 < |xs@107@01|]
(assert (< j@111@01 (Seq_length xs@107@01)))
; [eval] k != j
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (< j@111@01 (Seq_length xs@107@01))
  (not (< j@111@01 (Seq_length xs@107@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@111@01 0)
  (and
    (>= j@111@01 0)
    (or
      (< j@111@01 (Seq_length xs@107@01))
      (not (< j@111@01 (Seq_length xs@107@01)))))))
(assert (or (>= j@111@01 0) (not (>= j@111@01 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@110@01 (Seq_length xs@107@01))
  (and
    (< k@110@01 (Seq_length xs@107@01))
    (=>
      (>= j@111@01 0)
      (and
        (>= j@111@01 0)
        (or
          (< j@111@01 (Seq_length xs@107@01))
          (not (< j@111@01 (Seq_length xs@107@01))))))
    (or (>= j@111@01 0) (not (>= j@111@01 0))))))
(assert (or
  (< k@110@01 (Seq_length xs@107@01))
  (not (< k@110@01 (Seq_length xs@107@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@110@01 0)
  (and
    (>= k@110@01 0)
    (=>
      (< k@110@01 (Seq_length xs@107@01))
      (and
        (< k@110@01 (Seq_length xs@107@01))
        (=>
          (>= j@111@01 0)
          (and
            (>= j@111@01 0)
            (or
              (< j@111@01 (Seq_length xs@107@01))
              (not (< j@111@01 (Seq_length xs@107@01))))))
        (or (>= j@111@01 0) (not (>= j@111@01 0)))))
    (or
      (< k@110@01 (Seq_length xs@107@01))
      (not (< k@110@01 (Seq_length xs@107@01)))))))
(assert (or (>= k@110@01 0) (not (>= k@110@01 0))))
(push) ; 4
; [then-branch: 64 | k@110@01 >= 0 && k@110@01 < |xs@107@01| && j@111@01 >= 0 && j@111@01 < |xs@107@01| && k@110@01 != j@111@01 | live]
; [else-branch: 64 | !(k@110@01 >= 0 && k@110@01 < |xs@107@01| && j@111@01 >= 0 && j@111@01 < |xs@107@01| && k@110@01 != j@111@01) | live]
(push) ; 5
; [then-branch: 64 | k@110@01 >= 0 && k@110@01 < |xs@107@01| && j@111@01 >= 0 && j@111@01 < |xs@107@01| && k@110@01 != j@111@01]
(assert (and
  (>= k@110@01 0)
  (and
    (< k@110@01 (Seq_length xs@107@01))
    (and
      (>= j@111@01 0)
      (and (< j@111@01 (Seq_length xs@107@01)) (not (= k@110@01 j@111@01)))))))
; [eval] xs[k] != xs[j]
; [eval] xs[k]
; [eval] xs[j]
(pop) ; 5
(push) ; 5
; [else-branch: 64 | !(k@110@01 >= 0 && k@110@01 < |xs@107@01| && j@111@01 >= 0 && j@111@01 < |xs@107@01| && k@110@01 != j@111@01)]
(assert (not
  (and
    (>= k@110@01 0)
    (and
      (< k@110@01 (Seq_length xs@107@01))
      (and
        (>= j@111@01 0)
        (and (< j@111@01 (Seq_length xs@107@01)) (not (= k@110@01 j@111@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (>= k@110@01 0)
    (and
      (< k@110@01 (Seq_length xs@107@01))
      (and
        (>= j@111@01 0)
        (and (< j@111@01 (Seq_length xs@107@01)) (not (= k@110@01 j@111@01))))))
  (and
    (>= k@110@01 0)
    (< k@110@01 (Seq_length xs@107@01))
    (>= j@111@01 0)
    (< j@111@01 (Seq_length xs@107@01))
    (not (= k@110@01 j@111@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@110@01 0)
      (and
        (< k@110@01 (Seq_length xs@107@01))
        (and
          (>= j@111@01 0)
          (and (< j@111@01 (Seq_length xs@107@01)) (not (= k@110@01 j@111@01)))))))
  (and
    (>= k@110@01 0)
    (and
      (< k@110@01 (Seq_length xs@107@01))
      (and
        (>= j@111@01 0)
        (and (< j@111@01 (Seq_length xs@107@01)) (not (= k@110@01 j@111@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@110@01 Int) (j@111@01 Int)) (!
  (and
    (=>
      (>= k@110@01 0)
      (and
        (>= k@110@01 0)
        (=>
          (< k@110@01 (Seq_length xs@107@01))
          (and
            (< k@110@01 (Seq_length xs@107@01))
            (=>
              (>= j@111@01 0)
              (and
                (>= j@111@01 0)
                (or
                  (< j@111@01 (Seq_length xs@107@01))
                  (not (< j@111@01 (Seq_length xs@107@01))))))
            (or (>= j@111@01 0) (not (>= j@111@01 0)))))
        (or
          (< k@110@01 (Seq_length xs@107@01))
          (not (< k@110@01 (Seq_length xs@107@01))))))
    (or (>= k@110@01 0) (not (>= k@110@01 0)))
    (=>
      (and
        (>= k@110@01 0)
        (and
          (< k@110@01 (Seq_length xs@107@01))
          (and
            (>= j@111@01 0)
            (and (< j@111@01 (Seq_length xs@107@01)) (not (= k@110@01 j@111@01))))))
      (and
        (>= k@110@01 0)
        (< k@110@01 (Seq_length xs@107@01))
        (>= j@111@01 0)
        (< j@111@01 (Seq_length xs@107@01))
        (not (= k@110@01 j@111@01))))
    (or
      (not
        (and
          (>= k@110@01 0)
          (and
            (< k@110@01 (Seq_length xs@107@01))
            (and
              (>= j@111@01 0)
              (and
                (< j@111@01 (Seq_length xs@107@01))
                (not (= k@110@01 j@111@01)))))))
      (and
        (>= k@110@01 0)
        (and
          (< k@110@01 (Seq_length xs@107@01))
          (and
            (>= j@111@01 0)
            (and (< j@111@01 (Seq_length xs@107@01)) (not (= k@110@01 j@111@01))))))))
  :pattern ((Seq_index xs@107@01 k@110@01) (Seq_index xs@107@01 j@111@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@54@10@54@104-aux|)))
(assert (forall ((k@110@01 Int) (j@111@01 Int)) (!
  (=>
    (and
      (>= k@110@01 0)
      (and
        (< k@110@01 (Seq_length xs@107@01))
        (and
          (>= j@111@01 0)
          (and (< j@111@01 (Seq_length xs@107@01)) (not (= k@110@01 j@111@01))))))
    (not (= (Seq_index xs@107@01 k@110@01) (Seq_index xs@107@01 j@111@01))))
  :pattern ((Seq_index xs@107@01 k@110@01) (Seq_index xs@107@01 j@111@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@54@10@54@104|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall j: Int ::0 <= j && j < 3 ==> acc(xs[j].f, write))
(declare-const j@112@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= j && j < 3
; [eval] 0 <= j
(push) ; 4
; [then-branch: 65 | !(0 <= j@112@01) | live]
; [else-branch: 65 | 0 <= j@112@01 | live]
(push) ; 5
; [then-branch: 65 | !(0 <= j@112@01)]
(assert (not (<= 0 j@112@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 65 | 0 <= j@112@01]
(assert (<= 0 j@112@01))
; [eval] j < 3
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@112@01) (not (<= 0 j@112@01))))
(assert (and (<= 0 j@112@01) (< j@112@01 3)))
; [eval] xs[j]
(push) ; 4
(assert (not (>= j@112@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@112@01 (Seq_length xs@107@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-const $t@113@01 $FVF<f>)
(declare-fun inv@114@01 ($Ref) Int)
(declare-fun img@115@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@112@01 Int)) (!
  (=>
    (and (<= 0 j@112@01) (< j@112@01 3))
    (or (<= 0 j@112@01) (not (<= 0 j@112@01))))
  :pattern ((Seq_index xs@107@01 j@112@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@112@01 Int) (j2@112@01 Int)) (!
  (=>
    (and
      (and (<= 0 j1@112@01) (< j1@112@01 3))
      (and (<= 0 j2@112@01) (< j2@112@01 3))
      (= (Seq_index xs@107@01 j1@112@01) (Seq_index xs@107@01 j2@112@01)))
    (= j1@112@01 j2@112@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@112@01 Int)) (!
  (=>
    (and (<= 0 j@112@01) (< j@112@01 3))
    (and
      (= (inv@114@01 (Seq_index xs@107@01 j@112@01)) j@112@01)
      (img@115@01 (Seq_index xs@107@01 j@112@01))))
  :pattern ((Seq_index xs@107@01 j@112@01))
  :qid |quant-u-11616|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@115@01 r) (and (<= 0 (inv@114@01 r)) (< (inv@114@01 r) 3)))
    (= (Seq_index xs@107@01 (inv@114@01 r)) r))
  :pattern ((inv@114@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@112@01 Int)) (!
  (=>
    (and (<= 0 j@112@01) (< j@112@01 3))
    (not (= (Seq_index xs@107@01 j@112@01) $Ref.null)))
  :pattern ((Seq_index xs@107@01 j@112@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall j: Int ::3 <= j && j < |xs| ==> acc(xs[j].f, write))
(declare-const j@116@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 3 <= j && j < |xs|
; [eval] 3 <= j
(push) ; 4
; [then-branch: 66 | !(3 <= j@116@01) | live]
; [else-branch: 66 | 3 <= j@116@01 | live]
(push) ; 5
; [then-branch: 66 | !(3 <= j@116@01)]
(assert (not (<= 3 j@116@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 66 | 3 <= j@116@01]
(assert (<= 3 j@116@01))
; [eval] j < |xs|
; [eval] |xs|
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 3 j@116@01) (not (<= 3 j@116@01))))
(assert (and (<= 3 j@116@01) (< j@116@01 (Seq_length xs@107@01))))
; [eval] xs[j]
(push) ; 4
(assert (not (>= j@116@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-const $t@117@01 $FVF<f>)
(declare-fun inv@118@01 ($Ref) Int)
(declare-fun img@119@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@116@01 Int)) (!
  (=>
    (and (<= 3 j@116@01) (< j@116@01 (Seq_length xs@107@01)))
    (or (<= 3 j@116@01) (not (<= 3 j@116@01))))
  :pattern ((Seq_index xs@107@01 j@116@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@116@01 Int) (j2@116@01 Int)) (!
  (=>
    (and
      (and (<= 3 j1@116@01) (< j1@116@01 (Seq_length xs@107@01)))
      (and (<= 3 j2@116@01) (< j2@116@01 (Seq_length xs@107@01)))
      (= (Seq_index xs@107@01 j1@116@01) (Seq_index xs@107@01 j2@116@01)))
    (= j1@116@01 j2@116@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@116@01 Int)) (!
  (=>
    (and (<= 3 j@116@01) (< j@116@01 (Seq_length xs@107@01)))
    (and
      (= (inv@118@01 (Seq_index xs@107@01 j@116@01)) j@116@01)
      (img@119@01 (Seq_index xs@107@01 j@116@01))))
  :pattern ((Seq_index xs@107@01 j@116@01))
  :qid |quant-u-11618|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@119@01 r)
      (and (<= 3 (inv@118@01 r)) (< (inv@118@01 r) (Seq_length xs@107@01))))
    (= (Seq_index xs@107@01 (inv@118@01 r)) r))
  :pattern ((inv@118@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@116@01 Int)) (!
  (=>
    (and (<= 3 j@116@01) (< j@116@01 (Seq_length xs@107@01)))
    (not (= (Seq_index xs@107@01 j@116@01) $Ref.null)))
  :pattern ((Seq_index xs@107@01 j@116@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@107@01 j@116@01) (Seq_index xs@107@01 j@112@01))
    (=
      (and
        (img@119@01 r)
        (and (<= 3 (inv@118@01 r)) (< (inv@118@01 r) (Seq_length xs@107@01))))
      (and (img@115@01 r) (and (<= 0 (inv@114@01 r)) (< (inv@114@01 r) 3)))))
  
  :qid |quant-u-11619|))))
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
; inhale xs[0].f < xs[1].f
(declare-const $t@120@01 $Snap)
(assert (= $t@120@01 $Snap.unit))
; [eval] xs[0].f < xs[1].f
; [eval] xs[0]
(set-option :timeout 0)
(push) ; 3
(assert (not (< 0 (Seq_length xs@107@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@121@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@115@01 r) (and (<= 0 (inv@114@01 r)) (< (inv@114@01 r) 3)))
    (= ($FVF.lookup_f (as sm@121@01  $FVF<f>) r) ($FVF.lookup_f $t@113@01 r)))
  :pattern (($FVF.lookup_f (as sm@121@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@113@01 r))
  :qid |qp.fvfValDef72|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@119@01 r)
      (and (<= 3 (inv@118@01 r)) (< (inv@118@01 r) (Seq_length xs@107@01))))
    (= ($FVF.lookup_f (as sm@121@01  $FVF<f>) r) ($FVF.lookup_f $t@117@01 r)))
  :pattern (($FVF.lookup_f (as sm@121@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@117@01 r))
  :qid |qp.fvfValDef73|)))
(declare-const pm@122@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@122@01  $FPM) r)
    (+
      (ite
        (and (img@115@01 r) (and (<= 0 (inv@114@01 r)) (< (inv@114@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@119@01 r)
          (and (<= 3 (inv@118@01 r)) (< (inv@118@01 r) (Seq_length xs@107@01))))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@122@01  $FPM) r))
  :qid |qp.resPrmSumDef74|)))
(push) ; 3
(assert (not (< $Perm.No ($FVF.perm_f (as pm@122@01  $FPM) (Seq_index xs@107@01 0)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] xs[1]
(push) ; 3
(assert (not (< 1 (Seq_length xs@107@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@115@01 r) (and (<= 0 (inv@114@01 r)) (< (inv@114@01 r) 3)))
      (= ($FVF.lookup_f (as sm@121@01  $FVF<f>) r) ($FVF.lookup_f $t@113@01 r)))
    :pattern (($FVF.lookup_f (as sm@121@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f $t@113@01 r))
    :qid |qp.fvfValDef72|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@119@01 r)
        (and (<= 3 (inv@118@01 r)) (< (inv@118@01 r) (Seq_length xs@107@01))))
      (= ($FVF.lookup_f (as sm@121@01  $FVF<f>) r) ($FVF.lookup_f $t@117@01 r)))
    :pattern (($FVF.lookup_f (as sm@121@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f $t@117@01 r))
    :qid |qp.fvfValDef73|))))
(push) ; 3
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@115@01 (Seq_index xs@107@01 1))
        (and
          (<= 0 (inv@114@01 (Seq_index xs@107@01 1)))
          (< (inv@114@01 (Seq_index xs@107@01 1)) 3)))
      $Perm.Write
      $Perm.No)
    (ite
      (and
        (img@119@01 (Seq_index xs@107@01 1))
        (and
          (<= 3 (inv@118@01 (Seq_index xs@107@01 1)))
          (< (inv@118@01 (Seq_index xs@107@01 1)) (Seq_length xs@107@01))))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<
  ($FVF.lookup_f (as sm@121@01  $FVF<f>) (Seq_index xs@107@01 0))
  ($FVF.lookup_f (as sm@121@01  $FVF<f>) (Seq_index xs@107@01 1))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert fun03(xs, 0) < fun03(xs, 1)
; [eval] fun03(xs, 0) < fun03(xs, 1)
; [eval] fun03(xs, 0)
(set-option :timeout 0)
(push) ; 3
; [eval] |xs| > 6
; [eval] |xs|
; [eval] (forall k: Int, j: Int ::k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j])
(declare-const k@123@01 Int)
(declare-const j@124@01 Int)
(push) ; 4
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j]
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j)))
; [eval] k >= 0
(push) ; 5
; [then-branch: 67 | !(k@123@01 >= 0) | live]
; [else-branch: 67 | k@123@01 >= 0 | live]
(push) ; 6
; [then-branch: 67 | !(k@123@01 >= 0)]
(assert (not (>= k@123@01 0)))
(pop) ; 6
(push) ; 6
; [else-branch: 67 | k@123@01 >= 0]
(assert (>= k@123@01 0))
; [eval] k < |xs|
; [eval] |xs|
(push) ; 7
; [then-branch: 68 | !(k@123@01 < |xs@107@01|) | live]
; [else-branch: 68 | k@123@01 < |xs@107@01| | live]
(push) ; 8
; [then-branch: 68 | !(k@123@01 < |xs@107@01|)]
(assert (not (< k@123@01 (Seq_length xs@107@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 68 | k@123@01 < |xs@107@01|]
(assert (< k@123@01 (Seq_length xs@107@01)))
; [eval] j >= 0
(push) ; 9
; [then-branch: 69 | !(j@124@01 >= 0) | live]
; [else-branch: 69 | j@124@01 >= 0 | live]
(push) ; 10
; [then-branch: 69 | !(j@124@01 >= 0)]
(assert (not (>= j@124@01 0)))
(pop) ; 10
(push) ; 10
; [else-branch: 69 | j@124@01 >= 0]
(assert (>= j@124@01 0))
; [eval] j < |xs|
; [eval] |xs|
(push) ; 11
; [then-branch: 70 | !(j@124@01 < |xs@107@01|) | live]
; [else-branch: 70 | j@124@01 < |xs@107@01| | live]
(push) ; 12
; [then-branch: 70 | !(j@124@01 < |xs@107@01|)]
(assert (not (< j@124@01 (Seq_length xs@107@01))))
(pop) ; 12
(push) ; 12
; [else-branch: 70 | j@124@01 < |xs@107@01|]
(assert (< j@124@01 (Seq_length xs@107@01)))
; [eval] k != j
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or
  (< j@124@01 (Seq_length xs@107@01))
  (not (< j@124@01 (Seq_length xs@107@01)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@124@01 0)
  (and
    (>= j@124@01 0)
    (or
      (< j@124@01 (Seq_length xs@107@01))
      (not (< j@124@01 (Seq_length xs@107@01)))))))
(assert (or (>= j@124@01 0) (not (>= j@124@01 0))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@123@01 (Seq_length xs@107@01))
  (and
    (< k@123@01 (Seq_length xs@107@01))
    (=>
      (>= j@124@01 0)
      (and
        (>= j@124@01 0)
        (or
          (< j@124@01 (Seq_length xs@107@01))
          (not (< j@124@01 (Seq_length xs@107@01))))))
    (or (>= j@124@01 0) (not (>= j@124@01 0))))))
(assert (or
  (< k@123@01 (Seq_length xs@107@01))
  (not (< k@123@01 (Seq_length xs@107@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@123@01 0)
  (and
    (>= k@123@01 0)
    (=>
      (< k@123@01 (Seq_length xs@107@01))
      (and
        (< k@123@01 (Seq_length xs@107@01))
        (=>
          (>= j@124@01 0)
          (and
            (>= j@124@01 0)
            (or
              (< j@124@01 (Seq_length xs@107@01))
              (not (< j@124@01 (Seq_length xs@107@01))))))
        (or (>= j@124@01 0) (not (>= j@124@01 0)))))
    (or
      (< k@123@01 (Seq_length xs@107@01))
      (not (< k@123@01 (Seq_length xs@107@01)))))))
(assert (or (>= k@123@01 0) (not (>= k@123@01 0))))
(push) ; 5
; [then-branch: 71 | k@123@01 >= 0 && k@123@01 < |xs@107@01| && j@124@01 >= 0 && j@124@01 < |xs@107@01| && k@123@01 != j@124@01 | live]
; [else-branch: 71 | !(k@123@01 >= 0 && k@123@01 < |xs@107@01| && j@124@01 >= 0 && j@124@01 < |xs@107@01| && k@123@01 != j@124@01) | live]
(push) ; 6
; [then-branch: 71 | k@123@01 >= 0 && k@123@01 < |xs@107@01| && j@124@01 >= 0 && j@124@01 < |xs@107@01| && k@123@01 != j@124@01]
(assert (and
  (>= k@123@01 0)
  (and
    (< k@123@01 (Seq_length xs@107@01))
    (and
      (>= j@124@01 0)
      (and (< j@124@01 (Seq_length xs@107@01)) (not (= k@123@01 j@124@01)))))))
; [eval] xs[k] != xs[j]
; [eval] xs[k]
; [eval] xs[j]
(pop) ; 6
(push) ; 6
; [else-branch: 71 | !(k@123@01 >= 0 && k@123@01 < |xs@107@01| && j@124@01 >= 0 && j@124@01 < |xs@107@01| && k@123@01 != j@124@01)]
(assert (not
  (and
    (>= k@123@01 0)
    (and
      (< k@123@01 (Seq_length xs@107@01))
      (and
        (>= j@124@01 0)
        (and (< j@124@01 (Seq_length xs@107@01)) (not (= k@123@01 j@124@01))))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (>= k@123@01 0)
    (and
      (< k@123@01 (Seq_length xs@107@01))
      (and
        (>= j@124@01 0)
        (and (< j@124@01 (Seq_length xs@107@01)) (not (= k@123@01 j@124@01))))))
  (and
    (>= k@123@01 0)
    (< k@123@01 (Seq_length xs@107@01))
    (>= j@124@01 0)
    (< j@124@01 (Seq_length xs@107@01))
    (not (= k@123@01 j@124@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@123@01 0)
      (and
        (< k@123@01 (Seq_length xs@107@01))
        (and
          (>= j@124@01 0)
          (and (< j@124@01 (Seq_length xs@107@01)) (not (= k@123@01 j@124@01)))))))
  (and
    (>= k@123@01 0)
    (and
      (< k@123@01 (Seq_length xs@107@01))
      (and
        (>= j@124@01 0)
        (and (< j@124@01 (Seq_length xs@107@01)) (not (= k@123@01 j@124@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((k@123@01 Int) (j@124@01 Int)) (!
  (=>
    (and
      (>= k@123@01 0)
      (and
        (< k@123@01 (Seq_length xs@107@01))
        (and
          (>= j@124@01 0)
          (and (< j@124@01 (Seq_length xs@107@01)) (not (= k@123@01 j@124@01))))))
    (not (= (Seq_index xs@107@01 k@123@01) (Seq_index xs@107@01 j@124@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@46@12@46@106|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((k@123@01 Int) (j@124@01 Int)) (!
  (=>
    (and
      (>= k@123@01 0)
      (and
        (< k@123@01 (Seq_length xs@107@01))
        (and
          (>= j@124@01 0)
          (and (< j@124@01 (Seq_length xs@107@01)) (not (= k@123@01 j@124@01))))))
    (not (= (Seq_index xs@107@01 k@123@01) (Seq_index xs@107@01 j@124@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@46@12@46@106|)))
(declare-const j@125@01 Int)
(push) ; 4
; [eval] 0 <= j && j < 3
; [eval] 0 <= j
(push) ; 5
; [then-branch: 72 | !(0 <= j@125@01) | live]
; [else-branch: 72 | 0 <= j@125@01 | live]
(push) ; 6
; [then-branch: 72 | !(0 <= j@125@01)]
(assert (not (<= 0 j@125@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 72 | 0 <= j@125@01]
(assert (<= 0 j@125@01))
; [eval] j < 3
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@125@01) (not (<= 0 j@125@01))))
(assert (and (<= 0 j@125@01) (< j@125@01 3)))
; [eval] xs[j]
(push) ; 5
(assert (not (>= j@125@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< j@125@01 (Seq_length xs@107@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@126@01 ($Ref) Int)
(declare-fun img@127@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@125@01 Int)) (!
  (=>
    (and (<= 0 j@125@01) (< j@125@01 3))
    (or (<= 0 j@125@01) (not (<= 0 j@125@01))))
  :pattern ((Seq_index xs@107@01 j@125@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((j1@125@01 Int) (j2@125@01 Int)) (!
  (=>
    (and
      (and (<= 0 j1@125@01) (< j1@125@01 3))
      (and (<= 0 j2@125@01) (< j2@125@01 3))
      (= (Seq_index xs@107@01 j1@125@01) (Seq_index xs@107@01 j2@125@01)))
    (= j1@125@01 j2@125@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@125@01 Int)) (!
  (=>
    (and (<= 0 j@125@01) (< j@125@01 3))
    (and
      (= (inv@126@01 (Seq_index xs@107@01 j@125@01)) j@125@01)
      (img@127@01 (Seq_index xs@107@01 j@125@01))))
  :pattern ((Seq_index xs@107@01 j@125@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@127@01 r) (and (<= 0 (inv@126@01 r)) (< (inv@126@01 r) 3)))
    (= (Seq_index xs@107@01 (inv@126@01 r)) r))
  :pattern ((inv@126@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@126@01 r)) (< (inv@126@01 r) 3))
      (img@127@01 r)
      (= r (Seq_index xs@107@01 (inv@126@01 r))))
    (>
      (+
        (ite
          (and (img@115@01 r) (and (<= 0 (inv@114@01 r)) (< (inv@114@01 r) 3)))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@119@01 r)
            (and (<= 3 (inv@118@01 r)) (< (inv@118@01 r) (Seq_length xs@107@01))))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-11621|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@128@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@128@01  $FVF<f>)))
      (and (and (<= 0 (inv@126@01 r)) (< (inv@126@01 r) 3)) (img@127@01 r)))
    (=>
      (and (and (<= 0 (inv@126@01 r)) (< (inv@126@01 r) 3)) (img@127@01 r))
      (Set_in r ($FVF.domain_f (as sm@128@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@128@01  $FVF<f>))))
  :qid |qp.fvfDomDef77|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@126@01 r)) (< (inv@126@01 r) 3)) (img@127@01 r))
      (and (img@115@01 r) (and (<= 0 (inv@114@01 r)) (< (inv@114@01 r) 3))))
    (= ($FVF.lookup_f (as sm@128@01  $FVF<f>) r) ($FVF.lookup_f $t@113@01 r)))
  :pattern (($FVF.lookup_f (as sm@128@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@113@01 r))
  :qid |qp.fvfValDef75|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@126@01 r)) (< (inv@126@01 r) 3)) (img@127@01 r))
      (and
        (img@119@01 r)
        (and (<= 3 (inv@118@01 r)) (< (inv@118@01 r) (Seq_length xs@107@01)))))
    (= ($FVF.lookup_f (as sm@128@01  $FVF<f>) r) ($FVF.lookup_f $t@117@01 r)))
  :pattern (($FVF.lookup_f (as sm@128@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@117@01 r))
  :qid |qp.fvfValDef76|)))
(declare-const j@129@01 Int)
(push) ; 4
; [eval] 3 <= j && j < |xs|
; [eval] 3 <= j
(push) ; 5
; [then-branch: 73 | !(3 <= j@129@01) | live]
; [else-branch: 73 | 3 <= j@129@01 | live]
(push) ; 6
; [then-branch: 73 | !(3 <= j@129@01)]
(assert (not (<= 3 j@129@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 73 | 3 <= j@129@01]
(assert (<= 3 j@129@01))
; [eval] j < |xs|
; [eval] |xs|
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 3 j@129@01) (not (<= 3 j@129@01))))
(assert (and (<= 3 j@129@01) (< j@129@01 (Seq_length xs@107@01))))
; [eval] xs[j]
(push) ; 5
(assert (not (>= j@129@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@130@01 ($Ref) Int)
(declare-fun img@131@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@129@01 Int)) (!
  (=>
    (and (<= 3 j@129@01) (< j@129@01 (Seq_length xs@107@01)))
    (or (<= 3 j@129@01) (not (<= 3 j@129@01))))
  :pattern ((Seq_index xs@107@01 j@129@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((j1@129@01 Int) (j2@129@01 Int)) (!
  (=>
    (and
      (and (<= 3 j1@129@01) (< j1@129@01 (Seq_length xs@107@01)))
      (and (<= 3 j2@129@01) (< j2@129@01 (Seq_length xs@107@01)))
      (= (Seq_index xs@107@01 j1@129@01) (Seq_index xs@107@01 j2@129@01)))
    (= j1@129@01 j2@129@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@129@01 Int)) (!
  (=>
    (and (<= 3 j@129@01) (< j@129@01 (Seq_length xs@107@01)))
    (and
      (= (inv@130@01 (Seq_index xs@107@01 j@129@01)) j@129@01)
      (img@131@01 (Seq_index xs@107@01 j@129@01))))
  :pattern ((Seq_index xs@107@01 j@129@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@131@01 r)
      (and (<= 3 (inv@130@01 r)) (< (inv@130@01 r) (Seq_length xs@107@01))))
    (= (Seq_index xs@107@01 (inv@130@01 r)) r))
  :pattern ((inv@130@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 3 (inv@130@01 r)) (< (inv@130@01 r) (Seq_length xs@107@01)))
      (img@131@01 r)
      (= r (Seq_index xs@107@01 (inv@130@01 r))))
    (>
      (+
        (ite
          (and
            (img@119@01 r)
            (and (<= 3 (inv@118@01 r)) (< (inv@118@01 r) (Seq_length xs@107@01))))
          $Perm.Write
          $Perm.No)
        (ite
          (and (img@115@01 r) (and (<= 0 (inv@114@01 r)) (< (inv@114@01 r) 3)))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-11623|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@132@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@132@01  $FVF<f>)))
      (and
        (and (<= 3 (inv@130@01 r)) (< (inv@130@01 r) (Seq_length xs@107@01)))
        (img@131@01 r)))
    (=>
      (and
        (and (<= 3 (inv@130@01 r)) (< (inv@130@01 r) (Seq_length xs@107@01)))
        (img@131@01 r))
      (Set_in r ($FVF.domain_f (as sm@132@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@132@01  $FVF<f>))))
  :qid |qp.fvfDomDef80|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 3 (inv@130@01 r)) (< (inv@130@01 r) (Seq_length xs@107@01)))
        (img@131@01 r))
      (and
        (img@119@01 r)
        (and (<= 3 (inv@118@01 r)) (< (inv@118@01 r) (Seq_length xs@107@01)))))
    (= ($FVF.lookup_f (as sm@132@01  $FVF<f>) r) ($FVF.lookup_f $t@117@01 r)))
  :pattern (($FVF.lookup_f (as sm@132@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@117@01 r))
  :qid |qp.fvfValDef78|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 3 (inv@130@01 r)) (< (inv@130@01 r) (Seq_length xs@107@01)))
        (img@131@01 r))
      (and (img@115@01 r) (and (<= 0 (inv@114@01 r)) (< (inv@114@01 r) 3))))
    (= ($FVF.lookup_f (as sm@132@01  $FVF<f>) r) ($FVF.lookup_f $t@113@01 r)))
  :pattern (($FVF.lookup_f (as sm@132@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@113@01 r))
  :qid |qp.fvfValDef79|)))
; [eval] 0 <= i
; [eval] i < |xs|
; [eval] |xs|
(push) ; 4
(assert (not (< 0 (Seq_length xs@107@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< 0 (Seq_length xs@107@01)))
(assert (fun03%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<f>To$Snap (as sm@128@01  $FVF<f>))
      ($Snap.combine
        ($SortWrappers.$FVF<f>To$Snap (as sm@132@01  $FVF<f>))
        ($Snap.combine $Snap.unit $Snap.unit))))) xs@107@01 0))
(pop) ; 3
; Joined path conditions
(assert (forall ((j@125@01 Int)) (!
  (=>
    (and (<= 0 j@125@01) (< j@125@01 3))
    (and
      (= (inv@126@01 (Seq_index xs@107@01 j@125@01)) j@125@01)
      (img@127@01 (Seq_index xs@107@01 j@125@01))))
  :pattern ((Seq_index xs@107@01 j@125@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@127@01 r) (and (<= 0 (inv@126@01 r)) (< (inv@126@01 r) 3)))
    (= (Seq_index xs@107@01 (inv@126@01 r)) r))
  :pattern ((inv@126@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@128@01  $FVF<f>)))
      (and (and (<= 0 (inv@126@01 r)) (< (inv@126@01 r) 3)) (img@127@01 r)))
    (=>
      (and (and (<= 0 (inv@126@01 r)) (< (inv@126@01 r) 3)) (img@127@01 r))
      (Set_in r ($FVF.domain_f (as sm@128@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@128@01  $FVF<f>))))
  :qid |qp.fvfDomDef77|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@126@01 r)) (< (inv@126@01 r) 3)) (img@127@01 r))
      (and (img@115@01 r) (and (<= 0 (inv@114@01 r)) (< (inv@114@01 r) 3))))
    (= ($FVF.lookup_f (as sm@128@01  $FVF<f>) r) ($FVF.lookup_f $t@113@01 r)))
  :pattern (($FVF.lookup_f (as sm@128@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@113@01 r))
  :qid |qp.fvfValDef75|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@126@01 r)) (< (inv@126@01 r) 3)) (img@127@01 r))
      (and
        (img@119@01 r)
        (and (<= 3 (inv@118@01 r)) (< (inv@118@01 r) (Seq_length xs@107@01)))))
    (= ($FVF.lookup_f (as sm@128@01  $FVF<f>) r) ($FVF.lookup_f $t@117@01 r)))
  :pattern (($FVF.lookup_f (as sm@128@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@117@01 r))
  :qid |qp.fvfValDef76|)))
(assert (forall ((j@129@01 Int)) (!
  (=>
    (and (<= 3 j@129@01) (< j@129@01 (Seq_length xs@107@01)))
    (and
      (= (inv@130@01 (Seq_index xs@107@01 j@129@01)) j@129@01)
      (img@131@01 (Seq_index xs@107@01 j@129@01))))
  :pattern ((Seq_index xs@107@01 j@129@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@131@01 r)
      (and (<= 3 (inv@130@01 r)) (< (inv@130@01 r) (Seq_length xs@107@01))))
    (= (Seq_index xs@107@01 (inv@130@01 r)) r))
  :pattern ((inv@130@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@132@01  $FVF<f>)))
      (and
        (and (<= 3 (inv@130@01 r)) (< (inv@130@01 r) (Seq_length xs@107@01)))
        (img@131@01 r)))
    (=>
      (and
        (and (<= 3 (inv@130@01 r)) (< (inv@130@01 r) (Seq_length xs@107@01)))
        (img@131@01 r))
      (Set_in r ($FVF.domain_f (as sm@132@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@132@01  $FVF<f>))))
  :qid |qp.fvfDomDef80|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 3 (inv@130@01 r)) (< (inv@130@01 r) (Seq_length xs@107@01)))
        (img@131@01 r))
      (and
        (img@119@01 r)
        (and (<= 3 (inv@118@01 r)) (< (inv@118@01 r) (Seq_length xs@107@01)))))
    (= ($FVF.lookup_f (as sm@132@01  $FVF<f>) r) ($FVF.lookup_f $t@117@01 r)))
  :pattern (($FVF.lookup_f (as sm@132@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@117@01 r))
  :qid |qp.fvfValDef78|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 3 (inv@130@01 r)) (< (inv@130@01 r) (Seq_length xs@107@01)))
        (img@131@01 r))
      (and (img@115@01 r) (and (<= 0 (inv@114@01 r)) (< (inv@114@01 r) 3))))
    (= ($FVF.lookup_f (as sm@132@01  $FVF<f>) r) ($FVF.lookup_f $t@113@01 r)))
  :pattern (($FVF.lookup_f (as sm@132@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@113@01 r))
  :qid |qp.fvfValDef79|)))
(assert (and
  (forall ((k@123@01 Int) (j@124@01 Int)) (!
    (=>
      (and
        (>= k@123@01 0)
        (and
          (< k@123@01 (Seq_length xs@107@01))
          (and
            (>= j@124@01 0)
            (and (< j@124@01 (Seq_length xs@107@01)) (not (= k@123@01 j@124@01))))))
      (not (= (Seq_index xs@107@01 k@123@01) (Seq_index xs@107@01 j@124@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@46@12@46@106|))
  (forall ((j@125@01 Int)) (!
    (=>
      (and (<= 0 j@125@01) (< j@125@01 3))
      (or (<= 0 j@125@01) (not (<= 0 j@125@01))))
    :pattern ((Seq_index xs@107@01 j@125@01))
    :qid |f-aux|))
  (forall ((j@129@01 Int)) (!
    (=>
      (and (<= 3 j@129@01) (< j@129@01 (Seq_length xs@107@01)))
      (or (<= 3 j@129@01) (not (<= 3 j@129@01))))
    :pattern ((Seq_index xs@107@01 j@129@01))
    :qid |f-aux|))
  (< 0 (Seq_length xs@107@01))
  (fun03%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<f>To$Snap (as sm@128@01  $FVF<f>))
        ($Snap.combine
          ($SortWrappers.$FVF<f>To$Snap (as sm@132@01  $FVF<f>))
          ($Snap.combine $Snap.unit $Snap.unit))))) xs@107@01 0)))
; [eval] fun03(xs, 1)
(push) ; 3
; [eval] |xs| > 6
; [eval] |xs|
; [eval] (forall k: Int, j: Int ::k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j])
(declare-const k@133@01 Int)
(declare-const j@134@01 Int)
(push) ; 4
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j]
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j)))
; [eval] k >= 0
(push) ; 5
; [then-branch: 74 | !(k@133@01 >= 0) | live]
; [else-branch: 74 | k@133@01 >= 0 | live]
(push) ; 6
; [then-branch: 74 | !(k@133@01 >= 0)]
(assert (not (>= k@133@01 0)))
(pop) ; 6
(push) ; 6
; [else-branch: 74 | k@133@01 >= 0]
(assert (>= k@133@01 0))
; [eval] k < |xs|
; [eval] |xs|
(push) ; 7
; [then-branch: 75 | !(k@133@01 < |xs@107@01|) | live]
; [else-branch: 75 | k@133@01 < |xs@107@01| | live]
(push) ; 8
; [then-branch: 75 | !(k@133@01 < |xs@107@01|)]
(assert (not (< k@133@01 (Seq_length xs@107@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 75 | k@133@01 < |xs@107@01|]
(assert (< k@133@01 (Seq_length xs@107@01)))
; [eval] j >= 0
(push) ; 9
; [then-branch: 76 | !(j@134@01 >= 0) | live]
; [else-branch: 76 | j@134@01 >= 0 | live]
(push) ; 10
; [then-branch: 76 | !(j@134@01 >= 0)]
(assert (not (>= j@134@01 0)))
(pop) ; 10
(push) ; 10
; [else-branch: 76 | j@134@01 >= 0]
(assert (>= j@134@01 0))
; [eval] j < |xs|
; [eval] |xs|
(push) ; 11
; [then-branch: 77 | !(j@134@01 < |xs@107@01|) | live]
; [else-branch: 77 | j@134@01 < |xs@107@01| | live]
(push) ; 12
; [then-branch: 77 | !(j@134@01 < |xs@107@01|)]
(assert (not (< j@134@01 (Seq_length xs@107@01))))
(pop) ; 12
(push) ; 12
; [else-branch: 77 | j@134@01 < |xs@107@01|]
(assert (< j@134@01 (Seq_length xs@107@01)))
; [eval] k != j
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or
  (< j@134@01 (Seq_length xs@107@01))
  (not (< j@134@01 (Seq_length xs@107@01)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@134@01 0)
  (and
    (>= j@134@01 0)
    (or
      (< j@134@01 (Seq_length xs@107@01))
      (not (< j@134@01 (Seq_length xs@107@01)))))))
(assert (or (>= j@134@01 0) (not (>= j@134@01 0))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@133@01 (Seq_length xs@107@01))
  (and
    (< k@133@01 (Seq_length xs@107@01))
    (=>
      (>= j@134@01 0)
      (and
        (>= j@134@01 0)
        (or
          (< j@134@01 (Seq_length xs@107@01))
          (not (< j@134@01 (Seq_length xs@107@01))))))
    (or (>= j@134@01 0) (not (>= j@134@01 0))))))
(assert (or
  (< k@133@01 (Seq_length xs@107@01))
  (not (< k@133@01 (Seq_length xs@107@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@133@01 0)
  (and
    (>= k@133@01 0)
    (=>
      (< k@133@01 (Seq_length xs@107@01))
      (and
        (< k@133@01 (Seq_length xs@107@01))
        (=>
          (>= j@134@01 0)
          (and
            (>= j@134@01 0)
            (or
              (< j@134@01 (Seq_length xs@107@01))
              (not (< j@134@01 (Seq_length xs@107@01))))))
        (or (>= j@134@01 0) (not (>= j@134@01 0)))))
    (or
      (< k@133@01 (Seq_length xs@107@01))
      (not (< k@133@01 (Seq_length xs@107@01)))))))
(assert (or (>= k@133@01 0) (not (>= k@133@01 0))))
(push) ; 5
; [then-branch: 78 | k@133@01 >= 0 && k@133@01 < |xs@107@01| && j@134@01 >= 0 && j@134@01 < |xs@107@01| && k@133@01 != j@134@01 | live]
; [else-branch: 78 | !(k@133@01 >= 0 && k@133@01 < |xs@107@01| && j@134@01 >= 0 && j@134@01 < |xs@107@01| && k@133@01 != j@134@01) | live]
(push) ; 6
; [then-branch: 78 | k@133@01 >= 0 && k@133@01 < |xs@107@01| && j@134@01 >= 0 && j@134@01 < |xs@107@01| && k@133@01 != j@134@01]
(assert (and
  (>= k@133@01 0)
  (and
    (< k@133@01 (Seq_length xs@107@01))
    (and
      (>= j@134@01 0)
      (and (< j@134@01 (Seq_length xs@107@01)) (not (= k@133@01 j@134@01)))))))
; [eval] xs[k] != xs[j]
; [eval] xs[k]
; [eval] xs[j]
(pop) ; 6
(push) ; 6
; [else-branch: 78 | !(k@133@01 >= 0 && k@133@01 < |xs@107@01| && j@134@01 >= 0 && j@134@01 < |xs@107@01| && k@133@01 != j@134@01)]
(assert (not
  (and
    (>= k@133@01 0)
    (and
      (< k@133@01 (Seq_length xs@107@01))
      (and
        (>= j@134@01 0)
        (and (< j@134@01 (Seq_length xs@107@01)) (not (= k@133@01 j@134@01))))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (>= k@133@01 0)
    (and
      (< k@133@01 (Seq_length xs@107@01))
      (and
        (>= j@134@01 0)
        (and (< j@134@01 (Seq_length xs@107@01)) (not (= k@133@01 j@134@01))))))
  (and
    (>= k@133@01 0)
    (< k@133@01 (Seq_length xs@107@01))
    (>= j@134@01 0)
    (< j@134@01 (Seq_length xs@107@01))
    (not (= k@133@01 j@134@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@133@01 0)
      (and
        (< k@133@01 (Seq_length xs@107@01))
        (and
          (>= j@134@01 0)
          (and (< j@134@01 (Seq_length xs@107@01)) (not (= k@133@01 j@134@01)))))))
  (and
    (>= k@133@01 0)
    (and
      (< k@133@01 (Seq_length xs@107@01))
      (and
        (>= j@134@01 0)
        (and (< j@134@01 (Seq_length xs@107@01)) (not (= k@133@01 j@134@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((k@133@01 Int) (j@134@01 Int)) (!
  (=>
    (and
      (>= k@133@01 0)
      (and
        (< k@133@01 (Seq_length xs@107@01))
        (and
          (>= j@134@01 0)
          (and (< j@134@01 (Seq_length xs@107@01)) (not (= k@133@01 j@134@01))))))
    (not (= (Seq_index xs@107@01 k@133@01) (Seq_index xs@107@01 j@134@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@46@12@46@106|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((k@133@01 Int) (j@134@01 Int)) (!
  (=>
    (and
      (>= k@133@01 0)
      (and
        (< k@133@01 (Seq_length xs@107@01))
        (and
          (>= j@134@01 0)
          (and (< j@134@01 (Seq_length xs@107@01)) (not (= k@133@01 j@134@01))))))
    (not (= (Seq_index xs@107@01 k@133@01) (Seq_index xs@107@01 j@134@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@46@12@46@106|)))
(declare-const j@135@01 Int)
(push) ; 4
; [eval] 0 <= j && j < 3
; [eval] 0 <= j
(push) ; 5
; [then-branch: 79 | !(0 <= j@135@01) | live]
; [else-branch: 79 | 0 <= j@135@01 | live]
(push) ; 6
; [then-branch: 79 | !(0 <= j@135@01)]
(assert (not (<= 0 j@135@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 79 | 0 <= j@135@01]
(assert (<= 0 j@135@01))
; [eval] j < 3
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@135@01) (not (<= 0 j@135@01))))
(assert (and (<= 0 j@135@01) (< j@135@01 3)))
; [eval] xs[j]
(push) ; 5
(assert (not (>= j@135@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (< j@135@01 (Seq_length xs@107@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@136@01 ($Ref) Int)
(declare-fun img@137@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@135@01 Int)) (!
  (=>
    (and (<= 0 j@135@01) (< j@135@01 3))
    (or (<= 0 j@135@01) (not (<= 0 j@135@01))))
  :pattern ((Seq_index xs@107@01 j@135@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((j1@135@01 Int) (j2@135@01 Int)) (!
  (=>
    (and
      (and (<= 0 j1@135@01) (< j1@135@01 3))
      (and (<= 0 j2@135@01) (< j2@135@01 3))
      (= (Seq_index xs@107@01 j1@135@01) (Seq_index xs@107@01 j2@135@01)))
    (= j1@135@01 j2@135@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@135@01 Int)) (!
  (=>
    (and (<= 0 j@135@01) (< j@135@01 3))
    (and
      (= (inv@136@01 (Seq_index xs@107@01 j@135@01)) j@135@01)
      (img@137@01 (Seq_index xs@107@01 j@135@01))))
  :pattern ((Seq_index xs@107@01 j@135@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@137@01 r) (and (<= 0 (inv@136@01 r)) (< (inv@136@01 r) 3)))
    (= (Seq_index xs@107@01 (inv@136@01 r)) r))
  :pattern ((inv@136@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@136@01 r)) (< (inv@136@01 r) 3))
      (img@137@01 r)
      (= r (Seq_index xs@107@01 (inv@136@01 r))))
    (>
      (+
        (ite
          (and (img@115@01 r) (and (<= 0 (inv@114@01 r)) (< (inv@114@01 r) 3)))
          $Perm.Write
          $Perm.No)
        (ite
          (and
            (img@119@01 r)
            (and (<= 3 (inv@118@01 r)) (< (inv@118@01 r) (Seq_length xs@107@01))))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-11625|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@138@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@138@01  $FVF<f>)))
      (and (and (<= 0 (inv@136@01 r)) (< (inv@136@01 r) 3)) (img@137@01 r)))
    (=>
      (and (and (<= 0 (inv@136@01 r)) (< (inv@136@01 r) 3)) (img@137@01 r))
      (Set_in r ($FVF.domain_f (as sm@138@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@138@01  $FVF<f>))))
  :qid |qp.fvfDomDef83|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@136@01 r)) (< (inv@136@01 r) 3)) (img@137@01 r))
      (and (img@115@01 r) (and (<= 0 (inv@114@01 r)) (< (inv@114@01 r) 3))))
    (= ($FVF.lookup_f (as sm@138@01  $FVF<f>) r) ($FVF.lookup_f $t@113@01 r)))
  :pattern (($FVF.lookup_f (as sm@138@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@113@01 r))
  :qid |qp.fvfValDef81|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@136@01 r)) (< (inv@136@01 r) 3)) (img@137@01 r))
      (and
        (img@119@01 r)
        (and (<= 3 (inv@118@01 r)) (< (inv@118@01 r) (Seq_length xs@107@01)))))
    (= ($FVF.lookup_f (as sm@138@01  $FVF<f>) r) ($FVF.lookup_f $t@117@01 r)))
  :pattern (($FVF.lookup_f (as sm@138@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@117@01 r))
  :qid |qp.fvfValDef82|)))
(declare-const j@139@01 Int)
(push) ; 4
; [eval] 3 <= j && j < |xs|
; [eval] 3 <= j
(push) ; 5
; [then-branch: 80 | !(3 <= j@139@01) | live]
; [else-branch: 80 | 3 <= j@139@01 | live]
(push) ; 6
; [then-branch: 80 | !(3 <= j@139@01)]
(assert (not (<= 3 j@139@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 80 | 3 <= j@139@01]
(assert (<= 3 j@139@01))
; [eval] j < |xs|
; [eval] |xs|
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 3 j@139@01) (not (<= 3 j@139@01))))
(assert (and (<= 3 j@139@01) (< j@139@01 (Seq_length xs@107@01))))
; [eval] xs[j]
(push) ; 5
(assert (not (>= j@139@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@140@01 ($Ref) Int)
(declare-fun img@141@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@139@01 Int)) (!
  (=>
    (and (<= 3 j@139@01) (< j@139@01 (Seq_length xs@107@01)))
    (or (<= 3 j@139@01) (not (<= 3 j@139@01))))
  :pattern ((Seq_index xs@107@01 j@139@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((j1@139@01 Int) (j2@139@01 Int)) (!
  (=>
    (and
      (and (<= 3 j1@139@01) (< j1@139@01 (Seq_length xs@107@01)))
      (and (<= 3 j2@139@01) (< j2@139@01 (Seq_length xs@107@01)))
      (= (Seq_index xs@107@01 j1@139@01) (Seq_index xs@107@01 j2@139@01)))
    (= j1@139@01 j2@139@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@139@01 Int)) (!
  (=>
    (and (<= 3 j@139@01) (< j@139@01 (Seq_length xs@107@01)))
    (and
      (= (inv@140@01 (Seq_index xs@107@01 j@139@01)) j@139@01)
      (img@141@01 (Seq_index xs@107@01 j@139@01))))
  :pattern ((Seq_index xs@107@01 j@139@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@141@01 r)
      (and (<= 3 (inv@140@01 r)) (< (inv@140@01 r) (Seq_length xs@107@01))))
    (= (Seq_index xs@107@01 (inv@140@01 r)) r))
  :pattern ((inv@140@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 3 (inv@140@01 r)) (< (inv@140@01 r) (Seq_length xs@107@01)))
      (img@141@01 r)
      (= r (Seq_index xs@107@01 (inv@140@01 r))))
    (>
      (+
        (ite
          (and
            (img@119@01 r)
            (and (<= 3 (inv@118@01 r)) (< (inv@118@01 r) (Seq_length xs@107@01))))
          $Perm.Write
          $Perm.No)
        (ite
          (and (img@115@01 r) (and (<= 0 (inv@114@01 r)) (< (inv@114@01 r) 3)))
          $Perm.Write
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-11627|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@142@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@142@01  $FVF<f>)))
      (and
        (and (<= 3 (inv@140@01 r)) (< (inv@140@01 r) (Seq_length xs@107@01)))
        (img@141@01 r)))
    (=>
      (and
        (and (<= 3 (inv@140@01 r)) (< (inv@140@01 r) (Seq_length xs@107@01)))
        (img@141@01 r))
      (Set_in r ($FVF.domain_f (as sm@142@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@142@01  $FVF<f>))))
  :qid |qp.fvfDomDef86|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 3 (inv@140@01 r)) (< (inv@140@01 r) (Seq_length xs@107@01)))
        (img@141@01 r))
      (and
        (img@119@01 r)
        (and (<= 3 (inv@118@01 r)) (< (inv@118@01 r) (Seq_length xs@107@01)))))
    (= ($FVF.lookup_f (as sm@142@01  $FVF<f>) r) ($FVF.lookup_f $t@117@01 r)))
  :pattern (($FVF.lookup_f (as sm@142@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@117@01 r))
  :qid |qp.fvfValDef84|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 3 (inv@140@01 r)) (< (inv@140@01 r) (Seq_length xs@107@01)))
        (img@141@01 r))
      (and (img@115@01 r) (and (<= 0 (inv@114@01 r)) (< (inv@114@01 r) 3))))
    (= ($FVF.lookup_f (as sm@142@01  $FVF<f>) r) ($FVF.lookup_f $t@113@01 r)))
  :pattern (($FVF.lookup_f (as sm@142@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@113@01 r))
  :qid |qp.fvfValDef85|)))
; [eval] 0 <= i
; [eval] i < |xs|
; [eval] |xs|
(push) ; 4
(assert (not (< 1 (Seq_length xs@107@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< 1 (Seq_length xs@107@01)))
(assert (fun03%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<f>To$Snap (as sm@138@01  $FVF<f>))
      ($Snap.combine
        ($SortWrappers.$FVF<f>To$Snap (as sm@142@01  $FVF<f>))
        ($Snap.combine $Snap.unit $Snap.unit))))) xs@107@01 1))
(pop) ; 3
; Joined path conditions
(assert (forall ((j@135@01 Int)) (!
  (=>
    (and (<= 0 j@135@01) (< j@135@01 3))
    (and
      (= (inv@136@01 (Seq_index xs@107@01 j@135@01)) j@135@01)
      (img@137@01 (Seq_index xs@107@01 j@135@01))))
  :pattern ((Seq_index xs@107@01 j@135@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@137@01 r) (and (<= 0 (inv@136@01 r)) (< (inv@136@01 r) 3)))
    (= (Seq_index xs@107@01 (inv@136@01 r)) r))
  :pattern ((inv@136@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@138@01  $FVF<f>)))
      (and (and (<= 0 (inv@136@01 r)) (< (inv@136@01 r) 3)) (img@137@01 r)))
    (=>
      (and (and (<= 0 (inv@136@01 r)) (< (inv@136@01 r) 3)) (img@137@01 r))
      (Set_in r ($FVF.domain_f (as sm@138@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@138@01  $FVF<f>))))
  :qid |qp.fvfDomDef83|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@136@01 r)) (< (inv@136@01 r) 3)) (img@137@01 r))
      (and (img@115@01 r) (and (<= 0 (inv@114@01 r)) (< (inv@114@01 r) 3))))
    (= ($FVF.lookup_f (as sm@138@01  $FVF<f>) r) ($FVF.lookup_f $t@113@01 r)))
  :pattern (($FVF.lookup_f (as sm@138@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@113@01 r))
  :qid |qp.fvfValDef81|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@136@01 r)) (< (inv@136@01 r) 3)) (img@137@01 r))
      (and
        (img@119@01 r)
        (and (<= 3 (inv@118@01 r)) (< (inv@118@01 r) (Seq_length xs@107@01)))))
    (= ($FVF.lookup_f (as sm@138@01  $FVF<f>) r) ($FVF.lookup_f $t@117@01 r)))
  :pattern (($FVF.lookup_f (as sm@138@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@117@01 r))
  :qid |qp.fvfValDef82|)))
(assert (forall ((j@139@01 Int)) (!
  (=>
    (and (<= 3 j@139@01) (< j@139@01 (Seq_length xs@107@01)))
    (and
      (= (inv@140@01 (Seq_index xs@107@01 j@139@01)) j@139@01)
      (img@141@01 (Seq_index xs@107@01 j@139@01))))
  :pattern ((Seq_index xs@107@01 j@139@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@141@01 r)
      (and (<= 3 (inv@140@01 r)) (< (inv@140@01 r) (Seq_length xs@107@01))))
    (= (Seq_index xs@107@01 (inv@140@01 r)) r))
  :pattern ((inv@140@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@142@01  $FVF<f>)))
      (and
        (and (<= 3 (inv@140@01 r)) (< (inv@140@01 r) (Seq_length xs@107@01)))
        (img@141@01 r)))
    (=>
      (and
        (and (<= 3 (inv@140@01 r)) (< (inv@140@01 r) (Seq_length xs@107@01)))
        (img@141@01 r))
      (Set_in r ($FVF.domain_f (as sm@142@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@142@01  $FVF<f>))))
  :qid |qp.fvfDomDef86|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 3 (inv@140@01 r)) (< (inv@140@01 r) (Seq_length xs@107@01)))
        (img@141@01 r))
      (and
        (img@119@01 r)
        (and (<= 3 (inv@118@01 r)) (< (inv@118@01 r) (Seq_length xs@107@01)))))
    (= ($FVF.lookup_f (as sm@142@01  $FVF<f>) r) ($FVF.lookup_f $t@117@01 r)))
  :pattern (($FVF.lookup_f (as sm@142@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@117@01 r))
  :qid |qp.fvfValDef84|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 3 (inv@140@01 r)) (< (inv@140@01 r) (Seq_length xs@107@01)))
        (img@141@01 r))
      (and (img@115@01 r) (and (<= 0 (inv@114@01 r)) (< (inv@114@01 r) 3))))
    (= ($FVF.lookup_f (as sm@142@01  $FVF<f>) r) ($FVF.lookup_f $t@113@01 r)))
  :pattern (($FVF.lookup_f (as sm@142@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@113@01 r))
  :qid |qp.fvfValDef85|)))
(assert (and
  (forall ((k@133@01 Int) (j@134@01 Int)) (!
    (=>
      (and
        (>= k@133@01 0)
        (and
          (< k@133@01 (Seq_length xs@107@01))
          (and
            (>= j@134@01 0)
            (and (< j@134@01 (Seq_length xs@107@01)) (not (= k@133@01 j@134@01))))))
      (not (= (Seq_index xs@107@01 k@133@01) (Seq_index xs@107@01 j@134@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@46@12@46@106|))
  (forall ((j@135@01 Int)) (!
    (=>
      (and (<= 0 j@135@01) (< j@135@01 3))
      (or (<= 0 j@135@01) (not (<= 0 j@135@01))))
    :pattern ((Seq_index xs@107@01 j@135@01))
    :qid |f-aux|))
  (forall ((j@139@01 Int)) (!
    (=>
      (and (<= 3 j@139@01) (< j@139@01 (Seq_length xs@107@01)))
      (or (<= 3 j@139@01) (not (<= 3 j@139@01))))
    :pattern ((Seq_index xs@107@01 j@139@01))
    :qid |f-aux|))
  (< 1 (Seq_length xs@107@01))
  (fun03%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<f>To$Snap (as sm@138@01  $FVF<f>))
        ($Snap.combine
          ($SortWrappers.$FVF<f>To$Snap (as sm@142@01  $FVF<f>))
          ($Snap.combine $Snap.unit $Snap.unit))))) xs@107@01 1)))
(push) ; 3
(assert (not (<
  (fun03 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<f>To$Snap (as sm@128@01  $FVF<f>))
        ($Snap.combine
          ($SortWrappers.$FVF<f>To$Snap (as sm@132@01  $FVF<f>))
          ($Snap.combine $Snap.unit $Snap.unit))))) xs@107@01 0)
  (fun03 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<f>To$Snap (as sm@138@01  $FVF<f>))
        ($Snap.combine
          ($SortWrappers.$FVF<f>To$Snap (as sm@142@01  $FVF<f>))
          ($Snap.combine $Snap.unit $Snap.unit))))) xs@107@01 1))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<
  (fun03 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<f>To$Snap (as sm@128@01  $FVF<f>))
        ($Snap.combine
          ($SortWrappers.$FVF<f>To$Snap (as sm@132@01  $FVF<f>))
          ($Snap.combine $Snap.unit $Snap.unit))))) xs@107@01 0)
  (fun03 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<f>To$Snap (as sm@138@01  $FVF<f>))
        ($Snap.combine
          ($SortWrappers.$FVF<f>To$Snap (as sm@142@01  $FVF<f>))
          ($Snap.combine $Snap.unit $Snap.unit))))) xs@107@01 1)))
(pop) ; 2
(pop) ; 1
; ---------- test06a ----------
(declare-const xs@143@01 Seq<$Ref>)
(declare-const n@144@01 Int)
(declare-const xs@145@01 Seq<$Ref>)
(declare-const n@146@01 Int)
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
; var v1: Int
(declare-const v1@147@01 Int)
; [exec]
; inhale |xs| == n && 6 < n
(declare-const $t@148@01 $Snap)
(assert (= $t@148@01 ($Snap.combine ($Snap.first $t@148@01) ($Snap.second $t@148@01))))
(assert (= ($Snap.first $t@148@01) $Snap.unit))
; [eval] |xs| == n
; [eval] |xs|
(assert (= (Seq_length xs@145@01) n@146@01))
(assert (= ($Snap.second $t@148@01) $Snap.unit))
; [eval] 6 < n
(assert (< 6 n@146@01))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall k: Int, j: Int ::
;     { xs[k], xs[j] }
;     k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==>
;     xs[k] != xs[j])
(declare-const $t@149@01 $Snap)
(assert (= $t@149@01 $Snap.unit))
; [eval] (forall k: Int, j: Int :: { xs[k], xs[j] } k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j])
(declare-const k@150@01 Int)
(declare-const j@151@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j]
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j)))
; [eval] k >= 0
(push) ; 4
; [then-branch: 81 | !(k@150@01 >= 0) | live]
; [else-branch: 81 | k@150@01 >= 0 | live]
(push) ; 5
; [then-branch: 81 | !(k@150@01 >= 0)]
(assert (not (>= k@150@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 81 | k@150@01 >= 0]
(assert (>= k@150@01 0))
; [eval] k < |xs|
; [eval] |xs|
(push) ; 6
; [then-branch: 82 | !(k@150@01 < |xs@145@01|) | live]
; [else-branch: 82 | k@150@01 < |xs@145@01| | live]
(push) ; 7
; [then-branch: 82 | !(k@150@01 < |xs@145@01|)]
(assert (not (< k@150@01 (Seq_length xs@145@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 82 | k@150@01 < |xs@145@01|]
(assert (< k@150@01 (Seq_length xs@145@01)))
; [eval] j >= 0
(push) ; 8
; [then-branch: 83 | !(j@151@01 >= 0) | live]
; [else-branch: 83 | j@151@01 >= 0 | live]
(push) ; 9
; [then-branch: 83 | !(j@151@01 >= 0)]
(assert (not (>= j@151@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 83 | j@151@01 >= 0]
(assert (>= j@151@01 0))
; [eval] j < |xs|
; [eval] |xs|
(push) ; 10
; [then-branch: 84 | !(j@151@01 < |xs@145@01|) | live]
; [else-branch: 84 | j@151@01 < |xs@145@01| | live]
(push) ; 11
; [then-branch: 84 | !(j@151@01 < |xs@145@01|)]
(assert (not (< j@151@01 (Seq_length xs@145@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 84 | j@151@01 < |xs@145@01|]
(assert (< j@151@01 (Seq_length xs@145@01)))
; [eval] k != j
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (< j@151@01 (Seq_length xs@145@01))
  (not (< j@151@01 (Seq_length xs@145@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@151@01 0)
  (and
    (>= j@151@01 0)
    (or
      (< j@151@01 (Seq_length xs@145@01))
      (not (< j@151@01 (Seq_length xs@145@01)))))))
(assert (or (>= j@151@01 0) (not (>= j@151@01 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@150@01 (Seq_length xs@145@01))
  (and
    (< k@150@01 (Seq_length xs@145@01))
    (=>
      (>= j@151@01 0)
      (and
        (>= j@151@01 0)
        (or
          (< j@151@01 (Seq_length xs@145@01))
          (not (< j@151@01 (Seq_length xs@145@01))))))
    (or (>= j@151@01 0) (not (>= j@151@01 0))))))
(assert (or
  (< k@150@01 (Seq_length xs@145@01))
  (not (< k@150@01 (Seq_length xs@145@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@150@01 0)
  (and
    (>= k@150@01 0)
    (=>
      (< k@150@01 (Seq_length xs@145@01))
      (and
        (< k@150@01 (Seq_length xs@145@01))
        (=>
          (>= j@151@01 0)
          (and
            (>= j@151@01 0)
            (or
              (< j@151@01 (Seq_length xs@145@01))
              (not (< j@151@01 (Seq_length xs@145@01))))))
        (or (>= j@151@01 0) (not (>= j@151@01 0)))))
    (or
      (< k@150@01 (Seq_length xs@145@01))
      (not (< k@150@01 (Seq_length xs@145@01)))))))
(assert (or (>= k@150@01 0) (not (>= k@150@01 0))))
(push) ; 4
; [then-branch: 85 | k@150@01 >= 0 && k@150@01 < |xs@145@01| && j@151@01 >= 0 && j@151@01 < |xs@145@01| && k@150@01 != j@151@01 | live]
; [else-branch: 85 | !(k@150@01 >= 0 && k@150@01 < |xs@145@01| && j@151@01 >= 0 && j@151@01 < |xs@145@01| && k@150@01 != j@151@01) | live]
(push) ; 5
; [then-branch: 85 | k@150@01 >= 0 && k@150@01 < |xs@145@01| && j@151@01 >= 0 && j@151@01 < |xs@145@01| && k@150@01 != j@151@01]
(assert (and
  (>= k@150@01 0)
  (and
    (< k@150@01 (Seq_length xs@145@01))
    (and
      (>= j@151@01 0)
      (and (< j@151@01 (Seq_length xs@145@01)) (not (= k@150@01 j@151@01)))))))
; [eval] xs[k] != xs[j]
; [eval] xs[k]
; [eval] xs[j]
(pop) ; 5
(push) ; 5
; [else-branch: 85 | !(k@150@01 >= 0 && k@150@01 < |xs@145@01| && j@151@01 >= 0 && j@151@01 < |xs@145@01| && k@150@01 != j@151@01)]
(assert (not
  (and
    (>= k@150@01 0)
    (and
      (< k@150@01 (Seq_length xs@145@01))
      (and
        (>= j@151@01 0)
        (and (< j@151@01 (Seq_length xs@145@01)) (not (= k@150@01 j@151@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (>= k@150@01 0)
    (and
      (< k@150@01 (Seq_length xs@145@01))
      (and
        (>= j@151@01 0)
        (and (< j@151@01 (Seq_length xs@145@01)) (not (= k@150@01 j@151@01))))))
  (and
    (>= k@150@01 0)
    (< k@150@01 (Seq_length xs@145@01))
    (>= j@151@01 0)
    (< j@151@01 (Seq_length xs@145@01))
    (not (= k@150@01 j@151@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@150@01 0)
      (and
        (< k@150@01 (Seq_length xs@145@01))
        (and
          (>= j@151@01 0)
          (and (< j@151@01 (Seq_length xs@145@01)) (not (= k@150@01 j@151@01)))))))
  (and
    (>= k@150@01 0)
    (and
      (< k@150@01 (Seq_length xs@145@01))
      (and
        (>= j@151@01 0)
        (and (< j@151@01 (Seq_length xs@145@01)) (not (= k@150@01 j@151@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@150@01 Int) (j@151@01 Int)) (!
  (and
    (=>
      (>= k@150@01 0)
      (and
        (>= k@150@01 0)
        (=>
          (< k@150@01 (Seq_length xs@145@01))
          (and
            (< k@150@01 (Seq_length xs@145@01))
            (=>
              (>= j@151@01 0)
              (and
                (>= j@151@01 0)
                (or
                  (< j@151@01 (Seq_length xs@145@01))
                  (not (< j@151@01 (Seq_length xs@145@01))))))
            (or (>= j@151@01 0) (not (>= j@151@01 0)))))
        (or
          (< k@150@01 (Seq_length xs@145@01))
          (not (< k@150@01 (Seq_length xs@145@01))))))
    (or (>= k@150@01 0) (not (>= k@150@01 0)))
    (=>
      (and
        (>= k@150@01 0)
        (and
          (< k@150@01 (Seq_length xs@145@01))
          (and
            (>= j@151@01 0)
            (and (< j@151@01 (Seq_length xs@145@01)) (not (= k@150@01 j@151@01))))))
      (and
        (>= k@150@01 0)
        (< k@150@01 (Seq_length xs@145@01))
        (>= j@151@01 0)
        (< j@151@01 (Seq_length xs@145@01))
        (not (= k@150@01 j@151@01))))
    (or
      (not
        (and
          (>= k@150@01 0)
          (and
            (< k@150@01 (Seq_length xs@145@01))
            (and
              (>= j@151@01 0)
              (and
                (< j@151@01 (Seq_length xs@145@01))
                (not (= k@150@01 j@151@01)))))))
      (and
        (>= k@150@01 0)
        (and
          (< k@150@01 (Seq_length xs@145@01))
          (and
            (>= j@151@01 0)
            (and (< j@151@01 (Seq_length xs@145@01)) (not (= k@150@01 j@151@01))))))))
  :pattern ((Seq_index xs@145@01 k@150@01) (Seq_index xs@145@01 j@151@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@72@11@72@105-aux|)))
(assert (forall ((k@150@01 Int) (j@151@01 Int)) (!
  (=>
    (and
      (>= k@150@01 0)
      (and
        (< k@150@01 (Seq_length xs@145@01))
        (and
          (>= j@151@01 0)
          (and (< j@151@01 (Seq_length xs@145@01)) (not (= k@150@01 j@151@01))))))
    (not (= (Seq_index xs@145@01 k@150@01) (Seq_index xs@145@01 j@151@01))))
  :pattern ((Seq_index xs@145@01 k@150@01) (Seq_index xs@145@01 j@151@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@72@11@72@105|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall j: Int ::0 <= j && j < 3 ==> acc(xs[j].f, write))
(declare-const j@152@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= j && j < 3
; [eval] 0 <= j
(push) ; 4
; [then-branch: 86 | !(0 <= j@152@01) | live]
; [else-branch: 86 | 0 <= j@152@01 | live]
(push) ; 5
; [then-branch: 86 | !(0 <= j@152@01)]
(assert (not (<= 0 j@152@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 86 | 0 <= j@152@01]
(assert (<= 0 j@152@01))
; [eval] j < 3
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@152@01) (not (<= 0 j@152@01))))
(assert (and (<= 0 j@152@01) (< j@152@01 3)))
; [eval] xs[j]
(push) ; 4
(assert (not (>= j@152@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@152@01 (Seq_length xs@145@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-const $t@153@01 $FVF<f>)
(declare-fun inv@154@01 ($Ref) Int)
(declare-fun img@155@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@152@01 Int)) (!
  (=>
    (and (<= 0 j@152@01) (< j@152@01 3))
    (or (<= 0 j@152@01) (not (<= 0 j@152@01))))
  :pattern ((Seq_index xs@145@01 j@152@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@152@01 Int) (j2@152@01 Int)) (!
  (=>
    (and
      (and (<= 0 j1@152@01) (< j1@152@01 3))
      (and (<= 0 j2@152@01) (< j2@152@01 3))
      (= (Seq_index xs@145@01 j1@152@01) (Seq_index xs@145@01 j2@152@01)))
    (= j1@152@01 j2@152@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@152@01 Int)) (!
  (=>
    (and (<= 0 j@152@01) (< j@152@01 3))
    (and
      (= (inv@154@01 (Seq_index xs@145@01 j@152@01)) j@152@01)
      (img@155@01 (Seq_index xs@145@01 j@152@01))))
  :pattern ((Seq_index xs@145@01 j@152@01))
  :qid |quant-u-11629|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@155@01 r) (and (<= 0 (inv@154@01 r)) (< (inv@154@01 r) 3)))
    (= (Seq_index xs@145@01 (inv@154@01 r)) r))
  :pattern ((inv@154@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@152@01 Int)) (!
  (=>
    (and (<= 0 j@152@01) (< j@152@01 3))
    (not (= (Seq_index xs@145@01 j@152@01) $Ref.null)))
  :pattern ((Seq_index xs@145@01 j@152@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall j: Int ::3 <= j && j < n ==> acc(xs[j].f, write))
(declare-const j@156@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 3 <= j && j < n
; [eval] 3 <= j
(push) ; 4
; [then-branch: 87 | !(3 <= j@156@01) | live]
; [else-branch: 87 | 3 <= j@156@01 | live]
(push) ; 5
; [then-branch: 87 | !(3 <= j@156@01)]
(assert (not (<= 3 j@156@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 87 | 3 <= j@156@01]
(assert (<= 3 j@156@01))
; [eval] j < n
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 3 j@156@01) (not (<= 3 j@156@01))))
(assert (and (<= 3 j@156@01) (< j@156@01 n@146@01)))
; [eval] xs[j]
(push) ; 4
(assert (not (>= j@156@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@156@01 (Seq_length xs@145@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-const $t@157@01 $FVF<f>)
(declare-fun inv@158@01 ($Ref) Int)
(declare-fun img@159@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@156@01 Int)) (!
  (=>
    (and (<= 3 j@156@01) (< j@156@01 n@146@01))
    (or (<= 3 j@156@01) (not (<= 3 j@156@01))))
  :pattern ((Seq_index xs@145@01 j@156@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@156@01 Int) (j2@156@01 Int)) (!
  (=>
    (and
      (and (<= 3 j1@156@01) (< j1@156@01 n@146@01))
      (and (<= 3 j2@156@01) (< j2@156@01 n@146@01))
      (= (Seq_index xs@145@01 j1@156@01) (Seq_index xs@145@01 j2@156@01)))
    (= j1@156@01 j2@156@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@156@01 Int)) (!
  (=>
    (and (<= 3 j@156@01) (< j@156@01 n@146@01))
    (and
      (= (inv@158@01 (Seq_index xs@145@01 j@156@01)) j@156@01)
      (img@159@01 (Seq_index xs@145@01 j@156@01))))
  :pattern ((Seq_index xs@145@01 j@156@01))
  :qid |quant-u-11631|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@159@01 r) (and (<= 3 (inv@158@01 r)) (< (inv@158@01 r) n@146@01)))
    (= (Seq_index xs@145@01 (inv@158@01 r)) r))
  :pattern ((inv@158@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@156@01 Int)) (!
  (=>
    (and (<= 3 j@156@01) (< j@156@01 n@146@01))
    (not (= (Seq_index xs@145@01 j@156@01) $Ref.null)))
  :pattern ((Seq_index xs@145@01 j@156@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@145@01 j@156@01) (Seq_index xs@145@01 j@152@01))
    (=
      (and
        (img@159@01 r)
        (and (<= 3 (inv@158@01 r)) (< (inv@158@01 r) n@146@01)))
      (and (img@155@01 r) (and (<= 0 (inv@154@01 r)) (< (inv@154@01 r) 3)))))
  
  :qid |quant-u-11632|))))
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
; v1 := xs[2].f
; [eval] xs[2]
(set-option :timeout 0)
(push) ; 3
(assert (not (< 2 (Seq_length xs@145@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@160@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@155@01 r) (and (<= 0 (inv@154@01 r)) (< (inv@154@01 r) 3)))
    (= ($FVF.lookup_f (as sm@160@01  $FVF<f>) r) ($FVF.lookup_f $t@153@01 r)))
  :pattern (($FVF.lookup_f (as sm@160@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@153@01 r))
  :qid |qp.fvfValDef87|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@159@01 r) (and (<= 3 (inv@158@01 r)) (< (inv@158@01 r) n@146@01)))
    (= ($FVF.lookup_f (as sm@160@01  $FVF<f>) r) ($FVF.lookup_f $t@157@01 r)))
  :pattern (($FVF.lookup_f (as sm@160@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@157@01 r))
  :qid |qp.fvfValDef88|)))
(declare-const pm@161@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@161@01  $FPM) r)
    (+
      (ite
        (and (img@155@01 r) (and (<= 0 (inv@154@01 r)) (< (inv@154@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@159@01 r)
          (and (<= 3 (inv@158@01 r)) (< (inv@158@01 r) n@146@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@161@01  $FPM) r))
  :qid |qp.resPrmSumDef89|)))
(push) ; 3
(assert (not (< $Perm.No ($FVF.perm_f (as pm@161@01  $FPM) (Seq_index xs@145@01 2)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const v1@162@01 Int)
(assert (= v1@162@01 ($FVF.lookup_f (as sm@160@01  $FVF<f>) (Seq_index xs@145@01 2))))
; [exec]
; fold acc(P02(xs, n), write)
; [eval] |xs| == n
; [eval] |xs|
; [eval] 3 <= n
(push) ; 3
(assert (not (<= 3 n@146@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= 3 n@146@01))
; [eval] (forall k: Int, j: Int :: { xs[k], xs[j] } k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j])
(declare-const k@163@01 Int)
(declare-const j@164@01 Int)
(push) ; 3
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j]
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j)))
; [eval] k >= 0
(push) ; 4
; [then-branch: 88 | !(k@163@01 >= 0) | live]
; [else-branch: 88 | k@163@01 >= 0 | live]
(push) ; 5
; [then-branch: 88 | !(k@163@01 >= 0)]
(assert (not (>= k@163@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 88 | k@163@01 >= 0]
(assert (>= k@163@01 0))
; [eval] k < |xs|
; [eval] |xs|
(push) ; 6
; [then-branch: 89 | !(k@163@01 < |xs@145@01|) | live]
; [else-branch: 89 | k@163@01 < |xs@145@01| | live]
(push) ; 7
; [then-branch: 89 | !(k@163@01 < |xs@145@01|)]
(assert (not (< k@163@01 (Seq_length xs@145@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 89 | k@163@01 < |xs@145@01|]
(assert (< k@163@01 (Seq_length xs@145@01)))
; [eval] j >= 0
(push) ; 8
; [then-branch: 90 | !(j@164@01 >= 0) | live]
; [else-branch: 90 | j@164@01 >= 0 | live]
(push) ; 9
; [then-branch: 90 | !(j@164@01 >= 0)]
(assert (not (>= j@164@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 90 | j@164@01 >= 0]
(assert (>= j@164@01 0))
; [eval] j < |xs|
; [eval] |xs|
(push) ; 10
; [then-branch: 91 | !(j@164@01 < |xs@145@01|) | live]
; [else-branch: 91 | j@164@01 < |xs@145@01| | live]
(push) ; 11
; [then-branch: 91 | !(j@164@01 < |xs@145@01|)]
(assert (not (< j@164@01 (Seq_length xs@145@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 91 | j@164@01 < |xs@145@01|]
(assert (< j@164@01 (Seq_length xs@145@01)))
; [eval] k != j
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (< j@164@01 (Seq_length xs@145@01))
  (not (< j@164@01 (Seq_length xs@145@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@164@01 0)
  (and
    (>= j@164@01 0)
    (or
      (< j@164@01 (Seq_length xs@145@01))
      (not (< j@164@01 (Seq_length xs@145@01)))))))
(assert (or (>= j@164@01 0) (not (>= j@164@01 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@163@01 (Seq_length xs@145@01))
  (and
    (< k@163@01 (Seq_length xs@145@01))
    (=>
      (>= j@164@01 0)
      (and
        (>= j@164@01 0)
        (or
          (< j@164@01 (Seq_length xs@145@01))
          (not (< j@164@01 (Seq_length xs@145@01))))))
    (or (>= j@164@01 0) (not (>= j@164@01 0))))))
(assert (or
  (< k@163@01 (Seq_length xs@145@01))
  (not (< k@163@01 (Seq_length xs@145@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@163@01 0)
  (and
    (>= k@163@01 0)
    (=>
      (< k@163@01 (Seq_length xs@145@01))
      (and
        (< k@163@01 (Seq_length xs@145@01))
        (=>
          (>= j@164@01 0)
          (and
            (>= j@164@01 0)
            (or
              (< j@164@01 (Seq_length xs@145@01))
              (not (< j@164@01 (Seq_length xs@145@01))))))
        (or (>= j@164@01 0) (not (>= j@164@01 0)))))
    (or
      (< k@163@01 (Seq_length xs@145@01))
      (not (< k@163@01 (Seq_length xs@145@01)))))))
(assert (or (>= k@163@01 0) (not (>= k@163@01 0))))
(push) ; 4
; [then-branch: 92 | k@163@01 >= 0 && k@163@01 < |xs@145@01| && j@164@01 >= 0 && j@164@01 < |xs@145@01| && k@163@01 != j@164@01 | live]
; [else-branch: 92 | !(k@163@01 >= 0 && k@163@01 < |xs@145@01| && j@164@01 >= 0 && j@164@01 < |xs@145@01| && k@163@01 != j@164@01) | live]
(push) ; 5
; [then-branch: 92 | k@163@01 >= 0 && k@163@01 < |xs@145@01| && j@164@01 >= 0 && j@164@01 < |xs@145@01| && k@163@01 != j@164@01]
(assert (and
  (>= k@163@01 0)
  (and
    (< k@163@01 (Seq_length xs@145@01))
    (and
      (>= j@164@01 0)
      (and (< j@164@01 (Seq_length xs@145@01)) (not (= k@163@01 j@164@01)))))))
; [eval] xs[k] != xs[j]
; [eval] xs[k]
; [eval] xs[j]
(pop) ; 5
(push) ; 5
; [else-branch: 92 | !(k@163@01 >= 0 && k@163@01 < |xs@145@01| && j@164@01 >= 0 && j@164@01 < |xs@145@01| && k@163@01 != j@164@01)]
(assert (not
  (and
    (>= k@163@01 0)
    (and
      (< k@163@01 (Seq_length xs@145@01))
      (and
        (>= j@164@01 0)
        (and (< j@164@01 (Seq_length xs@145@01)) (not (= k@163@01 j@164@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (>= k@163@01 0)
    (and
      (< k@163@01 (Seq_length xs@145@01))
      (and
        (>= j@164@01 0)
        (and (< j@164@01 (Seq_length xs@145@01)) (not (= k@163@01 j@164@01))))))
  (and
    (>= k@163@01 0)
    (< k@163@01 (Seq_length xs@145@01))
    (>= j@164@01 0)
    (< j@164@01 (Seq_length xs@145@01))
    (not (= k@163@01 j@164@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@163@01 0)
      (and
        (< k@163@01 (Seq_length xs@145@01))
        (and
          (>= j@164@01 0)
          (and (< j@164@01 (Seq_length xs@145@01)) (not (= k@163@01 j@164@01)))))))
  (and
    (>= k@163@01 0)
    (and
      (< k@163@01 (Seq_length xs@145@01))
      (and
        (>= j@164@01 0)
        (and (< j@164@01 (Seq_length xs@145@01)) (not (= k@163@01 j@164@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@163@01 Int) (j@164@01 Int)) (!
  (and
    (=>
      (>= k@163@01 0)
      (and
        (>= k@163@01 0)
        (=>
          (< k@163@01 (Seq_length xs@145@01))
          (and
            (< k@163@01 (Seq_length xs@145@01))
            (=>
              (>= j@164@01 0)
              (and
                (>= j@164@01 0)
                (or
                  (< j@164@01 (Seq_length xs@145@01))
                  (not (< j@164@01 (Seq_length xs@145@01))))))
            (or (>= j@164@01 0) (not (>= j@164@01 0)))))
        (or
          (< k@163@01 (Seq_length xs@145@01))
          (not (< k@163@01 (Seq_length xs@145@01))))))
    (or (>= k@163@01 0) (not (>= k@163@01 0)))
    (=>
      (and
        (>= k@163@01 0)
        (and
          (< k@163@01 (Seq_length xs@145@01))
          (and
            (>= j@164@01 0)
            (and (< j@164@01 (Seq_length xs@145@01)) (not (= k@163@01 j@164@01))))))
      (and
        (>= k@163@01 0)
        (< k@163@01 (Seq_length xs@145@01))
        (>= j@164@01 0)
        (< j@164@01 (Seq_length xs@145@01))
        (not (= k@163@01 j@164@01))))
    (or
      (not
        (and
          (>= k@163@01 0)
          (and
            (< k@163@01 (Seq_length xs@145@01))
            (and
              (>= j@164@01 0)
              (and
                (< j@164@01 (Seq_length xs@145@01))
                (not (= k@163@01 j@164@01)))))))
      (and
        (>= k@163@01 0)
        (and
          (< k@163@01 (Seq_length xs@145@01))
          (and
            (>= j@164@01 0)
            (and (< j@164@01 (Seq_length xs@145@01)) (not (= k@163@01 j@164@01))))))))
  :pattern ((Seq_index xs@145@01 k@163@01) (Seq_index xs@145@01 j@164@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@65@7@65@101-aux|)))
(push) ; 3
(assert (not (forall ((k@163@01 Int) (j@164@01 Int)) (!
  (=>
    (and
      (>= k@163@01 0)
      (and
        (< k@163@01 (Seq_length xs@145@01))
        (and
          (>= j@164@01 0)
          (and (< j@164@01 (Seq_length xs@145@01)) (not (= k@163@01 j@164@01))))))
    (not (= (Seq_index xs@145@01 k@163@01) (Seq_index xs@145@01 j@164@01))))
  :pattern ((Seq_index xs@145@01 k@163@01) (Seq_index xs@145@01 j@164@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@65@7@65@101|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((k@163@01 Int) (j@164@01 Int)) (!
  (=>
    (and
      (>= k@163@01 0)
      (and
        (< k@163@01 (Seq_length xs@145@01))
        (and
          (>= j@164@01 0)
          (and (< j@164@01 (Seq_length xs@145@01)) (not (= k@163@01 j@164@01))))))
    (not (= (Seq_index xs@145@01 k@163@01) (Seq_index xs@145@01 j@164@01))))
  :pattern ((Seq_index xs@145@01 k@163@01) (Seq_index xs@145@01 j@164@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@65@7@65@101|)))
(declare-const j@165@01 Int)
(push) ; 3
; [eval] 0 <= j && j < 3
; [eval] 0 <= j
(push) ; 4
; [then-branch: 93 | !(0 <= j@165@01) | live]
; [else-branch: 93 | 0 <= j@165@01 | live]
(push) ; 5
; [then-branch: 93 | !(0 <= j@165@01)]
(assert (not (<= 0 j@165@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 93 | 0 <= j@165@01]
(assert (<= 0 j@165@01))
; [eval] j < 3
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@165@01) (not (<= 0 j@165@01))))
(assert (and (<= 0 j@165@01) (< j@165@01 3)))
; [eval] xs[j]
(push) ; 4
(assert (not (>= j@165@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@165@01 (Seq_length xs@145@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@166@01 ($Ref) Int)
(declare-fun img@167@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@165@01 Int)) (!
  (=>
    (and (<= 0 j@165@01) (< j@165@01 3))
    (or (<= 0 j@165@01) (not (<= 0 j@165@01))))
  :pattern ((Seq_index xs@145@01 j@165@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@165@01 Int) (j2@165@01 Int)) (!
  (=>
    (and
      (and (<= 0 j1@165@01) (< j1@165@01 3))
      (and (<= 0 j2@165@01) (< j2@165@01 3))
      (= (Seq_index xs@145@01 j1@165@01) (Seq_index xs@145@01 j2@165@01)))
    (= j1@165@01 j2@165@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@165@01 Int)) (!
  (=>
    (and (<= 0 j@165@01) (< j@165@01 3))
    (and
      (= (inv@166@01 (Seq_index xs@145@01 j@165@01)) j@165@01)
      (img@167@01 (Seq_index xs@145@01 j@165@01))))
  :pattern ((Seq_index xs@145@01 j@165@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@167@01 r) (and (<= 0 (inv@166@01 r)) (< (inv@166@01 r) 3)))
    (= (Seq_index xs@145@01 (inv@166@01 r)) r))
  :pattern ((inv@166@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@168@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@166@01 r)) (< (inv@166@01 r) 3))
      (img@167@01 r)
      (= r (Seq_index xs@145@01 (inv@166@01 r))))
    ($Perm.min
      (ite
        (and (img@155@01 r) (and (<= 0 (inv@154@01 r)) (< (inv@154@01 r) 3)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@169@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@166@01 r)) (< (inv@166@01 r) 3))
      (img@167@01 r)
      (= r (Seq_index xs@145@01 (inv@166@01 r))))
    ($Perm.min
      (ite
        (and
          (img@159@01 r)
          (and (<= 3 (inv@158@01 r)) (< (inv@158@01 r) n@146@01)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@168@01 r)))
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
        (and (img@155@01 r) (and (<= 0 (inv@154@01 r)) (< (inv@154@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (pTaken@168@01 r))
    $Perm.No)
  
  :qid |quant-u-11635|))))
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
      (and (<= 0 (inv@166@01 r)) (< (inv@166@01 r) 3))
      (img@167@01 r)
      (= r (Seq_index xs@145@01 (inv@166@01 r))))
    (= (- $Perm.Write (pTaken@168@01 r)) $Perm.No))
  
  :qid |quant-u-11636|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@170@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@170@01  $FVF<f>)))
      (and (and (<= 0 (inv@166@01 r)) (< (inv@166@01 r) 3)) (img@167@01 r)))
    (=>
      (and (and (<= 0 (inv@166@01 r)) (< (inv@166@01 r) 3)) (img@167@01 r))
      (Set_in r ($FVF.domain_f (as sm@170@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@170@01  $FVF<f>))))
  :qid |qp.fvfDomDef92|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@166@01 r)) (< (inv@166@01 r) 3)) (img@167@01 r))
      (and (img@155@01 r) (and (<= 0 (inv@154@01 r)) (< (inv@154@01 r) 3))))
    (= ($FVF.lookup_f (as sm@170@01  $FVF<f>) r) ($FVF.lookup_f $t@153@01 r)))
  :pattern (($FVF.lookup_f (as sm@170@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@153@01 r))
  :qid |qp.fvfValDef90|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@166@01 r)) (< (inv@166@01 r) 3)) (img@167@01 r))
      (and
        (img@159@01 r)
        (and (<= 3 (inv@158@01 r)) (< (inv@158@01 r) n@146@01))))
    (= ($FVF.lookup_f (as sm@170@01  $FVF<f>) r) ($FVF.lookup_f $t@157@01 r)))
  :pattern (($FVF.lookup_f (as sm@170@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@157@01 r))
  :qid |qp.fvfValDef91|)))
(declare-const j@171@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 3 <= j && j < n
; [eval] 3 <= j
(push) ; 4
; [then-branch: 94 | !(3 <= j@171@01) | live]
; [else-branch: 94 | 3 <= j@171@01 | live]
(push) ; 5
; [then-branch: 94 | !(3 <= j@171@01)]
(assert (not (<= 3 j@171@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 94 | 3 <= j@171@01]
(assert (<= 3 j@171@01))
; [eval] j < n
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 3 j@171@01) (not (<= 3 j@171@01))))
(assert (and (<= 3 j@171@01) (< j@171@01 n@146@01)))
; [eval] xs[j]
(push) ; 4
(assert (not (>= j@171@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@171@01 (Seq_length xs@145@01))))
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
(assert (forall ((j@171@01 Int)) (!
  (=>
    (and (<= 3 j@171@01) (< j@171@01 n@146@01))
    (or (<= 3 j@171@01) (not (<= 3 j@171@01))))
  :pattern ((Seq_index xs@145@01 j@171@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@171@01 Int) (j2@171@01 Int)) (!
  (=>
    (and
      (and (<= 3 j1@171@01) (< j1@171@01 n@146@01))
      (and (<= 3 j2@171@01) (< j2@171@01 n@146@01))
      (= (Seq_index xs@145@01 j1@171@01) (Seq_index xs@145@01 j2@171@01)))
    (= j1@171@01 j2@171@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@171@01 Int)) (!
  (=>
    (and (<= 3 j@171@01) (< j@171@01 n@146@01))
    (and
      (= (inv@172@01 (Seq_index xs@145@01 j@171@01)) j@171@01)
      (img@173@01 (Seq_index xs@145@01 j@171@01))))
  :pattern ((Seq_index xs@145@01 j@171@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@173@01 r) (and (<= 3 (inv@172@01 r)) (< (inv@172@01 r) n@146@01)))
    (= (Seq_index xs@145@01 (inv@172@01 r)) r))
  :pattern ((inv@172@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@174@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 3 (inv@172@01 r)) (< (inv@172@01 r) n@146@01))
      (img@173@01 r)
      (= r (Seq_index xs@145@01 (inv@172@01 r))))
    ($Perm.min
      (ite
        (and
          (img@159@01 r)
          (and (<= 3 (inv@158@01 r)) (< (inv@158@01 r) n@146@01)))
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
          (img@159@01 r)
          (and (<= 3 (inv@158@01 r)) (< (inv@158@01 r) n@146@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@174@01 r))
    $Perm.No)
  
  :qid |quant-u-11639|))))
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
      (and (<= 3 (inv@172@01 r)) (< (inv@172@01 r) n@146@01))
      (img@173@01 r)
      (= r (Seq_index xs@145@01 (inv@172@01 r))))
    (= (- $Perm.Write (pTaken@174@01 r)) $Perm.No))
  
  :qid |quant-u-11640|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@175@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@175@01  $FVF<f>)))
      (and
        (and (<= 3 (inv@172@01 r)) (< (inv@172@01 r) n@146@01))
        (img@173@01 r)))
    (=>
      (and
        (and (<= 3 (inv@172@01 r)) (< (inv@172@01 r) n@146@01))
        (img@173@01 r))
      (Set_in r ($FVF.domain_f (as sm@175@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@175@01  $FVF<f>))))
  :qid |qp.fvfDomDef94|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 3 (inv@172@01 r)) (< (inv@172@01 r) n@146@01))
        (img@173@01 r))
      (and
        (img@159@01 r)
        (and (<= 3 (inv@158@01 r)) (< (inv@158@01 r) n@146@01))))
    (= ($FVF.lookup_f (as sm@175@01  $FVF<f>) r) ($FVF.lookup_f $t@157@01 r)))
  :pattern (($FVF.lookup_f (as sm@175@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@157@01 r))
  :qid |qp.fvfValDef93|)))
(assert (P02%trigger ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<f>To$Snap (as sm@170@01  $FVF<f>))
        ($SortWrappers.$FVF<f>To$Snap (as sm@175@01  $FVF<f>)))))) xs@145@01 n@146@01))
; [exec]
; unfold acc(P02(xs, n), write)
; [eval] |xs| == n
; [eval] |xs|
; [eval] 3 <= n
; [eval] (forall k: Int, j: Int :: { xs[k], xs[j] } k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j])
(declare-const k@176@01 Int)
(declare-const j@177@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j]
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j)))
; [eval] k >= 0
(push) ; 4
; [then-branch: 95 | !(k@176@01 >= 0) | live]
; [else-branch: 95 | k@176@01 >= 0 | live]
(push) ; 5
; [then-branch: 95 | !(k@176@01 >= 0)]
(assert (not (>= k@176@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 95 | k@176@01 >= 0]
(assert (>= k@176@01 0))
; [eval] k < |xs|
; [eval] |xs|
(push) ; 6
; [then-branch: 96 | !(k@176@01 < |xs@145@01|) | live]
; [else-branch: 96 | k@176@01 < |xs@145@01| | live]
(push) ; 7
; [then-branch: 96 | !(k@176@01 < |xs@145@01|)]
(assert (not (< k@176@01 (Seq_length xs@145@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 96 | k@176@01 < |xs@145@01|]
(assert (< k@176@01 (Seq_length xs@145@01)))
; [eval] j >= 0
(push) ; 8
; [then-branch: 97 | !(j@177@01 >= 0) | live]
; [else-branch: 97 | j@177@01 >= 0 | live]
(push) ; 9
; [then-branch: 97 | !(j@177@01 >= 0)]
(assert (not (>= j@177@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 97 | j@177@01 >= 0]
(assert (>= j@177@01 0))
; [eval] j < |xs|
; [eval] |xs|
(push) ; 10
; [then-branch: 98 | !(j@177@01 < |xs@145@01|) | live]
; [else-branch: 98 | j@177@01 < |xs@145@01| | live]
(push) ; 11
; [then-branch: 98 | !(j@177@01 < |xs@145@01|)]
(assert (not (< j@177@01 (Seq_length xs@145@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 98 | j@177@01 < |xs@145@01|]
(assert (< j@177@01 (Seq_length xs@145@01)))
; [eval] k != j
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (< j@177@01 (Seq_length xs@145@01))
  (not (< j@177@01 (Seq_length xs@145@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@177@01 0)
  (and
    (>= j@177@01 0)
    (or
      (< j@177@01 (Seq_length xs@145@01))
      (not (< j@177@01 (Seq_length xs@145@01)))))))
(assert (or (>= j@177@01 0) (not (>= j@177@01 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@176@01 (Seq_length xs@145@01))
  (and
    (< k@176@01 (Seq_length xs@145@01))
    (=>
      (>= j@177@01 0)
      (and
        (>= j@177@01 0)
        (or
          (< j@177@01 (Seq_length xs@145@01))
          (not (< j@177@01 (Seq_length xs@145@01))))))
    (or (>= j@177@01 0) (not (>= j@177@01 0))))))
(assert (or
  (< k@176@01 (Seq_length xs@145@01))
  (not (< k@176@01 (Seq_length xs@145@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@176@01 0)
  (and
    (>= k@176@01 0)
    (=>
      (< k@176@01 (Seq_length xs@145@01))
      (and
        (< k@176@01 (Seq_length xs@145@01))
        (=>
          (>= j@177@01 0)
          (and
            (>= j@177@01 0)
            (or
              (< j@177@01 (Seq_length xs@145@01))
              (not (< j@177@01 (Seq_length xs@145@01))))))
        (or (>= j@177@01 0) (not (>= j@177@01 0)))))
    (or
      (< k@176@01 (Seq_length xs@145@01))
      (not (< k@176@01 (Seq_length xs@145@01)))))))
(assert (or (>= k@176@01 0) (not (>= k@176@01 0))))
(push) ; 4
; [then-branch: 99 | k@176@01 >= 0 && k@176@01 < |xs@145@01| && j@177@01 >= 0 && j@177@01 < |xs@145@01| && k@176@01 != j@177@01 | live]
; [else-branch: 99 | !(k@176@01 >= 0 && k@176@01 < |xs@145@01| && j@177@01 >= 0 && j@177@01 < |xs@145@01| && k@176@01 != j@177@01) | live]
(push) ; 5
; [then-branch: 99 | k@176@01 >= 0 && k@176@01 < |xs@145@01| && j@177@01 >= 0 && j@177@01 < |xs@145@01| && k@176@01 != j@177@01]
(assert (and
  (>= k@176@01 0)
  (and
    (< k@176@01 (Seq_length xs@145@01))
    (and
      (>= j@177@01 0)
      (and (< j@177@01 (Seq_length xs@145@01)) (not (= k@176@01 j@177@01)))))))
; [eval] xs[k] != xs[j]
; [eval] xs[k]
; [eval] xs[j]
(pop) ; 5
(push) ; 5
; [else-branch: 99 | !(k@176@01 >= 0 && k@176@01 < |xs@145@01| && j@177@01 >= 0 && j@177@01 < |xs@145@01| && k@176@01 != j@177@01)]
(assert (not
  (and
    (>= k@176@01 0)
    (and
      (< k@176@01 (Seq_length xs@145@01))
      (and
        (>= j@177@01 0)
        (and (< j@177@01 (Seq_length xs@145@01)) (not (= k@176@01 j@177@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (>= k@176@01 0)
    (and
      (< k@176@01 (Seq_length xs@145@01))
      (and
        (>= j@177@01 0)
        (and (< j@177@01 (Seq_length xs@145@01)) (not (= k@176@01 j@177@01))))))
  (and
    (>= k@176@01 0)
    (< k@176@01 (Seq_length xs@145@01))
    (>= j@177@01 0)
    (< j@177@01 (Seq_length xs@145@01))
    (not (= k@176@01 j@177@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@176@01 0)
      (and
        (< k@176@01 (Seq_length xs@145@01))
        (and
          (>= j@177@01 0)
          (and (< j@177@01 (Seq_length xs@145@01)) (not (= k@176@01 j@177@01)))))))
  (and
    (>= k@176@01 0)
    (and
      (< k@176@01 (Seq_length xs@145@01))
      (and
        (>= j@177@01 0)
        (and (< j@177@01 (Seq_length xs@145@01)) (not (= k@176@01 j@177@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@176@01 Int) (j@177@01 Int)) (!
  (and
    (=>
      (>= k@176@01 0)
      (and
        (>= k@176@01 0)
        (=>
          (< k@176@01 (Seq_length xs@145@01))
          (and
            (< k@176@01 (Seq_length xs@145@01))
            (=>
              (>= j@177@01 0)
              (and
                (>= j@177@01 0)
                (or
                  (< j@177@01 (Seq_length xs@145@01))
                  (not (< j@177@01 (Seq_length xs@145@01))))))
            (or (>= j@177@01 0) (not (>= j@177@01 0)))))
        (or
          (< k@176@01 (Seq_length xs@145@01))
          (not (< k@176@01 (Seq_length xs@145@01))))))
    (or (>= k@176@01 0) (not (>= k@176@01 0)))
    (=>
      (and
        (>= k@176@01 0)
        (and
          (< k@176@01 (Seq_length xs@145@01))
          (and
            (>= j@177@01 0)
            (and (< j@177@01 (Seq_length xs@145@01)) (not (= k@176@01 j@177@01))))))
      (and
        (>= k@176@01 0)
        (< k@176@01 (Seq_length xs@145@01))
        (>= j@177@01 0)
        (< j@177@01 (Seq_length xs@145@01))
        (not (= k@176@01 j@177@01))))
    (or
      (not
        (and
          (>= k@176@01 0)
          (and
            (< k@176@01 (Seq_length xs@145@01))
            (and
              (>= j@177@01 0)
              (and
                (< j@177@01 (Seq_length xs@145@01))
                (not (= k@176@01 j@177@01)))))))
      (and
        (>= k@176@01 0)
        (and
          (< k@176@01 (Seq_length xs@145@01))
          (and
            (>= j@177@01 0)
            (and (< j@177@01 (Seq_length xs@145@01)) (not (= k@176@01 j@177@01))))))))
  :pattern ((Seq_index xs@145@01 k@176@01) (Seq_index xs@145@01 j@177@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@65@7@65@101-aux|)))
(assert (forall ((k@176@01 Int) (j@177@01 Int)) (!
  (=>
    (and
      (>= k@176@01 0)
      (and
        (< k@176@01 (Seq_length xs@145@01))
        (and
          (>= j@177@01 0)
          (and (< j@177@01 (Seq_length xs@145@01)) (not (= k@176@01 j@177@01))))))
    (not (= (Seq_index xs@145@01 k@176@01) (Seq_index xs@145@01 j@177@01))))
  :pattern ((Seq_index xs@145@01 k@176@01) (Seq_index xs@145@01 j@177@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@65@7@65@101|)))
(declare-const j@178@01 Int)
(push) ; 3
; [eval] 0 <= j && j < 3
; [eval] 0 <= j
(push) ; 4
; [then-branch: 100 | !(0 <= j@178@01) | live]
; [else-branch: 100 | 0 <= j@178@01 | live]
(push) ; 5
; [then-branch: 100 | !(0 <= j@178@01)]
(assert (not (<= 0 j@178@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 100 | 0 <= j@178@01]
(assert (<= 0 j@178@01))
; [eval] j < 3
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@178@01) (not (<= 0 j@178@01))))
(assert (and (<= 0 j@178@01) (< j@178@01 3)))
; [eval] xs[j]
(push) ; 4
(assert (not (>= j@178@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@178@01 (Seq_length xs@145@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@179@01 ($Ref) Int)
(declare-fun img@180@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@178@01 Int)) (!
  (=>
    (and (<= 0 j@178@01) (< j@178@01 3))
    (or (<= 0 j@178@01) (not (<= 0 j@178@01))))
  :pattern ((Seq_index xs@145@01 j@178@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@178@01 Int) (j2@178@01 Int)) (!
  (=>
    (and
      (and (<= 0 j1@178@01) (< j1@178@01 3))
      (and (<= 0 j2@178@01) (< j2@178@01 3))
      (= (Seq_index xs@145@01 j1@178@01) (Seq_index xs@145@01 j2@178@01)))
    (= j1@178@01 j2@178@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@178@01 Int)) (!
  (=>
    (and (<= 0 j@178@01) (< j@178@01 3))
    (and
      (= (inv@179@01 (Seq_index xs@145@01 j@178@01)) j@178@01)
      (img@180@01 (Seq_index xs@145@01 j@178@01))))
  :pattern ((Seq_index xs@145@01 j@178@01))
  :qid |quant-u-11642|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@180@01 r) (and (<= 0 (inv@179@01 r)) (< (inv@179@01 r) 3)))
    (= (Seq_index xs@145@01 (inv@179@01 r)) r))
  :pattern ((inv@179@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@178@01 Int)) (!
  (=>
    (and (<= 0 j@178@01) (< j@178@01 3))
    (not (= (Seq_index xs@145@01 j@178@01) $Ref.null)))
  :pattern ((Seq_index xs@145@01 j@178@01))
  :qid |f-permImpliesNonNull|)))
(declare-const j@181@01 Int)
(push) ; 3
; [eval] 3 <= j && j < n
; [eval] 3 <= j
(push) ; 4
; [then-branch: 101 | !(3 <= j@181@01) | live]
; [else-branch: 101 | 3 <= j@181@01 | live]
(push) ; 5
; [then-branch: 101 | !(3 <= j@181@01)]
(assert (not (<= 3 j@181@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 101 | 3 <= j@181@01]
(assert (<= 3 j@181@01))
; [eval] j < n
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 3 j@181@01) (not (<= 3 j@181@01))))
(assert (and (<= 3 j@181@01) (< j@181@01 n@146@01)))
; [eval] xs[j]
(push) ; 4
(assert (not (>= j@181@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@181@01 (Seq_length xs@145@01))))
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
(assert (forall ((j@181@01 Int)) (!
  (=>
    (and (<= 3 j@181@01) (< j@181@01 n@146@01))
    (or (<= 3 j@181@01) (not (<= 3 j@181@01))))
  :pattern ((Seq_index xs@145@01 j@181@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@181@01 Int) (j2@181@01 Int)) (!
  (=>
    (and
      (and (<= 3 j1@181@01) (< j1@181@01 n@146@01))
      (and (<= 3 j2@181@01) (< j2@181@01 n@146@01))
      (= (Seq_index xs@145@01 j1@181@01) (Seq_index xs@145@01 j2@181@01)))
    (= j1@181@01 j2@181@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@181@01 Int)) (!
  (=>
    (and (<= 3 j@181@01) (< j@181@01 n@146@01))
    (and
      (= (inv@182@01 (Seq_index xs@145@01 j@181@01)) j@181@01)
      (img@183@01 (Seq_index xs@145@01 j@181@01))))
  :pattern ((Seq_index xs@145@01 j@181@01))
  :qid |quant-u-11644|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@183@01 r) (and (<= 3 (inv@182@01 r)) (< (inv@182@01 r) n@146@01)))
    (= (Seq_index xs@145@01 (inv@182@01 r)) r))
  :pattern ((inv@182@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@181@01 Int)) (!
  (=>
    (and (<= 3 j@181@01) (< j@181@01 n@146@01))
    (not (= (Seq_index xs@145@01 j@181@01) $Ref.null)))
  :pattern ((Seq_index xs@145@01 j@181@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@145@01 j@181@01) (Seq_index xs@145@01 j@178@01))
    (=
      (and
        (img@183@01 r)
        (and (<= 3 (inv@182@01 r)) (< (inv@182@01 r) n@146@01)))
      (and (img@180@01 r) (and (<= 0 (inv@179@01 r)) (< (inv@179@01 r) 3)))))
  
  :qid |quant-u-11645|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
; [exec]
; assert false
(set-option :timeout 0)
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
    (= (Seq_index xs@145@01 j@178@01) (Seq_index xs@145@01 j@181@01))
    (=
      (and (img@180@01 r) (and (<= 0 (inv@179@01 r)) (< (inv@179@01 r) 3)))
      (and
        (img@183@01 r)
        (and (<= 3 (inv@182@01 r)) (< (inv@182@01 r) n@146@01)))))
  
  :qid |quant-u-11646|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@184@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@180@01 r) (and (<= 0 (inv@179@01 r)) (< (inv@179@01 r) 3)))
    (=
      ($FVF.lookup_f (as sm@184@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@170@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@184@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@170@01  $FVF<f>) r))
  :qid |qp.fvfValDef95|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@183@01 r) (and (<= 3 (inv@182@01 r)) (< (inv@182@01 r) n@146@01)))
    (=
      ($FVF.lookup_f (as sm@184@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@175@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@184@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@175@01  $FVF<f>) r))
  :qid |qp.fvfValDef96|)))
(declare-const pm@185@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@185@01  $FPM) r)
    (+
      (ite
        (and (img@180@01 r) (and (<= 0 (inv@179@01 r)) (< (inv@179@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@183@01 r)
          (and (<= 3 (inv@182@01 r)) (< (inv@182@01 r) n@146@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@185@01  $FPM) r))
  :qid |qp.resPrmSumDef97|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@185@01  $FPM) r) $Perm.Write)
  :pattern ((inv@179@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@185@01  $FPM) r) $Perm.Write)
  :pattern ((inv@182@01 r))
  :qid |qp-fld-prm-bnd|)))
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
; ---------- test06b ----------
(declare-const xs@186@01 Seq<$Ref>)
(declare-const n@187@01 Int)
(declare-const xs@188@01 Seq<$Ref>)
(declare-const n@189@01 Int)
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
; var v1: Int
(declare-const v1@190@01 Int)
; [exec]
; var v2: Int
(declare-const v2@191@01 Int)
; [exec]
; inhale acc(P02(xs, n), write)
(declare-const $t@192@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 6 < n
(declare-const $t@193@01 $Snap)
(assert (= $t@193@01 $Snap.unit))
; [eval] 6 < n
(assert (< 6 n@189@01))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; unfold acc(P02(xs, n), write)
(assert (= $t@192@01 ($Snap.combine ($Snap.first $t@192@01) ($Snap.second $t@192@01))))
(assert (= ($Snap.first $t@192@01) $Snap.unit))
; [eval] |xs| == n
; [eval] |xs|
(assert (= (Seq_length xs@188@01) n@189@01))
(assert (=
  ($Snap.second $t@192@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@192@01))
    ($Snap.second ($Snap.second $t@192@01)))))
(assert (= ($Snap.first ($Snap.second $t@192@01)) $Snap.unit))
; [eval] 3 <= n
(assert (<= 3 n@189@01))
(assert (=
  ($Snap.second ($Snap.second $t@192@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@192@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@192@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@192@01))) $Snap.unit))
; [eval] (forall k: Int, j: Int :: { xs[k], xs[j] } k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j])
(declare-const k@194@01 Int)
(declare-const j@195@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j]
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j)))
; [eval] k >= 0
(push) ; 4
; [then-branch: 102 | !(k@194@01 >= 0) | live]
; [else-branch: 102 | k@194@01 >= 0 | live]
(push) ; 5
; [then-branch: 102 | !(k@194@01 >= 0)]
(assert (not (>= k@194@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 102 | k@194@01 >= 0]
(assert (>= k@194@01 0))
; [eval] k < |xs|
; [eval] |xs|
(push) ; 6
; [then-branch: 103 | !(k@194@01 < |xs@188@01|) | live]
; [else-branch: 103 | k@194@01 < |xs@188@01| | live]
(push) ; 7
; [then-branch: 103 | !(k@194@01 < |xs@188@01|)]
(assert (not (< k@194@01 (Seq_length xs@188@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 103 | k@194@01 < |xs@188@01|]
(assert (< k@194@01 (Seq_length xs@188@01)))
; [eval] j >= 0
(push) ; 8
; [then-branch: 104 | !(j@195@01 >= 0) | live]
; [else-branch: 104 | j@195@01 >= 0 | live]
(push) ; 9
; [then-branch: 104 | !(j@195@01 >= 0)]
(assert (not (>= j@195@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 104 | j@195@01 >= 0]
(assert (>= j@195@01 0))
; [eval] j < |xs|
; [eval] |xs|
(push) ; 10
; [then-branch: 105 | !(j@195@01 < |xs@188@01|) | live]
; [else-branch: 105 | j@195@01 < |xs@188@01| | live]
(push) ; 11
; [then-branch: 105 | !(j@195@01 < |xs@188@01|)]
(assert (not (< j@195@01 (Seq_length xs@188@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 105 | j@195@01 < |xs@188@01|]
(assert (< j@195@01 (Seq_length xs@188@01)))
; [eval] k != j
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (< j@195@01 (Seq_length xs@188@01))
  (not (< j@195@01 (Seq_length xs@188@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@195@01 0)
  (and
    (>= j@195@01 0)
    (or
      (< j@195@01 (Seq_length xs@188@01))
      (not (< j@195@01 (Seq_length xs@188@01)))))))
(assert (or (>= j@195@01 0) (not (>= j@195@01 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@194@01 (Seq_length xs@188@01))
  (and
    (< k@194@01 (Seq_length xs@188@01))
    (=>
      (>= j@195@01 0)
      (and
        (>= j@195@01 0)
        (or
          (< j@195@01 (Seq_length xs@188@01))
          (not (< j@195@01 (Seq_length xs@188@01))))))
    (or (>= j@195@01 0) (not (>= j@195@01 0))))))
(assert (or
  (< k@194@01 (Seq_length xs@188@01))
  (not (< k@194@01 (Seq_length xs@188@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@194@01 0)
  (and
    (>= k@194@01 0)
    (=>
      (< k@194@01 (Seq_length xs@188@01))
      (and
        (< k@194@01 (Seq_length xs@188@01))
        (=>
          (>= j@195@01 0)
          (and
            (>= j@195@01 0)
            (or
              (< j@195@01 (Seq_length xs@188@01))
              (not (< j@195@01 (Seq_length xs@188@01))))))
        (or (>= j@195@01 0) (not (>= j@195@01 0)))))
    (or
      (< k@194@01 (Seq_length xs@188@01))
      (not (< k@194@01 (Seq_length xs@188@01)))))))
(assert (or (>= k@194@01 0) (not (>= k@194@01 0))))
(push) ; 4
; [then-branch: 106 | k@194@01 >= 0 && k@194@01 < |xs@188@01| && j@195@01 >= 0 && j@195@01 < |xs@188@01| && k@194@01 != j@195@01 | live]
; [else-branch: 106 | !(k@194@01 >= 0 && k@194@01 < |xs@188@01| && j@195@01 >= 0 && j@195@01 < |xs@188@01| && k@194@01 != j@195@01) | live]
(push) ; 5
; [then-branch: 106 | k@194@01 >= 0 && k@194@01 < |xs@188@01| && j@195@01 >= 0 && j@195@01 < |xs@188@01| && k@194@01 != j@195@01]
(assert (and
  (>= k@194@01 0)
  (and
    (< k@194@01 (Seq_length xs@188@01))
    (and
      (>= j@195@01 0)
      (and (< j@195@01 (Seq_length xs@188@01)) (not (= k@194@01 j@195@01)))))))
; [eval] xs[k] != xs[j]
; [eval] xs[k]
; [eval] xs[j]
(pop) ; 5
(push) ; 5
; [else-branch: 106 | !(k@194@01 >= 0 && k@194@01 < |xs@188@01| && j@195@01 >= 0 && j@195@01 < |xs@188@01| && k@194@01 != j@195@01)]
(assert (not
  (and
    (>= k@194@01 0)
    (and
      (< k@194@01 (Seq_length xs@188@01))
      (and
        (>= j@195@01 0)
        (and (< j@195@01 (Seq_length xs@188@01)) (not (= k@194@01 j@195@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (>= k@194@01 0)
    (and
      (< k@194@01 (Seq_length xs@188@01))
      (and
        (>= j@195@01 0)
        (and (< j@195@01 (Seq_length xs@188@01)) (not (= k@194@01 j@195@01))))))
  (and
    (>= k@194@01 0)
    (< k@194@01 (Seq_length xs@188@01))
    (>= j@195@01 0)
    (< j@195@01 (Seq_length xs@188@01))
    (not (= k@194@01 j@195@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@194@01 0)
      (and
        (< k@194@01 (Seq_length xs@188@01))
        (and
          (>= j@195@01 0)
          (and (< j@195@01 (Seq_length xs@188@01)) (not (= k@194@01 j@195@01)))))))
  (and
    (>= k@194@01 0)
    (and
      (< k@194@01 (Seq_length xs@188@01))
      (and
        (>= j@195@01 0)
        (and (< j@195@01 (Seq_length xs@188@01)) (not (= k@194@01 j@195@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@194@01 Int) (j@195@01 Int)) (!
  (and
    (=>
      (>= k@194@01 0)
      (and
        (>= k@194@01 0)
        (=>
          (< k@194@01 (Seq_length xs@188@01))
          (and
            (< k@194@01 (Seq_length xs@188@01))
            (=>
              (>= j@195@01 0)
              (and
                (>= j@195@01 0)
                (or
                  (< j@195@01 (Seq_length xs@188@01))
                  (not (< j@195@01 (Seq_length xs@188@01))))))
            (or (>= j@195@01 0) (not (>= j@195@01 0)))))
        (or
          (< k@194@01 (Seq_length xs@188@01))
          (not (< k@194@01 (Seq_length xs@188@01))))))
    (or (>= k@194@01 0) (not (>= k@194@01 0)))
    (=>
      (and
        (>= k@194@01 0)
        (and
          (< k@194@01 (Seq_length xs@188@01))
          (and
            (>= j@195@01 0)
            (and (< j@195@01 (Seq_length xs@188@01)) (not (= k@194@01 j@195@01))))))
      (and
        (>= k@194@01 0)
        (< k@194@01 (Seq_length xs@188@01))
        (>= j@195@01 0)
        (< j@195@01 (Seq_length xs@188@01))
        (not (= k@194@01 j@195@01))))
    (or
      (not
        (and
          (>= k@194@01 0)
          (and
            (< k@194@01 (Seq_length xs@188@01))
            (and
              (>= j@195@01 0)
              (and
                (< j@195@01 (Seq_length xs@188@01))
                (not (= k@194@01 j@195@01)))))))
      (and
        (>= k@194@01 0)
        (and
          (< k@194@01 (Seq_length xs@188@01))
          (and
            (>= j@195@01 0)
            (and (< j@195@01 (Seq_length xs@188@01)) (not (= k@194@01 j@195@01))))))))
  :pattern ((Seq_index xs@188@01 k@194@01) (Seq_index xs@188@01 j@195@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@65@7@65@101-aux|)))
(assert (forall ((k@194@01 Int) (j@195@01 Int)) (!
  (=>
    (and
      (>= k@194@01 0)
      (and
        (< k@194@01 (Seq_length xs@188@01))
        (and
          (>= j@195@01 0)
          (and (< j@195@01 (Seq_length xs@188@01)) (not (= k@194@01 j@195@01))))))
    (not (= (Seq_index xs@188@01 k@194@01) (Seq_index xs@188@01 j@195@01))))
  :pattern ((Seq_index xs@188@01 k@194@01) (Seq_index xs@188@01 j@195@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@65@7@65@101|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@192@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@192@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01)))))))
(declare-const j@196@01 Int)
(push) ; 3
; [eval] 0 <= j && j < 3
; [eval] 0 <= j
(push) ; 4
; [then-branch: 107 | !(0 <= j@196@01) | live]
; [else-branch: 107 | 0 <= j@196@01 | live]
(push) ; 5
; [then-branch: 107 | !(0 <= j@196@01)]
(assert (not (<= 0 j@196@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 107 | 0 <= j@196@01]
(assert (<= 0 j@196@01))
; [eval] j < 3
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@196@01) (not (<= 0 j@196@01))))
(assert (and (<= 0 j@196@01) (< j@196@01 3)))
; [eval] xs[j]
(push) ; 4
(assert (not (>= j@196@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@196@01 (Seq_length xs@188@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@197@01 ($Ref) Int)
(declare-fun img@198@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@196@01 Int)) (!
  (=>
    (and (<= 0 j@196@01) (< j@196@01 3))
    (or (<= 0 j@196@01) (not (<= 0 j@196@01))))
  :pattern ((Seq_index xs@188@01 j@196@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@196@01 Int) (j2@196@01 Int)) (!
  (=>
    (and
      (and (<= 0 j1@196@01) (< j1@196@01 3))
      (and (<= 0 j2@196@01) (< j2@196@01 3))
      (= (Seq_index xs@188@01 j1@196@01) (Seq_index xs@188@01 j2@196@01)))
    (= j1@196@01 j2@196@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@196@01 Int)) (!
  (=>
    (and (<= 0 j@196@01) (< j@196@01 3))
    (and
      (= (inv@197@01 (Seq_index xs@188@01 j@196@01)) j@196@01)
      (img@198@01 (Seq_index xs@188@01 j@196@01))))
  :pattern ((Seq_index xs@188@01 j@196@01))
  :qid |quant-u-11648|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@198@01 r) (and (<= 0 (inv@197@01 r)) (< (inv@197@01 r) 3)))
    (= (Seq_index xs@188@01 (inv@197@01 r)) r))
  :pattern ((inv@197@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@196@01 Int)) (!
  (=>
    (and (<= 0 j@196@01) (< j@196@01 3))
    (not (= (Seq_index xs@188@01 j@196@01) $Ref.null)))
  :pattern ((Seq_index xs@188@01 j@196@01))
  :qid |f-permImpliesNonNull|)))
(declare-const j@199@01 Int)
(push) ; 3
; [eval] 3 <= j && j < n
; [eval] 3 <= j
(push) ; 4
; [then-branch: 108 | !(3 <= j@199@01) | live]
; [else-branch: 108 | 3 <= j@199@01 | live]
(push) ; 5
; [then-branch: 108 | !(3 <= j@199@01)]
(assert (not (<= 3 j@199@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 108 | 3 <= j@199@01]
(assert (<= 3 j@199@01))
; [eval] j < n
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 3 j@199@01) (not (<= 3 j@199@01))))
(assert (and (<= 3 j@199@01) (< j@199@01 n@189@01)))
; [eval] xs[j]
(push) ; 4
(assert (not (>= j@199@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@199@01 (Seq_length xs@188@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@200@01 ($Ref) Int)
(declare-fun img@201@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@199@01 Int)) (!
  (=>
    (and (<= 3 j@199@01) (< j@199@01 n@189@01))
    (or (<= 3 j@199@01) (not (<= 3 j@199@01))))
  :pattern ((Seq_index xs@188@01 j@199@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@199@01 Int) (j2@199@01 Int)) (!
  (=>
    (and
      (and (<= 3 j1@199@01) (< j1@199@01 n@189@01))
      (and (<= 3 j2@199@01) (< j2@199@01 n@189@01))
      (= (Seq_index xs@188@01 j1@199@01) (Seq_index xs@188@01 j2@199@01)))
    (= j1@199@01 j2@199@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@199@01 Int)) (!
  (=>
    (and (<= 3 j@199@01) (< j@199@01 n@189@01))
    (and
      (= (inv@200@01 (Seq_index xs@188@01 j@199@01)) j@199@01)
      (img@201@01 (Seq_index xs@188@01 j@199@01))))
  :pattern ((Seq_index xs@188@01 j@199@01))
  :qid |quant-u-11650|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@201@01 r) (and (<= 3 (inv@200@01 r)) (< (inv@200@01 r) n@189@01)))
    (= (Seq_index xs@188@01 (inv@200@01 r)) r))
  :pattern ((inv@200@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@199@01 Int)) (!
  (=>
    (and (<= 3 j@199@01) (< j@199@01 n@189@01))
    (not (= (Seq_index xs@188@01 j@199@01) $Ref.null)))
  :pattern ((Seq_index xs@188@01 j@199@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@188@01 j@199@01) (Seq_index xs@188@01 j@196@01))
    (=
      (and
        (img@201@01 r)
        (and (<= 3 (inv@200@01 r)) (< (inv@200@01 r) n@189@01)))
      (and (img@198@01 r) (and (<= 0 (inv@197@01 r)) (< (inv@197@01 r) 3)))))
  
  :qid |quant-u-11651|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (P02%trigger $t@192@01 xs@188@01 n@189@01))
; [exec]
; v1 := xs[2].f
; [eval] xs[2]
(set-option :timeout 0)
(push) ; 3
(assert (not (< 2 (Seq_length xs@188@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@202@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@198@01 r) (and (<= 0 (inv@197@01 r)) (< (inv@197@01 r) 3)))
    (=
      ($FVF.lookup_f (as sm@202@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@192@01))))) r)))
  :pattern (($FVF.lookup_f (as sm@202@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@192@01))))) r))
  :qid |qp.fvfValDef98|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@201@01 r) (and (<= 3 (inv@200@01 r)) (< (inv@200@01 r) n@189@01)))
    (=
      ($FVF.lookup_f (as sm@202@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01))))) r)))
  :pattern (($FVF.lookup_f (as sm@202@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01))))) r))
  :qid |qp.fvfValDef99|)))
(declare-const pm@203@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@203@01  $FPM) r)
    (+
      (ite
        (and (img@198@01 r) (and (<= 0 (inv@197@01 r)) (< (inv@197@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@201@01 r)
          (and (<= 3 (inv@200@01 r)) (< (inv@200@01 r) n@189@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@203@01  $FPM) r))
  :qid |qp.resPrmSumDef100|)))
(push) ; 3
(assert (not (< $Perm.No ($FVF.perm_f (as pm@203@01  $FPM) (Seq_index xs@188@01 2)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const v1@204@01 Int)
(assert (= v1@204@01 ($FVF.lookup_f (as sm@202@01  $FVF<f>) (Seq_index xs@188@01 2))))
; [exec]
; v2 := xs[1].f
; [eval] xs[1]
(push) ; 3
(assert (not (< 1 (Seq_length xs@188@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@198@01 r) (and (<= 0 (inv@197@01 r)) (< (inv@197@01 r) 3)))
      (=
        ($FVF.lookup_f (as sm@202@01  $FVF<f>) r)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@192@01))))) r)))
    :pattern (($FVF.lookup_f (as sm@202@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@192@01))))) r))
    :qid |qp.fvfValDef98|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@201@01 r)
        (and (<= 3 (inv@200@01 r)) (< (inv@200@01 r) n@189@01)))
      (=
        ($FVF.lookup_f (as sm@202@01  $FVF<f>) r)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01))))) r)))
    :pattern (($FVF.lookup_f (as sm@202@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01))))) r))
    :qid |qp.fvfValDef99|))))
(push) ; 3
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@198@01 (Seq_index xs@188@01 1))
        (and
          (<= 0 (inv@197@01 (Seq_index xs@188@01 1)))
          (< (inv@197@01 (Seq_index xs@188@01 1)) 3)))
      $Perm.Write
      $Perm.No)
    (ite
      (and
        (img@201@01 (Seq_index xs@188@01 1))
        (and
          (<= 3 (inv@200@01 (Seq_index xs@188@01 1)))
          (< (inv@200@01 (Seq_index xs@188@01 1)) n@189@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const v2@205@01 Int)
(assert (= v2@205@01 ($FVF.lookup_f (as sm@202@01  $FVF<f>) (Seq_index xs@188@01 1))))
; [exec]
; fold acc(P02(xs, n), write)
; [eval] |xs| == n
; [eval] |xs|
; [eval] 3 <= n
; [eval] (forall k: Int, j: Int :: { xs[k], xs[j] } k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j])
(declare-const k@206@01 Int)
(declare-const j@207@01 Int)
(push) ; 3
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j]
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j)))
; [eval] k >= 0
(push) ; 4
; [then-branch: 109 | !(k@206@01 >= 0) | live]
; [else-branch: 109 | k@206@01 >= 0 | live]
(push) ; 5
; [then-branch: 109 | !(k@206@01 >= 0)]
(assert (not (>= k@206@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 109 | k@206@01 >= 0]
(assert (>= k@206@01 0))
; [eval] k < |xs|
; [eval] |xs|
(push) ; 6
; [then-branch: 110 | !(k@206@01 < |xs@188@01|) | live]
; [else-branch: 110 | k@206@01 < |xs@188@01| | live]
(push) ; 7
; [then-branch: 110 | !(k@206@01 < |xs@188@01|)]
(assert (not (< k@206@01 (Seq_length xs@188@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 110 | k@206@01 < |xs@188@01|]
(assert (< k@206@01 (Seq_length xs@188@01)))
; [eval] j >= 0
(push) ; 8
; [then-branch: 111 | !(j@207@01 >= 0) | live]
; [else-branch: 111 | j@207@01 >= 0 | live]
(push) ; 9
; [then-branch: 111 | !(j@207@01 >= 0)]
(assert (not (>= j@207@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 111 | j@207@01 >= 0]
(assert (>= j@207@01 0))
; [eval] j < |xs|
; [eval] |xs|
(push) ; 10
; [then-branch: 112 | !(j@207@01 < |xs@188@01|) | live]
; [else-branch: 112 | j@207@01 < |xs@188@01| | live]
(push) ; 11
; [then-branch: 112 | !(j@207@01 < |xs@188@01|)]
(assert (not (< j@207@01 (Seq_length xs@188@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 112 | j@207@01 < |xs@188@01|]
(assert (< j@207@01 (Seq_length xs@188@01)))
; [eval] k != j
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (< j@207@01 (Seq_length xs@188@01))
  (not (< j@207@01 (Seq_length xs@188@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@207@01 0)
  (and
    (>= j@207@01 0)
    (or
      (< j@207@01 (Seq_length xs@188@01))
      (not (< j@207@01 (Seq_length xs@188@01)))))))
(assert (or (>= j@207@01 0) (not (>= j@207@01 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@206@01 (Seq_length xs@188@01))
  (and
    (< k@206@01 (Seq_length xs@188@01))
    (=>
      (>= j@207@01 0)
      (and
        (>= j@207@01 0)
        (or
          (< j@207@01 (Seq_length xs@188@01))
          (not (< j@207@01 (Seq_length xs@188@01))))))
    (or (>= j@207@01 0) (not (>= j@207@01 0))))))
(assert (or
  (< k@206@01 (Seq_length xs@188@01))
  (not (< k@206@01 (Seq_length xs@188@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@206@01 0)
  (and
    (>= k@206@01 0)
    (=>
      (< k@206@01 (Seq_length xs@188@01))
      (and
        (< k@206@01 (Seq_length xs@188@01))
        (=>
          (>= j@207@01 0)
          (and
            (>= j@207@01 0)
            (or
              (< j@207@01 (Seq_length xs@188@01))
              (not (< j@207@01 (Seq_length xs@188@01))))))
        (or (>= j@207@01 0) (not (>= j@207@01 0)))))
    (or
      (< k@206@01 (Seq_length xs@188@01))
      (not (< k@206@01 (Seq_length xs@188@01)))))))
(assert (or (>= k@206@01 0) (not (>= k@206@01 0))))
(push) ; 4
; [then-branch: 113 | k@206@01 >= 0 && k@206@01 < |xs@188@01| && j@207@01 >= 0 && j@207@01 < |xs@188@01| && k@206@01 != j@207@01 | live]
; [else-branch: 113 | !(k@206@01 >= 0 && k@206@01 < |xs@188@01| && j@207@01 >= 0 && j@207@01 < |xs@188@01| && k@206@01 != j@207@01) | live]
(push) ; 5
; [then-branch: 113 | k@206@01 >= 0 && k@206@01 < |xs@188@01| && j@207@01 >= 0 && j@207@01 < |xs@188@01| && k@206@01 != j@207@01]
(assert (and
  (>= k@206@01 0)
  (and
    (< k@206@01 (Seq_length xs@188@01))
    (and
      (>= j@207@01 0)
      (and (< j@207@01 (Seq_length xs@188@01)) (not (= k@206@01 j@207@01)))))))
; [eval] xs[k] != xs[j]
; [eval] xs[k]
; [eval] xs[j]
(pop) ; 5
(push) ; 5
; [else-branch: 113 | !(k@206@01 >= 0 && k@206@01 < |xs@188@01| && j@207@01 >= 0 && j@207@01 < |xs@188@01| && k@206@01 != j@207@01)]
(assert (not
  (and
    (>= k@206@01 0)
    (and
      (< k@206@01 (Seq_length xs@188@01))
      (and
        (>= j@207@01 0)
        (and (< j@207@01 (Seq_length xs@188@01)) (not (= k@206@01 j@207@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (>= k@206@01 0)
    (and
      (< k@206@01 (Seq_length xs@188@01))
      (and
        (>= j@207@01 0)
        (and (< j@207@01 (Seq_length xs@188@01)) (not (= k@206@01 j@207@01))))))
  (and
    (>= k@206@01 0)
    (< k@206@01 (Seq_length xs@188@01))
    (>= j@207@01 0)
    (< j@207@01 (Seq_length xs@188@01))
    (not (= k@206@01 j@207@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@206@01 0)
      (and
        (< k@206@01 (Seq_length xs@188@01))
        (and
          (>= j@207@01 0)
          (and (< j@207@01 (Seq_length xs@188@01)) (not (= k@206@01 j@207@01)))))))
  (and
    (>= k@206@01 0)
    (and
      (< k@206@01 (Seq_length xs@188@01))
      (and
        (>= j@207@01 0)
        (and (< j@207@01 (Seq_length xs@188@01)) (not (= k@206@01 j@207@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@206@01 Int) (j@207@01 Int)) (!
  (and
    (=>
      (>= k@206@01 0)
      (and
        (>= k@206@01 0)
        (=>
          (< k@206@01 (Seq_length xs@188@01))
          (and
            (< k@206@01 (Seq_length xs@188@01))
            (=>
              (>= j@207@01 0)
              (and
                (>= j@207@01 0)
                (or
                  (< j@207@01 (Seq_length xs@188@01))
                  (not (< j@207@01 (Seq_length xs@188@01))))))
            (or (>= j@207@01 0) (not (>= j@207@01 0)))))
        (or
          (< k@206@01 (Seq_length xs@188@01))
          (not (< k@206@01 (Seq_length xs@188@01))))))
    (or (>= k@206@01 0) (not (>= k@206@01 0)))
    (=>
      (and
        (>= k@206@01 0)
        (and
          (< k@206@01 (Seq_length xs@188@01))
          (and
            (>= j@207@01 0)
            (and (< j@207@01 (Seq_length xs@188@01)) (not (= k@206@01 j@207@01))))))
      (and
        (>= k@206@01 0)
        (< k@206@01 (Seq_length xs@188@01))
        (>= j@207@01 0)
        (< j@207@01 (Seq_length xs@188@01))
        (not (= k@206@01 j@207@01))))
    (or
      (not
        (and
          (>= k@206@01 0)
          (and
            (< k@206@01 (Seq_length xs@188@01))
            (and
              (>= j@207@01 0)
              (and
                (< j@207@01 (Seq_length xs@188@01))
                (not (= k@206@01 j@207@01)))))))
      (and
        (>= k@206@01 0)
        (and
          (< k@206@01 (Seq_length xs@188@01))
          (and
            (>= j@207@01 0)
            (and (< j@207@01 (Seq_length xs@188@01)) (not (= k@206@01 j@207@01))))))))
  :pattern ((Seq_index xs@188@01 k@206@01) (Seq_index xs@188@01 j@207@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@65@7@65@101-aux|)))
(push) ; 3
(assert (not (forall ((k@206@01 Int) (j@207@01 Int)) (!
  (=>
    (and
      (>= k@206@01 0)
      (and
        (< k@206@01 (Seq_length xs@188@01))
        (and
          (>= j@207@01 0)
          (and (< j@207@01 (Seq_length xs@188@01)) (not (= k@206@01 j@207@01))))))
    (not (= (Seq_index xs@188@01 k@206@01) (Seq_index xs@188@01 j@207@01))))
  :pattern ((Seq_index xs@188@01 k@206@01) (Seq_index xs@188@01 j@207@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@65@7@65@101|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((k@206@01 Int) (j@207@01 Int)) (!
  (=>
    (and
      (>= k@206@01 0)
      (and
        (< k@206@01 (Seq_length xs@188@01))
        (and
          (>= j@207@01 0)
          (and (< j@207@01 (Seq_length xs@188@01)) (not (= k@206@01 j@207@01))))))
    (not (= (Seq_index xs@188@01 k@206@01) (Seq_index xs@188@01 j@207@01))))
  :pattern ((Seq_index xs@188@01 k@206@01) (Seq_index xs@188@01 j@207@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@65@7@65@101|)))
(declare-const j@208@01 Int)
(push) ; 3
; [eval] 0 <= j && j < 3
; [eval] 0 <= j
(push) ; 4
; [then-branch: 114 | !(0 <= j@208@01) | live]
; [else-branch: 114 | 0 <= j@208@01 | live]
(push) ; 5
; [then-branch: 114 | !(0 <= j@208@01)]
(assert (not (<= 0 j@208@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 114 | 0 <= j@208@01]
(assert (<= 0 j@208@01))
; [eval] j < 3
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@208@01) (not (<= 0 j@208@01))))
(assert (and (<= 0 j@208@01) (< j@208@01 3)))
; [eval] xs[j]
(push) ; 4
(assert (not (>= j@208@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@208@01 (Seq_length xs@188@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@209@01 ($Ref) Int)
(declare-fun img@210@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@208@01 Int)) (!
  (=>
    (and (<= 0 j@208@01) (< j@208@01 3))
    (or (<= 0 j@208@01) (not (<= 0 j@208@01))))
  :pattern ((Seq_index xs@188@01 j@208@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@208@01 Int) (j2@208@01 Int)) (!
  (=>
    (and
      (and (<= 0 j1@208@01) (< j1@208@01 3))
      (and (<= 0 j2@208@01) (< j2@208@01 3))
      (= (Seq_index xs@188@01 j1@208@01) (Seq_index xs@188@01 j2@208@01)))
    (= j1@208@01 j2@208@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@208@01 Int)) (!
  (=>
    (and (<= 0 j@208@01) (< j@208@01 3))
    (and
      (= (inv@209@01 (Seq_index xs@188@01 j@208@01)) j@208@01)
      (img@210@01 (Seq_index xs@188@01 j@208@01))))
  :pattern ((Seq_index xs@188@01 j@208@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@210@01 r) (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) 3)))
    (= (Seq_index xs@188@01 (inv@209@01 r)) r))
  :pattern ((inv@209@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@211@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) 3))
      (img@210@01 r)
      (= r (Seq_index xs@188@01 (inv@209@01 r))))
    ($Perm.min
      (ite
        (and (img@198@01 r) (and (<= 0 (inv@197@01 r)) (< (inv@197@01 r) 3)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@212@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) 3))
      (img@210@01 r)
      (= r (Seq_index xs@188@01 (inv@209@01 r))))
    ($Perm.min
      (ite
        (and
          (img@201@01 r)
          (and (<= 3 (inv@200@01 r)) (< (inv@200@01 r) n@189@01)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@211@01 r)))
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
        (and (img@198@01 r) (and (<= 0 (inv@197@01 r)) (< (inv@197@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (pTaken@211@01 r))
    $Perm.No)
  
  :qid |quant-u-11654|))))
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
      (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) 3))
      (img@210@01 r)
      (= r (Seq_index xs@188@01 (inv@209@01 r))))
    (= (- $Perm.Write (pTaken@211@01 r)) $Perm.No))
  
  :qid |quant-u-11655|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@213@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@213@01  $FVF<f>)))
      (and (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) 3)) (img@210@01 r)))
    (=>
      (and (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) 3)) (img@210@01 r))
      (Set_in r ($FVF.domain_f (as sm@213@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@213@01  $FVF<f>))))
  :qid |qp.fvfDomDef103|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) 3)) (img@210@01 r))
      (and (img@198@01 r) (and (<= 0 (inv@197@01 r)) (< (inv@197@01 r) 3))))
    (=
      ($FVF.lookup_f (as sm@213@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@192@01))))) r)))
  :pattern (($FVF.lookup_f (as sm@213@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@192@01))))) r))
  :qid |qp.fvfValDef101|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@209@01 r)) (< (inv@209@01 r) 3)) (img@210@01 r))
      (and
        (img@201@01 r)
        (and (<= 3 (inv@200@01 r)) (< (inv@200@01 r) n@189@01))))
    (=
      ($FVF.lookup_f (as sm@213@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01))))) r)))
  :pattern (($FVF.lookup_f (as sm@213@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01))))) r))
  :qid |qp.fvfValDef102|)))
(declare-const j@214@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 3 <= j && j < n
; [eval] 3 <= j
(push) ; 4
; [then-branch: 115 | !(3 <= j@214@01) | live]
; [else-branch: 115 | 3 <= j@214@01 | live]
(push) ; 5
; [then-branch: 115 | !(3 <= j@214@01)]
(assert (not (<= 3 j@214@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 115 | 3 <= j@214@01]
(assert (<= 3 j@214@01))
; [eval] j < n
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 3 j@214@01) (not (<= 3 j@214@01))))
(assert (and (<= 3 j@214@01) (< j@214@01 n@189@01)))
; [eval] xs[j]
(push) ; 4
(assert (not (>= j@214@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@214@01 (Seq_length xs@188@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@215@01 ($Ref) Int)
(declare-fun img@216@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@214@01 Int)) (!
  (=>
    (and (<= 3 j@214@01) (< j@214@01 n@189@01))
    (or (<= 3 j@214@01) (not (<= 3 j@214@01))))
  :pattern ((Seq_index xs@188@01 j@214@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@214@01 Int) (j2@214@01 Int)) (!
  (=>
    (and
      (and (<= 3 j1@214@01) (< j1@214@01 n@189@01))
      (and (<= 3 j2@214@01) (< j2@214@01 n@189@01))
      (= (Seq_index xs@188@01 j1@214@01) (Seq_index xs@188@01 j2@214@01)))
    (= j1@214@01 j2@214@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@214@01 Int)) (!
  (=>
    (and (<= 3 j@214@01) (< j@214@01 n@189@01))
    (and
      (= (inv@215@01 (Seq_index xs@188@01 j@214@01)) j@214@01)
      (img@216@01 (Seq_index xs@188@01 j@214@01))))
  :pattern ((Seq_index xs@188@01 j@214@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@216@01 r) (and (<= 3 (inv@215@01 r)) (< (inv@215@01 r) n@189@01)))
    (= (Seq_index xs@188@01 (inv@215@01 r)) r))
  :pattern ((inv@215@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@217@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 3 (inv@215@01 r)) (< (inv@215@01 r) n@189@01))
      (img@216@01 r)
      (= r (Seq_index xs@188@01 (inv@215@01 r))))
    ($Perm.min
      (ite
        (and
          (img@201@01 r)
          (and (<= 3 (inv@200@01 r)) (< (inv@200@01 r) n@189@01)))
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
          (img@201@01 r)
          (and (<= 3 (inv@200@01 r)) (< (inv@200@01 r) n@189@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@217@01 r))
    $Perm.No)
  
  :qid |quant-u-11658|))))
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
      (and (<= 3 (inv@215@01 r)) (< (inv@215@01 r) n@189@01))
      (img@216@01 r)
      (= r (Seq_index xs@188@01 (inv@215@01 r))))
    (= (- $Perm.Write (pTaken@217@01 r)) $Perm.No))
  
  :qid |quant-u-11659|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@218@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@218@01  $FVF<f>)))
      (and
        (and (<= 3 (inv@215@01 r)) (< (inv@215@01 r) n@189@01))
        (img@216@01 r)))
    (=>
      (and
        (and (<= 3 (inv@215@01 r)) (< (inv@215@01 r) n@189@01))
        (img@216@01 r))
      (Set_in r ($FVF.domain_f (as sm@218@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@218@01  $FVF<f>))))
  :qid |qp.fvfDomDef105|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 3 (inv@215@01 r)) (< (inv@215@01 r) n@189@01))
        (img@216@01 r))
      (and
        (img@201@01 r)
        (and (<= 3 (inv@200@01 r)) (< (inv@200@01 r) n@189@01))))
    (=
      ($FVF.lookup_f (as sm@218@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01))))) r)))
  :pattern (($FVF.lookup_f (as sm@218@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@192@01))))) r))
  :qid |qp.fvfValDef104|)))
(assert (P02%trigger ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<f>To$Snap (as sm@213@01  $FVF<f>))
        ($SortWrappers.$FVF<f>To$Snap (as sm@218@01  $FVF<f>)))))) xs@188@01 n@189@01))
; [exec]
; unfold acc(P02(xs, n), write)
; [eval] |xs| == n
; [eval] |xs|
; [eval] 3 <= n
; [eval] (forall k: Int, j: Int :: { xs[k], xs[j] } k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j])
(declare-const k@219@01 Int)
(declare-const j@220@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j]
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j)))
; [eval] k >= 0
(push) ; 4
; [then-branch: 116 | !(k@219@01 >= 0) | live]
; [else-branch: 116 | k@219@01 >= 0 | live]
(push) ; 5
; [then-branch: 116 | !(k@219@01 >= 0)]
(assert (not (>= k@219@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 116 | k@219@01 >= 0]
(assert (>= k@219@01 0))
; [eval] k < |xs|
; [eval] |xs|
(push) ; 6
; [then-branch: 117 | !(k@219@01 < |xs@188@01|) | live]
; [else-branch: 117 | k@219@01 < |xs@188@01| | live]
(push) ; 7
; [then-branch: 117 | !(k@219@01 < |xs@188@01|)]
(assert (not (< k@219@01 (Seq_length xs@188@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 117 | k@219@01 < |xs@188@01|]
(assert (< k@219@01 (Seq_length xs@188@01)))
; [eval] j >= 0
(push) ; 8
; [then-branch: 118 | !(j@220@01 >= 0) | live]
; [else-branch: 118 | j@220@01 >= 0 | live]
(push) ; 9
; [then-branch: 118 | !(j@220@01 >= 0)]
(assert (not (>= j@220@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 118 | j@220@01 >= 0]
(assert (>= j@220@01 0))
; [eval] j < |xs|
; [eval] |xs|
(push) ; 10
; [then-branch: 119 | !(j@220@01 < |xs@188@01|) | live]
; [else-branch: 119 | j@220@01 < |xs@188@01| | live]
(push) ; 11
; [then-branch: 119 | !(j@220@01 < |xs@188@01|)]
(assert (not (< j@220@01 (Seq_length xs@188@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 119 | j@220@01 < |xs@188@01|]
(assert (< j@220@01 (Seq_length xs@188@01)))
; [eval] k != j
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (< j@220@01 (Seq_length xs@188@01))
  (not (< j@220@01 (Seq_length xs@188@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@220@01 0)
  (and
    (>= j@220@01 0)
    (or
      (< j@220@01 (Seq_length xs@188@01))
      (not (< j@220@01 (Seq_length xs@188@01)))))))
(assert (or (>= j@220@01 0) (not (>= j@220@01 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@219@01 (Seq_length xs@188@01))
  (and
    (< k@219@01 (Seq_length xs@188@01))
    (=>
      (>= j@220@01 0)
      (and
        (>= j@220@01 0)
        (or
          (< j@220@01 (Seq_length xs@188@01))
          (not (< j@220@01 (Seq_length xs@188@01))))))
    (or (>= j@220@01 0) (not (>= j@220@01 0))))))
(assert (or
  (< k@219@01 (Seq_length xs@188@01))
  (not (< k@219@01 (Seq_length xs@188@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@219@01 0)
  (and
    (>= k@219@01 0)
    (=>
      (< k@219@01 (Seq_length xs@188@01))
      (and
        (< k@219@01 (Seq_length xs@188@01))
        (=>
          (>= j@220@01 0)
          (and
            (>= j@220@01 0)
            (or
              (< j@220@01 (Seq_length xs@188@01))
              (not (< j@220@01 (Seq_length xs@188@01))))))
        (or (>= j@220@01 0) (not (>= j@220@01 0)))))
    (or
      (< k@219@01 (Seq_length xs@188@01))
      (not (< k@219@01 (Seq_length xs@188@01)))))))
(assert (or (>= k@219@01 0) (not (>= k@219@01 0))))
(push) ; 4
; [then-branch: 120 | k@219@01 >= 0 && k@219@01 < |xs@188@01| && j@220@01 >= 0 && j@220@01 < |xs@188@01| && k@219@01 != j@220@01 | live]
; [else-branch: 120 | !(k@219@01 >= 0 && k@219@01 < |xs@188@01| && j@220@01 >= 0 && j@220@01 < |xs@188@01| && k@219@01 != j@220@01) | live]
(push) ; 5
; [then-branch: 120 | k@219@01 >= 0 && k@219@01 < |xs@188@01| && j@220@01 >= 0 && j@220@01 < |xs@188@01| && k@219@01 != j@220@01]
(assert (and
  (>= k@219@01 0)
  (and
    (< k@219@01 (Seq_length xs@188@01))
    (and
      (>= j@220@01 0)
      (and (< j@220@01 (Seq_length xs@188@01)) (not (= k@219@01 j@220@01)))))))
; [eval] xs[k] != xs[j]
; [eval] xs[k]
; [eval] xs[j]
(pop) ; 5
(push) ; 5
; [else-branch: 120 | !(k@219@01 >= 0 && k@219@01 < |xs@188@01| && j@220@01 >= 0 && j@220@01 < |xs@188@01| && k@219@01 != j@220@01)]
(assert (not
  (and
    (>= k@219@01 0)
    (and
      (< k@219@01 (Seq_length xs@188@01))
      (and
        (>= j@220@01 0)
        (and (< j@220@01 (Seq_length xs@188@01)) (not (= k@219@01 j@220@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (>= k@219@01 0)
    (and
      (< k@219@01 (Seq_length xs@188@01))
      (and
        (>= j@220@01 0)
        (and (< j@220@01 (Seq_length xs@188@01)) (not (= k@219@01 j@220@01))))))
  (and
    (>= k@219@01 0)
    (< k@219@01 (Seq_length xs@188@01))
    (>= j@220@01 0)
    (< j@220@01 (Seq_length xs@188@01))
    (not (= k@219@01 j@220@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@219@01 0)
      (and
        (< k@219@01 (Seq_length xs@188@01))
        (and
          (>= j@220@01 0)
          (and (< j@220@01 (Seq_length xs@188@01)) (not (= k@219@01 j@220@01)))))))
  (and
    (>= k@219@01 0)
    (and
      (< k@219@01 (Seq_length xs@188@01))
      (and
        (>= j@220@01 0)
        (and (< j@220@01 (Seq_length xs@188@01)) (not (= k@219@01 j@220@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@219@01 Int) (j@220@01 Int)) (!
  (and
    (=>
      (>= k@219@01 0)
      (and
        (>= k@219@01 0)
        (=>
          (< k@219@01 (Seq_length xs@188@01))
          (and
            (< k@219@01 (Seq_length xs@188@01))
            (=>
              (>= j@220@01 0)
              (and
                (>= j@220@01 0)
                (or
                  (< j@220@01 (Seq_length xs@188@01))
                  (not (< j@220@01 (Seq_length xs@188@01))))))
            (or (>= j@220@01 0) (not (>= j@220@01 0)))))
        (or
          (< k@219@01 (Seq_length xs@188@01))
          (not (< k@219@01 (Seq_length xs@188@01))))))
    (or (>= k@219@01 0) (not (>= k@219@01 0)))
    (=>
      (and
        (>= k@219@01 0)
        (and
          (< k@219@01 (Seq_length xs@188@01))
          (and
            (>= j@220@01 0)
            (and (< j@220@01 (Seq_length xs@188@01)) (not (= k@219@01 j@220@01))))))
      (and
        (>= k@219@01 0)
        (< k@219@01 (Seq_length xs@188@01))
        (>= j@220@01 0)
        (< j@220@01 (Seq_length xs@188@01))
        (not (= k@219@01 j@220@01))))
    (or
      (not
        (and
          (>= k@219@01 0)
          (and
            (< k@219@01 (Seq_length xs@188@01))
            (and
              (>= j@220@01 0)
              (and
                (< j@220@01 (Seq_length xs@188@01))
                (not (= k@219@01 j@220@01)))))))
      (and
        (>= k@219@01 0)
        (and
          (< k@219@01 (Seq_length xs@188@01))
          (and
            (>= j@220@01 0)
            (and (< j@220@01 (Seq_length xs@188@01)) (not (= k@219@01 j@220@01))))))))
  :pattern ((Seq_index xs@188@01 k@219@01) (Seq_index xs@188@01 j@220@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@65@7@65@101-aux|)))
(assert (forall ((k@219@01 Int) (j@220@01 Int)) (!
  (=>
    (and
      (>= k@219@01 0)
      (and
        (< k@219@01 (Seq_length xs@188@01))
        (and
          (>= j@220@01 0)
          (and (< j@220@01 (Seq_length xs@188@01)) (not (= k@219@01 j@220@01))))))
    (not (= (Seq_index xs@188@01 k@219@01) (Seq_index xs@188@01 j@220@01))))
  :pattern ((Seq_index xs@188@01 k@219@01) (Seq_index xs@188@01 j@220@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@65@7@65@101|)))
(declare-const j@221@01 Int)
(push) ; 3
; [eval] 0 <= j && j < 3
; [eval] 0 <= j
(push) ; 4
; [then-branch: 121 | !(0 <= j@221@01) | live]
; [else-branch: 121 | 0 <= j@221@01 | live]
(push) ; 5
; [then-branch: 121 | !(0 <= j@221@01)]
(assert (not (<= 0 j@221@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 121 | 0 <= j@221@01]
(assert (<= 0 j@221@01))
; [eval] j < 3
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@221@01) (not (<= 0 j@221@01))))
(assert (and (<= 0 j@221@01) (< j@221@01 3)))
; [eval] xs[j]
(push) ; 4
(assert (not (>= j@221@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@221@01 (Seq_length xs@188@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@222@01 ($Ref) Int)
(declare-fun img@223@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@221@01 Int)) (!
  (=>
    (and (<= 0 j@221@01) (< j@221@01 3))
    (or (<= 0 j@221@01) (not (<= 0 j@221@01))))
  :pattern ((Seq_index xs@188@01 j@221@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@221@01 Int) (j2@221@01 Int)) (!
  (=>
    (and
      (and (<= 0 j1@221@01) (< j1@221@01 3))
      (and (<= 0 j2@221@01) (< j2@221@01 3))
      (= (Seq_index xs@188@01 j1@221@01) (Seq_index xs@188@01 j2@221@01)))
    (= j1@221@01 j2@221@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@221@01 Int)) (!
  (=>
    (and (<= 0 j@221@01) (< j@221@01 3))
    (and
      (= (inv@222@01 (Seq_index xs@188@01 j@221@01)) j@221@01)
      (img@223@01 (Seq_index xs@188@01 j@221@01))))
  :pattern ((Seq_index xs@188@01 j@221@01))
  :qid |quant-u-11661|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@223@01 r) (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) 3)))
    (= (Seq_index xs@188@01 (inv@222@01 r)) r))
  :pattern ((inv@222@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@221@01 Int)) (!
  (=>
    (and (<= 0 j@221@01) (< j@221@01 3))
    (not (= (Seq_index xs@188@01 j@221@01) $Ref.null)))
  :pattern ((Seq_index xs@188@01 j@221@01))
  :qid |f-permImpliesNonNull|)))
(declare-const j@224@01 Int)
(push) ; 3
; [eval] 3 <= j && j < n
; [eval] 3 <= j
(push) ; 4
; [then-branch: 122 | !(3 <= j@224@01) | live]
; [else-branch: 122 | 3 <= j@224@01 | live]
(push) ; 5
; [then-branch: 122 | !(3 <= j@224@01)]
(assert (not (<= 3 j@224@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 122 | 3 <= j@224@01]
(assert (<= 3 j@224@01))
; [eval] j < n
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 3 j@224@01) (not (<= 3 j@224@01))))
(assert (and (<= 3 j@224@01) (< j@224@01 n@189@01)))
; [eval] xs[j]
(push) ; 4
(assert (not (>= j@224@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@224@01 (Seq_length xs@188@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@225@01 ($Ref) Int)
(declare-fun img@226@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@224@01 Int)) (!
  (=>
    (and (<= 3 j@224@01) (< j@224@01 n@189@01))
    (or (<= 3 j@224@01) (not (<= 3 j@224@01))))
  :pattern ((Seq_index xs@188@01 j@224@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@224@01 Int) (j2@224@01 Int)) (!
  (=>
    (and
      (and (<= 3 j1@224@01) (< j1@224@01 n@189@01))
      (and (<= 3 j2@224@01) (< j2@224@01 n@189@01))
      (= (Seq_index xs@188@01 j1@224@01) (Seq_index xs@188@01 j2@224@01)))
    (= j1@224@01 j2@224@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@224@01 Int)) (!
  (=>
    (and (<= 3 j@224@01) (< j@224@01 n@189@01))
    (and
      (= (inv@225@01 (Seq_index xs@188@01 j@224@01)) j@224@01)
      (img@226@01 (Seq_index xs@188@01 j@224@01))))
  :pattern ((Seq_index xs@188@01 j@224@01))
  :qid |quant-u-11663|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@226@01 r) (and (<= 3 (inv@225@01 r)) (< (inv@225@01 r) n@189@01)))
    (= (Seq_index xs@188@01 (inv@225@01 r)) r))
  :pattern ((inv@225@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@224@01 Int)) (!
  (=>
    (and (<= 3 j@224@01) (< j@224@01 n@189@01))
    (not (= (Seq_index xs@188@01 j@224@01) $Ref.null)))
  :pattern ((Seq_index xs@188@01 j@224@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@188@01 j@224@01) (Seq_index xs@188@01 j@221@01))
    (=
      (and
        (img@226@01 r)
        (and (<= 3 (inv@225@01 r)) (< (inv@225@01 r) n@189@01)))
      (and (img@223@01 r) (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) 3)))))
  
  :qid |quant-u-11664|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
; [exec]
; assert false
(set-option :timeout 0)
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
    (= (Seq_index xs@188@01 j@221@01) (Seq_index xs@188@01 j@224@01))
    (=
      (and (img@223@01 r) (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) 3)))
      (and
        (img@226@01 r)
        (and (<= 3 (inv@225@01 r)) (< (inv@225@01 r) n@189@01)))))
  
  :qid |quant-u-11665|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@227@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@223@01 r) (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) 3)))
    (=
      ($FVF.lookup_f (as sm@227@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@213@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@227@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@213@01  $FVF<f>) r))
  :qid |qp.fvfValDef106|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@226@01 r) (and (<= 3 (inv@225@01 r)) (< (inv@225@01 r) n@189@01)))
    (=
      ($FVF.lookup_f (as sm@227@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@218@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@227@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@218@01  $FVF<f>) r))
  :qid |qp.fvfValDef107|)))
(declare-const pm@228@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@228@01  $FPM) r)
    (+
      (ite
        (and (img@223@01 r) (and (<= 0 (inv@222@01 r)) (< (inv@222@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@226@01 r)
          (and (<= 3 (inv@225@01 r)) (< (inv@225@01 r) n@189@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@228@01  $FPM) r))
  :qid |qp.resPrmSumDef108|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@228@01  $FPM) r) $Perm.Write)
  :pattern ((inv@222@01 r))
  :qid |qp-fld-prm-bnd|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@228@01  $FPM) r) $Perm.Write)
  :pattern ((inv@225@01 r))
  :qid |qp-fld-prm-bnd|)))
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
; ---------- test05 ----------
(declare-const xs@229@01 Seq<$Ref>)
(declare-const n@230@01 Int)
(declare-const i@231@01 Int)
(declare-const xs@232@01 Seq<$Ref>)
(declare-const n@233@01 Int)
(declare-const i@234@01 Int)
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
; var v1: Int
(declare-const v1@235@01 Int)
; [exec]
; var v2: Int
(declare-const v2@236@01 Int)
; [exec]
; inhale acc(P02(xs, n), write)
(declare-const $t@237@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 6 < n
(declare-const $t@238@01 $Snap)
(assert (= $t@238@01 $Snap.unit))
; [eval] 6 < n
(assert (< 6 n@233@01))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale i == 4
(declare-const $t@239@01 $Snap)
(assert (= $t@239@01 $Snap.unit))
; [eval] i == 4
(assert (= i@234@01 4))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; unfold acc(P02(xs, n), write)
(assert (= $t@237@01 ($Snap.combine ($Snap.first $t@237@01) ($Snap.second $t@237@01))))
(assert (= ($Snap.first $t@237@01) $Snap.unit))
; [eval] |xs| == n
; [eval] |xs|
(assert (= (Seq_length xs@232@01) n@233@01))
(assert (=
  ($Snap.second $t@237@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@237@01))
    ($Snap.second ($Snap.second $t@237@01)))))
(assert (= ($Snap.first ($Snap.second $t@237@01)) $Snap.unit))
; [eval] 3 <= n
(assert (<= 3 n@233@01))
(assert (=
  ($Snap.second ($Snap.second $t@237@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@237@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@237@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@237@01))) $Snap.unit))
; [eval] (forall k: Int, j: Int :: { xs[k], xs[j] } k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j])
(declare-const k@240@01 Int)
(declare-const j@241@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j]
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j)))
; [eval] k >= 0
(push) ; 4
; [then-branch: 123 | !(k@240@01 >= 0) | live]
; [else-branch: 123 | k@240@01 >= 0 | live]
(push) ; 5
; [then-branch: 123 | !(k@240@01 >= 0)]
(assert (not (>= k@240@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 123 | k@240@01 >= 0]
(assert (>= k@240@01 0))
; [eval] k < |xs|
; [eval] |xs|
(push) ; 6
; [then-branch: 124 | !(k@240@01 < |xs@232@01|) | live]
; [else-branch: 124 | k@240@01 < |xs@232@01| | live]
(push) ; 7
; [then-branch: 124 | !(k@240@01 < |xs@232@01|)]
(assert (not (< k@240@01 (Seq_length xs@232@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 124 | k@240@01 < |xs@232@01|]
(assert (< k@240@01 (Seq_length xs@232@01)))
; [eval] j >= 0
(push) ; 8
; [then-branch: 125 | !(j@241@01 >= 0) | live]
; [else-branch: 125 | j@241@01 >= 0 | live]
(push) ; 9
; [then-branch: 125 | !(j@241@01 >= 0)]
(assert (not (>= j@241@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 125 | j@241@01 >= 0]
(assert (>= j@241@01 0))
; [eval] j < |xs|
; [eval] |xs|
(push) ; 10
; [then-branch: 126 | !(j@241@01 < |xs@232@01|) | live]
; [else-branch: 126 | j@241@01 < |xs@232@01| | live]
(push) ; 11
; [then-branch: 126 | !(j@241@01 < |xs@232@01|)]
(assert (not (< j@241@01 (Seq_length xs@232@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 126 | j@241@01 < |xs@232@01|]
(assert (< j@241@01 (Seq_length xs@232@01)))
; [eval] k != j
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (< j@241@01 (Seq_length xs@232@01))
  (not (< j@241@01 (Seq_length xs@232@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@241@01 0)
  (and
    (>= j@241@01 0)
    (or
      (< j@241@01 (Seq_length xs@232@01))
      (not (< j@241@01 (Seq_length xs@232@01)))))))
(assert (or (>= j@241@01 0) (not (>= j@241@01 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@240@01 (Seq_length xs@232@01))
  (and
    (< k@240@01 (Seq_length xs@232@01))
    (=>
      (>= j@241@01 0)
      (and
        (>= j@241@01 0)
        (or
          (< j@241@01 (Seq_length xs@232@01))
          (not (< j@241@01 (Seq_length xs@232@01))))))
    (or (>= j@241@01 0) (not (>= j@241@01 0))))))
(assert (or
  (< k@240@01 (Seq_length xs@232@01))
  (not (< k@240@01 (Seq_length xs@232@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@240@01 0)
  (and
    (>= k@240@01 0)
    (=>
      (< k@240@01 (Seq_length xs@232@01))
      (and
        (< k@240@01 (Seq_length xs@232@01))
        (=>
          (>= j@241@01 0)
          (and
            (>= j@241@01 0)
            (or
              (< j@241@01 (Seq_length xs@232@01))
              (not (< j@241@01 (Seq_length xs@232@01))))))
        (or (>= j@241@01 0) (not (>= j@241@01 0)))))
    (or
      (< k@240@01 (Seq_length xs@232@01))
      (not (< k@240@01 (Seq_length xs@232@01)))))))
(assert (or (>= k@240@01 0) (not (>= k@240@01 0))))
(push) ; 4
; [then-branch: 127 | k@240@01 >= 0 && k@240@01 < |xs@232@01| && j@241@01 >= 0 && j@241@01 < |xs@232@01| && k@240@01 != j@241@01 | live]
; [else-branch: 127 | !(k@240@01 >= 0 && k@240@01 < |xs@232@01| && j@241@01 >= 0 && j@241@01 < |xs@232@01| && k@240@01 != j@241@01) | live]
(push) ; 5
; [then-branch: 127 | k@240@01 >= 0 && k@240@01 < |xs@232@01| && j@241@01 >= 0 && j@241@01 < |xs@232@01| && k@240@01 != j@241@01]
(assert (and
  (>= k@240@01 0)
  (and
    (< k@240@01 (Seq_length xs@232@01))
    (and
      (>= j@241@01 0)
      (and (< j@241@01 (Seq_length xs@232@01)) (not (= k@240@01 j@241@01)))))))
; [eval] xs[k] != xs[j]
; [eval] xs[k]
; [eval] xs[j]
(pop) ; 5
(push) ; 5
; [else-branch: 127 | !(k@240@01 >= 0 && k@240@01 < |xs@232@01| && j@241@01 >= 0 && j@241@01 < |xs@232@01| && k@240@01 != j@241@01)]
(assert (not
  (and
    (>= k@240@01 0)
    (and
      (< k@240@01 (Seq_length xs@232@01))
      (and
        (>= j@241@01 0)
        (and (< j@241@01 (Seq_length xs@232@01)) (not (= k@240@01 j@241@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (>= k@240@01 0)
    (and
      (< k@240@01 (Seq_length xs@232@01))
      (and
        (>= j@241@01 0)
        (and (< j@241@01 (Seq_length xs@232@01)) (not (= k@240@01 j@241@01))))))
  (and
    (>= k@240@01 0)
    (< k@240@01 (Seq_length xs@232@01))
    (>= j@241@01 0)
    (< j@241@01 (Seq_length xs@232@01))
    (not (= k@240@01 j@241@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@240@01 0)
      (and
        (< k@240@01 (Seq_length xs@232@01))
        (and
          (>= j@241@01 0)
          (and (< j@241@01 (Seq_length xs@232@01)) (not (= k@240@01 j@241@01)))))))
  (and
    (>= k@240@01 0)
    (and
      (< k@240@01 (Seq_length xs@232@01))
      (and
        (>= j@241@01 0)
        (and (< j@241@01 (Seq_length xs@232@01)) (not (= k@240@01 j@241@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@240@01 Int) (j@241@01 Int)) (!
  (and
    (=>
      (>= k@240@01 0)
      (and
        (>= k@240@01 0)
        (=>
          (< k@240@01 (Seq_length xs@232@01))
          (and
            (< k@240@01 (Seq_length xs@232@01))
            (=>
              (>= j@241@01 0)
              (and
                (>= j@241@01 0)
                (or
                  (< j@241@01 (Seq_length xs@232@01))
                  (not (< j@241@01 (Seq_length xs@232@01))))))
            (or (>= j@241@01 0) (not (>= j@241@01 0)))))
        (or
          (< k@240@01 (Seq_length xs@232@01))
          (not (< k@240@01 (Seq_length xs@232@01))))))
    (or (>= k@240@01 0) (not (>= k@240@01 0)))
    (=>
      (and
        (>= k@240@01 0)
        (and
          (< k@240@01 (Seq_length xs@232@01))
          (and
            (>= j@241@01 0)
            (and (< j@241@01 (Seq_length xs@232@01)) (not (= k@240@01 j@241@01))))))
      (and
        (>= k@240@01 0)
        (< k@240@01 (Seq_length xs@232@01))
        (>= j@241@01 0)
        (< j@241@01 (Seq_length xs@232@01))
        (not (= k@240@01 j@241@01))))
    (or
      (not
        (and
          (>= k@240@01 0)
          (and
            (< k@240@01 (Seq_length xs@232@01))
            (and
              (>= j@241@01 0)
              (and
                (< j@241@01 (Seq_length xs@232@01))
                (not (= k@240@01 j@241@01)))))))
      (and
        (>= k@240@01 0)
        (and
          (< k@240@01 (Seq_length xs@232@01))
          (and
            (>= j@241@01 0)
            (and (< j@241@01 (Seq_length xs@232@01)) (not (= k@240@01 j@241@01))))))))
  :pattern ((Seq_index xs@232@01 k@240@01) (Seq_index xs@232@01 j@241@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@65@7@65@101-aux|)))
(assert (forall ((k@240@01 Int) (j@241@01 Int)) (!
  (=>
    (and
      (>= k@240@01 0)
      (and
        (< k@240@01 (Seq_length xs@232@01))
        (and
          (>= j@241@01 0)
          (and (< j@241@01 (Seq_length xs@232@01)) (not (= k@240@01 j@241@01))))))
    (not (= (Seq_index xs@232@01 k@240@01) (Seq_index xs@232@01 j@241@01))))
  :pattern ((Seq_index xs@232@01 k@240@01) (Seq_index xs@232@01 j@241@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@65@7@65@101|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@237@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@237@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@237@01)))))))
(declare-const j@242@01 Int)
(push) ; 3
; [eval] 0 <= j && j < 3
; [eval] 0 <= j
(push) ; 4
; [then-branch: 128 | !(0 <= j@242@01) | live]
; [else-branch: 128 | 0 <= j@242@01 | live]
(push) ; 5
; [then-branch: 128 | !(0 <= j@242@01)]
(assert (not (<= 0 j@242@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 128 | 0 <= j@242@01]
(assert (<= 0 j@242@01))
; [eval] j < 3
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@242@01) (not (<= 0 j@242@01))))
(assert (and (<= 0 j@242@01) (< j@242@01 3)))
; [eval] xs[j]
(push) ; 4
(assert (not (>= j@242@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@242@01 (Seq_length xs@232@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@243@01 ($Ref) Int)
(declare-fun img@244@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@242@01 Int)) (!
  (=>
    (and (<= 0 j@242@01) (< j@242@01 3))
    (or (<= 0 j@242@01) (not (<= 0 j@242@01))))
  :pattern ((Seq_index xs@232@01 j@242@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@242@01 Int) (j2@242@01 Int)) (!
  (=>
    (and
      (and (<= 0 j1@242@01) (< j1@242@01 3))
      (and (<= 0 j2@242@01) (< j2@242@01 3))
      (= (Seq_index xs@232@01 j1@242@01) (Seq_index xs@232@01 j2@242@01)))
    (= j1@242@01 j2@242@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@242@01 Int)) (!
  (=>
    (and (<= 0 j@242@01) (< j@242@01 3))
    (and
      (= (inv@243@01 (Seq_index xs@232@01 j@242@01)) j@242@01)
      (img@244@01 (Seq_index xs@232@01 j@242@01))))
  :pattern ((Seq_index xs@232@01 j@242@01))
  :qid |quant-u-11667|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@244@01 r) (and (<= 0 (inv@243@01 r)) (< (inv@243@01 r) 3)))
    (= (Seq_index xs@232@01 (inv@243@01 r)) r))
  :pattern ((inv@243@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@242@01 Int)) (!
  (=>
    (and (<= 0 j@242@01) (< j@242@01 3))
    (not (= (Seq_index xs@232@01 j@242@01) $Ref.null)))
  :pattern ((Seq_index xs@232@01 j@242@01))
  :qid |f-permImpliesNonNull|)))
(declare-const j@245@01 Int)
(push) ; 3
; [eval] 3 <= j && j < n
; [eval] 3 <= j
(push) ; 4
; [then-branch: 129 | !(3 <= j@245@01) | live]
; [else-branch: 129 | 3 <= j@245@01 | live]
(push) ; 5
; [then-branch: 129 | !(3 <= j@245@01)]
(assert (not (<= 3 j@245@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 129 | 3 <= j@245@01]
(assert (<= 3 j@245@01))
; [eval] j < n
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 3 j@245@01) (not (<= 3 j@245@01))))
(assert (and (<= 3 j@245@01) (< j@245@01 n@233@01)))
; [eval] xs[j]
(push) ; 4
(assert (not (>= j@245@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@245@01 (Seq_length xs@232@01))))
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
(assert (forall ((j@245@01 Int)) (!
  (=>
    (and (<= 3 j@245@01) (< j@245@01 n@233@01))
    (or (<= 3 j@245@01) (not (<= 3 j@245@01))))
  :pattern ((Seq_index xs@232@01 j@245@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@245@01 Int) (j2@245@01 Int)) (!
  (=>
    (and
      (and (<= 3 j1@245@01) (< j1@245@01 n@233@01))
      (and (<= 3 j2@245@01) (< j2@245@01 n@233@01))
      (= (Seq_index xs@232@01 j1@245@01) (Seq_index xs@232@01 j2@245@01)))
    (= j1@245@01 j2@245@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@245@01 Int)) (!
  (=>
    (and (<= 3 j@245@01) (< j@245@01 n@233@01))
    (and
      (= (inv@246@01 (Seq_index xs@232@01 j@245@01)) j@245@01)
      (img@247@01 (Seq_index xs@232@01 j@245@01))))
  :pattern ((Seq_index xs@232@01 j@245@01))
  :qid |quant-u-11669|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@247@01 r) (and (<= 3 (inv@246@01 r)) (< (inv@246@01 r) n@233@01)))
    (= (Seq_index xs@232@01 (inv@246@01 r)) r))
  :pattern ((inv@246@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@245@01 Int)) (!
  (=>
    (and (<= 3 j@245@01) (< j@245@01 n@233@01))
    (not (= (Seq_index xs@232@01 j@245@01) $Ref.null)))
  :pattern ((Seq_index xs@232@01 j@245@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@232@01 j@245@01) (Seq_index xs@232@01 j@242@01))
    (=
      (and
        (img@247@01 r)
        (and (<= 3 (inv@246@01 r)) (< (inv@246@01 r) n@233@01)))
      (and (img@244@01 r) (and (<= 0 (inv@243@01 r)) (< (inv@243@01 r) 3)))))
  
  :qid |quant-u-11670|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (P02%trigger $t@237@01 xs@232@01 n@233@01))
; [exec]
; v1 := xs[i].f
; [eval] xs[i]
(set-option :timeout 0)
(push) ; 3
(assert (not (>= i@234@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@234@01 (Seq_length xs@232@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@248@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@244@01 r) (and (<= 0 (inv@243@01 r)) (< (inv@243@01 r) 3)))
    (=
      ($FVF.lookup_f (as sm@248@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@237@01))))) r)))
  :pattern (($FVF.lookup_f (as sm@248@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@237@01))))) r))
  :qid |qp.fvfValDef109|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@247@01 r) (and (<= 3 (inv@246@01 r)) (< (inv@246@01 r) n@233@01)))
    (=
      ($FVF.lookup_f (as sm@248@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@237@01))))) r)))
  :pattern (($FVF.lookup_f (as sm@248@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@237@01))))) r))
  :qid |qp.fvfValDef110|)))
(declare-const pm@249@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@249@01  $FPM) r)
    (+
      (ite
        (and (img@244@01 r) (and (<= 0 (inv@243@01 r)) (< (inv@243@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@247@01 r)
          (and (<= 3 (inv@246@01 r)) (< (inv@246@01 r) n@233@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@249@01  $FPM) r))
  :qid |qp.resPrmSumDef111|)))
(push) ; 3
(assert (not (< $Perm.No ($FVF.perm_f (as pm@249@01  $FPM) (Seq_index xs@232@01 i@234@01)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const v1@250@01 Int)
(assert (=
  v1@250@01
  ($FVF.lookup_f (as sm@248@01  $FVF<f>) (Seq_index xs@232@01 i@234@01))))
; [exec]
; fold acc(P02(xs, n), write)
; [eval] |xs| == n
; [eval] |xs|
; [eval] 3 <= n
; [eval] (forall k: Int, j: Int :: { xs[k], xs[j] } k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j])
(declare-const k@251@01 Int)
(declare-const j@252@01 Int)
(push) ; 3
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j]
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j)))
; [eval] k >= 0
(push) ; 4
; [then-branch: 130 | !(k@251@01 >= 0) | live]
; [else-branch: 130 | k@251@01 >= 0 | live]
(push) ; 5
; [then-branch: 130 | !(k@251@01 >= 0)]
(assert (not (>= k@251@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 130 | k@251@01 >= 0]
(assert (>= k@251@01 0))
; [eval] k < |xs|
; [eval] |xs|
(push) ; 6
; [then-branch: 131 | !(k@251@01 < |xs@232@01|) | live]
; [else-branch: 131 | k@251@01 < |xs@232@01| | live]
(push) ; 7
; [then-branch: 131 | !(k@251@01 < |xs@232@01|)]
(assert (not (< k@251@01 (Seq_length xs@232@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 131 | k@251@01 < |xs@232@01|]
(assert (< k@251@01 (Seq_length xs@232@01)))
; [eval] j >= 0
(push) ; 8
; [then-branch: 132 | !(j@252@01 >= 0) | live]
; [else-branch: 132 | j@252@01 >= 0 | live]
(push) ; 9
; [then-branch: 132 | !(j@252@01 >= 0)]
(assert (not (>= j@252@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 132 | j@252@01 >= 0]
(assert (>= j@252@01 0))
; [eval] j < |xs|
; [eval] |xs|
(push) ; 10
; [then-branch: 133 | !(j@252@01 < |xs@232@01|) | live]
; [else-branch: 133 | j@252@01 < |xs@232@01| | live]
(push) ; 11
; [then-branch: 133 | !(j@252@01 < |xs@232@01|)]
(assert (not (< j@252@01 (Seq_length xs@232@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 133 | j@252@01 < |xs@232@01|]
(assert (< j@252@01 (Seq_length xs@232@01)))
; [eval] k != j
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (< j@252@01 (Seq_length xs@232@01))
  (not (< j@252@01 (Seq_length xs@232@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@252@01 0)
  (and
    (>= j@252@01 0)
    (or
      (< j@252@01 (Seq_length xs@232@01))
      (not (< j@252@01 (Seq_length xs@232@01)))))))
(assert (or (>= j@252@01 0) (not (>= j@252@01 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@251@01 (Seq_length xs@232@01))
  (and
    (< k@251@01 (Seq_length xs@232@01))
    (=>
      (>= j@252@01 0)
      (and
        (>= j@252@01 0)
        (or
          (< j@252@01 (Seq_length xs@232@01))
          (not (< j@252@01 (Seq_length xs@232@01))))))
    (or (>= j@252@01 0) (not (>= j@252@01 0))))))
(assert (or
  (< k@251@01 (Seq_length xs@232@01))
  (not (< k@251@01 (Seq_length xs@232@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@251@01 0)
  (and
    (>= k@251@01 0)
    (=>
      (< k@251@01 (Seq_length xs@232@01))
      (and
        (< k@251@01 (Seq_length xs@232@01))
        (=>
          (>= j@252@01 0)
          (and
            (>= j@252@01 0)
            (or
              (< j@252@01 (Seq_length xs@232@01))
              (not (< j@252@01 (Seq_length xs@232@01))))))
        (or (>= j@252@01 0) (not (>= j@252@01 0)))))
    (or
      (< k@251@01 (Seq_length xs@232@01))
      (not (< k@251@01 (Seq_length xs@232@01)))))))
(assert (or (>= k@251@01 0) (not (>= k@251@01 0))))
(push) ; 4
; [then-branch: 134 | k@251@01 >= 0 && k@251@01 < |xs@232@01| && j@252@01 >= 0 && j@252@01 < |xs@232@01| && k@251@01 != j@252@01 | live]
; [else-branch: 134 | !(k@251@01 >= 0 && k@251@01 < |xs@232@01| && j@252@01 >= 0 && j@252@01 < |xs@232@01| && k@251@01 != j@252@01) | live]
(push) ; 5
; [then-branch: 134 | k@251@01 >= 0 && k@251@01 < |xs@232@01| && j@252@01 >= 0 && j@252@01 < |xs@232@01| && k@251@01 != j@252@01]
(assert (and
  (>= k@251@01 0)
  (and
    (< k@251@01 (Seq_length xs@232@01))
    (and
      (>= j@252@01 0)
      (and (< j@252@01 (Seq_length xs@232@01)) (not (= k@251@01 j@252@01)))))))
; [eval] xs[k] != xs[j]
; [eval] xs[k]
; [eval] xs[j]
(pop) ; 5
(push) ; 5
; [else-branch: 134 | !(k@251@01 >= 0 && k@251@01 < |xs@232@01| && j@252@01 >= 0 && j@252@01 < |xs@232@01| && k@251@01 != j@252@01)]
(assert (not
  (and
    (>= k@251@01 0)
    (and
      (< k@251@01 (Seq_length xs@232@01))
      (and
        (>= j@252@01 0)
        (and (< j@252@01 (Seq_length xs@232@01)) (not (= k@251@01 j@252@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (>= k@251@01 0)
    (and
      (< k@251@01 (Seq_length xs@232@01))
      (and
        (>= j@252@01 0)
        (and (< j@252@01 (Seq_length xs@232@01)) (not (= k@251@01 j@252@01))))))
  (and
    (>= k@251@01 0)
    (< k@251@01 (Seq_length xs@232@01))
    (>= j@252@01 0)
    (< j@252@01 (Seq_length xs@232@01))
    (not (= k@251@01 j@252@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@251@01 0)
      (and
        (< k@251@01 (Seq_length xs@232@01))
        (and
          (>= j@252@01 0)
          (and (< j@252@01 (Seq_length xs@232@01)) (not (= k@251@01 j@252@01)))))))
  (and
    (>= k@251@01 0)
    (and
      (< k@251@01 (Seq_length xs@232@01))
      (and
        (>= j@252@01 0)
        (and (< j@252@01 (Seq_length xs@232@01)) (not (= k@251@01 j@252@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@251@01 Int) (j@252@01 Int)) (!
  (and
    (=>
      (>= k@251@01 0)
      (and
        (>= k@251@01 0)
        (=>
          (< k@251@01 (Seq_length xs@232@01))
          (and
            (< k@251@01 (Seq_length xs@232@01))
            (=>
              (>= j@252@01 0)
              (and
                (>= j@252@01 0)
                (or
                  (< j@252@01 (Seq_length xs@232@01))
                  (not (< j@252@01 (Seq_length xs@232@01))))))
            (or (>= j@252@01 0) (not (>= j@252@01 0)))))
        (or
          (< k@251@01 (Seq_length xs@232@01))
          (not (< k@251@01 (Seq_length xs@232@01))))))
    (or (>= k@251@01 0) (not (>= k@251@01 0)))
    (=>
      (and
        (>= k@251@01 0)
        (and
          (< k@251@01 (Seq_length xs@232@01))
          (and
            (>= j@252@01 0)
            (and (< j@252@01 (Seq_length xs@232@01)) (not (= k@251@01 j@252@01))))))
      (and
        (>= k@251@01 0)
        (< k@251@01 (Seq_length xs@232@01))
        (>= j@252@01 0)
        (< j@252@01 (Seq_length xs@232@01))
        (not (= k@251@01 j@252@01))))
    (or
      (not
        (and
          (>= k@251@01 0)
          (and
            (< k@251@01 (Seq_length xs@232@01))
            (and
              (>= j@252@01 0)
              (and
                (< j@252@01 (Seq_length xs@232@01))
                (not (= k@251@01 j@252@01)))))))
      (and
        (>= k@251@01 0)
        (and
          (< k@251@01 (Seq_length xs@232@01))
          (and
            (>= j@252@01 0)
            (and (< j@252@01 (Seq_length xs@232@01)) (not (= k@251@01 j@252@01))))))))
  :pattern ((Seq_index xs@232@01 k@251@01) (Seq_index xs@232@01 j@252@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@65@7@65@101-aux|)))
(push) ; 3
(assert (not (forall ((k@251@01 Int) (j@252@01 Int)) (!
  (=>
    (and
      (>= k@251@01 0)
      (and
        (< k@251@01 (Seq_length xs@232@01))
        (and
          (>= j@252@01 0)
          (and (< j@252@01 (Seq_length xs@232@01)) (not (= k@251@01 j@252@01))))))
    (not (= (Seq_index xs@232@01 k@251@01) (Seq_index xs@232@01 j@252@01))))
  :pattern ((Seq_index xs@232@01 k@251@01) (Seq_index xs@232@01 j@252@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@65@7@65@101|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((k@251@01 Int) (j@252@01 Int)) (!
  (=>
    (and
      (>= k@251@01 0)
      (and
        (< k@251@01 (Seq_length xs@232@01))
        (and
          (>= j@252@01 0)
          (and (< j@252@01 (Seq_length xs@232@01)) (not (= k@251@01 j@252@01))))))
    (not (= (Seq_index xs@232@01 k@251@01) (Seq_index xs@232@01 j@252@01))))
  :pattern ((Seq_index xs@232@01 k@251@01) (Seq_index xs@232@01 j@252@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@65@7@65@101|)))
(declare-const j@253@01 Int)
(push) ; 3
; [eval] 0 <= j && j < 3
; [eval] 0 <= j
(push) ; 4
; [then-branch: 135 | !(0 <= j@253@01) | live]
; [else-branch: 135 | 0 <= j@253@01 | live]
(push) ; 5
; [then-branch: 135 | !(0 <= j@253@01)]
(assert (not (<= 0 j@253@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 135 | 0 <= j@253@01]
(assert (<= 0 j@253@01))
; [eval] j < 3
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@253@01) (not (<= 0 j@253@01))))
(assert (and (<= 0 j@253@01) (< j@253@01 3)))
; [eval] xs[j]
(push) ; 4
(assert (not (>= j@253@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@253@01 (Seq_length xs@232@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@254@01 ($Ref) Int)
(declare-fun img@255@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@253@01 Int)) (!
  (=>
    (and (<= 0 j@253@01) (< j@253@01 3))
    (or (<= 0 j@253@01) (not (<= 0 j@253@01))))
  :pattern ((Seq_index xs@232@01 j@253@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@253@01 Int) (j2@253@01 Int)) (!
  (=>
    (and
      (and (<= 0 j1@253@01) (< j1@253@01 3))
      (and (<= 0 j2@253@01) (< j2@253@01 3))
      (= (Seq_index xs@232@01 j1@253@01) (Seq_index xs@232@01 j2@253@01)))
    (= j1@253@01 j2@253@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@253@01 Int)) (!
  (=>
    (and (<= 0 j@253@01) (< j@253@01 3))
    (and
      (= (inv@254@01 (Seq_index xs@232@01 j@253@01)) j@253@01)
      (img@255@01 (Seq_index xs@232@01 j@253@01))))
  :pattern ((Seq_index xs@232@01 j@253@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@255@01 r) (and (<= 0 (inv@254@01 r)) (< (inv@254@01 r) 3)))
    (= (Seq_index xs@232@01 (inv@254@01 r)) r))
  :pattern ((inv@254@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@256@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@254@01 r)) (< (inv@254@01 r) 3))
      (img@255@01 r)
      (= r (Seq_index xs@232@01 (inv@254@01 r))))
    ($Perm.min
      (ite
        (and (img@244@01 r) (and (<= 0 (inv@243@01 r)) (< (inv@243@01 r) 3)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@257@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@254@01 r)) (< (inv@254@01 r) 3))
      (img@255@01 r)
      (= r (Seq_index xs@232@01 (inv@254@01 r))))
    ($Perm.min
      (ite
        (and
          (img@247@01 r)
          (and (<= 3 (inv@246@01 r)) (< (inv@246@01 r) n@233@01)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@256@01 r)))
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
        (and (img@244@01 r) (and (<= 0 (inv@243@01 r)) (< (inv@243@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (pTaken@256@01 r))
    $Perm.No)
  
  :qid |quant-u-11673|))))
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
      (and (<= 0 (inv@254@01 r)) (< (inv@254@01 r) 3))
      (img@255@01 r)
      (= r (Seq_index xs@232@01 (inv@254@01 r))))
    (= (- $Perm.Write (pTaken@256@01 r)) $Perm.No))
  
  :qid |quant-u-11674|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@258@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@258@01  $FVF<f>)))
      (and (and (<= 0 (inv@254@01 r)) (< (inv@254@01 r) 3)) (img@255@01 r)))
    (=>
      (and (and (<= 0 (inv@254@01 r)) (< (inv@254@01 r) 3)) (img@255@01 r))
      (Set_in r ($FVF.domain_f (as sm@258@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@258@01  $FVF<f>))))
  :qid |qp.fvfDomDef114|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@254@01 r)) (< (inv@254@01 r) 3)) (img@255@01 r))
      (and (img@244@01 r) (and (<= 0 (inv@243@01 r)) (< (inv@243@01 r) 3))))
    (=
      ($FVF.lookup_f (as sm@258@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@237@01))))) r)))
  :pattern (($FVF.lookup_f (as sm@258@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@237@01))))) r))
  :qid |qp.fvfValDef112|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@254@01 r)) (< (inv@254@01 r) 3)) (img@255@01 r))
      (and
        (img@247@01 r)
        (and (<= 3 (inv@246@01 r)) (< (inv@246@01 r) n@233@01))))
    (=
      ($FVF.lookup_f (as sm@258@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@237@01))))) r)))
  :pattern (($FVF.lookup_f (as sm@258@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@237@01))))) r))
  :qid |qp.fvfValDef113|)))
(declare-const j@259@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 3 <= j && j < n
; [eval] 3 <= j
(push) ; 4
; [then-branch: 136 | !(3 <= j@259@01) | live]
; [else-branch: 136 | 3 <= j@259@01 | live]
(push) ; 5
; [then-branch: 136 | !(3 <= j@259@01)]
(assert (not (<= 3 j@259@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 136 | 3 <= j@259@01]
(assert (<= 3 j@259@01))
; [eval] j < n
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 3 j@259@01) (not (<= 3 j@259@01))))
(assert (and (<= 3 j@259@01) (< j@259@01 n@233@01)))
; [eval] xs[j]
(push) ; 4
(assert (not (>= j@259@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@259@01 (Seq_length xs@232@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@260@01 ($Ref) Int)
(declare-fun img@261@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@259@01 Int)) (!
  (=>
    (and (<= 3 j@259@01) (< j@259@01 n@233@01))
    (or (<= 3 j@259@01) (not (<= 3 j@259@01))))
  :pattern ((Seq_index xs@232@01 j@259@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@259@01 Int) (j2@259@01 Int)) (!
  (=>
    (and
      (and (<= 3 j1@259@01) (< j1@259@01 n@233@01))
      (and (<= 3 j2@259@01) (< j2@259@01 n@233@01))
      (= (Seq_index xs@232@01 j1@259@01) (Seq_index xs@232@01 j2@259@01)))
    (= j1@259@01 j2@259@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@259@01 Int)) (!
  (=>
    (and (<= 3 j@259@01) (< j@259@01 n@233@01))
    (and
      (= (inv@260@01 (Seq_index xs@232@01 j@259@01)) j@259@01)
      (img@261@01 (Seq_index xs@232@01 j@259@01))))
  :pattern ((Seq_index xs@232@01 j@259@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@261@01 r) (and (<= 3 (inv@260@01 r)) (< (inv@260@01 r) n@233@01)))
    (= (Seq_index xs@232@01 (inv@260@01 r)) r))
  :pattern ((inv@260@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@262@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 3 (inv@260@01 r)) (< (inv@260@01 r) n@233@01))
      (img@261@01 r)
      (= r (Seq_index xs@232@01 (inv@260@01 r))))
    ($Perm.min
      (ite
        (and
          (img@247@01 r)
          (and (<= 3 (inv@246@01 r)) (< (inv@246@01 r) n@233@01)))
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
          (img@247@01 r)
          (and (<= 3 (inv@246@01 r)) (< (inv@246@01 r) n@233@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@262@01 r))
    $Perm.No)
  
  :qid |quant-u-11677|))))
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
      (and (<= 3 (inv@260@01 r)) (< (inv@260@01 r) n@233@01))
      (img@261@01 r)
      (= r (Seq_index xs@232@01 (inv@260@01 r))))
    (= (- $Perm.Write (pTaken@262@01 r)) $Perm.No))
  
  :qid |quant-u-11678|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@263@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@263@01  $FVF<f>)))
      (and
        (and (<= 3 (inv@260@01 r)) (< (inv@260@01 r) n@233@01))
        (img@261@01 r)))
    (=>
      (and
        (and (<= 3 (inv@260@01 r)) (< (inv@260@01 r) n@233@01))
        (img@261@01 r))
      (Set_in r ($FVF.domain_f (as sm@263@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@263@01  $FVF<f>))))
  :qid |qp.fvfDomDef116|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 3 (inv@260@01 r)) (< (inv@260@01 r) n@233@01))
        (img@261@01 r))
      (and
        (img@247@01 r)
        (and (<= 3 (inv@246@01 r)) (< (inv@246@01 r) n@233@01))))
    (=
      ($FVF.lookup_f (as sm@263@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@237@01))))) r)))
  :pattern (($FVF.lookup_f (as sm@263@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@237@01))))) r))
  :qid |qp.fvfValDef115|)))
(assert (P02%trigger ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<f>To$Snap (as sm@258@01  $FVF<f>))
        ($SortWrappers.$FVF<f>To$Snap (as sm@263@01  $FVF<f>)))))) xs@232@01 n@233@01))
; [exec]
; assert v1 == fun06(xs, n, i)
; [eval] v1 == fun06(xs, n, i)
; [eval] fun06(xs, n, i)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 < i
(push) ; 4
(assert (not (< 0 i@234@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< 0 i@234@01))
; [eval] i < n
(push) ; 4
(assert (not (< i@234@01 n@233@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< i@234@01 n@233@01))
(assert (fun06%precondition ($Snap.combine
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<f>To$Snap (as sm@258@01  $FVF<f>))
          ($SortWrappers.$FVF<f>To$Snap (as sm@263@01  $FVF<f>))))))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@232@01 n@233@01 i@234@01))
(pop) ; 3
; Joined path conditions
(assert (and
  (< 0 i@234@01)
  (< i@234@01 n@233@01)
  (fun06%precondition ($Snap.combine
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($SortWrappers.$FVF<f>To$Snap (as sm@258@01  $FVF<f>))
            ($SortWrappers.$FVF<f>To$Snap (as sm@263@01  $FVF<f>))))))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@232@01 n@233@01 i@234@01)))
(push) ; 3
(assert (not (=
  v1@250@01
  (fun06 ($Snap.combine
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($SortWrappers.$FVF<f>To$Snap (as sm@258@01  $FVF<f>))
            ($SortWrappers.$FVF<f>To$Snap (as sm@263@01  $FVF<f>))))))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@232@01 n@233@01 i@234@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  v1@250@01
  (fun06 ($Snap.combine
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($SortWrappers.$FVF<f>To$Snap (as sm@258@01  $FVF<f>))
            ($SortWrappers.$FVF<f>To$Snap (as sm@263@01  $FVF<f>))))))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@232@01 n@233@01 i@234@01)))
; [exec]
; unfold acc(P02(xs, n), write)
; [eval] |xs| == n
; [eval] |xs|
; [eval] 3 <= n
; [eval] (forall k: Int, j: Int :: { xs[k], xs[j] } k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j])
(declare-const k@264@01 Int)
(declare-const j@265@01 Int)
(push) ; 3
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j]
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j)))
; [eval] k >= 0
(push) ; 4
; [then-branch: 137 | !(k@264@01 >= 0) | live]
; [else-branch: 137 | k@264@01 >= 0 | live]
(push) ; 5
; [then-branch: 137 | !(k@264@01 >= 0)]
(assert (not (>= k@264@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 137 | k@264@01 >= 0]
(assert (>= k@264@01 0))
; [eval] k < |xs|
; [eval] |xs|
(push) ; 6
; [then-branch: 138 | !(k@264@01 < |xs@232@01|) | live]
; [else-branch: 138 | k@264@01 < |xs@232@01| | live]
(push) ; 7
; [then-branch: 138 | !(k@264@01 < |xs@232@01|)]
(assert (not (< k@264@01 (Seq_length xs@232@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 138 | k@264@01 < |xs@232@01|]
(assert (< k@264@01 (Seq_length xs@232@01)))
; [eval] j >= 0
(push) ; 8
; [then-branch: 139 | !(j@265@01 >= 0) | live]
; [else-branch: 139 | j@265@01 >= 0 | live]
(push) ; 9
; [then-branch: 139 | !(j@265@01 >= 0)]
(assert (not (>= j@265@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 139 | j@265@01 >= 0]
(assert (>= j@265@01 0))
; [eval] j < |xs|
; [eval] |xs|
(push) ; 10
; [then-branch: 140 | !(j@265@01 < |xs@232@01|) | live]
; [else-branch: 140 | j@265@01 < |xs@232@01| | live]
(push) ; 11
; [then-branch: 140 | !(j@265@01 < |xs@232@01|)]
(assert (not (< j@265@01 (Seq_length xs@232@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 140 | j@265@01 < |xs@232@01|]
(assert (< j@265@01 (Seq_length xs@232@01)))
; [eval] k != j
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (< j@265@01 (Seq_length xs@232@01))
  (not (< j@265@01 (Seq_length xs@232@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@265@01 0)
  (and
    (>= j@265@01 0)
    (or
      (< j@265@01 (Seq_length xs@232@01))
      (not (< j@265@01 (Seq_length xs@232@01)))))))
(assert (or (>= j@265@01 0) (not (>= j@265@01 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@264@01 (Seq_length xs@232@01))
  (and
    (< k@264@01 (Seq_length xs@232@01))
    (=>
      (>= j@265@01 0)
      (and
        (>= j@265@01 0)
        (or
          (< j@265@01 (Seq_length xs@232@01))
          (not (< j@265@01 (Seq_length xs@232@01))))))
    (or (>= j@265@01 0) (not (>= j@265@01 0))))))
(assert (or
  (< k@264@01 (Seq_length xs@232@01))
  (not (< k@264@01 (Seq_length xs@232@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@264@01 0)
  (and
    (>= k@264@01 0)
    (=>
      (< k@264@01 (Seq_length xs@232@01))
      (and
        (< k@264@01 (Seq_length xs@232@01))
        (=>
          (>= j@265@01 0)
          (and
            (>= j@265@01 0)
            (or
              (< j@265@01 (Seq_length xs@232@01))
              (not (< j@265@01 (Seq_length xs@232@01))))))
        (or (>= j@265@01 0) (not (>= j@265@01 0)))))
    (or
      (< k@264@01 (Seq_length xs@232@01))
      (not (< k@264@01 (Seq_length xs@232@01)))))))
(assert (or (>= k@264@01 0) (not (>= k@264@01 0))))
(push) ; 4
; [then-branch: 141 | k@264@01 >= 0 && k@264@01 < |xs@232@01| && j@265@01 >= 0 && j@265@01 < |xs@232@01| && k@264@01 != j@265@01 | live]
; [else-branch: 141 | !(k@264@01 >= 0 && k@264@01 < |xs@232@01| && j@265@01 >= 0 && j@265@01 < |xs@232@01| && k@264@01 != j@265@01) | live]
(push) ; 5
; [then-branch: 141 | k@264@01 >= 0 && k@264@01 < |xs@232@01| && j@265@01 >= 0 && j@265@01 < |xs@232@01| && k@264@01 != j@265@01]
(assert (and
  (>= k@264@01 0)
  (and
    (< k@264@01 (Seq_length xs@232@01))
    (and
      (>= j@265@01 0)
      (and (< j@265@01 (Seq_length xs@232@01)) (not (= k@264@01 j@265@01)))))))
; [eval] xs[k] != xs[j]
; [eval] xs[k]
; [eval] xs[j]
(pop) ; 5
(push) ; 5
; [else-branch: 141 | !(k@264@01 >= 0 && k@264@01 < |xs@232@01| && j@265@01 >= 0 && j@265@01 < |xs@232@01| && k@264@01 != j@265@01)]
(assert (not
  (and
    (>= k@264@01 0)
    (and
      (< k@264@01 (Seq_length xs@232@01))
      (and
        (>= j@265@01 0)
        (and (< j@265@01 (Seq_length xs@232@01)) (not (= k@264@01 j@265@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (>= k@264@01 0)
    (and
      (< k@264@01 (Seq_length xs@232@01))
      (and
        (>= j@265@01 0)
        (and (< j@265@01 (Seq_length xs@232@01)) (not (= k@264@01 j@265@01))))))
  (and
    (>= k@264@01 0)
    (< k@264@01 (Seq_length xs@232@01))
    (>= j@265@01 0)
    (< j@265@01 (Seq_length xs@232@01))
    (not (= k@264@01 j@265@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@264@01 0)
      (and
        (< k@264@01 (Seq_length xs@232@01))
        (and
          (>= j@265@01 0)
          (and (< j@265@01 (Seq_length xs@232@01)) (not (= k@264@01 j@265@01)))))))
  (and
    (>= k@264@01 0)
    (and
      (< k@264@01 (Seq_length xs@232@01))
      (and
        (>= j@265@01 0)
        (and (< j@265@01 (Seq_length xs@232@01)) (not (= k@264@01 j@265@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@264@01 Int) (j@265@01 Int)) (!
  (and
    (=>
      (>= k@264@01 0)
      (and
        (>= k@264@01 0)
        (=>
          (< k@264@01 (Seq_length xs@232@01))
          (and
            (< k@264@01 (Seq_length xs@232@01))
            (=>
              (>= j@265@01 0)
              (and
                (>= j@265@01 0)
                (or
                  (< j@265@01 (Seq_length xs@232@01))
                  (not (< j@265@01 (Seq_length xs@232@01))))))
            (or (>= j@265@01 0) (not (>= j@265@01 0)))))
        (or
          (< k@264@01 (Seq_length xs@232@01))
          (not (< k@264@01 (Seq_length xs@232@01))))))
    (or (>= k@264@01 0) (not (>= k@264@01 0)))
    (=>
      (and
        (>= k@264@01 0)
        (and
          (< k@264@01 (Seq_length xs@232@01))
          (and
            (>= j@265@01 0)
            (and (< j@265@01 (Seq_length xs@232@01)) (not (= k@264@01 j@265@01))))))
      (and
        (>= k@264@01 0)
        (< k@264@01 (Seq_length xs@232@01))
        (>= j@265@01 0)
        (< j@265@01 (Seq_length xs@232@01))
        (not (= k@264@01 j@265@01))))
    (or
      (not
        (and
          (>= k@264@01 0)
          (and
            (< k@264@01 (Seq_length xs@232@01))
            (and
              (>= j@265@01 0)
              (and
                (< j@265@01 (Seq_length xs@232@01))
                (not (= k@264@01 j@265@01)))))))
      (and
        (>= k@264@01 0)
        (and
          (< k@264@01 (Seq_length xs@232@01))
          (and
            (>= j@265@01 0)
            (and (< j@265@01 (Seq_length xs@232@01)) (not (= k@264@01 j@265@01))))))))
  :pattern ((Seq_index xs@232@01 k@264@01) (Seq_index xs@232@01 j@265@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@65@7@65@101-aux|)))
(assert (forall ((k@264@01 Int) (j@265@01 Int)) (!
  (=>
    (and
      (>= k@264@01 0)
      (and
        (< k@264@01 (Seq_length xs@232@01))
        (and
          (>= j@265@01 0)
          (and (< j@265@01 (Seq_length xs@232@01)) (not (= k@264@01 j@265@01))))))
    (not (= (Seq_index xs@232@01 k@264@01) (Seq_index xs@232@01 j@265@01))))
  :pattern ((Seq_index xs@232@01 k@264@01) (Seq_index xs@232@01 j@265@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@65@7@65@101|)))
(declare-const j@266@01 Int)
(push) ; 3
; [eval] 0 <= j && j < 3
; [eval] 0 <= j
(push) ; 4
; [then-branch: 142 | !(0 <= j@266@01) | live]
; [else-branch: 142 | 0 <= j@266@01 | live]
(push) ; 5
; [then-branch: 142 | !(0 <= j@266@01)]
(assert (not (<= 0 j@266@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 142 | 0 <= j@266@01]
(assert (<= 0 j@266@01))
; [eval] j < 3
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@266@01) (not (<= 0 j@266@01))))
(assert (and (<= 0 j@266@01) (< j@266@01 3)))
; [eval] xs[j]
(push) ; 4
(assert (not (>= j@266@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@266@01 (Seq_length xs@232@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@267@01 ($Ref) Int)
(declare-fun img@268@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@266@01 Int)) (!
  (=>
    (and (<= 0 j@266@01) (< j@266@01 3))
    (or (<= 0 j@266@01) (not (<= 0 j@266@01))))
  :pattern ((Seq_index xs@232@01 j@266@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@266@01 Int) (j2@266@01 Int)) (!
  (=>
    (and
      (and (<= 0 j1@266@01) (< j1@266@01 3))
      (and (<= 0 j2@266@01) (< j2@266@01 3))
      (= (Seq_index xs@232@01 j1@266@01) (Seq_index xs@232@01 j2@266@01)))
    (= j1@266@01 j2@266@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@266@01 Int)) (!
  (=>
    (and (<= 0 j@266@01) (< j@266@01 3))
    (and
      (= (inv@267@01 (Seq_index xs@232@01 j@266@01)) j@266@01)
      (img@268@01 (Seq_index xs@232@01 j@266@01))))
  :pattern ((Seq_index xs@232@01 j@266@01))
  :qid |quant-u-11680|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@268@01 r) (and (<= 0 (inv@267@01 r)) (< (inv@267@01 r) 3)))
    (= (Seq_index xs@232@01 (inv@267@01 r)) r))
  :pattern ((inv@267@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@266@01 Int)) (!
  (=>
    (and (<= 0 j@266@01) (< j@266@01 3))
    (not (= (Seq_index xs@232@01 j@266@01) $Ref.null)))
  :pattern ((Seq_index xs@232@01 j@266@01))
  :qid |f-permImpliesNonNull|)))
(declare-const j@269@01 Int)
(push) ; 3
; [eval] 3 <= j && j < n
; [eval] 3 <= j
(push) ; 4
; [then-branch: 143 | !(3 <= j@269@01) | live]
; [else-branch: 143 | 3 <= j@269@01 | live]
(push) ; 5
; [then-branch: 143 | !(3 <= j@269@01)]
(assert (not (<= 3 j@269@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 143 | 3 <= j@269@01]
(assert (<= 3 j@269@01))
; [eval] j < n
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 3 j@269@01) (not (<= 3 j@269@01))))
(assert (and (<= 3 j@269@01) (< j@269@01 n@233@01)))
; [eval] xs[j]
(push) ; 4
(assert (not (>= j@269@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@269@01 (Seq_length xs@232@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@270@01 ($Ref) Int)
(declare-fun img@271@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@269@01 Int)) (!
  (=>
    (and (<= 3 j@269@01) (< j@269@01 n@233@01))
    (or (<= 3 j@269@01) (not (<= 3 j@269@01))))
  :pattern ((Seq_index xs@232@01 j@269@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@269@01 Int) (j2@269@01 Int)) (!
  (=>
    (and
      (and (<= 3 j1@269@01) (< j1@269@01 n@233@01))
      (and (<= 3 j2@269@01) (< j2@269@01 n@233@01))
      (= (Seq_index xs@232@01 j1@269@01) (Seq_index xs@232@01 j2@269@01)))
    (= j1@269@01 j2@269@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@269@01 Int)) (!
  (=>
    (and (<= 3 j@269@01) (< j@269@01 n@233@01))
    (and
      (= (inv@270@01 (Seq_index xs@232@01 j@269@01)) j@269@01)
      (img@271@01 (Seq_index xs@232@01 j@269@01))))
  :pattern ((Seq_index xs@232@01 j@269@01))
  :qid |quant-u-11682|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@271@01 r) (and (<= 3 (inv@270@01 r)) (< (inv@270@01 r) n@233@01)))
    (= (Seq_index xs@232@01 (inv@270@01 r)) r))
  :pattern ((inv@270@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@269@01 Int)) (!
  (=>
    (and (<= 3 j@269@01) (< j@269@01 n@233@01))
    (not (= (Seq_index xs@232@01 j@269@01) $Ref.null)))
  :pattern ((Seq_index xs@232@01 j@269@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= (Seq_index xs@232@01 j@269@01) (Seq_index xs@232@01 j@266@01))
    (=
      (and
        (img@271@01 r)
        (and (<= 3 (inv@270@01 r)) (< (inv@270@01 r) n@233@01)))
      (and (img@268@01 r) (and (<= 0 (inv@267@01 r)) (< (inv@267@01 r) 3)))))
  
  :qid |quant-u-11683|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
; [exec]
; xs[i].f := 0
; [eval] xs[i]
(set-option :timeout 0)
(push) ; 3
(assert (not (>= i@234@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (< i@234@01 (Seq_length xs@232@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@272@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index xs@232@01 i@234@01))
    ($Perm.min
      (ite
        (and (img@268@01 r) (and (<= 0 (inv@267@01 r)) (< (inv@267@01 r) 3)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@273@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index xs@232@01 i@234@01))
    ($Perm.min
      (ite
        (and
          (img@271@01 r)
          (and (<= 3 (inv@270@01 r)) (< (inv@270@01 r) n@233@01)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@272@01 r)))
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
        (and (img@268@01 r) (and (<= 0 (inv@267@01 r)) (< (inv@267@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (pTaken@272@01 r))
    $Perm.No)
  
  :qid |quant-u-11685|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@272@01 r) $Perm.No)
  
  :qid |quant-u-11686|))))
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
    (= r (Seq_index xs@232@01 i@234@01))
    (= (- $Perm.Write (pTaken@272@01 r)) $Perm.No))
  
  :qid |quant-u-11687|))))
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
          (img@271@01 r)
          (and (<= 3 (inv@270@01 r)) (< (inv@270@01 r) n@233@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@273@01 r))
    $Perm.No)
  
  :qid |quant-u-11688|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@273@01 r) $Perm.No)
  
  :qid |quant-u-11689|))))
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
    (= r (Seq_index xs@232@01 i@234@01))
    (= (- (- $Perm.Write (pTaken@272@01 r)) (pTaken@273@01 r)) $Perm.No))
  
  :qid |quant-u-11690|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@274@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_f (as sm@274@01  $FVF<f>) (Seq_index xs@232@01 i@234@01)) 0))
; [exec]
; fold acc(P02(xs, n), write)
; [eval] |xs| == n
; [eval] |xs|
; [eval] 3 <= n
; [eval] (forall k: Int, j: Int :: { xs[k], xs[j] } k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j])
(declare-const k@275@01 Int)
(declare-const j@276@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j]
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j)))
; [eval] k >= 0
(push) ; 4
; [then-branch: 144 | !(k@275@01 >= 0) | live]
; [else-branch: 144 | k@275@01 >= 0 | live]
(push) ; 5
; [then-branch: 144 | !(k@275@01 >= 0)]
(assert (not (>= k@275@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 144 | k@275@01 >= 0]
(assert (>= k@275@01 0))
; [eval] k < |xs|
; [eval] |xs|
(push) ; 6
; [then-branch: 145 | !(k@275@01 < |xs@232@01|) | live]
; [else-branch: 145 | k@275@01 < |xs@232@01| | live]
(push) ; 7
; [then-branch: 145 | !(k@275@01 < |xs@232@01|)]
(assert (not (< k@275@01 (Seq_length xs@232@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 145 | k@275@01 < |xs@232@01|]
(assert (< k@275@01 (Seq_length xs@232@01)))
; [eval] j >= 0
(push) ; 8
; [then-branch: 146 | !(j@276@01 >= 0) | live]
; [else-branch: 146 | j@276@01 >= 0 | live]
(push) ; 9
; [then-branch: 146 | !(j@276@01 >= 0)]
(assert (not (>= j@276@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 146 | j@276@01 >= 0]
(assert (>= j@276@01 0))
; [eval] j < |xs|
; [eval] |xs|
(push) ; 10
; [then-branch: 147 | !(j@276@01 < |xs@232@01|) | live]
; [else-branch: 147 | j@276@01 < |xs@232@01| | live]
(push) ; 11
; [then-branch: 147 | !(j@276@01 < |xs@232@01|)]
(assert (not (< j@276@01 (Seq_length xs@232@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 147 | j@276@01 < |xs@232@01|]
(assert (< j@276@01 (Seq_length xs@232@01)))
; [eval] k != j
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (< j@276@01 (Seq_length xs@232@01))
  (not (< j@276@01 (Seq_length xs@232@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@276@01 0)
  (and
    (>= j@276@01 0)
    (or
      (< j@276@01 (Seq_length xs@232@01))
      (not (< j@276@01 (Seq_length xs@232@01)))))))
(assert (or (>= j@276@01 0) (not (>= j@276@01 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@275@01 (Seq_length xs@232@01))
  (and
    (< k@275@01 (Seq_length xs@232@01))
    (=>
      (>= j@276@01 0)
      (and
        (>= j@276@01 0)
        (or
          (< j@276@01 (Seq_length xs@232@01))
          (not (< j@276@01 (Seq_length xs@232@01))))))
    (or (>= j@276@01 0) (not (>= j@276@01 0))))))
(assert (or
  (< k@275@01 (Seq_length xs@232@01))
  (not (< k@275@01 (Seq_length xs@232@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@275@01 0)
  (and
    (>= k@275@01 0)
    (=>
      (< k@275@01 (Seq_length xs@232@01))
      (and
        (< k@275@01 (Seq_length xs@232@01))
        (=>
          (>= j@276@01 0)
          (and
            (>= j@276@01 0)
            (or
              (< j@276@01 (Seq_length xs@232@01))
              (not (< j@276@01 (Seq_length xs@232@01))))))
        (or (>= j@276@01 0) (not (>= j@276@01 0)))))
    (or
      (< k@275@01 (Seq_length xs@232@01))
      (not (< k@275@01 (Seq_length xs@232@01)))))))
(assert (or (>= k@275@01 0) (not (>= k@275@01 0))))
(push) ; 4
; [then-branch: 148 | k@275@01 >= 0 && k@275@01 < |xs@232@01| && j@276@01 >= 0 && j@276@01 < |xs@232@01| && k@275@01 != j@276@01 | live]
; [else-branch: 148 | !(k@275@01 >= 0 && k@275@01 < |xs@232@01| && j@276@01 >= 0 && j@276@01 < |xs@232@01| && k@275@01 != j@276@01) | live]
(push) ; 5
; [then-branch: 148 | k@275@01 >= 0 && k@275@01 < |xs@232@01| && j@276@01 >= 0 && j@276@01 < |xs@232@01| && k@275@01 != j@276@01]
(assert (and
  (>= k@275@01 0)
  (and
    (< k@275@01 (Seq_length xs@232@01))
    (and
      (>= j@276@01 0)
      (and (< j@276@01 (Seq_length xs@232@01)) (not (= k@275@01 j@276@01)))))))
; [eval] xs[k] != xs[j]
; [eval] xs[k]
; [eval] xs[j]
(pop) ; 5
(push) ; 5
; [else-branch: 148 | !(k@275@01 >= 0 && k@275@01 < |xs@232@01| && j@276@01 >= 0 && j@276@01 < |xs@232@01| && k@275@01 != j@276@01)]
(assert (not
  (and
    (>= k@275@01 0)
    (and
      (< k@275@01 (Seq_length xs@232@01))
      (and
        (>= j@276@01 0)
        (and (< j@276@01 (Seq_length xs@232@01)) (not (= k@275@01 j@276@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (>= k@275@01 0)
    (and
      (< k@275@01 (Seq_length xs@232@01))
      (and
        (>= j@276@01 0)
        (and (< j@276@01 (Seq_length xs@232@01)) (not (= k@275@01 j@276@01))))))
  (and
    (>= k@275@01 0)
    (< k@275@01 (Seq_length xs@232@01))
    (>= j@276@01 0)
    (< j@276@01 (Seq_length xs@232@01))
    (not (= k@275@01 j@276@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@275@01 0)
      (and
        (< k@275@01 (Seq_length xs@232@01))
        (and
          (>= j@276@01 0)
          (and (< j@276@01 (Seq_length xs@232@01)) (not (= k@275@01 j@276@01)))))))
  (and
    (>= k@275@01 0)
    (and
      (< k@275@01 (Seq_length xs@232@01))
      (and
        (>= j@276@01 0)
        (and (< j@276@01 (Seq_length xs@232@01)) (not (= k@275@01 j@276@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@275@01 Int) (j@276@01 Int)) (!
  (and
    (=>
      (>= k@275@01 0)
      (and
        (>= k@275@01 0)
        (=>
          (< k@275@01 (Seq_length xs@232@01))
          (and
            (< k@275@01 (Seq_length xs@232@01))
            (=>
              (>= j@276@01 0)
              (and
                (>= j@276@01 0)
                (or
                  (< j@276@01 (Seq_length xs@232@01))
                  (not (< j@276@01 (Seq_length xs@232@01))))))
            (or (>= j@276@01 0) (not (>= j@276@01 0)))))
        (or
          (< k@275@01 (Seq_length xs@232@01))
          (not (< k@275@01 (Seq_length xs@232@01))))))
    (or (>= k@275@01 0) (not (>= k@275@01 0)))
    (=>
      (and
        (>= k@275@01 0)
        (and
          (< k@275@01 (Seq_length xs@232@01))
          (and
            (>= j@276@01 0)
            (and (< j@276@01 (Seq_length xs@232@01)) (not (= k@275@01 j@276@01))))))
      (and
        (>= k@275@01 0)
        (< k@275@01 (Seq_length xs@232@01))
        (>= j@276@01 0)
        (< j@276@01 (Seq_length xs@232@01))
        (not (= k@275@01 j@276@01))))
    (or
      (not
        (and
          (>= k@275@01 0)
          (and
            (< k@275@01 (Seq_length xs@232@01))
            (and
              (>= j@276@01 0)
              (and
                (< j@276@01 (Seq_length xs@232@01))
                (not (= k@275@01 j@276@01)))))))
      (and
        (>= k@275@01 0)
        (and
          (< k@275@01 (Seq_length xs@232@01))
          (and
            (>= j@276@01 0)
            (and (< j@276@01 (Seq_length xs@232@01)) (not (= k@275@01 j@276@01))))))))
  :pattern ((Seq_index xs@232@01 k@275@01) (Seq_index xs@232@01 j@276@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@65@7@65@101-aux|)))
(push) ; 3
(assert (not (forall ((k@275@01 Int) (j@276@01 Int)) (!
  (=>
    (and
      (>= k@275@01 0)
      (and
        (< k@275@01 (Seq_length xs@232@01))
        (and
          (>= j@276@01 0)
          (and (< j@276@01 (Seq_length xs@232@01)) (not (= k@275@01 j@276@01))))))
    (not (= (Seq_index xs@232@01 k@275@01) (Seq_index xs@232@01 j@276@01))))
  :pattern ((Seq_index xs@232@01 k@275@01) (Seq_index xs@232@01 j@276@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@65@7@65@101|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((k@275@01 Int) (j@276@01 Int)) (!
  (=>
    (and
      (>= k@275@01 0)
      (and
        (< k@275@01 (Seq_length xs@232@01))
        (and
          (>= j@276@01 0)
          (and (< j@276@01 (Seq_length xs@232@01)) (not (= k@275@01 j@276@01))))))
    (not (= (Seq_index xs@232@01 k@275@01) (Seq_index xs@232@01 j@276@01))))
  :pattern ((Seq_index xs@232@01 k@275@01) (Seq_index xs@232@01 j@276@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@65@7@65@101|)))
(declare-const j@277@01 Int)
(push) ; 3
; [eval] 0 <= j && j < 3
; [eval] 0 <= j
(push) ; 4
; [then-branch: 149 | !(0 <= j@277@01) | live]
; [else-branch: 149 | 0 <= j@277@01 | live]
(push) ; 5
; [then-branch: 149 | !(0 <= j@277@01)]
(assert (not (<= 0 j@277@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 149 | 0 <= j@277@01]
(assert (<= 0 j@277@01))
; [eval] j < 3
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@277@01) (not (<= 0 j@277@01))))
(assert (and (<= 0 j@277@01) (< j@277@01 3)))
; [eval] xs[j]
(push) ; 4
(assert (not (>= j@277@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@277@01 (Seq_length xs@232@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@278@01 ($Ref) Int)
(declare-fun img@279@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@277@01 Int)) (!
  (=>
    (and (<= 0 j@277@01) (< j@277@01 3))
    (or (<= 0 j@277@01) (not (<= 0 j@277@01))))
  :pattern ((Seq_index xs@232@01 j@277@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@277@01 Int) (j2@277@01 Int)) (!
  (=>
    (and
      (and (<= 0 j1@277@01) (< j1@277@01 3))
      (and (<= 0 j2@277@01) (< j2@277@01 3))
      (= (Seq_index xs@232@01 j1@277@01) (Seq_index xs@232@01 j2@277@01)))
    (= j1@277@01 j2@277@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@277@01 Int)) (!
  (=>
    (and (<= 0 j@277@01) (< j@277@01 3))
    (and
      (= (inv@278@01 (Seq_index xs@232@01 j@277@01)) j@277@01)
      (img@279@01 (Seq_index xs@232@01 j@277@01))))
  :pattern ((Seq_index xs@232@01 j@277@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@279@01 r) (and (<= 0 (inv@278@01 r)) (< (inv@278@01 r) 3)))
    (= (Seq_index xs@232@01 (inv@278@01 r)) r))
  :pattern ((inv@278@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@280@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@278@01 r)) (< (inv@278@01 r) 3))
      (img@279@01 r)
      (= r (Seq_index xs@232@01 (inv@278@01 r))))
    ($Perm.min
      (ite
        (and
          (img@271@01 r)
          (and (<= 3 (inv@270@01 r)) (< (inv@270@01 r) n@233@01)))
        (- $Perm.Write (pTaken@273@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@281@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@278@01 r)) (< (inv@278@01 r) 3))
      (img@279@01 r)
      (= r (Seq_index xs@232@01 (inv@278@01 r))))
    ($Perm.min
      (ite
        (and (img@268@01 r) (and (<= 0 (inv@267@01 r)) (< (inv@267@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@280@01 r)))
    $Perm.No))
(define-fun pTaken@282@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@278@01 r)) (< (inv@278@01 r) 3))
      (img@279@01 r)
      (= r (Seq_index xs@232@01 (inv@278@01 r))))
    ($Perm.min
      (ite (= r (Seq_index xs@232@01 i@234@01)) $Perm.Write $Perm.No)
      (- (- $Perm.Write (pTaken@280@01 r)) (pTaken@281@01 r)))
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
          (img@271@01 r)
          (and (<= 3 (inv@270@01 r)) (< (inv@270@01 r) n@233@01)))
        (- $Perm.Write (pTaken@273@01 r))
        $Perm.No)
      (pTaken@280@01 r))
    $Perm.No)
  
  :qid |quant-u-11693|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@280@01 r) $Perm.No)
  
  :qid |quant-u-11694|))))
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
      (and (<= 0 (inv@278@01 r)) (< (inv@278@01 r) 3))
      (img@279@01 r)
      (= r (Seq_index xs@232@01 (inv@278@01 r))))
    (= (- $Perm.Write (pTaken@280@01 r)) $Perm.No))
  
  :qid |quant-u-11695|))))
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
        (and (img@268@01 r) (and (<= 0 (inv@267@01 r)) (< (inv@267@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (pTaken@281@01 r))
    $Perm.No)
  
  :qid |quant-u-11696|))))
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
      (and (<= 0 (inv@278@01 r)) (< (inv@278@01 r) 3))
      (img@279@01 r)
      (= r (Seq_index xs@232@01 (inv@278@01 r))))
    (= (- (- $Perm.Write (pTaken@280@01 r)) (pTaken@281@01 r)) $Perm.No))
  
  :qid |quant-u-11697|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@283@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@283@01  $FVF<f>)))
      (and (and (<= 0 (inv@278@01 r)) (< (inv@278@01 r) 3)) (img@279@01 r)))
    (=>
      (and (and (<= 0 (inv@278@01 r)) (< (inv@278@01 r) 3)) (img@279@01 r))
      (Set_in r ($FVF.domain_f (as sm@283@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@283@01  $FVF<f>))))
  :qid |qp.fvfDomDef120|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@278@01 r)) (< (inv@278@01 r) 3)) (img@279@01 r))
      (= r (Seq_index xs@232@01 i@234@01)))
    (=
      ($FVF.lookup_f (as sm@283@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@274@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@283@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@274@01  $FVF<f>) r))
  :qid |qp.fvfValDef117|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@278@01 r)) (< (inv@278@01 r) 3)) (img@279@01 r))
      (ite
        (and
          (img@271@01 r)
          (and (<= 3 (inv@270@01 r)) (< (inv@270@01 r) n@233@01)))
        (< $Perm.No (- $Perm.Write (pTaken@273@01 r)))
        false))
    (=
      ($FVF.lookup_f (as sm@283@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@263@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@283@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@263@01  $FVF<f>) r))
  :qid |qp.fvfValDef118|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@278@01 r)) (< (inv@278@01 r) 3)) (img@279@01 r))
      (and (img@268@01 r) (and (<= 0 (inv@267@01 r)) (< (inv@267@01 r) 3))))
    (=
      ($FVF.lookup_f (as sm@283@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@258@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@283@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@258@01  $FVF<f>) r))
  :qid |qp.fvfValDef119|)))
(declare-const j@284@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 3 <= j && j < n
; [eval] 3 <= j
(push) ; 4
; [then-branch: 150 | !(3 <= j@284@01) | live]
; [else-branch: 150 | 3 <= j@284@01 | live]
(push) ; 5
; [then-branch: 150 | !(3 <= j@284@01)]
(assert (not (<= 3 j@284@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 150 | 3 <= j@284@01]
(assert (<= 3 j@284@01))
; [eval] j < n
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 3 j@284@01) (not (<= 3 j@284@01))))
(assert (and (<= 3 j@284@01) (< j@284@01 n@233@01)))
; [eval] xs[j]
(push) ; 4
(assert (not (>= j@284@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (< j@284@01 (Seq_length xs@232@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@285@01 ($Ref) Int)
(declare-fun img@286@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@284@01 Int)) (!
  (=>
    (and (<= 3 j@284@01) (< j@284@01 n@233@01))
    (or (<= 3 j@284@01) (not (<= 3 j@284@01))))
  :pattern ((Seq_index xs@232@01 j@284@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@284@01 Int) (j2@284@01 Int)) (!
  (=>
    (and
      (and (<= 3 j1@284@01) (< j1@284@01 n@233@01))
      (and (<= 3 j2@284@01) (< j2@284@01 n@233@01))
      (= (Seq_index xs@232@01 j1@284@01) (Seq_index xs@232@01 j2@284@01)))
    (= j1@284@01 j2@284@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@284@01 Int)) (!
  (=>
    (and (<= 3 j@284@01) (< j@284@01 n@233@01))
    (and
      (= (inv@285@01 (Seq_index xs@232@01 j@284@01)) j@284@01)
      (img@286@01 (Seq_index xs@232@01 j@284@01))))
  :pattern ((Seq_index xs@232@01 j@284@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@286@01 r) (and (<= 3 (inv@285@01 r)) (< (inv@285@01 r) n@233@01)))
    (= (Seq_index xs@232@01 (inv@285@01 r)) r))
  :pattern ((inv@285@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@287@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 3 (inv@285@01 r)) (< (inv@285@01 r) n@233@01))
      (img@286@01 r)
      (= r (Seq_index xs@232@01 (inv@285@01 r))))
    ($Perm.min
      (ite
        (and
          (img@271@01 r)
          (and (<= 3 (inv@270@01 r)) (< (inv@270@01 r) n@233@01)))
        (- $Perm.Write (pTaken@273@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@288@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 3 (inv@285@01 r)) (< (inv@285@01 r) n@233@01))
      (img@286@01 r)
      (= r (Seq_index xs@232@01 (inv@285@01 r))))
    ($Perm.min
      (ite (= r (Seq_index xs@232@01 i@234@01)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@287@01 r)))
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
          (img@271@01 r)
          (and (<= 3 (inv@270@01 r)) (< (inv@270@01 r) n@233@01)))
        (- $Perm.Write (pTaken@273@01 r))
        $Perm.No)
      (pTaken@287@01 r))
    $Perm.No)
  
  :qid |quant-u-11700|))))
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
      (and (<= 3 (inv@285@01 r)) (< (inv@285@01 r) n@233@01))
      (img@286@01 r)
      (= r (Seq_index xs@232@01 (inv@285@01 r))))
    (= (- $Perm.Write (pTaken@287@01 r)) $Perm.No))
  
  :qid |quant-u-11701|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (= (Seq_index xs@232@01 i@234@01) (Seq_index xs@232@01 i@234@01))
      $Perm.Write
      $Perm.No)
    (pTaken@288@01 (Seq_index xs@232@01 i@234@01)))
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
    (and
      (and (<= 3 (inv@285@01 r)) (< (inv@285@01 r) n@233@01))
      (img@286@01 r)
      (= r (Seq_index xs@232@01 (inv@285@01 r))))
    (= (- (- $Perm.Write (pTaken@287@01 r)) (pTaken@288@01 r)) $Perm.No))
  
  :qid |quant-u-11703|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@289@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@289@01  $FVF<f>)))
      (and
        (and (<= 3 (inv@285@01 r)) (< (inv@285@01 r) n@233@01))
        (img@286@01 r)))
    (=>
      (and
        (and (<= 3 (inv@285@01 r)) (< (inv@285@01 r) n@233@01))
        (img@286@01 r))
      (Set_in r ($FVF.domain_f (as sm@289@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@289@01  $FVF<f>))))
  :qid |qp.fvfDomDef123|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 3 (inv@285@01 r)) (< (inv@285@01 r) n@233@01))
        (img@286@01 r))
      (= r (Seq_index xs@232@01 i@234@01)))
    (=
      ($FVF.lookup_f (as sm@289@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@274@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@289@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@274@01  $FVF<f>) r))
  :qid |qp.fvfValDef121|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 3 (inv@285@01 r)) (< (inv@285@01 r) n@233@01))
        (img@286@01 r))
      (ite
        (and
          (img@271@01 r)
          (and (<= 3 (inv@270@01 r)) (< (inv@270@01 r) n@233@01)))
        (< $Perm.No (- $Perm.Write (pTaken@273@01 r)))
        false))
    (=
      ($FVF.lookup_f (as sm@289@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@263@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@289@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@263@01  $FVF<f>) r))
  :qid |qp.fvfValDef122|)))
(assert (P02%trigger ($Snap.combine
  $Snap.unit
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<f>To$Snap (as sm@283@01  $FVF<f>))
        ($SortWrappers.$FVF<f>To$Snap (as sm@289@01  $FVF<f>)))))) xs@232@01 n@233@01))
; [exec]
; v2 := fun06(xs, n, i)
; [eval] fun06(xs, n, i)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 < i
; [eval] i < n
(assert (fun06%precondition ($Snap.combine
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<f>To$Snap (as sm@283@01  $FVF<f>))
          ($SortWrappers.$FVF<f>To$Snap (as sm@289@01  $FVF<f>))))))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@232@01 n@233@01 i@234@01))
(pop) ; 3
; Joined path conditions
(assert (fun06%precondition ($Snap.combine
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<f>To$Snap (as sm@283@01  $FVF<f>))
          ($SortWrappers.$FVF<f>To$Snap (as sm@289@01  $FVF<f>))))))
  ($Snap.combine $Snap.unit $Snap.unit)) xs@232@01 n@233@01 i@234@01))
(declare-const v2@290@01 Int)
(assert (=
  v2@290@01
  (fun06 ($Snap.combine
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($SortWrappers.$FVF<f>To$Snap (as sm@283@01  $FVF<f>))
            ($SortWrappers.$FVF<f>To$Snap (as sm@289@01  $FVF<f>))))))
    ($Snap.combine $Snap.unit $Snap.unit)) xs@232@01 n@233@01 i@234@01)))
; [exec]
; assert v2 == 0
; [eval] v2 == 0
(push) ; 3
(assert (not (= v2@290@01 0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= v2@290@01 0))
; [exec]
; assert v2 == v1
; [eval] v2 == v1
(push) ; 3
(assert (not (= v2@290@01 v1@250@01)))
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
; [eval] v2 == v1
(set-option :timeout 0)
(push) ; 3
(assert (not (= v2@290@01 v1@250@01)))
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
; [eval] v2 == v1
(set-option :timeout 0)
(push) ; 3
(assert (not (= v2@290@01 v1@250@01)))
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
; [eval] v2 == v1
(set-option :timeout 0)
(push) ; 3
(assert (not (= v2@290@01 v1@250@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- test04 ----------
(declare-const x@291@01 $Ref)
(declare-const n@292@01 Int)
(declare-const x@293@01 $Ref)
(declare-const n@294@01 Int)
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
; var v1: Int
(declare-const v1@295@01 Int)
; [exec]
; var v2: Int
(declare-const v2@296@01 Int)
; [exec]
; inhale acc(P01(x, n), write)
(declare-const $t@297@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale 6 < n
(declare-const $t@298@01 $Snap)
(assert (= $t@298@01 $Snap.unit))
; [eval] 6 < n
(assert (< 6 n@294@01))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; unfold acc(P01(x, n), write)
(assert (= $t@297@01 ($Snap.combine ($Snap.first $t@297@01) ($Snap.second $t@297@01))))
(assert (not (= x@293@01 $Ref.null)))
(assert (=
  ($Snap.second $t@297@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@297@01))
    ($Snap.second ($Snap.second $t@297@01)))))
(assert (= ($Snap.first ($Snap.second $t@297@01)) $Snap.unit))
; [eval] |x.ss| == n
; [eval] |x.ss|
(assert (=
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01)))
  n@294@01))
(assert (=
  ($Snap.second ($Snap.second $t@297@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@297@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@297@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@297@01))) $Snap.unit))
; [eval] 3 <= n
(assert (<= 3 n@294@01))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@297@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@297@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@297@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@297@01))))
  $Snap.unit))
; [eval] (forall k: Int, j: Int :: { x.ss[k], x.ss[j] } k >= 0 && (k < |x.ss| && (j >= 0 && (j < |x.ss| && k != j))) ==> x.ss[k] != x.ss[j])
(declare-const k@299@01 Int)
(declare-const j@300@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] k >= 0 && (k < |x.ss| && (j >= 0 && (j < |x.ss| && k != j))) ==> x.ss[k] != x.ss[j]
; [eval] k >= 0 && (k < |x.ss| && (j >= 0 && (j < |x.ss| && k != j)))
; [eval] k >= 0
(push) ; 4
; [then-branch: 151 | !(k@299@01 >= 0) | live]
; [else-branch: 151 | k@299@01 >= 0 | live]
(push) ; 5
; [then-branch: 151 | !(k@299@01 >= 0)]
(assert (not (>= k@299@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 151 | k@299@01 >= 0]
(assert (>= k@299@01 0))
; [eval] k < |x.ss|
; [eval] |x.ss|
(push) ; 6
; [then-branch: 152 | !(k@299@01 < |First:($t@297@01)|) | live]
; [else-branch: 152 | k@299@01 < |First:($t@297@01)| | live]
(push) ; 7
; [then-branch: 152 | !(k@299@01 < |First:($t@297@01)|)]
(assert (not
  (<
    k@299@01
    (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))))
(pop) ; 7
(push) ; 7
; [else-branch: 152 | k@299@01 < |First:($t@297@01)|]
(assert (<
  k@299@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01)))))
; [eval] j >= 0
(push) ; 8
; [then-branch: 153 | !(j@300@01 >= 0) | live]
; [else-branch: 153 | j@300@01 >= 0 | live]
(push) ; 9
; [then-branch: 153 | !(j@300@01 >= 0)]
(assert (not (>= j@300@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 153 | j@300@01 >= 0]
(assert (>= j@300@01 0))
; [eval] j < |x.ss|
; [eval] |x.ss|
(push) ; 10
; [then-branch: 154 | !(j@300@01 < |First:($t@297@01)|) | live]
; [else-branch: 154 | j@300@01 < |First:($t@297@01)| | live]
(push) ; 11
; [then-branch: 154 | !(j@300@01 < |First:($t@297@01)|)]
(assert (not
  (<
    j@300@01
    (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))))
(pop) ; 11
(push) ; 11
; [else-branch: 154 | j@300@01 < |First:($t@297@01)|]
(assert (<
  j@300@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01)))))
; [eval] k != j
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (<
    j@300@01
    (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
  (not
    (<
      j@300@01
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01)))))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@300@01 0)
  (and
    (>= j@300@01 0)
    (or
      (<
        j@300@01
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
      (not
        (<
          j@300@01
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01)))))))))
(assert (or (>= j@300@01 0) (not (>= j@300@01 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (<
    k@299@01
    (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
  (and
    (<
      k@299@01
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
    (=>
      (>= j@300@01 0)
      (and
        (>= j@300@01 0)
        (or
          (<
            j@300@01
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
          (not
            (<
              j@300@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))))))
    (or (>= j@300@01 0) (not (>= j@300@01 0))))))
(assert (or
  (<
    k@299@01
    (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
  (not
    (<
      k@299@01
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01)))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@299@01 0)
  (and
    (>= k@299@01 0)
    (=>
      (<
        k@299@01
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
      (and
        (<
          k@299@01
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
        (=>
          (>= j@300@01 0)
          (and
            (>= j@300@01 0)
            (or
              (<
                j@300@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
              (not
                (<
                  j@300@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))))))
        (or (>= j@300@01 0) (not (>= j@300@01 0)))))
    (or
      (<
        k@299@01
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
      (not
        (<
          k@299@01
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01)))))))))
(assert (or (>= k@299@01 0) (not (>= k@299@01 0))))
(push) ; 4
; [then-branch: 155 | k@299@01 >= 0 && k@299@01 < |First:($t@297@01)| && j@300@01 >= 0 && j@300@01 < |First:($t@297@01)| && k@299@01 != j@300@01 | live]
; [else-branch: 155 | !(k@299@01 >= 0 && k@299@01 < |First:($t@297@01)| && j@300@01 >= 0 && j@300@01 < |First:($t@297@01)| && k@299@01 != j@300@01) | live]
(push) ; 5
; [then-branch: 155 | k@299@01 >= 0 && k@299@01 < |First:($t@297@01)| && j@300@01 >= 0 && j@300@01 < |First:($t@297@01)| && k@299@01 != j@300@01]
(assert (and
  (>= k@299@01 0)
  (and
    (<
      k@299@01
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
    (and
      (>= j@300@01 0)
      (and
        (<
          j@300@01
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
        (not (= k@299@01 j@300@01)))))))
; [eval] x.ss[k] != x.ss[j]
; [eval] x.ss[k]
; [eval] x.ss[j]
(pop) ; 5
(push) ; 5
; [else-branch: 155 | !(k@299@01 >= 0 && k@299@01 < |First:($t@297@01)| && j@300@01 >= 0 && j@300@01 < |First:($t@297@01)| && k@299@01 != j@300@01)]
(assert (not
  (and
    (>= k@299@01 0)
    (and
      (<
        k@299@01
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
      (and
        (>= j@300@01 0)
        (and
          (<
            j@300@01
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
          (not (= k@299@01 j@300@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (>= k@299@01 0)
    (and
      (<
        k@299@01
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
      (and
        (>= j@300@01 0)
        (and
          (<
            j@300@01
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
          (not (= k@299@01 j@300@01))))))
  (and
    (>= k@299@01 0)
    (<
      k@299@01
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
    (>= j@300@01 0)
    (<
      j@300@01
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
    (not (= k@299@01 j@300@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@299@01 0)
      (and
        (<
          k@299@01
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
        (and
          (>= j@300@01 0)
          (and
            (<
              j@300@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
            (not (= k@299@01 j@300@01)))))))
  (and
    (>= k@299@01 0)
    (and
      (<
        k@299@01
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
      (and
        (>= j@300@01 0)
        (and
          (<
            j@300@01
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
          (not (= k@299@01 j@300@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@299@01 Int) (j@300@01 Int)) (!
  (and
    (=>
      (>= k@299@01 0)
      (and
        (>= k@299@01 0)
        (=>
          (<
            k@299@01
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
          (and
            (<
              k@299@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
            (=>
              (>= j@300@01 0)
              (and
                (>= j@300@01 0)
                (or
                  (<
                    j@300@01
                    (Seq_length
                      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
                  (not
                    (<
                      j@300@01
                      (Seq_length
                        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))))))
            (or (>= j@300@01 0) (not (>= j@300@01 0)))))
        (or
          (<
            k@299@01
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
          (not
            (<
              k@299@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))))))
    (or (>= k@299@01 0) (not (>= k@299@01 0)))
    (=>
      (and
        (>= k@299@01 0)
        (and
          (<
            k@299@01
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
          (and
            (>= j@300@01 0)
            (and
              (<
                j@300@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
              (not (= k@299@01 j@300@01))))))
      (and
        (>= k@299@01 0)
        (<
          k@299@01
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
        (>= j@300@01 0)
        (<
          j@300@01
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
        (not (= k@299@01 j@300@01))))
    (or
      (not
        (and
          (>= k@299@01 0)
          (and
            (<
              k@299@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
            (and
              (>= j@300@01 0)
              (and
                (<
                  j@300@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
                (not (= k@299@01 j@300@01)))))))
      (and
        (>= k@299@01 0)
        (and
          (<
            k@299@01
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
          (and
            (>= j@300@01 0)
            (and
              (<
                j@300@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
              (not (= k@299@01 j@300@01))))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    k@299@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    j@300@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@132@7@132@109-aux|)))
(assert (forall ((k@299@01 Int) (j@300@01 Int)) (!
  (=>
    (and
      (>= k@299@01 0)
      (and
        (<
          k@299@01
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
        (and
          (>= j@300@01 0)
          (and
            (<
              j@300@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
            (not (= k@299@01 j@300@01))))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          k@299@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          j@300@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    k@299@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    j@300@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@132@7@132@109|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@297@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@297@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@297@01))))))))
(declare-const j@301@01 Int)
(push) ; 3
; [eval] 0 <= j && j < 3
; [eval] 0 <= j
(push) ; 4
; [then-branch: 156 | !(0 <= j@301@01) | live]
; [else-branch: 156 | 0 <= j@301@01 | live]
(push) ; 5
; [then-branch: 156 | !(0 <= j@301@01)]
(assert (not (<= 0 j@301@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 156 | 0 <= j@301@01]
(assert (<= 0 j@301@01))
; [eval] j < 3
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@301@01) (not (<= 0 j@301@01))))
(assert (and (<= 0 j@301@01) (< j@301@01 3)))
; [eval] x.ss[j]
(push) ; 4
(assert (not (>= j@301@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  j@301@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@302@01 ($Ref) Int)
(declare-fun img@303@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@301@01 Int)) (!
  (=>
    (and (<= 0 j@301@01) (< j@301@01 3))
    (or (<= 0 j@301@01) (not (<= 0 j@301@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    j@301@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@301@01 Int) (j2@301@01 Int)) (!
  (=>
    (and
      (and (<= 0 j1@301@01) (< j1@301@01 3))
      (and (<= 0 j2@301@01) (< j2@301@01 3))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          j1@301@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          j2@301@01)))
    (= j1@301@01 j2@301@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@301@01 Int)) (!
  (=>
    (and (<= 0 j@301@01) (< j@301@01 3))
    (and
      (=
        (inv@302@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          j@301@01))
        j@301@01)
      (img@303@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
        j@301@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    j@301@01))
  :qid |quant-u-11705|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@303@01 r) (and (<= 0 (inv@302@01 r)) (< (inv@302@01 r) 3)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
        (inv@302@01 r))
      r))
  :pattern ((inv@302@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@301@01 Int)) (!
  (=>
    (and (<= 0 j@301@01) (< j@301@01 3))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          j@301@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    j@301@01))
  :qid |f-permImpliesNonNull|)))
(declare-const j@304@01 Int)
(push) ; 3
; [eval] 3 <= j && j < n
; [eval] 3 <= j
(push) ; 4
; [then-branch: 157 | !(3 <= j@304@01) | live]
; [else-branch: 157 | 3 <= j@304@01 | live]
(push) ; 5
; [then-branch: 157 | !(3 <= j@304@01)]
(assert (not (<= 3 j@304@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 157 | 3 <= j@304@01]
(assert (<= 3 j@304@01))
; [eval] j < n
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 3 j@304@01) (not (<= 3 j@304@01))))
(assert (and (<= 3 j@304@01) (< j@304@01 n@294@01)))
; [eval] x.ss[j]
(push) ; 4
(assert (not (>= j@304@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  j@304@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@305@01 ($Ref) Int)
(declare-fun img@306@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@304@01 Int)) (!
  (=>
    (and (<= 3 j@304@01) (< j@304@01 n@294@01))
    (or (<= 3 j@304@01) (not (<= 3 j@304@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    j@304@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@304@01 Int) (j2@304@01 Int)) (!
  (=>
    (and
      (and (<= 3 j1@304@01) (< j1@304@01 n@294@01))
      (and (<= 3 j2@304@01) (< j2@304@01 n@294@01))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          j1@304@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          j2@304@01)))
    (= j1@304@01 j2@304@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@304@01 Int)) (!
  (=>
    (and (<= 3 j@304@01) (< j@304@01 n@294@01))
    (and
      (=
        (inv@305@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          j@304@01))
        j@304@01)
      (img@306@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
        j@304@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    j@304@01))
  :qid |quant-u-11707|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@306@01 r) (and (<= 3 (inv@305@01 r)) (< (inv@305@01 r) n@294@01)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
        (inv@305@01 r))
      r))
  :pattern ((inv@305@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@304@01 Int)) (!
  (=>
    (and (<= 3 j@304@01) (< j@304@01 n@294@01))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          j@304@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    j@304@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
        j@304@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
        j@301@01))
    (=
      (and
        (img@306@01 r)
        (and (<= 3 (inv@305@01 r)) (< (inv@305@01 r) n@294@01)))
      (and (img@303@01 r) (and (<= 0 (inv@302@01 r)) (< (inv@302@01 r) 3)))))
  
  :qid |quant-u-11708|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (P01%trigger $t@297@01 x@293@01 n@294@01))
; [exec]
; v1 := x.ss[2].f
; [eval] x.ss[2]
(set-option :timeout 0)
(push) ; 3
(assert (not (< 2 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@307@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@303@01 r) (and (<= 0 (inv@302@01 r)) (< (inv@302@01 r) 3)))
    (=
      ($FVF.lookup_f (as sm@307@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@297@01)))))) r)))
  :pattern (($FVF.lookup_f (as sm@307@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@297@01)))))) r))
  :qid |qp.fvfValDef124|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@306@01 r) (and (<= 3 (inv@305@01 r)) (< (inv@305@01 r) n@294@01)))
    (=
      ($FVF.lookup_f (as sm@307@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@297@01)))))) r)))
  :pattern (($FVF.lookup_f (as sm@307@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@297@01)))))) r))
  :qid |qp.fvfValDef125|)))
(declare-const pm@308@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@308@01  $FPM) r)
    (+
      (ite
        (and (img@303@01 r) (and (<= 0 (inv@302@01 r)) (< (inv@302@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (ite
        (and
          (img@306@01 r)
          (and (<= 3 (inv@305@01 r)) (< (inv@305@01 r) n@294@01)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@308@01  $FPM) r))
  :qid |qp.resPrmSumDef126|)))
(push) ; 3
(assert (not (<
  $Perm.No
  ($FVF.perm_f (as pm@308@01  $FPM) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    2)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const v1@309@01 Int)
(assert (=
  v1@309@01
  ($FVF.lookup_f (as sm@307@01  $FVF<f>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    2))))
; [exec]
; v2 := x.ss[4].f
; [eval] x.ss[4]
(push) ; 3
(assert (not (< 4 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@303@01 r) (and (<= 0 (inv@302@01 r)) (< (inv@302@01 r) 3)))
      (=
        ($FVF.lookup_f (as sm@307@01  $FVF<f>) r)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@297@01)))))) r)))
    :pattern (($FVF.lookup_f (as sm@307@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@297@01)))))) r))
    :qid |qp.fvfValDef124|))
  (forall ((r $Ref)) (!
    (=>
      (and
        (img@306@01 r)
        (and (<= 3 (inv@305@01 r)) (< (inv@305@01 r) n@294@01)))
      (=
        ($FVF.lookup_f (as sm@307@01  $FVF<f>) r)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@297@01)))))) r)))
    :pattern (($FVF.lookup_f (as sm@307@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@297@01)))))) r))
    :qid |qp.fvfValDef125|))))
(push) ; 3
(assert (not (<
  $Perm.No
  (+
    (ite
      (and
        (img@303@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          4))
        (and
          (<=
            0
            (inv@302@01 (Seq_index
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
              4)))
          (<
            (inv@302@01 (Seq_index
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
              4))
            3)))
      $Perm.Write
      $Perm.No)
    (ite
      (and
        (img@306@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          4))
        (and
          (<=
            3
            (inv@305@01 (Seq_index
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
              4)))
          (<
            (inv@305@01 (Seq_index
              ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
              4))
            n@294@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const v2@310@01 Int)
(assert (=
  v2@310@01
  ($FVF.lookup_f (as sm@307@01  $FVF<f>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    4))))
; [exec]
; fold acc(P01(x, n), write)
; [eval] |x.ss| == n
; [eval] |x.ss|
; [eval] 3 <= n
; [eval] (forall k: Int, j: Int :: { x.ss[k], x.ss[j] } k >= 0 && (k < |x.ss| && (j >= 0 && (j < |x.ss| && k != j))) ==> x.ss[k] != x.ss[j])
(declare-const k@311@01 Int)
(declare-const j@312@01 Int)
(push) ; 3
; [eval] k >= 0 && (k < |x.ss| && (j >= 0 && (j < |x.ss| && k != j))) ==> x.ss[k] != x.ss[j]
; [eval] k >= 0 && (k < |x.ss| && (j >= 0 && (j < |x.ss| && k != j)))
; [eval] k >= 0
(push) ; 4
; [then-branch: 158 | !(k@311@01 >= 0) | live]
; [else-branch: 158 | k@311@01 >= 0 | live]
(push) ; 5
; [then-branch: 158 | !(k@311@01 >= 0)]
(assert (not (>= k@311@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 158 | k@311@01 >= 0]
(assert (>= k@311@01 0))
; [eval] k < |x.ss|
; [eval] |x.ss|
(push) ; 6
; [then-branch: 159 | !(k@311@01 < |First:($t@297@01)|) | live]
; [else-branch: 159 | k@311@01 < |First:($t@297@01)| | live]
(push) ; 7
; [then-branch: 159 | !(k@311@01 < |First:($t@297@01)|)]
(assert (not
  (<
    k@311@01
    (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))))
(pop) ; 7
(push) ; 7
; [else-branch: 159 | k@311@01 < |First:($t@297@01)|]
(assert (<
  k@311@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01)))))
; [eval] j >= 0
(push) ; 8
; [then-branch: 160 | !(j@312@01 >= 0) | live]
; [else-branch: 160 | j@312@01 >= 0 | live]
(push) ; 9
; [then-branch: 160 | !(j@312@01 >= 0)]
(assert (not (>= j@312@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 160 | j@312@01 >= 0]
(assert (>= j@312@01 0))
; [eval] j < |x.ss|
; [eval] |x.ss|
(push) ; 10
; [then-branch: 161 | !(j@312@01 < |First:($t@297@01)|) | live]
; [else-branch: 161 | j@312@01 < |First:($t@297@01)| | live]
(push) ; 11
; [then-branch: 161 | !(j@312@01 < |First:($t@297@01)|)]
(assert (not
  (<
    j@312@01
    (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))))
(pop) ; 11
(push) ; 11
; [else-branch: 161 | j@312@01 < |First:($t@297@01)|]
(assert (<
  j@312@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01)))))
; [eval] k != j
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (<
    j@312@01
    (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
  (not
    (<
      j@312@01
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01)))))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@312@01 0)
  (and
    (>= j@312@01 0)
    (or
      (<
        j@312@01
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
      (not
        (<
          j@312@01
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01)))))))))
(assert (or (>= j@312@01 0) (not (>= j@312@01 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (<
    k@311@01
    (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
  (and
    (<
      k@311@01
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
    (=>
      (>= j@312@01 0)
      (and
        (>= j@312@01 0)
        (or
          (<
            j@312@01
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
          (not
            (<
              j@312@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))))))
    (or (>= j@312@01 0) (not (>= j@312@01 0))))))
(assert (or
  (<
    k@311@01
    (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
  (not
    (<
      k@311@01
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01)))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@311@01 0)
  (and
    (>= k@311@01 0)
    (=>
      (<
        k@311@01
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
      (and
        (<
          k@311@01
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
        (=>
          (>= j@312@01 0)
          (and
            (>= j@312@01 0)
            (or
              (<
                j@312@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
              (not
                (<
                  j@312@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))))))
        (or (>= j@312@01 0) (not (>= j@312@01 0)))))
    (or
      (<
        k@311@01
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
      (not
        (<
          k@311@01
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01)))))))))
(assert (or (>= k@311@01 0) (not (>= k@311@01 0))))
(push) ; 4
; [then-branch: 162 | k@311@01 >= 0 && k@311@01 < |First:($t@297@01)| && j@312@01 >= 0 && j@312@01 < |First:($t@297@01)| && k@311@01 != j@312@01 | live]
; [else-branch: 162 | !(k@311@01 >= 0 && k@311@01 < |First:($t@297@01)| && j@312@01 >= 0 && j@312@01 < |First:($t@297@01)| && k@311@01 != j@312@01) | live]
(push) ; 5
; [then-branch: 162 | k@311@01 >= 0 && k@311@01 < |First:($t@297@01)| && j@312@01 >= 0 && j@312@01 < |First:($t@297@01)| && k@311@01 != j@312@01]
(assert (and
  (>= k@311@01 0)
  (and
    (<
      k@311@01
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
    (and
      (>= j@312@01 0)
      (and
        (<
          j@312@01
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
        (not (= k@311@01 j@312@01)))))))
; [eval] x.ss[k] != x.ss[j]
; [eval] x.ss[k]
; [eval] x.ss[j]
(pop) ; 5
(push) ; 5
; [else-branch: 162 | !(k@311@01 >= 0 && k@311@01 < |First:($t@297@01)| && j@312@01 >= 0 && j@312@01 < |First:($t@297@01)| && k@311@01 != j@312@01)]
(assert (not
  (and
    (>= k@311@01 0)
    (and
      (<
        k@311@01
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
      (and
        (>= j@312@01 0)
        (and
          (<
            j@312@01
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
          (not (= k@311@01 j@312@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (>= k@311@01 0)
    (and
      (<
        k@311@01
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
      (and
        (>= j@312@01 0)
        (and
          (<
            j@312@01
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
          (not (= k@311@01 j@312@01))))))
  (and
    (>= k@311@01 0)
    (<
      k@311@01
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
    (>= j@312@01 0)
    (<
      j@312@01
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
    (not (= k@311@01 j@312@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@311@01 0)
      (and
        (<
          k@311@01
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
        (and
          (>= j@312@01 0)
          (and
            (<
              j@312@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
            (not (= k@311@01 j@312@01)))))))
  (and
    (>= k@311@01 0)
    (and
      (<
        k@311@01
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
      (and
        (>= j@312@01 0)
        (and
          (<
            j@312@01
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
          (not (= k@311@01 j@312@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@311@01 Int) (j@312@01 Int)) (!
  (and
    (=>
      (>= k@311@01 0)
      (and
        (>= k@311@01 0)
        (=>
          (<
            k@311@01
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
          (and
            (<
              k@311@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
            (=>
              (>= j@312@01 0)
              (and
                (>= j@312@01 0)
                (or
                  (<
                    j@312@01
                    (Seq_length
                      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
                  (not
                    (<
                      j@312@01
                      (Seq_length
                        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))))))
            (or (>= j@312@01 0) (not (>= j@312@01 0)))))
        (or
          (<
            k@311@01
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
          (not
            (<
              k@311@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))))))
    (or (>= k@311@01 0) (not (>= k@311@01 0)))
    (=>
      (and
        (>= k@311@01 0)
        (and
          (<
            k@311@01
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
          (and
            (>= j@312@01 0)
            (and
              (<
                j@312@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
              (not (= k@311@01 j@312@01))))))
      (and
        (>= k@311@01 0)
        (<
          k@311@01
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
        (>= j@312@01 0)
        (<
          j@312@01
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
        (not (= k@311@01 j@312@01))))
    (or
      (not
        (and
          (>= k@311@01 0)
          (and
            (<
              k@311@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
            (and
              (>= j@312@01 0)
              (and
                (<
                  j@312@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
                (not (= k@311@01 j@312@01)))))))
      (and
        (>= k@311@01 0)
        (and
          (<
            k@311@01
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
          (and
            (>= j@312@01 0)
            (and
              (<
                j@312@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
              (not (= k@311@01 j@312@01))))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    k@311@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    j@312@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@132@7@132@109-aux|)))
(push) ; 3
(assert (not (forall ((k@311@01 Int) (j@312@01 Int)) (!
  (=>
    (and
      (>= k@311@01 0)
      (and
        (<
          k@311@01
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
        (and
          (>= j@312@01 0)
          (and
            (<
              j@312@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
            (not (= k@311@01 j@312@01))))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          k@311@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          j@312@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    k@311@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    j@312@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@132@7@132@109|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((k@311@01 Int) (j@312@01 Int)) (!
  (=>
    (and
      (>= k@311@01 0)
      (and
        (<
          k@311@01
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
        (and
          (>= j@312@01 0)
          (and
            (<
              j@312@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
            (not (= k@311@01 j@312@01))))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          k@311@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          j@312@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    k@311@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    j@312@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@132@7@132@109|)))
(declare-const j@313@01 Int)
(push) ; 3
; [eval] 0 <= j && j < 3
; [eval] 0 <= j
(push) ; 4
; [then-branch: 163 | !(0 <= j@313@01) | live]
; [else-branch: 163 | 0 <= j@313@01 | live]
(push) ; 5
; [then-branch: 163 | !(0 <= j@313@01)]
(assert (not (<= 0 j@313@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 163 | 0 <= j@313@01]
(assert (<= 0 j@313@01))
; [eval] j < 3
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@313@01) (not (<= 0 j@313@01))))
(assert (and (<= 0 j@313@01) (< j@313@01 3)))
; [eval] x.ss[j]
(push) ; 4
(assert (not (>= j@313@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  j@313@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@314@01 ($Ref) Int)
(declare-fun img@315@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@313@01 Int)) (!
  (=>
    (and (<= 0 j@313@01) (< j@313@01 3))
    (or (<= 0 j@313@01) (not (<= 0 j@313@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    j@313@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@313@01 Int) (j2@313@01 Int)) (!
  (=>
    (and
      (and (<= 0 j1@313@01) (< j1@313@01 3))
      (and (<= 0 j2@313@01) (< j2@313@01 3))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          j1@313@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          j2@313@01)))
    (= j1@313@01 j2@313@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@313@01 Int)) (!
  (=>
    (and (<= 0 j@313@01) (< j@313@01 3))
    (and
      (=
        (inv@314@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          j@313@01))
        j@313@01)
      (img@315@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
        j@313@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    j@313@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@315@01 r) (and (<= 0 (inv@314@01 r)) (< (inv@314@01 r) 3)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
        (inv@314@01 r))
      r))
  :pattern ((inv@314@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@316@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@314@01 r)) (< (inv@314@01 r) 3))
      (img@315@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          (inv@314@01 r))))
    ($Perm.min
      (ite
        (and (img@303@01 r) (and (<= 0 (inv@302@01 r)) (< (inv@302@01 r) 3)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@317@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@314@01 r)) (< (inv@314@01 r) 3))
      (img@315@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          (inv@314@01 r))))
    ($Perm.min
      (ite
        (and
          (img@306@01 r)
          (and (<= 3 (inv@305@01 r)) (< (inv@305@01 r) n@294@01)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@316@01 r)))
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
        (and (img@303@01 r) (and (<= 0 (inv@302@01 r)) (< (inv@302@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (pTaken@316@01 r))
    $Perm.No)
  
  :qid |quant-u-11711|))))
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
      (and (<= 0 (inv@314@01 r)) (< (inv@314@01 r) 3))
      (img@315@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          (inv@314@01 r))))
    (= (- $Perm.Write (pTaken@316@01 r)) $Perm.No))
  
  :qid |quant-u-11712|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@318@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@318@01  $FVF<f>)))
      (and (and (<= 0 (inv@314@01 r)) (< (inv@314@01 r) 3)) (img@315@01 r)))
    (=>
      (and (and (<= 0 (inv@314@01 r)) (< (inv@314@01 r) 3)) (img@315@01 r))
      (Set_in r ($FVF.domain_f (as sm@318@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@318@01  $FVF<f>))))
  :qid |qp.fvfDomDef129|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@314@01 r)) (< (inv@314@01 r) 3)) (img@315@01 r))
      (and (img@303@01 r) (and (<= 0 (inv@302@01 r)) (< (inv@302@01 r) 3))))
    (=
      ($FVF.lookup_f (as sm@318@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@297@01)))))) r)))
  :pattern (($FVF.lookup_f (as sm@318@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@297@01)))))) r))
  :qid |qp.fvfValDef127|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@314@01 r)) (< (inv@314@01 r) 3)) (img@315@01 r))
      (and
        (img@306@01 r)
        (and (<= 3 (inv@305@01 r)) (< (inv@305@01 r) n@294@01))))
    (=
      ($FVF.lookup_f (as sm@318@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@297@01)))))) r)))
  :pattern (($FVF.lookup_f (as sm@318@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@297@01)))))) r))
  :qid |qp.fvfValDef128|)))
(declare-const j@319@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 3 <= j && j < n
; [eval] 3 <= j
(push) ; 4
; [then-branch: 164 | !(3 <= j@319@01) | live]
; [else-branch: 164 | 3 <= j@319@01 | live]
(push) ; 5
; [then-branch: 164 | !(3 <= j@319@01)]
(assert (not (<= 3 j@319@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 164 | 3 <= j@319@01]
(assert (<= 3 j@319@01))
; [eval] j < n
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 3 j@319@01) (not (<= 3 j@319@01))))
(assert (and (<= 3 j@319@01) (< j@319@01 n@294@01)))
; [eval] x.ss[j]
(push) ; 4
(assert (not (>= j@319@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  j@319@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@320@01 ($Ref) Int)
(declare-fun img@321@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@319@01 Int)) (!
  (=>
    (and (<= 3 j@319@01) (< j@319@01 n@294@01))
    (or (<= 3 j@319@01) (not (<= 3 j@319@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    j@319@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@319@01 Int) (j2@319@01 Int)) (!
  (=>
    (and
      (and (<= 3 j1@319@01) (< j1@319@01 n@294@01))
      (and (<= 3 j2@319@01) (< j2@319@01 n@294@01))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          j1@319@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          j2@319@01)))
    (= j1@319@01 j2@319@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@319@01 Int)) (!
  (=>
    (and (<= 3 j@319@01) (< j@319@01 n@294@01))
    (and
      (=
        (inv@320@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          j@319@01))
        j@319@01)
      (img@321@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
        j@319@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    j@319@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@321@01 r) (and (<= 3 (inv@320@01 r)) (< (inv@320@01 r) n@294@01)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
        (inv@320@01 r))
      r))
  :pattern ((inv@320@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@322@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 3 (inv@320@01 r)) (< (inv@320@01 r) n@294@01))
      (img@321@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          (inv@320@01 r))))
    ($Perm.min
      (ite
        (and
          (img@306@01 r)
          (and (<= 3 (inv@305@01 r)) (< (inv@305@01 r) n@294@01)))
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
          (img@306@01 r)
          (and (<= 3 (inv@305@01 r)) (< (inv@305@01 r) n@294@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@322@01 r))
    $Perm.No)
  
  :qid |quant-u-11715|))))
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
      (and (<= 3 (inv@320@01 r)) (< (inv@320@01 r) n@294@01))
      (img@321@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          (inv@320@01 r))))
    (= (- $Perm.Write (pTaken@322@01 r)) $Perm.No))
  
  :qid |quant-u-11716|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@323@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@323@01  $FVF<f>)))
      (and
        (and (<= 3 (inv@320@01 r)) (< (inv@320@01 r) n@294@01))
        (img@321@01 r)))
    (=>
      (and
        (and (<= 3 (inv@320@01 r)) (< (inv@320@01 r) n@294@01))
        (img@321@01 r))
      (Set_in r ($FVF.domain_f (as sm@323@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@323@01  $FVF<f>))))
  :qid |qp.fvfDomDef131|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 3 (inv@320@01 r)) (< (inv@320@01 r) n@294@01))
        (img@321@01 r))
      (and
        (img@306@01 r)
        (and (<= 3 (inv@305@01 r)) (< (inv@305@01 r) n@294@01))))
    (=
      ($FVF.lookup_f (as sm@323@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@297@01)))))) r)))
  :pattern (($FVF.lookup_f (as sm@323@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@297@01)))))) r))
  :qid |qp.fvfValDef130|)))
(assert (P01%trigger ($Snap.combine
  ($Snap.first $t@297@01)
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<f>To$Snap (as sm@318@01  $FVF<f>))
          ($SortWrappers.$FVF<f>To$Snap (as sm@323@01  $FVF<f>))))))) x@293@01 n@294@01))
; [exec]
; assert v1 == fun04(x, n, 2)
; [eval] v1 == fun04(x, n, 2)
; [eval] fun04(x, n, 2)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 < i
; [eval] i < n
(push) ; 4
(assert (not (< 2 n@294@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< 2 n@294@01))
(assert (fun04%precondition ($Snap.combine
  ($Snap.combine
    ($Snap.first $t@297@01)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($SortWrappers.$FVF<f>To$Snap (as sm@318@01  $FVF<f>))
            ($SortWrappers.$FVF<f>To$Snap (as sm@323@01  $FVF<f>)))))))
  ($Snap.combine $Snap.unit $Snap.unit)) x@293@01 n@294@01 2))
(pop) ; 3
; Joined path conditions
(assert (and
  (< 2 n@294@01)
  (fun04%precondition ($Snap.combine
    ($Snap.combine
      ($Snap.first $t@297@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($SortWrappers.$FVF<f>To$Snap (as sm@318@01  $FVF<f>))
              ($SortWrappers.$FVF<f>To$Snap (as sm@323@01  $FVF<f>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) x@293@01 n@294@01 2)))
(push) ; 3
(assert (not (=
  v1@309@01
  (fun04 ($Snap.combine
    ($Snap.combine
      ($Snap.first $t@297@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($SortWrappers.$FVF<f>To$Snap (as sm@318@01  $FVF<f>))
              ($SortWrappers.$FVF<f>To$Snap (as sm@323@01  $FVF<f>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) x@293@01 n@294@01 2))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  v1@309@01
  (fun04 ($Snap.combine
    ($Snap.combine
      ($Snap.first $t@297@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($SortWrappers.$FVF<f>To$Snap (as sm@318@01  $FVF<f>))
              ($SortWrappers.$FVF<f>To$Snap (as sm@323@01  $FVF<f>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) x@293@01 n@294@01 2)))
; [exec]
; assert v2 == fun04(x, n, 4)
; [eval] v2 == fun04(x, n, 4)
; [eval] fun04(x, n, 4)
(push) ; 3
; [eval] 0 < i
; [eval] i < n
(push) ; 4
(assert (not (< 4 n@294@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< 4 n@294@01))
(assert (fun04%precondition ($Snap.combine
  ($Snap.combine
    ($Snap.first $t@297@01)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($SortWrappers.$FVF<f>To$Snap (as sm@318@01  $FVF<f>))
            ($SortWrappers.$FVF<f>To$Snap (as sm@323@01  $FVF<f>)))))))
  ($Snap.combine $Snap.unit $Snap.unit)) x@293@01 n@294@01 4))
(pop) ; 3
; Joined path conditions
(assert (and
  (< 4 n@294@01)
  (fun04%precondition ($Snap.combine
    ($Snap.combine
      ($Snap.first $t@297@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($SortWrappers.$FVF<f>To$Snap (as sm@318@01  $FVF<f>))
              ($SortWrappers.$FVF<f>To$Snap (as sm@323@01  $FVF<f>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) x@293@01 n@294@01 4)))
(push) ; 3
(assert (not (=
  v2@310@01
  (fun04 ($Snap.combine
    ($Snap.combine
      ($Snap.first $t@297@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($SortWrappers.$FVF<f>To$Snap (as sm@318@01  $FVF<f>))
              ($SortWrappers.$FVF<f>To$Snap (as sm@323@01  $FVF<f>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) x@293@01 n@294@01 4))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  v2@310@01
  (fun04 ($Snap.combine
    ($Snap.combine
      ($Snap.first $t@297@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($SortWrappers.$FVF<f>To$Snap (as sm@318@01  $FVF<f>))
              ($SortWrappers.$FVF<f>To$Snap (as sm@323@01  $FVF<f>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) x@293@01 n@294@01 4)))
; [exec]
; unfold acc(P01(x, n), write)
; [eval] |x.ss| == n
; [eval] |x.ss|
; [eval] 3 <= n
; [eval] (forall k: Int, j: Int :: { x.ss[k], x.ss[j] } k >= 0 && (k < |x.ss| && (j >= 0 && (j < |x.ss| && k != j))) ==> x.ss[k] != x.ss[j])
(declare-const k@324@01 Int)
(declare-const j@325@01 Int)
(push) ; 3
; [eval] k >= 0 && (k < |x.ss| && (j >= 0 && (j < |x.ss| && k != j))) ==> x.ss[k] != x.ss[j]
; [eval] k >= 0 && (k < |x.ss| && (j >= 0 && (j < |x.ss| && k != j)))
; [eval] k >= 0
(push) ; 4
; [then-branch: 165 | !(k@324@01 >= 0) | live]
; [else-branch: 165 | k@324@01 >= 0 | live]
(push) ; 5
; [then-branch: 165 | !(k@324@01 >= 0)]
(assert (not (>= k@324@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 165 | k@324@01 >= 0]
(assert (>= k@324@01 0))
; [eval] k < |x.ss|
; [eval] |x.ss|
(push) ; 6
; [then-branch: 166 | !(k@324@01 < |First:($t@297@01)|) | live]
; [else-branch: 166 | k@324@01 < |First:($t@297@01)| | live]
(push) ; 7
; [then-branch: 166 | !(k@324@01 < |First:($t@297@01)|)]
(assert (not
  (<
    k@324@01
    (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))))
(pop) ; 7
(push) ; 7
; [else-branch: 166 | k@324@01 < |First:($t@297@01)|]
(assert (<
  k@324@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01)))))
; [eval] j >= 0
(push) ; 8
; [then-branch: 167 | !(j@325@01 >= 0) | live]
; [else-branch: 167 | j@325@01 >= 0 | live]
(push) ; 9
; [then-branch: 167 | !(j@325@01 >= 0)]
(assert (not (>= j@325@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 167 | j@325@01 >= 0]
(assert (>= j@325@01 0))
; [eval] j < |x.ss|
; [eval] |x.ss|
(push) ; 10
; [then-branch: 168 | !(j@325@01 < |First:($t@297@01)|) | live]
; [else-branch: 168 | j@325@01 < |First:($t@297@01)| | live]
(push) ; 11
; [then-branch: 168 | !(j@325@01 < |First:($t@297@01)|)]
(assert (not
  (<
    j@325@01
    (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))))
(pop) ; 11
(push) ; 11
; [else-branch: 168 | j@325@01 < |First:($t@297@01)|]
(assert (<
  j@325@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01)))))
; [eval] k != j
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (<
    j@325@01
    (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
  (not
    (<
      j@325@01
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01)))))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@325@01 0)
  (and
    (>= j@325@01 0)
    (or
      (<
        j@325@01
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
      (not
        (<
          j@325@01
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01)))))))))
(assert (or (>= j@325@01 0) (not (>= j@325@01 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (<
    k@324@01
    (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
  (and
    (<
      k@324@01
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
    (=>
      (>= j@325@01 0)
      (and
        (>= j@325@01 0)
        (or
          (<
            j@325@01
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
          (not
            (<
              j@325@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))))))
    (or (>= j@325@01 0) (not (>= j@325@01 0))))))
(assert (or
  (<
    k@324@01
    (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
  (not
    (<
      k@324@01
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01)))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@324@01 0)
  (and
    (>= k@324@01 0)
    (=>
      (<
        k@324@01
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
      (and
        (<
          k@324@01
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
        (=>
          (>= j@325@01 0)
          (and
            (>= j@325@01 0)
            (or
              (<
                j@325@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
              (not
                (<
                  j@325@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))))))
        (or (>= j@325@01 0) (not (>= j@325@01 0)))))
    (or
      (<
        k@324@01
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
      (not
        (<
          k@324@01
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01)))))))))
(assert (or (>= k@324@01 0) (not (>= k@324@01 0))))
(push) ; 4
; [then-branch: 169 | k@324@01 >= 0 && k@324@01 < |First:($t@297@01)| && j@325@01 >= 0 && j@325@01 < |First:($t@297@01)| && k@324@01 != j@325@01 | live]
; [else-branch: 169 | !(k@324@01 >= 0 && k@324@01 < |First:($t@297@01)| && j@325@01 >= 0 && j@325@01 < |First:($t@297@01)| && k@324@01 != j@325@01) | live]
(push) ; 5
; [then-branch: 169 | k@324@01 >= 0 && k@324@01 < |First:($t@297@01)| && j@325@01 >= 0 && j@325@01 < |First:($t@297@01)| && k@324@01 != j@325@01]
(assert (and
  (>= k@324@01 0)
  (and
    (<
      k@324@01
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
    (and
      (>= j@325@01 0)
      (and
        (<
          j@325@01
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
        (not (= k@324@01 j@325@01)))))))
; [eval] x.ss[k] != x.ss[j]
; [eval] x.ss[k]
; [eval] x.ss[j]
(pop) ; 5
(push) ; 5
; [else-branch: 169 | !(k@324@01 >= 0 && k@324@01 < |First:($t@297@01)| && j@325@01 >= 0 && j@325@01 < |First:($t@297@01)| && k@324@01 != j@325@01)]
(assert (not
  (and
    (>= k@324@01 0)
    (and
      (<
        k@324@01
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
      (and
        (>= j@325@01 0)
        (and
          (<
            j@325@01
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
          (not (= k@324@01 j@325@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (>= k@324@01 0)
    (and
      (<
        k@324@01
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
      (and
        (>= j@325@01 0)
        (and
          (<
            j@325@01
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
          (not (= k@324@01 j@325@01))))))
  (and
    (>= k@324@01 0)
    (<
      k@324@01
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
    (>= j@325@01 0)
    (<
      j@325@01
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
    (not (= k@324@01 j@325@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@324@01 0)
      (and
        (<
          k@324@01
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
        (and
          (>= j@325@01 0)
          (and
            (<
              j@325@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
            (not (= k@324@01 j@325@01)))))))
  (and
    (>= k@324@01 0)
    (and
      (<
        k@324@01
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
      (and
        (>= j@325@01 0)
        (and
          (<
            j@325@01
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
          (not (= k@324@01 j@325@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@324@01 Int) (j@325@01 Int)) (!
  (and
    (=>
      (>= k@324@01 0)
      (and
        (>= k@324@01 0)
        (=>
          (<
            k@324@01
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
          (and
            (<
              k@324@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
            (=>
              (>= j@325@01 0)
              (and
                (>= j@325@01 0)
                (or
                  (<
                    j@325@01
                    (Seq_length
                      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
                  (not
                    (<
                      j@325@01
                      (Seq_length
                        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))))))
            (or (>= j@325@01 0) (not (>= j@325@01 0)))))
        (or
          (<
            k@324@01
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
          (not
            (<
              k@324@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))))))
    (or (>= k@324@01 0) (not (>= k@324@01 0)))
    (=>
      (and
        (>= k@324@01 0)
        (and
          (<
            k@324@01
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
          (and
            (>= j@325@01 0)
            (and
              (<
                j@325@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
              (not (= k@324@01 j@325@01))))))
      (and
        (>= k@324@01 0)
        (<
          k@324@01
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
        (>= j@325@01 0)
        (<
          j@325@01
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
        (not (= k@324@01 j@325@01))))
    (or
      (not
        (and
          (>= k@324@01 0)
          (and
            (<
              k@324@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
            (and
              (>= j@325@01 0)
              (and
                (<
                  j@325@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
                (not (= k@324@01 j@325@01)))))))
      (and
        (>= k@324@01 0)
        (and
          (<
            k@324@01
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
          (and
            (>= j@325@01 0)
            (and
              (<
                j@325@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
              (not (= k@324@01 j@325@01))))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    k@324@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    j@325@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@132@7@132@109-aux|)))
(assert (forall ((k@324@01 Int) (j@325@01 Int)) (!
  (=>
    (and
      (>= k@324@01 0)
      (and
        (<
          k@324@01
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
        (and
          (>= j@325@01 0)
          (and
            (<
              j@325@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
            (not (= k@324@01 j@325@01))))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          k@324@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          j@325@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    k@324@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    j@325@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@132@7@132@109|)))
(declare-const j@326@01 Int)
(push) ; 3
; [eval] 0 <= j && j < 3
; [eval] 0 <= j
(push) ; 4
; [then-branch: 170 | !(0 <= j@326@01) | live]
; [else-branch: 170 | 0 <= j@326@01 | live]
(push) ; 5
; [then-branch: 170 | !(0 <= j@326@01)]
(assert (not (<= 0 j@326@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 170 | 0 <= j@326@01]
(assert (<= 0 j@326@01))
; [eval] j < 3
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@326@01) (not (<= 0 j@326@01))))
(assert (and (<= 0 j@326@01) (< j@326@01 3)))
; [eval] x.ss[j]
(push) ; 4
(assert (not (>= j@326@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  j@326@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@327@01 ($Ref) Int)
(declare-fun img@328@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@326@01 Int)) (!
  (=>
    (and (<= 0 j@326@01) (< j@326@01 3))
    (or (<= 0 j@326@01) (not (<= 0 j@326@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    j@326@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@326@01 Int) (j2@326@01 Int)) (!
  (=>
    (and
      (and (<= 0 j1@326@01) (< j1@326@01 3))
      (and (<= 0 j2@326@01) (< j2@326@01 3))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          j1@326@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          j2@326@01)))
    (= j1@326@01 j2@326@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@326@01 Int)) (!
  (=>
    (and (<= 0 j@326@01) (< j@326@01 3))
    (and
      (=
        (inv@327@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          j@326@01))
        j@326@01)
      (img@328@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
        j@326@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    j@326@01))
  :qid |quant-u-11718|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@328@01 r) (and (<= 0 (inv@327@01 r)) (< (inv@327@01 r) 3)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
        (inv@327@01 r))
      r))
  :pattern ((inv@327@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@326@01 Int)) (!
  (=>
    (and (<= 0 j@326@01) (< j@326@01 3))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          j@326@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    j@326@01))
  :qid |f-permImpliesNonNull|)))
(declare-const j@329@01 Int)
(push) ; 3
; [eval] 3 <= j && j < n
; [eval] 3 <= j
(push) ; 4
; [then-branch: 171 | !(3 <= j@329@01) | live]
; [else-branch: 171 | 3 <= j@329@01 | live]
(push) ; 5
; [then-branch: 171 | !(3 <= j@329@01)]
(assert (not (<= 3 j@329@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 171 | 3 <= j@329@01]
(assert (<= 3 j@329@01))
; [eval] j < n
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 3 j@329@01) (not (<= 3 j@329@01))))
(assert (and (<= 3 j@329@01) (< j@329@01 n@294@01)))
; [eval] x.ss[j]
(push) ; 4
(assert (not (>= j@329@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  j@329@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@330@01 ($Ref) Int)
(declare-fun img@331@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@329@01 Int)) (!
  (=>
    (and (<= 3 j@329@01) (< j@329@01 n@294@01))
    (or (<= 3 j@329@01) (not (<= 3 j@329@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    j@329@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@329@01 Int) (j2@329@01 Int)) (!
  (=>
    (and
      (and (<= 3 j1@329@01) (< j1@329@01 n@294@01))
      (and (<= 3 j2@329@01) (< j2@329@01 n@294@01))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          j1@329@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          j2@329@01)))
    (= j1@329@01 j2@329@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@329@01 Int)) (!
  (=>
    (and (<= 3 j@329@01) (< j@329@01 n@294@01))
    (and
      (=
        (inv@330@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          j@329@01))
        j@329@01)
      (img@331@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
        j@329@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    j@329@01))
  :qid |quant-u-11720|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@331@01 r) (and (<= 3 (inv@330@01 r)) (< (inv@330@01 r) n@294@01)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
        (inv@330@01 r))
      r))
  :pattern ((inv@330@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((j@329@01 Int)) (!
  (=>
    (and (<= 3 j@329@01) (< j@329@01 n@294@01))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          j@329@01)
        $Ref.null)))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    j@329@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
        j@329@01)
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
        j@326@01))
    (=
      (and
        (img@331@01 r)
        (and (<= 3 (inv@330@01 r)) (< (inv@330@01 r) n@294@01)))
      (and (img@328@01 r) (and (<= 0 (inv@327@01 r)) (< (inv@327@01 r) 3)))))
  
  :qid |quant-u-11721|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
; [exec]
; x.ss[4].f := 0
; [eval] x.ss[4]
(set-option :timeout 0)
(push) ; 3
(assert (not (< 4 (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@332@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01)) 4))
    ($Perm.min
      (ite
        (and (img@328@01 r) (and (<= 0 (inv@327@01 r)) (< (inv@327@01 r) 3)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@333@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01)) 4))
    ($Perm.min
      (ite
        (and
          (img@331@01 r)
          (and (<= 3 (inv@330@01 r)) (< (inv@330@01 r) n@294@01)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@332@01 r)))
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
        (and (img@328@01 r) (and (<= 0 (inv@327@01 r)) (< (inv@327@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (pTaken@332@01 r))
    $Perm.No)
  
  :qid |quant-u-11723|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@332@01 r) $Perm.No)
  
  :qid |quant-u-11724|))))
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
    (= r (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01)) 4))
    (= (- $Perm.Write (pTaken@332@01 r)) $Perm.No))
  
  :qid |quant-u-11725|))))
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
          (img@331@01 r)
          (and (<= 3 (inv@330@01 r)) (< (inv@330@01 r) n@294@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@333@01 r))
    $Perm.No)
  
  :qid |quant-u-11726|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@333@01 r) $Perm.No)
  
  :qid |quant-u-11727|))))
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
    (= r (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01)) 4))
    (= (- (- $Perm.Write (pTaken@332@01 r)) (pTaken@333@01 r)) $Perm.No))
  
  :qid |quant-u-11728|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@334@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (=
  ($FVF.lookup_f (as sm@334@01  $FVF<f>) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    4))
  0))
; [exec]
; fold acc(P01(x, n), write)
; [eval] |x.ss| == n
; [eval] |x.ss|
; [eval] 3 <= n
; [eval] (forall k: Int, j: Int :: { x.ss[k], x.ss[j] } k >= 0 && (k < |x.ss| && (j >= 0 && (j < |x.ss| && k != j))) ==> x.ss[k] != x.ss[j])
(declare-const k@335@01 Int)
(declare-const j@336@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] k >= 0 && (k < |x.ss| && (j >= 0 && (j < |x.ss| && k != j))) ==> x.ss[k] != x.ss[j]
; [eval] k >= 0 && (k < |x.ss| && (j >= 0 && (j < |x.ss| && k != j)))
; [eval] k >= 0
(push) ; 4
; [then-branch: 172 | !(k@335@01 >= 0) | live]
; [else-branch: 172 | k@335@01 >= 0 | live]
(push) ; 5
; [then-branch: 172 | !(k@335@01 >= 0)]
(assert (not (>= k@335@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 172 | k@335@01 >= 0]
(assert (>= k@335@01 0))
; [eval] k < |x.ss|
; [eval] |x.ss|
(push) ; 6
; [then-branch: 173 | !(k@335@01 < |First:($t@297@01)|) | live]
; [else-branch: 173 | k@335@01 < |First:($t@297@01)| | live]
(push) ; 7
; [then-branch: 173 | !(k@335@01 < |First:($t@297@01)|)]
(assert (not
  (<
    k@335@01
    (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))))
(pop) ; 7
(push) ; 7
; [else-branch: 173 | k@335@01 < |First:($t@297@01)|]
(assert (<
  k@335@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01)))))
; [eval] j >= 0
(push) ; 8
; [then-branch: 174 | !(j@336@01 >= 0) | live]
; [else-branch: 174 | j@336@01 >= 0 | live]
(push) ; 9
; [then-branch: 174 | !(j@336@01 >= 0)]
(assert (not (>= j@336@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 174 | j@336@01 >= 0]
(assert (>= j@336@01 0))
; [eval] j < |x.ss|
; [eval] |x.ss|
(push) ; 10
; [then-branch: 175 | !(j@336@01 < |First:($t@297@01)|) | live]
; [else-branch: 175 | j@336@01 < |First:($t@297@01)| | live]
(push) ; 11
; [then-branch: 175 | !(j@336@01 < |First:($t@297@01)|)]
(assert (not
  (<
    j@336@01
    (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))))
(pop) ; 11
(push) ; 11
; [else-branch: 175 | j@336@01 < |First:($t@297@01)|]
(assert (<
  j@336@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01)))))
; [eval] k != j
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (<
    j@336@01
    (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
  (not
    (<
      j@336@01
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01)))))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@336@01 0)
  (and
    (>= j@336@01 0)
    (or
      (<
        j@336@01
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
      (not
        (<
          j@336@01
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01)))))))))
(assert (or (>= j@336@01 0) (not (>= j@336@01 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (<
    k@335@01
    (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
  (and
    (<
      k@335@01
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
    (=>
      (>= j@336@01 0)
      (and
        (>= j@336@01 0)
        (or
          (<
            j@336@01
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
          (not
            (<
              j@336@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))))))
    (or (>= j@336@01 0) (not (>= j@336@01 0))))))
(assert (or
  (<
    k@335@01
    (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
  (not
    (<
      k@335@01
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01)))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@335@01 0)
  (and
    (>= k@335@01 0)
    (=>
      (<
        k@335@01
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
      (and
        (<
          k@335@01
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
        (=>
          (>= j@336@01 0)
          (and
            (>= j@336@01 0)
            (or
              (<
                j@336@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
              (not
                (<
                  j@336@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))))))
        (or (>= j@336@01 0) (not (>= j@336@01 0)))))
    (or
      (<
        k@335@01
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
      (not
        (<
          k@335@01
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01)))))))))
(assert (or (>= k@335@01 0) (not (>= k@335@01 0))))
(push) ; 4
; [then-branch: 176 | k@335@01 >= 0 && k@335@01 < |First:($t@297@01)| && j@336@01 >= 0 && j@336@01 < |First:($t@297@01)| && k@335@01 != j@336@01 | live]
; [else-branch: 176 | !(k@335@01 >= 0 && k@335@01 < |First:($t@297@01)| && j@336@01 >= 0 && j@336@01 < |First:($t@297@01)| && k@335@01 != j@336@01) | live]
(push) ; 5
; [then-branch: 176 | k@335@01 >= 0 && k@335@01 < |First:($t@297@01)| && j@336@01 >= 0 && j@336@01 < |First:($t@297@01)| && k@335@01 != j@336@01]
(assert (and
  (>= k@335@01 0)
  (and
    (<
      k@335@01
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
    (and
      (>= j@336@01 0)
      (and
        (<
          j@336@01
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
        (not (= k@335@01 j@336@01)))))))
; [eval] x.ss[k] != x.ss[j]
; [eval] x.ss[k]
; [eval] x.ss[j]
(pop) ; 5
(push) ; 5
; [else-branch: 176 | !(k@335@01 >= 0 && k@335@01 < |First:($t@297@01)| && j@336@01 >= 0 && j@336@01 < |First:($t@297@01)| && k@335@01 != j@336@01)]
(assert (not
  (and
    (>= k@335@01 0)
    (and
      (<
        k@335@01
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
      (and
        (>= j@336@01 0)
        (and
          (<
            j@336@01
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
          (not (= k@335@01 j@336@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (>= k@335@01 0)
    (and
      (<
        k@335@01
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
      (and
        (>= j@336@01 0)
        (and
          (<
            j@336@01
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
          (not (= k@335@01 j@336@01))))))
  (and
    (>= k@335@01 0)
    (<
      k@335@01
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
    (>= j@336@01 0)
    (<
      j@336@01
      (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
    (not (= k@335@01 j@336@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@335@01 0)
      (and
        (<
          k@335@01
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
        (and
          (>= j@336@01 0)
          (and
            (<
              j@336@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
            (not (= k@335@01 j@336@01)))))))
  (and
    (>= k@335@01 0)
    (and
      (<
        k@335@01
        (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
      (and
        (>= j@336@01 0)
        (and
          (<
            j@336@01
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
          (not (= k@335@01 j@336@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@335@01 Int) (j@336@01 Int)) (!
  (and
    (=>
      (>= k@335@01 0)
      (and
        (>= k@335@01 0)
        (=>
          (<
            k@335@01
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
          (and
            (<
              k@335@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
            (=>
              (>= j@336@01 0)
              (and
                (>= j@336@01 0)
                (or
                  (<
                    j@336@01
                    (Seq_length
                      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
                  (not
                    (<
                      j@336@01
                      (Seq_length
                        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))))))
            (or (>= j@336@01 0) (not (>= j@336@01 0)))))
        (or
          (<
            k@335@01
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
          (not
            (<
              k@335@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))))))
    (or (>= k@335@01 0) (not (>= k@335@01 0)))
    (=>
      (and
        (>= k@335@01 0)
        (and
          (<
            k@335@01
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
          (and
            (>= j@336@01 0)
            (and
              (<
                j@336@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
              (not (= k@335@01 j@336@01))))))
      (and
        (>= k@335@01 0)
        (<
          k@335@01
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
        (>= j@336@01 0)
        (<
          j@336@01
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
        (not (= k@335@01 j@336@01))))
    (or
      (not
        (and
          (>= k@335@01 0)
          (and
            (<
              k@335@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
            (and
              (>= j@336@01 0)
              (and
                (<
                  j@336@01
                  (Seq_length
                    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
                (not (= k@335@01 j@336@01)))))))
      (and
        (>= k@335@01 0)
        (and
          (<
            k@335@01
            (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
          (and
            (>= j@336@01 0)
            (and
              (<
                j@336@01
                (Seq_length
                  ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
              (not (= k@335@01 j@336@01))))))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    k@335@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    j@336@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@132@7@132@109-aux|)))
(push) ; 3
(assert (not (forall ((k@335@01 Int) (j@336@01 Int)) (!
  (=>
    (and
      (>= k@335@01 0)
      (and
        (<
          k@335@01
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
        (and
          (>= j@336@01 0)
          (and
            (<
              j@336@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
            (not (= k@335@01 j@336@01))))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          k@335@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          j@336@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    k@335@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    j@336@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@132@7@132@109|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((k@335@01 Int) (j@336@01 Int)) (!
  (=>
    (and
      (>= k@335@01 0)
      (and
        (<
          k@335@01
          (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
        (and
          (>= j@336@01 0)
          (and
            (<
              j@336@01
              (Seq_length
                ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))
            (not (= k@335@01 j@336@01))))))
    (not
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          k@335@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          j@336@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    k@335@01) (Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    j@336@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@132@7@132@109|)))
(declare-const j@337@01 Int)
(push) ; 3
; [eval] 0 <= j && j < 3
; [eval] 0 <= j
(push) ; 4
; [then-branch: 177 | !(0 <= j@337@01) | live]
; [else-branch: 177 | 0 <= j@337@01 | live]
(push) ; 5
; [then-branch: 177 | !(0 <= j@337@01)]
(assert (not (<= 0 j@337@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 177 | 0 <= j@337@01]
(assert (<= 0 j@337@01))
; [eval] j < 3
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@337@01) (not (<= 0 j@337@01))))
(assert (and (<= 0 j@337@01) (< j@337@01 3)))
; [eval] x.ss[j]
(push) ; 4
(assert (not (>= j@337@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  j@337@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@338@01 ($Ref) Int)
(declare-fun img@339@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@337@01 Int)) (!
  (=>
    (and (<= 0 j@337@01) (< j@337@01 3))
    (or (<= 0 j@337@01) (not (<= 0 j@337@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    j@337@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@337@01 Int) (j2@337@01 Int)) (!
  (=>
    (and
      (and (<= 0 j1@337@01) (< j1@337@01 3))
      (and (<= 0 j2@337@01) (< j2@337@01 3))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          j1@337@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          j2@337@01)))
    (= j1@337@01 j2@337@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@337@01 Int)) (!
  (=>
    (and (<= 0 j@337@01) (< j@337@01 3))
    (and
      (=
        (inv@338@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          j@337@01))
        j@337@01)
      (img@339@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
        j@337@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    j@337@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@339@01 r) (and (<= 0 (inv@338@01 r)) (< (inv@338@01 r) 3)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
        (inv@338@01 r))
      r))
  :pattern ((inv@338@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@340@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@338@01 r)) (< (inv@338@01 r) 3))
      (img@339@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          (inv@338@01 r))))
    ($Perm.min
      (ite
        (and
          (img@331@01 r)
          (and (<= 3 (inv@330@01 r)) (< (inv@330@01 r) n@294@01)))
        (- $Perm.Write (pTaken@333@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@341@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@338@01 r)) (< (inv@338@01 r) 3))
      (img@339@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          (inv@338@01 r))))
    ($Perm.min
      (ite
        (and (img@328@01 r) (and (<= 0 (inv@327@01 r)) (< (inv@327@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@340@01 r)))
    $Perm.No))
(define-fun pTaken@342@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 0 (inv@338@01 r)) (< (inv@338@01 r) 3))
      (img@339@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          (inv@338@01 r))))
    ($Perm.min
      (ite
        (=
          r
          (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01)) 4))
        $Perm.Write
        $Perm.No)
      (- (- $Perm.Write (pTaken@340@01 r)) (pTaken@341@01 r)))
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
          (img@331@01 r)
          (and (<= 3 (inv@330@01 r)) (< (inv@330@01 r) n@294@01)))
        (- $Perm.Write (pTaken@333@01 r))
        $Perm.No)
      (pTaken@340@01 r))
    $Perm.No)
  
  :qid |quant-u-11731|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@340@01 r) $Perm.No)
  
  :qid |quant-u-11732|))))
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
      (and (<= 0 (inv@338@01 r)) (< (inv@338@01 r) 3))
      (img@339@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          (inv@338@01 r))))
    (= (- $Perm.Write (pTaken@340@01 r)) $Perm.No))
  
  :qid |quant-u-11733|))))
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
        (and (img@328@01 r) (and (<= 0 (inv@327@01 r)) (< (inv@327@01 r) 3)))
        $Perm.Write
        $Perm.No)
      (pTaken@341@01 r))
    $Perm.No)
  
  :qid |quant-u-11734|))))
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
      (and (<= 0 (inv@338@01 r)) (< (inv@338@01 r) 3))
      (img@339@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          (inv@338@01 r))))
    (= (- (- $Perm.Write (pTaken@340@01 r)) (pTaken@341@01 r)) $Perm.No))
  
  :qid |quant-u-11735|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@343@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@343@01  $FVF<f>)))
      (and (and (<= 0 (inv@338@01 r)) (< (inv@338@01 r) 3)) (img@339@01 r)))
    (=>
      (and (and (<= 0 (inv@338@01 r)) (< (inv@338@01 r) 3)) (img@339@01 r))
      (Set_in r ($FVF.domain_f (as sm@343@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@343@01  $FVF<f>))))
  :qid |qp.fvfDomDef135|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@338@01 r)) (< (inv@338@01 r) 3)) (img@339@01 r))
      (=
        r
        (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01)) 4)))
    (=
      ($FVF.lookup_f (as sm@343@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@334@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@343@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@334@01  $FVF<f>) r))
  :qid |qp.fvfValDef132|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@338@01 r)) (< (inv@338@01 r) 3)) (img@339@01 r))
      (ite
        (and
          (img@331@01 r)
          (and (<= 3 (inv@330@01 r)) (< (inv@330@01 r) n@294@01)))
        (< $Perm.No (- $Perm.Write (pTaken@333@01 r)))
        false))
    (=
      ($FVF.lookup_f (as sm@343@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@323@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@343@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@323@01  $FVF<f>) r))
  :qid |qp.fvfValDef133|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (and (<= 0 (inv@338@01 r)) (< (inv@338@01 r) 3)) (img@339@01 r))
      (and (img@328@01 r) (and (<= 0 (inv@327@01 r)) (< (inv@327@01 r) 3))))
    (=
      ($FVF.lookup_f (as sm@343@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@318@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@343@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@318@01  $FVF<f>) r))
  :qid |qp.fvfValDef134|)))
(declare-const j@344@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 3 <= j && j < n
; [eval] 3 <= j
(push) ; 4
; [then-branch: 178 | !(3 <= j@344@01) | live]
; [else-branch: 178 | 3 <= j@344@01 | live]
(push) ; 5
; [then-branch: 178 | !(3 <= j@344@01)]
(assert (not (<= 3 j@344@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 178 | 3 <= j@344@01]
(assert (<= 3 j@344@01))
; [eval] j < n
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 3 j@344@01) (not (<= 3 j@344@01))))
(assert (and (<= 3 j@344@01) (< j@344@01 n@294@01)))
; [eval] x.ss[j]
(push) ; 4
(assert (not (>= j@344@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (<
  j@344@01
  (Seq_length ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@345@01 ($Ref) Int)
(declare-fun img@346@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@344@01 Int)) (!
  (=>
    (and (<= 3 j@344@01) (< j@344@01 n@294@01))
    (or (<= 3 j@344@01) (not (<= 3 j@344@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    j@344@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((j1@344@01 Int) (j2@344@01 Int)) (!
  (=>
    (and
      (and (<= 3 j1@344@01) (< j1@344@01 n@294@01))
      (and (<= 3 j2@344@01) (< j2@344@01 n@294@01))
      (=
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          j1@344@01)
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          j2@344@01)))
    (= j1@344@01 j2@344@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@344@01 Int)) (!
  (=>
    (and (<= 3 j@344@01) (< j@344@01 n@294@01))
    (and
      (=
        (inv@345@01 (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          j@344@01))
        j@344@01)
      (img@346@01 (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
        j@344@01))))
  :pattern ((Seq_index
    ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
    j@344@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@346@01 r) (and (<= 3 (inv@345@01 r)) (< (inv@345@01 r) n@294@01)))
    (=
      (Seq_index
        ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
        (inv@345@01 r))
      r))
  :pattern ((inv@345@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@347@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 3 (inv@345@01 r)) (< (inv@345@01 r) n@294@01))
      (img@346@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          (inv@345@01 r))))
    ($Perm.min
      (ite
        (and
          (img@331@01 r)
          (and (<= 3 (inv@330@01 r)) (< (inv@330@01 r) n@294@01)))
        (- $Perm.Write (pTaken@333@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@348@01 ((r $Ref)) $Perm
  (ite
    (and
      (and (<= 3 (inv@345@01 r)) (< (inv@345@01 r) n@294@01))
      (img@346@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          (inv@345@01 r))))
    ($Perm.min
      (ite
        (=
          r
          (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01)) 4))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@347@01 r)))
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
          (img@331@01 r)
          (and (<= 3 (inv@330@01 r)) (< (inv@330@01 r) n@294@01)))
        (- $Perm.Write (pTaken@333@01 r))
        $Perm.No)
      (pTaken@347@01 r))
    $Perm.No)
  
  :qid |quant-u-11738|))))
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
      (and (<= 3 (inv@345@01 r)) (< (inv@345@01 r) n@294@01))
      (img@346@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          (inv@345@01 r))))
    (= (- $Perm.Write (pTaken@347@01 r)) $Perm.No))
  
  :qid |quant-u-11739|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (=
        (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01)) 4)
        (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01)) 4))
      $Perm.Write
      $Perm.No)
    (pTaken@348@01 (Seq_index
      ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
      4)))
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
    (and
      (and (<= 3 (inv@345@01 r)) (< (inv@345@01 r) n@294@01))
      (img@346@01 r)
      (=
        r
        (Seq_index
          ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01))
          (inv@345@01 r))))
    (= (- (- $Perm.Write (pTaken@347@01 r)) (pTaken@348@01 r)) $Perm.No))
  
  :qid |quant-u-11741|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@349@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@349@01  $FVF<f>)))
      (and
        (and (<= 3 (inv@345@01 r)) (< (inv@345@01 r) n@294@01))
        (img@346@01 r)))
    (=>
      (and
        (and (<= 3 (inv@345@01 r)) (< (inv@345@01 r) n@294@01))
        (img@346@01 r))
      (Set_in r ($FVF.domain_f (as sm@349@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@349@01  $FVF<f>))))
  :qid |qp.fvfDomDef138|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 3 (inv@345@01 r)) (< (inv@345@01 r) n@294@01))
        (img@346@01 r))
      (=
        r
        (Seq_index ($SortWrappers.$SnapToSeq<$Ref> ($Snap.first $t@297@01)) 4)))
    (=
      ($FVF.lookup_f (as sm@349@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@334@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@349@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@334@01  $FVF<f>) r))
  :qid |qp.fvfValDef136|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 3 (inv@345@01 r)) (< (inv@345@01 r) n@294@01))
        (img@346@01 r))
      (ite
        (and
          (img@331@01 r)
          (and (<= 3 (inv@330@01 r)) (< (inv@330@01 r) n@294@01)))
        (< $Perm.No (- $Perm.Write (pTaken@333@01 r)))
        false))
    (=
      ($FVF.lookup_f (as sm@349@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@323@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@349@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@323@01  $FVF<f>) r))
  :qid |qp.fvfValDef137|)))
(assert (P01%trigger ($Snap.combine
  ($Snap.first $t@297@01)
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<f>To$Snap (as sm@343@01  $FVF<f>))
          ($SortWrappers.$FVF<f>To$Snap (as sm@349@01  $FVF<f>))))))) x@293@01 n@294@01))
; [exec]
; assert v1 == fun04(x, n, 2)
; [eval] v1 == fun04(x, n, 2)
; [eval] fun04(x, n, 2)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 < i
; [eval] i < n
(assert (fun04%precondition ($Snap.combine
  ($Snap.combine
    ($Snap.first $t@297@01)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($SortWrappers.$FVF<f>To$Snap (as sm@343@01  $FVF<f>))
            ($SortWrappers.$FVF<f>To$Snap (as sm@349@01  $FVF<f>)))))))
  ($Snap.combine $Snap.unit $Snap.unit)) x@293@01 n@294@01 2))
(pop) ; 3
; Joined path conditions
(assert (fun04%precondition ($Snap.combine
  ($Snap.combine
    ($Snap.first $t@297@01)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($SortWrappers.$FVF<f>To$Snap (as sm@343@01  $FVF<f>))
            ($SortWrappers.$FVF<f>To$Snap (as sm@349@01  $FVF<f>)))))))
  ($Snap.combine $Snap.unit $Snap.unit)) x@293@01 n@294@01 2))
(push) ; 3
(assert (not (=
  v1@309@01
  (fun04 ($Snap.combine
    ($Snap.combine
      ($Snap.first $t@297@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($SortWrappers.$FVF<f>To$Snap (as sm@343@01  $FVF<f>))
              ($SortWrappers.$FVF<f>To$Snap (as sm@349@01  $FVF<f>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) x@293@01 n@294@01 2))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  v1@309@01
  (fun04 ($Snap.combine
    ($Snap.combine
      ($Snap.first $t@297@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($SortWrappers.$FVF<f>To$Snap (as sm@343@01  $FVF<f>))
              ($SortWrappers.$FVF<f>To$Snap (as sm@349@01  $FVF<f>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) x@293@01 n@294@01 2)))
; [exec]
; assert v2 == fun04(x, n, 4)
; [eval] v2 == fun04(x, n, 4)
; [eval] fun04(x, n, 4)
(push) ; 3
; [eval] 0 < i
; [eval] i < n
(assert (fun04%precondition ($Snap.combine
  ($Snap.combine
    ($Snap.first $t@297@01)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($SortWrappers.$FVF<f>To$Snap (as sm@343@01  $FVF<f>))
            ($SortWrappers.$FVF<f>To$Snap (as sm@349@01  $FVF<f>)))))))
  ($Snap.combine $Snap.unit $Snap.unit)) x@293@01 n@294@01 4))
(pop) ; 3
; Joined path conditions
(assert (fun04%precondition ($Snap.combine
  ($Snap.combine
    ($Snap.first $t@297@01)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($SortWrappers.$FVF<f>To$Snap (as sm@343@01  $FVF<f>))
            ($SortWrappers.$FVF<f>To$Snap (as sm@349@01  $FVF<f>)))))))
  ($Snap.combine $Snap.unit $Snap.unit)) x@293@01 n@294@01 4))
(push) ; 3
(assert (not (=
  v2@310@01
  (fun04 ($Snap.combine
    ($Snap.combine
      ($Snap.first $t@297@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($SortWrappers.$FVF<f>To$Snap (as sm@343@01  $FVF<f>))
              ($SortWrappers.$FVF<f>To$Snap (as sm@349@01  $FVF<f>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) x@293@01 n@294@01 4))))
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
; [eval] v2 == fun04(x, n, 4)
; [eval] fun04(x, n, 4)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 < i
; [eval] i < n
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (=
  v2@310@01
  (fun04 ($Snap.combine
    ($Snap.combine
      ($Snap.first $t@297@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($SortWrappers.$FVF<f>To$Snap (as sm@343@01  $FVF<f>))
              ($SortWrappers.$FVF<f>To$Snap (as sm@349@01  $FVF<f>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) x@293@01 n@294@01 4))))
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
; [eval] v2 == fun04(x, n, 4)
; [eval] fun04(x, n, 4)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 < i
; [eval] i < n
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (=
  v2@310@01
  (fun04 ($Snap.combine
    ($Snap.combine
      ($Snap.first $t@297@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($SortWrappers.$FVF<f>To$Snap (as sm@343@01  $FVF<f>))
              ($SortWrappers.$FVF<f>To$Snap (as sm@349@01  $FVF<f>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) x@293@01 n@294@01 4))))
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
; [eval] v2 == fun04(x, n, 4)
; [eval] fun04(x, n, 4)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 < i
; [eval] i < n
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (=
  v2@310@01
  (fun04 ($Snap.combine
    ($Snap.combine
      ($Snap.first $t@297@01)
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($SortWrappers.$FVF<f>To$Snap (as sm@343@01  $FVF<f>))
              ($SortWrappers.$FVF<f>To$Snap (as sm@349@01  $FVF<f>)))))))
    ($Snap.combine $Snap.unit $Snap.unit)) x@293@01 n@294@01 4))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
; ---------- test07 ----------
(declare-const xs@350@01 Seq<$Ref>)
(declare-const xs@351@01 Seq<$Ref>)
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
; inhale (forall k: Int, j: Int ::
;     { xs[k], xs[j] }
;     k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==>
;     xs[k] != xs[j])
(declare-const $t@352@01 $Snap)
(assert (= $t@352@01 $Snap.unit))
; [eval] (forall k: Int, j: Int :: { xs[k], xs[j] } k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j])
(declare-const k@353@01 Int)
(declare-const j@354@01 Int)
(push) ; 3
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j]
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j)))
; [eval] k >= 0
(push) ; 4
; [then-branch: 179 | !(k@353@01 >= 0) | live]
; [else-branch: 179 | k@353@01 >= 0 | live]
(push) ; 5
; [then-branch: 179 | !(k@353@01 >= 0)]
(assert (not (>= k@353@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 179 | k@353@01 >= 0]
(assert (>= k@353@01 0))
; [eval] k < |xs|
; [eval] |xs|
(push) ; 6
; [then-branch: 180 | !(k@353@01 < |xs@351@01|) | live]
; [else-branch: 180 | k@353@01 < |xs@351@01| | live]
(push) ; 7
; [then-branch: 180 | !(k@353@01 < |xs@351@01|)]
(assert (not (< k@353@01 (Seq_length xs@351@01))))
(pop) ; 7
(push) ; 7
; [else-branch: 180 | k@353@01 < |xs@351@01|]
(assert (< k@353@01 (Seq_length xs@351@01)))
; [eval] j >= 0
(push) ; 8
; [then-branch: 181 | !(j@354@01 >= 0) | live]
; [else-branch: 181 | j@354@01 >= 0 | live]
(push) ; 9
; [then-branch: 181 | !(j@354@01 >= 0)]
(assert (not (>= j@354@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 181 | j@354@01 >= 0]
(assert (>= j@354@01 0))
; [eval] j < |xs|
; [eval] |xs|
(push) ; 10
; [then-branch: 182 | !(j@354@01 < |xs@351@01|) | live]
; [else-branch: 182 | j@354@01 < |xs@351@01| | live]
(push) ; 11
; [then-branch: 182 | !(j@354@01 < |xs@351@01|)]
(assert (not (< j@354@01 (Seq_length xs@351@01))))
(pop) ; 11
(push) ; 11
; [else-branch: 182 | j@354@01 < |xs@351@01|]
(assert (< j@354@01 (Seq_length xs@351@01)))
; [eval] k != j
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or
  (< j@354@01 (Seq_length xs@351@01))
  (not (< j@354@01 (Seq_length xs@351@01)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@354@01 0)
  (and
    (>= j@354@01 0)
    (or
      (< j@354@01 (Seq_length xs@351@01))
      (not (< j@354@01 (Seq_length xs@351@01)))))))
(assert (or (>= j@354@01 0) (not (>= j@354@01 0))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@353@01 (Seq_length xs@351@01))
  (and
    (< k@353@01 (Seq_length xs@351@01))
    (=>
      (>= j@354@01 0)
      (and
        (>= j@354@01 0)
        (or
          (< j@354@01 (Seq_length xs@351@01))
          (not (< j@354@01 (Seq_length xs@351@01))))))
    (or (>= j@354@01 0) (not (>= j@354@01 0))))))
(assert (or
  (< k@353@01 (Seq_length xs@351@01))
  (not (< k@353@01 (Seq_length xs@351@01)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@353@01 0)
  (and
    (>= k@353@01 0)
    (=>
      (< k@353@01 (Seq_length xs@351@01))
      (and
        (< k@353@01 (Seq_length xs@351@01))
        (=>
          (>= j@354@01 0)
          (and
            (>= j@354@01 0)
            (or
              (< j@354@01 (Seq_length xs@351@01))
              (not (< j@354@01 (Seq_length xs@351@01))))))
        (or (>= j@354@01 0) (not (>= j@354@01 0)))))
    (or
      (< k@353@01 (Seq_length xs@351@01))
      (not (< k@353@01 (Seq_length xs@351@01)))))))
(assert (or (>= k@353@01 0) (not (>= k@353@01 0))))
(push) ; 4
; [then-branch: 183 | k@353@01 >= 0 && k@353@01 < |xs@351@01| && j@354@01 >= 0 && j@354@01 < |xs@351@01| && k@353@01 != j@354@01 | live]
; [else-branch: 183 | !(k@353@01 >= 0 && k@353@01 < |xs@351@01| && j@354@01 >= 0 && j@354@01 < |xs@351@01| && k@353@01 != j@354@01) | live]
(push) ; 5
; [then-branch: 183 | k@353@01 >= 0 && k@353@01 < |xs@351@01| && j@354@01 >= 0 && j@354@01 < |xs@351@01| && k@353@01 != j@354@01]
(assert (and
  (>= k@353@01 0)
  (and
    (< k@353@01 (Seq_length xs@351@01))
    (and
      (>= j@354@01 0)
      (and (< j@354@01 (Seq_length xs@351@01)) (not (= k@353@01 j@354@01)))))))
; [eval] xs[k] != xs[j]
; [eval] xs[k]
; [eval] xs[j]
(pop) ; 5
(push) ; 5
; [else-branch: 183 | !(k@353@01 >= 0 && k@353@01 < |xs@351@01| && j@354@01 >= 0 && j@354@01 < |xs@351@01| && k@353@01 != j@354@01)]
(assert (not
  (and
    (>= k@353@01 0)
    (and
      (< k@353@01 (Seq_length xs@351@01))
      (and
        (>= j@354@01 0)
        (and (< j@354@01 (Seq_length xs@351@01)) (not (= k@353@01 j@354@01))))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (>= k@353@01 0)
    (and
      (< k@353@01 (Seq_length xs@351@01))
      (and
        (>= j@354@01 0)
        (and (< j@354@01 (Seq_length xs@351@01)) (not (= k@353@01 j@354@01))))))
  (and
    (>= k@353@01 0)
    (< k@353@01 (Seq_length xs@351@01))
    (>= j@354@01 0)
    (< j@354@01 (Seq_length xs@351@01))
    (not (= k@353@01 j@354@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@353@01 0)
      (and
        (< k@353@01 (Seq_length xs@351@01))
        (and
          (>= j@354@01 0)
          (and (< j@354@01 (Seq_length xs@351@01)) (not (= k@353@01 j@354@01)))))))
  (and
    (>= k@353@01 0)
    (and
      (< k@353@01 (Seq_length xs@351@01))
      (and
        (>= j@354@01 0)
        (and (< j@354@01 (Seq_length xs@351@01)) (not (= k@353@01 j@354@01))))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((k@353@01 Int) (j@354@01 Int)) (!
  (and
    (=>
      (>= k@353@01 0)
      (and
        (>= k@353@01 0)
        (=>
          (< k@353@01 (Seq_length xs@351@01))
          (and
            (< k@353@01 (Seq_length xs@351@01))
            (=>
              (>= j@354@01 0)
              (and
                (>= j@354@01 0)
                (or
                  (< j@354@01 (Seq_length xs@351@01))
                  (not (< j@354@01 (Seq_length xs@351@01))))))
            (or (>= j@354@01 0) (not (>= j@354@01 0)))))
        (or
          (< k@353@01 (Seq_length xs@351@01))
          (not (< k@353@01 (Seq_length xs@351@01))))))
    (or (>= k@353@01 0) (not (>= k@353@01 0)))
    (=>
      (and
        (>= k@353@01 0)
        (and
          (< k@353@01 (Seq_length xs@351@01))
          (and
            (>= j@354@01 0)
            (and (< j@354@01 (Seq_length xs@351@01)) (not (= k@353@01 j@354@01))))))
      (and
        (>= k@353@01 0)
        (< k@353@01 (Seq_length xs@351@01))
        (>= j@354@01 0)
        (< j@354@01 (Seq_length xs@351@01))
        (not (= k@353@01 j@354@01))))
    (or
      (not
        (and
          (>= k@353@01 0)
          (and
            (< k@353@01 (Seq_length xs@351@01))
            (and
              (>= j@354@01 0)
              (and
                (< j@354@01 (Seq_length xs@351@01))
                (not (= k@353@01 j@354@01)))))))
      (and
        (>= k@353@01 0)
        (and
          (< k@353@01 (Seq_length xs@351@01))
          (and
            (>= j@354@01 0)
            (and (< j@354@01 (Seq_length xs@351@01)) (not (= k@353@01 j@354@01))))))))
  :pattern ((Seq_index xs@351@01 k@353@01) (Seq_index xs@351@01 j@354@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@185@10@185@104-aux|)))
(assert (forall ((k@353@01 Int) (j@354@01 Int)) (!
  (=>
    (and
      (>= k@353@01 0)
      (and
        (< k@353@01 (Seq_length xs@351@01))
        (and
          (>= j@354@01 0)
          (and (< j@354@01 (Seq_length xs@351@01)) (not (= k@353@01 j@354@01))))))
    (not (= (Seq_index xs@351@01 k@353@01) (Seq_index xs@351@01 j@354@01))))
  :pattern ((Seq_index xs@351@01 k@353@01) (Seq_index xs@351@01 j@354@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@185@10@185@104|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale (forall i: Int ::0 <= i && i < |xs| ==> acc(xs[i].f, write))
(declare-const i@355@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] 0 <= i && i < |xs|
; [eval] 0 <= i
(push) ; 4
; [then-branch: 184 | !(0 <= i@355@01) | live]
; [else-branch: 184 | 0 <= i@355@01 | live]
(push) ; 5
; [then-branch: 184 | !(0 <= i@355@01)]
(assert (not (<= 0 i@355@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 184 | 0 <= i@355@01]
(assert (<= 0 i@355@01))
; [eval] i < |xs|
; [eval] |xs|
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@355@01) (not (<= 0 i@355@01))))
(assert (and (<= 0 i@355@01) (< i@355@01 (Seq_length xs@351@01))))
; [eval] xs[i]
(push) ; 4
(assert (not (>= i@355@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-const $t@356@01 $FVF<f>)
(declare-fun inv@357@01 ($Ref) Int)
(declare-fun img@358@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@355@01 Int)) (!
  (=>
    (and (<= 0 i@355@01) (< i@355@01 (Seq_length xs@351@01)))
    (or (<= 0 i@355@01) (not (<= 0 i@355@01))))
  :pattern ((Seq_index xs@351@01 i@355@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@355@01 Int) (i2@355@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@355@01) (< i1@355@01 (Seq_length xs@351@01)))
      (and (<= 0 i2@355@01) (< i2@355@01 (Seq_length xs@351@01)))
      (= (Seq_index xs@351@01 i1@355@01) (Seq_index xs@351@01 i2@355@01)))
    (= i1@355@01 i2@355@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@355@01 Int)) (!
  (=>
    (and (<= 0 i@355@01) (< i@355@01 (Seq_length xs@351@01)))
    (and
      (= (inv@357@01 (Seq_index xs@351@01 i@355@01)) i@355@01)
      (img@358@01 (Seq_index xs@351@01 i@355@01))))
  :pattern ((Seq_index xs@351@01 i@355@01))
  :qid |quant-u-11743|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@358@01 r)
      (and (<= 0 (inv@357@01 r)) (< (inv@357@01 r) (Seq_length xs@351@01))))
    (= (Seq_index xs@351@01 (inv@357@01 r)) r))
  :pattern ((inv@357@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((i@355@01 Int)) (!
  (=>
    (and (<= 0 i@355@01) (< i@355@01 (Seq_length xs@351@01)))
    (not (= (Seq_index xs@351@01 i@355@01) $Ref.null)))
  :pattern ((Seq_index xs@351@01 i@355@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale |xs| > 3
(declare-const $t@359@01 $Snap)
(assert (= $t@359@01 $Snap.unit))
; [eval] |xs| > 3
; [eval] |xs|
(assert (> (Seq_length xs@351@01) 3))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; assert fun07(xs, -10) >= 0
; [eval] fun07(xs, -10) >= 0
; [eval] fun07(xs, -10)
; [eval] -10
(set-option :timeout 0)
(push) ; 3
; [eval] (forall k: Int, i: Int ::k >= 0 && (k < |xs| && (i >= 0 && (i < |xs| && k != i))) ==> xs[k] != xs[i])
(declare-const k@360@01 Int)
(declare-const i@361@01 Int)
(push) ; 4
; [eval] k >= 0 && (k < |xs| && (i >= 0 && (i < |xs| && k != i))) ==> xs[k] != xs[i]
; [eval] k >= 0 && (k < |xs| && (i >= 0 && (i < |xs| && k != i)))
; [eval] k >= 0
(push) ; 5
; [then-branch: 185 | !(k@360@01 >= 0) | live]
; [else-branch: 185 | k@360@01 >= 0 | live]
(push) ; 6
; [then-branch: 185 | !(k@360@01 >= 0)]
(assert (not (>= k@360@01 0)))
(pop) ; 6
(push) ; 6
; [else-branch: 185 | k@360@01 >= 0]
(assert (>= k@360@01 0))
; [eval] k < |xs|
; [eval] |xs|
(push) ; 7
; [then-branch: 186 | !(k@360@01 < |xs@351@01|) | live]
; [else-branch: 186 | k@360@01 < |xs@351@01| | live]
(push) ; 8
; [then-branch: 186 | !(k@360@01 < |xs@351@01|)]
(assert (not (< k@360@01 (Seq_length xs@351@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 186 | k@360@01 < |xs@351@01|]
(assert (< k@360@01 (Seq_length xs@351@01)))
; [eval] i >= 0
(push) ; 9
; [then-branch: 187 | !(i@361@01 >= 0) | live]
; [else-branch: 187 | i@361@01 >= 0 | live]
(push) ; 10
; [then-branch: 187 | !(i@361@01 >= 0)]
(assert (not (>= i@361@01 0)))
(pop) ; 10
(push) ; 10
; [else-branch: 187 | i@361@01 >= 0]
(assert (>= i@361@01 0))
; [eval] i < |xs|
; [eval] |xs|
(push) ; 11
; [then-branch: 188 | !(i@361@01 < |xs@351@01|) | live]
; [else-branch: 188 | i@361@01 < |xs@351@01| | live]
(push) ; 12
; [then-branch: 188 | !(i@361@01 < |xs@351@01|)]
(assert (not (< i@361@01 (Seq_length xs@351@01))))
(pop) ; 12
(push) ; 12
; [else-branch: 188 | i@361@01 < |xs@351@01|]
(assert (< i@361@01 (Seq_length xs@351@01)))
; [eval] k != i
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or
  (< i@361@01 (Seq_length xs@351@01))
  (not (< i@361@01 (Seq_length xs@351@01)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= i@361@01 0)
  (and
    (>= i@361@01 0)
    (or
      (< i@361@01 (Seq_length xs@351@01))
      (not (< i@361@01 (Seq_length xs@351@01)))))))
(assert (or (>= i@361@01 0) (not (>= i@361@01 0))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@360@01 (Seq_length xs@351@01))
  (and
    (< k@360@01 (Seq_length xs@351@01))
    (=>
      (>= i@361@01 0)
      (and
        (>= i@361@01 0)
        (or
          (< i@361@01 (Seq_length xs@351@01))
          (not (< i@361@01 (Seq_length xs@351@01))))))
    (or (>= i@361@01 0) (not (>= i@361@01 0))))))
(assert (or
  (< k@360@01 (Seq_length xs@351@01))
  (not (< k@360@01 (Seq_length xs@351@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@360@01 0)
  (and
    (>= k@360@01 0)
    (=>
      (< k@360@01 (Seq_length xs@351@01))
      (and
        (< k@360@01 (Seq_length xs@351@01))
        (=>
          (>= i@361@01 0)
          (and
            (>= i@361@01 0)
            (or
              (< i@361@01 (Seq_length xs@351@01))
              (not (< i@361@01 (Seq_length xs@351@01))))))
        (or (>= i@361@01 0) (not (>= i@361@01 0)))))
    (or
      (< k@360@01 (Seq_length xs@351@01))
      (not (< k@360@01 (Seq_length xs@351@01)))))))
(assert (or (>= k@360@01 0) (not (>= k@360@01 0))))
(push) ; 5
; [then-branch: 189 | k@360@01 >= 0 && k@360@01 < |xs@351@01| && i@361@01 >= 0 && i@361@01 < |xs@351@01| && k@360@01 != i@361@01 | live]
; [else-branch: 189 | !(k@360@01 >= 0 && k@360@01 < |xs@351@01| && i@361@01 >= 0 && i@361@01 < |xs@351@01| && k@360@01 != i@361@01) | live]
(push) ; 6
; [then-branch: 189 | k@360@01 >= 0 && k@360@01 < |xs@351@01| && i@361@01 >= 0 && i@361@01 < |xs@351@01| && k@360@01 != i@361@01]
(assert (and
  (>= k@360@01 0)
  (and
    (< k@360@01 (Seq_length xs@351@01))
    (and
      (>= i@361@01 0)
      (and (< i@361@01 (Seq_length xs@351@01)) (not (= k@360@01 i@361@01)))))))
; [eval] xs[k] != xs[i]
; [eval] xs[k]
; [eval] xs[i]
(pop) ; 6
(push) ; 6
; [else-branch: 189 | !(k@360@01 >= 0 && k@360@01 < |xs@351@01| && i@361@01 >= 0 && i@361@01 < |xs@351@01| && k@360@01 != i@361@01)]
(assert (not
  (and
    (>= k@360@01 0)
    (and
      (< k@360@01 (Seq_length xs@351@01))
      (and
        (>= i@361@01 0)
        (and (< i@361@01 (Seq_length xs@351@01)) (not (= k@360@01 i@361@01))))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (>= k@360@01 0)
    (and
      (< k@360@01 (Seq_length xs@351@01))
      (and
        (>= i@361@01 0)
        (and (< i@361@01 (Seq_length xs@351@01)) (not (= k@360@01 i@361@01))))))
  (and
    (>= k@360@01 0)
    (< k@360@01 (Seq_length xs@351@01))
    (>= i@361@01 0)
    (< i@361@01 (Seq_length xs@351@01))
    (not (= k@360@01 i@361@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@360@01 0)
      (and
        (< k@360@01 (Seq_length xs@351@01))
        (and
          (>= i@361@01 0)
          (and (< i@361@01 (Seq_length xs@351@01)) (not (= k@360@01 i@361@01)))))))
  (and
    (>= k@360@01 0)
    (and
      (< k@360@01 (Seq_length xs@351@01))
      (and
        (>= i@361@01 0)
        (and (< i@361@01 (Seq_length xs@351@01)) (not (= k@360@01 i@361@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((k@360@01 Int) (i@361@01 Int)) (!
  (=>
    (and
      (>= k@360@01 0)
      (and
        (< k@360@01 (Seq_length xs@351@01))
        (and
          (>= i@361@01 0)
          (and (< i@361@01 (Seq_length xs@351@01)) (not (= k@360@01 i@361@01))))))
    (not (= (Seq_index xs@351@01 k@360@01) (Seq_index xs@351@01 i@361@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@168@12@168@106|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((k@360@01 Int) (i@361@01 Int)) (!
  (=>
    (and
      (>= k@360@01 0)
      (and
        (< k@360@01 (Seq_length xs@351@01))
        (and
          (>= i@361@01 0)
          (and (< i@361@01 (Seq_length xs@351@01)) (not (= k@360@01 i@361@01))))))
    (not (= (Seq_index xs@351@01 k@360@01) (Seq_index xs@351@01 i@361@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@168@12@168@106|)))
(declare-const i@362@01 Int)
(push) ; 4
; [eval] 0 <= i && i < |xs|
; [eval] 0 <= i
(push) ; 5
; [then-branch: 190 | !(0 <= i@362@01) | live]
; [else-branch: 190 | 0 <= i@362@01 | live]
(push) ; 6
; [then-branch: 190 | !(0 <= i@362@01)]
(assert (not (<= 0 i@362@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 190 | 0 <= i@362@01]
(assert (<= 0 i@362@01))
; [eval] i < |xs|
; [eval] |xs|
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@362@01) (not (<= 0 i@362@01))))
(assert (and (<= 0 i@362@01) (< i@362@01 (Seq_length xs@351@01))))
; [eval] xs[i]
(push) ; 5
(assert (not (>= i@362@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@363@01 ($Ref) Int)
(declare-fun img@364@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@362@01 Int)) (!
  (=>
    (and (<= 0 i@362@01) (< i@362@01 (Seq_length xs@351@01)))
    (or (<= 0 i@362@01) (not (<= 0 i@362@01))))
  :pattern ((Seq_index xs@351@01 i@362@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@362@01 Int) (i2@362@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@362@01) (< i1@362@01 (Seq_length xs@351@01)))
      (and (<= 0 i2@362@01) (< i2@362@01 (Seq_length xs@351@01)))
      (= (Seq_index xs@351@01 i1@362@01) (Seq_index xs@351@01 i2@362@01)))
    (= i1@362@01 i2@362@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@362@01 Int)) (!
  (=>
    (and (<= 0 i@362@01) (< i@362@01 (Seq_length xs@351@01)))
    (and
      (= (inv@363@01 (Seq_index xs@351@01 i@362@01)) i@362@01)
      (img@364@01 (Seq_index xs@351@01 i@362@01))))
  :pattern ((Seq_index xs@351@01 i@362@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@364@01 r)
      (and (<= 0 (inv@363@01 r)) (< (inv@363@01 r) (Seq_length xs@351@01))))
    (= (Seq_index xs@351@01 (inv@363@01 r)) r))
  :pattern ((inv@363@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@363@01 r)) (< (inv@363@01 r) (Seq_length xs@351@01)))
      (img@364@01 r)
      (= r (Seq_index xs@351@01 (inv@363@01 r))))
    (>
      (ite
        (and
          (img@358@01 r)
          (and (<= 0 (inv@357@01 r)) (< (inv@357@01 r) (Seq_length xs@351@01))))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-11745|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@365@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@365@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@363@01 r)) (< (inv@363@01 r) (Seq_length xs@351@01)))
        (img@364@01 r)))
    (=>
      (and
        (and (<= 0 (inv@363@01 r)) (< (inv@363@01 r) (Seq_length xs@351@01)))
        (img@364@01 r))
      (Set_in r ($FVF.domain_f (as sm@365@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@365@01  $FVF<f>))))
  :qid |qp.fvfDomDef140|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@363@01 r)) (< (inv@363@01 r) (Seq_length xs@351@01)))
        (img@364@01 r))
      (and
        (img@358@01 r)
        (and (<= 0 (inv@357@01 r)) (< (inv@357@01 r) (Seq_length xs@351@01)))))
    (= ($FVF.lookup_f (as sm@365@01  $FVF<f>) r) ($FVF.lookup_f $t@356@01 r)))
  :pattern (($FVF.lookup_f (as sm@365@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@356@01 r))
  :qid |qp.fvfValDef139|)))
(assert (fun07%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@365@01  $FVF<f>))) xs@351@01 (- 0 10)))
(pop) ; 3
; Joined path conditions
(assert (forall ((i@362@01 Int)) (!
  (=>
    (and (<= 0 i@362@01) (< i@362@01 (Seq_length xs@351@01)))
    (and
      (= (inv@363@01 (Seq_index xs@351@01 i@362@01)) i@362@01)
      (img@364@01 (Seq_index xs@351@01 i@362@01))))
  :pattern ((Seq_index xs@351@01 i@362@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@364@01 r)
      (and (<= 0 (inv@363@01 r)) (< (inv@363@01 r) (Seq_length xs@351@01))))
    (= (Seq_index xs@351@01 (inv@363@01 r)) r))
  :pattern ((inv@363@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@365@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@363@01 r)) (< (inv@363@01 r) (Seq_length xs@351@01)))
        (img@364@01 r)))
    (=>
      (and
        (and (<= 0 (inv@363@01 r)) (< (inv@363@01 r) (Seq_length xs@351@01)))
        (img@364@01 r))
      (Set_in r ($FVF.domain_f (as sm@365@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@365@01  $FVF<f>))))
  :qid |qp.fvfDomDef140|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@363@01 r)) (< (inv@363@01 r) (Seq_length xs@351@01)))
        (img@364@01 r))
      (and
        (img@358@01 r)
        (and (<= 0 (inv@357@01 r)) (< (inv@357@01 r) (Seq_length xs@351@01)))))
    (= ($FVF.lookup_f (as sm@365@01  $FVF<f>) r) ($FVF.lookup_f $t@356@01 r)))
  :pattern (($FVF.lookup_f (as sm@365@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@356@01 r))
  :qid |qp.fvfValDef139|)))
(assert (and
  (forall ((k@360@01 Int) (i@361@01 Int)) (!
    (=>
      (and
        (>= k@360@01 0)
        (and
          (< k@360@01 (Seq_length xs@351@01))
          (and
            (>= i@361@01 0)
            (and (< i@361@01 (Seq_length xs@351@01)) (not (= k@360@01 i@361@01))))))
      (not (= (Seq_index xs@351@01 k@360@01) (Seq_index xs@351@01 i@361@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@168@12@168@106|))
  (forall ((i@362@01 Int)) (!
    (=>
      (and (<= 0 i@362@01) (< i@362@01 (Seq_length xs@351@01)))
      (or (<= 0 i@362@01) (not (<= 0 i@362@01))))
    :pattern ((Seq_index xs@351@01 i@362@01))
    :qid |f-aux|))
  (fun07%precondition ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@365@01  $FVF<f>))) xs@351@01 (- 0 10))))
(push) ; 3
(assert (not (>=
  (fun07 ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@365@01  $FVF<f>))) xs@351@01 (- 0 10))
  0)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (>=
  (fun07 ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@365@01  $FVF<f>))) xs@351@01 (- 0 10))
  0))
; [exec]
; assert fun08(xs, 2) > xs[2].f
; [eval] fun08(xs, 2) > xs[2].f
; [eval] fun08(xs, 2)
(push) ; 3
; [eval] (forall k: Int, j: Int ::k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j])
(declare-const k@366@01 Int)
(declare-const j@367@01 Int)
(push) ; 4
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j))) ==> xs[k] != xs[j]
; [eval] k >= 0 && (k < |xs| && (j >= 0 && (j < |xs| && k != j)))
; [eval] k >= 0
(push) ; 5
; [then-branch: 191 | !(k@366@01 >= 0) | live]
; [else-branch: 191 | k@366@01 >= 0 | live]
(push) ; 6
; [then-branch: 191 | !(k@366@01 >= 0)]
(assert (not (>= k@366@01 0)))
(pop) ; 6
(push) ; 6
; [else-branch: 191 | k@366@01 >= 0]
(assert (>= k@366@01 0))
; [eval] k < |xs|
; [eval] |xs|
(push) ; 7
; [then-branch: 192 | !(k@366@01 < |xs@351@01|) | live]
; [else-branch: 192 | k@366@01 < |xs@351@01| | live]
(push) ; 8
; [then-branch: 192 | !(k@366@01 < |xs@351@01|)]
(assert (not (< k@366@01 (Seq_length xs@351@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 192 | k@366@01 < |xs@351@01|]
(assert (< k@366@01 (Seq_length xs@351@01)))
; [eval] j >= 0
(push) ; 9
; [then-branch: 193 | !(j@367@01 >= 0) | live]
; [else-branch: 193 | j@367@01 >= 0 | live]
(push) ; 10
; [then-branch: 193 | !(j@367@01 >= 0)]
(assert (not (>= j@367@01 0)))
(pop) ; 10
(push) ; 10
; [else-branch: 193 | j@367@01 >= 0]
(assert (>= j@367@01 0))
; [eval] j < |xs|
; [eval] |xs|
(push) ; 11
; [then-branch: 194 | !(j@367@01 < |xs@351@01|) | live]
; [else-branch: 194 | j@367@01 < |xs@351@01| | live]
(push) ; 12
; [then-branch: 194 | !(j@367@01 < |xs@351@01|)]
(assert (not (< j@367@01 (Seq_length xs@351@01))))
(pop) ; 12
(push) ; 12
; [else-branch: 194 | j@367@01 < |xs@351@01|]
(assert (< j@367@01 (Seq_length xs@351@01)))
; [eval] k != j
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or
  (< j@367@01 (Seq_length xs@351@01))
  (not (< j@367@01 (Seq_length xs@351@01)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= j@367@01 0)
  (and
    (>= j@367@01 0)
    (or
      (< j@367@01 (Seq_length xs@351@01))
      (not (< j@367@01 (Seq_length xs@351@01)))))))
(assert (or (>= j@367@01 0) (not (>= j@367@01 0))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@366@01 (Seq_length xs@351@01))
  (and
    (< k@366@01 (Seq_length xs@351@01))
    (=>
      (>= j@367@01 0)
      (and
        (>= j@367@01 0)
        (or
          (< j@367@01 (Seq_length xs@351@01))
          (not (< j@367@01 (Seq_length xs@351@01))))))
    (or (>= j@367@01 0) (not (>= j@367@01 0))))))
(assert (or
  (< k@366@01 (Seq_length xs@351@01))
  (not (< k@366@01 (Seq_length xs@351@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@366@01 0)
  (and
    (>= k@366@01 0)
    (=>
      (< k@366@01 (Seq_length xs@351@01))
      (and
        (< k@366@01 (Seq_length xs@351@01))
        (=>
          (>= j@367@01 0)
          (and
            (>= j@367@01 0)
            (or
              (< j@367@01 (Seq_length xs@351@01))
              (not (< j@367@01 (Seq_length xs@351@01))))))
        (or (>= j@367@01 0) (not (>= j@367@01 0)))))
    (or
      (< k@366@01 (Seq_length xs@351@01))
      (not (< k@366@01 (Seq_length xs@351@01)))))))
(assert (or (>= k@366@01 0) (not (>= k@366@01 0))))
(push) ; 5
; [then-branch: 195 | k@366@01 >= 0 && k@366@01 < |xs@351@01| && j@367@01 >= 0 && j@367@01 < |xs@351@01| && k@366@01 != j@367@01 | live]
; [else-branch: 195 | !(k@366@01 >= 0 && k@366@01 < |xs@351@01| && j@367@01 >= 0 && j@367@01 < |xs@351@01| && k@366@01 != j@367@01) | live]
(push) ; 6
; [then-branch: 195 | k@366@01 >= 0 && k@366@01 < |xs@351@01| && j@367@01 >= 0 && j@367@01 < |xs@351@01| && k@366@01 != j@367@01]
(assert (and
  (>= k@366@01 0)
  (and
    (< k@366@01 (Seq_length xs@351@01))
    (and
      (>= j@367@01 0)
      (and (< j@367@01 (Seq_length xs@351@01)) (not (= k@366@01 j@367@01)))))))
; [eval] xs[k] != xs[j]
; [eval] xs[k]
; [eval] xs[j]
(pop) ; 6
(push) ; 6
; [else-branch: 195 | !(k@366@01 >= 0 && k@366@01 < |xs@351@01| && j@367@01 >= 0 && j@367@01 < |xs@351@01| && k@366@01 != j@367@01)]
(assert (not
  (and
    (>= k@366@01 0)
    (and
      (< k@366@01 (Seq_length xs@351@01))
      (and
        (>= j@367@01 0)
        (and (< j@367@01 (Seq_length xs@351@01)) (not (= k@366@01 j@367@01))))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (>= k@366@01 0)
    (and
      (< k@366@01 (Seq_length xs@351@01))
      (and
        (>= j@367@01 0)
        (and (< j@367@01 (Seq_length xs@351@01)) (not (= k@366@01 j@367@01))))))
  (and
    (>= k@366@01 0)
    (< k@366@01 (Seq_length xs@351@01))
    (>= j@367@01 0)
    (< j@367@01 (Seq_length xs@351@01))
    (not (= k@366@01 j@367@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@366@01 0)
      (and
        (< k@366@01 (Seq_length xs@351@01))
        (and
          (>= j@367@01 0)
          (and (< j@367@01 (Seq_length xs@351@01)) (not (= k@366@01 j@367@01)))))))
  (and
    (>= k@366@01 0)
    (and
      (< k@366@01 (Seq_length xs@351@01))
      (and
        (>= j@367@01 0)
        (and (< j@367@01 (Seq_length xs@351@01)) (not (= k@366@01 j@367@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((k@366@01 Int) (j@367@01 Int)) (!
  (=>
    (and
      (>= k@366@01 0)
      (and
        (< k@366@01 (Seq_length xs@351@01))
        (and
          (>= j@367@01 0)
          (and (< j@367@01 (Seq_length xs@351@01)) (not (= k@366@01 j@367@01))))))
    (not (= (Seq_index xs@351@01 k@366@01) (Seq_index xs@351@01 j@367@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@178@12@178@106|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((k@366@01 Int) (j@367@01 Int)) (!
  (=>
    (and
      (>= k@366@01 0)
      (and
        (< k@366@01 (Seq_length xs@351@01))
        (and
          (>= j@367@01 0)
          (and (< j@367@01 (Seq_length xs@351@01)) (not (= k@366@01 j@367@01))))))
    (not (= (Seq_index xs@351@01 k@366@01) (Seq_index xs@351@01 j@367@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@178@12@178@106|)))
(declare-const j@368@01 Int)
(push) ; 4
; [eval] 0 <= j && j < |xs|
; [eval] 0 <= j
(push) ; 5
; [then-branch: 196 | !(0 <= j@368@01) | live]
; [else-branch: 196 | 0 <= j@368@01 | live]
(push) ; 6
; [then-branch: 196 | !(0 <= j@368@01)]
(assert (not (<= 0 j@368@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 196 | 0 <= j@368@01]
(assert (<= 0 j@368@01))
; [eval] j < |xs|
; [eval] |xs|
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 j@368@01) (not (<= 0 j@368@01))))
(assert (and (<= 0 j@368@01) (< j@368@01 (Seq_length xs@351@01))))
; [eval] xs[j]
(push) ; 5
(assert (not (>= j@368@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@369@01 ($Ref) Int)
(declare-fun img@370@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((j@368@01 Int)) (!
  (=>
    (and (<= 0 j@368@01) (< j@368@01 (Seq_length xs@351@01)))
    (or (<= 0 j@368@01) (not (<= 0 j@368@01))))
  :pattern ((Seq_index xs@351@01 j@368@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((j1@368@01 Int) (j2@368@01 Int)) (!
  (=>
    (and
      (and (<= 0 j1@368@01) (< j1@368@01 (Seq_length xs@351@01)))
      (and (<= 0 j2@368@01) (< j2@368@01 (Seq_length xs@351@01)))
      (= (Seq_index xs@351@01 j1@368@01) (Seq_index xs@351@01 j2@368@01)))
    (= j1@368@01 j2@368@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((j@368@01 Int)) (!
  (=>
    (and (<= 0 j@368@01) (< j@368@01 (Seq_length xs@351@01)))
    (and
      (= (inv@369@01 (Seq_index xs@351@01 j@368@01)) j@368@01)
      (img@370@01 (Seq_index xs@351@01 j@368@01))))
  :pattern ((Seq_index xs@351@01 j@368@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@370@01 r)
      (and (<= 0 (inv@369@01 r)) (< (inv@369@01 r) (Seq_length xs@351@01))))
    (= (Seq_index xs@351@01 (inv@369@01 r)) r))
  :pattern ((inv@369@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@369@01 r)) (< (inv@369@01 r) (Seq_length xs@351@01)))
      (img@370@01 r)
      (= r (Seq_index xs@351@01 (inv@369@01 r))))
    (>
      (ite
        (and
          (img@358@01 r)
          (and (<= 0 (inv@357@01 r)) (< (inv@357@01 r) (Seq_length xs@351@01))))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-11747|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@371@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@371@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@369@01 r)) (< (inv@369@01 r) (Seq_length xs@351@01)))
        (img@370@01 r)))
    (=>
      (and
        (and (<= 0 (inv@369@01 r)) (< (inv@369@01 r) (Seq_length xs@351@01)))
        (img@370@01 r))
      (Set_in r ($FVF.domain_f (as sm@371@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@371@01  $FVF<f>))))
  :qid |qp.fvfDomDef142|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@369@01 r)) (< (inv@369@01 r) (Seq_length xs@351@01)))
        (img@370@01 r))
      (and
        (img@358@01 r)
        (and (<= 0 (inv@357@01 r)) (< (inv@357@01 r) (Seq_length xs@351@01)))))
    (= ($FVF.lookup_f (as sm@371@01  $FVF<f>) r) ($FVF.lookup_f $t@356@01 r)))
  :pattern (($FVF.lookup_f (as sm@371@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@356@01 r))
  :qid |qp.fvfValDef141|)))
; [eval] 0 <= i
; [eval] i < |xs|
; [eval] |xs|
(push) ; 4
(assert (not (< 2 (Seq_length xs@351@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< 2 (Seq_length xs@351@01)))
(assert (fun08%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<f>To$Snap (as sm@371@01  $FVF<f>))
    ($Snap.combine $Snap.unit $Snap.unit))) xs@351@01 2))
(pop) ; 3
; Joined path conditions
(assert (forall ((j@368@01 Int)) (!
  (=>
    (and (<= 0 j@368@01) (< j@368@01 (Seq_length xs@351@01)))
    (and
      (= (inv@369@01 (Seq_index xs@351@01 j@368@01)) j@368@01)
      (img@370@01 (Seq_index xs@351@01 j@368@01))))
  :pattern ((Seq_index xs@351@01 j@368@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@370@01 r)
      (and (<= 0 (inv@369@01 r)) (< (inv@369@01 r) (Seq_length xs@351@01))))
    (= (Seq_index xs@351@01 (inv@369@01 r)) r))
  :pattern ((inv@369@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@371@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@369@01 r)) (< (inv@369@01 r) (Seq_length xs@351@01)))
        (img@370@01 r)))
    (=>
      (and
        (and (<= 0 (inv@369@01 r)) (< (inv@369@01 r) (Seq_length xs@351@01)))
        (img@370@01 r))
      (Set_in r ($FVF.domain_f (as sm@371@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@371@01  $FVF<f>))))
  :qid |qp.fvfDomDef142|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@369@01 r)) (< (inv@369@01 r) (Seq_length xs@351@01)))
        (img@370@01 r))
      (and
        (img@358@01 r)
        (and (<= 0 (inv@357@01 r)) (< (inv@357@01 r) (Seq_length xs@351@01)))))
    (= ($FVF.lookup_f (as sm@371@01  $FVF<f>) r) ($FVF.lookup_f $t@356@01 r)))
  :pattern (($FVF.lookup_f (as sm@371@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@356@01 r))
  :qid |qp.fvfValDef141|)))
(assert (and
  (forall ((k@366@01 Int) (j@367@01 Int)) (!
    (=>
      (and
        (>= k@366@01 0)
        (and
          (< k@366@01 (Seq_length xs@351@01))
          (and
            (>= j@367@01 0)
            (and (< j@367@01 (Seq_length xs@351@01)) (not (= k@366@01 j@367@01))))))
      (not (= (Seq_index xs@351@01 k@366@01) (Seq_index xs@351@01 j@367@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@178@12@178@106|))
  (forall ((j@368@01 Int)) (!
    (=>
      (and (<= 0 j@368@01) (< j@368@01 (Seq_length xs@351@01)))
      (or (<= 0 j@368@01) (not (<= 0 j@368@01))))
    :pattern ((Seq_index xs@351@01 j@368@01))
    :qid |f-aux|))
  (< 2 (Seq_length xs@351@01))
  (fun08%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<f>To$Snap (as sm@371@01  $FVF<f>))
      ($Snap.combine $Snap.unit $Snap.unit))) xs@351@01 2)))
; [eval] xs[2]
(push) ; 3
(assert (not (and
  (img@358@01 (Seq_index xs@351@01 2))
  (and
    (<= 0 (inv@357@01 (Seq_index xs@351@01 2)))
    (< (inv@357@01 (Seq_index xs@351@01 2)) (Seq_length xs@351@01))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(assert (not (>
  (fun08 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<f>To$Snap (as sm@371@01  $FVF<f>))
      ($Snap.combine $Snap.unit $Snap.unit))) xs@351@01 2)
  ($FVF.lookup_f $t@356@01 (Seq_index xs@351@01 2)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (>
  (fun08 ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<f>To$Snap (as sm@371@01  $FVF<f>))
      ($Snap.combine $Snap.unit $Snap.unit))) xs@351@01 2)
  ($FVF.lookup_f $t@356@01 (Seq_index xs@351@01 2))))
; [exec]
; assert fun07(xs, -10) > 0
; [eval] fun07(xs, -10) > 0
; [eval] fun07(xs, -10)
; [eval] -10
(push) ; 3
; [eval] (forall k: Int, i: Int ::k >= 0 && (k < |xs| && (i >= 0 && (i < |xs| && k != i))) ==> xs[k] != xs[i])
(declare-const k@372@01 Int)
(declare-const i@373@01 Int)
(push) ; 4
; [eval] k >= 0 && (k < |xs| && (i >= 0 && (i < |xs| && k != i))) ==> xs[k] != xs[i]
; [eval] k >= 0 && (k < |xs| && (i >= 0 && (i < |xs| && k != i)))
; [eval] k >= 0
(push) ; 5
; [then-branch: 197 | !(k@372@01 >= 0) | live]
; [else-branch: 197 | k@372@01 >= 0 | live]
(push) ; 6
; [then-branch: 197 | !(k@372@01 >= 0)]
(assert (not (>= k@372@01 0)))
(pop) ; 6
(push) ; 6
; [else-branch: 197 | k@372@01 >= 0]
(assert (>= k@372@01 0))
; [eval] k < |xs|
; [eval] |xs|
(push) ; 7
; [then-branch: 198 | !(k@372@01 < |xs@351@01|) | live]
; [else-branch: 198 | k@372@01 < |xs@351@01| | live]
(push) ; 8
; [then-branch: 198 | !(k@372@01 < |xs@351@01|)]
(assert (not (< k@372@01 (Seq_length xs@351@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 198 | k@372@01 < |xs@351@01|]
(assert (< k@372@01 (Seq_length xs@351@01)))
; [eval] i >= 0
(push) ; 9
; [then-branch: 199 | !(i@373@01 >= 0) | live]
; [else-branch: 199 | i@373@01 >= 0 | live]
(push) ; 10
; [then-branch: 199 | !(i@373@01 >= 0)]
(assert (not (>= i@373@01 0)))
(pop) ; 10
(push) ; 10
; [else-branch: 199 | i@373@01 >= 0]
(assert (>= i@373@01 0))
; [eval] i < |xs|
; [eval] |xs|
(push) ; 11
; [then-branch: 200 | !(i@373@01 < |xs@351@01|) | live]
; [else-branch: 200 | i@373@01 < |xs@351@01| | live]
(push) ; 12
; [then-branch: 200 | !(i@373@01 < |xs@351@01|)]
(assert (not (< i@373@01 (Seq_length xs@351@01))))
(pop) ; 12
(push) ; 12
; [else-branch: 200 | i@373@01 < |xs@351@01|]
(assert (< i@373@01 (Seq_length xs@351@01)))
; [eval] k != i
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or
  (< i@373@01 (Seq_length xs@351@01))
  (not (< i@373@01 (Seq_length xs@351@01)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= i@373@01 0)
  (and
    (>= i@373@01 0)
    (or
      (< i@373@01 (Seq_length xs@351@01))
      (not (< i@373@01 (Seq_length xs@351@01)))))))
(assert (or (>= i@373@01 0) (not (>= i@373@01 0))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@372@01 (Seq_length xs@351@01))
  (and
    (< k@372@01 (Seq_length xs@351@01))
    (=>
      (>= i@373@01 0)
      (and
        (>= i@373@01 0)
        (or
          (< i@373@01 (Seq_length xs@351@01))
          (not (< i@373@01 (Seq_length xs@351@01))))))
    (or (>= i@373@01 0) (not (>= i@373@01 0))))))
(assert (or
  (< k@372@01 (Seq_length xs@351@01))
  (not (< k@372@01 (Seq_length xs@351@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@372@01 0)
  (and
    (>= k@372@01 0)
    (=>
      (< k@372@01 (Seq_length xs@351@01))
      (and
        (< k@372@01 (Seq_length xs@351@01))
        (=>
          (>= i@373@01 0)
          (and
            (>= i@373@01 0)
            (or
              (< i@373@01 (Seq_length xs@351@01))
              (not (< i@373@01 (Seq_length xs@351@01))))))
        (or (>= i@373@01 0) (not (>= i@373@01 0)))))
    (or
      (< k@372@01 (Seq_length xs@351@01))
      (not (< k@372@01 (Seq_length xs@351@01)))))))
(assert (or (>= k@372@01 0) (not (>= k@372@01 0))))
(push) ; 5
; [then-branch: 201 | k@372@01 >= 0 && k@372@01 < |xs@351@01| && i@373@01 >= 0 && i@373@01 < |xs@351@01| && k@372@01 != i@373@01 | live]
; [else-branch: 201 | !(k@372@01 >= 0 && k@372@01 < |xs@351@01| && i@373@01 >= 0 && i@373@01 < |xs@351@01| && k@372@01 != i@373@01) | live]
(push) ; 6
; [then-branch: 201 | k@372@01 >= 0 && k@372@01 < |xs@351@01| && i@373@01 >= 0 && i@373@01 < |xs@351@01| && k@372@01 != i@373@01]
(assert (and
  (>= k@372@01 0)
  (and
    (< k@372@01 (Seq_length xs@351@01))
    (and
      (>= i@373@01 0)
      (and (< i@373@01 (Seq_length xs@351@01)) (not (= k@372@01 i@373@01)))))))
; [eval] xs[k] != xs[i]
; [eval] xs[k]
; [eval] xs[i]
(pop) ; 6
(push) ; 6
; [else-branch: 201 | !(k@372@01 >= 0 && k@372@01 < |xs@351@01| && i@373@01 >= 0 && i@373@01 < |xs@351@01| && k@372@01 != i@373@01)]
(assert (not
  (and
    (>= k@372@01 0)
    (and
      (< k@372@01 (Seq_length xs@351@01))
      (and
        (>= i@373@01 0)
        (and (< i@373@01 (Seq_length xs@351@01)) (not (= k@372@01 i@373@01))))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (>= k@372@01 0)
    (and
      (< k@372@01 (Seq_length xs@351@01))
      (and
        (>= i@373@01 0)
        (and (< i@373@01 (Seq_length xs@351@01)) (not (= k@372@01 i@373@01))))))
  (and
    (>= k@372@01 0)
    (< k@372@01 (Seq_length xs@351@01))
    (>= i@373@01 0)
    (< i@373@01 (Seq_length xs@351@01))
    (not (= k@372@01 i@373@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@372@01 0)
      (and
        (< k@372@01 (Seq_length xs@351@01))
        (and
          (>= i@373@01 0)
          (and (< i@373@01 (Seq_length xs@351@01)) (not (= k@372@01 i@373@01)))))))
  (and
    (>= k@372@01 0)
    (and
      (< k@372@01 (Seq_length xs@351@01))
      (and
        (>= i@373@01 0)
        (and (< i@373@01 (Seq_length xs@351@01)) (not (= k@372@01 i@373@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((k@372@01 Int) (i@373@01 Int)) (!
  (=>
    (and
      (>= k@372@01 0)
      (and
        (< k@372@01 (Seq_length xs@351@01))
        (and
          (>= i@373@01 0)
          (and (< i@373@01 (Seq_length xs@351@01)) (not (= k@372@01 i@373@01))))))
    (not (= (Seq_index xs@351@01 k@372@01) (Seq_index xs@351@01 i@373@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@168@12@168@106|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((k@372@01 Int) (i@373@01 Int)) (!
  (=>
    (and
      (>= k@372@01 0)
      (and
        (< k@372@01 (Seq_length xs@351@01))
        (and
          (>= i@373@01 0)
          (and (< i@373@01 (Seq_length xs@351@01)) (not (= k@372@01 i@373@01))))))
    (not (= (Seq_index xs@351@01 k@372@01) (Seq_index xs@351@01 i@373@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@168@12@168@106|)))
(declare-const i@374@01 Int)
(push) ; 4
; [eval] 0 <= i && i < |xs|
; [eval] 0 <= i
(push) ; 5
; [then-branch: 202 | !(0 <= i@374@01) | live]
; [else-branch: 202 | 0 <= i@374@01 | live]
(push) ; 6
; [then-branch: 202 | !(0 <= i@374@01)]
(assert (not (<= 0 i@374@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 202 | 0 <= i@374@01]
(assert (<= 0 i@374@01))
; [eval] i < |xs|
; [eval] |xs|
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@374@01) (not (<= 0 i@374@01))))
(assert (and (<= 0 i@374@01) (< i@374@01 (Seq_length xs@351@01))))
; [eval] xs[i]
(push) ; 5
(assert (not (>= i@374@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@375@01 ($Ref) Int)
(declare-fun img@376@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@374@01 Int)) (!
  (=>
    (and (<= 0 i@374@01) (< i@374@01 (Seq_length xs@351@01)))
    (or (<= 0 i@374@01) (not (<= 0 i@374@01))))
  :pattern ((Seq_index xs@351@01 i@374@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@374@01 Int) (i2@374@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@374@01) (< i1@374@01 (Seq_length xs@351@01)))
      (and (<= 0 i2@374@01) (< i2@374@01 (Seq_length xs@351@01)))
      (= (Seq_index xs@351@01 i1@374@01) (Seq_index xs@351@01 i2@374@01)))
    (= i1@374@01 i2@374@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@374@01 Int)) (!
  (=>
    (and (<= 0 i@374@01) (< i@374@01 (Seq_length xs@351@01)))
    (and
      (= (inv@375@01 (Seq_index xs@351@01 i@374@01)) i@374@01)
      (img@376@01 (Seq_index xs@351@01 i@374@01))))
  :pattern ((Seq_index xs@351@01 i@374@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@376@01 r)
      (and (<= 0 (inv@375@01 r)) (< (inv@375@01 r) (Seq_length xs@351@01))))
    (= (Seq_index xs@351@01 (inv@375@01 r)) r))
  :pattern ((inv@375@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@375@01 r)) (< (inv@375@01 r) (Seq_length xs@351@01)))
      (img@376@01 r)
      (= r (Seq_index xs@351@01 (inv@375@01 r))))
    (>
      (ite
        (and
          (img@358@01 r)
          (and (<= 0 (inv@357@01 r)) (< (inv@357@01 r) (Seq_length xs@351@01))))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-11749|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@377@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@377@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@375@01 r)) (< (inv@375@01 r) (Seq_length xs@351@01)))
        (img@376@01 r)))
    (=>
      (and
        (and (<= 0 (inv@375@01 r)) (< (inv@375@01 r) (Seq_length xs@351@01)))
        (img@376@01 r))
      (Set_in r ($FVF.domain_f (as sm@377@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@377@01  $FVF<f>))))
  :qid |qp.fvfDomDef144|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@375@01 r)) (< (inv@375@01 r) (Seq_length xs@351@01)))
        (img@376@01 r))
      (and
        (img@358@01 r)
        (and (<= 0 (inv@357@01 r)) (< (inv@357@01 r) (Seq_length xs@351@01)))))
    (= ($FVF.lookup_f (as sm@377@01  $FVF<f>) r) ($FVF.lookup_f $t@356@01 r)))
  :pattern (($FVF.lookup_f (as sm@377@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@356@01 r))
  :qid |qp.fvfValDef143|)))
(assert (fun07%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@377@01  $FVF<f>))) xs@351@01 (- 0 10)))
(pop) ; 3
; Joined path conditions
(assert (forall ((i@374@01 Int)) (!
  (=>
    (and (<= 0 i@374@01) (< i@374@01 (Seq_length xs@351@01)))
    (and
      (= (inv@375@01 (Seq_index xs@351@01 i@374@01)) i@374@01)
      (img@376@01 (Seq_index xs@351@01 i@374@01))))
  :pattern ((Seq_index xs@351@01 i@374@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@376@01 r)
      (and (<= 0 (inv@375@01 r)) (< (inv@375@01 r) (Seq_length xs@351@01))))
    (= (Seq_index xs@351@01 (inv@375@01 r)) r))
  :pattern ((inv@375@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@377@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@375@01 r)) (< (inv@375@01 r) (Seq_length xs@351@01)))
        (img@376@01 r)))
    (=>
      (and
        (and (<= 0 (inv@375@01 r)) (< (inv@375@01 r) (Seq_length xs@351@01)))
        (img@376@01 r))
      (Set_in r ($FVF.domain_f (as sm@377@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@377@01  $FVF<f>))))
  :qid |qp.fvfDomDef144|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@375@01 r)) (< (inv@375@01 r) (Seq_length xs@351@01)))
        (img@376@01 r))
      (and
        (img@358@01 r)
        (and (<= 0 (inv@357@01 r)) (< (inv@357@01 r) (Seq_length xs@351@01)))))
    (= ($FVF.lookup_f (as sm@377@01  $FVF<f>) r) ($FVF.lookup_f $t@356@01 r)))
  :pattern (($FVF.lookup_f (as sm@377@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@356@01 r))
  :qid |qp.fvfValDef143|)))
(assert (and
  (forall ((k@372@01 Int) (i@373@01 Int)) (!
    (=>
      (and
        (>= k@372@01 0)
        (and
          (< k@372@01 (Seq_length xs@351@01))
          (and
            (>= i@373@01 0)
            (and (< i@373@01 (Seq_length xs@351@01)) (not (= k@372@01 i@373@01))))))
      (not (= (Seq_index xs@351@01 k@372@01) (Seq_index xs@351@01 i@373@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@168@12@168@106|))
  (forall ((i@374@01 Int)) (!
    (=>
      (and (<= 0 i@374@01) (< i@374@01 (Seq_length xs@351@01)))
      (or (<= 0 i@374@01) (not (<= 0 i@374@01))))
    :pattern ((Seq_index xs@351@01 i@374@01))
    :qid |f-aux|))
  (fun07%precondition ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@377@01  $FVF<f>))) xs@351@01 (- 0 10))))
(push) ; 3
(assert (not (>
  (fun07 ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@377@01  $FVF<f>))) xs@351@01 (- 0 10))
  0)))
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
(declare-const sm@378@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@358@01 r)
      (and (<= 0 (inv@357@01 r)) (< (inv@357@01 r) (Seq_length xs@351@01))))
    (= ($FVF.lookup_f (as sm@378@01  $FVF<f>) r) ($FVF.lookup_f $t@356@01 r)))
  :pattern (($FVF.lookup_f (as sm@378@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@356@01 r))
  :qid |qp.fvfValDef145|)))
(declare-const pm@379@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@379@01  $FPM) r)
    (ite
      (and
        (img@358@01 r)
        (and (<= 0 (inv@357@01 r)) (< (inv@357@01 r) (Seq_length xs@351@01))))
      $Perm.Write
      $Perm.No))
  :pattern (($FVF.perm_f (as pm@379@01  $FPM) r))
  :qid |qp.resPrmSumDef146|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@379@01  $FPM) r) $Perm.Write)
  :pattern ((inv@357@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] fun07(xs, -10) > 0
; [eval] fun07(xs, -10)
; [eval] -10
(set-option :timeout 0)
(push) ; 3
; [eval] (forall k: Int, i: Int ::k >= 0 && (k < |xs| && (i >= 0 && (i < |xs| && k != i))) ==> xs[k] != xs[i])
(declare-const k@380@01 Int)
(declare-const i@381@01 Int)
(push) ; 4
; [eval] k >= 0 && (k < |xs| && (i >= 0 && (i < |xs| && k != i))) ==> xs[k] != xs[i]
; [eval] k >= 0 && (k < |xs| && (i >= 0 && (i < |xs| && k != i)))
; [eval] k >= 0
(push) ; 5
; [then-branch: 203 | !(k@380@01 >= 0) | live]
; [else-branch: 203 | k@380@01 >= 0 | live]
(push) ; 6
; [then-branch: 203 | !(k@380@01 >= 0)]
(assert (not (>= k@380@01 0)))
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
; [else-branch: 203 | k@380@01 >= 0]
(assert (>= k@380@01 0))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] k < |xs|
; [eval] |xs|
(set-option :timeout 0)
(push) ; 7
; [then-branch: 204 | !(k@380@01 < |xs@351@01|) | live]
; [else-branch: 204 | k@380@01 < |xs@351@01| | live]
(push) ; 8
; [then-branch: 204 | !(k@380@01 < |xs@351@01|)]
(assert (not (< k@380@01 (Seq_length xs@351@01))))
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
; [else-branch: 204 | k@380@01 < |xs@351@01|]
(assert (< k@380@01 (Seq_length xs@351@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] i >= 0
(set-option :timeout 0)
(push) ; 9
; [then-branch: 205 | !(i@381@01 >= 0) | live]
; [else-branch: 205 | i@381@01 >= 0 | live]
(push) ; 10
; [then-branch: 205 | !(i@381@01 >= 0)]
(assert (not (>= i@381@01 0)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(pop) ; 10
(set-option :timeout 0)
(push) ; 10
; [else-branch: 205 | i@381@01 >= 0]
(assert (>= i@381@01 0))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] i < |xs|
; [eval] |xs|
(set-option :timeout 0)
(push) ; 11
; [then-branch: 206 | !(i@381@01 < |xs@351@01|) | live]
; [else-branch: 206 | i@381@01 < |xs@351@01| | live]
(push) ; 12
; [then-branch: 206 | !(i@381@01 < |xs@351@01|)]
(assert (not (< i@381@01 (Seq_length xs@351@01))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(pop) ; 12
(set-option :timeout 0)
(push) ; 12
; [else-branch: 206 | i@381@01 < |xs@351@01|]
(assert (< i@381@01 (Seq_length xs@351@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] k != i
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or
  (< i@381@01 (Seq_length xs@351@01))
  (not (< i@381@01 (Seq_length xs@351@01)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= i@381@01 0)
  (and
    (>= i@381@01 0)
    (or
      (< i@381@01 (Seq_length xs@351@01))
      (not (< i@381@01 (Seq_length xs@351@01)))))))
(assert (or (>= i@381@01 0) (not (>= i@381@01 0))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@380@01 (Seq_length xs@351@01))
  (and
    (< k@380@01 (Seq_length xs@351@01))
    (=>
      (>= i@381@01 0)
      (and
        (>= i@381@01 0)
        (or
          (< i@381@01 (Seq_length xs@351@01))
          (not (< i@381@01 (Seq_length xs@351@01))))))
    (or (>= i@381@01 0) (not (>= i@381@01 0))))))
(assert (or
  (< k@380@01 (Seq_length xs@351@01))
  (not (< k@380@01 (Seq_length xs@351@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@380@01 0)
  (and
    (>= k@380@01 0)
    (=>
      (< k@380@01 (Seq_length xs@351@01))
      (and
        (< k@380@01 (Seq_length xs@351@01))
        (=>
          (>= i@381@01 0)
          (and
            (>= i@381@01 0)
            (or
              (< i@381@01 (Seq_length xs@351@01))
              (not (< i@381@01 (Seq_length xs@351@01))))))
        (or (>= i@381@01 0) (not (>= i@381@01 0)))))
    (or
      (< k@380@01 (Seq_length xs@351@01))
      (not (< k@380@01 (Seq_length xs@351@01)))))))
(assert (or (>= k@380@01 0) (not (>= k@380@01 0))))
(set-option :timeout 0)
(push) ; 5
; [then-branch: 207 | k@380@01 >= 0 && k@380@01 < |xs@351@01| && i@381@01 >= 0 && i@381@01 < |xs@351@01| && k@380@01 != i@381@01 | live]
; [else-branch: 207 | !(k@380@01 >= 0 && k@380@01 < |xs@351@01| && i@381@01 >= 0 && i@381@01 < |xs@351@01| && k@380@01 != i@381@01) | live]
(push) ; 6
; [then-branch: 207 | k@380@01 >= 0 && k@380@01 < |xs@351@01| && i@381@01 >= 0 && i@381@01 < |xs@351@01| && k@380@01 != i@381@01]
(assert (and
  (>= k@380@01 0)
  (and
    (< k@380@01 (Seq_length xs@351@01))
    (and
      (>= i@381@01 0)
      (and (< i@381@01 (Seq_length xs@351@01)) (not (= k@380@01 i@381@01)))))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] xs[k] != xs[i]
; [eval] xs[k]
; [eval] xs[i]
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 207 | !(k@380@01 >= 0 && k@380@01 < |xs@351@01| && i@381@01 >= 0 && i@381@01 < |xs@351@01| && k@380@01 != i@381@01)]
(assert (not
  (and
    (>= k@380@01 0)
    (and
      (< k@380@01 (Seq_length xs@351@01))
      (and
        (>= i@381@01 0)
        (and (< i@381@01 (Seq_length xs@351@01)) (not (= k@380@01 i@381@01))))))))
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
    (>= k@380@01 0)
    (and
      (< k@380@01 (Seq_length xs@351@01))
      (and
        (>= i@381@01 0)
        (and (< i@381@01 (Seq_length xs@351@01)) (not (= k@380@01 i@381@01))))))
  (and
    (>= k@380@01 0)
    (< k@380@01 (Seq_length xs@351@01))
    (>= i@381@01 0)
    (< i@381@01 (Seq_length xs@351@01))
    (not (= k@380@01 i@381@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@380@01 0)
      (and
        (< k@380@01 (Seq_length xs@351@01))
        (and
          (>= i@381@01 0)
          (and (< i@381@01 (Seq_length xs@351@01)) (not (= k@380@01 i@381@01)))))))
  (and
    (>= k@380@01 0)
    (and
      (< k@380@01 (Seq_length xs@351@01))
      (and
        (>= i@381@01 0)
        (and (< i@381@01 (Seq_length xs@351@01)) (not (= k@380@01 i@381@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((k@380@01 Int) (i@381@01 Int)) (!
  (=>
    (and
      (>= k@380@01 0)
      (and
        (< k@380@01 (Seq_length xs@351@01))
        (and
          (>= i@381@01 0)
          (and (< i@381@01 (Seq_length xs@351@01)) (not (= k@380@01 i@381@01))))))
    (not (= (Seq_index xs@351@01 k@380@01) (Seq_index xs@351@01 i@381@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@168@12@168@106|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((k@380@01 Int) (i@381@01 Int)) (!
  (=>
    (and
      (>= k@380@01 0)
      (and
        (< k@380@01 (Seq_length xs@351@01))
        (and
          (>= i@381@01 0)
          (and (< i@381@01 (Seq_length xs@351@01)) (not (= k@380@01 i@381@01))))))
    (not (= (Seq_index xs@351@01 k@380@01) (Seq_index xs@351@01 i@381@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@168@12@168@106|)))
(declare-const i@382@01 Int)
(push) ; 4
; [eval] 0 <= i && i < |xs|
; [eval] 0 <= i
(push) ; 5
; [then-branch: 208 | !(0 <= i@382@01) | live]
; [else-branch: 208 | 0 <= i@382@01 | live]
(push) ; 6
; [then-branch: 208 | !(0 <= i@382@01)]
(assert (not (<= 0 i@382@01)))
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
; [else-branch: 208 | 0 <= i@382@01]
(assert (<= 0 i@382@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] i < |xs|
; [eval] |xs|
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@382@01) (not (<= 0 i@382@01))))
(assert (and (<= 0 i@382@01) (< i@382@01 (Seq_length xs@351@01))))
; [eval] xs[i]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@382@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@383@01 ($Ref) Int)
(declare-fun img@384@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@382@01 Int)) (!
  (=>
    (and (<= 0 i@382@01) (< i@382@01 (Seq_length xs@351@01)))
    (or (<= 0 i@382@01) (not (<= 0 i@382@01))))
  :pattern ((Seq_index xs@351@01 i@382@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@382@01 Int) (i2@382@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@382@01) (< i1@382@01 (Seq_length xs@351@01)))
      (and (<= 0 i2@382@01) (< i2@382@01 (Seq_length xs@351@01)))
      (= (Seq_index xs@351@01 i1@382@01) (Seq_index xs@351@01 i2@382@01)))
    (= i1@382@01 i2@382@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@382@01 Int)) (!
  (=>
    (and (<= 0 i@382@01) (< i@382@01 (Seq_length xs@351@01)))
    (and
      (= (inv@383@01 (Seq_index xs@351@01 i@382@01)) i@382@01)
      (img@384@01 (Seq_index xs@351@01 i@382@01))))
  :pattern ((Seq_index xs@351@01 i@382@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@384@01 r)
      (and (<= 0 (inv@383@01 r)) (< (inv@383@01 r) (Seq_length xs@351@01))))
    (= (Seq_index xs@351@01 (inv@383@01 r)) r))
  :pattern ((inv@383@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@383@01 r)) (< (inv@383@01 r) (Seq_length xs@351@01)))
      (img@384@01 r)
      (= r (Seq_index xs@351@01 (inv@383@01 r))))
    (>
      (ite
        (and
          (img@358@01 r)
          (and (<= 0 (inv@357@01 r)) (< (inv@357@01 r) (Seq_length xs@351@01))))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-11751|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@385@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@385@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@383@01 r)) (< (inv@383@01 r) (Seq_length xs@351@01)))
        (img@384@01 r)))
    (=>
      (and
        (and (<= 0 (inv@383@01 r)) (< (inv@383@01 r) (Seq_length xs@351@01)))
        (img@384@01 r))
      (Set_in r ($FVF.domain_f (as sm@385@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@385@01  $FVF<f>))))
  :qid |qp.fvfDomDef148|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@383@01 r)) (< (inv@383@01 r) (Seq_length xs@351@01)))
        (img@384@01 r))
      (and
        (img@358@01 r)
        (and (<= 0 (inv@357@01 r)) (< (inv@357@01 r) (Seq_length xs@351@01)))))
    (= ($FVF.lookup_f (as sm@385@01  $FVF<f>) r) ($FVF.lookup_f $t@356@01 r)))
  :pattern (($FVF.lookup_f (as sm@385@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@356@01 r))
  :qid |qp.fvfValDef147|)))
(assert (fun07%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@385@01  $FVF<f>))) xs@351@01 (- 0 10)))
(pop) ; 3
; Joined path conditions
(assert (forall ((i@382@01 Int)) (!
  (=>
    (and (<= 0 i@382@01) (< i@382@01 (Seq_length xs@351@01)))
    (and
      (= (inv@383@01 (Seq_index xs@351@01 i@382@01)) i@382@01)
      (img@384@01 (Seq_index xs@351@01 i@382@01))))
  :pattern ((Seq_index xs@351@01 i@382@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@384@01 r)
      (and (<= 0 (inv@383@01 r)) (< (inv@383@01 r) (Seq_length xs@351@01))))
    (= (Seq_index xs@351@01 (inv@383@01 r)) r))
  :pattern ((inv@383@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@385@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@383@01 r)) (< (inv@383@01 r) (Seq_length xs@351@01)))
        (img@384@01 r)))
    (=>
      (and
        (and (<= 0 (inv@383@01 r)) (< (inv@383@01 r) (Seq_length xs@351@01)))
        (img@384@01 r))
      (Set_in r ($FVF.domain_f (as sm@385@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@385@01  $FVF<f>))))
  :qid |qp.fvfDomDef148|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@383@01 r)) (< (inv@383@01 r) (Seq_length xs@351@01)))
        (img@384@01 r))
      (and
        (img@358@01 r)
        (and (<= 0 (inv@357@01 r)) (< (inv@357@01 r) (Seq_length xs@351@01)))))
    (= ($FVF.lookup_f (as sm@385@01  $FVF<f>) r) ($FVF.lookup_f $t@356@01 r)))
  :pattern (($FVF.lookup_f (as sm@385@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@356@01 r))
  :qid |qp.fvfValDef147|)))
(assert (and
  (forall ((k@380@01 Int) (i@381@01 Int)) (!
    (=>
      (and
        (>= k@380@01 0)
        (and
          (< k@380@01 (Seq_length xs@351@01))
          (and
            (>= i@381@01 0)
            (and (< i@381@01 (Seq_length xs@351@01)) (not (= k@380@01 i@381@01))))))
      (not (= (Seq_index xs@351@01 k@380@01) (Seq_index xs@351@01 i@381@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@168@12@168@106|))
  (forall ((i@382@01 Int)) (!
    (=>
      (and (<= 0 i@382@01) (< i@382@01 (Seq_length xs@351@01)))
      (or (<= 0 i@382@01) (not (<= 0 i@382@01))))
    :pattern ((Seq_index xs@351@01 i@382@01))
    :qid |f-aux|))
  (fun07%precondition ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@385@01  $FVF<f>))) xs@351@01 (- 0 10))))
(push) ; 3
(assert (not (>
  (fun07 ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@385@01  $FVF<f>))) xs@351@01 (- 0 10))
  0)))
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
(declare-const sm@386@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@358@01 r)
      (and (<= 0 (inv@357@01 r)) (< (inv@357@01 r) (Seq_length xs@351@01))))
    (= ($FVF.lookup_f (as sm@386@01  $FVF<f>) r) ($FVF.lookup_f $t@356@01 r)))
  :pattern (($FVF.lookup_f (as sm@386@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@356@01 r))
  :qid |qp.fvfValDef149|)))
(declare-const pm@387@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@387@01  $FPM) r)
    (ite
      (and
        (img@358@01 r)
        (and (<= 0 (inv@357@01 r)) (< (inv@357@01 r) (Seq_length xs@351@01))))
      $Perm.Write
      $Perm.No))
  :pattern (($FVF.perm_f (as pm@387@01  $FPM) r))
  :qid |qp.resPrmSumDef150|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@387@01  $FPM) r) $Perm.Write)
  :pattern ((inv@357@01 r))
  :qid |qp-fld-prm-bnd|)))
; [eval] fun07(xs, -10) > 0
; [eval] fun07(xs, -10)
; [eval] -10
(set-option :timeout 0)
(push) ; 3
; [eval] (forall k: Int, i: Int ::k >= 0 && (k < |xs| && (i >= 0 && (i < |xs| && k != i))) ==> xs[k] != xs[i])
(declare-const k@388@01 Int)
(declare-const i@389@01 Int)
(push) ; 4
; [eval] k >= 0 && (k < |xs| && (i >= 0 && (i < |xs| && k != i))) ==> xs[k] != xs[i]
; [eval] k >= 0 && (k < |xs| && (i >= 0 && (i < |xs| && k != i)))
; [eval] k >= 0
(push) ; 5
; [then-branch: 209 | !(k@388@01 >= 0) | live]
; [else-branch: 209 | k@388@01 >= 0 | live]
(push) ; 6
; [then-branch: 209 | !(k@388@01 >= 0)]
(assert (not (>= k@388@01 0)))
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
; [else-branch: 209 | k@388@01 >= 0]
(assert (>= k@388@01 0))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] k < |xs|
; [eval] |xs|
(set-option :timeout 0)
(push) ; 7
; [then-branch: 210 | !(k@388@01 < |xs@351@01|) | live]
; [else-branch: 210 | k@388@01 < |xs@351@01| | live]
(push) ; 8
; [then-branch: 210 | !(k@388@01 < |xs@351@01|)]
(assert (not (< k@388@01 (Seq_length xs@351@01))))
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
; [else-branch: 210 | k@388@01 < |xs@351@01|]
(assert (< k@388@01 (Seq_length xs@351@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] i >= 0
(set-option :timeout 0)
(push) ; 9
; [then-branch: 211 | !(i@389@01 >= 0) | live]
; [else-branch: 211 | i@389@01 >= 0 | live]
(push) ; 10
; [then-branch: 211 | !(i@389@01 >= 0)]
(assert (not (>= i@389@01 0)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(pop) ; 10
(set-option :timeout 0)
(push) ; 10
; [else-branch: 211 | i@389@01 >= 0]
(assert (>= i@389@01 0))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] i < |xs|
; [eval] |xs|
(set-option :timeout 0)
(push) ; 11
; [then-branch: 212 | !(i@389@01 < |xs@351@01|) | live]
; [else-branch: 212 | i@389@01 < |xs@351@01| | live]
(push) ; 12
; [then-branch: 212 | !(i@389@01 < |xs@351@01|)]
(assert (not (< i@389@01 (Seq_length xs@351@01))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(pop) ; 12
(set-option :timeout 0)
(push) ; 12
; [else-branch: 212 | i@389@01 < |xs@351@01|]
(assert (< i@389@01 (Seq_length xs@351@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] k != i
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or
  (< i@389@01 (Seq_length xs@351@01))
  (not (< i@389@01 (Seq_length xs@351@01)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= i@389@01 0)
  (and
    (>= i@389@01 0)
    (or
      (< i@389@01 (Seq_length xs@351@01))
      (not (< i@389@01 (Seq_length xs@351@01)))))))
(assert (or (>= i@389@01 0) (not (>= i@389@01 0))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@388@01 (Seq_length xs@351@01))
  (and
    (< k@388@01 (Seq_length xs@351@01))
    (=>
      (>= i@389@01 0)
      (and
        (>= i@389@01 0)
        (or
          (< i@389@01 (Seq_length xs@351@01))
          (not (< i@389@01 (Seq_length xs@351@01))))))
    (or (>= i@389@01 0) (not (>= i@389@01 0))))))
(assert (or
  (< k@388@01 (Seq_length xs@351@01))
  (not (< k@388@01 (Seq_length xs@351@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@388@01 0)
  (and
    (>= k@388@01 0)
    (=>
      (< k@388@01 (Seq_length xs@351@01))
      (and
        (< k@388@01 (Seq_length xs@351@01))
        (=>
          (>= i@389@01 0)
          (and
            (>= i@389@01 0)
            (or
              (< i@389@01 (Seq_length xs@351@01))
              (not (< i@389@01 (Seq_length xs@351@01))))))
        (or (>= i@389@01 0) (not (>= i@389@01 0)))))
    (or
      (< k@388@01 (Seq_length xs@351@01))
      (not (< k@388@01 (Seq_length xs@351@01)))))))
(assert (or (>= k@388@01 0) (not (>= k@388@01 0))))
(set-option :timeout 0)
(push) ; 5
; [then-branch: 213 | k@388@01 >= 0 && k@388@01 < |xs@351@01| && i@389@01 >= 0 && i@389@01 < |xs@351@01| && k@388@01 != i@389@01 | live]
; [else-branch: 213 | !(k@388@01 >= 0 && k@388@01 < |xs@351@01| && i@389@01 >= 0 && i@389@01 < |xs@351@01| && k@388@01 != i@389@01) | live]
(push) ; 6
; [then-branch: 213 | k@388@01 >= 0 && k@388@01 < |xs@351@01| && i@389@01 >= 0 && i@389@01 < |xs@351@01| && k@388@01 != i@389@01]
(assert (and
  (>= k@388@01 0)
  (and
    (< k@388@01 (Seq_length xs@351@01))
    (and
      (>= i@389@01 0)
      (and (< i@389@01 (Seq_length xs@351@01)) (not (= k@388@01 i@389@01)))))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] xs[k] != xs[i]
; [eval] xs[k]
; [eval] xs[i]
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 213 | !(k@388@01 >= 0 && k@388@01 < |xs@351@01| && i@389@01 >= 0 && i@389@01 < |xs@351@01| && k@388@01 != i@389@01)]
(assert (not
  (and
    (>= k@388@01 0)
    (and
      (< k@388@01 (Seq_length xs@351@01))
      (and
        (>= i@389@01 0)
        (and (< i@389@01 (Seq_length xs@351@01)) (not (= k@388@01 i@389@01))))))))
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
    (>= k@388@01 0)
    (and
      (< k@388@01 (Seq_length xs@351@01))
      (and
        (>= i@389@01 0)
        (and (< i@389@01 (Seq_length xs@351@01)) (not (= k@388@01 i@389@01))))))
  (and
    (>= k@388@01 0)
    (< k@388@01 (Seq_length xs@351@01))
    (>= i@389@01 0)
    (< i@389@01 (Seq_length xs@351@01))
    (not (= k@388@01 i@389@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@388@01 0)
      (and
        (< k@388@01 (Seq_length xs@351@01))
        (and
          (>= i@389@01 0)
          (and (< i@389@01 (Seq_length xs@351@01)) (not (= k@388@01 i@389@01)))))))
  (and
    (>= k@388@01 0)
    (and
      (< k@388@01 (Seq_length xs@351@01))
      (and
        (>= i@389@01 0)
        (and (< i@389@01 (Seq_length xs@351@01)) (not (= k@388@01 i@389@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((k@388@01 Int) (i@389@01 Int)) (!
  (=>
    (and
      (>= k@388@01 0)
      (and
        (< k@388@01 (Seq_length xs@351@01))
        (and
          (>= i@389@01 0)
          (and (< i@389@01 (Seq_length xs@351@01)) (not (= k@388@01 i@389@01))))))
    (not (= (Seq_index xs@351@01 k@388@01) (Seq_index xs@351@01 i@389@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@168@12@168@106|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((k@388@01 Int) (i@389@01 Int)) (!
  (=>
    (and
      (>= k@388@01 0)
      (and
        (< k@388@01 (Seq_length xs@351@01))
        (and
          (>= i@389@01 0)
          (and (< i@389@01 (Seq_length xs@351@01)) (not (= k@388@01 i@389@01))))))
    (not (= (Seq_index xs@351@01 k@388@01) (Seq_index xs@351@01 i@389@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@168@12@168@106|)))
(declare-const i@390@01 Int)
(push) ; 4
; [eval] 0 <= i && i < |xs|
; [eval] 0 <= i
(push) ; 5
; [then-branch: 214 | !(0 <= i@390@01) | live]
; [else-branch: 214 | 0 <= i@390@01 | live]
(push) ; 6
; [then-branch: 214 | !(0 <= i@390@01)]
(assert (not (<= 0 i@390@01)))
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
; [else-branch: 214 | 0 <= i@390@01]
(assert (<= 0 i@390@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] i < |xs|
; [eval] |xs|
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@390@01) (not (<= 0 i@390@01))))
(assert (and (<= 0 i@390@01) (< i@390@01 (Seq_length xs@351@01))))
; [eval] xs[i]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@390@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@391@01 ($Ref) Int)
(declare-fun img@392@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@390@01 Int)) (!
  (=>
    (and (<= 0 i@390@01) (< i@390@01 (Seq_length xs@351@01)))
    (or (<= 0 i@390@01) (not (<= 0 i@390@01))))
  :pattern ((Seq_index xs@351@01 i@390@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@390@01 Int) (i2@390@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@390@01) (< i1@390@01 (Seq_length xs@351@01)))
      (and (<= 0 i2@390@01) (< i2@390@01 (Seq_length xs@351@01)))
      (= (Seq_index xs@351@01 i1@390@01) (Seq_index xs@351@01 i2@390@01)))
    (= i1@390@01 i2@390@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@390@01 Int)) (!
  (=>
    (and (<= 0 i@390@01) (< i@390@01 (Seq_length xs@351@01)))
    (and
      (= (inv@391@01 (Seq_index xs@351@01 i@390@01)) i@390@01)
      (img@392@01 (Seq_index xs@351@01 i@390@01))))
  :pattern ((Seq_index xs@351@01 i@390@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@392@01 r)
      (and (<= 0 (inv@391@01 r)) (< (inv@391@01 r) (Seq_length xs@351@01))))
    (= (Seq_index xs@351@01 (inv@391@01 r)) r))
  :pattern ((inv@391@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@391@01 r)) (< (inv@391@01 r) (Seq_length xs@351@01)))
      (img@392@01 r)
      (= r (Seq_index xs@351@01 (inv@391@01 r))))
    (>
      (ite
        (and
          (img@358@01 r)
          (and (<= 0 (inv@357@01 r)) (< (inv@357@01 r) (Seq_length xs@351@01))))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-11753|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@393@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@393@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@391@01 r)) (< (inv@391@01 r) (Seq_length xs@351@01)))
        (img@392@01 r)))
    (=>
      (and
        (and (<= 0 (inv@391@01 r)) (< (inv@391@01 r) (Seq_length xs@351@01)))
        (img@392@01 r))
      (Set_in r ($FVF.domain_f (as sm@393@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@393@01  $FVF<f>))))
  :qid |qp.fvfDomDef152|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@391@01 r)) (< (inv@391@01 r) (Seq_length xs@351@01)))
        (img@392@01 r))
      (and
        (img@358@01 r)
        (and (<= 0 (inv@357@01 r)) (< (inv@357@01 r) (Seq_length xs@351@01)))))
    (= ($FVF.lookup_f (as sm@393@01  $FVF<f>) r) ($FVF.lookup_f $t@356@01 r)))
  :pattern (($FVF.lookup_f (as sm@393@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@356@01 r))
  :qid |qp.fvfValDef151|)))
(assert (fun07%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@393@01  $FVF<f>))) xs@351@01 (- 0 10)))
(pop) ; 3
; Joined path conditions
(assert (forall ((i@390@01 Int)) (!
  (=>
    (and (<= 0 i@390@01) (< i@390@01 (Seq_length xs@351@01)))
    (and
      (= (inv@391@01 (Seq_index xs@351@01 i@390@01)) i@390@01)
      (img@392@01 (Seq_index xs@351@01 i@390@01))))
  :pattern ((Seq_index xs@351@01 i@390@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@392@01 r)
      (and (<= 0 (inv@391@01 r)) (< (inv@391@01 r) (Seq_length xs@351@01))))
    (= (Seq_index xs@351@01 (inv@391@01 r)) r))
  :pattern ((inv@391@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@393@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@391@01 r)) (< (inv@391@01 r) (Seq_length xs@351@01)))
        (img@392@01 r)))
    (=>
      (and
        (and (<= 0 (inv@391@01 r)) (< (inv@391@01 r) (Seq_length xs@351@01)))
        (img@392@01 r))
      (Set_in r ($FVF.domain_f (as sm@393@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@393@01  $FVF<f>))))
  :qid |qp.fvfDomDef152|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@391@01 r)) (< (inv@391@01 r) (Seq_length xs@351@01)))
        (img@392@01 r))
      (and
        (img@358@01 r)
        (and (<= 0 (inv@357@01 r)) (< (inv@357@01 r) (Seq_length xs@351@01)))))
    (= ($FVF.lookup_f (as sm@393@01  $FVF<f>) r) ($FVF.lookup_f $t@356@01 r)))
  :pattern (($FVF.lookup_f (as sm@393@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@356@01 r))
  :qid |qp.fvfValDef151|)))
(assert (and
  (forall ((k@388@01 Int) (i@389@01 Int)) (!
    (=>
      (and
        (>= k@388@01 0)
        (and
          (< k@388@01 (Seq_length xs@351@01))
          (and
            (>= i@389@01 0)
            (and (< i@389@01 (Seq_length xs@351@01)) (not (= k@388@01 i@389@01))))))
      (not (= (Seq_index xs@351@01 k@388@01) (Seq_index xs@351@01 i@389@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@168@12@168@106|))
  (forall ((i@390@01 Int)) (!
    (=>
      (and (<= 0 i@390@01) (< i@390@01 (Seq_length xs@351@01)))
      (or (<= 0 i@390@01) (not (<= 0 i@390@01))))
    :pattern ((Seq_index xs@351@01 i@390@01))
    :qid |f-aux|))
  (fun07%precondition ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@393@01  $FVF<f>))) xs@351@01 (- 0 10))))
(push) ; 3
(assert (not (>
  (fun07 ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@393@01  $FVF<f>))) xs@351@01 (- 0 10))
  0)))
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
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] fun07(xs, -10) > 0
; [eval] fun07(xs, -10)
; [eval] -10
(set-option :timeout 0)
(push) ; 3
; [eval] (forall k: Int, i: Int ::k >= 0 && (k < |xs| && (i >= 0 && (i < |xs| && k != i))) ==> xs[k] != xs[i])
(declare-const k@394@01 Int)
(declare-const i@395@01 Int)
(push) ; 4
; [eval] k >= 0 && (k < |xs| && (i >= 0 && (i < |xs| && k != i))) ==> xs[k] != xs[i]
; [eval] k >= 0 && (k < |xs| && (i >= 0 && (i < |xs| && k != i)))
; [eval] k >= 0
(push) ; 5
; [then-branch: 215 | !(k@394@01 >= 0) | live]
; [else-branch: 215 | k@394@01 >= 0 | live]
(push) ; 6
; [then-branch: 215 | !(k@394@01 >= 0)]
(assert (not (>= k@394@01 0)))
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
; [else-branch: 215 | k@394@01 >= 0]
(assert (>= k@394@01 0))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] k < |xs|
; [eval] |xs|
(set-option :timeout 0)
(push) ; 7
; [then-branch: 216 | !(k@394@01 < |xs@351@01|) | live]
; [else-branch: 216 | k@394@01 < |xs@351@01| | live]
(push) ; 8
; [then-branch: 216 | !(k@394@01 < |xs@351@01|)]
(assert (not (< k@394@01 (Seq_length xs@351@01))))
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
; [else-branch: 216 | k@394@01 < |xs@351@01|]
(assert (< k@394@01 (Seq_length xs@351@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] i >= 0
(set-option :timeout 0)
(push) ; 9
; [then-branch: 217 | !(i@395@01 >= 0) | live]
; [else-branch: 217 | i@395@01 >= 0 | live]
(push) ; 10
; [then-branch: 217 | !(i@395@01 >= 0)]
(assert (not (>= i@395@01 0)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(pop) ; 10
(set-option :timeout 0)
(push) ; 10
; [else-branch: 217 | i@395@01 >= 0]
(assert (>= i@395@01 0))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] i < |xs|
; [eval] |xs|
(set-option :timeout 0)
(push) ; 11
; [then-branch: 218 | !(i@395@01 < |xs@351@01|) | live]
; [else-branch: 218 | i@395@01 < |xs@351@01| | live]
(push) ; 12
; [then-branch: 218 | !(i@395@01 < |xs@351@01|)]
(assert (not (< i@395@01 (Seq_length xs@351@01))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(pop) ; 12
(set-option :timeout 0)
(push) ; 12
; [else-branch: 218 | i@395@01 < |xs@351@01|]
(assert (< i@395@01 (Seq_length xs@351@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] k != i
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or
  (< i@395@01 (Seq_length xs@351@01))
  (not (< i@395@01 (Seq_length xs@351@01)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= i@395@01 0)
  (and
    (>= i@395@01 0)
    (or
      (< i@395@01 (Seq_length xs@351@01))
      (not (< i@395@01 (Seq_length xs@351@01)))))))
(assert (or (>= i@395@01 0) (not (>= i@395@01 0))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (< k@394@01 (Seq_length xs@351@01))
  (and
    (< k@394@01 (Seq_length xs@351@01))
    (=>
      (>= i@395@01 0)
      (and
        (>= i@395@01 0)
        (or
          (< i@395@01 (Seq_length xs@351@01))
          (not (< i@395@01 (Seq_length xs@351@01))))))
    (or (>= i@395@01 0) (not (>= i@395@01 0))))))
(assert (or
  (< k@394@01 (Seq_length xs@351@01))
  (not (< k@394@01 (Seq_length xs@351@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (>= k@394@01 0)
  (and
    (>= k@394@01 0)
    (=>
      (< k@394@01 (Seq_length xs@351@01))
      (and
        (< k@394@01 (Seq_length xs@351@01))
        (=>
          (>= i@395@01 0)
          (and
            (>= i@395@01 0)
            (or
              (< i@395@01 (Seq_length xs@351@01))
              (not (< i@395@01 (Seq_length xs@351@01))))))
        (or (>= i@395@01 0) (not (>= i@395@01 0)))))
    (or
      (< k@394@01 (Seq_length xs@351@01))
      (not (< k@394@01 (Seq_length xs@351@01)))))))
(assert (or (>= k@394@01 0) (not (>= k@394@01 0))))
(set-option :timeout 0)
(push) ; 5
; [then-branch: 219 | k@394@01 >= 0 && k@394@01 < |xs@351@01| && i@395@01 >= 0 && i@395@01 < |xs@351@01| && k@394@01 != i@395@01 | live]
; [else-branch: 219 | !(k@394@01 >= 0 && k@394@01 < |xs@351@01| && i@395@01 >= 0 && i@395@01 < |xs@351@01| && k@394@01 != i@395@01) | live]
(push) ; 6
; [then-branch: 219 | k@394@01 >= 0 && k@394@01 < |xs@351@01| && i@395@01 >= 0 && i@395@01 < |xs@351@01| && k@394@01 != i@395@01]
(assert (and
  (>= k@394@01 0)
  (and
    (< k@394@01 (Seq_length xs@351@01))
    (and
      (>= i@395@01 0)
      (and (< i@395@01 (Seq_length xs@351@01)) (not (= k@394@01 i@395@01)))))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] xs[k] != xs[i]
; [eval] xs[k]
; [eval] xs[i]
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 219 | !(k@394@01 >= 0 && k@394@01 < |xs@351@01| && i@395@01 >= 0 && i@395@01 < |xs@351@01| && k@394@01 != i@395@01)]
(assert (not
  (and
    (>= k@394@01 0)
    (and
      (< k@394@01 (Seq_length xs@351@01))
      (and
        (>= i@395@01 0)
        (and (< i@395@01 (Seq_length xs@351@01)) (not (= k@394@01 i@395@01))))))))
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
    (>= k@394@01 0)
    (and
      (< k@394@01 (Seq_length xs@351@01))
      (and
        (>= i@395@01 0)
        (and (< i@395@01 (Seq_length xs@351@01)) (not (= k@394@01 i@395@01))))))
  (and
    (>= k@394@01 0)
    (< k@394@01 (Seq_length xs@351@01))
    (>= i@395@01 0)
    (< i@395@01 (Seq_length xs@351@01))
    (not (= k@394@01 i@395@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (>= k@394@01 0)
      (and
        (< k@394@01 (Seq_length xs@351@01))
        (and
          (>= i@395@01 0)
          (and (< i@395@01 (Seq_length xs@351@01)) (not (= k@394@01 i@395@01)))))))
  (and
    (>= k@394@01 0)
    (and
      (< k@394@01 (Seq_length xs@351@01))
      (and
        (>= i@395@01 0)
        (and (< i@395@01 (Seq_length xs@351@01)) (not (= k@394@01 i@395@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((k@394@01 Int) (i@395@01 Int)) (!
  (=>
    (and
      (>= k@394@01 0)
      (and
        (< k@394@01 (Seq_length xs@351@01))
        (and
          (>= i@395@01 0)
          (and (< i@395@01 (Seq_length xs@351@01)) (not (= k@394@01 i@395@01))))))
    (not (= (Seq_index xs@351@01 k@394@01) (Seq_index xs@351@01 i@395@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@168@12@168@106|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((k@394@01 Int) (i@395@01 Int)) (!
  (=>
    (and
      (>= k@394@01 0)
      (and
        (< k@394@01 (Seq_length xs@351@01))
        (and
          (>= i@395@01 0)
          (and (< i@395@01 (Seq_length xs@351@01)) (not (= k@394@01 i@395@01))))))
    (not (= (Seq_index xs@351@01 k@394@01) (Seq_index xs@351@01 i@395@01))))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@168@12@168@106|)))
(declare-const i@396@01 Int)
(push) ; 4
; [eval] 0 <= i && i < |xs|
; [eval] 0 <= i
(push) ; 5
; [then-branch: 220 | !(0 <= i@396@01) | live]
; [else-branch: 220 | 0 <= i@396@01 | live]
(push) ; 6
; [then-branch: 220 | !(0 <= i@396@01)]
(assert (not (<= 0 i@396@01)))
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
; [else-branch: 220 | 0 <= i@396@01]
(assert (<= 0 i@396@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
; [eval] i < |xs|
; [eval] |xs|
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (<= 0 i@396@01) (not (<= 0 i@396@01))))
(assert (and (<= 0 i@396@01) (< i@396@01 (Seq_length xs@351@01))))
; [eval] xs[i]
(set-option :timeout 0)
(push) ; 5
(assert (not (>= i@396@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(declare-fun inv@397@01 ($Ref) Int)
(declare-fun img@398@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((i@396@01 Int)) (!
  (=>
    (and (<= 0 i@396@01) (< i@396@01 (Seq_length xs@351@01)))
    (or (<= 0 i@396@01) (not (<= 0 i@396@01))))
  :pattern ((Seq_index xs@351@01 i@396@01))
  :qid |f-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((i1@396@01 Int) (i2@396@01 Int)) (!
  (=>
    (and
      (and (<= 0 i1@396@01) (< i1@396@01 (Seq_length xs@351@01)))
      (and (<= 0 i2@396@01) (< i2@396@01 (Seq_length xs@351@01)))
      (= (Seq_index xs@351@01 i1@396@01) (Seq_index xs@351@01 i2@396@01)))
    (= i1@396@01 i2@396@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@396@01 Int)) (!
  (=>
    (and (<= 0 i@396@01) (< i@396@01 (Seq_length xs@351@01)))
    (and
      (= (inv@397@01 (Seq_index xs@351@01 i@396@01)) i@396@01)
      (img@398@01 (Seq_index xs@351@01 i@396@01))))
  :pattern ((Seq_index xs@351@01 i@396@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@398@01 r)
      (and (<= 0 (inv@397@01 r)) (< (inv@397@01 r) (Seq_length xs@351@01))))
    (= (Seq_index xs@351@01 (inv@397@01 r)) r))
  :pattern ((inv@397@01 r))
  :qid |f-fctOfInv|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (and (<= 0 (inv@397@01 r)) (< (inv@397@01 r) (Seq_length xs@351@01)))
      (img@398@01 r)
      (= r (Seq_index xs@351@01 (inv@397@01 r))))
    (>
      (ite
        (and
          (img@358@01 r)
          (and (<= 0 (inv@357@01 r)) (< (inv@357@01 r) (Seq_length xs@351@01))))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-11755|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@399@01 $FVF<f>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@399@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@397@01 r)) (< (inv@397@01 r) (Seq_length xs@351@01)))
        (img@398@01 r)))
    (=>
      (and
        (and (<= 0 (inv@397@01 r)) (< (inv@397@01 r) (Seq_length xs@351@01)))
        (img@398@01 r))
      (Set_in r ($FVF.domain_f (as sm@399@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@399@01  $FVF<f>))))
  :qid |qp.fvfDomDef154|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@397@01 r)) (< (inv@397@01 r) (Seq_length xs@351@01)))
        (img@398@01 r))
      (and
        (img@358@01 r)
        (and (<= 0 (inv@357@01 r)) (< (inv@357@01 r) (Seq_length xs@351@01)))))
    (= ($FVF.lookup_f (as sm@399@01  $FVF<f>) r) ($FVF.lookup_f $t@356@01 r)))
  :pattern (($FVF.lookup_f (as sm@399@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@356@01 r))
  :qid |qp.fvfValDef153|)))
(assert (fun07%precondition ($Snap.combine
  $Snap.unit
  ($SortWrappers.$FVF<f>To$Snap (as sm@399@01  $FVF<f>))) xs@351@01 (- 0 10)))
(pop) ; 3
; Joined path conditions
(assert (forall ((i@396@01 Int)) (!
  (=>
    (and (<= 0 i@396@01) (< i@396@01 (Seq_length xs@351@01)))
    (and
      (= (inv@397@01 (Seq_index xs@351@01 i@396@01)) i@396@01)
      (img@398@01 (Seq_index xs@351@01 i@396@01))))
  :pattern ((Seq_index xs@351@01 i@396@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@398@01 r)
      (and (<= 0 (inv@397@01 r)) (< (inv@397@01 r) (Seq_length xs@351@01))))
    (= (Seq_index xs@351@01 (inv@397@01 r)) r))
  :pattern ((inv@397@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_f (as sm@399@01  $FVF<f>)))
      (and
        (and (<= 0 (inv@397@01 r)) (< (inv@397@01 r) (Seq_length xs@351@01)))
        (img@398@01 r)))
    (=>
      (and
        (and (<= 0 (inv@397@01 r)) (< (inv@397@01 r) (Seq_length xs@351@01)))
        (img@398@01 r))
      (Set_in r ($FVF.domain_f (as sm@399@01  $FVF<f>)))))
  :pattern ((Set_in r ($FVF.domain_f (as sm@399@01  $FVF<f>))))
  :qid |qp.fvfDomDef154|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and
        (and (<= 0 (inv@397@01 r)) (< (inv@397@01 r) (Seq_length xs@351@01)))
        (img@398@01 r))
      (and
        (img@358@01 r)
        (and (<= 0 (inv@357@01 r)) (< (inv@357@01 r) (Seq_length xs@351@01)))))
    (= ($FVF.lookup_f (as sm@399@01  $FVF<f>) r) ($FVF.lookup_f $t@356@01 r)))
  :pattern (($FVF.lookup_f (as sm@399@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@356@01 r))
  :qid |qp.fvfValDef153|)))
(assert (and
  (forall ((k@394@01 Int) (i@395@01 Int)) (!
    (=>
      (and
        (>= k@394@01 0)
        (and
          (< k@394@01 (Seq_length xs@351@01))
          (and
            (>= i@395@01 0)
            (and (< i@395@01 (Seq_length xs@351@01)) (not (= k@394@01 i@395@01))))))
      (not (= (Seq_index xs@351@01 k@394@01) (Seq_index xs@351@01 i@395@01))))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedpermissions/misc/functions.vpr@168@12@168@106|))
  (forall ((i@396@01 Int)) (!
    (=>
      (and (<= 0 i@396@01) (< i@396@01 (Seq_length xs@351@01)))
      (or (<= 0 i@396@01) (not (<= 0 i@396@01))))
    :pattern ((Seq_index xs@351@01 i@396@01))
    :qid |f-aux|))
  (fun07%precondition ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@399@01  $FVF<f>))) xs@351@01 (- 0 10))))
(push) ; 3
(assert (not (>
  (fun07 ($Snap.combine
    $Snap.unit
    ($SortWrappers.$FVF<f>To$Snap (as sm@399@01  $FVF<f>))) xs@351@01 (- 0 10))
  0)))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1
