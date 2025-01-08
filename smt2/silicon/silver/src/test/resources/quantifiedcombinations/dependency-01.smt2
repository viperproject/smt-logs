(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-08 21:19:38
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
(declare-sort Set<Seq<Int>> 0)
(declare-sort Set<$Ref> 0)
(declare-sort Set<$Snap> 0)
(declare-sort $FVF<f> 0)
(declare-sort $FVF<g> 0)
(declare-sort $PSF<pred> 0)
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
(declare-fun $SortWrappers.Set<Seq<Int>>To$Snap (Set<Seq<Int>>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<Seq<Int>> ($Snap) Set<Seq<Int>>)
(assert (forall ((x Set<Seq<Int>>)) (!
    (= x ($SortWrappers.$SnapToSet<Seq<Int>>($SortWrappers.Set<Seq<Int>>To$Snap x)))
    :pattern (($SortWrappers.Set<Seq<Int>>To$Snap x))
    :qid |$Snap.$SnapToSet<Seq<Int>>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<Seq<Int>>To$Snap($SortWrappers.$SnapToSet<Seq<Int>> x)))
    :pattern (($SortWrappers.$SnapToSet<Seq<Int>> x))
    :qid |$Snap.Set<Seq<Int>>To$SnapToSet<Seq<Int>>|
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
(declare-fun $SortWrappers.$FVF<g>To$Snap ($FVF<g>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<g> ($Snap) $FVF<g>)
(assert (forall ((x $FVF<g>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<g>($SortWrappers.$FVF<g>To$Snap x)))
    :pattern (($SortWrappers.$FVF<g>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<g>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<g>To$Snap($SortWrappers.$SnapTo$FVF<g> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<g> x))
    :qid |$Snap.$FVF<g>To$SnapTo$FVF<g>|
    )))
; Declaring additional sort wrappers
(declare-fun $SortWrappers.$PSF<pred>To$Snap ($PSF<pred>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<pred> ($Snap) $PSF<pred>)
(assert (forall ((x $PSF<pred>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<pred>($SortWrappers.$PSF<pred>To$Snap x)))
    :pattern (($SortWrappers.$PSF<pred>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<pred>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<pred>To$Snap($SortWrappers.$SnapTo$PSF<pred> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<pred> x))
    :qid |$Snap.$PSF<pred>To$SnapTo$PSF<pred>|
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
(declare-fun Set_card (Set<Seq<Int>>) Int)
(declare-const Set_empty Set<Seq<Int>>)
(declare-fun Set_in (Seq<Int> Set<Seq<Int>>) Bool)
(declare-fun Set_singleton (Seq<Int>) Set<Seq<Int>>)
(declare-fun Set_unionone (Set<Seq<Int>> Seq<Int>) Set<Seq<Int>>)
(declare-fun Set_union (Set<Seq<Int>> Set<Seq<Int>>) Set<Seq<Int>>)
(declare-fun Set_intersection (Set<Seq<Int>> Set<Seq<Int>>) Set<Seq<Int>>)
(declare-fun Set_difference (Set<Seq<Int>> Set<Seq<Int>>) Set<Seq<Int>>)
(declare-fun Set_subset (Set<Seq<Int>> Set<Seq<Int>>) Bool)
(declare-fun Set_equal (Set<Seq<Int>> Set<Seq<Int>>) Bool)
(declare-fun Set_skolem_diff (Set<Seq<Int>> Set<Seq<Int>>) Seq<Int>)
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
; /field_value_functions_declarations.smt2 [g: Int]
(declare-fun $FVF.domain_g ($FVF<g>) Set<$Ref>)
(declare-fun $FVF.lookup_g ($FVF<g> $Ref) Int)
(declare-fun $FVF.after_g ($FVF<g> $FVF<g>) Bool)
(declare-fun $FVF.loc_g (Int $Ref) Bool)
(declare-fun $FVF.perm_g ($FPM $Ref) $Perm)
(declare-const $fvfTOP_g $FVF<g>)
; /predicate_snap_functions_declarations.smt2 [pred: Int]
(declare-fun $PSF.domain_pred ($PSF<pred>) Set<$Snap>)
(declare-fun $PSF.lookup_pred ($PSF<pred> $Snap) Int)
(declare-fun $PSF.after_pred ($PSF<pred> $PSF<pred>) Bool)
(declare-fun $PSF.loc_pred (Int $Snap) Bool)
(declare-fun $PSF.perm_pred ($PPM $Snap) $Perm)
(declare-const $psfTOP_pred $PSF<pred>)
; /predicate_snap_functions_declarations.smt2 [pred2: Snap]
(declare-fun $PSF.domain_pred2 ($PSF<pred2>) Set<$Snap>)
(declare-fun $PSF.lookup_pred2 ($PSF<pred2> $Snap) $Snap)
(declare-fun $PSF.after_pred2 ($PSF<pred2> $PSF<pred2>) Bool)
(declare-fun $PSF.loc_pred2 ($Snap $Snap) Bool)
(declare-fun $PSF.perm_pred2 ($PPM $Snap) $Perm)
(declare-const $psfTOP_pred2 $PSF<pred2>)
; Declaring symbols related to program functions (from program analysis)
(declare-fun get_val ($Snap Seq<$Ref> Int) $Ref)
(declare-fun get_val%limited ($Snap Seq<$Ref> Int) $Ref)
(declare-fun get_val%stateless (Seq<$Ref> Int) Bool)
(declare-fun get_val%precondition ($Snap Seq<$Ref> Int) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun pred%trigger ($Snap $Ref) Bool)
(declare-fun pred2%trigger ($Snap Int) Bool)
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
(assert (forall ((s Set<Seq<Int>>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o Seq<Int>)) (!
  (not (Set_in o (as Set_empty  Set<Seq<Int>>)))
  :pattern ((Set_in o (as Set_empty  Set<Seq<Int>>)))
  )))
(assert (forall ((s Set<Seq<Int>>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<Seq<Int>>)))
    (=> (not (= (Set_card s) 0)) (exists ((x Seq<Int>))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r Seq<Int>)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r Seq<Int>) (o Seq<Int>)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r Seq<Int>)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<Seq<Int>>) (x Seq<Int>) (o Seq<Int>)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<Seq<Int>>) (x Seq<Int>)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<Seq<Int>>) (x Seq<Int>) (y Seq<Int>)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<Seq<Int>>) (x Seq<Int>)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Seq<Int>>) (x Seq<Int>)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Seq<Int>>) (b Set<Seq<Int>>) (o Seq<Int>)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<Seq<Int>>) (b Set<Seq<Int>>) (y Seq<Int>)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<Seq<Int>>) (b Set<Seq<Int>>) (y Seq<Int>)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<Seq<Int>>) (b Set<Seq<Int>>) (o Seq<Int>)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<Seq<Int>>) (b Set<Seq<Int>>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<Seq<Int>>) (b Set<Seq<Int>>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<Seq<Int>>) (b Set<Seq<Int>>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<Seq<Int>>) (b Set<Seq<Int>>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<Seq<Int>>) (b Set<Seq<Int>>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<Seq<Int>>) (b Set<Seq<Int>>) (o Seq<Int>)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<Seq<Int>>) (b Set<Seq<Int>>) (y Seq<Int>)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<Seq<Int>>) (b Set<Seq<Int>>)) (!
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
(assert (forall ((a Set<Seq<Int>>) (b Set<Seq<Int>>)) (!
  (=
    (Set_subset a b)
    (forall ((o Seq<Int>)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<Seq<Int>>) (b Set<Seq<Int>>)) (!
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
(assert (forall ((a Set<Seq<Int>>) (b Set<Seq<Int>>)) (!
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
; /field_value_functions_axioms.smt2 [g: Int]
(assert (forall ((vs $FVF<g>) (ws $FVF<g>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_g vs) ($FVF.domain_g ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_g vs))
            (= ($FVF.lookup_g vs x) ($FVF.lookup_g ws x)))
          :pattern (($FVF.lookup_g vs x) ($FVF.lookup_g ws x))
          :qid |qp.$FVF<g>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<g>To$Snap vs)
              ($SortWrappers.$FVF<g>To$Snap ws)
              )
    :qid |qp.$FVF<g>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_g pm r))
    :pattern (($FVF.perm_g pm r)))))
(assert (forall ((r $Ref) (f Int)) (!
    (= ($FVF.loc_g f r) true)
    :pattern (($FVF.loc_g f r)))))
; /predicate_snap_functions_axioms.smt2 [pred: Int]
(assert (forall ((vs $PSF<pred>) (ws $PSF<pred>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_pred vs) ($PSF.domain_pred ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_pred vs))
            (= ($PSF.lookup_pred vs x) ($PSF.lookup_pred ws x)))
          :pattern (($PSF.lookup_pred vs x) ($PSF.lookup_pred ws x))
          :qid |qp.$PSF<pred>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<pred>To$Snap vs)
              ($SortWrappers.$PSF<pred>To$Snap ws)
              )
    :qid |qp.$PSF<pred>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_pred pm s))
    :pattern (($PSF.perm_pred pm s)))))
(assert (forall ((s $Snap) (f Int)) (!
    (= ($PSF.loc_pred f s) true)
    :pattern (($PSF.loc_pred f s)))))
; /predicate_snap_functions_axioms.smt2 [pred2: Snap]
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
(assert (forall ((s $Snap) (f $Snap)) (!
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
(assert (forall ((s@$ $Snap) (xs@0@00 Seq<$Ref>) (i@1@00 Int)) (!
  (= (get_val%limited s@$ xs@0@00 i@1@00) (get_val s@$ xs@0@00 i@1@00))
  :pattern ((get_val s@$ xs@0@00 i@1@00))
  :qid |quant-u-15839|)))
(assert (forall ((s@$ $Snap) (xs@0@00 Seq<$Ref>) (i@1@00 Int)) (!
  (get_val%stateless xs@0@00 i@1@00)
  :pattern ((get_val%limited s@$ xs@0@00 i@1@00))
  :qid |quant-u-15840|)))
(assert (forall ((s@$ $Snap) (xs@0@00 Seq<$Ref>) (i@1@00 Int)) (!
  (=>
    (get_val%precondition s@$ xs@0@00 i@1@00)
    (= (get_val s@$ xs@0@00 i@1@00) (Seq_index xs@0@00 i@1@00)))
  :pattern ((get_val s@$ xs@0@00 i@1@00))
  :qid |quant-u-15841|)))
(assert (forall ((s@$ $Snap) (xs@0@00 Seq<$Ref>) (i@1@00 Int)) (!
  true
  :pattern ((get_val s@$ xs@0@00 i@1@00))
  :qid |quant-u-15842|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- m1 ----------
(declare-const xs@0@01 Seq<$Ref>)
(declare-const xs@1@01 Seq<$Ref>)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@2@01 $Snap)
(assert (= $t@2@01 ($Snap.combine ($Snap.first $t@2@01) ($Snap.second $t@2@01))))
(declare-const x@3@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@1@01 x@3@01))
(pop) ; 2
(declare-fun inv@4@01 ($Ref) $Ref)
(declare-fun img@5@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@3@01 $Ref) (x2@3@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@1@01 x1@3@01)
      (Seq_contains xs@1@01 x2@3@01)
      (= x1@3@01 x2@3@01))
    (= x1@3@01 x2@3@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@3@01 $Ref)) (!
  (=>
    (Seq_contains xs@1@01 x@3@01)
    (and (= (inv@4@01 x@3@01) x@3@01) (img@5@01 x@3@01)))
  :pattern ((Seq_contains xs@1@01 x@3@01))
  :pattern ((Seq_contains_trigger xs@1@01 x@3@01))
  :pattern ((Seq_contains_trigger xs@1@01 x@3@01))
  :pattern ((inv@4@01 x@3@01))
  :pattern ((img@5@01 x@3@01))
  :qid |quant-u-15844|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@5@01 r) (Seq_contains xs@1@01 (inv@4@01 r))) (= (inv@4@01 r) r))
  :pattern ((inv@4@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@3@01 $Ref)) (!
  (=> (Seq_contains xs@1@01 x@3@01) (not (= x@3@01 $Ref.null)))
  :pattern ((Seq_contains xs@1@01 x@3@01))
  :pattern ((Seq_contains_trigger xs@1@01 x@3@01))
  :pattern ((Seq_contains_trigger xs@1@01 x@3@01))
  :pattern ((inv@4@01 x@3@01))
  :pattern ((img@5@01 x@3@01))
  :qid |f-permImpliesNonNull|)))
(assert (= ($Snap.second $t@2@01) $Snap.unit))
; [eval] (forall x: Ref :: { (x in xs) } (x in xs) ==> x.f > 0)
(declare-const x@6@01 $Ref)
(push) ; 2
; [eval] (x in xs) ==> x.f > 0
; [eval] (x in xs)
(push) ; 3
; [then-branch: 0 | x@6@01 in xs@1@01 | live]
; [else-branch: 0 | !(x@6@01 in xs@1@01) | live]
(push) ; 4
; [then-branch: 0 | x@6@01 in xs@1@01]
(assert (Seq_contains xs@1@01 x@6@01))
; [eval] x.f > 0
(push) ; 5
(assert (not (and (img@5@01 x@6@01) (Seq_contains xs@1@01 (inv@4@01 x@6@01)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 0 | !(x@6@01 in xs@1@01)]
(assert (not (Seq_contains xs@1@01 x@6@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not (Seq_contains xs@1@01 x@6@01)) (Seq_contains xs@1@01 x@6@01)))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@6@01 $Ref)) (!
  (or (not (Seq_contains xs@1@01 x@6@01)) (Seq_contains xs@1@01 x@6@01))
  :pattern ((Seq_contains xs@1@01 x@6@01))
  :pattern ((Seq_contains_trigger xs@1@01 x@6@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@23@12@23@59-aux|)))
(assert (forall ((x@6@01 $Ref)) (!
  (or (not (Seq_contains xs@1@01 x@6@01)) (Seq_contains xs@1@01 x@6@01))
  :pattern ((Seq_contains_trigger xs@1@01 x@6@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@23@12@23@59-aux|)))
(assert (forall ((x@6@01 $Ref)) (!
  (=>
    (Seq_contains xs@1@01 x@6@01)
    (>
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@01)) x@6@01)
      0))
  :pattern ((Seq_contains xs@1@01 x@6@01))
  :pattern ((Seq_contains_trigger xs@1@01 x@6@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@23@12@23@59|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@7@01 $Snap)
(assert (= $t@7@01 ($Snap.combine ($Snap.first $t@7@01) ($Snap.second $t@7@01))))
(declare-const x@8@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@1@01 x@8@01))
(pop) ; 3
(declare-fun inv@9@01 ($Ref) $Ref)
(declare-fun img@10@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@8@01 $Ref) (x2@8@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@1@01 x1@8@01)
      (Seq_contains xs@1@01 x2@8@01)
      (= x1@8@01 x2@8@01))
    (= x1@8@01 x2@8@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@8@01 $Ref)) (!
  (=>
    (Seq_contains xs@1@01 x@8@01)
    (and (= (inv@9@01 x@8@01) x@8@01) (img@10@01 x@8@01)))
  :pattern ((Seq_contains xs@1@01 x@8@01))
  :pattern ((Seq_contains_trigger xs@1@01 x@8@01))
  :pattern ((Seq_contains_trigger xs@1@01 x@8@01))
  :pattern ((inv@9@01 x@8@01))
  :pattern ((img@10@01 x@8@01))
  :qid |quant-u-15846|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@10@01 r) (Seq_contains xs@1@01 (inv@9@01 r))) (= (inv@9@01 r) r))
  :pattern ((inv@9@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@8@01 $Ref)) (!
  (=> (Seq_contains xs@1@01 x@8@01) (not (= x@8@01 $Ref.null)))
  :pattern ((Seq_contains xs@1@01 x@8@01))
  :pattern ((Seq_contains_trigger xs@1@01 x@8@01))
  :pattern ((Seq_contains_trigger xs@1@01 x@8@01))
  :pattern ((inv@9@01 x@8@01))
  :pattern ((img@10@01 x@8@01))
  :qid |f-permImpliesNonNull|)))
