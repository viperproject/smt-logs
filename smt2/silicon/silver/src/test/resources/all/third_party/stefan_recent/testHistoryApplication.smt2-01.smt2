(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 01:58:09
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
(declare-sort Process 0)
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
(declare-fun $SortWrappers.ProcessTo$Snap (Process) $Snap)
(declare-fun $SortWrappers.$SnapToProcess ($Snap) Process)
(assert (forall ((x Process)) (!
    (= x ($SortWrappers.$SnapToProcess($SortWrappers.ProcessTo$Snap x)))
    :pattern (($SortWrappers.ProcessTo$Snap x))
    :qid |$Snap.$SnapToProcessTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.ProcessTo$Snap($SortWrappers.$SnapToProcess x)))
    :pattern (($SortWrappers.$SnapToProcess x))
    :qid |$Snap.ProcessTo$SnapToProcess|
    )))
; ////////// Symbols
(declare-const p_empty<Process> Process)
(declare-fun p_merge<Process> (Process Process) Process)
(declare-fun p_seq<Process> (Process Process) Process)
(declare-const p_incr<Process> Process)
(declare-fun p_single<Process> (Int) Process)
(declare-fun p_dual<Process> (Int Int) Process)
; Declaring symbols related to program functions (from program analysis)
(declare-fun History__hist_get_x ($Snap $Ref) Int)
(declare-fun History__hist_get_x%limited ($Snap $Ref) Int)
(declare-fun History__hist_get_x%stateless ($Ref) Bool)
(declare-fun History__hist_get_x%precondition ($Snap $Ref) Bool)
(declare-fun History__free_get_x ($Snap $Ref) Int)
(declare-fun History__free_get_x%limited ($Snap $Ref) Int)
(declare-fun History__free_get_x%stateless ($Ref) Bool)
(declare-fun History__free_get_x%precondition ($Snap $Ref) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun History__hist_do_incr%trigger ($Snap $Ref $Perm Process) Bool)
(declare-fun History__hist_idle%trigger ($Snap $Ref $Perm Process) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
(assert (forall ((p Process)) (!
  (= (p_merge<Process> (as p_empty<Process>  Process) p) p)
  :pattern ((p_merge<Process> (as p_empty<Process>  Process) p))
  :qid |prog.empty_1L|)))
(assert (forall ((p Process)) (!
  (= (p_seq<Process> (as p_empty<Process>  Process) p) p)
  :pattern ((p_seq<Process> (as p_empty<Process>  Process) p))
  :qid |prog.empty_2L|)))
(assert (forall ((p Process)) (!
  (= (p_seq<Process> p (as p_empty<Process>  Process)) p)
  :pattern ((p_seq<Process> p (as p_empty<Process>  Process)))
  :qid |prog.empty_2R|)))
(assert (forall ((p1 Process)) (!
  (forall ((p2 Process)) (!
    (forall ((p3 Process)) (!
      (=
        (p_seq<Process> (p_seq<Process> p1 p2) p3)
        (p_seq<Process> p1 (p_seq<Process> p2 p3)))
      :pattern ((p_seq<Process> (p_seq<Process> p1 p2) p3))
      :pattern ((p_seq<Process> p1 (p_seq<Process> p2 p3)))
      ))
    :pattern ((p_seq<Process> p1 p2))
    ))
  
  :qid |prog.seq_assoc|)))
(assert (forall ((n Int)) (!
  (=
    (ite
      (> n 0)
      (p_seq<Process> (as p_incr<Process>  Process) (p_single<Process> (- n 1)))
      (as p_empty<Process>  Process))
    (p_single<Process> n))
  :pattern ((p_single<Process> n))
  :qid |prog.single_def|)))
(assert (forall ((n Int) (m Int)) (!
  (=
    (p_merge<Process> (p_single<Process> n) (p_single<Process> m))
    (p_dual<Process> n m))
  :pattern ((p_dual<Process> n m))
  :qid |prog.dual_def|)))
(assert (forall ((n Int)) (!
  (=
    (p_single<Process> n)
    (ite
      (> n 0)
      (p_seq<Process> (p_single<Process> (- n 1)) (as p_incr<Process>  Process))
      (as p_empty<Process>  Process)))
  :pattern ((p_single<Process> n))
  :qid |prog.lemma_post|)))
(assert (forall ((m Int) (n Int)) (!
  (=
    (p_seq<Process> (p_single<Process> m) (p_single<Process> n))
    (p_single<Process> (+ m n)))
  :pattern ((p_seq<Process> (p_single<Process> m) (p_single<Process> n)))
  :qid |prog.single_axiom_post|)))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
(declare-fun $k@4@00 () $Perm)
(declare-fun $k@5@00 () $Perm)
(assert (forall ((s@$ $Snap) (diz@0@00 $Ref)) (!
  (=
    (History__hist_get_x%limited s@$ diz@0@00)
    (History__hist_get_x s@$ diz@0@00))
  :pattern ((History__hist_get_x s@$ diz@0@00))
  :qid |quant-u-22512|)))
(assert (forall ((s@$ $Snap) (diz@0@00 $Ref)) (!
  (History__hist_get_x%stateless diz@0@00)
  :pattern ((History__hist_get_x%limited s@$ diz@0@00))
  :qid |quant-u-22513|)))
(assert (forall ((s@$ $Snap) (diz@0@00 $Ref)) (!
  (and
    ($Perm.isReadVar $k@4@00)
    (=>
      (History__hist_get_x%precondition s@$ diz@0@00)
      (=
        (History__hist_get_x s@$ diz@0@00)
        ($SortWrappers.$SnapToInt ($Snap.second s@$)))))
  :pattern ((History__hist_get_x s@$ diz@0@00))
  :qid |quant-u-22516|)))
(assert (forall ((s@$ $Snap) (diz@0@00 $Ref)) (!
  true
  :pattern ((History__hist_get_x s@$ diz@0@00))
  :qid |quant-u-22517|)))
(assert (forall ((s@$ $Snap) (diz@2@00 $Ref)) (!
  (=
    (History__free_get_x%limited s@$ diz@2@00)
    (History__free_get_x s@$ diz@2@00))
  :pattern ((History__free_get_x s@$ diz@2@00))
  :qid |quant-u-22514|)))
(assert (forall ((s@$ $Snap) (diz@2@00 $Ref)) (!
  (History__free_get_x%stateless diz@2@00)
  :pattern ((History__free_get_x%limited s@$ diz@2@00))
  :qid |quant-u-22515|)))
(assert (forall ((s@$ $Snap) (diz@2@00 $Ref)) (!
  (and
    ($Perm.isReadVar $k@5@00)
    (=>
      (History__free_get_x%precondition s@$ diz@2@00)
      (=
        (History__free_get_x s@$ diz@2@00)
        ($SortWrappers.$SnapToInt ($Snap.second s@$)))))
  :pattern ((History__free_get_x s@$ diz@2@00))
  :qid |quant-u-22518|)))
(assert (forall ((s@$ $Snap) (diz@2@00 $Ref)) (!
  true
  :pattern ((History__free_get_x s@$ diz@2@00))
  :qid |quant-u-22519|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- History__incr_begin ----------
(declare-const diz@0@01 $Ref)
(declare-const current_thread_id@1@01 Int)
(declare-const frac@2@01 $Perm)
(declare-const proc@3@01 Process)
(declare-const diz@4@01 $Ref)
(declare-const current_thread_id@5@01 Int)
(declare-const frac@6@01 $Perm)
(declare-const proc@7@01 Process)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@8@01 $Snap)
(assert (= $t@8@01 ($Snap.combine ($Snap.first $t@8@01) ($Snap.second $t@8@01))))
(assert (= ($Snap.first $t@8@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@4@01 $Ref.null)))
(assert (=
  ($Snap.second $t@8@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@8@01))
    ($Snap.second ($Snap.second $t@8@01)))))
(assert (= ($Snap.first ($Snap.second $t@8@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@5@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@8@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@8@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@8@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@8@01))) $Snap.unit))
; [eval] frac != none
(assert (not (= frac@6@01 $Perm.No)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@8@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@8@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01)))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01))))))
  $Snap.unit))
