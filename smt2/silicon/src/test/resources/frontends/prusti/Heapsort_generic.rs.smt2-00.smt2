(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 14:23:32
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
(declare-sort $MWSF 0)
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
(declare-fun $SortWrappers.$MWSFTo$Snap ($MWSF) $Snap)
(declare-fun $SortWrappers.$SnapTo$MWSF ($Snap) $MWSF)
(assert (forall ((x $MWSF)) (!
    (= x ($SortWrappers.$SnapTo$MWSF($SortWrappers.$MWSFTo$Snap x)))
    :pattern (($SortWrappers.$MWSFTo$Snap x))
    :qid |$Snap.$SnapTo$MWSFTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$MWSFTo$Snap($SortWrappers.$SnapTo$MWSF x)))
    :pattern (($SortWrappers.$SnapTo$MWSF x))
    :qid |$Snap.$MWSFTo$SnapTo$MWSF|
    )))
; ////////// Symbols
(declare-fun MWSF_apply ($MWSF $Snap) $Snap)
; Declaring symbols related to program functions (from program analysis)
(declare-fun read$ ($Snap) $Perm)
(declare-fun read$%limited ($Snap) $Perm)
(declare-const read$%stateless Bool)
(declare-fun read$%precondition ($Snap) Bool)
(declare-fun builtin$unreach_bool__$TY$__$bool$ ($Snap) Bool)
(declare-fun builtin$unreach_bool__$TY$__$bool$%limited ($Snap) Bool)
(declare-const builtin$unreach_bool__$TY$__$bool$%stateless Bool)
(declare-fun builtin$unreach_bool__$TY$__$bool$%precondition ($Snap) Bool)
(declare-fun m_Heapsort_generic$$order$opensqu$0$closesqu$__$TY$____TYPARAM__$T$__$__TYPARAM__$T$__$$bool$ ($Snap $Ref $Ref) Bool)
(declare-fun m_Heapsort_generic$$order$opensqu$0$closesqu$__$TY$____TYPARAM__$T$__$__TYPARAM__$T$__$$bool$%limited ($Snap $Ref $Ref) Bool)
(declare-fun m_Heapsort_generic$$order$opensqu$0$closesqu$__$TY$____TYPARAM__$T$__$__TYPARAM__$T$__$$bool$%stateless ($Ref $Ref) Bool)
(declare-fun m_Heapsort_generic$$order$opensqu$0$closesqu$__$TY$____TYPARAM__$T$__$__TYPARAM__$T$__$$bool$%precondition ($Snap $Ref $Ref) Bool)
(declare-fun m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_$$int$ ($Snap $Ref) Int)
(declare-fun m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_$$int$%limited ($Snap $Ref) Int)
(declare-fun m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_$$int$%stateless ($Ref) Bool)
(declare-fun m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_$$int$%precondition ($Snap $Ref) Bool)
(declare-fun m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$i32$_end_$$int$ ($Snap $Ref) Int)
(declare-fun m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$i32$_end_$$int$%limited ($Snap $Ref) Int)
(declare-fun m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$i32$_end_$$int$%stateless ($Ref) Bool)
(declare-fun m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$i32$_end_$$int$%precondition ($Snap $Ref) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun DeadBorrowToken$%trigger ($Snap Int) Bool)
(declare-fun __TYPARAM__$T$__%trigger ($Snap $Ref) Bool)
(declare-fun bool%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_12$4$11954709591491712216%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_13$4$3975231876959819947%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_14$4$16353099407943472271%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_15$5$9228659558676986478%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_20$4$16353099407943472271%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_21$5$6778908376983593016%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_22$4$4834813325720458200%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_23$5$15937944919612014542%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_24$4$2480206325276483456%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_28$3$4187078364295441587%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_29$4$10546764852954676599%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_30$5$4001058188801141524%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_31$5$15359138984068225308%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_32$4$4011530063300199000%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_33$3$4187078364295441587%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_34$4$4327170139127358847%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_35$5$14940418446817107430%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_36$5$13369081175465569946%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_37$4$3593140455824456574%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_40$4$3219469534212954445%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_42$4$10532743614038247592%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_44$3$4187078364295441587%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_45$4$12281678422680400730%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_46$4$3982590481482752291%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_47$5$12370509662819782950%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_48$4$6013390867679712155%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_49$5$13616979103016852409%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_50$4$2450401715045862214%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_53$4$3219469534212954445%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_54$4$12474208049917393253%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_55$5$1741994851038149848%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_56$4$497787689284256809%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_57$5$2982545638522801093%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_59$4$10532743614038247592%trigger ($Snap $Ref) Bool)
(declare-fun i32%trigger ($Snap $Ref) Bool)
(declare-fun m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$i32$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_alloc$$alloc$opensqu$0$closesqu$$$Global$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_alloc$$raw_vec$opensqu$0$closesqu$$$RawVec$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_sep_$m_alloc$$alloc$opensqu$0$closesqu$$$Global$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_alloc$$raw_vec$opensqu$0$closesqu$$$RawVec$opensqu$0$closesqu$$_beg_$i32$_sep_$m_alloc$$alloc$opensqu$0$closesqu$$$Global$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_alloc$$vec$opensqu$0$closesqu$$$Vec$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_alloc$$vec$opensqu$0$closesqu$$$Vec$opensqu$0$closesqu$$_beg_$i32$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_core$$ptr$opensqu$0$closesqu$$$Unique$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_core$$ptr$opensqu$0$closesqu$$$Unique$opensqu$0$closesqu$$_beg_$i32$_end_%trigger ($Snap $Ref) Bool)
(declare-fun never%trigger ($Snap $Ref) Bool)
(declare-fun ref$__TYPARAM__$T$__%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_12$4$11954709591491712216%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_13$4$3975231876959819947%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_14$4$16353099407943472271%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_15$5$9228659558676986478%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_20$4$16353099407943472271%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_21$5$6778908376983593016%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_22$4$4834813325720458200%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_23$5$15937944919612014542%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_24$4$2480206325276483456%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_29$4$10546764852954676599%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_30$5$4001058188801141524%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_31$5$15359138984068225308%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_32$4$4011530063300199000%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_34$4$4327170139127358847%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_35$5$14940418446817107430%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_36$5$13369081175465569946%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_37$4$3593140455824456574%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_40$4$3219469534212954445%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_42$4$10532743614038247592%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_45$4$12281678422680400730%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_46$4$3982590481482752291%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_47$5$12370509662819782950%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_48$4$6013390867679712155%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_49$5$13616979103016852409%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_50$4$2450401715045862214%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_53$4$3219469534212954445%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_54$4$12474208049917393253%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_55$5$1741994851038149848%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_56$4$497787689284256809%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_57$5$2982545638522801093%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_59$4$10532743614038247592%trigger ($Snap $Ref) Bool)
(declare-fun ref$m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$i32$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$ref$m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$str%trigger ($Snap $Ref) Bool)
(declare-fun ref$tuple3$ref$str$u32$u32%trigger ($Snap $Ref) Bool)
(declare-fun ref$usize%trigger ($Snap $Ref) Bool)
(declare-fun str%trigger ($Snap $Ref) Bool)
(declare-fun tuple0$%trigger ($Snap $Ref) Bool)
(declare-fun tuple2$usize$bool%trigger ($Snap $Ref) Bool)
(declare-fun tuple3$ref$str$u32$u32%trigger ($Snap $Ref) Bool)
(declare-fun u32%trigger ($Snap $Ref) Bool)
(declare-fun usize%trigger ($Snap $Ref) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ---------- FUNCTION read$----------
(declare-fun result@0@00 () $Perm)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(declare-const $t@9@00 $Snap)
(assert (= $t@9@00 ($Snap.combine ($Snap.first $t@9@00) ($Snap.second $t@9@00))))
(assert (= ($Snap.first $t@9@00) $Snap.unit))
; [eval] none < result
(assert (< $Perm.No result@0@00))
(assert (= ($Snap.second $t@9@00) $Snap.unit))
; [eval] result < write
(assert (< result@0@00 $Perm.Write))
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (read$%limited s@$) (read$ s@$))
  :pattern ((read$ s@$))
  :qid |quant-u-235|)))
