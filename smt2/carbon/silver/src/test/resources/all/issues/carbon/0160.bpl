// 
// Translation of Viper program.
// 
// Date:         2024-12-26 20:15:46
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0160.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0160-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
// Dependencies:
//   Boogie , located at /home/runner/.dotnet/tools/boogie.
//   Z3 4.12.1 - 64 bit, located at /opt/hostedtoolcache/z3/4.12.1/x64/z3-4.12.1-x64-glibc-2.35/bin/z3.
// 

// ==================================================
// Preamble of State module.
// ==================================================

function  state(Heap: HeapType, Mask: MaskType): bool;
axiom state(dummyHeap, ZeroMask);

// ==================================================
// Preamble of Heap module.
// ==================================================

type Ref;
var Heap: HeapType;
const null: Ref;
type Field A B;
type NormalField;
const dummyHeap: HeapType;
type HeapType = <A, B> [Ref, Field A B]B;
const unique $allocated: Field NormalField bool;
axiom (forall o_11: Ref, f_10: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_11, f_10] }
  Heap[o_11, $allocated] ==> Heap[Heap[o_11, f_10], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_12: Ref, f_16: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_12, f_16] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_12, f_16) ==> Heap[o_12, f_16] == ExhaleHeap[o_12, f_16]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5), ExhaleHeap[null, PredicateMaskField(pm_f_5)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> Heap[null, PredicateMaskField(pm_f_5)] == ExhaleHeap[null, PredicateMaskField(pm_f_5)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_16: (Field A B) ::
    { ExhaleHeap[o2_5, f_16] }
    Heap[null, PredicateMaskField(pm_f_5)][o2_5, f_16] ==> Heap[o2_5, f_16] == ExhaleHeap[o2_5, f_16]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_5), ExhaleHeap[null, WandMaskField(pm_f_5)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsWandField(pm_f_5) ==> Heap[null, WandMaskField(pm_f_5)] == ExhaleHeap[null, WandMaskField(pm_f_5)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_5) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsWandField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_16: (Field A B) ::
    { ExhaleHeap[o2_5, f_16] }
    Heap[null, WandMaskField(pm_f_5)][o2_5, f_16] ==> Heap[o2_5, f_16] == ExhaleHeap[o2_5, f_16]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_12: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_12, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_12, $allocated] ==> ExhaleHeap[o_12, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_11: Ref, f_17: (Field A B), v: B ::
  { Heap[o_11, f_17:=v] }
  succHeap(Heap, Heap[o_11, f_17:=v])
);
// IdenticalOnKnownLocations Heaps are Successor Heaps
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> succHeap(Heap, ExhaleHeap)
);
// Successor Heaps are Transitive Successor Heaps
axiom (forall Heap0: HeapType, Heap1: HeapType ::
  { succHeap(Heap0, Heap1) }
  succHeap(Heap0, Heap1) ==> succHeapTrans(Heap0, Heap1)
);
// Transitivity of Transitive Successor Heaps
axiom (forall Heap0: HeapType, Heap1: HeapType, Heap2: HeapType ::
  { succHeapTrans(Heap0, Heap1), succHeap(Heap1, Heap2) }
  succHeapTrans(Heap0, Heap1) && succHeap(Heap1, Heap2) ==> succHeapTrans(Heap0, Heap2)
);

// ==================================================
// Preamble of Permission module.
// ==================================================