; [eval] diz.History__x_hist_mode == 1
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01)))))))
  1))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@9@01 $Snap)
(assert (= $t@9@01 ($Snap.combine ($Snap.first $t@9@01) ($Snap.second $t@9@01))))
(assert (= ($Snap.first $t@9@01) $Snap.unit))
; [eval] frac != none
(assert (=
  ($Snap.second $t@9@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@9@01))
    ($Snap.second ($Snap.second $t@9@01)))))
(assert (=
  ($Snap.second ($Snap.second $t@9@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@9@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@9@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@9@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@9@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@9@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@9@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@9@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@9@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@9@01)))))
  $Snap.unit))
; [eval] diz.History__x_hist_mode == 2
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@9@01)))))
  2))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@9@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@9@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@9@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@9@01))))))
  $Snap.unit))
; [eval] diz.History__x_hist_value == old(diz.History__x_hist_value)
; [eval] old(diz.History__x_hist_value)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@9@01))))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@8@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@9@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@9@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@9@01))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@9@01)))))))
  $Snap.unit))
; [eval] diz.History__x_hist_value == diz.History__x_hist_act
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@9@01))))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@9@01))))))))))
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- History__incr_commit ----------
(declare-const diz@10@01 $Ref)
(declare-const current_thread_id@11@01 Int)
(declare-const frac@12@01 $Perm)
(declare-const proc@13@01 Process)
(declare-const diz@14@01 $Ref)
(declare-const current_thread_id@15@01 Int)
(declare-const frac@16@01 $Perm)
(declare-const proc@17@01 Process)
(push) ; 1
(declare-const $t@18@01 $Snap)
(assert (= $t@18@01 ($Snap.combine ($Snap.first $t@18@01) ($Snap.second $t@18@01))))
(assert (= ($Snap.first $t@18@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@14@01 $Ref.null)))
(assert (=
  ($Snap.second $t@18@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@18@01))
    ($Snap.second ($Snap.second $t@18@01)))))
(assert (= ($Snap.first ($Snap.second $t@18@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@15@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@18@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@18@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@18@01))) $Snap.unit))
; [eval] frac != none
(assert (not (= frac@16@01 $Perm.No)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@18@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@18@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))
  $Snap.unit))
; [eval] diz.History__x_hist_mode == 2
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))
  2))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))))
  $Snap.unit))
; [eval] diz.History__x_hist_value == diz.History__x_hist_act + 1
; [eval] diz.History__x_hist_act + 1
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01))))))
    1)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@19@01 $Snap)