(assert (forall ((s@$ $Snap)) (!
  (as read$%stateless  Bool)
  :pattern ((read$%limited s@$))
  :qid |quant-u-236|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) (=>
    (read$%precondition s@$)
    (and (< $Perm.No result@0@00) (< result@0@00 $Perm.Write))))
  :pattern ((read$%limited s@$))
  :qid |quant-u-245|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-246|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-247|)))
; ---------- FUNCTION builtin$unreach_bool__$TY$__$bool$----------
(declare-fun result@1@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ $Snap.unit))
(assert false)
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (=
    (builtin$unreach_bool__$TY$__$bool$%limited s@$)
    (builtin$unreach_bool__$TY$__$bool$ s@$))
  :pattern ((builtin$unreach_bool__$TY$__$bool$ s@$))
  :qid |quant-u-237|)))
(assert (forall ((s@$ $Snap)) (!
  (as builtin$unreach_bool__$TY$__$bool$%stateless  Bool)
  :pattern ((builtin$unreach_bool__$TY$__$bool$%limited s@$))
  :qid |quant-u-238|)))
; ---------- FUNCTION m_Heapsort_generic$$order$opensqu$0$closesqu$__$TY$____TYPARAM__$T$__$__TYPARAM__$T$__$$bool$----------
(declare-fun _pure_1@2@00 () $Ref)
(declare-fun _pure_2@3@00 () $Ref)
(declare-fun result@4@00 () Bool)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
; [eval] read$()
(push) ; 2
(assert (read$%precondition $Snap.unit))
(pop) ; 2
; Joined path conditions
(assert (read$%precondition $Snap.unit))
(push) ; 2
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No (read$ $Snap.unit)))
(assert (=
  ($Snap.second s@$)
  ($Snap.combine
    ($Snap.first ($Snap.second s@$))
    ($Snap.second ($Snap.second s@$)))))
; [eval] read$()
(push) ; 2
(pop) ; 2
; Joined path conditions
(push) ; 2
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(push) ; 2
(set-option :timeout 10)
(assert (not (= _pure_1@2@00 _pure_2@3@00)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (= ($Snap.second ($Snap.second s@$)) $Snap.unit))
(declare-const $t@10@00 $Snap)
(assert (= $t@10@00 $Snap.unit))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@2@00 $Ref) (_pure_2@3@00 $Ref)) (!
  (=
    (m_Heapsort_generic$$order$opensqu$0$closesqu$__$TY$____TYPARAM__$T$__$__TYPARAM__$T$__$$bool$%limited s@$ _pure_1@2@00 _pure_2@3@00)
    (m_Heapsort_generic$$order$opensqu$0$closesqu$__$TY$____TYPARAM__$T$__$__TYPARAM__$T$__$$bool$ s@$ _pure_1@2@00 _pure_2@3@00))
  :pattern ((m_Heapsort_generic$$order$opensqu$0$closesqu$__$TY$____TYPARAM__$T$__$__TYPARAM__$T$__$$bool$ s@$ _pure_1@2@00 _pure_2@3@00))
  :qid |quant-u-239|)))
