(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 19:37:20
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
(declare-fun valid1%trigger ($Snap $Ref) Bool)
(declare-fun valid%trigger ($Snap $Ref) Bool)
(declare-fun validRest%trigger ($Snap $Ref) Bool)
(declare-fun rightValid%trigger ($Snap $Ref) Bool)
(declare-fun leftValid%trigger ($Snap $Ref) Bool)
(declare-fun leftOpen%trigger ($Snap $Ref) Bool)
(declare-fun rightOpen%trigger ($Snap $Ref) Bool)
(declare-fun udParentValid%trigger ($Snap $Ref) Bool)
(declare-fun udValid%trigger ($Snap $Ref) Bool)
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
; ---------- init ----------
(declare-const this@0@01 $Ref)
(declare-const this@1@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@2@01 $Ref)
(assert (not (= this@1@01 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@3@01 $Snap)
(pop) ; 2
(push) ; 2
; [exec]
; this.root1 := null
; [exec]
; fold acc(valid1(this), write)
; [eval] this.root1 != null
; [then-branch: 0 | False | dead]
; [else-branch: 0 | True | live]
(push) ; 3
; [else-branch: 0 | True]
; [eval] this.root1 != null
; [then-branch: 1 | False | dead]
; [else-branch: 1 | True | live]
(push) ; 4
; [else-branch: 1 | True]
; [eval] this.root1 != null ==> this.root1.parent == null
; [eval] this.root1 != null
(push) ; 5
; [then-branch: 2 | False | dead]
; [else-branch: 2 | True | live]
(push) ; 6
; [else-branch: 2 | True]
(pop) ; 6
(pop) ; 5
; Joined path conditions
; [eval] this.root1 != null
; [then-branch: 3 | False | dead]
; [else-branch: 3 | True | live]
(push) ; 5
; [else-branch: 3 | True]
; [eval] this.root1 != null ==> this.root1.root == this.root1
; [eval] this.root1 != null
(push) ; 6
; [then-branch: 4 | False | dead]
; [else-branch: 4 | True | live]
(push) ; 7
; [else-branch: 4 | True]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (valid1%trigger ($Snap.combine
  ($SortWrappers.$RefTo$Snap $Ref.null)
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) this@1@01))
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- has ----------
(declare-const this@4@01 $Ref)
(declare-const k@5@01 Int)
(declare-const b@6@01 Bool)
(declare-const this@7@01 $Ref)
(declare-const k@8@01 Int)
(declare-const b@9@01 Bool)
(push) ; 1
(declare-const $t@10@01 $Snap)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@11@01 $Snap)
(pop) ; 2
(push) ; 2
; [exec]
; var n: Ref
(declare-const n@12@01 $Ref)
; [exec]
; var end: Bool
(declare-const end@13@01 Bool)
; [exec]
; var p: Ref
(declare-const p@14@01 $Ref)
; [exec]
; var q: Ref
(declare-const q@15@01 $Ref)
; [exec]
; var r: Ref
(declare-const r@16@01 $Ref)
; [exec]
; unfold acc(valid1(this), write)
(assert (= $t@10@01 ($Snap.combine ($Snap.first $t@10@01) ($Snap.second $t@10@01))))
(assert (not (= this@7@01 $Ref.null)))
(assert (=
  ($Snap.second $t@10@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@10@01))
    ($Snap.second ($Snap.second $t@10@01)))))
; [eval] this.root1 != null
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@10@01)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@10@01)) $Ref.null))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 5 | First:($t@10@01) != Null | live]
; [else-branch: 5 | First:($t@10@01) == Null | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 5 | First:($t@10@01) != Null]
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@10@01)) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second $t@10@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@10@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@10@01))))))
; [eval] this.root1 != null
(push) ; 4
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@10@01)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 6 | First:($t@10@01) != Null | live]
; [else-branch: 6 | First:($t@10@01) == Null | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 6 | First:($t@10@01) != Null]
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@10@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@10@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@10@01))))
  $Snap.unit))
; [eval] this.root1 != null ==> this.root1.parent == null
; [eval] this.root1 != null
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@10@01)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 7 | First:($t@10@01) != Null | live]
; [else-branch: 7 | First:($t@10@01) == Null | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 7 | First:($t@10@01) != Null]
; [eval] this.root1.parent == null
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@10@01)) $Ref.null))
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@10@01))))
    $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01))))))))
; [eval] this.root1 != null
(push) ; 5
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@10@01)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 8 | First:($t@10@01) != Null | live]
; [else-branch: 8 | First:($t@10@01) == Null | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 8 | First:($t@10@01) != Null]
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01)))))
  $Snap.unit))
; [eval] this.root1 != null ==> this.root1.root == this.root1
; [eval] this.root1 != null
(push) ; 6
(push) ; 7
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@10@01)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 9 | First:($t@10@01) != Null | live]
; [else-branch: 9 | First:($t@10@01) == Null | dead]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 9 | First:($t@10@01) != Null]
; [eval] this.root1.root == this.root1
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@10@01)) $Ref.null))
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01))))))
    ($SortWrappers.$SnapTo$Ref ($Snap.first $t@10@01)))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (valid1%trigger $t@10@01 this@7@01))
; [eval] this.root1 == null
; [then-branch: 10 | First:($t@10@01) == Null | dead]
; [else-branch: 10 | First:($t@10@01) != Null | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 10 | First:($t@10@01) != Null]
(pop) ; 6
; [eval] !(this.root1 == null)
; [eval] this.root1 == null
(push) ; 6
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@10@01)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 11 | First:($t@10@01) != Null | live]
; [else-branch: 11 | First:($t@10@01) == Null | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 11 | First:($t@10@01) != Null]
; [exec]
; n := this.root1
(declare-const n@17@01 $Ref)
(assert (= n@17@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@10@01))))
; [exec]
; b := false
; [exec]
; end := false
; [exec]
; fold acc(udParentValid(n), write)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@10@01)) n@17@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@10@01)) n@17@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] this.parent != null
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@10@01)) n@17@01)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@10@01))))
  $Ref.null)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 12 | First:(Second:(Second:($t@10@01))) != Null | dead]
; [else-branch: 12 | First:(Second:(Second:($t@10@01))) == Null | live]
(set-option :timeout 0)
(push) ; 7
; [else-branch: 12 | First:(Second:(Second:($t@10@01))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@10@01))))
  $Ref.null))
; [eval] this.parent != null
(push) ; 8
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@10@01)) n@17@01)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 13 | First:(Second:(Second:($t@10@01))) != Null | dead]
; [else-branch: 13 | First:(Second:(Second:($t@10@01))) == Null | live]
(set-option :timeout 0)
(push) ; 8
; [else-branch: 13 | First:(Second:(Second:($t@10@01))) == Null]
; [eval] this.parent != null
(push) ; 9
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@10@01)) n@17@01)))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [then-branch: 14 | First:(Second:(Second:($t@10@01))) != Null | dead]
; [else-branch: 14 | First:(Second:(Second:($t@10@01))) == Null | live]
(set-option :timeout 0)
(push) ; 9
; [else-branch: 14 | First:(Second:(Second:($t@10@01))) == Null]
; [eval] this.parent != null ==> this.parent.leftDown == (this.parent.left == this)
; [eval] this.parent != null
(push) ; 10
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@10@01)) n@17@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 10
; [then-branch: 15 | First:(Second:(Second:($t@10@01))) != Null | dead]
; [else-branch: 15 | First:(Second:(Second:($t@10@01))) == Null | live]
(push) ; 11
; [else-branch: 15 | First:(Second:(Second:($t@10@01))) == Null]
(pop) ; 11
(pop) ; 10
; Joined path conditions
; [eval] this.parent != null
(push) ; 10
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@10@01)) n@17@01)))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
; [then-branch: 16 | First:(Second:(Second:($t@10@01))) != Null | dead]
; [else-branch: 16 | First:(Second:(Second:($t@10@01))) == Null | live]
(set-option :timeout 0)
(push) ; 10
; [else-branch: 16 | First:(Second:(Second:($t@10@01))) == Null]
; [eval] this.parent != null ==> !this.parent.leftDown == (this.parent.right == this)
; [eval] this.parent != null
(push) ; 11
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@10@01)) n@17@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 11
; [then-branch: 17 | First:(Second:(Second:($t@10@01))) != Null | dead]
; [else-branch: 17 | First:(Second:(Second:($t@10@01))) == Null | live]
(push) ; 12
; [else-branch: 17 | First:(Second:(Second:($t@10@01))) == Null]
(pop) ; 12
(pop) ; 11
; Joined path conditions
; [eval] this.parent != null
(push) ; 11
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@10@01)) n@17@01)))
(check-sat)
; unsat
(pop) ; 11
; 0.00s
; (get-info :all-statistics)
; [then-branch: 18 | First:(Second:(Second:($t@10@01))) != Null | dead]
; [else-branch: 18 | First:(Second:(Second:($t@10@01))) == Null | live]
(set-option :timeout 0)
(push) ; 11
; [else-branch: 18 | First:(Second:(Second:($t@10@01))) == Null]
; [eval] this.parent != null ==> this.root == this.parent.root
; [eval] this.parent != null
(push) ; 12
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@10@01)) n@17@01)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
; [then-branch: 19 | First:(Second:(Second:($t@10@01))) != Null | dead]
; [else-branch: 19 | First:(Second:(Second:($t@10@01))) == Null | live]
(push) ; 13
; [else-branch: 19 | First:(Second:(Second:($t@10@01))) == Null]
(pop) ; 13
(pop) ; 12
; Joined path conditions
; [eval] this.parent == null ==> this.root == this
; [eval] this.parent == null
(push) ; 12
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@10@01)) n@17@01)))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 12
(push) ; 13
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@10@01))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [then-branch: 20 | First:(Second:(Second:($t@10@01))) == Null | live]
; [else-branch: 20 | First:(Second:(Second:($t@10@01))) != Null | dead]
(set-option :timeout 0)
(push) ; 13
; [then-branch: 20 | First:(Second:(Second:($t@10@01))) == Null]
; [eval] this.root == this
(push) ; 14
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@10@01)) n@17@01)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(pop) ; 13
(pop) ; 12
; Joined path conditions
(set-option :timeout 0)
(push) ; 12
(assert (not (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@10@01))))
    $Ref.null)
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01))))))
    n@17@01))))
(check-sat)
; unsat
(pop) ; 12
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@10@01))))
    $Ref.null)
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01))))))
    n@17@01)))
(assert (udParentValid%trigger ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second $t@10@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01)))))
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit)))))))))) n@17@01))
(declare-const b@18@01 Bool)
(declare-const end@19@01 Bool)
(declare-const p@20@01 $Ref)
(declare-const n@21@01 $Ref)
(declare-const q@22@01 $Ref)
(push) ; 12
; Loop head block: Check well-definedness of invariant
(declare-const $t@23@01 $Snap)
(assert (= $t@23@01 ($Snap.combine ($Snap.first $t@23@01) ($Snap.second $t@23@01))))
(assert (=
  ($Snap.second $t@23@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@23@01))
    ($Snap.second ($Snap.second $t@23@01)))))
(assert (= ($Snap.first ($Snap.second $t@23@01)) $Snap.unit))
; [eval] this.root1 != null
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second $t@23@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@23@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@23@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))
  $Snap.unit))
; [eval] n != null
(assert (not (= n@21@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))
  $Snap.unit))
; [eval] (unfolding acc(valid(n), write) in n.root == this.root1)
(push) ; 13
(assert (valid%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) n@21@01))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
; [eval] n.root == this.root1
(pop) ; 13
; Joined path conditions
(assert (and
  (valid%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) n@21@01)
  (=
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))
    ($Snap.combine
      ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))
  (=
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))
  $Snap.unit))
; [eval] this.root1 != null
(pop) ; 12
(push) ; 12
; Loop head block: Establish invariant
; [eval] this.root1 != null
; [eval] n != null
(push) ; 13
(assert (not (not (= n@17@01 $Ref.null))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (not (= n@17@01 $Ref.null)))
(push) ; 13
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@10@01)) n@17@01)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 13
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@10@01)) n@17@01)))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(valid(n), write) in n.root == this.root1)
(set-option :timeout 0)
(push) ; 13
(push) ; 14
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@10@01)) n@17@01)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(assert (valid%trigger ($Snap.first ($Snap.second $t@10@01)) n@17@01))
(assert (=
  ($Snap.first ($Snap.second $t@10@01))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second $t@10@01)))
    ($Snap.second ($Snap.first ($Snap.second $t@10@01))))))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second $t@10@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@10@01))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second $t@10@01)))))))
; [eval] n.root == this.root1
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@10@01)) n@17@01)))
(check-sat)
; unsat
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(pop) ; 13
; Joined path conditions
(assert (and
  (valid%trigger ($Snap.first ($Snap.second $t@10@01)) n@17@01)
  (=
    ($Snap.first ($Snap.second $t@10@01))
    ($Snap.combine
      ($Snap.first ($Snap.first ($Snap.second $t@10@01)))
      ($Snap.second ($Snap.first ($Snap.second $t@10@01)))))
  (=
    ($Snap.second ($Snap.first ($Snap.second $t@10@01)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first ($Snap.second $t@10@01))))
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second $t@10@01))))))))
(set-option :timeout 0)
(push) ; 13
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@10@01)))))
(check-sat)
; unsat
(pop) ; 13
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@10@01))))
; [eval] this.root1 != null
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 13
(assert (= $t@23@01 ($Snap.combine ($Snap.first $t@23@01) ($Snap.second $t@23@01))))
(assert (=
  ($Snap.second $t@23@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@23@01))
    ($Snap.second ($Snap.second $t@23@01)))))
(assert (= ($Snap.first ($Snap.second $t@23@01)) $Snap.unit))
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second $t@23@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@23@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@23@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@23@01))))
  $Snap.unit))
(assert (not (= n@21@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))
  $Snap.unit))
(assert (valid%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))) n@21@01))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))
  $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 10)
(check-sat)
; unknown
; Loop head block: Check well-definedness of edge conditions
(set-option :timeout 0)
(push) ; 14
; [eval] !end
(pop) ; 14
(push) ; 14
; [eval] !!end
; [eval] !end
(pop) ; 14
; Loop head block: Follow loop-internal edges
; [eval] !end
(push) ; 14
(set-option :timeout 10)
(assert (not end@19@01))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not (not end@19@01)))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 21 | !(end@19@01) | live]
; [else-branch: 21 | end@19@01 | live]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 21 | !(end@19@01)]
(assert (not end@19@01))
; [exec]
; unfold acc(valid(n), write)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
; [exec]
; unfold acc(validRest(n), write)
(assert (=
  ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))
    ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
(assert (=
  ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  $Snap.unit))
; [eval] this.right != this.left || this.right == null
; [eval] this.right != this.left
(set-option :timeout 0)
(push) ; 15
; [then-branch: 22 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) != First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))) | live]
; [else-branch: 22 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) == First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))) | live]
(push) ; 16
; [then-branch: 22 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) != First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))
(pop) ; 16
(push) ; 16
; [else-branch: 22 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) == First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
; [eval] this.right == null
(pop) ; 16
(pop) ; 15
; Joined path conditions
; Joined path conditions
(assert (or
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))))
(assert (or
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
    $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (validRest%trigger ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))) n@21@01))
