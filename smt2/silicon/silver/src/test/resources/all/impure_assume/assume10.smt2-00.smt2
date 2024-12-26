(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 19:37:42
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
(declare-sort __ns__impure_assume_rewriter 0)
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
(declare-fun $SortWrappers.__ns__impure_assume_rewriterTo$Snap (__ns__impure_assume_rewriter) $Snap)
(declare-fun $SortWrappers.$SnapTo__ns__impure_assume_rewriter ($Snap) __ns__impure_assume_rewriter)
(assert (forall ((x __ns__impure_assume_rewriter)) (!
    (= x ($SortWrappers.$SnapTo__ns__impure_assume_rewriter($SortWrappers.__ns__impure_assume_rewriterTo$Snap x)))
    :pattern (($SortWrappers.__ns__impure_assume_rewriterTo$Snap x))
    :qid |$Snap.$SnapTo__ns__impure_assume_rewriterTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.__ns__impure_assume_rewriterTo$Snap($SortWrappers.$SnapTo__ns__impure_assume_rewriter x)))
    :pattern (($SortWrappers.$SnapTo__ns__impure_assume_rewriter x))
    :qid |$Snap.__ns__impure_assume_rewriterTo$SnapTo__ns__impure_assume_rewriter|
    )))
; ////////// Symbols
(declare-fun __iar__assume_helper_1<Perm> (Bool $Perm $Perm) $Perm)
(declare-fun __iar__assume_helper_2<Perm> (Bool Bool $Perm $Perm $Perm) $Perm)
(declare-fun __iar__assume_helper_3<Perm> (Bool Bool Bool $Perm $Perm $Perm $Perm) $Perm)
(declare-fun __iar__assume_helper_4<Perm> (Bool Bool Bool Bool $Perm $Perm $Perm $Perm $Perm) $Perm)
(declare-fun __iar__assume_helper_5<Perm> (Bool Bool Bool Bool Bool $Perm $Perm $Perm $Perm $Perm $Perm) $Perm)
(declare-fun __iar__assume_helper_6<Perm> (Bool Bool Bool Bool Bool Bool $Perm $Perm $Perm $Perm $Perm $Perm $Perm) $Perm)
(declare-fun __iar__assume_helper_7<Perm> (Bool Bool Bool Bool Bool Bool Bool $Perm $Perm $Perm $Perm $Perm $Perm $Perm $Perm) $Perm)
(declare-fun __iar__assume_helper_8<Perm> (Bool Bool Bool Bool Bool Bool Bool Bool $Perm $Perm $Perm $Perm $Perm $Perm $Perm $Perm $Perm) $Perm)
(declare-fun __iar__assume_helper_9<Perm> (Bool Bool Bool Bool Bool Bool Bool Bool Bool $Perm $Perm $Perm $Perm $Perm $Perm $Perm $Perm $Perm $Perm) $Perm)
(declare-fun __iar__assume_helper_10<Perm> (Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool $Perm $Perm $Perm $Perm $Perm $Perm $Perm $Perm $Perm $Perm $Perm) $Perm)
; Declaring symbols related to program functions (from program analysis)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
(assert (forall ((c_1 Bool) (p_1 $Perm) (p_0 $Perm)) (!
  (= (__iar__assume_helper_1<Perm> c_1 p_1 p_0) (+ p_0 (ite c_1 p_1 $Perm.No)))
  :pattern ((__iar__assume_helper_1<Perm> c_1 p_1 p_0))
  :qid |prog.__iar__assume_helper_1_axiom|)))
(assert (forall ((c_2 Bool) (c_1 Bool) (p_2 $Perm) (p_1 $Perm) (p_0 $Perm)) (!
  (=
    (__iar__assume_helper_2<Perm> c_2 c_1 p_2 p_1 p_0)
    (+ (+ p_0 (ite c_1 p_1 $Perm.No)) (ite c_2 p_2 $Perm.No)))
  :pattern ((__iar__assume_helper_2<Perm> c_2 c_1 p_2 p_1 p_0))
  :qid |prog.__iar__assume_helper_2_axiom|)))
(assert (forall ((c_3 Bool) (c_2 Bool) (c_1 Bool) (p_3 $Perm) (p_2 $Perm) (p_1 $Perm) (p_0 $Perm)) (!
  (=
    (__iar__assume_helper_3<Perm> c_3 c_2 c_1 p_3 p_2 p_1 p_0)
    (+
      (+ (+ p_0 (ite c_1 p_1 $Perm.No)) (ite c_2 p_2 $Perm.No))
      (ite c_3 p_3 $Perm.No)))
  :pattern ((__iar__assume_helper_3<Perm> c_3 c_2 c_1 p_3 p_2 p_1 p_0))
  :qid |prog.__iar__assume_helper_3_axiom|)))
