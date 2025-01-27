(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-27 02:54:09
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
; ---------- main_pkg_F ----------
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
; var N0: Int
(declare-const N0@0@01 Int)
; [exec]
; N0 := 0
; [exec]
; N0 := absValSwitch_pkg_F(0 - 1)
; [eval] 0 - 1
(declare-const ret_pkg_V0@1@01 Int)
(declare-const $t@2@01 $Snap)
(assert (= $t@2@01 ($Snap.combine ($Snap.first $t@2@01) ($Snap.second $t@2@01))))
(assert (= ($Snap.first $t@2@01) $Snap.unit))
; [eval] ret_pkg_V0 >= 0
(assert (>= ret_pkg_V0@1@01 0))
(assert (= ($Snap.second $t@2@01) $Snap.unit))
; [eval] i_pkg_V0 < 0 ==> true && ret_pkg_V0 == (0 - 1) * i_pkg_V0
; [eval] i_pkg_V0 < 0
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | True | live]
; [else-branch: 0 | False | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 0 | True]
; [eval] true && ret_pkg_V0 == (0 - 1) * i_pkg_V0
(push) ; 5
; [then-branch: 1 | False | live]
; [else-branch: 1 | True | live]
(push) ; 6
; [then-branch: 1 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 1 | True]
; [eval] ret_pkg_V0 == (0 - 1) * i_pkg_V0
; [eval] (0 - 1) * i_pkg_V0
; [eval] 0 - 1
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (= ret_pkg_V0@1@01 1))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; assert true && N0 == 1
; [eval] N0 == 1
; [exec]
; label returnLabel
(pop) ; 2
(pop) ; 1
; ---------- absValSwitch_pkg_F ----------
(declare-const i_pkg_V0@3@01 Int)
(declare-const ret_pkg_V0@4@01 Int)
(declare-const i_pkg_V0@5@01 Int)
(declare-const ret_pkg_V0@6@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@7@01 $Snap)
(assert (= $t@7@01 $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@8@01 $Snap)
(assert (= $t@8@01 ($Snap.combine ($Snap.first $t@8@01) ($Snap.second $t@8@01))))
(assert (= ($Snap.first $t@8@01) $Snap.unit))
; [eval] ret_pkg_V0 >= 0
(assert (>= ret_pkg_V0@6@01 0))
(assert (= ($Snap.second $t@8@01) $Snap.unit))
; [eval] i_pkg_V0 < 0 ==> true && ret_pkg_V0 == (0 - 1) * i_pkg_V0
; [eval] i_pkg_V0 < 0
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (< i_pkg_V0@5@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< i_pkg_V0@5@01 0)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | i_pkg_V0@5@01 < 0 | live]
; [else-branch: 2 | !(i_pkg_V0@5@01 < 0) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 2 | i_pkg_V0@5@01 < 0]
(assert (< i_pkg_V0@5@01 0))
; [eval] true && ret_pkg_V0 == (0 - 1) * i_pkg_V0
(push) ; 5
; [then-branch: 3 | False | live]
; [else-branch: 3 | True | live]
(push) ; 6
; [then-branch: 3 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 3 | True]
; [eval] ret_pkg_V0 == (0 - 1) * i_pkg_V0
; [eval] (0 - 1) * i_pkg_V0
; [eval] 0 - 1
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(pop) ; 4
(push) ; 4
; [else-branch: 2 | !(i_pkg_V0@5@01 < 0)]
(assert (not (< i_pkg_V0@5@01 0)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not (< i_pkg_V0@5@01 0)) (< i_pkg_V0@5@01 0)))
(assert (=> (< i_pkg_V0@5@01 0) (= ret_pkg_V0@6@01 (* (- 0 1) i_pkg_V0@5@01))))
(pop) ; 2
(push) ; 2
; [exec]
; var ret_pkg_V0_CN2: Int
(declare-const ret_pkg_V0_CN2@9@01 Int)
; [exec]
; var i_pkg_V0_CN1: Int
(declare-const i_pkg_V0_CN1@10@01 Int)
; [exec]
; var N3: Bool
(declare-const N3@11@01 Bool)
; [exec]
; ret_pkg_V0 := 0
; [exec]
; i_pkg_V0_CN1 := 0
; [exec]
; ret_pkg_V0_CN2 := 0
; [exec]
; i_pkg_V0_CN1 := i_pkg_V0
; [exec]
; N3 := false
; [exec]
; N3 := true
; [exec]
; N3 := true
; [eval] true && N3 == i_pkg_V0_CN1 < 0 || false
; [eval] true && N3 == i_pkg_V0_CN1 < 0
(push) ; 3
; [then-branch: 4 | False | live]
; [else-branch: 4 | True | live]
(push) ; 4
; [then-branch: 4 | False]
(assert false)
(pop) ; 4
(push) ; 4
; [else-branch: 4 | True]
; [eval] N3 == i_pkg_V0_CN1 < 0
; [eval] i_pkg_V0_CN1 < 0
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(push) ; 3
; [then-branch: 5 | True == i_pkg_V0@5@01 < 0 | live]
; [else-branch: 5 | True != i_pkg_V0@5@01 < 0 | live]
(push) ; 4
; [then-branch: 5 | True == i_pkg_V0@5@01 < 0]
(assert (= true (< i_pkg_V0@5@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 5 | True != i_pkg_V0@5@01 < 0]
(assert (not (= true (< i_pkg_V0@5@01 0))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not (= true (< i_pkg_V0@5@01 0))) (= true (< i_pkg_V0@5@01 0))))
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= true (< i_pkg_V0@5@01 0)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= true (< i_pkg_V0@5@01 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 6 | True == i_pkg_V0@5@01 < 0 | live]
; [else-branch: 6 | True != i_pkg_V0@5@01 < 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 6 | True == i_pkg_V0@5@01 < 0]
(assert (= true (< i_pkg_V0@5@01 0)))
; [exec]
; ret_pkg_V0_CN2 := (0 - 1) * i_pkg_V0_CN1
; [eval] (0 - 1) * i_pkg_V0_CN1
; [eval] 0 - 1
(declare-const ret_pkg_V0_CN2@12@01 Int)
(assert (= ret_pkg_V0_CN2@12@01 (* (- 0 1) i_pkg_V0@5@01)))
; [exec]
; ret_pkg_V0 := ret_pkg_V0_CN2
; [exec]
; label returnLabel
; [eval] ret_pkg_V0 >= 0
(push) ; 4
(assert (not (>= ret_pkg_V0_CN2@12@01 0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (>= ret_pkg_V0_CN2@12@01 0))
; [eval] i_pkg_V0 < 0 ==> true && ret_pkg_V0 == (0 - 1) * i_pkg_V0
; [eval] i_pkg_V0 < 0
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (< i_pkg_V0@5@01 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (< i_pkg_V0@5@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 7 | i_pkg_V0@5@01 < 0 | live]
; [else-branch: 7 | !(i_pkg_V0@5@01 < 0) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 7 | i_pkg_V0@5@01 < 0]
(assert (< i_pkg_V0@5@01 0))
; [eval] true && ret_pkg_V0 == (0 - 1) * i_pkg_V0
(push) ; 6
; [then-branch: 8 | False | live]
; [else-branch: 8 | True | live]
(push) ; 7
; [then-branch: 8 | False]
(assert false)
(pop) ; 7
(push) ; 7
; [else-branch: 8 | True]
; [eval] ret_pkg_V0 == (0 - 1) * i_pkg_V0
; [eval] (0 - 1) * i_pkg_V0
; [eval] 0 - 1
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (< i_pkg_V0@5@01 0))
(push) ; 4
(assert (not (=> (< i_pkg_V0@5@01 0) (= ret_pkg_V0_CN2@12@01 (* (- 0 1) i_pkg_V0@5@01)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=> (< i_pkg_V0@5@01 0) (= ret_pkg_V0_CN2@12@01 (* (- 0 1) i_pkg_V0@5@01))))
(pop) ; 3
(push) ; 3
; [else-branch: 6 | True != i_pkg_V0@5@01 < 0]
(assert (not (= true (< i_pkg_V0@5@01 0))))
(pop) ; 3
; [eval] !(true && N3 == i_pkg_V0_CN1 < 0 || false)
; [eval] true && N3 == i_pkg_V0_CN1 < 0 || false
; [eval] true && N3 == i_pkg_V0_CN1 < 0
(push) ; 3
; [then-branch: 9 | False | live]
; [else-branch: 9 | True | live]
(push) ; 4
; [then-branch: 9 | False]
(assert false)
(pop) ; 4
(push) ; 4
; [else-branch: 9 | True]
; [eval] N3 == i_pkg_V0_CN1 < 0
; [eval] i_pkg_V0_CN1 < 0
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(push) ; 3
; [then-branch: 10 | True == i_pkg_V0@5@01 < 0 | live]
; [else-branch: 10 | True != i_pkg_V0@5@01 < 0 | live]
(push) ; 4
; [then-branch: 10 | True == i_pkg_V0@5@01 < 0]
(assert (= true (< i_pkg_V0@5@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 10 | True != i_pkg_V0@5@01 < 0]
(assert (not (= true (< i_pkg_V0@5@01 0))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(push) ; 3
(set-option :timeout 10)
(assert (not (= true (< i_pkg_V0@5@01 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= true (< i_pkg_V0@5@01 0)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 11 | True != i_pkg_V0@5@01 < 0 | live]
; [else-branch: 11 | True == i_pkg_V0@5@01 < 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 11 | True != i_pkg_V0@5@01 < 0]
(assert (not (= true (< i_pkg_V0@5@01 0))))
; [eval] true && N3 == i_pkg_V0_CN1 > 0 || false
; [eval] true && N3 == i_pkg_V0_CN1 > 0
(push) ; 4
; [then-branch: 12 | False | live]
; [else-branch: 12 | True | live]
(push) ; 5
; [then-branch: 12 | False]
(assert false)
(pop) ; 5
(push) ; 5
; [else-branch: 12 | True]
; [eval] N3 == i_pkg_V0_CN1 > 0
; [eval] i_pkg_V0_CN1 > 0
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
; [then-branch: 13 | True == i_pkg_V0@5@01 > 0 | live]
; [else-branch: 13 | True != i_pkg_V0@5@01 > 0 | live]
(push) ; 5
; [then-branch: 13 | True == i_pkg_V0@5@01 > 0]
(assert (= true (> i_pkg_V0@5@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 13 | True != i_pkg_V0@5@01 > 0]
(assert (not (= true (> i_pkg_V0@5@01 0))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not (= true (> i_pkg_V0@5@01 0))) (= true (> i_pkg_V0@5@01 0))))
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= true (> i_pkg_V0@5@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= true (> i_pkg_V0@5@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 14 | True == i_pkg_V0@5@01 > 0 | live]
; [else-branch: 14 | True != i_pkg_V0@5@01 > 0 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 14 | True == i_pkg_V0@5@01 > 0]
(assert (= true (> i_pkg_V0@5@01 0)))
; [exec]
; ret_pkg_V0_CN2 := i_pkg_V0_CN1
; [exec]
; ret_pkg_V0 := ret_pkg_V0_CN2
; [exec]
; label returnLabel
; [eval] ret_pkg_V0 >= 0
(push) ; 5
(assert (not (>= i_pkg_V0@5@01 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (>= i_pkg_V0@5@01 0))
; [eval] i_pkg_V0 < 0 ==> true && ret_pkg_V0 == (0 - 1) * i_pkg_V0
; [eval] i_pkg_V0 < 0
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not (< i_pkg_V0@5@01 0))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 15 | i_pkg_V0@5@01 < 0 | dead]
; [else-branch: 15 | !(i_pkg_V0@5@01 < 0) | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 15 | !(i_pkg_V0@5@01 < 0)]
(assert (not (< i_pkg_V0@5@01 0)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (not (< i_pkg_V0@5@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 14 | True != i_pkg_V0@5@01 > 0]
(assert (not (= true (> i_pkg_V0@5@01 0))))
(pop) ; 4
; [eval] !(true && N3 == i_pkg_V0_CN1 > 0 || false)
; [eval] true && N3 == i_pkg_V0_CN1 > 0 || false
; [eval] true && N3 == i_pkg_V0_CN1 > 0
(push) ; 4
; [then-branch: 16 | False | live]
; [else-branch: 16 | True | live]
(push) ; 5
; [then-branch: 16 | False]
(assert false)
(pop) ; 5
(push) ; 5
; [else-branch: 16 | True]
; [eval] N3 == i_pkg_V0_CN1 > 0
; [eval] i_pkg_V0_CN1 > 0
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
; [then-branch: 17 | True == i_pkg_V0@5@01 > 0 | live]
; [else-branch: 17 | True != i_pkg_V0@5@01 > 0 | live]
(push) ; 5
; [then-branch: 17 | True == i_pkg_V0@5@01 > 0]
(assert (= true (> i_pkg_V0@5@01 0)))
(pop) ; 5
(push) ; 5
; [else-branch: 17 | True != i_pkg_V0@5@01 > 0]
(assert (not (= true (> i_pkg_V0@5@01 0))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
(set-option :timeout 10)
(assert (not (= true (> i_pkg_V0@5@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= true (> i_pkg_V0@5@01 0)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 18 | True != i_pkg_V0@5@01 > 0 | live]
; [else-branch: 18 | True == i_pkg_V0@5@01 > 0 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 18 | True != i_pkg_V0@5@01 > 0]
(assert (not (= true (> i_pkg_V0@5@01 0))))
; [exec]
; ret_pkg_V0_CN2 := 0
; [exec]
; ret_pkg_V0 := ret_pkg_V0_CN2
; [exec]
; label returnLabel
; [eval] ret_pkg_V0 >= 0
; [eval] i_pkg_V0 < 0 ==> true && ret_pkg_V0 == (0 - 1) * i_pkg_V0
; [eval] i_pkg_V0 < 0
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not (< i_pkg_V0@5@01 0))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 19 | i_pkg_V0@5@01 < 0 | dead]
; [else-branch: 19 | !(i_pkg_V0@5@01 < 0) | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 19 | !(i_pkg_V0@5@01 < 0)]
(assert (not (< i_pkg_V0@5@01 0)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (not (< i_pkg_V0@5@01 0)))
(pop) ; 4
(push) ; 4
; [else-branch: 18 | True == i_pkg_V0@5@01 > 0]
(assert (= true (> i_pkg_V0@5@01 0)))
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 11 | True == i_pkg_V0@5@01 < 0]
(assert (= true (< i_pkg_V0@5@01 0)))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- switchTest_pkg_F ----------
(declare-const i_pkg_V1@13@01 Int)
(declare-const ret_pkg_V1@14@01 Int)
(declare-const i_pkg_V1@15@01 Int)
(declare-const ret_pkg_V1@16@01 Int)
(push) ; 1
(declare-const $t@17@01 $Snap)
(assert (= $t@17@01 $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@18@01 $Snap)
(assert (= $t@18@01 ($Snap.combine ($Snap.first $t@18@01) ($Snap.second $t@18@01))))
(assert (= ($Snap.first $t@18@01) $Snap.unit))
; [eval] true && i_pkg_V1 == 0 || (true && i_pkg_V1 == 1 || true && i_pkg_V1 == 2) ==> true && ret_pkg_V1 == 0
; [eval] true && i_pkg_V1 == 0 || (true && i_pkg_V1 == 1 || true && i_pkg_V1 == 2)
; [eval] true && i_pkg_V1 == 0
(push) ; 3
; [then-branch: 20 | False | live]
; [else-branch: 20 | True | live]
(push) ; 4
; [then-branch: 20 | False]
(assert false)
(pop) ; 4
(push) ; 4
; [else-branch: 20 | True]
; [eval] i_pkg_V1 == 0
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(push) ; 3
; [then-branch: 21 | i_pkg_V1@15@01 == 0 | live]
; [else-branch: 21 | i_pkg_V1@15@01 != 0 | live]
(push) ; 4
; [then-branch: 21 | i_pkg_V1@15@01 == 0]
(assert (= i_pkg_V1@15@01 0))
(pop) ; 4
(push) ; 4
; [else-branch: 21 | i_pkg_V1@15@01 != 0]
(assert (not (= i_pkg_V1@15@01 0)))
; [eval] true && i_pkg_V1 == 1
(push) ; 5
; [then-branch: 22 | False | live]
; [else-branch: 22 | True | live]
(push) ; 6
; [then-branch: 22 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 22 | True]
; [eval] i_pkg_V1 == 1
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(push) ; 5
; [then-branch: 23 | i_pkg_V1@15@01 == 1 | live]
; [else-branch: 23 | i_pkg_V1@15@01 != 1 | live]
(push) ; 6
; [then-branch: 23 | i_pkg_V1@15@01 == 1]
(assert (= i_pkg_V1@15@01 1))
(pop) ; 6
(push) ; 6
; [else-branch: 23 | i_pkg_V1@15@01 != 1]
(assert (not (= i_pkg_V1@15@01 1)))
; [eval] true && i_pkg_V1 == 2
(push) ; 7
; [then-branch: 24 | False | live]
; [else-branch: 24 | True | live]
(push) ; 8
; [then-branch: 24 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 24 | True]
; [eval] i_pkg_V1 == 2
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (not (= i_pkg_V1@15@01 1)) (= i_pkg_V1@15@01 1)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (= i_pkg_V1@15@01 0))
  (and
    (not (= i_pkg_V1@15@01 0))
    (or (not (= i_pkg_V1@15@01 1)) (= i_pkg_V1@15@01 1)))))
(assert (or (not (= i_pkg_V1@15@01 0)) (= i_pkg_V1@15@01 0)))
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (or (= i_pkg_V1@15@01 0) (or (= i_pkg_V1@15@01 1) (= i_pkg_V1@15@01 2))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (or (= i_pkg_V1@15@01 0) (or (= i_pkg_V1@15@01 1) (= i_pkg_V1@15@01 2)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 25 | i_pkg_V1@15@01 == 0 || i_pkg_V1@15@01 == 1 || i_pkg_V1@15@01 == 2 | live]
; [else-branch: 25 | !(i_pkg_V1@15@01 == 0 || i_pkg_V1@15@01 == 1 || i_pkg_V1@15@01 == 2) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 25 | i_pkg_V1@15@01 == 0 || i_pkg_V1@15@01 == 1 || i_pkg_V1@15@01 == 2]
(assert (or (= i_pkg_V1@15@01 0) (or (= i_pkg_V1@15@01 1) (= i_pkg_V1@15@01 2))))
; [eval] true && ret_pkg_V1 == 0
(push) ; 5
; [then-branch: 26 | False | live]
; [else-branch: 26 | True | live]
(push) ; 6
; [then-branch: 26 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 26 | True]
; [eval] ret_pkg_V1 == 0
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(pop) ; 4
(push) ; 4
; [else-branch: 25 | !(i_pkg_V1@15@01 == 0 || i_pkg_V1@15@01 == 1 || i_pkg_V1@15@01 == 2)]
(assert (not (or (= i_pkg_V1@15@01 0) (or (= i_pkg_V1@15@01 1) (= i_pkg_V1@15@01 2)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (not (or (= i_pkg_V1@15@01 0) (or (= i_pkg_V1@15@01 1) (= i_pkg_V1@15@01 2))))
  (or (= i_pkg_V1@15@01 0) (or (= i_pkg_V1@15@01 1) (= i_pkg_V1@15@01 2)))))
(assert (=>
  (or (= i_pkg_V1@15@01 0) (or (= i_pkg_V1@15@01 1) (= i_pkg_V1@15@01 2)))
  (= ret_pkg_V1@16@01 0)))
(assert (=
  ($Snap.second $t@18@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@18@01))
    ($Snap.second ($Snap.second $t@18@01)))))
(assert (= ($Snap.first ($Snap.second $t@18@01)) $Snap.unit))
; [eval] true && i_pkg_V1 == 3 ==> true && ret_pkg_V1 == 2
; [eval] true && i_pkg_V1 == 3
(push) ; 3
; [then-branch: 27 | False | live]
; [else-branch: 27 | True | live]
(push) ; 4
; [then-branch: 27 | False]
(assert false)
(pop) ; 4
(push) ; 4
; [else-branch: 27 | True]
; [eval] i_pkg_V1 == 3
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= i_pkg_V1@15@01 3))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= i_pkg_V1@15@01 3)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 28 | i_pkg_V1@15@01 == 3 | live]
; [else-branch: 28 | i_pkg_V1@15@01 != 3 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 28 | i_pkg_V1@15@01 == 3]
(assert (= i_pkg_V1@15@01 3))
; [eval] true && ret_pkg_V1 == 2
(push) ; 5
; [then-branch: 29 | False | live]
; [else-branch: 29 | True | live]
(push) ; 6
; [then-branch: 29 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 29 | True]
; [eval] ret_pkg_V1 == 2
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(pop) ; 4
(push) ; 4
; [else-branch: 28 | i_pkg_V1@15@01 != 3]
(assert (not (= i_pkg_V1@15@01 3)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not (= i_pkg_V1@15@01 3)) (= i_pkg_V1@15@01 3)))
(assert (=> (= i_pkg_V1@15@01 3) (= ret_pkg_V1@16@01 2)))
(assert (= ($Snap.second ($Snap.second $t@18@01)) $Snap.unit))
; [eval] i_pkg_V1 > 3 ==> true && ret_pkg_V1 == 3
; [eval] i_pkg_V1 > 3
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (> i_pkg_V1@15@01 3))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (> i_pkg_V1@15@01 3)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 30 | i_pkg_V1@15@01 > 3 | live]
; [else-branch: 30 | !(i_pkg_V1@15@01 > 3) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 30 | i_pkg_V1@15@01 > 3]
(assert (> i_pkg_V1@15@01 3))
; [eval] true && ret_pkg_V1 == 3
(push) ; 5
; [then-branch: 31 | False | live]
; [else-branch: 31 | True | live]
(push) ; 6
; [then-branch: 31 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 31 | True]
; [eval] ret_pkg_V1 == 3
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(pop) ; 4
(push) ; 4
; [else-branch: 30 | !(i_pkg_V1@15@01 > 3)]
(assert (not (> i_pkg_V1@15@01 3)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not (> i_pkg_V1@15@01 3)) (> i_pkg_V1@15@01 3)))
(assert (=> (> i_pkg_V1@15@01 3) (= ret_pkg_V1@16@01 3)))
(pop) ; 2
(push) ; 2
; [exec]
; var ret_pkg_V1_CN5: Int
(declare-const ret_pkg_V1_CN5@19@01 Int)
; [exec]
; var i_pkg_V1_CN4: Int
(declare-const i_pkg_V1_CN4@20@01 Int)
; [exec]
; var N6: Int
(declare-const N6@21@01 Int)
; [exec]
; ret_pkg_V1 := 0
; [exec]
; i_pkg_V1_CN4 := 0
; [exec]
; ret_pkg_V1_CN5 := 0
; [exec]
; i_pkg_V1_CN4 := i_pkg_V1
; [exec]
; N6 := 0
; [exec]
; N6 := i_pkg_V1_CN4
; [exec]
; N6 := i_pkg_V1_CN4
; [eval] true && N6 == 0 || (true && N6 == 1 || (true && N6 == 2 || false))
; [eval] true && N6 == 0
(push) ; 3
; [then-branch: 32 | False | live]
; [else-branch: 32 | True | live]
(push) ; 4
; [then-branch: 32 | False]
(assert false)
(pop) ; 4
(push) ; 4
; [else-branch: 32 | True]
; [eval] N6 == 0
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(push) ; 3
; [then-branch: 33 | i_pkg_V1@15@01 == 0 | live]
; [else-branch: 33 | i_pkg_V1@15@01 != 0 | live]
(push) ; 4
; [then-branch: 33 | i_pkg_V1@15@01 == 0]
(assert (= i_pkg_V1@15@01 0))
(pop) ; 4
(push) ; 4
; [else-branch: 33 | i_pkg_V1@15@01 != 0]
(assert (not (= i_pkg_V1@15@01 0)))
; [eval] true && N6 == 1
(push) ; 5
; [then-branch: 34 | False | live]
; [else-branch: 34 | True | live]
(push) ; 6
; [then-branch: 34 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 34 | True]
; [eval] N6 == 1
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(push) ; 5
; [then-branch: 35 | i_pkg_V1@15@01 == 1 | live]
; [else-branch: 35 | i_pkg_V1@15@01 != 1 | live]
(push) ; 6
; [then-branch: 35 | i_pkg_V1@15@01 == 1]
(assert (= i_pkg_V1@15@01 1))
(pop) ; 6
(push) ; 6
; [else-branch: 35 | i_pkg_V1@15@01 != 1]
(assert (not (= i_pkg_V1@15@01 1)))
; [eval] true && N6 == 2
(push) ; 7
; [then-branch: 36 | False | live]
; [else-branch: 36 | True | live]
(push) ; 8
; [then-branch: 36 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 36 | True]
; [eval] N6 == 2
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(push) ; 7
; [then-branch: 37 | i_pkg_V1@15@01 == 2 | live]
; [else-branch: 37 | i_pkg_V1@15@01 != 2 | live]
(push) ; 8
; [then-branch: 37 | i_pkg_V1@15@01 == 2]
(assert (= i_pkg_V1@15@01 2))
(pop) ; 8
(push) ; 8
; [else-branch: 37 | i_pkg_V1@15@01 != 2]
(assert (not (= i_pkg_V1@15@01 2)))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or (not (= i_pkg_V1@15@01 2)) (= i_pkg_V1@15@01 2)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (= i_pkg_V1@15@01 1))
  (and
    (not (= i_pkg_V1@15@01 1))
    (or (not (= i_pkg_V1@15@01 2)) (= i_pkg_V1@15@01 2)))))
(assert (or (not (= i_pkg_V1@15@01 1)) (= i_pkg_V1@15@01 1)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (= i_pkg_V1@15@01 0))
  (and
    (not (= i_pkg_V1@15@01 0))
    (=>
      (not (= i_pkg_V1@15@01 1))
      (and
        (not (= i_pkg_V1@15@01 1))
        (or (not (= i_pkg_V1@15@01 2)) (= i_pkg_V1@15@01 2))))
    (or (not (= i_pkg_V1@15@01 1)) (= i_pkg_V1@15@01 1)))))
(assert (or (not (= i_pkg_V1@15@01 0)) (= i_pkg_V1@15@01 0)))
(push) ; 3
(set-option :timeout 10)
(assert (not (not (or (= i_pkg_V1@15@01 0) (or (= i_pkg_V1@15@01 1) (= i_pkg_V1@15@01 2))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (or (= i_pkg_V1@15@01 0) (or (= i_pkg_V1@15@01 1) (= i_pkg_V1@15@01 2)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 38 | i_pkg_V1@15@01 == 0 || i_pkg_V1@15@01 == 1 || i_pkg_V1@15@01 == 2 | live]
; [else-branch: 38 | !(i_pkg_V1@15@01 == 0 || i_pkg_V1@15@01 == 1 || i_pkg_V1@15@01 == 2) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 38 | i_pkg_V1@15@01 == 0 || i_pkg_V1@15@01 == 1 || i_pkg_V1@15@01 == 2]
(assert (or (= i_pkg_V1@15@01 0) (or (= i_pkg_V1@15@01 1) (= i_pkg_V1@15@01 2))))
; [exec]
; ret_pkg_V1_CN5 := 0
; [exec]
; ret_pkg_V1 := ret_pkg_V1_CN5
; [exec]
; label returnLabel
; [eval] true && i_pkg_V1 == 0 || (true && i_pkg_V1 == 1 || true && i_pkg_V1 == 2) ==> true && ret_pkg_V1 == 0
; [eval] true && i_pkg_V1 == 0 || (true && i_pkg_V1 == 1 || true && i_pkg_V1 == 2)
; [eval] true && i_pkg_V1 == 0
(push) ; 4
; [then-branch: 39 | False | live]
; [else-branch: 39 | True | live]
(push) ; 5
; [then-branch: 39 | False]
(assert false)
(pop) ; 5
(push) ; 5
; [else-branch: 39 | True]
; [eval] i_pkg_V1 == 0
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
; [then-branch: 40 | i_pkg_V1@15@01 == 0 | live]
; [else-branch: 40 | i_pkg_V1@15@01 != 0 | live]
(push) ; 5
; [then-branch: 40 | i_pkg_V1@15@01 == 0]
(assert (= i_pkg_V1@15@01 0))
(pop) ; 5
(push) ; 5
; [else-branch: 40 | i_pkg_V1@15@01 != 0]
(assert (not (= i_pkg_V1@15@01 0)))
; [eval] true && i_pkg_V1 == 1
(push) ; 6
; [then-branch: 41 | False | live]
; [else-branch: 41 | True | live]
(push) ; 7
; [then-branch: 41 | False]
(assert false)
(pop) ; 7
(push) ; 7
; [else-branch: 41 | True]
; [eval] i_pkg_V1 == 1
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(push) ; 6
; [then-branch: 42 | i_pkg_V1@15@01 == 1 | live]
; [else-branch: 42 | i_pkg_V1@15@01 != 1 | live]
(push) ; 7
; [then-branch: 42 | i_pkg_V1@15@01 == 1]
(assert (= i_pkg_V1@15@01 1))
(pop) ; 7
(push) ; 7
; [else-branch: 42 | i_pkg_V1@15@01 != 1]
(assert (not (= i_pkg_V1@15@01 1)))
; [eval] true && i_pkg_V1 == 2
(push) ; 8
; [then-branch: 43 | False | live]
; [else-branch: 43 | True | live]
(push) ; 9
; [then-branch: 43 | False]
(assert false)
(pop) ; 9
(push) ; 9
; [else-branch: 43 | True]
; [eval] i_pkg_V1 == 2
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (not (= i_pkg_V1@15@01 1)) (= i_pkg_V1@15@01 1)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (= i_pkg_V1@15@01 0))
  (and
    (not (= i_pkg_V1@15@01 0))
    (or (not (= i_pkg_V1@15@01 1)) (= i_pkg_V1@15@01 1)))))
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (or (= i_pkg_V1@15@01 0) (or (= i_pkg_V1@15@01 1) (= i_pkg_V1@15@01 2))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 44 | i_pkg_V1@15@01 == 0 || i_pkg_V1@15@01 == 1 || i_pkg_V1@15@01 == 2 | live]
; [else-branch: 44 | !(i_pkg_V1@15@01 == 0 || i_pkg_V1@15@01 == 1 || i_pkg_V1@15@01 == 2) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 44 | i_pkg_V1@15@01 == 0 || i_pkg_V1@15@01 == 1 || i_pkg_V1@15@01 == 2]
; [eval] true && ret_pkg_V1 == 0
(push) ; 6
; [then-branch: 45 | False | live]
; [else-branch: 45 | True | live]
(push) ; 7
; [then-branch: 45 | False]
(assert false)
(pop) ; 7
(push) ; 7
; [else-branch: 45 | True]
; [eval] ret_pkg_V1 == 0
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
; [eval] true && i_pkg_V1 == 3 ==> true && ret_pkg_V1 == 2
; [eval] true && i_pkg_V1 == 3
(push) ; 4
; [then-branch: 46 | False | live]
; [else-branch: 46 | True | live]
(push) ; 5
; [then-branch: 46 | False]
(assert false)
(pop) ; 5
(push) ; 5
; [else-branch: 46 | True]
; [eval] i_pkg_V1 == 3
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= i_pkg_V1@15@01 3))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 47 | i_pkg_V1@15@01 == 3 | dead]
; [else-branch: 47 | i_pkg_V1@15@01 != 3 | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 47 | i_pkg_V1@15@01 != 3]
(assert (not (= i_pkg_V1@15@01 3)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (not (= i_pkg_V1@15@01 3)))
; [eval] i_pkg_V1 > 3 ==> true && ret_pkg_V1 == 3
; [eval] i_pkg_V1 > 3
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (> i_pkg_V1@15@01 3))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 48 | i_pkg_V1@15@01 > 3 | dead]
; [else-branch: 48 | !(i_pkg_V1@15@01 > 3) | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 48 | !(i_pkg_V1@15@01 > 3)]
(assert (not (> i_pkg_V1@15@01 3)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (not (> i_pkg_V1@15@01 3)))
(pop) ; 3
(push) ; 3
; [else-branch: 38 | !(i_pkg_V1@15@01 == 0 || i_pkg_V1@15@01 == 1 || i_pkg_V1@15@01 == 2)]
(assert (not (or (= i_pkg_V1@15@01 0) (or (= i_pkg_V1@15@01 1) (= i_pkg_V1@15@01 2)))))
(pop) ; 3
; [eval] !(true && N6 == 0 || (true && N6 == 1 || (true && N6 == 2 || false)))
; [eval] true && N6 == 0 || (true && N6 == 1 || (true && N6 == 2 || false))
; [eval] true && N6 == 0
(push) ; 3
; [then-branch: 49 | False | live]
; [else-branch: 49 | True | live]
(push) ; 4
; [then-branch: 49 | False]
(assert false)
(pop) ; 4
(push) ; 4
; [else-branch: 49 | True]
; [eval] N6 == 0
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(push) ; 3
; [then-branch: 50 | i_pkg_V1@15@01 == 0 | live]
; [else-branch: 50 | i_pkg_V1@15@01 != 0 | live]
(push) ; 4
; [then-branch: 50 | i_pkg_V1@15@01 == 0]
(assert (= i_pkg_V1@15@01 0))
(pop) ; 4
(push) ; 4
; [else-branch: 50 | i_pkg_V1@15@01 != 0]
(assert (not (= i_pkg_V1@15@01 0)))
; [eval] true && N6 == 1
(push) ; 5
; [then-branch: 51 | False | live]
; [else-branch: 51 | True | live]
(push) ; 6
; [then-branch: 51 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 51 | True]
; [eval] N6 == 1
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(push) ; 5
; [then-branch: 52 | i_pkg_V1@15@01 == 1 | live]
; [else-branch: 52 | i_pkg_V1@15@01 != 1 | live]
(push) ; 6
; [then-branch: 52 | i_pkg_V1@15@01 == 1]
(assert (= i_pkg_V1@15@01 1))
(pop) ; 6
(push) ; 6
; [else-branch: 52 | i_pkg_V1@15@01 != 1]
(assert (not (= i_pkg_V1@15@01 1)))
; [eval] true && N6 == 2
(push) ; 7
; [then-branch: 53 | False | live]
; [else-branch: 53 | True | live]
(push) ; 8
; [then-branch: 53 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 53 | True]
; [eval] N6 == 2
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(push) ; 7
; [then-branch: 54 | i_pkg_V1@15@01 == 2 | live]
; [else-branch: 54 | i_pkg_V1@15@01 != 2 | live]
(push) ; 8
; [then-branch: 54 | i_pkg_V1@15@01 == 2]
(assert (= i_pkg_V1@15@01 2))
(pop) ; 8
(push) ; 8
; [else-branch: 54 | i_pkg_V1@15@01 != 2]
(assert (not (= i_pkg_V1@15@01 2)))
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or (not (= i_pkg_V1@15@01 2)) (= i_pkg_V1@15@01 2)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (= i_pkg_V1@15@01 1))
  (and
    (not (= i_pkg_V1@15@01 1))
    (or (not (= i_pkg_V1@15@01 2)) (= i_pkg_V1@15@01 2)))))
(assert (or (not (= i_pkg_V1@15@01 1)) (= i_pkg_V1@15@01 1)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(push) ; 3
(set-option :timeout 10)
(assert (not (or (= i_pkg_V1@15@01 0) (or (= i_pkg_V1@15@01 1) (= i_pkg_V1@15@01 2)))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (or (= i_pkg_V1@15@01 0) (or (= i_pkg_V1@15@01 1) (= i_pkg_V1@15@01 2))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 55 | !(i_pkg_V1@15@01 == 0 || i_pkg_V1@15@01 == 1 || i_pkg_V1@15@01 == 2) | live]
; [else-branch: 55 | i_pkg_V1@15@01 == 0 || i_pkg_V1@15@01 == 1 || i_pkg_V1@15@01 == 2 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 55 | !(i_pkg_V1@15@01 == 0 || i_pkg_V1@15@01 == 1 || i_pkg_V1@15@01 == 2)]
(assert (not (or (= i_pkg_V1@15@01 0) (or (= i_pkg_V1@15@01 1) (= i_pkg_V1@15@01 2)))))
; [eval] true && N6 == 2 || false
; [eval] true && N6 == 2
(push) ; 4
; [then-branch: 56 | False | live]
; [else-branch: 56 | True | live]
(push) ; 5
; [then-branch: 56 | False]
(assert false)
(pop) ; 5
(push) ; 5
; [else-branch: 56 | True]
; [eval] N6 == 2
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
; [then-branch: 57 | i_pkg_V1@15@01 == 2 | live]
; [else-branch: 57 | i_pkg_V1@15@01 != 2 | live]
(push) ; 5
; [then-branch: 57 | i_pkg_V1@15@01 == 2]
(assert (= i_pkg_V1@15@01 2))
(pop) ; 5
(push) ; 5
; [else-branch: 57 | i_pkg_V1@15@01 != 2]
(assert (not (= i_pkg_V1@15@01 2)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not (= i_pkg_V1@15@01 2)) (= i_pkg_V1@15@01 2)))
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= i_pkg_V1@15@01 2))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 58 | i_pkg_V1@15@01 == 2 | dead]
; [else-branch: 58 | i_pkg_V1@15@01 != 2 | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 58 | i_pkg_V1@15@01 != 2]
(assert (not (= i_pkg_V1@15@01 2)))
(pop) ; 4
; [eval] !(true && N6 == 2 || false)
; [eval] true && N6 == 2 || false
; [eval] true && N6 == 2
(push) ; 4
; [then-branch: 59 | False | live]
; [else-branch: 59 | True | live]
(push) ; 5
; [then-branch: 59 | False]
(assert false)
(pop) ; 5
(push) ; 5
; [else-branch: 59 | True]
; [eval] N6 == 2
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
; [then-branch: 60 | i_pkg_V1@15@01 == 2 | live]
; [else-branch: 60 | i_pkg_V1@15@01 != 2 | live]
(push) ; 5
; [then-branch: 60 | i_pkg_V1@15@01 == 2]
(assert (= i_pkg_V1@15@01 2))
(pop) ; 5
(push) ; 5
; [else-branch: 60 | i_pkg_V1@15@01 != 2]
(assert (not (= i_pkg_V1@15@01 2)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
(set-option :timeout 10)
(assert (not (= i_pkg_V1@15@01 2)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= i_pkg_V1@15@01 2))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 61 | i_pkg_V1@15@01 != 2 | live]
; [else-branch: 61 | i_pkg_V1@15@01 == 2 | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 61 | i_pkg_V1@15@01 != 2]
(assert (not (= i_pkg_V1@15@01 2)))
; [eval] true && N6 == 3 || false
; [eval] true && N6 == 3
(push) ; 5
; [then-branch: 62 | False | live]
; [else-branch: 62 | True | live]
(push) ; 6
; [then-branch: 62 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 62 | True]
; [eval] N6 == 3
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(push) ; 5
; [then-branch: 63 | i_pkg_V1@15@01 == 3 | live]
; [else-branch: 63 | i_pkg_V1@15@01 != 3 | live]
(push) ; 6
; [then-branch: 63 | i_pkg_V1@15@01 == 3]
(assert (= i_pkg_V1@15@01 3))
(pop) ; 6
(push) ; 6
; [else-branch: 63 | i_pkg_V1@15@01 != 3]
(assert (not (= i_pkg_V1@15@01 3)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (or (not (= i_pkg_V1@15@01 3)) (= i_pkg_V1@15@01 3)))
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= i_pkg_V1@15@01 3))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= i_pkg_V1@15@01 3)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 64 | i_pkg_V1@15@01 == 3 | live]
; [else-branch: 64 | i_pkg_V1@15@01 != 3 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 64 | i_pkg_V1@15@01 == 3]
(assert (= i_pkg_V1@15@01 3))
; [exec]
; ret_pkg_V1_CN5 := 2
; [exec]
; ret_pkg_V1 := ret_pkg_V1_CN5
; [exec]
; label returnLabel
; [eval] true && i_pkg_V1 == 0 || (true && i_pkg_V1 == 1 || true && i_pkg_V1 == 2) ==> true && ret_pkg_V1 == 0
; [eval] true && i_pkg_V1 == 0 || (true && i_pkg_V1 == 1 || true && i_pkg_V1 == 2)
; [eval] true && i_pkg_V1 == 0
(push) ; 6
; [then-branch: 65 | False | live]
; [else-branch: 65 | True | live]
(push) ; 7
; [then-branch: 65 | False]
(assert false)
(pop) ; 7
(push) ; 7
; [else-branch: 65 | True]
; [eval] i_pkg_V1 == 0
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(push) ; 6
; [then-branch: 66 | i_pkg_V1@15@01 == 0 | live]
; [else-branch: 66 | i_pkg_V1@15@01 != 0 | live]
(push) ; 7
; [then-branch: 66 | i_pkg_V1@15@01 == 0]
(assert (= i_pkg_V1@15@01 0))
(pop) ; 7
(push) ; 7
; [else-branch: 66 | i_pkg_V1@15@01 != 0]
(assert (not (= i_pkg_V1@15@01 0)))
; [eval] true && i_pkg_V1 == 1
(push) ; 8
; [then-branch: 67 | False | live]
; [else-branch: 67 | True | live]
(push) ; 9
; [then-branch: 67 | False]
(assert false)
(pop) ; 9
(push) ; 9
; [else-branch: 67 | True]
; [eval] i_pkg_V1 == 1
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
; [then-branch: 68 | i_pkg_V1@15@01 == 1 | live]
; [else-branch: 68 | i_pkg_V1@15@01 != 1 | live]
(push) ; 9
; [then-branch: 68 | i_pkg_V1@15@01 == 1]
(assert (= i_pkg_V1@15@01 1))
(pop) ; 9
(push) ; 9
; [else-branch: 68 | i_pkg_V1@15@01 != 1]
(assert (not (= i_pkg_V1@15@01 1)))
; [eval] true && i_pkg_V1 == 2
(push) ; 10
; [then-branch: 69 | False | live]
; [else-branch: 69 | True | live]
(push) ; 11
; [then-branch: 69 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 69 | True]
; [eval] i_pkg_V1 == 2
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (not (= i_pkg_V1@15@01 1)) (= i_pkg_V1@15@01 1)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (= i_pkg_V1@15@01 0))
  (and
    (not (= i_pkg_V1@15@01 0))
    (or (not (= i_pkg_V1@15@01 1)) (= i_pkg_V1@15@01 1)))))
