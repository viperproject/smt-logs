(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-08 21:25:03
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
(declare-fun NodegetNext$ ($Snap $Ref) $Ref)
(declare-fun NodegetNext$%limited ($Snap $Ref) $Ref)
(declare-fun NodegetNext$%stateless ($Ref) Bool)
(declare-fun NodegetNext$%precondition ($Snap $Ref) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun Nodevalid$%trigger ($Snap $Ref) Bool)
(declare-fun Nodep$%trigger ($Snap $Ref) Bool)
(declare-fun Nodeq$%trigger ($Snap $Ref) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ---------- FUNCTION NodegetNext$----------
(declare-fun this@0@00 () $Ref)
(declare-fun result@1@00 () $Ref)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
; [eval] this != null
(assert (not (= this@0@00 $Ref.null)))
(declare-const $k@2@00 $Perm)
(assert ($Perm.isReadVar $k@2@00))
(assert (<= $Perm.No $k@2@00))
(pop) ; 1
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  (= (NodegetNext$%limited s@$ this@0@00) (NodegetNext$ s@$ this@0@00))
  :pattern ((NodegetNext$ s@$ this@0@00))
  :qid |quant-u-24511|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  (NodegetNext$%stateless this@0@00)
  :pattern ((NodegetNext$%limited s@$ this@0@00))
  :qid |quant-u-24512|)))
