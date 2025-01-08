(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-08 21:25:54
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
(declare-sort Set<$Snap> 0)
(declare-sort $PSF<OpaqueField_State> 0)
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
(declare-fun $SortWrappers.$PSF<OpaqueField_State>To$Snap ($PSF<OpaqueField_State>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<OpaqueField_State> ($Snap) $PSF<OpaqueField_State>)
(assert (forall ((x $PSF<OpaqueField_State>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<OpaqueField_State>($SortWrappers.$PSF<OpaqueField_State>To$Snap x)))
    :pattern (($SortWrappers.$PSF<OpaqueField_State>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<OpaqueField_State>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<OpaqueField_State>To$Snap($SortWrappers.$SnapTo$PSF<OpaqueField_State> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<OpaqueField_State> x))
    :qid |$Snap.$PSF<OpaqueField_State>To$SnapTo$PSF<OpaqueField_State>|
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
; /predicate_snap_functions_declarations.smt2 [OpaqueField_State: Snap]
(declare-fun $PSF.domain_OpaqueField_State ($PSF<OpaqueField_State>) Set<$Snap>)
(declare-fun $PSF.lookup_OpaqueField_State ($PSF<OpaqueField_State> $Snap) $Snap)
(declare-fun $PSF.after_OpaqueField_State ($PSF<OpaqueField_State> $PSF<OpaqueField_State>) Bool)
(declare-fun $PSF.loc_OpaqueField_State ($Snap $Snap) Bool)
(declare-fun $PSF.perm_OpaqueField_State ($PPM $Snap) $Perm)
(declare-const $psfTOP_OpaqueField_State $PSF<OpaqueField_State>)
; Declaring symbols related to program functions (from program analysis)
(declare-fun is_int_ ($Snap $Ref) Bool)
(declare-fun is_int%limited ($Snap $Ref) Bool)
(declare-fun is_int%stateless ($Ref) Bool)
(declare-fun is_int%precondition ($Snap $Ref) Bool)
(declare-fun SCIONPath_get_iof ($Snap $Ref) $Ref)
(declare-fun SCIONPath_get_iof%limited ($Snap $Ref) $Ref)
(declare-fun SCIONPath_get_iof%stateless ($Ref) Bool)
(declare-fun SCIONPath_get_iof%precondition ($Snap $Ref) Bool)
(declare-fun OpaqueFieldList_contents ($Snap $Ref) Seq<$Ref>)
(declare-fun OpaqueFieldList_contents%limited ($Snap $Ref) Seq<$Ref>)
(declare-fun OpaqueFieldList_contents%stateless ($Ref) Bool)
(declare-fun OpaqueFieldList_contents%precondition ($Snap $Ref) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun OpaqueField_State%trigger ($Snap $Ref) Bool)
(declare-fun OpaqueFieldList_State%trigger ($Snap $Ref) Bool)
(declare-fun SCIONPath_State%trigger ($Snap $Ref) Bool)
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
; /predicate_snap_functions_axioms.smt2 [OpaqueField_State: Snap]
(assert (forall ((vs $PSF<OpaqueField_State>) (ws $PSF<OpaqueField_State>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_OpaqueField_State vs) ($PSF.domain_OpaqueField_State ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_OpaqueField_State vs))
            (= ($PSF.lookup_OpaqueField_State vs x) ($PSF.lookup_OpaqueField_State ws x)))
          :pattern (($PSF.lookup_OpaqueField_State vs x) ($PSF.lookup_OpaqueField_State ws x))
          :qid |qp.$PSF<OpaqueField_State>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<OpaqueField_State>To$Snap vs)
              ($SortWrappers.$PSF<OpaqueField_State>To$Snap ws)
              )
    :qid |qp.$PSF<OpaqueField_State>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_OpaqueField_State pm s))
    :pattern (($PSF.perm_OpaqueField_State pm s)))))
(assert (forall ((s $Snap) (f $Snap)) (!
    (= ($PSF.loc_OpaqueField_State f s) true)
    :pattern (($PSF.loc_OpaqueField_State f s)))))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ---------- FUNCTION is_int----------