; [eval] n.key == k
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))
    k@8@01))))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))
  k@8@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 23 | First:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))) == k@8@01 | live]
; [else-branch: 23 | First:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))) != k@8@01 | live]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 23 | First:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))) == k@8@01]
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))
  k@8@01))
; [exec]
; b := true
; [exec]
; fold acc(validRest(n), write)
(push) ; 16
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [eval] this.right != this.left || this.right == null
; [eval] this.right != this.left
(set-option :timeout 0)
(push) ; 16
; [then-branch: 24 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) != First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))) | live]
; [else-branch: 24 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) == First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))) | live]
(push) ; 17
; [then-branch: 24 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) != First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))
(pop) ; 17
(push) ; 17
; [else-branch: 24 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) == First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
; [eval] this.right == null
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Joined path conditions
(assert (validRest%trigger ($Snap.combine
  ($Snap.first ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
          $Snap.unit))))) n@21@01))
; [exec]
; fold acc(valid(n), write)
(assert (valid%trigger ($Snap.combine
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
            $Snap.unit)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))) n@21@01))
; [exec]
; end := true
; Loop head block: Re-establish invariant
; [eval] this.root1 != null
; [eval] n != null
; [eval] (unfolding acc(valid(n), write) in n.root == this.root1)
(push) ; 16
; [eval] n.root == this.root1
(pop) ; 16
; Joined path conditions
; [eval] this.root1 != null
(pop) ; 15
(push) ; 15
; [else-branch: 23 | First:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))) != k@8@01]
(assert (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))
    k@8@01)))
(pop) ; 15
; [eval] !(n.key == k)
; [eval] n.key == k
(push) ; 15
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))
  k@8@01)))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 15
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))
    k@8@01))))
(check-sat)
; unknown
(pop) ; 15
; 0.00s
; (get-info :all-statistics)
; [then-branch: 25 | First:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))) != k@8@01 | live]
; [else-branch: 25 | First:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))) == k@8@01 | live]
(set-option :timeout 0)
(push) ; 15
; [then-branch: 25 | First:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))) != k@8@01]
(assert (not
  (=
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))
    k@8@01)))
; [eval] n.key < k
(push) ; 16
(set-option :timeout 10)
(assert (not (not
  (<
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))
    k@8@01))))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (<
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))
  k@8@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 26 | First:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))) < k@8@01 | live]
; [else-branch: 26 | !(First:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))) < k@8@01) | live]
(set-option :timeout 0)
(push) ; 16
; [then-branch: 26 | First:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))) < k@8@01]
(assert (<
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))
  k@8@01))
; [eval] n.left == null
(push) ; 17
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 27 | First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))) == Null | live]
; [else-branch: 27 | First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))) != Null | live]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 27 | First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  $Ref.null))
; [exec]
; end := true
; [exec]
; fold acc(validRest(n), write)
(push) ; 18
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [eval] this.right != this.left || this.right == null
; [eval] this.right != this.left
(set-option :timeout 0)
(push) ; 18
; [then-branch: 28 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) != First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))) | live]
; [else-branch: 28 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) == First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))) | live]
(push) ; 19
; [then-branch: 28 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) != First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))
(pop) ; 19
(push) ; 19
; [else-branch: 28 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) == First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
; [eval] this.right == null
(pop) ; 19
(pop) ; 18
; Joined path conditions
; Joined path conditions
(assert (validRest%trigger ($Snap.combine
  ($Snap.first ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
          $Snap.unit))))) n@21@01))
; [exec]
; fold acc(valid(n), write)
(assert (valid%trigger ($Snap.combine
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
            $Snap.unit)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))) n@21@01))
; Loop head block: Re-establish invariant
; [eval] this.root1 != null
; [eval] n != null
; [eval] (unfolding acc(valid(n), write) in n.root == this.root1)
(push) ; 18
; [eval] n.root == this.root1
(pop) ; 18
; Joined path conditions
; [eval] this.root1 != null
(pop) ; 17
(push) ; 17
; [else-branch: 27 | First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
    $Ref.null)))
(pop) ; 17
; [eval] !(n.left == null)
; [eval] n.left == null
(push) ; 17
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 29 | First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))) != Null | live]
; [else-branch: 29 | First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))) == Null | live]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 29 | First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
    $Ref.null)))
; [exec]
; p := n
; [exec]
; unfold acc(leftValid(p), write)
(assert (=
  ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))
; [eval] this.left != null
(push) ; 18
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [then-branch: 30 | First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))) != Null | live]
; [else-branch: 30 | First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 18
; [then-branch: 30 | First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))) != Null]
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))))
; [eval] this.left != null
(push) ; 19
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
; [then-branch: 31 | First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))) != Null | live]
; [else-branch: 31 | First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 19
; [then-branch: 31 | First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))) != Null]
(push) ; 20
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
  $Snap.unit))
; [eval] this.left != null ==> this.left.parent == this
; [eval] this.left != null
(set-option :timeout 0)
(push) ; 20
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
; [then-branch: 32 | First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))) != Null | live]
; [else-branch: 32 | First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 21
; [then-branch: 32 | First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))) != Null]
; [eval] this.left.parent == this
(pop) ; 21
(pop) ; 20
; Joined path conditions
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
      $Ref.null))
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
    n@21@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))))))
; [eval] this.left != null
(push) ; 20
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [then-branch: 33 | First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))) != Null | live]
; [else-branch: 33 | First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 20
; [then-branch: 33 | First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))) != Null]
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  n@21@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))
  $Snap.unit))
; [eval] this.left != null ==> this.left.root == this.root
; [eval] this.left != null
(set-option :timeout 0)
(push) ; 21
(push) ; 22
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
; [then-branch: 34 | First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))) != Null | live]
; [else-branch: 34 | First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 22
; [then-branch: 34 | First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))) != Null]
; [eval] this.left.root == this.root
(pop) ; 22
(pop) ; 21
; Joined path conditions
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
      $Ref.null))
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))))
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (leftValid%trigger ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))) n@21@01))
; [exec]
; n := p.left
(declare-const n@24@01 $Ref)
(assert (=
  n@24@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
; [exec]
; p.leftDown := true
; [exec]
; fold acc(leftOpen(p), write)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
; [eval] this.left != null
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
; [then-branch: 35 | First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))) != Null | live]
; [else-branch: 35 | First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 21
; [then-branch: 35 | First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))) != Null]
(push) ; 22
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
; [eval] this.left != null ==> this.left.parent == this
; [eval] this.left != null
(set-option :timeout 0)
(push) ; 22
(push) ; 23
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 23
; 0.00s
; (get-info :all-statistics)
; [then-branch: 36 | First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))) != Null | live]
; [else-branch: 36 | First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 23
; [then-branch: 36 | First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))) != Null]
; [eval] this.left.parent == this
(pop) ; 23
(pop) ; 22
; Joined path conditions
(assert (leftOpen%trigger ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
      $Snap.unit))) n@21@01))
; [exec]
; fold acc(udValid(p), write)
(push) ; 22
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 22
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 22
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 22
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 22
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
; [then-branch: 37 | True | live]
; [else-branch: 37 | False | dead]
(set-option :timeout 0)
(push) ; 22
; [then-branch: 37 | True]
(push) ; 23
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 23
; 0.00s
; (get-info :all-statistics)
; [then-branch: 38 | True | live]
; [else-branch: 38 | False | dead]
(set-option :timeout 0)
(push) ; 23
; [then-branch: 38 | True]
; [eval] this.leftDown ==> false
(push) ; 24
(push) ; 25
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 25
; 0.00s
; (get-info :all-statistics)
; [then-branch: 39 | True | live]
; [else-branch: 39 | False | dead]
(set-option :timeout 0)
(push) ; 25
; [then-branch: 39 | True]
(pop) ; 25
(pop) ; 24
; Joined path conditions
; [then-branch: 40 | False | dead]
; [else-branch: 40 | True | live]
(push) ; 24
; [else-branch: 40 | True]
; [eval] this.leftDown ==> false
(push) ; 25
(push) ; 26
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
; [then-branch: 41 | True | live]
; [else-branch: 41 | False | dead]
(set-option :timeout 0)
(push) ; 26
; [then-branch: 41 | True]
(pop) ; 26
(pop) ; 25
; Joined path conditions
; [then-branch: 42 | False | dead]
; [else-branch: 42 | True | live]
(push) ; 25
; [else-branch: 42 | True]
(assert (udValid%trigger ($Snap.combine
  ($Snap.first ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))
  ($Snap.combine
    ($SortWrappers.BoolTo$Snap true)
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))
          ($Snap.combine
            ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))
            ($Snap.combine
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
                    $Snap.unit)))
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  $Snap.unit
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))))) n@21@01))
; [exec]
; fold acc(udParentValid(n), write)
(push) ; 26
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@24@01)))
(check-sat)
; unknown
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 26
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  n@24@01)))
(check-sat)
; unsat
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 26
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  n@24@01)))
(check-sat)
; unsat
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 26
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
; [eval] this.parent != null
(set-option :timeout 0)
(push) ; 26
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@24@01)))
(check-sat)
; unknown
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 26
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  n@24@01)))
(check-sat)
; unsat
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 26
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 26
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
    $Ref.null))))
(check-sat)
; unsat
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
; [then-branch: 43 | First:(Second:(Second:(Second:(First:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) != Null | live]
; [else-branch: 43 | First:(Second:(Second:(Second:(First:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 26
; [then-branch: 43 | First:(Second:(Second:(Second:(First:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
    $Ref.null)))
(push) ; 27
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@24@01)))
(check-sat)
; unknown
(pop) ; 27
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 27
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  n@24@01)))
(check-sat)
; unsat
(pop) ; 27
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 27
(set-option :timeout 10)
(assert (not (=
  n@21@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 27
; 0.00s
; (get-info :all-statistics)
; [eval] this.parent != null
(set-option :timeout 0)
(push) ; 27
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@24@01)))
(check-sat)
; unknown
(pop) ; 27
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 27
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  n@24@01)))
(check-sat)
; unsat
(pop) ; 27
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 27
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 27
; 0.00s
; (get-info :all-statistics)
; [then-branch: 44 | First:(Second:(Second:(Second:(First:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) != Null | live]
; [else-branch: 44 | First:(Second:(Second:(Second:(First:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 27
; [then-branch: 44 | First:(Second:(Second:(Second:(First:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) != Null]
(push) ; 28
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@24@01)))
(check-sat)
; unknown
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 28
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  n@24@01)))
(check-sat)
; unsat
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 28
(set-option :timeout 10)
(assert (not (=
  n@21@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
; [eval] this.parent != null
(set-option :timeout 0)
(push) ; 28
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@24@01)))
(check-sat)
; unknown
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 28
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  n@24@01)))
(check-sat)
; unsat
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 28
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
; [then-branch: 45 | First:(Second:(Second:(Second:(First:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) != Null | live]
; [else-branch: 45 | First:(Second:(Second:(Second:(First:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 28
; [then-branch: 45 | First:(Second:(Second:(Second:(First:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) != Null]
(push) ; 29
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@24@01)))
(check-sat)
; unknown
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 29
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  n@24@01)))
(check-sat)
; unsat
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 29
(set-option :timeout 10)
(assert (not (=
  n@21@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
; [eval] this.parent != null ==> this.parent.leftDown == (this.parent.left == this)
; [eval] this.parent != null
(set-option :timeout 0)
(push) ; 29
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@24@01)))
(check-sat)
; unknown
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 29
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  n@24@01)))
(check-sat)
; unsat
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 29
(push) ; 30
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
; [then-branch: 46 | First:(Second:(Second:(Second:(First:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) != Null | live]
; [else-branch: 46 | First:(Second:(Second:(Second:(First:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 30
; [then-branch: 46 | First:(Second:(Second:(Second:(First:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) != Null]
; [eval] this.parent.leftDown == (this.parent.left == this)
(push) ; 31
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@24@01)))
(check-sat)
; unknown
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 31
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  n@24@01)))
(check-sat)
; unsat
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 31
(set-option :timeout 10)
(assert (not (=
  n@21@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
; [eval] this.parent.left == this
(set-option :timeout 0)
(push) ; 31
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@24@01)))
(check-sat)
; unknown
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 31
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  n@24@01)))
(check-sat)
; unsat
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 31
(set-option :timeout 10)
(assert (not (=
  n@21@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
(pop) ; 30
(pop) ; 29
; Joined path conditions
(set-option :timeout 0)
(push) ; 29
(assert (not (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
      $Ref.null))
  (=
    true
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
      n@24@01)))))
(check-sat)
; unsat
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
      $Ref.null))
  (=
    true
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
      n@24@01))))
; [eval] this.parent != null
(push) ; 29
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@24@01)))
(check-sat)
; unknown
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 29
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  n@24@01)))
(check-sat)
; unsat
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 29
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
; [then-branch: 47 | First:(Second:(Second:(Second:(First:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) != Null | live]
; [else-branch: 47 | First:(Second:(Second:(Second:(First:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 29
; [then-branch: 47 | First:(Second:(Second:(Second:(First:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) != Null]
(push) ; 30
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@24@01)))
(check-sat)
; unknown
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 30
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  n@24@01)))
(check-sat)
; unsat
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 30
(set-option :timeout 10)
(assert (not (=
  n@21@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
; [eval] this.parent != null ==> !this.parent.leftDown == (this.parent.right == this)
; [eval] this.parent != null
(set-option :timeout 0)
(push) ; 30
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@24@01)))
(check-sat)
; unknown
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 30
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  n@24@01)))
(check-sat)
; unsat
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 30
(push) ; 31
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
; [then-branch: 48 | First:(Second:(Second:(Second:(First:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) != Null | live]
; [else-branch: 48 | First:(Second:(Second:(Second:(First:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 31
; [then-branch: 48 | First:(Second:(Second:(Second:(First:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) != Null]
; [eval] !this.parent.leftDown == (this.parent.right == this)
; [eval] !this.parent.leftDown
(push) ; 32
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@24@01)))
(check-sat)
; unknown
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 32
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  n@24@01)))
(check-sat)
; unsat
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 32
(set-option :timeout 10)
(assert (not (=
  n@21@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
; [eval] this.parent.right == this
(set-option :timeout 0)
(push) ; 32
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@24@01)))
(check-sat)
; unknown
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 32
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  n@24@01)))
(check-sat)
; unsat
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 32
(set-option :timeout 10)
(assert (not (=
  n@21@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
(pop) ; 31
(pop) ; 30
; Joined path conditions
(set-option :timeout 0)
(push) ; 30
(assert (not (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
      $Ref.null))
  (=
    false
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
      n@24@01)))))
(check-sat)
; unsat
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
      $Ref.null))
  (=
    false
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
      n@24@01))))
