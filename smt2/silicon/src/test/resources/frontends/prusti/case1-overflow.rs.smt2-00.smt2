(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-04 00:18:33
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
(declare-sort Set<$Ref> 0)
(declare-sort Set<Bool> 0)
(declare-sort Set<Int> 0)
(declare-sort Set<$Snap> 0)
(declare-sort $FVF<val_ref> 0)
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
(declare-fun $SortWrappers.Set<$Ref>To$Snap (Set<$Ref>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<$Ref> ($Snap) Set<$Ref>)
(assert (forall ((x Set<$Ref>)) (!
    (= x ($SortWrappers.$SnapToSet<$Ref>($SortWrappers.Set<$Ref>To$Snap x)))
    :pattern (($SortWrappers.Set<$Ref>To$Snap x))
    :qid |$Snap.$SnapToSet<$Ref>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<$Ref>To$Snap($SortWrappers.$SnapToSet<$Ref> x)))
    :pattern (($SortWrappers.$SnapToSet<$Ref> x))
    :qid |$Snap.Set<$Ref>To$SnapToSet<$Ref>|
    )))
(declare-fun $SortWrappers.Set<Bool>To$Snap (Set<Bool>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<Bool> ($Snap) Set<Bool>)
(assert (forall ((x Set<Bool>)) (!
    (= x ($SortWrappers.$SnapToSet<Bool>($SortWrappers.Set<Bool>To$Snap x)))
    :pattern (($SortWrappers.Set<Bool>To$Snap x))
    :qid |$Snap.$SnapToSet<Bool>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<Bool>To$Snap($SortWrappers.$SnapToSet<Bool> x)))
    :pattern (($SortWrappers.$SnapToSet<Bool> x))
    :qid |$Snap.Set<Bool>To$SnapToSet<Bool>|
    )))
(declare-fun $SortWrappers.Set<Int>To$Snap (Set<Int>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<Int> ($Snap) Set<Int>)
(assert (forall ((x Set<Int>)) (!
    (= x ($SortWrappers.$SnapToSet<Int>($SortWrappers.Set<Int>To$Snap x)))
    :pattern (($SortWrappers.Set<Int>To$Snap x))
    :qid |$Snap.$SnapToSet<Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<Int>To$Snap($SortWrappers.$SnapToSet<Int> x)))
    :pattern (($SortWrappers.$SnapToSet<Int> x))
    :qid |$Snap.Set<Int>To$SnapToSet<Int>|
    )))
(declare-fun $SortWrappers.Set<$Snap>To$Snap (Set<$Snap>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<$Snap> ($Snap) Set<$Snap>)
(assert (forall ((x Set<$Snap>)) (!
    (= x ($SortWrappers.$SnapToSet<$Snap>($SortWrappers.Set<$Snap>To$Snap x)))
    :pattern (($SortWrappers.Set<$Snap>To$Snap x))
    :qid |$Snap.$SnapToSet<$Snap>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<$Snap>To$Snap($SortWrappers.$SnapToSet<$Snap> x)))
    :pattern (($SortWrappers.$SnapToSet<$Snap> x))
    :qid |$Snap.Set<$Snap>To$SnapToSet<$Snap>|
    )))
