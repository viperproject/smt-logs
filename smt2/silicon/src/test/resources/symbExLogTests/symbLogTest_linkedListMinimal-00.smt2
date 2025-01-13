(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-13 17:36:02
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
(declare-fun lseg%trigger ($Snap $Ref $Ref) Bool)
(declare-fun List%trigger ($Snap $Ref) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ---------- lseg ----------
(declare-const this@0@00 $Ref)
(declare-const end@1@00 $Ref)
(set-option :timeout 0)
(push) ; 1
; [eval] this != end
(push) ; 2
(set-option :timeout 10)
(assert (not (= this@0@00 end@1@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (not (= this@0@00 end@1@00))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | this@0@00 != end@1@00 | live]
; [else-branch: 0 | this@0@00 == end@1@00 | live]
(set-option :timeout 0)
(push) ; 2
; [then-branch: 0 | this@0@00 != end@1@00]
(assert (not (= this@0@00 end@1@00)))
(declare-const $t@2@00 $Snap)
(assert (= $t@2@00 ($Snap.combine ($Snap.first $t@2@00) ($Snap.second $t@2@00))))
(assert (not (= this@0@00 $Ref.null)))
(assert (=
  ($Snap.second $t@2@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@2@00))
    ($Snap.second ($Snap.second $t@2@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@2@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@2@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@2@00))))))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@2@00))) $Snap.unit))
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(push) ; 3
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second $t@2@00))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@2@00))) end@1@00))
; [eval] this != end
(push) ; 4
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@2@00))) end@1@00)))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (not
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@2@00))) end@1@00))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [then-branch: 1 | First:(Second:($t@2@00)) != end@1@00 | live]
; [else-branch: 1 | First:(Second:($t@2@00)) == end@1@00 | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 1 | First:(Second:($t@2@00)) != end@1@00]
(assert (not
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@2@00))) end@1@00)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second $t@2@00)))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@2@00))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00)))))))
(push) ; 5
(set-option :timeout 10)
(assert (not (= this@0@00 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@2@00))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (not
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@2@00))) $Ref.null)))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00)))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))))
(set-option :timeout 0)
(push) ; 5
(set-option :timeout 10)
(assert (not (= this@0@00 ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@2@00))))))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00)))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))
  $Snap.unit))
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(set-option :timeout 0)
(push) ; 5
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00)))))) end@1@00))
; [eval] this != end
(push) ; 6
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))
  end@1@00)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 6
(set-option :timeout 10)
(assert (not (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))
    end@1@00))))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 2 | First:(Second:(First:(Second:(Second:($t@2@00))))) != end@1@00 | live]
; [else-branch: 2 | First:(Second:(First:(Second:(Second:($t@2@00))))) == end@1@00 | live]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 2 | First:(Second:(First:(Second:(Second:($t@2@00))))) != end@1@00]
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))
    end@1@00)))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))
  ($Snap.combine
    ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00)))))))
    ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))))))
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@2@00)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00)))))))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  this@0@00
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00)))))))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (not
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))
    $Ref.null)))
(assert (=
  ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))))
    ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00)))))))))))
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@2@00)))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00)))))))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 7
(set-option :timeout 10)
(assert (not (=
  this@0@00
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00)))))))))
(check-sat)
; unknown
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00)))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00)))))))))
  $Snap.unit))
; [eval] (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
(declare-const recunf@3@00 Bool)
(assert (as recunf@3@00  Bool))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(set-option :timeout 0)
(push) ; 7
(push) ; 8
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))
  end@1@00)))
(check-sat)
; unknown
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
; [then-branch: 3 | First:(Second:(First:(Second:(Second:($t@2@00))))) != end@1@00 | live]
; [else-branch: 3 | First:(Second:(First:(Second:(Second:($t@2@00))))) == end@1@00 | dead]
(set-option :timeout 0)
(push) ; 8
; [then-branch: 3 | First:(Second:(First:(Second:(Second:($t@2@00))))) != end@1@00]
; [eval] this.data <= this.next.data
(pop) ; 8
(pop) ; 7
; Joined path conditions
(pop) ; 6
(push) ; 6
; [else-branch: 2 | First:(Second:(First:(Second:(Second:($t@2@00))))) == end@1@00]
(assert (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))
  end@1@00))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))
  $Snap.unit))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(push) ; 7
; [then-branch: 4 | First:(Second:(First:(Second:(Second:($t@2@00))))) != end@1@00 | dead]
; [else-branch: 4 | First:(Second:(First:(Second:(Second:($t@2@00))))) == end@1@00 | live]
(push) ; 8
; [else-branch: 4 | First:(Second:(First:(Second:(Second:($t@2@00))))) == end@1@00]
(pop) ; 8
(pop) ; 7
; Joined path conditions
(pop) ; 6
(pop) ; 5
(declare-const joined_unfolding@4@00 Bool)
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))
      end@1@00))
  (=
    (as joined_unfolding@4@00  Bool)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))
          end@1@00))
      (<=
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@2@00)))))
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00)))))))))))))
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))
    end@1@00)
  (= (as joined_unfolding@4@00  Bool) true)))
