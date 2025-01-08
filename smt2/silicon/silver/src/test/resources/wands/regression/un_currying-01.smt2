(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-08 21:21:08
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
(declare-fun P%trigger ($Snap) Bool)
(declare-fun Q%trigger ($Snap) Bool)
(declare-fun R%trigger ($Snap) Bool)
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
; ---------- uncurry ----------
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
; inhale acc(P(), write) --* acc(Q(), write) --* acc(R(), write)
(declare-const $t@0@01 $MWSF)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; package acc(P(), write) && acc(Q(), write) --* acc(R(), write) {
;   apply acc(P(), write) --* acc(Q(), write) --* acc(R(), write)
;   apply acc(Q(), write) --* acc(R(), write)
; }
(set-option :timeout 0)
(push) ; 3
(declare-const $t@1@01 $Snap)
(assert (= $t@1@01 ($Snap.combine ($Snap.first $t@1@01) ($Snap.second $t@1@01))))
; [exec]
; apply acc(P(), write) --* acc(Q(), write) --* acc(R(), write)
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
(check-sat)
; unknown
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
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
; [exec]
; apply acc(Q(), write) --* acc(R(), write)
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
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
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
; Create MagicWandSnapFunction for wand acc(P(), write) && acc(Q(), write) --* acc(R(), write)
(declare-const mwsf@2@01 $MWSF)
(assert (forall (($t@1@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@2@01 $t@1@01)
    (MWSF_apply ($SortWrappers.$SnapTo$MWSF (MWSF_apply $t@0@01 ($Snap.first $t@1@01))) ($Snap.second $t@1@01)))
  :pattern ((MWSF_apply mwsf@2@01 $t@1@01))
  :qid |quant-u-20016|)))
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
(assert (forall (($t@1@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@2@01 $t@1@01)
    (MWSF_apply ($SortWrappers.$SnapTo$MWSF (MWSF_apply $t@0@01 ($Snap.first $t@1@01))) ($Snap.second $t@1@01)))
  :pattern ((MWSF_apply mwsf@2@01 $t@1@01))
  :qid |quant-u-20017|)))
(assert true)
; [exec]
; exhale acc(P(), write) && acc(Q(), write) --* acc(R(), write)
; [exec]
; assert false
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- curry ----------
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
; inhale acc(P(), write) && acc(Q(), write) --* acc(R(), write)
(declare-const $t@3@01 $MWSF)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; package acc(P(), write) --* acc(Q(), write) --* acc(R(), write) {
;   package acc(Q(), write) --* acc(R(), write) {
;     apply acc(P(), write) && acc(Q(), write) --* acc(R(), write)
;   }
; }
(set-option :timeout 0)
(push) ; 3
(declare-const $t@4@01 $Snap)
; [exec]
; package acc(Q(), write) --* acc(R(), write) {
;   apply acc(P(), write) && acc(Q(), write) --* acc(R(), write)
; }
(push) ; 4
(declare-const $t@5@01 $Snap)
; [exec]
; apply acc(P(), write) && acc(Q(), write) --* acc(R(), write)
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
(check-sat)
; unknown
(check-sat)
; unknown
(set-option :timeout 0)
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
(check-sat)
; unknown
(set-option :timeout 0)
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
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
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
; Create MagicWandSnapFunction for wand acc(Q(), write) --* acc(R(), write)
(declare-const mwsf@6@01 $MWSF)
(assert (forall (($t@5@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@6@01 $t@5@01)
    (MWSF_apply $t@3@01 ($Snap.combine $t@4@01 $t@5@01)))
  :pattern ((MWSF_apply mwsf@6@01 $t@5@01))
  :qid |quant-u-20018|)))
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
(assert (forall (($t@5@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@6@01 $t@5@01)
    (MWSF_apply $t@3@01 ($Snap.combine $t@4@01 $t@5@01)))
  :pattern ((MWSF_apply mwsf@6@01 $t@5@01))
  :qid |quant-u-20019|)))
(assert true)
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
; Create MagicWandSnapFunction for wand acc(P(), write) --* acc(Q(), write) --* acc(R(), write)
(declare-const mwsf@7@01 $MWSF)
(assert (forall (($t@4@01 $Snap)) (!
  (= (MWSF_apply mwsf@7@01 $t@4@01) ($SortWrappers.$MWSFTo$Snap mwsf@6@01))
  :pattern ((MWSF_apply mwsf@7@01 $t@4@01))
  :qid |quant-u-20020|)))
(pop) ; 4
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
(assert (forall (($t@4@01 $Snap)) (!
  (and
    (forall (($t@5@01 $Snap)) (!
      (=
        (MWSF_apply mwsf@6@01 $t@5@01)
        (MWSF_apply $t@3@01 ($Snap.combine $t@4@01 $t@5@01)))
      :pattern ((MWSF_apply mwsf@6@01 $t@5@01))
      :qid |quant-u-20018|))
    (= (MWSF_apply mwsf@7@01 $t@4@01) ($SortWrappers.$MWSFTo$Snap mwsf@6@01)))
  :pattern ((MWSF_apply mwsf@7@01 $t@4@01))
  :qid |quant-u-20021|)))
