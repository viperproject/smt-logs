(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-26 23:06:51
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
(declare-fun Nodelen ($Snap $Ref) Int)
(declare-fun Nodelen%limited ($Snap $Ref) Int)
(declare-fun Nodelen%stateless ($Ref) Bool)
(declare-fun Nodelen%precondition ($Snap $Ref) Bool)
(declare-fun Nodeget ($Snap $Ref Int) Int)
(declare-fun Nodeget%limited ($Snap $Ref Int) Int)
(declare-fun Nodeget%stateless ($Ref Int) Bool)
(declare-fun Nodeget%precondition ($Snap $Ref Int) Bool)
(declare-fun Listlen ($Snap $Ref) Int)
(declare-fun Listlen%limited ($Snap $Ref) Int)
(declare-fun Listlen%stateless ($Ref) Bool)
(declare-fun Listlen%precondition ($Snap $Ref) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun Nodeinv%trigger ($Snap $Ref) Bool)
(declare-fun Listinv%trigger ($Snap $Ref) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ---------- FUNCTION Nodelen----------
(declare-fun this@0@00 () $Ref)
(declare-fun result@1@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
; [eval] this != null
(assert (not (= this@0@00 $Ref.null)))
(declare-const $k@7@00 $Perm)
(assert ($Perm.isReadVar $k@7@00))
(assert (<= $Perm.No $k@7@00))
(declare-const $t@8@00 $Snap)
(assert (= $t@8@00 $Snap.unit))
; [eval] result > 0
(assert (> result@1@00 0))
(pop) ; 1
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  (= (Nodelen%limited s@$ this@0@00) (Nodelen s@$ this@0@00))
  :pattern ((Nodelen s@$ this@0@00))
  :qid |quant-u-11543|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  (Nodelen%stateless this@0@00)
  :pattern ((Nodelen%limited s@$ this@0@00))
  :qid |quant-u-11544|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  (let ((result@1@00 (Nodelen%limited s@$ this@0@00))) (and
    ($Perm.isReadVar $k@7@00)
    (=> (Nodelen%precondition s@$ this@0@00) (> result@1@00 0))))
  :pattern ((Nodelen%limited s@$ this@0@00))
  :qid |quant-u-11549|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  (let ((result@1@00 (Nodelen%limited s@$ this@0@00))) true)
  :pattern ((Nodelen%limited s@$ this@0@00))
  :qid |quant-u-11550|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert ($Perm.isReadVar $k@7@00))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
(assert (not (= this@0@00 $Ref.null)))
(assert (<= $Perm.No $k@7@00))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(Nodeinv(this), wildcard) in (this.Noden == null ? 1 : 1 + Nodelen(this.Noden)))
(declare-const $k@9@00 $Perm)
(assert ($Perm.isReadVar $k@9@00))
(set-option :timeout 0)
(push) ; 2
(assert (not (< $Perm.No $k@9@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(declare-const $k@10@00 $Perm)
(assert ($Perm.isReadVar $k@10@00))
(push) ; 3
(assert (not (=> (< $Perm.No $k@10@00) (< $Perm.No $k@7@00))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@10@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Nodeinv%trigger ($Snap.second s@$) this@0@00))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (<= $Perm.No $k@9@00))
(assert (=> (< $Perm.No $k@9@00) (not (= this@0@00 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
; [eval] this.Noden != null
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@9@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$))))
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
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | First:(Second:(Second:(s@$))) != Null | live]
; [else-branch: 0 | First:(Second:(Second:(s@$))) == Null | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | First:(Second:(Second:(s@$))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$))))
    $Ref.null)))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@9@00)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  this@0@00
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$)))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] (this.Noden == null ? 1 : 1 + Nodelen(this.Noden))
; [eval] this.Noden == null
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@9@00)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
; [then-branch: 1 | First:(Second:(Second:(s@$))) == Null | dead]
; [else-branch: 1 | First:(Second:(Second:(s@$))) != Null | live]
(push) ; 5
; [else-branch: 1 | First:(Second:(Second:(s@$))) != Null]
; [eval] 1 + Nodelen(this.Noden)
; [eval] Nodelen(this.Noden)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@9@00)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
; [eval] this != null
(declare-const $k@11@00 $Perm)
(assert ($Perm.isReadVar $k@11@00))
(push) ; 7
(assert (not (=> (< $Perm.No $k@11@00) (< $Perm.No $k@9@00))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@11@00)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (Nodelen%precondition ($Snap.combine
  $Snap.unit
  ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$))))))
