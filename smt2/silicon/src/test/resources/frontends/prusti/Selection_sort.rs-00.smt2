(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-26 21:22:18
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
(declare-fun MWSF_apply ($MWSF $Snap) $Snap)
; Declaring symbols related to program functions (from program analysis)
(declare-fun read$ ($Snap) $Perm)
(declare-fun read$%limited ($Snap) $Perm)
(declare-const read$%stateless Bool)
(declare-fun read$%precondition ($Snap) Bool)
(declare-fun m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap $Ref) Int)
(declare-fun m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited ($Snap $Ref) Int)
(declare-fun m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless ($Ref) Bool)
(declare-fun m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap $Ref) Bool)
(declare-fun builtin$unreach_bool__$TY$__$bool$ ($Snap) Bool)
(declare-fun builtin$unreach_bool__$TY$__$bool$%limited ($Snap) Bool)
(declare-const builtin$unreach_bool__$TY$__$bool$%stateless Bool)
(declare-fun builtin$unreach_bool__$TY$__$bool$%precondition ($Snap) Bool)
(declare-fun m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ ($Snap $Ref Int) Int)
(declare-fun m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited ($Snap $Ref Int) Int)
(declare-fun m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%stateless ($Ref Int) Bool)
(declare-fun m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition ($Snap $Ref Int) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun DeadBorrowToken$%trigger ($Snap Int) Bool)
(declare-fun bool%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_10$3$5025947003234148349%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_11$3$15765438690761850618%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_12$4$7048529785257799747%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_13$3$15765438690761850618%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_14$4$7048529785257799747%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_15$5$13927103562872921321%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_16$3$15765438690761850618%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_17$4$15523507757431244527%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_18$5$3980699002446144432%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_19$2$6293050252958545034%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_20$3$14586384464089816674%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_21$5$6516947270698252826%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_22$4$1613364831441531207%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_23$5$339340244643477828%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_24$4$426145462240784645%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_25$3$8387839296446889492%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_26$4$14834550820136027143%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_27$3$17401215989928098433%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_28$4$14725996966228553680%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_29$4$5011012978171635513%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_30$2$13994891442675209593%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_31$3$1600388980139079346%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_32$3$12097174197495273115%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_33$4$17265103565152846534%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_34$3$988506964091909110%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_35$4$13863419843990886120%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_36$3$3826142628974945485%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_37$4$10131714698020045729%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_38$4$15564781727596283296%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_39$5$13809781631150042407%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_40$5$18322230677846280824%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_41$4$13567031608014809511%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_42$6$7802784798437267329%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_43$5$6169145554234317518%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_44$2$13994891442675209593%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_45$3$9765893351418371426%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_46$3$3090985711722625817%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_47$4$17759171189971550564%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_48$4$17336250458711493274%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_49$5$7268980316304182649%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_50$5$18381689390906128933%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_51$4$10495494951135187346%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_52$6$10538300868879282966%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_53$5$5252183286034364465%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_54$4$10485008220710882862%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_55$4$1366533644619494811%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_56$4$16612207316456456741%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_57$4$7803373796730001819%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_58$5$12610067323094378902%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_59$4$8368886383313047514%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_60$5$14799634352897460720%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_61$6$1154001166110592157%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_62$6$13409969340209761913%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_63$5$11063638906811104805%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_64$3$12992718584680054993%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_65$3$9809961069365430357%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_66$5$9535372228205832665%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_67$5$9169487630610805234%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_68$3$15761736936064404933%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_69$5$868015031522496376%trigger ($Snap $Ref) Bool)
(declare-fun closure$0_1_70$5$10648786759666739039%trigger ($Snap $Ref) Bool)
(declare-fun i32%trigger ($Snap $Ref) Bool)
(declare-fun m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_alloc$$alloc$opensqu$0$closesqu$$$Global$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_alloc$$raw_vec$opensqu$0$closesqu$$$RawVec$opensqu$0$closesqu$$_beg_$i32$_sep_$m_alloc$$alloc$opensqu$0$closesqu$$$Global$opensqu$0$closesqu$$_beg_$_end_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_alloc$$vec$opensqu$0$closesqu$$$Vec$opensqu$0$closesqu$$_beg_$i32$_end_%trigger ($Snap $Ref) Bool)
(declare-fun m_core$$ptr$opensqu$0$closesqu$$$Unique$opensqu$0$closesqu$$_beg_$i32$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$bool%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_10$3$5025947003234148349%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_11$3$15765438690761850618%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_12$4$7048529785257799747%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_13$3$15765438690761850618%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_14$4$7048529785257799747%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_15$5$13927103562872921321%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_16$3$15765438690761850618%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_17$4$15523507757431244527%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_18$5$3980699002446144432%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_19$2$6293050252958545034%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_20$3$14586384464089816674%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_21$5$6516947270698252826%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_22$4$1613364831441531207%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_23$5$339340244643477828%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_24$4$426145462240784645%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_25$3$8387839296446889492%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_26$4$14834550820136027143%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_27$3$17401215989928098433%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_28$4$14725996966228553680%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_29$4$5011012978171635513%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_31$3$1600388980139079346%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_32$3$12097174197495273115%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_33$4$17265103565152846534%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_34$3$988506964091909110%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_35$4$13863419843990886120%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_36$3$3826142628974945485%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_37$4$10131714698020045729%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_38$4$15564781727596283296%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_39$5$13809781631150042407%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_40$5$18322230677846280824%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_41$4$13567031608014809511%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_42$6$7802784798437267329%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_43$5$6169145554234317518%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_45$3$9765893351418371426%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_46$3$3090985711722625817%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_47$4$17759171189971550564%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_48$4$17336250458711493274%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_49$5$7268980316304182649%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_50$5$18381689390906128933%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_51$4$10495494951135187346%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_52$6$10538300868879282966%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_53$5$5252183286034364465%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_54$4$10485008220710882862%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_55$4$1366533644619494811%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_56$4$16612207316456456741%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_57$4$7803373796730001819%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_58$5$12610067323094378902%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_59$4$8368886383313047514%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_60$5$14799634352897460720%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_61$6$1154001166110592157%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_62$6$13409969340209761913%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_63$5$11063638906811104805%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_64$3$12992718584680054993%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_65$3$9809961069365430357%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_66$5$9535372228205832665%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_67$5$9169487630610805234%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_68$3$15761736936064404933%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_69$5$868015031522496376%trigger ($Snap $Ref) Bool)
(declare-fun ref$closure$0_1_70$5$10648786759666739039%trigger ($Snap $Ref) Bool)
(declare-fun ref$i32%trigger ($Snap $Ref) Bool)
(declare-fun ref$m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$ref$i32%trigger ($Snap $Ref) Bool)
(declare-fun ref$ref$m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_%trigger ($Snap $Ref) Bool)
(declare-fun ref$usize%trigger ($Snap $Ref) Bool)
(declare-fun tuple0$%trigger ($Snap $Ref) Bool)
(declare-fun tuple2$usize$bool%trigger ($Snap $Ref) Bool)
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
  :qid |quant-u-513|)))