(push) ; 6
; [then-branch: 70 | i_pkg_V1@15@01 == 0 || i_pkg_V1@15@01 == 1 || i_pkg_V1@15@01 == 2 | dead]
; [else-branch: 70 | !(i_pkg_V1@15@01 == 0 || i_pkg_V1@15@01 == 1 || i_pkg_V1@15@01 == 2) | live]
(push) ; 7
; [else-branch: 70 | !(i_pkg_V1@15@01 == 0 || i_pkg_V1@15@01 == 1 || i_pkg_V1@15@01 == 2)]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; [eval] true && i_pkg_V1 == 3 ==> true && ret_pkg_V1 == 2
; [eval] true && i_pkg_V1 == 3
(push) ; 6
; [then-branch: 71 | False | live]
; [else-branch: 71 | True | live]
(push) ; 7
; [then-branch: 71 | False]
(assert false)
(pop) ; 7
(push) ; 7
; [else-branch: 71 | True]
; [eval] i_pkg_V1 == 3
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= i_pkg_V1@15@01 3))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 72 | i_pkg_V1@15@01 == 3 | live]
; [else-branch: 72 | i_pkg_V1@15@01 != 3 | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 72 | i_pkg_V1@15@01 == 3]
; [eval] true && ret_pkg_V1 == 2
(push) ; 8
; [then-branch: 73 | False | live]
; [else-branch: 73 | True | live]
(push) ; 9
; [then-branch: 73 | False]
(assert false)
(pop) ; 9
(push) ; 9
; [else-branch: 73 | True]
; [eval] ret_pkg_V1 == 2
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(pop) ; 7
(pop) ; 6
; Joined path conditions
; [eval] i_pkg_V1 > 3 ==> true && ret_pkg_V1 == 3
; [eval] i_pkg_V1 > 3
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not (> i_pkg_V1@15@01 3))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 74 | i_pkg_V1@15@01 > 3 | dead]
; [else-branch: 74 | !(i_pkg_V1@15@01 > 3) | live]
(set-option :timeout 0)
(push) ; 7
; [else-branch: 74 | !(i_pkg_V1@15@01 > 3)]
(assert (not (> i_pkg_V1@15@01 3)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (not (> i_pkg_V1@15@01 3)))
(pop) ; 5
(push) ; 5
; [else-branch: 64 | i_pkg_V1@15@01 != 3]
(assert (not (= i_pkg_V1@15@01 3)))
(pop) ; 5
; [eval] !(true && N6 == 3 || false)
; [eval] true && N6 == 3 || false
; [eval] true && N6 == 3
(push) ; 5
; [then-branch: 75 | False | live]
; [else-branch: 75 | True | live]
(push) ; 6
; [then-branch: 75 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 75 | True]
; [eval] N6 == 3
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(push) ; 5
; [then-branch: 76 | i_pkg_V1@15@01 == 3 | live]
; [else-branch: 76 | i_pkg_V1@15@01 != 3 | live]
(push) ; 6
; [then-branch: 76 | i_pkg_V1@15@01 == 3]
(assert (= i_pkg_V1@15@01 3))
(pop) ; 6
(push) ; 6
; [else-branch: 76 | i_pkg_V1@15@01 != 3]
(assert (not (= i_pkg_V1@15@01 3)))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(push) ; 5
(set-option :timeout 10)
(assert (not (= i_pkg_V1@15@01 3)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= i_pkg_V1@15@01 3))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 77 | i_pkg_V1@15@01 != 3 | live]
; [else-branch: 77 | i_pkg_V1@15@01 == 3 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 77 | i_pkg_V1@15@01 != 3]
(assert (not (= i_pkg_V1@15@01 3)))
; [exec]
; ret_pkg_V1_CN5 := 3
; [exec]
; ret_pkg_V1 := ret_pkg_V1_CN5
; [exec]
; label returnLabel
; [eval] true && i_pkg_V1 == 0 || (true && i_pkg_V1 == 1 || true && i_pkg_V1 == 2) ==> true && ret_pkg_V1 == 0
; [eval] true && i_pkg_V1 == 0 || (true && i_pkg_V1 == 1 || true && i_pkg_V1 == 2)
; [eval] true && i_pkg_V1 == 0
(push) ; 6
; [then-branch: 78 | False | live]
; [else-branch: 78 | True | live]
(push) ; 7
; [then-branch: 78 | False]
(assert false)
(pop) ; 7
(push) ; 7
; [else-branch: 78 | True]
; [eval] i_pkg_V1 == 0
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(push) ; 6
; [then-branch: 79 | i_pkg_V1@15@01 == 0 | live]
; [else-branch: 79 | i_pkg_V1@15@01 != 0 | live]
(push) ; 7
; [then-branch: 79 | i_pkg_V1@15@01 == 0]
(assert (= i_pkg_V1@15@01 0))
(pop) ; 7
(push) ; 7
; [else-branch: 79 | i_pkg_V1@15@01 != 0]
(assert (not (= i_pkg_V1@15@01 0)))
; [eval] true && i_pkg_V1 == 1
(push) ; 8
; [then-branch: 80 | False | live]
; [else-branch: 80 | True | live]
(push) ; 9
; [then-branch: 80 | False]
(assert false)
(pop) ; 9
(push) ; 9
; [else-branch: 80 | True]
; [eval] i_pkg_V1 == 1
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(push) ; 8
; [then-branch: 81 | i_pkg_V1@15@01 == 1 | live]
; [else-branch: 81 | i_pkg_V1@15@01 != 1 | live]
(push) ; 9
; [then-branch: 81 | i_pkg_V1@15@01 == 1]
(assert (= i_pkg_V1@15@01 1))
(pop) ; 9
(push) ; 9
; [else-branch: 81 | i_pkg_V1@15@01 != 1]
(assert (not (= i_pkg_V1@15@01 1)))
; [eval] true && i_pkg_V1 == 2
(push) ; 10
; [then-branch: 82 | False | live]
; [else-branch: 82 | True | live]
(push) ; 11
; [then-branch: 82 | False]
(assert false)
(pop) ; 11
(push) ; 11
; [else-branch: 82 | True]
; [eval] i_pkg_V1 == 2
(pop) ; 11
(pop) ; 10
; Joined path conditions
; Joined path conditions
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (or (not (= i_pkg_V1@15@01 1)) (= i_pkg_V1@15@01 1)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (= i_pkg_V1@15@01 0))
  (and
    (not (= i_pkg_V1@15@01 0))
    (or (not (= i_pkg_V1@15@01 1)) (= i_pkg_V1@15@01 1)))))