(pop) ; 6
; Joined path conditions
(assert ($Perm.isReadVar $k@11@00))
(assert (Nodelen%precondition ($Snap.combine
  $Snap.unit
  ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$))))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@11@00))
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$))))
      $Ref.null))
  (Nodelen%precondition ($Snap.combine
    $Snap.unit
    ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$)))))))
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 0 | First:(Second:(Second:(s@$))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$))))
  $Ref.null))
(assert (= ($Snap.second ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] (this.Noden == null ? 1 : 1 + Nodelen(this.Noden))
; [eval] this.Noden == null
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@9@00)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | First:(Second:(Second:(s@$))) == Null | live]
; [else-branch: 2 | First:(Second:(Second:(s@$))) != Null | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 2 | First:(Second:(Second:(s@$))) == Null]
(pop) ; 5
(pop) ; 4
; Joined path conditions
(pop) ; 3
(pop) ; 2
(declare-fun joined_unfolding@12@00 ($Snap $Ref) Int)
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$))))
      $Ref.null))
  (=
    (joined_unfolding@12@00 s@$ this@0@00)
    (+
      1
      (Nodelen ($Snap.combine
        $Snap.unit
        ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$)))))))))
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$))))
    $Ref.null)
  (= (joined_unfolding@12@00 s@$ this@0@00) 1)))
; Joined path conditions
(assert ($Perm.isReadVar $k@10@00))
(assert ($Perm.isReadVar $k@11@00))
(assert (and
  (Nodeinv%trigger ($Snap.second s@$) this@0@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (<= $Perm.No $k@9@00)
  (=> (< $Perm.No $k@9@00) (not (= this@0@00 $Ref.null)))
  (=
    ($Snap.second ($Snap.second s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second s@$)))
      ($Snap.second ($Snap.second ($Snap.second s@$)))))))
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$))))
      $Ref.null))
  (and
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$))))
        $Ref.null))
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$))))
          $Ref.null))
      (Nodelen%precondition ($Snap.combine
        $Snap.unit
        ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$)))))))))
; Joined path conditions
(assert (and
  (Nodeinv%trigger ($Snap.second s@$) this@0@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (<= $Perm.No $k@9@00)
  (=> (< $Perm.No $k@9@00) (not (= this@0@00 $Ref.null)))
  (=
    ($Snap.second ($Snap.second s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second s@$)))
      ($Snap.second ($Snap.second ($Snap.second s@$)))))))
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$))))
    $Ref.null)
  (and
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$))))
      $Ref.null)
    (= ($Snap.second ($Snap.second ($Snap.second s@$))) $Snap.unit))))
(assert (or
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$))))
    $Ref.null)
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$))))
      $Ref.null))))
