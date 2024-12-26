(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 19:36:34
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
; ---------- test01 ----------
(declare-const x@0@01 $Ref)
(declare-const x@1@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@2@01 $Snap)
(assert (= $t@2@01 ($Snap.combine ($Snap.first $t@2@01) ($Snap.second $t@2@01))))
(assert (not (= x@1@01 $Ref.null)))
(assert (= ($Snap.second $t@2@01) $Snap.unit))
; [eval] x.f == 3
(assert (= ($SortWrappers.$SnapToInt ($Snap.first $t@2@01)) 3))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; package acc(x.f, 1 / 2) && x.f == 2 --* acc(x.f, write) && false {
; }
(push) ; 3
(declare-const $t@3@01 $Snap)
(assert (= $t@3@01 ($Snap.combine ($Snap.first $t@3@01) ($Snap.second $t@3@01))))
(assert (= ($Snap.second $t@3@01) $Snap.unit))
; [eval] x.f == 2
(assert (= ($SortWrappers.$SnapToInt ($Snap.first $t@3@01)) 2))
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
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
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
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first $t@3@01))
  ($SortWrappers.$SnapToInt ($Snap.first $t@2@01))))
(check-sat)
; unsat
(set-option :timeout 0)
(push) ; 4
(assert (not false))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert false)
; Create MagicWandSnapFunction for wand acc(x.f, 1 / 2) && x.f == 2 --* acc(x.f, write) && false
(declare-const mwsf@4@01 $MWSF)
(assert (forall (($t@3@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@4@01 $t@3@01)
    ($Snap.combine ($Snap.first $t@2@01) $Snap.unit))
  :pattern ((MWSF_apply mwsf@4@01 $t@3@01))
  :qid |quant-u-20002|)))
(pop) ; 3
(push) ; 3
(assert (forall (($t@3@01 $Snap)) (!
  (and
    (=
      ($SortWrappers.$SnapToInt ($Snap.first $t@3@01))
      ($SortWrappers.$SnapToInt ($Snap.first $t@2@01)))
    (=
      (MWSF_apply mwsf@4@01 $t@3@01)
      ($Snap.combine ($Snap.first $t@2@01) $Snap.unit)))
  :pattern ((MWSF_apply mwsf@4@01 $t@3@01))
  :qid |quant-u-20003|)))
; [exec]
; apply acc(x.f, 1 / 2) && x.f == 2 --* acc(x.f, write) && false
; [eval] x.f == 2
(push) ; 4
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first $t@2@01)) 2)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] x.f == 2
(set-option :timeout 0)
(push) ; 4
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first $t@2@01)) 2)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] x.f == 2
(set-option :timeout 0)
(push) ; 4
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first $t@2@01)) 2)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] x.f == 2
(set-option :timeout 0)
(push) ; 4
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first $t@2@01)) 2)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test02 ----------
(declare-const x@5@01 $Ref)
(declare-const x@6@01 $Ref)
(push) ; 1
(declare-const $t@7@01 Int)
(assert (not (= x@6@01 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; package acc(x.f, 1 / 2) --* acc(x.f, 1 / 2) && acc(x.f, 1 / 2) {
; }
(push) ; 3
(declare-const $t@8@01 $Snap)
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
(assert (= ($SortWrappers.$SnapToInt $t@8@01) $t@7@01))
; Create MagicWandSnapFunction for wand acc(x.f, 1 / 2) --* acc(x.f, 1 / 2) && acc(x.f, 1 / 2)
(declare-const mwsf@9@01 $MWSF)
(assert (forall (($t@8@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@9@01 $t@8@01)
    ($Snap.combine $t@8@01 ($SortWrappers.IntTo$Snap $t@7@01)))
  :pattern ((MWSF_apply mwsf@9@01 $t@8@01))
  :qid |quant-u-20004|)))
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
(assert (forall (($t@8@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@9@01 $t@8@01)
    ($Snap.combine $t@8@01 ($SortWrappers.IntTo$Snap $t@7@01)))
  :pattern ((MWSF_apply mwsf@9@01 $t@8@01))
  :qid |quant-u-20005|)))
(assert true)
; [exec]
; apply acc(x.f, 1 / 2) --* acc(x.f, 1 / 2) && acc(x.f, 1 / 2)
(assert (=
  (MWSF_apply mwsf@9@01 ($SortWrappers.IntTo$Snap $t@7@01))
  ($Snap.combine
    ($Snap.first (MWSF_apply mwsf@9@01 ($SortWrappers.IntTo$Snap $t@7@01)))
    ($Snap.second (MWSF_apply mwsf@9@01 ($SortWrappers.IntTo$Snap $t@7@01))))))
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first (MWSF_apply mwsf@9@01 ($SortWrappers.IntTo$Snap $t@7@01))))
  ($SortWrappers.$SnapToInt ($Snap.second (MWSF_apply mwsf@9@01 ($SortWrappers.IntTo$Snap $t@7@01))))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [exec]