(push) ; 6
; [then-branch: 83 | i_pkg_V1@15@01 == 0 || i_pkg_V1@15@01 == 1 || i_pkg_V1@15@01 == 2 | dead]
; [else-branch: 83 | !(i_pkg_V1@15@01 == 0 || i_pkg_V1@15@01 == 1 || i_pkg_V1@15@01 == 2) | live]
(push) ; 7
; [else-branch: 83 | !(i_pkg_V1@15@01 == 0 || i_pkg_V1@15@01 == 1 || i_pkg_V1@15@01 == 2)]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; [eval] true && i_pkg_V1 == 3 ==> true && ret_pkg_V1 == 2
; [eval] true && i_pkg_V1 == 3
(push) ; 6
; [then-branch: 84 | False | live]
; [else-branch: 84 | True | live]
(push) ; 7
; [then-branch: 84 | False]
(assert false)
(pop) ; 7
(push) ; 7
; [else-branch: 84 | True]
; [eval] i_pkg_V1 == 3
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(push) ; 6
; [then-branch: 85 | i_pkg_V1@15@01 == 3 | dead]
; [else-branch: 85 | i_pkg_V1@15@01 != 3 | live]
(push) ; 7
; [else-branch: 85 | i_pkg_V1@15@01 != 3]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; [eval] i_pkg_V1 > 3 ==> true && ret_pkg_V1 == 3
; [eval] i_pkg_V1 > 3
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (not (> i_pkg_V1@15@01 3))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (> i_pkg_V1@15@01 3)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 86 | i_pkg_V1@15@01 > 3 | live]
; [else-branch: 86 | !(i_pkg_V1@15@01 > 3) | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 86 | i_pkg_V1@15@01 > 3]
(assert (> i_pkg_V1@15@01 3))
; [eval] true && ret_pkg_V1 == 3
(push) ; 8
; [then-branch: 87 | False | live]
; [else-branch: 87 | True | live]
(push) ; 9
; [then-branch: 87 | False]
(assert false)
(pop) ; 9
(push) ; 9
; [else-branch: 87 | True]
; [eval] ret_pkg_V1 == 3
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(pop) ; 7
(push) ; 7
; [else-branch: 86 | !(i_pkg_V1@15@01 > 3)]
(assert (not (> i_pkg_V1@15@01 3)))
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (or (not (> i_pkg_V1@15@01 3)) (> i_pkg_V1@15@01 3)))
(pop) ; 5
(push) ; 5
; [else-branch: 77 | i_pkg_V1@15@01 == 3]
(assert (= i_pkg_V1@15@01 3))
(pop) ; 5
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 55 | i_pkg_V1@15@01 == 0 || i_pkg_V1@15@01 == 1 || i_pkg_V1@15@01 == 2]
(assert (or (= i_pkg_V1@15@01 0) (or (= i_pkg_V1@15@01 1) (= i_pkg_V1@15@01 2))))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- isOdd_pkg_F ----------
(declare-const i_pkg_V2@22@01 Int)
(declare-const ret_pkg_V2@23@01 Bool)
(declare-const i_pkg_V2@24@01 Int)
(declare-const ret_pkg_V2@25@01 Bool)
(push) ; 1
(declare-const $t@26@01 $Snap)
(assert (= $t@26@01 $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@27@01 $Snap)
(assert (= $t@27@01 ($Snap.combine ($Snap.first $t@27@01) ($Snap.second $t@27@01))))
(assert (= ($Snap.first $t@27@01) $Snap.unit))
; [eval] true && i_pkg_V2 % 2 == 1 ==> true && ret_pkg_V2 == true
; [eval] true && i_pkg_V2 % 2 == 1
(push) ; 3
; [then-branch: 88 | False | live]
; [else-branch: 88 | True | live]
(push) ; 4
; [then-branch: 88 | False]
(assert false)
(pop) ; 4
(push) ; 4
; [else-branch: 88 | True]
; [eval] i_pkg_V2 % 2 == 1
; [eval] i_pkg_V2 % 2
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= (mod i_pkg_V2@24@01 2) 1))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (mod i_pkg_V2@24@01 2) 1)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 89 | i_pkg_V2@24@01 % 2 == 1 | live]
; [else-branch: 89 | i_pkg_V2@24@01 % 2 != 1 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 89 | i_pkg_V2@24@01 % 2 == 1]
(assert (= (mod i_pkg_V2@24@01 2) 1))
; [eval] true && ret_pkg_V2 == true
(push) ; 5
; [then-branch: 90 | False | live]
; [else-branch: 90 | True | live]
(push) ; 6
; [then-branch: 90 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 90 | True]
; [eval] ret_pkg_V2 == true
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(pop) ; 4
(push) ; 4
; [else-branch: 89 | i_pkg_V2@24@01 % 2 != 1]
(assert (not (= (mod i_pkg_V2@24@01 2) 1)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not (= (mod i_pkg_V2@24@01 2) 1)) (= (mod i_pkg_V2@24@01 2) 1)))
(assert (=> (= (mod i_pkg_V2@24@01 2) 1) (= ret_pkg_V2@25@01 true)))
(assert (= ($Snap.second $t@27@01) $Snap.unit))
; [eval] true && i_pkg_V2 % 2 == 0 ==> true && ret_pkg_V2 == false
; [eval] true && i_pkg_V2 % 2 == 0
(push) ; 3
; [then-branch: 91 | False | live]
; [else-branch: 91 | True | live]
(push) ; 4
; [then-branch: 91 | False]
(assert false)
(pop) ; 4
(push) ; 4
; [else-branch: 91 | True]
; [eval] i_pkg_V2 % 2 == 0
; [eval] i_pkg_V2 % 2
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= (mod i_pkg_V2@24@01 2) 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (mod i_pkg_V2@24@01 2) 0)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 92 | i_pkg_V2@24@01 % 2 == 0 | live]
; [else-branch: 92 | i_pkg_V2@24@01 % 2 != 0 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 92 | i_pkg_V2@24@01 % 2 == 0]
(assert (= (mod i_pkg_V2@24@01 2) 0))
; [eval] true && ret_pkg_V2 == false
(push) ; 5
; [then-branch: 93 | False | live]
; [else-branch: 93 | True | live]
(push) ; 6
; [then-branch: 93 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 93 | True]
; [eval] ret_pkg_V2 == false
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(pop) ; 4
(push) ; 4
; [else-branch: 92 | i_pkg_V2@24@01 % 2 != 0]
(assert (not (= (mod i_pkg_V2@24@01 2) 0)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not (= (mod i_pkg_V2@24@01 2) 0)) (= (mod i_pkg_V2@24@01 2) 0)))
(assert (=> (= (mod i_pkg_V2@24@01 2) 0) (= ret_pkg_V2@25@01 false)))
(pop) ; 2
(push) ; 2
; [exec]
; var ret_pkg_V2_CN8: Bool
(declare-const ret_pkg_V2_CN8@28@01 Bool)
; [exec]
; var i_pkg_V2_CN7: Int
(declare-const i_pkg_V2_CN7@29@01 Int)
; [exec]
; var N9: Int
(declare-const N9@30@01 Int)
; [exec]
; ret_pkg_V2 := false
; [exec]
; i_pkg_V2_CN7 := 0
; [exec]
; ret_pkg_V2_CN8 := false
; [exec]
; i_pkg_V2_CN7 := i_pkg_V2
; [exec]
; N9 := 0
; [exec]
; N9 := i_pkg_V2_CN7 % 2
; [eval] i_pkg_V2_CN7 % 2
(declare-const N9@31@01 Int)
(assert (= N9@31@01 (mod i_pkg_V2@24@01 2)))
; [exec]
; i_pkg_V2_CN7 := i_pkg_V2_CN7 + 1
; [eval] i_pkg_V2_CN7 + 1
(declare-const i_pkg_V2_CN7@32@01 Int)
(assert (= i_pkg_V2_CN7@32@01 (+ i_pkg_V2@24@01 1)))
; [exec]
; N9 := i_pkg_V2_CN7 % 2
; [eval] i_pkg_V2_CN7 % 2
(declare-const N9@33@01 Int)
(assert (= N9@33@01 (mod i_pkg_V2_CN7@32@01 2)))
; [eval] true && N9 == 0 || false
; [eval] true && N9 == 0
(push) ; 3
; [then-branch: 94 | False | live]
; [else-branch: 94 | True | live]
(push) ; 4
; [then-branch: 94 | False]
(assert false)
(pop) ; 4
(push) ; 4
; [else-branch: 94 | True]
; [eval] N9 == 0
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(push) ; 3
; [then-branch: 95 | N9@33@01 == 0 | live]
; [else-branch: 95 | N9@33@01 != 0 | live]
(push) ; 4
; [then-branch: 95 | N9@33@01 == 0]
(assert (= N9@33@01 0))
(pop) ; 4
(push) ; 4
; [else-branch: 95 | N9@33@01 != 0]
(assert (not (= N9@33@01 0)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not (= N9@33@01 0)) (= N9@33@01 0)))
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= N9@33@01 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= N9@33@01 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 96 | N9@33@01 == 0 | live]
; [else-branch: 96 | N9@33@01 != 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 96 | N9@33@01 == 0]
(assert (= N9@33@01 0))
; [exec]
; ret_pkg_V2_CN8 := true
; [exec]
; ret_pkg_V2 := ret_pkg_V2_CN8
; [exec]
; label returnLabel
; [eval] true && i_pkg_V2 % 2 == 1 ==> true && ret_pkg_V2 == true
; [eval] true && i_pkg_V2 % 2 == 1
(push) ; 4
; [then-branch: 97 | False | live]
; [else-branch: 97 | True | live]
(push) ; 5
; [then-branch: 97 | False]
(assert false)
(pop) ; 5
(push) ; 5
; [else-branch: 97 | True]
; [eval] i_pkg_V2 % 2 == 1
; [eval] i_pkg_V2 % 2
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= (mod i_pkg_V2@24@01 2) 1))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (mod i_pkg_V2@24@01 2) 1)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 98 | i_pkg_V2@24@01 % 2 == 1 | live]
; [else-branch: 98 | i_pkg_V2@24@01 % 2 != 1 | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 98 | i_pkg_V2@24@01 % 2 == 1]
(assert (= (mod i_pkg_V2@24@01 2) 1))
; [eval] true && ret_pkg_V2 == true
(push) ; 6
; [then-branch: 99 | False | live]
; [else-branch: 99 | True | live]
(push) ; 7
; [then-branch: 99 | False]
(assert false)
(pop) ; 7
(push) ; 7
; [else-branch: 99 | True]
; [eval] ret_pkg_V2 == true
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (= (mod i_pkg_V2@24@01 2) 1))
; [eval] true && i_pkg_V2 % 2 == 0 ==> true && ret_pkg_V2 == false
; [eval] true && i_pkg_V2 % 2 == 0
(push) ; 4
; [then-branch: 100 | False | live]
; [else-branch: 100 | True | live]
(push) ; 5
; [then-branch: 100 | False]
(assert false)
(pop) ; 5
(push) ; 5
; [else-branch: 100 | True]
; [eval] i_pkg_V2 % 2 == 0
; [eval] i_pkg_V2 % 2
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= (mod i_pkg_V2@24@01 2) 0))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 101 | i_pkg_V2@24@01 % 2 == 0 | dead]
; [else-branch: 101 | i_pkg_V2@24@01 % 2 != 0 | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 101 | i_pkg_V2@24@01 % 2 != 0]
(assert (not (= (mod i_pkg_V2@24@01 2) 0)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (not (= (mod i_pkg_V2@24@01 2) 0)))
(pop) ; 3
(push) ; 3
; [else-branch: 96 | N9@33@01 != 0]
(assert (not (= N9@33@01 0)))
(pop) ; 3
; [eval] !(true && N9 == 0 || false)
; [eval] true && N9 == 0 || false
; [eval] true && N9 == 0
(push) ; 3
; [then-branch: 102 | False | live]
; [else-branch: 102 | True | live]
(push) ; 4
; [then-branch: 102 | False]
(assert false)
(pop) ; 4
(push) ; 4
; [else-branch: 102 | True]
; [eval] N9 == 0
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(push) ; 3
; [then-branch: 103 | N9@33@01 == 0 | live]
; [else-branch: 103 | N9@33@01 != 0 | live]
(push) ; 4
; [then-branch: 103 | N9@33@01 == 0]
(assert (= N9@33@01 0))
(pop) ; 4
(push) ; 4
; [else-branch: 103 | N9@33@01 != 0]
(assert (not (= N9@33@01 0)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(push) ; 3
(set-option :timeout 10)
(assert (not (= N9@33@01 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= N9@33@01 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 104 | N9@33@01 != 0 | live]
; [else-branch: 104 | N9@33@01 == 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 104 | N9@33@01 != 0]
(assert (not (= N9@33@01 0)))
; [exec]
; ret_pkg_V2_CN8 := false
; [exec]
; ret_pkg_V2 := ret_pkg_V2_CN8
; [exec]
; label returnLabel
; [eval] true && i_pkg_V2 % 2 == 1 ==> true && ret_pkg_V2 == true
; [eval] true && i_pkg_V2 % 2 == 1
(push) ; 4
; [then-branch: 105 | False | live]
; [else-branch: 105 | True | live]
(push) ; 5
; [then-branch: 105 | False]
(assert false)
(pop) ; 5
(push) ; 5
; [else-branch: 105 | True]
; [eval] i_pkg_V2 % 2 == 1
; [eval] i_pkg_V2 % 2
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= (mod i_pkg_V2@24@01 2) 1))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 106 | i_pkg_V2@24@01 % 2 == 1 | dead]
; [else-branch: 106 | i_pkg_V2@24@01 % 2 != 1 | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 106 | i_pkg_V2@24@01 % 2 != 1]
(assert (not (= (mod i_pkg_V2@24@01 2) 1)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (not (= (mod i_pkg_V2@24@01 2) 1)))
; [eval] true && i_pkg_V2 % 2 == 0 ==> true && ret_pkg_V2 == false
; [eval] true && i_pkg_V2 % 2 == 0
(push) ; 4
; [then-branch: 107 | False | live]
; [else-branch: 107 | True | live]
(push) ; 5
; [then-branch: 107 | False]
(assert false)
(pop) ; 5
(push) ; 5
; [else-branch: 107 | True]
; [eval] i_pkg_V2 % 2 == 0
; [eval] i_pkg_V2 % 2
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= (mod i_pkg_V2@24@01 2) 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= (mod i_pkg_V2@24@01 2) 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 108 | i_pkg_V2@24@01 % 2 == 0 | live]
; [else-branch: 108 | i_pkg_V2@24@01 % 2 != 0 | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 108 | i_pkg_V2@24@01 % 2 == 0]
(assert (= (mod i_pkg_V2@24@01 2) 0))
; [eval] true && ret_pkg_V2 == false
(push) ; 6
; [then-branch: 109 | False | live]
; [else-branch: 109 | True | live]
(push) ; 7
; [then-branch: 109 | False]
(assert false)
(pop) ; 7
(push) ; 7
; [else-branch: 109 | True]
; [eval] ret_pkg_V2 == false
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (= (mod i_pkg_V2@24@01 2) 0))
(pop) ; 3
(push) ; 3
; [else-branch: 104 | N9@33@01 == 0]
(assert (= N9@33@01 0))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- emptySwitch_pkg_F ----------
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
; var N10: Bool
(declare-const N10@34@01 Bool)
; [exec]
; N10 := false
; [exec]
; N10 := true
; [exec]
; N10 := true
; [exec]
; label returnLabel
(pop) ; 2
(pop) ; 1
; ---------- onlyDefault_pkg_F ----------
(declare-const i_pkg_V3@35@01 Int)
(declare-const ret_pkg_V3@36@01 Int)
(declare-const i_pkg_V3@37@01 Int)
(declare-const ret_pkg_V3@38@01 Int)
(push) ; 1
(declare-const $t@39@01 $Snap)
(assert (= $t@39@01 $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var ret_pkg_V3_CN12: Int
(declare-const ret_pkg_V3_CN12@40@01 Int)
; [exec]
; var i_pkg_V3_CN11: Int
(declare-const i_pkg_V3_CN11@41@01 Int)
; [exec]
; var N13: Int
(declare-const N13@42@01 Int)
; [exec]
; ret_pkg_V3 := 0
; [exec]
; i_pkg_V3_CN11 := 0
; [exec]
; ret_pkg_V3_CN12 := 0
; [exec]
; i_pkg_V3_CN11 := i_pkg_V3
; [exec]
; N13 := 0
; [exec]
; N13 := i_pkg_V3_CN11
; [exec]
; N13 := i_pkg_V3_CN11
; [exec]
; ret_pkg_V3_CN12 := 1
; [exec]
; ret_pkg_V3 := ret_pkg_V3_CN12
; [exec]
; label returnLabel
(pop) ; 2
(pop) ; 1
; ---------- testDefaultNotLast_pkg_F ----------
(declare-const i_pkg_V4@43@01 Int)
(declare-const ret_pkg_V4@44@01 Int)
(declare-const i_pkg_V4@45@01 Int)
(declare-const ret_pkg_V4@46@01 Int)
(push) ; 1
(declare-const $t@47@01 $Snap)
(assert (= $t@47@01 $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@48@01 $Snap)
(assert (= $t@48@01 ($Snap.combine ($Snap.first $t@48@01) ($Snap.second $t@48@01))))
(assert (= ($Snap.first $t@48@01) $Snap.unit))
; [eval] true && i_pkg_V4 == 0 ==> true && ret_pkg_V4 == 0
; [eval] true && i_pkg_V4 == 0
(push) ; 3
; [then-branch: 110 | False | live]
; [else-branch: 110 | True | live]
(push) ; 4
; [then-branch: 110 | False]
(assert false)
(pop) ; 4
(push) ; 4
; [else-branch: 110 | True]
; [eval] i_pkg_V4 == 0
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= i_pkg_V4@45@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= i_pkg_V4@45@01 0)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 111 | i_pkg_V4@45@01 == 0 | live]
; [else-branch: 111 | i_pkg_V4@45@01 != 0 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 111 | i_pkg_V4@45@01 == 0]
(assert (= i_pkg_V4@45@01 0))
; [eval] true && ret_pkg_V4 == 0
(push) ; 5
; [then-branch: 112 | False | live]
; [else-branch: 112 | True | live]
(push) ; 6
; [then-branch: 112 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 112 | True]
; [eval] ret_pkg_V4 == 0
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(pop) ; 4
(push) ; 4
; [else-branch: 111 | i_pkg_V4@45@01 != 0]
(assert (not (= i_pkg_V4@45@01 0)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not (= i_pkg_V4@45@01 0)) (= i_pkg_V4@45@01 0)))
(assert (=> (= i_pkg_V4@45@01 0) (= ret_pkg_V4@46@01 0)))
(assert (=
  ($Snap.second $t@48@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@48@01))
    ($Snap.second ($Snap.second $t@48@01)))))