; Joined path conditions
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00)))))) end@1@00))
(assert (=>
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))
      end@1@00))
  (and
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))
        end@1@00))
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))
      ($Snap.combine
        ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00)))))))
        ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00)))))))))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))
        $Ref.null))
    (=
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00)))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))))
        ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00)))))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00)))))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00)))))))))
      $Snap.unit)
    (as recunf@3@00  Bool))))
; Joined path conditions
(assert (=>
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))
    end@1@00)
  (and
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))
      end@1@00)
    (=
      ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))
      $Snap.unit))))
(assert (or
  (=
    ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))
    end@1@00)
  (not
    (=
      ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))
      end@1@00))))
(assert (as joined_unfolding@4@00  Bool))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(push) ; 5
(push) ; 6
(set-option :timeout 10)
(assert (not (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@2@00))) end@1@00)))
(check-sat)
; unknown
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; [then-branch: 5 | First:(Second:($t@2@00)) != end@1@00 | live]
; [else-branch: 5 | First:(Second:($t@2@00)) == end@1@00 | dead]
(set-option :timeout 0)
(push) ; 6
; [then-branch: 5 | First:(Second:($t@2@00)) != end@1@00]
; [eval] this.data <= this.next.data
(pop) ; 6
(pop) ; 5
; Joined path conditions
(pop) ; 4
(push) ; 4
; [else-branch: 1 | First:(Second:($t@2@00)) == end@1@00]
(assert (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@2@00))) end@1@00))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@2@00))) $Snap.unit))
; [eval] this.next != end ==> this.data <= this.next.data
; [eval] this.next != end
(push) ; 5
; [then-branch: 6 | First:(Second:($t@2@00)) != end@1@00 | dead]
; [else-branch: 6 | First:(Second:($t@2@00)) == end@1@00 | live]
(push) ; 6
; [else-branch: 6 | First:(Second:($t@2@00)) == end@1@00]
(pop) ; 6
(pop) ; 5
; Joined path conditions
(pop) ; 4
(pop) ; 3
(declare-const joined_unfolding@5@00 Bool)
(assert (=>
  (not
    (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@2@00))) end@1@00))
  (=
    (as joined_unfolding@5@00  Bool)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@2@00)))
          end@1@00))
      (<=
        ($SortWrappers.$SnapToInt ($Snap.first $t@2@00))
        ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))))))
(assert (=>
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@2@00))) end@1@00)
  (= (as joined_unfolding@5@00  Bool) true)))
; Joined path conditions
(assert (lseg%trigger ($Snap.first ($Snap.second ($Snap.second $t@2@00))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@2@00))) end@1@00))
(assert (=>
  (not
    (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@2@00))) end@1@00))
  (and
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@2@00)))
        end@1@00))
    (=
      ($Snap.first ($Snap.second ($Snap.second $t@2@00)))
      ($Snap.combine
        ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@2@00))))
        ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))
    (not
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@2@00)))
        $Ref.null))
    (=
      ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00)))))
        ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00)))))))
    (=
      ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00)))))
      ($Snap.combine
        ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))
        ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))))
    (=
      ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))
      $Snap.unit)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))
          end@1@00))
      (=
        (as joined_unfolding@4@00  Bool)
        (=>
          (not
            (=
              ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))
              end@1@00))
          (<=
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second $t@2@00)))))
            ($SortWrappers.$SnapToInt ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))))))))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))
        end@1@00)
      (= (as joined_unfolding@4@00  Bool) true))
    (lseg%trigger ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00)))))) ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00)))))) end@1@00)
    (=>
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))
          end@1@00))
      (and
        (not
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))
            end@1@00))
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))
          ($Snap.combine
            ($Snap.first ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00)))))))
            ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00)))))))))
        (not
          (=
            ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))
            $Ref.null))
        (=
          ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00)))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))))
            ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))))
          ($Snap.combine
            ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00)))))))))
            ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00)))))))))))
        (=
          ($Snap.second ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00)))))))))
          $Snap.unit)
        (as recunf@3@00  Bool)))
    (=>
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))
        end@1@00)
      (and
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))
          end@1@00)
        (=
          ($Snap.first ($Snap.second ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))
          $Snap.unit)))
    (or
      (=
        ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))
        end@1@00)
      (not
        (=
          ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.first ($Snap.second ($Snap.second $t@2@00))))))
          end@1@00)))
    (as joined_unfolding@4@00  Bool))))
; Joined path conditions
(assert (=>
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@2@00))) end@1@00)
  (and
    (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@2@00))) end@1@00)
    (= ($Snap.first ($Snap.second ($Snap.second $t@2@00))) $Snap.unit))))
(assert (or
  (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@2@00))) end@1@00)
  (not
    (= ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second $t@2@00))) end@1@00))))
(assert (as joined_unfolding@5@00  Bool))
(pop) ; 2
(push) ; 2
; [else-branch: 0 | this@0@00 == end@1@00]
(assert (= this@0@00 end@1@00))
(declare-const $t@6@00 $Snap)
(assert (= $t@6@00 $Snap.unit))
(pop) ; 2
(pop) ; 1
; ---------- List ----------
(declare-const this@7@00 $Ref)
(push) ; 1
(declare-const $t@8@00 $Snap)
(assert (= $t@8@00 ($Snap.combine ($Snap.first $t@8@00) ($Snap.second $t@8@00))))
(assert (not (= this@7@00 $Ref.null)))
(pop) ; 1