(assert (forall ((s@$ $Snap) (_pure_1@2@00 $Ref) (_pure_2@3@00 $Ref)) (!
  (m_Heapsort_generic$$order$opensqu$0$closesqu$__$TY$____TYPARAM__$T$__$__TYPARAM__$T$__$$bool$%stateless _pure_1@2@00 _pure_2@3@00)
  :pattern ((m_Heapsort_generic$$order$opensqu$0$closesqu$__$TY$____TYPARAM__$T$__$__TYPARAM__$T$__$$bool$%limited s@$ _pure_1@2@00 _pure_2@3@00))
  :qid |quant-u-240|)))
(assert (forall ((s@$ $Snap) (_pure_1@2@00 $Ref) (_pure_2@3@00 $Ref)) (!
  (let ((result@4@00 (m_Heapsort_generic$$order$opensqu$0$closesqu$__$TY$____TYPARAM__$T$__$__TYPARAM__$T$__$$bool$%limited s@$ _pure_1@2@00 _pure_2@3@00))) true)
  :pattern ((m_Heapsort_generic$$order$opensqu$0$closesqu$__$TY$____TYPARAM__$T$__$__TYPARAM__$T$__$$bool$%limited s@$ _pure_1@2@00 _pure_2@3@00))
  :qid |quant-u-248|)))
(assert (forall ((s@$ $Snap) (_pure_1@2@00 $Ref) (_pure_2@3@00 $Ref)) (!
  (let ((result@4@00 (m_Heapsort_generic$$order$opensqu$0$closesqu$__$TY$____TYPARAM__$T$__$__TYPARAM__$T$__$$bool$%limited s@$ _pure_1@2@00 _pure_2@3@00))) true)
  :pattern ((m_Heapsort_generic$$order$opensqu$0$closesqu$__$TY$____TYPARAM__$T$__$__TYPARAM__$T$__$$bool$%limited s@$ _pure_1@2@00 _pure_2@3@00))
  :qid |quant-u-249|)))
; ---------- FUNCTION m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_$$int$----------
(declare-fun _pure_1@5@00 () $Ref)
(declare-fun result@6@00 () Int)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
; [eval] read$()
(push) ; 2
(assert (read$%precondition $Snap.unit))
(pop) ; 2
; Joined path conditions
(assert (read$%precondition $Snap.unit))
(push) ; 2
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No (read$ $Snap.unit)))
(assert (= ($Snap.second s@$) $Snap.unit))
(declare-const $t@11@00 $Snap)
(assert (= $t@11@00 ($Snap.combine ($Snap.first $t@11@00) ($Snap.second $t@11@00))))
(assert (= ($Snap.first $t@11@00) $Snap.unit))
(assert (=
  ($Snap.second $t@11@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@11@00))
    ($Snap.second ($Snap.second $t@11@00)))))
(assert (= ($Snap.first ($Snap.second $t@11@00)) $Snap.unit))
; [eval] 0 <= result
(assert (<= 0 result@6@00))
(assert (= ($Snap.second ($Snap.second $t@11@00)) $Snap.unit))
; [eval] result <= 18446744073709551615
(assert (<= result@6@00 18446744073709551615))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@5@00 $Ref)) (!
  (=
    (m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_$$int$%limited s@$ _pure_1@5@00)
    (m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_$$int$ s@$ _pure_1@5@00))
  :pattern ((m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_$$int$ s@$ _pure_1@5@00))
  :qid |quant-u-241|)))
(assert (forall ((s@$ $Snap) (_pure_1@5@00 $Ref)) (!
  (m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_$$int$%stateless _pure_1@5@00)
  :pattern ((m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_$$int$%limited s@$ _pure_1@5@00))
  :qid |quant-u-242|)))
(assert (forall ((s@$ $Snap) (_pure_1@5@00 $Ref)) (!
  (let ((result@6@00 (m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_$$int$%limited s@$ _pure_1@5@00))) (=>
    (m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_$$int$%precondition s@$ _pure_1@5@00)
    (and (<= 0 result@6@00) (<= result@6@00 18446744073709551615))))
  :pattern ((m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_$$int$%limited s@$ _pure_1@5@00))
  :qid |quant-u-250|)))
(assert (forall ((s@$ $Snap) (_pure_1@5@00 $Ref)) (!
  (let ((result@6@00 (m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_$$int$%limited s@$ _pure_1@5@00))) true)
  :pattern ((m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_$$int$%limited s@$ _pure_1@5@00))
  :qid |quant-u-251|)))
(assert (forall ((s@$ $Snap) (_pure_1@5@00 $Ref)) (!
  (let ((result@6@00 (m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_$$int$%limited s@$ _pure_1@5@00))) true)
  :pattern ((m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_$$int$%limited s@$ _pure_1@5@00))
  :qid |quant-u-252|)))
(assert (forall ((s@$ $Snap) (_pure_1@5@00 $Ref)) (!
  (let ((result@6@00 (m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_$$int$%limited s@$ _pure_1@5@00))) true)
  :pattern ((m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_$$int$%limited s@$ _pure_1@5@00))
  :qid |quant-u-253|)))
