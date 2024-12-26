(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 19:41:10
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
(declare-sort Vector9D 0)
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
(declare-fun $SortWrappers.Vector9DTo$Snap (Vector9D) $Snap)
(declare-fun $SortWrappers.$SnapToVector9D ($Snap) Vector9D)
(assert (forall ((x Vector9D)) (!
    (= x ($SortWrappers.$SnapToVector9D($SortWrappers.Vector9DTo$Snap x)))
    :pattern (($SortWrappers.Vector9DTo$Snap x))
    :qid |$Snap.$SnapToVector9DTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Vector9DTo$Snap($SortWrappers.$SnapToVector9D x)))
    :pattern (($SortWrappers.$SnapToVector9D x))
    :qid |$Snap.Vector9DTo$SnapToVector9D|
    )))
; ////////// Symbols
(declare-fun Vector9D_ctor<Vector9D> (Int Int Int Int Int Int Int Int Int) Vector9D)
(declare-fun Vector9D_ctor_syn<Vector9D> (Int Int Int Int Int Int Int Int Int) Vector9D)
(declare-fun Vector9D_f1<Int> (Vector9D) Int)
(declare-fun Vector9D_f2<Int> (Vector9D) Int)
(declare-fun Vector9D_f3<Int> (Vector9D) Int)
(declare-fun Vector9D_f4<Int> (Vector9D) Int)
(declare-fun Vector9D_f5<Int> (Vector9D) Int)
(declare-fun Vector9D_f6<Int> (Vector9D) Int)
(declare-fun Vector9D_f7<Int> (Vector9D) Int)
(declare-fun Vector9D_f8<Int> (Vector9D) Int)
(declare-fun Vector9D_f9<Int> (Vector9D) Int)
; Declaring symbols related to program functions (from program analysis)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
(assert (forall ((f1 Int) (f2 Int) (f3 Int) (f4 Int) (f5 Int) (f6 Int) (f7 Int) (f8 Int) (f9 Int)) (!
  (=
    (Vector9D_ctor<Vector9D> f1 f2 f3 f4 f5 f6 f7 f8 f9)
    (Vector9D_ctor_syn<Vector9D> f1 f2 f3 f4 f5 f6 f7 f8 f9))
  :pattern ((Vector9D_ctor<Vector9D> f1 f2 f3 f4 f5 f6 f7 f8 f9))
  :qid |prog.ax_synonim|)))
(assert (forall ((f1 Int) (f2 Int) (f3 Int) (f4 Int) (f5 Int) (f6 Int) (f7 Int) (f8 Int) (f9 Int)) (!
  (and
    (=
      (Vector9D_f1<Int> (Vector9D_ctor_syn<Vector9D> f1 f2 f3 f4 f5 f6 f7 f8 f9))
      f1)
    (and
      (=
        (Vector9D_f2<Int> (Vector9D_ctor_syn<Vector9D> f1 f2 f3 f4 f5 f6 f7 f8 f9))
        f2)
      (and
        (=
          (Vector9D_f3<Int> (Vector9D_ctor_syn<Vector9D> f1 f2 f3 f4 f5 f6 f7 f8 f9))
          f3)
        (and
          (=
            (Vector9D_f4<Int> (Vector9D_ctor_syn<Vector9D> f1 f2 f3 f4 f5 f6 f7 f8 f9))
            f4)
          (and
            (=
              (Vector9D_f5<Int> (Vector9D_ctor_syn<Vector9D> f1 f2 f3 f4 f5 f6 f7 f8 f9))
              f5)
            (and
              (=
                (Vector9D_f6<Int> (Vector9D_ctor_syn<Vector9D> f1 f2 f3 f4 f5 f6 f7 f8 f9))
                f6)
              (and
                (=
                  (Vector9D_f7<Int> (Vector9D_ctor_syn<Vector9D> f1 f2 f3 f4 f5 f6 f7 f8 f9))
                  f7)
                (and
                  (=
                    (Vector9D_f8<Int> (Vector9D_ctor_syn<Vector9D> f1 f2 f3 f4 f5 f6 f7 f8 f9))
                    f8)
                  (=
                    (Vector9D_f9<Int> (Vector9D_ctor_syn<Vector9D> f1 f2 f3 f4 f5 f6 f7 f8 f9))
                    f9)))))))))
  :pattern ((Vector9D_ctor<Vector9D> f1 f2 f3 f4 f5 f6 f7 f8 f9))
  :qid |prog.ax_values_of_fields|)))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown