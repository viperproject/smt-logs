(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-26 23:01:00
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
(declare-fun P%trigger ($Snap $Ref) Bool)
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
; ---------- test01 ----------
(declare-const x@0@01 $Ref)
(declare-const y@1@01 $Ref)
(declare-const x@2@01 $Ref)
(declare-const y@3@01 $Ref)
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
; inhale acc(x.f, 1 / 2) && acc(y.f, 1 / 2)
(declare-const $t@4@01 $Snap)
(assert (= $t@4@01 ($Snap.combine ($Snap.first $t@4@01) ($Snap.second $t@4@01))))
(assert (not (= x@2@01 $Ref.null)))
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@2@01 y@3@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@3@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; exhale acc(x.f, wildcard)
(declare-const $k@5@01 $Perm)
(assert ($Perm.isReadVar $k@5@01))
(assert (< $k@5@01 (/ (to_real 1) (to_real 2))))
(assert (<= $Perm.No (- (/ (to_real 1) (to_real 2)) $k@5@01)))
(assert (<= (- (/ (to_real 1) (to_real 2)) $k@5@01) $Perm.Write))
(assert (=>
  (< $Perm.No (- (/ (to_real 1) (to_real 2)) $k@5@01))
  (not (= x@2@01 $Ref.null))))
; [exec]
; exhale acc(y.f, 1 / 2)
(pop) ; 2
(pop) ; 1
; ---------- test02 ----------
(declare-const x@6@01 $Ref)
(declare-const y@7@01 $Ref)
(declare-const x@8@01 $Ref)
(declare-const y@9@01 $Ref)
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
; inhale acc(x.f, 1 / 2) && acc(y.f, 1 / 2)
(declare-const $t@10@01 $Snap)
(assert (= $t@10@01 ($Snap.combine ($Snap.first $t@10@01) ($Snap.second $t@10@01))))
(assert (not (= x@8@01 $Ref.null)))
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@8@01 y@9@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@9@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; exhale acc(x.f, wildcard) && acc(y.f, 1 / 2)
(declare-const $k@11@01 $Perm)
(assert ($Perm.isReadVar $k@11@01))
(assert (< $k@11@01 (/ (to_real 1) (to_real 2))))
(assert (<= $Perm.No (- (/ (to_real 1) (to_real 2)) $k@11@01)))
(assert (<= (- (/ (to_real 1) (to_real 2)) $k@11@01) $Perm.Write))
(assert (=>
  (< $Perm.No (- (/ (to_real 1) (to_real 2)) $k@11@01))
  (not (= x@8@01 $Ref.null))))
(pop) ; 2
(pop) ; 1
; ---------- test03 ----------
(declare-const x@12@01 $Ref)
(declare-const y@13@01 $Ref)
(declare-const x@14@01 $Ref)
(declare-const y@15@01 $Ref)
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
; inhale acc(x.f, 1 / 3) && acc(y.f, 1 / 4)
(declare-const $t@16@01 $Snap)
(assert (= $t@16@01 ($Snap.combine ($Snap.first $t@16@01) ($Snap.second $t@16@01))))
(assert (not (= x@14@01 $Ref.null)))
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@14@01 y@15@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@15@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; exhale acc(x.f, wildcard) && acc(y.f, 1 / 4)
(declare-const $k@17@01 $Perm)
(assert ($Perm.isReadVar $k@17@01))
(assert (< $k@17@01 (/ (to_real 1) (to_real 3))))
(assert (<= $Perm.No (- (/ (to_real 1) (to_real 3)) $k@17@01)))
(assert (<= (- (/ (to_real 1) (to_real 3)) $k@17@01) $Perm.Write))
(assert (=>
  (< $Perm.No (- (/ (to_real 1) (to_real 3)) $k@17@01))
  (not (= x@14@01 $Ref.null))))
(pop) ; 2
(pop) ; 1
; ---------- test20 ----------
(declare-const x@18@01 $Ref)
(declare-const y@19@01 $Ref)
(declare-const x@20@01 $Ref)
(declare-const y@21@01 $Ref)
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
; inhale acc(x.f, 1 / 2) && acc(y.f, 1 / 2)
(declare-const $t@22@01 $Snap)
(assert (= $t@22@01 ($Snap.combine ($Snap.first $t@22@01) ($Snap.second $t@22@01))))
(assert (not (= x@20@01 $Ref.null)))
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@20@01 y@21@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@21@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; exhale acc(y.f, 1 / 2) && acc(x.f, wildcard)
(declare-const $k@23@01 $Perm)
(assert ($Perm.isReadVar $k@23@01))
(assert (< $k@23@01 (/ (to_real 1) (to_real 2))))
(assert (<= $Perm.No (- (/ (to_real 1) (to_real 2)) $k@23@01)))
(assert (<= (- (/ (to_real 1) (to_real 2)) $k@23@01) $Perm.Write))
(assert (=>
  (< $Perm.No (- (/ (to_real 1) (to_real 2)) $k@23@01))
  (not (= x@20@01 $Ref.null))))
(pop) ; 2
(pop) ; 1
; ---------- test21 ----------
(declare-const x@24@01 $Ref)
(declare-const y@25@01 $Ref)
(declare-const x@26@01 $Ref)
(declare-const y@27@01 $Ref)
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
; inhale acc(x.f, 2 / 3) && acc(y.f, 1 / 2)
(declare-const $t@28@01 $Snap)
(assert (= $t@28@01 ($Snap.combine ($Snap.first $t@28@01) ($Snap.second $t@28@01))))
(assert (not (= x@26@01 $Ref.null)))
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@26@01 y@27@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@27@01 $Ref.null)))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert x != y
; [eval] x != y
(set-option :timeout 0)
(push) ; 3
(assert (not (not (= x@26@01 y@27@01))))
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
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= y@27@01 x@26@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first $t@28@01))
    ($SortWrappers.$SnapToInt ($Snap.second $t@28@01))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.second $t@28@01))
    ($SortWrappers.$SnapToInt ($Snap.first $t@28@01))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (and (not (= x@26@01 y@27@01)) (not (= y@27@01 x@26@01))))