(assert (forall ((s@$ $Snap)) (!
  (as read$%stateless  Bool)
  :pattern ((read$%limited s@$))
  :qid |quant-u-514|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) (=>
    (read$%precondition s@$)
    (and (< $Perm.No result@0@00) (< result@0@00 $Perm.Write))))
  :pattern ((read$%limited s@$))
  :qid |quant-u-521|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-522|)))
(assert (forall ((s@$ $Snap)) (!
  (let ((result@0@00 (read$%limited s@$))) true)
  :pattern ((read$%limited s@$))
  :qid |quant-u-523|)))
; ---------- FUNCTION m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$----------
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
    (m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@1@00)
    (m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@1@00))
  :pattern ((m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$ s@$ _pure_1@1@00))
  :qid |quant-u-515|)))
(assert (forall ((s@$ $Snap) (_pure_1@1@00 $Ref)) (!
  (m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%stateless _pure_1@1@00)
  :pattern ((m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@1@00))
  :qid |quant-u-516|)))
(assert (forall ((s@$ $Snap) (_pure_1@1@00 $Ref)) (!
  (let ((result@2@00 (m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@1@00))) (=>
    (m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition s@$ _pure_1@1@00)
    (and (<= 0 result@2@00) (<= result@2@00 18446744073709551615))))
  :pattern ((m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@1@00))
  :qid |quant-u-524|)))
(assert (forall ((s@$ $Snap) (_pure_1@1@00 $Ref)) (!
  (let ((result@2@00 (m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@1@00))) true)
  :pattern ((m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@1@00))
  :qid |quant-u-525|)))
(assert (forall ((s@$ $Snap) (_pure_1@1@00 $Ref)) (!
  (let ((result@2@00 (m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@1@00))) true)
  :pattern ((m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@1@00))
  :qid |quant-u-526|)))
(assert (forall ((s@$ $Snap) (_pure_1@1@00 $Ref)) (!
  (let ((result@2@00 (m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@1@00))) true)
  :pattern ((m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%limited s@$ _pure_1@1@00))
  :qid |quant-u-527|)))
; ---------- FUNCTION builtin$unreach_bool__$TY$__$bool$----------
(declare-fun result@3@00 () Bool)
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
  :qid |quant-u-517|)))
(assert (forall ((s@$ $Snap)) (!
  (as builtin$unreach_bool__$TY$__$bool$%stateless  Bool)
  :pattern ((builtin$unreach_bool__$TY$__$bool$%limited s@$))
  :qid |quant-u-518|)))
; ---------- FUNCTION m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$----------
(declare-fun _pure_1@4@00 () $Ref)
(declare-fun _pure_2@5@00 () Int)
(declare-fun result@6@00 () Int)
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
(assert (<= 0 _pure_2@5@00))
(assert (=
  ($Snap.second ($Snap.second s@$))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second s@$)))
    ($Snap.second ($Snap.second ($Snap.second s@$))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second s@$))) $Snap.unit))
; [eval] _pure_2 < m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1)
; [eval] m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$(_pure_1)
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
(assert (m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@4@00))
(pop) ; 2
; Joined path conditions
(assert (m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$%precondition ($Snap.combine
  ($Snap.first s@$)
  $Snap.unit) _pure_1@4@00))
(assert (<
  _pure_2@5@00
  (m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$len$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$ ($Snap.combine
    ($Snap.first s@$)
    $Snap.unit) _pure_1@4@00)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second s@$)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second ($Snap.second s@$)))) $Snap.unit))
; [eval] 0 <= _pure_2
(assert (= ($Snap.second ($Snap.second ($Snap.second ($Snap.second s@$)))) $Snap.unit))
; [eval] _pure_2 <= 18446744073709551615
(assert (<= _pure_2@5@00 18446744073709551615))
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
(assert (<= (- 0 2147483648) result@6@00))
(assert (= ($Snap.second ($Snap.second $t@9@00)) $Snap.unit))
; [eval] result <= 2147483647
(assert (<= result@6@00 2147483647))
(pop) ; 1
(assert (forall ((s@$ $Snap) (_pure_1@4@00 $Ref) (_pure_2@5@00 Int)) (!
  (=
    (m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@4@00 _pure_2@5@00)
    (m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ s@$ _pure_1@4@00 _pure_2@5@00))
  :pattern ((m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$ s@$ _pure_1@4@00 _pure_2@5@00))
  :qid |quant-u-519|)))
