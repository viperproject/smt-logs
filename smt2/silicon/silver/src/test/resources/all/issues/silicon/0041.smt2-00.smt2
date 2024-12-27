(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 02:00:01
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
(declare-fun SL_length ($Snap $Ref) Int)
(declare-fun SL_length%limited ($Snap $Ref) Int)
(declare-fun SL_length%stateless ($Ref) Bool)
(declare-fun SL_length%precondition ($Snap $Ref) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun SL%trigger ($Snap $Ref) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ---------- FUNCTION SL_length----------
(declare-fun x@0@00 () $Ref)
(declare-fun result@1@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(declare-const $t@2@00 $Snap)
(assert (= $t@2@00 $Snap.unit))
; [eval] result > 0
(assert (> result@1@00 0))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (= (SL_length%limited s@$ x@0@00) (SL_length s@$ x@0@00))
  :pattern ((SL_length s@$ x@0@00))
  :qid |quant-u-23978|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (SL_length%stateless x@0@00)
  :pattern ((SL_length%limited s@$ x@0@00))
  :qid |quant-u-23979|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (let ((result@1@00 (SL_length%limited s@$ x@0@00))) (=>
    (SL_length%precondition s@$ x@0@00)
    (> result@1@00 0)))
  :pattern ((SL_length%limited s@$ x@0@00))
  :qid |quant-u-23980|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (let ((result@1@00 (SL_length%limited s@$ x@0@00))) true)
  :pattern ((SL_length%limited s@$ x@0@00))
  :qid |quant-u-23981|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] 1 + (unfolding acc(SL(x), write) in (x.next == null ? 0 : SL_length(x.next)))
; [eval] (unfolding acc(SL(x), write) in (x.next == null ? 0 : SL_length(x.next)))
(set-option :timeout 0)
(push) ; 2
(assert (SL%trigger s@$ x@0@00))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (not (= x@0@00 $Ref.null)))
; [eval] x.next != null
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | First:(s@$) != Null | live]
; [else-branch: 0 | First:(s@$) == Null | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | First:(s@$) != Null]
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null)))
(push) ; 4
(set-option :timeout 10)
(assert (not (= x@0@00 ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] (x.next == null ? 0 : SL_length(x.next))
; [eval] x.next == null
(set-option :timeout 0)
(push) ; 4
; [then-branch: 1 | First:(s@$) == Null | dead]
; [else-branch: 1 | First:(s@$) != Null | live]
(push) ; 5
; [else-branch: 1 | First:(s@$) != Null]
; [eval] SL_length(x.next)
(push) ; 6
(assert (SL_length%precondition ($Snap.second s@$) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$))))
(pop) ; 6
; Joined path conditions
(assert (SL_length%precondition ($Snap.second s@$) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null))
  (SL_length%precondition ($Snap.second s@$) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))))
(pop) ; 3
(push) ; 3
; [else-branch: 0 | First:(s@$) == Null]
(assert (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null))
(assert (= ($Snap.second s@$) $Snap.unit))
; [eval] (x.next == null ? 0 : SL_length(x.next))
; [eval] x.next == null
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | First:(s@$) == Null | live]
; [else-branch: 2 | First:(s@$) != Null | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 2 | First:(s@$) == Null]
(pop) ; 5
(pop) ; 4
; Joined path conditions
(pop) ; 3
(pop) ; 2
(declare-fun joined_unfolding@3@00 ($Snap $Ref) Int)
(assert (=>
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null))
  (=
    (joined_unfolding@3@00 s@$ x@0@00)
    (SL_length ($Snap.second s@$) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$))))))
(assert (=>
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null)
  (= (joined_unfolding@3@00 s@$ x@0@00) 0)))
; Joined path conditions
(assert (and
  (SL%trigger s@$ x@0@00)
  (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$)))
  (not (= x@0@00 $Ref.null))))
(assert (=>
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null))
  (and
    (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null))
    (=>
      (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null))
      (SL_length%precondition ($Snap.second s@$) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))))))
; Joined path conditions
(assert (and
  (SL%trigger s@$ x@0@00)
  (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$)))
  (not (= x@0@00 $Ref.null))))
(assert (=>
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null)
  (and
    (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null)
    (= ($Snap.second s@$) $Snap.unit))))
(assert (or
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null)
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null))))
(assert (= result@1@00 (+ 1 (joined_unfolding@3@00 s@$ x@0@00))))
; [eval] result > 0
(push) ; 2
(assert (not (> result@1@00 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (> result@1@00 0))
(pop) ; 1
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (=>
    (SL_length%precondition s@$ x@0@00)
    (=
      (SL_length s@$ x@0@00)
      (+
        1
        (ite
          (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null)
          0
          (SL_length%limited ($Snap.second s@$) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))))))
  :pattern ((SL_length s@$ x@0@00))
  :pattern ((SL_length%stateless x@0@00) (SL%trigger s@$ x@0@00))
  :qid |quant-u-23982|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref)) (!
  (=>
    (SL_length%precondition s@$ x@0@00)
    (ite
      (= ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)) $Ref.null)
      true
      (SL_length%precondition ($Snap.second s@$) ($SortWrappers.$SnapTo$Ref ($Snap.first s@$)))))
  :pattern ((SL_length s@$ x@0@00))
  :qid |quant-u-23983|)))
; ---------- SL ----------
(declare-const x@4@00 $Ref)
(push) ; 1
(declare-const $t@5@00 $Snap)
(assert (= $t@5@00 ($Snap.combine ($Snap.first $t@5@00) ($Snap.second $t@5@00))))
(assert (not (= x@4@00 $Ref.null)))
; [eval] x.next != null
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
; [then-branch: 3 | First:($t@5@00) != Null | live]
; [else-branch: 3 | First:($t@5@00) == Null | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 3 | First:($t@5@00) != Null]
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@5@00)) $Ref.null)))
(pop) ; 2
(push) ; 2
; [else-branch: 3 | First:($t@5@00) == Null]
(assert (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@5@00)) $Ref.null))
(assert (= ($Snap.second $t@5@00) $Snap.unit))
(pop) ; 2
(pop) ; 1