; [eval] x != y
; [exec]
; exhale acc(x.f, wildcard) && acc(y.f, 1 / 2)
(declare-const $k@29@01 $Perm)
(assert ($Perm.isReadVar $k@29@01))
(assert (< $k@29@01 (/ (to_real 2) (to_real 3))))
(assert (<= $Perm.No (- (/ (to_real 2) (to_real 3)) $k@29@01)))
(assert (<= (- (/ (to_real 2) (to_real 3)) $k@29@01) $Perm.Write))
(assert (=>
  (< $Perm.No (- (/ (to_real 2) (to_real 3)) $k@29@01))
  (not (= x@26@01 $Ref.null))))
(pop) ; 2
(pop) ; 1
; ---------- test30a ----------
(declare-const a@30@01 $Ref)
(declare-const c@31@01 Int)
(declare-const a@32@01 $Ref)
(declare-const c@33@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $k@34@01 $Perm)
(assert ($Perm.isReadVar $k@34@01))
(declare-const $t@35@01 Int)
(assert (<= $Perm.No $k@34@01))
(assert (<= $k@34@01 $Perm.Write))
(assert (=> (< $Perm.No $k@34@01) (not (= a@32@01 $Ref.null))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $k@36@01 $Perm)
(assert ($Perm.isReadVar $k@36@01))
(declare-const $t@37@01 Int)
(assert (<= $Perm.No $k@36@01))
(assert (<= $k@36@01 $Perm.Write))
(assert (=> (< $Perm.No $k@36@01) (not (= a@32@01 $Ref.null))))
(pop) ; 2
(push) ; 2
; [eval] 0 < c
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< 0 c@33@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< 0 c@33@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | 0 < c@33@01 | live]
; [else-branch: 0 | !(0 < c@33@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | 0 < c@33@01]
(assert (< 0 c@33@01))
; [exec]
; test30a(a, c - 1)
; [eval] c - 1
(declare-const $k@38@01 $Perm)
(assert ($Perm.isReadVar $k@38@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= $k@34@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< $k@38@01 $k@34@01))
(assert (<= $Perm.No (- $k@34@01 $k@38@01)))
(assert (<= (- $k@34@01 $k@38@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@34@01 $k@38@01)) (not (= a@32@01 $Ref.null))))
(declare-const $k@39@01 $Perm)
(assert ($Perm.isReadVar $k@39@01))
(declare-const $t@40@01 Int)
(declare-const $t@41@01 Int)
(assert (and
  (=> (< $Perm.No (- $k@34@01 $k@38@01)) (= $t@41@01 $t@35@01))
  (=> (< $Perm.No $k@39@01) (= $t@41@01 $t@40@01))))
