(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-04 00:31:54
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
(declare-sort $PSF<wand@1> 0)
(declare-sort $PSF<wand@2> 0)
(declare-sort $PSF<wand@4> 0)
(declare-sort $PSF<wand@0> 0)
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
(declare-fun $SortWrappers.$PSF<wand@1>To$Snap ($PSF<wand@1>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<wand@1> ($Snap) $PSF<wand@1>)
(assert (forall ((x $PSF<wand@1>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<wand@1>($SortWrappers.$PSF<wand@1>To$Snap x)))
    :pattern (($SortWrappers.$PSF<wand@1>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<wand@1>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<wand@1>To$Snap($SortWrappers.$SnapTo$PSF<wand@1> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<wand@1> x))
    :qid |$Snap.$PSF<wand@1>To$SnapTo$PSF<wand@1>|
    )))
(declare-fun $SortWrappers.$PSF<wand@2>To$Snap ($PSF<wand@2>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<wand@2> ($Snap) $PSF<wand@2>)
(assert (forall ((x $PSF<wand@2>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<wand@2>($SortWrappers.$PSF<wand@2>To$Snap x)))
    :pattern (($SortWrappers.$PSF<wand@2>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<wand@2>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<wand@2>To$Snap($SortWrappers.$SnapTo$PSF<wand@2> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<wand@2> x))
    :qid |$Snap.$PSF<wand@2>To$SnapTo$PSF<wand@2>|
    )))
(declare-fun $SortWrappers.$PSF<wand@4>To$Snap ($PSF<wand@4>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<wand@4> ($Snap) $PSF<wand@4>)
(assert (forall ((x $PSF<wand@4>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<wand@4>($SortWrappers.$PSF<wand@4>To$Snap x)))
    :pattern (($SortWrappers.$PSF<wand@4>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<wand@4>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<wand@4>To$Snap($SortWrappers.$SnapTo$PSF<wand@4> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<wand@4> x))
    :qid |$Snap.$PSF<wand@4>To$SnapTo$PSF<wand@4>|
    )))
(declare-fun $SortWrappers.$PSF<wand@0>To$Snap ($PSF<wand@0>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<wand@0> ($Snap) $PSF<wand@0>)
(assert (forall ((x $PSF<wand@0>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<wand@0>($SortWrappers.$PSF<wand@0>To$Snap x)))
    :pattern (($SortWrappers.$PSF<wand@0>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<wand@0>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<wand@0>To$Snap($SortWrappers.$SnapTo$PSF<wand@0> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<wand@0> x))
    :qid |$Snap.$PSF<wand@0>To$SnapTo$PSF<wand@0>|
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
; /predicate_snap_functions_declarations.smt2 [Bool --* acc(Ref.f, write): Snap]
(declare-fun $PSF.domain_wand@4 ($PSF<wand@4>) Set<$Snap>)
(declare-fun $PSF.lookup_wand@4 ($PSF<wand@4> $Snap) $Snap)
(declare-fun $PSF.after_wand@4 ($PSF<wand@4> $PSF<wand@4>) Bool)
(declare-fun $PSF.loc_wand@4 ($Snap $Snap) Bool)
(declare-fun $PSF.perm_wand@4 ($PPM $Snap) $Perm)
(declare-const $psfTOP_wand@4 $PSF<wand@4>)
; /predicate_snap_functions_declarations.smt2 [acc(Ref.f, write) && Ref.f == Int --* acc(Ref.f, write): Snap]
(declare-fun $PSF.domain_wand@1 ($PSF<wand@1>) Set<$Snap>)
(declare-fun $PSF.lookup_wand@1 ($PSF<wand@1> $Snap) $Snap)
(declare-fun $PSF.after_wand@1 ($PSF<wand@1> $PSF<wand@1>) Bool)
(declare-fun $PSF.loc_wand@1 ($Snap $Snap) Bool)
(declare-fun $PSF.perm_wand@1 ($PPM $Snap) $Perm)
(declare-const $psfTOP_wand@1 $PSF<wand@1>)
; /predicate_snap_functions_declarations.smt2 [acc(Ref.f, write) --* acc(Ref.f, write) && (acc(Ref.f, write) && Ref.f == old[lhs](Ref.f)): Snap]
(declare-fun $PSF.domain_wand@0 ($PSF<wand@0>) Set<$Snap>)
(declare-fun $PSF.lookup_wand@0 ($PSF<wand@0> $Snap) $Snap)
(declare-fun $PSF.after_wand@0 ($PSF<wand@0> $PSF<wand@0>) Bool)
(declare-fun $PSF.loc_wand@0 ($Snap $Snap) Bool)
(declare-fun $PSF.perm_wand@0 ($PPM $Snap) $Perm)
(declare-const $psfTOP_wand@0 $PSF<wand@0>)
; /predicate_snap_functions_declarations.smt2 [acc(Ref.f, write) --* acc(Ref.f, write) && acc(Ref.f, write): Snap]
(declare-fun $PSF.domain_wand@2 ($PSF<wand@2>) Set<$Snap>)
(declare-fun $PSF.lookup_wand@2 ($PSF<wand@2> $Snap) $Snap)
(declare-fun $PSF.after_wand@2 ($PSF<wand@2> $PSF<wand@2>) Bool)
(declare-fun $PSF.loc_wand@2 ($Snap $Snap) Bool)
(declare-fun $PSF.perm_wand@2 ($PPM $Snap) $Perm)
(declare-const $psfTOP_wand@2 $PSF<wand@2>)
(declare-fun MWSF_apply ($MWSF $Snap) $Snap)
; Declaring symbols related to program functions (from program analysis)
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
; /predicate_snap_functions_axioms.smt2 [wand@2: Snap]
(assert (forall ((vs $PSF<wand@2>) (ws $PSF<wand@2>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_wand@2 vs) ($PSF.domain_wand@2 ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_wand@2 vs))
            (= ($PSF.lookup_wand@2 vs x) ($PSF.lookup_wand@2 ws x)))
          :pattern (($PSF.lookup_wand@2 vs x) ($PSF.lookup_wand@2 ws x))
          :qid |qp.$PSF<wand@2>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<wand@2>To$Snap vs)
              ($SortWrappers.$PSF<wand@2>To$Snap ws)
              )
    :qid |qp.$PSF<wand@2>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_wand@2 pm s))
    :pattern (($PSF.perm_wand@2 pm s)))))
(assert (forall ((s $Snap) (f $Snap)) (!
    (= ($PSF.loc_wand@2 f s) true)
    :pattern (($PSF.loc_wand@2 f s)))))
; /predicate_snap_functions_axioms.smt2 [wand@4: Snap]
(assert (forall ((vs $PSF<wand@4>) (ws $PSF<wand@4>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_wand@4 vs) ($PSF.domain_wand@4 ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_wand@4 vs))
            (= ($PSF.lookup_wand@4 vs x) ($PSF.lookup_wand@4 ws x)))
          :pattern (($PSF.lookup_wand@4 vs x) ($PSF.lookup_wand@4 ws x))
          :qid |qp.$PSF<wand@4>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<wand@4>To$Snap vs)
              ($SortWrappers.$PSF<wand@4>To$Snap ws)
              )
    :qid |qp.$PSF<wand@4>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_wand@4 pm s))
    :pattern (($PSF.perm_wand@4 pm s)))))
(assert (forall ((s $Snap) (f $Snap)) (!
    (= ($PSF.loc_wand@4 f s) true)
    :pattern (($PSF.loc_wand@4 f s)))))
; /predicate_snap_functions_axioms.smt2 [wand@1: Snap]
(assert (forall ((vs $PSF<wand@1>) (ws $PSF<wand@1>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_wand@1 vs) ($PSF.domain_wand@1 ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_wand@1 vs))
            (= ($PSF.lookup_wand@1 vs x) ($PSF.lookup_wand@1 ws x)))
          :pattern (($PSF.lookup_wand@1 vs x) ($PSF.lookup_wand@1 ws x))
          :qid |qp.$PSF<wand@1>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<wand@1>To$Snap vs)
              ($SortWrappers.$PSF<wand@1>To$Snap ws)
              )
    :qid |qp.$PSF<wand@1>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_wand@1 pm s))
    :pattern (($PSF.perm_wand@1 pm s)))))
(assert (forall ((s $Snap) (f $Snap)) (!
    (= ($PSF.loc_wand@1 f s) true)
    :pattern (($PSF.loc_wand@1 f s)))))
; /predicate_snap_functions_axioms.smt2 [wand@0: Snap]
(assert (forall ((vs $PSF<wand@0>) (ws $PSF<wand@0>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_wand@0 vs) ($PSF.domain_wand@0 ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_wand@0 vs))
            (= ($PSF.lookup_wand@0 vs x) ($PSF.lookup_wand@0 ws x)))
          :pattern (($PSF.lookup_wand@0 vs x) ($PSF.lookup_wand@0 ws x))
          :qid |qp.$PSF<wand@0>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<wand@0>To$Snap vs)
              ($SortWrappers.$PSF<wand@0>To$Snap ws)
              )
    :qid |qp.$PSF<wand@0>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_wand@0 pm s))
    :pattern (($PSF.perm_wand@0 pm s)))))
(assert (forall ((s $Snap) (f $Snap)) (!
    (= ($PSF.loc_wand@0 f s) true)
    :pattern (($PSF.loc_wand@0 f s)))))
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
; ---------- test0 ----------
(declare-const xs@0@01 Seq<$Ref>)
(declare-const y@1@01 $Ref)
(declare-const xs@2@01 Seq<$Ref>)
(declare-const y@3@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@4@01 $Snap)
(assert (= $t@4@01 ($Snap.combine ($Snap.first $t@4@01) ($Snap.second $t@4@01))))
(declare-const x@5@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@2@01 x@5@01))
(pop) ; 2
(declare-fun inv@6@01 ($Ref) $Ref)
(declare-fun img@7@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@5@01 $Ref) (x2@5@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@2@01 x1@5@01)
      (Seq_contains xs@2@01 x2@5@01)
      (= x1@5@01 x2@5@01))
    (= x1@5@01 x2@5@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@5@01 $Ref)) (!
  (=>
    (Seq_contains xs@2@01 x@5@01)
    (and (= (inv@6@01 x@5@01) x@5@01) (img@7@01 x@5@01)))
  :pattern ((Seq_contains xs@2@01 x@5@01))
  :pattern ((Seq_contains_trigger xs@2@01 x@5@01))
  :pattern ((Seq_contains_trigger xs@2@01 x@5@01))
  :pattern ((inv@6@01 x@5@01))
  :pattern ((img@7@01 x@5@01))
  :qid |quant-u-20363|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r))) (= (inv@6@01 r) r))
  :pattern ((inv@6@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@5@01 $Ref)) (!
  (=> (Seq_contains xs@2@01 x@5@01) (not (= x@5@01 $Ref.null)))
  :pattern ((Seq_contains xs@2@01 x@5@01))
  :pattern ((Seq_contains_trigger xs@2@01 x@5@01))
  :pattern ((Seq_contains_trigger xs@2@01 x@5@01))
  :pattern ((inv@6@01 x@5@01))
  :pattern ((img@7@01 x@5@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@4@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@4@01))
    ($Snap.second ($Snap.second $t@4@01)))))
(assert (= ($Snap.first ($Snap.second $t@4@01)) $Snap.unit))
; [eval] (forall i: Int, j: Int :: { xs[i], xs[j] } 0 <= i && (0 <= j && (i < |xs| && (j < |xs| && i != j))) ==> xs[i] != xs[j])
(declare-const i@8@01 Int)
(declare-const j@9@01 Int)
(push) ; 2
; [eval] 0 <= i && (0 <= j && (i < |xs| && (j < |xs| && i != j))) ==> xs[i] != xs[j]
; [eval] 0 <= i && (0 <= j && (i < |xs| && (j < |xs| && i != j)))
; [eval] 0 <= i
(push) ; 3
; [then-branch: 0 | !(0 <= i@8@01) | live]
; [else-branch: 0 | 0 <= i@8@01 | live]
(push) ; 4
; [then-branch: 0 | !(0 <= i@8@01)]
(assert (not (<= 0 i@8@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 0 | 0 <= i@8@01]
(assert (<= 0 i@8@01))
; [eval] 0 <= j
(push) ; 5
; [then-branch: 1 | !(0 <= j@9@01) | live]
; [else-branch: 1 | 0 <= j@9@01 | live]
(push) ; 6
; [then-branch: 1 | !(0 <= j@9@01)]
(assert (not (<= 0 j@9@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 1 | 0 <= j@9@01]
(assert (<= 0 j@9@01))
; [eval] i < |xs|
; [eval] |xs|
(push) ; 7
; [then-branch: 2 | !(i@8@01 < |xs@2@01|) | live]
; [else-branch: 2 | i@8@01 < |xs@2@01| | live]
(push) ; 8
; [then-branch: 2 | !(i@8@01 < |xs@2@01|)]
(assert (not (< i@8@01 (Seq_length xs@2@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 2 | i@8@01 < |xs@2@01|]
(assert (< i@8@01 (Seq_length xs@2@01)))
; [eval] j < |xs|
; [eval] |xs|
(push) ; 9
; [then-branch: 3 | !(j@9@01 < |xs@2@01|) | live]
; [else-branch: 3 | j@9@01 < |xs@2@01| | live]
(push) ; 10
; [then-branch: 3 | !(j@9@01 < |xs@2@01|)]
(assert (not (< j@9@01 (Seq_length xs@2@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 3 | j@9@01 < |xs@2@01|]
(assert (< j@9@01 (Seq_length xs@2@01)))
; [eval] i != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (< j@9@01 (Seq_length xs@2@01)) (not (< j@9@01 (Seq_length xs@2@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@8@01 (Seq_length xs@2@01))
  (and
    (< i@8@01 (Seq_length xs@2@01))
    (or (< j@9@01 (Seq_length xs@2@01)) (not (< j@9@01 (Seq_length xs@2@01)))))))
(assert (or (< i@8@01 (Seq_length xs@2@01)) (not (< i@8@01 (Seq_length xs@2@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@9@01)
  (and
    (<= 0 j@9@01)
    (=>
      (< i@8@01 (Seq_length xs@2@01))
      (and
        (< i@8@01 (Seq_length xs@2@01))
        (or
          (< j@9@01 (Seq_length xs@2@01))
          (not (< j@9@01 (Seq_length xs@2@01))))))
    (or (< i@8@01 (Seq_length xs@2@01)) (not (< i@8@01 (Seq_length xs@2@01)))))))
(assert (or (<= 0 j@9@01) (not (<= 0 j@9@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@8@01)
  (and
    (<= 0 i@8@01)
    (=>
      (<= 0 j@9@01)
      (and
        (<= 0 j@9@01)
        (=>
          (< i@8@01 (Seq_length xs@2@01))
          (and
            (< i@8@01 (Seq_length xs@2@01))
            (or
              (< j@9@01 (Seq_length xs@2@01))
              (not (< j@9@01 (Seq_length xs@2@01))))))
        (or
          (< i@8@01 (Seq_length xs@2@01))
          (not (< i@8@01 (Seq_length xs@2@01))))))
    (or (<= 0 j@9@01) (not (<= 0 j@9@01))))))
(assert (or (<= 0 i@8@01) (not (<= 0 i@8@01))))
(push) ; 3
; [then-branch: 4 | 0 <= i@8@01 && 0 <= j@9@01 && i@8@01 < |xs@2@01| && j@9@01 < |xs@2@01| && i@8@01 != j@9@01 | live]
; [else-branch: 4 | !(0 <= i@8@01 && 0 <= j@9@01 && i@8@01 < |xs@2@01| && j@9@01 < |xs@2@01| && i@8@01 != j@9@01) | live]
(push) ; 4
; [then-branch: 4 | 0 <= i@8@01 && 0 <= j@9@01 && i@8@01 < |xs@2@01| && j@9@01 < |xs@2@01| && i@8@01 != j@9@01]
(assert (and
  (<= 0 i@8@01)
  (and
    (<= 0 j@9@01)
    (and
      (< i@8@01 (Seq_length xs@2@01))
      (and (< j@9@01 (Seq_length xs@2@01)) (not (= i@8@01 j@9@01)))))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
(push) ; 5
(assert (not (>= i@8@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] xs[j]
(push) ; 5
(assert (not (>= j@9@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 4 | !(0 <= i@8@01 && 0 <= j@9@01 && i@8@01 < |xs@2@01| && j@9@01 < |xs@2@01| && i@8@01 != j@9@01)]
(assert (not
  (and
    (<= 0 i@8@01)
    (and
      (<= 0 j@9@01)
      (and
        (< i@8@01 (Seq_length xs@2@01))
        (and (< j@9@01 (Seq_length xs@2@01)) (not (= i@8@01 j@9@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (<= 0 i@8@01)
    (and
      (<= 0 j@9@01)
      (and
        (< i@8@01 (Seq_length xs@2@01))
        (and (< j@9@01 (Seq_length xs@2@01)) (not (= i@8@01 j@9@01))))))
  (and
    (<= 0 i@8@01)
    (<= 0 j@9@01)
    (< i@8@01 (Seq_length xs@2@01))
    (< j@9@01 (Seq_length xs@2@01))
    (not (= i@8@01 j@9@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i@8@01)
      (and
        (<= 0 j@9@01)
        (and
          (< i@8@01 (Seq_length xs@2@01))
          (and (< j@9@01 (Seq_length xs@2@01)) (not (= i@8@01 j@9@01)))))))
  (and
    (<= 0 i@8@01)
    (and
      (<= 0 j@9@01)
      (and
        (< i@8@01 (Seq_length xs@2@01))
        (and (< j@9@01 (Seq_length xs@2@01)) (not (= i@8@01 j@9@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@8@01 Int) (j@9@01 Int)) (!
  (and
    (=>
      (<= 0 i@8@01)
      (and
        (<= 0 i@8@01)
        (=>
          (<= 0 j@9@01)
          (and
            (<= 0 j@9@01)
            (=>
              (< i@8@01 (Seq_length xs@2@01))
              (and
                (< i@8@01 (Seq_length xs@2@01))
                (or
                  (< j@9@01 (Seq_length xs@2@01))
                  (not (< j@9@01 (Seq_length xs@2@01))))))
            (or
              (< i@8@01 (Seq_length xs@2@01))
              (not (< i@8@01 (Seq_length xs@2@01))))))
        (or (<= 0 j@9@01) (not (<= 0 j@9@01)))))
    (or (<= 0 i@8@01) (not (<= 0 i@8@01)))
    (=>
      (and
        (<= 0 i@8@01)
        (and
          (<= 0 j@9@01)
          (and
            (< i@8@01 (Seq_length xs@2@01))
            (and (< j@9@01 (Seq_length xs@2@01)) (not (= i@8@01 j@9@01))))))
      (and
        (<= 0 i@8@01)
        (<= 0 j@9@01)
        (< i@8@01 (Seq_length xs@2@01))
        (< j@9@01 (Seq_length xs@2@01))
        (not (= i@8@01 j@9@01))))
    (or
      (not
        (and
          (<= 0 i@8@01)
          (and
            (<= 0 j@9@01)
            (and
              (< i@8@01 (Seq_length xs@2@01))
              (and (< j@9@01 (Seq_length xs@2@01)) (not (= i@8@01 j@9@01)))))))
      (and
        (<= 0 i@8@01)
        (and
          (<= 0 j@9@01)
          (and
            (< i@8@01 (Seq_length xs@2@01))
            (and (< j@9@01 (Seq_length xs@2@01)) (not (= i@8@01 j@9@01))))))))
  :pattern ((Seq_index xs@2@01 i@8@01) (Seq_index xs@2@01 j@9@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@11@10@11@26-aux|)))
(assert (forall ((i@8@01 Int) (j@9@01 Int)) (!
  (=>
    (and
      (<= 0 i@8@01)
      (and
        (<= 0 j@9@01)
        (and
          (< i@8@01 (Seq_length xs@2@01))
          (and (< j@9@01 (Seq_length xs@2@01)) (not (= i@8@01 j@9@01))))))
    (not (= (Seq_index xs@2@01 i@8@01) (Seq_index xs@2@01 j@9@01))))
  :pattern ((Seq_index xs@2@01 i@8@01) (Seq_index xs@2@01 j@9@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@11@10@11@26|)))
(assert (=
  ($Snap.second ($Snap.second $t@4@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@4@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@4@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@4@01))) $Snap.unit))
; [eval] |xs| >= 1
; [eval] |xs|
(assert (>= (Seq_length xs@2@01) 1))
(declare-const sm@10@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@10@01  $FVF<f>) y@3@01)
  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second $t@4@01))))))
(assert (not (= y@3@01 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var toGo: Seq[Ref]
(declare-const toGo@11@01 Seq<$Ref>)
; [exec]
; var completed: Seq[Ref]
(declare-const completed@12@01 Seq<$Ref>)
; [exec]
; var some: Ref
(declare-const some@13@01 $Ref)
; [exec]
; xs[0].f := 0
; [eval] xs[0]
(push) ; 3
(assert (not (< 0 (Seq_length xs@2@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (= y@3@01 (Seq_index xs@2@01 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@14@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index xs@2@01 0))
    ($Perm.min
      (ite
        (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@15@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index xs@2@01 0))
    ($Perm.min
      (ite (= r y@3@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@14@01 r)))
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
        (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@14@01 r))
    $Perm.No)
  
  :qid |quant-u-20365|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@14@01 r) $Perm.No)
  
  :qid |quant-u-20366|))))
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
  (=> (= r (Seq_index xs@2@01 0)) (= (- $Perm.Write (pTaken@14@01 r)) $Perm.No))
  
  :qid |quant-u-20367|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@16@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_f (as sm@16@01  $FVF<f>) (Seq_index xs@2@01 0)) 0))
; [exec]
; y.f := 1
; Precomputing data for removing quantified permissions
(define-fun pTaken@17@01 ((r $Ref)) $Perm
  (ite
    (= r y@3@01)
    ($Perm.min (ite (= r y@3@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
(define-fun pTaken@18@01 ((r $Ref)) $Perm
  (ite
    (= r y@3@01)
    ($Perm.min
      (ite (= r (Seq_index xs@2@01 0)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@17@01 r)))
    $Perm.No))
(define-fun pTaken@19@01 ((r $Ref)) $Perm
  (ite
    (= r y@3@01)
    ($Perm.min
      (ite
        (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
        (- $Perm.Write (pTaken@14@01 r))
        $Perm.No)
      (- (- $Perm.Write (pTaken@17@01 r)) (pTaken@18@01 r)))
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
(assert (not (= (- $Perm.Write (pTaken@17@01 y@3@01)) $Perm.No)))
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
  (=> (= r y@3@01) (= (- $Perm.Write (pTaken@17@01 r)) $Perm.No))
  
  :qid |quant-u-20370|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@20@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_f (as sm@20@01  $FVF<f>) y@3@01) 1))
; [exec]
; label setupComplete
; [exec]
; toGo := xs
; [exec]
; completed := Seq[Ref]()
; [eval] Seq[Ref]()
(declare-const localX@21@01 $Ref)
(declare-const completed@22@01 Seq<$Ref>)
(declare-const toGo@23@01 Seq<$Ref>)
(set-option :timeout 0)
(push) ; 3
; Loop head block: Check well-definedness of invariant
(declare-const $t@24@01 $Snap)
(assert (= $t@24@01 ($Snap.combine ($Snap.first $t@24@01) ($Snap.second $t@24@01))))
(declare-const x@25@01 $Ref)
(push) ; 4
; [eval] (x in completed)
(assert (Seq_contains completed@22@01 x@25@01))
(pop) ; 4
(declare-fun inv@26@01 ($Ref $Perm $Ref $Perm $Ref $Perm $Ref $Ref) $Ref)
(declare-fun img@27@01 ($Ref $Perm $Ref $Perm $Ref $Perm $Ref $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@25@01 $Ref) (x2@25@01 $Ref)) (!
  (=>
    (and
      (Seq_contains completed@22@01 x1@25@01)
      (Seq_contains completed@22@01 x2@25@01)
      (= x1@25@01 x2@25@01))
    (= x1@25@01 x2@25@01))
  
  :qid |wand@0-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@25@01 $Ref)) (!
  (=>
    (Seq_contains completed@22@01 x@25@01)
    (and
      (=
        (inv@26@01 y@3@01 $Perm.Write x@25@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01)
        x@25@01)
      (img@27@01 y@3@01 $Perm.Write x@25@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01)))
  :pattern ((Seq_contains completed@22@01 x@25@01))
  :pattern ((Seq_contains_trigger completed@22@01 x@25@01))
  :pattern ((Seq_contains_trigger completed@22@01 x@25@01))
  :pattern ((inv@26@01 y@3@01 $Perm.Write x@25@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01))
  :pattern ((img@27@01 y@3@01 $Perm.Write x@25@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01))
  :qid |quant-u-20372|)))
(assert (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm) (x6 $Ref) (x7 $Ref)) (!
  (=>
    (and
      (img@27@01 x0 x1 x2 x3 x4 x5 x6 x7)
      (Seq_contains completed@22@01 (inv@26@01 x0 x1 x2 x3 x4 x5 x6 x7)))
    (and
      (= y@3@01 x0)
      (= $Perm.Write x1)
      (= (inv@26@01 x0 x1 x2 x3 x4 x5 x6 x7) x2)
      (= $Perm.Write x3)
      (= y@3@01 x4)
      (= $Perm.Write x5)
      (= y@3@01 x6)
      (= y@3@01 x7)))
  :pattern ((inv@26@01 x0 x1 x2 x3 x4 x5 x6 x7))
  :qid |wand@0-fctOfInv|)))
; Permissons are non-negative
(assert (=
  ($Snap.second $t@24@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@24@01))
    ($Snap.second ($Snap.second $t@24@01)))))
(assert (= ($Snap.first ($Snap.second $t@24@01)) $Snap.unit))
; [eval] (forall i: Int, j: Int :: { toGo[i], toGo[j] } 0 <= i && (0 <= j && (i < |toGo| && (j < |toGo| && i != j))) ==> toGo[i] != toGo[j])
(declare-const i@28@01 Int)
(declare-const j@29@01 Int)
(push) ; 4
; [eval] 0 <= i && (0 <= j && (i < |toGo| && (j < |toGo| && i != j))) ==> toGo[i] != toGo[j]
; [eval] 0 <= i && (0 <= j && (i < |toGo| && (j < |toGo| && i != j)))
; [eval] 0 <= i
(push) ; 5
; [then-branch: 5 | !(0 <= i@28@01) | live]
; [else-branch: 5 | 0 <= i@28@01 | live]
(push) ; 6
; [then-branch: 5 | !(0 <= i@28@01)]
(assert (not (<= 0 i@28@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 5 | 0 <= i@28@01]
(assert (<= 0 i@28@01))
; [eval] 0 <= j
(push) ; 7
; [then-branch: 6 | !(0 <= j@29@01) | live]
; [else-branch: 6 | 0 <= j@29@01 | live]
(push) ; 8
; [then-branch: 6 | !(0 <= j@29@01)]
(assert (not (<= 0 j@29@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 6 | 0 <= j@29@01]
(assert (<= 0 j@29@01))
; [eval] i < |toGo|
; [eval] |toGo|
(push) ; 9
; [then-branch: 7 | !(i@28@01 < |toGo@23@01|) | live]
; [else-branch: 7 | i@28@01 < |toGo@23@01| | live]
(push) ; 10
; [then-branch: 7 | !(i@28@01 < |toGo@23@01|)]
(assert (not (< i@28@01 (Seq_length toGo@23@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 7 | i@28@01 < |toGo@23@01|]
(assert (< i@28@01 (Seq_length toGo@23@01)))
; [eval] j < |toGo|
; [eval] |toGo|
(push) ; 11
; [then-branch: 8 | !(j@29@01 < |toGo@23@01|) | live]
; [else-branch: 8 | j@29@01 < |toGo@23@01| | live]
(push) ; 12
; [then-branch: 8 | !(j@29@01 < |toGo@23@01|)]
(assert (not (< j@29@01 (Seq_length toGo@23@01))))
(pop) ; 12
(push) ; 12
; [else-branch: 8 | j@29@01 < |toGo@23@01|]
(assert (< j@29@01 (Seq_length toGo@23@01)))
; [eval] i != j
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or
  (< j@29@01 (Seq_length toGo@23@01))
  (not (< j@29@01 (Seq_length toGo@23@01)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@28@01 (Seq_length toGo@23@01))
  (and
    (< i@28@01 (Seq_length toGo@23@01))
    (or
      (< j@29@01 (Seq_length toGo@23@01))
      (not (< j@29@01 (Seq_length toGo@23@01)))))))
(assert (or
  (< i@28@01 (Seq_length toGo@23@01))
  (not (< i@28@01 (Seq_length toGo@23@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@29@01)
  (and
    (<= 0 j@29@01)
    (=>
      (< i@28@01 (Seq_length toGo@23@01))
      (and
        (< i@28@01 (Seq_length toGo@23@01))
        (or
          (< j@29@01 (Seq_length toGo@23@01))
          (not (< j@29@01 (Seq_length toGo@23@01))))))
    (or
      (< i@28@01 (Seq_length toGo@23@01))
      (not (< i@28@01 (Seq_length toGo@23@01)))))))
(assert (or (<= 0 j@29@01) (not (<= 0 j@29@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@28@01)
  (and
    (<= 0 i@28@01)
    (=>
      (<= 0 j@29@01)
      (and
        (<= 0 j@29@01)
        (=>
          (< i@28@01 (Seq_length toGo@23@01))
          (and
            (< i@28@01 (Seq_length toGo@23@01))
            (or
              (< j@29@01 (Seq_length toGo@23@01))
              (not (< j@29@01 (Seq_length toGo@23@01))))))
        (or
          (< i@28@01 (Seq_length toGo@23@01))
          (not (< i@28@01 (Seq_length toGo@23@01))))))
    (or (<= 0 j@29@01) (not (<= 0 j@29@01))))))
(assert (or (<= 0 i@28@01) (not (<= 0 i@28@01))))
(push) ; 5
; [then-branch: 9 | 0 <= i@28@01 && 0 <= j@29@01 && i@28@01 < |toGo@23@01| && j@29@01 < |toGo@23@01| && i@28@01 != j@29@01 | live]
; [else-branch: 9 | !(0 <= i@28@01 && 0 <= j@29@01 && i@28@01 < |toGo@23@01| && j@29@01 < |toGo@23@01| && i@28@01 != j@29@01) | live]
(push) ; 6
; [then-branch: 9 | 0 <= i@28@01 && 0 <= j@29@01 && i@28@01 < |toGo@23@01| && j@29@01 < |toGo@23@01| && i@28@01 != j@29@01]
(assert (and
  (<= 0 i@28@01)
  (and
    (<= 0 j@29@01)
    (and
      (< i@28@01 (Seq_length toGo@23@01))
      (and (< j@29@01 (Seq_length toGo@23@01)) (not (= i@28@01 j@29@01)))))))
; [eval] toGo[i] != toGo[j]
; [eval] toGo[i]
(push) ; 7
(assert (not (>= i@28@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] toGo[j]
(push) ; 7
(assert (not (>= j@29@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 9 | !(0 <= i@28@01 && 0 <= j@29@01 && i@28@01 < |toGo@23@01| && j@29@01 < |toGo@23@01| && i@28@01 != j@29@01)]
(assert (not
  (and
    (<= 0 i@28@01)
    (and
      (<= 0 j@29@01)
      (and
        (< i@28@01 (Seq_length toGo@23@01))
        (and (< j@29@01 (Seq_length toGo@23@01)) (not (= i@28@01 j@29@01))))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (<= 0 i@28@01)
    (and
      (<= 0 j@29@01)
      (and
        (< i@28@01 (Seq_length toGo@23@01))
        (and (< j@29@01 (Seq_length toGo@23@01)) (not (= i@28@01 j@29@01))))))
  (and
    (<= 0 i@28@01)
    (<= 0 j@29@01)
    (< i@28@01 (Seq_length toGo@23@01))
    (< j@29@01 (Seq_length toGo@23@01))
    (not (= i@28@01 j@29@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i@28@01)
      (and
        (<= 0 j@29@01)
        (and
          (< i@28@01 (Seq_length toGo@23@01))
          (and (< j@29@01 (Seq_length toGo@23@01)) (not (= i@28@01 j@29@01)))))))
  (and
    (<= 0 i@28@01)
    (and
      (<= 0 j@29@01)
      (and
        (< i@28@01 (Seq_length toGo@23@01))
        (and (< j@29@01 (Seq_length toGo@23@01)) (not (= i@28@01 j@29@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@28@01 Int) (j@29@01 Int)) (!
  (and
    (=>
      (<= 0 i@28@01)
      (and
        (<= 0 i@28@01)
        (=>
          (<= 0 j@29@01)
          (and
            (<= 0 j@29@01)
            (=>
              (< i@28@01 (Seq_length toGo@23@01))
              (and
                (< i@28@01 (Seq_length toGo@23@01))
                (or
                  (< j@29@01 (Seq_length toGo@23@01))
                  (not (< j@29@01 (Seq_length toGo@23@01))))))
            (or
              (< i@28@01 (Seq_length toGo@23@01))
              (not (< i@28@01 (Seq_length toGo@23@01))))))
        (or (<= 0 j@29@01) (not (<= 0 j@29@01)))))
    (or (<= 0 i@28@01) (not (<= 0 i@28@01)))
    (=>
      (and
        (<= 0 i@28@01)
        (and
          (<= 0 j@29@01)
          (and
            (< i@28@01 (Seq_length toGo@23@01))
            (and (< j@29@01 (Seq_length toGo@23@01)) (not (= i@28@01 j@29@01))))))
      (and
        (<= 0 i@28@01)
        (<= 0 j@29@01)
        (< i@28@01 (Seq_length toGo@23@01))
        (< j@29@01 (Seq_length toGo@23@01))
        (not (= i@28@01 j@29@01))))
    (or
      (not
        (and
          (<= 0 i@28@01)
          (and
            (<= 0 j@29@01)
            (and
              (< i@28@01 (Seq_length toGo@23@01))
              (and (< j@29@01 (Seq_length toGo@23@01)) (not (= i@28@01 j@29@01)))))))
      (and
        (<= 0 i@28@01)
        (and
          (<= 0 j@29@01)
          (and
            (< i@28@01 (Seq_length toGo@23@01))
            (and (< j@29@01 (Seq_length toGo@23@01)) (not (= i@28@01 j@29@01))))))))
  :pattern ((Seq_index toGo@23@01 i@28@01) (Seq_index toGo@23@01 j@29@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@21@15@21@117-aux|)))
(assert (forall ((i@28@01 Int) (j@29@01 Int)) (!
  (=>
    (and
      (<= 0 i@28@01)
      (and
        (<= 0 j@29@01)
        (and
          (< i@28@01 (Seq_length toGo@23@01))
          (and (< j@29@01 (Seq_length toGo@23@01)) (not (= i@28@01 j@29@01))))))
    (not (= (Seq_index toGo@23@01 i@28@01) (Seq_index toGo@23@01 j@29@01))))
  :pattern ((Seq_index toGo@23@01 i@28@01) (Seq_index toGo@23@01 j@29@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@21@15@21@117|)))
(assert (=
  ($Snap.second ($Snap.second $t@24@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@24@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))
(declare-const x@30@01 $Ref)
(push) ; 4
; [eval] (x in toGo)
(assert (Seq_contains toGo@23@01 x@30@01))
(pop) ; 4
(declare-fun inv@31@01 ($Ref) $Ref)
(declare-fun img@32@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@30@01 $Ref) (x2@30@01 $Ref)) (!
  (=>
    (and
      (Seq_contains toGo@23@01 x1@30@01)
      (Seq_contains toGo@23@01 x2@30@01)
      (= x1@30@01 x2@30@01))
    (= x1@30@01 x2@30@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@30@01 $Ref)) (!
  (=>
    (Seq_contains toGo@23@01 x@30@01)
    (and (= (inv@31@01 x@30@01) x@30@01) (img@32@01 x@30@01)))
  :pattern ((Seq_contains toGo@23@01 x@30@01))
  :pattern ((Seq_contains_trigger toGo@23@01 x@30@01))
  :pattern ((Seq_contains_trigger toGo@23@01 x@30@01))
  :pattern ((inv@31@01 x@30@01))
  :pattern ((img@32@01 x@30@01))
  :qid |quant-u-20374|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
    (= (inv@31@01 r) r))
  :pattern ((inv@31@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@30@01 $Ref)) (!
  (=> (Seq_contains toGo@23@01 x@30@01) (not (= x@30@01 $Ref.null)))
  :pattern ((Seq_contains toGo@23@01 x@30@01))
  :pattern ((Seq_contains_trigger toGo@23@01 x@30@01))
  :pattern ((Seq_contains_trigger toGo@23@01 x@30@01))
  :pattern ((inv@31@01 x@30@01))
  :pattern ((img@32@01 x@30@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@24@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@24@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@24@01))))
  $Snap.unit))
; [eval] xs == completed ++ toGo
; [eval] completed ++ toGo
(assert (Seq_equal xs@2@01 (Seq_append completed@22@01 toGo@23@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))
  $Snap.unit))
; [eval] (forall x: Ref :: { (x in toGo) } (x in toGo) ==> x.f == old[setupComplete](x.f))
(declare-const x@33@01 $Ref)
(push) ; 4
; [eval] (x in toGo) ==> x.f == old[setupComplete](x.f)
; [eval] (x in toGo)
(push) ; 5
; [then-branch: 10 | x@33@01 in toGo@23@01 | live]
; [else-branch: 10 | !(x@33@01 in toGo@23@01) | live]
(push) ; 6
; [then-branch: 10 | x@33@01 in toGo@23@01]
(assert (Seq_contains toGo@23@01 x@33@01))
; [eval] x.f == old[setupComplete](x.f)
(push) ; 7
(assert (not (and (img@32@01 x@33@01) (Seq_contains toGo@23@01 (inv@31@01 x@33@01)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] old[setupComplete](x.f)
(declare-const sm@34@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@20@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@20@01  $FVF<f>) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@14@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@2@01 0))
    (=
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@16@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
  :qid |qp.fvfValDef2|)))
(declare-const pm@35@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@35@01  $FPM) r)
    (+
      (+
        (ite (= r y@3@01) $Perm.Write $Perm.No)
        (ite
          (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
          (- $Perm.Write (pTaken@14@01 r))
          $Perm.No))
      (ite (= r (Seq_index xs@2@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@35@01  $FPM) r))
  :qid |qp.resPrmSumDef3|)))
(push) ; 7
(assert (not (< $Perm.No ($FVF.perm_f (as pm@35@01  $FPM) x@33@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 10 | !(x@33@01 in toGo@23@01)]
(assert (not (Seq_contains toGo@23@01 x@33@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@20@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@20@01  $FVF<f>) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@14@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@2@01 0))
    (=
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@16@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
  :qid |qp.fvfValDef2|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@35@01  $FPM) r)
    (+
      (+
        (ite (= r y@3@01) $Perm.Write $Perm.No)
        (ite
          (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
          (- $Perm.Write (pTaken@14@01 r))
          $Perm.No))
      (ite (= r (Seq_index xs@2@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@35@01  $FPM) r))
  :qid |qp.resPrmSumDef3|)))
; Joined path conditions
(assert (or (not (Seq_contains toGo@23@01 x@33@01)) (Seq_contains toGo@23@01 x@33@01)))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@20@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@20@01  $FVF<f>) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@14@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@2@01 0))
    (=
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@16@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
  :qid |qp.fvfValDef2|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@35@01  $FPM) r)
    (+
      (+
        (ite (= r y@3@01) $Perm.Write $Perm.No)
        (ite
          (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
          (- $Perm.Write (pTaken@14@01 r))
          $Perm.No))
      (ite (= r (Seq_index xs@2@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@35@01  $FPM) r))
  :qid |qp.resPrmSumDef3|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@33@01 $Ref)) (!
  (or (not (Seq_contains toGo@23@01 x@33@01)) (Seq_contains toGo@23@01 x@33@01))
  :pattern ((Seq_contains toGo@23@01 x@33@01))
  :pattern ((Seq_contains_trigger toGo@23@01 x@33@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@24@15@24@76-aux|)))
(assert (forall ((x@33@01 $Ref)) (!
  (or (not (Seq_contains toGo@23@01 x@33@01)) (Seq_contains toGo@23@01 x@33@01))
  :pattern ((Seq_contains_trigger toGo@23@01 x@33@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@24@15@24@76-aux|)))
(assert (forall ((x@33@01 $Ref)) (!
  (=>
    (Seq_contains toGo@23@01 x@33@01)
    (=
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) x@33@01)
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) x@33@01)))
  :pattern ((Seq_contains toGo@23@01 x@33@01))
  :pattern ((Seq_contains_trigger toGo@23@01 x@33@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@24@15@24@76|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))
(declare-const sm@36@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@36@01  $FVF<f>) y@3@01)
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))
  $Snap.unit))
; [eval] y.f == 1
(declare-const sm@37@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@36@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@36@01  $FVF<f>) r))
  :qid |qp.fvfValDef5|)))
(declare-const pm@38@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@38@01  $FPM) r)
    (+
      (ite
        (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
        $Perm.Write
        $Perm.No)
      (ite (= r y@3@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@38@01  $FPM) r))
  :qid |qp.resPrmSumDef6|)))
(push) ; 4
(assert (not (< $Perm.No ($FVF.perm_f (as pm@38@01  $FPM) y@3@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (= ($FVF.lookup_f (as sm@37@01  $FVF<f>) y@3@01) 1))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))
  $Snap.unit))
; [eval] (forall x: Ref :: { (x in completed) } (x in completed) ==> (applying acc(y.f, write) --* acc(x.f, write) && (acc(y.f, write) && y.f == old[lhs](y.f)) in x.f == old[setupComplete](x.f)))
(declare-const x@39@01 $Ref)
(push) ; 4
; [eval] (x in completed) ==> (applying acc(y.f, write) --* acc(x.f, write) && (acc(y.f, write) && y.f == old[lhs](y.f)) in x.f == old[setupComplete](x.f))
; [eval] (x in completed)
(push) ; 5
; [then-branch: 11 | x@39@01 in completed@22@01 | live]
; [else-branch: 11 | !(x@39@01 in completed@22@01) | live]
(push) ; 6
; [then-branch: 11 | x@39@01 in completed@22@01]
(assert (Seq_contains completed@22@01 x@39@01))
; [eval] (applying acc(y.f, write) --* acc(x.f, write) && (acc(y.f, write) && y.f == old[lhs](y.f)) in x.f == old[setupComplete](x.f))
(push) ; 7
; Precomputing data for removing quantified permissions
(define-fun pTaken@40@01 ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm) (x6 $Ref) (x7 $Ref) (x@39@01 $Ref)) $Perm
  (ite
    (and
      (= x0 y@3@01)
      (= x1 $Perm.Write)
      (= x2 x@39@01)
      (= x3 $Perm.Write)
      (= x4 y@3@01)
      (= x5 $Perm.Write)
      (= x6 y@3@01)
      (= x7 y@3@01))
    ($Perm.min
      (ite
        (and
          (img@27@01 x0 x1 x2 x3 x4 x5 x6 x7)
          (Seq_contains completed@22@01 (inv@26@01 x0 x1 x2 x3 x4 x5 x6 x7)))
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
(push) ; 8
(set-option :timeout 500)
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm) (x6 $Ref) (x7 $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@27@01 x0 x1 x2 x3 x4 x5 x6 x7)
          (Seq_contains completed@22@01 (inv@26@01 x0 x1 x2 x3 x4 x5 x6 x7)))
        $Perm.Write
        $Perm.No)
      (pTaken@40@01 x0 x1 x2 x3 x4 x5 x6 x7 x@39@01))
    $Perm.No)
  
  :qid |quant-u-20376|))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm) (x6 $Ref) (x7 $Ref)) (!
  (= (pTaken@40@01 x0 x1 x2 x3 x4 x5 x6 x7 x@39@01) $Perm.No)
  
  :qid |quant-u-20377|))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 500)
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm) (x6 $Ref) (x7 $Ref)) (!
  (=>
    (and
      (= x0 y@3@01)
      (= x1 $Perm.Write)
      (= x2 x@39@01)
      (= x3 $Perm.Write)
      (= x4 y@3@01)
      (= x5 $Perm.Write)
      (= x6 y@3@01)
      (= x7 y@3@01))
    (= (- $Perm.Write (pTaken@40@01 x0 x1 x2 x3 x4 x5 x6 x7 x@39@01)) $Perm.No))
  
  :qid |quant-u-20378|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@41@01 $PSF<wand@0>)
(declare-const s@42@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@27@01 y@3@01 $Perm.Write x@39@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01)
    (Seq_contains
      completed@22@01
      (inv@26@01 y@3@01 $Perm.Write x@39@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01)))
  (and
    (not
      (=
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($SortWrappers.$RefTo$Snap y@3@01)
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap x@39@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$RefTo$Snap y@3@01))
        $Snap.unit))
    (=
      ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap x@39@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01)))
      ($PSF.lookup_wand@0 ($SortWrappers.$SnapTo$PSF<wand@0> ($Snap.first $t@24@01)) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap x@39@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01)))))))
; Precomputing data for removing quantified permissions
(define-fun pTaken@43@01 ((r $Ref) (x@39@01 $Ref)) $Perm
  (ite
    (= r y@3@01)
    ($Perm.min (ite (= r y@3@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
(define-fun pTaken@44@01 ((r $Ref) (x@39@01 $Ref)) $Perm
  (ite
    (= r y@3@01)
    ($Perm.min
      (ite
        (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@43@01 r x@39@01)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@43@01 y@3@01 x@39@01)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=> (= r y@3@01) (= (- $Perm.Write (pTaken@43@01 r x@39@01)) $Perm.No))
  
  :qid |quant-u-20381|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@45@01 $FVF<f>)
; Definitional axioms for snapshot map values (instantiated)
(assert (=
  ($FVF.lookup_f (as sm@45@01  $FVF<f>) y@3@01)
  ($FVF.lookup_f (as sm@36@01  $FVF<f>) y@3@01)))
(assert (=>
  (and (img@32@01 y@3@01) (Seq_contains toGo@23@01 (inv@31@01 y@3@01)))
  (=
    ($FVF.lookup_f (as sm@45@01  $FVF<f>) y@3@01)
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) y@3@01))))
(assert (=
  ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@45@01  $FVF<f>) y@3@01))
  ($Snap.first ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap y@3@01)
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap x@39@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@3@01))
    ($SortWrappers.$RefTo$Snap y@3@01))))))
(assert (=
  ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap y@3@01)
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap x@39@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@3@01))
    ($SortWrappers.$RefTo$Snap y@3@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@3@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap x@39@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@3@01))
      ($SortWrappers.$RefTo$Snap y@3@01)))))
    ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@3@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap x@39@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@3@01))
      ($SortWrappers.$RefTo$Snap y@3@01))))))))
(declare-fun sm@46@01 ($Ref) $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (sm@46@01 x@39@01) x@39@01)
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap y@3@01)
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap x@39@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@3@01))
    ($SortWrappers.$RefTo$Snap y@3@01))))))))
(assert (not (= x@39@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap y@3@01)
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap x@39@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@3@01))
    ($SortWrappers.$RefTo$Snap y@3@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@3@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap x@39@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@3@01))
      ($SortWrappers.$RefTo$Snap y@3@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@3@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap x@39@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@3@01))
      ($SortWrappers.$RefTo$Snap y@3@01)))))))))
(declare-const sm@47@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@47@01  $FVF<f>) y@3@01)
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap y@3@01)
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap x@39@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@3@01))
    ($SortWrappers.$RefTo$Snap y@3@01)))))))))
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (= y@3@01 x@39@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap y@3@01)
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap x@39@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@3@01))
    ($SortWrappers.$RefTo$Snap y@3@01))))))
  $Snap.unit))
; [eval] y.f == old[lhs](y.f)
(declare-const sm@48@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
    (=
      ($FVF.lookup_f (as sm@48@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@48@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
  :qid |qp.fvfValDef10|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@39@01)
    (=
      ($FVF.lookup_f (as sm@48@01  $FVF<f>) r)
      ($FVF.lookup_f (sm@46@01 x@39@01) r)))
  :pattern (($FVF.lookup_f (as sm@48@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (sm@46@01 x@39@01) r))
  :qid |qp.fvfValDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@48@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@47@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@48@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@47@01  $FVF<f>) r))
  :qid |qp.fvfValDef12|)))
(declare-const pm@49@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@49@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
          $Perm.Write
          $Perm.No)
        (ite (= r x@39@01) $Perm.Write $Perm.No))
      (ite (= r y@3@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@49@01  $FPM) r))
  :qid |qp.resPrmSumDef13|)))
(set-option :timeout 0)
(push) ; 8
(assert (not (< $Perm.No ($FVF.perm_f (as pm@49@01  $FPM) y@3@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] old[lhs](y.f)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r y@3@01)
      (=
        ($FVF.lookup_f (as sm@45@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@36@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@45@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@36@01  $FVF<f>) r))
    :qid |qp.fvfValDef8|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
      (=
        ($FVF.lookup_f (as sm@45@01  $FVF<f>) r)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
    :pattern (($FVF.lookup_f (as sm@45@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
    :qid |qp.fvfValDef9|))))
(push) ; 8
(assert (not (<
  $Perm.No
  (+
    $Perm.Write
    (ite
      (and (img@32@01 y@3@01) (Seq_contains toGo@23@01 (inv@31@01 y@3@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_f (as sm@48@01  $FVF<f>) y@3@01)
  ($FVF.lookup_f (as sm@45@01  $FVF<f>) y@3@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (= x@39@01 y@3@01)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (not
  (=
    ($FVF.lookup_f (sm@46@01 x@39@01) x@39@01)
    ($FVF.lookup_f (as sm@47@01  $FVF<f>) y@3@01)))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (not
  (=
    ($FVF.lookup_f (as sm@47@01  $FVF<f>) y@3@01)
    ($FVF.lookup_f (sm@46@01 x@39@01) x@39@01)))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (and (not (= x@39@01 y@3@01)) (not (= y@3@01 x@39@01))))
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@49@01  $FPM) r) $Perm.Write)
  :pattern ((inv@31@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@49@01  $FPM) x@39@01) $Perm.Write))
(assert (<= ($FVF.perm_f (as pm@49@01  $FPM) y@3@01) $Perm.Write))
; [eval] x.f == old[setupComplete](x.f)
(declare-const sm@50@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@50@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@47@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@50@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@47@01  $FVF<f>) r))
  :qid |qp.fvfValDef14|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@39@01)
    (=
      ($FVF.lookup_f (as sm@50@01  $FVF<f>) r)
      ($FVF.lookup_f (sm@46@01 x@39@01) r)))
  :pattern (($FVF.lookup_f (as sm@50@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (sm@46@01 x@39@01) r))
  :qid |qp.fvfValDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
    (=
      ($FVF.lookup_f (as sm@50@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@50@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
  :qid |qp.fvfValDef16|)))
(declare-const pm@51@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@51@01  $FPM) r)
    (+
      (+
        (ite (= r y@3@01) $Perm.Write $Perm.No)
        (ite (= r x@39@01) $Perm.Write $Perm.No))
      (ite
        (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@51@01  $FPM) r))
  :qid |qp.resPrmSumDef17|)))
(set-option :timeout 0)
(push) ; 8
(assert (not (< $Perm.No ($FVF.perm_f (as pm@51@01  $FPM) x@39@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] old[setupComplete](x.f)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r y@3@01)
      (=
        ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@20@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@20@01  $FVF<f>) r))
    :qid |qp.fvfValDef0|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
        (< $Perm.No (- $Perm.Write (pTaken@14@01 r)))
        false)
      (=
        ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r)))
    :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r))
    :qid |qp.fvfValDef1|))
  (forall ((r $Ref)) (!
    (=>
      (= r (Seq_index xs@2@01 0))
      (=
        ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@16@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
    :qid |qp.fvfValDef2|))))
(push) ; 8
(assert (not (<
  $Perm.No
  (+
    (+
      (ite (= x@39@01 y@3@01) $Perm.Write $Perm.No)
      (ite
        (and (img@7@01 x@39@01) (Seq_contains xs@2@01 (inv@6@01 x@39@01)))
        (- $Perm.Write (pTaken@14@01 x@39@01))
        $Perm.No))
    (ite (= x@39@01 (Seq_index xs@2@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@49@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
          $Perm.Write
          $Perm.No)
        (ite (= r x@39@01) $Perm.Write $Perm.No))
      (ite (= r y@3@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@49@01  $FPM) r))
  :qid |qp.resPrmSumDef13|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@45@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@36@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@45@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@36@01  $FVF<f>) r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
    (=
      ($FVF.lookup_f (as sm@45@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@45@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@51@01  $FPM) r)
    (+
      (+
        (ite (= r y@3@01) $Perm.Write $Perm.No)
        (ite (= r x@39@01) $Perm.Write $Perm.No))
      (ite
        (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@51@01  $FPM) r))
  :qid |qp.resPrmSumDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@20@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@20@01  $FVF<f>) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@14@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@2@01 0))
    (=
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@16@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
  :qid |qp.fvfValDef2|)))
(assert (and
  (=>
    (and
      (img@27@01 y@3@01 $Perm.Write x@39@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01)
      (Seq_contains
        completed@22@01
        (inv@26@01 y@3@01 $Perm.Write x@39@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01)))
    (and
      (not
        (=
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@39@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01))
          $Snap.unit))
      (=
        ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($SortWrappers.$RefTo$Snap y@3@01)
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap x@39@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$RefTo$Snap y@3@01)))
        ($PSF.lookup_wand@0 ($SortWrappers.$SnapTo$PSF<wand@0> ($Snap.first $t@24@01)) ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($SortWrappers.$RefTo$Snap y@3@01)
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap x@39@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$RefTo$Snap y@3@01))))))
  (=
    ($FVF.lookup_f (as sm@45@01  $FVF<f>) y@3@01)
    ($FVF.lookup_f (as sm@36@01  $FVF<f>) y@3@01))
  (=>
    (and (img@32@01 y@3@01) (Seq_contains toGo@23@01 (inv@31@01 y@3@01)))
    (=
      ($FVF.lookup_f (as sm@45@01  $FVF<f>) y@3@01)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) y@3@01)))
  (=
    ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@45@01  $FVF<f>) y@3@01))
    ($Snap.first ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@3@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap x@39@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@3@01))
      ($SortWrappers.$RefTo$Snap y@3@01)))))
  (=
    ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@3@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap x@39@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@3@01))
      ($SortWrappers.$RefTo$Snap y@3@01))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap x@39@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01)))))
      ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap x@39@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01)))))))))
(assert (and
  (=
    ($FVF.lookup_f (sm@46@01 x@39@01) x@39@01)
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@3@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap x@39@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@3@01))
      ($SortWrappers.$RefTo$Snap y@3@01)))))))
  (not (= x@39@01 $Ref.null))
  (=
    ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@3@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap x@39@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@3@01))
      ($SortWrappers.$RefTo$Snap y@3@01)))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap x@39@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01))))))
      ($Snap.second ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap x@39@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01))))))))))
(assert (and
  (=
    ($FVF.lookup_f (as sm@47@01  $FVF<f>) y@3@01)
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@3@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap x@39@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@3@01))
      ($SortWrappers.$RefTo$Snap y@3@01))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@3@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap x@39@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@3@01))
      ($SortWrappers.$RefTo$Snap y@3@01))))))
    $Snap.unit)
  (forall ((r $Ref)) (!
    (=>
      (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
      (=
        ($FVF.lookup_f (as sm@48@01  $FVF<f>) r)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
    :pattern (($FVF.lookup_f (as sm@48@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
    :qid |qp.fvfValDef10|))
  (forall ((r $Ref)) (!
    (=>
      (= r x@39@01)
      (=
        ($FVF.lookup_f (as sm@48@01  $FVF<f>) r)
        ($FVF.lookup_f (sm@46@01 x@39@01) r)))
    :pattern (($FVF.lookup_f (as sm@48@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (sm@46@01 x@39@01) r))
    :qid |qp.fvfValDef11|))
  (forall ((r $Ref)) (!
    (=>
      (= r y@3@01)
      (=
        ($FVF.lookup_f (as sm@48@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@47@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@48@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@47@01  $FVF<f>) r))
    :qid |qp.fvfValDef12|))
  (=
    ($FVF.lookup_f (as sm@48@01  $FVF<f>) y@3@01)
    ($FVF.lookup_f (as sm@45@01  $FVF<f>) y@3@01))
  (not (= x@39@01 y@3@01))
  (not (= y@3@01 x@39@01))
  (forall ((r $Ref)) (!
    (<= ($FVF.perm_f (as pm@49@01  $FPM) r) $Perm.Write)
    :pattern ((inv@31@01 r))
    :qid |qp-fld-prm-bnd|))
  (<= ($FVF.perm_f (as pm@49@01  $FPM) x@39@01) $Perm.Write)
  (<= ($FVF.perm_f (as pm@49@01  $FPM) y@3@01) $Perm.Write)
  (forall ((r $Ref)) (!
    (=>
      (= r y@3@01)
      (=
        ($FVF.lookup_f (as sm@50@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@47@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@50@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@47@01  $FVF<f>) r))
    :qid |qp.fvfValDef14|))
  (forall ((r $Ref)) (!
    (=>
      (= r x@39@01)
      (=
        ($FVF.lookup_f (as sm@50@01  $FVF<f>) r)
        ($FVF.lookup_f (sm@46@01 x@39@01) r)))
    :pattern (($FVF.lookup_f (as sm@50@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (sm@46@01 x@39@01) r))
    :qid |qp.fvfValDef15|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
      (=
        ($FVF.lookup_f (as sm@50@01  $FVF<f>) r)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
    :pattern (($FVF.lookup_f (as sm@50@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
    :qid |qp.fvfValDef16|))))
(pop) ; 6
(push) ; 6
; [else-branch: 11 | !(x@39@01 in completed@22@01)]
(assert (not (Seq_contains completed@22@01 x@39@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@49@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
          $Perm.Write
          $Perm.No)
        (ite (= r x@39@01) $Perm.Write $Perm.No))
      (ite (= r y@3@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@49@01  $FPM) r))
  :qid |qp.resPrmSumDef13|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@45@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@36@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@45@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@36@01  $FVF<f>) r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
    (=
      ($FVF.lookup_f (as sm@45@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@45@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@51@01  $FPM) r)
    (+
      (+
        (ite (= r y@3@01) $Perm.Write $Perm.No)
        (ite (= r x@39@01) $Perm.Write $Perm.No))
      (ite
        (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@51@01  $FPM) r))
  :qid |qp.resPrmSumDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@20@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@20@01  $FVF<f>) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@14@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@2@01 0))
    (=
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@16@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
  :qid |qp.fvfValDef2|)))
(assert (=>
  (Seq_contains completed@22@01 x@39@01)
  (and
    (Seq_contains completed@22@01 x@39@01)
    (=>
      (and
        (img@27@01 y@3@01 $Perm.Write x@39@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01)
        (Seq_contains
          completed@22@01
          (inv@26@01 y@3@01 $Perm.Write x@39@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01)))
      (and
        (not
          (=
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($SortWrappers.$RefTo$Snap y@3@01)
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap x@39@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$RefTo$Snap y@3@01))
            $Snap.unit))
        (=
          ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@39@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01)))
          ($PSF.lookup_wand@0 ($SortWrappers.$SnapTo$PSF<wand@0> ($Snap.first $t@24@01)) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@39@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01))))))
    (=
      ($FVF.lookup_f (as sm@45@01  $FVF<f>) y@3@01)
      ($FVF.lookup_f (as sm@36@01  $FVF<f>) y@3@01))
    (=>
      (and (img@32@01 y@3@01) (Seq_contains toGo@23@01 (inv@31@01 y@3@01)))
      (=
        ($FVF.lookup_f (as sm@45@01  $FVF<f>) y@3@01)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) y@3@01)))
    (=
      ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@45@01  $FVF<f>) y@3@01))
      ($Snap.first ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap x@39@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01)))))
    (=
      ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap x@39@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($SortWrappers.$RefTo$Snap y@3@01)
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap x@39@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$RefTo$Snap y@3@01)))))
        ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($SortWrappers.$RefTo$Snap y@3@01)
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap x@39@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$RefTo$Snap y@3@01)))))))
    (=
      ($FVF.lookup_f (sm@46@01 x@39@01) x@39@01)
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap x@39@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01)))))))
    (not (= x@39@01 $Ref.null))
    (=
      ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap x@39@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01)))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($SortWrappers.$RefTo$Snap y@3@01)
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap x@39@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$RefTo$Snap y@3@01))))))
        ($Snap.second ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($SortWrappers.$RefTo$Snap y@3@01)
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap x@39@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$RefTo$Snap y@3@01))))))))
    (=
      ($FVF.lookup_f (as sm@47@01  $FVF<f>) y@3@01)
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap x@39@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap x@39@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01))))))
      $Snap.unit)
    (forall ((r $Ref)) (!
      (=>
        (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
        (=
          ($FVF.lookup_f (as sm@48@01  $FVF<f>) r)
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
      :pattern (($FVF.lookup_f (as sm@48@01  $FVF<f>) r))
      :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
      :qid |qp.fvfValDef10|))
    (forall ((r $Ref)) (!
      (=>
        (= r x@39@01)
        (=
          ($FVF.lookup_f (as sm@48@01  $FVF<f>) r)
          ($FVF.lookup_f (sm@46@01 x@39@01) r)))
      :pattern (($FVF.lookup_f (as sm@48@01  $FVF<f>) r))
      :pattern (($FVF.lookup_f (sm@46@01 x@39@01) r))
      :qid |qp.fvfValDef11|))
    (forall ((r $Ref)) (!
      (=>
        (= r y@3@01)
        (=
          ($FVF.lookup_f (as sm@48@01  $FVF<f>) r)
          ($FVF.lookup_f (as sm@47@01  $FVF<f>) r)))
      :pattern (($FVF.lookup_f (as sm@48@01  $FVF<f>) r))
      :pattern (($FVF.lookup_f (as sm@47@01  $FVF<f>) r))
      :qid |qp.fvfValDef12|))
    (=
      ($FVF.lookup_f (as sm@48@01  $FVF<f>) y@3@01)
      ($FVF.lookup_f (as sm@45@01  $FVF<f>) y@3@01))
    (not (= x@39@01 y@3@01))
    (not (= y@3@01 x@39@01))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@49@01  $FPM) r) $Perm.Write)
      :pattern ((inv@31@01 r))
      :qid |qp-fld-prm-bnd|))
    (<= ($FVF.perm_f (as pm@49@01  $FPM) x@39@01) $Perm.Write)
    (<= ($FVF.perm_f (as pm@49@01  $FPM) y@3@01) $Perm.Write)
    (forall ((r $Ref)) (!
      (=>
        (= r y@3@01)
        (=
          ($FVF.lookup_f (as sm@50@01  $FVF<f>) r)
          ($FVF.lookup_f (as sm@47@01  $FVF<f>) r)))
      :pattern (($FVF.lookup_f (as sm@50@01  $FVF<f>) r))
      :pattern (($FVF.lookup_f (as sm@47@01  $FVF<f>) r))
      :qid |qp.fvfValDef14|))
    (forall ((r $Ref)) (!
      (=>
        (= r x@39@01)
        (=
          ($FVF.lookup_f (as sm@50@01  $FVF<f>) r)
          ($FVF.lookup_f (sm@46@01 x@39@01) r)))
      :pattern (($FVF.lookup_f (as sm@50@01  $FVF<f>) r))
      :pattern (($FVF.lookup_f (sm@46@01 x@39@01) r))
      :qid |qp.fvfValDef15|))
    (forall ((r $Ref)) (!
      (=>
        (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
        (=
          ($FVF.lookup_f (as sm@50@01  $FVF<f>) r)
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
      :pattern (($FVF.lookup_f (as sm@50@01  $FVF<f>) r))
      :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
      :qid |qp.fvfValDef16|)))))
; Joined path conditions
(assert (or
  (not (Seq_contains completed@22@01 x@39@01))
  (Seq_contains completed@22@01 x@39@01)))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@49@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
          $Perm.Write
          $Perm.No)
        (ite (= r x@39@01) $Perm.Write $Perm.No))
      (ite (= r y@3@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@49@01  $FPM) r))
  :qid |qp.resPrmSumDef13|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@45@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@36@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@45@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@36@01  $FVF<f>) r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
    (=
      ($FVF.lookup_f (as sm@45@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@45@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@51@01  $FPM) r)
    (+
      (+
        (ite (= r y@3@01) $Perm.Write $Perm.No)
        (ite (= r x@39@01) $Perm.Write $Perm.No))
      (ite
        (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@51@01  $FPM) r))
  :qid |qp.resPrmSumDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@20@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@20@01  $FVF<f>) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@14@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@2@01 0))
    (=
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@16@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
  :qid |qp.fvfValDef2|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@39@01 $Ref)) (!
  (and
    (=>
      (Seq_contains completed@22@01 x@39@01)
      (and
        (Seq_contains completed@22@01 x@39@01)
        (=>
          (and
            (img@27@01 y@3@01 $Perm.Write x@39@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01)
            (Seq_contains
              completed@22@01
              (inv@26@01 y@3@01 $Perm.Write x@39@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01)))
          (and
            (not
              (=
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($Snap.combine
                            ($Snap.combine
                              ($SortWrappers.$RefTo$Snap y@3@01)
                              ($SortWrappers.$PermTo$Snap $Perm.Write))
                            ($SortWrappers.$RefTo$Snap x@39@01))
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap y@3@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                $Snap.unit))
            (=
              ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($Snap.combine
                            ($SortWrappers.$RefTo$Snap y@3@01)
                            ($SortWrappers.$PermTo$Snap $Perm.Write))
                          ($SortWrappers.$RefTo$Snap x@39@01))
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap y@3@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$RefTo$Snap y@3@01)))
              ($PSF.lookup_wand@0 ($SortWrappers.$SnapTo$PSF<wand@0> ($Snap.first $t@24@01)) ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($Snap.combine
                            ($SortWrappers.$RefTo$Snap y@3@01)
                            ($SortWrappers.$PermTo$Snap $Perm.Write))
                          ($SortWrappers.$RefTo$Snap x@39@01))
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap y@3@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$RefTo$Snap y@3@01))))))
        (=
          ($FVF.lookup_f (as sm@45@01  $FVF<f>) y@3@01)
          ($FVF.lookup_f (as sm@36@01  $FVF<f>) y@3@01))
        (=>
          (and (img@32@01 y@3@01) (Seq_contains toGo@23@01 (inv@31@01 y@3@01)))
          (=
            ($FVF.lookup_f (as sm@45@01  $FVF<f>) y@3@01)
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) y@3@01)))
        (=
          ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@45@01  $FVF<f>) y@3@01))
          ($Snap.first ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@39@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01)))))
        (=
          ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@39@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($SortWrappers.$RefTo$Snap y@3@01)
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap x@39@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$RefTo$Snap y@3@01)))))
            ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($SortWrappers.$RefTo$Snap y@3@01)
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap x@39@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$RefTo$Snap y@3@01)))))))
        (=
          ($FVF.lookup_f (sm@46@01 x@39@01) x@39@01)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@39@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01)))))))
        (not (= x@39@01 $Ref.null))
        (=
          ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@39@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01)))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($SortWrappers.$RefTo$Snap y@3@01)
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap x@39@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$RefTo$Snap y@3@01))))))
            ($Snap.second ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($SortWrappers.$RefTo$Snap y@3@01)
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap x@39@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$RefTo$Snap y@3@01))))))))
        (=
          ($FVF.lookup_f (as sm@47@01  $FVF<f>) y@3@01)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@39@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@39@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01))))))
          $Snap.unit)
        (forall ((r $Ref)) (!
          (=>
            (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
            (=
              ($FVF.lookup_f (as sm@48@01  $FVF<f>) r)
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
          :pattern (($FVF.lookup_f (as sm@48@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
          :qid |qp.fvfValDef10|))
        (forall ((r $Ref)) (!
          (=>
            (= r x@39@01)
            (=
              ($FVF.lookup_f (as sm@48@01  $FVF<f>) r)
              ($FVF.lookup_f (sm@46@01 x@39@01) r)))
          :pattern (($FVF.lookup_f (as sm@48@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f (sm@46@01 x@39@01) r))
          :qid |qp.fvfValDef11|))
        (forall ((r $Ref)) (!
          (=>
            (= r y@3@01)
            (=
              ($FVF.lookup_f (as sm@48@01  $FVF<f>) r)
              ($FVF.lookup_f (as sm@47@01  $FVF<f>) r)))
          :pattern (($FVF.lookup_f (as sm@48@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f (as sm@47@01  $FVF<f>) r))
          :qid |qp.fvfValDef12|))
        (=
          ($FVF.lookup_f (as sm@48@01  $FVF<f>) y@3@01)
          ($FVF.lookup_f (as sm@45@01  $FVF<f>) y@3@01))
        (not (= x@39@01 y@3@01))
        (not (= y@3@01 x@39@01))
        (forall ((r $Ref)) (!
          (<= ($FVF.perm_f (as pm@49@01  $FPM) r) $Perm.Write)
          :pattern ((inv@31@01 r))
          :qid |qp-fld-prm-bnd|))
        (<= ($FVF.perm_f (as pm@49@01  $FPM) x@39@01) $Perm.Write)
        (<= ($FVF.perm_f (as pm@49@01  $FPM) y@3@01) $Perm.Write)
        (forall ((r $Ref)) (!
          (=>
            (= r y@3@01)
            (=
              ($FVF.lookup_f (as sm@50@01  $FVF<f>) r)
              ($FVF.lookup_f (as sm@47@01  $FVF<f>) r)))
          :pattern (($FVF.lookup_f (as sm@50@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f (as sm@47@01  $FVF<f>) r))
          :qid |qp.fvfValDef14|))
        (forall ((r $Ref)) (!
          (=>
            (= r x@39@01)
            (=
              ($FVF.lookup_f (as sm@50@01  $FVF<f>) r)
              ($FVF.lookup_f (sm@46@01 x@39@01) r)))
          :pattern (($FVF.lookup_f (as sm@50@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f (sm@46@01 x@39@01) r))
          :qid |qp.fvfValDef15|))
        (forall ((r $Ref)) (!
          (=>
            (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
            (=
              ($FVF.lookup_f (as sm@50@01  $FVF<f>) r)
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
          :pattern (($FVF.lookup_f (as sm@50@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
          :qid |qp.fvfValDef16|))))
    (or
      (not (Seq_contains completed@22@01 x@39@01))
      (Seq_contains completed@22@01 x@39@01)))
  :pattern ((Seq_contains completed@22@01 x@39@01))
  :pattern ((Seq_contains_trigger completed@22@01 x@39@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@27@15@29@37-aux|)))
(assert (forall ((x@39@01 $Ref)) (!
  (and
    (=>
      (Seq_contains completed@22@01 x@39@01)
      (and
        (Seq_contains completed@22@01 x@39@01)
        (=>
          (and
            (img@27@01 y@3@01 $Perm.Write x@39@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01)
            (Seq_contains
              completed@22@01
              (inv@26@01 y@3@01 $Perm.Write x@39@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01)))
          (and
            (not
              (=
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($Snap.combine
                            ($Snap.combine
                              ($SortWrappers.$RefTo$Snap y@3@01)
                              ($SortWrappers.$PermTo$Snap $Perm.Write))
                            ($SortWrappers.$RefTo$Snap x@39@01))
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap y@3@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                $Snap.unit))
            (=
              ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($Snap.combine
                            ($SortWrappers.$RefTo$Snap y@3@01)
                            ($SortWrappers.$PermTo$Snap $Perm.Write))
                          ($SortWrappers.$RefTo$Snap x@39@01))
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap y@3@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$RefTo$Snap y@3@01)))
              ($PSF.lookup_wand@0 ($SortWrappers.$SnapTo$PSF<wand@0> ($Snap.first $t@24@01)) ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($Snap.combine
                            ($SortWrappers.$RefTo$Snap y@3@01)
                            ($SortWrappers.$PermTo$Snap $Perm.Write))
                          ($SortWrappers.$RefTo$Snap x@39@01))
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap y@3@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$RefTo$Snap y@3@01))))))
        (=
          ($FVF.lookup_f (as sm@45@01  $FVF<f>) y@3@01)
          ($FVF.lookup_f (as sm@36@01  $FVF<f>) y@3@01))
        (=>
          (and (img@32@01 y@3@01) (Seq_contains toGo@23@01 (inv@31@01 y@3@01)))
          (=
            ($FVF.lookup_f (as sm@45@01  $FVF<f>) y@3@01)
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) y@3@01)))
        (=
          ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@45@01  $FVF<f>) y@3@01))
          ($Snap.first ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@39@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01)))))
        (=
          ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@39@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($SortWrappers.$RefTo$Snap y@3@01)
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap x@39@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$RefTo$Snap y@3@01)))))
            ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($SortWrappers.$RefTo$Snap y@3@01)
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap x@39@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$RefTo$Snap y@3@01)))))))
        (=
          ($FVF.lookup_f (sm@46@01 x@39@01) x@39@01)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@39@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01)))))))
        (not (= x@39@01 $Ref.null))
        (=
          ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@39@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01)))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($SortWrappers.$RefTo$Snap y@3@01)
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap x@39@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$RefTo$Snap y@3@01))))))
            ($Snap.second ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($SortWrappers.$RefTo$Snap y@3@01)
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap x@39@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$RefTo$Snap y@3@01))))))))
        (=
          ($FVF.lookup_f (as sm@47@01  $FVF<f>) y@3@01)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@39@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@39@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01))))))
          $Snap.unit)
        (forall ((r $Ref)) (!
          (=>
            (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
            (=
              ($FVF.lookup_f (as sm@48@01  $FVF<f>) r)
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
          :pattern (($FVF.lookup_f (as sm@48@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
          :qid |qp.fvfValDef10|))
        (forall ((r $Ref)) (!
          (=>
            (= r x@39@01)
            (=
              ($FVF.lookup_f (as sm@48@01  $FVF<f>) r)
              ($FVF.lookup_f (sm@46@01 x@39@01) r)))
          :pattern (($FVF.lookup_f (as sm@48@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f (sm@46@01 x@39@01) r))
          :qid |qp.fvfValDef11|))
        (forall ((r $Ref)) (!
          (=>
            (= r y@3@01)
            (=
              ($FVF.lookup_f (as sm@48@01  $FVF<f>) r)
              ($FVF.lookup_f (as sm@47@01  $FVF<f>) r)))
          :pattern (($FVF.lookup_f (as sm@48@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f (as sm@47@01  $FVF<f>) r))
          :qid |qp.fvfValDef12|))
        (=
          ($FVF.lookup_f (as sm@48@01  $FVF<f>) y@3@01)
          ($FVF.lookup_f (as sm@45@01  $FVF<f>) y@3@01))
        (not (= x@39@01 y@3@01))
        (not (= y@3@01 x@39@01))
        (forall ((r $Ref)) (!
          (<= ($FVF.perm_f (as pm@49@01  $FPM) r) $Perm.Write)
          :pattern ((inv@31@01 r))
          :qid |qp-fld-prm-bnd|))
        (<= ($FVF.perm_f (as pm@49@01  $FPM) x@39@01) $Perm.Write)
        (<= ($FVF.perm_f (as pm@49@01  $FPM) y@3@01) $Perm.Write)
        (forall ((r $Ref)) (!
          (=>
            (= r y@3@01)
            (=
              ($FVF.lookup_f (as sm@50@01  $FVF<f>) r)
              ($FVF.lookup_f (as sm@47@01  $FVF<f>) r)))
          :pattern (($FVF.lookup_f (as sm@50@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f (as sm@47@01  $FVF<f>) r))
          :qid |qp.fvfValDef14|))
        (forall ((r $Ref)) (!
          (=>
            (= r x@39@01)
            (=
              ($FVF.lookup_f (as sm@50@01  $FVF<f>) r)
              ($FVF.lookup_f (sm@46@01 x@39@01) r)))
          :pattern (($FVF.lookup_f (as sm@50@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f (sm@46@01 x@39@01) r))
          :qid |qp.fvfValDef15|))
        (forall ((r $Ref)) (!
          (=>
            (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
            (=
              ($FVF.lookup_f (as sm@50@01  $FVF<f>) r)
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
          :pattern (($FVF.lookup_f (as sm@50@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
          :qid |qp.fvfValDef16|))))
    (or
      (not (Seq_contains completed@22@01 x@39@01))
      (Seq_contains completed@22@01 x@39@01)))
  :pattern ((Seq_contains_trigger completed@22@01 x@39@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@27@15@29@37-aux|)))
(assert (forall ((x@39@01 $Ref)) (!
  (=>
    (Seq_contains completed@22@01 x@39@01)
    (=
      ($FVF.lookup_f (as sm@50@01  $FVF<f>) x@39@01)
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) x@39@01)))
  :pattern ((Seq_contains completed@22@01 x@39@01))
  :pattern ((Seq_contains_trigger completed@22@01 x@39@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@27@15@29@37|)))
(pop) ; 3
(push) ; 3
; Loop head block: Establish invariant
(declare-const x@52@01 $Ref)
(push) ; 4
; [eval] (x in completed)
(assert (Seq_contains (as Seq_empty  Seq<$Ref>) x@52@01))
(pop) ; 4
(declare-fun inv@53@01 ($Ref $Perm $Ref $Perm $Ref $Perm $Ref $Ref) $Ref)
(declare-fun img@54@01 ($Ref $Perm $Ref $Perm $Ref $Perm $Ref $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@52@01 $Ref) (x2@52@01 $Ref)) (!
  (=>
    (and
      (Seq_contains (as Seq_empty  Seq<$Ref>) x1@52@01)
      (Seq_contains (as Seq_empty  Seq<$Ref>) x2@52@01)
      (= x1@52@01 x2@52@01))
    (= x1@52@01 x2@52@01))
  
  :qid |wand@0-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@52@01 $Ref)) (!
  (=>
    (Seq_contains (as Seq_empty  Seq<$Ref>) x@52@01)
    (and
      (=
        (inv@53@01 y@3@01 $Perm.Write x@52@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01)
        x@52@01)
      (img@54@01 y@3@01 $Perm.Write x@52@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01)))
  :pattern ((Seq_contains (as Seq_empty  Seq<$Ref>) x@52@01))
  :pattern ((Seq_contains_trigger (as Seq_empty  Seq<$Ref>) x@52@01))
  :pattern ((inv@53@01 y@3@01 $Perm.Write x@52@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01))
  :pattern ((img@54@01 y@3@01 $Perm.Write x@52@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01))
  :qid |wand@0-invOfFct|)))
(assert (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm) (x6 $Ref) (x7 $Ref)) (!
  (=>
    (and
      (img@54@01 x0 x1 x2 x3 x4 x5 x6 x7)
      (Seq_contains
        (as Seq_empty  Seq<$Ref>)
        (inv@53@01 x0 x1 x2 x3 x4 x5 x6 x7)))
    (and
      (= y@3@01 x0)
      (= $Perm.Write x1)
      (= (inv@53@01 x0 x1 x2 x3 x4 x5 x6 x7) x2)
      (= $Perm.Write x3)
      (= y@3@01 x4)
      (= $Perm.Write x5)
      (= y@3@01 x6)
      (= y@3@01 x7)))
  :pattern ((inv@53@01 x0 x1 x2 x3 x4 x5 x6 x7))
  :qid |wand@0-fctOfInv|)))
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm) (x6 $Ref) (x7 $Ref)) (!
  (=>
    (and
      (Seq_contains
        (as Seq_empty  Seq<$Ref>)
        (inv@53@01 x0 x1 x2 x3 x4 x5 x6 x7))
      (img@54@01 x0 x1 x2 x3 x4 x5 x6 x7)
      (and
        (= x0 y@3@01)
        (= x1 $Perm.Write)
        (= x2 (inv@53@01 x0 x1 x2 x3 x4 x5 x6 x7))
        (= x3 $Perm.Write)
        (= x4 y@3@01)
        (= x5 $Perm.Write)
        (= x6 y@3@01)
        (= x7 y@3@01)))
    false)
  
  :qid |quant-u-20383|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
; [eval] (forall i: Int, j: Int :: { toGo[i], toGo[j] } 0 <= i && (0 <= j && (i < |toGo| && (j < |toGo| && i != j))) ==> toGo[i] != toGo[j])
(declare-const i@55@01 Int)
(declare-const j@56@01 Int)
(push) ; 4
; [eval] 0 <= i && (0 <= j && (i < |toGo| && (j < |toGo| && i != j))) ==> toGo[i] != toGo[j]
; [eval] 0 <= i && (0 <= j && (i < |toGo| && (j < |toGo| && i != j)))
; [eval] 0 <= i
(push) ; 5
; [then-branch: 12 | !(0 <= i@55@01) | live]
; [else-branch: 12 | 0 <= i@55@01 | live]
(push) ; 6
; [then-branch: 12 | !(0 <= i@55@01)]
(assert (not (<= 0 i@55@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 12 | 0 <= i@55@01]
(assert (<= 0 i@55@01))
; [eval] 0 <= j
(push) ; 7
; [then-branch: 13 | !(0 <= j@56@01) | live]
; [else-branch: 13 | 0 <= j@56@01 | live]
(push) ; 8
; [then-branch: 13 | !(0 <= j@56@01)]
(assert (not (<= 0 j@56@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 13 | 0 <= j@56@01]
(assert (<= 0 j@56@01))
; [eval] i < |toGo|
; [eval] |toGo|
(push) ; 9
; [then-branch: 14 | !(i@55@01 < |xs@2@01|) | live]
; [else-branch: 14 | i@55@01 < |xs@2@01| | live]
(push) ; 10
; [then-branch: 14 | !(i@55@01 < |xs@2@01|)]
(assert (not (< i@55@01 (Seq_length xs@2@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 14 | i@55@01 < |xs@2@01|]
(assert (< i@55@01 (Seq_length xs@2@01)))
; [eval] j < |toGo|
; [eval] |toGo|
(push) ; 11
; [then-branch: 15 | !(j@56@01 < |xs@2@01|) | live]
; [else-branch: 15 | j@56@01 < |xs@2@01| | live]
(push) ; 12
; [then-branch: 15 | !(j@56@01 < |xs@2@01|)]
(assert (not (< j@56@01 (Seq_length xs@2@01))))
(pop) ; 12
(push) ; 12
; [else-branch: 15 | j@56@01 < |xs@2@01|]
(assert (< j@56@01 (Seq_length xs@2@01)))
; [eval] i != j
(pop) ; 12
(pop) ; 11
; Joined path conditions
; Joined path conditions
(assert (or (< j@56@01 (Seq_length xs@2@01)) (not (< j@56@01 (Seq_length xs@2@01)))))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@55@01 (Seq_length xs@2@01))
  (and
    (< i@55@01 (Seq_length xs@2@01))
    (or (< j@56@01 (Seq_length xs@2@01)) (not (< j@56@01 (Seq_length xs@2@01)))))))
(assert (or (< i@55@01 (Seq_length xs@2@01)) (not (< i@55@01 (Seq_length xs@2@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@56@01)
  (and
    (<= 0 j@56@01)
    (=>
      (< i@55@01 (Seq_length xs@2@01))
      (and
        (< i@55@01 (Seq_length xs@2@01))
        (or
          (< j@56@01 (Seq_length xs@2@01))
          (not (< j@56@01 (Seq_length xs@2@01))))))
    (or (< i@55@01 (Seq_length xs@2@01)) (not (< i@55@01 (Seq_length xs@2@01)))))))
(assert (or (<= 0 j@56@01) (not (<= 0 j@56@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@55@01)
  (and
    (<= 0 i@55@01)
    (=>
      (<= 0 j@56@01)
      (and
        (<= 0 j@56@01)
        (=>
          (< i@55@01 (Seq_length xs@2@01))
          (and
            (< i@55@01 (Seq_length xs@2@01))
            (or
              (< j@56@01 (Seq_length xs@2@01))
              (not (< j@56@01 (Seq_length xs@2@01))))))
        (or
          (< i@55@01 (Seq_length xs@2@01))
          (not (< i@55@01 (Seq_length xs@2@01))))))
    (or (<= 0 j@56@01) (not (<= 0 j@56@01))))))
(assert (or (<= 0 i@55@01) (not (<= 0 i@55@01))))
(push) ; 5
; [then-branch: 16 | 0 <= i@55@01 && 0 <= j@56@01 && i@55@01 < |xs@2@01| && j@56@01 < |xs@2@01| && i@55@01 != j@56@01 | live]
; [else-branch: 16 | !(0 <= i@55@01 && 0 <= j@56@01 && i@55@01 < |xs@2@01| && j@56@01 < |xs@2@01| && i@55@01 != j@56@01) | live]
(push) ; 6
; [then-branch: 16 | 0 <= i@55@01 && 0 <= j@56@01 && i@55@01 < |xs@2@01| && j@56@01 < |xs@2@01| && i@55@01 != j@56@01]
(assert (and
  (<= 0 i@55@01)
  (and
    (<= 0 j@56@01)
    (and
      (< i@55@01 (Seq_length xs@2@01))
      (and (< j@56@01 (Seq_length xs@2@01)) (not (= i@55@01 j@56@01)))))))
; [eval] toGo[i] != toGo[j]
; [eval] toGo[i]
(push) ; 7
(assert (not (>= i@55@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] toGo[j]
(push) ; 7
(assert (not (>= j@56@01 0)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 16 | !(0 <= i@55@01 && 0 <= j@56@01 && i@55@01 < |xs@2@01| && j@56@01 < |xs@2@01| && i@55@01 != j@56@01)]
(assert (not
  (and
    (<= 0 i@55@01)
    (and
      (<= 0 j@56@01)
      (and
        (< i@55@01 (Seq_length xs@2@01))
        (and (< j@56@01 (Seq_length xs@2@01)) (not (= i@55@01 j@56@01))))))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (<= 0 i@55@01)
    (and
      (<= 0 j@56@01)
      (and
        (< i@55@01 (Seq_length xs@2@01))
        (and (< j@56@01 (Seq_length xs@2@01)) (not (= i@55@01 j@56@01))))))
  (and
    (<= 0 i@55@01)
    (<= 0 j@56@01)
    (< i@55@01 (Seq_length xs@2@01))
    (< j@56@01 (Seq_length xs@2@01))
    (not (= i@55@01 j@56@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i@55@01)
      (and
        (<= 0 j@56@01)
        (and
          (< i@55@01 (Seq_length xs@2@01))
          (and (< j@56@01 (Seq_length xs@2@01)) (not (= i@55@01 j@56@01)))))))
  (and
    (<= 0 i@55@01)
    (and
      (<= 0 j@56@01)
      (and
        (< i@55@01 (Seq_length xs@2@01))
        (and (< j@56@01 (Seq_length xs@2@01)) (not (= i@55@01 j@56@01))))))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@55@01 Int) (j@56@01 Int)) (!
  (and
    (=>
      (<= 0 i@55@01)
      (and
        (<= 0 i@55@01)
        (=>
          (<= 0 j@56@01)
          (and
            (<= 0 j@56@01)
            (=>
              (< i@55@01 (Seq_length xs@2@01))
              (and
                (< i@55@01 (Seq_length xs@2@01))
                (or
                  (< j@56@01 (Seq_length xs@2@01))
                  (not (< j@56@01 (Seq_length xs@2@01))))))
            (or
              (< i@55@01 (Seq_length xs@2@01))
              (not (< i@55@01 (Seq_length xs@2@01))))))
        (or (<= 0 j@56@01) (not (<= 0 j@56@01)))))
    (or (<= 0 i@55@01) (not (<= 0 i@55@01)))
    (=>
      (and
        (<= 0 i@55@01)
        (and
          (<= 0 j@56@01)
          (and
            (< i@55@01 (Seq_length xs@2@01))
            (and (< j@56@01 (Seq_length xs@2@01)) (not (= i@55@01 j@56@01))))))
      (and
        (<= 0 i@55@01)
        (<= 0 j@56@01)
        (< i@55@01 (Seq_length xs@2@01))
        (< j@56@01 (Seq_length xs@2@01))
        (not (= i@55@01 j@56@01))))
    (or
      (not
        (and
          (<= 0 i@55@01)
          (and
            (<= 0 j@56@01)
            (and
              (< i@55@01 (Seq_length xs@2@01))
              (and (< j@56@01 (Seq_length xs@2@01)) (not (= i@55@01 j@56@01)))))))
      (and
        (<= 0 i@55@01)
        (and
          (<= 0 j@56@01)
          (and
            (< i@55@01 (Seq_length xs@2@01))
            (and (< j@56@01 (Seq_length xs@2@01)) (not (= i@55@01 j@56@01))))))))
  :pattern ((Seq_index xs@2@01 i@55@01) (Seq_index xs@2@01 j@56@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@21@15@21@117-aux|)))
(push) ; 4
(assert (not (forall ((i@55@01 Int) (j@56@01 Int)) (!
  (=>
    (and
      (<= 0 i@55@01)
      (and
        (<= 0 j@56@01)
        (and
          (< i@55@01 (Seq_length xs@2@01))
          (and (< j@56@01 (Seq_length xs@2@01)) (not (= i@55@01 j@56@01))))))
    (not (= (Seq_index xs@2@01 i@55@01) (Seq_index xs@2@01 j@56@01))))
  :pattern ((Seq_index xs@2@01 i@55@01) (Seq_index xs@2@01 j@56@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@21@15@21@117|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@55@01 Int) (j@56@01 Int)) (!
  (=>
    (and
      (<= 0 i@55@01)
      (and
        (<= 0 j@56@01)
        (and
          (< i@55@01 (Seq_length xs@2@01))
          (and (< j@56@01 (Seq_length xs@2@01)) (not (= i@55@01 j@56@01))))))
    (not (= (Seq_index xs@2@01 i@55@01) (Seq_index xs@2@01 j@56@01))))
  :pattern ((Seq_index xs@2@01 i@55@01) (Seq_index xs@2@01 j@56@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@21@15@21@117|)))
(declare-const x@57@01 $Ref)
(push) ; 4
; [eval] (x in toGo)
(assert (Seq_contains xs@2@01 x@57@01))
(pop) ; 4
(declare-fun inv@58@01 ($Ref) $Ref)
(declare-fun img@59@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@57@01 $Ref) (x2@57@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@2@01 x1@57@01)
      (Seq_contains xs@2@01 x2@57@01)
      (= x1@57@01 x2@57@01))
    (= x1@57@01 x2@57@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@57@01 $Ref)) (!
  (=>
    (Seq_contains xs@2@01 x@57@01)
    (and (= (inv@58@01 x@57@01) x@57@01) (img@59@01 x@57@01)))
  :pattern ((Seq_contains xs@2@01 x@57@01))
  :pattern ((Seq_contains_trigger xs@2@01 x@57@01))
  :pattern ((inv@58@01 x@57@01))
  :pattern ((img@59@01 x@57@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@59@01 r) (Seq_contains xs@2@01 (inv@58@01 r)))
    (= (inv@58@01 r) r))
  :pattern ((inv@58@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@60@01 ((r $Ref)) $Perm
  (ite
    (and (Seq_contains xs@2@01 (inv@58@01 r)) (img@59@01 r) (= r (inv@58@01 r)))
    ($Perm.min
      (ite
        (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
        (- $Perm.Write (pTaken@14@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@61@01 ((r $Ref)) $Perm
  (ite
    (and (Seq_contains xs@2@01 (inv@58@01 r)) (img@59@01 r) (= r (inv@58@01 r)))
    ($Perm.min
      (ite (= r (Seq_index xs@2@01 0)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@60@01 r)))
    $Perm.No))
(define-fun pTaken@62@01 ((r $Ref)) $Perm
  (ite
    (and (Seq_contains xs@2@01 (inv@58@01 r)) (img@59@01 r) (= r (inv@58@01 r)))
    ($Perm.min
      (ite (= r y@3@01) $Perm.Write $Perm.No)
      (- (- $Perm.Write (pTaken@60@01 r)) (pTaken@61@01 r)))
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
        (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
        (- $Perm.Write (pTaken@14@01 r))
        $Perm.No)
      (pTaken@60@01 r))
    $Perm.No)
  
  :qid |quant-u-20386|))))
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
    (and (Seq_contains xs@2@01 (inv@58@01 r)) (img@59@01 r) (= r (inv@58@01 r)))
    (= (- $Perm.Write (pTaken@60@01 r)) $Perm.No))
  
  :qid |quant-u-20387|))))
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
    (ite (= (Seq_index xs@2@01 0) (Seq_index xs@2@01 0)) $Perm.Write $Perm.No)
    (pTaken@61@01 (Seq_index xs@2@01 0)))
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
    (and (Seq_contains xs@2@01 (inv@58@01 r)) (img@59@01 r) (= r (inv@58@01 r)))
    (= (- (- $Perm.Write (pTaken@60@01 r)) (pTaken@61@01 r)) $Perm.No))
  
  :qid |quant-u-20389|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] xs == completed ++ toGo
; [eval] completed ++ toGo
(set-option :timeout 0)
(push) ; 4
(assert (not (Seq_equal xs@2@01 (Seq_append (as Seq_empty  Seq<$Ref>) xs@2@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (Seq_equal xs@2@01 (Seq_append (as Seq_empty  Seq<$Ref>) xs@2@01)))
; [eval] (forall x: Ref :: { (x in toGo) } (x in toGo) ==> x.f == old[setupComplete](x.f))
(declare-const x@63@01 $Ref)
(push) ; 4
; [eval] (x in toGo) ==> x.f == old[setupComplete](x.f)
; [eval] (x in toGo)
(push) ; 5
; [then-branch: 17 | x@63@01 in xs@2@01 | live]
; [else-branch: 17 | !(x@63@01 in xs@2@01) | live]
(push) ; 6
; [then-branch: 17 | x@63@01 in xs@2@01]
(assert (Seq_contains xs@2@01 x@63@01))
; [eval] x.f == old[setupComplete](x.f)
(declare-const sm@64@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@64@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@20@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@64@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@20@01  $FVF<f>) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@14@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@64@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_f (as sm@64@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@2@01 0))
    (=
      ($FVF.lookup_f (as sm@64@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@16@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@64@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
  :qid |qp.fvfValDef20|)))
(declare-const pm@65@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@65@01  $FPM) r)
    (+
      (+
        (ite (= r y@3@01) $Perm.Write $Perm.No)
        (ite
          (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
          (- $Perm.Write (pTaken@14@01 r))
          $Perm.No))
      (ite (= r (Seq_index xs@2@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@65@01  $FPM) r))
  :qid |qp.resPrmSumDef21|)))
(push) ; 7
(assert (not (< $Perm.No ($FVF.perm_f (as pm@65@01  $FPM) x@63@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] old[setupComplete](x.f)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r y@3@01)
      (=
        ($FVF.lookup_f (as sm@64@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@20@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@64@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@20@01  $FVF<f>) r))
    :qid |qp.fvfValDef18|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
        (< $Perm.No (- $Perm.Write (pTaken@14@01 r)))
        false)
      (=
        ($FVF.lookup_f (as sm@64@01  $FVF<f>) r)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r)))
    :pattern (($FVF.lookup_f (as sm@64@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r))
    :qid |qp.fvfValDef19|))
  (forall ((r $Ref)) (!
    (=>
      (= r (Seq_index xs@2@01 0))
      (=
        ($FVF.lookup_f (as sm@64@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@16@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@64@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
    :qid |qp.fvfValDef20|))))
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    (+
      (ite (= x@63@01 y@3@01) $Perm.Write $Perm.No)
      (ite
        (and (img@7@01 x@63@01) (Seq_contains xs@2@01 (inv@6@01 x@63@01)))
        (- $Perm.Write (pTaken@14@01 x@63@01))
        $Perm.No))
    (ite (= x@63@01 (Seq_index xs@2@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 17 | !(x@63@01 in xs@2@01)]
(assert (not (Seq_contains xs@2@01 x@63@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@64@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@20@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@64@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@20@01  $FVF<f>) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@14@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@64@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_f (as sm@64@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@2@01 0))
    (=
      ($FVF.lookup_f (as sm@64@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@16@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@64@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@65@01  $FPM) r)
    (+
      (+
        (ite (= r y@3@01) $Perm.Write $Perm.No)
        (ite
          (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
          (- $Perm.Write (pTaken@14@01 r))
          $Perm.No))
      (ite (= r (Seq_index xs@2@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@65@01  $FPM) r))
  :qid |qp.resPrmSumDef21|)))
; Joined path conditions
(assert (or (not (Seq_contains xs@2@01 x@63@01)) (Seq_contains xs@2@01 x@63@01)))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@64@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@20@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@64@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@20@01  $FVF<f>) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@14@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@64@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_f (as sm@64@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@2@01 0))
    (=
      ($FVF.lookup_f (as sm@64@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@16@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@64@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
  :qid |qp.fvfValDef20|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@65@01  $FPM) r)
    (+
      (+
        (ite (= r y@3@01) $Perm.Write $Perm.No)
        (ite
          (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
          (- $Perm.Write (pTaken@14@01 r))
          $Perm.No))
      (ite (= r (Seq_index xs@2@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@65@01  $FPM) r))
  :qid |qp.resPrmSumDef21|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@63@01 $Ref)) (!
  (or (not (Seq_contains xs@2@01 x@63@01)) (Seq_contains xs@2@01 x@63@01))
  :pattern ((Seq_contains xs@2@01 x@63@01))
  :pattern ((Seq_contains_trigger xs@2@01 x@63@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@24@15@24@76-aux|)))
(assert (forall ((x@63@01 $Ref)) (!
  (or (not (Seq_contains xs@2@01 x@63@01)) (Seq_contains xs@2@01 x@63@01))
  :pattern ((Seq_contains_trigger xs@2@01 x@63@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@24@15@24@76-aux|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@66@01 ((r $Ref)) $Perm
  (ite
    (= r y@3@01)
    ($Perm.min (ite (= r y@3@01) $Perm.Write $Perm.No) $Perm.Write)
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
(assert (not (= (- $Perm.Write (pTaken@66@01 y@3@01)) $Perm.No)))
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
  (=> (= r y@3@01) (= (- $Perm.Write (pTaken@66@01 r)) $Perm.No))
  
  :qid |quant-u-20392|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] y.f == 1
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r y@3@01)
      (=
        ($FVF.lookup_f (as sm@64@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@20@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@64@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@20@01  $FVF<f>) r))
    :qid |qp.fvfValDef18|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
        (< $Perm.No (- $Perm.Write (pTaken@14@01 r)))
        false)
      (=
        ($FVF.lookup_f (as sm@64@01  $FVF<f>) r)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r)))
    :pattern (($FVF.lookup_f (as sm@64@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r))
    :qid |qp.fvfValDef19|))
  (forall ((r $Ref)) (!
    (=>
      (= r (Seq_index xs@2@01 0))
      (=
        ($FVF.lookup_f (as sm@64@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@16@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@64@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
    :qid |qp.fvfValDef20|))))
(set-option :timeout 0)
(push) ; 4
(assert (not (<
  $Perm.No
  (+
    (+
      $Perm.Write
      (ite
        (and (img@7@01 y@3@01) (Seq_contains xs@2@01 (inv@6@01 y@3@01)))
        (- $Perm.Write (pTaken@14@01 y@3@01))
        $Perm.No))
    (ite (= y@3@01 (Seq_index xs@2@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (= ($FVF.lookup_f (as sm@64@01  $FVF<f>) y@3@01) 1)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (= ($FVF.lookup_f (as sm@64@01  $FVF<f>) y@3@01) 1))
; [eval] (forall x: Ref :: { (x in completed) } (x in completed) ==> (applying acc(y.f, write) --* acc(x.f, write) && (acc(y.f, write) && y.f == old[lhs](y.f)) in x.f == old[setupComplete](x.f)))
(declare-const x@67@01 $Ref)
(push) ; 4
; [eval] (x in completed) ==> (applying acc(y.f, write) --* acc(x.f, write) && (acc(y.f, write) && y.f == old[lhs](y.f)) in x.f == old[setupComplete](x.f))
; [eval] (x in completed)
(push) ; 5
; [then-branch: 18 | x@67@01 in Nil | live]
; [else-branch: 18 | !(x@67@01 in Nil) | live]
(push) ; 6
; [then-branch: 18 | x@67@01 in Nil]
(assert (Seq_contains (as Seq_empty  Seq<$Ref>) x@67@01))
; [eval] (applying acc(y.f, write) --* acc(x.f, write) && (acc(y.f, write) && y.f == old[lhs](y.f)) in x.f == old[setupComplete](x.f))
(push) ; 7
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 8
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm) (x6 $Ref) (x7 $Ref)) (!
  (=>
    (and
      (= x0 y@3@01)
      (= x1 $Perm.Write)
      (= x2 x@67@01)
      (= x3 $Perm.Write)
      (= x4 y@3@01)
      (= x5 $Perm.Write)
      (= x6 y@3@01)
      (= x7 y@3@01))
    false)
  
  :qid |quant-u-20393|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@68@01 $PSF<wand@0>)
(declare-const s@69@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
; Precomputing data for removing quantified permissions
(define-fun pTaken@70@01 ((r $Ref) (x@67@01 $Ref)) $Perm
  (ite
    (= r y@3@01)
    ($Perm.min (ite (= r y@3@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
(define-fun pTaken@71@01 ((r $Ref) (x@67@01 $Ref)) $Perm
  (ite
    (= r y@3@01)
    ($Perm.min
      (ite (= r (Seq_index xs@2@01 0)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@70@01 r x@67@01)))
    $Perm.No))
(define-fun pTaken@72@01 ((r $Ref) (x@67@01 $Ref)) $Perm
  (ite
    (= r y@3@01)
    ($Perm.min
      (ite
        (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
        (- $Perm.Write (pTaken@14@01 r))
        $Perm.No)
      (- (- $Perm.Write (pTaken@70@01 r x@67@01)) (pTaken@71@01 r x@67@01)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
; Chunk depleted?
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@70@01 y@3@01 x@67@01)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=> (= r y@3@01) (= (- $Perm.Write (pTaken@70@01 r x@67@01)) $Perm.No))
  
  :qid |quant-u-20396|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@73@01 $FVF<f>)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (= y@3@01 (Seq_index xs@2@01 0))
  (=
    ($FVF.lookup_f (as sm@73@01  $FVF<f>) y@3@01)
    ($FVF.lookup_f (as sm@16@01  $FVF<f>) y@3@01))))
(assert (=>
  (ite
    (and (img@7@01 y@3@01) (Seq_contains xs@2@01 (inv@6@01 y@3@01)))
    (< $Perm.No (- $Perm.Write (pTaken@14@01 y@3@01)))
    false)
  (=
    ($FVF.lookup_f (as sm@73@01  $FVF<f>) y@3@01)
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) y@3@01))))
(assert (=
  ($FVF.lookup_f (as sm@73@01  $FVF<f>) y@3@01)
  ($FVF.lookup_f (as sm@20@01  $FVF<f>) y@3@01)))
(assert (=
  ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@73@01  $FVF<f>) y@3@01))
  ($Snap.first ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap y@3@01)
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap x@67@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@3@01))
    ($SortWrappers.$RefTo$Snap y@3@01))))))
(assert (=
  ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap y@3@01)
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap x@67@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@3@01))
    ($SortWrappers.$RefTo$Snap y@3@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@3@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap x@67@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@3@01))
      ($SortWrappers.$RefTo$Snap y@3@01)))))
    ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@3@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap x@67@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@3@01))
      ($SortWrappers.$RefTo$Snap y@3@01))))))))
(declare-fun sm@74@01 ($Ref) $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (sm@74@01 x@67@01) x@67@01)
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap y@3@01)
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap x@67@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@3@01))
    ($SortWrappers.$RefTo$Snap y@3@01))))))))
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (and
  (= (Seq_index xs@2@01 0) (Seq_index xs@2@01 0))
  (= x@67@01 (Seq_index xs@2@01 0)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (= x@67@01 (Seq_index xs@2@01 0)))
(declare-const $t@75@01 $FVF<f>)
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (= r (Seq_index xs@2@01 0))
      (= ($FVF.lookup_f $t@75@01 r) ($FVF.lookup_f (as sm@16@01  $FVF<f>) r)))
    (=>
      (= r x@67@01)
      (= ($FVF.lookup_f $t@75@01 r) ($FVF.lookup_f (sm@74@01 x@67@01) r))))
  :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (sm@74@01 x@67@01) r))
  :pattern (($FVF.lookup_f $t@75@01 r))
  :qid |quant-u-20397|)))
(assert (not (= x@67@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap y@3@01)
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap x@67@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@3@01))
    ($SortWrappers.$RefTo$Snap y@3@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@3@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap x@67@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@3@01))
      ($SortWrappers.$RefTo$Snap y@3@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@3@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap x@67@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@3@01))
      ($SortWrappers.$RefTo$Snap y@3@01)))))))))
(declare-const sm@76@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@76@01  $FVF<f>) y@3@01)
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap y@3@01)
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap x@67@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@3@01))
    ($SortWrappers.$RefTo$Snap y@3@01)))))))))
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (and
  (= (Seq_index xs@2@01 0) (Seq_index xs@2@01 0))
  (= y@3@01 (Seq_index xs@2@01 0)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (= y@3@01 (Seq_index xs@2@01 0)))
(declare-const $t@77@01 $FVF<f>)
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (= r (Seq_index xs@2@01 0))
      (= ($FVF.lookup_f $t@77@01 r) ($FVF.lookup_f $t@75@01 r)))
    (=>
      (= r y@3@01)
      (= ($FVF.lookup_f $t@77@01 r) ($FVF.lookup_f (as sm@76@01  $FVF<f>) r))))
  :pattern (($FVF.lookup_f $t@75@01 r))
  :pattern (($FVF.lookup_f (as sm@76@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@77@01 r))
  :qid |quant-u-20398|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap y@3@01)
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap x@67@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@3@01))
    ($SortWrappers.$RefTo$Snap y@3@01))))))
  $Snap.unit))
; [eval] y.f == old[lhs](y.f)
(declare-const sm@78@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@14@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@78@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_f (as sm@78@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@2@01 0))
    (= ($FVF.lookup_f (as sm@78@01  $FVF<f>) r) ($FVF.lookup_f $t@77@01 r)))
  :pattern (($FVF.lookup_f (as sm@78@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@77@01 r))
  :qid |qp.fvfValDef26|)))
(declare-const pm@79@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@79@01  $FPM) r)
    (+
      (ite
        (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
        (- $Perm.Write (pTaken@14@01 r))
        $Perm.No)
      (ite (= r (Seq_index xs@2@01 0)) (/ (to_real 3) (to_real 1)) $Perm.No)))
  :pattern (($FVF.perm_f (as pm@79@01  $FPM) r))
  :qid |qp.resPrmSumDef27|)))
(set-option :timeout 0)
(push) ; 8
(assert (not (< $Perm.No ($FVF.perm_f (as pm@79@01  $FPM) y@3@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] old[lhs](y.f)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r (Seq_index xs@2@01 0))
      (=
        ($FVF.lookup_f (as sm@73@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@16@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@73@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
    :qid |qp.fvfValDef22|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
        (< $Perm.No (- $Perm.Write (pTaken@14@01 r)))
        false)
      (=
        ($FVF.lookup_f (as sm@73@01  $FVF<f>) r)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r)))
    :pattern (($FVF.lookup_f (as sm@73@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r))
    :qid |qp.fvfValDef23|))
  (forall ((r $Ref)) (!
    (=>
      (= r y@3@01)
      (=
        ($FVF.lookup_f (as sm@73@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@20@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@73@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@20@01  $FVF<f>) r))
    :qid |qp.fvfValDef24|))))
(push) ; 8
(assert (not (<
  $Perm.No
  (+
    (+
      (ite (= y@3@01 (Seq_index xs@2@01 0)) $Perm.Write $Perm.No)
      (ite
        (and (img@7@01 y@3@01) (Seq_contains xs@2@01 (inv@6@01 y@3@01)))
        (- $Perm.Write (pTaken@14@01 y@3@01))
        $Perm.No))
    $Perm.Write))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_f (as sm@78@01  $FVF<f>) y@3@01)
  ($FVF.lookup_f (as sm@73@01  $FVF<f>) y@3@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unsat
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@79@01  $FPM) r) $Perm.Write)
  :pattern ((inv@6@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@79@01  $FPM) (Seq_index xs@2@01 0)) $Perm.Write))
; [eval] x.f == old[setupComplete](x.f)
(declare-const sm@80@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@2@01 0))
    (= ($FVF.lookup_f (as sm@80@01  $FVF<f>) r) ($FVF.lookup_f $t@77@01 r)))
  :pattern (($FVF.lookup_f (as sm@80@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@77@01 r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@14@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@80@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_f (as sm@80@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef29|)))
(declare-const pm@81@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@81@01  $FPM) r)
    (+
      (ite (= r (Seq_index xs@2@01 0)) (/ (to_real 3) (to_real 1)) $Perm.No)
      (ite
        (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
        (- $Perm.Write (pTaken@14@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@81@01  $FPM) r))
  :qid |qp.resPrmSumDef30|)))
(set-option :timeout 0)
(push) ; 8
(assert (not (< $Perm.No ($FVF.perm_f (as pm@81@01  $FPM) x@67@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [eval] old[setupComplete](x.f)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r y@3@01)
      (=
        ($FVF.lookup_f (as sm@64@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@20@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@64@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@20@01  $FVF<f>) r))
    :qid |qp.fvfValDef18|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
        (< $Perm.No (- $Perm.Write (pTaken@14@01 r)))
        false)
      (=
        ($FVF.lookup_f (as sm@64@01  $FVF<f>) r)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r)))
    :pattern (($FVF.lookup_f (as sm@64@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r))
    :qid |qp.fvfValDef19|))
  (forall ((r $Ref)) (!
    (=>
      (= r (Seq_index xs@2@01 0))
      (=
        ($FVF.lookup_f (as sm@64@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@16@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@64@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
    :qid |qp.fvfValDef20|))))
(push) ; 8
(assert (not (<
  $Perm.No
  (+
    (+
      (ite (= x@67@01 y@3@01) $Perm.Write $Perm.No)
      (ite
        (and (img@7@01 x@67@01) (Seq_contains xs@2@01 (inv@6@01 x@67@01)))
        (- $Perm.Write (pTaken@14@01 x@67@01))
        $Perm.No))
    (ite (= x@67@01 (Seq_index xs@2@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@14@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@78@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_f (as sm@78@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@2@01 0))
    (= ($FVF.lookup_f (as sm@78@01  $FVF<f>) r) ($FVF.lookup_f $t@77@01 r)))
  :pattern (($FVF.lookup_f (as sm@78@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@77@01 r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@79@01  $FPM) r)
    (+
      (ite
        (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
        (- $Perm.Write (pTaken@14@01 r))
        $Perm.No)
      (ite (= r (Seq_index xs@2@01 0)) (/ (to_real 3) (to_real 1)) $Perm.No)))
  :pattern (($FVF.perm_f (as pm@79@01  $FPM) r))
  :qid |qp.resPrmSumDef27|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@2@01 0))
    (=
      ($FVF.lookup_f (as sm@73@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@16@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@73@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@14@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@73@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_f (as sm@73@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@73@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@20@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@73@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@20@01  $FVF<f>) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@2@01 0))
    (= ($FVF.lookup_f (as sm@80@01  $FVF<f>) r) ($FVF.lookup_f $t@77@01 r)))
  :pattern (($FVF.lookup_f (as sm@80@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@77@01 r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@14@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@80@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_f (as sm@80@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@81@01  $FPM) r)
    (+
      (ite (= r (Seq_index xs@2@01 0)) (/ (to_real 3) (to_real 1)) $Perm.No)
      (ite
        (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
        (- $Perm.Write (pTaken@14@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@81@01  $FPM) r))
  :qid |qp.resPrmSumDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@64@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@20@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@64@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@20@01  $FVF<f>) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@14@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@64@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_f (as sm@64@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@2@01 0))
    (=
      ($FVF.lookup_f (as sm@64@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@16@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@64@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
  :qid |qp.fvfValDef20|)))
(assert (and
  (=>
    (= y@3@01 (Seq_index xs@2@01 0))
    (=
      ($FVF.lookup_f (as sm@73@01  $FVF<f>) y@3@01)
      ($FVF.lookup_f (as sm@16@01  $FVF<f>) y@3@01)))
  (=>
    (ite
      (and (img@7@01 y@3@01) (Seq_contains xs@2@01 (inv@6@01 y@3@01)))
      (< $Perm.No (- $Perm.Write (pTaken@14@01 y@3@01)))
      false)
    (=
      ($FVF.lookup_f (as sm@73@01  $FVF<f>) y@3@01)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) y@3@01)))
  (=
    ($FVF.lookup_f (as sm@73@01  $FVF<f>) y@3@01)
    ($FVF.lookup_f (as sm@20@01  $FVF<f>) y@3@01))
  (=
    ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@73@01  $FVF<f>) y@3@01))
    ($Snap.first ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@3@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap x@67@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@3@01))
      ($SortWrappers.$RefTo$Snap y@3@01)))))
  (=
    ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@3@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap x@67@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@3@01))
      ($SortWrappers.$RefTo$Snap y@3@01))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap x@67@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01)))))
      ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap x@67@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01)))))))))
(assert (and
  (=
    ($FVF.lookup_f (sm@74@01 x@67@01) x@67@01)
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@3@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap x@67@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@3@01))
      ($SortWrappers.$RefTo$Snap y@3@01)))))))
  (= x@67@01 (Seq_index xs@2@01 0))
  (forall ((r $Ref)) (!
    (and
      (=>
        (= r (Seq_index xs@2@01 0))
        (= ($FVF.lookup_f $t@75@01 r) ($FVF.lookup_f (as sm@16@01  $FVF<f>) r)))
      (=>
        (= r x@67@01)
        (= ($FVF.lookup_f $t@75@01 r) ($FVF.lookup_f (sm@74@01 x@67@01) r))))
    :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (sm@74@01 x@67@01) r))
    :pattern (($FVF.lookup_f $t@75@01 r))
    :qid |quant-u-20397|))
  (not (= x@67@01 $Ref.null))
  (=
    ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@3@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap x@67@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@3@01))
      ($SortWrappers.$RefTo$Snap y@3@01)))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap x@67@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01))))))
      ($Snap.second ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap x@67@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01))))))))))
(assert (and
  (=
    ($FVF.lookup_f (as sm@76@01  $FVF<f>) y@3@01)
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@3@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap x@67@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@3@01))
      ($SortWrappers.$RefTo$Snap y@3@01))))))))
  (= y@3@01 (Seq_index xs@2@01 0))
  (forall ((r $Ref)) (!
    (and
      (=>
        (= r (Seq_index xs@2@01 0))
        (= ($FVF.lookup_f $t@77@01 r) ($FVF.lookup_f $t@75@01 r)))
      (=>
        (= r y@3@01)
        (= ($FVF.lookup_f $t@77@01 r) ($FVF.lookup_f (as sm@76@01  $FVF<f>) r))))
    :pattern (($FVF.lookup_f $t@75@01 r))
    :pattern (($FVF.lookup_f (as sm@76@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f $t@77@01 r))
    :qid |quant-u-20398|))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@3@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap x@67@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@3@01))
      ($SortWrappers.$RefTo$Snap y@3@01))))))
    $Snap.unit)
  (=
    ($FVF.lookup_f (as sm@78@01  $FVF<f>) y@3@01)
    ($FVF.lookup_f (as sm@73@01  $FVF<f>) y@3@01))
  (forall ((r $Ref)) (!
    (<= ($FVF.perm_f (as pm@79@01  $FPM) r) $Perm.Write)
    :pattern ((inv@6@01 r))
    :qid |qp-fld-prm-bnd|))
  (<= ($FVF.perm_f (as pm@79@01  $FPM) (Seq_index xs@2@01 0)) $Perm.Write)))
(pop) ; 6
(push) ; 6
; [else-branch: 18 | !(x@67@01 in Nil)]
(assert (not (Seq_contains (as Seq_empty  Seq<$Ref>) x@67@01)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@14@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@78@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_f (as sm@78@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@2@01 0))
    (= ($FVF.lookup_f (as sm@78@01  $FVF<f>) r) ($FVF.lookup_f $t@77@01 r)))
  :pattern (($FVF.lookup_f (as sm@78@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@77@01 r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@79@01  $FPM) r)
    (+
      (ite
        (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
        (- $Perm.Write (pTaken@14@01 r))
        $Perm.No)
      (ite (= r (Seq_index xs@2@01 0)) (/ (to_real 3) (to_real 1)) $Perm.No)))
  :pattern (($FVF.perm_f (as pm@79@01  $FPM) r))
  :qid |qp.resPrmSumDef27|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@2@01 0))
    (=
      ($FVF.lookup_f (as sm@73@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@16@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@73@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@14@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@73@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_f (as sm@73@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@73@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@20@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@73@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@20@01  $FVF<f>) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@2@01 0))
    (= ($FVF.lookup_f (as sm@80@01  $FVF<f>) r) ($FVF.lookup_f $t@77@01 r)))
  :pattern (($FVF.lookup_f (as sm@80@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@77@01 r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@14@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@80@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_f (as sm@80@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@81@01  $FPM) r)
    (+
      (ite (= r (Seq_index xs@2@01 0)) (/ (to_real 3) (to_real 1)) $Perm.No)
      (ite
        (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
        (- $Perm.Write (pTaken@14@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@81@01  $FPM) r))
  :qid |qp.resPrmSumDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@64@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@20@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@64@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@20@01  $FVF<f>) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@14@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@64@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_f (as sm@64@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@2@01 0))
    (=
      ($FVF.lookup_f (as sm@64@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@16@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@64@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
  :qid |qp.fvfValDef20|)))
(assert (=>
  (Seq_contains (as Seq_empty  Seq<$Ref>) x@67@01)
  (and
    (Seq_contains (as Seq_empty  Seq<$Ref>) x@67@01)
    (=>
      (= y@3@01 (Seq_index xs@2@01 0))
      (=
        ($FVF.lookup_f (as sm@73@01  $FVF<f>) y@3@01)
        ($FVF.lookup_f (as sm@16@01  $FVF<f>) y@3@01)))
    (=>
      (ite
        (and (img@7@01 y@3@01) (Seq_contains xs@2@01 (inv@6@01 y@3@01)))
        (< $Perm.No (- $Perm.Write (pTaken@14@01 y@3@01)))
        false)
      (=
        ($FVF.lookup_f (as sm@73@01  $FVF<f>) y@3@01)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) y@3@01)))
    (=
      ($FVF.lookup_f (as sm@73@01  $FVF<f>) y@3@01)
      ($FVF.lookup_f (as sm@20@01  $FVF<f>) y@3@01))
    (=
      ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@73@01  $FVF<f>) y@3@01))
      ($Snap.first ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap x@67@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01)))))
    (=
      ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap x@67@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($SortWrappers.$RefTo$Snap y@3@01)
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap x@67@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$RefTo$Snap y@3@01)))))
        ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($SortWrappers.$RefTo$Snap y@3@01)
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap x@67@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$RefTo$Snap y@3@01)))))))
    (=
      ($FVF.lookup_f (sm@74@01 x@67@01) x@67@01)
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap x@67@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01)))))))
    (= x@67@01 (Seq_index xs@2@01 0))
    (forall ((r $Ref)) (!
      (and
        (=>
          (= r (Seq_index xs@2@01 0))
          (= ($FVF.lookup_f $t@75@01 r) ($FVF.lookup_f (as sm@16@01  $FVF<f>) r)))
        (=>
          (= r x@67@01)
          (= ($FVF.lookup_f $t@75@01 r) ($FVF.lookup_f (sm@74@01 x@67@01) r))))
      :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
      :pattern (($FVF.lookup_f (sm@74@01 x@67@01) r))
      :pattern (($FVF.lookup_f $t@75@01 r))
      :qid |quant-u-20397|))
    (not (= x@67@01 $Ref.null))
    (=
      ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap x@67@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01)))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($SortWrappers.$RefTo$Snap y@3@01)
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap x@67@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$RefTo$Snap y@3@01))))))
        ($Snap.second ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($SortWrappers.$RefTo$Snap y@3@01)
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap x@67@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$RefTo$Snap y@3@01))))))))
    (=
      ($FVF.lookup_f (as sm@76@01  $FVF<f>) y@3@01)
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap x@67@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01))))))))
    (= y@3@01 (Seq_index xs@2@01 0))
    (forall ((r $Ref)) (!
      (and
        (=>
          (= r (Seq_index xs@2@01 0))
          (= ($FVF.lookup_f $t@77@01 r) ($FVF.lookup_f $t@75@01 r)))
        (=>
          (= r y@3@01)
          (= ($FVF.lookup_f $t@77@01 r) ($FVF.lookup_f (as sm@76@01  $FVF<f>) r))))
      :pattern (($FVF.lookup_f $t@75@01 r))
      :pattern (($FVF.lookup_f (as sm@76@01  $FVF<f>) r))
      :pattern (($FVF.lookup_f $t@77@01 r))
      :qid |quant-u-20398|))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap x@67@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01))))))
      $Snap.unit)
    (=
      ($FVF.lookup_f (as sm@78@01  $FVF<f>) y@3@01)
      ($FVF.lookup_f (as sm@73@01  $FVF<f>) y@3@01))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@79@01  $FPM) r) $Perm.Write)
      :pattern ((inv@6@01 r))
      :qid |qp-fld-prm-bnd|))
    (<= ($FVF.perm_f (as pm@79@01  $FPM) (Seq_index xs@2@01 0)) $Perm.Write))))
; Joined path conditions
(assert (or
  (not (Seq_contains (as Seq_empty  Seq<$Ref>) x@67@01))
  (Seq_contains (as Seq_empty  Seq<$Ref>) x@67@01)))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@14@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@78@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_f (as sm@78@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef25|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@2@01 0))
    (= ($FVF.lookup_f (as sm@78@01  $FVF<f>) r) ($FVF.lookup_f $t@77@01 r)))
  :pattern (($FVF.lookup_f (as sm@78@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@77@01 r))
  :qid |qp.fvfValDef26|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@79@01  $FPM) r)
    (+
      (ite
        (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
        (- $Perm.Write (pTaken@14@01 r))
        $Perm.No)
      (ite (= r (Seq_index xs@2@01 0)) (/ (to_real 3) (to_real 1)) $Perm.No)))
  :pattern (($FVF.perm_f (as pm@79@01  $FPM) r))
  :qid |qp.resPrmSumDef27|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@2@01 0))
    (=
      ($FVF.lookup_f (as sm@73@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@16@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@73@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@14@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@73@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_f (as sm@73@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef23|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@73@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@20@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@73@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@20@01  $FVF<f>) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@2@01 0))
    (= ($FVF.lookup_f (as sm@80@01  $FVF<f>) r) ($FVF.lookup_f $t@77@01 r)))
  :pattern (($FVF.lookup_f (as sm@80@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@77@01 r))
  :qid |qp.fvfValDef28|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@14@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@80@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_f (as sm@80@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@81@01  $FPM) r)
    (+
      (ite (= r (Seq_index xs@2@01 0)) (/ (to_real 3) (to_real 1)) $Perm.No)
      (ite
        (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
        (- $Perm.Write (pTaken@14@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@81@01  $FPM) r))
  :qid |qp.resPrmSumDef30|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@64@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@20@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@64@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@20@01  $FVF<f>) r))
  :qid |qp.fvfValDef18|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@14@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@64@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_f (as sm@64@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@2@01 0))
    (=
      ($FVF.lookup_f (as sm@64@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@16@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@64@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
  :qid |qp.fvfValDef20|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@67@01 $Ref)) (!
  (and
    (=>
      (Seq_contains (as Seq_empty  Seq<$Ref>) x@67@01)
      (and
        (Seq_contains (as Seq_empty  Seq<$Ref>) x@67@01)
        (=>
          (= y@3@01 (Seq_index xs@2@01 0))
          (=
            ($FVF.lookup_f (as sm@73@01  $FVF<f>) y@3@01)
            ($FVF.lookup_f (as sm@16@01  $FVF<f>) y@3@01)))
        (=>
          (ite
            (and (img@7@01 y@3@01) (Seq_contains xs@2@01 (inv@6@01 y@3@01)))
            (< $Perm.No (- $Perm.Write (pTaken@14@01 y@3@01)))
            false)
          (=
            ($FVF.lookup_f (as sm@73@01  $FVF<f>) y@3@01)
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) y@3@01)))
        (=
          ($FVF.lookup_f (as sm@73@01  $FVF<f>) y@3@01)
          ($FVF.lookup_f (as sm@20@01  $FVF<f>) y@3@01))
        (=
          ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@73@01  $FVF<f>) y@3@01))
          ($Snap.first ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@67@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01)))))
        (=
          ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@67@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($SortWrappers.$RefTo$Snap y@3@01)
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap x@67@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$RefTo$Snap y@3@01)))))
            ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($SortWrappers.$RefTo$Snap y@3@01)
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap x@67@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$RefTo$Snap y@3@01)))))))
        (=
          ($FVF.lookup_f (sm@74@01 x@67@01) x@67@01)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@67@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01)))))))
        (= x@67@01 (Seq_index xs@2@01 0))
        (forall ((r $Ref)) (!
          (and
            (=>
              (= r (Seq_index xs@2@01 0))
              (=
                ($FVF.lookup_f $t@75@01 r)
                ($FVF.lookup_f (as sm@16@01  $FVF<f>) r)))
            (=>
              (= r x@67@01)
              (= ($FVF.lookup_f $t@75@01 r) ($FVF.lookup_f (sm@74@01 x@67@01) r))))
          :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f (sm@74@01 x@67@01) r))
          :pattern (($FVF.lookup_f $t@75@01 r))
          :qid |quant-u-20397|))
        (not (= x@67@01 $Ref.null))
        (=
          ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@67@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01)))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($SortWrappers.$RefTo$Snap y@3@01)
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap x@67@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$RefTo$Snap y@3@01))))))
            ($Snap.second ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($SortWrappers.$RefTo$Snap y@3@01)
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap x@67@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$RefTo$Snap y@3@01))))))))
        (=
          ($FVF.lookup_f (as sm@76@01  $FVF<f>) y@3@01)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@67@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01))))))))
        (= y@3@01 (Seq_index xs@2@01 0))
        (forall ((r $Ref)) (!
          (and
            (=>
              (= r (Seq_index xs@2@01 0))
              (= ($FVF.lookup_f $t@77@01 r) ($FVF.lookup_f $t@75@01 r)))
            (=>
              (= r y@3@01)
              (=
                ($FVF.lookup_f $t@77@01 r)
                ($FVF.lookup_f (as sm@76@01  $FVF<f>) r))))
          :pattern (($FVF.lookup_f $t@75@01 r))
          :pattern (($FVF.lookup_f (as sm@76@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f $t@77@01 r))
          :qid |quant-u-20398|))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@67@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01))))))
          $Snap.unit)
        (=
          ($FVF.lookup_f (as sm@78@01  $FVF<f>) y@3@01)
          ($FVF.lookup_f (as sm@73@01  $FVF<f>) y@3@01))
        (forall ((r $Ref)) (!
          (<= ($FVF.perm_f (as pm@79@01  $FPM) r) $Perm.Write)
          :pattern ((inv@6@01 r))
          :qid |qp-fld-prm-bnd|))
        (<= ($FVF.perm_f (as pm@79@01  $FPM) (Seq_index xs@2@01 0)) $Perm.Write)))
    (or
      (not (Seq_contains (as Seq_empty  Seq<$Ref>) x@67@01))
      (Seq_contains (as Seq_empty  Seq<$Ref>) x@67@01)))
  :pattern ((Seq_contains (as Seq_empty  Seq<$Ref>) x@67@01))
  :pattern ((Seq_contains_trigger (as Seq_empty  Seq<$Ref>) x@67@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@27@15@29@37-aux|)))
(assert (forall ((x@67@01 $Ref)) (!
  (and
    (=>
      (Seq_contains (as Seq_empty  Seq<$Ref>) x@67@01)
      (and
        (Seq_contains (as Seq_empty  Seq<$Ref>) x@67@01)
        (=>
          (= y@3@01 (Seq_index xs@2@01 0))
          (=
            ($FVF.lookup_f (as sm@73@01  $FVF<f>) y@3@01)
            ($FVF.lookup_f (as sm@16@01  $FVF<f>) y@3@01)))
        (=>
          (ite
            (and (img@7@01 y@3@01) (Seq_contains xs@2@01 (inv@6@01 y@3@01)))
            (< $Perm.No (- $Perm.Write (pTaken@14@01 y@3@01)))
            false)
          (=
            ($FVF.lookup_f (as sm@73@01  $FVF<f>) y@3@01)
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) y@3@01)))
        (=
          ($FVF.lookup_f (as sm@73@01  $FVF<f>) y@3@01)
          ($FVF.lookup_f (as sm@20@01  $FVF<f>) y@3@01))
        (=
          ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@73@01  $FVF<f>) y@3@01))
          ($Snap.first ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@67@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01)))))
        (=
          ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@67@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($SortWrappers.$RefTo$Snap y@3@01)
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap x@67@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$RefTo$Snap y@3@01)))))
            ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($SortWrappers.$RefTo$Snap y@3@01)
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap x@67@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$RefTo$Snap y@3@01)))))))
        (=
          ($FVF.lookup_f (sm@74@01 x@67@01) x@67@01)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@67@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01)))))))
        (= x@67@01 (Seq_index xs@2@01 0))
        (forall ((r $Ref)) (!
          (and
            (=>
              (= r (Seq_index xs@2@01 0))
              (=
                ($FVF.lookup_f $t@75@01 r)
                ($FVF.lookup_f (as sm@16@01  $FVF<f>) r)))
            (=>
              (= r x@67@01)
              (= ($FVF.lookup_f $t@75@01 r) ($FVF.lookup_f (sm@74@01 x@67@01) r))))
          :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f (sm@74@01 x@67@01) r))
          :pattern (($FVF.lookup_f $t@75@01 r))
          :qid |quant-u-20397|))
        (not (= x@67@01 $Ref.null))
        (=
          ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@67@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01)))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($SortWrappers.$RefTo$Snap y@3@01)
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap x@67@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$RefTo$Snap y@3@01))))))
            ($Snap.second ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($SortWrappers.$RefTo$Snap y@3@01)
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap x@67@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$RefTo$Snap y@3@01))))))))
        (=
          ($FVF.lookup_f (as sm@76@01  $FVF<f>) y@3@01)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@67@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01))))))))
        (= y@3@01 (Seq_index xs@2@01 0))
        (forall ((r $Ref)) (!
          (and
            (=>
              (= r (Seq_index xs@2@01 0))
              (= ($FVF.lookup_f $t@77@01 r) ($FVF.lookup_f $t@75@01 r)))
            (=>
              (= r y@3@01)
              (=
                ($FVF.lookup_f $t@77@01 r)
                ($FVF.lookup_f (as sm@76@01  $FVF<f>) r))))
          :pattern (($FVF.lookup_f $t@75@01 r))
          :pattern (($FVF.lookup_f (as sm@76@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f $t@77@01 r))
          :qid |quant-u-20398|))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@68@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@67@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01))))))
          $Snap.unit)
        (=
          ($FVF.lookup_f (as sm@78@01  $FVF<f>) y@3@01)
          ($FVF.lookup_f (as sm@73@01  $FVF<f>) y@3@01))
        (forall ((r $Ref)) (!
          (<= ($FVF.perm_f (as pm@79@01  $FPM) r) $Perm.Write)
          :pattern ((inv@6@01 r))
          :qid |qp-fld-prm-bnd|))
        (<= ($FVF.perm_f (as pm@79@01  $FPM) (Seq_index xs@2@01 0)) $Perm.Write)))
    (or
      (not (Seq_contains (as Seq_empty  Seq<$Ref>) x@67@01))
      (Seq_contains (as Seq_empty  Seq<$Ref>) x@67@01)))
  :pattern ((Seq_contains_trigger (as Seq_empty  Seq<$Ref>) x@67@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@27@15@29@37-aux|)))
(push) ; 4
(assert (not (forall ((x@67@01 $Ref)) (!
  (=>
    (Seq_contains (as Seq_empty  Seq<$Ref>) x@67@01)
    (=
      ($FVF.lookup_f (as sm@80@01  $FVF<f>) x@67@01)
      ($FVF.lookup_f (as sm@64@01  $FVF<f>) x@67@01)))
  :pattern ((Seq_contains (as Seq_empty  Seq<$Ref>) x@67@01))
  :pattern ((Seq_contains_trigger (as Seq_empty  Seq<$Ref>) x@67@01))
  :pattern ((Seq_contains_trigger (as Seq_empty  Seq<$Ref>) x@67@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@27@15@29@37|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((x@67@01 $Ref)) (!
  (=>
    (Seq_contains (as Seq_empty  Seq<$Ref>) x@67@01)
    (=
      ($FVF.lookup_f (as sm@80@01  $FVF<f>) x@67@01)
      ($FVF.lookup_f (as sm@64@01  $FVF<f>) x@67@01)))
  :pattern ((Seq_contains (as Seq_empty  Seq<$Ref>) x@67@01))
  :pattern ((Seq_contains_trigger (as Seq_empty  Seq<$Ref>) x@67@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@27@15@29@37|)))
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 4
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@37@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@36@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@37@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@36@01  $FVF<f>) r))
  :qid |qp.fvfValDef5|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@38@01  $FPM) r)
    (+
      (ite
        (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
        $Perm.Write
        $Perm.No)
      (ite (= r y@3@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@38@01  $FPM) r))
  :qid |qp.resPrmSumDef6|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@49@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
          $Perm.Write
          $Perm.No)
        (ite (= r x@39@01) $Perm.Write $Perm.No))
      (ite (= r y@3@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@49@01  $FPM) r))
  :qid |qp.resPrmSumDef13|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@45@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@36@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@45@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@36@01  $FVF<f>) r))
  :qid |qp.fvfValDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
    (=
      ($FVF.lookup_f (as sm@45@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@45@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@51@01  $FPM) r)
    (+
      (+
        (ite (= r y@3@01) $Perm.Write $Perm.No)
        (ite (= r x@39@01) $Perm.Write $Perm.No))
      (ite
        (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@51@01  $FPM) r))
  :qid |qp.resPrmSumDef17|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@20@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@20@01  $FVF<f>) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@14@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@2@01 0))
    (=
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@16@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
  :qid |qp.fvfValDef2|)))
(assert (=
  ($FVF.lookup_f (as sm@36@01  $FVF<f>) y@3@01)
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))
  $Snap.unit))
(assert (= ($FVF.lookup_f (as sm@37@01  $FVF<f>) y@3@01) 1))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))
  $Snap.unit))
(assert (forall ((x@39@01 $Ref)) (!
  (and
    (=>
      (Seq_contains completed@22@01 x@39@01)
      (and
        (Seq_contains completed@22@01 x@39@01)
        (=>
          (and
            (img@27@01 y@3@01 $Perm.Write x@39@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01)
            (Seq_contains
              completed@22@01
              (inv@26@01 y@3@01 $Perm.Write x@39@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01)))
          (and
            (not
              (=
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($Snap.combine
                            ($Snap.combine
                              ($SortWrappers.$RefTo$Snap y@3@01)
                              ($SortWrappers.$PermTo$Snap $Perm.Write))
                            ($SortWrappers.$RefTo$Snap x@39@01))
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap y@3@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                $Snap.unit))
            (=
              ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($Snap.combine
                            ($SortWrappers.$RefTo$Snap y@3@01)
                            ($SortWrappers.$PermTo$Snap $Perm.Write))
                          ($SortWrappers.$RefTo$Snap x@39@01))
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap y@3@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$RefTo$Snap y@3@01)))
              ($PSF.lookup_wand@0 ($SortWrappers.$SnapTo$PSF<wand@0> ($Snap.first $t@24@01)) ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($Snap.combine
                            ($SortWrappers.$RefTo$Snap y@3@01)
                            ($SortWrappers.$PermTo$Snap $Perm.Write))
                          ($SortWrappers.$RefTo$Snap x@39@01))
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap y@3@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$RefTo$Snap y@3@01))))))
        (=
          ($FVF.lookup_f (as sm@45@01  $FVF<f>) y@3@01)
          ($FVF.lookup_f (as sm@36@01  $FVF<f>) y@3@01))
        (=>
          (and (img@32@01 y@3@01) (Seq_contains toGo@23@01 (inv@31@01 y@3@01)))
          (=
            ($FVF.lookup_f (as sm@45@01  $FVF<f>) y@3@01)
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) y@3@01)))
        (=
          ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@45@01  $FVF<f>) y@3@01))
          ($Snap.first ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@39@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01)))))
        (=
          ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@39@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($SortWrappers.$RefTo$Snap y@3@01)
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap x@39@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$RefTo$Snap y@3@01)))))
            ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($SortWrappers.$RefTo$Snap y@3@01)
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap x@39@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$RefTo$Snap y@3@01)))))))
        (=
          ($FVF.lookup_f (sm@46@01 x@39@01) x@39@01)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@39@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01)))))))
        (not (= x@39@01 $Ref.null))
        (=
          ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@39@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01)))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($SortWrappers.$RefTo$Snap y@3@01)
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap x@39@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$RefTo$Snap y@3@01))))))
            ($Snap.second ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($SortWrappers.$RefTo$Snap y@3@01)
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap x@39@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$RefTo$Snap y@3@01))))))))
        (=
          ($FVF.lookup_f (as sm@47@01  $FVF<f>) y@3@01)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@39@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@39@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01))))))
          $Snap.unit)
        (forall ((r $Ref)) (!
          (=>
            (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
            (=
              ($FVF.lookup_f (as sm@48@01  $FVF<f>) r)
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
          :pattern (($FVF.lookup_f (as sm@48@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
          :qid |qp.fvfValDef10|))
        (forall ((r $Ref)) (!
          (=>
            (= r x@39@01)
            (=
              ($FVF.lookup_f (as sm@48@01  $FVF<f>) r)
              ($FVF.lookup_f (sm@46@01 x@39@01) r)))
          :pattern (($FVF.lookup_f (as sm@48@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f (sm@46@01 x@39@01) r))
          :qid |qp.fvfValDef11|))
        (forall ((r $Ref)) (!
          (=>
            (= r y@3@01)
            (=
              ($FVF.lookup_f (as sm@48@01  $FVF<f>) r)
              ($FVF.lookup_f (as sm@47@01  $FVF<f>) r)))
          :pattern (($FVF.lookup_f (as sm@48@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f (as sm@47@01  $FVF<f>) r))
          :qid |qp.fvfValDef12|))
        (=
          ($FVF.lookup_f (as sm@48@01  $FVF<f>) y@3@01)
          ($FVF.lookup_f (as sm@45@01  $FVF<f>) y@3@01))
        (not (= x@39@01 y@3@01))
        (not (= y@3@01 x@39@01))
        (forall ((r $Ref)) (!
          (<= ($FVF.perm_f (as pm@49@01  $FPM) r) $Perm.Write)
          :pattern ((inv@31@01 r))
          :qid |qp-fld-prm-bnd|))
        (<= ($FVF.perm_f (as pm@49@01  $FPM) x@39@01) $Perm.Write)
        (<= ($FVF.perm_f (as pm@49@01  $FPM) y@3@01) $Perm.Write)
        (forall ((r $Ref)) (!
          (=>
            (= r y@3@01)
            (=
              ($FVF.lookup_f (as sm@50@01  $FVF<f>) r)
              ($FVF.lookup_f (as sm@47@01  $FVF<f>) r)))
          :pattern (($FVF.lookup_f (as sm@50@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f (as sm@47@01  $FVF<f>) r))
          :qid |qp.fvfValDef14|))
        (forall ((r $Ref)) (!
          (=>
            (= r x@39@01)
            (=
              ($FVF.lookup_f (as sm@50@01  $FVF<f>) r)
              ($FVF.lookup_f (sm@46@01 x@39@01) r)))
          :pattern (($FVF.lookup_f (as sm@50@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f (sm@46@01 x@39@01) r))
          :qid |qp.fvfValDef15|))
        (forall ((r $Ref)) (!
          (=>
            (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
            (=
              ($FVF.lookup_f (as sm@50@01  $FVF<f>) r)
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
          :pattern (($FVF.lookup_f (as sm@50@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
          :qid |qp.fvfValDef16|))))
    (or
      (not (Seq_contains completed@22@01 x@39@01))
      (Seq_contains completed@22@01 x@39@01)))
  :pattern ((Seq_contains completed@22@01 x@39@01))
  :pattern ((Seq_contains_trigger completed@22@01 x@39@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@27@15@29@37-aux|)))
(assert (forall ((x@39@01 $Ref)) (!
  (and
    (=>
      (Seq_contains completed@22@01 x@39@01)
      (and
        (Seq_contains completed@22@01 x@39@01)
        (=>
          (and
            (img@27@01 y@3@01 $Perm.Write x@39@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01)
            (Seq_contains
              completed@22@01
              (inv@26@01 y@3@01 $Perm.Write x@39@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01)))
          (and
            (not
              (=
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($Snap.combine
                            ($Snap.combine
                              ($SortWrappers.$RefTo$Snap y@3@01)
                              ($SortWrappers.$PermTo$Snap $Perm.Write))
                            ($SortWrappers.$RefTo$Snap x@39@01))
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap y@3@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                $Snap.unit))
            (=
              ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($Snap.combine
                            ($SortWrappers.$RefTo$Snap y@3@01)
                            ($SortWrappers.$PermTo$Snap $Perm.Write))
                          ($SortWrappers.$RefTo$Snap x@39@01))
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap y@3@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$RefTo$Snap y@3@01)))
              ($PSF.lookup_wand@0 ($SortWrappers.$SnapTo$PSF<wand@0> ($Snap.first $t@24@01)) ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($Snap.combine
                            ($SortWrappers.$RefTo$Snap y@3@01)
                            ($SortWrappers.$PermTo$Snap $Perm.Write))
                          ($SortWrappers.$RefTo$Snap x@39@01))
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap y@3@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$RefTo$Snap y@3@01))))))
        (=
          ($FVF.lookup_f (as sm@45@01  $FVF<f>) y@3@01)
          ($FVF.lookup_f (as sm@36@01  $FVF<f>) y@3@01))
        (=>
          (and (img@32@01 y@3@01) (Seq_contains toGo@23@01 (inv@31@01 y@3@01)))
          (=
            ($FVF.lookup_f (as sm@45@01  $FVF<f>) y@3@01)
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) y@3@01)))
        (=
          ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@45@01  $FVF<f>) y@3@01))
          ($Snap.first ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@39@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01)))))
        (=
          ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@39@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($SortWrappers.$RefTo$Snap y@3@01)
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap x@39@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$RefTo$Snap y@3@01)))))
            ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($SortWrappers.$RefTo$Snap y@3@01)
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap x@39@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$RefTo$Snap y@3@01)))))))
        (=
          ($FVF.lookup_f (sm@46@01 x@39@01) x@39@01)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@39@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01)))))))
        (not (= x@39@01 $Ref.null))
        (=
          ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@39@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01)))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($SortWrappers.$RefTo$Snap y@3@01)
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap x@39@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$RefTo$Snap y@3@01))))))
            ($Snap.second ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($SortWrappers.$RefTo$Snap y@3@01)
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap x@39@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$RefTo$Snap y@3@01))))))))
        (=
          ($FVF.lookup_f (as sm@47@01  $FVF<f>) y@3@01)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@39@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@41@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@39@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01))))))
          $Snap.unit)
        (forall ((r $Ref)) (!
          (=>
            (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
            (=
              ($FVF.lookup_f (as sm@48@01  $FVF<f>) r)
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
          :pattern (($FVF.lookup_f (as sm@48@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
          :qid |qp.fvfValDef10|))
        (forall ((r $Ref)) (!
          (=>
            (= r x@39@01)
            (=
              ($FVF.lookup_f (as sm@48@01  $FVF<f>) r)
              ($FVF.lookup_f (sm@46@01 x@39@01) r)))
          :pattern (($FVF.lookup_f (as sm@48@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f (sm@46@01 x@39@01) r))
          :qid |qp.fvfValDef11|))
        (forall ((r $Ref)) (!
          (=>
            (= r y@3@01)
            (=
              ($FVF.lookup_f (as sm@48@01  $FVF<f>) r)
              ($FVF.lookup_f (as sm@47@01  $FVF<f>) r)))
          :pattern (($FVF.lookup_f (as sm@48@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f (as sm@47@01  $FVF<f>) r))
          :qid |qp.fvfValDef12|))
        (=
          ($FVF.lookup_f (as sm@48@01  $FVF<f>) y@3@01)
          ($FVF.lookup_f (as sm@45@01  $FVF<f>) y@3@01))
        (not (= x@39@01 y@3@01))
        (not (= y@3@01 x@39@01))
        (forall ((r $Ref)) (!
          (<= ($FVF.perm_f (as pm@49@01  $FPM) r) $Perm.Write)
          :pattern ((inv@31@01 r))
          :qid |qp-fld-prm-bnd|))
        (<= ($FVF.perm_f (as pm@49@01  $FPM) x@39@01) $Perm.Write)
        (<= ($FVF.perm_f (as pm@49@01  $FPM) y@3@01) $Perm.Write)
        (forall ((r $Ref)) (!
          (=>
            (= r y@3@01)
            (=
              ($FVF.lookup_f (as sm@50@01  $FVF<f>) r)
              ($FVF.lookup_f (as sm@47@01  $FVF<f>) r)))
          :pattern (($FVF.lookup_f (as sm@50@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f (as sm@47@01  $FVF<f>) r))
          :qid |qp.fvfValDef14|))
        (forall ((r $Ref)) (!
          (=>
            (= r x@39@01)
            (=
              ($FVF.lookup_f (as sm@50@01  $FVF<f>) r)
              ($FVF.lookup_f (sm@46@01 x@39@01) r)))
          :pattern (($FVF.lookup_f (as sm@50@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f (sm@46@01 x@39@01) r))
          :qid |qp.fvfValDef15|))
        (forall ((r $Ref)) (!
          (=>
            (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
            (=
              ($FVF.lookup_f (as sm@50@01  $FVF<f>) r)
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
          :pattern (($FVF.lookup_f (as sm@50@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
          :qid |qp.fvfValDef16|))))
    (or
      (not (Seq_contains completed@22@01 x@39@01))
      (Seq_contains completed@22@01 x@39@01)))
  :pattern ((Seq_contains_trigger completed@22@01 x@39@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@27@15@29@37-aux|)))
(assert (forall ((x@39@01 $Ref)) (!
  (=>
    (Seq_contains completed@22@01 x@39@01)
    (=
      ($FVF.lookup_f (as sm@50@01  $FVF<f>) x@39@01)
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) x@39@01)))
  :pattern ((Seq_contains completed@22@01 x@39@01))
  :pattern ((Seq_contains_trigger completed@22@01 x@39@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@27@15@29@37|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
    (= (inv@31@01 r) r))
  :pattern ((inv@31@01 r))
  :qid |f-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@35@01  $FPM) r)
    (+
      (+
        (ite (= r y@3@01) $Perm.Write $Perm.No)
        (ite
          (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
          (- $Perm.Write (pTaken@14@01 r))
          $Perm.No))
      (ite (= r (Seq_index xs@2@01 0)) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@35@01  $FPM) r))
  :qid |qp.resPrmSumDef3|)))
(assert (forall ((x@30@01 $Ref)) (!
  (=>
    (Seq_contains toGo@23@01 x@30@01)
    (and (= (inv@31@01 x@30@01) x@30@01) (img@32@01 x@30@01)))
  :pattern ((Seq_contains toGo@23@01 x@30@01))
  :pattern ((Seq_contains_trigger toGo@23@01 x@30@01))
  :pattern ((Seq_contains_trigger toGo@23@01 x@30@01))
  :pattern ((inv@31@01 x@30@01))
  :pattern ((img@32@01 x@30@01))
  :qid |quant-u-20374|)))
(assert (forall ((x@30@01 $Ref)) (!
  (=> (Seq_contains toGo@23@01 x@30@01) (not (= x@30@01 $Ref.null)))
  :pattern ((Seq_contains toGo@23@01 x@30@01))
  :pattern ((Seq_contains_trigger toGo@23@01 x@30@01))
  :pattern ((Seq_contains_trigger toGo@23@01 x@30@01))
  :pattern ((inv@31@01 x@30@01))
  :pattern ((img@32@01 x@30@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@24@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@24@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@24@01))))
  $Snap.unit))
(assert (Seq_equal xs@2@01 (Seq_append completed@22@01 toGo@23@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))
  $Snap.unit))
(assert (forall ((x@33@01 $Ref)) (!
  (or (not (Seq_contains toGo@23@01 x@33@01)) (Seq_contains toGo@23@01 x@33@01))
  :pattern ((Seq_contains toGo@23@01 x@33@01))
  :pattern ((Seq_contains_trigger toGo@23@01 x@33@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@24@15@24@76-aux|)))
(assert (forall ((x@33@01 $Ref)) (!
  (or (not (Seq_contains toGo@23@01 x@33@01)) (Seq_contains toGo@23@01 x@33@01))
  :pattern ((Seq_contains_trigger toGo@23@01 x@33@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@24@15@24@76-aux|)))
(assert (forall ((x@33@01 $Ref)) (!
  (=>
    (Seq_contains toGo@23@01 x@33@01)
    (=
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) x@33@01)
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) x@33@01)))
  :pattern ((Seq_contains toGo@23@01 x@33@01))
  :pattern ((Seq_contains_trigger toGo@23@01 x@33@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@24@15@24@76|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@24@01)))))))))
(assert (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm) (x6 $Ref) (x7 $Ref)) (!
  (=>
    (and
      (img@27@01 x0 x1 x2 x3 x4 x5 x6 x7)
      (Seq_contains completed@22@01 (inv@26@01 x0 x1 x2 x3 x4 x5 x6 x7)))
    (and
      (= y@3@01 x0)
      (= $Perm.Write x1)
      (= (inv@26@01 x0 x1 x2 x3 x4 x5 x6 x7) x2)
      (= $Perm.Write x3)
      (= y@3@01 x4)
      (= $Perm.Write x5)
      (= y@3@01 x6)
      (= y@3@01 x7)))
  :pattern ((inv@26@01 x0 x1 x2 x3 x4 x5 x6 x7))
  :qid |wand@0-fctOfInv|)))
(assert (forall ((x@25@01 $Ref)) (!
  (=>
    (Seq_contains completed@22@01 x@25@01)
    (and
      (=
        (inv@26@01 y@3@01 $Perm.Write x@25@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01)
        x@25@01)
      (img@27@01 y@3@01 $Perm.Write x@25@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01)))
  :pattern ((Seq_contains completed@22@01 x@25@01))
  :pattern ((Seq_contains_trigger completed@22@01 x@25@01))
  :pattern ((Seq_contains_trigger completed@22@01 x@25@01))
  :pattern ((inv@26@01 y@3@01 $Perm.Write x@25@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01))
  :pattern ((img@27@01 y@3@01 $Perm.Write x@25@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01))
  :qid |quant-u-20372|)))
(assert (=
  ($Snap.second $t@24@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@24@01))
    ($Snap.second ($Snap.second $t@24@01)))))
(assert (= ($Snap.first ($Snap.second $t@24@01)) $Snap.unit))
(assert (forall ((i@28@01 Int) (j@29@01 Int)) (!
  (and
    (=>
      (<= 0 i@28@01)
      (and
        (<= 0 i@28@01)
        (=>
          (<= 0 j@29@01)
          (and
            (<= 0 j@29@01)
            (=>
              (< i@28@01 (Seq_length toGo@23@01))
              (and
                (< i@28@01 (Seq_length toGo@23@01))
                (or
                  (< j@29@01 (Seq_length toGo@23@01))
                  (not (< j@29@01 (Seq_length toGo@23@01))))))
            (or
              (< i@28@01 (Seq_length toGo@23@01))
              (not (< i@28@01 (Seq_length toGo@23@01))))))
        (or (<= 0 j@29@01) (not (<= 0 j@29@01)))))
    (or (<= 0 i@28@01) (not (<= 0 i@28@01)))
    (=>
      (and
        (<= 0 i@28@01)
        (and
          (<= 0 j@29@01)
          (and
            (< i@28@01 (Seq_length toGo@23@01))
            (and (< j@29@01 (Seq_length toGo@23@01)) (not (= i@28@01 j@29@01))))))
      (and
        (<= 0 i@28@01)
        (<= 0 j@29@01)
        (< i@28@01 (Seq_length toGo@23@01))
        (< j@29@01 (Seq_length toGo@23@01))
        (not (= i@28@01 j@29@01))))
    (or
      (not
        (and
          (<= 0 i@28@01)
          (and
            (<= 0 j@29@01)
            (and
              (< i@28@01 (Seq_length toGo@23@01))
              (and (< j@29@01 (Seq_length toGo@23@01)) (not (= i@28@01 j@29@01)))))))
      (and
        (<= 0 i@28@01)
        (and
          (<= 0 j@29@01)
          (and
            (< i@28@01 (Seq_length toGo@23@01))
            (and (< j@29@01 (Seq_length toGo@23@01)) (not (= i@28@01 j@29@01))))))))
  :pattern ((Seq_index toGo@23@01 i@28@01) (Seq_index toGo@23@01 j@29@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@21@15@21@117-aux|)))
(assert (forall ((i@28@01 Int) (j@29@01 Int)) (!
  (=>
    (and
      (<= 0 i@28@01)
      (and
        (<= 0 j@29@01)
        (and
          (< i@28@01 (Seq_length toGo@23@01))
          (and (< j@29@01 (Seq_length toGo@23@01)) (not (= i@28@01 j@29@01))))))
    (not (= (Seq_index toGo@23@01 i@28@01) (Seq_index toGo@23@01 j@29@01))))
  :pattern ((Seq_index toGo@23@01 i@28@01) (Seq_index toGo@23@01 j@29@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@21@15@21@117|)))
(assert (=
  ($Snap.second ($Snap.second $t@24@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@24@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@24@01))))))
(assert (= $t@24@01 ($Snap.combine ($Snap.first $t@24@01) ($Snap.second $t@24@01))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 10)
(check-sat)
; unknown
; Loop head block: Check well-definedness of edge conditions
(set-option :timeout 0)
(push) ; 5
; [eval] |toGo| != 0
; [eval] |toGo|
(pop) ; 5
(push) ; 5
; [eval] !(|toGo| != 0)
; [eval] |toGo| != 0
; [eval] |toGo|
(pop) ; 5
; Loop head block: Follow loop-internal edges
; [eval] |toGo| != 0
; [eval] |toGo|
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_length toGo@23@01) 0)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= (Seq_length toGo@23@01) 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 19 | |toGo@23@01| != 0 | live]
; [else-branch: 19 | |toGo@23@01| == 0 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 19 | |toGo@23@01| != 0]
(assert (not (= (Seq_length toGo@23@01) 0)))
; [exec]
; var localX: Ref
(declare-const localX@82@01 $Ref)
; [exec]
; localX := toGo[0]
; [eval] toGo[0]
(push) ; 6
(assert (not (< 0 (Seq_length toGo@23@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const localX@83@01 $Ref)
(assert (= localX@83@01 (Seq_index toGo@23@01 0)))
; [exec]
; package acc(y.f, write) --*
; acc(localX.f, write) && (acc(y.f, write) && y.f == old[lhs](y.f)) {
; }
(push) ; 6
(declare-const $t@84@01 $Snap)
(declare-const sm@85@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@85@01  $FVF<f>) y@3@01)
  ($SortWrappers.$SnapToInt $t@84@01)))
(push) ; 7
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 7
(assert (not (forall ((r $Ref)) (!
  (=> (= r localX@83@01) false)
  
  :qid |quant-u-20399|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@86@01 $FVF<f>)
; Definitional axioms for snapshot map values (instantiated)
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= y@3@01 localX@83@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@87@01 ((r $Ref)) $Perm
  (ite
    (= r localX@83@01)
    ($Perm.min (ite (= r y@3@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@87@01 y@3@01)) $Perm.No)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@87@01 r) $Perm.No)
  
  :qid |quant-u-20402|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=> (= r localX@83@01) (= (- $Perm.Write (pTaken@87@01 r)) $Perm.No))
  
  :qid |quant-u-20403|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 7
(assert (not (forall ((r $Ref)) (!
  (=> (= r localX@83@01) (= (- $Perm.Write (pTaken@87@01 r)) $Perm.No))
  
  :qid |quant-u-20403|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@88@01 $FVF<f>)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (= localX@83@01 y@3@01)
  (=
    ($FVF.lookup_f (as sm@88@01  $FVF<f>) localX@83@01)
    ($FVF.lookup_f (as sm@85@01  $FVF<f>) localX@83@01))))
(assert (= (as sm@86@01  $FVF<f>) (as sm@88@01  $FVF<f>)))
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= y@3@01 localX@83@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@89@01 ((r $Ref)) $Perm
  (ite
    (= r localX@83@01)
    ($Perm.min
      (ite
        (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@87@01 r)))
    $Perm.No))
(define-fun pTaken@90@01 ((r $Ref)) $Perm
  (ite
    (= r localX@83@01)
    ($Perm.min
      (ite (= r y@3@01) $Perm.Write $Perm.No)
      (- (- $Perm.Write (pTaken@87@01 r)) (pTaken@89@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@89@01 r))
    $Perm.No)
  
  :qid |quant-u-20405|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@89@01 r) $Perm.No)
  
  :qid |quant-u-20406|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (= r localX@83@01)
    (= (- (- $Perm.Write (pTaken@87@01 r)) (pTaken@89@01 r)) $Perm.No))
  
  :qid |quant-u-20407|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@91@01 $FVF<f>)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@32@01 localX@83@01)
    (Seq_contains toGo@23@01 (inv@31@01 localX@83@01)))
  (=
    ($FVF.lookup_f (as sm@91@01  $FVF<f>) localX@83@01)
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) localX@83@01))))
(assert (=>
  (= localX@83@01 y@3@01)
  (=
    ($FVF.lookup_f (as sm@91@01  $FVF<f>) localX@83@01)
    ($FVF.lookup_f (as sm@36@01  $FVF<f>) localX@83@01))))
(assert (= (as sm@86@01  $FVF<f>) (as sm@91@01  $FVF<f>)))
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const $t@92@01 $FVF<f>)
(declare-const $t@93@01 $FVF<f>)
(assert (forall ((r $Ref)) (!
  (=>
    (ite (= r localX@83@01) (< $Perm.No (pTaken@87@01 r)) false)
    (= ($FVF.lookup_f $t@92@01 r) ($FVF.lookup_f (as sm@88@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@86@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@88@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@92@01 r))
  :qid |quant-u-20408|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (ite (= r localX@83@01) (< $Perm.No (pTaken@87@01 r)) false)
      (= ($FVF.lookup_f $t@93@01 r) ($FVF.lookup_f $t@92@01 r)))
    (=>
      (ite
        (= r localX@83@01)
        (< $Perm.No (- $Perm.Write (pTaken@87@01 r)))
        false)
      (= ($FVF.lookup_f $t@93@01 r) ($FVF.lookup_f (as sm@91@01  $FVF<f>) r))))
  :pattern (($FVF.lookup_f $t@92@01 r))
  :pattern (($FVF.lookup_f (as sm@91@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@93@01 r))
  :qid |quant-u-20409|)))
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 7
(assert (not (forall ((r $Ref)) (!
  (=> (= r y@3@01) false)
  
  :qid |quant-u-20410|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@94@01 $FVF<f>)
; Definitional axioms for snapshot map values (instantiated)
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@95@01 ((r $Ref)) $Perm
  (ite
    (= r y@3@01)
    ($Perm.min (ite (= r y@3@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@95@01 y@3@01)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=> (= r y@3@01) (= (- $Perm.Write (pTaken@95@01 r)) $Perm.No))
  
  :qid |quant-u-20413|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@96@01 $FVF<f>)
; Definitional axioms for snapshot map values (instantiated)
(assert (=
  ($FVF.lookup_f (as sm@96@01  $FVF<f>) y@3@01)
  ($FVF.lookup_f (as sm@85@01  $FVF<f>) y@3@01)))
(assert (= (as sm@94@01  $FVF<f>) (as sm@96@01  $FVF<f>)))
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= y@3@01 localX@83@01)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const $t@97@01 $FVF<f>)
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (= ($FVF.lookup_f $t@97@01 r) ($FVF.lookup_f (as sm@96@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@94@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@96@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@97@01 r))
  :qid |quant-u-20414|)))
; [eval] y.f == old[lhs](y.f)
(declare-const sm@98@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r localX@83@01)
    (= ($FVF.lookup_f (as sm@98@01  $FVF<f>) r) ($FVF.lookup_f $t@93@01 r)))
  :pattern (($FVF.lookup_f (as sm@98@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@93@01 r))
  :qid |qp.fvfValDef35|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (= ($FVF.lookup_f (as sm@98@01  $FVF<f>) r) ($FVF.lookup_f $t@97@01 r)))
  :pattern (($FVF.lookup_f (as sm@98@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@97@01 r))
  :qid |qp.fvfValDef36|)))
(declare-const pm@99@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@99@01  $FPM) r)
    (+
      (ite (= r localX@83@01) $Perm.Write $Perm.No)
      (ite (= r y@3@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@99@01  $FPM) r))
  :qid |qp.resPrmSumDef37|)))
(set-option :timeout 0)
(push) ; 7
(assert (not (< $Perm.No ($FVF.perm_f (as pm@99@01  $FPM) y@3@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] old[lhs](y.f)
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@96@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@85@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@96@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@85@01  $FVF<f>) r))
  :qid |qp.fvfValDef34|)))
(push) ; 7
(assert (not (=
  ($FVF.lookup_f (as sm@98@01  $FVF<f>) y@3@01)
  ($FVF.lookup_f (as sm@96@01  $FVF<f>) y@3@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_f (as sm@98@01  $FVF<f>) y@3@01)
  ($FVF.lookup_f (as sm@96@01  $FVF<f>) y@3@01)))
; Create MagicWandSnapFunction for wand acc(y.f, write) --* acc(localX.f, write) && (acc(y.f, write) && y.f == old[lhs](y.f))
(declare-const mwsf@100@01 $MWSF)
(assert (forall (($t@84@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@100@01 $t@84@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@91@01  $FVF<f>) localX@83@01))
      ($Snap.combine
        ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@96@01  $FVF<f>) y@3@01))
        $Snap.unit)))
  :pattern ((MWSF_apply mwsf@100@01 $t@84@01))
  :qid |quant-u-20415|)))
(declare-const sm@101@01 $PSF<wand@0>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_wand@0 (as sm@101@01  $PSF<wand@0>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap y@3@01)
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap localX@83@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@3@01))
    ($SortWrappers.$RefTo$Snap y@3@01)))
  ($Snap.combine
    $t@84@01
    ($Snap.combine
      ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@91@01  $FVF<f>) localX@83@01))
      ($Snap.combine
        ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@96@01  $FVF<f>) y@3@01))
        $Snap.unit)))))
(pop) ; 6
(push) ; 6
(assert (=
  ($FVF.lookup_f (as sm@85@01  $FVF<f>) y@3@01)
  ($SortWrappers.$SnapToInt $t@84@01)))
(assert (and
  (=>
    (= localX@83@01 y@3@01)
    (=
      ($FVF.lookup_f (as sm@88@01  $FVF<f>) localX@83@01)
      ($FVF.lookup_f (as sm@85@01  $FVF<f>) localX@83@01)))
  (= (as sm@86@01  $FVF<f>) (as sm@88@01  $FVF<f>))
  (=>
    (and
      (img@32@01 localX@83@01)
      (Seq_contains toGo@23@01 (inv@31@01 localX@83@01)))
    (=
      ($FVF.lookup_f (as sm@91@01  $FVF<f>) localX@83@01)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) localX@83@01)))
  (=>
    (= localX@83@01 y@3@01)
    (=
      ($FVF.lookup_f (as sm@91@01  $FVF<f>) localX@83@01)
      ($FVF.lookup_f (as sm@36@01  $FVF<f>) localX@83@01)))
  (= (as sm@86@01  $FVF<f>) (as sm@91@01  $FVF<f>))))
(assert (and
  (=
    ($FVF.lookup_f (as sm@96@01  $FVF<f>) y@3@01)
    ($FVF.lookup_f (as sm@85@01  $FVF<f>) y@3@01))
  (= (as sm@94@01  $FVF<f>) (as sm@96@01  $FVF<f>))))
(assert (and
  (forall (($t@84@01 $Snap)) (!
    (=
      (MWSF_apply mwsf@100@01 $t@84@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@91@01  $FVF<f>) localX@83@01))
        ($Snap.combine
          ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@96@01  $FVF<f>) y@3@01))
          $Snap.unit)))
    :pattern ((MWSF_apply mwsf@100@01 $t@84@01))
    :qid |quant-u-20415|))
  (=
    ($PSF.lookup_wand@0 (as sm@101@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@3@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap localX@83@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@3@01))
      ($SortWrappers.$RefTo$Snap y@3@01)))
    ($Snap.combine
      $t@84@01
      ($Snap.combine
        ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@91@01  $FVF<f>) localX@83@01))
        ($Snap.combine
          ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@96@01  $FVF<f>) y@3@01))
          $Snap.unit))))))
; [exec]
; completed := completed ++ Seq(localX)
; [eval] completed ++ Seq(localX)
; [eval] Seq(localX)
(assert (= (Seq_length (Seq_singleton localX@83@01)) 1))
(declare-const completed@102@01 Seq<$Ref>)
(assert (= completed@102@01 (Seq_append completed@22@01 (Seq_singleton localX@83@01))))
; [exec]
; toGo := toGo[1..]
; [eval] toGo[1..]
(declare-const toGo@103@01 Seq<$Ref>)
(assert (= toGo@103@01 (Seq_drop toGo@23@01 1)))
; Loop head block: Re-establish invariant
(declare-const x@104@01 $Ref)
(push) ; 7
; [eval] (x in completed)
(assert (Seq_contains completed@102@01 x@104@01))
(pop) ; 7
(declare-fun inv@105@01 ($Ref $Perm $Ref $Perm $Ref $Perm $Ref $Ref) $Ref)
(declare-fun img@106@01 ($Ref $Perm $Ref $Perm $Ref $Perm $Ref $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((x1@104@01 $Ref) (x2@104@01 $Ref)) (!
  (=>
    (and
      (Seq_contains completed@102@01 x1@104@01)
      (Seq_contains completed@102@01 x2@104@01)
      (= x1@104@01 x2@104@01))
    (= x1@104@01 x2@104@01))
  
  :qid |wand@0-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@104@01 $Ref)) (!
  (=>
    (Seq_contains completed@102@01 x@104@01)
    (and
      (=
        (inv@105@01 y@3@01 $Perm.Write x@104@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01)
        x@104@01)
      (img@106@01 y@3@01 $Perm.Write x@104@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01)))
  :pattern ((Seq_contains completed@102@01 x@104@01))
  :pattern ((Seq_contains_trigger completed@102@01 x@104@01))
  :pattern ((inv@105@01 y@3@01 $Perm.Write x@104@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01))
  :pattern ((img@106@01 y@3@01 $Perm.Write x@104@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01))
  :qid |wand@0-invOfFct|)))
(assert (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm) (x6 $Ref) (x7 $Ref)) (!
  (=>
    (and
      (img@106@01 x0 x1 x2 x3 x4 x5 x6 x7)
      (Seq_contains completed@102@01 (inv@105@01 x0 x1 x2 x3 x4 x5 x6 x7)))
    (and
      (= y@3@01 x0)
      (= $Perm.Write x1)
      (= (inv@105@01 x0 x1 x2 x3 x4 x5 x6 x7) x2)
      (= $Perm.Write x3)
      (= y@3@01 x4)
      (= $Perm.Write x5)
      (= y@3@01 x6)
      (= y@3@01 x7)))
  :pattern ((inv@105@01 x0 x1 x2 x3 x4 x5 x6 x7))
  :qid |wand@0-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@107@01 ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm) (x6 $Ref) (x7 $Ref)) $Perm
  (ite
    (and
      (Seq_contains completed@102@01 (inv@105@01 x0 x1 x2 x3 x4 x5 x6 x7))
      (img@106@01 x0 x1 x2 x3 x4 x5 x6 x7)
      (and
        (= x0 y@3@01)
        (= x1 $Perm.Write)
        (= x2 (inv@105@01 x0 x1 x2 x3 x4 x5 x6 x7))
        (= x3 $Perm.Write)
        (= x4 y@3@01)
        (= x5 $Perm.Write)
        (= x6 y@3@01)
        (= x7 y@3@01)))
    ($Perm.min
      (ite
        (and
          (img@27@01 x0 x1 x2 x3 x4 x5 x6 x7)
          (Seq_contains completed@22@01 (inv@26@01 x0 x1 x2 x3 x4 x5 x6 x7)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@108@01 ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm) (x6 $Ref) (x7 $Ref)) $Perm
  (ite
    (and
      (Seq_contains completed@102@01 (inv@105@01 x0 x1 x2 x3 x4 x5 x6 x7))
      (img@106@01 x0 x1 x2 x3 x4 x5 x6 x7)
      (and
        (= x0 y@3@01)
        (= x1 $Perm.Write)
        (= x2 (inv@105@01 x0 x1 x2 x3 x4 x5 x6 x7))
        (= x3 $Perm.Write)
        (= x4 y@3@01)
        (= x5 $Perm.Write)
        (= x6 y@3@01)
        (= x7 y@3@01)))
    ($Perm.min
      (ite
        (and
          (= x0 y@3@01)
          (= x1 $Perm.Write)
          (= x2 localX@83@01)
          (= x3 $Perm.Write)
          (= x4 y@3@01)
          (= x5 $Perm.Write)
          (= x6 y@3@01)
          (= x7 y@3@01))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@107@01 x0 x1 x2 x3 x4 x5 x6 x7)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm) (x6 $Ref) (x7 $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@27@01 x0 x1 x2 x3 x4 x5 x6 x7)
          (Seq_contains completed@22@01 (inv@26@01 x0 x1 x2 x3 x4 x5 x6 x7)))
        $Perm.Write
        $Perm.No)
      (pTaken@107@01 x0 x1 x2 x3 x4 x5 x6 x7))
    $Perm.No)
  
  :qid |quant-u-20418|))))
(check-sat)
; unsat
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm) (x6 $Ref) (x7 $Ref)) (!
  (=>
    (and
      (Seq_contains completed@102@01 (inv@105@01 x0 x1 x2 x3 x4 x5 x6 x7))
      (img@106@01 x0 x1 x2 x3 x4 x5 x6 x7)
      (and
        (= x0 y@3@01)
        (= x1 $Perm.Write)
        (= x2 (inv@105@01 x0 x1 x2 x3 x4 x5 x6 x7))
        (= x3 $Perm.Write)
        (= x4 y@3@01)
        (= x5 $Perm.Write)
        (= x6 y@3@01)
        (= x7 y@3@01)))
    (= (- $Perm.Write (pTaken@107@01 x0 x1 x2 x3 x4 x5 x6 x7)) $Perm.No))
  
  :qid |quant-u-20419|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (=
  (-
    $Perm.Write
    (pTaken@108@01 y@3@01 $Perm.Write localX@83@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm) (x6 $Ref) (x7 $Ref)) (!
  (=>
    (and
      (Seq_contains completed@102@01 (inv@105@01 x0 x1 x2 x3 x4 x5 x6 x7))
      (img@106@01 x0 x1 x2 x3 x4 x5 x6 x7)
      (and
        (= x0 y@3@01)
        (= x1 $Perm.Write)
        (= x2 (inv@105@01 x0 x1 x2 x3 x4 x5 x6 x7))
        (= x3 $Perm.Write)
        (= x4 y@3@01)
        (= x5 $Perm.Write)
        (= x6 y@3@01)
        (= x7 y@3@01)))
    (=
      (-
        (- $Perm.Write (pTaken@107@01 x0 x1 x2 x3 x4 x5 x6 x7))
        (pTaken@108@01 x0 x1 x2 x3 x4 x5 x6 x7))
      $Perm.No))
  
  :qid |quant-u-20421|))))
(check-sat)
; unsat
(pop) ; 7
; 0.01s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall i: Int, j: Int :: { toGo[i], toGo[j] } 0 <= i && (0 <= j && (i < |toGo| && (j < |toGo| && i != j))) ==> toGo[i] != toGo[j])
(declare-const i@109@01 Int)
(declare-const j@110@01 Int)
(set-option :timeout 0)
(push) ; 7
; [eval] 0 <= i && (0 <= j && (i < |toGo| && (j < |toGo| && i != j))) ==> toGo[i] != toGo[j]
; [eval] 0 <= i && (0 <= j && (i < |toGo| && (j < |toGo| && i != j)))
; [eval] 0 <= i
(push) ; 8
; [then-branch: 20 | !(0 <= i@109@01) | live]
; [else-branch: 20 | 0 <= i@109@01 | live]
(push) ; 9
; [then-branch: 20 | !(0 <= i@109@01)]
(assert (not (<= 0 i@109@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 20 | 0 <= i@109@01]
(assert (<= 0 i@109@01))
; [eval] 0 <= j
(push) ; 10
; [then-branch: 21 | !(0 <= j@110@01) | live]
; [else-branch: 21 | 0 <= j@110@01 | live]
(push) ; 11
; [then-branch: 21 | !(0 <= j@110@01)]
(assert (not (<= 0 j@110@01)))
(pop) ; 11
(push) ; 11
; [else-branch: 21 | 0 <= j@110@01]
(assert (<= 0 j@110@01))
; [eval] i < |toGo|
; [eval] |toGo|
(push) ; 12
; [then-branch: 22 | !(i@109@01 < |toGo@103@01|) | live]
; [else-branch: 22 | i@109@01 < |toGo@103@01| | live]
(push) ; 13
; [then-branch: 22 | !(i@109@01 < |toGo@103@01|)]
(assert (not (< i@109@01 (Seq_length toGo@103@01))))
(pop) ; 13
(push) ; 13
; [else-branch: 22 | i@109@01 < |toGo@103@01|]
(assert (< i@109@01 (Seq_length toGo@103@01)))
; [eval] j < |toGo|
; [eval] |toGo|
(push) ; 14
; [then-branch: 23 | !(j@110@01 < |toGo@103@01|) | live]
; [else-branch: 23 | j@110@01 < |toGo@103@01| | live]
(push) ; 15
; [then-branch: 23 | !(j@110@01 < |toGo@103@01|)]
(assert (not (< j@110@01 (Seq_length toGo@103@01))))
(pop) ; 15
(push) ; 15
; [else-branch: 23 | j@110@01 < |toGo@103@01|]
(assert (< j@110@01 (Seq_length toGo@103@01)))
; [eval] i != j
(pop) ; 15
(pop) ; 14
; Joined path conditions
; Joined path conditions
(assert (or
  (< j@110@01 (Seq_length toGo@103@01))
  (not (< j@110@01 (Seq_length toGo@103@01)))))
(pop) ; 13
(pop) ; 12
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@109@01 (Seq_length toGo@103@01))
  (and
    (< i@109@01 (Seq_length toGo@103@01))
    (or
      (< j@110@01 (Seq_length toGo@103@01))
      (not (< j@110@01 (Seq_length toGo@103@01)))))))
(assert (or
  (< i@109@01 (Seq_length toGo@103@01))
  (not (< i@109@01 (Seq_length toGo@103@01)))))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@110@01)
  (and
    (<= 0 j@110@01)
    (=>
      (< i@109@01 (Seq_length toGo@103@01))
      (and
        (< i@109@01 (Seq_length toGo@103@01))
        (or
          (< j@110@01 (Seq_length toGo@103@01))
          (not (< j@110@01 (Seq_length toGo@103@01))))))
    (or
      (< i@109@01 (Seq_length toGo@103@01))
      (not (< i@109@01 (Seq_length toGo@103@01)))))))
(assert (or (<= 0 j@110@01) (not (<= 0 j@110@01))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@109@01)
  (and
    (<= 0 i@109@01)
    (=>
      (<= 0 j@110@01)
      (and
        (<= 0 j@110@01)
        (=>
          (< i@109@01 (Seq_length toGo@103@01))
          (and
            (< i@109@01 (Seq_length toGo@103@01))
            (or
              (< j@110@01 (Seq_length toGo@103@01))
              (not (< j@110@01 (Seq_length toGo@103@01))))))
        (or
          (< i@109@01 (Seq_length toGo@103@01))
          (not (< i@109@01 (Seq_length toGo@103@01))))))
    (or (<= 0 j@110@01) (not (<= 0 j@110@01))))))
(assert (or (<= 0 i@109@01) (not (<= 0 i@109@01))))
(push) ; 8
; [then-branch: 24 | 0 <= i@109@01 && 0 <= j@110@01 && i@109@01 < |toGo@103@01| && j@110@01 < |toGo@103@01| && i@109@01 != j@110@01 | live]
; [else-branch: 24 | !(0 <= i@109@01 && 0 <= j@110@01 && i@109@01 < |toGo@103@01| && j@110@01 < |toGo@103@01| && i@109@01 != j@110@01) | live]
(push) ; 9
; [then-branch: 24 | 0 <= i@109@01 && 0 <= j@110@01 && i@109@01 < |toGo@103@01| && j@110@01 < |toGo@103@01| && i@109@01 != j@110@01]
(assert (and
  (<= 0 i@109@01)
  (and
    (<= 0 j@110@01)
    (and
      (< i@109@01 (Seq_length toGo@103@01))
      (and (< j@110@01 (Seq_length toGo@103@01)) (not (= i@109@01 j@110@01)))))))
; [eval] toGo[i] != toGo[j]
; [eval] toGo[i]
(push) ; 10
(assert (not (>= i@109@01 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] toGo[j]
(push) ; 10
(assert (not (>= j@110@01 0)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 24 | !(0 <= i@109@01 && 0 <= j@110@01 && i@109@01 < |toGo@103@01| && j@110@01 < |toGo@103@01| && i@109@01 != j@110@01)]
(assert (not
  (and
    (<= 0 i@109@01)
    (and
      (<= 0 j@110@01)
      (and
        (< i@109@01 (Seq_length toGo@103@01))
        (and (< j@110@01 (Seq_length toGo@103@01)) (not (= i@109@01 j@110@01))))))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  (and
    (<= 0 i@109@01)
    (and
      (<= 0 j@110@01)
      (and
        (< i@109@01 (Seq_length toGo@103@01))
        (and (< j@110@01 (Seq_length toGo@103@01)) (not (= i@109@01 j@110@01))))))
  (and
    (<= 0 i@109@01)
    (<= 0 j@110@01)
    (< i@109@01 (Seq_length toGo@103@01))
    (< j@110@01 (Seq_length toGo@103@01))
    (not (= i@109@01 j@110@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i@109@01)
      (and
        (<= 0 j@110@01)
        (and
          (< i@109@01 (Seq_length toGo@103@01))
          (and (< j@110@01 (Seq_length toGo@103@01)) (not (= i@109@01 j@110@01)))))))
  (and
    (<= 0 i@109@01)
    (and
      (<= 0 j@110@01)
      (and
        (< i@109@01 (Seq_length toGo@103@01))
        (and (< j@110@01 (Seq_length toGo@103@01)) (not (= i@109@01 j@110@01))))))))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@109@01 Int) (j@110@01 Int)) (!
  (and
    (=>
      (<= 0 i@109@01)
      (and
        (<= 0 i@109@01)
        (=>
          (<= 0 j@110@01)
          (and
            (<= 0 j@110@01)
            (=>
              (< i@109@01 (Seq_length toGo@103@01))
              (and
                (< i@109@01 (Seq_length toGo@103@01))
                (or
                  (< j@110@01 (Seq_length toGo@103@01))
                  (not (< j@110@01 (Seq_length toGo@103@01))))))
            (or
              (< i@109@01 (Seq_length toGo@103@01))
              (not (< i@109@01 (Seq_length toGo@103@01))))))
        (or (<= 0 j@110@01) (not (<= 0 j@110@01)))))
    (or (<= 0 i@109@01) (not (<= 0 i@109@01)))
    (=>
      (and
        (<= 0 i@109@01)
        (and
          (<= 0 j@110@01)
          (and
            (< i@109@01 (Seq_length toGo@103@01))
            (and
              (< j@110@01 (Seq_length toGo@103@01))
              (not (= i@109@01 j@110@01))))))
      (and
        (<= 0 i@109@01)
        (<= 0 j@110@01)
        (< i@109@01 (Seq_length toGo@103@01))
        (< j@110@01 (Seq_length toGo@103@01))
        (not (= i@109@01 j@110@01))))
    (or
      (not
        (and
          (<= 0 i@109@01)
          (and
            (<= 0 j@110@01)
            (and
              (< i@109@01 (Seq_length toGo@103@01))
              (and
                (< j@110@01 (Seq_length toGo@103@01))
                (not (= i@109@01 j@110@01)))))))
      (and
        (<= 0 i@109@01)
        (and
          (<= 0 j@110@01)
          (and
            (< i@109@01 (Seq_length toGo@103@01))
            (and
              (< j@110@01 (Seq_length toGo@103@01))
              (not (= i@109@01 j@110@01))))))))
  :pattern ((Seq_index toGo@103@01 i@109@01) (Seq_index toGo@103@01 j@110@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@21@15@21@117-aux|)))
(push) ; 7
(assert (not (forall ((i@109@01 Int) (j@110@01 Int)) (!
  (=>
    (and
      (<= 0 i@109@01)
      (and
        (<= 0 j@110@01)
        (and
          (< i@109@01 (Seq_length toGo@103@01))
          (and (< j@110@01 (Seq_length toGo@103@01)) (not (= i@109@01 j@110@01))))))
    (not (= (Seq_index toGo@103@01 i@109@01) (Seq_index toGo@103@01 j@110@01))))
  :pattern ((Seq_index toGo@103@01 i@109@01) (Seq_index toGo@103@01 j@110@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@21@15@21@117|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (forall ((i@109@01 Int) (j@110@01 Int)) (!
  (=>
    (and
      (<= 0 i@109@01)
      (and
        (<= 0 j@110@01)
        (and
          (< i@109@01 (Seq_length toGo@103@01))
          (and (< j@110@01 (Seq_length toGo@103@01)) (not (= i@109@01 j@110@01))))))
    (not (= (Seq_index toGo@103@01 i@109@01) (Seq_index toGo@103@01 j@110@01))))
  :pattern ((Seq_index toGo@103@01 i@109@01) (Seq_index toGo@103@01 j@110@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@21@15@21@117|)))
(declare-const x@111@01 $Ref)
(push) ; 7
; [eval] (x in toGo)
(assert (Seq_contains toGo@103@01 x@111@01))
(pop) ; 7
(declare-fun inv@112@01 ($Ref) $Ref)
(declare-fun img@113@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((x1@111@01 $Ref) (x2@111@01 $Ref)) (!
  (=>
    (and
      (Seq_contains toGo@103@01 x1@111@01)
      (Seq_contains toGo@103@01 x2@111@01)
      (= x1@111@01 x2@111@01))
    (= x1@111@01 x2@111@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@111@01 $Ref)) (!
  (=>
    (Seq_contains toGo@103@01 x@111@01)
    (and (= (inv@112@01 x@111@01) x@111@01) (img@113@01 x@111@01)))
  :pattern ((Seq_contains toGo@103@01 x@111@01))
  :pattern ((Seq_contains_trigger toGo@103@01 x@111@01))
  :pattern ((inv@112@01 x@111@01))
  :pattern ((img@113@01 x@111@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@113@01 r) (Seq_contains toGo@103@01 (inv@112@01 r)))
    (= (inv@112@01 r) r))
  :pattern ((inv@112@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@114@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains toGo@103@01 (inv@112@01 r))
      (img@113@01 r)
      (= r (inv@112@01 r)))
    ($Perm.min
      (ite
        (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
        (- $Perm.Write (pTaken@89@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@115@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains toGo@103@01 (inv@112@01 r))
      (img@113@01 r)
      (= r (inv@112@01 r)))
    ($Perm.min
      (ite (= r y@3@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@114@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
        (- $Perm.Write (pTaken@89@01 r))
        $Perm.No)
      (pTaken@114@01 r))
    $Perm.No)
  
  :qid |quant-u-20424|))))
(check-sat)
; unsat
(pop) ; 7
; 0.02s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains toGo@103@01 (inv@112@01 r))
      (img@113@01 r)
      (= r (inv@112@01 r)))
    (= (- $Perm.Write (pTaken@114@01 r)) $Perm.No))
  
  :qid |quant-u-20425|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] xs == completed ++ toGo
; [eval] completed ++ toGo
(set-option :timeout 0)
(push) ; 7
(assert (not (Seq_equal xs@2@01 (Seq_append completed@102@01 toGo@103@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.02s
; (get-info :all-statistics)
(assert (Seq_equal xs@2@01 (Seq_append completed@102@01 toGo@103@01)))
; [eval] (forall x: Ref :: { (x in toGo) } (x in toGo) ==> x.f == old[setupComplete](x.f))
(declare-const x@116@01 $Ref)
(push) ; 7
; [eval] (x in toGo) ==> x.f == old[setupComplete](x.f)
; [eval] (x in toGo)
(push) ; 8
; [then-branch: 25 | x@116@01 in toGo@103@01 | live]
; [else-branch: 25 | !(x@116@01 in toGo@103@01) | live]
(push) ; 9
; [then-branch: 25 | x@116@01 in toGo@103@01]
(assert (Seq_contains toGo@103@01 x@116@01))
; [eval] x.f == old[setupComplete](x.f)
(declare-const sm@117@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@117@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@36@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@117@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@36@01  $FVF<f>) r))
  :qid |qp.fvfValDef38|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@89@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@117@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@117@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
  :qid |qp.fvfValDef39|)))
(declare-const pm@118@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@118@01  $FPM) r)
    (+
      (ite (= r y@3@01) $Perm.Write $Perm.No)
      (ite
        (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
        (- $Perm.Write (pTaken@89@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@118@01  $FPM) r))
  :qid |qp.resPrmSumDef40|)))
(push) ; 10
(assert (not (< $Perm.No ($FVF.perm_f (as pm@118@01  $FPM) x@116@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [eval] old[setupComplete](x.f)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r y@3@01)
      (=
        ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@20@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@20@01  $FVF<f>) r))
    :qid |qp.fvfValDef0|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
        (< $Perm.No (- $Perm.Write (pTaken@14@01 r)))
        false)
      (=
        ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r)))
    :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r))
    :qid |qp.fvfValDef1|))
  (forall ((r $Ref)) (!
    (=>
      (= r (Seq_index xs@2@01 0))
      (=
        ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@16@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
    :qid |qp.fvfValDef2|))))
(push) ; 10
(assert (not (<
  $Perm.No
  (+
    (+
      (ite (= x@116@01 y@3@01) $Perm.Write $Perm.No)
      (ite
        (and (img@7@01 x@116@01) (Seq_contains xs@2@01 (inv@6@01 x@116@01)))
        (- $Perm.Write (pTaken@14@01 x@116@01))
        $Perm.No))
    (ite (= x@116@01 (Seq_index xs@2@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 10
; 0.01s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 25 | !(x@116@01 in toGo@103@01)]
(assert (not (Seq_contains toGo@103@01 x@116@01)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@117@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@36@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@117@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@36@01  $FVF<f>) r))
  :qid |qp.fvfValDef38|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@89@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@117@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@117@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
  :qid |qp.fvfValDef39|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@118@01  $FPM) r)
    (+
      (ite (= r y@3@01) $Perm.Write $Perm.No)
      (ite
        (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
        (- $Perm.Write (pTaken@89@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@118@01  $FPM) r))
  :qid |qp.resPrmSumDef40|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@20@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@20@01  $FVF<f>) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@14@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@2@01 0))
    (=
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@16@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
  :qid |qp.fvfValDef2|)))
; Joined path conditions
(assert (or
  (not (Seq_contains toGo@103@01 x@116@01))
  (Seq_contains toGo@103@01 x@116@01)))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@117@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@36@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@117@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@36@01  $FVF<f>) r))
  :qid |qp.fvfValDef38|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@89@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@117@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@117@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
  :qid |qp.fvfValDef39|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@118@01  $FPM) r)
    (+
      (ite (= r y@3@01) $Perm.Write $Perm.No)
      (ite
        (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
        (- $Perm.Write (pTaken@89@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@118@01  $FPM) r))
  :qid |qp.resPrmSumDef40|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@20@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@20@01  $FVF<f>) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@14@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@2@01 0))
    (=
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@16@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
  :qid |qp.fvfValDef2|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@116@01 $Ref)) (!
  (or
    (not (Seq_contains toGo@103@01 x@116@01))
    (Seq_contains toGo@103@01 x@116@01))
  :pattern ((Seq_contains toGo@103@01 x@116@01))
  :pattern ((Seq_contains_trigger toGo@103@01 x@116@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@24@15@24@76-aux|)))
(assert (forall ((x@116@01 $Ref)) (!
  (or
    (not (Seq_contains toGo@103@01 x@116@01))
    (Seq_contains toGo@103@01 x@116@01))
  :pattern ((Seq_contains_trigger toGo@103@01 x@116@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@24@15@24@76-aux|)))
(push) ; 7
(assert (not (forall ((x@116@01 $Ref)) (!
  (=>
    (Seq_contains toGo@103@01 x@116@01)
    (=
      ($FVF.lookup_f (as sm@117@01  $FVF<f>) x@116@01)
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) x@116@01)))
  :pattern ((Seq_contains toGo@103@01 x@116@01))
  :pattern ((Seq_contains_trigger toGo@103@01 x@116@01))
  :pattern ((Seq_contains_trigger toGo@103@01 x@116@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@24@15@24@76|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (forall ((x@116@01 $Ref)) (!
  (=>
    (Seq_contains toGo@103@01 x@116@01)
    (=
      ($FVF.lookup_f (as sm@117@01  $FVF<f>) x@116@01)
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) x@116@01)))
  :pattern ((Seq_contains toGo@103@01 x@116@01))
  :pattern ((Seq_contains_trigger toGo@103@01 x@116@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@24@15@24@76|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@119@01 ((r $Ref)) $Perm
  (ite
    (= r y@3@01)
    ($Perm.min (ite (= r y@3@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@119@01 y@3@01)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=> (= r y@3@01) (= (- $Perm.Write (pTaken@119@01 r)) $Perm.No))
  
  :qid |quant-u-20428|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] y.f == 1
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r y@3@01)
      (=
        ($FVF.lookup_f (as sm@117@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@36@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@117@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@36@01  $FVF<f>) r))
    :qid |qp.fvfValDef38|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
        (< $Perm.No (- $Perm.Write (pTaken@89@01 r)))
        false)
      (=
        ($FVF.lookup_f (as sm@117@01  $FVF<f>) r)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
    :pattern (($FVF.lookup_f (as sm@117@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
    :qid |qp.fvfValDef39|))))
(set-option :timeout 0)
(push) ; 7
(assert (not (<
  $Perm.No
  (+
    $Perm.Write
    (ite
      (and (img@32@01 y@3@01) (Seq_contains toGo@23@01 (inv@31@01 y@3@01)))
      (- $Perm.Write (pTaken@89@01 y@3@01))
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(assert (not (= ($FVF.lookup_f (as sm@117@01  $FVF<f>) y@3@01) 1)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (= ($FVF.lookup_f (as sm@117@01  $FVF<f>) y@3@01) 1))
; [eval] (forall x: Ref :: { (x in completed) } (x in completed) ==> (applying acc(y.f, write) --* acc(x.f, write) && (acc(y.f, write) && y.f == old[lhs](y.f)) in x.f == old[setupComplete](x.f)))
(declare-const x@120@01 $Ref)
(push) ; 7
; [eval] (x in completed) ==> (applying acc(y.f, write) --* acc(x.f, write) && (acc(y.f, write) && y.f == old[lhs](y.f)) in x.f == old[setupComplete](x.f))
; [eval] (x in completed)
(push) ; 8
; [then-branch: 26 | x@120@01 in completed@102@01 | live]
; [else-branch: 26 | !(x@120@01 in completed@102@01) | live]
(push) ; 9
; [then-branch: 26 | x@120@01 in completed@102@01]
(assert (Seq_contains completed@102@01 x@120@01))
; [eval] (applying acc(y.f, write) --* acc(x.f, write) && (acc(y.f, write) && y.f == old[lhs](y.f)) in x.f == old[setupComplete](x.f))
(push) ; 10
(push) ; 11
(set-option :timeout 10)
(assert (not (= localX@83@01 x@120@01)))
(check-sat)
; unknown
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@121@01 ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm) (x6 $Ref) (x7 $Ref) (x@120@01 $Ref)) $Perm
  (ite
    (and
      (= x0 y@3@01)
      (= x1 $Perm.Write)
      (= x2 x@120@01)
      (= x3 $Perm.Write)
      (= x4 y@3@01)
      (= x5 $Perm.Write)
      (= x6 y@3@01)
      (= x7 y@3@01))
    ($Perm.min
      (ite
        (and
          (img@27@01 x0 x1 x2 x3 x4 x5 x6 x7)
          (Seq_contains completed@22@01 (inv@26@01 x0 x1 x2 x3 x4 x5 x6 x7)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@122@01 ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm) (x6 $Ref) (x7 $Ref) (x@120@01 $Ref)) $Perm
  (ite
    (and
      (= x0 y@3@01)
      (= x1 $Perm.Write)
      (= x2 x@120@01)
      (= x3 $Perm.Write)
      (= x4 y@3@01)
      (= x5 $Perm.Write)
      (= x6 y@3@01)
      (= x7 y@3@01))
    ($Perm.min
      (ite
        (and
          (= x0 y@3@01)
          (= x1 $Perm.Write)
          (= x2 localX@83@01)
          (= x3 $Perm.Write)
          (= x4 y@3@01)
          (= x5 $Perm.Write)
          (= x6 y@3@01)
          (= x7 y@3@01))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@121@01 x0 x1 x2 x3 x4 x5 x6 x7 x@120@01)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm) (x6 $Ref) (x7 $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@27@01 x0 x1 x2 x3 x4 x5 x6 x7)
          (Seq_contains completed@22@01 (inv@26@01 x0 x1 x2 x3 x4 x5 x6 x7)))
        $Perm.Write
        $Perm.No)
      (pTaken@121@01 x0 x1 x2 x3 x4 x5 x6 x7 x@120@01))
    $Perm.No)
  
  :qid |quant-u-20430|))))
(check-sat)
; unknown
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm) (x6 $Ref) (x7 $Ref)) (!
  (= (pTaken@121@01 x0 x1 x2 x3 x4 x5 x6 x7 x@120@01) $Perm.No)
  
  :qid |quant-u-20431|))))
(check-sat)
; unknown
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm) (x6 $Ref) (x7 $Ref)) (!
  (=>
    (and
      (= x0 y@3@01)
      (= x1 $Perm.Write)
      (= x2 x@120@01)
      (= x3 $Perm.Write)
      (= x4 y@3@01)
      (= x5 $Perm.Write)
      (= x6 y@3@01)
      (= x7 y@3@01))
    (= (- $Perm.Write (pTaken@121@01 x0 x1 x2 x3 x4 x5 x6 x7 x@120@01)) $Perm.No))
  
  :qid |quant-u-20432|))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (=
  (-
    $Perm.Write
    (pTaken@122@01 y@3@01 $Perm.Write localX@83@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01 x@120@01))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm) (x6 $Ref) (x7 $Ref)) (!
  (= (pTaken@122@01 x0 x1 x2 x3 x4 x5 x6 x7 x@120@01) $Perm.No)
  
  :qid |quant-u-20434|))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm) (x6 $Ref) (x7 $Ref)) (!
  (=>
    (and
      (= x0 y@3@01)
      (= x1 $Perm.Write)
      (= x2 x@120@01)
      (= x3 $Perm.Write)
      (= x4 y@3@01)
      (= x5 $Perm.Write)
      (= x6 y@3@01)
      (= x7 y@3@01))
    (=
      (-
        (- $Perm.Write (pTaken@121@01 x0 x1 x2 x3 x4 x5 x6 x7 x@120@01))
        (pTaken@122@01 x0 x1 x2 x3 x4 x5 x6 x7 x@120@01))
      $Perm.No))
  
  :qid |quant-u-20435|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@123@01 $PSF<wand@0>)
(declare-const s@124@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (= x@120@01 localX@83@01)
  (and
    (not
      (=
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($SortWrappers.$RefTo$Snap y@3@01)
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap x@120@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$RefTo$Snap y@3@01))
        $Snap.unit))
    (=
      ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap x@120@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01)))
      ($PSF.lookup_wand@0 (as sm@101@01  $PSF<wand@0>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap x@120@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01)))))))
(assert (=>
  (and
    (img@27@01 y@3@01 $Perm.Write x@120@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01)
    (Seq_contains
      completed@22@01
      (inv@26@01 y@3@01 $Perm.Write x@120@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01)))
  (and
    (not
      (=
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($SortWrappers.$RefTo$Snap y@3@01)
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap x@120@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$RefTo$Snap y@3@01))
        $Snap.unit))
    (=
      ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap x@120@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01)))
      ($PSF.lookup_wand@0 ($SortWrappers.$SnapTo$PSF<wand@0> ($Snap.first $t@24@01)) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap x@120@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01)))))))
; Precomputing data for removing quantified permissions
(define-fun pTaken@125@01 ((r $Ref) (x@120@01 $Ref)) $Perm
  (ite
    (= r y@3@01)
    ($Perm.min (ite (= r y@3@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
(define-fun pTaken@126@01 ((r $Ref) (x@120@01 $Ref)) $Perm
  (ite
    (= r y@3@01)
    ($Perm.min
      (ite
        (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
        (- $Perm.Write (pTaken@89@01 r))
        $Perm.No)
      (- $Perm.Write (pTaken@125@01 r x@120@01)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@125@01 y@3@01 x@120@01)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=> (= r y@3@01) (= (- $Perm.Write (pTaken@125@01 r x@120@01)) $Perm.No))
  
  :qid |quant-u-20438|))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@127@01 $FVF<f>)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (ite
    (and (img@32@01 y@3@01) (Seq_contains toGo@23@01 (inv@31@01 y@3@01)))
    (< $Perm.No (- $Perm.Write (pTaken@89@01 y@3@01)))
    false)
  (=
    ($FVF.lookup_f (as sm@127@01  $FVF<f>) y@3@01)
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) y@3@01))))
(assert (=
  ($FVF.lookup_f (as sm@127@01  $FVF<f>) y@3@01)
  ($FVF.lookup_f (as sm@36@01  $FVF<f>) y@3@01)))
(assert (=
  ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@127@01  $FVF<f>) y@3@01))
  ($Snap.first ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap y@3@01)
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap x@120@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@3@01))
    ($SortWrappers.$RefTo$Snap y@3@01))))))
(assert (=
  ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap y@3@01)
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap x@120@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@3@01))
    ($SortWrappers.$RefTo$Snap y@3@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@3@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap x@120@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@3@01))
      ($SortWrappers.$RefTo$Snap y@3@01)))))
    ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@3@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap x@120@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@3@01))
      ($SortWrappers.$RefTo$Snap y@3@01))))))))
(declare-fun sm@128@01 ($Ref) $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (sm@128@01 x@120@01) x@120@01)
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap y@3@01)
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap x@120@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@3@01))
    ($SortWrappers.$RefTo$Snap y@3@01))))))))
(assert (not (= x@120@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap y@3@01)
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap x@120@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@3@01))
    ($SortWrappers.$RefTo$Snap y@3@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@3@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap x@120@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@3@01))
      ($SortWrappers.$RefTo$Snap y@3@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@3@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap x@120@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@3@01))
      ($SortWrappers.$RefTo$Snap y@3@01)))))))))
(declare-const sm@129@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@129@01  $FVF<f>) y@3@01)
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap y@3@01)
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap x@120@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@3@01))
    ($SortWrappers.$RefTo$Snap y@3@01)))))))))
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (= y@3@01 x@120@01)))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap y@3@01)
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap x@120@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@3@01))
    ($SortWrappers.$RefTo$Snap y@3@01))))))
  $Snap.unit))
; [eval] y.f == old[lhs](y.f)
(declare-const sm@130@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@89@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@130@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@130@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
  :qid |qp.fvfValDef45|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@120@01)
    (=
      ($FVF.lookup_f (as sm@130@01  $FVF<f>) r)
      ($FVF.lookup_f (sm@128@01 x@120@01) r)))
  :pattern (($FVF.lookup_f (as sm@130@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (sm@128@01 x@120@01) r))
  :qid |qp.fvfValDef46|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@130@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@129@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@130@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@129@01  $FVF<f>) r))
  :qid |qp.fvfValDef47|)))
(declare-const pm@131@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@131@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
          (- $Perm.Write (pTaken@89@01 r))
          $Perm.No)
        (ite (= r x@120@01) $Perm.Write $Perm.No))
      (ite (= r y@3@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@131@01  $FPM) r))
  :qid |qp.resPrmSumDef48|)))
(set-option :timeout 0)
(push) ; 11
(assert (not (< $Perm.No ($FVF.perm_f (as pm@131@01  $FPM) y@3@01))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] old[lhs](y.f)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
        (< $Perm.No (- $Perm.Write (pTaken@89@01 r)))
        false)
      (=
        ($FVF.lookup_f (as sm@127@01  $FVF<f>) r)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
    :pattern (($FVF.lookup_f (as sm@127@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
    :qid |qp.fvfValDef43|))
  (forall ((r $Ref)) (!
    (=>
      (= r y@3@01)
      (=
        ($FVF.lookup_f (as sm@127@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@36@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@127@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@36@01  $FVF<f>) r))
    :qid |qp.fvfValDef44|))))
(push) ; 11
(assert (not (<
  $Perm.No
  (+
    (ite
      (and (img@32@01 y@3@01) (Seq_contains toGo@23@01 (inv@31@01 y@3@01)))
      (- $Perm.Write (pTaken@89@01 y@3@01))
      $Perm.No)
    $Perm.Write))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_f (as sm@130@01  $FVF<f>) y@3@01)
  ($FVF.lookup_f (as sm@127@01  $FVF<f>) y@3@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (= x@120@01 y@3@01)))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (not
  (=
    ($FVF.lookup_f (sm@128@01 x@120@01) x@120@01)
    ($FVF.lookup_f (as sm@129@01  $FVF<f>) y@3@01)))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (not
  (=
    ($FVF.lookup_f (as sm@129@01  $FVF<f>) y@3@01)
    ($FVF.lookup_f (sm@128@01 x@120@01) x@120@01)))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(assert (and (not (= x@120@01 y@3@01)) (not (= y@3@01 x@120@01))))
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@131@01  $FPM) r) $Perm.Write)
  :pattern ((inv@31@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@131@01  $FPM) x@120@01) $Perm.Write))
(assert (<= ($FVF.perm_f (as pm@131@01  $FPM) y@3@01) $Perm.Write))
; [eval] x.f == old[setupComplete](x.f)
(declare-const sm@132@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@132@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@129@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@132@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@129@01  $FVF<f>) r))
  :qid |qp.fvfValDef49|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r x@120@01)
    (=
      ($FVF.lookup_f (as sm@132@01  $FVF<f>) r)
      ($FVF.lookup_f (sm@128@01 x@120@01) r)))
  :pattern (($FVF.lookup_f (as sm@132@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (sm@128@01 x@120@01) r))
  :qid |qp.fvfValDef50|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@89@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@132@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@132@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
  :qid |qp.fvfValDef51|)))
(declare-const pm@133@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@133@01  $FPM) r)
    (+
      (+
        (ite (= r y@3@01) $Perm.Write $Perm.No)
        (ite (= r x@120@01) $Perm.Write $Perm.No))
      (ite
        (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
        (- $Perm.Write (pTaken@89@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@133@01  $FPM) r))
  :qid |qp.resPrmSumDef52|)))
(set-option :timeout 0)
(push) ; 11
(assert (not (< $Perm.No ($FVF.perm_f (as pm@133@01  $FPM) x@120@01))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [eval] old[setupComplete](x.f)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r y@3@01)
      (=
        ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@20@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@20@01  $FVF<f>) r))
    :qid |qp.fvfValDef0|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
        (< $Perm.No (- $Perm.Write (pTaken@14@01 r)))
        false)
      (=
        ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r)))
    :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r))
    :qid |qp.fvfValDef1|))
  (forall ((r $Ref)) (!
    (=>
      (= r (Seq_index xs@2@01 0))
      (=
        ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@16@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
    :qid |qp.fvfValDef2|))))
(push) ; 11
(assert (not (<
  $Perm.No
  (+
    (+
      (ite (= x@120@01 y@3@01) $Perm.Write $Perm.No)
      (ite
        (and (img@7@01 x@120@01) (Seq_contains xs@2@01 (inv@6@01 x@120@01)))
        (- $Perm.Write (pTaken@14@01 x@120@01))
        $Perm.No))
    (ite (= x@120@01 (Seq_index xs@2@01 0)) $Perm.Write $Perm.No)))))
(check-sat)
; unsat
(pop) ; 11
; 0.01s
; (get-info :all-statistics)
(pop) ; 10
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@131@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
          (- $Perm.Write (pTaken@89@01 r))
          $Perm.No)
        (ite (= r x@120@01) $Perm.Write $Perm.No))
      (ite (= r y@3@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@131@01  $FPM) r))
  :qid |qp.resPrmSumDef48|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@89@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@127@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@127@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
  :qid |qp.fvfValDef43|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@127@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@36@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@127@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@36@01  $FVF<f>) r))
  :qid |qp.fvfValDef44|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@133@01  $FPM) r)
    (+
      (+
        (ite (= r y@3@01) $Perm.Write $Perm.No)
        (ite (= r x@120@01) $Perm.Write $Perm.No))
      (ite
        (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
        (- $Perm.Write (pTaken@89@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@133@01  $FPM) r))
  :qid |qp.resPrmSumDef52|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@20@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@20@01  $FVF<f>) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@14@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@2@01 0))
    (=
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@16@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
  :qid |qp.fvfValDef2|)))
(assert (and
  (=>
    (= x@120@01 localX@83@01)
    (and
      (not
        (=
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@120@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01))
          $Snap.unit))
      (=
        ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($SortWrappers.$RefTo$Snap y@3@01)
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap x@120@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$RefTo$Snap y@3@01)))
        ($PSF.lookup_wand@0 (as sm@101@01  $PSF<wand@0>) ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($SortWrappers.$RefTo$Snap y@3@01)
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap x@120@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$RefTo$Snap y@3@01))))))
  (=>
    (and
      (img@27@01 y@3@01 $Perm.Write x@120@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01)
      (Seq_contains
        completed@22@01
        (inv@26@01 y@3@01 $Perm.Write x@120@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01)))
    (and
      (not
        (=
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@120@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01))
          $Snap.unit))
      (=
        ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($SortWrappers.$RefTo$Snap y@3@01)
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap x@120@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$RefTo$Snap y@3@01)))
        ($PSF.lookup_wand@0 ($SortWrappers.$SnapTo$PSF<wand@0> ($Snap.first $t@24@01)) ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($SortWrappers.$RefTo$Snap y@3@01)
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap x@120@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$RefTo$Snap y@3@01))))))
  (=>
    (ite
      (and (img@32@01 y@3@01) (Seq_contains toGo@23@01 (inv@31@01 y@3@01)))
      (< $Perm.No (- $Perm.Write (pTaken@89@01 y@3@01)))
      false)
    (=
      ($FVF.lookup_f (as sm@127@01  $FVF<f>) y@3@01)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) y@3@01)))
  (=
    ($FVF.lookup_f (as sm@127@01  $FVF<f>) y@3@01)
    ($FVF.lookup_f (as sm@36@01  $FVF<f>) y@3@01))
  (=
    ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@127@01  $FVF<f>) y@3@01))
    ($Snap.first ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@3@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap x@120@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@3@01))
      ($SortWrappers.$RefTo$Snap y@3@01)))))
  (=
    ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@3@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap x@120@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@3@01))
      ($SortWrappers.$RefTo$Snap y@3@01))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap x@120@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01)))))
      ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap x@120@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01)))))))))
(assert (and
  (=
    ($FVF.lookup_f (sm@128@01 x@120@01) x@120@01)
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@3@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap x@120@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@3@01))
      ($SortWrappers.$RefTo$Snap y@3@01)))))))
  (not (= x@120@01 $Ref.null))
  (=
    ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@3@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap x@120@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@3@01))
      ($SortWrappers.$RefTo$Snap y@3@01)))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap x@120@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01))))))
      ($Snap.second ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap x@120@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01))))))))))
(assert (and
  (=
    ($FVF.lookup_f (as sm@129@01  $FVF<f>) y@3@01)
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@3@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap x@120@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@3@01))
      ($SortWrappers.$RefTo$Snap y@3@01))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@3@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap x@120@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@3@01))
      ($SortWrappers.$RefTo$Snap y@3@01))))))
    $Snap.unit)
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
        (< $Perm.No (- $Perm.Write (pTaken@89@01 r)))
        false)
      (=
        ($FVF.lookup_f (as sm@130@01  $FVF<f>) r)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
    :pattern (($FVF.lookup_f (as sm@130@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
    :qid |qp.fvfValDef45|))
  (forall ((r $Ref)) (!
    (=>
      (= r x@120@01)
      (=
        ($FVF.lookup_f (as sm@130@01  $FVF<f>) r)
        ($FVF.lookup_f (sm@128@01 x@120@01) r)))
    :pattern (($FVF.lookup_f (as sm@130@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (sm@128@01 x@120@01) r))
    :qid |qp.fvfValDef46|))
  (forall ((r $Ref)) (!
    (=>
      (= r y@3@01)
      (=
        ($FVF.lookup_f (as sm@130@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@129@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@130@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@129@01  $FVF<f>) r))
    :qid |qp.fvfValDef47|))
  (=
    ($FVF.lookup_f (as sm@130@01  $FVF<f>) y@3@01)
    ($FVF.lookup_f (as sm@127@01  $FVF<f>) y@3@01))
  (not (= x@120@01 y@3@01))
  (not (= y@3@01 x@120@01))
  (forall ((r $Ref)) (!
    (<= ($FVF.perm_f (as pm@131@01  $FPM) r) $Perm.Write)
    :pattern ((inv@31@01 r))
    :qid |qp-fld-prm-bnd|))
  (<= ($FVF.perm_f (as pm@131@01  $FPM) x@120@01) $Perm.Write)
  (<= ($FVF.perm_f (as pm@131@01  $FPM) y@3@01) $Perm.Write)
  (forall ((r $Ref)) (!
    (=>
      (= r y@3@01)
      (=
        ($FVF.lookup_f (as sm@132@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@129@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@132@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@129@01  $FVF<f>) r))
    :qid |qp.fvfValDef49|))
  (forall ((r $Ref)) (!
    (=>
      (= r x@120@01)
      (=
        ($FVF.lookup_f (as sm@132@01  $FVF<f>) r)
        ($FVF.lookup_f (sm@128@01 x@120@01) r)))
    :pattern (($FVF.lookup_f (as sm@132@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (sm@128@01 x@120@01) r))
    :qid |qp.fvfValDef50|))
  (forall ((r $Ref)) (!
    (=>
      (ite
        (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
        (< $Perm.No (- $Perm.Write (pTaken@89@01 r)))
        false)
      (=
        ($FVF.lookup_f (as sm@132@01  $FVF<f>) r)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
    :pattern (($FVF.lookup_f (as sm@132@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
    :qid |qp.fvfValDef51|))))
(pop) ; 9
(push) ; 9
; [else-branch: 26 | !(x@120@01 in completed@102@01)]
(assert (not (Seq_contains completed@102@01 x@120@01)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@131@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
          (- $Perm.Write (pTaken@89@01 r))
          $Perm.No)
        (ite (= r x@120@01) $Perm.Write $Perm.No))
      (ite (= r y@3@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@131@01  $FPM) r))
  :qid |qp.resPrmSumDef48|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@89@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@127@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@127@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
  :qid |qp.fvfValDef43|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@127@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@36@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@127@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@36@01  $FVF<f>) r))
  :qid |qp.fvfValDef44|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@133@01  $FPM) r)
    (+
      (+
        (ite (= r y@3@01) $Perm.Write $Perm.No)
        (ite (= r x@120@01) $Perm.Write $Perm.No))
      (ite
        (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
        (- $Perm.Write (pTaken@89@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@133@01  $FPM) r))
  :qid |qp.resPrmSumDef52|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@20@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@20@01  $FVF<f>) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@14@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@2@01 0))
    (=
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@16@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
  :qid |qp.fvfValDef2|)))
(assert (=>
  (Seq_contains completed@102@01 x@120@01)
  (and
    (Seq_contains completed@102@01 x@120@01)
    (=>
      (= x@120@01 localX@83@01)
      (and
        (not
          (=
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($SortWrappers.$RefTo$Snap y@3@01)
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap x@120@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$RefTo$Snap y@3@01))
            $Snap.unit))
        (=
          ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@120@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01)))
          ($PSF.lookup_wand@0 (as sm@101@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@120@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01))))))
    (=>
      (and
        (img@27@01 y@3@01 $Perm.Write x@120@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01)
        (Seq_contains
          completed@22@01
          (inv@26@01 y@3@01 $Perm.Write x@120@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01)))
      (and
        (not
          (=
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($SortWrappers.$RefTo$Snap y@3@01)
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap x@120@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$RefTo$Snap y@3@01))
            $Snap.unit))
        (=
          ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@120@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01)))
          ($PSF.lookup_wand@0 ($SortWrappers.$SnapTo$PSF<wand@0> ($Snap.first $t@24@01)) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@120@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01))))))
    (=>
      (ite
        (and (img@32@01 y@3@01) (Seq_contains toGo@23@01 (inv@31@01 y@3@01)))
        (< $Perm.No (- $Perm.Write (pTaken@89@01 y@3@01)))
        false)
      (=
        ($FVF.lookup_f (as sm@127@01  $FVF<f>) y@3@01)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) y@3@01)))
    (=
      ($FVF.lookup_f (as sm@127@01  $FVF<f>) y@3@01)
      ($FVF.lookup_f (as sm@36@01  $FVF<f>) y@3@01))
    (=
      ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@127@01  $FVF<f>) y@3@01))
      ($Snap.first ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap x@120@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01)))))
    (=
      ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap x@120@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($SortWrappers.$RefTo$Snap y@3@01)
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap x@120@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$RefTo$Snap y@3@01)))))
        ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($SortWrappers.$RefTo$Snap y@3@01)
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap x@120@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$RefTo$Snap y@3@01)))))))
    (=
      ($FVF.lookup_f (sm@128@01 x@120@01) x@120@01)
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap x@120@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01)))))))
    (not (= x@120@01 $Ref.null))
    (=
      ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap x@120@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01)))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($SortWrappers.$RefTo$Snap y@3@01)
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap x@120@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$RefTo$Snap y@3@01))))))
        ($Snap.second ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($SortWrappers.$RefTo$Snap y@3@01)
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap x@120@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$RefTo$Snap y@3@01))))))))
    (=
      ($FVF.lookup_f (as sm@129@01  $FVF<f>) y@3@01)
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap x@120@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap x@120@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01))))))
      $Snap.unit)
    (forall ((r $Ref)) (!
      (=>
        (ite
          (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
          (< $Perm.No (- $Perm.Write (pTaken@89@01 r)))
          false)
        (=
          ($FVF.lookup_f (as sm@130@01  $FVF<f>) r)
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
      :pattern (($FVF.lookup_f (as sm@130@01  $FVF<f>) r))
      :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
      :qid |qp.fvfValDef45|))
    (forall ((r $Ref)) (!
      (=>
        (= r x@120@01)
        (=
          ($FVF.lookup_f (as sm@130@01  $FVF<f>) r)
          ($FVF.lookup_f (sm@128@01 x@120@01) r)))
      :pattern (($FVF.lookup_f (as sm@130@01  $FVF<f>) r))
      :pattern (($FVF.lookup_f (sm@128@01 x@120@01) r))
      :qid |qp.fvfValDef46|))
    (forall ((r $Ref)) (!
      (=>
        (= r y@3@01)
        (=
          ($FVF.lookup_f (as sm@130@01  $FVF<f>) r)
          ($FVF.lookup_f (as sm@129@01  $FVF<f>) r)))
      :pattern (($FVF.lookup_f (as sm@130@01  $FVF<f>) r))
      :pattern (($FVF.lookup_f (as sm@129@01  $FVF<f>) r))
      :qid |qp.fvfValDef47|))
    (=
      ($FVF.lookup_f (as sm@130@01  $FVF<f>) y@3@01)
      ($FVF.lookup_f (as sm@127@01  $FVF<f>) y@3@01))
    (not (= x@120@01 y@3@01))
    (not (= y@3@01 x@120@01))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_f (as pm@131@01  $FPM) r) $Perm.Write)
      :pattern ((inv@31@01 r))
      :qid |qp-fld-prm-bnd|))
    (<= ($FVF.perm_f (as pm@131@01  $FPM) x@120@01) $Perm.Write)
    (<= ($FVF.perm_f (as pm@131@01  $FPM) y@3@01) $Perm.Write)
    (forall ((r $Ref)) (!
      (=>
        (= r y@3@01)
        (=
          ($FVF.lookup_f (as sm@132@01  $FVF<f>) r)
          ($FVF.lookup_f (as sm@129@01  $FVF<f>) r)))
      :pattern (($FVF.lookup_f (as sm@132@01  $FVF<f>) r))
      :pattern (($FVF.lookup_f (as sm@129@01  $FVF<f>) r))
      :qid |qp.fvfValDef49|))
    (forall ((r $Ref)) (!
      (=>
        (= r x@120@01)
        (=
          ($FVF.lookup_f (as sm@132@01  $FVF<f>) r)
          ($FVF.lookup_f (sm@128@01 x@120@01) r)))
      :pattern (($FVF.lookup_f (as sm@132@01  $FVF<f>) r))
      :pattern (($FVF.lookup_f (sm@128@01 x@120@01) r))
      :qid |qp.fvfValDef50|))
    (forall ((r $Ref)) (!
      (=>
        (ite
          (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
          (< $Perm.No (- $Perm.Write (pTaken@89@01 r)))
          false)
        (=
          ($FVF.lookup_f (as sm@132@01  $FVF<f>) r)
          ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
      :pattern (($FVF.lookup_f (as sm@132@01  $FVF<f>) r))
      :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
      :qid |qp.fvfValDef51|)))))
; Joined path conditions
(assert (or
  (not (Seq_contains completed@102@01 x@120@01))
  (Seq_contains completed@102@01 x@120@01)))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@131@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
          (- $Perm.Write (pTaken@89@01 r))
          $Perm.No)
        (ite (= r x@120@01) $Perm.Write $Perm.No))
      (ite (= r y@3@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@131@01  $FPM) r))
  :qid |qp.resPrmSumDef48|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@89@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@127@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@127@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
  :qid |qp.fvfValDef43|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@127@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@36@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@127@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@36@01  $FVF<f>) r))
  :qid |qp.fvfValDef44|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@133@01  $FPM) r)
    (+
      (+
        (ite (= r y@3@01) $Perm.Write $Perm.No)
        (ite (= r x@120@01) $Perm.Write $Perm.No))
      (ite
        (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
        (- $Perm.Write (pTaken@89@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@133@01  $FPM) r))
  :qid |qp.resPrmSumDef52|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@20@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@20@01  $FVF<f>) r))
  :qid |qp.fvfValDef0|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@7@01 r) (Seq_contains xs@2@01 (inv@6@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@14@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r)))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@4@01)) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r (Seq_index xs@2@01 0))
    (=
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@16@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@34@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@16@01  $FVF<f>) r))
  :qid |qp.fvfValDef2|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@120@01 $Ref)) (!
  (and
    (=>
      (Seq_contains completed@102@01 x@120@01)
      (and
        (Seq_contains completed@102@01 x@120@01)
        (=>
          (= x@120@01 localX@83@01)
          (and
            (not
              (=
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($Snap.combine
                            ($Snap.combine
                              ($SortWrappers.$RefTo$Snap y@3@01)
                              ($SortWrappers.$PermTo$Snap $Perm.Write))
                            ($SortWrappers.$RefTo$Snap x@120@01))
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap y@3@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                $Snap.unit))
            (=
              ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($Snap.combine
                            ($SortWrappers.$RefTo$Snap y@3@01)
                            ($SortWrappers.$PermTo$Snap $Perm.Write))
                          ($SortWrappers.$RefTo$Snap x@120@01))
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap y@3@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$RefTo$Snap y@3@01)))
              ($PSF.lookup_wand@0 (as sm@101@01  $PSF<wand@0>) ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($Snap.combine
                            ($SortWrappers.$RefTo$Snap y@3@01)
                            ($SortWrappers.$PermTo$Snap $Perm.Write))
                          ($SortWrappers.$RefTo$Snap x@120@01))
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap y@3@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$RefTo$Snap y@3@01))))))
        (=>
          (and
            (img@27@01 y@3@01 $Perm.Write x@120@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01)
            (Seq_contains
              completed@22@01
              (inv@26@01 y@3@01 $Perm.Write x@120@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01)))
          (and
            (not
              (=
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($Snap.combine
                            ($Snap.combine
                              ($SortWrappers.$RefTo$Snap y@3@01)
                              ($SortWrappers.$PermTo$Snap $Perm.Write))
                            ($SortWrappers.$RefTo$Snap x@120@01))
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap y@3@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                $Snap.unit))
            (=
              ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($Snap.combine
                            ($SortWrappers.$RefTo$Snap y@3@01)
                            ($SortWrappers.$PermTo$Snap $Perm.Write))
                          ($SortWrappers.$RefTo$Snap x@120@01))
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap y@3@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$RefTo$Snap y@3@01)))
              ($PSF.lookup_wand@0 ($SortWrappers.$SnapTo$PSF<wand@0> ($Snap.first $t@24@01)) ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($Snap.combine
                            ($SortWrappers.$RefTo$Snap y@3@01)
                            ($SortWrappers.$PermTo$Snap $Perm.Write))
                          ($SortWrappers.$RefTo$Snap x@120@01))
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap y@3@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$RefTo$Snap y@3@01))))))
        (=>
          (ite
            (and (img@32@01 y@3@01) (Seq_contains toGo@23@01 (inv@31@01 y@3@01)))
            (< $Perm.No (- $Perm.Write (pTaken@89@01 y@3@01)))
            false)
          (=
            ($FVF.lookup_f (as sm@127@01  $FVF<f>) y@3@01)
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) y@3@01)))
        (=
          ($FVF.lookup_f (as sm@127@01  $FVF<f>) y@3@01)
          ($FVF.lookup_f (as sm@36@01  $FVF<f>) y@3@01))
        (=
          ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@127@01  $FVF<f>) y@3@01))
          ($Snap.first ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@120@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01)))))
        (=
          ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@120@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($SortWrappers.$RefTo$Snap y@3@01)
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap x@120@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$RefTo$Snap y@3@01)))))
            ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($SortWrappers.$RefTo$Snap y@3@01)
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap x@120@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$RefTo$Snap y@3@01)))))))
        (=
          ($FVF.lookup_f (sm@128@01 x@120@01) x@120@01)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@120@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01)))))))
        (not (= x@120@01 $Ref.null))
        (=
          ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@120@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01)))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($SortWrappers.$RefTo$Snap y@3@01)
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap x@120@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$RefTo$Snap y@3@01))))))
            ($Snap.second ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($SortWrappers.$RefTo$Snap y@3@01)
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap x@120@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$RefTo$Snap y@3@01))))))))
        (=
          ($FVF.lookup_f (as sm@129@01  $FVF<f>) y@3@01)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@120@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@120@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01))))))
          $Snap.unit)
        (forall ((r $Ref)) (!
          (=>
            (ite
              (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
              (< $Perm.No (- $Perm.Write (pTaken@89@01 r)))
              false)
            (=
              ($FVF.lookup_f (as sm@130@01  $FVF<f>) r)
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
          :pattern (($FVF.lookup_f (as sm@130@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
          :qid |qp.fvfValDef45|))
        (forall ((r $Ref)) (!
          (=>
            (= r x@120@01)
            (=
              ($FVF.lookup_f (as sm@130@01  $FVF<f>) r)
              ($FVF.lookup_f (sm@128@01 x@120@01) r)))
          :pattern (($FVF.lookup_f (as sm@130@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f (sm@128@01 x@120@01) r))
          :qid |qp.fvfValDef46|))
        (forall ((r $Ref)) (!
          (=>
            (= r y@3@01)
            (=
              ($FVF.lookup_f (as sm@130@01  $FVF<f>) r)
              ($FVF.lookup_f (as sm@129@01  $FVF<f>) r)))
          :pattern (($FVF.lookup_f (as sm@130@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f (as sm@129@01  $FVF<f>) r))
          :qid |qp.fvfValDef47|))
        (=
          ($FVF.lookup_f (as sm@130@01  $FVF<f>) y@3@01)
          ($FVF.lookup_f (as sm@127@01  $FVF<f>) y@3@01))
        (not (= x@120@01 y@3@01))
        (not (= y@3@01 x@120@01))
        (forall ((r $Ref)) (!
          (<= ($FVF.perm_f (as pm@131@01  $FPM) r) $Perm.Write)
          :pattern ((inv@31@01 r))
          :qid |qp-fld-prm-bnd|))
        (<= ($FVF.perm_f (as pm@131@01  $FPM) x@120@01) $Perm.Write)
        (<= ($FVF.perm_f (as pm@131@01  $FPM) y@3@01) $Perm.Write)
        (forall ((r $Ref)) (!
          (=>
            (= r y@3@01)
            (=
              ($FVF.lookup_f (as sm@132@01  $FVF<f>) r)
              ($FVF.lookup_f (as sm@129@01  $FVF<f>) r)))
          :pattern (($FVF.lookup_f (as sm@132@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f (as sm@129@01  $FVF<f>) r))
          :qid |qp.fvfValDef49|))
        (forall ((r $Ref)) (!
          (=>
            (= r x@120@01)
            (=
              ($FVF.lookup_f (as sm@132@01  $FVF<f>) r)
              ($FVF.lookup_f (sm@128@01 x@120@01) r)))
          :pattern (($FVF.lookup_f (as sm@132@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f (sm@128@01 x@120@01) r))
          :qid |qp.fvfValDef50|))
        (forall ((r $Ref)) (!
          (=>
            (ite
              (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
              (< $Perm.No (- $Perm.Write (pTaken@89@01 r)))
              false)
            (=
              ($FVF.lookup_f (as sm@132@01  $FVF<f>) r)
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
          :pattern (($FVF.lookup_f (as sm@132@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
          :qid |qp.fvfValDef51|))))
    (or
      (not (Seq_contains completed@102@01 x@120@01))
      (Seq_contains completed@102@01 x@120@01)))
  :pattern ((Seq_contains completed@102@01 x@120@01))
  :pattern ((Seq_contains_trigger completed@102@01 x@120@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@27@15@29@37-aux|)))
(assert (forall ((x@120@01 $Ref)) (!
  (and
    (=>
      (Seq_contains completed@102@01 x@120@01)
      (and
        (Seq_contains completed@102@01 x@120@01)
        (=>
          (= x@120@01 localX@83@01)
          (and
            (not
              (=
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($Snap.combine
                            ($Snap.combine
                              ($SortWrappers.$RefTo$Snap y@3@01)
                              ($SortWrappers.$PermTo$Snap $Perm.Write))
                            ($SortWrappers.$RefTo$Snap x@120@01))
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap y@3@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                $Snap.unit))
            (=
              ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($Snap.combine
                            ($SortWrappers.$RefTo$Snap y@3@01)
                            ($SortWrappers.$PermTo$Snap $Perm.Write))
                          ($SortWrappers.$RefTo$Snap x@120@01))
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap y@3@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$RefTo$Snap y@3@01)))
              ($PSF.lookup_wand@0 (as sm@101@01  $PSF<wand@0>) ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($Snap.combine
                            ($SortWrappers.$RefTo$Snap y@3@01)
                            ($SortWrappers.$PermTo$Snap $Perm.Write))
                          ($SortWrappers.$RefTo$Snap x@120@01))
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap y@3@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$RefTo$Snap y@3@01))))))
        (=>
          (and
            (img@27@01 y@3@01 $Perm.Write x@120@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01)
            (Seq_contains
              completed@22@01
              (inv@26@01 y@3@01 $Perm.Write x@120@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01)))
          (and
            (not
              (=
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($Snap.combine
                            ($Snap.combine
                              ($SortWrappers.$RefTo$Snap y@3@01)
                              ($SortWrappers.$PermTo$Snap $Perm.Write))
                            ($SortWrappers.$RefTo$Snap x@120@01))
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap y@3@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                $Snap.unit))
            (=
              ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($Snap.combine
                            ($SortWrappers.$RefTo$Snap y@3@01)
                            ($SortWrappers.$PermTo$Snap $Perm.Write))
                          ($SortWrappers.$RefTo$Snap x@120@01))
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap y@3@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$RefTo$Snap y@3@01)))
              ($PSF.lookup_wand@0 ($SortWrappers.$SnapTo$PSF<wand@0> ($Snap.first $t@24@01)) ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($Snap.combine
                            ($SortWrappers.$RefTo$Snap y@3@01)
                            ($SortWrappers.$PermTo$Snap $Perm.Write))
                          ($SortWrappers.$RefTo$Snap x@120@01))
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap y@3@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$RefTo$Snap y@3@01))))))
        (=>
          (ite
            (and (img@32@01 y@3@01) (Seq_contains toGo@23@01 (inv@31@01 y@3@01)))
            (< $Perm.No (- $Perm.Write (pTaken@89@01 y@3@01)))
            false)
          (=
            ($FVF.lookup_f (as sm@127@01  $FVF<f>) y@3@01)
            ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) y@3@01)))
        (=
          ($FVF.lookup_f (as sm@127@01  $FVF<f>) y@3@01)
          ($FVF.lookup_f (as sm@36@01  $FVF<f>) y@3@01))
        (=
          ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@127@01  $FVF<f>) y@3@01))
          ($Snap.first ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@120@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01)))))
        (=
          ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@120@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($SortWrappers.$RefTo$Snap y@3@01)
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap x@120@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$RefTo$Snap y@3@01)))))
            ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($SortWrappers.$RefTo$Snap y@3@01)
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap x@120@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$RefTo$Snap y@3@01)))))))
        (=
          ($FVF.lookup_f (sm@128@01 x@120@01) x@120@01)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@120@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01)))))))
        (not (= x@120@01 $Ref.null))
        (=
          ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@120@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01)))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($SortWrappers.$RefTo$Snap y@3@01)
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap x@120@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$RefTo$Snap y@3@01))))))
            ($Snap.second ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($Snap.combine
                          ($SortWrappers.$RefTo$Snap y@3@01)
                          ($SortWrappers.$PermTo$Snap $Perm.Write))
                        ($SortWrappers.$RefTo$Snap x@120@01))
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap y@3@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$RefTo$Snap y@3@01))))))))
        (=
          ($FVF.lookup_f (as sm@129@01  $FVF<f>) y@3@01)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@120@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@123@01  $PSF<wand@0>) ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.combine
                        ($SortWrappers.$RefTo$Snap y@3@01)
                        ($SortWrappers.$PermTo$Snap $Perm.Write))
                      ($SortWrappers.$RefTo$Snap x@120@01))
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap y@3@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$RefTo$Snap y@3@01))))))
          $Snap.unit)
        (forall ((r $Ref)) (!
          (=>
            (ite
              (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
              (< $Perm.No (- $Perm.Write (pTaken@89@01 r)))
              false)
            (=
              ($FVF.lookup_f (as sm@130@01  $FVF<f>) r)
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
          :pattern (($FVF.lookup_f (as sm@130@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
          :qid |qp.fvfValDef45|))
        (forall ((r $Ref)) (!
          (=>
            (= r x@120@01)
            (=
              ($FVF.lookup_f (as sm@130@01  $FVF<f>) r)
              ($FVF.lookup_f (sm@128@01 x@120@01) r)))
          :pattern (($FVF.lookup_f (as sm@130@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f (sm@128@01 x@120@01) r))
          :qid |qp.fvfValDef46|))
        (forall ((r $Ref)) (!
          (=>
            (= r y@3@01)
            (=
              ($FVF.lookup_f (as sm@130@01  $FVF<f>) r)
              ($FVF.lookup_f (as sm@129@01  $FVF<f>) r)))
          :pattern (($FVF.lookup_f (as sm@130@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f (as sm@129@01  $FVF<f>) r))
          :qid |qp.fvfValDef47|))
        (=
          ($FVF.lookup_f (as sm@130@01  $FVF<f>) y@3@01)
          ($FVF.lookup_f (as sm@127@01  $FVF<f>) y@3@01))
        (not (= x@120@01 y@3@01))
        (not (= y@3@01 x@120@01))
        (forall ((r $Ref)) (!
          (<= ($FVF.perm_f (as pm@131@01  $FPM) r) $Perm.Write)
          :pattern ((inv@31@01 r))
          :qid |qp-fld-prm-bnd|))
        (<= ($FVF.perm_f (as pm@131@01  $FPM) x@120@01) $Perm.Write)
        (<= ($FVF.perm_f (as pm@131@01  $FPM) y@3@01) $Perm.Write)
        (forall ((r $Ref)) (!
          (=>
            (= r y@3@01)
            (=
              ($FVF.lookup_f (as sm@132@01  $FVF<f>) r)
              ($FVF.lookup_f (as sm@129@01  $FVF<f>) r)))
          :pattern (($FVF.lookup_f (as sm@132@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f (as sm@129@01  $FVF<f>) r))
          :qid |qp.fvfValDef49|))
        (forall ((r $Ref)) (!
          (=>
            (= r x@120@01)
            (=
              ($FVF.lookup_f (as sm@132@01  $FVF<f>) r)
              ($FVF.lookup_f (sm@128@01 x@120@01) r)))
          :pattern (($FVF.lookup_f (as sm@132@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f (sm@128@01 x@120@01) r))
          :qid |qp.fvfValDef50|))
        (forall ((r $Ref)) (!
          (=>
            (ite
              (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
              (< $Perm.No (- $Perm.Write (pTaken@89@01 r)))
              false)
            (=
              ($FVF.lookup_f (as sm@132@01  $FVF<f>) r)
              ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
          :pattern (($FVF.lookup_f (as sm@132@01  $FVF<f>) r))
          :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
          :qid |qp.fvfValDef51|))))
    (or
      (not (Seq_contains completed@102@01 x@120@01))
      (Seq_contains completed@102@01 x@120@01)))
  :pattern ((Seq_contains_trigger completed@102@01 x@120@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@27@15@29@37-aux|)))
(push) ; 7
(assert (not (forall ((x@120@01 $Ref)) (!
  (=>
    (Seq_contains completed@102@01 x@120@01)
    (=
      ($FVF.lookup_f (as sm@132@01  $FVF<f>) x@120@01)
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) x@120@01)))
  :pattern ((Seq_contains completed@102@01 x@120@01))
  :pattern ((Seq_contains_trigger completed@102@01 x@120@01))
  :pattern ((Seq_contains_trigger completed@102@01 x@120@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@27@15@29@37|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (forall ((x@120@01 $Ref)) (!
  (=>
    (Seq_contains completed@102@01 x@120@01)
    (=
      ($FVF.lookup_f (as sm@132@01  $FVF<f>) x@120@01)
      ($FVF.lookup_f (as sm@34@01  $FVF<f>) x@120@01)))
  :pattern ((Seq_contains completed@102@01 x@120@01))
  :pattern ((Seq_contains_trigger completed@102@01 x@120@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@27@15@29@37|)))
(pop) ; 6
(pop) ; 5
(push) ; 5
; [else-branch: 19 | |toGo@23@01| == 0]
(assert (= (Seq_length toGo@23@01) 0))
(pop) ; 5
; [eval] !(|toGo| != 0)
; [eval] |toGo| != 0
; [eval] |toGo|
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= (Seq_length toGo@23@01) 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (Seq_length toGo@23@01) 0)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 27 | |toGo@23@01| == 0 | live]
; [else-branch: 27 | |toGo@23@01| != 0 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 27 | |toGo@23@01| == 0]
(assert (= (Seq_length toGo@23@01) 0))
; [exec]
; assert (forall x: Ref ::(x in xs) ==>
;     acc(y.f, write) --*
;     acc(x.f, write) && (acc(y.f, write) && y.f == old[lhs](y.f)))
(declare-const x@134@01 $Ref)
(push) ; 6
; [eval] (x in xs)
(assert (Seq_contains xs@2@01 x@134@01))
(pop) ; 6
(declare-fun inv@135@01 ($Ref $Perm $Ref $Perm $Ref $Perm $Ref $Ref) $Ref)
(declare-fun img@136@01 ($Ref $Perm $Ref $Perm $Ref $Perm $Ref $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((x1@134@01 $Ref) (x2@134@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@2@01 x1@134@01)
      (Seq_contains xs@2@01 x2@134@01)
      (= x1@134@01 x2@134@01))
    (= x1@134@01 x2@134@01))
  
  :qid |wand@0-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@134@01 $Ref)) (!
  (=>
    (Seq_contains xs@2@01 x@134@01)
    (and
      (=
        (inv@135@01 y@3@01 $Perm.Write x@134@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01)
        x@134@01)
      (img@136@01 y@3@01 $Perm.Write x@134@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01)))
  :pattern ((Seq_contains xs@2@01 x@134@01))
  :pattern ((Seq_contains_trigger xs@2@01 x@134@01))
  :pattern ((inv@135@01 y@3@01 $Perm.Write x@134@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01))
  :pattern ((img@136@01 y@3@01 $Perm.Write x@134@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01))
  :qid |wand@0-invOfFct|)))
(assert (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm) (x6 $Ref) (x7 $Ref)) (!
  (=>
    (and
      (img@136@01 x0 x1 x2 x3 x4 x5 x6 x7)
      (Seq_contains xs@2@01 (inv@135@01 x0 x1 x2 x3 x4 x5 x6 x7)))
    (and
      (= y@3@01 x0)
      (= $Perm.Write x1)
      (= (inv@135@01 x0 x1 x2 x3 x4 x5 x6 x7) x2)
      (= $Perm.Write x3)
      (= y@3@01 x4)
      (= $Perm.Write x5)
      (= y@3@01 x6)
      (= y@3@01 x7)))
  :pattern ((inv@135@01 x0 x1 x2 x3 x4 x5 x6 x7))
  :qid |wand@0-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@137@01 ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm) (x6 $Ref) (x7 $Ref)) $Perm
  (ite
    (and
      (Seq_contains xs@2@01 (inv@135@01 x0 x1 x2 x3 x4 x5 x6 x7))
      (img@136@01 x0 x1 x2 x3 x4 x5 x6 x7)
      (and
        (= x0 y@3@01)
        (= x1 $Perm.Write)
        (= x2 (inv@135@01 x0 x1 x2 x3 x4 x5 x6 x7))
        (= x3 $Perm.Write)
        (= x4 y@3@01)
        (= x5 $Perm.Write)
        (= x6 y@3@01)
        (= x7 y@3@01)))
    ($Perm.min
      (ite
        (and
          (img@27@01 x0 x1 x2 x3 x4 x5 x6 x7)
          (Seq_contains completed@22@01 (inv@26@01 x0 x1 x2 x3 x4 x5 x6 x7)))
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
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm) (x6 $Ref) (x7 $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@27@01 x0 x1 x2 x3 x4 x5 x6 x7)
          (Seq_contains completed@22@01 (inv@26@01 x0 x1 x2 x3 x4 x5 x6 x7)))
        $Perm.Write
        $Perm.No)
      (pTaken@137@01 x0 x1 x2 x3 x4 x5 x6 x7))
    $Perm.No)
  
  :qid |quant-u-20441|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm) (x6 $Ref) (x7 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@2@01 (inv@135@01 x0 x1 x2 x3 x4 x5 x6 x7))
      (img@136@01 x0 x1 x2 x3 x4 x5 x6 x7)
      (and
        (= x0 y@3@01)
        (= x1 $Perm.Write)
        (= x2 (inv@135@01 x0 x1 x2 x3 x4 x5 x6 x7))
        (= x3 $Perm.Write)
        (= x4 y@3@01)
        (= x5 $Perm.Write)
        (= x6 y@3@01)
        (= x7 y@3@01)))
    (= (- $Perm.Write (pTaken@137@01 x0 x1 x2 x3 x4 x5 x6 x7)) $Perm.No))
  
  :qid |quant-u-20442|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; some := xs[0]
; [eval] xs[0]
(set-option :timeout 0)
(push) ; 6
(assert (not (< 0 (Seq_length xs@2@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const some@138@01 $Ref)
(assert (= some@138@01 (Seq_index xs@2@01 0)))
; [exec]
; apply acc(y.f, write) --*
;   acc(some.f, write) && (acc(y.f, write) && y.f == old[lhs](y.f))
; Precomputing data for removing quantified permissions
(define-fun pTaken@139@01 ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm) (x6 $Ref) (x7 $Ref)) $Perm
  (ite
    (and
      (= x0 y@3@01)
      (= x1 $Perm.Write)
      (= x2 some@138@01)
      (= x3 $Perm.Write)
      (= x4 y@3@01)
      (= x5 $Perm.Write)
      (= x6 y@3@01)
      (= x7 y@3@01))
    ($Perm.min
      (ite
        (and
          (img@27@01 x0 x1 x2 x3 x4 x5 x6 x7)
          (Seq_contains completed@22@01 (inv@26@01 x0 x1 x2 x3 x4 x5 x6 x7)))
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
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm) (x6 $Ref) (x7 $Ref)) (!
  (=
    (-
      (ite
        (and
          (img@27@01 x0 x1 x2 x3 x4 x5 x6 x7)
          (Seq_contains completed@22@01 (inv@26@01 x0 x1 x2 x3 x4 x5 x6 x7)))
        $Perm.Write
        $Perm.No)
      (pTaken@139@01 x0 x1 x2 x3 x4 x5 x6 x7))
    $Perm.No)
  
  :qid |quant-u-20444|))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm) (x6 $Ref) (x7 $Ref)) (!
  (= (pTaken@139@01 x0 x1 x2 x3 x4 x5 x6 x7) $Perm.No)
  
  :qid |quant-u-20445|))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm) (x6 $Ref) (x7 $Ref)) (!
  (=>
    (and
      (= x0 y@3@01)
      (= x1 $Perm.Write)
      (= x2 some@138@01)
      (= x3 $Perm.Write)
      (= x4 y@3@01)
      (= x5 $Perm.Write)
      (= x6 y@3@01)
      (= x7 y@3@01))
    (= (- $Perm.Write (pTaken@139@01 x0 x1 x2 x3 x4 x5 x6 x7)) $Perm.No))
  
  :qid |quant-u-20446|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@140@01 $PSF<wand@0>)
(declare-const s@141@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@27@01 y@3@01 $Perm.Write some@138@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01)
    (Seq_contains
      completed@22@01
      (inv@26@01 y@3@01 $Perm.Write some@138@01 $Perm.Write y@3@01 $Perm.Write y@3@01 y@3@01)))
  (and
    (not
      (=
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.combine
                      ($SortWrappers.$RefTo$Snap y@3@01)
                      ($SortWrappers.$PermTo$Snap $Perm.Write))
                    ($SortWrappers.$RefTo$Snap some@138@01))
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap y@3@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$RefTo$Snap y@3@01))
        $Snap.unit))
    (=
      ($PSF.lookup_wand@0 (as sm@140@01  $PSF<wand@0>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap some@138@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01)))
      ($PSF.lookup_wand@0 ($SortWrappers.$SnapTo$PSF<wand@0> ($Snap.first $t@24@01)) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@3@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap some@138@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@3@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$RefTo$Snap y@3@01)))))))
; Precomputing data for removing quantified permissions
(define-fun pTaken@142@01 ((r $Ref)) $Perm
  (ite
    (= r y@3@01)
    ($Perm.min (ite (= r y@3@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
(define-fun pTaken@143@01 ((r $Ref)) $Perm
  (ite
    (= r y@3@01)
    ($Perm.min
      (ite
        (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@142@01 r)))
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
(assert (not (= (- $Perm.Write (pTaken@142@01 y@3@01)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=> (= r y@3@01) (= (- $Perm.Write (pTaken@142@01 r)) $Perm.No))
  
  :qid |quant-u-20449|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map values (instantiated)
(assert (=
  ($FVF.lookup_f (as sm@45@01  $FVF<f>) y@3@01)
  ($FVF.lookup_f (as sm@36@01  $FVF<f>) y@3@01)))
(assert (=>
  (and (img@32@01 y@3@01) (Seq_contains toGo@23@01 (inv@31@01 y@3@01)))
  (=
    ($FVF.lookup_f (as sm@45@01  $FVF<f>) y@3@01)
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) y@3@01))))
(assert (=
  ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@45@01  $FVF<f>) y@3@01))
  ($Snap.first ($PSF.lookup_wand@0 (as sm@140@01  $PSF<wand@0>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap y@3@01)
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap some@138@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@3@01))
    ($SortWrappers.$RefTo$Snap y@3@01))))))
(assert (=
  ($Snap.second ($PSF.lookup_wand@0 (as sm@140@01  $PSF<wand@0>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap y@3@01)
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap some@138@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@3@01))
    ($SortWrappers.$RefTo$Snap y@3@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($PSF.lookup_wand@0 (as sm@140@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@3@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap some@138@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@3@01))
      ($SortWrappers.$RefTo$Snap y@3@01)))))
    ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@140@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@3@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap some@138@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@3@01))
      ($SortWrappers.$RefTo$Snap y@3@01))))))))
(declare-const sm@144@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@144@01  $FVF<f>) some@138@01)
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($PSF.lookup_wand@0 (as sm@140@01  $PSF<wand@0>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap y@3@01)
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap some@138@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@3@01))
    ($SortWrappers.$RefTo$Snap y@3@01))))))))
(assert (not (= some@138@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@140@01  $PSF<wand@0>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap y@3@01)
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap some@138@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@3@01))
    ($SortWrappers.$RefTo$Snap y@3@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@140@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@3@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap some@138@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@3@01))
      ($SortWrappers.$RefTo$Snap y@3@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@140@01  $PSF<wand@0>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@3@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap some@138@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@3@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@3@01))
      ($SortWrappers.$RefTo$Snap y@3@01)))))))))
(declare-const sm@145@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@145@01  $FVF<f>) y@3@01)
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@140@01  $PSF<wand@0>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap y@3@01)
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap some@138@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@3@01))
    ($SortWrappers.$RefTo$Snap y@3@01)))))))))
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= y@3@01 some@138@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($PSF.lookup_wand@0 (as sm@140@01  $PSF<wand@0>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap y@3@01)
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap some@138@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@3@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@3@01))
    ($SortWrappers.$RefTo$Snap y@3@01))))))
  $Snap.unit))
; [eval] y.f == old[lhs](y.f)
(declare-const sm@146@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
    (=
      ($FVF.lookup_f (as sm@146@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@146@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
  :qid |qp.fvfValDef54|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r some@138@01)
    (=
      ($FVF.lookup_f (as sm@146@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@144@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@146@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@144@01  $FVF<f>) r))
  :qid |qp.fvfValDef55|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@146@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@145@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@146@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@145@01  $FVF<f>) r))
  :qid |qp.fvfValDef56|)))
(declare-const pm@147@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@147@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
          $Perm.Write
          $Perm.No)
        (ite (= r some@138@01) $Perm.Write $Perm.No))
      (ite (= r y@3@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@147@01  $FPM) r))
  :qid |qp.resPrmSumDef57|)))
(set-option :timeout 0)
(push) ; 6
(assert (not (< $Perm.No ($FVF.perm_f (as pm@147@01  $FPM) y@3@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] old[lhs](y.f)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r y@3@01)
      (=
        ($FVF.lookup_f (as sm@45@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@36@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@45@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@36@01  $FVF<f>) r))
    :qid |qp.fvfValDef8|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
      (=
        ($FVF.lookup_f (as sm@45@01  $FVF<f>) r)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
    :pattern (($FVF.lookup_f (as sm@45@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
    :qid |qp.fvfValDef9|))))
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    $Perm.Write
    (ite
      (and (img@32@01 y@3@01) (Seq_contains toGo@23@01 (inv@31@01 y@3@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($FVF.lookup_f (as sm@146@01  $FVF<f>) y@3@01)
  ($FVF.lookup_f (as sm@45@01  $FVF<f>) y@3@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= some@138@01 y@3@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not
  (=
    ($FVF.lookup_f (as sm@144@01  $FVF<f>) some@138@01)
    ($FVF.lookup_f (as sm@145@01  $FVF<f>) y@3@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not
  (=
    ($FVF.lookup_f (as sm@145@01  $FVF<f>) y@3@01)
    ($FVF.lookup_f (as sm@144@01  $FVF<f>) some@138@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (and (not (= some@138@01 y@3@01)) (not (= y@3@01 some@138@01))))
(assert (and (not (= some@138@01 y@3@01)) (not (= y@3@01 some@138@01))))
; Definitional axioms for snapshot map values
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@147@01  $FPM) r) $Perm.Write)
  :pattern ((inv@31@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@147@01  $FPM) some@138@01) $Perm.Write))
(assert (<= ($FVF.perm_f (as pm@147@01  $FPM) y@3@01) $Perm.Write))
; [exec]
; assert some.f == 0
; [eval] some.f == 0
(declare-const sm@148@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@3@01)
    (=
      ($FVF.lookup_f (as sm@148@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@145@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@148@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@145@01  $FVF<f>) r))
  :qid |qp.fvfValDef58|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r some@138@01)
    (=
      ($FVF.lookup_f (as sm@148@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@144@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@148@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@144@01  $FVF<f>) r))
  :qid |qp.fvfValDef59|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
    (=
      ($FVF.lookup_f (as sm@148@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
  :pattern (($FVF.lookup_f (as sm@148@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
  :qid |qp.fvfValDef60|)))
(declare-const pm@149@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@149@01  $FPM) r)
    (+
      (+
        (ite (= r y@3@01) $Perm.Write $Perm.No)
        (ite (= r some@138@01) $Perm.Write $Perm.No))
      (ite
        (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
        $Perm.Write
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@149@01  $FPM) r))
  :qid |qp.resPrmSumDef61|)))
(set-option :timeout 0)
(push) ; 6
(assert (not (< $Perm.No ($FVF.perm_f (as pm@149@01  $FPM) some@138@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (= ($FVF.lookup_f (as sm@148@01  $FVF<f>) some@138@01) 0)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (= ($FVF.lookup_f (as sm@148@01  $FVF<f>) some@138@01) 0))
; [exec]
; assert y.f == 1
; [eval] y.f == 1
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (= r y@3@01)
      (=
        ($FVF.lookup_f (as sm@148@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@145@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@148@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@145@01  $FVF<f>) r))
    :qid |qp.fvfValDef58|))
  (forall ((r $Ref)) (!
    (=>
      (= r some@138@01)
      (=
        ($FVF.lookup_f (as sm@148@01  $FVF<f>) r)
        ($FVF.lookup_f (as sm@144@01  $FVF<f>) r)))
    :pattern (($FVF.lookup_f (as sm@148@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@144@01  $FVF<f>) r))
    :qid |qp.fvfValDef59|))
  (forall ((r $Ref)) (!
    (=>
      (and (img@32@01 r) (Seq_contains toGo@23@01 (inv@31@01 r)))
      (=
        ($FVF.lookup_f (as sm@148@01  $FVF<f>) r)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r)))
    :pattern (($FVF.lookup_f (as sm@148@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first ($Snap.second ($Snap.second $t@24@01)))) r))
    :qid |qp.fvfValDef60|))))
(push) ; 6
(assert (not (<
  $Perm.No
  (+
    (+ $Perm.Write (ite (= y@3@01 some@138@01) $Perm.Write $Perm.No))
    (ite
      (and (img@32@01 y@3@01) (Seq_contains toGo@23@01 (inv@31@01 y@3@01)))
      $Perm.Write
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (= ($FVF.lookup_f (as sm@148@01  $FVF<f>) y@3@01) 1)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (= ($FVF.lookup_f (as sm@148@01  $FVF<f>) y@3@01) 1))
(pop) ; 5
(push) ; 5
; [else-branch: 27 | |toGo@23@01| != 0]
(assert (not (= (Seq_length toGo@23@01) 0)))
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test1 ----------
(declare-const x@150@01 $Ref)
(declare-const x@151@01 $Ref)
(push) ; 1
(declare-const i@152@01 Int)
(push) ; 2
(pop) ; 2
(declare-const $t@153@01 $PSF<wand@1>)
(declare-fun inv@154@01 ($Ref $Perm $Ref Int $Ref $Perm) Int)
(declare-fun img@155@01 ($Ref $Perm $Ref Int $Ref $Perm) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((i@152@01 Int)) (!
  (and
    (=
      (inv@154@01 x@151@01 $Perm.Write x@151@01 i@152@01 x@151@01 $Perm.Write)
      i@152@01)
    (img@155@01 x@151@01 $Perm.Write x@151@01 i@152@01 x@151@01 $Perm.Write))
  :pattern ((inv@154@01 x@151@01 $Perm.Write x@151@01 i@152@01 x@151@01 $Perm.Write))
  :pattern ((img@155@01 x@151@01 $Perm.Write x@151@01 i@152@01 x@151@01 $Perm.Write))
  :qid |quant-u-20451|)))
(assert (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 Int) (x4 $Ref) (x5 $Perm)) (!
  (=>
    (img@155@01 x0 x1 x2 x3 x4 x5)
    (and
      (= x@151@01 x0)
      (= $Perm.Write x1)
      (= x@151@01 x2)
      (= (inv@154@01 x0 x1 x2 x3 x4 x5) x3)
      (= x@151@01 x4)
      (= $Perm.Write x5)))
  :pattern ((inv@154@01 x0 x1 x2 x3 x4 x5))
  :qid |wand@1-fctOfInv|)))
; Permissons are non-negative
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; exhale (forall i: Int ::true ==>
;     acc(x.f, write) && x.f == i - 1 --* acc(x.f, write))
(declare-const i@156@01 Int)
(push) ; 3
; [eval] i - 1
(pop) ; 3
(declare-fun inv@157@01 ($Ref $Perm $Ref Int $Ref $Perm) Int)
(declare-fun img@158@01 ($Ref $Perm $Ref Int $Ref $Perm) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((i1@156@01 Int) (i2@156@01 Int)) (!
  (=> (= (- i1@156@01 1) (- i2@156@01 1)) (= i1@156@01 i2@156@01))
  
  :qid |wand@1-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((i@156@01@rw0 Int)) (!
  (and
    (=
      (inv@157@01 x@151@01 $Perm.Write x@151@01 i@156@01@rw0 x@151@01 $Perm.Write)
      (+ i@156@01@rw0 1))
    (img@158@01 x@151@01 $Perm.Write x@151@01 i@156@01@rw0 x@151@01 $Perm.Write))
  :pattern ((inv@157@01 x@151@01 $Perm.Write x@151@01 i@156@01@rw0 x@151@01 $Perm.Write))
  :pattern ((img@158@01 x@151@01 $Perm.Write x@151@01 i@156@01@rw0 x@151@01 $Perm.Write))
  :qid |wand@1-invOfFct|)))
(assert (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 Int) (x4 $Ref) (x5 $Perm)) (!
  (=>
    (img@158@01 x0 x1 x2 x3 x4 x5)
    (and
      (= x@151@01 x0)
      (= $Perm.Write x1)
      (= x@151@01 x2)
      (= (- (inv@157@01 x0 x1 x2 x3 x4 x5) 1) x3)
      (= x@151@01 x4)
      (= $Perm.Write x5)))
  :pattern ((inv@157@01 x0 x1 x2 x3 x4 x5))
  :qid |wand@1-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((i@156@01 Int)) (!
  (= (- i@156@01 1) i@156@01)
  
  :qid |quant-u-20453|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@159@01 ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 Int) (x4 $Ref) (x5 $Perm)) $Perm
  (ite
    (and
      (img@158@01 x0 x1 x2 x3 x4 x5)
      (and
        (= x0 x@151@01)
        (= x1 $Perm.Write)
        (= x2 x@151@01)
        (= x3 (- (inv@157@01 x0 x1 x2 x3 x4 x5) 1))
        (= x4 x@151@01)
        (= x5 $Perm.Write)))
    ($Perm.min
      (ite (img@155@01 x0 x1 x2 x3 x4 x5) $Perm.Write $Perm.No)
      $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 Int) (x4 $Ref) (x5 $Perm)) (!
  (=
    (-
      (ite (img@155@01 x0 x1 x2 x3 x4 x5) $Perm.Write $Perm.No)
      (pTaken@159@01 x0 x1 x2 x3 x4 x5))
    $Perm.No)
  
  :qid |quant-u-20455|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 Int) (x4 $Ref) (x5 $Perm)) (!
  (= (pTaken@159@01 x0 x1 x2 x3 x4 x5) $Perm.No)
  
  :qid |quant-u-20456|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 Int) (x4 $Ref) (x5 $Perm)) (!
  (=>
    (and
      (img@158@01 x0 x1 x2 x3 x4 x5)
      (and
        (= x0 x@151@01)
        (= x1 $Perm.Write)
        (= x2 x@151@01)
        (= x3 (- (inv@157@01 x0 x1 x2 x3 x4 x5) 1))
        (= x4 x@151@01)
        (= x5 $Perm.Write)))
    (= (- $Perm.Write (pTaken@159@01 x0 x1 x2 x3 x4 x5)) $Perm.No))
  
  :qid |quant-u-20457|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; assert (forall i: Int ::true ==>
;     acc(x.f, write) && x.f == i --* acc(x.f, write))
(declare-const i@160@01 Int)
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
(declare-fun inv@161@01 ($Ref $Perm $Ref Int $Ref $Perm) Int)
(declare-fun img@162@01 ($Ref $Perm $Ref Int $Ref $Perm) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((i@160@01 Int)) (!
  (and
    (=
      (inv@161@01 x@151@01 $Perm.Write x@151@01 i@160@01 x@151@01 $Perm.Write)
      i@160@01)
    (img@162@01 x@151@01 $Perm.Write x@151@01 i@160@01 x@151@01 $Perm.Write))
  :pattern ((inv@161@01 x@151@01 $Perm.Write x@151@01 i@160@01 x@151@01 $Perm.Write))
  :pattern ((img@162@01 x@151@01 $Perm.Write x@151@01 i@160@01 x@151@01 $Perm.Write))
  :qid |wand@1-invOfFct|)))
(assert (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 Int) (x4 $Ref) (x5 $Perm)) (!
  (=>
    (img@162@01 x0 x1 x2 x3 x4 x5)
    (and
      (= x@151@01 x0)
      (= $Perm.Write x1)
      (= x@151@01 x2)
      (= (inv@161@01 x0 x1 x2 x3 x4 x5) x3)
      (= x@151@01 x4)
      (= $Perm.Write x5)))
  :pattern ((inv@161@01 x0 x1 x2 x3 x4 x5))
  :qid |wand@1-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@163@01 ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 Int) (x4 $Ref) (x5 $Perm)) $Perm
  (ite
    (and
      (img@162@01 x0 x1 x2 x3 x4 x5)
      (and
        (= x0 x@151@01)
        (= x1 $Perm.Write)
        (= x2 x@151@01)
        (= x3 (inv@161@01 x0 x1 x2 x3 x4 x5))
        (= x4 x@151@01)
        (= x5 $Perm.Write)))
    ($Perm.min
      (-
        (ite (img@155@01 x0 x1 x2 x3 x4 x5) $Perm.Write $Perm.No)
        (pTaken@159@01 x0 x1 x2 x3 x4 x5))
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
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 Int) (x4 $Ref) (x5 $Perm)) (!
  (=
    (-
      (-
        (ite (img@155@01 x0 x1 x2 x3 x4 x5) $Perm.Write $Perm.No)
        (pTaken@159@01 x0 x1 x2 x3 x4 x5))
      (pTaken@163@01 x0 x1 x2 x3 x4 x5))
    $Perm.No)
  
  :qid |quant-u-20460|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 Int) (x4 $Ref) (x5 $Perm)) (!
  (= (pTaken@163@01 x0 x1 x2 x3 x4 x5) $Perm.No)
  
  :qid |quant-u-20461|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 Int) (x4 $Ref) (x5 $Perm)) (!
  (=>
    (and
      (img@162@01 x0 x1 x2 x3 x4 x5)
      (and
        (= x0 x@151@01)
        (= x1 $Perm.Write)
        (= x2 x@151@01)
        (= x3 (inv@161@01 x0 x1 x2 x3 x4 x5))
        (= x4 x@151@01)
        (= x5 $Perm.Write)))
    (= (- $Perm.Write (pTaken@163@01 x0 x1 x2 x3 x4 x5)) $Perm.No))
  
  :qid |quant-u-20462|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 Int) (x4 $Ref) (x5 $Perm)) (!
  (=>
    (and
      (img@162@01 x0 x1 x2 x3 x4 x5)
      (and
        (= x0 x@151@01)
        (= x1 $Perm.Write)
        (= x2 x@151@01)
        (= x3 (inv@161@01 x0 x1 x2 x3 x4 x5))
        (= x4 x@151@01)
        (= x5 $Perm.Write)))
    (= (- $Perm.Write (pTaken@163@01 x0 x1 x2 x3 x4 x5)) $Perm.No))
  
  :qid |quant-u-20462|))))
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
(declare-const i@164@01 Int)
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
(declare-fun inv@165@01 ($Ref $Perm $Ref Int $Ref $Perm) Int)
(declare-fun img@166@01 ($Ref $Perm $Ref Int $Ref $Perm) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((i@164@01 Int)) (!
  (and
    (=
      (inv@165@01 x@151@01 $Perm.Write x@151@01 i@164@01 x@151@01 $Perm.Write)
      i@164@01)
    (img@166@01 x@151@01 $Perm.Write x@151@01 i@164@01 x@151@01 $Perm.Write))
  :pattern ((inv@165@01 x@151@01 $Perm.Write x@151@01 i@164@01 x@151@01 $Perm.Write))
  :pattern ((img@166@01 x@151@01 $Perm.Write x@151@01 i@164@01 x@151@01 $Perm.Write))
  :qid |wand@1-invOfFct|)))
(assert (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 Int) (x4 $Ref) (x5 $Perm)) (!
  (=>
    (img@166@01 x0 x1 x2 x3 x4 x5)
    (and
      (= x@151@01 x0)
      (= $Perm.Write x1)
      (= x@151@01 x2)
      (= (inv@165@01 x0 x1 x2 x3 x4 x5) x3)
      (= x@151@01 x4)
      (= $Perm.Write x5)))
  :pattern ((inv@165@01 x0 x1 x2 x3 x4 x5))
  :qid |wand@1-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@167@01 ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 Int) (x4 $Ref) (x5 $Perm)) $Perm
  (ite
    (and
      (img@166@01 x0 x1 x2 x3 x4 x5)
      (and
        (= x0 x@151@01)
        (= x1 $Perm.Write)
        (= x2 x@151@01)
        (= x3 (inv@165@01 x0 x1 x2 x3 x4 x5))
        (= x4 x@151@01)
        (= x5 $Perm.Write)))
    ($Perm.min
      (-
        (ite (img@155@01 x0 x1 x2 x3 x4 x5) $Perm.Write $Perm.No)
        (pTaken@159@01 x0 x1 x2 x3 x4 x5))
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
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 Int) (x4 $Ref) (x5 $Perm)) (!
  (=
    (-
      (-
        (ite (img@155@01 x0 x1 x2 x3 x4 x5) $Perm.Write $Perm.No)
        (pTaken@159@01 x0 x1 x2 x3 x4 x5))
      (pTaken@167@01 x0 x1 x2 x3 x4 x5))
    $Perm.No)
  
  :qid |quant-u-20465|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 Int) (x4 $Ref) (x5 $Perm)) (!
  (= (pTaken@167@01 x0 x1 x2 x3 x4 x5) $Perm.No)
  
  :qid |quant-u-20466|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 Int) (x4 $Ref) (x5 $Perm)) (!
  (=>
    (and
      (img@166@01 x0 x1 x2 x3 x4 x5)
      (and
        (= x0 x@151@01)
        (= x1 $Perm.Write)
        (= x2 x@151@01)
        (= x3 (inv@165@01 x0 x1 x2 x3 x4 x5))
        (= x4 x@151@01)
        (= x5 $Perm.Write)))
    (= (- $Perm.Write (pTaken@167@01 x0 x1 x2 x3 x4 x5)) $Perm.No))
  
  :qid |quant-u-20467|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 Int) (x4 $Ref) (x5 $Perm)) (!
  (=>
    (and
      (img@166@01 x0 x1 x2 x3 x4 x5)
      (and
        (= x0 x@151@01)
        (= x1 $Perm.Write)
        (= x2 x@151@01)
        (= x3 (inv@165@01 x0 x1 x2 x3 x4 x5))
        (= x4 x@151@01)
        (= x5 $Perm.Write)))
    (= (- $Perm.Write (pTaken@167@01 x0 x1 x2 x3 x4 x5)) $Perm.No))
  
  :qid |quant-u-20467|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- test2 ----------
(declare-const xs@168@01 Seq<$Ref>)
(declare-const y@169@01 $Ref)
(declare-const xs@170@01 Seq<$Ref>)
(declare-const y@171@01 $Ref)
(push) ; 1
(declare-const x@172@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@170@01 x@172@01))
(pop) ; 2
(declare-const $t@173@01 $PSF<wand@2>)
(declare-fun inv@174@01 ($Ref $Perm $Ref $Perm $Ref $Perm) $Ref)
(declare-fun img@175@01 ($Ref $Perm $Ref $Perm $Ref $Perm) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@172@01 $Ref) (x2@172@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@170@01 x1@172@01)
      (Seq_contains xs@170@01 x2@172@01)
      (= x1@172@01 x2@172@01))
    (= x1@172@01 x2@172@01))
  
  :qid |wand@2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@172@01 $Ref)) (!
  (=>
    (Seq_contains xs@170@01 x@172@01)
    (and
      (=
        (inv@174@01 y@171@01 $Perm.Write x@172@01 $Perm.Write y@171@01 $Perm.Write)
        x@172@01)
      (img@175@01 y@171@01 $Perm.Write x@172@01 $Perm.Write y@171@01 $Perm.Write)))
  :pattern ((Seq_contains xs@170@01 x@172@01))
  :pattern ((Seq_contains_trigger xs@170@01 x@172@01))
  :pattern ((Seq_contains_trigger xs@170@01 x@172@01))
  :pattern ((inv@174@01 y@171@01 $Perm.Write x@172@01 $Perm.Write y@171@01 $Perm.Write))
  :pattern ((img@175@01 y@171@01 $Perm.Write x@172@01 $Perm.Write y@171@01 $Perm.Write))
  :qid |quant-u-20469|)))
(assert (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) (!
  (=>
    (and
      (img@175@01 x0 x1 x2 x3 x4 x5)
      (Seq_contains xs@170@01 (inv@174@01 x0 x1 x2 x3 x4 x5)))
    (and
      (= y@171@01 x0)
      (= $Perm.Write x1)
      (= (inv@174@01 x0 x1 x2 x3 x4 x5) x2)
      (= $Perm.Write x3)
      (= y@171@01 x4)
      (= $Perm.Write x5)))
  :pattern ((inv@174@01 x0 x1 x2 x3 x4 x5))
  :qid |wand@2-fctOfInv|)))
; Permissons are non-negative
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; assert (forall x: Ref ::(x in xs) ==>
;     acc(y.f, write) --* acc(y.f, write) && acc(x.f, write))
(declare-const x@176@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@170@01 x@176@01))
(pop) ; 3
(declare-fun inv@177@01 ($Ref $Perm $Ref $Perm $Ref $Perm) $Ref)
(declare-fun img@178@01 ($Ref $Perm $Ref $Perm $Ref $Perm) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@176@01 $Ref) (x2@176@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@170@01 x1@176@01)
      (Seq_contains xs@170@01 x2@176@01)
      (= x1@176@01 x2@176@01))
    (= x1@176@01 x2@176@01))
  
  :qid |wand@2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@176@01 $Ref)) (!
  (=>
    (Seq_contains xs@170@01 x@176@01)
    (and
      (=
        (inv@177@01 y@171@01 $Perm.Write y@171@01 $Perm.Write x@176@01 $Perm.Write)
        x@176@01)
      (img@178@01 y@171@01 $Perm.Write y@171@01 $Perm.Write x@176@01 $Perm.Write)))
  :pattern ((Seq_contains xs@170@01 x@176@01))
  :pattern ((Seq_contains_trigger xs@170@01 x@176@01))
  :pattern ((inv@177@01 y@171@01 $Perm.Write y@171@01 $Perm.Write x@176@01 $Perm.Write))
  :pattern ((img@178@01 y@171@01 $Perm.Write y@171@01 $Perm.Write x@176@01 $Perm.Write))
  :qid |wand@2-invOfFct|)))
(assert (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) (!
  (=>
    (and
      (img@178@01 x0 x1 x2 x3 x4 x5)
      (Seq_contains xs@170@01 (inv@177@01 x0 x1 x2 x3 x4 x5)))
    (and
      (= y@171@01 x0)
      (= $Perm.Write x1)
      (= y@171@01 x2)
      (= $Perm.Write x3)
      (= (inv@177@01 x0 x1 x2 x3 x4 x5) x4)
      (= $Perm.Write x5)))
  :pattern ((inv@177@01 x0 x1 x2 x3 x4 x5))
  :qid |wand@2-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((x@176@01 $Ref)) (!
  (= y@171@01 x@176@01)
  
  :qid |quant-u-20471|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@179@01 ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) $Perm
  (ite
    (and
      (Seq_contains xs@170@01 (inv@177@01 x0 x1 x2 x3 x4 x5))
      (img@178@01 x0 x1 x2 x3 x4 x5)
      (and
        (= x0 y@171@01)
        (= x1 $Perm.Write)
        (= x2 y@171@01)
        (= x3 $Perm.Write)
        (= x4 (inv@177@01 x0 x1 x2 x3 x4 x5))
        (= x5 $Perm.Write)))
    ($Perm.min
      (ite
        (and
          (img@175@01 x0 x1 x2 x3 x4 x5)
          (Seq_contains xs@170@01 (inv@174@01 x0 x1 x2 x3 x4 x5)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) (!
  (=
    (-
      (ite
        (and
          (img@175@01 x0 x1 x2 x3 x4 x5)
          (Seq_contains xs@170@01 (inv@174@01 x0 x1 x2 x3 x4 x5)))
        $Perm.Write
        $Perm.No)
      (pTaken@179@01 x0 x1 x2 x3 x4 x5))
    $Perm.No)
  
  :qid |quant-u-20473|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) (!
  (= (pTaken@179@01 x0 x1 x2 x3 x4 x5) $Perm.No)
  
  :qid |quant-u-20474|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) (!
  (=>
    (and
      (Seq_contains xs@170@01 (inv@177@01 x0 x1 x2 x3 x4 x5))
      (img@178@01 x0 x1 x2 x3 x4 x5)
      (and
        (= x0 y@171@01)
        (= x1 $Perm.Write)
        (= x2 y@171@01)
        (= x3 $Perm.Write)
        (= x4 (inv@177@01 x0 x1 x2 x3 x4 x5))
        (= x5 $Perm.Write)))
    (= (- $Perm.Write (pTaken@179@01 x0 x1 x2 x3 x4 x5)) $Perm.No))
  
  :qid |quant-u-20475|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) (!
  (=>
    (and
      (Seq_contains xs@170@01 (inv@177@01 x0 x1 x2 x3 x4 x5))
      (img@178@01 x0 x1 x2 x3 x4 x5)
      (and
        (= x0 y@171@01)
        (= x1 $Perm.Write)
        (= x2 y@171@01)
        (= x3 $Perm.Write)
        (= x4 (inv@177@01 x0 x1 x2 x3 x4 x5))
        (= x5 $Perm.Write)))
    (= (- $Perm.Write (pTaken@179@01 x0 x1 x2 x3 x4 x5)) $Perm.No))
  
  :qid |quant-u-20475|))))
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
(declare-const x@180@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@170@01 x@180@01))
(pop) ; 3
(declare-fun inv@181@01 ($Ref $Perm $Ref $Perm $Ref $Perm) $Ref)
(declare-fun img@182@01 ($Ref $Perm $Ref $Perm $Ref $Perm) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@180@01 $Ref) (x2@180@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@170@01 x1@180@01)
      (Seq_contains xs@170@01 x2@180@01)
      (= x1@180@01 x2@180@01))
    (= x1@180@01 x2@180@01))
  
  :qid |wand@2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@180@01 $Ref)) (!
  (=>
    (Seq_contains xs@170@01 x@180@01)
    (and
      (=
        (inv@181@01 y@171@01 $Perm.Write y@171@01 $Perm.Write x@180@01 $Perm.Write)
        x@180@01)
      (img@182@01 y@171@01 $Perm.Write y@171@01 $Perm.Write x@180@01 $Perm.Write)))
  :pattern ((Seq_contains xs@170@01 x@180@01))
  :pattern ((Seq_contains_trigger xs@170@01 x@180@01))
  :pattern ((inv@181@01 y@171@01 $Perm.Write y@171@01 $Perm.Write x@180@01 $Perm.Write))
  :pattern ((img@182@01 y@171@01 $Perm.Write y@171@01 $Perm.Write x@180@01 $Perm.Write))
  :qid |wand@2-invOfFct|)))
(assert (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) (!
  (=>
    (and
      (img@182@01 x0 x1 x2 x3 x4 x5)
      (Seq_contains xs@170@01 (inv@181@01 x0 x1 x2 x3 x4 x5)))
    (and
      (= y@171@01 x0)
      (= $Perm.Write x1)
      (= y@171@01 x2)
      (= $Perm.Write x3)
      (= (inv@181@01 x0 x1 x2 x3 x4 x5) x4)
      (= $Perm.Write x5)))
  :pattern ((inv@181@01 x0 x1 x2 x3 x4 x5))
  :qid |wand@2-fctOfInv|)))
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((x@180@01 $Ref)) (!
  (= y@171@01 x@180@01)
  
  :qid |quant-u-20477|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@183@01 ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) $Perm
  (ite
    (and
      (Seq_contains xs@170@01 (inv@181@01 x0 x1 x2 x3 x4 x5))
      (img@182@01 x0 x1 x2 x3 x4 x5)
      (and
        (= x0 y@171@01)
        (= x1 $Perm.Write)
        (= x2 y@171@01)
        (= x3 $Perm.Write)
        (= x4 (inv@181@01 x0 x1 x2 x3 x4 x5))
        (= x5 $Perm.Write)))
    ($Perm.min
      (ite
        (and
          (img@175@01 x0 x1 x2 x3 x4 x5)
          (Seq_contains xs@170@01 (inv@174@01 x0 x1 x2 x3 x4 x5)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) (!
  (=
    (-
      (ite
        (and
          (img@175@01 x0 x1 x2 x3 x4 x5)
          (Seq_contains xs@170@01 (inv@174@01 x0 x1 x2 x3 x4 x5)))
        $Perm.Write
        $Perm.No)
      (pTaken@183@01 x0 x1 x2 x3 x4 x5))
    $Perm.No)
  
  :qid |quant-u-20479|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) (!
  (= (pTaken@183@01 x0 x1 x2 x3 x4 x5) $Perm.No)
  
  :qid |quant-u-20480|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) (!
  (=>
    (and
      (Seq_contains xs@170@01 (inv@181@01 x0 x1 x2 x3 x4 x5))
      (img@182@01 x0 x1 x2 x3 x4 x5)
      (and
        (= x0 y@171@01)
        (= x1 $Perm.Write)
        (= x2 y@171@01)
        (= x3 $Perm.Write)
        (= x4 (inv@181@01 x0 x1 x2 x3 x4 x5))
        (= x5 $Perm.Write)))
    (= (- $Perm.Write (pTaken@183@01 x0 x1 x2 x3 x4 x5)) $Perm.No))
  
  :qid |quant-u-20481|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) (!
  (=>
    (and
      (Seq_contains xs@170@01 (inv@181@01 x0 x1 x2 x3 x4 x5))
      (img@182@01 x0 x1 x2 x3 x4 x5)
      (and
        (= x0 y@171@01)
        (= x1 $Perm.Write)
        (= x2 y@171@01)
        (= x3 $Perm.Write)
        (= x4 (inv@181@01 x0 x1 x2 x3 x4 x5))
        (= x5 $Perm.Write)))
    (= (- $Perm.Write (pTaken@183@01 x0 x1 x2 x3 x4 x5)) $Perm.No))
  
  :qid |quant-u-20481|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- test3 ----------
(declare-const xs@184@01 Seq<$Ref>)
(declare-const y@185@01 $Ref)
(declare-const xs@186@01 Seq<$Ref>)
(declare-const y@187@01 $Ref)
(push) ; 1
(declare-const $t@188@01 $Snap)
(assert (= $t@188@01 ($Snap.combine ($Snap.first $t@188@01) ($Snap.second $t@188@01))))
(declare-const x@189@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@186@01 x@189@01))
(pop) ; 2
(declare-fun inv@190@01 ($Ref $Perm $Ref $Perm $Ref $Perm) $Ref)
(declare-fun img@191@01 ($Ref $Perm $Ref $Perm $Ref $Perm) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@189@01 $Ref) (x2@189@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@186@01 x1@189@01)
      (Seq_contains xs@186@01 x2@189@01)
      (= x1@189@01 x2@189@01))
    (= x1@189@01 x2@189@01))
  
  :qid |wand@2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@189@01 $Ref)) (!
  (=>
    (Seq_contains xs@186@01 x@189@01)
    (and
      (=
        (inv@190@01 y@187@01 $Perm.Write x@189@01 $Perm.Write y@187@01 $Perm.Write)
        x@189@01)
      (img@191@01 y@187@01 $Perm.Write x@189@01 $Perm.Write y@187@01 $Perm.Write)))
  :pattern ((Seq_contains xs@186@01 x@189@01))
  :pattern ((Seq_contains_trigger xs@186@01 x@189@01))
  :pattern ((Seq_contains_trigger xs@186@01 x@189@01))
  :pattern ((inv@190@01 y@187@01 $Perm.Write x@189@01 $Perm.Write y@187@01 $Perm.Write))
  :pattern ((img@191@01 y@187@01 $Perm.Write x@189@01 $Perm.Write y@187@01 $Perm.Write))
  :qid |quant-u-20483|)))
(assert (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) (!
  (=>
    (and
      (img@191@01 x0 x1 x2 x3 x4 x5)
      (Seq_contains xs@186@01 (inv@190@01 x0 x1 x2 x3 x4 x5)))
    (and
      (= y@187@01 x0)
      (= $Perm.Write x1)
      (= (inv@190@01 x0 x1 x2 x3 x4 x5) x2)
      (= $Perm.Write x3)
      (= y@187@01 x4)
      (= $Perm.Write x5)))
  :pattern ((inv@190@01 x0 x1 x2 x3 x4 x5))
  :qid |wand@2-fctOfInv|)))
; Permissons are non-negative
(assert (=
  ($Snap.second $t@188@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@188@01))
    ($Snap.second ($Snap.second $t@188@01)))))
(assert (= ($Snap.first ($Snap.second $t@188@01)) $Snap.unit))
; [eval] (forall i: Int, j: Int :: { xs[i], xs[j] } 0 <= i && (0 <= j && (i < |xs| && (j < |xs| && i != j))) ==> xs[i] != xs[j])
(declare-const i@192@01 Int)
(declare-const j@193@01 Int)
(push) ; 2
; [eval] 0 <= i && (0 <= j && (i < |xs| && (j < |xs| && i != j))) ==> xs[i] != xs[j]
; [eval] 0 <= i && (0 <= j && (i < |xs| && (j < |xs| && i != j)))
; [eval] 0 <= i
(push) ; 3
; [then-branch: 28 | !(0 <= i@192@01) | live]
; [else-branch: 28 | 0 <= i@192@01 | live]
(push) ; 4
; [then-branch: 28 | !(0 <= i@192@01)]
(assert (not (<= 0 i@192@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 28 | 0 <= i@192@01]
(assert (<= 0 i@192@01))
; [eval] 0 <= j
(push) ; 5
; [then-branch: 29 | !(0 <= j@193@01) | live]
; [else-branch: 29 | 0 <= j@193@01 | live]
(push) ; 6
; [then-branch: 29 | !(0 <= j@193@01)]
(assert (not (<= 0 j@193@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 29 | 0 <= j@193@01]
(assert (<= 0 j@193@01))
; [eval] i < |xs|
; [eval] |xs|
(push) ; 7
; [then-branch: 30 | !(i@192@01 < |xs@186@01|) | live]
; [else-branch: 30 | i@192@01 < |xs@186@01| | live]
(push) ; 8
; [then-branch: 30 | !(i@192@01 < |xs@186@01|)]
(assert (not (< i@192@01 (Seq_length xs@186@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 30 | i@192@01 < |xs@186@01|]
(assert (< i@192@01 (Seq_length xs@186@01)))
; [eval] j < |xs|
; [eval] |xs|
(push) ; 9
; [then-branch: 31 | !(j@193@01 < |xs@186@01|) | live]
; [else-branch: 31 | j@193@01 < |xs@186@01| | live]
(push) ; 10
; [then-branch: 31 | !(j@193@01 < |xs@186@01|)]
(assert (not (< j@193@01 (Seq_length xs@186@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 31 | j@193@01 < |xs@186@01|]
(assert (< j@193@01 (Seq_length xs@186@01)))
; [eval] i != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (< j@193@01 (Seq_length xs@186@01))
  (not (< j@193@01 (Seq_length xs@186@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@192@01 (Seq_length xs@186@01))
  (and
    (< i@192@01 (Seq_length xs@186@01))
    (or
      (< j@193@01 (Seq_length xs@186@01))
      (not (< j@193@01 (Seq_length xs@186@01)))))))
(assert (or
  (< i@192@01 (Seq_length xs@186@01))
  (not (< i@192@01 (Seq_length xs@186@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@193@01)
  (and
    (<= 0 j@193@01)
    (=>
      (< i@192@01 (Seq_length xs@186@01))
      (and
        (< i@192@01 (Seq_length xs@186@01))
        (or
          (< j@193@01 (Seq_length xs@186@01))
          (not (< j@193@01 (Seq_length xs@186@01))))))
    (or
      (< i@192@01 (Seq_length xs@186@01))
      (not (< i@192@01 (Seq_length xs@186@01)))))))
(assert (or (<= 0 j@193@01) (not (<= 0 j@193@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@192@01)
  (and
    (<= 0 i@192@01)
    (=>
      (<= 0 j@193@01)
      (and
        (<= 0 j@193@01)
        (=>
          (< i@192@01 (Seq_length xs@186@01))
          (and
            (< i@192@01 (Seq_length xs@186@01))
            (or
              (< j@193@01 (Seq_length xs@186@01))
              (not (< j@193@01 (Seq_length xs@186@01))))))
        (or
          (< i@192@01 (Seq_length xs@186@01))
          (not (< i@192@01 (Seq_length xs@186@01))))))
    (or (<= 0 j@193@01) (not (<= 0 j@193@01))))))
(assert (or (<= 0 i@192@01) (not (<= 0 i@192@01))))
(push) ; 3
; [then-branch: 32 | 0 <= i@192@01 && 0 <= j@193@01 && i@192@01 < |xs@186@01| && j@193@01 < |xs@186@01| && i@192@01 != j@193@01 | live]
; [else-branch: 32 | !(0 <= i@192@01 && 0 <= j@193@01 && i@192@01 < |xs@186@01| && j@193@01 < |xs@186@01| && i@192@01 != j@193@01) | live]
(push) ; 4
; [then-branch: 32 | 0 <= i@192@01 && 0 <= j@193@01 && i@192@01 < |xs@186@01| && j@193@01 < |xs@186@01| && i@192@01 != j@193@01]
(assert (and
  (<= 0 i@192@01)
  (and
    (<= 0 j@193@01)
    (and
      (< i@192@01 (Seq_length xs@186@01))
      (and (< j@193@01 (Seq_length xs@186@01)) (not (= i@192@01 j@193@01)))))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
(push) ; 5
(assert (not (>= i@192@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] xs[j]
(push) ; 5
(assert (not (>= j@193@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 32 | !(0 <= i@192@01 && 0 <= j@193@01 && i@192@01 < |xs@186@01| && j@193@01 < |xs@186@01| && i@192@01 != j@193@01)]
(assert (not
  (and
    (<= 0 i@192@01)
    (and
      (<= 0 j@193@01)
      (and
        (< i@192@01 (Seq_length xs@186@01))
        (and (< j@193@01 (Seq_length xs@186@01)) (not (= i@192@01 j@193@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (<= 0 i@192@01)
    (and
      (<= 0 j@193@01)
      (and
        (< i@192@01 (Seq_length xs@186@01))
        (and (< j@193@01 (Seq_length xs@186@01)) (not (= i@192@01 j@193@01))))))
  (and
    (<= 0 i@192@01)
    (<= 0 j@193@01)
    (< i@192@01 (Seq_length xs@186@01))
    (< j@193@01 (Seq_length xs@186@01))
    (not (= i@192@01 j@193@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i@192@01)
      (and
        (<= 0 j@193@01)
        (and
          (< i@192@01 (Seq_length xs@186@01))
          (and (< j@193@01 (Seq_length xs@186@01)) (not (= i@192@01 j@193@01)))))))
  (and
    (<= 0 i@192@01)
    (and
      (<= 0 j@193@01)
      (and
        (< i@192@01 (Seq_length xs@186@01))
        (and (< j@193@01 (Seq_length xs@186@01)) (not (= i@192@01 j@193@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@192@01 Int) (j@193@01 Int)) (!
  (and
    (=>
      (<= 0 i@192@01)
      (and
        (<= 0 i@192@01)
        (=>
          (<= 0 j@193@01)
          (and
            (<= 0 j@193@01)
            (=>
              (< i@192@01 (Seq_length xs@186@01))
              (and
                (< i@192@01 (Seq_length xs@186@01))
                (or
                  (< j@193@01 (Seq_length xs@186@01))
                  (not (< j@193@01 (Seq_length xs@186@01))))))
            (or
              (< i@192@01 (Seq_length xs@186@01))
              (not (< i@192@01 (Seq_length xs@186@01))))))
        (or (<= 0 j@193@01) (not (<= 0 j@193@01)))))
    (or (<= 0 i@192@01) (not (<= 0 i@192@01)))
    (=>
      (and
        (<= 0 i@192@01)
        (and
          (<= 0 j@193@01)
          (and
            (< i@192@01 (Seq_length xs@186@01))
            (and (< j@193@01 (Seq_length xs@186@01)) (not (= i@192@01 j@193@01))))))
      (and
        (<= 0 i@192@01)
        (<= 0 j@193@01)
        (< i@192@01 (Seq_length xs@186@01))
        (< j@193@01 (Seq_length xs@186@01))
        (not (= i@192@01 j@193@01))))
    (or
      (not
        (and
          (<= 0 i@192@01)
          (and
            (<= 0 j@193@01)
            (and
              (< i@192@01 (Seq_length xs@186@01))
              (and
                (< j@193@01 (Seq_length xs@186@01))
                (not (= i@192@01 j@193@01)))))))
      (and
        (<= 0 i@192@01)
        (and
          (<= 0 j@193@01)
          (and
            (< i@192@01 (Seq_length xs@186@01))
            (and (< j@193@01 (Seq_length xs@186@01)) (not (= i@192@01 j@193@01))))))))
  :pattern ((Seq_index xs@186@01 i@192@01) (Seq_index xs@186@01 j@193@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@59@10@59@26-aux|)))
(assert (forall ((i@192@01 Int) (j@193@01 Int)) (!
  (=>
    (and
      (<= 0 i@192@01)
      (and
        (<= 0 j@193@01)
        (and
          (< i@192@01 (Seq_length xs@186@01))
          (and (< j@193@01 (Seq_length xs@186@01)) (not (= i@192@01 j@193@01))))))
    (not (= (Seq_index xs@186@01 i@192@01) (Seq_index xs@186@01 j@193@01))))
  :pattern ((Seq_index xs@186@01 i@192@01) (Seq_index xs@186@01 j@193@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@59@10@59@26|)))
(assert (=
  ($Snap.second ($Snap.second $t@188@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@188@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@188@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@188@01))) $Snap.unit))
; [eval] |xs| > 0
; [eval] |xs|
(assert (> (Seq_length xs@186@01) 0))
(assert (not (= y@187@01 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var some: Ref
(declare-const some@194@01 $Ref)
; [exec]
; some := xs[0]
; [eval] xs[0]
(push) ; 3
(assert (not (< 0 (Seq_length xs@186@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const some@195@01 $Ref)
(assert (= some@195@01 (Seq_index xs@186@01 0)))
; [exec]
; package true --* acc(some.f, write) && acc(y.f, write) {
;   apply acc(y.f, write) --* acc(some.f, write) && acc(y.f, write)
; }
(push) ; 3
(declare-const $t@196@01 $Snap)
(assert (= $t@196@01 $Snap.unit))
; [exec]
; apply acc(y.f, write) --* acc(some.f, write) && acc(y.f, write)
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) (!
  (=>
    (and
      (= x0 y@187@01)
      (= x1 $Perm.Write)
      (= x2 some@195@01)
      (= x3 $Perm.Write)
      (= x4 y@187@01)
      (= x5 $Perm.Write))
    false)
  
  :qid |quant-u-20484|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@197@01 $PSF<wand@2>)
(declare-const s@198@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) (!
  (=>
    (and
      (= x0 y@187@01)
      (= x1 $Perm.Write)
      (= x2 some@195@01)
      (= x3 $Perm.Write)
      (= x4 y@187@01)
      (= x5 $Perm.Write))
    false)
  
  :qid |quant-u-20485|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@199@01 $PSF<wand@2>)
(declare-const s@200@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (= (as sm@197@01  $PSF<wand@2>) (as sm@199@01  $PSF<wand@2>)))
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@201@01 ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) $Perm
  (ite
    (and
      (= x0 y@187@01)
      (= x1 $Perm.Write)
      (= x2 some@195@01)
      (= x3 $Perm.Write)
      (= x4 y@187@01)
      (= x5 $Perm.Write))
    ($Perm.min
      (ite
        (and
          (img@191@01 x0 x1 x2 x3 x4 x5)
          (Seq_contains xs@186@01 (inv@190@01 x0 x1 x2 x3 x4 x5)))
        $Perm.Write
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
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) (!
  (=
    (-
      (ite
        (and
          (img@191@01 x0 x1 x2 x3 x4 x5)
          (Seq_contains xs@186@01 (inv@190@01 x0 x1 x2 x3 x4 x5)))
        $Perm.Write
        $Perm.No)
      (pTaken@201@01 x0 x1 x2 x3 x4 x5))
    $Perm.No)
  
  :qid |quant-u-20487|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) (!
  (= (pTaken@201@01 x0 x1 x2 x3 x4 x5) $Perm.No)
  
  :qid |quant-u-20488|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) (!
  (=>
    (and
      (= x0 y@187@01)
      (= x1 $Perm.Write)
      (= x2 some@195@01)
      (= x3 $Perm.Write)
      (= x4 y@187@01)
      (= x5 $Perm.Write))
    (= (- $Perm.Write (pTaken@201@01 x0 x1 x2 x3 x4 x5)) $Perm.No))
  
  :qid |quant-u-20489|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@202@01 $PSF<wand@2>)
(declare-const s@203@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@191@01 y@187@01 $Perm.Write some@195@01 $Perm.Write y@187@01 $Perm.Write)
    (Seq_contains
      xs@186@01
      (inv@190@01 y@187@01 $Perm.Write some@195@01 $Perm.Write y@187@01 $Perm.Write)))
  (and
    (not
      (=
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@187@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap some@195@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@187@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        $Snap.unit))
    (=
      ($PSF.lookup_wand@2 (as sm@202@01  $PSF<wand@2>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap y@187@01)
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap some@195@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@187@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write)))
      ($PSF.lookup_wand@2 ($SortWrappers.$SnapTo$PSF<wand@2> ($Snap.first $t@188@01)) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap y@187@01)
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap some@195@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@187@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write)))))))
(assert (= (as sm@197@01  $PSF<wand@2>) (as sm@202@01  $PSF<wand@2>)))
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
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
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@188@01)))
  ($Snap.first ($PSF.lookup_wand@2 (as sm@202@01  $PSF<wand@2>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap y@187@01)
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap some@195@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@187@01))
    ($SortWrappers.$PermTo$Snap $Perm.Write))))))
(assert (=
  ($Snap.second ($PSF.lookup_wand@2 (as sm@202@01  $PSF<wand@2>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap y@187@01)
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap some@195@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@187@01))
    ($SortWrappers.$PermTo$Snap $Perm.Write))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($PSF.lookup_wand@2 (as sm@202@01  $PSF<wand@2>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap y@187@01)
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap some@195@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@187@01))
      ($SortWrappers.$PermTo$Snap $Perm.Write)))))
    ($Snap.second ($Snap.second ($PSF.lookup_wand@2 (as sm@202@01  $PSF<wand@2>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap y@187@01)
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap some@195@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@187@01))
      ($SortWrappers.$PermTo$Snap $Perm.Write))))))))
(assert (not (= some@195@01 $Ref.null)))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= some@195@01 y@187@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= y@187@01 some@195@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($PSF.lookup_wand@2 (as sm@202@01  $PSF<wand@2>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap y@187@01)
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap some@195@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@187@01))
      ($SortWrappers.$PermTo$Snap $Perm.Write))))))
    ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($PSF.lookup_wand@2 (as sm@202@01  $PSF<wand@2>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap y@187@01)
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap some@195@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@187@01))
      ($SortWrappers.$PermTo$Snap $Perm.Write))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($PSF.lookup_wand@2 (as sm@202@01  $PSF<wand@2>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap y@187@01)
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap some@195@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@187@01))
      ($SortWrappers.$PermTo$Snap $Perm.Write))))))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($PSF.lookup_wand@2 (as sm@202@01  $PSF<wand@2>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap y@187@01)
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap some@195@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@187@01))
      ($SortWrappers.$PermTo$Snap $Perm.Write))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (and (not (= some@195@01 y@187@01)) (not (= y@187@01 some@195@01))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= y@187@01 some@195@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($PSF.lookup_wand@2 (as sm@202@01  $PSF<wand@2>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap y@187@01)
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap some@195@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@187@01))
      ($SortWrappers.$PermTo$Snap $Perm.Write))))))
    ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($PSF.lookup_wand@2 (as sm@202@01  $PSF<wand@2>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap y@187@01)
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap some@195@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@187@01))
      ($SortWrappers.$PermTo$Snap $Perm.Write))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($PSF.lookup_wand@2 (as sm@202@01  $PSF<wand@2>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap y@187@01)
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap some@195@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@187@01))
      ($SortWrappers.$PermTo$Snap $Perm.Write))))))
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($PSF.lookup_wand@2 (as sm@202@01  $PSF<wand@2>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap y@187@01)
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap some@195@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@187@01))
      ($SortWrappers.$PermTo$Snap $Perm.Write))))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (and (not (= some@195@01 y@187@01)) (not (= y@187@01 some@195@01))))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= some@195@01 y@187@01)))
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
(check-sat)
; unknown
(set-option :timeout 0)
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
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= some@195@01 y@187@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Create MagicWandSnapFunction for wand true --* acc(some.f, write) && acc(y.f, write)
(declare-const mwsf@204@01 $MWSF)
(assert (forall (($t@196@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@204@01 $t@196@01)
    ($Snap.combine
      ($Snap.first ($Snap.second ($PSF.lookup_wand@2 (as sm@202@01  $PSF<wand@2>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap y@187@01)
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap some@195@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@187@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write)))))
      ($Snap.second ($Snap.second ($PSF.lookup_wand@2 (as sm@202@01  $PSF<wand@2>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap y@187@01)
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap some@195@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@187@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write)))))))
  :pattern ((MWSF_apply mwsf@204@01 $t@196@01))
  :qid |quant-u-20490|)))
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
(assert (forall (($t@196@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@204@01 $t@196@01)
    ($Snap.combine
      ($Snap.first ($Snap.second ($PSF.lookup_wand@2 (as sm@202@01  $PSF<wand@2>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap y@187@01)
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap some@195@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@187@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write)))))
      ($Snap.second ($Snap.second ($PSF.lookup_wand@2 (as sm@202@01  $PSF<wand@2>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap y@187@01)
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap some@195@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@187@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write)))))))
  :pattern ((MWSF_apply mwsf@204@01 $t@196@01))
  :qid |quant-u-20491|)))
(assert (and
  (= (as sm@197@01  $PSF<wand@2>) (as sm@199@01  $PSF<wand@2>))
  (=>
    (and
      (img@191@01 y@187@01 $Perm.Write some@195@01 $Perm.Write y@187@01 $Perm.Write)
      (Seq_contains
        xs@186@01
        (inv@190@01 y@187@01 $Perm.Write some@195@01 $Perm.Write y@187@01 $Perm.Write)))
    (and
      (not
        (=
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($Snap.combine
                    ($SortWrappers.$RefTo$Snap y@187@01)
                    ($SortWrappers.$PermTo$Snap $Perm.Write))
                  ($SortWrappers.$RefTo$Snap some@195@01))
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap y@187@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          $Snap.unit))
      (=
        ($PSF.lookup_wand@2 (as sm@202@01  $PSF<wand@2>) ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@187@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap some@195@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@187@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write)))
        ($PSF.lookup_wand@2 ($SortWrappers.$SnapTo$PSF<wand@2> ($Snap.first $t@188@01)) ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($Snap.combine
                  ($SortWrappers.$RefTo$Snap y@187@01)
                  ($SortWrappers.$PermTo$Snap $Perm.Write))
                ($SortWrappers.$RefTo$Snap some@195@01))
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap y@187@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))))))
  (= (as sm@197@01  $PSF<wand@2>) (as sm@202@01  $PSF<wand@2>))))
(assert true)
; [exec]
; assert (forall x: Ref ::(x in xs[1..]) ==>
;     acc(y.f, write) --* acc(x.f, write) && acc(y.f, write))
(declare-const x@205@01 $Ref)
(push) ; 4
; [eval] (x in xs[1..])
; [eval] xs[1..]
(assert (Seq_contains (Seq_drop xs@186@01 1) x@205@01))
(pop) ; 4
(declare-fun inv@206@01 ($Ref $Perm $Ref $Perm $Ref $Perm) $Ref)
(declare-fun img@207@01 ($Ref $Perm $Ref $Perm $Ref $Perm) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@205@01 $Ref) (x2@205@01 $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_drop xs@186@01 1) x1@205@01)
      (Seq_contains (Seq_drop xs@186@01 1) x2@205@01)
      (= x1@205@01 x2@205@01))
    (= x1@205@01 x2@205@01))
  
  :qid |wand@2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@205@01 $Ref)) (!
  (=>
    (Seq_contains (Seq_drop xs@186@01 1) x@205@01)
    (and
      (=
        (inv@206@01 y@187@01 $Perm.Write x@205@01 $Perm.Write y@187@01 $Perm.Write)
        x@205@01)
      (img@207@01 y@187@01 $Perm.Write x@205@01 $Perm.Write y@187@01 $Perm.Write)))
  :pattern ((Seq_contains (Seq_drop xs@186@01 1) x@205@01))
  :pattern ((Seq_contains_trigger (Seq_drop xs@186@01 1) x@205@01))
  :pattern ((inv@206@01 y@187@01 $Perm.Write x@205@01 $Perm.Write y@187@01 $Perm.Write))
  :pattern ((img@207@01 y@187@01 $Perm.Write x@205@01 $Perm.Write y@187@01 $Perm.Write))
  :qid |wand@2-invOfFct|)))
(assert (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) (!
  (=>
    (and
      (img@207@01 x0 x1 x2 x3 x4 x5)
      (Seq_contains (Seq_drop xs@186@01 1) (inv@206@01 x0 x1 x2 x3 x4 x5)))
    (and
      (= y@187@01 x0)
      (= $Perm.Write x1)
      (= (inv@206@01 x0 x1 x2 x3 x4 x5) x2)
      (= $Perm.Write x3)
      (= y@187@01 x4)
      (= $Perm.Write x5)))
  :pattern ((inv@206@01 x0 x1 x2 x3 x4 x5))
  :qid |wand@2-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@208@01 ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) $Perm
  (ite
    (and
      (Seq_contains (Seq_drop xs@186@01 1) (inv@206@01 x0 x1 x2 x3 x4 x5))
      (img@207@01 x0 x1 x2 x3 x4 x5)
      (and
        (= x0 y@187@01)
        (= x1 $Perm.Write)
        (= x2 (inv@206@01 x0 x1 x2 x3 x4 x5))
        (= x3 $Perm.Write)
        (= x4 y@187@01)
        (= x5 $Perm.Write)))
    ($Perm.min
      (-
        (ite
          (and
            (img@191@01 x0 x1 x2 x3 x4 x5)
            (Seq_contains xs@186@01 (inv@190@01 x0 x1 x2 x3 x4 x5)))
          $Perm.Write
          $Perm.No)
        (pTaken@201@01 x0 x1 x2 x3 x4 x5))
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
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) (!
  (=
    (-
      (-
        (ite
          (and
            (img@191@01 x0 x1 x2 x3 x4 x5)
            (Seq_contains xs@186@01 (inv@190@01 x0 x1 x2 x3 x4 x5)))
          $Perm.Write
          $Perm.No)
        (pTaken@201@01 x0 x1 x2 x3 x4 x5))
      (pTaken@208@01 x0 x1 x2 x3 x4 x5))
    $Perm.No)
  
  :qid |quant-u-20494|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) (!
  (=>
    (and
      (Seq_contains (Seq_drop xs@186@01 1) (inv@206@01 x0 x1 x2 x3 x4 x5))
      (img@207@01 x0 x1 x2 x3 x4 x5)
      (and
        (= x0 y@187@01)
        (= x1 $Perm.Write)
        (= x2 (inv@206@01 x0 x1 x2 x3 x4 x5))
        (= x3 $Perm.Write)
        (= x4 y@187@01)
        (= x5 $Perm.Write)))
    (= (- $Perm.Write (pTaken@208@01 x0 x1 x2 x3 x4 x5)) $Perm.No))
  
  :qid |quant-u-20495|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; assert (forall x: Ref ::(x in xs) ==>
;     acc(y.f, write) --* acc(x.f, write) && acc(y.f, write))
(declare-const x@209@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] (x in xs)
(assert (Seq_contains xs@186@01 x@209@01))
(pop) ; 4
(declare-fun inv@210@01 ($Ref $Perm $Ref $Perm $Ref $Perm) $Ref)
(declare-fun img@211@01 ($Ref $Perm $Ref $Perm $Ref $Perm) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@209@01 $Ref) (x2@209@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@186@01 x1@209@01)
      (Seq_contains xs@186@01 x2@209@01)
      (= x1@209@01 x2@209@01))
    (= x1@209@01 x2@209@01))
  
  :qid |wand@2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@209@01 $Ref)) (!
  (=>
    (Seq_contains xs@186@01 x@209@01)
    (and
      (=
        (inv@210@01 y@187@01 $Perm.Write x@209@01 $Perm.Write y@187@01 $Perm.Write)
        x@209@01)
      (img@211@01 y@187@01 $Perm.Write x@209@01 $Perm.Write y@187@01 $Perm.Write)))
  :pattern ((Seq_contains xs@186@01 x@209@01))
  :pattern ((Seq_contains_trigger xs@186@01 x@209@01))
  :pattern ((inv@210@01 y@187@01 $Perm.Write x@209@01 $Perm.Write y@187@01 $Perm.Write))
  :pattern ((img@211@01 y@187@01 $Perm.Write x@209@01 $Perm.Write y@187@01 $Perm.Write))
  :qid |wand@2-invOfFct|)))
(assert (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) (!
  (=>
    (and
      (img@211@01 x0 x1 x2 x3 x4 x5)
      (Seq_contains xs@186@01 (inv@210@01 x0 x1 x2 x3 x4 x5)))
    (and
      (= y@187@01 x0)
      (= $Perm.Write x1)
      (= (inv@210@01 x0 x1 x2 x3 x4 x5) x2)
      (= $Perm.Write x3)
      (= y@187@01 x4)
      (= $Perm.Write x5)))
  :pattern ((inv@210@01 x0 x1 x2 x3 x4 x5))
  :qid |wand@2-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@212@01 ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) $Perm
  (ite
    (and
      (Seq_contains xs@186@01 (inv@210@01 x0 x1 x2 x3 x4 x5))
      (img@211@01 x0 x1 x2 x3 x4 x5)
      (and
        (= x0 y@187@01)
        (= x1 $Perm.Write)
        (= x2 (inv@210@01 x0 x1 x2 x3 x4 x5))
        (= x3 $Perm.Write)
        (= x4 y@187@01)
        (= x5 $Perm.Write)))
    ($Perm.min
      (-
        (ite
          (and
            (img@191@01 x0 x1 x2 x3 x4 x5)
            (Seq_contains xs@186@01 (inv@190@01 x0 x1 x2 x3 x4 x5)))
          $Perm.Write
          $Perm.No)
        (pTaken@201@01 x0 x1 x2 x3 x4 x5))
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
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) (!
  (=
    (-
      (-
        (ite
          (and
            (img@191@01 x0 x1 x2 x3 x4 x5)
            (Seq_contains xs@186@01 (inv@190@01 x0 x1 x2 x3 x4 x5)))
          $Perm.Write
          $Perm.No)
        (pTaken@201@01 x0 x1 x2 x3 x4 x5))
      (pTaken@212@01 x0 x1 x2 x3 x4 x5))
    $Perm.No)
  
  :qid |quant-u-20498|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) (!
  (=>
    (and
      (Seq_contains xs@186@01 (inv@210@01 x0 x1 x2 x3 x4 x5))
      (img@211@01 x0 x1 x2 x3 x4 x5)
      (and
        (= x0 y@187@01)
        (= x1 $Perm.Write)
        (= x2 (inv@210@01 x0 x1 x2 x3 x4 x5))
        (= x3 $Perm.Write)
        (= x4 y@187@01)
        (= x5 $Perm.Write)))
    (= (- $Perm.Write (pTaken@212@01 x0 x1 x2 x3 x4 x5)) $Perm.No))
  
  :qid |quant-u-20499|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) (!
  (=>
    (and
      (Seq_contains xs@186@01 (inv@210@01 x0 x1 x2 x3 x4 x5))
      (img@211@01 x0 x1 x2 x3 x4 x5)
      (and
        (= x0 y@187@01)
        (= x1 $Perm.Write)
        (= x2 (inv@210@01 x0 x1 x2 x3 x4 x5))
        (= x3 $Perm.Write)
        (= x4 y@187@01)
        (= x5 $Perm.Write)))
    (= (- $Perm.Write (pTaken@212@01 x0 x1 x2 x3 x4 x5)) $Perm.No))
  
  :qid |quant-u-20499|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const x@213@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] (x in xs)
(assert (Seq_contains xs@186@01 x@213@01))
(pop) ; 4
(declare-fun inv@214@01 ($Ref $Perm $Ref $Perm $Ref $Perm) $Ref)
(declare-fun img@215@01 ($Ref $Perm $Ref $Perm $Ref $Perm) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@213@01 $Ref) (x2@213@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@186@01 x1@213@01)
      (Seq_contains xs@186@01 x2@213@01)
      (= x1@213@01 x2@213@01))
    (= x1@213@01 x2@213@01))
  
  :qid |wand@2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@213@01 $Ref)) (!
  (=>
    (Seq_contains xs@186@01 x@213@01)
    (and
      (=
        (inv@214@01 y@187@01 $Perm.Write x@213@01 $Perm.Write y@187@01 $Perm.Write)
        x@213@01)
      (img@215@01 y@187@01 $Perm.Write x@213@01 $Perm.Write y@187@01 $Perm.Write)))
  :pattern ((Seq_contains xs@186@01 x@213@01))
  :pattern ((Seq_contains_trigger xs@186@01 x@213@01))
  :pattern ((inv@214@01 y@187@01 $Perm.Write x@213@01 $Perm.Write y@187@01 $Perm.Write))
  :pattern ((img@215@01 y@187@01 $Perm.Write x@213@01 $Perm.Write y@187@01 $Perm.Write))
  :qid |wand@2-invOfFct|)))
(assert (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) (!
  (=>
    (and
      (img@215@01 x0 x1 x2 x3 x4 x5)
      (Seq_contains xs@186@01 (inv@214@01 x0 x1 x2 x3 x4 x5)))
    (and
      (= y@187@01 x0)
      (= $Perm.Write x1)
      (= (inv@214@01 x0 x1 x2 x3 x4 x5) x2)
      (= $Perm.Write x3)
      (= y@187@01 x4)
      (= $Perm.Write x5)))
  :pattern ((inv@214@01 x0 x1 x2 x3 x4 x5))
  :qid |wand@2-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@216@01 ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) $Perm
  (ite
    (and
      (Seq_contains xs@186@01 (inv@214@01 x0 x1 x2 x3 x4 x5))
      (img@215@01 x0 x1 x2 x3 x4 x5)
      (and
        (= x0 y@187@01)
        (= x1 $Perm.Write)
        (= x2 (inv@214@01 x0 x1 x2 x3 x4 x5))
        (= x3 $Perm.Write)
        (= x4 y@187@01)
        (= x5 $Perm.Write)))
    ($Perm.min
      (-
        (ite
          (and
            (img@191@01 x0 x1 x2 x3 x4 x5)
            (Seq_contains xs@186@01 (inv@190@01 x0 x1 x2 x3 x4 x5)))
          $Perm.Write
          $Perm.No)
        (pTaken@201@01 x0 x1 x2 x3 x4 x5))
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
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) (!
  (=
    (-
      (-
        (ite
          (and
            (img@191@01 x0 x1 x2 x3 x4 x5)
            (Seq_contains xs@186@01 (inv@190@01 x0 x1 x2 x3 x4 x5)))
          $Perm.Write
          $Perm.No)
        (pTaken@201@01 x0 x1 x2 x3 x4 x5))
      (pTaken@216@01 x0 x1 x2 x3 x4 x5))
    $Perm.No)
  
  :qid |quant-u-20502|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) (!
  (=>
    (and
      (Seq_contains xs@186@01 (inv@214@01 x0 x1 x2 x3 x4 x5))
      (img@215@01 x0 x1 x2 x3 x4 x5)
      (and
        (= x0 y@187@01)
        (= x1 $Perm.Write)
        (= x2 (inv@214@01 x0 x1 x2 x3 x4 x5))
        (= x3 $Perm.Write)
        (= x4 y@187@01)
        (= x5 $Perm.Write)))
    (= (- $Perm.Write (pTaken@216@01 x0 x1 x2 x3 x4 x5)) $Perm.No))
  
  :qid |quant-u-20503|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) (!
  (=>
    (and
      (Seq_contains xs@186@01 (inv@214@01 x0 x1 x2 x3 x4 x5))
      (img@215@01 x0 x1 x2 x3 x4 x5)
      (and
        (= x0 y@187@01)
        (= x1 $Perm.Write)
        (= x2 (inv@214@01 x0 x1 x2 x3 x4 x5))
        (= x3 $Perm.Write)
        (= x4 y@187@01)
        (= x5 $Perm.Write)))
    (= (- $Perm.Write (pTaken@216@01 x0 x1 x2 x3 x4 x5)) $Perm.No))
  
  :qid |quant-u-20503|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test5 ----------
(declare-const xs@217@01 Seq<$Ref>)
(declare-const y@218@01 $Ref)
(declare-const xs@219@01 Seq<$Ref>)
(declare-const y@220@01 $Ref)
(push) ; 1
(declare-const $t@221@01 $Snap)
(assert (= $t@221@01 ($Snap.combine ($Snap.first $t@221@01) ($Snap.second $t@221@01))))
(declare-const x@222@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@219@01 x@222@01))
(pop) ; 2
(declare-fun inv@223@01 ($Ref) $Ref)
(declare-fun img@224@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@222@01 $Ref) (x2@222@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@219@01 x1@222@01)
      (Seq_contains xs@219@01 x2@222@01)
      (= x1@222@01 x2@222@01))
    (= x1@222@01 x2@222@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@222@01 $Ref)) (!
  (=>
    (Seq_contains xs@219@01 x@222@01)
    (and (= (inv@223@01 x@222@01) x@222@01) (img@224@01 x@222@01)))
  :pattern ((Seq_contains xs@219@01 x@222@01))
  :pattern ((Seq_contains_trigger xs@219@01 x@222@01))
  :pattern ((Seq_contains_trigger xs@219@01 x@222@01))
  :pattern ((inv@223@01 x@222@01))
  :pattern ((img@224@01 x@222@01))
  :qid |quant-u-20505|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@224@01 r) (Seq_contains xs@219@01 (inv@223@01 r)))
    (= (inv@223@01 r) r))
  :pattern ((inv@223@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@222@01 $Ref)) (!
  (=> (Seq_contains xs@219@01 x@222@01) (not (= x@222@01 $Ref.null)))
  :pattern ((Seq_contains xs@219@01 x@222@01))
  :pattern ((Seq_contains_trigger xs@219@01 x@222@01))
  :pattern ((Seq_contains_trigger xs@219@01 x@222@01))
  :pattern ((inv@223@01 x@222@01))
  :pattern ((img@224@01 x@222@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@221@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@221@01))
    ($Snap.second ($Snap.second $t@221@01)))))
(assert (= ($Snap.first ($Snap.second $t@221@01)) $Snap.unit))
; [eval] (forall i: Int, j: Int :: { xs[i], xs[j] } 0 <= i && (0 <= j && (i < |xs| && (j < |xs| && i != j))) ==> xs[i] != xs[j])
(declare-const i@225@01 Int)
(declare-const j@226@01 Int)
(push) ; 2
; [eval] 0 <= i && (0 <= j && (i < |xs| && (j < |xs| && i != j))) ==> xs[i] != xs[j]
; [eval] 0 <= i && (0 <= j && (i < |xs| && (j < |xs| && i != j)))
; [eval] 0 <= i
(push) ; 3
; [then-branch: 33 | !(0 <= i@225@01) | live]
; [else-branch: 33 | 0 <= i@225@01 | live]
(push) ; 4
; [then-branch: 33 | !(0 <= i@225@01)]
(assert (not (<= 0 i@225@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 33 | 0 <= i@225@01]
(assert (<= 0 i@225@01))
; [eval] 0 <= j
(push) ; 5
; [then-branch: 34 | !(0 <= j@226@01) | live]
; [else-branch: 34 | 0 <= j@226@01 | live]
(push) ; 6
; [then-branch: 34 | !(0 <= j@226@01)]
(assert (not (<= 0 j@226@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 34 | 0 <= j@226@01]
(assert (<= 0 j@226@01))
; [eval] i < |xs|
; [eval] |xs|
(push) ; 7
; [then-branch: 35 | !(i@225@01 < |xs@219@01|) | live]
; [else-branch: 35 | i@225@01 < |xs@219@01| | live]
(push) ; 8
; [then-branch: 35 | !(i@225@01 < |xs@219@01|)]
(assert (not (< i@225@01 (Seq_length xs@219@01))))
(pop) ; 8
(push) ; 8
; [else-branch: 35 | i@225@01 < |xs@219@01|]
(assert (< i@225@01 (Seq_length xs@219@01)))
; [eval] j < |xs|
; [eval] |xs|
(push) ; 9
; [then-branch: 36 | !(j@226@01 < |xs@219@01|) | live]
; [else-branch: 36 | j@226@01 < |xs@219@01| | live]
(push) ; 10
; [then-branch: 36 | !(j@226@01 < |xs@219@01|)]
(assert (not (< j@226@01 (Seq_length xs@219@01))))
(pop) ; 10
(push) ; 10
; [else-branch: 36 | j@226@01 < |xs@219@01|]
(assert (< j@226@01 (Seq_length xs@219@01)))
; [eval] i != j
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or
  (< j@226@01 (Seq_length xs@219@01))
  (not (< j@226@01 (Seq_length xs@219@01)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (< i@225@01 (Seq_length xs@219@01))
  (and
    (< i@225@01 (Seq_length xs@219@01))
    (or
      (< j@226@01 (Seq_length xs@219@01))
      (not (< j@226@01 (Seq_length xs@219@01)))))))
(assert (or
  (< i@225@01 (Seq_length xs@219@01))
  (not (< i@225@01 (Seq_length xs@219@01)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 j@226@01)
  (and
    (<= 0 j@226@01)
    (=>
      (< i@225@01 (Seq_length xs@219@01))
      (and
        (< i@225@01 (Seq_length xs@219@01))
        (or
          (< j@226@01 (Seq_length xs@219@01))
          (not (< j@226@01 (Seq_length xs@219@01))))))
    (or
      (< i@225@01 (Seq_length xs@219@01))
      (not (< i@225@01 (Seq_length xs@219@01)))))))
(assert (or (<= 0 j@226@01) (not (<= 0 j@226@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (<= 0 i@225@01)
  (and
    (<= 0 i@225@01)
    (=>
      (<= 0 j@226@01)
      (and
        (<= 0 j@226@01)
        (=>
          (< i@225@01 (Seq_length xs@219@01))
          (and
            (< i@225@01 (Seq_length xs@219@01))
            (or
              (< j@226@01 (Seq_length xs@219@01))
              (not (< j@226@01 (Seq_length xs@219@01))))))
        (or
          (< i@225@01 (Seq_length xs@219@01))
          (not (< i@225@01 (Seq_length xs@219@01))))))
    (or (<= 0 j@226@01) (not (<= 0 j@226@01))))))
(assert (or (<= 0 i@225@01) (not (<= 0 i@225@01))))
(push) ; 3
; [then-branch: 37 | 0 <= i@225@01 && 0 <= j@226@01 && i@225@01 < |xs@219@01| && j@226@01 < |xs@219@01| && i@225@01 != j@226@01 | live]
; [else-branch: 37 | !(0 <= i@225@01 && 0 <= j@226@01 && i@225@01 < |xs@219@01| && j@226@01 < |xs@219@01| && i@225@01 != j@226@01) | live]
(push) ; 4
; [then-branch: 37 | 0 <= i@225@01 && 0 <= j@226@01 && i@225@01 < |xs@219@01| && j@226@01 < |xs@219@01| && i@225@01 != j@226@01]
(assert (and
  (<= 0 i@225@01)
  (and
    (<= 0 j@226@01)
    (and
      (< i@225@01 (Seq_length xs@219@01))
      (and (< j@226@01 (Seq_length xs@219@01)) (not (= i@225@01 j@226@01)))))))
; [eval] xs[i] != xs[j]
; [eval] xs[i]
(push) ; 5
(assert (not (>= i@225@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [eval] xs[j]
(push) ; 5
(assert (not (>= j@226@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 37 | !(0 <= i@225@01 && 0 <= j@226@01 && i@225@01 < |xs@219@01| && j@226@01 < |xs@219@01| && i@225@01 != j@226@01)]
(assert (not
  (and
    (<= 0 i@225@01)
    (and
      (<= 0 j@226@01)
      (and
        (< i@225@01 (Seq_length xs@219@01))
        (and (< j@226@01 (Seq_length xs@219@01)) (not (= i@225@01 j@226@01))))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (<= 0 i@225@01)
    (and
      (<= 0 j@226@01)
      (and
        (< i@225@01 (Seq_length xs@219@01))
        (and (< j@226@01 (Seq_length xs@219@01)) (not (= i@225@01 j@226@01))))))
  (and
    (<= 0 i@225@01)
    (<= 0 j@226@01)
    (< i@225@01 (Seq_length xs@219@01))
    (< j@226@01 (Seq_length xs@219@01))
    (not (= i@225@01 j@226@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (<= 0 i@225@01)
      (and
        (<= 0 j@226@01)
        (and
          (< i@225@01 (Seq_length xs@219@01))
          (and (< j@226@01 (Seq_length xs@219@01)) (not (= i@225@01 j@226@01)))))))
  (and
    (<= 0 i@225@01)
    (and
      (<= 0 j@226@01)
      (and
        (< i@225@01 (Seq_length xs@219@01))
        (and (< j@226@01 (Seq_length xs@219@01)) (not (= i@225@01 j@226@01))))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i@225@01 Int) (j@226@01 Int)) (!
  (and
    (=>
      (<= 0 i@225@01)
      (and
        (<= 0 i@225@01)
        (=>
          (<= 0 j@226@01)
          (and
            (<= 0 j@226@01)
            (=>
              (< i@225@01 (Seq_length xs@219@01))
              (and
                (< i@225@01 (Seq_length xs@219@01))
                (or
                  (< j@226@01 (Seq_length xs@219@01))
                  (not (< j@226@01 (Seq_length xs@219@01))))))
            (or
              (< i@225@01 (Seq_length xs@219@01))
              (not (< i@225@01 (Seq_length xs@219@01))))))
        (or (<= 0 j@226@01) (not (<= 0 j@226@01)))))
    (or (<= 0 i@225@01) (not (<= 0 i@225@01)))
    (=>
      (and
        (<= 0 i@225@01)
        (and
          (<= 0 j@226@01)
          (and
            (< i@225@01 (Seq_length xs@219@01))
            (and (< j@226@01 (Seq_length xs@219@01)) (not (= i@225@01 j@226@01))))))
      (and
        (<= 0 i@225@01)
        (<= 0 j@226@01)
        (< i@225@01 (Seq_length xs@219@01))
        (< j@226@01 (Seq_length xs@219@01))
        (not (= i@225@01 j@226@01))))
    (or
      (not
        (and
          (<= 0 i@225@01)
          (and
            (<= 0 j@226@01)
            (and
              (< i@225@01 (Seq_length xs@219@01))
              (and
                (< j@226@01 (Seq_length xs@219@01))
                (not (= i@225@01 j@226@01)))))))
      (and
        (<= 0 i@225@01)
        (and
          (<= 0 j@226@01)
          (and
            (< i@225@01 (Seq_length xs@219@01))
            (and (< j@226@01 (Seq_length xs@219@01)) (not (= i@225@01 j@226@01))))))))
  :pattern ((Seq_index xs@219@01 i@225@01) (Seq_index xs@219@01 j@226@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@83@10@83@26-aux|)))
(assert (forall ((i@225@01 Int) (j@226@01 Int)) (!
  (=>
    (and
      (<= 0 i@225@01)
      (and
        (<= 0 j@226@01)
        (and
          (< i@225@01 (Seq_length xs@219@01))
          (and (< j@226@01 (Seq_length xs@219@01)) (not (= i@225@01 j@226@01))))))
    (not (= (Seq_index xs@219@01 i@225@01) (Seq_index xs@219@01 j@226@01))))
  :pattern ((Seq_index xs@219@01 i@225@01) (Seq_index xs@219@01 j@226@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/wands/new_syntax/QPWands.vpr@83@10@83@26|)))
(assert (=
  ($Snap.second ($Snap.second $t@221@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@221@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@221@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@221@01))) $Snap.unit))
; [eval] |xs| >= 1
; [eval] |xs|
(assert (>= (Seq_length xs@219@01) 1))
(declare-const sm@227@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@227@01  $FVF<f>) y@220@01)
  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second $t@221@01))))))
(assert (not (= y@220@01 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var some: Ref
(declare-const some@228@01 $Ref)
; [exec]
; var completed: Seq[Ref]
(declare-const completed@229@01 Seq<$Ref>)
; [exec]
; xs[0].f := 0
; [eval] xs[0]
(push) ; 3
(assert (not (< 0 (Seq_length xs@219@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (= y@220@01 (Seq_index xs@219@01 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@230@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index xs@219@01 0))
    ($Perm.min
      (ite
        (and (img@224@01 r) (Seq_contains xs@219@01 (inv@223@01 r)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@231@01 ((r $Ref)) $Perm
  (ite
    (= r (Seq_index xs@219@01 0))
    ($Perm.min
      (ite (= r y@220@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@230@01 r)))
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
        (and (img@224@01 r) (Seq_contains xs@219@01 (inv@223@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@230@01 r))
    $Perm.No)
  
  :qid |quant-u-20507|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@230@01 r) $Perm.No)
  
  :qid |quant-u-20508|))))
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
    (= r (Seq_index xs@219@01 0))
    (= (- $Perm.Write (pTaken@230@01 r)) $Perm.No))
  
  :qid |quant-u-20509|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@232@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_f (as sm@232@01  $FVF<f>) (Seq_index xs@219@01 0)) 0))
; [exec]
; y.f := 1
; Precomputing data for removing quantified permissions
(define-fun pTaken@233@01 ((r $Ref)) $Perm
  (ite
    (= r y@220@01)
    ($Perm.min (ite (= r y@220@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
(define-fun pTaken@234@01 ((r $Ref)) $Perm
  (ite
    (= r y@220@01)
    ($Perm.min
      (ite (= r (Seq_index xs@219@01 0)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@233@01 r)))
    $Perm.No))
(define-fun pTaken@235@01 ((r $Ref)) $Perm
  (ite
    (= r y@220@01)
    ($Perm.min
      (ite
        (and (img@224@01 r) (Seq_contains xs@219@01 (inv@223@01 r)))
        (- $Perm.Write (pTaken@230@01 r))
        $Perm.No)
      (- (- $Perm.Write (pTaken@233@01 r)) (pTaken@234@01 r)))
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
(assert (not (= (- $Perm.Write (pTaken@233@01 y@220@01)) $Perm.No)))
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
  (=> (= r y@220@01) (= (- $Perm.Write (pTaken@233@01 r)) $Perm.No))
  
  :qid |quant-u-20512|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@236@01 $FVF<f>)
; Definitional axioms for singleton-FVF's value
(assert (= ($FVF.lookup_f (as sm@236@01  $FVF<f>) y@220@01) 1))
; [exec]
; some := xs[0]
; [eval] xs[0]
(set-option :timeout 0)
(push) ; 3
(assert (not (< 0 (Seq_length xs@219@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const some@237@01 $Ref)
(assert (= some@237@01 (Seq_index xs@219@01 0)))
; [exec]
; package acc(y.f, write) --* acc(some.f, write) && acc(y.f, write) {
; }
(push) ; 3
(declare-const $t@238@01 $Snap)
(declare-const sm@239@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@239@01  $FVF<f>) y@220@01)
  ($SortWrappers.$SnapToInt $t@238@01)))
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=> (= r some@237@01) false)
  
  :qid |quant-u-20513|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@240@01 $FVF<f>)
; Definitional axioms for snapshot map values (instantiated)
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= y@220@01 some@237@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@241@01 ((r $Ref)) $Perm
  (ite
    (= r some@237@01)
    ($Perm.min (ite (= r y@220@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@241@01 y@220@01)) $Perm.No)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@241@01 r) $Perm.No)
  
  :qid |quant-u-20516|))))
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
  (=> (= r some@237@01) (= (- $Perm.Write (pTaken@241@01 r)) $Perm.No))
  
  :qid |quant-u-20517|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=> (= r some@237@01) (= (- $Perm.Write (pTaken@241@01 r)) $Perm.No))
  
  :qid |quant-u-20517|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@242@01 $FVF<f>)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (= some@237@01 y@220@01)
  (=
    ($FVF.lookup_f (as sm@242@01  $FVF<f>) some@237@01)
    ($FVF.lookup_f (as sm@239@01  $FVF<f>) some@237@01))))
(assert (= (as sm@240@01  $FVF<f>) (as sm@242@01  $FVF<f>)))
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= y@220@01 some@237@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (Seq_index xs@219@01 0) some@237@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@243@01 ((r $Ref)) $Perm
  (ite
    (= r some@237@01)
    ($Perm.min
      (ite (= r (Seq_index xs@219@01 0)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@241@01 r)))
    $Perm.No))
(define-fun pTaken@244@01 ((r $Ref)) $Perm
  (ite
    (= r some@237@01)
    ($Perm.min
      (ite (= r y@220@01) $Perm.Write $Perm.No)
      (- (- $Perm.Write (pTaken@241@01 r)) (pTaken@243@01 r)))
    $Perm.No))
(define-fun pTaken@245@01 ((r $Ref)) $Perm
  (ite
    (= r some@237@01)
    ($Perm.min
      (ite
        (and (img@224@01 r) (Seq_contains xs@219@01 (inv@223@01 r)))
        (- $Perm.Write (pTaken@230@01 r))
        $Perm.No)
      (-
        (- (- $Perm.Write (pTaken@241@01 r)) (pTaken@243@01 r))
        (pTaken@244@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (=
  (-
    (ite
      (= (Seq_index xs@219@01 0) (Seq_index xs@219@01 0))
      $Perm.Write
      $Perm.No)
    (pTaken@243@01 (Seq_index xs@219@01 0)))
  $Perm.No)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@243@01 r) $Perm.No)
  
  :qid |quant-u-20520|))))
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
    (= r some@237@01)
    (= (- (- $Perm.Write (pTaken@241@01 r)) (pTaken@243@01 r)) $Perm.No))
  
  :qid |quant-u-20521|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@246@01 $FVF<f>)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (= some@237@01 y@220@01)
  (=
    ($FVF.lookup_f (as sm@246@01  $FVF<f>) some@237@01)
    ($FVF.lookup_f (as sm@236@01  $FVF<f>) some@237@01))))
(assert (=>
  (ite
    (and
      (img@224@01 some@237@01)
      (Seq_contains xs@219@01 (inv@223@01 some@237@01)))
    (< $Perm.No (- $Perm.Write (pTaken@230@01 some@237@01)))
    false)
  (=
    ($FVF.lookup_f (as sm@246@01  $FVF<f>) some@237@01)
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@221@01)) some@237@01))))
(assert (=>
  (= some@237@01 (Seq_index xs@219@01 0))
  (=
    ($FVF.lookup_f (as sm@246@01  $FVF<f>) some@237@01)
    ($FVF.lookup_f (as sm@232@01  $FVF<f>) some@237@01))))
(assert (= (as sm@240@01  $FVF<f>) (as sm@246@01  $FVF<f>)))
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const $t@247@01 $FVF<f>)
(declare-const $t@248@01 $FVF<f>)
(assert (forall ((r $Ref)) (!
  (=>
    (ite (= r some@237@01) (< $Perm.No (pTaken@241@01 r)) false)
    (= ($FVF.lookup_f $t@247@01 r) ($FVF.lookup_f (as sm@242@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@240@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@242@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@247@01 r))
  :qid |quant-u-20522|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (ite (= r some@237@01) (< $Perm.No (pTaken@241@01 r)) false)
      (= ($FVF.lookup_f $t@248@01 r) ($FVF.lookup_f $t@247@01 r)))
    (=>
      (ite
        (= r some@237@01)
        (< $Perm.No (- $Perm.Write (pTaken@241@01 r)))
        false)
      (= ($FVF.lookup_f $t@248@01 r) ($FVF.lookup_f (as sm@246@01  $FVF<f>) r))))
  :pattern (($FVF.lookup_f $t@247@01 r))
  :pattern (($FVF.lookup_f (as sm@246@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@248@01 r))
  :qid |quant-u-20523|)))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=> (= r y@220@01) false)
  
  :qid |quant-u-20524|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@249@01 $FVF<f>)
; Definitional axioms for snapshot map values (instantiated)
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@250@01 ((r $Ref)) $Perm
  (ite
    (= r y@220@01)
    ($Perm.min
      (ite (= r y@220@01) (- $Perm.Write (pTaken@241@01 r)) $Perm.No)
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
(assert (not (=
  (- (- $Perm.Write (pTaken@241@01 y@220@01)) (pTaken@250@01 y@220@01))
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
  (=> (= r y@220@01) (= (- $Perm.Write (pTaken@250@01 r)) $Perm.No))
  
  :qid |quant-u-20527|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@251@01 $FVF<f>)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (< $Perm.No (- $Perm.Write (pTaken@241@01 y@220@01)))
  (=
    ($FVF.lookup_f (as sm@251@01  $FVF<f>) y@220@01)
    ($FVF.lookup_f (as sm@239@01  $FVF<f>) y@220@01))))
(assert (= (as sm@249@01  $FVF<f>) (as sm@251@01  $FVF<f>)))
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= y@220@01 some@237@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $t@252@01 $FVF<f>)
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@220@01)
    (= ($FVF.lookup_f $t@252@01 r) ($FVF.lookup_f (as sm@251@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@249@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@251@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@252@01 r))
  :qid |quant-u-20528|)))
; Create MagicWandSnapFunction for wand acc(y.f, write) --* acc(some.f, write) && acc(y.f, write)
(declare-const mwsf@253@01 $MWSF)
(assert (forall (($t@238@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@253@01 $t@238@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@246@01  $FVF<f>) some@237@01))
      ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@251@01  $FVF<f>) y@220@01))))
  :pattern ((MWSF_apply mwsf@253@01 $t@238@01))
  :qid |quant-u-20529|)))
(declare-const sm@254@01 $PSF<wand@2>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_wand@2 (as sm@254@01  $PSF<wand@2>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap y@220@01)
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap some@237@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@220@01))
    ($SortWrappers.$PermTo$Snap $Perm.Write)))
  ($Snap.combine
    $t@238@01
    ($Snap.combine
      ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@246@01  $FVF<f>) some@237@01))
      ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@251@01  $FVF<f>) y@220@01))))))
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
(assert (=
  ($FVF.lookup_f (as sm@239@01  $FVF<f>) y@220@01)
  ($SortWrappers.$SnapToInt $t@238@01)))
(assert (and
  (=>
    (= some@237@01 y@220@01)
    (=
      ($FVF.lookup_f (as sm@242@01  $FVF<f>) some@237@01)
      ($FVF.lookup_f (as sm@239@01  $FVF<f>) some@237@01)))
  (= (as sm@240@01  $FVF<f>) (as sm@242@01  $FVF<f>))
  (=>
    (= some@237@01 y@220@01)
    (=
      ($FVF.lookup_f (as sm@246@01  $FVF<f>) some@237@01)
      ($FVF.lookup_f (as sm@236@01  $FVF<f>) some@237@01)))
  (=>
    (ite
      (and
        (img@224@01 some@237@01)
        (Seq_contains xs@219@01 (inv@223@01 some@237@01)))
      (< $Perm.No (- $Perm.Write (pTaken@230@01 some@237@01)))
      false)
    (=
      ($FVF.lookup_f (as sm@246@01  $FVF<f>) some@237@01)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@221@01)) some@237@01)))
  (=>
    (= some@237@01 (Seq_index xs@219@01 0))
    (=
      ($FVF.lookup_f (as sm@246@01  $FVF<f>) some@237@01)
      ($FVF.lookup_f (as sm@232@01  $FVF<f>) some@237@01)))
  (= (as sm@240@01  $FVF<f>) (as sm@246@01  $FVF<f>))))
(assert (and
  (=>
    (< $Perm.No (- $Perm.Write (pTaken@241@01 y@220@01)))
    (=
      ($FVF.lookup_f (as sm@251@01  $FVF<f>) y@220@01)
      ($FVF.lookup_f (as sm@239@01  $FVF<f>) y@220@01)))
  (= (as sm@249@01  $FVF<f>) (as sm@251@01  $FVF<f>))))
(assert (and
  (forall (($t@238@01 $Snap)) (!
    (=
      (MWSF_apply mwsf@253@01 $t@238@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@246@01  $FVF<f>) some@237@01))
        ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@251@01  $FVF<f>) y@220@01))))
    :pattern ((MWSF_apply mwsf@253@01 $t@238@01))
    :qid |quant-u-20529|))
  (=
    ($PSF.lookup_wand@2 (as sm@254@01  $PSF<wand@2>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap y@220@01)
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap some@237@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@220@01))
      ($SortWrappers.$PermTo$Snap $Perm.Write)))
    ($Snap.combine
      $t@238@01
      ($Snap.combine
        ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@246@01  $FVF<f>) some@237@01))
        ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@251@01  $FVF<f>) y@220@01)))))))
; [exec]
; completed := Seq(some)
; [eval] Seq(some)
(assert (= (Seq_length (Seq_singleton some@237@01)) 1))
(declare-const completed@255@01 Seq<$Ref>)
(assert (= completed@255@01 (Seq_singleton some@237@01)))
; [exec]
; assert (forall x: Ref ::(x in completed) ==>
;     acc(y.f, write) --* acc(x.f, write) && acc(y.f, write))
(declare-const x@256@01 $Ref)
(push) ; 4
; [eval] (x in completed)
(assert (Seq_contains completed@255@01 x@256@01))
(pop) ; 4
(declare-fun inv@257@01 ($Ref $Perm $Ref $Perm $Ref $Perm) $Ref)
(declare-fun img@258@01 ($Ref $Perm $Ref $Perm $Ref $Perm) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@256@01 $Ref) (x2@256@01 $Ref)) (!
  (=>
    (and
      (Seq_contains completed@255@01 x1@256@01)
      (Seq_contains completed@255@01 x2@256@01)
      (= x1@256@01 x2@256@01))
    (= x1@256@01 x2@256@01))
  
  :qid |wand@2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@256@01 $Ref)) (!
  (=>
    (Seq_contains completed@255@01 x@256@01)
    (and
      (=
        (inv@257@01 y@220@01 $Perm.Write x@256@01 $Perm.Write y@220@01 $Perm.Write)
        x@256@01)
      (img@258@01 y@220@01 $Perm.Write x@256@01 $Perm.Write y@220@01 $Perm.Write)))
  :pattern ((Seq_contains completed@255@01 x@256@01))
  :pattern ((Seq_contains_trigger completed@255@01 x@256@01))
  :pattern ((inv@257@01 y@220@01 $Perm.Write x@256@01 $Perm.Write y@220@01 $Perm.Write))
  :pattern ((img@258@01 y@220@01 $Perm.Write x@256@01 $Perm.Write y@220@01 $Perm.Write))
  :qid |wand@2-invOfFct|)))
(assert (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) (!
  (=>
    (and
      (img@258@01 x0 x1 x2 x3 x4 x5)
      (Seq_contains completed@255@01 (inv@257@01 x0 x1 x2 x3 x4 x5)))
    (and
      (= y@220@01 x0)
      (= $Perm.Write x1)
      (= (inv@257@01 x0 x1 x2 x3 x4 x5) x2)
      (= $Perm.Write x3)
      (= y@220@01 x4)
      (= $Perm.Write x5)))
  :pattern ((inv@257@01 x0 x1 x2 x3 x4 x5))
  :qid |wand@2-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@259@01 ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) $Perm
  (ite
    (and
      (Seq_contains completed@255@01 (inv@257@01 x0 x1 x2 x3 x4 x5))
      (img@258@01 x0 x1 x2 x3 x4 x5)
      (and
        (= x0 y@220@01)
        (= x1 $Perm.Write)
        (= x2 (inv@257@01 x0 x1 x2 x3 x4 x5))
        (= x3 $Perm.Write)
        (= x4 y@220@01)
        (= x5 $Perm.Write)))
    ($Perm.min
      (ite
        (and
          (= x0 y@220@01)
          (= x1 $Perm.Write)
          (= x2 some@237@01)
          (= x3 $Perm.Write)
          (= x4 y@220@01)
          (= x5 $Perm.Write))
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
(assert (not (=
  (-
    $Perm.Write
    (pTaken@259@01 y@220@01 $Perm.Write some@237@01 $Perm.Write y@220@01 $Perm.Write))
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
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) (!
  (=>
    (and
      (Seq_contains completed@255@01 (inv@257@01 x0 x1 x2 x3 x4 x5))
      (img@258@01 x0 x1 x2 x3 x4 x5)
      (and
        (= x0 y@220@01)
        (= x1 $Perm.Write)
        (= x2 (inv@257@01 x0 x1 x2 x3 x4 x5))
        (= x3 $Perm.Write)
        (= x4 y@220@01)
        (= x5 $Perm.Write)))
    (= (- $Perm.Write (pTaken@259@01 x0 x1 x2 x3 x4 x5)) $Perm.No))
  
  :qid |quant-u-20533|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; assert (applying acc(y.f, write) --* acc(some.f, write) && acc(y.f, write) in
;     some.f == 0)
; [eval] (applying acc(y.f, write) --* acc(some.f, write) && acc(y.f, write) in some.f == 0)
(set-option :timeout 0)
(push) ; 4
; Precomputing data for removing quantified permissions
(define-fun pTaken@260@01 ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) $Perm
  (ite
    (and
      (= x0 y@220@01)
      (= x1 $Perm.Write)
      (= x2 some@237@01)
      (= x3 $Perm.Write)
      (= x4 y@220@01)
      (= x5 $Perm.Write))
    ($Perm.min
      (ite
        (and
          (= x0 y@220@01)
          (= x1 $Perm.Write)
          (= x2 some@237@01)
          (= x3 $Perm.Write)
          (= x4 y@220@01)
          (= x5 $Perm.Write))
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
(push) ; 5
(set-option :timeout 500)
(assert (not (=
  (-
    $Perm.Write
    (pTaken@260@01 y@220@01 $Perm.Write some@237@01 $Perm.Write y@220@01 $Perm.Write))
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
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) (!
  (=>
    (and
      (= x0 y@220@01)
      (= x1 $Perm.Write)
      (= x2 some@237@01)
      (= x3 $Perm.Write)
      (= x4 y@220@01)
      (= x5 $Perm.Write))
    (= (- $Perm.Write (pTaken@260@01 x0 x1 x2 x3 x4 x5)) $Perm.No))
  
  :qid |quant-u-20536|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@261@01 $PSF<wand@2>)
(declare-const s@262@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (and
  (not
    (=
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap y@220@01)
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap some@237@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@220@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      $Snap.unit))
  (=
    ($PSF.lookup_wand@2 (as sm@261@01  $PSF<wand@2>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap y@220@01)
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap some@237@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@220@01))
      ($SortWrappers.$PermTo$Snap $Perm.Write)))
    ($PSF.lookup_wand@2 (as sm@254@01  $PSF<wand@2>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap y@220@01)
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap some@237@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@220@01))
      ($SortWrappers.$PermTo$Snap $Perm.Write))))))
; Precomputing data for removing quantified permissions
(define-fun pTaken@263@01 ((r $Ref)) $Perm
  (ite
    (= r y@220@01)
    ($Perm.min (ite (= r y@220@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
(define-fun pTaken@264@01 ((r $Ref)) $Perm
  (ite
    (= r y@220@01)
    ($Perm.min
      (ite
        (= r (Seq_index xs@219@01 0))
        (- $Perm.Write (pTaken@243@01 r))
        $Perm.No)
      (- $Perm.Write (pTaken@263@01 r)))
    $Perm.No))
(define-fun pTaken@265@01 ((r $Ref)) $Perm
  (ite
    (= r y@220@01)
    ($Perm.min
      (ite
        (and (img@224@01 r) (Seq_contains xs@219@01 (inv@223@01 r)))
        (- $Perm.Write (pTaken@230@01 r))
        $Perm.No)
      (- (- $Perm.Write (pTaken@263@01 r)) (pTaken@264@01 r)))
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
(assert (not (= (- $Perm.Write (pTaken@263@01 y@220@01)) $Perm.No)))
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
  (=> (= r y@220@01) (= (- $Perm.Write (pTaken@263@01 r)) $Perm.No))
  
  :qid |quant-u-20539|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@266@01 $FVF<f>)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (ite
    (= y@220@01 (Seq_index xs@219@01 0))
    (< $Perm.No (- $Perm.Write (pTaken@243@01 y@220@01)))
    false)
  (=
    ($FVF.lookup_f (as sm@266@01  $FVF<f>) y@220@01)
    ($FVF.lookup_f (as sm@232@01  $FVF<f>) y@220@01))))
(assert (=
  ($FVF.lookup_f (as sm@266@01  $FVF<f>) y@220@01)
  ($FVF.lookup_f (as sm@236@01  $FVF<f>) y@220@01)))
(assert (=>
  (ite
    (and (img@224@01 y@220@01) (Seq_contains xs@219@01 (inv@223@01 y@220@01)))
    (< $Perm.No (- $Perm.Write (pTaken@230@01 y@220@01)))
    false)
  (=
    ($FVF.lookup_f (as sm@266@01  $FVF<f>) y@220@01)
    ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@221@01)) y@220@01))))
(assert (=
  ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@266@01  $FVF<f>) y@220@01))
  ($Snap.first ($PSF.lookup_wand@2 (as sm@261@01  $PSF<wand@2>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap y@220@01)
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap some@237@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@220@01))
    ($SortWrappers.$PermTo$Snap $Perm.Write))))))
(assert (=
  ($Snap.second ($PSF.lookup_wand@2 (as sm@261@01  $PSF<wand@2>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap y@220@01)
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap some@237@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@220@01))
    ($SortWrappers.$PermTo$Snap $Perm.Write))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($PSF.lookup_wand@2 (as sm@261@01  $PSF<wand@2>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap y@220@01)
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap some@237@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@220@01))
      ($SortWrappers.$PermTo$Snap $Perm.Write)))))
    ($Snap.second ($Snap.second ($PSF.lookup_wand@2 (as sm@261@01  $PSF<wand@2>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap y@220@01)
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap some@237@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@220@01))
      ($SortWrappers.$PermTo$Snap $Perm.Write))))))))
(declare-const sm@267@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@267@01  $FVF<f>) some@237@01)
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($PSF.lookup_wand@2 (as sm@261@01  $PSF<wand@2>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap y@220@01)
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap some@237@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@220@01))
    ($SortWrappers.$PermTo$Snap $Perm.Write))))))))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (= (Seq_index xs@219@01 0) (Seq_index xs@219@01 0))
  (= some@237@01 (Seq_index xs@219@01 0)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $t@268@01 $FVF<f>)
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (ite
        (= r (Seq_index xs@219@01 0))
        (< $Perm.No (- $Perm.Write (pTaken@243@01 r)))
        false)
      (= ($FVF.lookup_f $t@268@01 r) ($FVF.lookup_f (as sm@232@01  $FVF<f>) r)))
    (=>
      (= r some@237@01)
      (= ($FVF.lookup_f $t@268@01 r) ($FVF.lookup_f (as sm@267@01  $FVF<f>) r))))
  :pattern (($FVF.lookup_f (as sm@232@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@267@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@268@01 r))
  :qid |quant-u-20540|)))
(assert (not (= some@237@01 $Ref.null)))
(declare-const sm@269@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@269@01  $FVF<f>) y@220@01)
  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($PSF.lookup_wand@2 (as sm@261@01  $PSF<wand@2>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap y@220@01)
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap some@237@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@220@01))
    ($SortWrappers.$PermTo$Snap $Perm.Write))))))))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (= (Seq_index xs@219@01 0) (Seq_index xs@219@01 0))
  (= y@220@01 (Seq_index xs@219@01 0)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (= (Seq_index xs@219@01 0) (Seq_index xs@219@01 0))
  (= (Seq_index xs@219@01 0) y@220@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite
      (= (Seq_index xs@219@01 0) (Seq_index xs@219@01 0))
      (+ (- $Perm.Write (pTaken@243@01 (Seq_index xs@219@01 0))) $Perm.Write)
      $Perm.No)
    $Perm.Write))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    $Perm.Write
    (ite
      (= (Seq_index xs@219@01 0) (Seq_index xs@219@01 0))
      (+ (- $Perm.Write (pTaken@243@01 (Seq_index xs@219@01 0))) $Perm.Write)
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (ite
    (= (Seq_index xs@219@01 0) (Seq_index xs@219@01 0))
    (<
      $Perm.No
      (+ (- $Perm.Write (pTaken@243@01 (Seq_index xs@219@01 0))) $Perm.Write))
    false)
  (not
    (=
      ($FVF.lookup_f $t@268@01 (Seq_index xs@219@01 0))
      ($FVF.lookup_f (as sm@269@01  $FVF<f>) y@220@01))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (ite
    (= (Seq_index xs@219@01 0) (Seq_index xs@219@01 0))
    (<
      $Perm.No
      (+ (- $Perm.Write (pTaken@243@01 (Seq_index xs@219@01 0))) $Perm.Write))
    false)
  (not
    (=
      ($FVF.lookup_f (as sm@269@01  $FVF<f>) y@220@01)
      ($FVF.lookup_f $t@268@01 (Seq_index xs@219@01 0)))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@219@01 0) y@220@01))
  (not (= y@220@01 (Seq_index xs@219@01 0)))))
(assert (and
  (not (= (Seq_index xs@219@01 0) y@220@01))
  (not (= y@220@01 (Seq_index xs@219@01 0)))))
(declare-const sm@270@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@224@01 r) (Seq_contains xs@219@01 (inv@223@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@230@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@270@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@221@01)) r)))
  :pattern (($FVF.lookup_f (as sm@270@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@221@01)) r))
  :qid |qp.fvfValDef72|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (= r (Seq_index xs@219@01 0))
      (< $Perm.No (+ (- $Perm.Write (pTaken@243@01 r)) $Perm.Write))
      false)
    (= ($FVF.lookup_f (as sm@270@01  $FVF<f>) r) ($FVF.lookup_f $t@268@01 r)))
  :pattern (($FVF.lookup_f (as sm@270@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@268@01 r))
  :qid |qp.fvfValDef73|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@220@01)
    (=
      ($FVF.lookup_f (as sm@270@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@269@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@270@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@269@01  $FVF<f>) r))
  :qid |qp.fvfValDef74|)))
(declare-const pm@271@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@271@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@224@01 r) (Seq_contains xs@219@01 (inv@223@01 r)))
          (- $Perm.Write (pTaken@230@01 r))
          $Perm.No)
        (ite
          (= r (Seq_index xs@219@01 0))
          (+ (- $Perm.Write (pTaken@243@01 r)) $Perm.Write)
          $Perm.No))
      (ite (= r y@220@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@271@01  $FPM) r))
  :qid |qp.resPrmSumDef75|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@271@01  $FPM) r) $Perm.Write)
  :pattern ((inv@223@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@271@01  $FPM) (Seq_index xs@219@01 0)) $Perm.Write))
(assert (<= ($FVF.perm_f (as pm@271@01  $FPM) y@220@01) $Perm.Write))
; [eval] some.f == 0
(declare-const sm@272@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@220@01)
    (=
      ($FVF.lookup_f (as sm@272@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@269@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@272@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@269@01  $FVF<f>) r))
  :qid |qp.fvfValDef76|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (= r (Seq_index xs@219@01 0))
      (< $Perm.No (+ (- $Perm.Write (pTaken@243@01 r)) $Perm.Write))
      false)
    (= ($FVF.lookup_f (as sm@272@01  $FVF<f>) r) ($FVF.lookup_f $t@268@01 r)))
  :pattern (($FVF.lookup_f (as sm@272@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@268@01 r))
  :qid |qp.fvfValDef77|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@224@01 r) (Seq_contains xs@219@01 (inv@223@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@230@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@272@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@221@01)) r)))
  :pattern (($FVF.lookup_f (as sm@272@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@221@01)) r))
  :qid |qp.fvfValDef78|)))
(declare-const pm@273@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@273@01  $FPM) r)
    (+
      (+
        (ite (= r y@220@01) $Perm.Write $Perm.No)
        (ite
          (= r (Seq_index xs@219@01 0))
          (+ (- $Perm.Write (pTaken@243@01 r)) $Perm.Write)
          $Perm.No))
      (ite
        (and (img@224@01 r) (Seq_contains xs@219@01 (inv@223@01 r)))
        (- $Perm.Write (pTaken@230@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@273@01  $FPM) r))
  :qid |qp.resPrmSumDef79|)))
(set-option :timeout 0)
(push) ; 5
(assert (not (< $Perm.No ($FVF.perm_f (as pm@273@01  $FPM) some@237@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@224@01 r) (Seq_contains xs@219@01 (inv@223@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@230@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@270@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@221@01)) r)))
  :pattern (($FVF.lookup_f (as sm@270@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@221@01)) r))
  :qid |qp.fvfValDef72|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (= r (Seq_index xs@219@01 0))
      (< $Perm.No (+ (- $Perm.Write (pTaken@243@01 r)) $Perm.Write))
      false)
    (= ($FVF.lookup_f (as sm@270@01  $FVF<f>) r) ($FVF.lookup_f $t@268@01 r)))
  :pattern (($FVF.lookup_f (as sm@270@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@268@01 r))
  :qid |qp.fvfValDef73|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@220@01)
    (=
      ($FVF.lookup_f (as sm@270@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@269@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@270@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@269@01  $FVF<f>) r))
  :qid |qp.fvfValDef74|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@271@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@224@01 r) (Seq_contains xs@219@01 (inv@223@01 r)))
          (- $Perm.Write (pTaken@230@01 r))
          $Perm.No)
        (ite
          (= r (Seq_index xs@219@01 0))
          (+ (- $Perm.Write (pTaken@243@01 r)) $Perm.Write)
          $Perm.No))
      (ite (= r y@220@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@271@01  $FPM) r))
  :qid |qp.resPrmSumDef75|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@220@01)
    (=
      ($FVF.lookup_f (as sm@272@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@269@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@272@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@269@01  $FVF<f>) r))
  :qid |qp.fvfValDef76|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (= r (Seq_index xs@219@01 0))
      (< $Perm.No (+ (- $Perm.Write (pTaken@243@01 r)) $Perm.Write))
      false)
    (= ($FVF.lookup_f (as sm@272@01  $FVF<f>) r) ($FVF.lookup_f $t@268@01 r)))
  :pattern (($FVF.lookup_f (as sm@272@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@268@01 r))
  :qid |qp.fvfValDef77|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@224@01 r) (Seq_contains xs@219@01 (inv@223@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@230@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@272@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@221@01)) r)))
  :pattern (($FVF.lookup_f (as sm@272@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@221@01)) r))
  :qid |qp.fvfValDef78|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@273@01  $FPM) r)
    (+
      (+
        (ite (= r y@220@01) $Perm.Write $Perm.No)
        (ite
          (= r (Seq_index xs@219@01 0))
          (+ (- $Perm.Write (pTaken@243@01 r)) $Perm.Write)
          $Perm.No))
      (ite
        (and (img@224@01 r) (Seq_contains xs@219@01 (inv@223@01 r)))
        (- $Perm.Write (pTaken@230@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@273@01  $FPM) r))
  :qid |qp.resPrmSumDef79|)))
(assert (and
  (not
    (=
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap y@220@01)
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap some@237@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@220@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      $Snap.unit))
  (=
    ($PSF.lookup_wand@2 (as sm@261@01  $PSF<wand@2>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap y@220@01)
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap some@237@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@220@01))
      ($SortWrappers.$PermTo$Snap $Perm.Write)))
    ($PSF.lookup_wand@2 (as sm@254@01  $PSF<wand@2>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap y@220@01)
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap some@237@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@220@01))
      ($SortWrappers.$PermTo$Snap $Perm.Write))))
  (=>
    (ite
      (= y@220@01 (Seq_index xs@219@01 0))
      (< $Perm.No (- $Perm.Write (pTaken@243@01 y@220@01)))
      false)
    (=
      ($FVF.lookup_f (as sm@266@01  $FVF<f>) y@220@01)
      ($FVF.lookup_f (as sm@232@01  $FVF<f>) y@220@01)))
  (=
    ($FVF.lookup_f (as sm@266@01  $FVF<f>) y@220@01)
    ($FVF.lookup_f (as sm@236@01  $FVF<f>) y@220@01))
  (=>
    (ite
      (and (img@224@01 y@220@01) (Seq_contains xs@219@01 (inv@223@01 y@220@01)))
      (< $Perm.No (- $Perm.Write (pTaken@230@01 y@220@01)))
      false)
    (=
      ($FVF.lookup_f (as sm@266@01  $FVF<f>) y@220@01)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@221@01)) y@220@01)))
  (=
    ($SortWrappers.IntTo$Snap ($FVF.lookup_f (as sm@266@01  $FVF<f>) y@220@01))
    ($Snap.first ($PSF.lookup_wand@2 (as sm@261@01  $PSF<wand@2>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap y@220@01)
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap some@237@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@220@01))
      ($SortWrappers.$PermTo$Snap $Perm.Write)))))
  (=
    ($Snap.second ($PSF.lookup_wand@2 (as sm@261@01  $PSF<wand@2>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap y@220@01)
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap some@237@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@220@01))
      ($SortWrappers.$PermTo$Snap $Perm.Write))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($PSF.lookup_wand@2 (as sm@261@01  $PSF<wand@2>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap y@220@01)
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap some@237@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@220@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write)))))
      ($Snap.second ($Snap.second ($PSF.lookup_wand@2 (as sm@261@01  $PSF<wand@2>) ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap y@220@01)
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap some@237@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@220@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write)))))))))
(assert (and
  (=
    ($FVF.lookup_f (as sm@267@01  $FVF<f>) some@237@01)
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($PSF.lookup_wand@2 (as sm@261@01  $PSF<wand@2>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap y@220@01)
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap some@237@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@220@01))
      ($SortWrappers.$PermTo$Snap $Perm.Write)))))))
  (forall ((r $Ref)) (!
    (and
      (=>
        (ite
          (= r (Seq_index xs@219@01 0))
          (< $Perm.No (- $Perm.Write (pTaken@243@01 r)))
          false)
        (= ($FVF.lookup_f $t@268@01 r) ($FVF.lookup_f (as sm@232@01  $FVF<f>) r)))
      (=>
        (= r some@237@01)
        (= ($FVF.lookup_f $t@268@01 r) ($FVF.lookup_f (as sm@267@01  $FVF<f>) r))))
    :pattern (($FVF.lookup_f (as sm@232@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@267@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f $t@268@01 r))
    :qid |quant-u-20540|))
  (not (= some@237@01 $Ref.null))))
(assert (and
  (=
    ($FVF.lookup_f (as sm@269@01  $FVF<f>) y@220@01)
    ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($PSF.lookup_wand@2 (as sm@261@01  $PSF<wand@2>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap y@220@01)
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap some@237@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@220@01))
      ($SortWrappers.$PermTo$Snap $Perm.Write)))))))
  (not (= (Seq_index xs@219@01 0) y@220@01))
  (not (= y@220@01 (Seq_index xs@219@01 0)))
  (forall ((r $Ref)) (!
    (<= ($FVF.perm_f (as pm@271@01  $FPM) r) $Perm.Write)
    :pattern ((inv@223@01 r))
    :qid |qp-fld-prm-bnd|))
  (<= ($FVF.perm_f (as pm@271@01  $FPM) (Seq_index xs@219@01 0)) $Perm.Write)
  (<= ($FVF.perm_f (as pm@271@01  $FPM) y@220@01) $Perm.Write)))
(push) ; 4
(assert (not (= ($FVF.lookup_f (as sm@272@01  $FVF<f>) some@237@01) 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (= ($FVF.lookup_f (as sm@272@01  $FVF<f>) some@237@01) 0))
; [exec]
; assert (applying acc(y.f, write) --* acc(some.f, write) && acc(y.f, write) in
;     y.f == 1)
; [eval] (applying acc(y.f, write) --* acc(some.f, write) && acc(y.f, write) in y.f == 1)
(push) ; 4
; Precomputing data for removing quantified permissions
(define-fun pTaken@274@01 ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) $Perm
  (ite
    (and
      (= x0 y@220@01)
      (= x1 $Perm.Write)
      (= x2 some@237@01)
      (= x3 $Perm.Write)
      (= x4 y@220@01)
      (= x5 $Perm.Write))
    ($Perm.min
      (ite
        (and
          (= x0 y@220@01)
          (= x1 $Perm.Write)
          (= x2 some@237@01)
          (= x3 $Perm.Write)
          (= x4 y@220@01)
          (= x5 $Perm.Write))
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
(push) ; 5
(set-option :timeout 500)
(assert (not (=
  (-
    $Perm.Write
    (pTaken@274@01 y@220@01 $Perm.Write some@237@01 $Perm.Write y@220@01 $Perm.Write))
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
(assert (not (forall ((x0 $Ref) (x1 $Perm) (x2 $Ref) (x3 $Perm) (x4 $Ref) (x5 $Perm)) (!
  (=>
    (and
      (= x0 y@220@01)
      (= x1 $Perm.Write)
      (= x2 some@237@01)
      (= x3 $Perm.Write)
      (= x4 y@220@01)
      (= x5 $Perm.Write))
    (= (- $Perm.Write (pTaken@274@01 x0 x1 x2 x3 x4 x5)) $Perm.No))
  
  :qid |quant-u-20543|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map values (instantiated)
(assert (and
  (not
    (=
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap y@220@01)
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap some@237@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@220@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      $Snap.unit))
  (=
    ($PSF.lookup_wand@2 (as sm@261@01  $PSF<wand@2>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap y@220@01)
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap some@237@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@220@01))
      ($SortWrappers.$PermTo$Snap $Perm.Write)))
    ($PSF.lookup_wand@2 (as sm@254@01  $PSF<wand@2>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap y@220@01)
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap some@237@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@220@01))
      ($SortWrappers.$PermTo$Snap $Perm.Write))))))
; Precomputing data for removing quantified permissions
(define-fun pTaken@275@01 ((r $Ref)) $Perm
  (ite
    (= r y@220@01)
    ($Perm.min (ite (= r y@220@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
(define-fun pTaken@276@01 ((r $Ref)) $Perm
  (ite
    (= r y@220@01)
    ($Perm.min
      (ite
        (= r (Seq_index xs@219@01 0))
        (- $Perm.Write (pTaken@243@01 r))
        $Perm.No)
      (- $Perm.Write (pTaken@275@01 r)))
    $Perm.No))
(define-fun pTaken@277@01 ((r $Ref)) $Perm
  (ite
    (= r y@220@01)
    ($Perm.min
      (ite
        (and (img@224@01 r) (Seq_contains xs@219@01 (inv@223@01 r)))
        (- $Perm.Write (pTaken@230@01 r))
        $Perm.No)
      (- (- $Perm.Write (pTaken@275@01 r)) (pTaken@276@01 r)))
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
(assert (not (= (- $Perm.Write (pTaken@275@01 y@220@01)) $Perm.No)))
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
  (=> (= r y@220@01) (= (- $Perm.Write (pTaken@275@01 r)) $Perm.No))
  
  :qid |quant-u-20546|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map values (instantiated)
(declare-const sm@278@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@278@01  $FVF<f>) some@237@01)
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($PSF.lookup_wand@2 (as sm@261@01  $PSF<wand@2>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap y@220@01)
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap some@237@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@220@01))
    ($SortWrappers.$PermTo$Snap $Perm.Write))))))))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (= (Seq_index xs@219@01 0) (Seq_index xs@219@01 0))
  (= some@237@01 (Seq_index xs@219@01 0)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const $t@279@01 $FVF<f>)
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (ite
        (= r (Seq_index xs@219@01 0))
        (< $Perm.No (- $Perm.Write (pTaken@243@01 r)))
        false)
      (= ($FVF.lookup_f $t@279@01 r) ($FVF.lookup_f (as sm@232@01  $FVF<f>) r)))
    (=>
      (= r some@237@01)
      (= ($FVF.lookup_f $t@279@01 r) ($FVF.lookup_f (as sm@278@01  $FVF<f>) r))))
  :pattern (($FVF.lookup_f (as sm@232@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@278@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@279@01 r))
  :qid |quant-u-20547|)))
(declare-const sm@280@01 $FVF<f>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($FVF.lookup_f (as sm@280@01  $FVF<f>) y@220@01)
  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($PSF.lookup_wand@2 (as sm@261@01  $PSF<wand@2>) ($Snap.combine
    ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap y@220@01)
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap some@237@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      ($SortWrappers.$RefTo$Snap y@220@01))
    ($SortWrappers.$PermTo$Snap $Perm.Write))))))))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (= (Seq_index xs@219@01 0) (Seq_index xs@219@01 0))
  (= y@220@01 (Seq_index xs@219@01 0)))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (= (Seq_index xs@219@01 0) (Seq_index xs@219@01 0))
  (= (Seq_index xs@219@01 0) y@220@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite
      (= (Seq_index xs@219@01 0) (Seq_index xs@219@01 0))
      (+ (- $Perm.Write (pTaken@243@01 (Seq_index xs@219@01 0))) $Perm.Write)
      $Perm.No)
    $Perm.Write))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    $Perm.Write
    (ite
      (= (Seq_index xs@219@01 0) (Seq_index xs@219@01 0))
      (+ (- $Perm.Write (pTaken@243@01 (Seq_index xs@219@01 0))) $Perm.Write)
      $Perm.No)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (ite
    (= (Seq_index xs@219@01 0) (Seq_index xs@219@01 0))
    (<
      $Perm.No
      (+ (- $Perm.Write (pTaken@243@01 (Seq_index xs@219@01 0))) $Perm.Write))
    false)
  (not
    (=
      ($FVF.lookup_f $t@279@01 (Seq_index xs@219@01 0))
      ($FVF.lookup_f (as sm@280@01  $FVF<f>) y@220@01))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (and
  (ite
    (= (Seq_index xs@219@01 0) (Seq_index xs@219@01 0))
    (<
      $Perm.No
      (+ (- $Perm.Write (pTaken@243@01 (Seq_index xs@219@01 0))) $Perm.Write))
    false)
  (not
    (=
      ($FVF.lookup_f (as sm@280@01  $FVF<f>) y@220@01)
      ($FVF.lookup_f $t@279@01 (Seq_index xs@219@01 0)))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (and
  (not (= (Seq_index xs@219@01 0) y@220@01))
  (not (= y@220@01 (Seq_index xs@219@01 0)))))
(assert (and
  (not (= (Seq_index xs@219@01 0) y@220@01))
  (not (= y@220@01 (Seq_index xs@219@01 0)))))
(declare-const sm@281@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@224@01 r) (Seq_contains xs@219@01 (inv@223@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@230@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@281@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@221@01)) r)))
  :pattern (($FVF.lookup_f (as sm@281@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@221@01)) r))
  :qid |qp.fvfValDef80|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (= r (Seq_index xs@219@01 0))
      (< $Perm.No (+ (- $Perm.Write (pTaken@243@01 r)) $Perm.Write))
      false)
    (= ($FVF.lookup_f (as sm@281@01  $FVF<f>) r) ($FVF.lookup_f $t@279@01 r)))
  :pattern (($FVF.lookup_f (as sm@281@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@279@01 r))
  :qid |qp.fvfValDef81|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@220@01)
    (=
      ($FVF.lookup_f (as sm@281@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@280@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@281@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@280@01  $FVF<f>) r))
  :qid |qp.fvfValDef82|)))
(declare-const pm@282@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@282@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@224@01 r) (Seq_contains xs@219@01 (inv@223@01 r)))
          (- $Perm.Write (pTaken@230@01 r))
          $Perm.No)
        (ite
          (= r (Seq_index xs@219@01 0))
          (+ (- $Perm.Write (pTaken@243@01 r)) $Perm.Write)
          $Perm.No))
      (ite (= r y@220@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@282@01  $FPM) r))
  :qid |qp.resPrmSumDef83|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@282@01  $FPM) r) $Perm.Write)
  :pattern ((inv@223@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@282@01  $FPM) (Seq_index xs@219@01 0)) $Perm.Write))
(assert (<= ($FVF.perm_f (as pm@282@01  $FPM) y@220@01) $Perm.Write))
; [eval] y.f == 1
(declare-const sm@283@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@220@01)
    (=
      ($FVF.lookup_f (as sm@283@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@280@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@283@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@280@01  $FVF<f>) r))
  :qid |qp.fvfValDef84|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (= r (Seq_index xs@219@01 0))
      (< $Perm.No (+ (- $Perm.Write (pTaken@243@01 r)) $Perm.Write))
      false)
    (= ($FVF.lookup_f (as sm@283@01  $FVF<f>) r) ($FVF.lookup_f $t@279@01 r)))
  :pattern (($FVF.lookup_f (as sm@283@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@279@01 r))
  :qid |qp.fvfValDef85|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@224@01 r) (Seq_contains xs@219@01 (inv@223@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@230@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@283@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@221@01)) r)))
  :pattern (($FVF.lookup_f (as sm@283@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@221@01)) r))
  :qid |qp.fvfValDef86|)))
(declare-const pm@284@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@284@01  $FPM) r)
    (+
      (+
        (ite (= r y@220@01) $Perm.Write $Perm.No)
        (ite
          (= r (Seq_index xs@219@01 0))
          (+ (- $Perm.Write (pTaken@243@01 r)) $Perm.Write)
          $Perm.No))
      (ite
        (and (img@224@01 r) (Seq_contains xs@219@01 (inv@223@01 r)))
        (- $Perm.Write (pTaken@230@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@284@01  $FPM) r))
  :qid |qp.resPrmSumDef87|)))
(set-option :timeout 0)
(push) ; 5
(assert (not (< $Perm.No ($FVF.perm_f (as pm@284@01  $FPM) y@220@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@224@01 r) (Seq_contains xs@219@01 (inv@223@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@230@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@281@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@221@01)) r)))
  :pattern (($FVF.lookup_f (as sm@281@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@221@01)) r))
  :qid |qp.fvfValDef80|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (= r (Seq_index xs@219@01 0))
      (< $Perm.No (+ (- $Perm.Write (pTaken@243@01 r)) $Perm.Write))
      false)
    (= ($FVF.lookup_f (as sm@281@01  $FVF<f>) r) ($FVF.lookup_f $t@279@01 r)))
  :pattern (($FVF.lookup_f (as sm@281@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@279@01 r))
  :qid |qp.fvfValDef81|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@220@01)
    (=
      ($FVF.lookup_f (as sm@281@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@280@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@281@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@280@01  $FVF<f>) r))
  :qid |qp.fvfValDef82|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@282@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@224@01 r) (Seq_contains xs@219@01 (inv@223@01 r)))
          (- $Perm.Write (pTaken@230@01 r))
          $Perm.No)
        (ite
          (= r (Seq_index xs@219@01 0))
          (+ (- $Perm.Write (pTaken@243@01 r)) $Perm.Write)
          $Perm.No))
      (ite (= r y@220@01) $Perm.Write $Perm.No)))
  :pattern (($FVF.perm_f (as pm@282@01  $FPM) r))
  :qid |qp.resPrmSumDef83|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@220@01)
    (=
      ($FVF.lookup_f (as sm@283@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@280@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@283@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@280@01  $FVF<f>) r))
  :qid |qp.fvfValDef84|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (= r (Seq_index xs@219@01 0))
      (< $Perm.No (+ (- $Perm.Write (pTaken@243@01 r)) $Perm.Write))
      false)
    (= ($FVF.lookup_f (as sm@283@01  $FVF<f>) r) ($FVF.lookup_f $t@279@01 r)))
  :pattern (($FVF.lookup_f (as sm@283@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f $t@279@01 r))
  :qid |qp.fvfValDef85|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@224@01 r) (Seq_contains xs@219@01 (inv@223@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@230@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@283@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@221@01)) r)))
  :pattern (($FVF.lookup_f (as sm@283@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@221@01)) r))
  :qid |qp.fvfValDef86|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@284@01  $FPM) r)
    (+
      (+
        (ite (= r y@220@01) $Perm.Write $Perm.No)
        (ite
          (= r (Seq_index xs@219@01 0))
          (+ (- $Perm.Write (pTaken@243@01 r)) $Perm.Write)
          $Perm.No))
      (ite
        (and (img@224@01 r) (Seq_contains xs@219@01 (inv@223@01 r)))
        (- $Perm.Write (pTaken@230@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@284@01  $FPM) r))
  :qid |qp.resPrmSumDef87|)))
(assert (and
  (not
    (=
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($Snap.combine
                ($SortWrappers.$RefTo$Snap y@220@01)
                ($SortWrappers.$PermTo$Snap $Perm.Write))
              ($SortWrappers.$RefTo$Snap some@237@01))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          ($SortWrappers.$RefTo$Snap y@220@01))
        ($SortWrappers.$PermTo$Snap $Perm.Write))
      $Snap.unit))
  (=
    ($PSF.lookup_wand@2 (as sm@261@01  $PSF<wand@2>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap y@220@01)
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap some@237@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@220@01))
      ($SortWrappers.$PermTo$Snap $Perm.Write)))
    ($PSF.lookup_wand@2 (as sm@254@01  $PSF<wand@2>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap y@220@01)
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap some@237@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@220@01))
      ($SortWrappers.$PermTo$Snap $Perm.Write))))))
(assert (and
  (=
    ($FVF.lookup_f (as sm@278@01  $FVF<f>) some@237@01)
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($PSF.lookup_wand@2 (as sm@261@01  $PSF<wand@2>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap y@220@01)
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap some@237@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@220@01))
      ($SortWrappers.$PermTo$Snap $Perm.Write)))))))
  (forall ((r $Ref)) (!
    (and
      (=>
        (ite
          (= r (Seq_index xs@219@01 0))
          (< $Perm.No (- $Perm.Write (pTaken@243@01 r)))
          false)
        (= ($FVF.lookup_f $t@279@01 r) ($FVF.lookup_f (as sm@232@01  $FVF<f>) r)))
      (=>
        (= r some@237@01)
        (= ($FVF.lookup_f $t@279@01 r) ($FVF.lookup_f (as sm@278@01  $FVF<f>) r))))
    :pattern (($FVF.lookup_f (as sm@232@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f (as sm@278@01  $FVF<f>) r))
    :pattern (($FVF.lookup_f $t@279@01 r))
    :qid |quant-u-20547|))))
(assert (and
  (=
    ($FVF.lookup_f (as sm@280@01  $FVF<f>) y@220@01)
    ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($PSF.lookup_wand@2 (as sm@261@01  $PSF<wand@2>) ($Snap.combine
      ($Snap.combine
        ($Snap.combine
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.$RefTo$Snap y@220@01)
              ($SortWrappers.$PermTo$Snap $Perm.Write))
            ($SortWrappers.$RefTo$Snap some@237@01))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        ($SortWrappers.$RefTo$Snap y@220@01))
      ($SortWrappers.$PermTo$Snap $Perm.Write)))))))
  (not (= (Seq_index xs@219@01 0) y@220@01))
  (not (= y@220@01 (Seq_index xs@219@01 0)))
  (forall ((r $Ref)) (!
    (<= ($FVF.perm_f (as pm@282@01  $FPM) r) $Perm.Write)
    :pattern ((inv@223@01 r))
    :qid |qp-fld-prm-bnd|))
  (<= ($FVF.perm_f (as pm@282@01  $FPM) (Seq_index xs@219@01 0)) $Perm.Write)
  (<= ($FVF.perm_f (as pm@282@01  $FPM) y@220@01) $Perm.Write)))
(push) ; 4
(assert (not (= ($FVF.lookup_f (as sm@283@01  $FVF<f>) y@220@01) 1)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (= ($FVF.lookup_f (as sm@283@01  $FVF<f>) y@220@01) 1))
; [exec]
; assert (forall x: Ref ::(x in xs[1..]) ==> acc(x.f, write))
(declare-const x@285@01 $Ref)
(push) ; 4
; [eval] (x in xs[1..])
; [eval] xs[1..]
(assert (Seq_contains (Seq_drop xs@219@01 1) x@285@01))
(pop) ; 4
(declare-fun inv@286@01 ($Ref) $Ref)
(declare-fun img@287@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@285@01 $Ref) (x2@285@01 $Ref)) (!
  (=>
    (and
      (Seq_contains (Seq_drop xs@219@01 1) x1@285@01)
      (Seq_contains (Seq_drop xs@219@01 1) x2@285@01)
      (= x1@285@01 x2@285@01))
    (= x1@285@01 x2@285@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@285@01 $Ref)) (!
  (=>
    (Seq_contains (Seq_drop xs@219@01 1) x@285@01)
    (and (= (inv@286@01 x@285@01) x@285@01) (img@287@01 x@285@01)))
  :pattern ((Seq_contains (Seq_drop xs@219@01 1) x@285@01))
  :pattern ((Seq_contains_trigger (Seq_drop xs@219@01 1) x@285@01))
  :pattern ((inv@286@01 x@285@01))
  :pattern ((img@287@01 x@285@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@287@01 r) (Seq_contains (Seq_drop xs@219@01 1) (inv@286@01 r)))
    (= (inv@286@01 r) r))
  :pattern ((inv@286@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@288@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_drop xs@219@01 1) (inv@286@01 r))
      (img@287@01 r)
      (= r (inv@286@01 r)))
    ($Perm.min
      (ite
        (and (img@224@01 r) (Seq_contains xs@219@01 (inv@223@01 r)))
        (- $Perm.Write (pTaken@230@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@289@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_drop xs@219@01 1) (inv@286@01 r))
      (img@287@01 r)
      (= r (inv@286@01 r)))
    ($Perm.min
      (ite (= r y@220@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@288@01 r)))
    $Perm.No))
(define-fun pTaken@290@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains (Seq_drop xs@219@01 1) (inv@286@01 r))
      (img@287@01 r)
      (= r (inv@286@01 r)))
    ($Perm.min
      (ite
        (= r (Seq_index xs@219@01 0))
        (- $Perm.Write (pTaken@243@01 r))
        $Perm.No)
      (- (- $Perm.Write (pTaken@288@01 r)) (pTaken@289@01 r)))
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
        (and (img@224@01 r) (Seq_contains xs@219@01 (inv@223@01 r)))
        (- $Perm.Write (pTaken@230@01 r))
        $Perm.No)
      (pTaken@288@01 r))
    $Perm.No)
  
  :qid |quant-u-20550|))))
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
      (Seq_contains (Seq_drop xs@219@01 1) (inv@286@01 r))
      (img@287@01 r)
      (= r (inv@286@01 r)))
    (= (- $Perm.Write (pTaken@288@01 r)) $Perm.No))
  
  :qid |quant-u-20551|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; assert (forall x: Ref ::(x in xs) ==> acc(x.f, write))
(declare-const x@291@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] (x in xs)
(assert (Seq_contains xs@219@01 x@291@01))
(pop) ; 4
(declare-fun inv@292@01 ($Ref) $Ref)
(declare-fun img@293@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@291@01 $Ref) (x2@291@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@219@01 x1@291@01)
      (Seq_contains xs@219@01 x2@291@01)
      (= x1@291@01 x2@291@01))
    (= x1@291@01 x2@291@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@291@01 $Ref)) (!
  (=>
    (Seq_contains xs@219@01 x@291@01)
    (and (= (inv@292@01 x@291@01) x@291@01) (img@293@01 x@291@01)))
  :pattern ((Seq_contains xs@219@01 x@291@01))
  :pattern ((Seq_contains_trigger xs@219@01 x@291@01))
  :pattern ((inv@292@01 x@291@01))
  :pattern ((img@293@01 x@291@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@293@01 r) (Seq_contains xs@219@01 (inv@292@01 r)))
    (= (inv@292@01 r) r))
  :pattern ((inv@292@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@294@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains xs@219@01 (inv@292@01 r))
      (img@293@01 r)
      (= r (inv@292@01 r)))
    ($Perm.min
      (ite
        (and (img@224@01 r) (Seq_contains xs@219@01 (inv@223@01 r)))
        (- $Perm.Write (pTaken@230@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@295@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains xs@219@01 (inv@292@01 r))
      (img@293@01 r)
      (= r (inv@292@01 r)))
    ($Perm.min
      (ite
        (= r (Seq_index xs@219@01 0))
        (- $Perm.Write (pTaken@243@01 r))
        $Perm.No)
      (- $Perm.Write (pTaken@294@01 r)))
    $Perm.No))
(define-fun pTaken@296@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains xs@219@01 (inv@292@01 r))
      (img@293@01 r)
      (= r (inv@292@01 r)))
    ($Perm.min
      (ite (= r y@220@01) $Perm.Write $Perm.No)
      (- (- $Perm.Write (pTaken@294@01 r)) (pTaken@295@01 r)))
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
        (and (img@224@01 r) (Seq_contains xs@219@01 (inv@223@01 r)))
        (- $Perm.Write (pTaken@230@01 r))
        $Perm.No)
      (pTaken@294@01 r))
    $Perm.No)
  
  :qid |quant-u-20554|))))
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
      (Seq_contains xs@219@01 (inv@292@01 r))
      (img@293@01 r)
      (= r (inv@292@01 r)))
    (= (- $Perm.Write (pTaken@294@01 r)) $Perm.No))
  
  :qid |quant-u-20555|))))
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
      (= (Seq_index xs@219@01 0) (Seq_index xs@219@01 0))
      (- $Perm.Write (pTaken@243@01 (Seq_index xs@219@01 0)))
      $Perm.No)
    (pTaken@295@01 (Seq_index xs@219@01 0)))
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
      (Seq_contains xs@219@01 (inv@292@01 r))
      (img@293@01 r)
      (= r (inv@292@01 r)))
    (= (- (- $Perm.Write (pTaken@294@01 r)) (pTaken@295@01 r)) $Perm.No))
  
  :qid |quant-u-20557|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@296@01 y@220@01)) $Perm.No)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@296@01 r) $Perm.No)
  
  :qid |quant-u-20559|))))
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
      (Seq_contains xs@219@01 (inv@292@01 r))
      (img@293@01 r)
      (= r (inv@292@01 r)))
    (=
      (-
        (- (- $Perm.Write (pTaken@294@01 r)) (pTaken@295@01 r))
        (pTaken@296@01 r))
      $Perm.No))
  
  :qid |quant-u-20560|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains xs@219@01 (inv@292@01 r))
      (img@293@01 r)
      (= r (inv@292@01 r)))
    (=
      (-
        (- (- $Perm.Write (pTaken@294@01 r)) (pTaken@295@01 r))
        (pTaken@296@01 r))
      $Perm.No))
  
  :qid |quant-u-20560|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (and
  (= (Seq_index xs@219@01 0) (Seq_index xs@219@01 0))
  (= y@220@01 (Seq_index xs@219@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    $Perm.Write
    (ite
      (= (Seq_index xs@219@01 0) (Seq_index xs@219@01 0))
      (- $Perm.Write (pTaken@243@01 (Seq_index xs@219@01 0)))
      $Perm.No)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+
    (ite
      (= (Seq_index xs@219@01 0) (Seq_index xs@219@01 0))
      (- $Perm.Write (pTaken@243@01 (Seq_index xs@219@01 0)))
      $Perm.No)
    $Perm.Write))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (and
  (ite
    (= (Seq_index xs@219@01 0) (Seq_index xs@219@01 0))
    (< $Perm.No (- $Perm.Write (pTaken@243@01 (Seq_index xs@219@01 0))))
    false)
  (not
    (=
      ($FVF.lookup_f (as sm@236@01  $FVF<f>) y@220@01)
      ($FVF.lookup_f (as sm@232@01  $FVF<f>) (Seq_index xs@219@01 0)))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (and
  (ite
    (= (Seq_index xs@219@01 0) (Seq_index xs@219@01 0))
    (< $Perm.No (- $Perm.Write (pTaken@243@01 (Seq_index xs@219@01 0))))
    false)
  (not
    (=
      ($FVF.lookup_f (as sm@232@01  $FVF<f>) (Seq_index xs@219@01 0))
      ($FVF.lookup_f (as sm@236@01  $FVF<f>) y@220@01))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@297@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@224@01 r) (Seq_contains xs@219@01 (inv@223@01 r)))
      (< $Perm.No (- $Perm.Write (pTaken@230@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@297@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@221@01)) r)))
  :pattern (($FVF.lookup_f (as sm@297@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@221@01)) r))
  :qid |qp.fvfValDef88|)))
(assert (forall ((r $Ref)) (!
  (=>
    (= r y@220@01)
    (=
      ($FVF.lookup_f (as sm@297@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@236@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@297@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@236@01  $FVF<f>) r))
  :qid |qp.fvfValDef89|)))
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (= r (Seq_index xs@219@01 0))
      (< $Perm.No (- $Perm.Write (pTaken@243@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@297@01  $FVF<f>) r)
      ($FVF.lookup_f (as sm@232@01  $FVF<f>) r)))
  :pattern (($FVF.lookup_f (as sm@297@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f (as sm@232@01  $FVF<f>) r))
  :qid |qp.fvfValDef90|)))
(declare-const pm@298@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@298@01  $FPM) r)
    (+
      (+
        (ite
          (and (img@224@01 r) (Seq_contains xs@219@01 (inv@223@01 r)))
          (- $Perm.Write (pTaken@230@01 r))
          $Perm.No)
        (ite (= r y@220@01) $Perm.Write $Perm.No))
      (ite
        (= r (Seq_index xs@219@01 0))
        (- $Perm.Write (pTaken@243@01 r))
        $Perm.No)))
  :pattern (($FVF.perm_f (as pm@298@01  $FPM) r))
  :qid |qp.resPrmSumDef91|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@298@01  $FPM) r) $Perm.Write)
  :pattern ((inv@223@01 r))
  :qid |qp-fld-prm-bnd|)))
(assert (<= ($FVF.perm_f (as pm@298@01  $FPM) y@220@01) $Perm.Write))
(assert (<= ($FVF.perm_f (as pm@298@01  $FPM) (Seq_index xs@219@01 0)) $Perm.Write))
(declare-const x@299@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] (x in xs)
(assert (Seq_contains xs@219@01 x@299@01))
(pop) ; 4
(declare-fun inv@300@01 ($Ref) $Ref)
(declare-fun img@301@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@299@01 $Ref) (x2@299@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@219@01 x1@299@01)
      (Seq_contains xs@219@01 x2@299@01)
      (= x1@299@01 x2@299@01))
    (= x1@299@01 x2@299@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@299@01 $Ref)) (!
  (=>
    (Seq_contains xs@219@01 x@299@01)
    (and (= (inv@300@01 x@299@01) x@299@01) (img@301@01 x@299@01)))
  :pattern ((Seq_contains xs@219@01 x@299@01))
  :pattern ((Seq_contains_trigger xs@219@01 x@299@01))
  :pattern ((inv@300@01 x@299@01))
  :pattern ((img@301@01 x@299@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@301@01 r) (Seq_contains xs@219@01 (inv@300@01 r)))
    (= (inv@300@01 r) r))
  :pattern ((inv@300@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@302@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains xs@219@01 (inv@300@01 r))
      (img@301@01 r)
      (= r (inv@300@01 r)))
    ($Perm.min
      (ite
        (and (img@224@01 r) (Seq_contains xs@219@01 (inv@223@01 r)))
        (- $Perm.Write (pTaken@230@01 r))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@303@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains xs@219@01 (inv@300@01 r))
      (img@301@01 r)
      (= r (inv@300@01 r)))
    ($Perm.min
      (ite
        (= r (Seq_index xs@219@01 0))
        (- $Perm.Write (pTaken@243@01 r))
        $Perm.No)
      (- $Perm.Write (pTaken@302@01 r)))
    $Perm.No))
(define-fun pTaken@304@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains xs@219@01 (inv@300@01 r))
      (img@301@01 r)
      (= r (inv@300@01 r)))
    ($Perm.min
      (ite (= r y@220@01) $Perm.Write $Perm.No)
      (- (- $Perm.Write (pTaken@302@01 r)) (pTaken@303@01 r)))
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
        (and (img@224@01 r) (Seq_contains xs@219@01 (inv@223@01 r)))
        (- $Perm.Write (pTaken@230@01 r))
        $Perm.No)
      (pTaken@302@01 r))
    $Perm.No)
  
  :qid |quant-u-20563|))))
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
      (Seq_contains xs@219@01 (inv@300@01 r))
      (img@301@01 r)
      (= r (inv@300@01 r)))
    (= (- $Perm.Write (pTaken@302@01 r)) $Perm.No))
  
  :qid |quant-u-20564|))))
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
      (= (Seq_index xs@219@01 0) (Seq_index xs@219@01 0))
      (- $Perm.Write (pTaken@243@01 (Seq_index xs@219@01 0)))
      $Perm.No)
    (pTaken@303@01 (Seq_index xs@219@01 0)))
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
      (Seq_contains xs@219@01 (inv@300@01 r))
      (img@301@01 r)
      (= r (inv@300@01 r)))
    (= (- (- $Perm.Write (pTaken@302@01 r)) (pTaken@303@01 r)) $Perm.No))
  
  :qid |quant-u-20566|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@304@01 y@220@01)) $Perm.No)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@304@01 r) $Perm.No)
  
  :qid |quant-u-20568|))))
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
      (Seq_contains xs@219@01 (inv@300@01 r))
      (img@301@01 r)
      (= r (inv@300@01 r)))
    (=
      (-
        (- (- $Perm.Write (pTaken@302@01 r)) (pTaken@303@01 r))
        (pTaken@304@01 r))
      $Perm.No))
  
  :qid |quant-u-20569|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Seq_contains xs@219@01 (inv@300@01 r))
      (img@301@01 r)
      (= r (inv@300@01 r)))
    (=
      (-
        (- (- $Perm.Write (pTaken@302@01 r)) (pTaken@303@01 r))
        (pTaken@304@01 r))
      $Perm.No))
  
  :qid |quant-u-20569|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test6 ----------
(declare-const xs@305@01 Seq<$Ref>)
(declare-const xs@306@01 Seq<$Ref>)
(push) ; 1
(declare-const $t@307@01 $Snap)
(assert (= $t@307@01 ($Snap.combine ($Snap.first $t@307@01) ($Snap.second $t@307@01))))
(declare-const x@308@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@306@01 x@308@01))
(pop) ; 2
(declare-fun inv@309@01 (Bool $Ref $Perm) $Ref)
(declare-fun img@310@01 (Bool $Ref $Perm) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@308@01 $Ref) (x2@308@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@306@01 x1@308@01)
      (Seq_contains xs@306@01 x2@308@01)
      (= x1@308@01 x2@308@01))
    (= x1@308@01 x2@308@01))
  
  :qid |wand@4-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@308@01 $Ref)) (!
  (=>
    (Seq_contains xs@306@01 x@308@01)
    (and
      (= (inv@309@01 true x@308@01 $Perm.Write) x@308@01)
      (img@310@01 true x@308@01 $Perm.Write)))
  :pattern ((Seq_contains xs@306@01 x@308@01))
  :pattern ((Seq_contains_trigger xs@306@01 x@308@01))
  :pattern ((Seq_contains_trigger xs@306@01 x@308@01))
  :pattern ((inv@309@01 true x@308@01 $Perm.Write))
  :pattern ((img@310@01 true x@308@01 $Perm.Write))
  :qid |quant-u-20571|)))
(assert (forall ((x0 Bool) (x1 $Ref) (x2 $Perm)) (!
  (=>
    (and (img@310@01 x0 x1 x2) (Seq_contains xs@306@01 (inv@309@01 x0 x1 x2)))
    (and (= true x0) (= (inv@309@01 x0 x1 x2) x1) (= $Perm.Write x2)))
  :pattern ((inv@309@01 x0 x1 x2))
  :qid |wand@4-fctOfInv|)))
; Permissons are non-negative
(assert (= ($Snap.second $t@307@01) $Snap.unit))
; [eval] |xs| > 0
; [eval] |xs|
(assert (> (Seq_length xs@306@01) 0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; inhale (applying true --* acc(xs[0].f, write) in
;     xs[0].f == 0)
(declare-const $t@311@01 $Snap)
(assert (= $t@311@01 $Snap.unit))
; [eval] (applying true --* acc(xs[0].f, write) in xs[0].f == 0)
(push) ; 3
; [eval] xs[0]
(push) ; 4
(assert (not (< 0 (Seq_length xs@306@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@312@01 ((x0 Bool) (x1 $Ref) (x2 $Perm)) $Perm
  (ite
    (and (= x0 true) (= x1 (Seq_index xs@306@01 0)) (= x2 $Perm.Write))
    ($Perm.min
      (ite
        (and
          (img@310@01 x0 x1 x2)
          (Seq_contains xs@306@01 (inv@309@01 x0 x1 x2)))
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
(assert (not (forall ((x0 Bool) (x1 $Ref) (x2 $Perm)) (!
  (=
    (-
      (ite
        (and
          (img@310@01 x0 x1 x2)
          (Seq_contains xs@306@01 (inv@309@01 x0 x1 x2)))
        $Perm.Write
        $Perm.No)
      (pTaken@312@01 x0 x1 x2))
    $Perm.No)
  
  :qid |quant-u-20573|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x0 Bool) (x1 $Ref) (x2 $Perm)) (!
  (= (pTaken@312@01 x0 x1 x2) $Perm.No)
  
  :qid |quant-u-20574|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x0 Bool) (x1 $Ref) (x2 $Perm)) (!
  (=>
    (and (= x0 true) (= x1 (Seq_index xs@306@01 0)) (= x2 $Perm.Write))
    (= (- $Perm.Write (pTaken@312@01 x0 x1 x2)) $Perm.No))
  
  :qid |quant-u-20575|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@313@01 $PSF<wand@4>)
(declare-const s@314@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@310@01 true (Seq_index xs@306@01 0) $Perm.Write)
    (Seq_contains
      xs@306@01
      (inv@309@01 true (Seq_index xs@306@01 0) $Perm.Write)))
  (and
    (not
      (=
        ($Snap.combine
          ($Snap.combine
            ($SortWrappers.BoolTo$Snap true)
            ($SortWrappers.$RefTo$Snap (Seq_index xs@306@01 0)))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        $Snap.unit))
    (=
      ($PSF.lookup_wand@4 (as sm@313@01  $PSF<wand@4>) ($Snap.combine
        ($Snap.combine
          ($SortWrappers.BoolTo$Snap true)
          ($SortWrappers.$RefTo$Snap (Seq_index xs@306@01 0)))
        ($SortWrappers.$PermTo$Snap $Perm.Write)))
      ($PSF.lookup_wand@4 ($SortWrappers.$SnapTo$PSF<wand@4> ($Snap.first $t@307@01)) ($Snap.combine
        ($Snap.combine
          ($SortWrappers.BoolTo$Snap true)
          ($SortWrappers.$RefTo$Snap (Seq_index xs@306@01 0)))
        ($SortWrappers.$PermTo$Snap $Perm.Write)))))))
(assert (=
  $Snap.unit
  ($Snap.first ($PSF.lookup_wand@4 (as sm@313@01  $PSF<wand@4>) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.BoolTo$Snap true)
      ($SortWrappers.$RefTo$Snap (Seq_index xs@306@01 0)))
    ($SortWrappers.$PermTo$Snap $Perm.Write))))))
; [eval] xs[0]
(set-option :timeout 0)
(push) ; 4
(assert (not (< 0 (Seq_length xs@306@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (not (= (Seq_index xs@306@01 0) $Ref.null)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] xs[0].f == 0
; [eval] xs[0]
(set-option :timeout 0)
(push) ; 4
(assert (not (< 0 (Seq_length xs@306@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
; Joined path conditions
(assert (and
  (=>
    (and
      (img@310@01 true (Seq_index xs@306@01 0) $Perm.Write)
      (Seq_contains
        xs@306@01
        (inv@309@01 true (Seq_index xs@306@01 0) $Perm.Write)))
    (and
      (not
        (=
          ($Snap.combine
            ($Snap.combine
              ($SortWrappers.BoolTo$Snap true)
              ($SortWrappers.$RefTo$Snap (Seq_index xs@306@01 0)))
            ($SortWrappers.$PermTo$Snap $Perm.Write))
          $Snap.unit))
      (=
        ($PSF.lookup_wand@4 (as sm@313@01  $PSF<wand@4>) ($Snap.combine
          ($Snap.combine
            ($SortWrappers.BoolTo$Snap true)
            ($SortWrappers.$RefTo$Snap (Seq_index xs@306@01 0)))
          ($SortWrappers.$PermTo$Snap $Perm.Write)))
        ($PSF.lookup_wand@4 ($SortWrappers.$SnapTo$PSF<wand@4> ($Snap.first $t@307@01)) ($Snap.combine
          ($Snap.combine
            ($SortWrappers.BoolTo$Snap true)
            ($SortWrappers.$RefTo$Snap (Seq_index xs@306@01 0)))
          ($SortWrappers.$PermTo$Snap $Perm.Write))))))
  (=
    $Snap.unit
    ($Snap.first ($PSF.lookup_wand@4 (as sm@313@01  $PSF<wand@4>) ($Snap.combine
      ($Snap.combine
        ($SortWrappers.BoolTo$Snap true)
        ($SortWrappers.$RefTo$Snap (Seq_index xs@306@01 0)))
      ($SortWrappers.$PermTo$Snap $Perm.Write)))))
  (not (= (Seq_index xs@306@01 0) $Ref.null))))
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.second ($PSF.lookup_wand@4 (as sm@313@01  $PSF<wand@4>) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.BoolTo$Snap true)
      ($SortWrappers.$RefTo$Snap (Seq_index xs@306@01 0)))
    ($SortWrappers.$PermTo$Snap $Perm.Write)))))
  0))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; package true --* (forall x: Ref ::(x in xs) ==> true --* acc(x.f, write)) {
; }
(set-option :timeout 0)
(push) ; 3
(declare-const $t@315@01 $Snap)
(assert (= $t@315@01 $Snap.unit))
(declare-const x@316@01 $Ref)
(push) ; 4
; [eval] (x in xs)
(assert (Seq_contains xs@306@01 x@316@01))
(pop) ; 4
(declare-fun inv@317@01 (Bool $Ref $Perm) $Ref)
(declare-fun img@318@01 (Bool $Ref $Perm) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@316@01 $Ref) (x2@316@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@306@01 x1@316@01)
      (Seq_contains xs@306@01 x2@316@01)
      (= x1@316@01 x2@316@01))
    (= x1@316@01 x2@316@01))
  
  :qid |wand@4-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@316@01 $Ref)) (!
  (=>
    (Seq_contains xs@306@01 x@316@01)
    (and
      (= (inv@317@01 true x@316@01 $Perm.Write) x@316@01)
      (img@318@01 true x@316@01 $Perm.Write)))
  :pattern ((Seq_contains xs@306@01 x@316@01))
  :pattern ((Seq_contains_trigger xs@306@01 x@316@01))
  :pattern ((inv@317@01 true x@316@01 $Perm.Write))
  :pattern ((img@318@01 true x@316@01 $Perm.Write))
  :qid |wand@4-invOfFct|)))
(assert (forall ((x0 Bool) (x1 $Ref) (x2 $Perm)) (!
  (=>
    (and (img@318@01 x0 x1 x2) (Seq_contains xs@306@01 (inv@317@01 x0 x1 x2)))
    (and (= true x0) (= (inv@317@01 x0 x1 x2) x1) (= $Perm.Write x2)))
  :pattern ((inv@317@01 x0 x1 x2))
  :qid |wand@4-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x0 Bool) (x1 $Ref) (x2 $Perm)) (!
  false
  
  :qid |quant-u-20577|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x0 Bool) (x1 $Ref) (x2 $Perm)) (!
  (=>
    (and
      (Seq_contains xs@306@01 (inv@317@01 x0 x1 x2))
      (img@318@01 x0 x1 x2)
      (and (= x0 true) (= x1 (inv@317@01 x0 x1 x2)) (= x2 $Perm.Write)))
    false)
  
  :qid |quant-u-20578|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@319@01 $PSF<wand@4>)
(declare-const s@320@01 $Snap)
; Definitional axioms for snapshot map values
(declare-fun inv@321@01 (Bool $Ref $Perm) $Ref)
(declare-fun img@322@01 (Bool $Ref $Perm) Bool)
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x0 Bool) (x1 $Ref) (x2 $Perm)) (!
  (=>
    (and
      (Seq_contains xs@306@01 (inv@317@01 x0 x1 x2))
      (img@318@01 x0 x1 x2)
      (and (= x0 true) (= x1 (inv@317@01 x0 x1 x2)) (= x2 $Perm.Write)))
    false)
  
  :qid |quant-u-20579|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@323@01 $PSF<wand@4>)
(declare-const s@324@01 $Snap)
; Definitional axioms for snapshot map values
(declare-fun inv@325@01 (Bool $Ref $Perm) $Ref)
(declare-fun img@326@01 (Bool $Ref $Perm) Bool)
(assert (= (as sm@319@01  $PSF<wand@4>) (as sm@323@01  $PSF<wand@4>)))
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@327@01 ((x0 Bool) (x1 $Ref) (x2 $Perm)) $Perm
  (ite
    (and
      (Seq_contains xs@306@01 (inv@317@01 x0 x1 x2))
      (img@318@01 x0 x1 x2)
      (and (= x0 true) (= x1 (inv@317@01 x0 x1 x2)) (= x2 $Perm.Write)))
    ($Perm.min
      (ite
        (and
          (img@310@01 x0 x1 x2)
          (Seq_contains xs@306@01 (inv@309@01 x0 x1 x2)))
        $Perm.Write
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
(assert (not (forall ((x0 Bool) (x1 $Ref) (x2 $Perm)) (!
  (=
    (-
      (ite
        (and
          (img@310@01 x0 x1 x2)
          (Seq_contains xs@306@01 (inv@309@01 x0 x1 x2)))
        $Perm.Write
        $Perm.No)
      (pTaken@327@01 x0 x1 x2))
    $Perm.No)
  
  :qid |quant-u-20581|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x0 Bool) (x1 $Ref) (x2 $Perm)) (!
  (=>
    (and
      (Seq_contains xs@306@01 (inv@317@01 x0 x1 x2))
      (img@318@01 x0 x1 x2)
      (and (= x0 true) (= x1 (inv@317@01 x0 x1 x2)) (= x2 $Perm.Write)))
    (= (- $Perm.Write (pTaken@327@01 x0 x1 x2)) $Perm.No))
  
  :qid |quant-u-20582|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@328@01 $PSF<wand@4>)
(declare-const s@329@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@329@01 $Snap)) (!
  (=>
    (and
      (img@310@01 ($SortWrappers.$SnapToBool ($Snap.first ($Snap.first s@329@01))) ($SortWrappers.$SnapTo$Ref ($Snap.second ($Snap.first s@329@01))) ($SortWrappers.$SnapTo$Perm ($Snap.second s@329@01)))
      (Seq_contains
        xs@306@01
        (inv@309@01 ($SortWrappers.$SnapToBool ($Snap.first ($Snap.first s@329@01))) ($SortWrappers.$SnapTo$Ref ($Snap.second ($Snap.first s@329@01))) ($SortWrappers.$SnapTo$Perm ($Snap.second s@329@01)))))
    (and
      (not (= s@329@01 $Snap.unit))
      (=
        ($PSF.lookup_wand@4 (as sm@328@01  $PSF<wand@4>) s@329@01)
        ($PSF.lookup_wand@4 ($SortWrappers.$SnapTo$PSF<wand@4> ($Snap.first $t@307@01)) s@329@01))))
  :pattern (($PSF.lookup_wand@4 (as sm@328@01  $PSF<wand@4>) s@329@01))
  :pattern (($PSF.lookup_wand@4 ($SortWrappers.$SnapTo$PSF<wand@4> ($Snap.first $t@307@01)) s@329@01))
  :qid |qp.psmValDef93|)))
(declare-fun inv@330@01 (Bool $Ref $Perm) $Ref)
(declare-fun img@331@01 (Bool $Ref $Perm) Bool)
(assert (forall ((x0 Bool) (x1 $Ref) (x2 $Perm)) (!
  (=>
    (and (img@331@01 x0 x1 x2) (Seq_contains xs@306@01 (inv@317@01 x0 x1 x2)))
    (and (= true x0) (= (inv@330@01 x0 x1 x2) x1) (= $Perm.Write x2)))
  :pattern ((inv@330@01 x0 x1 x2))
  :qid |wand@4-fctOfInv|)))
(assert (forall ((x@316@01 $Ref)) (!
  (=>
    (Seq_contains xs@306@01 (inv@317@01 true x@316@01 $Perm.Write))
    (and
      (= (inv@330@01 true x@316@01 $Perm.Write) x@316@01)
      (img@331@01 true x@316@01 $Perm.Write)))
  :pattern ((inv@330@01 true x@316@01 $Perm.Write))
  :pattern ((img@331@01 true x@316@01 $Perm.Write))
  :qid |wand@4-invOfFct|)))
(assert (= (as sm@319@01  $PSF<wand@4>) (as sm@328@01  $PSF<wand@4>)))
(set-option :timeout 10)
(check-sat)
; unknown
; Create MagicWandSnapFunction for wand true --* (forall x: Ref ::(x in xs) ==> true --* acc(x.f, write))
(declare-const mwsf@332@01 $MWSF)
(assert (forall (($t@315@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@332@01 $t@315@01)
    ($SortWrappers.$PSF<wand@4>To$Snap (as sm@328@01  $PSF<wand@4>)))
  :pattern ((MWSF_apply mwsf@332@01 $t@315@01))
  :qid |quant-u-20583|)))
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
(assert (forall (($t@315@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@332@01 $t@315@01)
    ($SortWrappers.$PSF<wand@4>To$Snap (as sm@328@01  $PSF<wand@4>)))
  :pattern ((MWSF_apply mwsf@332@01 $t@315@01))
  :qid |quant-u-20584|)))
(assert (forall ((s@329@01 $Snap)) (!
  (=>
    (and
      (img@310@01 ($SortWrappers.$SnapToBool ($Snap.first ($Snap.first s@329@01))) ($SortWrappers.$SnapTo$Ref ($Snap.second ($Snap.first s@329@01))) ($SortWrappers.$SnapTo$Perm ($Snap.second s@329@01)))
      (Seq_contains
        xs@306@01
        (inv@309@01 ($SortWrappers.$SnapToBool ($Snap.first ($Snap.first s@329@01))) ($SortWrappers.$SnapTo$Ref ($Snap.second ($Snap.first s@329@01))) ($SortWrappers.$SnapTo$Perm ($Snap.second s@329@01)))))
    (and
      (not (= s@329@01 $Snap.unit))
      (=
        ($PSF.lookup_wand@4 (as sm@328@01  $PSF<wand@4>) s@329@01)
        ($PSF.lookup_wand@4 ($SortWrappers.$SnapTo$PSF<wand@4> ($Snap.first $t@307@01)) s@329@01))))
  :pattern (($PSF.lookup_wand@4 (as sm@328@01  $PSF<wand@4>) s@329@01))
  :pattern (($PSF.lookup_wand@4 ($SortWrappers.$SnapTo$PSF<wand@4> ($Snap.first $t@307@01)) s@329@01))
  :qid |qp.psmValDef93|)))
(assert (forall ((x0 Bool) (x1 $Ref) (x2 $Perm)) (!
  (=>
    (and (img@331@01 x0 x1 x2) (Seq_contains xs@306@01 (inv@317@01 x0 x1 x2)))
    (and (= true x0) (= (inv@330@01 x0 x1 x2) x1) (= $Perm.Write x2)))
  :pattern ((inv@330@01 x0 x1 x2))
  :qid |wand@4-fctOfInv|)))
(assert (forall ((x@316@01 $Ref)) (!
  (=>
    (Seq_contains xs@306@01 (inv@317@01 true x@316@01 $Perm.Write))
    (and
      (= (inv@330@01 true x@316@01 $Perm.Write) x@316@01)
      (img@331@01 true x@316@01 $Perm.Write)))
  :pattern ((inv@330@01 true x@316@01 $Perm.Write))
  :pattern ((img@331@01 true x@316@01 $Perm.Write))
  :qid |wand@4-invOfFct|)))
(assert (and
  (= (as sm@319@01  $PSF<wand@4>) (as sm@323@01  $PSF<wand@4>))
  (= (as sm@319@01  $PSF<wand@4>) (as sm@328@01  $PSF<wand@4>))))
; [exec]
; apply true --* (forall x: Ref ::(x in xs) ==> true --* acc(x.f, write))
(declare-const x@333@01 $Ref)
(push) ; 4
; [eval] (x in xs)
(assert (Seq_contains xs@306@01 x@333@01))
(pop) ; 4
(declare-fun inv@334@01 (Bool $Ref $Perm) $Ref)
(declare-fun img@335@01 (Bool $Ref $Perm) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@333@01 $Ref) (x2@333@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@306@01 x1@333@01)
      (Seq_contains xs@306@01 x2@333@01)
      (= x1@333@01 x2@333@01))
    (= x1@333@01 x2@333@01))
  
  :qid |wand@4-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@333@01 $Ref)) (!
  (=>
    (Seq_contains xs@306@01 x@333@01)
    (and
      (= (inv@334@01 true x@333@01 $Perm.Write) x@333@01)
      (img@335@01 true x@333@01 $Perm.Write)))
  :pattern ((Seq_contains xs@306@01 x@333@01))
  :pattern ((Seq_contains_trigger xs@306@01 x@333@01))
  :pattern ((Seq_contains_trigger xs@306@01 x@333@01))
  :pattern ((inv@334@01 true x@333@01 $Perm.Write))
  :pattern ((img@335@01 true x@333@01 $Perm.Write))
  :qid |quant-u-20586|)))
(assert (forall ((x0 Bool) (x1 $Ref) (x2 $Perm)) (!
  (=>
    (and (img@335@01 x0 x1 x2) (Seq_contains xs@306@01 (inv@334@01 x0 x1 x2)))
    (and (= true x0) (= (inv@334@01 x0 x1 x2) x1) (= $Perm.Write x2)))
  :pattern ((inv@334@01 x0 x1 x2))
  :qid |wand@4-fctOfInv|)))
; Permissons are non-negative
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [exec]
; apply true --* acc(xs[0].f, write)
; [eval] xs[0]
(set-option :timeout 0)
(push) ; 4
(assert (not (< 0 (Seq_length xs@306@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@336@01 ((x0 Bool) (x1 $Ref) (x2 $Perm)) $Perm
  (ite
    (and (= x0 true) (= x1 (Seq_index xs@306@01 0)) (= x2 $Perm.Write))
    ($Perm.min
      (ite
        (and
          (img@335@01 x0 x1 x2)
          (Seq_contains xs@306@01 (inv@334@01 x0 x1 x2)))
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
(assert (not (forall ((x0 Bool) (x1 $Ref) (x2 $Perm)) (!
  (=
    (-
      (ite
        (and
          (img@335@01 x0 x1 x2)
          (Seq_contains xs@306@01 (inv@334@01 x0 x1 x2)))
        $Perm.Write
        $Perm.No)
      (pTaken@336@01 x0 x1 x2))
    $Perm.No)
  
  :qid |quant-u-20588|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x0 Bool) (x1 $Ref) (x2 $Perm)) (!
  (= (pTaken@336@01 x0 x1 x2) $Perm.No)
  
  :qid |quant-u-20589|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x0 Bool) (x1 $Ref) (x2 $Perm)) (!
  (=>
    (and (= x0 true) (= x1 (Seq_index xs@306@01 0)) (= x2 $Perm.Write))
    (= (- $Perm.Write (pTaken@336@01 x0 x1 x2)) $Perm.No))
  
  :qid |quant-u-20590|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@337@01 $PSF<wand@4>)
(declare-const s@338@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (img@335@01 true (Seq_index xs@306@01 0) $Perm.Write)
    (Seq_contains
      xs@306@01
      (inv@334@01 true (Seq_index xs@306@01 0) $Perm.Write)))
  (and
    (not
      (=
        ($Snap.combine
          ($Snap.combine
            ($SortWrappers.BoolTo$Snap true)
            ($SortWrappers.$RefTo$Snap (Seq_index xs@306@01 0)))
          ($SortWrappers.$PermTo$Snap $Perm.Write))
        $Snap.unit))
    (=
      ($PSF.lookup_wand@4 (as sm@337@01  $PSF<wand@4>) ($Snap.combine
        ($Snap.combine
          ($SortWrappers.BoolTo$Snap true)
          ($SortWrappers.$RefTo$Snap (Seq_index xs@306@01 0)))
        ($SortWrappers.$PermTo$Snap $Perm.Write)))
      ($PSF.lookup_wand@4 ($SortWrappers.$SnapTo$PSF<wand@4> (MWSF_apply mwsf@332@01 $Snap.unit)) ($Snap.combine
        ($Snap.combine
          ($SortWrappers.BoolTo$Snap true)
          ($SortWrappers.$RefTo$Snap (Seq_index xs@306@01 0)))
        ($SortWrappers.$PermTo$Snap $Perm.Write)))))))
(assert (=
  $Snap.unit
  ($Snap.first ($PSF.lookup_wand@4 (as sm@337@01  $PSF<wand@4>) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.BoolTo$Snap true)
      ($SortWrappers.$RefTo$Snap (Seq_index xs@306@01 0)))
    ($SortWrappers.$PermTo$Snap $Perm.Write))))))
; [eval] xs[0]
(set-option :timeout 0)
(push) ; 4
(assert (not (< 0 (Seq_length xs@306@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [exec]
; assert xs[0].f == 0
; [eval] xs[0].f == 0
; [eval] xs[0]
(set-option :timeout 0)
(push) ; 4
(assert (not (< 0 (Seq_length xs@306@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(assert (not (=
  ($SortWrappers.$SnapToInt ($Snap.second ($PSF.lookup_wand@4 (as sm@337@01  $PSF<wand@4>) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.BoolTo$Snap true)
      ($SortWrappers.$RefTo$Snap (Seq_index xs@306@01 0)))
    ($SortWrappers.$PermTo$Snap $Perm.Write)))))
  0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.second ($PSF.lookup_wand@4 (as sm@337@01  $PSF<wand@4>) ($Snap.combine
    ($Snap.combine
      ($SortWrappers.BoolTo$Snap true)
      ($SortWrappers.$RefTo$Snap (Seq_index xs@306@01 0)))
    ($SortWrappers.$PermTo$Snap $Perm.Write)))))
  0))
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
(check-sat)
; unknown
(pop) ; 3
(pop) ; 2
(pop) ; 1
