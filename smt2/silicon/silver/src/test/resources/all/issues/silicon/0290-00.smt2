(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-08 21:24:26
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
(declare-fun Q%trigger ($Snap $Ref) Bool)
(declare-fun Rec%trigger ($Snap $Ref) Bool)
(declare-fun SP_State%trigger ($Snap $Ref) Bool)
(declare-fun OFL_State%trigger ($Snap $Ref) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ---------- P ----------
(declare-const r@0@00 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@1@00 $Snap)
(assert (= $t@1@00 ($Snap.combine ($Snap.first $t@1@00) ($Snap.second $t@1@00))))
(assert (not (= r@0@00 $Ref.null)))
(assert (=
  ($Snap.second $t@1@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@1@00))
    ($Snap.second ($Snap.second $t@1@00)))))
(assert (= ($Snap.second ($Snap.second $t@1@00)) $Snap.unit))
; [eval] (unfolding acc(Q(r.f), write) in true)
(push) ; 2
(assert (Q%trigger ($Snap.first ($Snap.second $t@1@00)) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@1@00))))
(assert (= ($Snap.first ($Snap.second $t@1@00)) $Snap.unit))
(pop) ; 2
; Joined path conditions
(assert (and
  (Q%trigger ($Snap.first ($Snap.second $t@1@00)) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@1@00)))
  (= ($Snap.first ($Snap.second $t@1@00)) $Snap.unit)))
(pop) ; 1
; ---------- Q ----------
(declare-const r@2@00 $Ref)
(push) ; 1
(declare-const $t@3@00 $Snap)
(assert (= $t@3@00 $Snap.unit))
(pop) ; 1
; ---------- Rec ----------
(declare-const x@4@00 $Ref)
(push) ; 1
(declare-const $t@5@00 $Snap)
(assert (= $t@5@00 ($Snap.combine ($Snap.first $t@5@00) ($Snap.second $t@5@00))))
(declare-const $k@6@00 $Perm)
(assert ($Perm.isReadVar $k@6@00))
(assert (<= $Perm.No $k@6@00))
(assert (<= $k@6@00 $Perm.Write))
(assert (=> (< $Perm.No $k@6@00) (not (= x@4@00 $Ref.null))))
; [eval] x.f != null
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@6@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@5@00)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@5@00)) $Ref.null))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | First:($t@5@00) != Null | live]
; [else-branch: 0 | First:($t@5@00) == Null | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 0 | First:($t@5@00) != Null]
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@5@00)) $Ref.null)))
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@6@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $k@7@00 $Perm)
(assert ($Perm.isReadVar $k@7@00))
(assert (<= $Perm.No $k@7@00))
(pop) ; 2
(set-option :timeout 0)
(push) ; 2
; [else-branch: 0 | First:($t@5@00) == Null]
(assert (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@5@00)) $Ref.null))
(assert (= ($Snap.second $t@5@00) $Snap.unit))
(pop) ; 2
(pop) ; 1
; ---------- SP_State ----------
(declare-const self@8@00 $Ref)
(push) ; 1
(declare-const $t@9@00 $Snap)
(assert (= $t@9@00 ($Snap.combine ($Snap.first $t@9@00) ($Snap.second $t@9@00))))
(assert (not (= self@8@00 $Ref.null)))
(assert (=
  ($Snap.second $t@9@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@9@00))
    ($Snap.second ($Snap.second $t@9@00)))))
(assert (= ($Snap.second ($Snap.second $t@9@00)) $Snap.unit))
; [eval] (unfolding acc(OFL_State(self.ofs), write) in true)
(push) ; 2
(assert (OFL_State%trigger ($Snap.first ($Snap.second $t@9@00)) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@9@00))))
(assert (= ($Snap.first ($Snap.second $t@9@00)) $Snap.unit))
(pop) ; 2
; Joined path conditions
(assert (and
  (OFL_State%trigger ($Snap.first ($Snap.second $t@9@00)) ($SortWrappers.$SnapTo$Ref ($Snap.first $t@9@00)))
  (= ($Snap.first ($Snap.second $t@9@00)) $Snap.unit)))
(pop) ; 1
; ---------- OFL_State ----------
(declare-const self@10@00 $Ref)
(push) ; 1
(declare-const $t@11@00 $Snap)
(assert (= $t@11@00 $Snap.unit))
(pop) ; 1