(assert (= result@1@00 (joined_unfolding@12@00 s@$ this@0@00)))
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
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  (and
    ($Perm.isReadVar $k@7@00)
    ($Perm.isReadVar $k@9@00)
    ($Perm.isReadVar $k@10@00)
    ($Perm.isReadVar $k@11@00)
    (=>
      (Nodelen%precondition s@$ this@0@00)
      (=
        (Nodelen s@$ this@0@00)
        (ite
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$))))
            $Ref.null)
          1
          (+
            1
            (Nodelen%limited ($Snap.combine
              $Snap.unit
              ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$))))))))))
  :pattern ((Nodelen s@$ this@0@00))
  :pattern ((Nodelen%stateless this@0@00) (Nodeinv%trigger ($Snap.second s@$) this@0@00))
  :qid |quant-u-11551|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  (=>
    (Nodelen%precondition s@$ this@0@00)
    (ite
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$))))
        $Ref.null)
      true
      (Nodelen%precondition ($Snap.combine
        $Snap.unit
        ($Snap.second ($Snap.second ($Snap.second s@$)))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second s@$)))))))
  :pattern ((Nodelen s@$ this@0@00))
  :qid |quant-u-11552|)))
; ---------- FUNCTION Nodeget----------
(declare-fun this@2@00 () $Ref)
(declare-fun i@3@00 () Int)
(declare-fun result@4@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
; [eval] this != null
(assert (not (= this@2@00 $Ref.null)))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(declare-const $k@13@00 $Perm)
(assert ($Perm.isReadVar $k@13@00))
(assert (<= $Perm.No $k@13@00))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] 0 <= i
(assert (<= 0 i@3@00))
(assert (= ($Snap.second ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] i < Nodelen(this)
; [eval] Nodelen(this)
(push) ; 2
; [eval] this != null
(declare-const $k@14@00 $Perm)
(assert ($Perm.isReadVar $k@14@00))
(push) ; 3
(assert (not (=> (< $Perm.No $k@14@00) (< $Perm.No $k@13@00))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@14@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Nodelen%precondition ($Snap.combine $Snap.unit ($Snap.first ($Snap.second s@$))) this@2@00))
(pop) ; 2
; Joined path conditions
(assert ($Perm.isReadVar $k@14@00))
(assert (Nodelen%precondition ($Snap.combine $Snap.unit ($Snap.first ($Snap.second s@$))) this@2@00))
(assert (<
  i@3@00
  (Nodelen ($Snap.combine $Snap.unit ($Snap.first ($Snap.second s@$))) this@2@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (this@2@00 $Ref) (i@3@00 Int)) (!
  (= (Nodeget%limited s@$ this@2@00 i@3@00) (Nodeget s@$ this@2@00 i@3@00))
  :pattern ((Nodeget s@$ this@2@00 i@3@00))
  :qid |quant-u-11545|)))
(assert (forall ((s@$ $Snap) (this@2@00 $Ref) (i@3@00 Int)) (!
  (Nodeget%stateless this@2@00 i@3@00)
  :pattern ((Nodeget%limited s@$ this@2@00 i@3@00))
  :qid |quant-u-11546|)))
; ----- Verification of function body and postcondition -----
(set-option :timeout 0)
(push) ; 1
(assert ($Perm.isReadVar $k@13@00))
(assert ($Perm.isReadVar $k@14@00))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
(assert (not (= this@2@00 $Ref.null)))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (<= $Perm.No $k@13@00))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit))
(assert (<= 0 i@3@00))
(assert (= ($Snap.second ($Snap.second ($Snap.second s@$))) $Snap.unit))
(assert (Nodelen%precondition ($Snap.combine $Snap.unit ($Snap.first ($Snap.second s@$))) this@2@00))
(assert (<
  i@3@00
  (Nodelen ($Snap.combine $Snap.unit ($Snap.first ($Snap.second s@$))) this@2@00)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(Nodeinv(this), wildcard) in (i == 0 ? this.Nodev : Nodeget(this.Noden, i - 1)))
(declare-const $k@15@00 $Perm)
(assert ($Perm.isReadVar $k@15@00))
(set-option :timeout 0)
(push) ; 2
(assert (not (< $Perm.No $k@15@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(declare-const $k@16@00 $Perm)
(assert ($Perm.isReadVar $k@16@00))
(push) ; 3
(assert (not (=> (< $Perm.No $k@16@00) (< $Perm.No $k@13@00))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@16@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Nodeinv%trigger ($Snap.first ($Snap.second s@$)) this@2@00))
(assert (=
  ($Snap.first ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second s@$)))
    ($Snap.second ($Snap.first ($Snap.second s@$))))))
(assert (<= $Perm.No $k@15@00))
(assert (=> (< $Perm.No $k@15@00) (not (= this@2@00 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second s@$)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$)))))))
; [eval] this.Noden != null
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$)))))
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
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$)))))
    $Ref.null))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | First:(Second:(First:(Second:(s@$)))) != Null | live]