; [eval] this.parent != null
(push) ; 30
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@24@01)))
(check-sat)
; unknown
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 30
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  n@24@01)))
(check-sat)
; unsat
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 30
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
; [then-branch: 49 | First:(Second:(Second:(Second:(First:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) != Null | live]
; [else-branch: 49 | First:(Second:(Second:(Second:(First:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 30
; [then-branch: 49 | First:(Second:(Second:(Second:(First:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) != Null]
(push) ; 31
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@24@01)))
(check-sat)
; unknown
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 31
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  n@24@01)))
(check-sat)
; unsat
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 31
(set-option :timeout 10)
(assert (not (=
  n@21@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
; [eval] this.parent != null ==> this.root == this.parent.root
; [eval] this.parent != null
(set-option :timeout 0)
(push) ; 31
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@24@01)))
(check-sat)
; unknown
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 31
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  n@24@01)))
(check-sat)
; unsat
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 31
(push) ; 32
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
; [then-branch: 50 | First:(Second:(Second:(Second:(First:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) != Null | live]
; [else-branch: 50 | First:(Second:(Second:(Second:(First:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 32
; [then-branch: 50 | First:(Second:(Second:(Second:(First:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) != Null]
; [eval] this.root == this.parent.root
(push) ; 33
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  n@24@01)))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 33
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@24@01)))
(check-sat)
; unknown
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 33
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  n@24@01)))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 33
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))))
(check-sat)
; unknown
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 33
(set-option :timeout 10)
(assert (not (=
  n@21@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(pop) ; 32
(pop) ; 31
; Joined path conditions
(set-option :timeout 0)
(push) ; 31
(assert (not (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
      $Ref.null))
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))))
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
(check-sat)
; unsat
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
      $Ref.null))
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))))
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
; [eval] this.parent == null ==> this.root == this
; [eval] this.parent == null
(push) ; 31
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@24@01)))
(check-sat)
; unknown
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 31
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  n@24@01)))
(check-sat)
; unsat
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 31
; [then-branch: 51 | First:(Second:(Second:(Second:(First:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) == Null | dead]
; [else-branch: 51 | First:(Second:(Second:(Second:(First:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) != Null | live]
(push) ; 32
; [else-branch: 51 | First:(Second:(Second:(Second:(First:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) != Null]
(pop) ; 32
(pop) ; 31
; Joined path conditions
(assert (udParentValid%trigger ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))
    ($Snap.combine
      ($Snap.combine
        ($Snap.first ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))
        ($Snap.combine
          ($SortWrappers.BoolTo$Snap true)
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))
                ($Snap.combine
                  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))
                  ($Snap.combine
                    ($Snap.combine
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))
                      ($Snap.combine
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))
                        ($Snap.combine
                          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
                          $Snap.unit)))
                    ($Snap.combine
                      $Snap.unit
                      ($Snap.combine
                        $Snap.unit
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))))))
      ($Snap.combine
        ($SortWrappers.BoolTo$Snap true)
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))
                  ($Snap.combine $Snap.unit $Snap.unit)))))))))) n@24@01))
; Loop head block: Re-establish invariant
; [eval] this.root1 != null
; [eval] n != null
(push) ; 31
(assert (not (not (= n@24@01 $Ref.null))))
(check-sat)
; unsat
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
(assert (not (= n@24@01 $Ref.null)))
(push) ; 31
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  n@24@01)))
(check-sat)
; unsat
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 31
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  n@24@01)))
(check-sat)
; unsat
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(valid(n), write) in n.root == this.root1)
(set-option :timeout 0)
(push) ; 31
(push) ; 32
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  n@24@01)))
(check-sat)
; unsat
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
(assert (valid%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))) n@24@01))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))))
; [eval] n.root == this.root1
(set-option :timeout 0)
(push) ; 32
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  n@24@01)))
(check-sat)
; unsat
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
(pop) ; 31
; Joined path conditions
(assert (and
  (valid%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))) n@24@01)
  (=
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
    ($Snap.combine
      ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))
  (=
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))))))
(set-option :timeout 0)
(push) ; 31
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)))))
(check-sat)
; unsat
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01))))
; [eval] this.root1 != null
(pop) ; 30
(pop) ; 29
(pop) ; 28
(pop) ; 27
(pop) ; 26
(pop) ; 25
(pop) ; 24
(pop) ; 23
(pop) ; 22
(pop) ; 21
(pop) ; 20
(pop) ; 19
(pop) ; 18
(pop) ; 17
(push) ; 17
; [else-branch: 29 | First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  $Ref.null))
(pop) ; 17
(pop) ; 16
(push) ; 16
; [else-branch: 26 | !(First:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))) < k@8@01)]
(assert (not
  (<
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))
    k@8@01)))
(pop) ; 16
; [eval] !(n.key < k)
; [eval] n.key < k
(push) ; 16
(set-option :timeout 10)
(assert (not (<
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))
  k@8@01)))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 16
(set-option :timeout 10)
(assert (not (not
  (<
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))
    k@8@01))))
(check-sat)
; unknown
(pop) ; 16
; 0.00s
; (get-info :all-statistics)
; [then-branch: 52 | !(First:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))) < k@8@01) | live]
; [else-branch: 52 | First:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))) < k@8@01 | live]
(set-option :timeout 0)
(push) ; 16
; [then-branch: 52 | !(First:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))) < k@8@01)]
(assert (not
  (<
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))
    k@8@01)))
; [eval] n.right == null
(push) ; 17
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 53 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) == Null | live]
; [else-branch: 53 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) != Null | live]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 53 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  $Ref.null))
; [exec]
; end := true
; [exec]
; fold acc(validRest(n), write)
(push) ; 18
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [eval] this.right != this.left || this.right == null
; [eval] this.right != this.left
(set-option :timeout 0)
(push) ; 18
; [then-branch: 54 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) != First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))) | live]
; [else-branch: 54 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) == First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))) | live]
(push) ; 19
; [then-branch: 54 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) != First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))
(pop) ; 19
(push) ; 19
; [else-branch: 54 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) == First:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
; [eval] this.right == null
(pop) ; 19
(pop) ; 18
; Joined path conditions
; Joined path conditions
(assert (validRest%trigger ($Snap.combine
  ($Snap.first ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
          $Snap.unit))))) n@21@01))
; [exec]
; fold acc(valid(n), write)
(assert (valid%trigger ($Snap.combine
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
            $Snap.unit)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))) n@21@01))
; Loop head block: Re-establish invariant
; [eval] this.root1 != null
; [eval] n != null
; [eval] (unfolding acc(valid(n), write) in n.root == this.root1)
(push) ; 18
; [eval] n.root == this.root1
(pop) ; 18
; Joined path conditions
; [eval] this.root1 != null
(pop) ; 17
(push) ; 17
; [else-branch: 53 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
    $Ref.null)))
(pop) ; 17
; [eval] !(n.right == null)
; [eval] n.right == null
(push) ; 17
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 55 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) != Null | live]
; [else-branch: 55 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) == Null | live]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 55 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
    $Ref.null)))
; [exec]
; q := n
; [exec]
; unfold acc(rightValid(q), write)
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))
; [eval] this.right != null
(push) ; 18
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [then-branch: 56 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) != Null | live]
; [else-branch: 56 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 18
; [then-branch: 56 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) != Null]
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))))
; [eval] this.right != null
(push) ; 19
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
; [then-branch: 57 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) != Null | live]
; [else-branch: 57 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 19
; [then-branch: 57 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) != Null]
(push) ; 20
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
  $Snap.unit))
; [eval] this.right != null ==> this.right.parent == this
; [eval] this.right != null
(set-option :timeout 0)
(push) ; 20
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
; [then-branch: 58 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) != Null | live]
; [else-branch: 58 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 21
; [then-branch: 58 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) != Null]
; [eval] this.right.parent == this
(pop) ; 21
(pop) ; 20
; Joined path conditions
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
      $Ref.null))
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
    n@21@01)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))))))
; [eval] this.right != null
(push) ; 20
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [then-branch: 59 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) != Null | live]
; [else-branch: 59 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 20
; [then-branch: 59 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) != Null]
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  n@21@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))
  $Snap.unit))
; [eval] this.right != null ==> this.right.root == this.root
; [eval] this.right != null
(set-option :timeout 0)
(push) ; 21
(push) ; 22
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
; [then-branch: 60 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) != Null | live]
; [else-branch: 60 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 22
; [then-branch: 60 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) != Null]
; [eval] this.right.root == this.root
(pop) ; 22
(pop) ; 21
; Joined path conditions
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
      $Ref.null))
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))))
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (rightValid%trigger ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))) n@21@01))
; [exec]
; n := q.right
(declare-const n@25@01 $Ref)
(assert (=
  n@25@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))
; [exec]
; q.leftDown := false
; [exec]
; fold acc(rightOpen(q), write)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
; [eval] this.right != null
(set-option :timeout 0)
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
; [then-branch: 61 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) != Null | live]
; [else-branch: 61 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 21
; [then-branch: 61 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) != Null]
(push) ; 22
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
; [eval] this.right != null ==> this.right.parent == this
; [eval] this.right != null
(set-option :timeout 0)
(push) ; 22
(push) ; 23
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 23
; 0.00s
; (get-info :all-statistics)
; [then-branch: 62 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) != Null | live]
; [else-branch: 62 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 23
; [then-branch: 62 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) != Null]
; [eval] this.right.parent == this
(pop) ; 23
(pop) ; 22
; Joined path conditions
(assert (rightOpen%trigger ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
      $Snap.unit))) n@21@01))
; [exec]
; fold acc(udValid(q), write)
(push) ; 22
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 22
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 22
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 22
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
; [then-branch: 63 | False | dead]
; [else-branch: 63 | True | live]
(set-option :timeout 0)
(push) ; 22
; [else-branch: 63 | True]
; [then-branch: 64 | False | dead]
; [else-branch: 64 | True | live]
(push) ; 23
; [else-branch: 64 | True]
; [eval] this.leftDown ==> false
(push) ; 24
; [then-branch: 65 | False | dead]
; [else-branch: 65 | True | live]
(push) ; 25
; [else-branch: 65 | True]
(pop) ; 25
(pop) ; 24
; Joined path conditions
(push) ; 24
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 66 | True | live]
; [else-branch: 66 | False | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 66 | True]
; [eval] this.leftDown ==> false
(push) ; 25
; [then-branch: 67 | False | dead]
; [else-branch: 67 | True | live]
(push) ; 26
; [else-branch: 67 | True]
(pop) ; 26
(pop) ; 25
; Joined path conditions
(push) ; 25
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 25
; 0.00s
; (get-info :all-statistics)
; [then-branch: 68 | True | live]
; [else-branch: 68 | False | dead]
(set-option :timeout 0)
(push) ; 25
; [then-branch: 68 | True]
(assert (udValid%trigger ($Snap.combine
  ($Snap.first ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))
  ($Snap.combine
    ($SortWrappers.BoolTo$Snap false)
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))
                ($Snap.combine
                  ($Snap.combine
                    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
                    ($Snap.combine
                      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))
                      ($Snap.combine
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
                        $Snap.unit)))
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))))) n@21@01))
; [exec]
; fold acc(udParentValid(n), write)
(push) ; 26
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@25@01)))
(check-sat)
; unknown
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 26
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  n@25@01)))
(check-sat)
; unsat
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 26
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  n@25@01)))
(check-sat)
; unsat
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 26
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
; [eval] this.parent != null
(set-option :timeout 0)
(push) ; 26
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@25@01)))
(check-sat)
; unknown
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 26
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  n@25@01)))
(check-sat)
; unsat
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 26
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 26
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
    $Ref.null))))
(check-sat)
; unsat
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
; [then-branch: 69 | First:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) != Null | live]
; [else-branch: 69 | First:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 26
; [then-branch: 69 | First:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
    $Ref.null)))
(push) ; 27
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@25@01)))
(check-sat)
; unknown
(pop) ; 27
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 27
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  n@25@01)))
(check-sat)
; unsat
(pop) ; 27
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 27
(set-option :timeout 10)
(assert (not (=
  n@21@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 27
; 0.00s
; (get-info :all-statistics)
; [eval] this.parent != null
(set-option :timeout 0)
(push) ; 27
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@25@01)))
(check-sat)
; unknown
(pop) ; 27
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 27
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  n@25@01)))
(check-sat)
; unsat
(pop) ; 27
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 27
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 27
; 0.00s
; (get-info :all-statistics)
; [then-branch: 70 | First:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) != Null | live]
; [else-branch: 70 | First:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 27
; [then-branch: 70 | First:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) != Null]
(push) ; 28
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@25@01)))
(check-sat)
; unknown
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 28
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  n@25@01)))
(check-sat)
; unsat
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 28
(set-option :timeout 10)
(assert (not (=
  n@21@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
; [eval] this.parent != null
(set-option :timeout 0)
(push) ; 28
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@25@01)))
(check-sat)
; unknown
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 28
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  n@25@01)))
(check-sat)
; unsat
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 28
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
; [then-branch: 71 | First:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) != Null | live]
; [else-branch: 71 | First:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 28
; [then-branch: 71 | First:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) != Null]
(push) ; 29
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@25@01)))
(check-sat)
; unknown
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 29
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  n@25@01)))
(check-sat)
; unsat
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 29
(set-option :timeout 10)
(assert (not (=
  n@21@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
; [eval] this.parent != null ==> this.parent.leftDown == (this.parent.left == this)
; [eval] this.parent != null
(set-option :timeout 0)
(push) ; 29
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@25@01)))
(check-sat)
; unknown
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 29
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  n@25@01)))
(check-sat)
; unsat
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 29
(push) ; 30
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
; [then-branch: 72 | First:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) != Null | live]
; [else-branch: 72 | First:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 30
; [then-branch: 72 | First:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) != Null]
; [eval] this.parent.leftDown == (this.parent.left == this)
(push) ; 31
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@25@01)))
(check-sat)
; unknown
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 31
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  n@25@01)))
(check-sat)
; unsat
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 31
(set-option :timeout 10)
(assert (not (=
  n@21@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
; [eval] this.parent.left == this
(set-option :timeout 0)
(push) ; 31
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@25@01)))
(check-sat)
; unknown
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 31
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  n@25@01)))
(check-sat)
; unsat
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 31
(set-option :timeout 10)
(assert (not (=
  n@21@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
(pop) ; 30
(pop) ; 29
; Joined path conditions
(set-option :timeout 0)
(push) ; 29
(assert (not (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
      $Ref.null))
  (=
    false
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
      n@25@01)))))
(check-sat)
; unsat
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
      $Ref.null))
  (=
    false
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
      n@25@01))))
; [eval] this.parent != null
(push) ; 29
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@25@01)))
(check-sat)
; unknown
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 29
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  n@25@01)))
(check-sat)
; unsat
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 29
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
; [then-branch: 73 | First:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) != Null | live]
; [else-branch: 73 | First:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 29
; [then-branch: 73 | First:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) != Null]
(push) ; 30
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@25@01)))
(check-sat)
; unknown
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 30
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  n@25@01)))
(check-sat)
; unsat
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 30
(set-option :timeout 10)
(assert (not (=
  n@21@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
; [eval] this.parent != null ==> !this.parent.leftDown == (this.parent.right == this)
; [eval] this.parent != null
(set-option :timeout 0)
(push) ; 30
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@25@01)))
(check-sat)
; unknown
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 30
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  n@25@01)))
(check-sat)
; unsat
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 30
(push) ; 31
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
; [then-branch: 74 | First:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) != Null | live]
; [else-branch: 74 | First:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 31
; [then-branch: 74 | First:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) != Null]
; [eval] !this.parent.leftDown == (this.parent.right == this)
; [eval] !this.parent.leftDown
(push) ; 32
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@25@01)))
(check-sat)
; unknown
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 32
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  n@25@01)))
(check-sat)
; unsat
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 32
(set-option :timeout 10)
(assert (not (=
  n@21@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
; [eval] this.parent.right == this
(set-option :timeout 0)
(push) ; 32
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@25@01)))
(check-sat)
; unknown
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 32
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  n@25@01)))
(check-sat)
; unsat
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 32
(set-option :timeout 10)
(assert (not (=
  n@21@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
(pop) ; 31
(pop) ; 30
; Joined path conditions
(set-option :timeout 0)
(push) ; 30
(assert (not (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
      $Ref.null))
  (=
    true
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
      n@25@01)))))