; ---------- FUNCTION m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$i32$_end_$$int$----------
(declare-fun _pure_1@7@00 () $Ref)
(declare-fun result@8@00 () Int)
; ----- Well-definedness of specifications -----
(push) ; 1
(assert (= s@$ ($Snap.combine ($Snap.first s@$) ($Snap.second s@$))))
; [eval] read$()
(push) ; 2
(assert (read$%precondition $Snap.unit))
(pop) ; 2
; Joined path conditions
(assert (read$%precondition $Snap.unit))
(push) ; 2
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (<= $Perm.No (read$ $Snap.unit)))
(assert (= ($Snap.second s@$) $Snap.unit))
(declare-const $t@12@00 $Snap)
(assert (= $t@12@00 ($Snap.combine ($Snap.first $t@12@00) ($Snap.second $t@12@00))))
(assert (= ($Snap.first $t@12@00) $Snap.unit))
(assert (=
  ($Snap.second $t@12@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@12@00))
    ($Snap.second ($Snap.second $t@12@00)))))
(assert (= ($Snap.first ($Snap.second $t@12@00)) $Snap.unit))
; [eval] 0 <= result
(assert (<= 0 result@8@00))
(assert (= ($Snap.second ($Snap.second $t@12@00)) $Snap.unit))
; [eval] result <= 18446744073709551615
(assert (<= result@8@00 18446744073709551615))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@7@00 $Ref)) (!
  (=
    (m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$i32$_end_$$int$%limited s@$ _pure_1@7@00)
    (m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$i32$_end_$$int$ s@$ _pure_1@7@00))
  :pattern ((m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$i32$_end_$$int$ s@$ _pure_1@7@00))
  :qid |quant-u-243|)))
(assert (forall ((s@$ $Snap) (_pure_1@7@00 $Ref)) (!
  (m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$i32$_end_$$int$%stateless _pure_1@7@00)
  :pattern ((m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$i32$_end_$$int$%limited s@$ _pure_1@7@00))
  :qid |quant-u-244|)))
(assert (forall ((s@$ $Snap) (_pure_1@7@00 $Ref)) (!
  (let ((result@8@00 (m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$i32$_end_$$int$%limited s@$ _pure_1@7@00))) (=>
    (m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$i32$_end_$$int$%precondition s@$ _pure_1@7@00)
    (and (<= 0 result@8@00) (<= result@8@00 18446744073709551615))))
  :pattern ((m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$i32$_end_$$int$%limited s@$ _pure_1@7@00))
  :qid |quant-u-254|)))
(assert (forall ((s@$ $Snap) (_pure_1@7@00 $Ref)) (!
  (let ((result@8@00 (m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$i32$_end_$$int$%limited s@$ _pure_1@7@00))) true)
  :pattern ((m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$i32$_end_$$int$%limited s@$ _pure_1@7@00))
  :qid |quant-u-255|)))
(assert (forall ((s@$ $Snap) (_pure_1@7@00 $Ref)) (!
  (let ((result@8@00 (m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$i32$_end_$$int$%limited s@$ _pure_1@7@00))) true)
  :pattern ((m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$i32$_end_$$int$%limited s@$ _pure_1@7@00))
  :qid |quant-u-256|)))
(assert (forall ((s@$ $Snap) (_pure_1@7@00 $Ref)) (!
  (let ((result@8@00 (m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$i32$_end_$$int$%limited s@$ _pure_1@7@00))) true)
  :pattern ((m_Heapsort_generic$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$i32$_end_$$int$%limited s@$ _pure_1@7@00))
  :qid |quant-u-257|)))