(assert (forall ((c_4 Bool) (c_3 Bool) (c_2 Bool) (c_1 Bool) (p_4 $Perm) (p_3 $Perm) (p_2 $Perm) (p_1 $Perm) (p_0 $Perm)) (!
  (=
    (__iar__assume_helper_4<Perm> c_4 c_3 c_2 c_1 p_4 p_3 p_2 p_1 p_0)
    (+
      (+
        (+ (+ p_0 (ite c_1 p_1 $Perm.No)) (ite c_2 p_2 $Perm.No))
        (ite c_3 p_3 $Perm.No))
      (ite c_4 p_4 $Perm.No)))
  :pattern ((__iar__assume_helper_4<Perm> c_4 c_3 c_2 c_1 p_4 p_3 p_2 p_1 p_0))
  :qid |prog.__iar__assume_helper_4_axiom|)))
(assert (forall ((c_5 Bool) (c_4 Bool) (c_3 Bool) (c_2 Bool) (c_1 Bool) (p_5 $Perm) (p_4 $Perm) (p_3 $Perm) (p_2 $Perm) (p_1 $Perm) (p_0 $Perm)) (!
  (=
    (__iar__assume_helper_5<Perm> c_5 c_4 c_3 c_2 c_1 p_5 p_4 p_3 p_2 p_1 p_0)
    (+
      (+
        (+
          (+ (+ p_0 (ite c_1 p_1 $Perm.No)) (ite c_2 p_2 $Perm.No))
          (ite c_3 p_3 $Perm.No))
        (ite c_4 p_4 $Perm.No))
      (ite c_5 p_5 $Perm.No)))
  :pattern ((__iar__assume_helper_5<Perm> c_5 c_4 c_3 c_2 c_1 p_5 p_4 p_3 p_2 p_1 p_0))
  :qid |prog.__iar__assume_helper_5_axiom|)))
(assert (forall ((c_6 Bool) (c_5 Bool) (c_4 Bool) (c_3 Bool) (c_2 Bool) (c_1 Bool) (p_6 $Perm) (p_5 $Perm) (p_4 $Perm) (p_3 $Perm) (p_2 $Perm) (p_1 $Perm) (p_0 $Perm)) (!
  (=
    (__iar__assume_helper_6<Perm> c_6 c_5 c_4 c_3 c_2 c_1 p_6 p_5 p_4 p_3 p_2 p_1 p_0)
    (+
      (+
        (+
          (+
            (+ (+ p_0 (ite c_1 p_1 $Perm.No)) (ite c_2 p_2 $Perm.No))
            (ite c_3 p_3 $Perm.No))
          (ite c_4 p_4 $Perm.No))
        (ite c_5 p_5 $Perm.No))
      (ite c_6 p_6 $Perm.No)))
  :pattern ((__iar__assume_helper_6<Perm> c_6 c_5 c_4 c_3 c_2 c_1 p_6 p_5 p_4 p_3 p_2 p_1 p_0))
  :qid |prog.__iar__assume_helper_6_axiom|)))
(assert (forall ((c_7 Bool) (c_6 Bool) (c_5 Bool) (c_4 Bool) (c_3 Bool) (c_2 Bool) (c_1 Bool) (p_7 $Perm) (p_6 $Perm) (p_5 $Perm) (p_4 $Perm) (p_3 $Perm) (p_2 $Perm) (p_1 $Perm) (p_0 $Perm)) (!
  (=
    (__iar__assume_helper_7<Perm> c_7 c_6 c_5 c_4 c_3 c_2 c_1 p_7 p_6 p_5 p_4 p_3 p_2 p_1 p_0)
    (+
      (+
        (+
          (+
            (+
              (+ (+ p_0 (ite c_1 p_1 $Perm.No)) (ite c_2 p_2 $Perm.No))
              (ite c_3 p_3 $Perm.No))
            (ite c_4 p_4 $Perm.No))
          (ite c_5 p_5 $Perm.No))
        (ite c_6 p_6 $Perm.No))
      (ite c_7 p_7 $Perm.No)))
  :pattern ((__iar__assume_helper_7<Perm> c_7 c_6 c_5 c_4 c_3 c_2 c_1 p_7 p_6 p_5 p_4 p_3 p_2 p_1 p_0))
  :qid |prog.__iar__assume_helper_7_axiom|)))