(check-sat)
; unsat
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
      $Ref.null))
  (=
    true
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
      n@25@01))))
; [eval] this.parent != null
(push) ; 30
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@25@01)))
(check-sat)
; unknown
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 30
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  n@25@01)))
(check-sat)
; unsat
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 30
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
; [then-branch: 75 | First:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) != Null | live]
; [else-branch: 75 | First:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 30
; [then-branch: 75 | First:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) != Null]
(push) ; 31
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@25@01)))
(check-sat)
; unknown
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 31
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  n@25@01)))
(check-sat)
; unsat
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 31
(set-option :timeout 10)
(assert (not (=
  n@21@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
; [eval] this.parent != null ==> this.root == this.parent.root
; [eval] this.parent != null
(set-option :timeout 0)
(push) ; 31
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@25@01)))
(check-sat)
; unknown
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 31
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  n@25@01)))
(check-sat)
; unsat
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 31
(push) ; 32
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
; [then-branch: 76 | First:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) != Null | live]
; [else-branch: 76 | First:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 32
; [then-branch: 76 | First:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) != Null]
; [eval] this.root == this.parent.root
(push) ; 33
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  n@25@01)))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 33
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@25@01)))
(check-sat)
; unknown
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 33
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  n@25@01)))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 33
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))))
(check-sat)
; unknown
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 33
(set-option :timeout 10)
(assert (not (=
  n@21@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(pop) ; 32
(pop) ; 31
; Joined path conditions
(set-option :timeout 0)
(push) ; 31
(assert (not (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
      $Ref.null))
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))))
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
(check-sat)
; unsat
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
      $Ref.null))
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))))
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
; [eval] this.parent == null ==> this.root == this
; [eval] this.parent == null
(push) ; 31
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)) n@25@01)))
(check-sat)
; unknown
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 31
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  n@25@01)))
(check-sat)
; unsat
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 31
; [then-branch: 77 | First:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) == Null | dead]
; [else-branch: 77 | First:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) != Null | live]
(push) ; 32
; [else-branch: 77 | First:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:($t@23@01))))))))))) != Null]
(pop) ; 32
(pop) ; 31
; Joined path conditions
(assert (udParentValid%trigger ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))
    ($Snap.combine
      ($Snap.combine
        ($Snap.first ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))
        ($Snap.combine
          ($SortWrappers.BoolTo$Snap false)
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))
                ($Snap.combine
                  $Snap.unit
                  ($Snap.combine
                    $Snap.unit
                    ($Snap.combine
                      ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))
                      ($Snap.combine
                        ($Snap.combine
                          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
                          ($Snap.combine
                            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))
                            ($Snap.combine
                              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
                              $Snap.unit)))
                        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))))))
      ($Snap.combine
        ($SortWrappers.BoolTo$Snap false)
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
              ($Snap.combine
                $Snap.unit
                ($Snap.combine
                  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))
                  ($Snap.combine $Snap.unit $Snap.unit)))))))))) n@25@01))
; Loop head block: Re-establish invariant
; [eval] this.root1 != null
; [eval] n != null
(push) ; 31
(assert (not (not (= n@25@01 $Ref.null))))
(check-sat)
; unsat
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
(assert (not (= n@25@01 $Ref.null)))
(push) ; 31
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  n@25@01)))
(check-sat)
; unsat
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 31
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  n@25@01)))
(check-sat)
; unsat
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(valid(n), write) in n.root == this.root1)
(set-option :timeout 0)
(push) ; 31
(push) ; 32
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  n@25@01)))
(check-sat)
; unsat
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
(assert (valid%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))) n@25@01))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))))
; [eval] n.root == this.root1
(set-option :timeout 0)
(push) ; 32
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  n@25@01)))
(check-sat)
; unsat
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
(pop) ; 31
; Joined path conditions
(assert (and
  (valid%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))) n@25@01)
  (=
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))
    ($Snap.combine
      ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))))
  (=
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))))))
(set-option :timeout 0)
(push) ; 31
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01)))))
(check-sat)
; unsat
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@23@01))))
; [eval] this.root1 != null
(pop) ; 30
(pop) ; 29
(pop) ; 28
(pop) ; 27
(pop) ; 26
(pop) ; 25
(pop) ; 24
(pop) ; 23
(pop) ; 22
(pop) ; 21
(pop) ; 20
(pop) ; 19
(pop) ; 18
(pop) ; 17
(push) ; 17
; [else-branch: 55 | First:(Second:(Second:(Second:(First:(First:(Second:(Second:(Second:(Second:($t@23@01)))))))))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01)))))))))))
  $Ref.null))
(pop) ; 17
(pop) ; 16
(push) ; 16
; [else-branch: 52 | First:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))) < k@8@01]
(assert (<
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))
  k@8@01))
(pop) ; 16
(pop) ; 15
(push) ; 15
; [else-branch: 25 | First:(First:(First:(Second:(Second:(Second:(Second:($t@23@01))))))) == k@8@01]
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@23@01))))))))
  k@8@01))
(pop) ; 15
(pop) ; 14
(push) ; 14
; [else-branch: 21 | end@19@01]
(assert end@19@01)
(pop) ; 14
; [eval] !!end
; [eval] !end
(push) ; 14
(set-option :timeout 10)
(assert (not (not end@19@01)))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 14
(set-option :timeout 10)
(assert (not end@19@01))
(check-sat)
; unknown
(pop) ; 14
; 0.00s
; (get-info :all-statistics)
; [then-branch: 78 | end@19@01 | live]
; [else-branch: 78 | !(end@19@01) | live]
(set-option :timeout 0)
(push) ; 14
; [then-branch: 78 | end@19@01]
(assert end@19@01)
; [exec]
; end := false
(declare-const r@26@01 $Ref)
(declare-const end@27@01 Bool)
(declare-const n@28@01 $Ref)
(push) ; 15
; Loop head block: Check well-definedness of invariant
(declare-const $t@29@01 $Snap)
(assert (= $t@29@01 ($Snap.combine ($Snap.first $t@29@01) ($Snap.second $t@29@01))))
(assert (=
  ($Snap.second $t@29@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@29@01))
    ($Snap.second ($Snap.second $t@29@01)))))
(assert (= ($Snap.first ($Snap.second $t@29@01)) $Snap.unit))
; [eval] this.root1 != null
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second $t@29@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@29@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@29@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@29@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@29@01))))
  $Snap.unit))
; [eval] n != null
(assert (not (= n@28@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  $Snap.unit))
; [eval] (unfolding acc(valid(n), write) in n.root == this.root1)
(push) ; 16
(assert (valid%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))) n@28@01))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
; [eval] n.root == this.root1
(pop) ; 16
; Joined path conditions
(assert (and
  (valid%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))) n@28@01)
  (=
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))
    ($Snap.combine
      ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  (=
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
  $Snap.unit))
; [eval] this.root1 != null
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
  $Snap.unit))
; [eval] end ==> (unfolding acc(udParentValid(n), write) in n.parent == null)
(push) ; 16
(push) ; 17
(set-option :timeout 10)
(assert (not (not end@27@01)))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not end@27@01))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 79 | end@27@01 | live]
; [else-branch: 79 | !(end@27@01) | live]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 79 | end@27@01]
(assert end@27@01)
; [eval] (unfolding acc(udParentValid(n), write) in n.parent == null)
(push) ; 18
(assert (udParentValid%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))) n@28@01))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
(push) ; 19
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)) n@28@01)))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
; [eval] this.parent != null
(set-option :timeout 0)
(push) ; 19
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 19
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
; [then-branch: 80 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | live]
; [else-branch: 80 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | live]
(set-option :timeout 0)
(push) ; 19
; [then-branch: 80 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
; [eval] this.parent != null
(push) ; 20
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [then-branch: 81 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | live]
; [else-branch: 81 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 20
; [then-branch: 81 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null]
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
; [eval] this.parent != null
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
; [then-branch: 82 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | live]
; [else-branch: 82 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 21
; [then-branch: 82 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null]
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
  $Snap.unit))
; [eval] this.parent != null ==> this.parent.leftDown == (this.parent.left == this)
; [eval] this.parent != null
(push) ; 22
(push) ; 23
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 23
; 0.00s
; (get-info :all-statistics)
; [then-branch: 83 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | live]
; [else-branch: 83 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 23
; [then-branch: 83 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null]
; [eval] this.parent.leftDown == (this.parent.left == this)
; [eval] this.parent.left == this
(pop) ; 23
(pop) ; 22
; Joined path conditions
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
      $Ref.null))
  (=
    ($SortWrappers.$SnapToBool ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
      n@28@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
; [eval] this.parent != null
(push) ; 22
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
; [then-branch: 84 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | live]
; [else-branch: 84 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 22
; [then-branch: 84 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null]
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
  $Snap.unit))
; [eval] this.parent != null ==> !this.parent.leftDown == (this.parent.right == this)
; [eval] this.parent != null
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 85 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | live]
; [else-branch: 85 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 85 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null]
; [eval] !this.parent.leftDown == (this.parent.right == this)
; [eval] !this.parent.leftDown
; [eval] this.parent.right == this
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
      $Ref.null))
  (=
    (not
      ($SortWrappers.$SnapToBool ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
      n@28@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))
; [eval] this.parent != null
(push) ; 23
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 23
; 0.00s
; (get-info :all-statistics)
; [then-branch: 86 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | live]
; [else-branch: 86 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 23
; [then-branch: 86 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null]
(push) ; 24
(set-option :timeout 10)
(assert (not (=
  n@28@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
  $Snap.unit))
; [eval] this.parent != null ==> this.root == this.parent.root
; [eval] this.parent != null
(set-option :timeout 0)
(push) ; 24
(push) ; 25
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 25
; 0.00s
; (get-info :all-statistics)
; [then-branch: 87 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | live]
; [else-branch: 87 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 25
; [then-branch: 87 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null]
; [eval] this.root == this.parent.root
(pop) ; 25
(pop) ; 24
; Joined path conditions
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
      $Ref.null))
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
  $Snap.unit))
; [eval] this.parent == null ==> this.root == this
; [eval] this.parent == null
(push) ; 24
; [then-branch: 88 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | dead]
; [else-branch: 88 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | live]
(push) ; 25
; [else-branch: 88 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null]
(pop) ; 25
(pop) ; 24
; Joined path conditions
; [eval] n.parent == null
(pop) ; 23
(pop) ; 22
(pop) ; 21
(pop) ; 20
(pop) ; 19
(push) ; 19
; [else-branch: 80 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  $Ref.null))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
; [eval] this.parent != null
; [then-branch: 89 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | dead]
; [else-branch: 89 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | live]
(push) ; 20
; [else-branch: 89 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
; [eval] this.parent != null
; [then-branch: 90 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | dead]
; [else-branch: 90 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | live]
(push) ; 21
; [else-branch: 90 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
  $Snap.unit))
; [eval] this.parent != null ==> this.parent.leftDown == (this.parent.left == this)
; [eval] this.parent != null
(push) ; 22
; [then-branch: 91 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | dead]
; [else-branch: 91 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | live]
(push) ; 23
; [else-branch: 91 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null]
(pop) ; 23
(pop) ; 22
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
; [eval] this.parent != null
; [then-branch: 92 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | dead]
; [else-branch: 92 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | live]
(push) ; 22
; [else-branch: 92 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
  $Snap.unit))
; [eval] this.parent != null ==> !this.parent.leftDown == (this.parent.right == this)
; [eval] this.parent != null
(push) ; 23
; [then-branch: 93 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | dead]
; [else-branch: 93 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | live]
(push) ; 24
; [else-branch: 93 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null]
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))
; [eval] this.parent != null
; [then-branch: 94 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | dead]
; [else-branch: 94 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | live]
(push) ; 23
; [else-branch: 94 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
  $Snap.unit))
; [eval] this.parent != null ==> this.root == this.parent.root
; [eval] this.parent != null
(push) ; 24
; [then-branch: 95 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | dead]
; [else-branch: 95 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | live]
(push) ; 25
; [else-branch: 95 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null]
(pop) ; 25
(pop) ; 24
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
  $Snap.unit))
; [eval] this.parent == null ==> this.root == this
; [eval] this.parent == null
(push) ; 24
(push) ; 25
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 25
; 0.00s
; (get-info :all-statistics)
; [then-branch: 96 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | live]
; [else-branch: 96 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | dead]
(set-option :timeout 0)
(push) ; 25
; [then-branch: 96 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null]
; [eval] this.root == this
(pop) ; 25
(pop) ; 24
; Joined path conditions
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    $Ref.null)
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    n@28@01)))
; [eval] n.parent == null
(pop) ; 23
(pop) ; 22
(pop) ; 21
(pop) ; 20
(pop) ; 19
(pop) ; 18
(declare-const joined_unfolding@30@01 Bool)
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
      $Ref.null))
  (=
    (as joined_unfolding@30@01  Bool)
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
      $Ref.null))))
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    $Ref.null)
  (=
    (as joined_unfolding@30@01  Bool)
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
      $Ref.null))))
; Joined path conditions
(assert (and
  (udParentValid%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))) n@28@01)
  (=
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))
    ($Snap.combine
      ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
  (=
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
      $Ref.null))
  (and
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
        $Ref.null))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
      $Ref.null))
  (=
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
      $Ref.null))
  (and
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
      $Snap.unit)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
          $Ref.null))
      (=
        ($SortWrappers.$SnapToBool ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
          n@28@01)))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
      $Ref.null))
  (and
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
      $Snap.unit)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
          $Ref.null))
      (=
        (not
          ($SortWrappers.$SnapToBool ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
          n@28@01)))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))))
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
      $Ref.null))
  (and
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
      $Snap.unit)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
          $Ref.null))
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
      $Snap.unit))))
; Joined path conditions
(assert (and
  (udParentValid%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))) n@28@01)
  (=
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))
    ($Snap.combine
      ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
  (=
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
  (=
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    $Ref.null)
  (and
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
      $Ref.null)
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
      $Snap.unit)
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    $Ref.null)
  (and
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
      $Snap.unit)
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    $Ref.null)
  (and
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
      $Snap.unit)
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
      $Snap.unit)
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    $Ref.null)
  (and
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
      $Snap.unit)
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
      $Snap.unit)
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))))
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    $Ref.null)
  (and
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
      $Snap.unit)
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
      $Snap.unit)
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
      $Snap.unit)
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
        $Ref.null)
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
        n@28@01)))))
(assert (or
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    $Ref.null)
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
      $Ref.null))))
