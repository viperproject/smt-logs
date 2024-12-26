(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 19:37:00
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
(declare-fun getAndTransform ($Snap $Ref) Int)
(declare-fun getAndTransform%limited ($Snap $Ref) Int)
(declare-fun getAndTransform%stateless ($Ref) Bool)
(declare-fun getAndTransform%precondition ($Snap $Ref) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun Cell%trigger ($Snap $Ref) Bool)
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
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (= (getAndTransform%limited s@$ x@0@00) (getAndTransform s@$ x@0@00))
  :pattern ((getAndTransform s@$ x@0@00))
  :qid |quant-u-21473|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (getAndTransform%stateless x@0@00)
  :pattern ((getAndTransform%limited s@$ x@0@00))
  :qid |quant-u-21474|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (=>
    (getAndTransform%precondition s@$ x@0@00)
    (= (getAndTransform s@$ x@0@00) (+ ($SortWrappers.$SnapToInt s@$) 2)))
  :pattern ((getAndTransform s@$ x@0@00))
  :qid |quant-u-21475|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  true
  :pattern ((getAndTransform s@$ x@0@00))
  :qid |quant-u-21476|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- test0 ----------
(declare-const x@0@01 $Ref)
(declare-const x@1@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@2@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@3@01 Int)
(pop) ; 2
(push) ; 2
; [exec]
; package acc(Cell(x), write) && (unfolding acc(Cell(x), write) in x.f == 0) --*
; acc(Cell(x), write) && getAndTransform(x) == 2 {
;   if (getAndTransform(x) != 2) {
;     assert false
;   }
; }
(push) ; 3
(declare-const $t@4@01 $Snap)
(assert (= $t@4@01 ($Snap.combine ($Snap.first $t@4@01) ($Snap.second $t@4@01))))
(assert (= ($Snap.second $t@4@01) $Snap.unit))
; [eval] (unfolding acc(Cell(x), write) in x.f == 0)
(push) ; 4
(assert (Cell%trigger ($Snap.first $t@4@01) x@1@01))
(assert (not (= x@1@01 $Ref.null)))
; [eval] x.f == 0
(pop) ; 4
; Joined path conditions
(assert (and (Cell%trigger ($Snap.first $t@4@01) x@1@01) (not (= x@1@01 $Ref.null))))
(assert (= ($SortWrappers.$SnapToInt ($Snap.first $t@4@01)) 0))
; [eval] getAndTransform(x) != 2
; [eval] getAndTransform(x)
(push) ; 4
(assert (getAndTransform%precondition ($Snap.first $t@4@01) x@1@01))
(pop) ; 4
; Joined path conditions
(assert (getAndTransform%precondition ($Snap.first $t@4@01) x@1@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (= (getAndTransform ($Snap.first $t@4@01) x@1@01) 2)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | getAndTransform(First:($t@4@01), x@1@01) != 2 | dead]
; [else-branch: 0 | getAndTransform(First:($t@4@01), x@1@01) == 2 | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 0 | getAndTransform(First:($t@4@01), x@1@01) == 2]
(assert (= (getAndTransform ($Snap.first $t@4@01) x@1@01) 2))
(pop) ; 4
; [eval] !(getAndTransform(x) != 2)
; [eval] getAndTransform(x) != 2
; [eval] getAndTransform(x)
(push) ; 4
(pop) ; 4
; Joined path conditions
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= (getAndTransform ($Snap.first $t@4@01) x@1@01) 2))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (getAndTransform ($Snap.first $t@4@01) x@1@01) 2)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | getAndTransform(First:($t@4@01), x@1@01) == 2 | live]
; [else-branch: 1 | getAndTransform(First:($t@4@01), x@1@01) != 2 | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 1 | getAndTransform(First:($t@4@01), x@1@01) == 2]
(assert (= (getAndTransform ($Snap.first $t@4@01) x@1@01) 2))
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
; [eval] getAndTransform(x) == 2
; [eval] getAndTransform(x)
(set-option :timeout 0)
(push) ; 5
(pop) ; 5
; Joined path conditions
; Create MagicWandSnapFunction for wand acc(Cell(x), write) && (unfolding acc(Cell(x), write) in x.f == 0) --* acc(Cell(x), write) && getAndTransform(x) == 2
(declare-const mwsf@5@01 $MWSF)
(assert (forall (($t@4@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@5@01 $t@4@01)
    ($Snap.combine ($Snap.first $t@4@01) $Snap.unit))
  :pattern ((MWSF_apply mwsf@5@01 $t@4@01))
  :qid |quant-u-21477|)))