(assert (= $t@19@01 ($Snap.combine ($Snap.first $t@19@01) ($Snap.second $t@19@01))))
(assert (= ($Snap.first $t@19@01) $Snap.unit))
; [eval] frac != none
(assert (=
  ($Snap.second $t@19@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@19@01))
    ($Snap.second ($Snap.second $t@19@01)))))
; [eval] p_seq(proc, p_incr())
; [eval] p_incr()
(assert (=
  ($Snap.second ($Snap.second $t@19@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@19@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@19@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@19@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@19@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@19@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@19@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@19@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@19@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@19@01)))))
  $Snap.unit))
; [eval] diz.History__x_hist_mode == 1
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@19@01)))))
  1))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@19@01)))))
  $Snap.unit))
; [eval] diz.History__x_hist_value == old(diz.History__x_hist_value)
; [eval] old(diz.History__x_hist_value)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@19@01))))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@18@01)))))))))
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- History__free_set_x ----------
(declare-const diz@20@01 $Ref)
(declare-const current_thread_id@21@01 Int)
(declare-const value@22@01 Int)
(declare-const diz@23@01 $Ref)
(declare-const current_thread_id@24@01 Int)
(declare-const value@25@01 Int)
(push) ; 1
(declare-const $t@26@01 $Snap)
(assert (= $t@26@01 ($Snap.combine ($Snap.first $t@26@01) ($Snap.second $t@26@01))))
(assert (= ($Snap.first $t@26@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@23@01 $Ref.null)))
(assert (=
  ($Snap.second $t@26@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@26@01))
    ($Snap.second ($Snap.second $t@26@01)))))
(assert (= ($Snap.first ($Snap.second $t@26@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@24@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@26@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@26@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@26@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@26@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@26@01))))
  $Snap.unit))
; [eval] diz.History__x_hist_mode == 0
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@26@01)))))
  0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@27@01 $Snap)
(assert (= $t@27@01 ($Snap.combine ($Snap.first $t@27@01) ($Snap.second $t@27@01))))
(assert (=
  ($Snap.second $t@27@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@27@01))
    ($Snap.second ($Snap.second $t@27@01)))))
(assert (= ($Snap.first ($Snap.second $t@27@01)) $Snap.unit))
; [eval] diz.History__x_hist_value == value
(assert (= ($SortWrappers.$SnapToInt ($Snap.first $t@27@01)) value@25@01))
(assert (=
  ($Snap.second ($Snap.second $t@27@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@27@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@27@01))))))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@27@01))) $Snap.unit))
; [eval] diz.History__x_hist_mode == 0
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@27@01))))
  0))
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- History__hist_set_x ----------
(declare-const diz@28@01 $Ref)
(declare-const current_thread_id@29@01 Int)
(declare-const value@30@01 Int)
(declare-const diz@31@01 $Ref)
(declare-const current_thread_id@32@01 Int)
(declare-const value@33@01 Int)
(push) ; 1
(declare-const $t@34@01 $Snap)
(assert (= $t@34@01 ($Snap.combine ($Snap.first $t@34@01) ($Snap.second $t@34@01))))
(assert (= ($Snap.first $t@34@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@31@01 $Ref.null)))
(assert (=
  ($Snap.second $t@34@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@34@01))
    ($Snap.second ($Snap.second $t@34@01)))))
(assert (= ($Snap.first ($Snap.second $t@34@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@32@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@34@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@34@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@34@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@34@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@34@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@34@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@34@01))))
  $Snap.unit))
; [eval] diz.History__x_hist_mode == 2
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@34@01)))))
  2))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@35@01 $Snap)
(assert (= $t@35@01 ($Snap.combine ($Snap.first $t@35@01) ($Snap.second $t@35@01))))
(assert (=
  ($Snap.second $t@35@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@35@01))
    ($Snap.second ($Snap.second $t@35@01)))))
(assert (= ($Snap.first ($Snap.second $t@35@01)) $Snap.unit))
; [eval] diz.History__x_hist_value == value
(assert (= ($SortWrappers.$SnapToInt ($Snap.first $t@35@01)) value@33@01))
(assert (=
  ($Snap.second ($Snap.second $t@35@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@35@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@35@01))))))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@35@01))) $Snap.unit))
; [eval] diz.History__x_hist_mode == 2
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@35@01))))
  2))
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- History__begin_hist ----------
(declare-const diz@36@01 $Ref)
(declare-const current_thread_id@37@01 Int)
(declare-const diz@38@01 $Ref)
(declare-const current_thread_id@39@01 Int)
(push) ; 1
(declare-const $t@40@01 $Snap)
(assert (= $t@40@01 ($Snap.combine ($Snap.first $t@40@01) ($Snap.second $t@40@01))))
(assert (= ($Snap.first $t@40@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@38@01 $Ref.null)))
(assert (=
  ($Snap.second $t@40@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@40@01))
    ($Snap.second ($Snap.second $t@40@01)))))
(assert (= ($Snap.first ($Snap.second $t@40@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@39@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@40@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@40@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@40@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@40@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))
  $Snap.unit))
; [eval] diz.History__x_hist_mode == 0
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))
  0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@40@01)))))))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@41@01 $Snap)
(assert (= $t@41@01 ($Snap.combine ($Snap.first $t@41@01) ($Snap.second $t@41@01))))
(assert (=
  ($Snap.second $t@41@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@41@01))
    ($Snap.second ($Snap.second $t@41@01)))))
