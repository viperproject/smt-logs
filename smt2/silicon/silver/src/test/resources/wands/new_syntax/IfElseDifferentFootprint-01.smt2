(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-08 21:21:28
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
(declare-fun MWSF_apply ($MWSF $Snap) $Snap)
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
; ---------- test0 ----------
(declare-const x@0@01 $Ref)
(declare-const y@1@01 $Ref)
(declare-const b@2@01 Bool)
(declare-const x@3@01 $Ref)
(declare-const y@4@01 $Ref)
(declare-const b@5@01 Bool)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@6@01 $Snap)
(assert (= $t@6@01 ($Snap.combine ($Snap.first $t@6@01) ($Snap.second $t@6@01))))
(assert (not (= x@3@01 $Ref.null)))
(push) ; 2
(set-option :timeout 10)
(assert (not (= x@3@01 y@4@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= y@4@01 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; package true --* true {
;   if (b) {
;     exhale acc(x.f, write)
;   } else {
;     exhale acc(y.f, write)}
; }
(push) ; 3
(declare-const $t@7@01 $Snap)
(assert (= $t@7@01 $Snap.unit))
(push) ; 4
(set-option :timeout 10)
(assert (not (not b@5@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not b@5@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | b@5@01 | live]
; [else-branch: 0 | !(b@5@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 0 | b@5@01]
(assert b@5@01)
; [exec]
; exhale acc(x.f, write)
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
(check-sat)
; unknown
(check-sat)
; unknown
; Create MagicWandSnapFunction for wand true --* true
(declare-const mwsf@8@01 $MWSF)
(assert (forall (($t@7@01 $Snap)) (!
  (= (MWSF_apply mwsf@8@01 $t@7@01) $Snap.unit)
  :pattern ((MWSF_apply mwsf@8@01 $t@7@01))
  :qid |quant-u-21385|)))
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [else-branch: 0 | !(b@5@01)]
(assert (not b@5@01))
(pop) ; 4
; [eval] !b
(push) ; 4
(set-option :timeout 10)
(assert (not b@5@01))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not b@5@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | !(b@5@01) | live]
; [else-branch: 1 | b@5@01 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 1 | !(b@5@01)]
(assert (not b@5@01))
; [exec]
; exhale acc(y.f, write)
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
(check-sat)
; unknown
(check-sat)
; unknown
; Create MagicWandSnapFunction for wand true --* true
(declare-const mwsf@9@01 $MWSF)
(assert (forall (($t@7@01 $Snap)) (!
  (= (MWSF_apply mwsf@9@01 $t@7@01) $Snap.unit)
  :pattern ((MWSF_apply mwsf@9@01 $t@7@01))
  :qid |quant-u-21387|)))
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
; [else-branch: 1 | b@5@01]
(assert b@5@01)
(pop) ; 4
(pop) ; 3
(push) ; 3
(assert b@5@01)
(assert (forall (($t@7@01 $Snap)) (!
  (= (MWSF_apply mwsf@8@01 $t@7@01) $Snap.unit)
  :pattern ((MWSF_apply mwsf@8@01 $t@7@01))
  :qid |quant-u-21386|)))
(assert true)
(push) ; 4
(set-option :timeout 10)
(assert (not (not b@5@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | b@5@01 | live]
; [else-branch: 2 | !(b@5@01) | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 2 | b@5@01]
; [exec]
; assert acc(y.f, write)
(push) ; 5
(set-option :timeout 10)
(assert (not (not b@5@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | b@5@01 | live]
; [else-branch: 3 | !(b@5@01) | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 3 | b@5@01]
; [exec]
; assert acc(x.f, write)
(push) ; 6
(set-option :timeout 10)
(assert (not (= y@4@01 x@3@01)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= y@4@01 x@3@01)))
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
(set-option :timeout 0)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= y@4@01 x@3@01)))
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
(set-option :timeout 0)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= y@4@01 x@3@01)))
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
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
