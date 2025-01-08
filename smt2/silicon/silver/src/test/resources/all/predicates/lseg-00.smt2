(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-08 21:22:11
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
(declare-fun length ($Snap $Ref $Ref) Int)
(declare-fun length%limited ($Snap $Ref $Ref) Int)
(declare-fun length%stateless ($Ref $Ref) Bool)
(declare-fun length%precondition ($Snap $Ref $Ref) Bool)
(declare-fun get ($Snap $Ref Int $Ref) Int)
(declare-fun get%limited ($Snap $Ref Int $Ref) Int)
(declare-fun get%stateless ($Ref Int $Ref) Bool)
(declare-fun get%precondition ($Snap $Ref Int $Ref) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun lseg%trigger ($Snap $Ref $Ref) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ---------- FUNCTION length----------
(declare-fun this@0@00 () $Ref)
(declare-fun end@1@00 () $Ref)
(declare-fun result@2@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(declare-const $t@7@00 $Snap)
(assert (= $t@7@00 $Snap.unit))
; [eval] result > 0
(assert (> result@2@00 0))
(pop) ; 1
(assert (forall ((s@$ $Snap) (this@0@00 $Ref) (end@1@00 $Ref)) (!
  (= (length%limited s@$ this@0@00 end@1@00) (length s@$ this@0@00 end@1@00))
  :pattern ((length s@$ this@0@00 end@1@00))
  :qid |quant-u-21882|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref) (end@1@00 $Ref)) (!
  (length%stateless this@0@00 end@1@00)
  :pattern ((length%limited s@$ this@0@00 end@1@00))
  :qid |quant-u-21883|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref) (end@1@00 $Ref)) (!
  (let ((result@2@00 (length%limited s@$ this@0@00 end@1@00))) (=>
    (length%precondition s@$ this@0@00 end@1@00)
    (> result@2@00 0)))
  :pattern ((length%limited s@$ this@0@00 end@1@00))
  :qid |quant-u-21886|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref) (end@1@00 $Ref)) (!
  (let ((result@2@00 (length%limited s@$ this@0@00 end@1@00))) true)
  :pattern ((length%limited s@$ this@0@00 end@1@00))
  :qid |quant-u-21887|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(lseg(this, end), write) in (this.next == end ? 1 : 1 + length(this.next, end)))
(set-option :timeout 0)
(push) ; 2
(assert (lseg%trigger s@$ this@0@00 end@1@00))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (not (= this@0@00 $Ref.null)))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
; [eval] this.next != end
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) end@1@00)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) end@1@00))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | First:(Second:(s@$)) != end@1@00 | live]
; [else-branch: 0 | First:(Second:(s@$)) == end@1@00 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | First:(Second:(s@$)) != end@1@00]
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) end@1@00)))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] this.next != null
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null)))
(push) ; 4
(set-option :timeout 10)
(assert (not (= this@0@00 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] (this.next == end ? 1 : 1 + length(this.next, end))
; [eval] this.next == end
(set-option :timeout 0)
(push) ; 4
; [then-branch: 1 | First:(Second:(s@$)) == end@1@00 | dead]
; [else-branch: 1 | First:(Second:(s@$)) != end@1@00 | live]
(push) ; 5
; [else-branch: 1 | First:(Second:(s@$)) != end@1@00]
; [eval] 1 + length(this.next, end)
; [eval] length(this.next, end)
(push) ; 6
(assert (length%precondition ($Snap.second ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) end@1@00))
(pop) ; 6
; Joined path conditions
(assert (length%precondition ($Snap.second ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) end@1@00))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (=>
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) end@1@00))
  (length%precondition ($Snap.second ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) end@1@00)))
(pop) ; 3
(push) ; 3
; [else-branch: 0 | First:(Second:(s@$)) == end@1@00]
(assert (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) end@1@00))
(assert (= ($Snap.second ($Snap.second s@$)) $Snap.unit))
; [eval] (this.next == end ? 1 : 1 + length(this.next, end))
; [eval] this.next == end
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) end@1@00))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | First:(Second:(s@$)) == end@1@00 | live]
; [else-branch: 2 | First:(Second:(s@$)) != end@1@00 | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 2 | First:(Second:(s@$)) == end@1@00]
(pop) ; 5
(pop) ; 4
; Joined path conditions
(pop) ; 3
(pop) ; 2
(declare-fun joined_unfolding@8@00 ($Snap $Ref $Ref) Int)
(assert (=>
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) end@1@00))
  (=
    (joined_unfolding@8@00 s@$ this@0@00 end@1@00)
    (+
      1
      (length ($Snap.second ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) end@1@00)))))