(assert (=
  ($Snap.second ($Snap.second $t@41@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@41@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@41@01))) $Snap.unit))
; [eval] diz.History__x_hist_mode == 1
(assert (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@41@01))) 1))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@41@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@41@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))
  $Snap.unit))
; [eval] diz.History__x_hist_value == old(diz.History__x_hist_value)
; [eval] old(diz.History__x_hist_value)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first $t@41@01))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@40@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@41@01))))))
  $Snap.unit))
; [eval] diz.History__x_hist_init == old(diz.History__x_hist_value)
; [eval] old(diz.History__x_hist_value)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@41@01)))))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@40@01))))))
; [eval] p_empty()
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- History__split ----------
(declare-const diz@42@01 $Ref)
(declare-const current_thread_id@43@01 Int)
(declare-const frac1@44@01 $Perm)
(declare-const proc1@45@01 Process)
(declare-const frac2@46@01 $Perm)
(declare-const proc2@47@01 Process)
(declare-const diz@48@01 $Ref)
(declare-const current_thread_id@49@01 Int)
(declare-const frac1@50@01 $Perm)
(declare-const proc1@51@01 Process)
(declare-const frac2@52@01 $Perm)
(declare-const proc2@53@01 Process)
(push) ; 1
(declare-const $t@54@01 $Snap)
(assert (= $t@54@01 ($Snap.combine ($Snap.first $t@54@01) ($Snap.second $t@54@01))))
(assert (= ($Snap.first $t@54@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@48@01 $Ref.null)))
(assert (=
  ($Snap.second $t@54@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@54@01))
    ($Snap.second ($Snap.second $t@54@01)))))
(assert (= ($Snap.first ($Snap.second $t@54@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@49@01 0))
; [eval] frac1 + frac2
; [eval] p_merge(proc1, proc2)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@55@01 $Snap)
(assert (= $t@55@01 ($Snap.combine ($Snap.first $t@55@01) ($Snap.second $t@55@01))))
(push) ; 3
(set-option :timeout 10)
(assert (not (and (= frac1@50@01 frac2@52@01) (= proc1@51@01 proc2@53@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(pop) ; 2
(set-option :timeout 0)
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- History__merge ----------
(declare-const diz@56@01 $Ref)
(declare-const current_thread_id@57@01 Int)
(declare-const frac1@58@01 $Perm)
(declare-const proc1@59@01 Process)
(declare-const frac2@60@01 $Perm)
(declare-const proc2@61@01 Process)
(declare-const diz@62@01 $Ref)
(declare-const current_thread_id@63@01 Int)
(declare-const frac1@64@01 $Perm)
(declare-const proc1@65@01 Process)
(declare-const frac2@66@01 $Perm)
(declare-const proc2@67@01 Process)
(push) ; 1
(declare-const $t@68@01 $Snap)
(assert (= $t@68@01 ($Snap.combine ($Snap.first $t@68@01) ($Snap.second $t@68@01))))
(assert (= ($Snap.first $t@68@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@62@01 $Ref.null)))
(assert (=
  ($Snap.second $t@68@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@68@01))
    ($Snap.second ($Snap.second $t@68@01)))))
(assert (= ($Snap.first ($Snap.second $t@68@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@63@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@68@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@68@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@68@01))))))
(push) ; 2
(set-option :timeout 10)
(assert (not (and (= frac1@64@01 frac2@66@01) (= proc1@65@01 proc2@67@01))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
; [eval] frac1 + frac2
; [eval] p_merge(proc1, proc2)
(declare-const $t@69@01 $Snap)
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- History__History ----------
(declare-const current_thread_id@70@01 Int)
(declare-const sys__result@71@01 $Ref)
(declare-const current_thread_id@72@01 Int)
(declare-const sys__result@73@01 $Ref)
(push) ; 1
(declare-const $t@74@01 $Snap)
(assert (= $t@74@01 $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@72@01 0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@75@01 $Snap)
(assert (= $t@75@01 ($Snap.combine ($Snap.first $t@75@01) ($Snap.second $t@75@01))))
(assert (= ($Snap.first $t@75@01) $Snap.unit))
; [eval] sys__result != null
(assert (not (= sys__result@73@01 $Ref.null)))
(assert (=
  ($Snap.second $t@75@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@75@01))
    ($Snap.second ($Snap.second $t@75@01)))))
(assert (=
  ($Snap.second ($Snap.second $t@75@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@75@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@75@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@75@01))) $Snap.unit))
; [eval] sys__result.History__x_hist_value == 0
(assert (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@75@01))) 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@75@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@75@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01)))))
  $Snap.unit))
; [eval] sys__result.History__x_hist_mode == 0
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@75@01)))))
  0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01)))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01)))))))
  $Snap.unit))
; [eval] sys__result.History__x_hist_init == 0
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01)))))))
  0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01)))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01))))))))
  $Snap.unit))
; [eval] sys__result.History__x_hist_act == 0
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@75@01)))))))))
  0))
