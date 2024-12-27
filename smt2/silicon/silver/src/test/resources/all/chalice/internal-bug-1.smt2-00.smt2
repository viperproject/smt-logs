(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 01:57:18
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
(declare-fun get ($Snap $Ref Int) Int)
(declare-fun get%limited ($Snap $Ref Int) Int)
(declare-fun get%stateless ($Ref Int) Bool)
(declare-fun get%precondition ($Snap $Ref Int) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun valid%trigger ($Snap $Ref) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ---------- FUNCTION get----------
(declare-fun this@0@00 () $Ref)
(declare-fun index@1@00 () Int)
(declare-fun result@2@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.second s@$) $Snap.unit))
; [eval] (unfolding acc(valid(this), write) in true)
(push) ; 2
(assert (valid%trigger ($Snap.first s@$) this@0@00))
(assert (=
  ($Snap.first s@$)
  ($Snap.combine
    ($Snap.first ($Snap.first s@$))
    ($Snap.second ($Snap.first s@$)))))
(assert (not (= this@0@00 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.first s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first s@$)))
    ($Snap.second ($Snap.second ($Snap.first s@$))))))
; [eval] this.next != null
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$))))
  $Ref.null)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | First:(Second:(First:(s@$))) != Null | live]
; [else-branch: 0 | First:(Second:(First:(s@$))) == Null | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | First:(Second:(First:(s@$))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$))))
    $Ref.null)))
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  this@0@00
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$)))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 0 | First:(Second:(First:(s@$))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$))))
  $Ref.null))
(assert (= ($Snap.second ($Snap.second ($Snap.first s@$))) $Snap.unit))
(pop) ; 3
(pop) ; 2
(declare-fun joined_unfolding@3@00 ($Snap $Ref Int) Bool)
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$))))
      $Ref.null))
  (= (joined_unfolding@3@00 s@$ this@0@00 index@1@00) true)))
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$))))
    $Ref.null)
  (= (joined_unfolding@3@00 s@$ this@0@00 index@1@00) true)))
; Joined path conditions
(assert (and
  (valid%trigger ($Snap.first s@$) this@0@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (not (= this@0@00 $Ref.null))
  (=
    ($Snap.second ($Snap.first s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first s@$)))
      ($Snap.second ($Snap.second ($Snap.first s@$)))))))
; Joined path conditions
(assert (and
  (valid%trigger ($Snap.first s@$) this@0@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (not (= this@0@00 $Ref.null))
  (=
    ($Snap.second ($Snap.first s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first s@$)))
      ($Snap.second ($Snap.second ($Snap.first s@$)))))))
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$))))
    $Ref.null)
  (and
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$))))
      $Ref.null)
    (= ($Snap.second ($Snap.second ($Snap.first s@$))) $Snap.unit))))
(assert (or
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$))))
    $Ref.null)
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$))))
      $Ref.null))))
(assert (joined_unfolding@3@00 s@$ this@0@00 index@1@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (this@0@00 $Ref) (index@1@00 Int)) (!
  (= (get%limited s@$ this@0@00 index@1@00) (get s@$ this@0@00 index@1@00))
  :pattern ((get s@$ this@0@00 index@1@00))
  :qid |quant-u-21819|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref) (index@1@00 Int)) (!
  (get%stateless this@0@00 index@1@00)
  :pattern ((get%limited s@$ this@0@00 index@1@00))
  :qid |quant-u-21820|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.second s@$) $Snap.unit))
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$))))
      $Ref.null))
  (= (joined_unfolding@3@00 s@$ this@0@00 index@1@00) true)))
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$))))
    $Ref.null)
  (= (joined_unfolding@3@00 s@$ this@0@00 index@1@00) true)))
(assert (valid%trigger ($Snap.first s@$) this@0@00))
(assert (=
  ($Snap.first s@$)
  ($Snap.combine
    ($Snap.first ($Snap.first s@$))
    ($Snap.second ($Snap.first s@$)))))
(assert (not (= this@0@00 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.first s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first s@$)))
    ($Snap.second ($Snap.second ($Snap.first s@$))))))
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$))))
    $Ref.null)
  (and
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$))))
      $Ref.null)
    (= ($Snap.second ($Snap.second ($Snap.first s@$))) $Snap.unit))))
(assert (or
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$))))
    $Ref.null)
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$))))
      $Ref.null))))
(assert (joined_unfolding@3@00 s@$ this@0@00 index@1@00))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(assert (= result@2@00 0))
(pop) ; 1
(assert (forall ((s@$ $Snap) (this@0@00 $Ref) (index@1@00 Int)) (!
  (=>
    (get%precondition s@$ this@0@00 index@1@00)
    (= (get s@$ this@0@00 index@1@00) 0))
  :pattern ((get s@$ this@0@00 index@1@00))
  :qid |quant-u-21821|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref) (index@1@00 Int)) (!
  true
  :pattern ((get s@$ this@0@00 index@1@00))
  :qid |quant-u-21822|)))
; ---------- valid ----------
(declare-const this@4@00 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@5@00 $Snap)
(assert (= $t@5@00 ($Snap.combine ($Snap.first $t@5@00) ($Snap.second $t@5@00))))
(assert (not (= this@4@00 $Ref.null)))
(assert (=
  ($Snap.second $t@5@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@5@00))
    ($Snap.second ($Snap.second $t@5@00)))))
; [eval] this.next != null
(push) ; 2
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@5@00))) $Ref.null)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (not
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@5@00))) $Ref.null))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | First:(Second:($t@5@00)) != Null | live]
; [else-branch: 1 | First:(Second:($t@5@00)) == Null | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 1 | First:(Second:($t@5@00)) != Null]
(assert (not
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@5@00))) $Ref.null)))
(pop) ; 2
(push) ; 2
; [else-branch: 1 | First:(Second:($t@5@00)) == Null]
(assert (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@5@00))) $Ref.null))
(assert (= ($Snap.second ($Snap.second $t@5@00)) $Snap.unit))
(pop) ; 2
(pop) ; 1