; Declaring additional sort wrappers
(declare-fun $SortWrappers.$FVF<val_ref>To$Snap ($FVF<val_ref>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<val_ref> ($Snap) $FVF<val_ref>)
(assert (forall ((x $FVF<val_ref>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<val_ref>($SortWrappers.$FVF<val_ref>To$Snap x)))
    :pattern (($SortWrappers.$FVF<val_ref>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<val_ref>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<val_ref>To$Snap($SortWrappers.$SnapTo$FVF<val_ref> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<val_ref> x))
    :qid |$Snap.$FVF<val_ref>To$SnapTo$FVF<val_ref>|
    )))
; ////////// Symbols
(declare-fun Set_card (Set<$Ref>) Int)
(declare-const Set_empty Set<$Ref>)
(declare-fun Set_in ($Ref Set<$Ref>) Bool)
(declare-fun Set_singleton ($Ref) Set<$Ref>)
(declare-fun Set_unionone (Set<$Ref> $Ref) Set<$Ref>)
(declare-fun Set_union (Set<$Ref> Set<$Ref>) Set<$Ref>)
(declare-fun Set_intersection (Set<$Ref> Set<$Ref>) Set<$Ref>)
(declare-fun Set_difference (Set<$Ref> Set<$Ref>) Set<$Ref>)
(declare-fun Set_subset (Set<$Ref> Set<$Ref>) Bool)
(declare-fun Set_equal (Set<$Ref> Set<$Ref>) Bool)
(declare-fun Set_skolem_diff (Set<$Ref> Set<$Ref>) $Ref)
(declare-fun Set_card (Set<Bool>) Int)
(declare-const Set_empty Set<Bool>)
(declare-fun Set_in (Bool Set<Bool>) Bool)
(declare-fun Set_singleton (Bool) Set<Bool>)
(declare-fun Set_unionone (Set<Bool> Bool) Set<Bool>)
(declare-fun Set_union (Set<Bool> Set<Bool>) Set<Bool>)
(declare-fun Set_intersection (Set<Bool> Set<Bool>) Set<Bool>)
(declare-fun Set_difference (Set<Bool> Set<Bool>) Set<Bool>)
(declare-fun Set_subset (Set<Bool> Set<Bool>) Bool)
(declare-fun Set_equal (Set<Bool> Set<Bool>) Bool)
(declare-fun Set_skolem_diff (Set<Bool> Set<Bool>) Bool)
(declare-fun Set_card (Set<Int>) Int)
(declare-const Set_empty Set<Int>)
(declare-fun Set_in (Int Set<Int>) Bool)
(declare-fun Set_singleton (Int) Set<Int>)
(declare-fun Set_unionone (Set<Int> Int) Set<Int>)
(declare-fun Set_union (Set<Int> Set<Int>) Set<Int>)
(declare-fun Set_intersection (Set<Int> Set<Int>) Set<Int>)
(declare-fun Set_difference (Set<Int> Set<Int>) Set<Int>)
(declare-fun Set_subset (Set<Int> Set<Int>) Bool)
(declare-fun Set_equal (Set<Int> Set<Int>) Bool)
(declare-fun Set_skolem_diff (Set<Int> Set<Int>) Int)
(declare-fun Set_card (Set<$Snap>) Int)
(declare-const Set_empty Set<$Snap>)
(declare-fun Set_in ($Snap Set<$Snap>) Bool)
(declare-fun Set_singleton ($Snap) Set<$Snap>)
(declare-fun Set_unionone (Set<$Snap> $Snap) Set<$Snap>)
(declare-fun Set_union (Set<$Snap> Set<$Snap>) Set<$Snap>)
(declare-fun Set_intersection (Set<$Snap> Set<$Snap>) Set<$Snap>)
(declare-fun Set_difference (Set<$Snap> Set<$Snap>) Set<$Snap>)
(declare-fun Set_subset (Set<$Snap> Set<$Snap>) Bool)
(declare-fun Set_equal (Set<$Snap> Set<$Snap>) Bool)
(declare-fun Set_skolem_diff (Set<$Snap> Set<$Snap>) $Snap)
; /field_value_functions_declarations.smt2 [val_ref: Ref]
(declare-fun $FVF.domain_val_ref ($FVF<val_ref>) Set<$Ref>)
(declare-fun $FVF.lookup_val_ref ($FVF<val_ref> $Ref) $Ref)
(declare-fun $FVF.after_val_ref ($FVF<val_ref> $FVF<val_ref>) Bool)
(declare-fun $FVF.loc_val_ref ($Ref $Ref) Bool)
(declare-fun $FVF.perm_val_ref ($FPM $Ref) $Perm)
(declare-const $fvfTOP_val_ref $FVF<val_ref>)
; Declaring symbols related to program functions (from program analysis)
(declare-fun read$ ($Snap) $Perm)
(declare-fun read$%limited ($Snap) $Perm)
(declare-const read$%stateless Bool)
(declare-fun read$%precondition ($Snap) Bool)
(declare-fun m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap $Ref) Int)
(declare-fun m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited ($Snap $Ref) Int)
(declare-fun m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless ($Ref) Bool)
(declare-fun m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap $Ref) Bool)
(declare-fun m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap $Ref Int) Int)
(declare-fun m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited ($Snap $Ref Int) Int)
(declare-fun m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%stateless ($Ref Int) Bool)
(declare-fun m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition ($Snap $Ref Int) Bool)
(declare-fun builtin$unreach_bool__$TY$__$bool$ ($Snap) Bool)
(declare-fun builtin$unreach_bool__$TY$__$bool$%limited ($Snap) Bool)
(declare-const builtin$unreach_bool__$TY$__$bool$%stateless Bool)
(declare-fun builtin$unreach_bool__$TY$__$bool$%precondition ($Snap) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun DeadBorrowToken$%trigger ($Snap Int) Bool)
(declare-fun bool%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_10$3$7711331199245535947%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_11$3$5137825467090953765%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_12$3$7711331199245535947%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_13$4$11644730439503502661%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_14$3$7711331199245535947%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_15$4$18386815147318901014%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_16$3$12822519522425246489%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_17$5$5999180984521990656%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_18$4$14417842802724694541%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_19$5$7356128494664279390%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_20$4$10569430833185528377%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_21$3$17716779073151259027%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_22$4$6959919921013906303%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_23$3$2749950704260165101%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_24$4$8776322376023778844%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_25$4$13930546447192206038%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_26$2$2442745199739292071%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_27$4$9601174033270273652%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_28$3$2676394293484528775%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_29$3$4702266691936132571%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_30$4$1900672158907834163%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_31$3$10206445668956766725%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_32$4$1120402195590746533%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_33$3$962033126259572045%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_34$4$5241382062443896817%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_35$4$8468797872175521945%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_36$4$3423180618341393584%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_37$4$7294527292737118534%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_38$4$16004927782998790755%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_39$5$17751826209814435614%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_40$4$4834427145658621534%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_41$4$14080283279505037481%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_42$5$16123710995274909701%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_43$4$6144995061334283617%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_44$4$1116589283829892220%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_45$5$17784521906536127797%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_46$4$2128067440152738162%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_47$3$10493024678032883219%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_48$3$611486150515690454%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_49$4$10714207809409461665%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_50$4$6044042793315164657%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_51$3$15722217098559904860%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_52$4$11784940552923272838%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_53$4$4068763234351375656%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_54$3$10466807134434299394%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_55$4$2993859573578303247%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_56$4$9613954654305614871%trigger ($Snap $Ref) Bool)
(declare-fun i32%trigger ($Snap $Ref) Bool)
(declare-fun m_alloc$$alloc$opensqu$0$closesqu$$$Global$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_alloc$$raw_vec$opensqu$0$closesqu$$$RawVec$opensqu$0$closesqu$$_beg_$i32$_sep_$m_alloc$$alloc$opensqu$0$closesqu$$$Global$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_alloc$$vec$opensqu$0$closesqu$$$Vec$opensqu$0$closesqu$$_beg_$i32$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_core$$ptr$opensqu$0$closesqu$$$Unique$opensqu$0$closesqu$$_beg_$i32$_end_%trigger ($Snap $Ref) Bool)
(declare-fun never%trigger ($Snap $Ref) Bool)
(declare-fun ref$bool%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_10$3$7711331199245535947%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_11$3$5137825467090953765%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_12$3$7711331199245535947%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_13$4$11644730439503502661%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_14$3$7711331199245535947%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_15$4$18386815147318901014%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_16$3$12822519522425246489%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_17$5$5999180984521990656%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_18$4$14417842802724694541%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_19$5$7356128494664279390%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_20$4$10569430833185528377%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_21$3$17716779073151259027%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_22$4$6959919921013906303%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_23$3$2749950704260165101%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_24$4$8776322376023778844%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_25$4$13930546447192206038%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_27$4$9601174033270273652%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_28$3$2676394293484528775%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_29$3$4702266691936132571%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_30$4$1900672158907834163%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_31$3$10206445668956766725%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_32$4$1120402195590746533%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_33$3$962033126259572045%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_34$4$5241382062443896817%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_35$4$8468797872175521945%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_36$4$3423180618341393584%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_37$4$7294527292737118534%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_38$4$16004927782998790755%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_39$5$17751826209814435614%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_40$4$4834427145658621534%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_41$4$14080283279505037481%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_42$5$16123710995274909701%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_43$4$6144995061334283617%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_44$4$1116589283829892220%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_45$5$17784521906536127797%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_46$4$2128067440152738162%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_47$3$10493024678032883219%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_48$3$611486150515690454%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_49$4$10714207809409461665%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_50$4$6044042793315164657%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_51$3$15722217098559904860%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_52$4$11784940552923272838%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_53$4$4068763234351375656%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_54$3$10466807134434299394%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_55$4$2993859573578303247%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_56$4$9613954654305614871%trigger ($Snap $Ref) Bool)
(declare-fun ref$i32%trigger ($Snap $Ref) Bool)
(declare-fun ref$m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$ref$m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
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
(assert (forall ((s Set<$Ref>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o $Ref)) (!
  (not (Set_in o (as Set_empty  Set<$Ref>)))
  :pattern ((Set_in o (as Set_empty  Set<$Ref>)))
  )))
(assert (forall ((s Set<$Ref>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<$Ref>)))
    (=> (not (= (Set_card s) 0)) (exists ((x $Ref))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r $Ref)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r $Ref) (o $Ref)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r $Ref)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<$Ref>) (x $Ref) (o $Ref)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Ref>) (x $Ref)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<$Ref>) (x $Ref) (y $Ref)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<$Ref>) (x $Ref)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Ref>) (x $Ref)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (o $Ref)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (y $Ref)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (y $Ref)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (o $Ref)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (o $Ref)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (y $Ref)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (and
    (=
      (+
        (+ (Set_card (Set_difference a b)) (Set_card (Set_difference b a)))
        (Set_card (Set_intersection a b)))
      (Set_card (Set_union a b)))
    (=
      (Set_card (Set_difference a b))
      (- (Set_card a) (Set_card (Set_intersection a b)))))
  :pattern ((Set_card (Set_difference a b)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (=
    (Set_subset a b)
    (forall ((o $Ref)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (or
    (and (Set_equal a b) (= a b))
    (and
      (not (Set_equal a b))
      (and
        (not (= a b))
        (and
          (= (Set_skolem_diff a b) (Set_skolem_diff b a))
          (not
            (= (Set_in (Set_skolem_diff a b) a) (Set_in (Set_skolem_diff a b) b)))))))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (=> (Set_equal a b) (= a b))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((s Set<Bool>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o Bool)) (!
  (not (Set_in o (as Set_empty  Set<Bool>)))
  :pattern ((Set_in o (as Set_empty  Set<Bool>)))
  )))
(assert (forall ((s Set<Bool>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<Bool>)))
    (=> (not (= (Set_card s) 0)) (exists ((x Bool))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r Bool)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r Bool) (o Bool)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r Bool)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<Bool>) (x Bool) (o Bool)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<Bool>) (x Bool)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<Bool>) (x Bool) (y Bool)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<Bool>) (x Bool)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Bool>) (x Bool)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>) (o Bool)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>) (y Bool)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>) (y Bool)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>) (o Bool)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>) (o Bool)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>) (y Bool)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (and
    (=
      (+
        (+ (Set_card (Set_difference a b)) (Set_card (Set_difference b a)))
        (Set_card (Set_intersection a b)))
      (Set_card (Set_union a b)))
    (=
      (Set_card (Set_difference a b))
      (- (Set_card a) (Set_card (Set_intersection a b)))))
  :pattern ((Set_card (Set_difference a b)))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (=
    (Set_subset a b)
    (forall ((o Bool)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (or
    (and (Set_equal a b) (= a b))
    (and
      (not (Set_equal a b))
      (and
        (not (= a b))
        (and
          (= (Set_skolem_diff a b) (Set_skolem_diff b a))
          (not
            (= (Set_in (Set_skolem_diff a b) a) (Set_in (Set_skolem_diff a b) b)))))))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((a Set<Bool>) (b Set<Bool>)) (!
  (=> (Set_equal a b) (= a b))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((s Set<Int>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o Int)) (!
  (not (Set_in o (as Set_empty  Set<Int>)))
  :pattern ((Set_in o (as Set_empty  Set<Int>)))
  )))
(assert (forall ((s Set<Int>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<Int>)))
    (=> (not (= (Set_card s) 0)) (exists ((x Int))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r Int)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r Int) (o Int)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r Int)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<Int>) (x Int) (o Int)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<Int>) (x Int)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<Int>) (x Int) (y Int)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<Int>) (x Int)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Int>) (x Int)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (o Int)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (y Int)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (y Int)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (o Int)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (o Int)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (y Int)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (and
    (=
      (+
        (+ (Set_card (Set_difference a b)) (Set_card (Set_difference b a)))
        (Set_card (Set_intersection a b)))
      (Set_card (Set_union a b)))
    (=
      (Set_card (Set_difference a b))
      (- (Set_card a) (Set_card (Set_intersection a b)))))
  :pattern ((Set_card (Set_difference a b)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (=
    (Set_subset a b)
    (forall ((o Int)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (or
    (and (Set_equal a b) (= a b))
    (and
      (not (Set_equal a b))
      (and
        (not (= a b))
        (and
          (= (Set_skolem_diff a b) (Set_skolem_diff b a))
          (not
            (= (Set_in (Set_skolem_diff a b) a) (Set_in (Set_skolem_diff a b) b)))))))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (=> (Set_equal a b) (= a b))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((s Set<$Snap>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o $Snap)) (!
  (not (Set_in o (as Set_empty  Set<$Snap>)))
  :pattern ((Set_in o (as Set_empty  Set<$Snap>)))
  )))
(assert (forall ((s Set<$Snap>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<$Snap>)))
    (=> (not (= (Set_card s) 0)) (exists ((x $Snap))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r $Snap)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r $Snap) (o $Snap)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r $Snap)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<$Snap>) (x $Snap) (o $Snap)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Snap>) (x $Snap)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<$Snap>) (x $Snap) (y $Snap)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<$Snap>) (x $Snap)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Snap>) (x $Snap)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (o $Snap)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (y $Snap)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (y $Snap)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (o $Snap)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (o $Snap)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (y $Snap)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (and
    (=
      (+
        (+ (Set_card (Set_difference a b)) (Set_card (Set_difference b a)))
        (Set_card (Set_intersection a b)))
      (Set_card (Set_union a b)))
    (=
      (Set_card (Set_difference a b))
      (- (Set_card a) (Set_card (Set_intersection a b)))))
  :pattern ((Set_card (Set_difference a b)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (=
    (Set_subset a b)
    (forall ((o $Snap)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (or
    (and (Set_equal a b) (= a b))
    (and
      (not (Set_equal a b))
      (and
        (not (= a b))
        (and
          (= (Set_skolem_diff a b) (Set_skolem_diff b a))
          (not
            (= (Set_in (Set_skolem_diff a b) a) (Set_in (Set_skolem_diff a b) b)))))))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (=> (Set_equal a b) (= a b))
  :pattern ((Set_equal a b))
  )))
; /field_value_functions_axioms.smt2 [val_ref: Ref]
(assert (forall ((vs $FVF<val_ref>) (ws $FVF<val_ref>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_val_ref vs) ($FVF.domain_val_ref ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_val_ref vs))
            (= ($FVF.lookup_val_ref vs x) ($FVF.lookup_val_ref ws x)))
          :pattern (($FVF.lookup_val_ref vs x) ($FVF.lookup_val_ref ws x))
          :qid |qp.$FVF<val_ref>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<val_ref>To$Snap vs)
              ($SortWrappers.$FVF<val_ref>To$Snap ws)
              )
    :qid |qp.$FVF<val_ref>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_val_ref pm r))
    :pattern (($FVF.perm_val_ref pm r)))))
