(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 02:00:18
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
; ////////// Symbols
; Declaring symbols related to program functions (from program analysis)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
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
; ---------- test2 ----------
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
; var x: Ref
(declare-const x@0@01 $Ref)
; [exec]
; var p: Perm
(declare-const p@1@01 $Perm)
; [exec]
; inhale acc(x.f, write) && x.f == 1
(declare-const $t@2@01 $Snap)
(assert (= $t@2@01 ($Snap.combine ($Snap.first $t@2@01) ($Snap.second $t@2@01))))
(assert (not (= x@0@01 $Ref.null)))
(assert (= ($Snap.second $t@2@01) $Snap.unit))
; [eval] x.f == 1
(assert (= ($SortWrappers.$SnapToInt ($Snap.first $t@2@01)) 1))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale none <= p
(declare-const $t@3@01 $Snap)
(assert (= $t@3@01 $Snap.unit))
; [eval] none <= p
(assert (<= $Perm.No p@1@01))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; inhale p <= write
(declare-const $t@4@01 $Snap)
(assert (= $t@4@01 $Snap.unit))
; [eval] p <= write
(assert (<= p@1@01 $Perm.Write))
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; exhale acc(x.f, p)
(set-option :timeout 0)
(push) ; 3
(assert (not (or (= p@1@01 $Perm.No) (< $Perm.No p@1@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (= (- $Perm.Write ($Perm.min $Perm.Write p@1@01)) $Perm.No)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No (- $Perm.Write ($Perm.min $Perm.Write p@1@01))))
(assert (<= (- $Perm.Write ($Perm.min $Perm.Write p@1@01)) $Perm.Write))
(assert (=>
  (< $Perm.No (- $Perm.Write ($Perm.min $Perm.Write p@1@01)))
  (not (= x@0@01 $Ref.null))))
(set-option :timeout 0)
(push) ; 3
(assert (not (or
  (= (- p@1@01 ($Perm.min $Perm.Write p@1@01)) $Perm.No)
  (< (- p@1@01 ($Perm.min $Perm.Write p@1@01)) $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [exec]
; inhale p == write
(declare-const $t@5@01 $Snap)
(assert (= $t@5@01 $Snap.unit))
; [eval] p == write
(assert (= p@1@01 $Perm.Write))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale acc(x.f, p)
(set-option :timeout 0)
(push) ; 3
(assert (not (or (= p@1@01 $Perm.No) (< $Perm.No p@1@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $t@6@01 Int)
(declare-const $t@7@01 Int)
(assert (and
  (=>
    (< $Perm.No (- $Perm.Write ($Perm.min $Perm.Write p@1@01)))
    (= $t@7@01 ($SortWrappers.$SnapToInt ($Snap.first $t@2@01))))
  (=> (< $Perm.No p@1@01) (= $t@7@01 $t@6@01))))
(assert (<= $Perm.No (+ (- $Perm.Write ($Perm.min $Perm.Write p@1@01)) p@1@01)))
(assert (<= (+ (- $Perm.Write ($Perm.min $Perm.Write p@1@01)) p@1@01) $Perm.Write))
(assert (=>
  (< $Perm.No (+ (- $Perm.Write ($Perm.min $Perm.Write p@1@01)) p@1@01))
  (not (= x@0@01 $Ref.null))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert x.f == 1
; [eval] x.f == 1
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- $Perm.Write ($Perm.min $Perm.Write p@1@01)) p@1@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (= $t@7@01 1)))
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
; [eval] x.f == 1
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- $Perm.Write ($Perm.min $Perm.Write p@1@01)) p@1@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (= $t@7@01 1)))
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
; [eval] x.f == 1
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- $Perm.Write ($Perm.min $Perm.Write p@1@01)) p@1@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (= $t@7@01 1)))
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
; [eval] x.f == 1
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- $Perm.Write ($Perm.min $Perm.Write p@1@01)) p@1@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (= $t@7@01 1)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(pop) ; 1