; ----- Verification of function body and postcondition -----
(push) ; 1
(assert ($Perm.isReadVar $k@2@00))
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
(assert (= ($Snap.first s@$) $Snap.unit))
(assert (not (= this@0@00 $Ref.null)))
(assert (<= $Perm.No $k@2@00))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] (unfolding acc(Nodevalid$(this), wildcard) in this.Nodenext$)
(declare-const $k@3@00 $Perm)
(assert ($Perm.isReadVar $k@3@00))
(set-option :timeout 0)
(push) ; 2
(assert (not (< $Perm.No $k@3@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(declare-const $k@4@00 $Perm)
(assert ($Perm.isReadVar $k@4@00))
(push) ; 3
(assert (not (=> (< $Perm.No $k@4@00) (< $Perm.No $k@2@00))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@4@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (Nodevalid$%trigger ($Snap.second s@$) this@0@00))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
(declare-const $k@5@00 $Perm)
(assert ($Perm.isReadVar $k@5@00))
(assert (<= $Perm.No (* $k@5@00 $k@3@00)))
(assert (=> (< $Perm.No (* $k@5@00 $k@3@00)) (not (= this@0@00 $Ref.null))))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
(declare-const $k@6@00 $Perm)
(assert ($Perm.isReadVar $k@6@00))
(assert (<= $Perm.No (* $k@6@00 $k@3@00)))
(assert (=> (< $Perm.No (* $k@6@00 $k@3@00)) (not (= this@0@00 $Ref.null))))
; [eval] this.Nodenext$ != null
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (* $k@5@00 $k@3@00))))
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
; [then-branch: 0 | First:(Second:(s@$)) != Null | live]
; [else-branch: 0 | First:(Second:(s@$)) == Null | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | First:(Second:(s@$)) != Null]
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null)))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (* $k@5@00 $k@3@00))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (= this@0@00 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No $k@3@00))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (* $k@5@00 $k@3@00))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
; [else-branch: 0 | First:(Second:(s@$)) == Null]
(assert (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null))
(assert (= ($Snap.second ($Snap.second ($Snap.second s@$))) $Snap.unit))
(push) ; 4
(set-option :timeout 10)
(assert (not (< $Perm.No (* $k@5@00 $k@3@00))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(pop) ; 3
(pop) ; 2
(declare-fun joined_unfolding@7@00 ($Snap $Ref) $Ref)
(assert (=>
  (not
    (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null))
  (=
    (joined_unfolding@7@00 s@$ this@0@00)
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
(assert (=>
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null)
  (=
    (joined_unfolding@7@00 s@$ this@0@00)
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
; Joined path conditions
(assert ($Perm.isReadVar $k@4@00))
(assert ($Perm.isReadVar $k@5@00))
(assert ($Perm.isReadVar $k@6@00))
(assert (and
  (Nodevalid$%trigger ($Snap.second s@$) this@0@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (<= $Perm.No (* $k@5@00 $k@3@00))
  (=> (< $Perm.No (* $k@5@00 $k@3@00)) (not (= this@0@00 $Ref.null)))
  (=
    ($Snap.second ($Snap.second s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second s@$)))
      ($Snap.second ($Snap.second ($Snap.second s@$)))))
  (<= $Perm.No (* $k@6@00 $k@3@00))
  (=> (< $Perm.No (* $k@6@00 $k@3@00)) (not (= this@0@00 $Ref.null)))))
(assert (=>
  (not
    (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null))
  (and
    (not
      (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null))
    (<= $Perm.No $k@3@00))))
; Joined path conditions
(assert (and
  (Nodevalid$%trigger ($Snap.second s@$) this@0@00)
  (=
    ($Snap.second s@$)
    ($Snap.combine
      ($Snap.first ($Snap.second s@$))
      ($Snap.second ($Snap.second s@$))))
  (<= $Perm.No (* $k@5@00 $k@3@00))
  (=> (< $Perm.No (* $k@5@00 $k@3@00)) (not (= this@0@00 $Ref.null)))
  (=
    ($Snap.second ($Snap.second s@$))
    ($Snap.combine
      ($Snap.first ($Snap.second ($Snap.second s@$)))
      ($Snap.second ($Snap.second ($Snap.second s@$)))))
  (<= $Perm.No (* $k@6@00 $k@3@00))
  (=> (< $Perm.No (* $k@6@00 $k@3@00)) (not (= this@0@00 $Ref.null)))))
(assert (=>
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null)
  (and
    (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null)
    (= ($Snap.second ($Snap.second ($Snap.second s@$))) $Snap.unit))))
(assert (or
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null)
  (not
    (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))) $Ref.null))))
(assert (= result@1@00 (joined_unfolding@7@00 s@$ this@0@00)))
(pop) ; 1
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  (and
    ($Perm.isReadVar $k@2@00)
    ($Perm.isReadVar $k@3@00)
    ($Perm.isReadVar $k@4@00)
    ($Perm.isReadVar $k@5@00)
    ($Perm.isReadVar $k@6@00)
    (=>
      (NodegetNext$%precondition s@$ this@0@00)
      (=
        (NodegetNext$ s@$ this@0@00)
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second s@$))))))
  :pattern ((NodegetNext$ s@$ this@0@00))
  :qid |quant-u-24513|)))
(assert (forall ((s@$ $Snap) (this@0@00 $Ref)) (!
  true
  :pattern ((NodegetNext$ s@$ this@0@00))
  :qid |quant-u-24514|)))
; ---------- Nodevalid$ ----------
(declare-const this@8@00 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@9@00 $Snap)
(assert (= $t@9@00 ($Snap.combine ($Snap.first $t@9@00) ($Snap.second $t@9@00))))
(declare-const $k@10@00 $Perm)
(assert ($Perm.isReadVar $k@10@00))
(assert (<= $Perm.No $k@10@00))
(assert (<= $k@10@00 $Perm.Write))
(assert (=> (< $Perm.No $k@10@00) (not (= this@8@00 $Ref.null))))
(assert (=
  ($Snap.second $t@9@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@9@00))
    ($Snap.second ($Snap.second $t@9@00)))))
