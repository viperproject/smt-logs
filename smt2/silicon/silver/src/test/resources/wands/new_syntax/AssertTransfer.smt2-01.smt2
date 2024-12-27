(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 01:57:00
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
(declare-const x@1@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@2@01 $Snap)
(assert (= $t@2@01 ($Snap.combine ($Snap.first $t@2@01) ($Snap.second $t@2@01))))
(assert (not (= x@1@01 $Ref.null)))
(assert (= ($Snap.second $t@2@01) $Snap.unit))
; [eval] x.f == 0
(assert (= ($SortWrappers.$SnapToInt ($Snap.first $t@2@01)) 0))
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
;   assert x.f == 0
; }
(push) ; 3
(declare-const $t@3@01 $Snap)
(assert (= $t@3@01 $Snap.unit))
; [exec]
; assert x.f == 0
; [eval] x.f == 0
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
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] x.f == 0
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
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] x.f == 0
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
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [eval] x.f == 0
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
(declare-const $t@4@01 $Snap)
(declare-const $t@5@01 $Snap)
; Create MagicWandSnapFunction for wand true --* true
(declare-const mwsf@6@01 $MWSF)
(assert (forall (($t@4@01 $Snap)) (!
  (= (MWSF_apply mwsf@6@01 $t@4@01) $t@5@01)
  :pattern ((MWSF_apply mwsf@6@01 $t@4@01))
  :qid |quant-u-21529|)))
(pop) ; 2
(pop) ; 1
; ---------- test1 ----------
(declare-const x@7@01 $Ref)
(declare-const x@8@01 $Ref)
(push) ; 1
(declare-const $t@9@01 $Snap)
(assert (= $t@9@01 ($Snap.combine ($Snap.first $t@9@01) ($Snap.second $t@9@01))))
(assert (not (= x@8@01 $Ref.null)))
(assert (= ($Snap.second $t@9@01) $Snap.unit))
; [eval] x.f == 0
(assert (= ($SortWrappers.$SnapToInt ($Snap.first $t@9@01)) 0))
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
;   assert acc(x.f, write)
;   assert x.f == 0
; }
(push) ; 3
(declare-const $t@10@01 $Snap)
(assert (= $t@10@01 $Snap.unit))
; [exec]
; assert acc(x.f, write)
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
; [exec]
; assert x.f == 0
; [eval] x.f == 0
; Create MagicWandSnapFunction for wand true --* true
(declare-const mwsf@11@01 $MWSF)
(assert (forall (($t@10@01 $Snap)) (!
  (= (MWSF_apply mwsf@11@01 $t@10@01) $Snap.unit)
  :pattern ((MWSF_apply mwsf@11@01 $t@10@01))
  :qid |quant-u-21531|)))
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
(assert (forall (($t@10@01 $Snap)) (!
  (= (MWSF_apply mwsf@11@01 $t@10@01) $Snap.unit)
  :pattern ((MWSF_apply mwsf@11@01 $t@10@01))
  :qid |quant-u-21532|)))
(assert true)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test2 ----------
(declare-const x@12@01 $Ref)
(declare-const x@13@01 $Ref)
(push) ; 1
(declare-const $t@14@01 $Snap)
(assert (= $t@14@01 ($Snap.combine ($Snap.first $t@14@01) ($Snap.second $t@14@01))))
(assert (not (= x@13@01 $Ref.null)))
(assert (= ($Snap.second $t@14@01) $Snap.unit))
; [eval] x.f == 0
(assert (= ($SortWrappers.$SnapToInt ($Snap.first $t@14@01)) 0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; package acc(x.f, 1 / 2) && x.f == 2 --* true {
;   assert acc(x.f, write) && false
; }
(push) ; 3
(declare-const $t@15@01 $Snap)
(assert (= $t@15@01 ($Snap.combine ($Snap.first $t@15@01) ($Snap.second $t@15@01))))
(assert (= ($Snap.second $t@15@01) $Snap.unit))
; [eval] x.f == 2
(assert (= ($SortWrappers.$SnapToInt ($Snap.first $t@15@01)) 2))
; [exec]
; assert acc(x.f, write) && false
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
  ($SortWrappers.$SnapToInt ($Snap.first $t@15@01))
  ($SortWrappers.$SnapToInt ($Snap.first $t@14@01))))
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
; Create MagicWandSnapFunction for wand acc(x.f, 1 / 2) && x.f == 2 --* true
(declare-const mwsf@16@01 $MWSF)
(assert (forall (($t@15@01 $Snap)) (!
  (= (MWSF_apply mwsf@16@01 $t@15@01) $Snap.unit)
  :pattern ((MWSF_apply mwsf@16@01 $t@15@01))
  :qid |quant-u-21533|)))