(declare-fun r@0@00 () $Ref)
(declare-fun result@1@00 () Bool)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (r@0@00 $Ref)) (!
  (= (is_int%limited s@$ r@0@00) (is_int_ s@$ r@0@00))
  :pattern ((is_int_ s@$ r@0@00))
  :qid |quant-u-25640|)))
(assert (forall ((s@$ $Snap) (r@0@00 $Ref)) (!
  (is_int%stateless r@0@00)
  :pattern ((is_int%limited s@$ r@0@00))
  :qid |quant-u-25641|)))
; ---------- FUNCTION SCIONPath_get_iof----------
(declare-fun self@2@00 () $Ref)
(declare-fun result@3@00 () $Ref)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (= (SCIONPath_get_iof%limited s@$ self@2@00) (SCIONPath_get_iof s@$ self@2@00))
  :pattern ((SCIONPath_get_iof s@$ self@2@00))
  :qid |quant-u-25642|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (SCIONPath_get_iof%stateless self@2@00)
  :pattern ((SCIONPath_get_iof%limited s@$ self@2@00))
  :qid |quant-u-25643|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (!is_int(null) ? null : (unfolding acc(SCIONPath_State(self), wildcard) in null))
; [eval] !is_int(null)
; [eval] is_int(null)
(set-option :timeout 0)
(push) ; 2
(assert (is_int%precondition $Snap.unit $Ref.null))
(pop) ; 2
; Joined path conditions
(assert (is_int%precondition $Snap.unit $Ref.null))
(push) ; 2
(push) ; 3
(set-option :timeout 10)
(assert (not (is_int_ $Snap.unit $Ref.null)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (is_int_ $Snap.unit $Ref.null))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | !(is_int(_, Null)) | live]
; [else-branch: 0 | is_int(_, Null) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | !(is_int(_, Null))]
(assert (not (is_int_ $Snap.unit $Ref.null)))
(pop) ; 3
(push) ; 3
; [else-branch: 0 | is_int(_, Null)]
(assert (is_int_ $Snap.unit $Ref.null))
; [eval] (unfolding acc(SCIONPath_State(self), wildcard) in null)
(declare-const $k@6@00 $Perm)
(assert ($Perm.isReadVar $k@6@00))
(push) ; 4
(assert (not (< $Perm.No $k@6@00)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(push) ; 4
(declare-const $k@7@00 $Perm)
(assert ($Perm.isReadVar $k@7@00))
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@7@00)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (SCIONPath_State%trigger s@$ self@2@00))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (<= $Perm.No $k@6@00))
(assert (=> (< $Perm.No $k@6@00) (not (= self@2@00 $Ref.null))))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@6@00)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (= ($Snap.second ($Snap.second s@$)) $Snap.unit))
; [eval] (unfolding acc(OpaqueFieldList_State(self.SCIONPath__ofs), write) in true)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< $Perm.No $k@6@00)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@6@00)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@6@00)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (OpaqueFieldList_State%trigger ($Snap.first ($Snap.second s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$))))
(declare-const x@8@00 $Ref)
(set-option :timeout 0)
(push) ; 6
; [eval] (x in OpaqueFieldList_contents(self))
; [eval] OpaqueFieldList_contents(self)
(push) ; 7
(assert (OpaqueFieldList_contents%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$))))
(pop) ; 7
; Joined path conditions
(assert (OpaqueFieldList_contents%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$))))
(assert (Seq_contains
  (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
  x@8@00))
(pop) ; 6
(declare-fun inv@9@00 ($Snap $Ref $Ref) $Ref)
(declare-fun img@10@00 ($Snap $Ref $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((x@8@00 $Ref)) (!
  (=>
    (Seq_contains
      (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
      x@8@00)
    (OpaqueFieldList_contents%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$))))
  :pattern ((Seq_contains
    (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
    x@8@00))
  :pattern ((Seq_contains_trigger
    (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
    x@8@00))
  :qid |OpaqueField_State-aux|)))
; Check receiver injectivity
(assert (forall ((x1@8@00 $Ref) (x2@8@00 $Ref)) (!
  (and
    (OpaqueFieldList_contents%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
    (=>
      (Seq_contains
        (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
        x1@8@00)
      (OpaqueFieldList_contents%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))))
  
  :qid |OpaqueField_State-rcvrInj|)))
(push) ; 6
(assert (not (forall ((x1@8@00 $Ref) (x2@8@00 $Ref)) (!
  (=>
    (and
      (Seq_contains
        (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
        x1@8@00)
      (Seq_contains
        (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
        x2@8@00)
      (= x1@8@00 x2@8@00))
    (= x1@8@00 x2@8@00))
  
  :qid |OpaqueField_State-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@8@00 $Ref)) (!
  (OpaqueFieldList_contents%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
  :pattern ((Seq_contains
    (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
    x@8@00))
  :pattern ((Seq_contains_trigger
    (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
    x@8@00))
  :pattern ((Seq_contains_trigger
    (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
    x@8@00))
  :qid |quant-u-25647|)))
(assert (forall ((self $Ref)) (!
  (=>
    (img@10@00 s@$ self@2@00 self)
    (OpaqueFieldList_contents%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$))))
  :pattern ((inv@9@00 s@$ self@2@00 self))
  :qid |OpaqueField_State-fctOfInv|)))
(assert (forall ((x@8@00 $Ref)) (!
  (=>
    (and
      (Seq_contains
        (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
        x@8@00)
      (< $Perm.No $k@6@00))
    (and
      (= (inv@9@00 s@$ self@2@00 x@8@00) x@8@00)
      (img@10@00 s@$ self@2@00 x@8@00)))
  :pattern ((Seq_contains
    (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
    x@8@00))
  :pattern ((Seq_contains_trigger
    (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
    x@8@00))
  :qid |quant-u-25647|)))
(assert (forall ((self $Ref)) (!
  (=>
    (and
      (img@10@00 s@$ self@2@00 self)
      (and
        (Seq_contains
          (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
          (inv@9@00 s@$ self@2@00 self))
        (< $Perm.No $k@6@00)))
    (= (inv@9@00 s@$ self@2@00 self) self))
  :pattern ((inv@9@00 s@$ self@2@00 self))
  :qid |OpaqueField_State-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((x@8@00 $Ref)) (!
  (<= $Perm.No $k@6@00)
  :pattern ((Seq_contains
    (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
    x@8@00))
  :pattern ((Seq_contains_trigger
    (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
    x@8@00))
  :qid |OpaqueField_State-permAtLeastZero|)))
(pop) ; 5
; Joined path conditions
(assert (forall ((self $Ref)) (!
  (=>
    (img@10@00 s@$ self@2@00 self)
    (OpaqueFieldList_contents%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$))))
  :pattern ((inv@9@00 s@$ self@2@00 self))
  :qid |OpaqueField_State-fctOfInv|)))
(assert (forall ((self $Ref)) (!
  (=>
    (and
      (img@10@00 s@$ self@2@00 self)
      (and
        (Seq_contains
          (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
          (inv@9@00 s@$ self@2@00 self))
        (< $Perm.No $k@6@00)))
    (= (inv@9@00 s@$ self@2@00 self) self))
  :pattern ((inv@9@00 s@$ self@2@00 self))
  :qid |OpaqueField_State-fctOfInv|)))
(assert (and
  (OpaqueFieldList_State%trigger ($Snap.first ($Snap.second s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
  (forall ((x@8@00 $Ref)) (!
    (=>
      (Seq_contains
        (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
        x@8@00)
      (OpaqueFieldList_contents%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$))))
    :pattern ((Seq_contains
      (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
      x@8@00))
    :pattern ((Seq_contains_trigger
      (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
      x@8@00))
    :qid |OpaqueField_State-aux|))
  (forall ((x1@8@00 $Ref) (x2@8@00 $Ref)) (!
    (and
      (OpaqueFieldList_contents%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
      (=>
        (Seq_contains
          (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
          x1@8@00)
        (OpaqueFieldList_contents%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))))
    
    :qid |OpaqueField_State-rcvrInj|))))
(assert (and
  (forall ((x@8@00 $Ref)) (!
    (OpaqueFieldList_contents%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
    :pattern ((Seq_contains
      (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
      x@8@00))
    :pattern ((Seq_contains_trigger
      (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
      x@8@00))
    :pattern ((Seq_contains_trigger
      (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
      x@8@00))
    :qid |quant-u-25647|))
  (forall ((x@8@00 $Ref)) (!
    (=>
      (and
        (Seq_contains
          (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
          x@8@00)
        (< $Perm.No $k@6@00))
      (and
        (= (inv@9@00 s@$ self@2@00 x@8@00) x@8@00)
        (img@10@00 s@$ self@2@00 x@8@00)))
    :pattern ((Seq_contains
      (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
      x@8@00))
    :pattern ((Seq_contains_trigger
      (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
      x@8@00))
    :qid |quant-u-25647|))
  (forall ((x@8@00 $Ref)) (!
    (<= $Perm.No $k@6@00)
    :pattern ((Seq_contains
      (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
      x@8@00))
    :pattern ((Seq_contains_trigger
      (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
      x@8@00))
    :qid |OpaqueField_State-permAtLeastZero|))))
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@7@00))
(assert (forall ((self $Ref)) (!
  (=>
    (img@10@00 s@$ self@2@00 self)
    (OpaqueFieldList_contents%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$))))
  :pattern ((inv@9@00 s@$ self@2@00 self))
  :qid |OpaqueField_State-fctOfInv|)))
(assert (forall ((self $Ref)) (!
  (=>
    (and
      (img@10@00 s@$ self@2@00 self)
      (and
        (Seq_contains
          (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
          (inv@9@00 s@$ self@2@00 self))
        (< $Perm.No $k@6@00)))
    (= (inv@9@00 s@$ self@2@00 self) self))
  :pattern ((inv@9@00 s@$ self@2@00 self))
  :qid |OpaqueField_State-fctOfInv|)))
(assert (and
  (SCIONPath_State%trigger s@$ self@2@00)
  (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$)))
  (<= $Perm.No $k@6@00)
  (=> (< $Perm.No $k@6@00) (not (= self@2@00 $Ref.null)))
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (= ($Snap.second ($Snap.second s@$)) $Snap.unit)
  (OpaqueFieldList_State%trigger ($Snap.first ($Snap.second s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
  (forall ((x@8@00 $Ref)) (!
    (=>
      (Seq_contains
        (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
        x@8@00)
      (OpaqueFieldList_contents%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$))))
    :pattern ((Seq_contains
      (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
      x@8@00))
    :pattern ((Seq_contains_trigger
      (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
      x@8@00))
    :qid |OpaqueField_State-aux|))
  (forall ((x1@8@00 $Ref) (x2@8@00 $Ref)) (!
    (and
      (OpaqueFieldList_contents%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
      (=>
        (Seq_contains
          (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
          x1@8@00)
        (OpaqueFieldList_contents%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))))
    
    :qid |OpaqueField_State-rcvrInj|))
  (forall ((x@8@00 $Ref)) (!
    (OpaqueFieldList_contents%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
    :pattern ((Seq_contains
      (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
      x@8@00))
    :pattern ((Seq_contains_trigger
      (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
      x@8@00))
    :pattern ((Seq_contains_trigger
      (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
      x@8@00))
    :qid |quant-u-25647|))
  (forall ((x@8@00 $Ref)) (!
    (=>
      (and
        (Seq_contains
          (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
          x@8@00)
        (< $Perm.No $k@6@00))
      (and
        (= (inv@9@00 s@$ self@2@00 x@8@00) x@8@00)
        (img@10@00 s@$ self@2@00 x@8@00)))
    :pattern ((Seq_contains
      (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
      x@8@00))
    :pattern ((Seq_contains_trigger
      (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
      x@8@00))
    :qid |quant-u-25647|))
  (forall ((x@8@00 $Ref)) (!
    (<= $Perm.No $k@6@00)
    :pattern ((Seq_contains
      (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
      x@8@00))
    :pattern ((Seq_contains_trigger
      (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
      x@8@00))
    :qid |OpaqueField_State-permAtLeastZero|))))
(pop) ; 3
(pop) ; 2
; Joined path conditions
; Joined path conditions
(assert ($Perm.isReadVar $k@6@00))
(assert ($Perm.isReadVar $k@7@00))
(assert (forall ((self $Ref)) (!
  (=>
    (img@10@00 s@$ self@2@00 self)
    (OpaqueFieldList_contents%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$))))
  :pattern ((inv@9@00 s@$ self@2@00 self))
  :qid |OpaqueField_State-fctOfInv|)))
(assert (forall ((self $Ref)) (!
  (=>
    (and
      (img@10@00 s@$ self@2@00 self)
      (and
        (Seq_contains
          (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
          (inv@9@00 s@$ self@2@00 self))
        (< $Perm.No $k@6@00)))
    (= (inv@9@00 s@$ self@2@00 self) self))
  :pattern ((inv@9@00 s@$ self@2@00 self))
  :qid |OpaqueField_State-fctOfInv|)))
(assert (=>
  (is_int_ $Snap.unit $Ref.null)
  (and
    (is_int_ $Snap.unit $Ref.null)
    (SCIONPath_State%trigger s@$ self@2@00)
    (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$)))
    (<= $Perm.No $k@6@00)
    (=> (< $Perm.No $k@6@00) (not (= self@2@00 $Ref.null)))
    (=
      ($Snap.second s@$)
      ($Snap.combine
        ($Snap.first ($Snap.second s@$))
        ($Snap.second ($Snap.second s@$))))
    (= ($Snap.second ($Snap.second s@$)) $Snap.unit)
    (OpaqueFieldList_State%trigger ($Snap.first ($Snap.second s@$)) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
    (forall ((x@8@00 $Ref)) (!
      (=>
        (Seq_contains
          (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
          x@8@00)
        (OpaqueFieldList_contents%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$))))
      :pattern ((Seq_contains
        (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
        x@8@00))
      :pattern ((Seq_contains_trigger
        (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
        x@8@00))
      :qid |OpaqueField_State-aux|))
    (forall ((x1@8@00 $Ref) (x2@8@00 $Ref)) (!
      (and
        (OpaqueFieldList_contents%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
        (=>
          (Seq_contains
            (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
            x1@8@00)
          (OpaqueFieldList_contents%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))))
      
      :qid |OpaqueField_State-rcvrInj|))
    (forall ((x@8@00 $Ref)) (!
      (OpaqueFieldList_contents%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
      :pattern ((Seq_contains
        (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
        x@8@00))
      :pattern ((Seq_contains_trigger
        (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
        x@8@00))
      :pattern ((Seq_contains_trigger
        (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
        x@8@00))
      :qid |quant-u-25647|))
    (forall ((x@8@00 $Ref)) (!
      (=>
        (and
          (Seq_contains
            (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
            x@8@00)
          (< $Perm.No $k@6@00))
        (and
          (= (inv@9@00 s@$ self@2@00 x@8@00) x@8@00)
          (img@10@00 s@$ self@2@00 x@8@00)))
      :pattern ((Seq_contains
        (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
        x@8@00))
      :pattern ((Seq_contains_trigger
        (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
        x@8@00))
      :qid |quant-u-25647|))
    (forall ((x@8@00 $Ref)) (!
      (<= $Perm.No $k@6@00)
      :pattern ((Seq_contains
        (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
        x@8@00))
      :pattern ((Seq_contains_trigger
        (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
        x@8@00))
      :qid |OpaqueField_State-permAtLeastZero|)))))
(assert (or (is_int_ $Snap.unit $Ref.null) (not (is_int_ $Snap.unit $Ref.null))))
(assert (= result@3@00 $Ref.null))
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  (and
    (forall ((x@8@00 $Ref)) (!
      (=>
        (and
          (Seq_contains
            (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
            x@8@00)
          (< $Perm.No $k@6@00))
        (and
          (= (inv@9@00 s@$ self@2@00 x@8@00) x@8@00)
          (img@10@00 s@$ self@2@00 x@8@00)))
      :pattern ((Seq_contains
        (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
        x@8@00))
      :pattern ((Seq_contains_trigger
        (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
        x@8@00))
      :qid |quant-u-25647|))
    (forall ((self $Ref)) (!
      (=>
        (and
          (img@10@00 s@$ self@2@00 self)
          (and
            (Seq_contains
              (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))
              (inv@9@00 s@$ self@2@00 self))
            (< $Perm.No $k@6@00)))
        (= (inv@9@00 s@$ self@2@00 self) self))
      :pattern ((inv@9@00 s@$ self@2@00 self))
      :qid |OpaqueField_State-fctOfInv|))
    ($Perm.isReadVar $k@6@00)
    ($Perm.isReadVar $k@7@00)
    (=>
      (SCIONPath_get_iof%precondition s@$ self@2@00)
      (= (SCIONPath_get_iof s@$ self@2@00) $Ref.null)))
  :pattern ((SCIONPath_get_iof s@$ self@2@00))
  :qid |quant-u-25648|)))
(assert (forall ((s@$ $Snap) (self@2@00 $Ref)) (!
  true
  :pattern ((SCIONPath_get_iof s@$ self@2@00))
  :qid |quant-u-25649|)))
; ---------- FUNCTION OpaqueFieldList_contents----------
(declare-fun self@4@00 () $Ref)
(declare-fun result@5@00 () Seq<$Ref>)
; ----- Well-definedness of specifications -----
(push) ; 1
(pop) ; 1
(assert (forall ((s@$ $Snap) (self@4@00 $Ref)) (!
  (=
    (OpaqueFieldList_contents%limited s@$ self@4@00)
    (OpaqueFieldList_contents s@$ self@4@00))
  :pattern ((OpaqueFieldList_contents s@$ self@4@00))
  :qid |quant-u-25644|)))
(assert (forall ((s@$ $Snap) (self@4@00 $Ref)) (!
  (OpaqueFieldList_contents%stateless self@4@00)
  :pattern ((OpaqueFieldList_contents%limited s@$ self@4@00))
  :qid |quant-u-25645|)))
; ---------- OpaqueField_State ----------
(declare-const self@11@00 $Ref)
(push) ; 1
(declare-const $t@12@00 $Snap)
(assert (= $t@12@00 $Snap.unit))
(pop) ; 1
; ---------- OpaqueFieldList_State ----------
(declare-const self@13@00 $Ref)
(push) ; 1
(declare-const x@14@00 $Ref)
(push) ; 2
; [eval] (x in OpaqueFieldList_contents(self))
; [eval] OpaqueFieldList_contents(self)
(push) ; 3
(assert (OpaqueFieldList_contents%precondition $Snap.unit self@13@00))
(pop) ; 3
; Joined path conditions
(assert (OpaqueFieldList_contents%precondition $Snap.unit self@13@00))
(assert (Seq_contains (OpaqueFieldList_contents $Snap.unit self@13@00) x@14@00))
(pop) ; 2
(declare-const $t@15@00 $PSF<OpaqueField_State>)
(declare-fun inv@16@00 ($Ref) $Ref)
(declare-fun img@17@00 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((x@14@00 $Ref)) (!
  (=>
    (Seq_contains (OpaqueFieldList_contents $Snap.unit self@13@00) x@14@00)
    (OpaqueFieldList_contents%precondition $Snap.unit self@13@00))
  :pattern ((Seq_contains
    (OpaqueFieldList_contents $Snap.unit self@13@00)
    x@14@00))
  :pattern ((Seq_contains_trigger
    (OpaqueFieldList_contents $Snap.unit self@13@00)
    x@14@00))
  :qid |OpaqueField_State-aux|)))
; Check receiver injectivity
(assert (forall ((x1@14@00 $Ref) (x2@14@00 $Ref)) (!
  (and
    (OpaqueFieldList_contents%precondition $Snap.unit self@13@00)
    (=>
      (Seq_contains (OpaqueFieldList_contents $Snap.unit self@13@00) x1@14@00)
      (OpaqueFieldList_contents%precondition $Snap.unit self@13@00)))
  
  :qid |OpaqueField_State-rcvrInj|)))
(push) ; 2
(assert (not (forall ((x1@14@00 $Ref) (x2@14@00 $Ref)) (!
  (=>
    (and
      (Seq_contains (OpaqueFieldList_contents $Snap.unit self@13@00) x1@14@00)
      (Seq_contains (OpaqueFieldList_contents $Snap.unit self@13@00) x2@14@00)
      (= x1@14@00 x2@14@00))
    (= x1@14@00 x2@14@00))
  
  :qid |OpaqueField_State-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@14@00 $Ref)) (!
  (OpaqueFieldList_contents%precondition $Snap.unit self@13@00)
  :pattern ((Seq_contains
    (OpaqueFieldList_contents $Snap.unit self@13@00)
    x@14@00))
  :pattern ((Seq_contains_trigger
    (OpaqueFieldList_contents $Snap.unit self@13@00)
    x@14@00))
  :pattern ((Seq_contains_trigger
    (OpaqueFieldList_contents $Snap.unit self@13@00)
    x@14@00))
  :qid |quant-u-25651|)))
(assert (forall ((self $Ref)) (!
  (=>
    (img@17@00 self)
    (OpaqueFieldList_contents%precondition $Snap.unit self@13@00))
  :pattern ((inv@16@00 self))
  :qid |OpaqueField_State-fctOfInv|)))
(assert (forall ((x@14@00 $Ref)) (!
  (=>
    (Seq_contains (OpaqueFieldList_contents $Snap.unit self@13@00) x@14@00)
    (and (= (inv@16@00 x@14@00) x@14@00) (img@17@00 x@14@00)))
  :pattern ((Seq_contains
    (OpaqueFieldList_contents $Snap.unit self@13@00)
    x@14@00))
  :pattern ((Seq_contains_trigger
    (OpaqueFieldList_contents $Snap.unit self@13@00)
    x@14@00))
  :qid |quant-u-25651|)))
(assert (forall ((self $Ref)) (!
  (=>
    (and
      (img@17@00 self)
      (Seq_contains
        (OpaqueFieldList_contents $Snap.unit self@13@00)
        (inv@16@00 self)))
    (= (inv@16@00 self) self))
  :pattern ((inv@16@00 self))
  :qid |OpaqueField_State-fctOfInv|)))
; Permissions are non-negative
(pop) ; 1
; ---------- SCIONPath_State ----------
(declare-const self@18@00 $Ref)
(push) ; 1
(declare-const $t@19@00 $Snap)
(assert (= $t@19@00 ($Snap.combine ($Snap.first $t@19@00) ($Snap.second $t@19@00))))
(assert (not (= self@18@00 $Ref.null)))
(assert (=
  ($Snap.second $t@19@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@19@00))
    ($Snap.second ($Snap.second $t@19@00)))))
(assert (= ($Snap.second ($Snap.second $t@19@00)) $Snap.unit))
; [eval] (unfolding acc(OpaqueFieldList_State(self.SCIONPath__ofs), write) in true)
(push) ; 2
(assert (OpaqueFieldList_State%trigger ($Snap.first ($Snap.second $t@19@00)) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00))))
(declare-const x@20@00 $Ref)
(push) ; 3
; [eval] (x in OpaqueFieldList_contents(self))
; [eval] OpaqueFieldList_contents(self)
(push) ; 4
(assert (OpaqueFieldList_contents%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00))))
(pop) ; 4
; Joined path conditions
(assert (OpaqueFieldList_contents%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00))))
(assert (Seq_contains
  (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00)))
  x@20@00))
(pop) ; 3
(declare-fun inv@21@00 ($Ref) $Ref)
(declare-fun img@22@00 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((x@20@00 $Ref)) (!
  (=>
    (Seq_contains
      (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00)))
      x@20@00)
    (OpaqueFieldList_contents%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00))))
  :pattern ((Seq_contains
    (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00)))
    x@20@00))
  :pattern ((Seq_contains_trigger
    (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00)))
    x@20@00))
  :qid |OpaqueField_State-aux|)))
; Check receiver injectivity
(assert (forall ((x1@20@00 $Ref) (x2@20@00 $Ref)) (!
  (and
    (OpaqueFieldList_contents%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00)))
    (=>
      (Seq_contains
        (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00)))
        x1@20@00)
      (OpaqueFieldList_contents%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00)))))
  
  :qid |OpaqueField_State-rcvrInj|)))
(push) ; 3
(assert (not (forall ((x1@20@00 $Ref) (x2@20@00 $Ref)) (!
  (=>
    (and
      (Seq_contains
        (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00)))
        x1@20@00)
      (Seq_contains
        (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00)))
        x2@20@00)
      (= x1@20@00 x2@20@00))
    (= x1@20@00 x2@20@00))
  
  :qid |OpaqueField_State-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@20@00 $Ref)) (!
  (OpaqueFieldList_contents%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00)))
  :pattern ((Seq_contains
    (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00)))
    x@20@00))
  :pattern ((Seq_contains_trigger
    (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00)))
    x@20@00))
  :pattern ((Seq_contains_trigger
    (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00)))
    x@20@00))
  :qid |quant-u-25653|)))
(assert (forall ((self $Ref)) (!
  (=>
    (img@22@00 self)
    (OpaqueFieldList_contents%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00))))
  :pattern ((inv@21@00 self))
  :qid |OpaqueField_State-fctOfInv|)))
(assert (forall ((x@20@00 $Ref)) (!
  (=>
    (Seq_contains
      (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00)))
      x@20@00)
    (and (= (inv@21@00 x@20@00) x@20@00) (img@22@00 x@20@00)))
  :pattern ((Seq_contains
    (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00)))
    x@20@00))
  :pattern ((Seq_contains_trigger
    (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00)))
    x@20@00))
  :qid |quant-u-25653|)))
