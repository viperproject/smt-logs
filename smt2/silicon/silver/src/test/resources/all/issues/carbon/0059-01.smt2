(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-27 03:00:22
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
(declare-sort GlobalKPermission 0)
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
(declare-fun $SortWrappers.GlobalKPermissionTo$Snap (GlobalKPermission) $Snap)
(declare-fun $SortWrappers.$SnapToGlobalKPermission ($Snap) GlobalKPermission)
(assert (forall ((x GlobalKPermission)) (!
    (= x ($SortWrappers.$SnapToGlobalKPermission($SortWrappers.GlobalKPermissionTo$Snap x)))
    :pattern (($SortWrappers.GlobalKPermissionTo$Snap x))
    :qid |$Snap.$SnapToGlobalKPermissionTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.GlobalKPermissionTo$Snap($SortWrappers.$SnapToGlobalKPermission x)))
    :pattern (($SortWrappers.$SnapToGlobalKPermission x))
    :qid |$Snap.GlobalKPermissionTo$SnapToGlobalKPermission|
    )))
; ////////// Symbols
(declare-const globalK$<Perm> $Perm)
; Declaring symbols related to program functions (from program analysis)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun Lala$MonitorInvariant%trigger ($Snap $Ref) Bool)
(declare-fun Lalainv$%trigger ($Snap $Ref) Bool)
; ////////// Uniqueness assumptions from domains
(assert true)
; ////////// Axioms
(assert (and
  (> (as globalK$<Perm>  $Perm) $Perm.No)
  (> $Perm.Write (as globalK$<Perm>  $Perm))))
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
; ---------- Lalakoko$ ----------
(declare-const this$_2@0@01 $Ref)
(declare-const k$@1@01 $Perm)
(declare-const this$_2@2@01 $Ref)
(declare-const k$@3@01 $Perm)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@4@01 $Snap)
(assert (= $t@4@01 ($Snap.combine ($Snap.first $t@4@01) ($Snap.second $t@4@01))))
(assert (= ($Snap.first $t@4@01) $Snap.unit))
; [eval] this$_2 != null
(assert (not (= this$_2@2@01 $Ref.null)))
(assert (=
  ($Snap.second $t@4@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@4@01))
    ($Snap.second ($Snap.second $t@4@01)))))
(assert (= ($Snap.first ($Snap.second $t@4@01)) $Snap.unit))
; [eval] k$ > none
(assert (> k$@3@01 $Perm.No))
(assert (=
  ($Snap.second ($Snap.second $t@4@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@4@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@4@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@4@01))) $Snap.unit))
; [eval] write > k$
(assert (> $Perm.Write k$@3@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var n$: Ref
(declare-const n$@5@01 $Ref)
; [exec]
; var a$: Ref
(declare-const a$@6@01 $Ref)
; [exec]
; var b$: Ref
(declare-const b$@7@01 $Ref)
; [exec]
; var c$: Ref
(declare-const c$@8@01 $Ref)
; [exec]
; assert (unfolding acc(Lalainv$(this$_2), write) in this$_2.Lalax$) ==
;   old((unfolding acc(Lalainv$(this$_2), write) in this$_2.Lalax$))
; [eval] (unfolding acc(Lalainv$(this$_2), write) in this$_2.Lalax$) == old((unfolding acc(Lalainv$(this$_2), write) in this$_2.Lalax$))
; [eval] (unfolding acc(Lalainv$(this$_2), write) in this$_2.Lalax$)
(push) ; 3
(assert (Lalainv$%trigger ($Snap.second ($Snap.second ($Snap.second $t@4@01))) this$_2@2@01))
(pop) ; 3
; Joined path conditions
(assert (Lalainv$%trigger ($Snap.second ($Snap.second ($Snap.second $t@4@01))) this$_2@2@01))
; [eval] old((unfolding acc(Lalainv$(this$_2), write) in this$_2.Lalax$))
; [eval] (unfolding acc(Lalainv$(this$_2), write) in this$_2.Lalax$)
(push) ; 3
(pop) ; 3
; Joined path conditions
(pop) ; 2
(pop) ; 1