; [else-branch: 3 | First:(Second:(First:(Second:(s@$)))) == Null | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 3 | First:(Second:(First:(Second:(s@$)))) != Null]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$)))))
    $Ref.null)))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@00)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (=
  this@2@00
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$))))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] (i == 0 ? this.Nodev : Nodeget(this.Noden, i - 1))
; [eval] i == 0
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= i@3@00 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= i@3@00 0)))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 4 | i@3@00 == 0 | live]
; [else-branch: 4 | i@3@00 != 0 | live]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 4 | i@3@00 == 0]
(assert (= i@3@00 0))
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@00)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(set-option :timeout 0)
(push) ; 5
; [else-branch: 4 | i@3@00 != 0]
(assert (not (= i@3@00 0)))
; [eval] Nodeget(this.Noden, i - 1)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@00)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [eval] i - 1
(set-option :timeout 0)
(push) ; 6
; [eval] this != null
(declare-const $k@17@00 $Perm)
(assert ($Perm.isReadVar $k@17@00))
(push) ; 7
(assert (not (=> (< $Perm.No $k@17@00) (< $Perm.No $k@15@00))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@17@00)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; [eval] 0 <= i
(set-option :timeout 0)
(push) ; 7
(assert (not (<= 0 (- i@3@00 1))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<= 0 (- i@3@00 1)))
; [eval] i < Nodelen(this)
; [eval] Nodelen(this)
(push) ; 7
; [eval] this != null
(declare-const $k@18@00 $Perm)
(assert ($Perm.isReadVar $k@18@00))
(push) ; 8
(assert (not (=> (< $Perm.No $k@18@00) (< $Perm.No $k@15@00))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(push) ; 8
(set-option :timeout 10)
(assert (not (< $Perm.No $k@18@00)))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(assert (Nodelen%precondition ($Snap.combine
  $Snap.unit
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$)))))))
(pop) ; 7
; Joined path conditions
(assert ($Perm.isReadVar $k@18@00))
(assert (Nodelen%precondition ($Snap.combine
  $Snap.unit
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$)))))))
(set-option :timeout 0)
(push) ; 7
(assert (not (<
  (- i@3@00 1)
  (Nodelen ($Snap.combine
    $Snap.unit
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$)))))))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (<
  (- i@3@00 1)
  (Nodelen ($Snap.combine
    $Snap.unit
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$))))))))
(assert (Nodeget%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))
    ($Snap.combine $Snap.unit $Snap.unit))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$))))) (-
  i@3@00
  1)))
(pop) ; 6
; Joined path conditions
(assert ($Perm.isReadVar $k@17@00))
(assert ($Perm.isReadVar $k@18@00))
(assert (and
  (<= 0 (- i@3@00 1))
  (Nodelen%precondition ($Snap.combine
    $Snap.unit
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$))))))
  (<
    (- i@3@00 1)
    (Nodelen ($Snap.combine
      $Snap.unit
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$)))))))
  (Nodeget%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))
      ($Snap.combine $Snap.unit $Snap.unit))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$))))) (-
    i@3@00
    1))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert ($Perm.isReadVar $k@17@00))