(declare-const $k@11@00 $Perm)
(assert ($Perm.isReadVar $k@11@00))
(assert (<= $Perm.No $k@11@00))
(assert (<= $k@11@00 $Perm.Write))
(assert (=> (< $Perm.No $k@11@00) (not (= this@8@00 $Ref.null))))
; [eval] this.Nodenext$ != null
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@10@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@9@00)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@9@00)) $Ref.null))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | First:($t@9@00) != Null | live]
; [else-branch: 1 | First:($t@9@00) == Null | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 1 | First:($t@9@00) != Null]
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@9@00)) $Ref.null)))
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@10@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(set-option :timeout 0)
(push) ; 2
; [else-branch: 1 | First:($t@9@00) == Null]
(assert (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@9@00)) $Ref.null))
(assert (= ($Snap.second ($Snap.second $t@9@00)) $Snap.unit))
(pop) ; 2
(pop) ; 1
; ---------- Nodep$ ----------
(declare-const this@12@00 $Ref)
(push) ; 1
(declare-const $t@13@00 $Snap)
(assert (= $t@13@00 ($Snap.combine ($Snap.first $t@13@00) ($Snap.second $t@13@00))))
(declare-const $k@14@00 $Perm)
(assert ($Perm.isReadVar $k@14@00))
(assert (<= $Perm.No $k@14@00))
(assert (<= $k@14@00 $Perm.Write))
(assert (=> (< $Perm.No $k@14@00) (not (= this@12@00 $Ref.null))))
(assert (=
  ($Snap.second $t@13@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@13@00))
    ($Snap.second ($Snap.second $t@13@00)))))
(declare-const $k@15@00 $Perm)
(assert ($Perm.isReadVar $k@15@00))
(assert (<= $Perm.No $k@15@00))
(assert (<= $k@15@00 $Perm.Write))
(assert (=> (< $Perm.No $k@15@00) (not (= this@12@00 $Ref.null))))
; [eval] this.Nodenext$ != null
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@14@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@13@00)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@13@00)) $Ref.null))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | First:($t@13@00) != Null | live]
; [else-branch: 2 | First:($t@13@00) == Null | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 2 | First:($t@13@00) != Null]
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@13@00)) $Ref.null)))
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@14@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(set-option :timeout 0)
(push) ; 2
; [else-branch: 2 | First:($t@13@00) == Null]
(assert (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@13@00)) $Ref.null))
(assert (= ($Snap.second ($Snap.second $t@13@00)) $Snap.unit))
(pop) ; 2
(pop) ; 1
; ---------- Nodeq$ ----------
(declare-const this@16@00 $Ref)
(push) ; 1
(declare-const $t@17@00 $Snap)
(assert (= $t@17@00 ($Snap.combine ($Snap.first $t@17@00) ($Snap.second $t@17@00))))
(declare-const $k@18@00 $Perm)
(assert ($Perm.isReadVar $k@18@00))
(assert (<= $Perm.No $k@18@00))
(assert (<= $k@18@00 $Perm.Write))
(assert (=> (< $Perm.No $k@18@00) (not (= this@16@00 $Ref.null))))
(assert (=
  ($Snap.second $t@17@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@17@00))
    ($Snap.second ($Snap.second $t@17@00)))))
(declare-const $k@19@00 $Perm)
(assert ($Perm.isReadVar $k@19@00))
(assert (<= $Perm.No $k@19@00))
(assert (<= $k@19@00 $Perm.Write))
(assert (=> (< $Perm.No $k@19@00) (not (= this@16@00 $Ref.null))))
; [eval] this.Nodenext$ != null
(push) ; 2
(set-option :timeout 10)
(assert (not (< $Perm.No $k@18@00)))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@17@00)) $Ref.null)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@17@00)) $Ref.null))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | First:($t@17@00) != Null | live]
; [else-branch: 3 | First:($t@17@00) == Null | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 3 | First:($t@17@00) != Null]
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@17@00)) $Ref.null)))
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No $k@18@00)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(set-option :timeout 0)
(push) ; 2
; [else-branch: 3 | First:($t@17@00) == Null]
(assert (= ($SortWrappers.$SnapTo$Ref ($Snap.first $t@17@00)) $Ref.null))
(assert (= ($Snap.second ($Snap.second $t@17@00)) $Snap.unit))
(pop) ; 2
(pop) ; 1