(assert (forall ((self $Ref)) (!
  (=>
    (and
      (img@22@00 self)
      (Seq_contains
        (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00)))
        (inv@21@00 self)))
    (= (inv@21@00 self) self))
  :pattern ((inv@21@00 self))
  :qid |OpaqueField_State-fctOfInv|)))
; Permissions are non-negative
(pop) ; 2
; Joined path conditions
(assert (forall ((self $Ref)) (!
  (=>
    (img@22@00 self)
    (OpaqueFieldList_contents%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00))))
  :pattern ((inv@21@00 self))
  :qid |OpaqueField_State-fctOfInv|)))
(assert (forall ((self $Ref)) (!
  (=>
    (and
      (img@22@00 self)
      (Seq_contains
        (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00)))
        (inv@21@00 self)))
    (= (inv@21@00 self) self))
  :pattern ((inv@21@00 self))
  :qid |OpaqueField_State-fctOfInv|)))
(assert (and
  (OpaqueFieldList_State%trigger ($Snap.first ($Snap.second $t@19@00)) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00)))
  (forall ((x@20@00 $Ref)) (!
    (=>
      (Seq_contains
        (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00)))
        x@20@00)
      (OpaqueFieldList_contents%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00))))
    :pattern ((Seq_contains
      (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00)))
      x@20@00))
    :pattern ((Seq_contains_trigger
      (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00)))
      x@20@00))
    :qid |OpaqueField_State-aux|))
  (forall ((x1@20@00 $Ref) (x2@20@00 $Ref)) (!
    (and
      (OpaqueFieldList_contents%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00)))
      (=>
        (Seq_contains
          (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00)))
          x1@20@00)
        (OpaqueFieldList_contents%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00)))))
    
    :qid |OpaqueField_State-rcvrInj|))))
(assert (and
  (forall ((x@20@00 $Ref)) (!
    (OpaqueFieldList_contents%precondition $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00)))
    :pattern ((Seq_contains
      (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00)))
      x@20@00))
    :pattern ((Seq_contains_trigger
      (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00)))
      x@20@00))
    :pattern ((Seq_contains_trigger
      (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00)))
      x@20@00))
    :qid |quant-u-25653|))
  (forall ((x@20@00 $Ref)) (!
    (=>
      (Seq_contains
        (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00)))
        x@20@00)
      (and (= (inv@21@00 x@20@00) x@20@00) (img@22@00 x@20@00)))
    :pattern ((Seq_contains
      (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00)))
      x@20@00))
    :pattern ((Seq_contains_trigger
      (OpaqueFieldList_contents $Snap.unit ($SortWrappers.$SnapTo$Ref ($Snap.first $t@19@00)))
      x@20@00))
    :qid |quant-u-25653|))))
(pop) ; 1