(assert (= ($Snap.second $t@7@01) $Snap.unit))
; [eval] (forall x: Ref :: { (x in xs) } (x in xs) ==> x.f > 0)
(declare-const x@11@01 $Ref)
(push) ; 3
; [eval] (x in xs) ==> x.f > 0
; [eval] (x in xs)
(push) ; 4
; [then-branch: 1 | x@11@01 in xs@1@01 | live]
; [else-branch: 1 | !(x@11@01 in xs@1@01) | live]
(push) ; 5
; [then-branch: 1 | x@11@01 in xs@1@01]
(assert (Seq_contains xs@1@01 x@11@01))
; [eval] x.f > 0
(push) ; 6
(assert (not (and (img@10@01 x@11@01) (Seq_contains xs@1@01 (inv@9@01 x@11@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 1 | !(x@11@01 in xs@1@01)]
(assert (not (Seq_contains xs@1@01 x@11@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not (Seq_contains xs@1@01 x@11@01)) (Seq_contains xs@1@01 x@11@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@11@01 $Ref)) (!
  (or (not (Seq_contains xs@1@01 x@11@01)) (Seq_contains xs@1@01 x@11@01))
  :pattern ((Seq_contains xs@1@01 x@11@01))
  :pattern ((Seq_contains_trigger xs@1@01 x@11@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@24@11@24@58-aux|)))
(assert (forall ((x@11@01 $Ref)) (!
  (or (not (Seq_contains xs@1@01 x@11@01)) (Seq_contains xs@1@01 x@11@01))
  :pattern ((Seq_contains_trigger xs@1@01 x@11@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@24@11@24@58-aux|)))
(assert (forall ((x@11@01 $Ref)) (!
  (=>
    (Seq_contains xs@1@01 x@11@01)
    (>
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@7@01)) x@11@01)
      0))
  :pattern ((Seq_contains xs@1@01 x@11@01))
  :pattern ((Seq_contains_trigger xs@1@01 x@11@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@24@11@24@58|)))
(pop) ; 2
(push) ; 2
(declare-const x@12@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@1@01 x@12@01))
(pop) ; 3
(declare-fun inv@13@01 ($Ref) $Ref)
(declare-fun img@14@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@12@01 $Ref) (x2@12@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@1@01 x1@12@01)
      (Seq_contains xs@1@01 x2@12@01)
      (= x1@12@01 x2@12@01))
    (= x1@12@01 x2@12@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@12@01 $Ref)) (!
  (=>
    (Seq_contains xs@1@01 x@12@01)
    (and (= (inv@13@01 x@12@01) x@12@01) (img@14@01 x@12@01)))
  :pattern ((Seq_contains xs@1@01 x@12@01))
  :pattern ((Seq_contains_trigger xs@1@01 x@12@01))
  :pattern ((inv@13@01 x@12@01))
  :pattern ((img@14@01 x@12@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@14@01 r) (Seq_contains xs@1@01 (inv@13@01 r)))
    (= (inv@13@01 r) r))
  :pattern ((inv@13@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@15@01 ((r $Ref)) $Perm
  (ite
    (and (Seq_contains xs@1@01 (inv@13@01 r)) (img@14@01 r) (= r (inv@13@01 r)))
    ($Perm.min
      (ite
        (and (img@5@01 r) (Seq_contains xs@1@01 (inv@4@01 r)))
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
        (and (img@5@01 r) (Seq_contains xs@1@01 (inv@4@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@15@01 r))
    $Perm.No)
  
  :qid |quant-u-15849|))))
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
    (and (Seq_contains xs@1@01 (inv@13@01 r)) (img@14@01 r) (= r (inv@13@01 r)))
    (= (- $Perm.Write (pTaken@15@01 r)) $Perm.No))
  
  :qid |quant-u-15850|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall x: Ref :: { (x in xs) } (x in xs) ==> x.f > 0)
(declare-const x@16@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs) ==> x.f > 0
; [eval] (x in xs)
(push) ; 4
; [then-branch: 2 | x@16@01 in xs@1@01 | live]
; [else-branch: 2 | !(x@16@01 in xs@1@01) | live]
(push) ; 5
; [then-branch: 2 | x@16@01 in xs@1@01]
(assert (Seq_contains xs@1@01 x@16@01))
; [eval] x.f > 0
(push) ; 6
(assert (not (and (img@5@01 x@16@01) (Seq_contains xs@1@01 (inv@4@01 x@16@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 2 | !(x@16@01 in xs@1@01)]
(assert (not (Seq_contains xs@1@01 x@16@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not (Seq_contains xs@1@01 x@16@01)) (Seq_contains xs@1@01 x@16@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@16@01 $Ref)) (!
  (or (not (Seq_contains xs@1@01 x@16@01)) (Seq_contains xs@1@01 x@16@01))
  :pattern ((Seq_contains xs@1@01 x@16@01))
  :pattern ((Seq_contains_trigger xs@1@01 x@16@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@24@11@24@58-aux|)))
(assert (forall ((x@16@01 $Ref)) (!
  (or (not (Seq_contains xs@1@01 x@16@01)) (Seq_contains xs@1@01 x@16@01))
  :pattern ((Seq_contains_trigger xs@1@01 x@16@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@24@11@24@58-aux|)))
(push) ; 3
(assert (not (forall ((x@16@01 $Ref)) (!
  (=>
    (Seq_contains xs@1@01 x@16@01)
    (>
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@01)) x@16@01)
      0))
  :pattern ((Seq_contains xs@1@01 x@16@01))
  :pattern ((Seq_contains_trigger xs@1@01 x@16@01))
  :pattern ((Seq_contains_trigger xs@1@01 x@16@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@24@11@24@58|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((x@16@01 $Ref)) (!
  (=>
    (Seq_contains xs@1@01 x@16@01)
    (>
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@2@01)) x@16@01)
      0))
  :pattern ((Seq_contains xs@1@01 x@16@01))
  :pattern ((Seq_contains_trigger xs@1@01 x@16@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@24@11@24@58|)))
(pop) ; 2
(pop) ; 1
; ---------- m2 ----------
(declare-const xs@17@01 Seq<$Ref>)
(declare-const xs@18@01 Seq<$Ref>)
(push) ; 1
(declare-const $t@19@01 $Snap)
(assert (= $t@19@01 ($Snap.combine ($Snap.first $t@19@01) ($Snap.second $t@19@01))))
(assert (= ($Snap.first $t@19@01) $Snap.unit))
; [eval] (forall x: Ref :: { (x in xs) } (x in xs) ==> x.f > 0)
(declare-const x@20@01 $Ref)
(push) ; 2
; [eval] (x in xs) ==> x.f > 0
; [eval] (x in xs)
(push) ; 3
; [then-branch: 3 | x@20@01 in xs@18@01 | live]
; [else-branch: 3 | !(x@20@01 in xs@18@01) | live]
(push) ; 4
; [then-branch: 3 | x@20@01 in xs@18@01]
(assert (Seq_contains xs@18@01 x@20@01))
; [eval] x.f > 0
(declare-const sm@21@01 $FVF<f>)
; Definitional axioms for snapshot map values
(declare-const pm@22@01 $FPM)
(assert (forall ((r $Ref)) (!
  (= ($FVF.perm_f (as pm@22@01  $FPM) r) $Perm.No)
  :pattern (($FVF.perm_f (as pm@22@01  $FPM) r))
  :qid |qp.resPrmSumDef0|)))
(push) ; 5
(assert (not (< $Perm.No ($FVF.perm_f (as pm@22@01  $FPM) x@20@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- m3_a ----------
(declare-const xs@23@01 Seq<$Ref>)
(declare-const y@24@01 $Ref)
(declare-const xs@25@01 Seq<$Ref>)
(declare-const y@26@01 $Ref)
(push) ; 1
(declare-const $t@27@01 $Snap)
(assert (= $t@27@01 ($Snap.combine ($Snap.first $t@27@01) ($Snap.second $t@27@01))))
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
  
  :qid |pred-rcvrInj|))))
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
  :qid |quant-u-15852|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@30@01 x) (Seq_contains xs@25@01 (inv@29@01 x)))
    (= (inv@29@01 x) x))
  :pattern ((inv@29@01 x))
  :qid |pred-fctOfInv|)))
; Permissions are non-negative
(assert (=
  ($Snap.second $t@27@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@27@01))
    ($Snap.second ($Snap.second $t@27@01)))))
(assert (= ($Snap.first ($Snap.second $t@27@01)) $Snap.unit))
; [eval] (forall x: Ref :: { (x in xs) } (x in xs) ==> (unfolding acc(pred(x), write) in true))
(declare-const x@31@01 $Ref)
(push) ; 2
; [eval] (x in xs) ==> (unfolding acc(pred(x), write) in true)
; [eval] (x in xs)
(push) ; 3
; [then-branch: 4 | x@31@01 in xs@25@01 | live]
; [else-branch: 4 | !(x@31@01 in xs@25@01) | live]
(push) ; 4
; [then-branch: 4 | x@31@01 in xs@25@01]
(assert (Seq_contains xs@25@01 x@31@01))
; [eval] (unfolding acc(pred(x), write) in true)
(push) ; 5
; Precomputing data for removing quantified permissions
(define-fun pTaken@32@01 ((x $Ref) (x@31@01 $Ref)) $Perm
  (ite
    (= x x@31@01)
    ($Perm.min
      (ite
        (and (img@30@01 x) (Seq_contains xs@25@01 (inv@29@01 x)))
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
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite
        (and (img@30@01 x) (Seq_contains xs@25@01 (inv@29@01 x)))
        $Perm.Write
        $Perm.No)
      (pTaken@32@01 x x@31@01))
    $Perm.No)
  
  :qid |quant-u-15854|))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (pTaken@32@01 x x@31@01) $Perm.No)
  
  :qid |quant-u-15855|))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@31@01) (= (- $Perm.Write (pTaken@32@01 x x@31@01)) $Perm.No))
  
  :qid |quant-u-15856|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@33@01 $PSF<pred>)
(declare-const s@34@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and (img@30@01 x@31@01) (Seq_contains xs@25@01 (inv@29@01 x@31@01)))
  (and
    (not (= ($SortWrappers.$RefTo$Snap x@31@01) $Snap.unit))
    (=
      ($PSF.lookup_pred (as sm@33@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@31@01))
      ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first $t@27@01)) ($SortWrappers.$RefTo$Snap x@31@01))))))
(assert (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@33@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@31@01))) x@31@01))
(assert (not (= x@31@01 $Ref.null)))
(pop) ; 5
; Joined path conditions
(assert (and
  (=>
    (and (img@30@01 x@31@01) (Seq_contains xs@25@01 (inv@29@01 x@31@01)))
    (and
      (not (= ($SortWrappers.$RefTo$Snap x@31@01) $Snap.unit))
      (=
        ($PSF.lookup_pred (as sm@33@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@31@01))
        ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first $t@27@01)) ($SortWrappers.$RefTo$Snap x@31@01)))))
  (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@33@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@31@01))) x@31@01)
  (not (= x@31@01 $Ref.null))))
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [else-branch: 4 | !(x@31@01 in xs@25@01)]
(assert (not (Seq_contains xs@25@01 x@31@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (Seq_contains xs@25@01 x@31@01)
  (and
    (Seq_contains xs@25@01 x@31@01)
    (=>
      (and (img@30@01 x@31@01) (Seq_contains xs@25@01 (inv@29@01 x@31@01)))
      (and
        (not (= ($SortWrappers.$RefTo$Snap x@31@01) $Snap.unit))
        (=
          ($PSF.lookup_pred (as sm@33@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@31@01))
          ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first $t@27@01)) ($SortWrappers.$RefTo$Snap x@31@01)))))
    (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@33@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@31@01))) x@31@01)
    (not (= x@31@01 $Ref.null)))))
; Joined path conditions
(assert (or (not (Seq_contains xs@25@01 x@31@01)) (Seq_contains xs@25@01 x@31@01)))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@31@01 $Ref)) (!
  (and
    (=>
      (Seq_contains xs@25@01 x@31@01)
      (and
        (Seq_contains xs@25@01 x@31@01)
        (=>
          (and (img@30@01 x@31@01) (Seq_contains xs@25@01 (inv@29@01 x@31@01)))
          (and
            (not (= ($SortWrappers.$RefTo$Snap x@31@01) $Snap.unit))
            (=
              ($PSF.lookup_pred (as sm@33@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@31@01))
              ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first $t@27@01)) ($SortWrappers.$RefTo$Snap x@31@01)))))
        (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@33@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@31@01))) x@31@01)
        (not (= x@31@01 $Ref.null))))
    (or (not (Seq_contains xs@25@01 x@31@01)) (Seq_contains xs@25@01 x@31@01)))
  :pattern ((Seq_contains xs@25@01 x@31@01))
  :pattern ((Seq_contains_trigger xs@25@01 x@31@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@35@12@35@82-aux|)))
(assert (forall ((x@31@01 $Ref)) (!
  (and
    (=>
      (Seq_contains xs@25@01 x@31@01)
      (and
        (Seq_contains xs@25@01 x@31@01)
        (=>
          (and (img@30@01 x@31@01) (Seq_contains xs@25@01 (inv@29@01 x@31@01)))
          (and
            (not (= ($SortWrappers.$RefTo$Snap x@31@01) $Snap.unit))
            (=
              ($PSF.lookup_pred (as sm@33@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@31@01))
              ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first $t@27@01)) ($SortWrappers.$RefTo$Snap x@31@01)))))
        (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@33@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@31@01))) x@31@01)
        (not (= x@31@01 $Ref.null))))
    (or (not (Seq_contains xs@25@01 x@31@01)) (Seq_contains xs@25@01 x@31@01)))
  :pattern ((Seq_contains_trigger xs@25@01 x@31@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@35@12@35@82-aux|)))
(assert (= ($Snap.second ($Snap.second $t@27@01)) $Snap.unit))
; [eval] (y in xs)
(assert (Seq_contains xs@25@01 y@26@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@35@01 $Snap)
(assert (= $t@35@01 ($Snap.combine ($Snap.first $t@35@01) ($Snap.second $t@35@01))))
(declare-const x@36@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@25@01 x@36@01))
(pop) ; 3
(declare-fun inv@37@01 ($Ref) $Ref)
(declare-fun img@38@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@36@01 $Ref) (x2@36@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@25@01 x1@36@01)
      (Seq_contains xs@25@01 x2@36@01)
      (= x1@36@01 x2@36@01))
    (= x1@36@01 x2@36@01))
  
  :qid |pred-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@36@01 $Ref)) (!
  (=>
    (Seq_contains xs@25@01 x@36@01)
    (and (= (inv@37@01 x@36@01) x@36@01) (img@38@01 x@36@01)))
  :pattern ((Seq_contains xs@25@01 x@36@01))
  :pattern ((Seq_contains_trigger xs@25@01 x@36@01))
  :pattern ((Seq_contains_trigger xs@25@01 x@36@01))
  :pattern ((inv@37@01 x@36@01))
  :pattern ((img@38@01 x@36@01))
  :qid |quant-u-15858|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@38@01 x) (Seq_contains xs@25@01 (inv@37@01 x)))
    (= (inv@37@01 x) x))
  :pattern ((inv@37@01 x))
  :qid |pred-fctOfInv|)))
; Permissions are non-negative
(assert (= ($Snap.second $t@35@01) $Snap.unit))
; [eval] (forall x: Ref :: { (x in xs) } (x in xs) ==> (unfolding acc(pred(x), write) in true))
(declare-const x@39@01 $Ref)
(push) ; 3
; [eval] (x in xs) ==> (unfolding acc(pred(x), write) in true)
; [eval] (x in xs)
(push) ; 4
; [then-branch: 5 | x@39@01 in xs@25@01 | live]
; [else-branch: 5 | !(x@39@01 in xs@25@01) | live]
(push) ; 5
; [then-branch: 5 | x@39@01 in xs@25@01]
(assert (Seq_contains xs@25@01 x@39@01))
; [eval] (unfolding acc(pred(x), write) in true)
(push) ; 6
; Precomputing data for removing quantified permissions
(define-fun pTaken@40@01 ((x $Ref) (x@39@01 $Ref)) $Perm
  (ite
    (= x x@39@01)
    ($Perm.min
      (ite
        (and (img@38@01 x) (Seq_contains xs@25@01 (inv@37@01 x)))
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
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite
        (and (img@38@01 x) (Seq_contains xs@25@01 (inv@37@01 x)))
        $Perm.Write
        $Perm.No)
      (pTaken@40@01 x x@39@01))
    $Perm.No)
  
  :qid |quant-u-15860|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (pTaken@40@01 x x@39@01) $Perm.No)
  
  :qid |quant-u-15861|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@39@01) (= (- $Perm.Write (pTaken@40@01 x x@39@01)) $Perm.No))
  
  :qid |quant-u-15862|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@41@01 $PSF<pred>)