(assert (forall ((r $Ref) (f $Ref)) (!
    (= ($FVF.loc_val_ref f r) true)
    :pattern (($FVF.loc_val_ref f r)))))
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
(declare-const $t@7@00 $Snap)
(assert (= $t@7@00 ($Snap.combine ($Snap.first $t@7@00) ($Snap.second $t@7@00))))
(assert (= ($Snap.first $t@7@00) $Snap.unit))
; [eval] none < result
(assert (< $Perm.No result@0@00))
(assert (= ($Snap.second $t@7@00) $Snap.unit))
; [eval] result < write
(assert (< result@0@00 $Perm.Write))
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (= (read$%limited s@$) (read$ s@$))
  :pattern ((read$ s@$))
  :qid |quant-u-440|)))
(assert (forall ((s@$ $Snap)) (!
  (as read$%stateless  Bool)
  :pattern ((read$%limited s@$))
  :qid |quant-u-441|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) (=>
    (read$%precondition s@$)
    (and (< $Perm.No result@0@00) (< result@0@00 $Perm.Write))))
  :pattern ((read$%limited s@$))
  :qid |quant-u-448|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-449|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-450|)))
; ---------- FUNCTION m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$----------
(declare-fun _pure_1@1@00 () $Ref)
(declare-fun result@2@00 () Int)
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
(declare-const $t@8@00 $Snap)
(assert (= $t@8@00 ($Snap.combine ($Snap.first $t@8@00) ($Snap.second $t@8@00))))
(assert (= ($Snap.first $t@8@00) $Snap.unit))
; [eval] result >= 0
(assert (>= result@2@00 0))
(assert (=
  ($Snap.second $t@8@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@8@00))
    ($Snap.second ($Snap.second $t@8@00)))))