(pop) ; 3
(push) ; 3
(assert (forall (($t@15@01 $Snap)) (!
  (and
    (=
      ($SortWrappers.$SnapToInt ($Snap.first $t@15@01))
      ($SortWrappers.$SnapToInt ($Snap.first $t@14@01)))
    (= (MWSF_apply mwsf@16@01 $t@15@01) $Snap.unit))
  :pattern ((MWSF_apply mwsf@16@01 $t@15@01))
  :qid |quant-u-21534|)))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test3 ----------
(declare-const x@17@01 $Ref)
(declare-const x@18@01 $Ref)
(push) ; 1
(declare-const $t@19@01 $Snap)
(assert (= $t@19@01 ($Snap.combine ($Snap.first $t@19@01) ($Snap.second $t@19@01))))
(assert (not (= x@18@01 $Ref.null)))
; [eval] x.f == 0
(push) ; 2
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapToInt ($Snap.first $t@19@01)) 0))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first $t@19@01)) 0)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | First:($t@19@01) == 0 | live]
; [else-branch: 0 | First:($t@19@01) != 0 | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 0 | First:($t@19@01) == 0]
(assert (= ($SortWrappers.$SnapToInt ($Snap.first $t@19@01)) 0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
(push) ; 3
; [exec]
; package true --* true {
;   assert acc(x.f, write) && (x.f == 0 ==> acc(x.g, write))
;   if (x.f == 0) {
;     if (x.g == 0) {
;     }
;   } elseif (x.g == 0) {
;   }
; }
(push) ; 4
(declare-const $t@20@01 $Snap)
(assert (= $t@20@01 $Snap.unit))
; [exec]
; assert acc(x.f, write) && (x.f == 0 ==> acc(x.g, write))
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
; [eval] x.f == 0
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapToInt ($Snap.first $t@19@01)) 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | First:($t@19@01) == 0 | live]
; [else-branch: 1 | First:($t@19@01) != 0 | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 1 | First:($t@19@01) == 0]
(push) ; 6
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
(check-sat)
; unknown
(check-sat)
; unknown
; [eval] x.f == 0
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapToInt ($Snap.first $t@19@01)) 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | First:($t@19@01) == 0 | live]
; [else-branch: 2 | First:($t@19@01) != 0 | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 2 | First:($t@19@01) == 0]
; [eval] !(x.g == 0)
; [eval] x.g == 0
(push) ; 7
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.second $t@19@01)) 0)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapToInt ($Snap.second $t@19@01)) 0))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | Second:($t@19@01) != 0 | live]
; [else-branch: 3 | Second:($t@19@01) == 0 | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 3 | Second:($t@19@01) != 0]
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.second $t@19@01)) 0)))
; Create MagicWandSnapFunction for wand true --* true
(declare-const mwsf@21@01 $MWSF)
(assert (forall (($t@20@01 $Snap)) (!
  (= (MWSF_apply mwsf@21@01 $t@20@01) $Snap.unit)
  :pattern ((MWSF_apply mwsf@21@01 $t@20@01))
  :qid |quant-u-21535|)))
(pop) ; 7
(push) ; 7
; [else-branch: 3 | Second:($t@19@01) == 0]
(assert (= ($SortWrappers.$SnapToInt ($Snap.second $t@19@01)) 0))
(pop) ; 7
; [eval] x.g == 0
(push) ; 7
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapToInt ($Snap.second $t@19@01)) 0))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.second $t@19@01)) 0)))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [then-branch: 4 | Second:($t@19@01) == 0 | live]
; [else-branch: 4 | Second:($t@19@01) != 0 | live]
(set-option :timeout 0)
(push) ; 7
; [then-branch: 4 | Second:($t@19@01) == 0]
(assert (= ($SortWrappers.$SnapToInt ($Snap.second $t@19@01)) 0))
; Create MagicWandSnapFunction for wand true --* true
(declare-const mwsf@22@01 $MWSF)
(assert (forall (($t@20@01 $Snap)) (!
  (= (MWSF_apply mwsf@22@01 $t@20@01) $Snap.unit)
  :pattern ((MWSF_apply mwsf@22@01 $t@20@01))
  :qid |quant-u-21537|)))