(declare-const s@42@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and (img@38@01 x@39@01) (Seq_contains xs@25@01 (inv@37@01 x@39@01)))
  (and
    (not (= ($SortWrappers.$RefTo$Snap x@39@01) $Snap.unit))
    (=
      ($PSF.lookup_pred (as sm@41@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@39@01))
      ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first $t@35@01)) ($SortWrappers.$RefTo$Snap x@39@01))))))
(assert (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@41@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@39@01))) x@39@01))
(assert (not (= x@39@01 $Ref.null)))
(pop) ; 6
; Joined path conditions
(assert (and
  (=>
    (and (img@38@01 x@39@01) (Seq_contains xs@25@01 (inv@37@01 x@39@01)))
    (and
      (not (= ($SortWrappers.$RefTo$Snap x@39@01) $Snap.unit))
      (=
        ($PSF.lookup_pred (as sm@41@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@39@01))
        ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first $t@35@01)) ($SortWrappers.$RefTo$Snap x@39@01)))))
  (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@41@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@39@01))) x@39@01)
  (not (= x@39@01 $Ref.null))))
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 5 | !(x@39@01 in xs@25@01)]
(assert (not (Seq_contains xs@25@01 x@39@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (Seq_contains xs@25@01 x@39@01)
  (and
    (Seq_contains xs@25@01 x@39@01)
    (=>
      (and (img@38@01 x@39@01) (Seq_contains xs@25@01 (inv@37@01 x@39@01)))
      (and
        (not (= ($SortWrappers.$RefTo$Snap x@39@01) $Snap.unit))
        (=
          ($PSF.lookup_pred (as sm@41@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@39@01))
          ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first $t@35@01)) ($SortWrappers.$RefTo$Snap x@39@01)))))
    (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@41@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@39@01))) x@39@01)
    (not (= x@39@01 $Ref.null)))))
; Joined path conditions
(assert (or (not (Seq_contains xs@25@01 x@39@01)) (Seq_contains xs@25@01 x@39@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@39@01 $Ref)) (!
  (and
    (=>
      (Seq_contains xs@25@01 x@39@01)
      (and
        (Seq_contains xs@25@01 x@39@01)
        (=>
          (and (img@38@01 x@39@01) (Seq_contains xs@25@01 (inv@37@01 x@39@01)))
          (and
            (not (= ($SortWrappers.$RefTo$Snap x@39@01) $Snap.unit))
            (=
              ($PSF.lookup_pred (as sm@41@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@39@01))
              ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first $t@35@01)) ($SortWrappers.$RefTo$Snap x@39@01)))))
        (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@41@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@39@01))) x@39@01)
        (not (= x@39@01 $Ref.null))))
    (or (not (Seq_contains xs@25@01 x@39@01)) (Seq_contains xs@25@01 x@39@01)))
  :pattern ((Seq_contains xs@25@01 x@39@01))
  :pattern ((Seq_contains_trigger xs@25@01 x@39@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@37@11@37@80-aux|)))
(assert (forall ((x@39@01 $Ref)) (!
  (and
    (=>
      (Seq_contains xs@25@01 x@39@01)
      (and
        (Seq_contains xs@25@01 x@39@01)
        (=>
          (and (img@38@01 x@39@01) (Seq_contains xs@25@01 (inv@37@01 x@39@01)))
          (and
            (not (= ($SortWrappers.$RefTo$Snap x@39@01) $Snap.unit))
            (=
              ($PSF.lookup_pred (as sm@41@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@39@01))
              ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first $t@35@01)) ($SortWrappers.$RefTo$Snap x@39@01)))))
        (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@41@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@39@01))) x@39@01)
        (not (= x@39@01 $Ref.null))))
    (or (not (Seq_contains xs@25@01 x@39@01)) (Seq_contains xs@25@01 x@39@01)))
  :pattern ((Seq_contains_trigger xs@25@01 x@39@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@37@11@37@80-aux|)))
(pop) ; 2
(push) ; 2
(declare-const x@43@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@25@01 x@43@01))
(pop) ; 3
(declare-fun inv@44@01 ($Ref) $Ref)
(declare-fun img@45@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@43@01 $Ref) (x2@43@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@25@01 x1@43@01)
      (Seq_contains xs@25@01 x2@43@01)
      (= x1@43@01 x2@43@01))
    (= x1@43@01 x2@43@01))
  
  :qid |pred-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@43@01 $Ref)) (!
  (=>
    (Seq_contains xs@25@01 x@43@01)
    (and (= (inv@44@01 x@43@01) x@43@01) (img@45@01 x@43@01)))
  :pattern ((Seq_contains xs@25@01 x@43@01))
  :pattern ((Seq_contains_trigger xs@25@01 x@43@01))
  :pattern ((inv@44@01 x@43@01))
  :pattern ((img@45@01 x@43@01))
  :qid |pred-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@45@01 x) (Seq_contains xs@25@01 (inv@44@01 x)))
    (= (inv@44@01 x) x))
  :pattern ((inv@44@01 x))
  :qid |pred-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@46@01 ((x $Ref)) $Perm
  (ite
    (and (Seq_contains xs@25@01 (inv@44@01 x)) (img@45@01 x) (= x (inv@44@01 x)))
    ($Perm.min
      (ite
        (and (img@30@01 x) (Seq_contains xs@25@01 (inv@29@01 x)))
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
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite
        (and (img@30@01 x) (Seq_contains xs@25@01 (inv@29@01 x)))
        $Perm.Write
        $Perm.No)
      (pTaken@46@01 x))
    $Perm.No)
  
  :qid |quant-u-15865|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (Seq_contains xs@25@01 (inv@44@01 x)) (img@45@01 x) (= x (inv@44@01 x)))
    (= (- $Perm.Write (pTaken@46@01 x)) $Perm.No))
  
  :qid |quant-u-15866|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall x: Ref :: { (x in xs) } (x in xs) ==> (unfolding acc(pred(x), write) in true))
(declare-const x@47@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs) ==> (unfolding acc(pred(x), write) in true)
; [eval] (x in xs)
(push) ; 4
; [then-branch: 6 | x@47@01 in xs@25@01 | live]
; [else-branch: 6 | !(x@47@01 in xs@25@01) | live]
(push) ; 5
; [then-branch: 6 | x@47@01 in xs@25@01]
(assert (Seq_contains xs@25@01 x@47@01))
; [eval] (unfolding acc(pred(x), write) in true)
(push) ; 6
; Precomputing data for removing quantified permissions
(define-fun pTaken@48@01 ((x $Ref) (x@47@01 $Ref)) $Perm
  (ite
    (= x x@47@01)
    ($Perm.min
      (ite
        (and (img@30@01 x) (Seq_contains xs@25@01 (inv@29@01 x)))
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
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite
        (and (img@30@01 x) (Seq_contains xs@25@01 (inv@29@01 x)))
        $Perm.Write
        $Perm.No)
      (pTaken@48@01 x x@47@01))
    $Perm.No)
  
  :qid |quant-u-15868|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (pTaken@48@01 x x@47@01) $Perm.No)
  
  :qid |quant-u-15869|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@47@01) (= (- $Perm.Write (pTaken@48@01 x x@47@01)) $Perm.No))
  
  :qid |quant-u-15870|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and (img@30@01 x@47@01) (Seq_contains xs@25@01 (inv@29@01 x@47@01)))
  (and
    (not (= ($SortWrappers.$RefTo$Snap x@47@01) $Snap.unit))
    (=
      ($PSF.lookup_pred (as sm@33@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@47@01))
      ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first $t@27@01)) ($SortWrappers.$RefTo$Snap x@47@01))))))
(assert (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@33@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@47@01))) x@47@01))
(assert (not (= x@47@01 $Ref.null)))
(pop) ; 6
; Joined path conditions
(assert (and
  (=>
    (and (img@30@01 x@47@01) (Seq_contains xs@25@01 (inv@29@01 x@47@01)))
    (and
      (not (= ($SortWrappers.$RefTo$Snap x@47@01) $Snap.unit))
      (=
        ($PSF.lookup_pred (as sm@33@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@47@01))
        ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first $t@27@01)) ($SortWrappers.$RefTo$Snap x@47@01)))))
  (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@33@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@47@01))) x@47@01)
  (not (= x@47@01 $Ref.null))))
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 6 | !(x@47@01 in xs@25@01)]
(assert (not (Seq_contains xs@25@01 x@47@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (Seq_contains xs@25@01 x@47@01)
  (and
    (Seq_contains xs@25@01 x@47@01)
    (=>
      (and (img@30@01 x@47@01) (Seq_contains xs@25@01 (inv@29@01 x@47@01)))
      (and
        (not (= ($SortWrappers.$RefTo$Snap x@47@01) $Snap.unit))
        (=
          ($PSF.lookup_pred (as sm@33@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@47@01))
          ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first $t@27@01)) ($SortWrappers.$RefTo$Snap x@47@01)))))
    (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@33@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@47@01))) x@47@01)
    (not (= x@47@01 $Ref.null)))))
; Joined path conditions
(assert (or (not (Seq_contains xs@25@01 x@47@01)) (Seq_contains xs@25@01 x@47@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@47@01 $Ref)) (!
  (and
    (=>
      (Seq_contains xs@25@01 x@47@01)
      (and
        (Seq_contains xs@25@01 x@47@01)
        (=>
          (and (img@30@01 x@47@01) (Seq_contains xs@25@01 (inv@29@01 x@47@01)))
          (and
            (not (= ($SortWrappers.$RefTo$Snap x@47@01) $Snap.unit))
            (=
              ($PSF.lookup_pred (as sm@33@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@47@01))
              ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first $t@27@01)) ($SortWrappers.$RefTo$Snap x@47@01)))))
        (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@33@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@47@01))) x@47@01)
        (not (= x@47@01 $Ref.null))))
    (or (not (Seq_contains xs@25@01 x@47@01)) (Seq_contains xs@25@01 x@47@01)))
  :pattern ((Seq_contains xs@25@01 x@47@01))
  :pattern ((Seq_contains_trigger xs@25@01 x@47@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@37@11@37@80-aux|)))
(assert (forall ((x@47@01 $Ref)) (!
  (and
    (=>
      (Seq_contains xs@25@01 x@47@01)
      (and
        (Seq_contains xs@25@01 x@47@01)
        (=>
          (and (img@30@01 x@47@01) (Seq_contains xs@25@01 (inv@29@01 x@47@01)))
          (and
            (not (= ($SortWrappers.$RefTo$Snap x@47@01) $Snap.unit))
            (=
              ($PSF.lookup_pred (as sm@33@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@47@01))
              ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first $t@27@01)) ($SortWrappers.$RefTo$Snap x@47@01)))))
        (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@33@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@47@01))) x@47@01)
        (not (= x@47@01 $Ref.null))))
    (or (not (Seq_contains xs@25@01 x@47@01)) (Seq_contains xs@25@01 x@47@01)))
  :pattern ((Seq_contains_trigger xs@25@01 x@47@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@37@11@37@80-aux|)))
(pop) ; 2
(pop) ; 1
; ---------- m3_b ----------
(declare-const xs@49@01 Seq<$Ref>)
(declare-const y@50@01 $Ref)
(declare-const xs@51@01 Seq<$Ref>)
(declare-const y@52@01 $Ref)
(push) ; 1
(declare-const $t@53@01 $Snap)
(assert (= $t@53@01 ($Snap.combine ($Snap.first $t@53@01) ($Snap.second $t@53@01))))
(declare-const x@54@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@51@01 x@54@01))
(pop) ; 2
(declare-fun inv@55@01 ($Ref) $Ref)
(declare-fun img@56@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@54@01 $Ref) (x2@54@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@51@01 x1@54@01)
      (Seq_contains xs@51@01 x2@54@01)
      (= x1@54@01 x2@54@01))
    (= x1@54@01 x2@54@01))
  
  :qid |pred-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@54@01 $Ref)) (!
  (=>
    (Seq_contains xs@51@01 x@54@01)
    (and (= (inv@55@01 x@54@01) x@54@01) (img@56@01 x@54@01)))
  :pattern ((Seq_contains xs@51@01 x@54@01))
  :pattern ((Seq_contains_trigger xs@51@01 x@54@01))
  :pattern ((Seq_contains_trigger xs@51@01 x@54@01))
  :pattern ((inv@55@01 x@54@01))
  :pattern ((img@56@01 x@54@01))
  :qid |quant-u-15872|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@56@01 x) (Seq_contains xs@51@01 (inv@55@01 x)))
    (= (inv@55@01 x) x))
  :pattern ((inv@55@01 x))
  :qid |pred-fctOfInv|)))
; Permissions are non-negative
(assert (=
  ($Snap.second $t@53@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@53@01))
    ($Snap.second ($Snap.second $t@53@01)))))
(assert (= ($Snap.first ($Snap.second $t@53@01)) $Snap.unit))
; [eval] (forall x: Ref :: { (x in xs) } (x in xs) ==> (unfolding acc(pred(x), write) in true))
(declare-const x@57@01 $Ref)
(push) ; 2
; [eval] (x in xs) ==> (unfolding acc(pred(x), write) in true)
; [eval] (x in xs)
(push) ; 3
; [then-branch: 7 | x@57@01 in xs@51@01 | live]
; [else-branch: 7 | !(x@57@01 in xs@51@01) | live]
(push) ; 4
; [then-branch: 7 | x@57@01 in xs@51@01]
(assert (Seq_contains xs@51@01 x@57@01))
; [eval] (unfolding acc(pred(x), write) in true)
(push) ; 5
; Precomputing data for removing quantified permissions
(define-fun pTaken@58@01 ((x $Ref) (x@57@01 $Ref)) $Perm
  (ite
    (= x x@57@01)
    ($Perm.min
      (ite
        (and (img@56@01 x) (Seq_contains xs@51@01 (inv@55@01 x)))
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
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite
        (and (img@56@01 x) (Seq_contains xs@51@01 (inv@55@01 x)))
        $Perm.Write
        $Perm.No)
      (pTaken@58@01 x x@57@01))
    $Perm.No)
  
  :qid |quant-u-15874|))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (pTaken@58@01 x x@57@01) $Perm.No)
  
  :qid |quant-u-15875|))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@57@01) (= (- $Perm.Write (pTaken@58@01 x x@57@01)) $Perm.No))
  
  :qid |quant-u-15876|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@59@01 $PSF<pred>)
(declare-const s@60@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and (img@56@01 x@57@01) (Seq_contains xs@51@01 (inv@55@01 x@57@01)))
  (and
    (not (= ($SortWrappers.$RefTo$Snap x@57@01) $Snap.unit))
    (=
      ($PSF.lookup_pred (as sm@59@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@57@01))
      ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first $t@53@01)) ($SortWrappers.$RefTo$Snap x@57@01))))))
(assert (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@59@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@57@01))) x@57@01))
(assert (not (= x@57@01 $Ref.null)))
(pop) ; 5
; Joined path conditions
(assert (and
  (=>
    (and (img@56@01 x@57@01) (Seq_contains xs@51@01 (inv@55@01 x@57@01)))
    (and
      (not (= ($SortWrappers.$RefTo$Snap x@57@01) $Snap.unit))
      (=
        ($PSF.lookup_pred (as sm@59@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@57@01))
        ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first $t@53@01)) ($SortWrappers.$RefTo$Snap x@57@01)))))
  (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@59@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@57@01))) x@57@01)
  (not (= x@57@01 $Ref.null))))
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [else-branch: 7 | !(x@57@01 in xs@51@01)]
(assert (not (Seq_contains xs@51@01 x@57@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (Seq_contains xs@51@01 x@57@01)
  (and
    (Seq_contains xs@51@01 x@57@01)
    (=>
      (and (img@56@01 x@57@01) (Seq_contains xs@51@01 (inv@55@01 x@57@01)))
      (and
        (not (= ($SortWrappers.$RefTo$Snap x@57@01) $Snap.unit))
        (=
          ($PSF.lookup_pred (as sm@59@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@57@01))
          ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first $t@53@01)) ($SortWrappers.$RefTo$Snap x@57@01)))))
    (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@59@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@57@01))) x@57@01)
    (not (= x@57@01 $Ref.null)))))