(pop) ; 2
(push) ; 2
; [exec]
; var diz: Ref
(declare-const diz@76@01 $Ref)
; [exec]
; var __flatten_31: Int
(declare-const __flatten_31@77@01 Int)
; [exec]
; var __flatten_32: Int
(declare-const __flatten_32@78@01 Int)
; [exec]
; var __flatten_33: Int
(declare-const __flatten_33@79@01 Int)
; [exec]
; var __flatten_34: Int
(declare-const __flatten_34@80@01 Int)
; [exec]
; var __flatten_79: Int
(declare-const __flatten_79@81@01 Int)
; [exec]
; var __flatten_80: Int
(declare-const __flatten_80@82@01 Int)
; [exec]
; var __flatten_81: Int
(declare-const __flatten_81@83@01 Int)
; [exec]
; var __flatten_82: Int
(declare-const __flatten_82@84@01 Int)
; [exec]
; diz := new(History__x_hist_value, History__x_hist_mode, History__x_hist_init, History__x_hist_act)
(declare-const diz@85@01 $Ref)
(assert (not (= diz@85@01 $Ref.null)))
(declare-const History__x_hist_value@86@01 Int)
(declare-const History__x_hist_mode@87@01 Int)
(declare-const History__x_hist_init@88@01 Int)
(declare-const History__x_hist_act@89@01 Int)
(assert (not (= diz@85@01 diz@76@01)))
(assert (not (= diz@85@01 sys__result@73@01)))
; [exec]
; __flatten_31 := 0
; [exec]
; __flatten_79 := __flatten_31
; [exec]
; diz.History__x_hist_value := __flatten_79
; [exec]
; __flatten_32 := 0
; [exec]
; __flatten_80 := __flatten_32
; [exec]
; diz.History__x_hist_mode := __flatten_80
; [exec]
; __flatten_33 := 0
; [exec]
; __flatten_81 := __flatten_33
; [exec]
; diz.History__x_hist_init := __flatten_81
; [exec]
; __flatten_34 := 0
; [exec]
; __flatten_82 := __flatten_34
; [exec]
; diz.History__x_hist_act := __flatten_82
; [exec]
; sys__result := diz
; [exec]
; assert sys__result != null &&
;   (acc(sys__result.History__x_hist_value, write) &&
;   sys__result.History__x_hist_value == 0 &&
;   (acc(sys__result.History__x_hist_mode, write) &&
;   sys__result.History__x_hist_mode == 0 &&
;   (acc(sys__result.History__x_hist_init, write) &&
;   sys__result.History__x_hist_init == 0 &&
;   (acc(sys__result.History__x_hist_act, write) &&
;   sys__result.History__x_hist_act == 0))))
; [eval] sys__result != null
; [eval] sys__result.History__x_hist_value == 0
; [eval] sys__result.History__x_hist_mode == 0
; [eval] sys__result.History__x_hist_init == 0
; [eval] sys__result.History__x_hist_act == 0
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- History__end_hist_1 ----------
(declare-const diz@90@01 $Ref)
(declare-const current_thread_id@91@01 Int)
(declare-const n@92@01 Int)
(declare-const diz@93@01 $Ref)
(declare-const current_thread_id@94@01 Int)
(declare-const n@95@01 Int)
(push) ; 1
(declare-const $t@96@01 $Snap)
(assert (= $t@96@01 ($Snap.combine ($Snap.first $t@96@01) ($Snap.second $t@96@01))))
(assert (= ($Snap.first $t@96@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@93@01 $Ref.null)))
(assert (=
  ($Snap.second $t@96@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@96@01))
    ($Snap.second ($Snap.second $t@96@01)))))
(assert (= ($Snap.first ($Snap.second $t@96@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@94@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@96@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@96@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@96@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@96@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@96@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@96@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@96@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@96@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@96@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@96@01)))))
  $Snap.unit))
; [eval] diz.History__x_hist_mode == 1
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@96@01)))))
  1))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@97@01 $Snap)
(assert (= $t@97@01 ($Snap.combine ($Snap.first $t@97@01) ($Snap.second $t@97@01))))
(assert (=
  ($Snap.second $t@97@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@97@01))
    ($Snap.second ($Snap.second $t@97@01)))))
(assert (=
  ($Snap.second ($Snap.second $t@97@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@97@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@97@01))) $Snap.unit))
; [eval] diz.History__x_hist_mode == 0
(assert (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@97@01))) 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@97@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@97@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))
  $Snap.unit))
; [eval] diz.History__x_hist_value == old(diz.History__x_hist_value)
; [eval] old(diz.History__x_hist_value)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first $t@97@01))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@96@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))
  $Snap.unit))
; [eval] diz.History__x_hist_init == old(diz.History__x_hist_value)
; [eval] old(diz.History__x_hist_value)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@96@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@97@01)))))))
  $Snap.unit))
; [eval] diz.History__x_hist_value == old(diz.History__x_hist_init) + n
; [eval] old(diz.History__x_hist_init) + n
; [eval] old(diz.History__x_hist_init)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first $t@97@01))
  (+
    ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@96@01))))))
    n@95@01)))
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- History__if_any_random ----------
(declare-const diz@98@01 $Ref)
(declare-const current_thread_id@99@01 Int)
(declare-const sys__result@100@01 Bool)
(declare-const diz@101@01 $Ref)
(declare-const current_thread_id@102@01 Int)
(declare-const sys__result@103@01 Bool)
(push) ; 1
(declare-const $t@104@01 $Snap)
(assert (= $t@104@01 ($Snap.combine ($Snap.first $t@104@01) ($Snap.second $t@104@01))))
(assert (= ($Snap.first $t@104@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@101@01 $Ref.null)))
(assert (= ($Snap.second $t@104@01) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@102@01 0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- Application__do_incr ----------
(declare-const diz@105@01 $Ref)
(declare-const current_thread_id@106@01 Int)
(declare-const h@107@01 $Ref)
(declare-const p@108@01 Process)
(declare-const q@109@01 $Perm)
(declare-const diz@110@01 $Ref)
(declare-const current_thread_id@111@01 Int)
(declare-const h@112@01 $Ref)
(declare-const p@113@01 Process)
(declare-const q@114@01 $Perm)
(push) ; 1
(declare-const $t@115@01 $Snap)
(assert (= $t@115@01 ($Snap.combine ($Snap.first $t@115@01) ($Snap.second $t@115@01))))
(assert (= ($Snap.first $t@115@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@110@01 $Ref.null)))
(assert (=
  ($Snap.second $t@115@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@115@01))
    ($Snap.second ($Snap.second $t@115@01)))))