(assert ($Perm.isReadVar $k@18@00))
(assert (=>
  (not (= i@3@00 0))
  (and
    (not (= i@3@00 0))
    (<= 0 (- i@3@00 1))
    (Nodelen%precondition ($Snap.combine
      $Snap.unit
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$))))))
    (<
      (- i@3@00 1)
      (Nodelen ($Snap.combine
        $Snap.unit
        ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$)))))))
    (Nodeget%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))
        ($Snap.combine $Snap.unit $Snap.unit))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$))))) (-
      i@3@00
      1)))))
(assert (or (not (= i@3@00 0)) (= i@3@00 0)))
(pop) ; 3
(push) ; 3
; [else-branch: 3 | First:(Second:(First:(Second:(s@$)))) == Null]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$)))))
  $Ref.null))
(assert (= ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$)))) $Snap.unit))
; [eval] (i == 0 ? this.Nodev : Nodeget(this.Noden, i - 1))
; [eval] i == 0
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= i@3@00 0))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= i@3@00 0)))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 5 | i@3@00 == 0 | live]
; [else-branch: 5 | i@3@00 != 0 | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 5 | i@3@00 == 0]
(assert (= i@3@00 0))
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@15@00)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (= i@3@00 0))
(pop) ; 3
(pop) ; 2
(declare-fun joined_unfolding@19@00 ($Snap $Ref Int) Int)
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$)))))
      $Ref.null))
  (=
    (joined_unfolding@19@00 s@$ this@2@00 i@3@00)
    (ite
      (= i@3@00 0)
      ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second s@$))))
      (Nodeget ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))
          ($Snap.combine $Snap.unit $Snap.unit))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$))))) (-
        i@3@00
        1))))))
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$)))))
    $Ref.null)
  (=
    (joined_unfolding@19@00 s@$ this@2@00 i@3@00)
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second s@$)))))))
; Joined path conditions
(assert ($Perm.isReadVar $k@16@00))
(assert ($Perm.isReadVar $k@17@00))
(assert ($Perm.isReadVar $k@18@00))
(assert (and
  (Nodeinv%trigger ($Snap.first ($Snap.second s@$)) this@2@00)
  (=
    ($Snap.first ($Snap.second s@$))
    ($Snap.combine
      ($Snap.first ($Snap.first ($Snap.second s@$)))
      ($Snap.second ($Snap.first ($Snap.second s@$)))))
  (<= $Perm.No $k@15@00)
  (=> (< $Perm.No $k@15@00) (not (= this@2@00 $Ref.null)))
  (=
    ($Snap.second ($Snap.first ($Snap.second s@$)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$))))
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))))))
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$)))))
      $Ref.null))
  (and
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$)))))
        $Ref.null))
    (=>
      (not (= i@3@00 0))
      (and
        (not (= i@3@00 0))
        (<= 0 (- i@3@00 1))
        (Nodelen%precondition ($Snap.combine
          $Snap.unit
          ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$))))))
        (<
          (- i@3@00 1)
          (Nodelen ($Snap.combine
            $Snap.unit
            ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$)))))))
        (Nodeget%precondition ($Snap.combine
          $Snap.unit
          ($Snap.combine
            ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))
            ($Snap.combine $Snap.unit $Snap.unit))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$))))) (-
          i@3@00
          1))))
    (or (not (= i@3@00 0)) (= i@3@00 0)))))
; Joined path conditions
(assert (and
  (Nodeinv%trigger ($Snap.first ($Snap.second s@$)) this@2@00)
  (=
    ($Snap.first ($Snap.second s@$))
    ($Snap.combine
      ($Snap.first ($Snap.first ($Snap.second s@$)))
      ($Snap.second ($Snap.first ($Snap.second s@$)))))
  (<= $Perm.No $k@15@00)
  (=> (< $Perm.No $k@15@00) (not (= this@2@00 $Ref.null)))
  (=
    ($Snap.second ($Snap.first ($Snap.second s@$)))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$))))
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))))))
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$)))))
    $Ref.null)
  (and
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$)))))
      $Ref.null)
    (= ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$)))) $Snap.unit)
    (= i@3@00 0))))