(pop) ; 17
(push) ; 17
; [else-branch: 79 | !(end@27@01)]
(assert (not end@27@01))
(pop) ; 17
(pop) ; 16
; Joined path conditions
(assert (=>
  end@27@01
  (and
    end@27@01
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
          $Ref.null))
      (=
        (as joined_unfolding@30@01  Bool)
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
          $Ref.null)))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
        $Ref.null)
      (=
        (as joined_unfolding@30@01  Bool)
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
          $Ref.null)))
    (udParentValid%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))) n@28@01)
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))
      ($Snap.combine
        ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))
        ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
    (=
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
        ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
          $Ref.null))
      (and
        (not
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
            $Ref.null))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
          $Ref.null))
      (=
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
          $Ref.null))
      (and
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
          $Snap.unit)
        (=>
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
              $Ref.null))
          (=
            ($SortWrappers.$SnapToBool ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
              n@28@01)))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
          $Ref.null))
      (and
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
          $Snap.unit)
        (=>
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
              $Ref.null))
          (=
            (not
              ($SortWrappers.$SnapToBool ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
              n@28@01)))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))))
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
          $Ref.null))
      (and
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
          $Snap.unit)
        (=>
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
              $Ref.null))
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
          $Snap.unit)))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
        $Ref.null)
      (and
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
          $Ref.null)
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
          $Snap.unit)
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
        $Ref.null)
      (and
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
          $Snap.unit)
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
        $Ref.null)
      (and
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
          $Snap.unit)
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
          $Snap.unit)
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
        $Ref.null)
      (and
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
          $Snap.unit)
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
          $Snap.unit)
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
        $Ref.null)
      (and
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
          $Snap.unit)
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
          $Snap.unit)
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
          $Snap.unit)
        (=>
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
            $Ref.null)
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
            n@28@01))))
    (or
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
        $Ref.null)
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
          $Ref.null))))))
; Joined path conditions
(assert (or (not end@27@01) end@27@01))
(assert (=> end@27@01 (as joined_unfolding@30@01  Bool)))
(pop) ; 15
(push) ; 15
; Loop head block: Establish invariant
; [eval] this.root1 != null
; [eval] n != null
; [eval] (unfolding acc(valid(n), write) in n.root == this.root1)
(push) ; 16
; [eval] n.root == this.root1
(pop) ; 16
; Joined path conditions
; [eval] this.root1 != null
; [eval] end ==> (unfolding acc(udParentValid(n), write) in n.parent == null)
(push) ; 16
; [then-branch: 97 | False | dead]
; [else-branch: 97 | True | live]
(push) ; 17
; [else-branch: 97 | True]
(pop) ; 17
(pop) ; 16
; Joined path conditions
; Loop head block: Execute statements of loop head block (in invariant state)
(push) ; 16
(assert (= $t@29@01 ($Snap.combine ($Snap.first $t@29@01) ($Snap.second $t@29@01))))
(assert (=
  ($Snap.second $t@29@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@29@01))
    ($Snap.second ($Snap.second $t@29@01)))))
(assert (= ($Snap.first ($Snap.second $t@29@01)) $Snap.unit))
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second $t@29@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@29@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@29@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@29@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@29@01))))
  $Snap.unit))
(assert (not (= n@28@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  $Snap.unit))
(assert (valid%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))) n@28@01))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
  $Snap.unit))
(assert (=>
  end@27@01
  (and
    end@27@01
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
          $Ref.null))
      (=
        (as joined_unfolding@30@01  Bool)
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
          $Ref.null)))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
        $Ref.null)
      (=
        (as joined_unfolding@30@01  Bool)
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
          $Ref.null)))
    (udParentValid%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))) n@28@01)
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))
      ($Snap.combine
        ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))
        ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
    (=
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
        ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
          $Ref.null))
      (and
        (not
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
            $Ref.null))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
          $Ref.null))
      (=
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
          $Ref.null))
      (and
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
          $Snap.unit)
        (=>
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
              $Ref.null))
          (=
            ($SortWrappers.$SnapToBool ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
              n@28@01)))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
          $Ref.null))
      (and
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
          $Snap.unit)
        (=>
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
              $Ref.null))
          (=
            (not
              ($SortWrappers.$SnapToBool ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
              n@28@01)))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))))
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
          $Ref.null))
      (and
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
          $Snap.unit)
        (=>
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
              $Ref.null))
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
          $Snap.unit)))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
        $Ref.null)
      (and
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
          $Ref.null)
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
          $Snap.unit)
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
        $Ref.null)
      (and
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
          $Snap.unit)
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
        $Ref.null)
      (and
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
          $Snap.unit)
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
          $Snap.unit)
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
        $Ref.null)
      (and
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
          $Snap.unit)
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
          $Snap.unit)
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
        $Ref.null)
      (and
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
          $Snap.unit)
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
          $Snap.unit)
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
          $Snap.unit)
        (=>
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
            $Ref.null)
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
            n@28@01))))
    (or
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
        $Ref.null)
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
          $Ref.null))))))
(assert (or (not end@27@01) end@27@01))
(assert (=> end@27@01 (as joined_unfolding@30@01  Bool)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 10)
(check-sat)
; unknown
; Loop head block: Check well-definedness of edge conditions
(set-option :timeout 0)
(push) ; 17
; [eval] !end
(pop) ; 17
(push) ; 17
; [eval] !!end
; [eval] !end
(pop) ; 17
; Loop head block: Follow loop-internal edges
; [eval] !end
(push) ; 17
(set-option :timeout 10)
(assert (not end@27@01))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not (not end@27@01)))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 98 | !(end@27@01) | live]
; [else-branch: 98 | end@27@01 | live]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 98 | !(end@27@01)]
(assert (not end@27@01))
; [exec]
; unfold acc(udParentValid(n), write)
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
(push) ; 18
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)) n@28@01)))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
; [eval] this.parent != null
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [then-branch: 99 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | live]
; [else-branch: 99 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | live]
(set-option :timeout 0)
(push) ; 18
; [then-branch: 99 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
; [eval] this.parent != null
(push) ; 19
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
; [then-branch: 100 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | live]
; [else-branch: 100 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 19
; [then-branch: 100 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null]
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
; [eval] this.parent != null
(push) ; 20
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [then-branch: 101 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | live]
; [else-branch: 101 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 20
; [then-branch: 101 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null]
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
  $Snap.unit))
; [eval] this.parent != null ==> this.parent.leftDown == (this.parent.left == this)
; [eval] this.parent != null
(push) ; 21
(push) ; 22
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
; [then-branch: 102 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | live]
; [else-branch: 102 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 22
; [then-branch: 102 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null]
; [eval] this.parent.leftDown == (this.parent.left == this)
; [eval] this.parent.left == this
(pop) ; 22
(pop) ; 21
; Joined path conditions
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
      $Ref.null))
  (=
    ($SortWrappers.$SnapToBool ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
      n@28@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
; [eval] this.parent != null
(push) ; 21
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
; [then-branch: 103 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | live]
; [else-branch: 103 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 21
; [then-branch: 103 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null]
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
  $Snap.unit))
; [eval] this.parent != null ==> !this.parent.leftDown == (this.parent.right == this)
; [eval] this.parent != null
(push) ; 22
(push) ; 23
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 23
; 0.00s
; (get-info :all-statistics)
; [then-branch: 104 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | live]
; [else-branch: 104 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 23
; [then-branch: 104 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null]
; [eval] !this.parent.leftDown == (this.parent.right == this)
; [eval] !this.parent.leftDown
; [eval] this.parent.right == this
(pop) ; 23
(pop) ; 22
; Joined path conditions
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
      $Ref.null))
  (=
    (not
      ($SortWrappers.$SnapToBool ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
      n@28@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))
; [eval] this.parent != null
(push) ; 22
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
; [then-branch: 105 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | live]
; [else-branch: 105 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 22
; [then-branch: 105 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null]
(push) ; 23
(set-option :timeout 10)
(assert (not (=
  n@28@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
(check-sat)
; unknown
(pop) ; 23
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
  $Snap.unit))
; [eval] this.parent != null ==> this.root == this.parent.root
; [eval] this.parent != null
(set-option :timeout 0)
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 106 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | live]
; [else-branch: 106 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 106 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null]
; [eval] this.root == this.parent.root
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
      $Ref.null))
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
  $Snap.unit))
; [eval] this.parent == null ==> this.root == this
; [eval] this.parent == null
(push) ; 23
; [then-branch: 107 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | dead]
; [else-branch: 107 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | live]
(push) ; 24
; [else-branch: 107 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null]
(pop) ; 24
(pop) ; 23
; Joined path conditions
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (udParentValid%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))) n@28@01))
; [exec]
; r := n.parent
(declare-const r@31@01 $Ref)
(assert (=
  r@31@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
; [eval] r == null
(set-option :timeout 0)
(push) ; 23
(set-option :timeout 10)
(assert (not (not (= r@31@01 $Ref.null))))
(check-sat)
; unsat
(pop) ; 23
; 0.00s
; (get-info :all-statistics)
; [then-branch: 108 | r@31@01 == Null | dead]
; [else-branch: 108 | r@31@01 != Null | live]
(set-option :timeout 0)
(push) ; 23
; [else-branch: 108 | r@31@01 != Null]
(assert (not (= r@31@01 $Ref.null)))
(pop) ; 23
; [eval] !(r == null)
; [eval] r == null
(push) ; 23
(set-option :timeout 10)
(assert (not (= r@31@01 $Ref.null)))
(check-sat)
; unknown
(pop) ; 23
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 23
(set-option :timeout 10)
(assert (not (not (= r@31@01 $Ref.null))))
(check-sat)
; unsat
(pop) ; 23
; 0.00s
; (get-info :all-statistics)
; [then-branch: 109 | r@31@01 != Null | live]
; [else-branch: 109 | r@31@01 == Null | dead]
(set-option :timeout 0)
(push) ; 23
; [then-branch: 109 | r@31@01 != Null]
(assert (not (= r@31@01 $Ref.null)))
; [exec]
; unfold acc(udValid(r), write)
(push) ; 24
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
(set-option :timeout 0)
(push) ; 24
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToBool ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
  ($SortWrappers.$SnapToBool ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
(set-option :timeout 0)
(push) ; 24
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
(set-option :timeout 0)
(push) ; 24
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))
(set-option :timeout 0)
(push) ; 24
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))
(set-option :timeout 0)
(push) ; 24
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 24
(set-option :timeout 10)
(assert (not (not
  ($SortWrappers.$SnapToBool ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 24
(set-option :timeout 10)
(assert (not ($SortWrappers.$SnapToBool ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 110 | First:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01)))))))))) | live]
; [else-branch: 110 | !(First:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) | live]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 110 | First:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))]
(assert ($SortWrappers.$SnapToBool ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))))
(push) ; 25
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 25
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 25
(set-option :timeout 10)
(assert (not (not
  ($SortWrappers.$SnapToBool ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
(check-sat)
; unknown
(pop) ; 25
; 0.00s
; (get-info :all-statistics)
; [then-branch: 111 | First:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01)))))))))) | live]
; [else-branch: 111 | !(First:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) | dead]
(set-option :timeout 0)
(push) ; 25
; [then-branch: 111 | First:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))]
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))))
; [eval] this.leftDown ==> false
(push) ; 26
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 26
(push) ; 27
(set-option :timeout 10)
(assert (not (not
  ($SortWrappers.$SnapToBool ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
(check-sat)
; unknown
(pop) ; 27
; 0.00s
; (get-info :all-statistics)
; [then-branch: 112 | First:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01)))))))))) | live]
; [else-branch: 112 | !(First:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) | dead]
(set-option :timeout 0)
(push) ; 27
; [then-branch: 112 | First:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))]
(pop) ; 27
(pop) ; 26
; Joined path conditions
(push) ; 26
(set-option :timeout 10)
(assert (not (not
  (=>
    ($SortWrappers.$SnapToBool ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
    false))))
(check-sat)
; unsat
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
; [then-branch: 113 | First:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01)))))))))) ==> False | dead]
; [else-branch: 113 | !(First:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01)))))))))) ==> False) | live]
(set-option :timeout 0)
(push) ; 26
; [else-branch: 113 | !(First:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01)))))))))) ==> False)]
(assert (not
  (=>
    ($SortWrappers.$SnapToBool ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
    false)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))))))
; [eval] this.leftDown ==> false
(push) ; 27
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 27
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 27
(push) ; 28
(set-option :timeout 10)
(assert (not (not
  ($SortWrappers.$SnapToBool ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
(check-sat)
; unknown
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
; [then-branch: 114 | First:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01)))))))))) | live]
; [else-branch: 114 | !(First:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) | dead]
(set-option :timeout 0)
(push) ; 28
; [then-branch: 114 | First:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))]
(pop) ; 28
(pop) ; 27
; Joined path conditions
; [then-branch: 115 | First:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01)))))))))) ==> False | dead]
; [else-branch: 115 | !(First:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01)))))))))) ==> False) | live]
(push) ; 27
; [else-branch: 115 | !(First:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01)))))))))) ==> False)]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))
  $Snap.unit))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (udValid%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))) r@31@01))
; [eval] r.left == n
(set-option :timeout 0)
(push) ; 28
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 28
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
    n@28@01))))
(check-sat)
; unknown
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 28
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
  n@28@01)))
(check-sat)
; unsat
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
; [then-branch: 116 | First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) == n@28@01 | live]
; [else-branch: 116 | First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) != n@28@01 | dead]
(set-option :timeout 0)
(push) ; 28
; [then-branch: 116 | First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) == n@28@01]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
  n@28@01))
; [exec]
; unfold acc(leftOpen(r), write)
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))))
(push) ; 29
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))))))
(set-option :timeout 0)
(push) ; 29
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))))))
; [eval] this.left != null
(set-option :timeout 0)
(push) ; 29
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 29
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 29
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
    $Ref.null))))
(check-sat)
; unsat
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
; [then-branch: 117 | First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) != Null | live]
; [else-branch: 117 | First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 29
; [then-branch: 117 | First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
    $Ref.null)))
(push) ; 30
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 30
(set-option :timeout 10)
(assert (not (=
  n@28@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))))
  $Snap.unit))
; [eval] this.left != null ==> this.left.parent == this
; [eval] this.left != null
(set-option :timeout 0)
(push) ; 30
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 30
(push) ; 31
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
; [then-branch: 118 | First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) != Null | live]
; [else-branch: 118 | First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 31
; [then-branch: 118 | First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) != Null]
; [eval] this.left.parent == this
(push) ; 32
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 32
(set-option :timeout 10)
(assert (not (=
  n@28@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
(pop) ; 31
(pop) ; 30
; Joined path conditions
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
      $Ref.null))
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    r@31@01)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (leftOpen%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))) r@31@01))
; [exec]
; fold acc(leftValid(r), write)
(set-option :timeout 0)
(push) ; 30
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 30
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 30
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 30
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
; [eval] this.left != null
(set-option :timeout 0)
(push) ; 30
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 30
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
; [then-branch: 119 | First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) != Null | live]
; [else-branch: 119 | First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 30
; [then-branch: 119 | First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) != Null]
(push) ; 31
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 31
(set-option :timeout 10)
(assert (not (=
  n@28@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
; [eval] this.left != null
(set-option :timeout 0)
(push) ; 31
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 31
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
; [then-branch: 120 | First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) != Null | live]
; [else-branch: 120 | First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 31
; [then-branch: 120 | First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) != Null]
(push) ; 32
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 32
(set-option :timeout 10)
(assert (not (=
  n@28@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
; [eval] this.left != null ==> this.left.parent == this
; [eval] this.left != null
(set-option :timeout 0)
(push) ; 32
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 32
(push) ; 33
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
; [then-branch: 121 | First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) != Null | live]
; [else-branch: 121 | First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 33
; [then-branch: 121 | First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) != Null]
; [eval] this.left.parent == this
(push) ; 34
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 34
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 34
(set-option :timeout 10)
(assert (not (=
  n@28@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 34
; 0.00s
; (get-info :all-statistics)
(pop) ; 33
(pop) ; 32
; Joined path conditions
; [eval] this.left != null
(set-option :timeout 0)
(push) ; 32
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 32
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
; [then-branch: 122 | First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) != Null | live]
; [else-branch: 122 | First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 32
; [then-branch: 122 | First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) != Null]
(push) ; 33
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 33
(set-option :timeout 10)
(assert (not (=
  n@28@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
; [eval] this.left != null ==> this.left.root == this.root
; [eval] this.left != null
(set-option :timeout 0)
(push) ; 33
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 33
(push) ; 34
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 34
; 0.00s
; (get-info :all-statistics)
; [then-branch: 123 | First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) != Null | live]
; [else-branch: 123 | First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 34
; [then-branch: 123 | First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) != Null]
; [eval] this.left.root == this.root
(push) ; 35
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 35
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 35
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
(check-sat)
; unknown
(pop) ; 35
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 35
(set-option :timeout 10)
(assert (not (=
  n@28@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
(check-sat)
; unsat
(pop) ; 35
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 35
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 35
; 0.00s
; (get-info :all-statistics)
(pop) ; 34
(pop) ; 33
; Joined path conditions
(set-option :timeout 0)
(push) ; 33
(assert (not (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
      $Ref.null))
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
      $Ref.null))
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))))
(assert (leftValid%trigger ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))
      ($Snap.combine
        ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))
            $Snap.unit)))))) r@31@01))