(pop) ; 7
(push) ; 7
; [else-branch: 4 | Second:($t@19@01) != 0]
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.second $t@19@01)) 0)))
(pop) ; 7
(pop) ; 6
; [eval] !(x.f == 0)
; [eval] x.f == 0
; [then-branch: 5 | First:($t@19@01) != 0 | dead]
; [else-branch: 5 | First:($t@19@01) == 0 | live]
(push) ; 6
; [else-branch: 5 | First:($t@19@01) == 0]
(pop) ; 6
(pop) ; 5
(pop) ; 4
(push) ; 4
(assert (and
  (not (= ($SortWrappers.$SnapToInt ($Snap.second $t@19@01)) 0))
  (= ($SortWrappers.$SnapToInt ($Snap.first $t@19@01)) 0)))
(assert (forall (($t@20@01 $Snap)) (!
  (= (MWSF_apply mwsf@21@01 $t@20@01) $Snap.unit)
  :pattern ((MWSF_apply mwsf@21@01 $t@20@01))
  :qid |quant-u-21536|)))
(assert true)
(pop) ; 4
(push) ; 4
(assert (and
  (= ($SortWrappers.$SnapToInt ($Snap.second $t@19@01)) 0)
  (= ($SortWrappers.$SnapToInt ($Snap.first $t@19@01)) 0)))
(assert (forall (($t@20@01 $Snap)) (!
  (= (MWSF_apply mwsf@22@01 $t@20@01) $Snap.unit)
  :pattern ((MWSF_apply mwsf@22@01 $t@20@01))
  :qid |quant-u-21538|)))
(assert true)
(pop) ; 4
(pop) ; 3
(pop) ; 2
(push) ; 2
; [else-branch: 0 | First:($t@19@01) != 0]
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first $t@19@01)) 0)))
(assert (= ($Snap.second $t@19@01) $Snap.unit))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
(push) ; 3
; [exec]
; package true --* true {
;   assert acc(x.f, write) && (x.f == 0 ==> acc(x.g, write))
;   if (x.f == 0) {
;     if (x.g == 0) {
;     }
;   } elseif (x.g == 0) {
;   }
; }
(push) ; 4
(declare-const $t@23@01 $Snap)
(assert (= $t@23@01 $Snap.unit))
; [exec]
; assert acc(x.f, write) && (x.f == 0 ==> acc(x.g, write))
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
; [eval] x.f == 0
; [then-branch: 6 | First:($t@19@01) == 0 | dead]
; [else-branch: 6 | First:($t@19@01) != 0 | live]
(set-option :timeout 0)
(push) ; 5
; [else-branch: 6 | First:($t@19@01) != 0]
; [eval] x.f == 0
; [then-branch: 7 | First:($t@19@01) == 0 | dead]
; [else-branch: 7 | First:($t@19@01) != 0 | live]
(push) ; 6
; [else-branch: 7 | First:($t@19@01) != 0]
(pop) ; 6
; [eval] !(x.f == 0)
; [eval] x.f == 0
(push) ; 6
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first $t@19@01)) 0)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 8 | First:($t@19@01) != 0 | live]
; [else-branch: 8 | First:($t@19@01) == 0 | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 8 | First:($t@19@01) != 0]
; [eval] !(x.g == 0)
; [eval] x.g == 0
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
(pop) ; 6
(pop) ; 5
(pop) ; 4
(declare-const $t@24@01 $Snap)
(declare-const $t@25@01 $Snap)
; Create MagicWandSnapFunction for wand true --* true
(declare-const mwsf@26@01 $MWSF)
(assert (forall (($t@24@01 $Snap)) (!
  (= (MWSF_apply mwsf@26@01 $t@24@01) $t@25@01)
  :pattern ((MWSF_apply mwsf@26@01 $t@24@01))
  :qid |quant-u-21539|)))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test4 ----------