type Perm = real;
type MaskType = <A, B> [Ref, Field A B]Perm;
var Mask: MaskType;
const ZeroMask: MaskType;
axiom (forall <A, B> o_2: Ref, f_4: (Field A B) ::
  { ZeroMask[o_2, f_4] }
  ZeroMask[o_2, f_4] == NoPerm
);
type PMaskType = <A, B> [Ref, Field A B]bool;
const ZeroPMask: PMaskType;
axiom (forall <A, B> o_2: Ref, f_4: (Field A B) ::
  { ZeroPMask[o_2, f_4] }
  !ZeroPMask[o_2, f_4]
);
function  PredicateMaskField<A>(f_5: (Field A FrameType)): Field A PMaskType;
function  WandMaskField<A>(f_5: (Field A FrameType)): Field A PMaskType;
const NoPerm: Perm;
axiom NoPerm == 0.000000000;
const FullPerm: Perm;
axiom FullPerm == 1.000000000;
function  Perm(a: real, b: real): Perm;
const AssumePermUpperBound: bool;
function  GoodMask(Mask: MaskType): bool;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask) }
  state(Heap, Mask) ==> GoodMask(Mask)
);
axiom (forall <A, B> Mask: MaskType, o_2: Ref, f_4: (Field A B) ::
  { GoodMask(Mask), Mask[o_2, f_4] }
  GoodMask(Mask) ==> Mask[o_2, f_4] >= NoPerm && (((GoodMask(Mask) && AssumePermUpperBound) && !IsPredicateField(f_4)) && !IsWandField(f_4) ==> Mask[o_2, f_4] <= FullPerm)
);
function  HasDirectPerm<A, B>(Mask: MaskType, o_2: Ref, f_4: (Field A B)): bool;
axiom (forall <A, B> Mask: MaskType, o_2: Ref, f_4: (Field A B) ::
  { HasDirectPerm(Mask, o_2, f_4) }
  HasDirectPerm(Mask, o_2, f_4) <==> Mask[o_2, f_4] > NoPerm
);
function  sumMask(ResultMask: MaskType, SummandMask1: MaskType, SummandMask2: MaskType): bool;
axiom (forall <A, B> ResultMask: MaskType, SummandMask1: MaskType, SummandMask2: MaskType, o_2: Ref, f_4: (Field A B) ::
  { sumMask(ResultMask, SummandMask1, SummandMask2), ResultMask[o_2, f_4] } { sumMask(ResultMask, SummandMask1, SummandMask2), SummandMask1[o_2, f_4] } { sumMask(ResultMask, SummandMask1, SummandMask2), SummandMask2[o_2, f_4] }
  sumMask(ResultMask, SummandMask1, SummandMask2) ==> ResultMask[o_2, f_4] == SummandMask1[o_2, f_4] + SummandMask2[o_2, f_4]
);
// ==================================================
// Function for trigger used in checks which are never triggered
// ==================================================

function  neverTriggered1(i_1: int): bool;
function  neverTriggered2(i_2_1: int): bool;
function  neverTriggered3(i_4_1: int): bool;
function  neverTriggered4(i_5: int): bool;
function  neverTriggered5(i_6_1: int): bool;
function  neverTriggered6(i_7_1: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): int;
function  invRecv2(recv: Ref): int;
function  invRecv3(recv: Ref): int;
function  invRecv4(recv: Ref): int;
function  invRecv5(recv: Ref): int;
function  invRecv6(recv: Ref): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(recv: Ref): bool;
function  qpRange3(recv: Ref): bool;
function  qpRange4(recv: Ref): bool;
function  qpRange5(recv: Ref): bool;
function  qpRange6(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Declarations for function framing
type FrameType;
const EmptyFrame: FrameType;
function  FrameFragment<T>(t: T): FrameType;
function  ConditionalFrame(p: Perm, f_6: FrameType): FrameType;
function  dummyFunction<T>(t: T): bool;
function  CombineFrames(a_1: FrameType, b_1: FrameType): FrameType;
// ==================================================
// Definition of conditional frame fragments
// ==================================================

axiom (forall p: Perm, f_6: FrameType ::
  { ConditionalFrame(p, f_6) }
  ConditionalFrame(p, f_6) == (if p > 0.000000000 then f_6 else EmptyFrame)
);
// Function for recording enclosure of one predicate instance in another
function  InsidePredicate<A, B>(p: (Field A FrameType), v_1: FrameType, q: (Field B FrameType), w: FrameType): bool;
// Transitivity of InsidePredicate
axiom (forall <A, B, C> p: (Field A FrameType), v_1: FrameType, q: (Field B FrameType), w: FrameType, r: (Field C FrameType), u: FrameType ::
  { InsidePredicate(p, v_1, q, w), InsidePredicate(q, w, r, u) }
  InsidePredicate(p, v_1, q, w) && InsidePredicate(q, w, r, u) ==> InsidePredicate(p, v_1, r, u)
);
// Knowledge that two identical instances of the same predicate cannot be inside each other
axiom (forall <A> p: (Field A FrameType), v_1: FrameType, w: FrameType ::
  { InsidePredicate(p, v_1, p, w) }
  !InsidePredicate(p, v_1, p, w)
);

// ==================================================
// Translation of domain Array
// ==================================================

// The type for domain Array
type ArrayDomainType;

// Translation of domain function loc
function  loc(a_3: ArrayDomainType, i_79: int): Ref;

// Translation of domain function length
function  length_1(a_3: ArrayDomainType): int;

// Translation of domain function ref_to_array
function  ref_to_array(ref_1: Ref): ArrayDomainType;

// Translation of domain function ref_to_index
function  ref_to_index(ref_1: Ref): int;

// Translation of domain axiom all_diff
axiom (forall a_2: ArrayDomainType, i: int ::
  { (loc(a_2, i): Ref) }
  (ref_to_array((loc(a_2, i): Ref)): ArrayDomainType) == a_2 && (ref_to_index((loc(a_2, i): Ref)): int) == i
);

// Translation of domain axiom length_nonneg
axiom (forall a_2: ArrayDomainType ::
  { (length_1(a_2): int) }
  (length_1(a_2): int) >= 0
);

// ==================================================
// Translation of all fields
// ==================================================

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);