(assert (<= $Perm.No (+ (- $k@34@01 $k@38@01) $k@39@01)))
(assert (<= (+ (- $k@34@01 $k@38@01) $k@39@01) $Perm.Write))
(assert (=> (< $Perm.No (+ (- $k@34@01 $k@38@01) $k@39@01)) (not (= a@32@01 $Ref.null))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; assert a.f == old(a.f)
; [eval] a.f == old(a.f)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- $k@34@01 $k@38@01) $k@39@01))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] old(a.f)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@34@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(assert (not (= $t@41@01 $t@35@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (= $t@41@01 $t@35@01))
(declare-const $k@42@01 $Perm)
(assert ($Perm.isReadVar $k@42@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= (+ (- $k@34@01 $k@38@01) $k@39@01) $Perm.No))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< $k@42@01 (+ (- $k@34@01 $k@38@01) $k@39@01)))
(assert (<= $Perm.No (- (+ (- $k@34@01 $k@38@01) $k@39@01) $k@42@01)))
(assert (<= (- (+ (- $k@34@01 $k@38@01) $k@39@01) $k@42@01) $Perm.Write))
(assert (=>
  (< $Perm.No (- (+ (- $k@34@01 $k@38@01) $k@39@01) $k@42@01))
  (not (= a@32@01 $Ref.null))))
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 0 | !(0 < c@33@01)]
(assert (not (< 0 c@33@01)))
(pop) ; 3
; [eval] !(0 < c)
; [eval] 0 < c
(push) ; 3
(set-option :timeout 10)
(assert (not (< 0 c@33@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (< 0 c@33@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | !(0 < c@33@01) | live]
; [else-branch: 1 | 0 < c@33@01 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 1 | !(0 < c@33@01)]
(assert (not (< 0 c@33@01)))
; [exec]
; assert a.f == old(a.f)
; [eval] a.f == old(a.f)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@34@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] old(a.f)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@34@01)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const $k@43@01 $Perm)
(assert ($Perm.isReadVar $k@43@01))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= $k@34@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (< $k@43@01 $k@34@01))
(assert (<= $Perm.No (- $k@34@01 $k@43@01)))
(assert (<= (- $k@34@01 $k@43@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@34@01 $k@43@01)) (not (= a@32@01 $Ref.null))))
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 1 | 0 < c@33@01]
(assert (< 0 c@33@01))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test30b ----------
(declare-const a@44@01 $Ref)
(declare-const a@45@01 $Ref)
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
; inhale acc(a.f, wildcard)
(declare-const $k@46@01 $Perm)
(assert ($Perm.isReadVar $k@46@01))
(declare-const $t@47@01 Int)
(assert (<= $Perm.No $k@46@01))
(assert (<= $k@46@01 $Perm.Write))
(assert (=> (< $Perm.No $k@46@01) (not (= a@45@01 $Ref.null))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; label L
; [exec]
; exhale acc(a.f, wildcard)
(declare-const $k@48@01 $Perm)
(assert ($Perm.isReadVar $k@48@01))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $k@46@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@48@01 $k@46@01))
(assert (<= $Perm.No (- $k@46@01 $k@48@01)))
(assert (<= (- $k@46@01 $k@48@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@46@01 $k@48@01)) (not (= a@45@01 $Ref.null))))
; [exec]
; inhale acc(a.f, wildcard)
(declare-const $k@49@01 $Perm)
(assert ($Perm.isReadVar $k@49@01))
(declare-const $t@50@01 Int)
(declare-const $t@51@01 Int)
(assert (and
  (=> (< $Perm.No (- $k@46@01 $k@48@01)) (= $t@51@01 $t@47@01))
  (=> (< $Perm.No $k@49@01) (= $t@51@01 $t@50@01))))