(assert (=>
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) end@1@00)
  (= (joined_unfolding@8@00 s@$ this@0@00 end@1@00) 1)))
; Joined path conditions
(assert (and
  (lseg%trigger s@$ this@0@00 end@1@00)
  (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$)))
  (not (= this@0@00 $Ref.null))
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))))
(assert (=>
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) end@1@00))
  (and
    (not
      (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) end@1@00))
    (=
      ($Snap.second ($Snap.second s@$))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second s@$)))
        ($Snap.second ($Snap.second ($Snap.second s@$)))))
    (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit)
    (not
      (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null))
    (=>
      (not
        (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) end@1@00))
      (length%precondition ($Snap.second ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) end@1@00)))))
; Joined path conditions
(assert (and
  (lseg%trigger s@$ this@0@00 end@1@00)
  (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$)))
  (not (= this@0@00 $Ref.null))
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))))
(assert (=>
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) end@1@00)
  (and
    (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) end@1@00)
    (= ($Snap.second ($Snap.second s@$)) $Snap.unit))))
(assert (or
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) end@1@00)
  (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) end@1@00))))
(assert (= result@2@00 (joined_unfolding@8@00 s@$ this@0@00 end@1@00)))
; [eval] result > 0
(push) ; 2
(assert (not (> result@2@00 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (> result@2@00 0))
(pop) ; 1
(assert (forall ((s@$ $Snap) (this@0@00 $Ref) (end@1@00 $Ref)) (!
  (=>
    (length%precondition s@$ this@0@00 end@1@00)
    (=
      (length s@$ this@0@00 end@1@00)
      (ite
        (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) end@1@00)
        1
        (+
          1
          (length%limited ($Snap.second ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) end@1@00)))))
  :pattern ((length s@$ this@0@00 end@1@00))
  :pattern ((length%stateless this@0@00 end@1@00) (lseg%trigger s@$ this@0@00 end@1@00))
  :qid |quant-u-21888|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref) (end@1@00 $Ref)) (!
  (=>
    (length%precondition s@$ this@0@00 end@1@00)
    (ite
      (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) end@1@00)
      true
      (length%precondition ($Snap.second ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) end@1@00)))
  :pattern ((length s@$ this@0@00 end@1@00))
  :qid |quant-u-21889|)))
; ---------- FUNCTION get----------
(declare-fun this@3@00 () $Ref)
(declare-fun i@4@00 () Int)
(declare-fun end@5@00 () $Ref)
(declare-fun result@6@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (= ($Snap.first ($Snap.second s@$)) $Snap.unit))
; [eval] 0 <= i
(assert (<= 0 i@4@00))
(assert (= ($Snap.second ($Snap.second s@$)) $Snap.unit))
; [eval] i < length(this, end)
; [eval] length(this, end)
(push) ; 2
(assert (length%precondition ($Snap.first s@$) this@3@00 end@5@00))
(pop) ; 2
; Joined path conditions
(assert (length%precondition ($Snap.first s@$) this@3@00 end@5@00))
(assert (< i@4@00 (length ($Snap.first s@$) this@3@00 end@5@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (this@3@00 $Ref) (i@4@00 Int) (end@5@00 $Ref)) (!
  (=
    (get%limited s@$ this@3@00 i@4@00 end@5@00)
    (get s@$ this@3@00 i@4@00 end@5@00))
  :pattern ((get s@$ this@3@00 i@4@00 end@5@00))
  :qid |quant-u-21884|)))
(assert (forall ((s@$ $Snap) (this@3@00 $Ref) (i@4@00 Int) (end@5@00 $Ref)) (!
  (get%stateless this@3@00 i@4@00 end@5@00)
  :pattern ((get%limited s@$ this@3@00 i@4@00 end@5@00))
  :qid |quant-u-21885|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (= ($Snap.first ($Snap.second s@$)) $Snap.unit))
(assert (<= 0 i@4@00))
(assert (= ($Snap.second ($Snap.second s@$)) $Snap.unit))
(assert (length%precondition ($Snap.first s@$) this@3@00 end@5@00))
(assert (< i@4@00 (length ($Snap.first s@$) this@3@00 end@5@00)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(lseg(this, end), write) in (i == 0 ? this.value : get(this.next, i - 1, end)))
(set-option :timeout 0)
(push) ; 2
(assert (lseg%trigger ($Snap.first s@$) this@3@00 end@5@00))
(assert (=
  ($Snap.first s@$)
  ($Snap.combine
    ($Snap.first ($Snap.first s@$))
    ($Snap.second ($Snap.first s@$)))))
(assert (not (= this@3@00 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.first s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first s@$)))
    ($Snap.second ($Snap.second ($Snap.first s@$))))))