; [exec]
; fold acc(validRest(r), write)
(push) ; 33
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 33
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 33
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 33
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 33
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
; [eval] this.right != this.left || this.right == null
; [eval] this.right != this.left
(set-option :timeout 0)
(push) ; 33
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 33
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 33
; [then-branch: 124 | First:(Second:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))))) != First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) | live]
; [else-branch: 124 | First:(Second:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))))) == First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) | live]
(push) ; 34
; [then-branch: 124 | First:(Second:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))))) != First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01)))))))))))]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
(pop) ; 34
(push) ; 34
; [else-branch: 124 | First:(Second:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))))) == First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01)))))))))))]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
; [eval] this.right == null
(push) ; 35
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 35
; 0.00s
; (get-info :all-statistics)
(pop) ; 34
(pop) ; 33
; Joined path conditions
; Joined path conditions
(assert (or
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
(set-option :timeout 0)
(push) ; 33
(assert (not (or
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
    $Ref.null))))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(assert (or
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
    $Ref.null)))
(assert (validRest%trigger ($Snap.combine
  ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
          $Snap.unit))))) r@31@01))
; [exec]
; fold acc(valid(r), write)
(assert (valid%trigger ($Snap.combine
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
            $Snap.unit)))))
  ($Snap.combine
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))
          ($Snap.combine
            ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))
                $Snap.unit))))))
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))) r@31@01))
; [exec]
; n := r
; Loop head block: Re-establish invariant
; [eval] this.root1 != null
; [eval] n != null
(push) ; 33
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(valid(n), write) in n.root == this.root1)
(set-option :timeout 0)
(push) ; 33
; [eval] n.root == this.root1
(push) ; 34
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 34
; 0.00s
; (get-info :all-statistics)
(pop) ; 33
; Joined path conditions
(set-option :timeout 0)
(push) ; 33
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)))))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01))))
; [eval] this.root1 != null
; [eval] end ==> (unfolding acc(udParentValid(n), write) in n.parent == null)
(push) ; 33
; [then-branch: 125 | end@27@01 | dead]
; [else-branch: 125 | !(end@27@01) | live]
(push) ; 34
; [else-branch: 125 | !(end@27@01)]
(pop) ; 34
(pop) ; 33
; Joined path conditions
(pop) ; 32
(pop) ; 31
(pop) ; 30
(pop) ; 29
(pop) ; 28
; [eval] !(r.left == n)
; [eval] r.left == n
(push) ; 28
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 28
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
  n@28@01)))
(check-sat)
; unsat
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
; [then-branch: 126 | First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) != n@28@01 | dead]
; [else-branch: 126 | First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) == n@28@01 | live]
(set-option :timeout 0)
(push) ; 28
; [else-branch: 126 | First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) == n@28@01]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
  n@28@01))
(pop) ; 28
(pop) ; 27
(pop) ; 26
(pop) ; 25
(pop) ; 24
(push) ; 24
; [else-branch: 110 | !(First:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01)))))))))))]
(assert (not
  ($SortWrappers.$SnapToBool ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))))
(push) ; 25
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 25
; 0.00s
; (get-info :all-statistics)
; [then-branch: 127 | First:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01)))))))))) | dead]
; [else-branch: 127 | !(First:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) | live]
(set-option :timeout 0)
(push) ; 25
; [else-branch: 127 | !(First:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01)))))))))))]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))))
; [eval] this.leftDown ==> false
(push) ; 26
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 26
; [then-branch: 128 | First:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01)))))))))) | dead]
; [else-branch: 128 | !(First:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) | live]
(push) ; 27
; [else-branch: 128 | !(First:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01)))))))))))]
(pop) ; 27
(pop) ; 26
; Joined path conditions
(push) ; 26
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
; [then-branch: 129 | True | live]
; [else-branch: 129 | False | dead]
(set-option :timeout 0)
(push) ; 26
; [then-branch: 129 | True]
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))))))
; [eval] this.leftDown ==> false
(push) ; 27
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 27
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 27
; [then-branch: 130 | First:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01)))))))))) | dead]
; [else-branch: 130 | !(First:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) | live]
(push) ; 28
; [else-branch: 130 | !(First:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01)))))))))))]
(pop) ; 28
(pop) ; 27
; Joined path conditions
(push) ; 27
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 27
; 0.00s
; (get-info :all-statistics)
; [then-branch: 131 | True | live]
; [else-branch: 131 | False | dead]
(set-option :timeout 0)
(push) ; 27
; [then-branch: 131 | True]
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (udValid%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))) r@31@01))
; [eval] r.left == n
(set-option :timeout 0)
(push) ; 28
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 28
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
    n@28@01))))
(check-sat)
; unsat
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
; [then-branch: 132 | First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) == n@28@01 | dead]
; [else-branch: 132 | First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) != n@28@01 | live]
(set-option :timeout 0)
(push) ; 28
; [else-branch: 132 | First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) != n@28@01]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
    n@28@01)))
(pop) ; 28
; [eval] !(r.left == n)
; [eval] r.left == n
(push) ; 28
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 28
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
  n@28@01)))
(check-sat)
; unknown
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 28
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
    n@28@01))))
(check-sat)
; unsat
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
; [then-branch: 133 | First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) != n@28@01 | live]
; [else-branch: 133 | First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) == n@28@01 | dead]
(set-option :timeout 0)
(push) ; 28
; [then-branch: 133 | First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) != n@28@01]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
    n@28@01)))
; [exec]
; unfold acc(rightOpen(r), write)
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))))))
(push) ; 29
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))))))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))))))))
(set-option :timeout 0)
(push) ; 29
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))))))))
; [eval] this.right != null
(set-option :timeout 0)
(push) ; 29
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 29
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 29
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
    $Ref.null))))
(check-sat)
; unsat
(pop) ; 29
; 0.00s
; (get-info :all-statistics)
; [then-branch: 134 | First:(Second:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))))) != Null | live]
; [else-branch: 134 | First:(Second:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 29
; [then-branch: 134 | First:(Second:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
    $Ref.null)))
(push) ; 30
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 30
(set-option :timeout 10)
(assert (not (=
  n@28@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))
(check-sat)
; unsat
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))))))
  $Snap.unit))
; [eval] this.right != null ==> this.right.parent == this
; [eval] this.right != null
(set-option :timeout 0)
(push) ; 30
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 30
(push) ; 31
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
; [then-branch: 135 | First:(Second:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))))) != Null | live]
; [else-branch: 135 | First:(Second:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 31
; [then-branch: 135 | First:(Second:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))))) != Null]
; [eval] this.right.parent == this
(push) ; 32
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 32
(set-option :timeout 10)
(assert (not (=
  n@28@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))
(check-sat)
; unsat
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
(pop) ; 31
(pop) ; 30
; Joined path conditions
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
      $Ref.null))
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    r@31@01)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (rightOpen%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))) r@31@01))
; [exec]
; fold acc(rightValid(r), write)
(set-option :timeout 0)
(push) ; 30
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 30
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 30
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 30
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
; [eval] this.right != null
(set-option :timeout 0)
(push) ; 30
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 30
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
; [then-branch: 136 | First:(Second:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))))) != Null | live]
; [else-branch: 136 | First:(Second:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 30
; [then-branch: 136 | First:(Second:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))))) != Null]
(push) ; 31
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 31
(set-option :timeout 10)
(assert (not (=
  n@28@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))
(check-sat)
; unsat
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
; [eval] this.right != null
(set-option :timeout 0)
(push) ; 31
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 31
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 31
; 0.00s
; (get-info :all-statistics)
; [then-branch: 137 | First:(Second:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))))) != Null | live]
; [else-branch: 137 | First:(Second:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 31
; [then-branch: 137 | First:(Second:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))))) != Null]
(push) ; 32
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 32
(set-option :timeout 10)
(assert (not (=
  n@28@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))
(check-sat)
; unsat
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
; [eval] this.right != null ==> this.right.parent == this
; [eval] this.right != null
(set-option :timeout 0)
(push) ; 32
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 32
(push) ; 33
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
; [then-branch: 138 | First:(Second:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))))) != Null | live]
; [else-branch: 138 | First:(Second:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 33
; [then-branch: 138 | First:(Second:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))))) != Null]
; [eval] this.right.parent == this
(push) ; 34
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 34
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 34
(set-option :timeout 10)
(assert (not (=
  n@28@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))
(check-sat)
; unsat
(pop) ; 34
; 0.00s
; (get-info :all-statistics)
(pop) ; 33
(pop) ; 32
; Joined path conditions
; [eval] this.right != null
(set-option :timeout 0)
(push) ; 32
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 32
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
; [then-branch: 139 | First:(Second:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))))) != Null | live]
; [else-branch: 139 | First:(Second:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 32
; [then-branch: 139 | First:(Second:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))))) != Null]
(push) ; 33
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 33
(set-option :timeout 10)
(assert (not (=
  n@28@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
; [eval] this.right != null ==> this.right.root == this.root
; [eval] this.right != null
(set-option :timeout 0)
(push) ; 33
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 33
(push) ; 34
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 34
; 0.00s
; (get-info :all-statistics)
; [then-branch: 140 | First:(Second:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))))) != Null | live]
; [else-branch: 140 | First:(Second:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))))) == Null | dead]
(set-option :timeout 0)
(push) ; 34
; [then-branch: 140 | First:(Second:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))))) != Null]
; [eval] this.right.root == this.root
(push) ; 35
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 35
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 35
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))
(check-sat)
; unknown
(pop) ; 35
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 35
(set-option :timeout 10)
(assert (not (=
  n@28@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))
(check-sat)
; unsat
(pop) ; 35
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 35
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 35
; 0.00s
; (get-info :all-statistics)
(pop) ; 34
(pop) ; 33
; Joined path conditions
(set-option :timeout 0)
(push) ; 33
(assert (not (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
      $Ref.null))
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
      $Ref.null))
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))))
(assert (rightValid%trigger ($Snap.combine
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))
      ($Snap.combine
        ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))
            $Snap.unit)))))) r@31@01))
; [exec]
; fold acc(validRest(r), write)
(push) ; 33
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 33
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 33
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 33
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 33
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
; [eval] this.right != this.left || this.right == null
; [eval] this.right != this.left
(set-option :timeout 0)
(push) ; 33
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 33
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 33
; [then-branch: 141 | First:(Second:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))))) != First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) | live]
; [else-branch: 141 | First:(Second:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))))) == First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))) | live]
(push) ; 34
; [then-branch: 141 | First:(Second:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))))) != First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01)))))))))))]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
(pop) ; 34
(push) ; 34
; [else-branch: 141 | First:(Second:(Second:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))))))))) == First:(Second:(Second:(Second:(Second:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01)))))))))))]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
; [eval] this.right == null
(push) ; 35
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 35
; 0.00s
; (get-info :all-statistics)
(pop) ; 34
(pop) ; 33
; Joined path conditions
; Joined path conditions
(assert (or
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
(set-option :timeout 0)
(push) ; 33
(assert (not (or
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
    $Ref.null))))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(assert (or
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
    $Ref.null)))
(assert (validRest%trigger ($Snap.combine
  ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
          $Snap.unit))))) r@31@01))
; [exec]
; fold acc(valid(r), write)
(assert (valid%trigger ($Snap.combine
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
            $Snap.unit)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))
          ($Snap.combine
            ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))
                $Snap.unit)))))))) r@31@01))
; [exec]
; n := r
; Loop head block: Re-establish invariant
; [eval] this.root1 != null
; [eval] n != null
(push) ; 33
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
; [eval] (unfolding acc(valid(n), write) in n.root == this.root1)
(set-option :timeout 0)
(push) ; 33
; [eval] n.root == this.root1
(push) ; 34
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  r@31@01)))
(check-sat)
; unsat
(pop) ; 34
; 0.00s
; (get-info :all-statistics)
(pop) ; 33
; Joined path conditions
(set-option :timeout 0)
(push) ; 33
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)))))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01))))
; [eval] this.root1 != null
; [eval] end ==> (unfolding acc(udParentValid(n), write) in n.parent == null)
(push) ; 33
; [then-branch: 142 | end@27@01 | dead]
; [else-branch: 142 | !(end@27@01) | live]
(push) ; 34
; [else-branch: 142 | !(end@27@01)]
(pop) ; 34
(pop) ; 33
; Joined path conditions
(pop) ; 32
(pop) ; 31
(pop) ; 30
(pop) ; 29
(pop) ; 28
(pop) ; 27
(pop) ; 26
(pop) ; 25
(pop) ; 24
(pop) ; 23
(pop) ; 22
(pop) ; 21
(pop) ; 20
(pop) ; 19
(pop) ; 18
(push) ; 18
; [else-branch: 99 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  $Ref.null))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
; [eval] this.parent != null
; [then-branch: 143 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | dead]
; [else-branch: 143 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | live]
(push) ; 19
; [else-branch: 143 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
; [eval] this.parent != null
; [then-branch: 144 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | dead]
; [else-branch: 144 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | live]
(push) ; 20
; [else-branch: 144 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
  $Snap.unit))
; [eval] this.parent != null ==> this.parent.leftDown == (this.parent.left == this)
; [eval] this.parent != null
(push) ; 21
; [then-branch: 145 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | dead]
; [else-branch: 145 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | live]
(push) ; 22
; [else-branch: 145 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null]
(pop) ; 22
(pop) ; 21
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
; [eval] this.parent != null
; [then-branch: 146 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | dead]
; [else-branch: 146 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | live]
(push) ; 21
; [else-branch: 146 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
  $Snap.unit))