(assert (or
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$)))))
    $Ref.null)
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$)))))
      $Ref.null))))
(assert (= result@4@00 (joined_unfolding@19@00 s@$ this@2@00 i@3@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (this@2@00 $Ref) (i@3@00 Int)) (!
  (and
    ($Perm.isReadVar $k@13@00)
    ($Perm.isReadVar $k@14@00)
    ($Perm.isReadVar $k@15@00)
    ($Perm.isReadVar $k@16@00)
    ($Perm.isReadVar $k@17@00)
    ($Perm.isReadVar $k@18@00)
    (=>
      (Nodeget%precondition s@$ this@2@00 i@3@00)
      (=
        (Nodeget s@$ this@2@00 i@3@00)
        (ite
          (= i@3@00 0)
          ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second s@$))))
          (Nodeget%limited ($Snap.combine
            $Snap.unit
            ($Snap.combine
              ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))
              ($Snap.combine $Snap.unit $Snap.unit))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$))))) (-
            i@3@00
            1))))))
  :pattern ((Nodeget s@$ this@2@00 i@3@00))
  :pattern ((Nodeget%stateless this@2@00 i@3@00) (Nodeinv%trigger ($Snap.first ($Snap.second s@$)) this@2@00))
  :qid |quant-u-11553|)))
(assert (forall ((s@$ $Snap) (this@2@00 $Ref) (i@3@00 Int)) (!
  (=>
    (Nodeget%precondition s@$ this@2@00 i@3@00)
    (ite
      (= i@3@00 0)
      true
      (Nodeget%precondition ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($Snap.second ($Snap.second ($Snap.first ($Snap.second s@$))))
          ($Snap.combine $Snap.unit $Snap.unit))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second s@$))))) (-
        i@3@00
        1))))
  :pattern ((Nodeget s@$ this@2@00 i@3@00))
  :qid |quant-u-11554|)))
