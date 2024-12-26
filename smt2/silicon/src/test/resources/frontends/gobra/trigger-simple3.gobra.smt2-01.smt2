(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 14:31:04
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
(declare-fun foo_pkg_F ($Snap Int) Bool)
(declare-fun foo_pkg_F%limited ($Snap Int) Bool)
(declare-fun foo_pkg_F%stateless (Int) Bool)
(declare-fun foo_pkg_F%precondition ($Snap Int) Bool)
(declare-fun bar_pkg_F ($Snap Int) Bool)
(declare-fun bar_pkg_F%limited ($Snap Int) Bool)
(declare-fun bar_pkg_F%stateless (Int) Bool)
(declare-fun bar_pkg_F%precondition ($Snap Int) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
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
(assert (forall ((s@$ $Snap) (n_pkg_V0@0@00 Int)) (!
  (= (foo_pkg_F%limited s@$ n_pkg_V0@0@00) (foo_pkg_F s@$ n_pkg_V0@0@00))
  :pattern ((foo_pkg_F s@$ n_pkg_V0@0@00))
  :qid |quant-u-4711|)))
(assert (forall ((s@$ $Snap) (n_pkg_V0@0@00 Int)) (!
  (foo_pkg_F%stateless n_pkg_V0@0@00)
  :pattern ((foo_pkg_F%limited s@$ n_pkg_V0@0@00))
  :qid |quant-u-4712|)))
(assert (forall ((s@$ $Snap) (n_pkg_V1@2@00 Int)) (!
  (= (bar_pkg_F%limited s@$ n_pkg_V1@2@00) (bar_pkg_F s@$ n_pkg_V1@2@00))
  :pattern ((bar_pkg_F s@$ n_pkg_V1@2@00))
  :qid |quant-u-4713|)))
(assert (forall ((s@$ $Snap) (n_pkg_V1@2@00 Int)) (!
  (bar_pkg_F%stateless n_pkg_V1@2@00)
  :pattern ((bar_pkg_F%limited s@$ n_pkg_V1@2@00))
  :qid |quant-u-4714|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- example_pkg_F ----------
(set-option :timeout 0)
(push) ; 1
(declare-const $t@0@01 $Snap)
(assert (= $t@0@01 ($Snap.combine ($Snap.first $t@0@01) ($Snap.second $t@0@01))))
(assert (= ($Snap.first $t@0@01) $Snap.unit))
; [eval] (forall i_pkg_V2: Int :: { foo_pkg_F(i_pkg_V2) } { bar_pkg_F(i_pkg_V2) } 0 < i_pkg_V2 ==> 0 <= i_pkg_V2)
(declare-const i_pkg_V2@1@01 Int)
(push) ; 2
; [eval] 0 < i_pkg_V2 ==> 0 <= i_pkg_V2
; [eval] 0 < i_pkg_V2
(push) ; 3
; [then-branch: 0 | 0 < i_pkg_V2@1@01 | live]
; [else-branch: 0 | !(0 < i_pkg_V2@1@01) | live]
(push) ; 4
; [then-branch: 0 | 0 < i_pkg_V2@1@01]
(assert (< 0 i_pkg_V2@1@01))
; [eval] 0 <= i_pkg_V2
(pop) ; 4
(push) ; 4
; [else-branch: 0 | !(0 < i_pkg_V2@1@01)]
(assert (not (< 0 i_pkg_V2@1@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not (< 0 i_pkg_V2@1@01)) (< 0 i_pkg_V2@1@01)))
; [eval] foo_pkg_F(i_pkg_V2)
(push) ; 3
(assert (foo_pkg_F%precondition $Snap.unit i_pkg_V2@1@01))
(pop) ; 3
; Joined path conditions
(assert (foo_pkg_F%precondition $Snap.unit i_pkg_V2@1@01))
(assert (foo_pkg_F%precondition $Snap.unit i_pkg_V2@1@01))
; [eval] bar_pkg_F(i_pkg_V2)
(push) ; 3
(assert (bar_pkg_F%precondition $Snap.unit i_pkg_V2@1@01))
(pop) ; 3
; Joined path conditions
(assert (bar_pkg_F%precondition $Snap.unit i_pkg_V2@1@01))
(assert (bar_pkg_F%precondition $Snap.unit i_pkg_V2@1@01))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((i_pkg_V2@1@01 Int)) (!
  (and
    (or (not (< 0 i_pkg_V2@1@01)) (< 0 i_pkg_V2@1@01))
    (foo_pkg_F%precondition $Snap.unit i_pkg_V2@1@01)
    (bar_pkg_F%precondition $Snap.unit i_pkg_V2@1@01))
  :pattern ((foo_pkg_F $Snap.unit i_pkg_V2@1@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/gobra/trigger-simple3.gobra.vpr@10@13@10@115-aux|)))
(assert (forall ((i_pkg_V2@1@01 Int)) (!
  (and
    (or (not (< 0 i_pkg_V2@1@01)) (< 0 i_pkg_V2@1@01))
    (foo_pkg_F%precondition $Snap.unit i_pkg_V2@1@01)
    (bar_pkg_F%precondition $Snap.unit i_pkg_V2@1@01))
  :pattern ((bar_pkg_F $Snap.unit i_pkg_V2@1@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/gobra/trigger-simple3.gobra.vpr@10@13@10@115-aux|)))
(assert (forall ((i_pkg_V2@1@01 Int)) (!
  (=> (< 0 i_pkg_V2@1@01) (<= 0 i_pkg_V2@1@01))
  :pattern ((foo_pkg_F $Snap.unit i_pkg_V2@1@01))
  :pattern ((bar_pkg_F $Snap.unit i_pkg_V2@1@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/gobra/trigger-simple3.gobra.vpr@10@13@10@115|)))
(assert (= ($Snap.second $t@0@01) $Snap.unit))
; [eval] (exists i_pkg_V3: Int :: { foo_pkg_F(i_pkg_V3) } { bar_pkg_F(i_pkg_V3) } (0 < i_pkg_V3 ? 0 <= i_pkg_V3 : true))
(declare-const i_pkg_V3@2@01 Int)
(push) ; 2
; [eval] (0 < i_pkg_V3 ? 0 <= i_pkg_V3 : true)
; [eval] 0 < i_pkg_V3
(push) ; 3
; [then-branch: 1 | 0 < i_pkg_V3@2@01 | live]
; [else-branch: 1 | !(0 < i_pkg_V3@2@01) | live]
(push) ; 4
; [then-branch: 1 | 0 < i_pkg_V3@2@01]
(assert (< 0 i_pkg_V3@2@01))
; [eval] 0 <= i_pkg_V3
(pop) ; 4
(push) ; 4
; [else-branch: 1 | !(0 < i_pkg_V3@2@01)]
(assert (not (< 0 i_pkg_V3@2@01)))
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (or (not (< 0 i_pkg_V3@2@01)) (< 0 i_pkg_V3@2@01)))
; [eval] foo_pkg_F(i_pkg_V3)
(push) ; 3
(assert (foo_pkg_F%precondition $Snap.unit i_pkg_V3@2@01))
(pop) ; 3
; Joined path conditions
(assert (foo_pkg_F%precondition $Snap.unit i_pkg_V3@2@01))
(assert (foo_pkg_F%precondition $Snap.unit i_pkg_V3@2@01))
; [eval] bar_pkg_F(i_pkg_V3)
(push) ; 3
(assert (bar_pkg_F%precondition $Snap.unit i_pkg_V3@2@01))
(pop) ; 3
; Joined path conditions
(assert (bar_pkg_F%precondition $Snap.unit i_pkg_V3@2@01))
(assert (bar_pkg_F%precondition $Snap.unit i_pkg_V3@2@01))
(pop) ; 2
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(assert (exists ((i_pkg_V3@2@01 Int)) (!
  (and
    (or (not (< 0 i_pkg_V3@2@01)) (< 0 i_pkg_V3@2@01))
    (foo_pkg_F%precondition $Snap.unit i_pkg_V3@2@01)
    (bar_pkg_F%precondition $Snap.unit i_pkg_V3@2@01))
  :pattern ((foo_pkg_F $Snap.unit i_pkg_V3@2@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/gobra/trigger-simple3.gobra.vpr@11@13@11@122-aux|)))
(assert (exists ((i_pkg_V3@2@01 Int)) (!
  (and
    (or (not (< 0 i_pkg_V3@2@01)) (< 0 i_pkg_V3@2@01))
    (foo_pkg_F%precondition $Snap.unit i_pkg_V3@2@01)
    (bar_pkg_F%precondition $Snap.unit i_pkg_V3@2@01))
  :pattern ((bar_pkg_F $Snap.unit i_pkg_V3@2@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/gobra/trigger-simple3.gobra.vpr@11@13@11@122-aux|)))
(assert (exists ((i_pkg_V3@2@01 Int)) (!
  (ite (< 0 i_pkg_V3@2@01) (<= 0 i_pkg_V3@2@01) true)
  :pattern ((foo_pkg_F $Snap.unit i_pkg_V3@2@01))
  :pattern ((bar_pkg_F $Snap.unit i_pkg_V3@2@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/src/test/resources/frontends/gobra/trigger-simple3.gobra.vpr@11@13@11@122|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; label returnLabel
(pop) ; 2
(pop) ; 1