(assert (= ($Snap.first ($Snap.second $t@8@00)) $Snap.unit))
; [eval] 0 <= result
(assert (<= 0 result@2@00))
(assert (= ($Snap.second ($Snap.second $t@8@00)) $Snap.unit))
; [eval] result <= 18446744073709551615
(assert (<= result@2@00 18446744073709551615))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@1@00 $Ref)) (!
  (=
    (m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@1@00)
    (m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@1@00))
  :pattern ((m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@1@00))
  :qid |quant-u-442|)))
(assert (forall ((s@$ $Snap) (_pure_1@1@00 $Ref)) (!
  (m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless _pure_1@1@00)
  :pattern ((m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@1@00))
  :qid |quant-u-443|)))
(assert (forall ((s@$ $Snap) (_pure_1@1@00 $Ref)) (!
  (let ((result@2@00 (m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@1@00))) (=>
    (m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ _pure_1@1@00)
    (and
      (>= result@2@00 0)
      (<= 0 result@2@00)
      (<= result@2@00 18446744073709551615))))
  :pattern ((m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@1@00))
  :qid |quant-u-451|)))
(assert (forall ((s@$ $Snap) (_pure_1@1@00 $Ref)) (!
  (let ((result@2@00 (m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@1@00))) true)
  :pattern ((m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@1@00))
  :qid |quant-u-452|)))
(assert (forall ((s@$ $Snap) (_pure_1@1@00 $Ref)) (!
  (let ((result@2@00 (m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@1@00))) true)
  :pattern ((m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@1@00))
  :qid |quant-u-453|)))
(assert (forall ((s@$ $Snap) (_pure_1@1@00 $Ref)) (!
  (let ((result@2@00 (m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@1@00))) true)
  :pattern ((m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@1@00))
  :qid |quant-u-454|)))
; ---------- FUNCTION m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$----------
(declare-fun _pure_1@3@00 () $Ref)
(declare-fun _pure_2@4@00 () Int)
(declare-fun result@5@00 () Int)
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
(assert (= ($Snap.first ($Snap.second s@$)) $Snap.unit))
; [eval] 0 <= _pure_2
(assert (<= 0 _pure_2@4@00))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] _pure_2 < m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1)
; [eval] m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1)
(push) ; 2
; [eval] read$()
(push) ; 3
(pop) ; 3
; Joined path conditions
(push) ; 3
(assert (not (or (= (read$ $Snap.unit) $Perm.No) (< $Perm.No (read$ $Snap.unit)))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(push) ; 3
(set-option :timeout 10)
(assert (not (< $Perm.No (read$ $Snap.unit))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@3@00))
(pop) ; 2
; Joined path conditions
(assert (m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@3@00))
(assert (<
  _pure_2@4@00
  (m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    ($Snap.first s@$)
    $Snap.unit) _pure_1@3@00)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second s@$)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$)))) $Snap.unit))
; [eval] 0 <= _pure_2
(assert (= ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))) $Snap.unit))
; [eval] _pure_2 <= 18446744073709551615
(assert (<= _pure_2@4@00 18446744073709551615))
(declare-const $t@9@00 $Snap)
(assert (= $t@9@00 ($Snap.combine ($Snap.first $t@9@00) ($Snap.second $t@9@00))))
(assert (= ($Snap.first $t@9@00) $Snap.unit))
(assert (=
  ($Snap.second $t@9@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@9@00))
    ($Snap.second ($Snap.second $t@9@00)))))
(assert (= ($Snap.first ($Snap.second $t@9@00)) $Snap.unit))
; [eval] -2147483648 <= result
; [eval] -2147483648
(assert (<= (- 0 2147483648) result@5@00))
(assert (= ($Snap.second ($Snap.second $t@9@00)) $Snap.unit))
; [eval] result <= 2147483647
(assert (<= result@5@00 2147483647))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@3@00 $Ref) (_pure_2@4@00 Int)) (!
  (=
    (m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@3@00 _pure_2@4@00)
    (m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ s@$ _pure_1@3@00 _pure_2@4@00))
  :pattern ((m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ s@$ _pure_1@3@00 _pure_2@4@00))
  :qid |quant-u-444|)))
(assert (forall ((s@$ $Snap) (_pure_1@3@00 $Ref) (_pure_2@4@00 Int)) (!
  (m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%stateless _pure_1@3@00 _pure_2@4@00)
  :pattern ((m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@3@00 _pure_2@4@00))
  :qid |quant-u-445|)))
(assert (forall ((s@$ $Snap) (_pure_1@3@00 $Ref) (_pure_2@4@00 Int)) (!
  (let ((result@5@00 (m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@3@00 _pure_2@4@00))) (=>
    (m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition s@$ _pure_1@3@00 _pure_2@4@00)
    (and (<= (- 0 2147483648) result@5@00) (<= result@5@00 2147483647))))
  :pattern ((m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@3@00 _pure_2@4@00))
  :qid |quant-u-455|)))
(assert (forall ((s@$ $Snap) (_pure_1@3@00 $Ref) (_pure_2@4@00 Int)) (!
  (let ((result@5@00 (m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@3@00 _pure_2@4@00))) true)
  :pattern ((m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@3@00 _pure_2@4@00))
  :qid |quant-u-456|)))
(assert (forall ((s@$ $Snap) (_pure_1@3@00 $Ref) (_pure_2@4@00 Int)) (!
  (let ((result@5@00 (m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@3@00 _pure_2@4@00))) true)
  :pattern ((m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@3@00 _pure_2@4@00))
  :qid |quant-u-457|)))
(assert (forall ((s@$ $Snap) (_pure_1@3@00 $Ref) (_pure_2@4@00 Int)) (!
  (let ((result@5@00 (m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@3@00 _pure_2@4@00))) true)
  :pattern ((m_case1_overflow$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@3@00 _pure_2@4@00))
  :qid |quant-u-458|)))
; ---------- FUNCTION builtin$unreach_bool__$TY$__$bool$----------
(declare-fun result@6@00 () Bool)
; ----- Well-definedness of specifications -----
(set-option :timeout 0)
(push) ; 1
(assert (= s@$ $Snap.unit))
(assert false)
(pop) ; 1
(assert (forall ((s@$ $Snap)) (!
  (=
    (builtin$unreach_bool__$TY$__$bool$%limited s@$)
    (builtin$unreach_bool__$TY$__$bool$ s@$))
  :pattern ((builtin$unreach_bool__$TY$__$bool$ s@$))
  :qid |quant-u-446|)))