// ==================================================
// Translation of method multiple_arrays
// ==================================================

procedure multiple_arrays(arr1: ArrayDomainType, arr2: ArrayDomainType) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var t_2: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall i: Int :: { loc(arr1, i) } true ==> acc(loc(arr1, i).val, (0 <= i && i < 10 ? write : none)))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(arr1, i).val might not be injective. (0160.vpr@5.10--5.90) [191132]"}
      (forall i_1: int, i_1_1: int ::
      
      (i_1 != i_1_1 && NoPerm < (if 0 <= i_1 && i_1 < 10 then FullPerm else NoPerm)) && NoPerm < (if 0 <= i_1_1 && i_1_1 < 10 then FullPerm else NoPerm) ==> (loc(arr1, i_1): Ref) != (loc(arr1, i_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { (loc(arr1, i_1): Ref) } { (loc(arr1, i_1): Ref) }
        NoPerm < (if 0 <= i_1 && i_1 < 10 then FullPerm else NoPerm) ==> qpRange1((loc(arr1, i_1): Ref)) && invRecv1((loc(arr1, i_1): Ref)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        NoPerm < (if 0 <= invRecv1(o_4) && invRecv1(o_4) < 10 then FullPerm else NoPerm) && qpRange1(o_4) ==> (loc(arr1, invRecv1(o_4)): Ref) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction (0 <= i && i < 10 ? write : none) might be negative. (0160.vpr@5.10--5.90) [191133]"}
      (forall i_1: int ::
      { (loc(arr1, i_1): Ref) } { (loc(arr1, i_1): Ref) }
      (if 0 <= i_1 && i_1 < 10 then FullPerm else NoPerm) >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { (loc(arr1, i_1): Ref) } { (loc(arr1, i_1): Ref) }
        (if 0 <= i_1 && i_1 < 10 then FullPerm else NoPerm) > NoPerm ==> (loc(arr1, i_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (NoPerm < (if 0 <= invRecv1(o_4) && invRecv1(o_4) < 10 then FullPerm else NoPerm) && qpRange1(o_4) ==> (NoPerm < (if 0 <= invRecv1(o_4) && invRecv1(o_4) < 10 then FullPerm else NoPerm) ==> (loc(arr1, invRecv1(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + (if 0 <= invRecv1(o_4) && invRecv1(o_4) < 10 then FullPerm else NoPerm)) && (!(NoPerm < (if 0 <= invRecv1(o_4) && invRecv1(o_4) < 10 then FullPerm else NoPerm) && qpRange1(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: t := 0 -- 0160.vpr@7.5--7.20
    t_2 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (t < 10) -- 0160.vpr@8.5--16.6
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Loop invariant (forall i: Int :: { loc(arr1, i) } true ==> acc(loc(arr1, i).val, (0 <= i && i < 10 ? write : none))) might not hold on entry. Fraction (0 <= i && i < 10 ? write : none) might be negative. (0160.vpr@9.12--9.92) [191134]"}
            (forall i_2_1: int ::
            { (loc(arr1, i_2_1): Ref) } { (loc(arr1, i_2_1): Ref) }
            dummyFunction(Heap[(loc(arr1, i_2_1): Ref), val]) ==> (if 0 <= i_2_1 && i_2_1 < 10 then FullPerm else NoPerm) >= NoPerm
          );
        
        // -- check if receiver loc(arr1, i) is injective
          assert {:msg "  Loop invariant (forall i: Int :: { loc(arr1, i) } true ==> acc(loc(arr1, i).val, (0 <= i && i < 10 ? write : none))) might not hold on entry. Quantified resource loc(arr1, i).val might not be injective. (0160.vpr@9.12--9.92) [191135]"}
            (forall i_2_1: int, i_2_2: int ::
            { neverTriggered2(i_2_1), neverTriggered2(i_2_2) }
            (i_2_1 != i_2_2 && NoPerm < (if 0 <= i_2_1 && i_2_1 < 10 then FullPerm else NoPerm)) && NoPerm < (if 0 <= i_2_2 && i_2_2 < 10 then FullPerm else NoPerm) ==> (loc(arr1, i_2_1): Ref) != (loc(arr1, i_2_2): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { loc(arr1, i) } true ==> acc(loc(arr1, i).val, (0 <= i && i < 10 ? write : none))) might not hold on entry. There might be insufficient permission to access loc(arr1, i).val (0160.vpr@9.12--9.92) [191136]"}
            (forall i_2_1: int ::
            { (loc(arr1, i_2_1): Ref) } { (loc(arr1, i_2_1): Ref) }
            Mask[(loc(arr1, i_2_1): Ref), val] >= (if 0 <= i_2_1 && i_2_1 < 10 then FullPerm else NoPerm)
          );
        
        // -- assumptions for inverse of receiver loc(arr1, i)
          assume (forall i_2_1: int ::
            { (loc(arr1, i_2_1): Ref) } { (loc(arr1, i_2_1): Ref) }
            NoPerm < (if 0 <= i_2_1 && i_2_1 < 10 then FullPerm else NoPerm) ==> qpRange2((loc(arr1, i_2_1): Ref)) && invRecv2((loc(arr1, i_2_1): Ref)) == i_2_1
          );
          assume (forall o_4: Ref ::
            { invRecv2(o_4) }
            NoPerm < (if 0 <= invRecv2(o_4) && invRecv2(o_4) < 10 then FullPerm else NoPerm) && qpRange2(o_4) ==> (loc(arr1, invRecv2(o_4)): Ref) == o_4
          );
        
        // -- assume permission updates for field val
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            (NoPerm < (if 0 <= invRecv2(o_4) && invRecv2(o_4) < 10 then FullPerm else NoPerm) && qpRange2(o_4) ==> (loc(arr1, invRecv2(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - (if 0 <= invRecv2(o_4) && invRecv2(o_4) < 10 then FullPerm else NoPerm)) && (!(NoPerm < (if 0 <= invRecv2(o_4) && invRecv2(o_4) < 10 then FullPerm else NoPerm) && qpRange2(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assert {:msg "  Loop invariant 0 <= t && t <= 10 might not hold on entry. Assertion 0 <= t might not hold. (0160.vpr@10.12--10.29) [191137]"}
          0 <= t_2;
        assert {:msg "  Loop invariant 0 <= t && t <= 10 might not hold on entry. Assertion t <= 10 might not hold. (0160.vpr@10.12--10.29) [191138]"}
          t_2 <= 10;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc t_2;
    
    // -- Check definedness of invariant
      if (*) {
        
        // -- Check definedness of (forall i: Int :: { loc(arr1, i) } true ==> acc(loc(arr1, i).val, (0 <= i && i < 10 ? write : none)))
          if (*) {
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource loc(arr1, i).val might not be injective. (0160.vpr@9.12--9.92) [191139]"}
          (forall i_4_1: int, i_4_2: int ::
          
          (i_4_1 != i_4_2 && NoPerm < (if 0 <= i_4_1 && i_4_1 < 10 then FullPerm else NoPerm)) && NoPerm < (if 0 <= i_4_2 && i_4_2 < 10 then FullPerm else NoPerm) ==> (loc(arr1, i_4_1): Ref) != (loc(arr1, i_4_2): Ref)
        );
        
        // -- Define Inverse Function
          assume (forall i_4_1: int ::
            { (loc(arr1, i_4_1): Ref) } { (loc(arr1, i_4_1): Ref) }
            NoPerm < (if 0 <= i_4_1 && i_4_1 < 10 then FullPerm else NoPerm) ==> qpRange3((loc(arr1, i_4_1): Ref)) && invRecv3((loc(arr1, i_4_1): Ref)) == i_4_1
          );
          assume (forall o_4: Ref ::
            { invRecv3(o_4) }
            NoPerm < (if 0 <= invRecv3(o_4) && invRecv3(o_4) < 10 then FullPerm else NoPerm) && qpRange3(o_4) ==> (loc(arr1, invRecv3(o_4)): Ref) == o_4
          );
        // Check that permission expression is non-negative for all fields
        assert {:msg "  Contract might not be well-formed. Fraction (0 <= i && i < 10 ? write : none) might be negative. (0160.vpr@9.12--9.92) [191140]"}
          (forall i_4_1: int ::
          { (loc(arr1, i_4_1): Ref) } { (loc(arr1, i_4_1): Ref) }
          (if 0 <= i_4_1 && i_4_1 < 10 then FullPerm else NoPerm) >= NoPerm
        );
        
        // -- Assume set of fields is nonNull
          assume (forall i_4_1: int ::
            { (loc(arr1, i_4_1): Ref) } { (loc(arr1, i_4_1): Ref) }
            (if 0 <= i_4_1 && i_4_1 < 10 then FullPerm else NoPerm) > NoPerm ==> (loc(arr1, i_4_1): Ref) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            (NoPerm < (if 0 <= invRecv3(o_4) && invRecv3(o_4) < 10 then FullPerm else NoPerm) && qpRange3(o_4) ==> (NoPerm < (if 0 <= invRecv3(o_4) && invRecv3(o_4) < 10 then FullPerm else NoPerm) ==> (loc(arr1, invRecv3(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + (if 0 <= invRecv3(o_4) && invRecv3(o_4) < 10 then FullPerm else NoPerm)) && (!(NoPerm < (if 0 <= invRecv3(o_4) && invRecv3(o_4) < 10 then FullPerm else NoPerm) && qpRange3(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume 0 <= t_2;
        assume t_2 <= 10;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Check the loop body
      if (*) {
        // Reset state
        loopHeap := Heap;
        loopMask := Mask;
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        havoc QPMask;
        assert {:msg "  While statement might fail. Quantified resource loc(arr1, i).val might not be injective. (0160.vpr@9.12--9.92) [191141]"}
          (forall i_5: int, i_5_1: int ::
          
          (i_5 != i_5_1 && NoPerm < (if 0 <= i_5 && i_5 < 10 then FullPerm else NoPerm)) && NoPerm < (if 0 <= i_5_1 && i_5_1 < 10 then FullPerm else NoPerm) ==> (loc(arr1, i_5): Ref) != (loc(arr1, i_5_1): Ref)
        );
        
        // -- Define Inverse Function
          assume (forall i_5: int ::
            { (loc(arr1, i_5): Ref) } { (loc(arr1, i_5): Ref) }
            NoPerm < (if 0 <= i_5 && i_5 < 10 then FullPerm else NoPerm) ==> qpRange4((loc(arr1, i_5): Ref)) && invRecv4((loc(arr1, i_5): Ref)) == i_5
          );
          assume (forall o_4: Ref ::
            { invRecv4(o_4) }
            NoPerm < (if 0 <= invRecv4(o_4) && invRecv4(o_4) < 10 then FullPerm else NoPerm) && qpRange4(o_4) ==> (loc(arr1, invRecv4(o_4)): Ref) == o_4
          );
        // Check that permission expression is non-negative for all fields
        assert {:msg "  While statement might fail. Fraction (0 <= i && i < 10 ? write : none) might be negative. (0160.vpr@9.12--9.92) [191142]"}
          (forall i_5: int ::
          { (loc(arr1, i_5): Ref) } { (loc(arr1, i_5): Ref) }
          (if 0 <= i_5 && i_5 < 10 then FullPerm else NoPerm) >= NoPerm
        );
        
        // -- Assume set of fields is nonNull
          assume (forall i_5: int ::
            { (loc(arr1, i_5): Ref) } { (loc(arr1, i_5): Ref) }
            (if 0 <= i_5 && i_5 < 10 then FullPerm else NoPerm) > NoPerm ==> (loc(arr1, i_5): Ref) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            (NoPerm < (if 0 <= invRecv4(o_4) && invRecv4(o_4) < 10 then FullPerm else NoPerm) && qpRange4(o_4) ==> (NoPerm < (if 0 <= invRecv4(o_4) && invRecv4(o_4) < 10 then FullPerm else NoPerm) ==> (loc(arr1, invRecv4(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + (if 0 <= invRecv4(o_4) && invRecv4(o_4) < 10 then FullPerm else NoPerm)) && (!(NoPerm < (if 0 <= invRecv4(o_4) && invRecv4(o_4) < 10 then FullPerm else NoPerm) && qpRange4(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume 0 <= t_2;
        assume t_2 <= 10;
        assume state(Heap, Mask);
        // Check and assume guard
        assume t_2 < 10;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: loc(arr1, t).val := 0 -- 0160.vpr@12.9--12.30
            assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(arr1, t).val (0160.vpr@12.9--12.30) [191143]"}
              FullPerm == Mask[(loc(arr1, t_2): Ref), val];
            Heap := Heap[(loc(arr1, t_2): Ref), val:=0];
            assume state(Heap, Mask);
          
          // -- Translating statement: loc(arr2, t).val := 0 -- 0160.vpr@14.9--14.30
            assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(arr2, t).val (0160.vpr@14.9--14.30) [191144]"}
              FullPerm == Mask[(loc(arr2, t_2): Ref), val];
            Heap := Heap[(loc(arr2, t_2): Ref), val:=0];
            assume state(Heap, Mask);
          
          // -- Translating statement: t := t + 1 -- 0160.vpr@15.9--15.19
            t_2 := t_2 + 1;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Loop invariant (forall i: Int :: { loc(arr1, i) } true ==> acc(loc(arr1, i).val, (0 <= i && i < 10 ? write : none))) might not be preserved. Fraction (0 <= i && i < 10 ? write : none) might be negative. (0160.vpr@9.12--9.92) [191145]"}
            (forall i_6_1: int ::
            { (loc(arr1, i_6_1): Ref) } { (loc(arr1, i_6_1): Ref) }
            dummyFunction(Heap[(loc(arr1, i_6_1): Ref), val]) ==> (if 0 <= i_6_1 && i_6_1 < 10 then FullPerm else NoPerm) >= NoPerm
          );
        
        // -- check if receiver loc(arr1, i) is injective
          assert {:msg "  Loop invariant (forall i: Int :: { loc(arr1, i) } true ==> acc(loc(arr1, i).val, (0 <= i && i < 10 ? write : none))) might not be preserved. Quantified resource loc(arr1, i).val might not be injective. (0160.vpr@9.12--9.92) [191146]"}
            (forall i_6_1: int, i_6_2: int ::
            { neverTriggered5(i_6_1), neverTriggered5(i_6_2) }
            (i_6_1 != i_6_2 && NoPerm < (if 0 <= i_6_1 && i_6_1 < 10 then FullPerm else NoPerm)) && NoPerm < (if 0 <= i_6_2 && i_6_2 < 10 then FullPerm else NoPerm) ==> (loc(arr1, i_6_1): Ref) != (loc(arr1, i_6_2): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { loc(arr1, i) } true ==> acc(loc(arr1, i).val, (0 <= i && i < 10 ? write : none))) might not be preserved. There might be insufficient permission to access loc(arr1, i).val (0160.vpr@9.12--9.92) [191147]"}
            (forall i_6_1: int ::
            { (loc(arr1, i_6_1): Ref) } { (loc(arr1, i_6_1): Ref) }
            Mask[(loc(arr1, i_6_1): Ref), val] >= (if 0 <= i_6_1 && i_6_1 < 10 then FullPerm else NoPerm)
          );
        
        // -- assumptions for inverse of receiver loc(arr1, i)
          assume (forall i_6_1: int ::
            { (loc(arr1, i_6_1): Ref) } { (loc(arr1, i_6_1): Ref) }
            NoPerm < (if 0 <= i_6_1 && i_6_1 < 10 then FullPerm else NoPerm) ==> qpRange5((loc(arr1, i_6_1): Ref)) && invRecv5((loc(arr1, i_6_1): Ref)) == i_6_1
          );
          assume (forall o_4: Ref ::
            { invRecv5(o_4) }
            NoPerm < (if 0 <= invRecv5(o_4) && invRecv5(o_4) < 10 then FullPerm else NoPerm) && qpRange5(o_4) ==> (loc(arr1, invRecv5(o_4)): Ref) == o_4
          );
        
        // -- assume permission updates for field val
          assume (forall o_4: Ref ::
            { QPMask[o_4, val] }
            (NoPerm < (if 0 <= invRecv5(o_4) && invRecv5(o_4) < 10 then FullPerm else NoPerm) && qpRange5(o_4) ==> (loc(arr1, invRecv5(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - (if 0 <= invRecv5(o_4) && invRecv5(o_4) < 10 then FullPerm else NoPerm)) && (!(NoPerm < (if 0 <= invRecv5(o_4) && invRecv5(o_4) < 10 then FullPerm else NoPerm) && qpRange5(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assert {:msg "  Loop invariant 0 <= t && t <= 10 might not be preserved. Assertion 0 <= t might not hold. (0160.vpr@10.12--10.29) [191148]"}
          0 <= t_2;
        assert {:msg "  Loop invariant 0 <= t && t <= 10 might not be preserved. Assertion t <= 10 might not hold. (0160.vpr@10.12--10.29) [191149]"}
          t_2 <= 10;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(t_2 < 10);
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  While statement might fail. Quantified resource loc(arr1, i).val might not be injective. (0160.vpr@9.12--9.92) [191150]"}
        (forall i_7_1: int, i_7_2: int ::
        
        (i_7_1 != i_7_2 && NoPerm < (if 0 <= i_7_1 && i_7_1 < 10 then FullPerm else NoPerm)) && NoPerm < (if 0 <= i_7_2 && i_7_2 < 10 then FullPerm else NoPerm) ==> (loc(arr1, i_7_1): Ref) != (loc(arr1, i_7_2): Ref)
      );
      
      // -- Define Inverse Function
        assume (forall i_7_1: int ::
          { (loc(arr1, i_7_1): Ref) } { (loc(arr1, i_7_1): Ref) }
          NoPerm < (if 0 <= i_7_1 && i_7_1 < 10 then FullPerm else NoPerm) ==> qpRange6((loc(arr1, i_7_1): Ref)) && invRecv6((loc(arr1, i_7_1): Ref)) == i_7_1
        );
        assume (forall o_4: Ref ::
          { invRecv6(o_4) }
          NoPerm < (if 0 <= invRecv6(o_4) && invRecv6(o_4) < 10 then FullPerm else NoPerm) && qpRange6(o_4) ==> (loc(arr1, invRecv6(o_4)): Ref) == o_4
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  While statement might fail. Fraction (0 <= i && i < 10 ? write : none) might be negative. (0160.vpr@9.12--9.92) [191151]"}
        (forall i_7_1: int ::
        { (loc(arr1, i_7_1): Ref) } { (loc(arr1, i_7_1): Ref) }
        (if 0 <= i_7_1 && i_7_1 < 10 then FullPerm else NoPerm) >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_7_1: int ::
          { (loc(arr1, i_7_1): Ref) } { (loc(arr1, i_7_1): Ref) }
          (if 0 <= i_7_1 && i_7_1 < 10 then FullPerm else NoPerm) > NoPerm ==> (loc(arr1, i_7_1): Ref) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, val] }
          (NoPerm < (if 0 <= invRecv6(o_4) && invRecv6(o_4) < 10 then FullPerm else NoPerm) && qpRange6(o_4) ==> (NoPerm < (if 0 <= invRecv6(o_4) && invRecv6(o_4) < 10 then FullPerm else NoPerm) ==> (loc(arr1, invRecv6(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + (if 0 <= invRecv6(o_4) && invRecv6(o_4) < 10 then FullPerm else NoPerm)) && (!(NoPerm < (if 0 <= invRecv6(o_4) && invRecv6(o_4) < 10 then FullPerm else NoPerm) && qpRange6(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume 0 <= t_2;
      assume t_2 <= 10;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}