(assert (forall ((c_8 Bool) (c_7 Bool) (c_6 Bool) (c_5 Bool) (c_4 Bool) (c_3 Bool) (c_2 Bool) (c_1 Bool) (p_8 $Perm) (p_7 $Perm) (p_6 $Perm) (p_5 $Perm) (p_4 $Perm) (p_3 $Perm) (p_2 $Perm) (p_1 $Perm) (p_0 $Perm)) (!
  (=
    (__iar__assume_helper_8<Perm> c_8 c_7 c_6 c_5 c_4 c_3 c_2 c_1 p_8 p_7 p_6 p_5 p_4 p_3 p_2 p_1 p_0)
    (+
      (+
        (+
          (+
            (+
              (+
                (+ (+ p_0 (ite c_1 p_1 $Perm.No)) (ite c_2 p_2 $Perm.No))
                (ite c_3 p_3 $Perm.No))
              (ite c_4 p_4 $Perm.No))
            (ite c_5 p_5 $Perm.No))
          (ite c_6 p_6 $Perm.No))
        (ite c_7 p_7 $Perm.No))
      (ite c_8 p_8 $Perm.No)))
  :pattern ((__iar__assume_helper_8<Perm> c_8 c_7 c_6 c_5 c_4 c_3 c_2 c_1 p_8 p_7 p_6 p_5 p_4 p_3 p_2 p_1 p_0))
  :qid |prog.__iar__assume_helper_8_axiom|)))
(assert (forall ((c_9 Bool) (c_8 Bool) (c_7 Bool) (c_6 Bool) (c_5 Bool) (c_4 Bool) (c_3 Bool) (c_2 Bool) (c_1 Bool) (p_9 $Perm) (p_8 $Perm) (p_7 $Perm) (p_6 $Perm) (p_5 $Perm) (p_4 $Perm) (p_3 $Perm) (p_2 $Perm) (p_1 $Perm) (p_0 $Perm)) (!
  (=
    (__iar__assume_helper_9<Perm> c_9 c_8 c_7 c_6 c_5 c_4 c_3 c_2 c_1 p_9 p_8 p_7 p_6 p_5 p_4 p_3 p_2 p_1 p_0)
    (+
      (+
        (+
          (+
            (+
              (+
                (+
                  (+ (+ p_0 (ite c_1 p_1 $Perm.No)) (ite c_2 p_2 $Perm.No))
                  (ite c_3 p_3 $Perm.No))
                (ite c_4 p_4 $Perm.No))
              (ite c_5 p_5 $Perm.No))
            (ite c_6 p_6 $Perm.No))
          (ite c_7 p_7 $Perm.No))
        (ite c_8 p_8 $Perm.No))
      (ite c_9 p_9 $Perm.No)))
  :pattern ((__iar__assume_helper_9<Perm> c_9 c_8 c_7 c_6 c_5 c_4 c_3 c_2 c_1 p_9 p_8 p_7 p_6 p_5 p_4 p_3 p_2 p_1 p_0))
  :qid |prog.__iar__assume_helper_9_axiom|)))
(assert (forall ((c_10 Bool) (c_9 Bool) (c_8 Bool) (c_7 Bool) (c_6 Bool) (c_5 Bool) (c_4 Bool) (c_3 Bool) (c_2 Bool) (c_1 Bool) (p_10 $Perm) (p_9 $Perm) (p_8 $Perm) (p_7 $Perm) (p_6 $Perm) (p_5 $Perm) (p_4 $Perm) (p_3 $Perm) (p_2 $Perm) (p_1 $Perm) (p_0 $Perm)) (!
  (=
    (__iar__assume_helper_10<Perm> c_10 c_9 c_8 c_7 c_6 c_5 c_4 c_3 c_2 c_1 p_10 p_9 p_8 p_7 p_6 p_5 p_4 p_3 p_2 p_1 p_0)
    (+
      (+
        (+
          (+
            (+
              (+
                (+
                  (+
                    (+ (+ p_0 (ite c_1 p_1 $Perm.No)) (ite c_2 p_2 $Perm.No))
                    (ite c_3 p_3 $Perm.No))
                  (ite c_4 p_4 $Perm.No))
                (ite c_5 p_5 $Perm.No))
              (ite c_6 p_6 $Perm.No))
            (ite c_7 p_7 $Perm.No))
          (ite c_8 p_8 $Perm.No))
        (ite c_9 p_9 $Perm.No))
      (ite c_10 p_10 $Perm.No)))
  :pattern ((__iar__assume_helper_10<Perm> c_10 c_9 c_8 c_7 c_6 c_5 c_4 c_3 c_2 c_1 p_10 p_9 p_8 p_7 p_6 p_5 p_4 p_3 p_2 p_1 p_0))
  :qid |prog.__iar__assume_helper_10_axiom|)))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