(assert (forall ((s@$ $Snap)) (!
  (as builtin$unreach_bool__$TY$__$bool$%stateless  Bool)
  :pattern ((builtin$unreach_bool__$TY$__$bool$%limited s@$))
  :qid |quant-u-447|)))
; ---------- DeadBorrowToken$ ----------
(declare-const borrow@10@00 Int)
; ---------- bool ----------
(declare-const self@11@00 $Ref)
(push) ; 1
(declare-const $t@12@00 Bool)
(assert (not (= self@11@00 $Ref.null)))
(pop) ; 1
; ---------- closure$0_1_10$3$7711331199245535947 ----------
(declare-const self@13@00 $Ref)
; ---------- closure$0_1_11$3$5137825467090953765 ----------
(declare-const self@14@00 $Ref)
; ---------- closure$0_1_12$3$7711331199245535947 ----------
(declare-const self@15@00 $Ref)
; ---------- closure$0_1_13$4$11644730439503502661 ----------
(declare-const self@16@00 $Ref)
; ---------- closure$0_1_14$3$7711331199245535947 ----------
(declare-const self@17@00 $Ref)
; ---------- closure$0_1_15$4$18386815147318901014 ----------
(declare-const self@18@00 $Ref)
; ---------- closure$0_1_16$3$12822519522425246489 ----------
(declare-const self@19@00 $Ref)
; ---------- closure$0_1_17$5$5999180984521990656 ----------
(declare-const self@20@00 $Ref)
; ---------- closure$0_1_18$4$14417842802724694541 ----------
(declare-const self@21@00 $Ref)
; ---------- closure$0_1_19$5$7356128494664279390 ----------
(declare-const self@22@00 $Ref)
; ---------- closure$0_1_20$4$10569430833185528377 ----------
(declare-const self@23@00 $Ref)
; ---------- closure$0_1_21$3$17716779073151259027 ----------
(declare-const self@24@00 $Ref)
; ---------- closure$0_1_22$4$6959919921013906303 ----------
(declare-const self@25@00 $Ref)
; ---------- closure$0_1_23$3$2749950704260165101 ----------
(declare-const self@26@00 $Ref)
; ---------- closure$0_1_24$4$8776322376023778844 ----------
(declare-const self@27@00 $Ref)
; ---------- closure$0_1_25$4$13930546447192206038 ----------
(declare-const self@28@00 $Ref)
; ---------- closure$0_1_26$2$2442745199739292071 ----------
(declare-const self@29@00 $Ref)
; ---------- closure$0_1_27$4$9601174033270273652 ----------
(declare-const self@30@00 $Ref)
; ---------- closure$0_1_28$3$2676394293484528775 ----------
(declare-const self@31@00 $Ref)
; ---------- closure$0_1_29$3$4702266691936132571 ----------
(declare-const self@32@00 $Ref)
; ---------- closure$0_1_30$4$1900672158907834163 ----------
(declare-const self@33@00 $Ref)
; ---------- closure$0_1_31$3$10206445668956766725 ----------
(declare-const self@34@00 $Ref)
; ---------- closure$0_1_32$4$1120402195590746533 ----------
(declare-const self@35@00 $Ref)
; ---------- closure$0_1_33$3$962033126259572045 ----------
(declare-const self@36@00 $Ref)
; ---------- closure$0_1_34$4$5241382062443896817 ----------
(declare-const self@37@00 $Ref)
; ---------- closure$0_1_35$4$8468797872175521945 ----------
(declare-const self@38@00 $Ref)
; ---------- closure$0_1_36$4$3423180618341393584 ----------
(declare-const self@39@00 $Ref)
; ---------- closure$0_1_37$4$7294527292737118534 ----------
(declare-const self@40@00 $Ref)
; ---------- closure$0_1_38$4$16004927782998790755 ----------
(declare-const self@41@00 $Ref)
; ---------- closure$0_1_39$5$17751826209814435614 ----------
(declare-const self@42@00 $Ref)
; ---------- closure$0_1_40$4$4834427145658621534 ----------
(declare-const self@43@00 $Ref)
; ---------- closure$0_1_41$4$14080283279505037481 ----------
(declare-const self@44@00 $Ref)
; ---------- closure$0_1_42$5$16123710995274909701 ----------
(declare-const self@45@00 $Ref)
; ---------- closure$0_1_43$4$6144995061334283617 ----------
(declare-const self@46@00 $Ref)
; ---------- closure$0_1_44$4$1116589283829892220 ----------
(declare-const self@47@00 $Ref)
; ---------- closure$0_1_45$5$17784521906536127797 ----------
(declare-const self@48@00 $Ref)
; ---------- closure$0_1_46$4$2128067440152738162 ----------
(declare-const self@49@00 $Ref)
; ---------- closure$0_1_47$3$10493024678032883219 ----------
(declare-const self@50@00 $Ref)
; ---------- closure$0_1_48$3$611486150515690454 ----------
(declare-const self@51@00 $Ref)
; ---------- closure$0_1_49$4$10714207809409461665 ----------
(declare-const self@52@00 $Ref)
; ---------- closure$0_1_50$4$6044042793315164657 ----------
(declare-const self@53@00 $Ref)
; ---------- closure$0_1_51$3$15722217098559904860 ----------
(declare-const self@54@00 $Ref)
; ---------- closure$0_1_52$4$11784940552923272838 ----------
(declare-const self@55@00 $Ref)
; ---------- closure$0_1_53$4$4068763234351375656 ----------
(declare-const self@56@00 $Ref)
; ---------- closure$0_1_54$3$10466807134434299394 ----------
(declare-const self@57@00 $Ref)
; ---------- closure$0_1_55$4$2993859573578303247 ----------
(declare-const self@58@00 $Ref)
; ---------- closure$0_1_56$4$9613954654305614871 ----------
(declare-const self@59@00 $Ref)
; ---------- i32 ----------
(declare-const self@60@00 $Ref)
(push) ; 1
(declare-const $t@61@00 $Snap)
(assert (= $t@61@00 ($Snap.combine ($Snap.first $t@61@00) ($Snap.second $t@61@00))))
(assert (not (= self@60@00 $Ref.null)))
(assert (=
  ($Snap.second $t@61@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@61@00))
    ($Snap.second ($Snap.second $t@61@00)))))
(assert (= ($Snap.first ($Snap.second $t@61@00)) $Snap.unit))
; [eval] -2147483648 <= self.val_int
; [eval] -2147483648
(assert (<= (- 0 2147483648) ($SortWrappers.$SnapToInt ($Snap.first $t@61@00))))
(assert (= ($Snap.second ($Snap.second $t@61@00)) $Snap.unit))
; [eval] self.val_int <= 2147483647
(assert (<= ($SortWrappers.$SnapToInt ($Snap.first $t@61@00)) 2147483647))
(pop) ; 1
; ---------- m_alloc$$alloc$opensqu$0$closesqu$$$Global$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@62@00 $Ref)
(push) ; 1
(declare-const $t@63@00 $Snap)
(assert (= $t@63@00 $Snap.unit))
(pop) ; 1
; ---------- m_alloc$$raw_vec$opensqu$0$closesqu$$$RawVec$opensqu$0$closesqu$$_beg_$i32$_sep_$m_alloc$$alloc$opensqu$0$closesqu$$$Global$opensqu$0$closesqu$$_beg_$_end_$_end_ ----------
(declare-const self@64@00 $Ref)
(push) ; 1
(declare-const $t@65@00 $Snap)
(assert (= $t@65@00 ($Snap.combine ($Snap.first $t@65@00) ($Snap.second $t@65@00))))
(assert (not (= self@64@00 $Ref.null)))
(assert (=
  ($Snap.second $t@65@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@65@00))
    ($Snap.second ($Snap.second $t@65@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@65@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@65@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@65@00))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@65@00)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@65@00))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@65@00)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@65@00))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@65@00)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@65@00))))))))
