(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-27 02:58:52
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
(declare-const x@1@01 $Ref)
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
; package acc(P(x), write) --* true {
;   unfold acc(P(x), write)
; }
(push) ; 3
(declare-const $t@2@01 $Snap)
; [exec]
; unfold acc(P(x), write)
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
(assert (= $t@2@01 $Snap.unit))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (P%trigger $t@2@01 x@1@01))
; Create MagicWandSnapFunction for wand acc(P(x), write) --* true
(declare-const mwsf@3@01 $MWSF)
(assert (forall (($t@2@01 $Snap)) (!
  (= (MWSF_apply mwsf@3@01 $t@2@01) $Snap.unit)
  :pattern ((MWSF_apply mwsf@3@01 $t@2@01))
  :qid |quant-u-10038|)))
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
(assert (forall (($t@2@01 $Snap)) (!
  (= (MWSF_apply mwsf@3@01 $t@2@01) $Snap.unit)
  :pattern ((MWSF_apply mwsf@3@01 $t@2@01))
  :qid |quant-u-10039|)))
(assert true)
; [exec]
; assert acc(P(x), write) --* true
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test02 ----------
(declare-const x@4@01 $Ref)
(declare-const x@5@01 $Ref)
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
; package acc(P(x), write) --*
; acc(P(x), write) && (unfolding acc(P(x), write) in true) {
; }
(push) ; 3
(declare-const $t@6@01 $Snap)
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
; [eval] (unfolding acc(P(x), write) in true)
(set-option :timeout 0)
(push) ; 4
(assert (P%trigger $t@6@01 x@5@01))
(assert (= $t@6@01 $Snap.unit))
(pop) ; 4
; Joined path conditions
(assert (and (P%trigger $t@6@01 x@5@01) (= $t@6@01 $Snap.unit)))
; Create MagicWandSnapFunction for wand acc(P(x), write) --* acc(P(x), write) && (unfolding acc(P(x), write) in true)
(declare-const mwsf@7@01 $MWSF)
(assert (forall (($t@6@01 $Snap)) (!
  (= (MWSF_apply mwsf@7@01 $t@6@01) ($Snap.combine $t@6@01 $Snap.unit))
  :pattern ((MWSF_apply mwsf@7@01 $t@6@01))
  :qid |quant-u-10040|)))
(pop) ; 3
(push) ; 3
(assert (forall (($t@6@01 $Snap)) (!
  (= (MWSF_apply mwsf@7@01 $t@6@01) ($Snap.combine $t@6@01 $Snap.unit))
  :pattern ((MWSF_apply mwsf@7@01 $t@6@01))
  :qid |quant-u-10041|)))