; Joined path conditions
(assert (or (not (Seq_contains xs@51@01 x@57@01)) (Seq_contains xs@51@01 x@57@01)))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@57@01 $Ref)) (!
  (and
    (=>
      (Seq_contains xs@51@01 x@57@01)
      (and
        (Seq_contains xs@51@01 x@57@01)
        (=>
          (and (img@56@01 x@57@01) (Seq_contains xs@51@01 (inv@55@01 x@57@01)))
          (and
            (not (= ($SortWrappers.$RefTo$Snap x@57@01) $Snap.unit))
            (=
              ($PSF.lookup_pred (as sm@59@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@57@01))
              ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first $t@53@01)) ($SortWrappers.$RefTo$Snap x@57@01)))))
        (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@59@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@57@01))) x@57@01)
        (not (= x@57@01 $Ref.null))))
    (or (not (Seq_contains xs@51@01 x@57@01)) (Seq_contains xs@51@01 x@57@01)))
  :pattern ((Seq_contains xs@51@01 x@57@01))
  :pattern ((Seq_contains_trigger xs@51@01 x@57@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@41@12@41@83-aux|)))
(assert (forall ((x@57@01 $Ref)) (!
  (and
    (=>
      (Seq_contains xs@51@01 x@57@01)
      (and
        (Seq_contains xs@51@01 x@57@01)
        (=>
          (and (img@56@01 x@57@01) (Seq_contains xs@51@01 (inv@55@01 x@57@01)))
          (and
            (not (= ($SortWrappers.$RefTo$Snap x@57@01) $Snap.unit))
            (=
              ($PSF.lookup_pred (as sm@59@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@57@01))
              ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first $t@53@01)) ($SortWrappers.$RefTo$Snap x@57@01)))))
        (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@59@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@57@01))) x@57@01)
        (not (= x@57@01 $Ref.null))))
    (or (not (Seq_contains xs@51@01 x@57@01)) (Seq_contains xs@51@01 x@57@01)))
  :pattern ((Seq_contains_trigger xs@51@01 x@57@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@41@12@41@83-aux|)))
(assert (= ($Snap.second ($Snap.second $t@53@01)) $Snap.unit))
; [eval] (y in xs)
(assert (Seq_contains xs@51@01 y@52@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@61@01 $Snap)
(assert (= $t@61@01 ($Snap.combine ($Snap.first $t@61@01) ($Snap.second $t@61@01))))
(assert (= ($Snap.first $t@61@01) $Snap.unit))
; [eval] (forall x: Ref :: { (x in xs) } (x in xs) ==> (unfolding acc(pred(x), write) in true))
(declare-const x@62@01 $Ref)
(push) ; 3
; [eval] (x in xs) ==> (unfolding acc(pred(x), write) in true)
; [eval] (x in xs)
(push) ; 4
; [then-branch: 8 | x@62@01 in xs@51@01 | live]
; [else-branch: 8 | !(x@62@01 in xs@51@01) | live]
(push) ; 5
; [then-branch: 8 | x@62@01 in xs@51@01]
(assert (Seq_contains xs@51@01 x@62@01))
; [eval] (unfolding acc(pred(x), write) in true)
(push) ; 6
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 7
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@62@01) false)
  
  :qid |quant-u-15877|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
; [state consolidation]
; State saturation: before repetition
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
(push) ; 7
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@62@01) false)
  
  :qid |quant-u-15878|))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- m4 ----------
(declare-const xs@63@01 Seq<$Ref>)
(declare-const xs@64@01 Seq<$Ref>)
(push) ; 1
(declare-const $t@65@01 $Snap)
(assert (= $t@65@01 ($Snap.combine ($Snap.first $t@65@01) ($Snap.second $t@65@01))))
(declare-const x@66@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@64@01 x@66@01))
(pop) ; 2
(declare-fun inv@67@01 ($Ref) $Ref)
(declare-fun img@68@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@66@01 $Ref) (x2@66@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@64@01 x1@66@01)
      (Seq_contains xs@64@01 x2@66@01)
      (= x1@66@01 x2@66@01))
    (= x1@66@01 x2@66@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@66@01 $Ref)) (!
  (=>
    (Seq_contains xs@64@01 x@66@01)
    (and (= (inv@67@01 x@66@01) x@66@01) (img@68@01 x@66@01)))
  :pattern ((Seq_contains xs@64@01 x@66@01))
  :pattern ((Seq_contains_trigger xs@64@01 x@66@01))
  :pattern ((Seq_contains_trigger xs@64@01 x@66@01))
  :pattern ((inv@67@01 x@66@01))
  :pattern ((img@68@01 x@66@01))
  :qid |quant-u-15880|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@68@01 r) (Seq_contains xs@64@01 (inv@67@01 r)))
    (= (inv@67@01 r) r))
  :pattern ((inv@67@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@66@01 $Ref)) (!
  (=> (Seq_contains xs@64@01 x@66@01) (not (= x@66@01 $Ref.null)))
  :pattern ((Seq_contains xs@64@01 x@66@01))
  :pattern ((Seq_contains_trigger xs@64@01 x@66@01))
  :pattern ((Seq_contains_trigger xs@64@01 x@66@01))
  :pattern ((inv@67@01 x@66@01))
  :pattern ((img@68@01 x@66@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@65@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@65@01))
    ($Snap.second ($Snap.second $t@65@01)))))
(assert (= ($Snap.first ($Snap.second $t@65@01)) $Snap.unit))
; [eval] (forall ix: Ref, jx: Ref :: { (ix in xs), (jx in xs) } (ix in xs) && ((jx in xs) && ix != jx) ==> ix.f != jx.f)
(declare-const ix@69@01 $Ref)
(declare-const jx@70@01 $Ref)
(push) ; 2
; [eval] (ix in xs) && ((jx in xs) && ix != jx) ==> ix.f != jx.f
; [eval] (ix in xs) && ((jx in xs) && ix != jx)
; [eval] (ix in xs)
(push) ; 3
; [then-branch: 9 | !(ix@69@01 in xs@64@01) | live]
; [else-branch: 9 | ix@69@01 in xs@64@01 | live]
(push) ; 4
; [then-branch: 9 | !(ix@69@01 in xs@64@01)]
(assert (not (Seq_contains xs@64@01 ix@69@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 9 | ix@69@01 in xs@64@01]
(assert (Seq_contains xs@64@01 ix@69@01))
; [eval] (jx in xs)
(push) ; 5
; [then-branch: 10 | !(jx@70@01 in xs@64@01) | live]
; [else-branch: 10 | jx@70@01 in xs@64@01 | live]
(push) ; 6
; [then-branch: 10 | !(jx@70@01 in xs@64@01)]
(assert (not (Seq_contains xs@64@01 jx@70@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 10 | jx@70@01 in xs@64@01]
(assert (Seq_contains xs@64@01 jx@70@01))
; [eval] ix != jx
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (Seq_contains xs@64@01 jx@70@01) (not (Seq_contains xs@64@01 jx@70@01))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains xs@64@01 ix@69@01)
  (and
    (Seq_contains xs@64@01 ix@69@01)
    (or (Seq_contains xs@64@01 jx@70@01) (not (Seq_contains xs@64@01 jx@70@01))))))
(assert (or (Seq_contains xs@64@01 ix@69@01) (not (Seq_contains xs@64@01 ix@69@01))))
(push) ; 3
; [then-branch: 11 | ix@69@01 in xs@64@01 && jx@70@01 in xs@64@01 && ix@69@01 != jx@70@01 | live]
; [else-branch: 11 | !(ix@69@01 in xs@64@01 && jx@70@01 in xs@64@01 && ix@69@01 != jx@70@01) | live]
(push) ; 4
; [then-branch: 11 | ix@69@01 in xs@64@01 && jx@70@01 in xs@64@01 && ix@69@01 != jx@70@01]
(assert (and
  (Seq_contains xs@64@01 ix@69@01)
  (and (Seq_contains xs@64@01 jx@70@01) (not (= ix@69@01 jx@70@01)))))
; [eval] ix.f != jx.f
(push) ; 5
(assert (not (and (img@68@01 ix@69@01) (Seq_contains xs@64@01 (inv@67@01 ix@69@01)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(push) ; 5
(assert (not (and (img@68@01 jx@70@01) (Seq_contains xs@64@01 (inv@67@01 jx@70@01)))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 11 | !(ix@69@01 in xs@64@01 && jx@70@01 in xs@64@01 && ix@69@01 != jx@70@01)]
(assert (not
  (and
    (Seq_contains xs@64@01 ix@69@01)
    (and (Seq_contains xs@64@01 jx@70@01) (not (= ix@69@01 jx@70@01))))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (and
    (Seq_contains xs@64@01 ix@69@01)
    (and (Seq_contains xs@64@01 jx@70@01) (not (= ix@69@01 jx@70@01))))
  (and
    (Seq_contains xs@64@01 ix@69@01)
    (Seq_contains xs@64@01 jx@70@01)
    (not (= ix@69@01 jx@70@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains xs@64@01 ix@69@01)
      (and (Seq_contains xs@64@01 jx@70@01) (not (= ix@69@01 jx@70@01)))))
  (and
    (Seq_contains xs@64@01 ix@69@01)
    (and (Seq_contains xs@64@01 jx@70@01) (not (= ix@69@01 jx@70@01))))))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((ix@69@01 $Ref) (jx@70@01 $Ref)) (!
  (and
    (=>
      (Seq_contains xs@64@01 ix@69@01)
      (and
        (Seq_contains xs@64@01 ix@69@01)
        (or
          (Seq_contains xs@64@01 jx@70@01)
          (not (Seq_contains xs@64@01 jx@70@01)))))
    (or (Seq_contains xs@64@01 ix@69@01) (not (Seq_contains xs@64@01 ix@69@01)))
    (=>
      (and
        (Seq_contains xs@64@01 ix@69@01)
        (and (Seq_contains xs@64@01 jx@70@01) (not (= ix@69@01 jx@70@01))))
      (and
        (Seq_contains xs@64@01 ix@69@01)
        (Seq_contains xs@64@01 jx@70@01)
        (not (= ix@69@01 jx@70@01))))
    (or
      (not
        (and
          (Seq_contains xs@64@01 ix@69@01)
          (and (Seq_contains xs@64@01 jx@70@01) (not (= ix@69@01 jx@70@01)))))
      (and
        (Seq_contains xs@64@01 ix@69@01)
        (and (Seq_contains xs@64@01 jx@70@01) (not (= ix@69@01 jx@70@01))))))
  :pattern ((Seq_contains xs@64@01 ix@69@01) (Seq_contains xs@64@01 jx@70@01))
  :pattern ((Seq_contains_trigger xs@64@01 ix@69@01) (Seq_contains_trigger
    xs@64@01
    jx@70@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@49@12@49@88-aux|)))
(assert (forall ((ix@69@01 $Ref) (jx@70@01 $Ref)) (!
  (and
    (=>
      (Seq_contains xs@64@01 ix@69@01)
      (and
        (Seq_contains xs@64@01 ix@69@01)
        (or
          (Seq_contains xs@64@01 jx@70@01)
          (not (Seq_contains xs@64@01 jx@70@01)))))
    (or (Seq_contains xs@64@01 ix@69@01) (not (Seq_contains xs@64@01 ix@69@01)))
    (=>
      (and
        (Seq_contains xs@64@01 ix@69@01)
        (and (Seq_contains xs@64@01 jx@70@01) (not (= ix@69@01 jx@70@01))))
      (and
        (Seq_contains xs@64@01 ix@69@01)
        (Seq_contains xs@64@01 jx@70@01)
        (not (= ix@69@01 jx@70@01))))
    (or
      (not
        (and
          (Seq_contains xs@64@01 ix@69@01)
          (and (Seq_contains xs@64@01 jx@70@01) (not (= ix@69@01 jx@70@01)))))
      (and
        (Seq_contains xs@64@01 ix@69@01)
        (and (Seq_contains xs@64@01 jx@70@01) (not (= ix@69@01 jx@70@01))))))
  :pattern ((Seq_contains_trigger xs@64@01 ix@69@01) (Seq_contains_trigger
    xs@64@01
    jx@70@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@49@12@49@88-aux|)))
(assert (forall ((ix@69@01 $Ref) (jx@70@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@64@01 ix@69@01)
      (and (Seq_contains xs@64@01 jx@70@01) (not (= ix@69@01 jx@70@01))))
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@65@01)) ix@69@01)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@65@01)) jx@70@01))))
  :pattern ((Seq_contains xs@64@01 ix@69@01) (Seq_contains xs@64@01 jx@70@01))
  :pattern ((Seq_contains_trigger xs@64@01 ix@69@01) (Seq_contains_trigger
    xs@64@01
    jx@70@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@49@12@49@88|)))
(declare-const x@71@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@64@01 x@71@01))
(push) ; 3
(assert (not (and (img@68@01 x@71@01) (Seq_contains xs@64@01 (inv@67@01 x@71@01)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(declare-fun inv@72@01 (Int) $Ref)
(declare-fun img@73@01 (Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@71@01 $Ref) (x2@71@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@64@01 x1@71@01)
      (Seq_contains xs@64@01 x2@71@01)
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@65@01)) x1@71@01)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@65@01)) x2@71@01)))
    (= x1@71@01 x2@71@01))
  
  :qid |pred2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@71@01 $Ref)) (!
  (=>
    (Seq_contains xs@64@01 x@71@01)
    (and
      (=
        (inv@72@01 ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@65@01)) x@71@01))
        x@71@01)
      (img@73@01 ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@65@01)) x@71@01))))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@65@01)) x@71@01))
  :qid |quant-u-15882|)))
(assert (forall ((i Int)) (!
  (=>
    (and (img@73@01 i) (Seq_contains xs@64@01 (inv@72@01 i)))
    (=
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@65@01)) (inv@72@01 i))
      i))
  :pattern ((inv@72@01 i))
  :qid |pred2-fctOfInv|)))
; Permissions are non-negative
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@74@01 $Snap)
(assert (= $t@74@01 ($Snap.combine ($Snap.first $t@74@01) ($Snap.second $t@74@01))))
(declare-const x@75@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@64@01 x@75@01))
(pop) ; 3
(declare-fun inv@76@01 ($Ref) $Ref)
(declare-fun img@77@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@75@01 $Ref) (x2@75@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@64@01 x1@75@01)
      (Seq_contains xs@64@01 x2@75@01)
      (= x1@75@01 x2@75@01))
    (= x1@75@01 x2@75@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@75@01 $Ref)) (!
  (=>
    (Seq_contains xs@64@01 x@75@01)
    (and (= (inv@76@01 x@75@01) x@75@01) (img@77@01 x@75@01)))
  :pattern ((Seq_contains xs@64@01 x@75@01))
  :pattern ((Seq_contains_trigger xs@64@01 x@75@01))
  :pattern ((Seq_contains_trigger xs@64@01 x@75@01))
  :pattern ((inv@76@01 x@75@01))
  :pattern ((img@77@01 x@75@01))
  :qid |quant-u-15884|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@77@01 r) (Seq_contains xs@64@01 (inv@76@01 r)))
    (= (inv@76@01 r) r))
  :pattern ((inv@76@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@75@01 $Ref)) (!
  (=> (Seq_contains xs@64@01 x@75@01) (not (= x@75@01 $Ref.null)))
  :pattern ((Seq_contains xs@64@01 x@75@01))
  :pattern ((Seq_contains_trigger xs@64@01 x@75@01))
  :pattern ((Seq_contains_trigger xs@64@01 x@75@01))
  :pattern ((inv@76@01 x@75@01))
  :pattern ((img@77@01 x@75@01))
  :qid |f-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@74@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@74@01))
    ($Snap.second ($Snap.second $t@74@01)))))