; ---------- FUNCTION Listlen----------
(declare-fun this@5@00 () $Ref)
(declare-fun result@6@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
; [eval] this != null
(assert (not (= this@5@00 $Ref.null)))
(declare-const $k@20@00 $Perm)
(assert ($Perm.isReadVar $k@20@00))
(assert (<= $Perm.No $k@20@00))
(declare-const $t@21@00 $Snap)
(assert (= $t@21@00 $Snap.unit))
; [eval] result >= 0
(assert (>= result@6@00 0))
(pop) ; 1
(assert (forall ((s@$ $Snap) (this@5@00 $Ref)) (!
  (= (Listlen%limited s@$ this@5@00) (Listlen s@$ this@5@00))
  :pattern ((Listlen s@$ this@5@00))
  :qid |quant-u-11547|)))
(assert (forall ((s@$ $Snap) (this@5@00 $Ref)) (!
  (Listlen%stateless this@5@00)
  :pattern ((Listlen%limited s@$ this@5@00))
  :qid |quant-u-11548|)))
(assert (forall ((s@$ $Snap) (this@5@00 $Ref)) (!
  (let ((result@6@00 (Listlen%limited s@$ this@5@00))) (and
    ($Perm.isReadVar $k@20@00)
    (=> (Listlen%precondition s@$ this@5@00) (>= result@6@00 0))))
  :pattern ((Listlen%limited s@$ this@5@00))
  :qid |quant-u-11555|)))
(assert (forall ((s@$ $Snap) (this@5@00 $Ref)) (!
  (let ((result@6@00 (Listlen%limited s@$ this@5@00))) true)
  :pattern ((Listlen%limited s@$ this@5@00))
  :qid |quant-u-11556|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert ($Perm.isReadVar $k@20@00))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
(assert (not (= this@5@00 $Ref.null)))
(assert (<= $Perm.No $k@20@00))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(Listinv(this), wildcard) in (this.Listc == null ? 0 : Nodelen(this.Listc)))
(declare-const $k@22@00 $Perm)
(assert ($Perm.isReadVar $k@22@00))
(set-option :timeout 0)
(push) ; 2
(assert (not (< $Perm.No $k@22@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(declare-const $k@23@00 $Perm)
(assert ($Perm.isReadVar $k@23@00))
(push) ; 3
(assert (not (=> (< $Perm.No $k@23@00) (< $Perm.No $k@20@00))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@23@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Listinv%trigger ($Snap.second s@$) this@5@00))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(assert (<= $Perm.No $k@22@00))
(assert (=> (< $Perm.No $k@22@00) (not (= this@5@00 $Ref.null))))
; [eval] this.Listc != null
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@22@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 6 | First:(Second:(s@$)) != Null | live]
; [else-branch: 6 | First:(Second:(s@$)) == Null | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 6 | First:(Second:(s@$)) != Null]
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null)))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@22@00)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [eval] (this.Listc == null ? 0 : Nodelen(this.Listc))
; [eval] this.Listc == null
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@22@00)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
; [then-branch: 7 | First:(Second:(s@$)) == Null | dead]
; [else-branch: 7 | First:(Second:(s@$)) != Null | live]
(push) ; 5
; [else-branch: 7 | First:(Second:(s@$)) != Null]
; [eval] Nodelen(this.Listc)
(push) ; 6
(set-option :timeout 10)
(assert (not (< $Perm.No $k@22@00)))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
; [eval] this != null
(declare-const $k@24@00 $Perm)
(assert ($Perm.isReadVar $k@24@00))
(push) ; 7
(assert (not (=> (< $Perm.No $k@24@00) (< $Perm.No $k@22@00))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(push) ; 7
(set-option :timeout 10)
(assert (not (< $Perm.No $k@24@00)))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (Nodelen%precondition ($Snap.combine
  $Snap.unit
  ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
(pop) ; 6
; Joined path conditions
(assert ($Perm.isReadVar $k@24@00))
(assert (Nodelen%precondition ($Snap.combine
  $Snap.unit
  ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert ($Perm.isReadVar $k@24@00))
(assert (=>
  (not
    (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null))
  (Nodelen%precondition ($Snap.combine
    $Snap.unit
    ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 6 | First:(Second:(s@$)) == Null]
(assert (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null))
(assert (= ($Snap.second ($Snap.second s@$)) $Snap.unit))
; [eval] (this.Listc == null ? 0 : Nodelen(this.Listc))
; [eval] this.Listc == null
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No $k@22@00)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; [then-branch: 8 | First:(Second:(s@$)) == Null | live]
; [else-branch: 8 | First:(Second:(s@$)) != Null | dead]
(set-option :timeout 0)
(push) ; 5
; [then-branch: 8 | First:(Second:(s@$)) == Null]
(pop) ; 5
(pop) ; 4
; Joined path conditions
(pop) ; 3
(pop) ; 2
(declare-fun joined_unfolding@25@00 ($Snap $Ref) Int)
(assert (=>
  (not
    (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null))
  (=
    (joined_unfolding@25@00 s@$ this@5@00)
    (Nodelen ($Snap.combine $Snap.unit ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))))))
(assert (=>
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null)
  (= (joined_unfolding@25@00 s@$ this@5@00) 0)))
; Joined path conditions
(assert ($Perm.isReadVar $k@23@00))
(assert ($Perm.isReadVar $k@24@00))
(assert (and
  (Listinv%trigger ($Snap.second s@$) this@5@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (<= $Perm.No $k@22@00)
  (=> (< $Perm.No $k@22@00) (not (= this@5@00 $Ref.null)))))
(assert (=>
  (not
    (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null))
  (and
    (not
      (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null))
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))
          $Ref.null))
      (Nodelen%precondition ($Snap.combine
        $Snap.unit
        ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))))
; Joined path conditions
(assert (and
  (Listinv%trigger ($Snap.second s@$) this@5@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (<= $Perm.No $k@22@00)
  (=> (< $Perm.No $k@22@00) (not (= this@5@00 $Ref.null)))))
(assert (=>
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null)
  (and
    (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null)
    (= ($Snap.second ($Snap.second s@$)) $Snap.unit))))
(assert (or
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null)
  (not
    (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null))))
(assert (= result@6@00 (joined_unfolding@25@00 s@$ this@5@00)))
; [eval] result >= 0
(push) ; 2
(assert (not (>= result@6@00 0)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (>= result@6@00 0))
(pop) ; 1
(assert (forall ((s@$ $Snap) (this@5@00 $Ref)) (!
  (and
    ($Perm.isReadVar $k@20@00)
    ($Perm.isReadVar $k@22@00)
    ($Perm.isReadVar $k@23@00)
    ($Perm.isReadVar $k@24@00)
    (=>
      (Listlen%precondition s@$ this@5@00)
      (=
        (Listlen s@$ this@5@00)
        (ite
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$)))
            $Ref.null)
          0
          (Nodelen ($Snap.combine $Snap.unit ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))))
  :pattern ((Listlen s@$ this@5@00))
  :pattern ((Listlen%stateless this@5@00) (Listinv%trigger ($Snap.second s@$) this@5@00))
  :qid |quant-u-11557|)))
(assert (forall ((s@$ $Snap) (this@5@00 $Ref)) (!
  (=>
    (Listlen%precondition s@$ this@5@00)
    (ite
      (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null)
      true
      (Nodelen%precondition ($Snap.combine
        $Snap.unit
        ($Snap.second ($Snap.second s@$))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
  :pattern ((Listlen s@$ this@5@00))
  :qid |quant-u-11558|)))
; ---------- Nodeinv ----------
(declare-const this@26@00 $Ref)
(push) ; 1
(declare-const $t@27@00 $Snap)
(assert (= $t@27@00 ($Snap.combine ($Snap.first $t@27@00) ($Snap.second $t@27@00))))
(assert (not (= this@26@00 $Ref.null)))
(assert (=
  ($Snap.second $t@27@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@27@00))
    ($Snap.second ($Snap.second $t@27@00)))))
; [eval] this.Noden != null
(push) ; 2
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@27@00))) $Ref.null)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (not
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@27@00))) $Ref.null))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 9 | First:(Second:($t@27@00)) != Null | live]
; [else-branch: 9 | First:(Second:($t@27@00)) == Null | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 9 | First:(Second:($t@27@00)) != Null]
(assert (not
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@27@00))) $Ref.null)))
(pop) ; 2
(push) ; 2
; [else-branch: 9 | First:(Second:($t@27@00)) == Null]
(assert (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@27@00))) $Ref.null))
(assert (= ($Snap.second ($Snap.second $t@27@00)) $Snap.unit))
(pop) ; 2
(pop) ; 1
; ---------- Listinv ----------
(declare-const this@28@00 $Ref)
(push) ; 1
(declare-const $t@29@00 $Snap)
(assert (= $t@29@00 ($Snap.combine ($Snap.first $t@29@00) ($Snap.second $t@29@00))))
(assert (not (= this@28@00 $Ref.null)))
; [eval] this.Listc != null
(push) ; 2
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@00)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@00)) $Ref.null))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 10 | First:($t@29@00) != Null | live]
; [else-branch: 10 | First:($t@29@00) == Null | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 10 | First:($t@29@00) != Null]
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@00)) $Ref.null)))
(pop) ; 2
(push) ; 2
; [else-branch: 10 | First:($t@29@00) == Null]
(assert (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@29@00)) $Ref.null))
(assert (= ($Snap.second $t@29@00) $Snap.unit))
(pop) ; 2
(pop) ; 1