(assert (forall ((s@$ $Snap) (_pure_1@4@00 $Ref) (_pure_2@5@00 Int)) (!
  (m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%stateless _pure_1@4@00 _pure_2@5@00)
  :pattern ((m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@4@00 _pure_2@5@00))
  :qid |quant-u-520|)))
(assert (forall ((s@$ $Snap) (_pure_1@4@00 $Ref) (_pure_2@5@00 Int)) (!
  (let ((result@6@00 (m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@4@00 _pure_2@5@00))) (=>
    (m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%precondition s@$ _pure_1@4@00 _pure_2@5@00)
    (and (<= (- 0 2147483648) result@6@00) (<= result@6@00 2147483647))))
  :pattern ((m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@4@00 _pure_2@5@00))
  :qid |quant-u-528|)))
(assert (forall ((s@$ $Snap) (_pure_1@4@00 $Ref) (_pure_2@5@00 Int)) (!
  (let ((result@6@00 (m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@4@00 _pure_2@5@00))) true)
  :pattern ((m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@4@00 _pure_2@5@00))
  :qid |quant-u-529|)))
(assert (forall ((s@$ $Snap) (_pure_1@4@00 $Ref) (_pure_2@5@00 Int)) (!
  (let ((result@6@00 (m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@4@00 _pure_2@5@00))) true)
  :pattern ((m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@4@00 _pure_2@5@00))
  :qid |quant-u-530|)))
(assert (forall ((s@$ $Snap) (_pure_1@4@00 $Ref) (_pure_2@5@00 Int)) (!
  (let ((result@6@00 (m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@4@00 _pure_2@5@00))) true)
  :pattern ((m_Selection_sort$$$opencur$$opencur$impl$closecur$$closecur$$opensqu$1$closesqu$$$lookup$opensqu$0$closesqu$__$TY$__m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_$$int$$$int$%limited s@$ _pure_1@4@00 _pure_2@5@00))
  :qid |quant-u-531|)))