(assert (= ($Snap.first ($Snap.second $t@74@01)) $Snap.unit))
; [eval] (forall ix: Ref, jx: Ref :: { (ix in xs), (jx in xs) } (ix in xs) && ((jx in xs) && ix != jx) ==> ix.f != jx.f)
(declare-const ix@78@01 $Ref)
(declare-const jx@79@01 $Ref)
(push) ; 3
; [eval] (ix in xs) && ((jx in xs) && ix != jx) ==> ix.f != jx.f
; [eval] (ix in xs) && ((jx in xs) && ix != jx)
; [eval] (ix in xs)
(push) ; 4
; [then-branch: 12 | !(ix@78@01 in xs@64@01) | live]
; [else-branch: 12 | ix@78@01 in xs@64@01 | live]
(push) ; 5
; [then-branch: 12 | !(ix@78@01 in xs@64@01)]
(assert (not (Seq_contains xs@64@01 ix@78@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 12 | ix@78@01 in xs@64@01]
(assert (Seq_contains xs@64@01 ix@78@01))
; [eval] (jx in xs)
(push) ; 6
; [then-branch: 13 | !(jx@79@01 in xs@64@01) | live]
; [else-branch: 13 | jx@79@01 in xs@64@01 | live]
(push) ; 7
; [then-branch: 13 | !(jx@79@01 in xs@64@01)]
(assert (not (Seq_contains xs@64@01 jx@79@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 13 | jx@79@01 in xs@64@01]
(assert (Seq_contains xs@64@01 jx@79@01))
; [eval] ix != jx
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (Seq_contains xs@64@01 jx@79@01) (not (Seq_contains xs@64@01 jx@79@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains xs@64@01 ix@78@01)
  (and
    (Seq_contains xs@64@01 ix@78@01)
    (or (Seq_contains xs@64@01 jx@79@01) (not (Seq_contains xs@64@01 jx@79@01))))))
(assert (or (Seq_contains xs@64@01 ix@78@01) (not (Seq_contains xs@64@01 ix@78@01))))
(push) ; 4
; [then-branch: 14 | ix@78@01 in xs@64@01 && jx@79@01 in xs@64@01 && ix@78@01 != jx@79@01 | live]
; [else-branch: 14 | !(ix@78@01 in xs@64@01 && jx@79@01 in xs@64@01 && ix@78@01 != jx@79@01) | live]
(push) ; 5
; [then-branch: 14 | ix@78@01 in xs@64@01 && jx@79@01 in xs@64@01 && ix@78@01 != jx@79@01]
(assert (and
  (Seq_contains xs@64@01 ix@78@01)
  (and (Seq_contains xs@64@01 jx@79@01) (not (= ix@78@01 jx@79@01)))))
; [eval] ix.f != jx.f
(push) ; 6
(assert (not (and (img@77@01 ix@78@01) (Seq_contains xs@64@01 (inv@76@01 ix@78@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (and (img@77@01 jx@79@01) (Seq_contains xs@64@01 (inv@76@01 jx@79@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 14 | !(ix@78@01 in xs@64@01 && jx@79@01 in xs@64@01 && ix@78@01 != jx@79@01)]
(assert (not
  (and
    (Seq_contains xs@64@01 ix@78@01)
    (and (Seq_contains xs@64@01 jx@79@01) (not (= ix@78@01 jx@79@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains xs@64@01 ix@78@01)
    (and (Seq_contains xs@64@01 jx@79@01) (not (= ix@78@01 jx@79@01))))
  (and
    (Seq_contains xs@64@01 ix@78@01)
    (Seq_contains xs@64@01 jx@79@01)
    (not (= ix@78@01 jx@79@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains xs@64@01 ix@78@01)
      (and (Seq_contains xs@64@01 jx@79@01) (not (= ix@78@01 jx@79@01)))))
  (and
    (Seq_contains xs@64@01 ix@78@01)
    (and (Seq_contains xs@64@01 jx@79@01) (not (= ix@78@01 jx@79@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((ix@78@01 $Ref) (jx@79@01 $Ref)) (!
  (and
    (=>
      (Seq_contains xs@64@01 ix@78@01)
      (and
        (Seq_contains xs@64@01 ix@78@01)
        (or
          (Seq_contains xs@64@01 jx@79@01)
          (not (Seq_contains xs@64@01 jx@79@01)))))
    (or (Seq_contains xs@64@01 ix@78@01) (not (Seq_contains xs@64@01 ix@78@01)))
    (=>
      (and
        (Seq_contains xs@64@01 ix@78@01)
        (and (Seq_contains xs@64@01 jx@79@01) (not (= ix@78@01 jx@79@01))))
      (and
        (Seq_contains xs@64@01 ix@78@01)
        (Seq_contains xs@64@01 jx@79@01)
        (not (= ix@78@01 jx@79@01))))
    (or
      (not
        (and
          (Seq_contains xs@64@01 ix@78@01)
          (and (Seq_contains xs@64@01 jx@79@01) (not (= ix@78@01 jx@79@01)))))
      (and
        (Seq_contains xs@64@01 ix@78@01)
        (and (Seq_contains xs@64@01 jx@79@01) (not (= ix@78@01 jx@79@01))))))
  :pattern ((Seq_contains xs@64@01 ix@78@01) (Seq_contains xs@64@01 jx@79@01))
  :pattern ((Seq_contains_trigger xs@64@01 ix@78@01) (Seq_contains_trigger
    xs@64@01
    jx@79@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@52@11@52@87-aux|)))
(assert (forall ((ix@78@01 $Ref) (jx@79@01 $Ref)) (!
  (and
    (=>
      (Seq_contains xs@64@01 ix@78@01)
      (and
        (Seq_contains xs@64@01 ix@78@01)
        (or
          (Seq_contains xs@64@01 jx@79@01)
          (not (Seq_contains xs@64@01 jx@79@01)))))
    (or (Seq_contains xs@64@01 ix@78@01) (not (Seq_contains xs@64@01 ix@78@01)))
    (=>
      (and
        (Seq_contains xs@64@01 ix@78@01)
        (and (Seq_contains xs@64@01 jx@79@01) (not (= ix@78@01 jx@79@01))))
      (and
        (Seq_contains xs@64@01 ix@78@01)
        (Seq_contains xs@64@01 jx@79@01)
        (not (= ix@78@01 jx@79@01))))
    (or
      (not
        (and
          (Seq_contains xs@64@01 ix@78@01)
          (and (Seq_contains xs@64@01 jx@79@01) (not (= ix@78@01 jx@79@01)))))
      (and
        (Seq_contains xs@64@01 ix@78@01)
        (and (Seq_contains xs@64@01 jx@79@01) (not (= ix@78@01 jx@79@01))))))
  :pattern ((Seq_contains_trigger xs@64@01 ix@78@01) (Seq_contains_trigger
    xs@64@01
    jx@79@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@52@11@52@87-aux|)))
(assert (forall ((ix@78@01 $Ref) (jx@79@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@64@01 ix@78@01)
      (and (Seq_contains xs@64@01 jx@79@01) (not (= ix@78@01 jx@79@01))))
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@74@01)) ix@78@01)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@74@01)) jx@79@01))))
  :pattern ((Seq_contains xs@64@01 ix@78@01) (Seq_contains xs@64@01 jx@79@01))
  :pattern ((Seq_contains_trigger xs@64@01 ix@78@01) (Seq_contains_trigger
    xs@64@01
    jx@79@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@52@11@52@87|)))
(declare-const x@80@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@64@01 x@80@01))
(push) ; 4
(assert (not (and (img@77@01 x@80@01) (Seq_contains xs@64@01 (inv@76@01 x@80@01)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@81@01 (Int) $Ref)
(declare-fun img@82@01 (Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@80@01 $Ref) (x2@80@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@64@01 x1@80@01)
      (Seq_contains xs@64@01 x2@80@01)
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@74@01)) x1@80@01)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@74@01)) x2@80@01)))
    (= x1@80@01 x2@80@01))
  
  :qid |pred2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@80@01 $Ref)) (!
  (=>
    (Seq_contains xs@64@01 x@80@01)
    (and
      (=
        (inv@81@01 ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@74@01)) x@80@01))
        x@80@01)
      (img@82@01 ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@74@01)) x@80@01))))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@74@01)) x@80@01))
  :qid |quant-u-15886|)))
(assert (forall ((i Int)) (!
  (=>
    (and (img@82@01 i) (Seq_contains xs@64@01 (inv@81@01 i)))
    (=
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@74@01)) (inv@81@01 i))
      i))
  :pattern ((inv@81@01 i))
  :qid |pred2-fctOfInv|)))
; Permissions are non-negative
(pop) ; 2
(push) ; 2
(declare-const x@83@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@64@01 x@83@01))
(pop) ; 3
(declare-fun inv@84@01 ($Ref) $Ref)
(declare-fun img@85@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@83@01 $Ref) (x2@83@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@64@01 x1@83@01)
      (Seq_contains xs@64@01 x2@83@01)
      (= x1@83@01 x2@83@01))
    (= x1@83@01 x2@83@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@83@01 $Ref)) (!
  (=>
    (Seq_contains xs@64@01 x@83@01)
    (and (= (inv@84@01 x@83@01) x@83@01) (img@85@01 x@83@01)))
  :pattern ((Seq_contains xs@64@01 x@83@01))
  :pattern ((Seq_contains_trigger xs@64@01 x@83@01))
  :pattern ((inv@84@01 x@83@01))
  :pattern ((img@85@01 x@83@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@85@01 r) (Seq_contains xs@64@01 (inv@84@01 r)))
    (= (inv@84@01 r) r))
  :pattern ((inv@84@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@86@01 ((r $Ref)) $Perm
  (ite
    (and (Seq_contains xs@64@01 (inv@84@01 r)) (img@85@01 r) (= r (inv@84@01 r)))
    ($Perm.min
      (ite
        (and (img@68@01 r) (Seq_contains xs@64@01 (inv@67@01 r)))
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
        (and (img@68@01 r) (Seq_contains xs@64@01 (inv@67@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@86@01 r))
    $Perm.No)
  
  :qid |quant-u-15889|))))
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
    (and (Seq_contains xs@64@01 (inv@84@01 r)) (img@85@01 r) (= r (inv@84@01 r)))
    (= (- $Perm.Write (pTaken@86@01 r)) $Perm.No))
  
  :qid |quant-u-15890|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall ix: Ref, jx: Ref :: { (ix in xs), (jx in xs) } (ix in xs) && ((jx in xs) && ix != jx) ==> ix.f != jx.f)
(declare-const ix@87@01 $Ref)
(declare-const jx@88@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (ix in xs) && ((jx in xs) && ix != jx) ==> ix.f != jx.f
; [eval] (ix in xs) && ((jx in xs) && ix != jx)
; [eval] (ix in xs)
(push) ; 4
; [then-branch: 15 | !(ix@87@01 in xs@64@01) | live]
; [else-branch: 15 | ix@87@01 in xs@64@01 | live]
(push) ; 5
; [then-branch: 15 | !(ix@87@01 in xs@64@01)]
(assert (not (Seq_contains xs@64@01 ix@87@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 15 | ix@87@01 in xs@64@01]
(assert (Seq_contains xs@64@01 ix@87@01))
; [eval] (jx in xs)
(push) ; 6
; [then-branch: 16 | !(jx@88@01 in xs@64@01) | live]
; [else-branch: 16 | jx@88@01 in xs@64@01 | live]
(push) ; 7
; [then-branch: 16 | !(jx@88@01 in xs@64@01)]
(assert (not (Seq_contains xs@64@01 jx@88@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 16 | jx@88@01 in xs@64@01]
(assert (Seq_contains xs@64@01 jx@88@01))
; [eval] ix != jx
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (Seq_contains xs@64@01 jx@88@01) (not (Seq_contains xs@64@01 jx@88@01))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (Seq_contains xs@64@01 ix@87@01)
  (and
    (Seq_contains xs@64@01 ix@87@01)
    (or (Seq_contains xs@64@01 jx@88@01) (not (Seq_contains xs@64@01 jx@88@01))))))
(assert (or (Seq_contains xs@64@01 ix@87@01) (not (Seq_contains xs@64@01 ix@87@01))))
(push) ; 4
; [then-branch: 17 | ix@87@01 in xs@64@01 && jx@88@01 in xs@64@01 && ix@87@01 != jx@88@01 | live]
; [else-branch: 17 | !(ix@87@01 in xs@64@01 && jx@88@01 in xs@64@01 && ix@87@01 != jx@88@01) | live]
(push) ; 5
; [then-branch: 17 | ix@87@01 in xs@64@01 && jx@88@01 in xs@64@01 && ix@87@01 != jx@88@01]
(assert (and
  (Seq_contains xs@64@01 ix@87@01)
  (and (Seq_contains xs@64@01 jx@88@01) (not (= ix@87@01 jx@88@01)))))
; [eval] ix.f != jx.f
(push) ; 6
(assert (not (and (img@68@01 ix@87@01) (Seq_contains xs@64@01 (inv@67@01 ix@87@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(push) ; 6
(assert (not (and (img@68@01 jx@88@01) (Seq_contains xs@64@01 (inv@67@01 jx@88@01)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 17 | !(ix@87@01 in xs@64@01 && jx@88@01 in xs@64@01 && ix@87@01 != jx@88@01)]
(assert (not
  (and
    (Seq_contains xs@64@01 ix@87@01)
    (and (Seq_contains xs@64@01 jx@88@01) (not (= ix@87@01 jx@88@01))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (and
    (Seq_contains xs@64@01 ix@87@01)
    (and (Seq_contains xs@64@01 jx@88@01) (not (= ix@87@01 jx@88@01))))
  (and
    (Seq_contains xs@64@01 ix@87@01)
    (Seq_contains xs@64@01 jx@88@01)
    (not (= ix@87@01 jx@88@01)))))
; Joined path conditions
(assert (or
  (not
    (and
      (Seq_contains xs@64@01 ix@87@01)
      (and (Seq_contains xs@64@01 jx@88@01) (not (= ix@87@01 jx@88@01)))))
  (and
    (Seq_contains xs@64@01 ix@87@01)
    (and (Seq_contains xs@64@01 jx@88@01) (not (= ix@87@01 jx@88@01))))))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((ix@87@01 $Ref) (jx@88@01 $Ref)) (!
  (and
    (=>
      (Seq_contains xs@64@01 ix@87@01)
      (and
        (Seq_contains xs@64@01 ix@87@01)
        (or
          (Seq_contains xs@64@01 jx@88@01)
          (not (Seq_contains xs@64@01 jx@88@01)))))
    (or (Seq_contains xs@64@01 ix@87@01) (not (Seq_contains xs@64@01 ix@87@01)))
    (=>
      (and
        (Seq_contains xs@64@01 ix@87@01)
        (and (Seq_contains xs@64@01 jx@88@01) (not (= ix@87@01 jx@88@01))))
      (and
        (Seq_contains xs@64@01 ix@87@01)
        (Seq_contains xs@64@01 jx@88@01)
        (not (= ix@87@01 jx@88@01))))
    (or
      (not
        (and
          (Seq_contains xs@64@01 ix@87@01)
          (and (Seq_contains xs@64@01 jx@88@01) (not (= ix@87@01 jx@88@01)))))
      (and
        (Seq_contains xs@64@01 ix@87@01)
        (and (Seq_contains xs@64@01 jx@88@01) (not (= ix@87@01 jx@88@01))))))
  :pattern ((Seq_contains xs@64@01 ix@87@01) (Seq_contains xs@64@01 jx@88@01))
  :pattern ((Seq_contains_trigger xs@64@01 ix@87@01) (Seq_contains_trigger
    xs@64@01
    jx@88@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@52@11@52@87-aux|)))
(assert (forall ((ix@87@01 $Ref) (jx@88@01 $Ref)) (!
  (and
    (=>
      (Seq_contains xs@64@01 ix@87@01)
      (and
        (Seq_contains xs@64@01 ix@87@01)
        (or
          (Seq_contains xs@64@01 jx@88@01)
          (not (Seq_contains xs@64@01 jx@88@01)))))
    (or (Seq_contains xs@64@01 ix@87@01) (not (Seq_contains xs@64@01 ix@87@01)))
    (=>
      (and
        (Seq_contains xs@64@01 ix@87@01)
        (and (Seq_contains xs@64@01 jx@88@01) (not (= ix@87@01 jx@88@01))))
      (and
        (Seq_contains xs@64@01 ix@87@01)
        (Seq_contains xs@64@01 jx@88@01)
        (not (= ix@87@01 jx@88@01))))
    (or
      (not
        (and
          (Seq_contains xs@64@01 ix@87@01)
          (and (Seq_contains xs@64@01 jx@88@01) (not (= ix@87@01 jx@88@01)))))
      (and
        (Seq_contains xs@64@01 ix@87@01)
        (and (Seq_contains xs@64@01 jx@88@01) (not (= ix@87@01 jx@88@01))))))
  :pattern ((Seq_contains_trigger xs@64@01 ix@87@01) (Seq_contains_trigger
    xs@64@01
    jx@88@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@52@11@52@87-aux|)))
(push) ; 3
(assert (not (forall ((ix@87@01 $Ref) (jx@88@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@64@01 ix@87@01)
      (and (Seq_contains xs@64@01 jx@88@01) (not (= ix@87@01 jx@88@01))))
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@65@01)) ix@87@01)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@65@01)) jx@88@01))))
  :pattern ((Seq_contains xs@64@01 ix@87@01) (Seq_contains xs@64@01 jx@88@01))
  :pattern ((Seq_contains_trigger xs@64@01 ix@87@01) (Seq_contains_trigger
    xs@64@01
    jx@88@01))
  :pattern ((Seq_contains_trigger xs@64@01 ix@87@01) (Seq_contains_trigger
    xs@64@01
    jx@88@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@52@11@52@87|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((ix@87@01 $Ref) (jx@88@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@64@01 ix@87@01)
      (and (Seq_contains xs@64@01 jx@88@01) (not (= ix@87@01 jx@88@01))))
    (not
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@65@01)) ix@87@01)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@65@01)) jx@88@01))))
  :pattern ((Seq_contains xs@64@01 ix@87@01) (Seq_contains xs@64@01 jx@88@01))
  :pattern ((Seq_contains_trigger xs@64@01 ix@87@01) (Seq_contains_trigger
    xs@64@01
    jx@88@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@52@11@52@87|)))
(declare-const x@89@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@64@01 x@89@01))
(push) ; 4
(assert (not (and (img@68@01 x@89@01) (Seq_contains xs@64@01 (inv@67@01 x@89@01)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(declare-fun inv@90@01 (Int) $Ref)
(declare-fun img@91@01 (Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@89@01 $Ref) (x2@89@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@64@01 x1@89@01)
      (Seq_contains xs@64@01 x2@89@01)
      (=
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@65@01)) x1@89@01)
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@65@01)) x2@89@01)))
    (= x1@89@01 x2@89@01))
  
  :qid |pred2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@89@01 $Ref)) (!
  (=>
    (Seq_contains xs@64@01 x@89@01)
    (and
      (=
        (inv@90@01 ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@65@01)) x@89@01))
        x@89@01)
      (img@91@01 ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@65@01)) x@89@01))))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@65@01)) x@89@01))
  :qid |pred2-invOfFct|)))