(assert (<= $Perm.No (+ (- $k@46@01 $k@48@01) $k@49@01)))
(assert (<= (+ (- $k@46@01 $k@48@01) $k@49@01) $Perm.Write))
(assert (=> (< $Perm.No (+ (- $k@46@01 $k@48@01) $k@49@01)) (not (= a@45@01 $Ref.null))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert a.f == old[L](a.f)
; [eval] a.f == old[L](a.f)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (+ (- $k@46@01 $k@48@01) $k@49@01))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] old[L](a.f)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@46@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (= $t@51@01 $t@47@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= $t@51@01 $t@47@01))
; [exec]
; exhale acc(a.f, wildcard)
(declare-const $k@52@01 $Perm)
(assert ($Perm.isReadVar $k@52@01))
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= (+ (- $k@46@01 $k@48@01) $k@49@01) $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@52@01 (+ (- $k@46@01 $k@48@01) $k@49@01)))
(assert (<= $Perm.No (- (+ (- $k@46@01 $k@48@01) $k@49@01) $k@52@01)))
(assert (<= (- (+ (- $k@46@01 $k@48@01) $k@49@01) $k@52@01) $Perm.Write))
(assert (=>
  (< $Perm.No (- (+ (- $k@46@01 $k@48@01) $k@49@01) $k@52@01))
  (not (= a@45@01 $Ref.null))))