(pop) ; 4
(pop) ; 3
(push) ; 3
(assert (= (getAndTransform ($Snap.first $t@4@01) x@1@01) 2))
(assert (forall (($t@4@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@5@01 $t@4@01)
    ($Snap.combine ($Snap.first $t@4@01) $Snap.unit))
  :pattern ((MWSF_apply mwsf@5@01 $t@4@01))
  :qid |quant-u-21478|)))
(assert true)
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test1 ----------
(declare-const x@6@01 $Ref)
(declare-const x@7@01 $Ref)
(push) ; 1
(declare-const $t@8@01 Int)
(assert (not (= x@7@01 $Ref.null)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@9@01 Int)
(pop) ; 2
(push) ; 2
; [exec]
; x.f := 0
; [exec]
; fold acc(Cell(x), write)
(assert (Cell%trigger ($SortWrappers.IntTo$Snap 0) x@7@01))
; [exec]
; package true --* acc(Cell(x), write) && getAndTransform(x) == 2 {
;   assert acc(Cell(x), write)
;   if (getAndTransform(x) != 2) {
;     assert false
;   }
; }
(push) ; 3
(declare-const $t@10@01 $Snap)
(assert (= $t@10@01 $Snap.unit))
; [exec]
; assert acc(Cell(x), write)
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
; [eval] getAndTransform(x) != 2
; [eval] getAndTransform(x)
(set-option :timeout 0)
(push) ; 4
(assert (getAndTransform%precondition ($SortWrappers.IntTo$Snap 0) x@7@01))
(pop) ; 4
; Joined path conditions
(assert (getAndTransform%precondition ($SortWrappers.IntTo$Snap 0) x@7@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (= (getAndTransform ($SortWrappers.IntTo$Snap 0) x@7@01) 2)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | getAndTransform(0, x@7@01) != 2 | dead]
; [else-branch: 2 | getAndTransform(0, x@7@01) == 2 | live]
(set-option :timeout 0)
(push) ; 4
; [else-branch: 2 | getAndTransform(0, x@7@01) == 2]
(assert (= (getAndTransform ($SortWrappers.IntTo$Snap 0) x@7@01) 2))
(pop) ; 4
; [eval] !(getAndTransform(x) != 2)
; [eval] getAndTransform(x) != 2
; [eval] getAndTransform(x)
(push) ; 4
(pop) ; 4
; Joined path conditions
(push) ; 4
(set-option :timeout 10)
(assert (not (not (= (getAndTransform ($SortWrappers.IntTo$Snap 0) x@7@01) 2))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= (getAndTransform ($SortWrappers.IntTo$Snap 0) x@7@01) 2)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | getAndTransform(0, x@7@01) == 2 | live]
; [else-branch: 3 | getAndTransform(0, x@7@01) != 2 | dead]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 3 | getAndTransform(0, x@7@01) == 2]
(assert (= (getAndTransform ($SortWrappers.IntTo$Snap 0) x@7@01) 2))
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
; [eval] getAndTransform(x) == 2
; [eval] getAndTransform(x)
(set-option :timeout 0)
(push) ; 5
(pop) ; 5
; Joined path conditions
; Create MagicWandSnapFunction for wand true --* acc(Cell(x), write) && getAndTransform(x) == 2
(declare-const mwsf@11@01 $MWSF)
(assert (forall (($t@10@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@11@01 $t@10@01)
    ($Snap.combine ($SortWrappers.IntTo$Snap 0) $Snap.unit))
  :pattern ((MWSF_apply mwsf@11@01 $t@10@01))
  :qid |quant-u-21479|)))
(pop) ; 4
(pop) ; 3
(push) ; 3
(assert (= (getAndTransform ($SortWrappers.IntTo$Snap 0) x@7@01) 2))
(assert (forall (($t@10@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@11@01 $t@10@01)
    ($Snap.combine ($SortWrappers.IntTo$Snap 0) $Snap.unit))
  :pattern ((MWSF_apply mwsf@11@01 $t@10@01))
  :qid |quant-u-21480|)))
(assert true)
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