; exhale acc(x.f, write)
; [exec]
; assert false
(set-option :timeout 0)
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
; ---------- test03 ----------
(declare-const x@10@01 $Ref)
(declare-const x@11@01 $Ref)
(push) ; 1
(declare-const $t@12@01 $Snap)
(assert (= $t@12@01 ($Snap.combine ($Snap.first $t@12@01) ($Snap.second $t@12@01))))
(assert (not (= x@11@01 $Ref.null)))
(assert (= ($Snap.second $t@12@01) $Snap.unit))
; [eval] x.f == 2
(assert (= ($SortWrappers.$SnapToInt ($Snap.first $t@12@01)) 2))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; package acc(x.f, 1 / 3) && x.f == 2 --* acc(x.f, write) {
; }
(push) ; 3
(declare-const $t@13@01 $Snap)
(assert (= $t@13@01 ($Snap.combine ($Snap.first $t@13@01) ($Snap.second $t@13@01))))
(assert (= ($Snap.second $t@13@01) $Snap.unit))
; [eval] x.f == 2
(assert (= ($SortWrappers.$SnapToInt ($Snap.first $t@13@01)) 2))
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
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first $t@13@01))
  ($SortWrappers.$SnapToInt ($Snap.first $t@12@01))))
(set-option :timeout 10)
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
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 10)
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
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 10)
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
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 3
(declare-const $t@14@01 $Snap)
(declare-const $t@15@01 $Snap)
; Create MagicWandSnapFunction for wand acc(x.f, 1 / 3) && x.f == 2 --* acc(x.f, write)
(declare-const mwsf@16@01 $MWSF)
(assert (forall (($t@14@01 $Snap)) (!
  (= (MWSF_apply mwsf@16@01 $t@14@01) $t@15@01)
  :pattern ((MWSF_apply mwsf@16@01 $t@14@01))
  :qid |quant-u-20006|)))
(pop) ; 2
(pop) ; 1
; ---------- test04 ----------
(declare-const x@17@01 $Ref)
(declare-const x@18@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@19@01 $Snap)
(assert (= $t@19@01 ($Snap.combine ($Snap.first $t@19@01) ($Snap.second $t@19@01))))
(assert (not (= x@18@01 $Ref.null)))
(assert (= ($Snap.second $t@19@01) $Snap.unit))
; [eval] x.f == 3
(assert (= ($SortWrappers.$SnapToInt ($Snap.first $t@19@01)) 3))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; package acc(x.f, 1 / 3) && x.f == 2 --* acc(x.f, write) {
; }
(push) ; 3
(declare-const $t@20@01 $Snap)
(assert (= $t@20@01 ($Snap.combine ($Snap.first $t@20@01) ($Snap.second $t@20@01))))
(assert (= ($Snap.second $t@20@01) $Snap.unit))
; [eval] x.f == 2
(assert (= ($SortWrappers.$SnapToInt ($Snap.first $t@20@01)) 2))
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
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first $t@20@01))
  ($SortWrappers.$SnapToInt ($Snap.first $t@19@01))))
(set-option :timeout 10)
(check-sat)
; unsat
; Create MagicWandSnapFunction for wand acc(x.f, 1 / 3) && x.f == 2 --* acc(x.f, write)
(declare-const mwsf@21@01 $MWSF)
(assert (forall (($t@20@01 $Snap)) (!
  (= (MWSF_apply mwsf@21@01 $t@20@01) ($Snap.first $t@19@01))
  :pattern ((MWSF_apply mwsf@21@01 $t@20@01))
  :qid |quant-u-20008|)))
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
(assert (forall (($t@20@01 $Snap)) (!
  (and
    (=
      ($SortWrappers.$SnapToInt ($Snap.first $t@20@01))
      ($SortWrappers.$SnapToInt ($Snap.first $t@19@01)))
    (= (MWSF_apply mwsf@21@01 $t@20@01) ($Snap.first $t@19@01)))
  :pattern ((MWSF_apply mwsf@21@01 $t@20@01))
  :qid |quant-u-20009|)))
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