(assert (= ($Snap.first ($Snap.second $t@48@01)) $Snap.unit))
; [eval] true && i_pkg_V4 == 1 ==> true && ret_pkg_V4 == 2
; [eval] true && i_pkg_V4 == 1
(push) ; 3
; [then-branch: 113 | False | live]
; [else-branch: 113 | True | live]
(push) ; 4
; [then-branch: 113 | False]
(assert false)
(pop) ; 4
(push) ; 4
; [else-branch: 113 | True]
; [eval] i_pkg_V4 == 1
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= i_pkg_V4@45@01 1))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= i_pkg_V4@45@01 1)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 114 | i_pkg_V4@45@01 == 1 | live]
; [else-branch: 114 | i_pkg_V4@45@01 != 1 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 114 | i_pkg_V4@45@01 == 1]
(assert (= i_pkg_V4@45@01 1))
; [eval] true && ret_pkg_V4 == 2
(push) ; 5
; [then-branch: 115 | False | live]
; [else-branch: 115 | True | live]
(push) ; 6
; [then-branch: 115 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 115 | True]
; [eval] ret_pkg_V4 == 2
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(pop) ; 4
(push) ; 4
; [else-branch: 114 | i_pkg_V4@45@01 != 1]
(assert (not (= i_pkg_V4@45@01 1)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not (= i_pkg_V4@45@01 1)) (= i_pkg_V4@45@01 1)))
(assert (=> (= i_pkg_V4@45@01 1) (= ret_pkg_V4@46@01 2)))
(assert (= ($Snap.second ($Snap.second $t@48@01)) $Snap.unit))
; [eval] !(true && i_pkg_V4 == 0) && !(true && i_pkg_V4 == 1) ==> true && ret_pkg_V4 == 1
; [eval] !(true && i_pkg_V4 == 0) && !(true && i_pkg_V4 == 1)
; [eval] !(true && i_pkg_V4 == 0)
; [eval] true && i_pkg_V4 == 0
(push) ; 3
; [then-branch: 116 | False | live]
; [else-branch: 116 | True | live]
(push) ; 4
; [then-branch: 116 | False]
(assert false)
(pop) ; 4
(push) ; 4
; [else-branch: 116 | True]
; [eval] i_pkg_V4 == 0
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(push) ; 3
; [then-branch: 117 | i_pkg_V4@45@01 == 0 | live]
; [else-branch: 117 | i_pkg_V4@45@01 != 0 | live]
(push) ; 4
; [then-branch: 117 | i_pkg_V4@45@01 == 0]
(assert (= i_pkg_V4@45@01 0))
(pop) ; 4
(push) ; 4
; [else-branch: 117 | i_pkg_V4@45@01 != 0]
(assert (not (= i_pkg_V4@45@01 0)))
; [eval] !(true && i_pkg_V4 == 1)
; [eval] true && i_pkg_V4 == 1
(push) ; 5
; [then-branch: 118 | False | live]
; [else-branch: 118 | True | live]
(push) ; 6
; [then-branch: 118 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 118 | True]
; [eval] i_pkg_V4 == 1
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (and (not (= i_pkg_V4@45@01 0)) (not (= i_pkg_V4@45@01 1))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (and (not (= i_pkg_V4@45@01 0)) (not (= i_pkg_V4@45@01 1)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 119 | i_pkg_V4@45@01 != 0 && i_pkg_V4@45@01 != 1 | live]
; [else-branch: 119 | !(i_pkg_V4@45@01 != 0 && i_pkg_V4@45@01 != 1) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 119 | i_pkg_V4@45@01 != 0 && i_pkg_V4@45@01 != 1]
(assert (and (not (= i_pkg_V4@45@01 0)) (not (= i_pkg_V4@45@01 1))))
; [eval] true && ret_pkg_V4 == 1
(push) ; 5
; [then-branch: 120 | False | live]
; [else-branch: 120 | True | live]
(push) ; 6
; [then-branch: 120 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 120 | True]
; [eval] ret_pkg_V4 == 1
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(pop) ; 4
(push) ; 4
; [else-branch: 119 | !(i_pkg_V4@45@01 != 0 && i_pkg_V4@45@01 != 1)]
(assert (not (and (not (= i_pkg_V4@45@01 0)) (not (= i_pkg_V4@45@01 1)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or
  (not (and (not (= i_pkg_V4@45@01 0)) (not (= i_pkg_V4@45@01 1))))
  (and (not (= i_pkg_V4@45@01 0)) (not (= i_pkg_V4@45@01 1)))))
(assert (=>
  (and (not (= i_pkg_V4@45@01 0)) (not (= i_pkg_V4@45@01 1)))
  (= ret_pkg_V4@46@01 1)))
(pop) ; 2
(push) ; 2
; [exec]
; var ret_pkg_V4_CN15: Int
(declare-const ret_pkg_V4_CN15@49@01 Int)
; [exec]
; var i_pkg_V4_CN14: Int
(declare-const i_pkg_V4_CN14@50@01 Int)
; [exec]
; var N16: Int
(declare-const N16@51@01 Int)
; [exec]
; ret_pkg_V4 := 0
; [exec]
; i_pkg_V4_CN14 := 0
; [exec]
; ret_pkg_V4_CN15 := 0
; [exec]
; i_pkg_V4_CN14 := i_pkg_V4
; [exec]
; N16 := 0
; [exec]
; N16 := i_pkg_V4_CN14
; [exec]
; N16 := i_pkg_V4_CN14
; [eval] true && N16 == 0 || false
; [eval] true && N16 == 0
(push) ; 3
; [then-branch: 121 | False | live]
; [else-branch: 121 | True | live]
(push) ; 4
; [then-branch: 121 | False]
(assert false)
(pop) ; 4
(push) ; 4
; [else-branch: 121 | True]
; [eval] N16 == 0
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(push) ; 3
; [then-branch: 122 | i_pkg_V4@45@01 == 0 | live]
; [else-branch: 122 | i_pkg_V4@45@01 != 0 | live]
(push) ; 4
; [then-branch: 122 | i_pkg_V4@45@01 == 0]
(assert (= i_pkg_V4@45@01 0))
(pop) ; 4
(push) ; 4
; [else-branch: 122 | i_pkg_V4@45@01 != 0]
(assert (not (= i_pkg_V4@45@01 0)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not (= i_pkg_V4@45@01 0)) (= i_pkg_V4@45@01 0)))
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= i_pkg_V4@45@01 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= i_pkg_V4@45@01 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 123 | i_pkg_V4@45@01 == 0 | live]
; [else-branch: 123 | i_pkg_V4@45@01 != 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 123 | i_pkg_V4@45@01 == 0]
(assert (= i_pkg_V4@45@01 0))
; [exec]
; ret_pkg_V4_CN15 := 0
; [exec]
; ret_pkg_V4 := ret_pkg_V4_CN15
; [exec]
; label returnLabel
; [eval] true && i_pkg_V4 == 0 ==> true && ret_pkg_V4 == 0
; [eval] true && i_pkg_V4 == 0
(push) ; 4
; [then-branch: 124 | False | live]
; [else-branch: 124 | True | live]
(push) ; 5
; [then-branch: 124 | False]
(assert false)
(pop) ; 5
(push) ; 5
; [else-branch: 124 | True]
; [eval] i_pkg_V4 == 0
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= i_pkg_V4@45@01 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 125 | i_pkg_V4@45@01 == 0 | live]
; [else-branch: 125 | i_pkg_V4@45@01 != 0 | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 125 | i_pkg_V4@45@01 == 0]
; [eval] true && ret_pkg_V4 == 0
(push) ; 6
; [then-branch: 126 | False | live]
; [else-branch: 126 | True | live]
(push) ; 7
; [then-branch: 126 | False]
(assert false)
(pop) ; 7
(push) ; 7
; [else-branch: 126 | True]
; [eval] ret_pkg_V4 == 0
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
; [eval] true && i_pkg_V4 == 1 ==> true && ret_pkg_V4 == 2
; [eval] true && i_pkg_V4 == 1
(push) ; 4
; [then-branch: 127 | False | live]
; [else-branch: 127 | True | live]
(push) ; 5
; [then-branch: 127 | False]
(assert false)
(pop) ; 5
(push) ; 5
; [else-branch: 127 | True]
; [eval] i_pkg_V4 == 1
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= i_pkg_V4@45@01 1))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 128 | i_pkg_V4@45@01 == 1 | dead]
; [else-branch: 128 | i_pkg_V4@45@01 != 1 | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 128 | i_pkg_V4@45@01 != 1]
(assert (not (= i_pkg_V4@45@01 1)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (not (= i_pkg_V4@45@01 1)))
; [eval] !(true && i_pkg_V4 == 0) && !(true && i_pkg_V4 == 1) ==> true && ret_pkg_V4 == 1
; [eval] !(true && i_pkg_V4 == 0) && !(true && i_pkg_V4 == 1)
; [eval] !(true && i_pkg_V4 == 0)
; [eval] true && i_pkg_V4 == 0
(push) ; 4
; [then-branch: 129 | False | live]
; [else-branch: 129 | True | live]
(push) ; 5
; [then-branch: 129 | False]
(assert false)
(pop) ; 5
(push) ; 5
; [else-branch: 129 | True]
; [eval] i_pkg_V4 == 0
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
; [then-branch: 130 | i_pkg_V4@45@01 == 0 | live]
; [else-branch: 130 | i_pkg_V4@45@01 != 0 | live]
(push) ; 5
; [then-branch: 130 | i_pkg_V4@45@01 == 0]
(pop) ; 5
(push) ; 5
; [else-branch: 130 | i_pkg_V4@45@01 != 0]
(assert (not (= i_pkg_V4@45@01 0)))
; [eval] !(true && i_pkg_V4 == 1)
; [eval] true && i_pkg_V4 == 1
(push) ; 6
; [then-branch: 131 | False | live]
; [else-branch: 131 | True | live]
(push) ; 7
; [then-branch: 131 | False]
(assert false)
(pop) ; 7
(push) ; 7
; [else-branch: 131 | True]
; [eval] i_pkg_V4 == 1
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (and (not (= i_pkg_V4@45@01 0)) (not (= i_pkg_V4@45@01 1))))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 132 | i_pkg_V4@45@01 != 0 && i_pkg_V4@45@01 != 1 | dead]
; [else-branch: 132 | !(i_pkg_V4@45@01 != 0 && i_pkg_V4@45@01 != 1) | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 132 | !(i_pkg_V4@45@01 != 0 && i_pkg_V4@45@01 != 1)]
(assert (not (and (not (= i_pkg_V4@45@01 0)) (not (= i_pkg_V4@45@01 1)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (not (and (not (= i_pkg_V4@45@01 0)) (not (= i_pkg_V4@45@01 1)))))
(pop) ; 3
(push) ; 3
; [else-branch: 123 | i_pkg_V4@45@01 != 0]
(assert (not (= i_pkg_V4@45@01 0)))
(pop) ; 3
; [eval] !(true && N16 == 0 || false)
; [eval] true && N16 == 0 || false
; [eval] true && N16 == 0
(push) ; 3
; [then-branch: 133 | False | live]
; [else-branch: 133 | True | live]
(push) ; 4
; [then-branch: 133 | False]
(assert false)
(pop) ; 4
(push) ; 4
; [else-branch: 133 | True]
; [eval] N16 == 0
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(push) ; 3
; [then-branch: 134 | i_pkg_V4@45@01 == 0 | live]
; [else-branch: 134 | i_pkg_V4@45@01 != 0 | live]
(push) ; 4
; [then-branch: 134 | i_pkg_V4@45@01 == 0]
(assert (= i_pkg_V4@45@01 0))
(pop) ; 4
(push) ; 4
; [else-branch: 134 | i_pkg_V4@45@01 != 0]
(assert (not (= i_pkg_V4@45@01 0)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(push) ; 3
(set-option :timeout 10)
(assert (not (= i_pkg_V4@45@01 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= i_pkg_V4@45@01 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 135 | i_pkg_V4@45@01 != 0 | live]
; [else-branch: 135 | i_pkg_V4@45@01 == 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 135 | i_pkg_V4@45@01 != 0]
(assert (not (= i_pkg_V4@45@01 0)))
; [eval] true && N16 == 1 || false
; [eval] true && N16 == 1
(push) ; 4
; [then-branch: 136 | False | live]
; [else-branch: 136 | True | live]
(push) ; 5
; [then-branch: 136 | False]
(assert false)
(pop) ; 5
(push) ; 5
; [else-branch: 136 | True]
; [eval] N16 == 1
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
; [then-branch: 137 | i_pkg_V4@45@01 == 1 | live]
; [else-branch: 137 | i_pkg_V4@45@01 != 1 | live]
(push) ; 5
; [then-branch: 137 | i_pkg_V4@45@01 == 1]
(assert (= i_pkg_V4@45@01 1))
(pop) ; 5
(push) ; 5
; [else-branch: 137 | i_pkg_V4@45@01 != 1]
(assert (not (= i_pkg_V4@45@01 1)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (or (not (= i_pkg_V4@45@01 1)) (= i_pkg_V4@45@01 1)))
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= i_pkg_V4@45@01 1))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= i_pkg_V4@45@01 1)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 138 | i_pkg_V4@45@01 == 1 | live]
; [else-branch: 138 | i_pkg_V4@45@01 != 1 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 138 | i_pkg_V4@45@01 == 1]
(assert (= i_pkg_V4@45@01 1))
; [exec]
; ret_pkg_V4_CN15 := 2
; [exec]
; ret_pkg_V4 := ret_pkg_V4_CN15
; [exec]
; label returnLabel
; [eval] true && i_pkg_V4 == 0 ==> true && ret_pkg_V4 == 0
; [eval] true && i_pkg_V4 == 0
(push) ; 5
; [then-branch: 139 | False | live]
; [else-branch: 139 | True | live]
(push) ; 6
; [then-branch: 139 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 139 | True]
; [eval] i_pkg_V4 == 0
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(push) ; 5
; [then-branch: 140 | i_pkg_V4@45@01 == 0 | dead]
; [else-branch: 140 | i_pkg_V4@45@01 != 0 | live]
(push) ; 6
; [else-branch: 140 | i_pkg_V4@45@01 != 0]
(pop) ; 6
(pop) ; 5
; Joined path conditions
; [eval] true && i_pkg_V4 == 1 ==> true && ret_pkg_V4 == 2
; [eval] true && i_pkg_V4 == 1
(push) ; 5
; [then-branch: 141 | False | live]
; [else-branch: 141 | True | live]
(push) ; 6
; [then-branch: 141 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 141 | True]
; [eval] i_pkg_V4 == 1
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= i_pkg_V4@45@01 1))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 142 | i_pkg_V4@45@01 == 1 | live]
; [else-branch: 142 | i_pkg_V4@45@01 != 1 | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 142 | i_pkg_V4@45@01 == 1]
; [eval] true && ret_pkg_V4 == 2
(push) ; 7
; [then-branch: 143 | False | live]
; [else-branch: 143 | True | live]
(push) ; 8
; [then-branch: 143 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 143 | True]
; [eval] ret_pkg_V4 == 2
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(pop) ; 6
(pop) ; 5
; Joined path conditions
; [eval] !(true && i_pkg_V4 == 0) && !(true && i_pkg_V4 == 1) ==> true && ret_pkg_V4 == 1
; [eval] !(true && i_pkg_V4 == 0) && !(true && i_pkg_V4 == 1)
; [eval] !(true && i_pkg_V4 == 0)
; [eval] true && i_pkg_V4 == 0
(push) ; 5
; [then-branch: 144 | False | live]
; [else-branch: 144 | True | live]
(push) ; 6
; [then-branch: 144 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 144 | True]
; [eval] i_pkg_V4 == 0
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(push) ; 5
; [then-branch: 145 | i_pkg_V4@45@01 == 0 | live]
; [else-branch: 145 | i_pkg_V4@45@01 != 0 | live]
(push) ; 6
; [then-branch: 145 | i_pkg_V4@45@01 == 0]
(assert (= i_pkg_V4@45@01 0))
(pop) ; 6
(push) ; 6
; [else-branch: 145 | i_pkg_V4@45@01 != 0]
; [eval] !(true && i_pkg_V4 == 1)
; [eval] true && i_pkg_V4 == 1
(push) ; 7
; [then-branch: 146 | False | live]
; [else-branch: 146 | True | live]
(push) ; 8
; [then-branch: 146 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 146 | True]
; [eval] i_pkg_V4 == 1
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not (and (not (= i_pkg_V4@45@01 0)) (not (= i_pkg_V4@45@01 1))))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 147 | i_pkg_V4@45@01 != 0 && i_pkg_V4@45@01 != 1 | dead]
; [else-branch: 147 | !(i_pkg_V4@45@01 != 0 && i_pkg_V4@45@01 != 1) | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 147 | !(i_pkg_V4@45@01 != 0 && i_pkg_V4@45@01 != 1)]
(assert (not (and (not (= i_pkg_V4@45@01 0)) (not (= i_pkg_V4@45@01 1)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (not (and (not (= i_pkg_V4@45@01 0)) (not (= i_pkg_V4@45@01 1)))))
(pop) ; 4
(push) ; 4
; [else-branch: 138 | i_pkg_V4@45@01 != 1]
(assert (not (= i_pkg_V4@45@01 1)))
(pop) ; 4
; [eval] !(true && N16 == 1 || false)
; [eval] true && N16 == 1 || false
; [eval] true && N16 == 1
(push) ; 4
; [then-branch: 148 | False | live]
; [else-branch: 148 | True | live]
(push) ; 5
; [then-branch: 148 | False]
(assert false)
(pop) ; 5
(push) ; 5
; [else-branch: 148 | True]
; [eval] N16 == 1
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
; [then-branch: 149 | i_pkg_V4@45@01 == 1 | live]
; [else-branch: 149 | i_pkg_V4@45@01 != 1 | live]
(push) ; 5
; [then-branch: 149 | i_pkg_V4@45@01 == 1]
(assert (= i_pkg_V4@45@01 1))
(pop) ; 5
(push) ; 5
; [else-branch: 149 | i_pkg_V4@45@01 != 1]
(assert (not (= i_pkg_V4@45@01 1)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
(set-option :timeout 10)
(assert (not (= i_pkg_V4@45@01 1)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= i_pkg_V4@45@01 1))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 150 | i_pkg_V4@45@01 != 1 | live]
; [else-branch: 150 | i_pkg_V4@45@01 == 1 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 150 | i_pkg_V4@45@01 != 1]
(assert (not (= i_pkg_V4@45@01 1)))
; [exec]
; ret_pkg_V4_CN15 := 1
; [exec]
; ret_pkg_V4 := ret_pkg_V4_CN15
; [exec]
; label returnLabel
; [eval] true && i_pkg_V4 == 0 ==> true && ret_pkg_V4 == 0
; [eval] true && i_pkg_V4 == 0
(push) ; 5
; [then-branch: 151 | False | live]
; [else-branch: 151 | True | live]
(push) ; 6
; [then-branch: 151 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 151 | True]
; [eval] i_pkg_V4 == 0
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(push) ; 5
; [then-branch: 152 | i_pkg_V4@45@01 == 0 | dead]
; [else-branch: 152 | i_pkg_V4@45@01 != 0 | live]
(push) ; 6
; [else-branch: 152 | i_pkg_V4@45@01 != 0]
(pop) ; 6
(pop) ; 5
; Joined path conditions
; [eval] true && i_pkg_V4 == 1 ==> true && ret_pkg_V4 == 2
; [eval] true && i_pkg_V4 == 1
(push) ; 5
; [then-branch: 153 | False | live]
; [else-branch: 153 | True | live]
(push) ; 6
; [then-branch: 153 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 153 | True]
; [eval] i_pkg_V4 == 1
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(push) ; 5
; [then-branch: 154 | i_pkg_V4@45@01 == 1 | dead]
; [else-branch: 154 | i_pkg_V4@45@01 != 1 | live]
(push) ; 6
; [else-branch: 154 | i_pkg_V4@45@01 != 1]
(pop) ; 6
(pop) ; 5
; Joined path conditions
; [eval] !(true && i_pkg_V4 == 0) && !(true && i_pkg_V4 == 1) ==> true && ret_pkg_V4 == 1
; [eval] !(true && i_pkg_V4 == 0) && !(true && i_pkg_V4 == 1)
; [eval] !(true && i_pkg_V4 == 0)
; [eval] true && i_pkg_V4 == 0
(push) ; 5
; [then-branch: 155 | False | live]
; [else-branch: 155 | True | live]
(push) ; 6
; [then-branch: 155 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 155 | True]
; [eval] i_pkg_V4 == 0
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(push) ; 5
; [then-branch: 156 | i_pkg_V4@45@01 == 0 | live]
; [else-branch: 156 | i_pkg_V4@45@01 != 0 | live]
(push) ; 6
; [then-branch: 156 | i_pkg_V4@45@01 == 0]
(assert (= i_pkg_V4@45@01 0))
(pop) ; 6
(push) ; 6
; [else-branch: 156 | i_pkg_V4@45@01 != 0]
; [eval] !(true && i_pkg_V4 == 1)
; [eval] true && i_pkg_V4 == 1
(push) ; 7
; [then-branch: 157 | False | live]
; [else-branch: 157 | True | live]
(push) ; 8
; [then-branch: 157 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 157 | True]
; [eval] i_pkg_V4 == 1
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (not (and (not (= i_pkg_V4@45@01 0)) (not (= i_pkg_V4@45@01 1))))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (and (not (= i_pkg_V4@45@01 0)) (not (= i_pkg_V4@45@01 1)))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 158 | i_pkg_V4@45@01 != 0 && i_pkg_V4@45@01 != 1 | live]
; [else-branch: 158 | !(i_pkg_V4@45@01 != 0 && i_pkg_V4@45@01 != 1) | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 158 | i_pkg_V4@45@01 != 0 && i_pkg_V4@45@01 != 1]
(assert (and (not (= i_pkg_V4@45@01 0)) (not (= i_pkg_V4@45@01 1))))
; [eval] true && ret_pkg_V4 == 1
(push) ; 7
; [then-branch: 159 | False | live]
; [else-branch: 159 | True | live]
(push) ; 8
; [then-branch: 159 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 159 | True]
; [eval] ret_pkg_V4 == 1
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (and (not (= i_pkg_V4@45@01 0)) (not (= i_pkg_V4@45@01 1))))
(pop) ; 4
(push) ; 4
; [else-branch: 150 | i_pkg_V4@45@01 == 1]
(assert (= i_pkg_V4@45@01 1))
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 135 | i_pkg_V4@45@01 == 0]
(assert (= i_pkg_V4@45@01 0))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- testMultipleMatch_pkg_F ----------
(declare-const i_pkg_V5@52@01 Int)
(declare-const ret_pkg_V5@53@01 Int)
(declare-const i_pkg_V5@54@01 Int)
(declare-const ret_pkg_V5@55@01 Int)
(push) ; 1
(declare-const $t@56@01 $Snap)
(assert (= $t@56@01 $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@57@01 $Snap)
(assert (= $t@57@01 $Snap.unit))
; [eval] true && i_pkg_V5 == 0 ==> true && ret_pkg_V5 == 0
; [eval] true && i_pkg_V5 == 0
(push) ; 3
; [then-branch: 160 | False | live]
; [else-branch: 160 | True | live]
(push) ; 4
; [then-branch: 160 | False]
(assert false)
(pop) ; 4
(push) ; 4
; [else-branch: 160 | True]
; [eval] i_pkg_V5 == 0
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(push) ; 3
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= i_pkg_V5@54@01 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= i_pkg_V5@54@01 0)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 161 | i_pkg_V5@54@01 == 0 | live]
; [else-branch: 161 | i_pkg_V5@54@01 != 0 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 161 | i_pkg_V5@54@01 == 0]
(assert (= i_pkg_V5@54@01 0))
; [eval] true && ret_pkg_V5 == 0
(push) ; 5
; [then-branch: 162 | False | live]
; [else-branch: 162 | True | live]
(push) ; 6
; [then-branch: 162 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 162 | True]
; [eval] ret_pkg_V5 == 0
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(pop) ; 4
(push) ; 4
; [else-branch: 161 | i_pkg_V5@54@01 != 0]
(assert (not (= i_pkg_V5@54@01 0)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not (= i_pkg_V5@54@01 0)) (= i_pkg_V5@54@01 0)))
(assert (=> (= i_pkg_V5@54@01 0) (= ret_pkg_V5@55@01 0)))
(pop) ; 2
(push) ; 2
; [exec]
; var ret_pkg_V5_CN18: Int
(declare-const ret_pkg_V5_CN18@58@01 Int)
; [exec]
; var i_pkg_V5_CN17: Int
(declare-const i_pkg_V5_CN17@59@01 Int)
; [exec]
; var N19: Int
(declare-const N19@60@01 Int)
; [exec]
; ret_pkg_V5 := 0
; [exec]
; i_pkg_V5_CN17 := 0
; [exec]
; ret_pkg_V5_CN18 := 0
; [exec]
; i_pkg_V5_CN17 := i_pkg_V5
; [exec]
; N19 := 0
; [exec]
; N19 := i_pkg_V5_CN17
; [exec]
; N19 := i_pkg_V5_CN17
; [eval] true && N19 == 0 || false
; [eval] true && N19 == 0
(push) ; 3
; [then-branch: 163 | False | live]
; [else-branch: 163 | True | live]
(push) ; 4
; [then-branch: 163 | False]
(assert false)
(pop) ; 4
(push) ; 4
; [else-branch: 163 | True]
; [eval] N19 == 0
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(push) ; 3
; [then-branch: 164 | i_pkg_V5@54@01 == 0 | live]
; [else-branch: 164 | i_pkg_V5@54@01 != 0 | live]
(push) ; 4
; [then-branch: 164 | i_pkg_V5@54@01 == 0]
(assert (= i_pkg_V5@54@01 0))
(pop) ; 4
(push) ; 4
; [else-branch: 164 | i_pkg_V5@54@01 != 0]
(assert (not (= i_pkg_V5@54@01 0)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not (= i_pkg_V5@54@01 0)) (= i_pkg_V5@54@01 0)))
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= i_pkg_V5@54@01 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= i_pkg_V5@54@01 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 165 | i_pkg_V5@54@01 == 0 | live]
; [else-branch: 165 | i_pkg_V5@54@01 != 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 165 | i_pkg_V5@54@01 == 0]
(assert (= i_pkg_V5@54@01 0))
; [exec]
; ret_pkg_V5_CN18 := 0
; [exec]
; ret_pkg_V5 := ret_pkg_V5_CN18
; [exec]
; label returnLabel
; [eval] true && i_pkg_V5 == 0 ==> true && ret_pkg_V5 == 0
; [eval] true && i_pkg_V5 == 0
(push) ; 4
; [then-branch: 166 | False | live]
; [else-branch: 166 | True | live]
(push) ; 5
; [then-branch: 166 | False]
(assert false)
(pop) ; 5
(push) ; 5
; [else-branch: 166 | True]
; [eval] i_pkg_V5 == 0
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= i_pkg_V5@54@01 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 167 | i_pkg_V5@54@01 == 0 | live]
; [else-branch: 167 | i_pkg_V5@54@01 != 0 | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 167 | i_pkg_V5@54@01 == 0]
; [eval] true && ret_pkg_V5 == 0
(push) ; 6
; [then-branch: 168 | False | live]
; [else-branch: 168 | True | live]
(push) ; 7
; [then-branch: 168 | False]
(assert false)
(pop) ; 7
(push) ; 7
; [else-branch: 168 | True]
; [eval] ret_pkg_V5 == 0
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(pop) ; 5
(pop) ; 4
; Joined path conditions
(pop) ; 3
(push) ; 3
; [else-branch: 165 | i_pkg_V5@54@01 != 0]
(assert (not (= i_pkg_V5@54@01 0)))
(pop) ; 3
; [eval] !(true && N19 == 0 || false)
; [eval] true && N19 == 0 || false
; [eval] true && N19 == 0
(push) ; 3
; [then-branch: 169 | False | live]
; [else-branch: 169 | True | live]
(push) ; 4
; [then-branch: 169 | False]
(assert false)
(pop) ; 4
(push) ; 4
; [else-branch: 169 | True]
; [eval] N19 == 0
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(push) ; 3
; [then-branch: 170 | i_pkg_V5@54@01 == 0 | live]
; [else-branch: 170 | i_pkg_V5@54@01 != 0 | live]
(push) ; 4
; [then-branch: 170 | i_pkg_V5@54@01 == 0]
(assert (= i_pkg_V5@54@01 0))
(pop) ; 4
(push) ; 4
; [else-branch: 170 | i_pkg_V5@54@01 != 0]
(assert (not (= i_pkg_V5@54@01 0)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(push) ; 3
(set-option :timeout 10)
(assert (not (= i_pkg_V5@54@01 0)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= i_pkg_V5@54@01 0))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 171 | i_pkg_V5@54@01 != 0 | live]
; [else-branch: 171 | i_pkg_V5@54@01 == 0 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 171 | i_pkg_V5@54@01 != 0]
(assert (not (= i_pkg_V5@54@01 0)))
; [eval] true && N19 == 0 || false
; [eval] true && N19 == 0
(push) ; 4
; [then-branch: 172 | False | live]
; [else-branch: 172 | True | live]
(push) ; 5
; [then-branch: 172 | False]
(assert false)
(pop) ; 5
(push) ; 5
; [else-branch: 172 | True]
; [eval] N19 == 0
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
; [then-branch: 173 | i_pkg_V5@54@01 == 0 | live]
; [else-branch: 173 | i_pkg_V5@54@01 != 0 | live]
(push) ; 5
; [then-branch: 173 | i_pkg_V5@54@01 == 0]
(assert (= i_pkg_V5@54@01 0))
(pop) ; 5
(push) ; 5
; [else-branch: 173 | i_pkg_V5@54@01 != 0]
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
; [then-branch: 174 | i_pkg_V5@54@01 == 0 | dead]
; [else-branch: 174 | i_pkg_V5@54@01 != 0 | live]
(push) ; 4
; [else-branch: 174 | i_pkg_V5@54@01 != 0]
(pop) ; 4
; [eval] !(true && N19 == 0 || false)
; [eval] true && N19 == 0 || false
; [eval] true && N19 == 0
(push) ; 4
; [then-branch: 175 | False | live]
; [else-branch: 175 | True | live]
(push) ; 5
; [then-branch: 175 | False]
(assert false)
(pop) ; 5
(push) ; 5
; [else-branch: 175 | True]
; [eval] N19 == 0
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
; [then-branch: 176 | i_pkg_V5@54@01 == 0 | live]
; [else-branch: 176 | i_pkg_V5@54@01 != 0 | live]
(push) ; 5
; [then-branch: 176 | i_pkg_V5@54@01 == 0]
(assert (= i_pkg_V5@54@01 0))
(pop) ; 5
(push) ; 5
; [else-branch: 176 | i_pkg_V5@54@01 != 0]
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(push) ; 4
(set-option :timeout 10)
(assert (not (= i_pkg_V5@54@01 0)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 177 | i_pkg_V5@54@01 != 0 | live]
; [else-branch: 177 | i_pkg_V5@54@01 == 0 | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 177 | i_pkg_V5@54@01 != 0]
; [eval] true && N19 == 0 || false
; [eval] true && N19 == 0
(push) ; 5
; [then-branch: 178 | False | live]
; [else-branch: 178 | True | live]
(push) ; 6
; [then-branch: 178 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 178 | True]
; [eval] N19 == 0
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(push) ; 5
; [then-branch: 179 | i_pkg_V5@54@01 == 0 | live]
; [else-branch: 179 | i_pkg_V5@54@01 != 0 | live]
(push) ; 6
; [then-branch: 179 | i_pkg_V5@54@01 == 0]
(assert (= i_pkg_V5@54@01 0))
(pop) ; 6
(push) ; 6
; [else-branch: 179 | i_pkg_V5@54@01 != 0]
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
; [then-branch: 180 | i_pkg_V5@54@01 == 0 | dead]
; [else-branch: 180 | i_pkg_V5@54@01 != 0 | live]
(push) ; 5
; [else-branch: 180 | i_pkg_V5@54@01 != 0]
(pop) ; 5
; [eval] !(true && N19 == 0 || false)
; [eval] true && N19 == 0 || false
; [eval] true && N19 == 0
(push) ; 5
; [then-branch: 181 | False | live]
; [else-branch: 181 | True | live]
(push) ; 6
; [then-branch: 181 | False]
(assert false)
(pop) ; 6
(push) ; 6
; [else-branch: 181 | True]
; [eval] N19 == 0
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(push) ; 5
; [then-branch: 182 | i_pkg_V5@54@01 == 0 | live]
; [else-branch: 182 | i_pkg_V5@54@01 != 0 | live]
(push) ; 6
; [then-branch: 182 | i_pkg_V5@54@01 == 0]
(assert (= i_pkg_V5@54@01 0))
(pop) ; 6
(push) ; 6
; [else-branch: 182 | i_pkg_V5@54@01 != 0]
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(push) ; 5
(set-option :timeout 10)
(assert (not (= i_pkg_V5@54@01 0)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 183 | i_pkg_V5@54@01 != 0 | live]
; [else-branch: 183 | i_pkg_V5@54@01 == 0 | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 183 | i_pkg_V5@54@01 != 0]
; [eval] true && N19 == 0 || false
; [eval] true && N19 == 0
(push) ; 6
; [then-branch: 184 | False | live]
; [else-branch: 184 | True | live]
(push) ; 7
; [then-branch: 184 | False]
(assert false)
(pop) ; 7
(push) ; 7
; [else-branch: 184 | True]
; [eval] N19 == 0
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(push) ; 6
; [then-branch: 185 | i_pkg_V5@54@01 == 0 | live]
; [else-branch: 185 | i_pkg_V5@54@01 != 0 | live]
(push) ; 7
; [then-branch: 185 | i_pkg_V5@54@01 == 0]
(assert (= i_pkg_V5@54@01 0))
(pop) ; 7
(push) ; 7
; [else-branch: 185 | i_pkg_V5@54@01 != 0]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
; [then-branch: 186 | i_pkg_V5@54@01 == 0 | dead]
; [else-branch: 186 | i_pkg_V5@54@01 != 0 | live]
(push) ; 6
; [else-branch: 186 | i_pkg_V5@54@01 != 0]
(pop) ; 6
; [eval] !(true && N19 == 0 || false)
; [eval] true && N19 == 0 || false
; [eval] true && N19 == 0
(push) ; 6
; [then-branch: 187 | False | live]
; [else-branch: 187 | True | live]
(push) ; 7
; [then-branch: 187 | False]
(assert false)
(pop) ; 7
(push) ; 7
; [else-branch: 187 | True]
; [eval] N19 == 0
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(push) ; 6
; [then-branch: 188 | i_pkg_V5@54@01 == 0 | live]
; [else-branch: 188 | i_pkg_V5@54@01 != 0 | live]
(push) ; 7
; [then-branch: 188 | i_pkg_V5@54@01 == 0]
(assert (= i_pkg_V5@54@01 0))
(pop) ; 7
(push) ; 7
; [else-branch: 188 | i_pkg_V5@54@01 != 0]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(push) ; 6
(set-option :timeout 10)
(assert (not (= i_pkg_V5@54@01 0)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 189 | i_pkg_V5@54@01 != 0 | live]
; [else-branch: 189 | i_pkg_V5@54@01 == 0 | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 189 | i_pkg_V5@54@01 != 0]
; [exec]
; ret_pkg_V5_CN18 := 4
; [exec]
; ret_pkg_V5 := ret_pkg_V5_CN18
; [exec]
; label returnLabel
; [eval] true && i_pkg_V5 == 0 ==> true && ret_pkg_V5 == 0
; [eval] true && i_pkg_V5 == 0
(push) ; 7
; [then-branch: 190 | False | live]
; [else-branch: 190 | True | live]
(push) ; 8
; [then-branch: 190 | False]
(assert false)
(pop) ; 8
(push) ; 8
; [else-branch: 190 | True]
; [eval] i_pkg_V5 == 0
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(push) ; 7
; [then-branch: 191 | i_pkg_V5@54@01 == 0 | dead]
; [else-branch: 191 | i_pkg_V5@54@01 != 0 | live]
(push) ; 8
; [else-branch: 191 | i_pkg_V5@54@01 != 0]
(pop) ; 8
(pop) ; 7
; Joined path conditions
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 171 | i_pkg_V5@54@01 == 0]
(assert (= i_pkg_V5@54@01 0))
(pop) ; 3
(pop) ; 2
(pop) ; 1