(assert (= ($Snap.first ($Snap.second $t@115@01)) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@111@01 0))
(assert (=
  ($Snap.second ($Snap.second $t@115@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@115@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@115@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@115@01))) $Snap.unit))
; [eval] q != none
(assert (not (= q@114@01 $Perm.No)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@115@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@115@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@115@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@115@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@115@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@115@01))))))))
(assert (not (= h@112@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@115@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@115@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@115@01)))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@115@01))))))
  $Snap.unit))
; [eval] h.History__x_hist_mode == 1
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@115@01)))))))
  1))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@116@01 $Snap)
(assert (= $t@116@01 ($Snap.combine ($Snap.first $t@116@01) ($Snap.second $t@116@01))))
(assert (=
  ($Snap.second $t@116@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@116@01))
    ($Snap.second ($Snap.second $t@116@01)))))
(assert (=
  ($Snap.second ($Snap.second $t@116@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@116@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@116@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@116@01))) $Snap.unit))
; [eval] h.History__x_hist_mode == 1
(assert (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@116@01))) 1))
; [eval] p_seq(p, p_incr())
; [eval] p_incr()
(pop) ; 2
(push) ; 2
; [exec]
; var if_any_bool: Bool
(declare-const if_any_bool@117@01 Bool)
; [exec]
; History__incr_begin(h, current_thread_id, q, p)
; [eval] diz != null
; [eval] current_thread_id >= 0
; [eval] frac != none
; [eval] diz.History__x_hist_mode == 1
(declare-const $t@118@01 $Snap)
(assert (= $t@118@01 ($Snap.combine ($Snap.first $t@118@01) ($Snap.second $t@118@01))))
(assert (= ($Snap.first $t@118@01) $Snap.unit))
; [eval] frac != none
(assert (=
  ($Snap.second $t@118@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@118@01))
    ($Snap.second ($Snap.second $t@118@01)))))
(assert (=
  ($Snap.second ($Snap.second $t@118@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@118@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@118@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@118@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@118@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01)))))
  $Snap.unit))
; [eval] diz.History__x_hist_mode == 2
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@118@01)))))
  2))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01))))))
  $Snap.unit))
; [eval] diz.History__x_hist_value == old(diz.History__x_hist_value)
; [eval] old(diz.History__x_hist_value)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@118@01))))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@115@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01)))))))
  $Snap.unit))
; [eval] diz.History__x_hist_value == diz.History__x_hist_act
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@118@01))))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01))))))))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; History__hist_set_x(h, current_thread_id, h.History__x_hist_value + 1)
; [eval] h.History__x_hist_value + 1
; [eval] diz != null
; [eval] current_thread_id >= 0
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] diz.History__x_hist_mode == 2
(declare-const $t@119@01 $Snap)
(assert (= $t@119@01 ($Snap.combine ($Snap.first $t@119@01) ($Snap.second $t@119@01))))
(assert (=
  ($Snap.second $t@119@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@119@01))
    ($Snap.second ($Snap.second $t@119@01)))))
(assert (= ($Snap.first ($Snap.second $t@119@01)) $Snap.unit))
; [eval] diz.History__x_hist_value == value
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first $t@119@01))
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@118@01))))
    1)))
(assert (=
  ($Snap.second ($Snap.second $t@119@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@119@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@119@01))))))
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@118@01)))))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@119@01))))))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@119@01))) $Snap.unit))
; [eval] diz.History__x_hist_mode == 2
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; History__incr_commit(h, current_thread_id, q, p)
; [eval] diz != null
; [eval] current_thread_id >= 0
; [eval] frac != none
; [eval] diz.History__x_hist_mode == 2
; [eval] diz.History__x_hist_value == diz.History__x_hist_act + 1
; [eval] diz.History__x_hist_act + 1
(set-option :timeout 0)
(push) ; 3
(assert (not (=
  ($SortWrappers.$SnapToInt ($Snap.first $t@119@01))
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01))))))))
    1))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first $t@119@01))
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@118@01))))))))
    1)))
(declare-const $t@120@01 $Snap)
(assert (= $t@120@01 ($Snap.combine ($Snap.first $t@120@01) ($Snap.second $t@120@01))))
(assert (= ($Snap.first $t@120@01) $Snap.unit))
; [eval] frac != none
(assert (=
  ($Snap.second $t@120@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@120@01))
    ($Snap.second ($Snap.second $t@120@01)))))
; [eval] p_seq(proc, p_incr())
; [eval] p_incr()
(assert (=
  ($Snap.second ($Snap.second $t@120@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@120@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@120@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@120@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))
  $Snap.unit))
; [eval] diz.History__x_hist_mode == 1
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))
  1))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@120@01)))))
  $Snap.unit))