(assert true)
; [exec]
; exhale acc(P(), write) --* acc(Q(), write) --* acc(R(), write)
; [exec]
; assert false
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- curry_test01 ----------
(declare-const x@8@01 $Ref)
(declare-const x@9@01 $Ref)
(push) ; 1
(declare-const $t@10@01 $MWSF)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@11@01 $MWSF)
(pop) ; 2
(push) ; 2
; [exec]
; inhale acc(P(), write)
(declare-const $t@12@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; apply acc(P(), write) && acc(Q(), write) --* acc(R(), write)
(set-option :timeout 0)
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
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
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
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
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
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 2
(pop) ; 1
; ---------- curry_test02 ----------
(declare-const x@13@01 $Ref)
(declare-const x@14@01 $Ref)
(push) ; 1
(declare-const $t@15@01 $MWSF)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@16@01 $MWSF)
(pop) ; 2
(push) ; 2
; [exec]
; inhale acc(P(), write)
(declare-const $t@17@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; package acc(Q(), write) --* acc(R(), write) {
;   apply acc(P(), write) && acc(Q(), write) --* acc(R(), write)
; }
(set-option :timeout 0)
(push) ; 3
(declare-const $t@18@01 $Snap)
; [exec]
; apply acc(P(), write) && acc(Q(), write) --* acc(R(), write)
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
(check-sat)
; unknown
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
(check-sat)
; unknown
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
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
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
; Create MagicWandSnapFunction for wand acc(Q(), write) --* acc(R(), write)
(declare-const mwsf@19@01 $MWSF)
(assert (forall (($t@18@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@19@01 $t@18@01)
    (MWSF_apply $t@15@01 ($Snap.combine $t@17@01 $t@18@01)))
  :pattern ((MWSF_apply mwsf@19@01 $t@18@01))
  :qid |quant-u-20022|)))
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
(assert (forall (($t@18@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@19@01 $t@18@01)
    (MWSF_apply $t@15@01 ($Snap.combine $t@17@01 $t@18@01)))
  :pattern ((MWSF_apply mwsf@19@01 $t@18@01))
  :qid |quant-u-20023|)))
(assert true)
; [exec]
; exhale acc(P(), write)
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
; ---------- curry_test03 ----------
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
; inhale acc(R(), write)
(declare-const $t@20@01 $Snap)
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; inhale true --* acc(R(), write)
(declare-const $t@21@01 $MWSF)
; State saturation: after inhale
(check-sat)
; unknown
; [exec]
; package true --* true {
;   package true --* acc(R(), write) {
;     apply true --* acc(R(), write)
;   }
; }
(set-option :timeout 0)
(push) ; 3
(declare-const $t@22@01 $Snap)
(assert (= $t@22@01 $Snap.unit))
; [exec]
; package true --* acc(R(), write) {
;   apply true --* acc(R(), write)
; }
(push) ; 4
(declare-const $t@23@01 $Snap)
(assert (= $t@23@01 $Snap.unit))
; [exec]
; apply true --* acc(R(), write)
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
(check-sat)
; unknown
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
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
; Create MagicWandSnapFunction for wand true --* acc(R(), write)
(declare-const mwsf@24@01 $MWSF)
(assert (forall (($t@23@01 $Snap)) (!
  (= (MWSF_apply mwsf@24@01 $t@23@01) (MWSF_apply $t@21@01 $Snap.unit))
  :pattern ((MWSF_apply mwsf@24@01 $t@23@01))
  :qid |quant-u-20024|)))
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
(assert (forall (($t@23@01 $Snap)) (!
  (= (MWSF_apply mwsf@24@01 $t@23@01) (MWSF_apply $t@21@01 $Snap.unit))
  :pattern ((MWSF_apply mwsf@24@01 $t@23@01))
  :qid |quant-u-20025|)))
(assert true)
; Create MagicWandSnapFunction for wand true --* true
(declare-const mwsf@25@01 $MWSF)
(assert (forall (($t@22@01 $Snap)) (!
  (= (MWSF_apply mwsf@25@01 $t@22@01) $Snap.unit)
  :pattern ((MWSF_apply mwsf@25@01 $t@22@01))
  :qid |quant-u-20026|)))
(pop) ; 4
(pop) ; 3
(push) ; 3
(assert (forall (($t@22@01 $Snap)) (!
  (= (MWSF_apply mwsf@25@01 $t@22@01) $Snap.unit)
  :pattern ((MWSF_apply mwsf@25@01 $t@22@01))
  :qid |quant-u-20027|)))
(assert true)
(assert (forall (($t@23@01 $Snap)) (!
  (= (MWSF_apply mwsf@24@01 $t@23@01) (MWSF_apply $t@21@01 $Snap.unit))
  :pattern ((MWSF_apply mwsf@24@01 $t@23@01))
  :qid |quant-u-20024|)))
; [exec]
; exhale true --* true
; [exec]
; exhale acc(R(), write)
; [exec]
; assert false
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(check-sat)
; unknown
(pop) ; 3
(pop) ; 2
(pop) ; 1