; [eval] this.next != end
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$))))
  end@5@00)))
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
    end@5@00))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | First:(Second:(First:(s@$))) != end@5@00 | live]
; [else-branch: 3 | First:(Second:(First:(s@$))) == end@5@00 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 3 | First:(Second:(First:(s@$))) != end@5@00]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$))))
    end@5@00)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.first s@$)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))) $Snap.unit))
; [eval] this.next != null
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$))))
    $Ref.null)))
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  this@3@00
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$)))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] (i == 0 ? this.value : get(this.next, i - 1, end))
; [eval] i == 0
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= i@4@00 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= i@4@00 0)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 4 | i@4@00 == 0 | live]
; [else-branch: 4 | i@4@00 != 0 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 4 | i@4@00 == 0]
(assert (= i@4@00 0))
(pop) ; 5
(push) ; 5
; [else-branch: 4 | i@4@00 != 0]
(assert (not (= i@4@00 0)))
; [eval] get(this.next, i - 1, end)
; [eval] i - 1
(push) ; 6
; [eval] 0 <= i
(push) ; 7
(assert (not (<= 0 (- i@4@00 1))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (- i@4@00 1)))
; [eval] i < length(this, end)
; [eval] length(this, end)
(push) ; 7
(assert (length%precondition ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$)))) end@5@00))
(pop) ; 7
; Joined path conditions
(assert (length%precondition ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$)))) end@5@00))
(push) ; 7
(assert (not (<
  (- i@4@00 1)
  (length ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$)))) end@5@00))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<
  (- i@4@00 1)
  (length ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$)))) end@5@00)))
(assert (get%precondition ($Snap.combine
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))
  ($Snap.combine $Snap.unit $Snap.unit)) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$)))) (-
  i@4@00
  1) end@5@00))
(pop) ; 6
; Joined path conditions
(assert (and
  (<= 0 (- i@4@00 1))
  (length%precondition ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$)))) end@5@00)
  (<
    (- i@4@00 1)
    (length ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$)))) end@5@00))
  (get%precondition ($Snap.combine
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))
    ($Snap.combine $Snap.unit $Snap.unit)) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$)))) (-
    i@4@00
    1) end@5@00)))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (= i@4@00 0))
  (and
    (not (= i@4@00 0))
    (<= 0 (- i@4@00 1))
    (length%precondition ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$)))) end@5@00)
    (<
      (- i@4@00 1)
      (length ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$)))) end@5@00))
    (get%precondition ($Snap.combine
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))
      ($Snap.combine $Snap.unit $Snap.unit)) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$)))) (-
      i@4@00
      1) end@5@00))))
(assert (or (not (= i@4@00 0)) (= i@4@00 0)))
(pop) ; 3
(push) ; 3
; [else-branch: 3 | First:(Second:(First:(s@$))) == end@5@00]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$))))
  end@5@00))
(assert (= ($Snap.second ($Snap.second ($Snap.first s@$))) $Snap.unit))
; [eval] (i == 0 ? this.value : get(this.next, i - 1, end))
; [eval] i == 0
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= i@4@00 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= i@4@00 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 5 | i@4@00 == 0 | live]
; [else-branch: 5 | i@4@00 != 0 | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 5 | i@4@00 == 0]
(assert (= i@4@00 0))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (= i@4@00 0))
(pop) ; 3
(pop) ; 2
(declare-fun joined_unfolding@9@00 ($Snap $Ref Int $Ref) Int)
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$))))
      end@5@00))
  (=
    (joined_unfolding@9@00 s@$ this@3@00 i@4@00 end@5@00)
    (ite
      (= i@4@00 0)
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$)))
      (get ($Snap.combine
        ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))
        ($Snap.combine $Snap.unit $Snap.unit)) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$)))) (-
        i@4@00
        1) end@5@00)))))
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$))))
    end@5@00)
  (=
    (joined_unfolding@9@00 s@$ this@3@00 i@4@00 end@5@00)
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$))))))
; Joined path conditions
(assert (and
  (lseg%trigger ($Snap.first s@$) this@3@00 end@5@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (not (= this@3@00 $Ref.null))
  (=
    ($Snap.second ($Snap.first s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first s@$)))
      ($Snap.second ($Snap.second ($Snap.first s@$)))))))
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$))))
      end@5@00))
  (and
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$))))
        end@5@00))
    (=
      ($Snap.second ($Snap.second ($Snap.first s@$)))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))))
    (= ($Snap.first ($Snap.second ($Snap.second ($Snap.first s@$)))) $Snap.unit)
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$))))
        $Ref.null))
    (=>
      (not (= i@4@00 0))
      (and
        (not (= i@4@00 0))
        (<= 0 (- i@4@00 1))
        (length%precondition ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$)))) end@5@00)
        (<
          (- i@4@00 1)
          (length ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$)))) end@5@00))
        (get%precondition ($Snap.combine
          ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))
          ($Snap.combine $Snap.unit $Snap.unit)) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$)))) (-
          i@4@00
          1) end@5@00)))
    (or (not (= i@4@00 0)) (= i@4@00 0)))))