; [eval] diz.History__x_hist_value == old(diz.History__x_hist_value)
; [eval] old(diz.History__x_hist_value)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@120@01))))
  ($SortWrappers.$SnapToInt ($Snap.first $t@119@01))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [eval] h.History__x_hist_mode == 1
; [eval] p_seq(p, p_incr())
; [eval] p_incr()
(pop) ; 2
(pop) ; 1
; ---------- Application__main ----------
(declare-const diz@121@01 $Ref)
(declare-const current_thread_id@122@01 Int)
(declare-const diz@123@01 $Ref)
(declare-const current_thread_id@124@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@125@01 $Snap)
(assert (= $t@125@01 ($Snap.combine ($Snap.first $t@125@01) ($Snap.second $t@125@01))))
(assert (= ($Snap.first $t@125@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@123@01 $Ref.null)))
(assert (= ($Snap.second $t@125@01) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@124@01 0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var if_any_bool: Bool
(declare-const if_any_bool@126@01 Bool)
; [exec]
; var h: Ref
(declare-const h@127@01 $Ref)
; [exec]
; var __flatten_38: Ref
(declare-const __flatten_38@128@01 $Ref)
; [exec]
; __flatten_38 := History__History(current_thread_id)
; [eval] current_thread_id >= 0
(declare-const sys__result@129@01 $Ref)
(declare-const $t@130@01 $Snap)
(assert (= $t@130@01 ($Snap.combine ($Snap.first $t@130@01) ($Snap.second $t@130@01))))
(assert (= ($Snap.first $t@130@01) $Snap.unit))
; [eval] sys__result != null
(assert (not (= sys__result@129@01 $Ref.null)))
(assert (=
  ($Snap.second $t@130@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@130@01))
    ($Snap.second ($Snap.second $t@130@01)))))
(assert (=
  ($Snap.second ($Snap.second $t@130@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@130@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@130@01))) $Snap.unit))
; [eval] sys__result.History__x_hist_value == 0
(assert (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@130@01))) 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@130@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))
  $Snap.unit))
; [eval] sys__result.History__x_hist_mode == 0
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))
  0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))
  $Snap.unit))
; [eval] sys__result.History__x_hist_init == 0
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))
  0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01))))))))
  $Snap.unit))
; [eval] sys__result.History__x_hist_act == 0
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))))))
  0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; h := __flatten_38
; [exec]
; History__free_set_x(h, current_thread_id, 1)
; [eval] diz != null
; [eval] current_thread_id >= 0
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] diz.History__x_hist_mode == 0
(declare-const $t@131@01 $Snap)
(assert (= $t@131@01 ($Snap.combine ($Snap.first $t@131@01) ($Snap.second $t@131@01))))
(assert (=
  ($Snap.second $t@131@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@131@01))
    ($Snap.second ($Snap.second $t@131@01)))))
(assert (= ($Snap.first ($Snap.second $t@131@01)) $Snap.unit))
; [eval] diz.History__x_hist_value == value
(assert (= ($SortWrappers.$SnapToInt ($Snap.first $t@131@01)) 1))
(assert (=
  ($Snap.second ($Snap.second $t@131@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@131@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@131@01))))))
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@130@01)))))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second $t@131@01))))))
(assert (= ($Snap.second ($Snap.second ($Snap.second $t@131@01))) $Snap.unit))
; [eval] diz.History__x_hist_mode == 0
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; History__begin_hist(h, current_thread_id)
; [eval] diz != null
; [eval] current_thread_id >= 0
; [eval] diz.History__x_hist_mode == 0
(declare-const $t@132@01 $Snap)
(assert (= $t@132@01 ($Snap.combine ($Snap.first $t@132@01) ($Snap.second $t@132@01))))
(assert (=
  ($Snap.second $t@132@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@132@01))
    ($Snap.second ($Snap.second $t@132@01)))))
(assert (=
  ($Snap.second ($Snap.second $t@132@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@132@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@132@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@132@01))) $Snap.unit))
; [eval] diz.History__x_hist_mode == 1
(assert (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@132@01))) 1))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@132@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@132@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@132@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@132@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@132@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@132@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@132@01)))))
  $Snap.unit))
; [eval] diz.History__x_hist_value == old(diz.History__x_hist_value)
; [eval] old(diz.History__x_hist_value)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first $t@132@01))
  ($SortWrappers.$SnapToInt ($Snap.first $t@131@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@132@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@132@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@132@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@132@01))))))
  $Snap.unit))
; [eval] diz.History__x_hist_init == old(diz.History__x_hist_value)
; [eval] old(diz.History__x_hist_value)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@132@01)))))
  ($SortWrappers.$SnapToInt ($Snap.first $t@131@01))))
; [eval] p_empty()
; State saturation: after contract
(check-sat)
; unknown
; [exec]
; History__split(h, current_thread_id, 1 / 3, p_empty(), 2 / 3, p_empty())
; [eval] p_empty()
; [eval] p_empty()
; [eval] diz != null
; [eval] current_thread_id >= 0
; [eval] frac1 + frac2
; [eval] p_merge(proc1, proc2)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  (as p_empty<Process>  Process)
  (p_merge<Process> (as p_empty<Process>  Process) (as p_empty<Process>  Process)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const $t@133@01 $Snap)