(pop) ; 2
(pop) ; 1
; ---------- test30c ----------
(declare-const a@53@01 $Ref)
(declare-const a@54@01 $Ref)
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
; inhale acc(a.f, wildcard)
(declare-const $k@55@01 $Perm)
(assert ($Perm.isReadVar $k@55@01))
(declare-const $t@56@01 Int)
(assert (<= $Perm.No $k@55@01))
(assert (<= $k@55@01 $Perm.Write))
(assert (=> (< $Perm.No $k@55@01) (not (= a@54@01 $Ref.null))))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; exhale acc(a.f, wildcard)
(declare-const $k@57@01 $Perm)
(assert ($Perm.isReadVar $k@57@01))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= $k@55@01 $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@57@01 $k@55@01))
(assert (<= $Perm.No (- $k@55@01 $k@57@01)))
(assert (<= (- $k@55@01 $k@57@01) $Perm.Write))
(assert (=> (< $Perm.No (- $k@55@01 $k@57@01)) (not (= a@54@01 $Ref.null))))
; [exec]
; assert acc(a.f, wildcard)
(declare-const $k@58@01 $Perm)
(assert ($Perm.isReadVar $k@58@01))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= (- $k@55@01 $k@57@01) $Perm.No))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (< $k@58@01 (- $k@55@01 $k@57@01)))
(assert (<= $Perm.No (- (- $k@55@01 $k@57@01) $k@58@01)))
(assert (<= (- (- $k@55@01 $k@57@01) $k@58@01) $Perm.Write))
(assert (=> (< $Perm.No (- (- $k@55@01 $k@57@01) $k@58@01)) (not (= a@54@01 $Ref.null))))
(pop) ; 2
(pop) ; 1
; ---------- test40 ----------
(declare-const x@59@01 $Ref)
(declare-const y@60@01 $Ref)
(declare-const x@61@01 $Ref)
(declare-const y@62@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@63@01 $Snap)
(assert (= $t@63@01 ($Snap.combine ($Snap.first $t@63@01) ($Snap.second $t@63@01))))
(assert (not (= x@61@01 $Ref.null)))
(push) ; 2
(set-option :timeout 10)
(assert (not (= x@61@01 y@62@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@62@01 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; fold acc(P(x), write)
(declare-const $k@64@01 $Perm)
(assert ($Perm.isReadVar $k@64@01))
(assert (< $k@64@01 (/ (to_real 1) (to_real 2))))
(assert (<= $Perm.No (- (/ (to_real 1) (to_real 2)) $k@64@01)))
(assert (<= (- (/ (to_real 1) (to_real 2)) $k@64@01) $Perm.Write))
(assert (=>
  (< $Perm.No (- (/ (to_real 1) (to_real 2)) $k@64@01))
  (not (= x@61@01 $Ref.null))))
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@64@01)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (P%trigger ($Snap.first $t@63@01) x@61@01))
; [exec]
; exhale acc(x.f, perm(x.f))
; [eval] perm(x.f)
(set-option :timeout 0)
(push) ; 3
(assert (not (or
  (=
    (+
      (ite (= x@61@01 y@62@01) (/ (to_real 1) (to_real 2)) $Perm.No)
      (- (/ (to_real 1) (to_real 2)) $k@64@01))
    $Perm.No)
  (<
    $Perm.No
    (+
      (ite (= x@61@01 y@62@01) (/ (to_real 1) (to_real 2)) $Perm.No)
      (- (/ (to_real 1) (to_real 2)) $k@64@01))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  (-
    (- (/ (to_real 1) (to_real 2)) $k@64@01)
    ($Perm.min
      (- (/ (to_real 1) (to_real 2)) $k@64@01)
      (+
        (ite (= x@61@01 y@62@01) (/ (to_real 1) (to_real 2)) $Perm.No)
        (- (/ (to_real 1) (to_real 2)) $k@64@01))))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (or
  (=
    (-
      (+
        (ite (= x@61@01 y@62@01) (/ (to_real 1) (to_real 2)) $Perm.No)
        (- (/ (to_real 1) (to_real 2)) $k@64@01))
      ($Perm.min
        (- (/ (to_real 1) (to_real 2)) $k@64@01)
        (+
          (ite (= x@61@01 y@62@01) (/ (to_real 1) (to_real 2)) $Perm.No)
          (- (/ (to_real 1) (to_real 2)) $k@64@01))))
    $Perm.No)
  (<
    (-
      (+
        (ite (= x@61@01 y@62@01) (/ (to_real 1) (to_real 2)) $Perm.No)
        (- (/ (to_real 1) (to_real 2)) $k@64@01))
      ($Perm.min
        (- (/ (to_real 1) (to_real 2)) $k@64@01)
        (+
          (ite (= x@61@01 y@62@01) (/ (to_real 1) (to_real 2)) $Perm.No)
          (- (/ (to_real 1) (to_real 2)) $k@64@01))))
    $Perm.No))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
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
(assert (not (= y@62@01 x@61@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+ (- (/ (to_real 1) (to_real 2)) $k@64@01) (/ (to_real 1) (to_real 2))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+ (/ (to_real 1) (to_real 2)) (- (/ (to_real 1) (to_real 2)) $k@64@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (< $Perm.No (- (/ (to_real 1) (to_real 2)) $k@64@01))
  (not
    (=
      ($SortWrappers.$SnapToInt ($Snap.first $t@63@01))
      ($SortWrappers.$SnapToInt ($Snap.second $t@63@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (< $Perm.No (- (/ (to_real 1) (to_real 2)) $k@64@01))
  (not
    (=
      ($SortWrappers.$SnapToInt ($Snap.second $t@63@01))
      ($SortWrappers.$SnapToInt ($Snap.first $t@63@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  (-
    (- (/ (to_real 1) (to_real 2)) $k@64@01)
    ($Perm.min
      (- (/ (to_real 1) (to_real 2)) $k@64@01)
      (+
        (ite (= x@61@01 y@62@01) (/ (to_real 1) (to_real 2)) $Perm.No)
        (- (/ (to_real 1) (to_real 2)) $k@64@01))))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (or
  (=
    (-
      (+
        (ite (= x@61@01 y@62@01) (/ (to_real 1) (to_real 2)) $Perm.No)
        (- (/ (to_real 1) (to_real 2)) $k@64@01))
      ($Perm.min
        (- (/ (to_real 1) (to_real 2)) $k@64@01)
        (+
          (ite (= x@61@01 y@62@01) (/ (to_real 1) (to_real 2)) $Perm.No)
          (- (/ (to_real 1) (to_real 2)) $k@64@01))))
    $Perm.No)
  (<
    (-
      (+
        (ite (= x@61@01 y@62@01) (/ (to_real 1) (to_real 2)) $Perm.No)
        (- (/ (to_real 1) (to_real 2)) $k@64@01))
      ($Perm.min
        (- (/ (to_real 1) (to_real 2)) $k@64@01)
        (+
          (ite (= x@61@01 y@62@01) (/ (to_real 1) (to_real 2)) $Perm.No)
          (- (/ (to_real 1) (to_real 2)) $k@64@01))))
    $Perm.No))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
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
(assert (not (= y@62@01 x@61@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+ (- (/ (to_real 1) (to_real 2)) $k@64@01) (/ (to_real 1) (to_real 2))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+ (/ (to_real 1) (to_real 2)) (- (/ (to_real 1) (to_real 2)) $k@64@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (< $Perm.No (- (/ (to_real 1) (to_real 2)) $k@64@01))
  (not
    (=
      ($SortWrappers.$SnapToInt ($Snap.first $t@63@01))
      ($SortWrappers.$SnapToInt ($Snap.second $t@63@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (< $Perm.No (- (/ (to_real 1) (to_real 2)) $k@64@01))
  (not
    (=
      ($SortWrappers.$SnapToInt ($Snap.second $t@63@01))
      ($SortWrappers.$SnapToInt ($Snap.first $t@63@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] perm(x.f)
(set-option :timeout 0)
(push) ; 3
(assert (not (or
  (=
    (+
      (ite (= x@61@01 y@62@01) (/ (to_real 1) (to_real 2)) $Perm.No)
      (- (/ (to_real 1) (to_real 2)) $k@64@01))
    $Perm.No)
  (<
    $Perm.No
    (+
      (ite (= x@61@01 y@62@01) (/ (to_real 1) (to_real 2)) $Perm.No)
      (- (/ (to_real 1) (to_real 2)) $k@64@01))))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  (-
    (- (/ (to_real 1) (to_real 2)) $k@64@01)
    ($Perm.min
      (- (/ (to_real 1) (to_real 2)) $k@64@01)
      (+
        (ite (= x@61@01 y@62@01) (/ (to_real 1) (to_real 2)) $Perm.No)
        (- (/ (to_real 1) (to_real 2)) $k@64@01))))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (or
  (=
    (-
      (+
        (ite (= x@61@01 y@62@01) (/ (to_real 1) (to_real 2)) $Perm.No)
        (- (/ (to_real 1) (to_real 2)) $k@64@01))
      ($Perm.min
        (- (/ (to_real 1) (to_real 2)) $k@64@01)
        (+
          (ite (= x@61@01 y@62@01) (/ (to_real 1) (to_real 2)) $Perm.No)
          (- (/ (to_real 1) (to_real 2)) $k@64@01))))
    $Perm.No)
  (<
    (-
      (+
        (ite (= x@61@01 y@62@01) (/ (to_real 1) (to_real 2)) $Perm.No)
        (- (/ (to_real 1) (to_real 2)) $k@64@01))
      ($Perm.min
        (- (/ (to_real 1) (to_real 2)) $k@64@01)
        (+
          (ite (= x@61@01 y@62@01) (/ (to_real 1) (to_real 2)) $Perm.No)
          (- (/ (to_real 1) (to_real 2)) $k@64@01))))
    $Perm.No))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
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
(assert (not (= x@61@01 y@62@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+ (/ (to_real 1) (to_real 2)) (- (/ (to_real 1) (to_real 2)) $k@64@01)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (<
  $Perm.Write
  (+ (- (/ (to_real 1) (to_real 2)) $k@64@01) (/ (to_real 1) (to_real 2))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (< $Perm.No (- (/ (to_real 1) (to_real 2)) $k@64@01))
  (not
    (=
      ($SortWrappers.$SnapToInt ($Snap.second $t@63@01))
      ($SortWrappers.$SnapToInt ($Snap.first $t@63@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (and
  (< $Perm.No (- (/ (to_real 1) (to_real 2)) $k@64@01))
  (not
    (=
      ($SortWrappers.$SnapToInt ($Snap.first $t@63@01))
      ($SortWrappers.$SnapToInt ($Snap.second $t@63@01)))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  (-
    (- (/ (to_real 1) (to_real 2)) $k@64@01)
    ($Perm.min
      (- (/ (to_real 1) (to_real 2)) $k@64@01)
      (+
        (ite (= x@61@01 y@62@01) (/ (to_real 1) (to_real 2)) $Perm.No)
        (- (/ (to_real 1) (to_real 2)) $k@64@01))))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(assert (not (or
  (=
    (-
      (+
        (ite (= x@61@01 y@62@01) (/ (to_real 1) (to_real 2)) $Perm.No)
        (- (/ (to_real 1) (to_real 2)) $k@64@01))
      ($Perm.min
        (- (/ (to_real 1) (to_real 2)) $k@64@01)
        (+
          (ite (= x@61@01 y@62@01) (/ (to_real 1) (to_real 2)) $Perm.No)
          (- (/ (to_real 1) (to_real 2)) $k@64@01))))
    $Perm.No)
  (<
    (-
      (+
        (ite (= x@61@01 y@62@01) (/ (to_real 1) (to_real 2)) $Perm.No)
        (- (/ (to_real 1) (to_real 2)) $k@64@01))
      ($Perm.min
        (- (/ (to_real 1) (to_real 2)) $k@64@01)
        (+
          (ite (= x@61@01 y@62@01) (/ (to_real 1) (to_real 2)) $Perm.No)
          (- (/ (to_real 1) (to_real 2)) $k@64@01))))
    $Perm.No))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
; ---------- test50 ----------
(declare-const x@65@01 $Ref)
(declare-const y@66@01 $Ref)
(declare-const x@67@01 $Ref)
(declare-const y@68@01 $Ref)
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
; inhale acc(P(x), 1 / 2) && acc(P(y), 1 / 2)
(declare-const $t@69@01 $Snap)
(assert (= $t@69@01 ($Snap.combine ($Snap.first $t@69@01) ($Snap.second $t@69@01))))
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@67@01 y@68@01)))
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
; exhale acc(P(x), wildcard) && acc(P(y), 1 / 2)
(declare-const $k@70@01 $Perm)
(assert ($Perm.isReadVar $k@70@01))
(assert (< $k@70@01 (/ (to_real 1) (to_real 2))))
(assert (<= $Perm.No (- (/ (to_real 1) (to_real 2)) $k@70@01)))
(pop) ; 2
(pop) ; 1