(declare-const x@27@01 $Ref)
(declare-const x@28@01 $Ref)
(push) ; 1
(declare-const $t@29@01 $Snap)
(assert (= $t@29@01 ($Snap.combine ($Snap.first $t@29@01) ($Snap.second $t@29@01))))
(assert (not (= x@28@01 $Ref.null)))
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
;   assert acc(x.f, write) && (x.f == 0 ==> acc(x.g, write))
;   if (x.f == 0) {
;     if (x.g == 0) {
;     }
;   } elseif (x.g == 0) {
;   }
; }
(push) ; 3
(declare-const $t@30@01 $Snap)
(assert (= $t@30@01 $Snap.unit))
; [exec]
; assert acc(x.f, write) && (x.f == 0 ==> acc(x.g, write))
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
; [eval] x.f == 0
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapToInt ($Snap.first $t@29@01)) 0))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first $t@29@01)) 0)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 9 | First:($t@29@01) == 0 | live]
; [else-branch: 9 | First:($t@29@01) != 0 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 9 | First:($t@29@01) == 0]
(assert (= ($SortWrappers.$SnapToInt ($Snap.first $t@29@01)) 0))
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
; [eval] x.f == 0
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapToInt ($Snap.first $t@29@01)) 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 10 | First:($t@29@01) == 0 | live]
; [else-branch: 10 | First:($t@29@01) != 0 | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 10 | First:($t@29@01) == 0]
; [eval] !(x.g == 0)
; [eval] x.g == 0
(push) ; 6
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.second $t@29@01)) 0)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapToInt ($Snap.second $t@29@01)) 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 11 | Second:($t@29@01) != 0 | live]
; [else-branch: 11 | Second:($t@29@01) == 0 | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 11 | Second:($t@29@01) != 0]
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.second $t@29@01)) 0)))
; Create MagicWandSnapFunction for wand true --* true
(declare-const mwsf@31@01 $MWSF)
(assert (forall (($t@30@01 $Snap)) (!
  (= (MWSF_apply mwsf@31@01 $t@30@01) $Snap.unit)
  :pattern ((MWSF_apply mwsf@31@01 $t@30@01))
  :qid |quant-u-21541|)))
(pop) ; 6
(push) ; 6
; [else-branch: 11 | Second:($t@29@01) == 0]
(assert (= ($SortWrappers.$SnapToInt ($Snap.second $t@29@01)) 0))
(pop) ; 6
; [eval] x.g == 0
(push) ; 6
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapToInt ($Snap.second $t@29@01)) 0))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.second $t@29@01)) 0)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 12 | Second:($t@29@01) == 0 | live]
; [else-branch: 12 | Second:($t@29@01) != 0 | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 12 | Second:($t@29@01) == 0]
(assert (= ($SortWrappers.$SnapToInt ($Snap.second $t@29@01)) 0))
; Create MagicWandSnapFunction for wand true --* true
(declare-const mwsf@32@01 $MWSF)
(assert (forall (($t@30@01 $Snap)) (!
  (= (MWSF_apply mwsf@32@01 $t@30@01) $Snap.unit)
  :pattern ((MWSF_apply mwsf@32@01 $t@30@01))
  :qid |quant-u-21543|)))
(pop) ; 6
(push) ; 6
; [else-branch: 12 | Second:($t@29@01) != 0]
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.second $t@29@01)) 0)))
(pop) ; 6
(pop) ; 5
; [eval] !(x.f == 0)
; [eval] x.f == 0
; [then-branch: 13 | First:($t@29@01) != 0 | dead]
; [else-branch: 13 | First:($t@29@01) == 0 | live]
(push) ; 5
; [else-branch: 13 | First:($t@29@01) == 0]
(pop) ; 5
(pop) ; 4
(push) ; 4
; [else-branch: 9 | First:($t@29@01) != 0]
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first $t@29@01)) 0)))
; [eval] x.f == 0
; [then-branch: 14 | First:($t@29@01) == 0 | dead]
; [else-branch: 14 | First:($t@29@01) != 0 | live]
(push) ; 5
; [else-branch: 14 | First:($t@29@01) != 0]
(pop) ; 5
; [eval] !(x.f == 0)
; [eval] x.f == 0
(push) ; 5
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first $t@29@01)) 0)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 15 | First:($t@29@01) != 0 | live]
; [else-branch: 15 | First:($t@29@01) == 0 | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 15 | First:($t@29@01) != 0]
; [eval] !(x.g == 0)
; [eval] x.g == 0
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
(pop) ; 5
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1