(pop) ; 1
; ---------- m_alloc$$vec$opensqu$0$closesqu$$$Vec$opensqu$0$closesqu$$_beg_$i32$_end_ ----------
(declare-const self@66@00 $Ref)
(push) ; 1
(declare-const $t@67@00 $Snap)
(assert (= $t@67@00 ($Snap.combine ($Snap.first $t@67@00) ($Snap.second $t@67@00))))
(assert (not (= self@66@00 $Ref.null)))
(assert (=
  ($Snap.second $t@67@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@67@00))
    ($Snap.second ($Snap.second $t@67@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@67@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@67@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@67@00))))))
(pop) ; 1
; ---------- m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@68@00 $Ref)
(push) ; 1
(declare-const $t@69@00 $Snap)
(assert (= $t@69@00 ($Snap.combine ($Snap.first $t@69@00) ($Snap.second $t@69@00))))
(assert (not (= self@68@00 $Ref.null)))
(pop) ; 1
; ---------- m_core$$ptr$opensqu$0$closesqu$$$Unique$opensqu$0$closesqu$$_beg_$i32$_end_ ----------
(declare-const self@70@00 $Ref)
; ---------- never ----------
(declare-const self@71@00 $Ref)
; ---------- ref$bool ----------
(declare-const self@72@00 $Ref)
(push) ; 1
(declare-const $t@73@00 $Snap)
(assert (= $t@73@00 ($Snap.combine ($Snap.first $t@73@00) ($Snap.second $t@73@00))))
(assert (not (= self@72@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_10$3$7711331199245535947 ----------
(declare-const self@74@00 $Ref)
(push) ; 1
(declare-const $t@75@00 $Snap)
(assert (= $t@75@00 ($Snap.combine ($Snap.first $t@75@00) ($Snap.second $t@75@00))))
(assert (not (= self@74@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_11$3$5137825467090953765 ----------
(declare-const self@76@00 $Ref)
(push) ; 1
(declare-const $t@77@00 $Snap)
(assert (= $t@77@00 ($Snap.combine ($Snap.first $t@77@00) ($Snap.second $t@77@00))))
(assert (not (= self@76@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_12$3$7711331199245535947 ----------
(declare-const self@78@00 $Ref)
(push) ; 1
(declare-const $t@79@00 $Snap)
(assert (= $t@79@00 ($Snap.combine ($Snap.first $t@79@00) ($Snap.second $t@79@00))))
(assert (not (= self@78@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_13$4$11644730439503502661 ----------
(declare-const self@80@00 $Ref)
(push) ; 1
(declare-const $t@81@00 $Snap)
(assert (= $t@81@00 ($Snap.combine ($Snap.first $t@81@00) ($Snap.second $t@81@00))))
(assert (not (= self@80@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_14$3$7711331199245535947 ----------
(declare-const self@82@00 $Ref)
(push) ; 1
(declare-const $t@83@00 $Snap)
(assert (= $t@83@00 ($Snap.combine ($Snap.first $t@83@00) ($Snap.second $t@83@00))))
(assert (not (= self@82@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_15$4$18386815147318901014 ----------
(declare-const self@84@00 $Ref)
(push) ; 1
(declare-const $t@85@00 $Snap)
(assert (= $t@85@00 ($Snap.combine ($Snap.first $t@85@00) ($Snap.second $t@85@00))))
(assert (not (= self@84@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_16$3$12822519522425246489 ----------
(declare-const self@86@00 $Ref)
(push) ; 1
(declare-const $t@87@00 $Snap)
(assert (= $t@87@00 ($Snap.combine ($Snap.first $t@87@00) ($Snap.second $t@87@00))))
(assert (not (= self@86@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_17$5$5999180984521990656 ----------
(declare-const self@88@00 $Ref)
(push) ; 1
(declare-const $t@89@00 $Snap)
(assert (= $t@89@00 ($Snap.combine ($Snap.first $t@89@00) ($Snap.second $t@89@00))))
(assert (not (= self@88@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_18$4$14417842802724694541 ----------
(declare-const self@90@00 $Ref)
(push) ; 1
(declare-const $t@91@00 $Snap)
(assert (= $t@91@00 ($Snap.combine ($Snap.first $t@91@00) ($Snap.second $t@91@00))))
(assert (not (= self@90@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_19$5$7356128494664279390 ----------
(declare-const self@92@00 $Ref)
(push) ; 1
(declare-const $t@93@00 $Snap)
(assert (= $t@93@00 ($Snap.combine ($Snap.first $t@93@00) ($Snap.second $t@93@00))))
(assert (not (= self@92@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_20$4$10569430833185528377 ----------
(declare-const self@94@00 $Ref)
(push) ; 1
(declare-const $t@95@00 $Snap)
(assert (= $t@95@00 ($Snap.combine ($Snap.first $t@95@00) ($Snap.second $t@95@00))))
(assert (not (= self@94@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_21$3$17716779073151259027 ----------
(declare-const self@96@00 $Ref)
(push) ; 1
(declare-const $t@97@00 $Snap)
(assert (= $t@97@00 ($Snap.combine ($Snap.first $t@97@00) ($Snap.second $t@97@00))))
(assert (not (= self@96@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_22$4$6959919921013906303 ----------
(declare-const self@98@00 $Ref)
(push) ; 1
(declare-const $t@99@00 $Snap)
(assert (= $t@99@00 ($Snap.combine ($Snap.first $t@99@00) ($Snap.second $t@99@00))))
(assert (not (= self@98@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_23$3$2749950704260165101 ----------
(declare-const self@100@00 $Ref)
(push) ; 1
(declare-const $t@101@00 $Snap)
(assert (= $t@101@00 ($Snap.combine ($Snap.first $t@101@00) ($Snap.second $t@101@00))))
(assert (not (= self@100@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_24$4$8776322376023778844 ----------
(declare-const self@102@00 $Ref)
(push) ; 1
(declare-const $t@103@00 $Snap)
(assert (= $t@103@00 ($Snap.combine ($Snap.first $t@103@00) ($Snap.second $t@103@00))))
(assert (not (= self@102@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_25$4$13930546447192206038 ----------
(declare-const self@104@00 $Ref)
(push) ; 1
(declare-const $t@105@00 $Snap)
(assert (= $t@105@00 ($Snap.combine ($Snap.first $t@105@00) ($Snap.second $t@105@00))))
(assert (not (= self@104@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_27$4$9601174033270273652 ----------
(declare-const self@106@00 $Ref)
(push) ; 1
(declare-const $t@107@00 $Snap)
(assert (= $t@107@00 ($Snap.combine ($Snap.first $t@107@00) ($Snap.second $t@107@00))))
(assert (not (= self@106@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_28$3$2676394293484528775 ----------
(declare-const self@108@00 $Ref)
(push) ; 1
(declare-const $t@109@00 $Snap)
(assert (= $t@109@00 ($Snap.combine ($Snap.first $t@109@00) ($Snap.second $t@109@00))))
(assert (not (= self@108@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_29$3$4702266691936132571 ----------
(declare-const self@110@00 $Ref)
(push) ; 1
(declare-const $t@111@00 $Snap)
(assert (= $t@111@00 ($Snap.combine ($Snap.first $t@111@00) ($Snap.second $t@111@00))))
(assert (not (= self@110@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_30$4$1900672158907834163 ----------
(declare-const self@112@00 $Ref)
(push) ; 1
(declare-const $t@113@00 $Snap)
(assert (= $t@113@00 ($Snap.combine ($Snap.first $t@113@00) ($Snap.second $t@113@00))))
(assert (not (= self@112@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_31$3$10206445668956766725 ----------
(declare-const self@114@00 $Ref)
(push) ; 1
(declare-const $t@115@00 $Snap)
(assert (= $t@115@00 ($Snap.combine ($Snap.first $t@115@00) ($Snap.second $t@115@00))))
(assert (not (= self@114@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_32$4$1120402195590746533 ----------
(declare-const self@116@00 $Ref)
(push) ; 1
(declare-const $t@117@00 $Snap)
(assert (= $t@117@00 ($Snap.combine ($Snap.first $t@117@00) ($Snap.second $t@117@00))))
(assert (not (= self@116@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_33$3$962033126259572045 ----------
(declare-const self@118@00 $Ref)
(push) ; 1
(declare-const $t@119@00 $Snap)
(assert (= $t@119@00 ($Snap.combine ($Snap.first $t@119@00) ($Snap.second $t@119@00))))
(assert (not (= self@118@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_34$4$5241382062443896817 ----------
(declare-const self@120@00 $Ref)
(push) ; 1
(declare-const $t@121@00 $Snap)
(assert (= $t@121@00 ($Snap.combine ($Snap.first $t@121@00) ($Snap.second $t@121@00))))
(assert (not (= self@120@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_35$4$8468797872175521945 ----------
(declare-const self@122@00 $Ref)
(push) ; 1
(declare-const $t@123@00 $Snap)
(assert (= $t@123@00 ($Snap.combine ($Snap.first $t@123@00) ($Snap.second $t@123@00))))
(assert (not (= self@122@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_36$4$3423180618341393584 ----------
(declare-const self@124@00 $Ref)
(push) ; 1
(declare-const $t@125@00 $Snap)
(assert (= $t@125@00 ($Snap.combine ($Snap.first $t@125@00) ($Snap.second $t@125@00))))
(assert (not (= self@124@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_37$4$7294527292737118534 ----------
(declare-const self@126@00 $Ref)
(push) ; 1
(declare-const $t@127@00 $Snap)
(assert (= $t@127@00 ($Snap.combine ($Snap.first $t@127@00) ($Snap.second $t@127@00))))
(assert (not (= self@126@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_38$4$16004927782998790755 ----------
(declare-const self@128@00 $Ref)
(push) ; 1
(declare-const $t@129@00 $Snap)
(assert (= $t@129@00 ($Snap.combine ($Snap.first $t@129@00) ($Snap.second $t@129@00))))
(assert (not (= self@128@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_39$5$17751826209814435614 ----------
(declare-const self@130@00 $Ref)
(push) ; 1
(declare-const $t@131@00 $Snap)
(assert (= $t@131@00 ($Snap.combine ($Snap.first $t@131@00) ($Snap.second $t@131@00))))
(assert (not (= self@130@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_40$4$4834427145658621534 ----------
(declare-const self@132@00 $Ref)
(push) ; 1
(declare-const $t@133@00 $Snap)
(assert (= $t@133@00 ($Snap.combine ($Snap.first $t@133@00) ($Snap.second $t@133@00))))
(assert (not (= self@132@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_41$4$14080283279505037481 ----------
(declare-const self@134@00 $Ref)
(push) ; 1
(declare-const $t@135@00 $Snap)
(assert (= $t@135@00 ($Snap.combine ($Snap.first $t@135@00) ($Snap.second $t@135@00))))
(assert (not (= self@134@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_42$5$16123710995274909701 ----------
(declare-const self@136@00 $Ref)
(push) ; 1
(declare-const $t@137@00 $Snap)
(assert (= $t@137@00 ($Snap.combine ($Snap.first $t@137@00) ($Snap.second $t@137@00))))
(assert (not (= self@136@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_43$4$6144995061334283617 ----------
(declare-const self@138@00 $Ref)
(push) ; 1
(declare-const $t@139@00 $Snap)
(assert (= $t@139@00 ($Snap.combine ($Snap.first $t@139@00) ($Snap.second $t@139@00))))
(assert (not (= self@138@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_44$4$1116589283829892220 ----------
(declare-const self@140@00 $Ref)
(push) ; 1
(declare-const $t@141@00 $Snap)
(assert (= $t@141@00 ($Snap.combine ($Snap.first $t@141@00) ($Snap.second $t@141@00))))
(assert (not (= self@140@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_45$5$17784521906536127797 ----------
(declare-const self@142@00 $Ref)
(push) ; 1
(declare-const $t@143@00 $Snap)
(assert (= $t@143@00 ($Snap.combine ($Snap.first $t@143@00) ($Snap.second $t@143@00))))
(assert (not (= self@142@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_46$4$2128067440152738162 ----------
(declare-const self@144@00 $Ref)
(push) ; 1
(declare-const $t@145@00 $Snap)
(assert (= $t@145@00 ($Snap.combine ($Snap.first $t@145@00) ($Snap.second $t@145@00))))
(assert (not (= self@144@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_47$3$10493024678032883219 ----------
(declare-const self@146@00 $Ref)
(push) ; 1
(declare-const $t@147@00 $Snap)
(assert (= $t@147@00 ($Snap.combine ($Snap.first $t@147@00) ($Snap.second $t@147@00))))
(assert (not (= self@146@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_48$3$611486150515690454 ----------
(declare-const self@148@00 $Ref)
(push) ; 1
(declare-const $t@149@00 $Snap)
(assert (= $t@149@00 ($Snap.combine ($Snap.first $t@149@00) ($Snap.second $t@149@00))))
(assert (not (= self@148@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_49$4$10714207809409461665 ----------
(declare-const self@150@00 $Ref)
(push) ; 1
(declare-const $t@151@00 $Snap)
(assert (= $t@151@00 ($Snap.combine ($Snap.first $t@151@00) ($Snap.second $t@151@00))))
(assert (not (= self@150@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_50$4$6044042793315164657 ----------
(declare-const self@152@00 $Ref)
(push) ; 1
(declare-const $t@153@00 $Snap)
(assert (= $t@153@00 ($Snap.combine ($Snap.first $t@153@00) ($Snap.second $t@153@00))))
(assert (not (= self@152@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_51$3$15722217098559904860 ----------
(declare-const self@154@00 $Ref)
(push) ; 1
(declare-const $t@155@00 $Snap)
(assert (= $t@155@00 ($Snap.combine ($Snap.first $t@155@00) ($Snap.second $t@155@00))))
(assert (not (= self@154@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_52$4$11784940552923272838 ----------
(declare-const self@156@00 $Ref)
(push) ; 1
(declare-const $t@157@00 $Snap)
(assert (= $t@157@00 ($Snap.combine ($Snap.first $t@157@00) ($Snap.second $t@157@00))))
(assert (not (= self@156@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_53$4$4068763234351375656 ----------
(declare-const self@158@00 $Ref)
(push) ; 1
(declare-const $t@159@00 $Snap)
(assert (= $t@159@00 ($Snap.combine ($Snap.first $t@159@00) ($Snap.second $t@159@00))))
(assert (not (= self@158@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_54$3$10466807134434299394 ----------
(declare-const self@160@00 $Ref)
(push) ; 1
(declare-const $t@161@00 $Snap)
(assert (= $t@161@00 ($Snap.combine ($Snap.first $t@161@00) ($Snap.second $t@161@00))))
(assert (not (= self@160@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_55$4$2993859573578303247 ----------
(declare-const self@162@00 $Ref)
(push) ; 1
(declare-const $t@163@00 $Snap)
(assert (= $t@163@00 ($Snap.combine ($Snap.first $t@163@00) ($Snap.second $t@163@00))))
(assert (not (= self@162@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_56$4$9613954654305614871 ----------
(declare-const self@164@00 $Ref)
(push) ; 1
(declare-const $t@165@00 $Snap)
(assert (= $t@165@00 ($Snap.combine ($Snap.first $t@165@00) ($Snap.second $t@165@00))))
(assert (not (= self@164@00 $Ref.null)))
(pop) ; 1
; ---------- ref$i32 ----------
(declare-const self@166@00 $Ref)
(push) ; 1
(declare-const $t@167@00 $Snap)
(assert (= $t@167@00 ($Snap.combine ($Snap.first $t@167@00) ($Snap.second $t@167@00))))
(assert (not (= self@166@00 $Ref.null)))
(pop) ; 1
; ---------- ref$m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@168@00 $Ref)
(push) ; 1
(declare-const $t@169@00 $Snap)
(assert (= $t@169@00 ($Snap.combine ($Snap.first $t@169@00) ($Snap.second $t@169@00))))
(assert (not (= self@168@00 $Ref.null)))
(pop) ; 1
; ---------- ref$ref$m_case1_overflow$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@170@00 $Ref)
(push) ; 1
(declare-const $t@171@00 $Snap)
(assert (= $t@171@00 ($Snap.combine ($Snap.first $t@171@00) ($Snap.second $t@171@00))))
(assert (not (= self@170@00 $Ref.null)))
(pop) ; 1
; ---------- ref$str ----------
(declare-const self@172@00 $Ref)
(push) ; 1
(declare-const $t@173@00 $Snap)
(assert (= $t@173@00 ($Snap.combine ($Snap.first $t@173@00) ($Snap.second $t@173@00))))
(assert (not (= self@172@00 $Ref.null)))
(pop) ; 1
; ---------- ref$tuple3$ref$str$u32$u32 ----------
(declare-const self@174@00 $Ref)
(push) ; 1
(declare-const $t@175@00 $Snap)
(assert (= $t@175@00 ($Snap.combine ($Snap.first $t@175@00) ($Snap.second $t@175@00))))
(assert (not (= self@174@00 $Ref.null)))
(pop) ; 1
; ---------- ref$usize ----------
(declare-const self@176@00 $Ref)
(push) ; 1
(declare-const $t@177@00 $Snap)
(assert (= $t@177@00 ($Snap.combine ($Snap.first $t@177@00) ($Snap.second $t@177@00))))
(assert (not (= self@176@00 $Ref.null)))
(pop) ; 1
; ---------- str ----------
(declare-const self@178@00 $Ref)
; ---------- tuple0$ ----------
(declare-const self@179@00 $Ref)
(push) ; 1
(declare-const $t@180@00 $Snap)
(assert (= $t@180@00 $Snap.unit))
(pop) ; 1
; ---------- tuple2$usize$bool ----------
(declare-const self@181@00 $Ref)
(push) ; 1
(declare-const $t@182@00 $Snap)
(assert (= $t@182@00 ($Snap.combine ($Snap.first $t@182@00) ($Snap.second $t@182@00))))
(assert (not (= self@181@00 $Ref.null)))
(assert (=
  ($Snap.second $t@182@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@182@00))
    ($Snap.second ($Snap.second $t@182@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@182@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@182@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@182@00))))))
(pop) ; 1
; ---------- tuple3$ref$str$u32$u32 ----------
(declare-const self@183@00 $Ref)
(push) ; 1
(declare-const $t@184@00 $Snap)
(assert (= $t@184@00 ($Snap.combine ($Snap.first $t@184@00) ($Snap.second $t@184@00))))
(assert (not (= self@183@00 $Ref.null)))
(assert (=
  ($Snap.second $t@184@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@184@00))
    ($Snap.second ($Snap.second $t@184@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@184@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@184@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@184@00))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@184@00)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@184@00))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@184@00)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@184@00))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@184@00)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@184@00))))))))
(push) ; 2
(set-option :timeout 10)
(assert (not (=
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second $t@184@00))))
  ($SortWrappers.$SnapTo$Ref ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@184@00)))))))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(pop) ; 1
; ---------- u32 ----------
(declare-const self@185@00 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@186@00 $Snap)
(assert (= $t@186@00 ($Snap.combine ($Snap.first $t@186@00) ($Snap.second $t@186@00))))
(assert (not (= self@185@00 $Ref.null)))
(assert (=
  ($Snap.second $t@186@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@186@00))
    ($Snap.second ($Snap.second $t@186@00)))))
(assert (= ($Snap.first ($Snap.second $t@186@00)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@186@00))))
(assert (= ($Snap.second ($Snap.second $t@186@00)) $Snap.unit))
; [eval] self.val_int <= 4294967295
(assert (<= ($SortWrappers.$SnapToInt ($Snap.first $t@186@00)) 4294967295))
(pop) ; 1
; ---------- usize ----------
(declare-const self@187@00 $Ref)
(push) ; 1
(declare-const $t@188@00 $Snap)
(assert (= $t@188@00 ($Snap.combine ($Snap.first $t@188@00) ($Snap.second $t@188@00))))
(assert (not (= self@187@00 $Ref.null)))
(assert (=
  ($Snap.second $t@188@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@188@00))
    ($Snap.second ($Snap.second $t@188@00)))))
(assert (= ($Snap.first ($Snap.second $t@188@00)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@188@00))))
(assert (= ($Snap.second ($Snap.second $t@188@00)) $Snap.unit))
; [eval] self.val_int <= 18446744073709551615
(assert (<= ($SortWrappers.$SnapToInt ($Snap.first $t@188@00)) 18446744073709551615))
(pop) ; 1