; ---------- DeadBorrowToken$ ----------
(declare-const borrow@13@00 Int)
; ---------- __TYPARAM__$T$__ ----------
(declare-const self@14@00 $Ref)
; ---------- bool ----------
(declare-const self@15@00 $Ref)
(push) ; 1
(declare-const $t@16@00 Bool)
(assert (not (= self@15@00 $Ref.null)))
(pop) ; 1
; ---------- closure$0_1_12$4$11954709591491712216 ----------
(declare-const self@17@00 $Ref)
; ---------- closure$0_1_13$4$3975231876959819947 ----------
(declare-const self@18@00 $Ref)
; ---------- closure$0_1_14$4$16353099407943472271 ----------
(declare-const self@19@00 $Ref)
; ---------- closure$0_1_15$5$9228659558676986478 ----------
(declare-const self@20@00 $Ref)
; ---------- closure$0_1_20$4$16353099407943472271 ----------
(declare-const self@21@00 $Ref)
; ---------- closure$0_1_21$5$6778908376983593016 ----------
(declare-const self@22@00 $Ref)
; ---------- closure$0_1_22$4$4834813325720458200 ----------
(declare-const self@23@00 $Ref)
; ---------- closure$0_1_23$5$15937944919612014542 ----------
(declare-const self@24@00 $Ref)
; ---------- closure$0_1_24$4$2480206325276483456 ----------
(declare-const self@25@00 $Ref)
; ---------- closure$0_1_28$3$4187078364295441587 ----------
(declare-const self@26@00 $Ref)
; ---------- closure$0_1_29$4$10546764852954676599 ----------
(declare-const self@27@00 $Ref)
; ---------- closure$0_1_30$5$4001058188801141524 ----------
(declare-const self@28@00 $Ref)
; ---------- closure$0_1_31$5$15359138984068225308 ----------
(declare-const self@29@00 $Ref)
; ---------- closure$0_1_32$4$4011530063300199000 ----------
(declare-const self@30@00 $Ref)
; ---------- closure$0_1_33$3$4187078364295441587 ----------
(declare-const self@31@00 $Ref)
; ---------- closure$0_1_34$4$4327170139127358847 ----------
(declare-const self@32@00 $Ref)
; ---------- closure$0_1_35$5$14940418446817107430 ----------
(declare-const self@33@00 $Ref)
; ---------- closure$0_1_36$5$13369081175465569946 ----------
(declare-const self@34@00 $Ref)
; ---------- closure$0_1_37$4$3593140455824456574 ----------
(declare-const self@35@00 $Ref)
; ---------- closure$0_1_40$4$3219469534212954445 ----------
(declare-const self@36@00 $Ref)
; ---------- closure$0_1_42$4$10532743614038247592 ----------
(declare-const self@37@00 $Ref)
; ---------- closure$0_1_44$3$4187078364295441587 ----------
(declare-const self@38@00 $Ref)
; ---------- closure$0_1_45$4$12281678422680400730 ----------
(declare-const self@39@00 $Ref)
; ---------- closure$0_1_46$4$3982590481482752291 ----------
(declare-const self@40@00 $Ref)
; ---------- closure$0_1_47$5$12370509662819782950 ----------
(declare-const self@41@00 $Ref)
; ---------- closure$0_1_48$4$6013390867679712155 ----------
(declare-const self@42@00 $Ref)
; ---------- closure$0_1_49$5$13616979103016852409 ----------
(declare-const self@43@00 $Ref)
; ---------- closure$0_1_50$4$2450401715045862214 ----------
(declare-const self@44@00 $Ref)
; ---------- closure$0_1_53$4$3219469534212954445 ----------
(declare-const self@45@00 $Ref)
; ---------- closure$0_1_54$4$12474208049917393253 ----------
(declare-const self@46@00 $Ref)
; ---------- closure$0_1_55$5$1741994851038149848 ----------
(declare-const self@47@00 $Ref)
; ---------- closure$0_1_56$4$497787689284256809 ----------
(declare-const self@48@00 $Ref)
; ---------- closure$0_1_57$5$2982545638522801093 ----------
(declare-const self@49@00 $Ref)
; ---------- closure$0_1_59$4$10532743614038247592 ----------
(declare-const self@50@00 $Ref)
; ---------- i32 ----------
(declare-const self@51@00 $Ref)
(push) ; 1
(declare-const $t@52@00 $Snap)
(assert (= $t@52@00 ($Snap.combine ($Snap.first $t@52@00) ($Snap.second $t@52@00))))
(assert (not (= self@51@00 $Ref.null)))
(assert (=
  ($Snap.second $t@52@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@52@00))
    ($Snap.second ($Snap.second $t@52@00)))))
(assert (= ($Snap.first ($Snap.second $t@52@00)) $Snap.unit))
; [eval] -2147483648 <= self.val_int
; [eval] -2147483648
(assert (<= (- 0 2147483648) ($SortWrappers.$SnapToInt ($Snap.first $t@52@00))))
(assert (= ($Snap.second ($Snap.second $t@52@00)) $Snap.unit))
; [eval] self.val_int <= 2147483647
(assert (<= ($SortWrappers.$SnapToInt ($Snap.first $t@52@00)) 2147483647))
(pop) ; 1
; ---------- m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_ ----------
(declare-const self@53@00 $Ref)
(push) ; 1
(declare-const $t@54@00 $Snap)
(assert (= $t@54@00 ($Snap.combine ($Snap.first $t@54@00) ($Snap.second $t@54@00))))
(assert (not (= self@53@00 $Ref.null)))
(pop) ; 1
; ---------- m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$i32$_end_ ----------
(declare-const self@55@00 $Ref)
(push) ; 1
(declare-const $t@56@00 $Snap)
(assert (= $t@56@00 ($Snap.combine ($Snap.first $t@56@00) ($Snap.second $t@56@00))))
(assert (not (= self@55@00 $Ref.null)))
(pop) ; 1
; ---------- m_alloc$$alloc$opensqu$0$closesqu$$$Global$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@57@00 $Ref)
(push) ; 1
(declare-const $t@58@00 $Snap)
(assert (= $t@58@00 $Snap.unit))
(pop) ; 1
; ---------- m_alloc$$raw_vec$opensqu$0$closesqu$$$RawVec$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_sep_$m_alloc$$alloc$opensqu$0$closesqu$$$Global$opensqu$0$closesqu$$_beg_$_end_$_end_ ----------
(declare-const self@59@00 $Ref)
(push) ; 1
(declare-const $t@60@00 $Snap)
(assert (= $t@60@00 ($Snap.combine ($Snap.first $t@60@00) ($Snap.second $t@60@00))))
(assert (not (= self@59@00 $Ref.null)))
(assert (=
  ($Snap.second $t@60@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@60@00))
    ($Snap.second ($Snap.second $t@60@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@60@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@60@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@60@00))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@60@00)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@60@00))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@60@00)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@60@00))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@60@00)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@60@00))))))))
(pop) ; 1
; ---------- m_alloc$$raw_vec$opensqu$0$closesqu$$$RawVec$opensqu$0$closesqu$$_beg_$i32$_sep_$m_alloc$$alloc$opensqu$0$closesqu$$$Global$opensqu$0$closesqu$$_beg_$_end_$_end_ ----------
(declare-const self@61@00 $Ref)
(push) ; 1
(declare-const $t@62@00 $Snap)
(assert (= $t@62@00 ($Snap.combine ($Snap.first $t@62@00) ($Snap.second $t@62@00))))
(assert (not (= self@61@00 $Ref.null)))
(assert (=
  ($Snap.second $t@62@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@62@00))
    ($Snap.second ($Snap.second $t@62@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@62@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@62@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@62@00))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@62@00)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@62@00))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@62@00)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@62@00))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@62@00)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@62@00))))))))