(assert (forall ((i Int)) (!
  (=>
    (and (img@91@01 i) (Seq_contains xs@64@01 (inv@90@01 i)))
    (=
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@65@01)) (inv@90@01 i))
      i))
  :pattern ((inv@90@01 i))
  :qid |pred2-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@92@01 ((i Int)) $Perm
  (ite
    (and
      (Seq_contains xs@64@01 (inv@90@01 i))
      (img@91@01 i)
      (=
        i
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@65@01)) (inv@90@01 i))))
    ($Perm.min
      (ite
        (and (img@73@01 i) (Seq_contains xs@64@01 (inv@72@01 i)))
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
(assert (not (forall ((i Int)) (!
  (=
    (-
      (ite
        (and (img@73@01 i) (Seq_contains xs@64@01 (inv@72@01 i)))
        $Perm.Write
        $Perm.No)
      (pTaken@92@01 i))
    $Perm.No)
  
  :qid |quant-u-15893|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((i Int)) (!
  (=>
    (and
      (Seq_contains xs@64@01 (inv@90@01 i))
      (img@91@01 i)
      (=
        i
        ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@65@01)) (inv@90@01 i))))
    (= (- $Perm.Write (pTaken@92@01 i)) $Perm.No))
  
  :qid |quant-u-15894|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- m5 ----------
(declare-const xs@93@01 Seq<$Ref>)
(declare-const xs@94@01 Seq<$Ref>)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@95@01 $Snap)
(assert (= $t@95@01 ($Snap.combine ($Snap.first $t@95@01) ($Snap.second $t@95@01))))
(declare-const x@96@01 $Ref)
(push) ; 2
; [eval] (x in xs) && x.g > 0
; [eval] (x in xs)
(push) ; 3
; [then-branch: 18 | !(x@96@01 in xs@94@01) | live]
; [else-branch: 18 | x@96@01 in xs@94@01 | live]
(push) ; 4
; [then-branch: 18 | !(x@96@01 in xs@94@01)]
(assert (not (Seq_contains xs@94@01 x@96@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 18 | x@96@01 in xs@94@01]
(assert (Seq_contains xs@94@01 x@96@01))
; [eval] x.g > 0
(declare-const sm@97@01 $FVF<g>)
; Definitional axioms for snapshot map values
(declare-const pm@98@01 $FPM)
(assert (forall ((r $Ref)) (!
  (= ($FVF.perm_g (as pm@98@01  $FPM) r) $Perm.No)
  :pattern (($FVF.perm_g (as pm@98@01  $FPM) r))
  :qid |qp.resPrmSumDef4|)))
(push) ; 5
(assert (not (< $Perm.No ($FVF.perm_g (as pm@98@01  $FPM) x@96@01))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- m6 ----------
(declare-const xs@99@01 Seq<$Ref>)
(declare-const b1@100@01 Int)
(declare-const b2@101@01 Int)
(declare-const xs@102@01 Seq<$Ref>)
(declare-const b1@103@01 Int)
(declare-const b2@104@01 Int)
(push) ; 1
(declare-const $t@105@01 $Snap)
(assert (= $t@105@01 ($Snap.combine ($Snap.first $t@105@01) ($Snap.second $t@105@01))))
(declare-const x@106@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@102@01 x@106@01))
(pop) ; 2
(declare-fun inv@107@01 ($Ref) $Ref)
(declare-fun img@108@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@106@01 $Ref) (x2@106@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@102@01 x1@106@01)
      (Seq_contains xs@102@01 x2@106@01)
      (= x1@106@01 x2@106@01))
    (= x1@106@01 x2@106@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@106@01 $Ref)) (!
  (=>
    (Seq_contains xs@102@01 x@106@01)
    (and (= (inv@107@01 x@106@01) x@106@01) (img@108@01 x@106@01)))
  :pattern ((Seq_contains xs@102@01 x@106@01))
  :pattern ((Seq_contains_trigger xs@102@01 x@106@01))
  :pattern ((Seq_contains_trigger xs@102@01 x@106@01))
  :pattern ((inv@107@01 x@106@01))
  :pattern ((img@108@01 x@106@01))
  :qid |quant-u-15896|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@108@01 r) (Seq_contains xs@102@01 (inv@107@01 r)))
    (= (inv@107@01 r) r))
  :pattern ((inv@107@01 r))
  :qid |g-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@106@01 $Ref)) (!
  (=> (Seq_contains xs@102@01 x@106@01) (not (= x@106@01 $Ref.null)))
  :pattern ((Seq_contains xs@102@01 x@106@01))
  :pattern ((Seq_contains_trigger xs@102@01 x@106@01))
  :pattern ((Seq_contains_trigger xs@102@01 x@106@01))
  :pattern ((inv@107@01 x@106@01))
  :pattern ((img@108@01 x@106@01))
  :qid |g-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@105@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@105@01))
    ($Snap.second ($Snap.second $t@105@01)))))
(declare-const x@109@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Seq_contains xs@102@01 x@109@01))
(pop) ; 2
(declare-fun inv@110@01 ($Ref) $Ref)
(declare-fun img@111@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@109@01 $Ref) (x2@109@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@102@01 x1@109@01)
      (Seq_contains xs@102@01 x2@109@01)
      (= x1@109@01 x2@109@01))
    (= x1@109@01 x2@109@01))
  
  :qid |pred-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@109@01 $Ref)) (!
  (=>
    (Seq_contains xs@102@01 x@109@01)
    (and (= (inv@110@01 x@109@01) x@109@01) (img@111@01 x@109@01)))
  :pattern ((Seq_contains xs@102@01 x@109@01))
  :pattern ((Seq_contains_trigger xs@102@01 x@109@01))
  :pattern ((Seq_contains_trigger xs@102@01 x@109@01))
  :pattern ((inv@110@01 x@109@01))
  :pattern ((img@111@01 x@109@01))
  :qid |quant-u-15898|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@111@01 x) (Seq_contains xs@102@01 (inv@110@01 x)))
    (= (inv@110@01 x) x))
  :pattern ((inv@110@01 x))
  :qid |pred-fctOfInv|)))
; Permissions are non-negative
(assert (= ($Snap.second ($Snap.second $t@105@01)) $Snap.unit))
; [eval] (forall x: Ref :: { (x in xs) } (x in xs) ==> (b1 > 0 ==> (unfolding acc(pred(x), write) in true)) && (b1 > 0 ==> b2 > 0 ==> x.g > 0))
(declare-const x@112@01 $Ref)
(push) ; 2
; [eval] (x in xs) ==> (b1 > 0 ==> (unfolding acc(pred(x), write) in true)) && (b1 > 0 ==> b2 > 0 ==> x.g > 0)
; [eval] (x in xs)
(push) ; 3
; [then-branch: 19 | x@112@01 in xs@102@01 | live]
; [else-branch: 19 | !(x@112@01 in xs@102@01) | live]
(push) ; 4
; [then-branch: 19 | x@112@01 in xs@102@01]
(assert (Seq_contains xs@102@01 x@112@01))
; [eval] (b1 > 0 ==> (unfolding acc(pred(x), write) in true)) && (b1 > 0 ==> b2 > 0 ==> x.g > 0)
; [eval] b1 > 0 ==> (unfolding acc(pred(x), write) in true)
; [eval] b1 > 0
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not (> b1@103@01 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (> b1@103@01 0)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 20 | b1@103@01 > 0 | live]
; [else-branch: 20 | !(b1@103@01 > 0) | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 20 | b1@103@01 > 0]
(assert (> b1@103@01 0))
; [eval] (unfolding acc(pred(x), write) in true)
(push) ; 7
; Precomputing data for removing quantified permissions
(define-fun pTaken@113@01 ((x $Ref) (x@112@01 $Ref)) $Perm
  (ite
    (= x x@112@01)
    ($Perm.min
      (ite
        (and (img@111@01 x) (Seq_contains xs@102@01 (inv@110@01 x)))
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
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite
        (and (img@111@01 x) (Seq_contains xs@102@01 (inv@110@01 x)))
        $Perm.Write
        $Perm.No)
      (pTaken@113@01 x x@112@01))
    $Perm.No)
  
  :qid |quant-u-15900|))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (pTaken@113@01 x x@112@01) $Perm.No)
  
  :qid |quant-u-15901|))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@112@01) (= (- $Perm.Write (pTaken@113@01 x x@112@01)) $Perm.No))
  
  :qid |quant-u-15902|))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@114@01 $PSF<pred>)
(declare-const s@115@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and (img@111@01 x@112@01) (Seq_contains xs@102@01 (inv@110@01 x@112@01)))
  (and
    (not (= ($SortWrappers.$RefTo$Snap x@112@01) $Snap.unit))
    (=
      ($PSF.lookup_pred (as sm@114@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@112@01))
      ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first ($Snap.second $t@105@01))) ($SortWrappers.$RefTo$Snap x@112@01))))))
(assert (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@114@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@112@01))) x@112@01))
(assert (not (= x@112@01 $Ref.null)))
(pop) ; 7
; Joined path conditions
(assert (and
  (=>
    (and (img@111@01 x@112@01) (Seq_contains xs@102@01 (inv@110@01 x@112@01)))
    (and
      (not (= ($SortWrappers.$RefTo$Snap x@112@01) $Snap.unit))
      (=
        ($PSF.lookup_pred (as sm@114@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@112@01))
        ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first ($Snap.second $t@105@01))) ($SortWrappers.$RefTo$Snap x@112@01)))))
  (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@114@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@112@01))) x@112@01)
  (not (= x@112@01 $Ref.null))))
(pop) ; 6
(set-option :timeout 0)
(push) ; 6
; [else-branch: 20 | !(b1@103@01 > 0)]
(assert (not (> b1@103@01 0)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (> b1@103@01 0)
  (and
    (> b1@103@01 0)
    (=>
      (and (img@111@01 x@112@01) (Seq_contains xs@102@01 (inv@110@01 x@112@01)))
      (and
        (not (= ($SortWrappers.$RefTo$Snap x@112@01) $Snap.unit))
        (=
          ($PSF.lookup_pred (as sm@114@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@112@01))
          ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first ($Snap.second $t@105@01))) ($SortWrappers.$RefTo$Snap x@112@01)))))
    (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@114@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@112@01))) x@112@01)
    (not (= x@112@01 $Ref.null)))))
; Joined path conditions
(assert (or (not (> b1@103@01 0)) (> b1@103@01 0)))
(push) ; 5
; [then-branch: 21 | False | live]
; [else-branch: 21 | True | live]
(push) ; 6
; [then-branch: 21 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 21 | True]
; [eval] b1 > 0 ==> b2 > 0 ==> x.g > 0
; [eval] b1 > 0
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (not (> b1@103@01 0))))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 8
(set-option :timeout 10)
(assert (not (> b1@103@01 0)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 22 | b1@103@01 > 0 | live]
; [else-branch: 22 | !(b1@103@01 > 0) | live]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 22 | b1@103@01 > 0]
(assert (> b1@103@01 0))
; [eval] b2 > 0 ==> x.g > 0
; [eval] b2 > 0
(push) ; 9
(push) ; 10
(set-option :timeout 10)
(assert (not (not (> b2@104@01 0))))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
(set-option :timeout 10)
(assert (not (> b2@104@01 0)))
(check-sat)
; unknown
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 23 | b2@104@01 > 0 | live]
; [else-branch: 23 | !(b2@104@01 > 0) | live]
(set-option :timeout 0)
(push) ; 10
; [then-branch: 23 | b2@104@01 > 0]
(assert (> b2@104@01 0))
; [eval] x.g > 0
(push) ; 11
(assert (not (and (img@108@01 x@112@01) (Seq_contains xs@102@01 (inv@107@01 x@112@01)))))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(pop) ; 10
(push) ; 10
; [else-branch: 23 | !(b2@104@01 > 0)]
(assert (not (> b2@104@01 0)))
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (or (not (> b2@104@01 0)) (> b2@104@01 0)))
(pop) ; 8
(push) ; 8
; [else-branch: 22 | !(b1@103@01 > 0)]
(assert (not (> b1@103@01 0)))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  (> b1@103@01 0)
  (and (> b1@103@01 0) (or (not (> b2@104@01 0)) (> b2@104@01 0)))))
; Joined path conditions
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (> b1@103@01 0)
  (and (> b1@103@01 0) (or (not (> b2@104@01 0)) (> b2@104@01 0)))))