(assert (= $t@133@01 ($Snap.combine ($Snap.first $t@133@01) ($Snap.second $t@133@01))))
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; Application__do_incr(diz, current_thread_id, h, p_empty(), 1 / 3)
; [eval] p_empty()
; [eval] diz != null
; [eval] current_thread_id >= 0
; [eval] q != none
; [eval] h.History__x_hist_mode == 1
(declare-const $t@134@01 $Snap)
(assert (= $t@134@01 ($Snap.combine ($Snap.first $t@134@01) ($Snap.second $t@134@01))))
(assert (=
  ($Snap.second $t@134@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@134@01))
    ($Snap.second ($Snap.second $t@134@01)))))
(assert (=
  ($Snap.second ($Snap.second $t@134@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@134@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@134@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@134@01))) $Snap.unit))
; [eval] h.History__x_hist_mode == 1
(assert (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@134@01))) 1))
; [eval] p_seq(p, p_incr())
; [eval] p_incr()
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; History__merge(h, current_thread_id, 2 / 3, p_empty(), 1 / 3, p_single(1))
; [eval] p_empty()
; [eval] p_single(1)
; [eval] diz != null
; [eval] current_thread_id >= 0
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (=
  (p_seq<Process> (as p_empty<Process>  Process) (as p_incr<Process>  Process))
  (p_single<Process> 1))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [eval] frac1 + frac2
; [eval] p_merge(proc1, proc2)
(declare-const $t@135@01 $Snap)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
; [exec]
; History__end_hist_1(h, current_thread_id, 1)
; [eval] diz != null
; [eval] current_thread_id >= 0
; [eval] diz.History__x_hist_mode == 1
(declare-const $t@136@01 $Snap)
(assert (= $t@136@01 ($Snap.combine ($Snap.first $t@136@01) ($Snap.second $t@136@01))))
(assert (=
  ($Snap.second $t@136@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@136@01))
    ($Snap.second ($Snap.second $t@136@01)))))
(assert (=
  ($Snap.second ($Snap.second $t@136@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@136@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@136@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@136@01))) $Snap.unit))
; [eval] diz.History__x_hist_mode == 0
(assert (= ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@136@01))) 0))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@136@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@136@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@136@01)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@136@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@136@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@136@01))))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@136@01)))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@136@01))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@136@01)))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@136@01))))))
  $Snap.unit))
; [eval] diz.History__x_hist_value == old(diz.History__x_hist_value)
; [eval] old(diz.History__x_hist_value)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first $t@136@01))
  ($SortWrappers.$SnapToInt ($Snap.first $t@134@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@136@01))))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@136@01)))))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@136@01))))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@136@01)))))))
  $Snap.unit))
; [eval] diz.History__x_hist_init == old(diz.History__x_hist_value)
; [eval] old(diz.History__x_hist_value)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@136@01)))))
  ($SortWrappers.$SnapToInt ($Snap.first $t@134@01))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@136@01)))))))
  $Snap.unit))
; [eval] diz.History__x_hist_value == old(diz.History__x_hist_init) + n
; [eval] old(diz.History__x_hist_init) + n
; [eval] old(diz.History__x_hist_init)
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first $t@136@01))
  (+
    ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@132@01)))))
    1)))
; State saturation: after contract
(check-sat)
; unknown
; [exec]
; assert h.History__x_hist_value == 2
; [eval] h.History__x_hist_value == 2
(set-option :timeout 0)
(push) ; 3
(assert (not (= ($SortWrappers.$SnapToInt ($Snap.first $t@136@01)) 2)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (= ($SortWrappers.$SnapToInt ($Snap.first $t@136@01)) 2))
(pop) ; 2
(pop) ; 1
; ---------- Application__Application ----------
(declare-const current_thread_id@137@01 Int)
(declare-const sys__result@138@01 $Ref)
(declare-const current_thread_id@139@01 Int)
(declare-const sys__result@140@01 $Ref)
(push) ; 1
(declare-const $t@141@01 $Snap)
(assert (= $t@141@01 $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@139@01 0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@142@01 $Snap)
(assert (= $t@142@01 $Snap.unit))
; [eval] sys__result != null
(assert (not (= sys__result@140@01 $Ref.null)))
(pop) ; 2
(push) ; 2
; [exec]
; var diz: Ref
(declare-const diz@143@01 $Ref)
; [exec]
; diz := new()
(declare-const diz@144@01 $Ref)
(assert (not (= diz@144@01 $Ref.null)))
(assert (not (= diz@144@01 sys__result@140@01)))
(assert (not (= diz@144@01 diz@143@01)))
; [exec]
; sys__result := diz
; [exec]
; assert sys__result != null
; [eval] sys__result != null
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- Application__if_any_random ----------
(declare-const diz@145@01 $Ref)
(declare-const current_thread_id@146@01 Int)
(declare-const sys__result@147@01 Bool)
(declare-const diz@148@01 $Ref)
(declare-const current_thread_id@149@01 Int)
(declare-const sys__result@150@01 Bool)
(push) ; 1
(declare-const $t@151@01 $Snap)
(assert (= $t@151@01 ($Snap.combine ($Snap.first $t@151@01) ($Snap.second $t@151@01))))
(assert (= ($Snap.first $t@151@01) $Snap.unit))
; [eval] diz != null
(assert (not (= diz@148@01 $Ref.null)))
(assert (= ($Snap.second $t@151@01) $Snap.unit))
; [eval] current_thread_id >= 0
(assert (>= current_thread_id@149@01 0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1