; [eval] this.parent != null ==> !this.parent.leftDown == (this.parent.right == this)
; [eval] this.parent != null
(push) ; 22
; [then-branch: 147 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | dead]
; [else-branch: 147 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | live]
(push) ; 23
; [else-branch: 147 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null]
(pop) ; 23
(pop) ; 22
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))
; [eval] this.parent != null
; [then-branch: 148 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | dead]
; [else-branch: 148 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | live]
(push) ; 22
; [else-branch: 148 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
  $Snap.unit))
; [eval] this.parent != null ==> this.root == this.parent.root
; [eval] this.parent != null
(push) ; 23
; [then-branch: 149 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | dead]
; [else-branch: 149 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | live]
(push) ; 24
; [else-branch: 149 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null]
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
  $Snap.unit))
; [eval] this.parent == null ==> this.root == this
; [eval] this.parent == null
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 150 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | live]
; [else-branch: 150 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 150 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null]
; [eval] this.root == this
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    $Ref.null)
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    n@28@01)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (udParentValid%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))) n@28@01))
; [exec]
; r := n.parent
(declare-const r@32@01 $Ref)
(assert (=
  r@32@01
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
; [eval] r == null
(set-option :timeout 0)
(push) ; 23
(set-option :timeout 10)
(assert (not (not (= r@32@01 $Ref.null))))
(check-sat)
; unknown
(pop) ; 23
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 23
(set-option :timeout 10)
(assert (not (= r@32@01 $Ref.null)))
(check-sat)
; unsat
(pop) ; 23
; 0.00s
; (get-info :all-statistics)
; [then-branch: 151 | r@32@01 == Null | live]
; [else-branch: 151 | r@32@01 != Null | dead]
(set-option :timeout 0)
(push) ; 23
; [then-branch: 151 | r@32@01 == Null]
(assert (= r@32@01 $Ref.null))
; [exec]
; end := true
; [exec]
; fold acc(udParentValid(n), write)
(push) ; 24
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [eval] this.parent != null
; [then-branch: 152 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | dead]
; [else-branch: 152 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | live]
(set-option :timeout 0)
(push) ; 24
; [else-branch: 152 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null]
; [eval] this.parent != null
; [then-branch: 153 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | dead]
; [else-branch: 153 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | live]
(push) ; 25
; [else-branch: 153 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null]
; [eval] this.parent != null
; [then-branch: 154 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | dead]
; [else-branch: 154 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | live]
(push) ; 26
; [else-branch: 154 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null]
; [eval] this.parent != null ==> this.parent.leftDown == (this.parent.left == this)
; [eval] this.parent != null
(push) ; 27
; [then-branch: 155 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | dead]
; [else-branch: 155 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | live]
(push) ; 28
; [else-branch: 155 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null]
(pop) ; 28
(pop) ; 27
; Joined path conditions
; [eval] this.parent != null
; [then-branch: 156 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | dead]
; [else-branch: 156 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | live]
(push) ; 27
; [else-branch: 156 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null]
; [eval] this.parent != null ==> !this.parent.leftDown == (this.parent.right == this)
; [eval] this.parent != null
(push) ; 28
; [then-branch: 157 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | dead]
; [else-branch: 157 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | live]
(push) ; 29
; [else-branch: 157 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null]
(pop) ; 29
(pop) ; 28
; Joined path conditions
; [eval] this.parent != null
; [then-branch: 158 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | dead]
; [else-branch: 158 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | live]
(push) ; 28
; [else-branch: 158 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null]
; [eval] this.parent != null ==> this.root == this.parent.root
; [eval] this.parent != null
(push) ; 29
; [then-branch: 159 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | dead]
; [else-branch: 159 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | live]
(push) ; 30
; [else-branch: 159 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null]
(pop) ; 30
(pop) ; 29
; Joined path conditions
; [eval] this.parent == null ==> this.root == this
; [eval] this.parent == null
(push) ; 29
(push) ; 30
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
; [then-branch: 160 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null | live]
; [else-branch: 160 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) != Null | dead]
(set-option :timeout 0)
(push) ; 30
; [then-branch: 160 | First:(First:(Second:(Second:(Second:(Second:(Second:($t@29@01))))))) == Null]
; [eval] this.root == this
(pop) ; 30
(pop) ; 29
; Joined path conditions
(assert (udParentValid%trigger ($Snap.combine
  ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine
              $Snap.unit
              ($Snap.combine
                $Snap.unit
                ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit)))))))))) n@28@01))
; Loop head block: Re-establish invariant
; [eval] this.root1 != null
; [eval] n != null
; [eval] (unfolding acc(valid(n), write) in n.root == this.root1)
(push) ; 29
; [eval] n.root == this.root1
(pop) ; 29
; Joined path conditions
; [eval] this.root1 != null
; [eval] end ==> (unfolding acc(udParentValid(n), write) in n.parent == null)
(push) ; 29
(push) ; 30
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 30
; 0.00s
; (get-info :all-statistics)
; [then-branch: 161 | True | live]
; [else-branch: 161 | False | dead]
(set-option :timeout 0)
(push) ; 30
; [then-branch: 161 | True]
; [eval] (unfolding acc(udParentValid(n), write) in n.parent == null)
(push) ; 31
(push) ; 32
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)) n@28@01)))
(check-sat)
; unsat
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@29@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
; [eval] this.parent != null
(set-option :timeout 0)
(push) ; 32
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)) n@28@01)))
(check-sat)
; unsat
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 32
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@29@01))))
  $Ref.null)))
(check-sat)
; unsat
(pop) ; 32
; 0.00s
; (get-info :all-statistics)
; [then-branch: 162 | First:(Second:(Second:($t@29@01))) != Null | dead]
; [else-branch: 162 | First:(Second:(Second:($t@29@01))) == Null | live]
(set-option :timeout 0)
(push) ; 32
; [else-branch: 162 | First:(Second:(Second:($t@29@01))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@29@01))))
  $Ref.null))
; [eval] this.parent != null
(push) ; 33
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)) n@28@01)))
(check-sat)
; unsat
(pop) ; 33
; 0.00s
; (get-info :all-statistics)
; [then-branch: 163 | First:(Second:(Second:($t@29@01))) != Null | dead]
; [else-branch: 163 | First:(Second:(Second:($t@29@01))) == Null | live]
(set-option :timeout 0)
(push) ; 33
; [else-branch: 163 | First:(Second:(Second:($t@29@01))) == Null]
; [eval] this.parent != null
(push) ; 34
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)) n@28@01)))
(check-sat)
; unsat
(pop) ; 34
; 0.00s
; (get-info :all-statistics)
; [then-branch: 164 | First:(Second:(Second:($t@29@01))) != Null | dead]
; [else-branch: 164 | First:(Second:(Second:($t@29@01))) == Null | live]
(set-option :timeout 0)
(push) ; 34
; [else-branch: 164 | First:(Second:(Second:($t@29@01))) == Null]
; [eval] this.parent != null ==> this.parent.leftDown == (this.parent.left == this)
; [eval] this.parent != null
(push) ; 35
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)) n@28@01)))
(check-sat)
; unsat
(pop) ; 35
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 35
; [then-branch: 165 | First:(Second:(Second:($t@29@01))) != Null | dead]
; [else-branch: 165 | First:(Second:(Second:($t@29@01))) == Null | live]
(push) ; 36
; [else-branch: 165 | First:(Second:(Second:($t@29@01))) == Null]
(pop) ; 36
(pop) ; 35
; Joined path conditions
; [eval] this.parent != null
(push) ; 35
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)) n@28@01)))
(check-sat)
; unsat
(pop) ; 35
; 0.00s
; (get-info :all-statistics)
; [then-branch: 166 | First:(Second:(Second:($t@29@01))) != Null | dead]
; [else-branch: 166 | First:(Second:(Second:($t@29@01))) == Null | live]
(set-option :timeout 0)
(push) ; 35
; [else-branch: 166 | First:(Second:(Second:($t@29@01))) == Null]
; [eval] this.parent != null ==> !this.parent.leftDown == (this.parent.right == this)
; [eval] this.parent != null
(push) ; 36
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)) n@28@01)))
(check-sat)
; unsat
(pop) ; 36
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 36
; [then-branch: 167 | First:(Second:(Second:($t@29@01))) != Null | dead]
; [else-branch: 167 | First:(Second:(Second:($t@29@01))) == Null | live]
(push) ; 37
; [else-branch: 167 | First:(Second:(Second:($t@29@01))) == Null]
(pop) ; 37
(pop) ; 36
; Joined path conditions
; [eval] this.parent != null
(push) ; 36
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)) n@28@01)))
(check-sat)
; unsat
(pop) ; 36
; 0.00s
; (get-info :all-statistics)
; [then-branch: 168 | First:(Second:(Second:($t@29@01))) != Null | dead]
; [else-branch: 168 | First:(Second:(Second:($t@29@01))) == Null | live]
(set-option :timeout 0)
(push) ; 36
; [else-branch: 168 | First:(Second:(Second:($t@29@01))) == Null]
; [eval] this.parent != null ==> this.root == this.parent.root
; [eval] this.parent != null
(push) ; 37
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)) n@28@01)))
(check-sat)
; unsat
(pop) ; 37
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 37
; [then-branch: 169 | First:(Second:(Second:($t@29@01))) != Null | dead]
; [else-branch: 169 | First:(Second:(Second:($t@29@01))) == Null | live]
(push) ; 38
; [else-branch: 169 | First:(Second:(Second:($t@29@01))) == Null]
(pop) ; 38
(pop) ; 37
; Joined path conditions
; [eval] this.parent == null ==> this.root == this
; [eval] this.parent == null
(push) ; 37
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)) n@28@01)))
(check-sat)
; unsat
(pop) ; 37
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 37
(push) ; 38
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@29@01))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 38
; 0.00s
; (get-info :all-statistics)
; [then-branch: 170 | First:(Second:(Second:($t@29@01))) == Null | live]
; [else-branch: 170 | First:(Second:(Second:($t@29@01))) != Null | dead]
(set-option :timeout 0)
(push) ; 38
; [then-branch: 170 | First:(Second:(Second:($t@29@01))) == Null]
; [eval] this.root == this
(pop) ; 38
(pop) ; 37
; Joined path conditions
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@29@01))))
    $Ref.null)
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    n@28@01)))
; [eval] n.parent == null
(push) ; 37
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)) n@28@01)))
(check-sat)
; unsat
(pop) ; 37
; 0.00s
; (get-info :all-statistics)
(pop) ; 36
(pop) ; 35
(pop) ; 34
(pop) ; 33
(pop) ; 32
(pop) ; 31
; Joined path conditions
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@29@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@29@01))))
    $Ref.null)
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    n@28@01)))
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@29@01))))
  $Ref.null))
(pop) ; 30
(pop) ; 29
; Joined path conditions
(assert (and
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@29@01))))
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
  (=>
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@29@01))))
      $Ref.null)
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
      n@28@01))
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@29@01))))
    $Ref.null)))
(pop) ; 28
(pop) ; 27
(pop) ; 26
(pop) ; 25
(pop) ; 24
(pop) ; 23
; [eval] !(r == null)
; [eval] r == null
(set-option :timeout 0)
(push) ; 23
(set-option :timeout 10)
(assert (not (= r@32@01 $Ref.null)))
(check-sat)
; unsat
(pop) ; 23
; 0.00s
; (get-info :all-statistics)
; [then-branch: 171 | r@32@01 != Null | dead]
; [else-branch: 171 | r@32@01 == Null | live]
(set-option :timeout 0)
(push) ; 23
; [else-branch: 171 | r@32@01 == Null]
(assert (= r@32@01 $Ref.null))
(pop) ; 23
(pop) ; 22
(pop) ; 21
(pop) ; 20
(pop) ; 19
(pop) ; 18
(pop) ; 17
(push) ; 17
; [else-branch: 98 | end@27@01]
(assert end@27@01)
(pop) ; 17
; [eval] !!end
; [eval] !end
(push) ; 17
(set-option :timeout 10)
(assert (not (not end@27@01)))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 17
(set-option :timeout 10)
(assert (not end@27@01))
(check-sat)
; unknown
(pop) ; 17
; 0.00s
; (get-info :all-statistics)
; [then-branch: 172 | end@27@01 | live]
; [else-branch: 172 | !(end@27@01) | live]
(set-option :timeout 0)
(push) ; 17
; [then-branch: 172 | end@27@01]
(assert end@27@01)
; [exec]
; unfold acc(udParentValid(n), write)
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
(push) ; 18
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)) n@28@01)))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@29@01))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
; [eval] this.parent != null
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)) n@28@01)))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 18
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@29@01))))
  $Ref.null)))
(check-sat)
; unsat
(pop) ; 18
; 0.00s
; (get-info :all-statistics)
; [then-branch: 173 | First:(Second:(Second:($t@29@01))) != Null | dead]
; [else-branch: 173 | First:(Second:(Second:($t@29@01))) == Null | live]
(set-option :timeout 0)
(push) ; 18
; [else-branch: 173 | First:(Second:(Second:($t@29@01))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@29@01))))
  $Ref.null))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
; [eval] this.parent != null
(push) ; 19
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)) n@28@01)))
(check-sat)
; unsat
(pop) ; 19
; 0.00s
; (get-info :all-statistics)
; [then-branch: 174 | First:(Second:(Second:($t@29@01))) != Null | dead]
; [else-branch: 174 | First:(Second:(Second:($t@29@01))) == Null | live]
(set-option :timeout 0)
(push) ; 19
; [else-branch: 174 | First:(Second:(Second:($t@29@01))) == Null]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
; [eval] this.parent != null
(push) ; 20
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)) n@28@01)))
(check-sat)
; unsat
(pop) ; 20
; 0.00s
; (get-info :all-statistics)
; [then-branch: 175 | First:(Second:(Second:($t@29@01))) != Null | dead]
; [else-branch: 175 | First:(Second:(Second:($t@29@01))) == Null | live]
(set-option :timeout 0)
(push) ; 20
; [else-branch: 175 | First:(Second:(Second:($t@29@01))) == Null]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
  $Snap.unit))
; [eval] this.parent != null ==> this.parent.leftDown == (this.parent.left == this)
; [eval] this.parent != null
(push) ; 21
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)) n@28@01)))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 21
; [then-branch: 176 | First:(Second:(Second:($t@29@01))) != Null | dead]
; [else-branch: 176 | First:(Second:(Second:($t@29@01))) == Null | live]
(push) ; 22
; [else-branch: 176 | First:(Second:(Second:($t@29@01))) == Null]
(pop) ; 22
(pop) ; 21
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
; [eval] this.parent != null
(push) ; 21
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)) n@28@01)))
(check-sat)
; unsat
(pop) ; 21
; 0.00s
; (get-info :all-statistics)
; [then-branch: 177 | First:(Second:(Second:($t@29@01))) != Null | dead]
; [else-branch: 177 | First:(Second:(Second:($t@29@01))) == Null | live]
(set-option :timeout 0)
(push) ; 21
; [else-branch: 177 | First:(Second:(Second:($t@29@01))) == Null]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
  $Snap.unit))