(assert true)
; [exec]
; assert acc(P(x), write) --*
;   acc(P(x), write) && (unfolding acc(P(x), write) in true)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test03 ----------
(declare-const x@8@01 $Ref)
(declare-const y@9@01 $Ref)
(declare-const z@10@01 $Ref)
(declare-const x@11@01 $Ref)
(declare-const y@12@01 $Ref)
(declare-const z@13@01 $Ref)
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
; inhale acc(P(x), write) && (acc(P(y), write) && acc(P(z), write))
(declare-const $t@14@01 $Snap)
(assert (= $t@14@01 ($Snap.combine ($Snap.first $t@14@01) ($Snap.second $t@14@01))))
(assert (=
  ($Snap.second $t@14@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@14@01))
    ($Snap.second ($Snap.second $t@14@01)))))
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@11@01 y@12@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= y@12@01 z@13@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@11@01 z@13@01)))
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
; package acc(P(y), write) && acc(P(z), write) --*
; acc(P(z), write) && (unfolding acc(P(z), write) in true) {
;   unfold acc(P(x), write)
;   unfold acc(P(y), write)
; }
(set-option :timeout 0)
(push) ; 3
(declare-const $t@15@01 $Snap)
(assert (= $t@15@01 ($Snap.combine ($Snap.first $t@15@01) ($Snap.second $t@15@01))))
(push) ; 4
(set-option :timeout 10)
(assert (not (= y@12@01 z@13@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; unfold acc(P(x), write)
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
(assert (not (= z@13@01 x@11@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= y@12@01 x@11@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
(check-sat)
; unknown
(assert (= ($Snap.first $t@14@01) $Snap.unit))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (P%trigger ($Snap.first $t@14@01) x@11@01))
; [exec]
; unfold acc(P(y), write)
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
(assert (= ($Snap.first $t@15@01) $Snap.unit))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (P%trigger ($Snap.first $t@15@01) y@12@01))
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
; [eval] (unfolding acc(P(z), write) in true)
(set-option :timeout 0)
(push) ; 4
(assert (P%trigger ($Snap.second $t@15@01) z@13@01))
(assert (= ($Snap.second $t@15@01) $Snap.unit))
(pop) ; 4
; Joined path conditions
(assert (and
  (P%trigger ($Snap.second $t@15@01) z@13@01)
  (= ($Snap.second $t@15@01) $Snap.unit)))
; Create MagicWandSnapFunction for wand acc(P(y), write) && acc(P(z), write) --* acc(P(z), write) && (unfolding acc(P(z), write) in true)
(declare-const mwsf@16@01 $MWSF)
(assert (forall (($t@15@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@16@01 $t@15@01)
    ($Snap.combine ($Snap.second $t@15@01) $Snap.unit))
  :pattern ((MWSF_apply mwsf@16@01 $t@15@01))
  :qid |quant-u-10042|)))
(pop) ; 3
(push) ; 3
(assert (forall (($t@15@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@16@01 $t@15@01)
    ($Snap.combine ($Snap.second $t@15@01) $Snap.unit))
  :pattern ((MWSF_apply mwsf@16@01 $t@15@01))
  :qid |quant-u-10043|)))
(assert true)
; [exec]
; assert acc(P(y), write) && acc(P(z), write) --*
;   acc(P(z), write) && (unfolding acc(P(z), write) in true)
; [exec]
; assert acc(P(y), write) && acc(P(z), write)
; [exec]
; assert acc(P(x), write)
(push) ; 4
(set-option :timeout 10)
(assert (not (= z@13@01 x@11@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= y@12@01 x@11@01)))
(check-sat)
; unknown
(pop) ; 4
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
(push) ; 4
(set-option :timeout 10)
(assert (not (= z@13@01 y@12@01)))
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
    ($Snap.first ($Snap.second $t@14@01))
    ($Snap.second ($Snap.second $t@14@01))))))
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
    ($Snap.second ($Snap.second $t@14@01))
    ($Snap.first ($Snap.second $t@14@01))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= y@12@01 x@11@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= z@13@01 x@11@01)))
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
(set-option :timeout 0)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= z@13@01 y@12@01)))
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
    ($Snap.first ($Snap.second $t@14@01))
    ($Snap.second ($Snap.second $t@14@01))))))
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
    ($Snap.second ($Snap.second $t@14@01))
    ($Snap.first ($Snap.second $t@14@01))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= y@12@01 x@11@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= z@13@01 x@11@01)))
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
(set-option :timeout 0)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= y@12@01 z@13@01)))
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
    ($Snap.second ($Snap.second $t@14@01))
    ($Snap.first ($Snap.second $t@14@01))))))
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
    ($Snap.first ($Snap.second $t@14@01))
    ($Snap.second ($Snap.second $t@14@01))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= z@13@01 x@11@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= y@12@01 x@11@01)))
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
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test04 ----------
(declare-const x@17@01 $Ref)
(declare-const y@18@01 $Ref)
(declare-const x@19@01 $Ref)
(declare-const y@20@01 $Ref)
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
; inhale acc(P(y), write)
(declare-const $t@21@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; package acc(P(x), write) --*
; acc(P(x), write) && (unfolding acc(P(y), write) in true) {
; }
(set-option :timeout 0)
(push) ; 3
(declare-const $t@22@01 $Snap)
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
; [eval] (unfolding acc(P(y), write) in true)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (= x@19@01 y@20@01)))
(check-sat)
; unknown
(pop) ; 5
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
(push) ; 5
(set-option :timeout 10)
(assert (not (= x@19@01 y@20@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
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
(push) ; 5
(set-option :timeout 10)
(assert (not (= x@19@01 y@20@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
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
(push) ; 5
(set-option :timeout 10)
(assert (not (= x@19@01 y@20@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 4
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (unfolding acc(P(y), write) in true)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (= x@19@01 y@20@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
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
(push) ; 5
(set-option :timeout 10)
(assert (not (= x@19@01 y@20@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
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
(push) ; 5
(set-option :timeout 10)
(assert (not (= x@19@01 y@20@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
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
(push) ; 5
(set-option :timeout 10)
(assert (not (= x@19@01 y@20@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 4
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (unfolding acc(P(y), write) in true)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (= x@19@01 y@20@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
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
(push) ; 5
(set-option :timeout 10)
(assert (not (= x@19@01 y@20@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
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
(push) ; 5
(set-option :timeout 10)
(assert (not (= x@19@01 y@20@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
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
(push) ; 5
(set-option :timeout 10)
(assert (not (= x@19@01 y@20@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 4
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] (unfolding acc(P(y), write) in true)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (= x@19@01 y@20@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
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
(push) ; 5
(set-option :timeout 10)
(assert (not (= x@19@01 y@20@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
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
(push) ; 5
(set-option :timeout 10)
(assert (not (= x@19@01 y@20@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
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
(push) ; 5
(set-option :timeout 10)
(assert (not (= x@19@01 y@20@01)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 4
(pop) ; 3
(declare-const $t@23@01 $Snap)
(declare-const $t@24@01 $Snap)
; Create MagicWandSnapFunction for wand acc(P(x), write) --* acc(P(x), write) && (unfolding acc(P(y), write) in true)
(declare-const mwsf@25@01 $MWSF)
(assert (forall (($t@23@01 $Snap)) (!
  (= (MWSF_apply mwsf@25@01 $t@23@01) $t@24@01)
  :pattern ((MWSF_apply mwsf@25@01 $t@23@01))
  :qid |quant-u-10044|)))
(pop) ; 2
(pop) ; 1
