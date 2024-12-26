(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 19:40:37
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
(declare-fun f ($Snap $Ref $Perm) Bool)
(declare-fun f%limited ($Snap $Ref $Perm) Bool)
(declare-fun f%stateless ($Ref $Perm) Bool)
(declare-fun f%precondition ($Snap $Ref $Perm) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun P%trigger ($Snap $Ref) Bool)
(declare-fun u32%trigger ($Snap $Ref) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ---------- FUNCTION f----------
(declare-fun this@0@00 () $Ref)
(declare-fun p@1@00 () $Perm)
(declare-fun result@2@00 () Bool)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
; [eval] p >= none
(assert (>= p@1@00 $Perm.No))
(push) ; 2
(assert (not (or (= p@1@00 $Perm.No) (< $Perm.No p@1@00))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No p@1@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (this@0@00 $Ref) (p@1@00 $Perm)) (!
  (= (f%limited s@$ this@0@00 p@1@00) (f s@$ this@0@00 p@1@00))
  :pattern ((f s@$ this@0@00 p@1@00))
  :qid |quant-u-24668|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref) (p@1@00 $Perm)) (!
  (f%stateless this@0@00 p@1@00)
  :pattern ((f%limited s@$ this@0@00 p@1@00))
  :qid |quant-u-24669|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
(assert (>= p@1@00 $Perm.No))
(assert (<= $Perm.No p@1@00))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] true || (unfolding acc(P(this), p) in (unfolding acc(u32(this.f1), p) in this.f1.val))
(assert (= result@2@00 true))
(pop) ; 1
(declare-const $unresolved@3@00 Bool)
(assert (forall ((s@$ $Snap) (this@0@00 $Ref) (p@1@00 $Perm)) (!
  (=> (f%precondition s@$ this@0@00 p@1@00) (= (f s@$ this@0@00 p@1@00) true))
  :pattern ((f s@$ this@0@00 p@1@00))
  :qid |quant-u-24670|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref) (p@1@00 $Perm)) (!
  true
  :pattern ((f s@$ this@0@00 p@1@00))
  :qid |quant-u-24671|)))
; ---------- P ----------
(declare-const self@4@00 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@5@00 $Snap)
(assert (= $t@5@00 ($Snap.combine ($Snap.first $t@5@00) ($Snap.second $t@5@00))))
(assert (not (= self@4@00 $Ref.null)))
(assert (=
  ($Snap.second $t@5@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@5@00))
    ($Snap.second ($Snap.second $t@5@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@5@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@5@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@5@00))))))
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first $t@5@00))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@5@00)))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
; ---------- u32 ----------
(declare-const self@6@00 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@7@00 Bool)
(assert (not (= self@6@00 $Ref.null)))
(pop) ; 1