(pop) ; 1
; ---------- m_alloc$$vec$opensqu$0$closesqu$$$Vec$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_ ----------
(declare-const self@63@00 $Ref)
(push) ; 1
(declare-const $t@64@00 $Snap)
(assert (= $t@64@00 ($Snap.combine ($Snap.first $t@64@00) ($Snap.second $t@64@00))))
(assert (not (= self@63@00 $Ref.null)))
(assert (=
  ($Snap.second $t@64@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@64@00))
    ($Snap.second ($Snap.second $t@64@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@64@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@64@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@64@00))))))
(pop) ; 1
; ---------- m_alloc$$vec$opensqu$0$closesqu$$$Vec$opensqu$0$closesqu$$_beg_$i32$_end_ ----------
(declare-const self@65@00 $Ref)
(push) ; 1
(declare-const $t@66@00 $Snap)
(assert (= $t@66@00 ($Snap.combine ($Snap.first $t@66@00) ($Snap.second $t@66@00))))
(assert (not (= self@65@00 $Ref.null)))
(assert (=
  ($Snap.second $t@66@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@66@00))
    ($Snap.second ($Snap.second $t@66@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@66@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@66@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@66@00))))))
(pop) ; 1
; ---------- m_core$$ptr$opensqu$0$closesqu$$$Unique$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_ ----------
(declare-const self@67@00 $Ref)
; ---------- m_core$$ptr$opensqu$0$closesqu$$$Unique$opensqu$0$closesqu$$_beg_$i32$_end_ ----------
(declare-const self@68@00 $Ref)
; ---------- never ----------
(declare-const self@69@00 $Ref)
; ---------- ref$__TYPARAM__$T$__ ----------
(declare-const self@70@00 $Ref)
(push) ; 1
(declare-const $t@71@00 $Snap)
(assert (= $t@71@00 ($Snap.combine ($Snap.first $t@71@00) ($Snap.second $t@71@00))))
(assert (not (= self@70@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_12$4$11954709591491712216 ----------
(declare-const self@72@00 $Ref)
(push) ; 1
(declare-const $t@73@00 $Snap)
(assert (= $t@73@00 ($Snap.combine ($Snap.first $t@73@00) ($Snap.second $t@73@00))))
(assert (not (= self@72@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_13$4$3975231876959819947 ----------
(declare-const self@74@00 $Ref)
(push) ; 1
(declare-const $t@75@00 $Snap)
(assert (= $t@75@00 ($Snap.combine ($Snap.first $t@75@00) ($Snap.second $t@75@00))))
(assert (not (= self@74@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_14$4$16353099407943472271 ----------
(declare-const self@76@00 $Ref)
(push) ; 1
(declare-const $t@77@00 $Snap)
(assert (= $t@77@00 ($Snap.combine ($Snap.first $t@77@00) ($Snap.second $t@77@00))))
(assert (not (= self@76@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_15$5$9228659558676986478 ----------
(declare-const self@78@00 $Ref)
(push) ; 1
(declare-const $t@79@00 $Snap)
(assert (= $t@79@00 ($Snap.combine ($Snap.first $t@79@00) ($Snap.second $t@79@00))))
(assert (not (= self@78@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_20$4$16353099407943472271 ----------
(declare-const self@80@00 $Ref)
(push) ; 1
(declare-const $t@81@00 $Snap)
(assert (= $t@81@00 ($Snap.combine ($Snap.first $t@81@00) ($Snap.second $t@81@00))))
(assert (not (= self@80@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_21$5$6778908376983593016 ----------
(declare-const self@82@00 $Ref)
(push) ; 1
(declare-const $t@83@00 $Snap)
(assert (= $t@83@00 ($Snap.combine ($Snap.first $t@83@00) ($Snap.second $t@83@00))))
(assert (not (= self@82@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_22$4$4834813325720458200 ----------
(declare-const self@84@00 $Ref)
(push) ; 1
(declare-const $t@85@00 $Snap)
(assert (= $t@85@00 ($Snap.combine ($Snap.first $t@85@00) ($Snap.second $t@85@00))))
(assert (not (= self@84@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_23$5$15937944919612014542 ----------
(declare-const self@86@00 $Ref)
(push) ; 1
(declare-const $t@87@00 $Snap)
(assert (= $t@87@00 ($Snap.combine ($Snap.first $t@87@00) ($Snap.second $t@87@00))))
(assert (not (= self@86@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_24$4$2480206325276483456 ----------
(declare-const self@88@00 $Ref)
(push) ; 1
(declare-const $t@89@00 $Snap)
(assert (= $t@89@00 ($Snap.combine ($Snap.first $t@89@00) ($Snap.second $t@89@00))))
(assert (not (= self@88@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_29$4$10546764852954676599 ----------
(declare-const self@90@00 $Ref)
(push) ; 1
(declare-const $t@91@00 $Snap)
(assert (= $t@91@00 ($Snap.combine ($Snap.first $t@91@00) ($Snap.second $t@91@00))))
(assert (not (= self@90@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_30$5$4001058188801141524 ----------
(declare-const self@92@00 $Ref)
(push) ; 1
(declare-const $t@93@00 $Snap)
(assert (= $t@93@00 ($Snap.combine ($Snap.first $t@93@00) ($Snap.second $t@93@00))))
(assert (not (= self@92@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_31$5$15359138984068225308 ----------
(declare-const self@94@00 $Ref)
(push) ; 1
(declare-const $t@95@00 $Snap)
(assert (= $t@95@00 ($Snap.combine ($Snap.first $t@95@00) ($Snap.second $t@95@00))))
(assert (not (= self@94@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_32$4$4011530063300199000 ----------
(declare-const self@96@00 $Ref)
(push) ; 1
(declare-const $t@97@00 $Snap)
(assert (= $t@97@00 ($Snap.combine ($Snap.first $t@97@00) ($Snap.second $t@97@00))))
(assert (not (= self@96@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_34$4$4327170139127358847 ----------
(declare-const self@98@00 $Ref)
(push) ; 1
(declare-const $t@99@00 $Snap)
(assert (= $t@99@00 ($Snap.combine ($Snap.first $t@99@00) ($Snap.second $t@99@00))))
(assert (not (= self@98@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_35$5$14940418446817107430 ----------
(declare-const self@100@00 $Ref)
(push) ; 1
(declare-const $t@101@00 $Snap)
(assert (= $t@101@00 ($Snap.combine ($Snap.first $t@101@00) ($Snap.second $t@101@00))))
(assert (not (= self@100@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_36$5$13369081175465569946 ----------
(declare-const self@102@00 $Ref)
(push) ; 1
(declare-const $t@103@00 $Snap)
(assert (= $t@103@00 ($Snap.combine ($Snap.first $t@103@00) ($Snap.second $t@103@00))))
(assert (not (= self@102@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_37$4$3593140455824456574 ----------
(declare-const self@104@00 $Ref)
(push) ; 1
(declare-const $t@105@00 $Snap)
(assert (= $t@105@00 ($Snap.combine ($Snap.first $t@105@00) ($Snap.second $t@105@00))))
(assert (not (= self@104@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_40$4$3219469534212954445 ----------
(declare-const self@106@00 $Ref)
(push) ; 1
(declare-const $t@107@00 $Snap)
(assert (= $t@107@00 ($Snap.combine ($Snap.first $t@107@00) ($Snap.second $t@107@00))))
(assert (not (= self@106@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_42$4$10532743614038247592 ----------
(declare-const self@108@00 $Ref)
(push) ; 1
(declare-const $t@109@00 $Snap)
(assert (= $t@109@00 ($Snap.combine ($Snap.first $t@109@00) ($Snap.second $t@109@00))))
(assert (not (= self@108@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_45$4$12281678422680400730 ----------
(declare-const self@110@00 $Ref)
(push) ; 1
(declare-const $t@111@00 $Snap)
(assert (= $t@111@00 ($Snap.combine ($Snap.first $t@111@00) ($Snap.second $t@111@00))))
(assert (not (= self@110@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_46$4$3982590481482752291 ----------
(declare-const self@112@00 $Ref)
(push) ; 1
(declare-const $t@113@00 $Snap)
(assert (= $t@113@00 ($Snap.combine ($Snap.first $t@113@00) ($Snap.second $t@113@00))))
(assert (not (= self@112@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_47$5$12370509662819782950 ----------
(declare-const self@114@00 $Ref)
(push) ; 1
(declare-const $t@115@00 $Snap)
(assert (= $t@115@00 ($Snap.combine ($Snap.first $t@115@00) ($Snap.second $t@115@00))))
(assert (not (= self@114@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_48$4$6013390867679712155 ----------
(declare-const self@116@00 $Ref)
(push) ; 1
(declare-const $t@117@00 $Snap)
(assert (= $t@117@00 ($Snap.combine ($Snap.first $t@117@00) ($Snap.second $t@117@00))))
(assert (not (= self@116@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_49$5$13616979103016852409 ----------
(declare-const self@118@00 $Ref)
(push) ; 1
(declare-const $t@119@00 $Snap)
(assert (= $t@119@00 ($Snap.combine ($Snap.first $t@119@00) ($Snap.second $t@119@00))))
(assert (not (= self@118@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_50$4$2450401715045862214 ----------
(declare-const self@120@00 $Ref)
(push) ; 1
(declare-const $t@121@00 $Snap)
(assert (= $t@121@00 ($Snap.combine ($Snap.first $t@121@00) ($Snap.second $t@121@00))))
(assert (not (= self@120@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_53$4$3219469534212954445 ----------
(declare-const self@122@00 $Ref)
(push) ; 1
(declare-const $t@123@00 $Snap)
(assert (= $t@123@00 ($Snap.combine ($Snap.first $t@123@00) ($Snap.second $t@123@00))))
(assert (not (= self@122@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_54$4$12474208049917393253 ----------
(declare-const self@124@00 $Ref)
(push) ; 1
(declare-const $t@125@00 $Snap)
(assert (= $t@125@00 ($Snap.combine ($Snap.first $t@125@00) ($Snap.second $t@125@00))))
(assert (not (= self@124@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_55$5$1741994851038149848 ----------
(declare-const self@126@00 $Ref)
(push) ; 1
(declare-const $t@127@00 $Snap)
(assert (= $t@127@00 ($Snap.combine ($Snap.first $t@127@00) ($Snap.second $t@127@00))))
(assert (not (= self@126@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_56$4$497787689284256809 ----------
(declare-const self@128@00 $Ref)
(push) ; 1
(declare-const $t@129@00 $Snap)
(assert (= $t@129@00 ($Snap.combine ($Snap.first $t@129@00) ($Snap.second $t@129@00))))
(assert (not (= self@128@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_57$5$2982545638522801093 ----------
(declare-const self@130@00 $Ref)
(push) ; 1
(declare-const $t@131@00 $Snap)
(assert (= $t@131@00 ($Snap.combine ($Snap.first $t@131@00) ($Snap.second $t@131@00))))
(assert (not (= self@130@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_59$4$10532743614038247592 ----------
(declare-const self@132@00 $Ref)
(push) ; 1
(declare-const $t@133@00 $Snap)
(assert (= $t@133@00 ($Snap.combine ($Snap.first $t@133@00) ($Snap.second $t@133@00))))
(assert (not (= self@132@00 $Ref.null)))
(pop) ; 1
; ---------- ref$m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_ ----------
(declare-const self@134@00 $Ref)
(push) ; 1
(declare-const $t@135@00 $Snap)
(assert (= $t@135@00 ($Snap.combine ($Snap.first $t@135@00) ($Snap.second $t@135@00))))
(assert (not (= self@134@00 $Ref.null)))
(pop) ; 1
; ---------- ref$m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$i32$_end_ ----------
(declare-const self@136@00 $Ref)
(push) ; 1
(declare-const $t@137@00 $Snap)
(assert (= $t@137@00 ($Snap.combine ($Snap.first $t@137@00) ($Snap.second $t@137@00))))
(assert (not (= self@136@00 $Ref.null)))
(pop) ; 1
; ---------- ref$ref$m_Heapsort_generic$$VecWrapper$opensqu$0$closesqu$$_beg_$__TYPARAM__$T$__$_end_ ----------
(declare-const self@138@00 $Ref)
(push) ; 1
(declare-const $t@139@00 $Snap)
(assert (= $t@139@00 ($Snap.combine ($Snap.first $t@139@00) ($Snap.second $t@139@00))))
(assert (not (= self@138@00 $Ref.null)))
(pop) ; 1
; ---------- ref$str ----------
(declare-const self@140@00 $Ref)
(push) ; 1
(declare-const $t@141@00 $Snap)
(assert (= $t@141@00 ($Snap.combine ($Snap.first $t@141@00) ($Snap.second $t@141@00))))
(assert (not (= self@140@00 $Ref.null)))
(pop) ; 1
; ---------- ref$tuple3$ref$str$u32$u32 ----------
(declare-const self@142@00 $Ref)
(push) ; 1
(declare-const $t@143@00 $Snap)
(assert (= $t@143@00 ($Snap.combine ($Snap.first $t@143@00) ($Snap.second $t@143@00))))
(assert (not (= self@142@00 $Ref.null)))
(pop) ; 1
; ---------- ref$usize ----------
(declare-const self@144@00 $Ref)
(push) ; 1
(declare-const $t@145@00 $Snap)
(assert (= $t@145@00 ($Snap.combine ($Snap.first $t@145@00) ($Snap.second $t@145@00))))
(assert (not (= self@144@00 $Ref.null)))
(pop) ; 1
; ---------- str ----------
(declare-const self@146@00 $Ref)
; ---------- tuple0$ ----------
(declare-const self@147@00 $Ref)
(push) ; 1
(declare-const $t@148@00 $Snap)
(assert (= $t@148@00 $Snap.unit))
(pop) ; 1
; ---------- tuple2$usize$bool ----------
(declare-const self@149@00 $Ref)
(push) ; 1
(declare-const $t@150@00 $Snap)
(assert (= $t@150@00 ($Snap.combine ($Snap.first $t@150@00) ($Snap.second $t@150@00))))
(assert (not (= self@149@00 $Ref.null)))
(assert (=
  ($Snap.second $t@150@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@150@00))
    ($Snap.second ($Snap.second $t@150@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@150@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@150@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@150@00))))))
(pop) ; 1
; ---------- tuple3$ref$str$u32$u32 ----------
(declare-const self@151@00 $Ref)
(push) ; 1
(declare-const $t@152@00 $Snap)
(assert (= $t@152@00 ($Snap.combine ($Snap.first $t@152@00) ($Snap.second $t@152@00))))
(assert (not (= self@151@00 $Ref.null)))
(assert (=
  ($Snap.second $t@152@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@152@00))
    ($Snap.second ($Snap.second $t@152@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@152@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@152@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@152@00))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@152@00)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@152@00))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@00)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@00))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@00)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@00))))))))
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@152@00))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@152@00)))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
; ---------- u32 ----------
(declare-const self@153@00 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@154@00 $Snap)
(assert (= $t@154@00 ($Snap.combine ($Snap.first $t@154@00) ($Snap.second $t@154@00))))
(assert (not (= self@153@00 $Ref.null)))
(assert (=
  ($Snap.second $t@154@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@154@00))
    ($Snap.second ($Snap.second $t@154@00)))))
(assert (= ($Snap.first ($Snap.second $t@154@00)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@154@00))))
(assert (= ($Snap.second ($Snap.second $t@154@00)) $Snap.unit))
; [eval] self.val_int <= 4294967295
(assert (<= ($SortWrappers.$SnapToInt ($Snap.first $t@154@00)) 4294967295))
(pop) ; 1
; ---------- usize ----------
(declare-const self@155@00 $Ref)
(push) ; 1
(declare-const $t@156@00 $Snap)
(assert (= $t@156@00 ($Snap.combine ($Snap.first $t@156@00) ($Snap.second $t@156@00))))
(assert (not (= self@155@00 $Ref.null)))
(assert (=
  ($Snap.second $t@156@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@156@00))
    ($Snap.second ($Snap.second $t@156@00)))))
(assert (= ($Snap.first ($Snap.second $t@156@00)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@156@00))))
(assert (= ($Snap.second ($Snap.second $t@156@00)) $Snap.unit))
; [eval] self.val_int <= 18446744073709551615
(assert (<= ($SortWrappers.$SnapToInt ($Snap.first $t@156@00)) 18446744073709551615))
(pop) ; 1
