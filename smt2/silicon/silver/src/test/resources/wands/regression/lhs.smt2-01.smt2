(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 01:56:35
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
(declare-fun sum ($Snap $Ref) Int)
(declare-fun sum%limited ($Snap $Ref) Int)
(declare-fun sum%stateless ($Ref) Bool)
(declare-fun sum%precondition ($Snap $Ref) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun Pair%trigger ($Snap $Ref) Bool)
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
(assert (forall ((s@$ $Snap) (p@0@00 $Ref)) (!
  (= (sum%limited s@$ p@0@00) (sum s@$ p@0@00))
  :pattern ((sum s@$ p@0@00))
  :qid |quant-u-20046|)))
(assert (forall ((s@$ $Snap) (p@0@00 $Ref)) (!
  (sum%stateless p@0@00)
  :pattern ((sum%limited s@$ p@0@00))
  :qid |quant-u-20047|)))
(assert (forall ((s@$ $Snap) (p@0@00 $Ref)) (!
  (=>
    (sum%precondition s@$ p@0@00)
    (=
      (sum s@$ p@0@00)
      (+
        ($SortWrappers.$SnapToInt ($Snap.first s@$))
        ($SortWrappers.$SnapToInt ($Snap.second s@$)))))
  :pattern ((sum s@$ p@0@00))
  :qid |quant-u-20048|)))
(assert (forall ((s@$ $Snap) (p@0@00 $Ref)) (!
  true
  :pattern ((sum s@$ p@0@00))
  :qid |quant-u-20049|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- test1 ----------
(declare-const p@0@01 $Ref)
(declare-const p@1@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@2@01 $Snap)
(assert (= $t@2@01 ($Snap.combine ($Snap.first $t@2@01) ($Snap.second $t@2@01))))
(assert (not (= p@1@01 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; p.f := 10
; [exec]
; package acc(p.g, write) --*
; acc(Pair(p), write) && sum(p) == 10 + old[lhs](p.g) {
;   fold acc(Pair(p), write)
; }
(push) ; 3
(declare-const $t@3@01 $Snap)
; [exec]
; fold acc(Pair(p), write)
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
(assert (Pair%trigger ($Snap.combine ($SortWrappers.IntTo$Snap 10) $t@3@01) p@1@01))
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
; [eval] sum(p) == 10 + old[lhs](p.g)
; [eval] sum(p)
(set-option :timeout 0)
(push) ; 4
(assert (sum%precondition ($Snap.combine ($SortWrappers.IntTo$Snap 10) $t@3@01) p@1@01))
(pop) ; 4
; Joined path conditions
(assert (sum%precondition ($Snap.combine ($SortWrappers.IntTo$Snap 10) $t@3@01) p@1@01))
; [eval] 10 + old[lhs](p.g)
; [eval] old[lhs](p.g)
(push) ; 4
(assert (not (=
  (sum ($Snap.combine ($SortWrappers.IntTo$Snap 10) $t@3@01) p@1@01)
  (+ 10 ($SortWrappers.$SnapToInt $t@3@01)))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  (sum ($Snap.combine ($SortWrappers.IntTo$Snap 10) $t@3@01) p@1@01)
  (+ 10 ($SortWrappers.$SnapToInt $t@3@01))))
; Create MagicWandSnapFunction for wand acc(p.g, write) --* acc(Pair(p), write) && sum(p) == 10 + old[lhs](p.g)
(declare-const mwsf@4@01 $MWSF)
(assert (forall (($t@3@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@4@01 $t@3@01)
    ($Snap.combine
      ($Snap.combine ($SortWrappers.IntTo$Snap 10) $t@3@01)
      $Snap.unit))
  :pattern ((MWSF_apply mwsf@4@01 $t@3@01))
  :qid |quant-u-20050|)))
(pop) ; 3
(push) ; 3
(assert (forall (($t@3@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@4@01 $t@3@01)
    ($Snap.combine
      ($Snap.combine ($SortWrappers.IntTo$Snap 10) $t@3@01)
      $Snap.unit))
  :pattern ((MWSF_apply mwsf@4@01 $t@3@01))
  :qid |quant-u-20051|)))
(assert true)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test2 ----------
(declare-const p@5@01 $Ref)
(declare-const p@6@01 $Ref)
(push) ; 1
(declare-const $t@7@01 $Snap)
(assert (= $t@7@01 ($Snap.combine ($Snap.first $t@7@01) ($Snap.second $t@7@01))))
(assert (not (= p@6@01 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; p.g := 3
; [exec]
; apply acc(p.g, write) --*
;   acc(Pair(p), write) && sum(p) == 10 + old[lhs](p.g)
(assert (=
  (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second $t@7@01)) ($SortWrappers.IntTo$Snap 3))
  ($Snap.combine
    ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second $t@7@01)) ($SortWrappers.IntTo$Snap 3)))
    ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second $t@7@01)) ($SortWrappers.IntTo$Snap 3))))))
(assert (=
  ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second $t@7@01)) ($SortWrappers.IntTo$Snap 3)))
  $Snap.unit))
; [eval] sum(p) == 10 + old[lhs](p.g)
; [eval] sum(p)
(push) ; 3
(assert (sum%precondition ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second $t@7@01)) ($SortWrappers.IntTo$Snap 3))) p@6@01))
(pop) ; 3
; Joined path conditions
(assert (sum%precondition ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second $t@7@01)) ($SortWrappers.IntTo$Snap 3))) p@6@01))
; [eval] 10 + old[lhs](p.g)
; [eval] old[lhs](p.g)
(assert (=
  (sum ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second $t@7@01)) ($SortWrappers.IntTo$Snap 3))) p@6@01)
  13))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [exec]
; assert sum(p) == 13
; [eval] sum(p) == 13
; [eval] sum(p)
(set-option :timeout 0)
(push) ; 3
(pop) ; 3
; Joined path conditions
(pop) ; 2
(pop) ; 1