(pop) ; 4
(push) ; 4
; [else-branch: 19 | !(x@112@01 in xs@102@01)]
(assert (not (Seq_contains xs@102@01 x@112@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (=>
  (Seq_contains xs@102@01 x@112@01)
  (and
    (Seq_contains xs@102@01 x@112@01)
    (=>
      (> b1@103@01 0)
      (and
        (> b1@103@01 0)
        (=>
          (and
            (img@111@01 x@112@01)
            (Seq_contains xs@102@01 (inv@110@01 x@112@01)))
          (and
            (not (= ($SortWrappers.$RefTo$Snap x@112@01) $Snap.unit))
            (=
              ($PSF.lookup_pred (as sm@114@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@112@01))
              ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first ($Snap.second $t@105@01))) ($SortWrappers.$RefTo$Snap x@112@01)))))
        (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@114@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@112@01))) x@112@01)
        (not (= x@112@01 $Ref.null))))
    (or (not (> b1@103@01 0)) (> b1@103@01 0))
    (=>
      (> b1@103@01 0)
      (and (> b1@103@01 0) (or (not (> b2@104@01 0)) (> b2@104@01 0)))))))
; Joined path conditions
(assert (or (not (Seq_contains xs@102@01 x@112@01)) (Seq_contains xs@102@01 x@112@01)))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@112@01 $Ref)) (!
  (and
    (=>
      (Seq_contains xs@102@01 x@112@01)
      (and
        (Seq_contains xs@102@01 x@112@01)
        (=>
          (> b1@103@01 0)
          (and
            (> b1@103@01 0)
            (=>
              (and
                (img@111@01 x@112@01)
                (Seq_contains xs@102@01 (inv@110@01 x@112@01)))
              (and
                (not (= ($SortWrappers.$RefTo$Snap x@112@01) $Snap.unit))
                (=
                  ($PSF.lookup_pred (as sm@114@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@112@01))
                  ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first ($Snap.second $t@105@01))) ($SortWrappers.$RefTo$Snap x@112@01)))))
            (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@114@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@112@01))) x@112@01)
            (not (= x@112@01 $Ref.null))))
        (or (not (> b1@103@01 0)) (> b1@103@01 0))
        (=>
          (> b1@103@01 0)
          (and (> b1@103@01 0) (or (not (> b2@104@01 0)) (> b2@104@01 0))))))
    (or
      (not (Seq_contains xs@102@01 x@112@01))
      (Seq_contains xs@102@01 x@112@01)))
  :pattern ((Seq_contains xs@102@01 x@112@01))
  :pattern ((Seq_contains_trigger xs@102@01 x@112@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@62@12@62@151-aux|)))
(assert (forall ((x@112@01 $Ref)) (!
  (and
    (=>
      (Seq_contains xs@102@01 x@112@01)
      (and
        (Seq_contains xs@102@01 x@112@01)
        (=>
          (> b1@103@01 0)
          (and
            (> b1@103@01 0)
            (=>
              (and
                (img@111@01 x@112@01)
                (Seq_contains xs@102@01 (inv@110@01 x@112@01)))
              (and
                (not (= ($SortWrappers.$RefTo$Snap x@112@01) $Snap.unit))
                (=
                  ($PSF.lookup_pred (as sm@114@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@112@01))
                  ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first ($Snap.second $t@105@01))) ($SortWrappers.$RefTo$Snap x@112@01)))))
            (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@114@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@112@01))) x@112@01)
            (not (= x@112@01 $Ref.null))))
        (or (not (> b1@103@01 0)) (> b1@103@01 0))
        (=>
          (> b1@103@01 0)
          (and (> b1@103@01 0) (or (not (> b2@104@01 0)) (> b2@104@01 0))))))
    (or
      (not (Seq_contains xs@102@01 x@112@01))
      (Seq_contains xs@102@01 x@112@01)))
  :pattern ((Seq_contains_trigger xs@102@01 x@112@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@62@12@62@151-aux|)))
(assert (forall ((x@112@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@102@01 x@112@01) (and (> b1@103@01 0) (> b2@104@01 0)))
    (>
      ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@105@01)) x@112@01)
      0))
  :pattern ((Seq_contains xs@102@01 x@112@01))
  :pattern ((Seq_contains_trigger xs@102@01 x@112@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@62@12@62@151|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@116@01 $Snap)
(assert (= $t@116@01 ($Snap.combine ($Snap.first $t@116@01) ($Snap.second $t@116@01))))
(declare-const x@117@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@102@01 x@117@01))
(pop) ; 3
(declare-fun inv@118@01 ($Ref) $Ref)
(declare-fun img@119@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@117@01 $Ref) (x2@117@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@102@01 x1@117@01)
      (Seq_contains xs@102@01 x2@117@01)
      (= x1@117@01 x2@117@01))
    (= x1@117@01 x2@117@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@117@01 $Ref)) (!
  (=>
    (Seq_contains xs@102@01 x@117@01)
    (and (= (inv@118@01 x@117@01) x@117@01) (img@119@01 x@117@01)))
  :pattern ((Seq_contains xs@102@01 x@117@01))
  :pattern ((Seq_contains_trigger xs@102@01 x@117@01))
  :pattern ((Seq_contains_trigger xs@102@01 x@117@01))
  :pattern ((inv@118@01 x@117@01))
  :pattern ((img@119@01 x@117@01))
  :qid |quant-u-15904|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@119@01 r) (Seq_contains xs@102@01 (inv@118@01 r)))
    (= (inv@118@01 r) r))
  :pattern ((inv@118@01 r))
  :qid |g-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((x@117@01 $Ref)) (!
  (=> (Seq_contains xs@102@01 x@117@01) (not (= x@117@01 $Ref.null)))
  :pattern ((Seq_contains xs@102@01 x@117@01))
  :pattern ((Seq_contains_trigger xs@102@01 x@117@01))
  :pattern ((Seq_contains_trigger xs@102@01 x@117@01))
  :pattern ((inv@118@01 x@117@01))
  :pattern ((img@119@01 x@117@01))
  :qid |g-permImpliesNonNull|)))
(assert (=
  ($Snap.second $t@116@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@116@01))
    ($Snap.second ($Snap.second $t@116@01)))))
(declare-const x@120@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@102@01 x@120@01))
(pop) ; 3
(declare-fun inv@121@01 ($Ref) $Ref)
(declare-fun img@122@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@120@01 $Ref) (x2@120@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@102@01 x1@120@01)
      (Seq_contains xs@102@01 x2@120@01)
      (= x1@120@01 x2@120@01))
    (= x1@120@01 x2@120@01))
  
  :qid |pred-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@120@01 $Ref)) (!
  (=>
    (Seq_contains xs@102@01 x@120@01)
    (and (= (inv@121@01 x@120@01) x@120@01) (img@122@01 x@120@01)))
  :pattern ((Seq_contains xs@102@01 x@120@01))
  :pattern ((Seq_contains_trigger xs@102@01 x@120@01))
  :pattern ((Seq_contains_trigger xs@102@01 x@120@01))
  :pattern ((inv@121@01 x@120@01))
  :pattern ((img@122@01 x@120@01))
  :qid |quant-u-15906|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@122@01 x) (Seq_contains xs@102@01 (inv@121@01 x)))
    (= (inv@121@01 x) x))
  :pattern ((inv@121@01 x))
  :qid |pred-fctOfInv|)))
; Permissions are non-negative
(assert (= ($Snap.second ($Snap.second $t@116@01)) $Snap.unit))
; [eval] (forall x: Ref :: { (x in xs) } (x in xs) ==> (b1 > 0 ==> (unfolding acc(pred(x), write) in true)) && (b1 > 0 ==> b2 > 0 ==> x.g > 0))
(declare-const x@123@01 $Ref)
(push) ; 3
; [eval] (x in xs) ==> (b1 > 0 ==> (unfolding acc(pred(x), write) in true)) && (b1 > 0 ==> b2 > 0 ==> x.g > 0)
; [eval] (x in xs)
(push) ; 4
; [then-branch: 24 | x@123@01 in xs@102@01 | live]
; [else-branch: 24 | !(x@123@01 in xs@102@01) | live]
(push) ; 5
; [then-branch: 24 | x@123@01 in xs@102@01]
(assert (Seq_contains xs@102@01 x@123@01))
; [eval] (b1 > 0 ==> (unfolding acc(pred(x), write) in true)) && (b1 > 0 ==> b2 > 0 ==> x.g > 0)
; [eval] b1 > 0 ==> (unfolding acc(pred(x), write) in true)
; [eval] b1 > 0
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not (> b1@103@01 0))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (> b1@103@01 0)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 25 | b1@103@01 > 0 | live]
; [else-branch: 25 | !(b1@103@01 > 0) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 25 | b1@103@01 > 0]
(assert (> b1@103@01 0))
; [eval] (unfolding acc(pred(x), write) in true)
(push) ; 8
; Precomputing data for removing quantified permissions
(define-fun pTaken@124@01 ((x $Ref) (x@123@01 $Ref)) $Perm
  (ite
    (= x x@123@01)
    ($Perm.min
      (ite
        (and (img@122@01 x) (Seq_contains xs@102@01 (inv@121@01 x)))
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
(push) ; 9
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite
        (and (img@122@01 x) (Seq_contains xs@102@01 (inv@121@01 x)))
        $Perm.Write
        $Perm.No)
      (pTaken@124@01 x x@123@01))
    $Perm.No)
  
  :qid |quant-u-15908|))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (pTaken@124@01 x x@123@01) $Perm.No)
  
  :qid |quant-u-15909|))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@123@01) (= (- $Perm.Write (pTaken@124@01 x x@123@01)) $Perm.No))
  
  :qid |quant-u-15910|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@125@01 $PSF<pred>)
(declare-const s@126@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and (img@122@01 x@123@01) (Seq_contains xs@102@01 (inv@121@01 x@123@01)))
  (and
    (not (= ($SortWrappers.$RefTo$Snap x@123@01) $Snap.unit))
    (=
      ($PSF.lookup_pred (as sm@125@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@123@01))
      ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first ($Snap.second $t@116@01))) ($SortWrappers.$RefTo$Snap x@123@01))))))
(assert (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@125@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@123@01))) x@123@01))
(assert (not (= x@123@01 $Ref.null)))
(pop) ; 8
; Joined path conditions
(assert (and
  (=>
    (and (img@122@01 x@123@01) (Seq_contains xs@102@01 (inv@121@01 x@123@01)))
    (and
      (not (= ($SortWrappers.$RefTo$Snap x@123@01) $Snap.unit))
      (=
        ($PSF.lookup_pred (as sm@125@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@123@01))
        ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first ($Snap.second $t@116@01))) ($SortWrappers.$RefTo$Snap x@123@01)))))
  (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@125@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@123@01))) x@123@01)
  (not (= x@123@01 $Ref.null))))
(pop) ; 7
(set-option :timeout 0)
(push) ; 7
; [else-branch: 25 | !(b1@103@01 > 0)]
(assert (not (> b1@103@01 0)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (> b1@103@01 0)
  (and
    (> b1@103@01 0)
    (=>
      (and (img@122@01 x@123@01) (Seq_contains xs@102@01 (inv@121@01 x@123@01)))
      (and
        (not (= ($SortWrappers.$RefTo$Snap x@123@01) $Snap.unit))
        (=
          ($PSF.lookup_pred (as sm@125@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@123@01))
          ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first ($Snap.second $t@116@01))) ($SortWrappers.$RefTo$Snap x@123@01)))))
    (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@125@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@123@01))) x@123@01)
    (not (= x@123@01 $Ref.null)))))
; Joined path conditions
(assert (or (not (> b1@103@01 0)) (> b1@103@01 0)))
(push) ; 6
; [then-branch: 26 | False | live]
; [else-branch: 26 | True | live]
(push) ; 7
; [then-branch: 26 | False]
(assert false)
(pop) ; 7
(push) ; 7
; [else-branch: 26 | True]
; [eval] b1 > 0 ==> b2 > 0 ==> x.g > 0
; [eval] b1 > 0
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (> b1@103@01 0))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (> b1@103@01 0)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 27 | b1@103@01 > 0 | live]
; [else-branch: 27 | !(b1@103@01 > 0) | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 27 | b1@103@01 > 0]
(assert (> b1@103@01 0))
; [eval] b2 > 0 ==> x.g > 0
; [eval] b2 > 0
(push) ; 10
(push) ; 11
(set-option :timeout 10)
(assert (not (not (> b2@104@01 0))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (> b2@104@01 0)))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 28 | b2@104@01 > 0 | live]
; [else-branch: 28 | !(b2@104@01 > 0) | live]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 28 | b2@104@01 > 0]
(assert (> b2@104@01 0))
; [eval] x.g > 0
(push) ; 12
(assert (not (and (img@119@01 x@123@01) (Seq_contains xs@102@01 (inv@118@01 x@123@01)))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(pop) ; 11
(push) ; 11
; [else-branch: 28 | !(b2@104@01 > 0)]
(assert (not (> b2@104@01 0)))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (not (> b2@104@01 0)) (> b2@104@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 27 | !(b1@103@01 > 0)]
(assert (not (> b1@103@01 0)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  (> b1@103@01 0)
  (and (> b1@103@01 0) (or (not (> b2@104@01 0)) (> b2@104@01 0)))))
; Joined path conditions
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (> b1@103@01 0)
  (and (> b1@103@01 0) (or (not (> b2@104@01 0)) (> b2@104@01 0)))))
(pop) ; 5
(push) ; 5
; [else-branch: 24 | !(x@123@01 in xs@102@01)]
(assert (not (Seq_contains xs@102@01 x@123@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (Seq_contains xs@102@01 x@123@01)
  (and
    (Seq_contains xs@102@01 x@123@01)
    (=>
      (> b1@103@01 0)
      (and
        (> b1@103@01 0)
        (=>
          (and
            (img@122@01 x@123@01)
            (Seq_contains xs@102@01 (inv@121@01 x@123@01)))
          (and
            (not (= ($SortWrappers.$RefTo$Snap x@123@01) $Snap.unit))
            (=
              ($PSF.lookup_pred (as sm@125@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@123@01))
              ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first ($Snap.second $t@116@01))) ($SortWrappers.$RefTo$Snap x@123@01)))))
        (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@125@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@123@01))) x@123@01)
        (not (= x@123@01 $Ref.null))))
    (or (not (> b1@103@01 0)) (> b1@103@01 0))
    (=>
      (> b1@103@01 0)
      (and (> b1@103@01 0) (or (not (> b2@104@01 0)) (> b2@104@01 0)))))))
; Joined path conditions
(assert (or (not (Seq_contains xs@102@01 x@123@01)) (Seq_contains xs@102@01 x@123@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@123@01 $Ref)) (!
  (and
    (=>
      (Seq_contains xs@102@01 x@123@01)
      (and
        (Seq_contains xs@102@01 x@123@01)
        (=>
          (> b1@103@01 0)
          (and
            (> b1@103@01 0)
            (=>
              (and
                (img@122@01 x@123@01)
                (Seq_contains xs@102@01 (inv@121@01 x@123@01)))
              (and
                (not (= ($SortWrappers.$RefTo$Snap x@123@01) $Snap.unit))
                (=
                  ($PSF.lookup_pred (as sm@125@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@123@01))
                  ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first ($Snap.second $t@116@01))) ($SortWrappers.$RefTo$Snap x@123@01)))))
            (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@125@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@123@01))) x@123@01)
            (not (= x@123@01 $Ref.null))))
        (or (not (> b1@103@01 0)) (> b1@103@01 0))
        (=>
          (> b1@103@01 0)
          (and (> b1@103@01 0) (or (not (> b2@104@01 0)) (> b2@104@01 0))))))
    (or
      (not (Seq_contains xs@102@01 x@123@01))
      (Seq_contains xs@102@01 x@123@01)))
  :pattern ((Seq_contains xs@102@01 x@123@01))
  :pattern ((Seq_contains_trigger xs@102@01 x@123@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@63@11@63@150-aux|)))
(assert (forall ((x@123@01 $Ref)) (!
  (and
    (=>
      (Seq_contains xs@102@01 x@123@01)
      (and
        (Seq_contains xs@102@01 x@123@01)
        (=>
          (> b1@103@01 0)
          (and
            (> b1@103@01 0)
            (=>
              (and
                (img@122@01 x@123@01)
                (Seq_contains xs@102@01 (inv@121@01 x@123@01)))
              (and
                (not (= ($SortWrappers.$RefTo$Snap x@123@01) $Snap.unit))
                (=
                  ($PSF.lookup_pred (as sm@125@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@123@01))
                  ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first ($Snap.second $t@116@01))) ($SortWrappers.$RefTo$Snap x@123@01)))))
            (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@125@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@123@01))) x@123@01)
            (not (= x@123@01 $Ref.null))))
        (or (not (> b1@103@01 0)) (> b1@103@01 0))
        (=>
          (> b1@103@01 0)
          (and (> b1@103@01 0) (or (not (> b2@104@01 0)) (> b2@104@01 0))))))
    (or
      (not (Seq_contains xs@102@01 x@123@01))
      (Seq_contains xs@102@01 x@123@01)))
  :pattern ((Seq_contains_trigger xs@102@01 x@123@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@63@11@63@150-aux|)))