; ---------- DeadBorrowToken$ ----------
(declare-const borrow@10@00 Int)
; ---------- bool ----------
(declare-const self@11@00 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@12@00 Bool)
(assert (not (= self@11@00 $Ref.null)))
(pop) ; 1
; ---------- closure$0_1_10$3$5025947003234148349 ----------
(declare-const self@13@00 $Ref)
; ---------- closure$0_1_11$3$15765438690761850618 ----------
(declare-const self@14@00 $Ref)
; ---------- closure$0_1_12$4$7048529785257799747 ----------
(declare-const self@15@00 $Ref)
; ---------- closure$0_1_13$3$15765438690761850618 ----------
(declare-const self@16@00 $Ref)
; ---------- closure$0_1_14$4$7048529785257799747 ----------
(declare-const self@17@00 $Ref)
; ---------- closure$0_1_15$5$13927103562872921321 ----------
(declare-const self@18@00 $Ref)
; ---------- closure$0_1_16$3$15765438690761850618 ----------
(declare-const self@19@00 $Ref)
; ---------- closure$0_1_17$4$15523507757431244527 ----------
(declare-const self@20@00 $Ref)
; ---------- closure$0_1_18$5$3980699002446144432 ----------
(declare-const self@21@00 $Ref)
; ---------- closure$0_1_19$2$6293050252958545034 ----------
(declare-const self@22@00 $Ref)
; ---------- closure$0_1_20$3$14586384464089816674 ----------
(declare-const self@23@00 $Ref)
; ---------- closure$0_1_21$5$6516947270698252826 ----------
(declare-const self@24@00 $Ref)
; ---------- closure$0_1_22$4$1613364831441531207 ----------
(declare-const self@25@00 $Ref)
; ---------- closure$0_1_23$5$339340244643477828 ----------
(declare-const self@26@00 $Ref)
; ---------- closure$0_1_24$4$426145462240784645 ----------
(declare-const self@27@00 $Ref)
; ---------- closure$0_1_25$3$8387839296446889492 ----------
(declare-const self@28@00 $Ref)
; ---------- closure$0_1_26$4$14834550820136027143 ----------
(declare-const self@29@00 $Ref)
; ---------- closure$0_1_27$3$17401215989928098433 ----------
(declare-const self@30@00 $Ref)
; ---------- closure$0_1_28$4$14725996966228553680 ----------
(declare-const self@31@00 $Ref)
; ---------- closure$0_1_29$4$5011012978171635513 ----------
(declare-const self@32@00 $Ref)
; ---------- closure$0_1_30$2$13994891442675209593 ----------
(declare-const self@33@00 $Ref)
; ---------- closure$0_1_31$3$1600388980139079346 ----------
(declare-const self@34@00 $Ref)
; ---------- closure$0_1_32$3$12097174197495273115 ----------
(declare-const self@35@00 $Ref)
; ---------- closure$0_1_33$4$17265103565152846534 ----------
(declare-const self@36@00 $Ref)
; ---------- closure$0_1_34$3$988506964091909110 ----------
(declare-const self@37@00 $Ref)
; ---------- closure$0_1_35$4$13863419843990886120 ----------
(declare-const self@38@00 $Ref)
; ---------- closure$0_1_36$3$3826142628974945485 ----------
(declare-const self@39@00 $Ref)
; ---------- closure$0_1_37$4$10131714698020045729 ----------
(declare-const self@40@00 $Ref)
; ---------- closure$0_1_38$4$15564781727596283296 ----------
(declare-const self@41@00 $Ref)
; ---------- closure$0_1_39$5$13809781631150042407 ----------
(declare-const self@42@00 $Ref)
; ---------- closure$0_1_40$5$18322230677846280824 ----------
(declare-const self@43@00 $Ref)
; ---------- closure$0_1_41$4$13567031608014809511 ----------
(declare-const self@44@00 $Ref)
; ---------- closure$0_1_42$6$7802784798437267329 ----------
(declare-const self@45@00 $Ref)
; ---------- closure$0_1_43$5$6169145554234317518 ----------
(declare-const self@46@00 $Ref)
; ---------- closure$0_1_44$2$13994891442675209593 ----------
(declare-const self@47@00 $Ref)
; ---------- closure$0_1_45$3$9765893351418371426 ----------
(declare-const self@48@00 $Ref)
; ---------- closure$0_1_46$3$3090985711722625817 ----------
(declare-const self@49@00 $Ref)
; ---------- closure$0_1_47$4$17759171189971550564 ----------
(declare-const self@50@00 $Ref)
; ---------- closure$0_1_48$4$17336250458711493274 ----------
(declare-const self@51@00 $Ref)
; ---------- closure$0_1_49$5$7268980316304182649 ----------
(declare-const self@52@00 $Ref)
; ---------- closure$0_1_50$5$18381689390906128933 ----------
(declare-const self@53@00 $Ref)
; ---------- closure$0_1_51$4$10495494951135187346 ----------
(declare-const self@54@00 $Ref)
; ---------- closure$0_1_52$6$10538300868879282966 ----------
(declare-const self@55@00 $Ref)
; ---------- closure$0_1_53$5$5252183286034364465 ----------
(declare-const self@56@00 $Ref)
; ---------- closure$0_1_54$4$10485008220710882862 ----------
(declare-const self@57@00 $Ref)
; ---------- closure$0_1_55$4$1366533644619494811 ----------
(declare-const self@58@00 $Ref)
; ---------- closure$0_1_56$4$16612207316456456741 ----------
(declare-const self@59@00 $Ref)
; ---------- closure$0_1_57$4$7803373796730001819 ----------
(declare-const self@60@00 $Ref)
; ---------- closure$0_1_58$5$12610067323094378902 ----------
(declare-const self@61@00 $Ref)
; ---------- closure$0_1_59$4$8368886383313047514 ----------
(declare-const self@62@00 $Ref)
; ---------- closure$0_1_60$5$14799634352897460720 ----------
(declare-const self@63@00 $Ref)
; ---------- closure$0_1_61$6$1154001166110592157 ----------
(declare-const self@64@00 $Ref)
; ---------- closure$0_1_62$6$13409969340209761913 ----------
(declare-const self@65@00 $Ref)
; ---------- closure$0_1_63$5$11063638906811104805 ----------
(declare-const self@66@00 $Ref)
; ---------- closure$0_1_64$3$12992718584680054993 ----------
(declare-const self@67@00 $Ref)
; ---------- closure$0_1_65$3$9809961069365430357 ----------
(declare-const self@68@00 $Ref)
; ---------- closure$0_1_66$5$9535372228205832665 ----------
(declare-const self@69@00 $Ref)
; ---------- closure$0_1_67$5$9169487630610805234 ----------
(declare-const self@70@00 $Ref)
; ---------- closure$0_1_68$3$15761736936064404933 ----------
(declare-const self@71@00 $Ref)
; ---------- closure$0_1_69$5$868015031522496376 ----------
(declare-const self@72@00 $Ref)
; ---------- closure$0_1_70$5$10648786759666739039 ----------
(declare-const self@73@00 $Ref)
; ---------- i32 ----------
(declare-const self@74@00 $Ref)
(push) ; 1
(declare-const $t@75@00 $Snap)
(assert (= $t@75@00 ($Snap.combine ($Snap.first $t@75@00) ($Snap.second $t@75@00))))
(assert (not (= self@74@00 $Ref.null)))
(assert (=
  ($Snap.second $t@75@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@75@00))
    ($Snap.second ($Snap.second $t@75@00)))))
(assert (= ($Snap.first ($Snap.second $t@75@00)) $Snap.unit))
; [eval] -2147483648 <= self.val_int
; [eval] -2147483648
(assert (<= (- 0 2147483648) ($SortWrappers.$SnapToInt ($Snap.first $t@75@00))))
(assert (= ($Snap.second ($Snap.second $t@75@00)) $Snap.unit))
; [eval] self.val_int <= 2147483647
(assert (<= ($SortWrappers.$SnapToInt ($Snap.first $t@75@00)) 2147483647))
(pop) ; 1
; ---------- m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@76@00 $Ref)
(push) ; 1
(declare-const $t@77@00 $Snap)
(assert (= $t@77@00 ($Snap.combine ($Snap.first $t@77@00) ($Snap.second $t@77@00))))
(assert (not (= self@76@00 $Ref.null)))
(pop) ; 1
; ---------- m_alloc$$alloc$opensqu$0$closesqu$$$Global$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@78@00 $Ref)
(push) ; 1
(declare-const $t@79@00 $Snap)
(assert (= $t@79@00 $Snap.unit))
(pop) ; 1
; ---------- m_alloc$$raw_vec$opensqu$0$closesqu$$$RawVec$opensqu$0$closesqu$$_beg_$i32$_sep_$m_alloc$$alloc$opensqu$0$closesqu$$$Global$opensqu$0$closesqu$$_beg_$_end_$_end_ ----------
(declare-const self@80@00 $Ref)
(push) ; 1
(declare-const $t@81@00 $Snap)
(assert (= $t@81@00 ($Snap.combine ($Snap.first $t@81@00) ($Snap.second $t@81@00))))
(assert (not (= self@80@00 $Ref.null)))
(assert (=
  ($Snap.second $t@81@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@81@00))
    ($Snap.second ($Snap.second $t@81@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@81@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@81@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@81@00))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@81@00)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@81@00))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@00)))))))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@00))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@00)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@81@00))))))))