; [eval] this.parent != null ==> !this.parent.leftDown == (this.parent.right == this)
; [eval] this.parent != null
(push) ; 22
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)) n@28@01)))
(check-sat)
; unsat
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 22
; [then-branch: 178 | First:(Second:(Second:($t@29@01))) != Null | dead]
; [else-branch: 178 | First:(Second:(Second:($t@29@01))) == Null | live]
(push) ; 23
; [else-branch: 178 | First:(Second:(Second:($t@29@01))) == Null]
(pop) ; 23
(pop) ; 22
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))))
; [eval] this.parent != null
(push) ; 22
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)) n@28@01)))
(check-sat)
; unsat
(pop) ; 22
; 0.00s
; (get-info :all-statistics)
; [then-branch: 179 | First:(Second:(Second:($t@29@01))) != Null | dead]
; [else-branch: 179 | First:(Second:(Second:($t@29@01))) == Null | live]
(set-option :timeout 0)
(push) ; 22
; [else-branch: 179 | First:(Second:(Second:($t@29@01))) == Null]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))))))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
  $Snap.unit))
; [eval] this.parent != null ==> this.root == this.parent.root
; [eval] this.parent != null
(push) ; 23
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)) n@28@01)))
(check-sat)
; unsat
(pop) ; 23
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 23
; [then-branch: 180 | First:(Second:(Second:($t@29@01))) != Null | dead]
; [else-branch: 180 | First:(Second:(Second:($t@29@01))) == Null | live]
(push) ; 24
; [else-branch: 180 | First:(Second:(Second:($t@29@01))) == Null]
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))))))))))
  $Snap.unit))
; [eval] this.parent == null ==> this.root == this
; [eval] this.parent == null
(push) ; 23
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)) n@28@01)))
(check-sat)
; unsat
(pop) ; 23
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 23
(push) ; 24
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@29@01))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 181 | First:(Second:(Second:($t@29@01))) == Null | live]
; [else-branch: 181 | First:(Second:(Second:($t@29@01))) != Null | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 181 | First:(Second:(Second:($t@29@01))) == Null]
; [eval] this.root == this
(pop) ; 24
(pop) ; 23
; Joined path conditions
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@29@01))))
    $Ref.null)
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    n@28@01)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (udParentValid%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))) n@28@01))
; [exec]
; fold acc(valid1(this), write)
; [eval] this.root1 != null
(set-option :timeout 0)
(push) ; 23
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 23
; 0.00s
; (get-info :all-statistics)
; [then-branch: 182 | First:($t@29@01) != Null | live]
; [else-branch: 182 | First:($t@29@01) == Null | dead]
(set-option :timeout 0)
(push) ; 23
; [then-branch: 182 | First:($t@29@01) != Null]
(push) ; 24
(set-option :timeout 10)
(assert (not (= n@28@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)))))
(check-sat)
; unsat
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [eval] this.root1 != null
(set-option :timeout 0)
(push) ; 24
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 24
; 0.00s
; (get-info :all-statistics)
; [then-branch: 183 | First:($t@29@01) != Null | live]
; [else-branch: 183 | First:($t@29@01) == Null | dead]
(set-option :timeout 0)
(push) ; 24
; [then-branch: 183 | First:($t@29@01) != Null]
; [eval] this.root1 != null ==> this.root1.parent == null
; [eval] this.root1 != null
(push) ; 25
(push) ; 26
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
; [then-branch: 184 | First:($t@29@01) != Null | live]
; [else-branch: 184 | First:($t@29@01) == Null | dead]
(set-option :timeout 0)
(push) ; 26
; [then-branch: 184 | First:($t@29@01) != Null]
; [eval] this.root1.parent == null
(pop) ; 26
(pop) ; 25
; Joined path conditions
(push) ; 25
(assert (not (=>
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)) $Ref.null))
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@29@01))))
    $Ref.null))))
(check-sat)
; unsat
(pop) ; 25
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)) $Ref.null))
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@29@01))))
    $Ref.null)))
; [eval] this.root1 != null
(push) ; 25
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 25
; 0.00s
; (get-info :all-statistics)
; [then-branch: 185 | First:($t@29@01) != Null | live]
; [else-branch: 185 | First:($t@29@01) == Null | dead]
(set-option :timeout 0)
(push) ; 25
; [then-branch: 185 | First:($t@29@01) != Null]
(push) ; 26
(set-option :timeout 10)
(assert (not (= n@28@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)))))
(check-sat)
; unsat
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
; [eval] this.root1 != null ==> this.root1.root == this.root1
; [eval] this.root1 != null
(set-option :timeout 0)
(push) ; 26
(push) ; 27
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 27
; 0.00s
; (get-info :all-statistics)
; [then-branch: 186 | First:($t@29@01) != Null | live]
; [else-branch: 186 | First:($t@29@01) == Null | dead]
(set-option :timeout 0)
(push) ; 27
; [then-branch: 186 | First:($t@29@01) != Null]
; [eval] this.root1.root == this.root1
(push) ; 28
(set-option :timeout 10)
(assert (not (= n@28@01 ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)))))
(check-sat)
; unsat
(pop) ; 28
; 0.00s
; (get-info :all-statistics)
(pop) ; 27
(pop) ; 26
; Joined path conditions
(set-option :timeout 0)
(push) ; 26
(assert (not (=>
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)) $Ref.null))
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01))))))
(check-sat)
; unsat
(pop) ; 26
; 0.00s
; (get-info :all-statistics)
(assert (=>
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)) $Ref.null))
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01))))))))
    ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@01)))))
(assert (valid1%trigger ($Snap.combine
  ($Snap.first $t@29@01)
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second $t@29@01)))
      ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@29@01)))))))
          $Snap.unit))))) this@7@01))
(pop) ; 25
(pop) ; 24
(pop) ; 23
(pop) ; 22
(pop) ; 21
(pop) ; 20
(pop) ; 19
(pop) ; 18
(pop) ; 17
(push) ; 17
; [else-branch: 172 | !(end@27@01)]
(assert (not end@27@01))
(pop) ; 17
(pop) ; 16
(pop) ; 15
(pop) ; 14
(push) ; 14
; [else-branch: 78 | !(end@19@01)]
(assert (not end@19@01))
(pop) ; 14
(pop) ; 13
(pop) ; 12
(pop) ; 11
(pop) ; 10
(pop) ; 9
(pop) ; 8
(pop) ; 7
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(push) ; 3
; [else-branch: 5 | First:($t@10@01) == Null]
(assert (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@10@01)) $Ref.null))
(assert (= ($Snap.first ($Snap.second $t@10@01)) $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second $t@10@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@10@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@10@01))))))
; [eval] this.root1 != null
; [then-branch: 187 | First:($t@10@01) != Null | dead]
; [else-branch: 187 | First:($t@10@01) == Null | live]
(push) ; 4
; [else-branch: 187 | First:($t@10@01) == Null]
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@10@01))) $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@10@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@10@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@10@01))))
  $Snap.unit))
; [eval] this.root1 != null ==> this.root1.parent == null
; [eval] this.root1 != null
(push) ; 5
; [then-branch: 188 | First:($t@10@01) != Null | dead]
; [else-branch: 188 | First:($t@10@01) == Null | live]
(push) ; 6
; [else-branch: 188 | First:($t@10@01) == Null]
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01))))))))
; [eval] this.root1 != null
; [then-branch: 189 | First:($t@10@01) != Null | dead]
; [else-branch: 189 | First:($t@10@01) == Null | live]
(push) ; 5
; [else-branch: 189 | First:($t@10@01) == Null]
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01)))))
  $Snap.unit))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@10@01)))))
  $Snap.unit))
; [eval] this.root1 != null ==> this.root1.root == this.root1
; [eval] this.root1 != null
(push) ; 6
; [then-branch: 190 | First:($t@10@01) != Null | dead]
; [else-branch: 190 | First:($t@10@01) == Null | live]
(push) ; 7
; [else-branch: 190 | First:($t@10@01) == Null]
(pop) ; 7
(pop) ; 6
; Joined path conditions
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (valid1%trigger $t@10@01 this@7@01))
; [eval] this.root1 == null
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@10@01)) $Ref.null))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 191 | First:($t@10@01) == Null | live]
; [else-branch: 191 | First:($t@10@01) != Null | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 191 | First:($t@10@01) == Null]
; [exec]
; b := false
; [exec]
; fold acc(valid1(this), write)
; [eval] this.root1 != null
; [then-branch: 192 | First:($t@10@01) != Null | dead]
; [else-branch: 192 | First:($t@10@01) == Null | live]
(push) ; 7
; [else-branch: 192 | First:($t@10@01) == Null]
; [eval] this.root1 != null
; [then-branch: 193 | First:($t@10@01) != Null | dead]
; [else-branch: 193 | First:($t@10@01) == Null | live]
(push) ; 8
; [else-branch: 193 | First:($t@10@01) == Null]
; [eval] this.root1 != null ==> this.root1.parent == null
; [eval] this.root1 != null
(push) ; 9
; [then-branch: 194 | First:($t@10@01) != Null | dead]
; [else-branch: 194 | First:($t@10@01) == Null | live]
(push) ; 10
; [else-branch: 194 | First:($t@10@01) == Null]
(pop) ; 10
(pop) ; 9
; Joined path conditions
; [eval] this.root1 != null
; [then-branch: 195 | First:($t@10@01) != Null | dead]
; [else-branch: 195 | First:($t@10@01) == Null | live]
(push) ; 9
; [else-branch: 195 | First:($t@10@01) == Null]
; [eval] this.root1 != null ==> this.root1.root == this.root1
; [eval] this.root1 != null
(push) ; 10
; [then-branch: 196 | First:($t@10@01) != Null | dead]
; [else-branch: 196 | First:($t@10@01) == Null | live]
(push) ; 11
; [else-branch: 196 | First:($t@10@01) == Null]
(pop) ; 11
(pop) ; 10
; Joined path conditions
(assert (valid1%trigger ($Snap.combine
  ($Snap.first $t@10@01)
  ($Snap.combine
    $Snap.unit
    ($Snap.combine
      $Snap.unit
      ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))) this@7@01))
(pop) ; 9
(pop) ; 8
(pop) ; 7
(pop) ; 6
; [eval] !(this.root1 == null)
; [eval] this.root1 == null
; [then-branch: 197 | First:($t@10@01) != Null | dead]
; [else-branch: 197 | First:($t@10@01) == Null | live]
(push) ; 6
; [else-branch: 197 | First:($t@10@01) == Null]
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- init_2 ----------
(declare-const this@33@01 $Ref)
(declare-const k@34@01 Int)
(declare-const this@35@01 $Ref)
(declare-const k@36@01 Int)
(push) ; 1
(declare-const $t@37@01 $Snap)
(assert (= $t@37@01 ($Snap.combine ($Snap.first $t@37@01) ($Snap.second $t@37@01))))
(assert (not (= this@35@01 $Ref.null)))
(assert (=
  ($Snap.second $t@37@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@37@01))
    ($Snap.second ($Snap.second $t@37@01)))))
(assert (=
  ($Snap.second ($Snap.second $t@37@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@37@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@37@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@37@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@37@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@37@01)))))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@38@01 $Snap)
(pop) ; 2
(push) ; 2
; [exec]
; this.left := null
; [exec]
; this.right := null
; [exec]
; this.key := k
; [exec]
; fold acc(leftValid(this), write)
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] this.left != null
; [then-branch: 198 | False | dead]
; [else-branch: 198 | True | live]
(set-option :timeout 0)
(push) ; 3
; [else-branch: 198 | True]
; [eval] this.left != null
; [then-branch: 199 | False | dead]
; [else-branch: 199 | True | live]
(push) ; 4
; [else-branch: 199 | True]
; [eval] this.left != null ==> this.left.parent == this
; [eval] this.left != null
(push) ; 5
; [then-branch: 200 | False | dead]
; [else-branch: 200 | True | live]
(push) ; 6
; [else-branch: 200 | True]
(pop) ; 6
(pop) ; 5
; Joined path conditions
; [eval] this.left != null
; [then-branch: 201 | False | dead]
; [else-branch: 201 | True | live]
(push) ; 5
; [else-branch: 201 | True]
; [eval] this.left != null ==> this.left.root == this.root
; [eval] this.left != null
(push) ; 6
; [then-branch: 202 | False | dead]
; [else-branch: 202 | True | live]
(push) ; 7
; [else-branch: 202 | True]
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (leftValid%trigger ($Snap.combine
  ($SortWrappers.$RefTo$Snap $Ref.null)
  ($Snap.combine
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@37@01))))
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit)))))) this@35@01))
; [exec]
; fold acc(rightValid(this), write)
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] this.right != null
; [then-branch: 203 | False | dead]
; [else-branch: 203 | True | live]
(set-option :timeout 0)
(push) ; 6
; [else-branch: 203 | True]
; [eval] this.right != null
; [then-branch: 204 | False | dead]
; [else-branch: 204 | True | live]
(push) ; 7
; [else-branch: 204 | True]
; [eval] this.right != null ==> this.right.parent == this
; [eval] this.right != null
(push) ; 8
; [then-branch: 205 | False | dead]
; [else-branch: 205 | True | live]
(push) ; 9
; [else-branch: 205 | True]
(pop) ; 9
(pop) ; 8
; Joined path conditions
; [eval] this.right != null
; [then-branch: 206 | False | dead]
; [else-branch: 206 | True | live]
(push) ; 8
; [else-branch: 206 | True]
; [eval] this.right != null ==> this.right.root == this.root
; [eval] this.right != null
(push) ; 9
; [then-branch: 207 | False | dead]
; [else-branch: 207 | True | live]
(push) ; 10
; [else-branch: 207 | True]
(pop) ; 10
(pop) ; 9
; Joined path conditions
(assert (rightValid%trigger ($Snap.combine
  ($SortWrappers.$RefTo$Snap $Ref.null)
  ($Snap.combine
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@37@01))))
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        $Snap.unit
        ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit)))))) this@35@01))
; [exec]
; fold acc(validRest(this), write)
(push) ; 9
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
; [eval] this.right != this.left || this.right == null
; [eval] this.right != this.left
(set-option :timeout 0)
(push) ; 9
; [then-branch: 208 | False | live]
; [else-branch: 208 | True | live]
(push) ; 10
; [then-branch: 208 | False]
(assert false)
(pop) ; 10
(push) ; 10
; [else-branch: 208 | True]
; [eval] this.right == null
(pop) ; 10
(pop) ; 9
; Joined path conditions
; Joined path conditions
(assert (validRest%trigger ($Snap.combine
  ($SortWrappers.IntTo$Snap k@36@01)
  ($Snap.combine
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@37@01))))
    ($Snap.combine
      ($SortWrappers.$RefTo$Snap $Ref.null)
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap $Ref.null)
        ($Snap.combine
          ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@37@01))))
          $Snap.unit))))) this@35@01))
; [exec]
; fold acc(valid(this), write)
(assert (valid%trigger ($Snap.combine
  ($Snap.combine
    ($SortWrappers.IntTo$Snap k@36@01)
    ($Snap.combine
      ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@37@01))))
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap $Ref.null)
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap $Ref.null)
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@37@01))))
            $Snap.unit)))))
  ($Snap.combine
    ($Snap.combine
      ($SortWrappers.$RefTo$Snap $Ref.null)
      ($Snap.combine
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@37@01))))
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit))))))
    ($Snap.combine
      ($SortWrappers.$RefTo$Snap $Ref.null)
      ($Snap.combine
        ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@37@01))))
        ($Snap.combine
          $Snap.unit
          ($Snap.combine
            $Snap.unit
            ($Snap.combine $Snap.unit ($Snap.combine $Snap.unit $Snap.unit)))))))) this@35@01))
(pop) ; 8
(pop) ; 7
(pop) ; 6
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