(assert (forall ((x@123@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@102@01 x@123@01) (and (> b1@103@01 0) (> b2@104@01 0)))
    (>
      ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@116@01)) x@123@01)
      0))
  :pattern ((Seq_contains xs@102@01 x@123@01))
  :pattern ((Seq_contains_trigger xs@102@01 x@123@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@63@11@63@150|)))
(pop) ; 2
(push) ; 2
(declare-const x@127@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@102@01 x@127@01))
(pop) ; 3
(declare-fun inv@128@01 ($Ref) $Ref)
(declare-fun img@129@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@127@01 $Ref) (x2@127@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@102@01 x1@127@01)
      (Seq_contains xs@102@01 x2@127@01)
      (= x1@127@01 x2@127@01))
    (= x1@127@01 x2@127@01))
  
  :qid |g-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@127@01 $Ref)) (!
  (=>
    (Seq_contains xs@102@01 x@127@01)
    (and (= (inv@128@01 x@127@01) x@127@01) (img@129@01 x@127@01)))
  :pattern ((Seq_contains xs@102@01 x@127@01))
  :pattern ((Seq_contains_trigger xs@102@01 x@127@01))
  :pattern ((inv@128@01 x@127@01))
  :pattern ((img@129@01 x@127@01))
  :qid |g-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@129@01 r) (Seq_contains xs@102@01 (inv@128@01 r)))
    (= (inv@128@01 r) r))
  :pattern ((inv@128@01 r))
  :qid |g-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@130@01 ((r $Ref)) $Perm
  (ite
    (and
      (Seq_contains xs@102@01 (inv@128@01 r))
      (img@129@01 r)
      (= r (inv@128@01 r)))
    ($Perm.min
      (ite
        (and (img@108@01 r) (Seq_contains xs@102@01 (inv@107@01 r)))
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
        (and (img@108@01 r) (Seq_contains xs@102@01 (inv@107@01 r)))
        $Perm.Write
        $Perm.No)
      (pTaken@130@01 r))
    $Perm.No)
  
  :qid |quant-u-15913|))))
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
      (Seq_contains xs@102@01 (inv@128@01 r))
      (img@129@01 r)
      (= r (inv@128@01 r)))
    (= (- $Perm.Write (pTaken@130@01 r)) $Perm.No))
  
  :qid |quant-u-15914|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const x@131@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs)
(assert (Seq_contains xs@102@01 x@131@01))
(pop) ; 3
(declare-fun inv@132@01 ($Ref) $Ref)
(declare-fun img@133@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@131@01 $Ref) (x2@131@01 $Ref)) (!
  (=>
    (and
      (Seq_contains xs@102@01 x1@131@01)
      (Seq_contains xs@102@01 x2@131@01)
      (= x1@131@01 x2@131@01))
    (= x1@131@01 x2@131@01))
  
  :qid |pred-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@131@01 $Ref)) (!
  (=>
    (Seq_contains xs@102@01 x@131@01)
    (and (= (inv@132@01 x@131@01) x@131@01) (img@133@01 x@131@01)))
  :pattern ((Seq_contains xs@102@01 x@131@01))
  :pattern ((Seq_contains_trigger xs@102@01 x@131@01))
  :pattern ((inv@132@01 x@131@01))
  :pattern ((img@133@01 x@131@01))
  :qid |pred-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@133@01 x) (Seq_contains xs@102@01 (inv@132@01 x)))
    (= (inv@132@01 x) x))
  :pattern ((inv@132@01 x))
  :qid |pred-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@134@01 ((x $Ref)) $Perm
  (ite
    (and
      (Seq_contains xs@102@01 (inv@132@01 x))
      (img@133@01 x)
      (= x (inv@132@01 x)))
    ($Perm.min
      (ite
        (and (img@111@01 x) (Seq_contains xs@102@01 (inv@110@01 x)))
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
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite
        (and (img@111@01 x) (Seq_contains xs@102@01 (inv@110@01 x)))
        $Perm.Write
        $Perm.No)
      (pTaken@134@01 x))
    $Perm.No)
  
  :qid |quant-u-15917|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and
      (Seq_contains xs@102@01 (inv@132@01 x))
      (img@133@01 x)
      (= x (inv@132@01 x)))
    (= (- $Perm.Write (pTaken@134@01 x)) $Perm.No))
  
  :qid |quant-u-15918|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall x: Ref :: { (x in xs) } (x in xs) ==> (b1 > 0 ==> (unfolding acc(pred(x), write) in true)) && (b1 > 0 ==> b2 > 0 ==> x.g > 0))
(declare-const x@135@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (x in xs) ==> (b1 > 0 ==> (unfolding acc(pred(x), write) in true)) && (b1 > 0 ==> b2 > 0 ==> x.g > 0)
; [eval] (x in xs)
(push) ; 4
; [then-branch: 29 | x@135@01 in xs@102@01 | live]
; [else-branch: 29 | !(x@135@01 in xs@102@01) | live]
(push) ; 5
; [then-branch: 29 | x@135@01 in xs@102@01]
(assert (Seq_contains xs@102@01 x@135@01))
; [eval] (b1 > 0 ==> (unfolding acc(pred(x), write) in true)) && (b1 > 0 ==> b2 > 0 ==> x.g > 0)
; [eval] b1 > 0 ==> (unfolding acc(pred(x), write) in true)
; [eval] b1 > 0
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not (> b1@103@01 0))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (> b1@103@01 0)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 30 | b1@103@01 > 0 | live]
; [else-branch: 30 | !(b1@103@01 > 0) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 30 | b1@103@01 > 0]
(assert (> b1@103@01 0))
; [eval] (unfolding acc(pred(x), write) in true)
(push) ; 8
; Precomputing data for removing quantified permissions
(define-fun pTaken@136@01 ((x $Ref) (x@135@01 $Ref)) $Perm
  (ite
    (= x x@135@01)
    ($Perm.min
      (ite
        (and (img@111@01 x) (Seq_contains xs@102@01 (inv@110@01 x)))
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
(push) ; 9
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite
        (and (img@111@01 x) (Seq_contains xs@102@01 (inv@110@01 x)))
        $Perm.Write
        $Perm.No)
      (pTaken@136@01 x x@135@01))
    $Perm.No)
  
  :qid |quant-u-15920|))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (pTaken@136@01 x x@135@01) $Perm.No)
  
  :qid |quant-u-15921|))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@135@01) (= (- $Perm.Write (pTaken@136@01 x x@135@01)) $Perm.No))
  
  :qid |quant-u-15922|))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and (img@111@01 x@135@01) (Seq_contains xs@102@01 (inv@110@01 x@135@01)))
  (and
    (not (= ($SortWrappers.$RefTo$Snap x@135@01) $Snap.unit))
    (=
      ($PSF.lookup_pred (as sm@114@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@135@01))
      ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first ($Snap.second $t@105@01))) ($SortWrappers.$RefTo$Snap x@135@01))))))
(assert (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@114@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@135@01))) x@135@01))
(assert (not (= x@135@01 $Ref.null)))
(pop) ; 8
; Joined path conditions
(assert (and
  (=>
    (and (img@111@01 x@135@01) (Seq_contains xs@102@01 (inv@110@01 x@135@01)))
    (and
      (not (= ($SortWrappers.$RefTo$Snap x@135@01) $Snap.unit))
      (=
        ($PSF.lookup_pred (as sm@114@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@135@01))
        ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first ($Snap.second $t@105@01))) ($SortWrappers.$RefTo$Snap x@135@01)))))
  (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@114@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@135@01))) x@135@01)
  (not (= x@135@01 $Ref.null))))
(pop) ; 7
(set-option :timeout 0)
(push) ; 7
; [else-branch: 30 | !(b1@103@01 > 0)]
(assert (not (> b1@103@01 0)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (> b1@103@01 0)
  (and
    (> b1@103@01 0)
    (=>
      (and (img@111@01 x@135@01) (Seq_contains xs@102@01 (inv@110@01 x@135@01)))
      (and
        (not (= ($SortWrappers.$RefTo$Snap x@135@01) $Snap.unit))
        (=
          ($PSF.lookup_pred (as sm@114@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@135@01))
          ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first ($Snap.second $t@105@01))) ($SortWrappers.$RefTo$Snap x@135@01)))))
    (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@114@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@135@01))) x@135@01)
    (not (= x@135@01 $Ref.null)))))
; Joined path conditions
(assert (or (not (> b1@103@01 0)) (> b1@103@01 0)))
(push) ; 6
; [then-branch: 31 | False | live]
; [else-branch: 31 | True | live]
(push) ; 7
; [then-branch: 31 | False]
(assert false)
(pop) ; 7
(push) ; 7
; [else-branch: 31 | True]
; [eval] b1 > 0 ==> b2 > 0 ==> x.g > 0
; [eval] b1 > 0
(push) ; 8
(push) ; 9
(set-option :timeout 10)
(assert (not (not (> b1@103@01 0))))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 9
(set-option :timeout 10)
(assert (not (> b1@103@01 0)))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 32 | b1@103@01 > 0 | live]
; [else-branch: 32 | !(b1@103@01 > 0) | live]
(set-option :timeout 0)
(push) ; 9
; [then-branch: 32 | b1@103@01 > 0]
(assert (> b1@103@01 0))
; [eval] b2 > 0 ==> x.g > 0
; [eval] b2 > 0
(push) ; 10
(push) ; 11
(set-option :timeout 10)
(assert (not (not (> b2@104@01 0))))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
(set-option :timeout 10)
(assert (not (> b2@104@01 0)))
(check-sat)
; unknown
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 33 | b2@104@01 > 0 | live]
; [else-branch: 33 | !(b2@104@01 > 0) | live]
(set-option :timeout 0)
(push) ; 11
; [then-branch: 33 | b2@104@01 > 0]
(assert (> b2@104@01 0))
; [eval] x.g > 0
(push) ; 12
(assert (not (and (img@108@01 x@135@01) (Seq_contains xs@102@01 (inv@107@01 x@135@01)))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(pop) ; 11
(push) ; 11
; [else-branch: 33 | !(b2@104@01 > 0)]
(assert (not (> b2@104@01 0)))
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(assert (or (not (> b2@104@01 0)) (> b2@104@01 0)))
(pop) ; 9
(push) ; 9
; [else-branch: 32 | !(b1@103@01 > 0)]
(assert (not (> b1@103@01 0)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  (> b1@103@01 0)
  (and (> b1@103@01 0) (or (not (> b2@104@01 0)) (> b2@104@01 0)))))
; Joined path conditions
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (> b1@103@01 0)
  (and (> b1@103@01 0) (or (not (> b2@104@01 0)) (> b2@104@01 0)))))
(pop) ; 5
(push) ; 5
; [else-branch: 29 | !(x@135@01 in xs@102@01)]
(assert (not (Seq_contains xs@102@01 x@135@01)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (Seq_contains xs@102@01 x@135@01)
  (and
    (Seq_contains xs@102@01 x@135@01)
    (=>
      (> b1@103@01 0)
      (and
        (> b1@103@01 0)
        (=>
          (and
            (img@111@01 x@135@01)
            (Seq_contains xs@102@01 (inv@110@01 x@135@01)))
          (and
            (not (= ($SortWrappers.$RefTo$Snap x@135@01) $Snap.unit))
            (=
              ($PSF.lookup_pred (as sm@114@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@135@01))
              ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first ($Snap.second $t@105@01))) ($SortWrappers.$RefTo$Snap x@135@01)))))
        (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@114@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@135@01))) x@135@01)
        (not (= x@135@01 $Ref.null))))
    (or (not (> b1@103@01 0)) (> b1@103@01 0))
    (=>
      (> b1@103@01 0)
      (and (> b1@103@01 0) (or (not (> b2@104@01 0)) (> b2@104@01 0)))))))
; Joined path conditions
(assert (or (not (Seq_contains xs@102@01 x@135@01)) (Seq_contains xs@102@01 x@135@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@135@01 $Ref)) (!
  (and
    (=>
      (Seq_contains xs@102@01 x@135@01)
      (and
        (Seq_contains xs@102@01 x@135@01)
        (=>
          (> b1@103@01 0)
          (and
            (> b1@103@01 0)
            (=>
              (and
                (img@111@01 x@135@01)
                (Seq_contains xs@102@01 (inv@110@01 x@135@01)))
              (and
                (not (= ($SortWrappers.$RefTo$Snap x@135@01) $Snap.unit))
                (=
                  ($PSF.lookup_pred (as sm@114@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@135@01))
                  ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first ($Snap.second $t@105@01))) ($SortWrappers.$RefTo$Snap x@135@01)))))
            (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@114@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@135@01))) x@135@01)
            (not (= x@135@01 $Ref.null))))
        (or (not (> b1@103@01 0)) (> b1@103@01 0))
        (=>
          (> b1@103@01 0)
          (and (> b1@103@01 0) (or (not (> b2@104@01 0)) (> b2@104@01 0))))))
    (or
      (not (Seq_contains xs@102@01 x@135@01))
      (Seq_contains xs@102@01 x@135@01)))
  :pattern ((Seq_contains xs@102@01 x@135@01))
  :pattern ((Seq_contains_trigger xs@102@01 x@135@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@63@11@63@150-aux|)))
(assert (forall ((x@135@01 $Ref)) (!
  (and
    (=>
      (Seq_contains xs@102@01 x@135@01)
      (and
        (Seq_contains xs@102@01 x@135@01)
        (=>
          (> b1@103@01 0)
          (and
            (> b1@103@01 0)
            (=>
              (and
                (img@111@01 x@135@01)
                (Seq_contains xs@102@01 (inv@110@01 x@135@01)))
              (and
                (not (= ($SortWrappers.$RefTo$Snap x@135@01) $Snap.unit))
                (=
                  ($PSF.lookup_pred (as sm@114@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@135@01))
                  ($PSF.lookup_pred ($SortWrappers.$SnapTo$PSF<pred> ($Snap.first ($Snap.second $t@105@01))) ($SortWrappers.$RefTo$Snap x@135@01)))))
            (pred%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_pred (as sm@114@01  $PSF<pred>) ($SortWrappers.$RefTo$Snap x@135@01))) x@135@01)
            (not (= x@135@01 $Ref.null))))
        (or (not (> b1@103@01 0)) (> b1@103@01 0))
        (=>
          (> b1@103@01 0)
          (and (> b1@103@01 0) (or (not (> b2@104@01 0)) (> b2@104@01 0))))))
    (or
      (not (Seq_contains xs@102@01 x@135@01))
      (Seq_contains xs@102@01 x@135@01)))
  :pattern ((Seq_contains_trigger xs@102@01 x@135@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@63@11@63@150-aux|)))
(push) ; 3
(assert (not (forall ((x@135@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@102@01 x@135@01) (and (> b1@103@01 0) (> b2@104@01 0)))
    (>
      ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@105@01)) x@135@01)
      0))
  :pattern ((Seq_contains xs@102@01 x@135@01))
  :pattern ((Seq_contains_trigger xs@102@01 x@135@01))
  :pattern ((Seq_contains_trigger xs@102@01 x@135@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@63@11@63@150|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((x@135@01 $Ref)) (!
  (=>
    (and (Seq_contains xs@102@01 x@135@01) (and (> b1@103@01 0) (> b2@104@01 0)))
    (>
      ($FVF.lookup_g ($SortWrappers.$SnapTo$FVF<g> ($Snap.first $t@105@01)) x@135@01)
      0))
  :pattern ((Seq_contains xs@102@01 x@135@01))
  :pattern ((Seq_contains_trigger xs@102@01 x@135@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/quantifiedcombinations/dependency.vpr@63@11@63@150|)))
(pop) ; 2
(pop) ; 1