(pop) ; 1
; ---------- m_alloc$$vec$opensqu$0$closesqu$$$Vec$opensqu$0$closesqu$$_beg_$i32$_end_ ----------
(declare-const self@82@00 $Ref)
(push) ; 1
(declare-const $t@83@00 $Snap)
(assert (= $t@83@00 ($Snap.combine ($Snap.first $t@83@00) ($Snap.second $t@83@00))))
(assert (not (= self@82@00 $Ref.null)))
(assert (=
  ($Snap.second $t@83@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@83@00))
    ($Snap.second ($Snap.second $t@83@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@83@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@83@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@83@00))))))
(pop) ; 1
; ---------- m_core$$ptr$opensqu$0$closesqu$$$Unique$opensqu$0$closesqu$$_beg_$i32$_end_ ----------
(declare-const self@84@00 $Ref)
; ---------- ref$bool ----------
(declare-const self@85@00 $Ref)
(push) ; 1
(declare-const $t@86@00 $Snap)
(assert (= $t@86@00 ($Snap.combine ($Snap.first $t@86@00) ($Snap.second $t@86@00))))
(assert (not (= self@85@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_10$3$5025947003234148349 ----------
(declare-const self@87@00 $Ref)
(push) ; 1
(declare-const $t@88@00 $Snap)
(assert (= $t@88@00 ($Snap.combine ($Snap.first $t@88@00) ($Snap.second $t@88@00))))
(assert (not (= self@87@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_11$3$15765438690761850618 ----------
(declare-const self@89@00 $Ref)
(push) ; 1
(declare-const $t@90@00 $Snap)
(assert (= $t@90@00 ($Snap.combine ($Snap.first $t@90@00) ($Snap.second $t@90@00))))
(assert (not (= self@89@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_12$4$7048529785257799747 ----------
(declare-const self@91@00 $Ref)
(push) ; 1
(declare-const $t@92@00 $Snap)
(assert (= $t@92@00 ($Snap.combine ($Snap.first $t@92@00) ($Snap.second $t@92@00))))
(assert (not (= self@91@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_13$3$15765438690761850618 ----------
(declare-const self@93@00 $Ref)
(push) ; 1
(declare-const $t@94@00 $Snap)
(assert (= $t@94@00 ($Snap.combine ($Snap.first $t@94@00) ($Snap.second $t@94@00))))
(assert (not (= self@93@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_14$4$7048529785257799747 ----------
(declare-const self@95@00 $Ref)
(push) ; 1
(declare-const $t@96@00 $Snap)
(assert (= $t@96@00 ($Snap.combine ($Snap.first $t@96@00) ($Snap.second $t@96@00))))
(assert (not (= self@95@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_15$5$13927103562872921321 ----------
(declare-const self@97@00 $Ref)
(push) ; 1
(declare-const $t@98@00 $Snap)
(assert (= $t@98@00 ($Snap.combine ($Snap.first $t@98@00) ($Snap.second $t@98@00))))
(assert (not (= self@97@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_16$3$15765438690761850618 ----------
(declare-const self@99@00 $Ref)
(push) ; 1
(declare-const $t@100@00 $Snap)
(assert (= $t@100@00 ($Snap.combine ($Snap.first $t@100@00) ($Snap.second $t@100@00))))
(assert (not (= self@99@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_17$4$15523507757431244527 ----------
(declare-const self@101@00 $Ref)
(push) ; 1
(declare-const $t@102@00 $Snap)
(assert (= $t@102@00 ($Snap.combine ($Snap.first $t@102@00) ($Snap.second $t@102@00))))
(assert (not (= self@101@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_18$5$3980699002446144432 ----------
(declare-const self@103@00 $Ref)
(push) ; 1
(declare-const $t@104@00 $Snap)
(assert (= $t@104@00 ($Snap.combine ($Snap.first $t@104@00) ($Snap.second $t@104@00))))
(assert (not (= self@103@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_19$2$6293050252958545034 ----------
(declare-const self@105@00 $Ref)
(push) ; 1
(declare-const $t@106@00 $Snap)
(assert (= $t@106@00 ($Snap.combine ($Snap.first $t@106@00) ($Snap.second $t@106@00))))
(assert (not (= self@105@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_20$3$14586384464089816674 ----------
(declare-const self@107@00 $Ref)
(push) ; 1
(declare-const $t@108@00 $Snap)
(assert (= $t@108@00 ($Snap.combine ($Snap.first $t@108@00) ($Snap.second $t@108@00))))
(assert (not (= self@107@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_21$5$6516947270698252826 ----------
(declare-const self@109@00 $Ref)
(push) ; 1
(declare-const $t@110@00 $Snap)
(assert (= $t@110@00 ($Snap.combine ($Snap.first $t@110@00) ($Snap.second $t@110@00))))
(assert (not (= self@109@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_22$4$1613364831441531207 ----------
(declare-const self@111@00 $Ref)
(push) ; 1
(declare-const $t@112@00 $Snap)
(assert (= $t@112@00 ($Snap.combine ($Snap.first $t@112@00) ($Snap.second $t@112@00))))
(assert (not (= self@111@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_23$5$339340244643477828 ----------
(declare-const self@113@00 $Ref)
(push) ; 1
(declare-const $t@114@00 $Snap)
(assert (= $t@114@00 ($Snap.combine ($Snap.first $t@114@00) ($Snap.second $t@114@00))))
(assert (not (= self@113@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_24$4$426145462240784645 ----------
(declare-const self@115@00 $Ref)
(push) ; 1
(declare-const $t@116@00 $Snap)
(assert (= $t@116@00 ($Snap.combine ($Snap.first $t@116@00) ($Snap.second $t@116@00))))
(assert (not (= self@115@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_25$3$8387839296446889492 ----------
(declare-const self@117@00 $Ref)
(push) ; 1
(declare-const $t@118@00 $Snap)
(assert (= $t@118@00 ($Snap.combine ($Snap.first $t@118@00) ($Snap.second $t@118@00))))
(assert (not (= self@117@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_26$4$14834550820136027143 ----------
(declare-const self@119@00 $Ref)
(push) ; 1
(declare-const $t@120@00 $Snap)
(assert (= $t@120@00 ($Snap.combine ($Snap.first $t@120@00) ($Snap.second $t@120@00))))
(assert (not (= self@119@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_27$3$17401215989928098433 ----------
(declare-const self@121@00 $Ref)
(push) ; 1
(declare-const $t@122@00 $Snap)
(assert (= $t@122@00 ($Snap.combine ($Snap.first $t@122@00) ($Snap.second $t@122@00))))
(assert (not (= self@121@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_28$4$14725996966228553680 ----------
(declare-const self@123@00 $Ref)
(push) ; 1
(declare-const $t@124@00 $Snap)
(assert (= $t@124@00 ($Snap.combine ($Snap.first $t@124@00) ($Snap.second $t@124@00))))
(assert (not (= self@123@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_29$4$5011012978171635513 ----------
(declare-const self@125@00 $Ref)
(push) ; 1
(declare-const $t@126@00 $Snap)
(assert (= $t@126@00 ($Snap.combine ($Snap.first $t@126@00) ($Snap.second $t@126@00))))
(assert (not (= self@125@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_31$3$1600388980139079346 ----------
(declare-const self@127@00 $Ref)
(push) ; 1
(declare-const $t@128@00 $Snap)
(assert (= $t@128@00 ($Snap.combine ($Snap.first $t@128@00) ($Snap.second $t@128@00))))
(assert (not (= self@127@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_32$3$12097174197495273115 ----------
(declare-const self@129@00 $Ref)
(push) ; 1
(declare-const $t@130@00 $Snap)
(assert (= $t@130@00 ($Snap.combine ($Snap.first $t@130@00) ($Snap.second $t@130@00))))
(assert (not (= self@129@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_33$4$17265103565152846534 ----------
(declare-const self@131@00 $Ref)
(push) ; 1
(declare-const $t@132@00 $Snap)
(assert (= $t@132@00 ($Snap.combine ($Snap.first $t@132@00) ($Snap.second $t@132@00))))
(assert (not (= self@131@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_34$3$988506964091909110 ----------
(declare-const self@133@00 $Ref)
(push) ; 1
(declare-const $t@134@00 $Snap)
(assert (= $t@134@00 ($Snap.combine ($Snap.first $t@134@00) ($Snap.second $t@134@00))))
(assert (not (= self@133@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_35$4$13863419843990886120 ----------
(declare-const self@135@00 $Ref)
(push) ; 1
(declare-const $t@136@00 $Snap)
(assert (= $t@136@00 ($Snap.combine ($Snap.first $t@136@00) ($Snap.second $t@136@00))))
(assert (not (= self@135@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_36$3$3826142628974945485 ----------
(declare-const self@137@00 $Ref)
(push) ; 1
(declare-const $t@138@00 $Snap)
(assert (= $t@138@00 ($Snap.combine ($Snap.first $t@138@00) ($Snap.second $t@138@00))))
(assert (not (= self@137@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_37$4$10131714698020045729 ----------
(declare-const self@139@00 $Ref)
(push) ; 1
(declare-const $t@140@00 $Snap)
(assert (= $t@140@00 ($Snap.combine ($Snap.first $t@140@00) ($Snap.second $t@140@00))))
(assert (not (= self@139@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_38$4$15564781727596283296 ----------
(declare-const self@141@00 $Ref)
(push) ; 1
(declare-const $t@142@00 $Snap)
(assert (= $t@142@00 ($Snap.combine ($Snap.first $t@142@00) ($Snap.second $t@142@00))))
(assert (not (= self@141@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_39$5$13809781631150042407 ----------
(declare-const self@143@00 $Ref)
(push) ; 1
(declare-const $t@144@00 $Snap)
(assert (= $t@144@00 ($Snap.combine ($Snap.first $t@144@00) ($Snap.second $t@144@00))))
(assert (not (= self@143@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_40$5$18322230677846280824 ----------
(declare-const self@145@00 $Ref)
(push) ; 1
(declare-const $t@146@00 $Snap)
(assert (= $t@146@00 ($Snap.combine ($Snap.first $t@146@00) ($Snap.second $t@146@00))))
(assert (not (= self@145@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_41$4$13567031608014809511 ----------
(declare-const self@147@00 $Ref)
(push) ; 1
(declare-const $t@148@00 $Snap)
(assert (= $t@148@00 ($Snap.combine ($Snap.first $t@148@00) ($Snap.second $t@148@00))))
(assert (not (= self@147@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_42$6$7802784798437267329 ----------
(declare-const self@149@00 $Ref)
(push) ; 1
(declare-const $t@150@00 $Snap)
(assert (= $t@150@00 ($Snap.combine ($Snap.first $t@150@00) ($Snap.second $t@150@00))))
(assert (not (= self@149@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_43$5$6169145554234317518 ----------
(declare-const self@151@00 $Ref)
(push) ; 1
(declare-const $t@152@00 $Snap)
(assert (= $t@152@00 ($Snap.combine ($Snap.first $t@152@00) ($Snap.second $t@152@00))))
(assert (not (= self@151@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_45$3$9765893351418371426 ----------
(declare-const self@153@00 $Ref)
(push) ; 1
(declare-const $t@154@00 $Snap)
(assert (= $t@154@00 ($Snap.combine ($Snap.first $t@154@00) ($Snap.second $t@154@00))))
(assert (not (= self@153@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_46$3$3090985711722625817 ----------
(declare-const self@155@00 $Ref)
(push) ; 1
(declare-const $t@156@00 $Snap)
(assert (= $t@156@00 ($Snap.combine ($Snap.first $t@156@00) ($Snap.second $t@156@00))))
(assert (not (= self@155@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_47$4$17759171189971550564 ----------
(declare-const self@157@00 $Ref)
(push) ; 1
(declare-const $t@158@00 $Snap)
(assert (= $t@158@00 ($Snap.combine ($Snap.first $t@158@00) ($Snap.second $t@158@00))))
(assert (not (= self@157@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_48$4$17336250458711493274 ----------
(declare-const self@159@00 $Ref)
(push) ; 1
(declare-const $t@160@00 $Snap)
(assert (= $t@160@00 ($Snap.combine ($Snap.first $t@160@00) ($Snap.second $t@160@00))))
(assert (not (= self@159@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_49$5$7268980316304182649 ----------
(declare-const self@161@00 $Ref)
(push) ; 1
(declare-const $t@162@00 $Snap)
(assert (= $t@162@00 ($Snap.combine ($Snap.first $t@162@00) ($Snap.second $t@162@00))))
(assert (not (= self@161@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_50$5$18381689390906128933 ----------
(declare-const self@163@00 $Ref)
(push) ; 1
(declare-const $t@164@00 $Snap)
(assert (= $t@164@00 ($Snap.combine ($Snap.first $t@164@00) ($Snap.second $t@164@00))))
(assert (not (= self@163@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_51$4$10495494951135187346 ----------
(declare-const self@165@00 $Ref)
(push) ; 1
(declare-const $t@166@00 $Snap)
(assert (= $t@166@00 ($Snap.combine ($Snap.first $t@166@00) ($Snap.second $t@166@00))))
(assert (not (= self@165@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_52$6$10538300868879282966 ----------
(declare-const self@167@00 $Ref)
(push) ; 1
(declare-const $t@168@00 $Snap)
(assert (= $t@168@00 ($Snap.combine ($Snap.first $t@168@00) ($Snap.second $t@168@00))))
(assert (not (= self@167@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_53$5$5252183286034364465 ----------
(declare-const self@169@00 $Ref)
(push) ; 1
(declare-const $t@170@00 $Snap)
(assert (= $t@170@00 ($Snap.combine ($Snap.first $t@170@00) ($Snap.second $t@170@00))))
(assert (not (= self@169@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_54$4$10485008220710882862 ----------
(declare-const self@171@00 $Ref)
(push) ; 1
(declare-const $t@172@00 $Snap)
(assert (= $t@172@00 ($Snap.combine ($Snap.first $t@172@00) ($Snap.second $t@172@00))))
(assert (not (= self@171@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_55$4$1366533644619494811 ----------
(declare-const self@173@00 $Ref)
(push) ; 1
(declare-const $t@174@00 $Snap)
(assert (= $t@174@00 ($Snap.combine ($Snap.first $t@174@00) ($Snap.second $t@174@00))))
(assert (not (= self@173@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_56$4$16612207316456456741 ----------
(declare-const self@175@00 $Ref)
(push) ; 1
(declare-const $t@176@00 $Snap)
(assert (= $t@176@00 ($Snap.combine ($Snap.first $t@176@00) ($Snap.second $t@176@00))))
(assert (not (= self@175@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_57$4$7803373796730001819 ----------
(declare-const self@177@00 $Ref)
(push) ; 1
(declare-const $t@178@00 $Snap)
(assert (= $t@178@00 ($Snap.combine ($Snap.first $t@178@00) ($Snap.second $t@178@00))))
(assert (not (= self@177@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_58$5$12610067323094378902 ----------
(declare-const self@179@00 $Ref)
(push) ; 1
(declare-const $t@180@00 $Snap)
(assert (= $t@180@00 ($Snap.combine ($Snap.first $t@180@00) ($Snap.second $t@180@00))))
(assert (not (= self@179@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_59$4$8368886383313047514 ----------
(declare-const self@181@00 $Ref)
(push) ; 1
(declare-const $t@182@00 $Snap)
(assert (= $t@182@00 ($Snap.combine ($Snap.first $t@182@00) ($Snap.second $t@182@00))))
(assert (not (= self@181@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_60$5$14799634352897460720 ----------
(declare-const self@183@00 $Ref)
(push) ; 1
(declare-const $t@184@00 $Snap)
(assert (= $t@184@00 ($Snap.combine ($Snap.first $t@184@00) ($Snap.second $t@184@00))))
(assert (not (= self@183@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_61$6$1154001166110592157 ----------
(declare-const self@185@00 $Ref)
(push) ; 1
(declare-const $t@186@00 $Snap)
(assert (= $t@186@00 ($Snap.combine ($Snap.first $t@186@00) ($Snap.second $t@186@00))))
(assert (not (= self@185@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_62$6$13409969340209761913 ----------
(declare-const self@187@00 $Ref)
(push) ; 1
(declare-const $t@188@00 $Snap)
(assert (= $t@188@00 ($Snap.combine ($Snap.first $t@188@00) ($Snap.second $t@188@00))))
(assert (not (= self@187@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_63$5$11063638906811104805 ----------
(declare-const self@189@00 $Ref)
(push) ; 1
(declare-const $t@190@00 $Snap)
(assert (= $t@190@00 ($Snap.combine ($Snap.first $t@190@00) ($Snap.second $t@190@00))))
(assert (not (= self@189@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_64$3$12992718584680054993 ----------
(declare-const self@191@00 $Ref)
(push) ; 1
(declare-const $t@192@00 $Snap)
(assert (= $t@192@00 ($Snap.combine ($Snap.first $t@192@00) ($Snap.second $t@192@00))))
(assert (not (= self@191@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_65$3$9809961069365430357 ----------
(declare-const self@193@00 $Ref)
(push) ; 1
(declare-const $t@194@00 $Snap)
(assert (= $t@194@00 ($Snap.combine ($Snap.first $t@194@00) ($Snap.second $t@194@00))))
(assert (not (= self@193@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_66$5$9535372228205832665 ----------
(declare-const self@195@00 $Ref)
(push) ; 1
(declare-const $t@196@00 $Snap)
(assert (= $t@196@00 ($Snap.combine ($Snap.first $t@196@00) ($Snap.second $t@196@00))))
(assert (not (= self@195@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_67$5$9169487630610805234 ----------
(declare-const self@197@00 $Ref)
(push) ; 1
(declare-const $t@198@00 $Snap)
(assert (= $t@198@00 ($Snap.combine ($Snap.first $t@198@00) ($Snap.second $t@198@00))))
(assert (not (= self@197@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_68$3$15761736936064404933 ----------
(declare-const self@199@00 $Ref)
(push) ; 1
(declare-const $t@200@00 $Snap)
(assert (= $t@200@00 ($Snap.combine ($Snap.first $t@200@00) ($Snap.second $t@200@00))))
(assert (not (= self@199@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_69$5$868015031522496376 ----------
(declare-const self@201@00 $Ref)
(push) ; 1
(declare-const $t@202@00 $Snap)
(assert (= $t@202@00 ($Snap.combine ($Snap.first $t@202@00) ($Snap.second $t@202@00))))
(assert (not (= self@201@00 $Ref.null)))
(pop) ; 1
; ---------- ref$closure$0_1_70$5$10648786759666739039 ----------
(declare-const self@203@00 $Ref)
(push) ; 1
(declare-const $t@204@00 $Snap)
(assert (= $t@204@00 ($Snap.combine ($Snap.first $t@204@00) ($Snap.second $t@204@00))))
(assert (not (= self@203@00 $Ref.null)))
(pop) ; 1
; ---------- ref$i32 ----------
(declare-const self@205@00 $Ref)
(push) ; 1
(declare-const $t@206@00 $Snap)
(assert (= $t@206@00 ($Snap.combine ($Snap.first $t@206@00) ($Snap.second $t@206@00))))
(assert (not (= self@205@00 $Ref.null)))
(pop) ; 1
; ---------- ref$m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@207@00 $Ref)
(push) ; 1
(declare-const $t@208@00 $Snap)
(assert (= $t@208@00 ($Snap.combine ($Snap.first $t@208@00) ($Snap.second $t@208@00))))
(assert (not (= self@207@00 $Ref.null)))
(pop) ; 1
; ---------- ref$ref$i32 ----------
(declare-const self@209@00 $Ref)
(push) ; 1
(declare-const $t@210@00 $Snap)
(assert (= $t@210@00 ($Snap.combine ($Snap.first $t@210@00) ($Snap.second $t@210@00))))
(assert (not (= self@209@00 $Ref.null)))
(pop) ; 1
; ---------- ref$ref$m_Selection_sort$$VecWrapperI32$opensqu$0$closesqu$$_beg_$_end_ ----------
(declare-const self@211@00 $Ref)
(push) ; 1
(declare-const $t@212@00 $Snap)
(assert (= $t@212@00 ($Snap.combine ($Snap.first $t@212@00) ($Snap.second $t@212@00))))
(assert (not (= self@211@00 $Ref.null)))
(pop) ; 1
; ---------- ref$usize ----------
(declare-const self@213@00 $Ref)
(push) ; 1
(declare-const $t@214@00 $Snap)
(assert (= $t@214@00 ($Snap.combine ($Snap.first $t@214@00) ($Snap.second $t@214@00))))
(assert (not (= self@213@00 $Ref.null)))
(pop) ; 1
; ---------- tuple0$ ----------
(declare-const self@215@00 $Ref)
(push) ; 1
(declare-const $t@216@00 $Snap)
(assert (= $t@216@00 $Snap.unit))
(pop) ; 1
; ---------- tuple2$usize$bool ----------
(declare-const self@217@00 $Ref)
(push) ; 1
(declare-const $t@218@00 $Snap)
(assert (= $t@218@00 ($Snap.combine ($Snap.first $t@218@00) ($Snap.second $t@218@00))))
(assert (not (= self@217@00 $Ref.null)))
(assert (=
  ($Snap.second $t@218@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@218@00))
    ($Snap.second ($Snap.second $t@218@00)))))
(assert (=
  ($Snap.second ($Snap.second $t@218@00))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@218@00)))
    ($Snap.second ($Snap.second ($Snap.second $t@218@00))))))
(pop) ; 1
; ---------- usize ----------
(declare-const self@219@00 $Ref)
(push) ; 1
(declare-const $t@220@00 $Snap)
(assert (= $t@220@00 ($Snap.combine ($Snap.first $t@220@00) ($Snap.second $t@220@00))))
(assert (not (= self@219@00 $Ref.null)))
(assert (=
  ($Snap.second $t@220@00)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@220@00))
    ($Snap.second ($Snap.second $t@220@00)))))
(assert (= ($Snap.first ($Snap.second $t@220@00)) $Snap.unit))
; [eval] 0 <= self.val_int
(assert (<= 0 ($SortWrappers.$SnapToInt ($Snap.first $t@220@00))))
(assert (= ($Snap.second ($Snap.second $t@220@00)) $Snap.unit))
; [eval] self.val_int <= 18446744073709551615
(assert (<= ($SortWrappers.$SnapToInt ($Snap.first $t@220@00)) 18446744073709551615))
(pop) ; 1