; Joined path conditions
(assert (and
  (lseg%trigger ($Snap.first s@$) this@3@00 end@5@00)
  (=
    ($Snap.first s@$)
    ($Snap.combine
      ($Snap.first ($Snap.first s@$))
      ($Snap.second ($Snap.first s@$))))
  (not (= this@3@00 $Ref.null))
  (=
    ($Snap.second ($Snap.first s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first s@$)))
      ($Snap.second ($Snap.second ($Snap.first s@$)))))))
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$))))
    end@5@00)
  (and
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$))))
      end@5@00)
    (= ($Snap.second ($Snap.second ($Snap.first s@$))) $Snap.unit)
    (= i@4@00 0))))
(assert (or
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$))))
    end@5@00)
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$))))
      end@5@00))))
(assert (= result@6@00 (joined_unfolding@9@00 s@$ this@3@00 i@4@00 end@5@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (this@3@00 $Ref) (i@4@00 Int) (end@5@00 $Ref)) (!
  (=>
    (get%precondition s@$ this@3@00 i@4@00 end@5@00)
    (=
      (get s@$ this@3@00 i@4@00 end@5@00)
      (ite
        (= i@4@00 0)
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first s@$)))
        (get%limited ($Snap.combine
          ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))
          ($Snap.combine $Snap.unit $Snap.unit)) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$)))) (-
          i@4@00
          1) end@5@00))))
  :pattern ((get s@$ this@3@00 i@4@00 end@5@00))
  :pattern ((get%stateless this@3@00 i@4@00 end@5@00) (lseg%trigger ($Snap.first s@$) this@3@00 end@5@00))
  :qid |quant-u-21890|)))
(assert (forall ((s@$ $Snap) (this@3@00 $Ref) (i@4@00 Int) (end@5@00 $Ref)) (!
  (=>
    (get%precondition s@$ this@3@00 i@4@00 end@5@00)
    (ite
      (= i@4@00 0)
      true
      (get%precondition ($Snap.combine
        ($Snap.second ($Snap.second ($Snap.second ($Snap.first s@$))))
        ($Snap.combine $Snap.unit $Snap.unit)) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first s@$)))) (-
        i@4@00
        1) end@5@00)))
  :pattern ((get s@$ this@3@00 i@4@00 end@5@00))
  :qid |quant-u-21891|)))
; ---------- lseg ----------
(declare-const this@10@00 $Ref)
(declare-const end@11@00 $Ref)
(push) ; 1
(declare-const $t@12@00 $Snap)
(assert (= $t@12@00 ($Snap.combine ($Snap.first $t@12@00) ($Snap.second $t@12@00))))
(assert (not (= this@10@00 $Ref.null)))
(assert (=
  ($Snap.second $t@12@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@12@00))
    ($Snap.second ($Snap.second $t@12@00)))))
; [eval] this.next != end
(push) ; 2
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@12@00))) end@11@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (not
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@12@00))) end@11@00))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 6 | First:(Second:($t@12@00)) != end@11@00 | live]
; [else-branch: 6 | First:(Second:($t@12@00)) == end@11@00 | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 6 | First:(Second:($t@12@00)) != end@11@00]
(assert (not
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@12@00))) end@11@00)))
(assert (=
  ($Snap.second ($Snap.second $t@12@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@12@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@12@00))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@12@00))) $Snap.unit))
; [eval] this.next != null
(assert (not
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@12@00))) $Ref.null)))
(pop) ; 2
(push) ; 2
; [else-branch: 6 | First:(Second:($t@12@00)) == end@11@00]
(assert (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@12@00))) end@11@00))
(assert (= ($Snap.second ($Snap.second $t@12@00)) $Snap.unit))
(pop) ; 2
(pop) ; 1
