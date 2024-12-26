// 
// Translation of Viper program.
// 
// Date:         2024-12-26 15:16:15
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/basic/unfolding.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/basic/unfolding-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_106: Ref, f_202: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_106, f_202] }
  Heap[o_106, $allocated] ==> Heap[Heap[o_106, f_202], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_109: Ref, f_203: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_109, f_203] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_109, f_203) ==> Heap[o_109, f_203] == ExhaleHeap[o_109, f_203]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_55: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_55), ExhaleHeap[null, PredicateMaskField(pm_f_55)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_55) && IsPredicateField(pm_f_55) ==> Heap[null, PredicateMaskField(pm_f_55)] == ExhaleHeap[null, PredicateMaskField(pm_f_55)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_55: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_55) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_55) && IsPredicateField(pm_f_55) ==> (forall <A, B> o2_55: Ref, f_203: (Field A B) ::
    { ExhaleHeap[o2_55, f_203] }
    Heap[null, PredicateMaskField(pm_f_55)][o2_55, f_203] ==> Heap[o2_55, f_203] == ExhaleHeap[o2_55, f_203]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_55: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_55), ExhaleHeap[null, WandMaskField(pm_f_55)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_55) && IsWandField(pm_f_55) ==> Heap[null, WandMaskField(pm_f_55)] == ExhaleHeap[null, WandMaskField(pm_f_55)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_55: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_55) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_55) && IsWandField(pm_f_55) ==> (forall <A, B> o2_55: Ref, f_203: (Field A B) ::
    { ExhaleHeap[o2_55, f_203] }
    Heap[null, WandMaskField(pm_f_55)][o2_55, f_203] ==> Heap[o2_55, f_203] == ExhaleHeap[o2_55, f_203]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_109: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_109, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_109, $allocated] ==> ExhaleHeap[o_109, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_106: Ref, f_108: (Field A B), v: B ::
  { Heap[o_106, f_108:=v] }
  succHeap(Heap, Heap[o_106, f_108:=v])
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
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);
const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);

// ==================================================
// Translation of predicate valid
// ==================================================

type PredicateType_valid;
function  valid(r_1: Ref): Field PredicateType_valid FrameType;
function  valid#sm(r_1: Ref): Field PredicateType_valid PMaskType;
axiom (forall r_1: Ref ::
  { PredicateMaskField(valid(r_1)) }
  PredicateMaskField(valid(r_1)) == valid#sm(r_1)
);
axiom (forall r_1: Ref ::
  { valid(r_1) }
  IsPredicateField(valid(r_1))
);
axiom (forall r_1: Ref ::
  { valid(r_1) }
  getPredWandId(valid(r_1)) == 0
);
function  valid#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  valid#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, r2: Ref ::
  { valid(r_1), valid(r2) }
  valid(r_1) == valid(r2) ==> r_1 == r2
);
axiom (forall r_1: Ref, r2: Ref ::
  { valid#sm(r_1), valid#sm(r2) }
  valid#sm(r_1) == valid#sm(r2) ==> r_1 == r2
);

axiom (forall Heap: HeapType, r_1: Ref ::
  { valid#trigger(Heap, valid(r_1)) }
  valid#everUsed(valid(r_1))
);

procedure valid#definedness(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of valid
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[r_1, $allocated];
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, next:=Mask[r_1, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of r.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access r.next (unfolding.vpr@7.1--9.2) [184198]"}
        HasDirectPerm(Mask, r_1, next);
    if (Heap[r_1, next] != null) {
      
      // -- Check definedness of acc(valid(r.next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access r.next (unfolding.vpr@7.1--9.2) [184199]"}
          HasDirectPerm(Mask, r_1, next);
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[r_1, next]):=Mask[null, valid(Heap[r_1, next])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate deeper
// ==================================================

type PredicateType_deeper;
function  deeper(r_1: Ref): Field PredicateType_deeper FrameType;
function  deeper#sm(r_1: Ref): Field PredicateType_deeper PMaskType;
axiom (forall r_1: Ref ::
  { PredicateMaskField(deeper(r_1)) }
  PredicateMaskField(deeper(r_1)) == deeper#sm(r_1)
);
axiom (forall r_1: Ref ::
  { deeper(r_1) }
  IsPredicateField(deeper(r_1))
);
axiom (forall r_1: Ref ::
  { deeper(r_1) }
  getPredWandId(deeper(r_1)) == 1
);
function  deeper#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  deeper#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, r2: Ref ::
  { deeper(r_1), deeper(r2) }
  deeper(r_1) == deeper(r2) ==> r_1 == r2
);
axiom (forall r_1: Ref, r2: Ref ::
  { deeper#sm(r_1), deeper#sm(r2) }
  deeper#sm(r_1) == deeper#sm(r2) ==> r_1 == r2
);

axiom (forall Heap: HeapType, r_1: Ref ::
  { deeper#trigger(Heap, deeper(r_1)) }
  deeper#everUsed(deeper(r_1))
);

procedure deeper#definedness(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  
  // -- Check definedness of predicate body of deeper
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[r_1, $allocated];
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, next:=Mask[r_1, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of r.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access r.next (unfolding.vpr@32.1--36.2) [184200]"}
        HasDirectPerm(Mask, r_1, next);
    if (Heap[r_1, next] != null) {
      
      // -- Check definedness of acc(deeper(r.next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access r.next (unfolding.vpr@32.1--36.2) [184201]"}
          HasDirectPerm(Mask, r_1, next);
      perm := FullPerm;
      Mask := Mask[null, deeper(Heap[r_1, next]):=Mask[null, deeper(Heap[r_1, next])] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of (unfolding acc(deeper(r.next), write) in true)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume deeper#trigger(UnfoldingHeap, deeper(UnfoldingHeap[r_1, next]));
        assume UnfoldingHeap[null, deeper(UnfoldingHeap[r_1, next])] == CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[r_1, next], f_7]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[r_1, next], next]), FrameFragment((if UnfoldingHeap[UnfoldingHeap[r_1, next], next] != null then UnfoldingHeap[null, deeper(UnfoldingHeap[UnfoldingHeap[r_1, next], next])] else EmptyFrame))));
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access deeper(r.next) (unfolding.vpr@32.1--36.2) [184202]"}
            perm <= UnfoldingMask[null, deeper(UnfoldingHeap[r_1, next])];
        }
        UnfoldingMask := UnfoldingMask[null, deeper(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, deeper(UnfoldingHeap[r_1, next])] - perm];
        perm := FullPerm;
        assume UnfoldingHeap[r_1, next] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[r_1, next], f_7:=UnfoldingMask[UnfoldingHeap[r_1, next], f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[r_1, next] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[r_1, next], next:=UnfoldingMask[UnfoldingHeap[r_1, next], next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[UnfoldingHeap[r_1, next], next] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, deeper(UnfoldingHeap[UnfoldingHeap[r_1, next], next]):=UnfoldingMask[null, deeper(UnfoldingHeap[UnfoldingHeap[r_1, next], next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(deeper(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, deeper(UnfoldingHeap[r_1, next])], deeper(UnfoldingHeap[UnfoldingHeap[r_1, next], next]), UnfoldingHeap[null, deeper(UnfoldingHeap[UnfoldingHeap[r_1, next], next])]);
          assume state(UnfoldingHeap, UnfoldingMask);
          
          // -- Execute unfolding (for extra information)
            Unfolding1Heap := UnfoldingHeap;
            Unfolding1Mask := UnfoldingMask;
            assume deeper#trigger(Unfolding1Heap, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next]));
            assume Unfolding1Heap[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], f_7]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next] != null then Unfolding1Heap[null, deeper(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next])] else EmptyFrame))));
            ExhaleWellDef0Mask := Unfolding1Mask;
            ExhaleWellDef0Heap := Unfolding1Heap;
            perm := FullPerm;
            Unfolding1Mask := Unfolding1Mask[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=Unfolding1Mask[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next])] - perm];
            perm := FullPerm;
            assume Unfolding1Heap[Unfolding1Heap[r_1, next], next] != null;
            Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[r_1, next], next], f_7:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[r_1, next], next], f_7] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            perm := FullPerm;
            assume Unfolding1Heap[Unfolding1Heap[r_1, next], next] != null;
            Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            if (Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next] != null) {
              perm := FullPerm;
              Unfolding1Mask := Unfolding1Mask[null, deeper(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next]):=Unfolding1Mask[null, deeper(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next]), Unfolding1Heap[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next])], deeper(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next]), Unfolding1Heap[null, deeper(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next])]);
              assume state(Unfolding1Heap, Unfolding1Mask);
              
              // -- Free assumptions (inhale module)
                Unfolding1Heap := Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next]):=Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next])][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next], f_7:=true]];
                Unfolding1Heap := Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next]):=Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next])][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next], next:=true]];
                if (Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next], next] != null) {
                  havoc newPMask;
                  assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
                    { newPMask[o_16, f_21] }
                    Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next])][o_16, f_21] || Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next], next])][o_16, f_21] ==> newPMask[o_16, f_21]
                  );
                  Unfolding1Heap := Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next]):=newPMask];
                }
                assume state(Unfolding1Heap, Unfolding1Mask);
            }
            assume state(Unfolding1Heap, Unfolding1Mask);
          
          // -- Free assumptions (inhale module)
            UnfoldingHeap := UnfoldingHeap[null, deeper#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next]):=UnfoldingHeap[null, deeper#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next])][UnfoldingHeap[UnfoldingHeap[r_1, next], next], f_7:=true]];
            UnfoldingHeap := UnfoldingHeap[null, deeper#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next]):=UnfoldingHeap[null, deeper#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next])][UnfoldingHeap[UnfoldingHeap[r_1, next], next], next:=true]];
            if (UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[r_1, next], next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
                { newPMask[o_15, f_20] }
                UnfoldingHeap[null, deeper#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next])][o_15, f_20] || UnfoldingHeap[null, deeper#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[r_1, next], next], next])][o_15, f_20] ==> newPMask[o_15, f_20]
              );
              UnfoldingHeap := UnfoldingHeap[null, deeper#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next]):=newPMask];
            }
            assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access r.next (unfolding.vpr@32.1--36.2) [184203]"}
          HasDirectPerm(UnfoldingMask, r_1, next);
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, deeper#sm(Heap[r_1, next]):=Heap[null, deeper#sm(Heap[r_1, next])][Heap[r_1, next], f_7:=true]];
          Heap := Heap[null, deeper#sm(Heap[r_1, next]):=Heap[null, deeper#sm(Heap[r_1, next])][Heap[r_1, next], next:=true]];
          if (Heap[Heap[r_1, next], next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
              { newPMask[o_52, f_55] }
              Heap[null, deeper#sm(Heap[r_1, next])][o_52, f_55] || Heap[null, deeper#sm(Heap[Heap[r_1, next], next])][o_52, f_55] ==> newPMask[o_52, f_55]
            );
            Heap := Heap[null, deeper#sm(Heap[r_1, next]):=newPMask];
          }
          assume state(Heap, Mask);
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume deeper#trigger(UnfoldingHeap, deeper(UnfoldingHeap[r_1, next]));
        assume UnfoldingHeap[null, deeper(UnfoldingHeap[r_1, next])] == CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[r_1, next], f_7]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[r_1, next], next]), FrameFragment((if UnfoldingHeap[UnfoldingHeap[r_1, next], next] != null then UnfoldingHeap[null, deeper(UnfoldingHeap[UnfoldingHeap[r_1, next], next])] else EmptyFrame))));
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, deeper(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, deeper(UnfoldingHeap[r_1, next])] - perm];
        perm := FullPerm;
        assume UnfoldingHeap[r_1, next] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[r_1, next], f_7:=UnfoldingMask[UnfoldingHeap[r_1, next], f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[r_1, next] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[r_1, next], next:=UnfoldingMask[UnfoldingHeap[r_1, next], next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[UnfoldingHeap[r_1, next], next] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, deeper(UnfoldingHeap[UnfoldingHeap[r_1, next], next]):=UnfoldingMask[null, deeper(UnfoldingHeap[UnfoldingHeap[r_1, next], next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(deeper(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, deeper(UnfoldingHeap[r_1, next])], deeper(UnfoldingHeap[UnfoldingHeap[r_1, next], next]), UnfoldingHeap[null, deeper(UnfoldingHeap[UnfoldingHeap[r_1, next], next])]);
          assume state(UnfoldingHeap, UnfoldingMask);
          
          // -- Free assumptions (inhale module)
            UnfoldingHeap := UnfoldingHeap[null, deeper#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next]):=UnfoldingHeap[null, deeper#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next])][UnfoldingHeap[UnfoldingHeap[r_1, next], next], f_7:=true]];
            UnfoldingHeap := UnfoldingHeap[null, deeper#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next]):=UnfoldingHeap[null, deeper#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next])][UnfoldingHeap[UnfoldingHeap[r_1, next], next], next:=true]];
            if (UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[r_1, next], next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
                { newPMask[o_53, f_56] }
                UnfoldingHeap[null, deeper#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next])][o_53, f_56] || UnfoldingHeap[null, deeper#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[r_1, next], next], next])][o_53, f_56] ==> newPMask[o_53, f_56]
              );
              UnfoldingHeap := UnfoldingHeap[null, deeper#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next]):=newPMask];
            }
            assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate strange
// ==================================================

type PredicateType_strange;
function  strange(r_1: Ref): Field PredicateType_strange FrameType;
function  strange#sm(r_1: Ref): Field PredicateType_strange PMaskType;
axiom (forall r_1: Ref ::
  { PredicateMaskField(strange(r_1)) }
  PredicateMaskField(strange(r_1)) == strange#sm(r_1)
);
axiom (forall r_1: Ref ::
  { strange(r_1) }
  IsPredicateField(strange(r_1))
);
axiom (forall r_1: Ref ::
  { strange(r_1) }
  getPredWandId(strange(r_1)) == 2
);
function  strange#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  strange#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, r2: Ref ::
  { strange(r_1), strange(r2) }
  strange(r_1) == strange(r2) ==> r_1 == r2
);
axiom (forall r_1: Ref, r2: Ref ::
  { strange#sm(r_1), strange#sm(r2) }
  strange#sm(r_1) == strange#sm(r2) ==> r_1 == r2
);

axiom (forall Heap: HeapType, r_1: Ref ::
  { strange#trigger(Heap, strange(r_1)) }
  strange#everUsed(strange(r_1))
);

procedure strange#definedness(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  
  // -- Check definedness of predicate body of strange
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[r_1, $allocated];
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, next:=Mask[r_1, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of r.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access r.next (unfolding.vpr@64.1--70.2) [184204]"}
        HasDirectPerm(Mask, r_1, next);
    if (Heap[r_1, next] != null) {
      
      // -- Check definedness of acc(r.next.f, write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access r.next (unfolding.vpr@64.1--70.2) [184205]"}
          HasDirectPerm(Mask, r_1, next);
      perm := FullPerm;
      assume Heap[r_1, next] != null;
      Mask := Mask[Heap[r_1, next], f_7:=Mask[Heap[r_1, next], f_7] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of acc(r.next.next, write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access r.next (unfolding.vpr@64.1--70.2) [184206]"}
          HasDirectPerm(Mask, r_1, next);
      perm := FullPerm;
      assume Heap[r_1, next] != null;
      Mask := Mask[Heap[r_1, next], next:=Mask[Heap[r_1, next], next] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      Mask := Mask[null, strange(r_1):=Mask[null, strange(r_1)] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of (unfolding acc(strange(r), write) in true)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume strange#trigger(UnfoldingHeap, strange(r_1));
        assume UnfoldingHeap[null, strange(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[r_1, next], f_7]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[r_1, next], next]), UnfoldingHeap[null, strange(r_1)])) else EmptyFrame))));
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access strange(r) (unfolding.vpr@64.1--70.2) [184207]"}
            perm <= UnfoldingMask[null, strange(r_1)];
        }
        UnfoldingMask := UnfoldingMask[null, strange(r_1):=UnfoldingMask[null, strange(r_1)] - perm];
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[r_1, next] != null) {
          perm := FullPerm;
          assume UnfoldingHeap[r_1, next] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[r_1, next], f_7:=UnfoldingMask[UnfoldingHeap[r_1, next], f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume UnfoldingHeap[r_1, next] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[r_1, next], next:=UnfoldingMask[UnfoldingHeap[r_1, next], next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, strange(r_1):=UnfoldingMask[null, strange(r_1)] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(strange(r_1), UnfoldingHeap[null, strange(r_1)], strange(r_1), UnfoldingHeap[null, strange(r_1)]);
          assume state(UnfoldingHeap, UnfoldingMask);
          
          // -- Execute unfolding (for extra information)
            Unfolding1Heap := UnfoldingHeap;
            Unfolding1Mask := UnfoldingMask;
            assume strange#trigger(Unfolding1Heap, strange(r_1));
            assume Unfolding1Heap[null, strange(r_1)] == CombineFrames(FrameFragment(Unfolding1Heap[r_1, f_7]), CombineFrames(FrameFragment(Unfolding1Heap[r_1, next]), FrameFragment((if Unfolding1Heap[r_1, next] != null then CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[r_1, next], f_7]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[r_1, next], next]), Unfolding1Heap[null, strange(r_1)])) else EmptyFrame))));
            ExhaleWellDef0Mask := Unfolding1Mask;
            ExhaleWellDef0Heap := Unfolding1Heap;
            perm := FullPerm;
            Unfolding1Mask := Unfolding1Mask[null, strange(r_1):=Unfolding1Mask[null, strange(r_1)] - perm];
            perm := FullPerm;
            assume r_1 != null;
            Unfolding1Mask := Unfolding1Mask[r_1, f_7:=Unfolding1Mask[r_1, f_7] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            perm := FullPerm;
            assume r_1 != null;
            Unfolding1Mask := Unfolding1Mask[r_1, next:=Unfolding1Mask[r_1, next] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            if (Unfolding1Heap[r_1, next] != null) {
              perm := FullPerm;
              assume Unfolding1Heap[r_1, next] != null;
              Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[r_1, next], f_7:=Unfolding1Mask[Unfolding1Heap[r_1, next], f_7] + perm];
              assume state(Unfolding1Heap, Unfolding1Mask);
              perm := FullPerm;
              assume Unfolding1Heap[r_1, next] != null;
              Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[r_1, next], next:=Unfolding1Mask[Unfolding1Heap[r_1, next], next] + perm];
              assume state(Unfolding1Heap, Unfolding1Mask);
              perm := FullPerm;
              Unfolding1Mask := Unfolding1Mask[null, strange(r_1):=Unfolding1Mask[null, strange(r_1)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(strange(r_1), Unfolding1Heap[null, strange(r_1)], strange(r_1), Unfolding1Heap[null, strange(r_1)]);
              assume state(Unfolding1Heap, Unfolding1Mask);
              
              // -- Free assumptions (inhale module)
                Unfolding1Heap := Unfolding1Heap[null, strange#sm(r_1):=Unfolding1Heap[null, strange#sm(r_1)][r_1, f_7:=true]];
                Unfolding1Heap := Unfolding1Heap[null, strange#sm(r_1):=Unfolding1Heap[null, strange#sm(r_1)][r_1, next:=true]];
                if (Unfolding1Heap[r_1, next] != null) {
                  Unfolding1Heap := Unfolding1Heap[null, strange#sm(r_1):=Unfolding1Heap[null, strange#sm(r_1)][Unfolding1Heap[r_1, next], f_7:=true]];
                  Unfolding1Heap := Unfolding1Heap[null, strange#sm(r_1):=Unfolding1Heap[null, strange#sm(r_1)][Unfolding1Heap[r_1, next], next:=true]];
                  havoc newPMask;
                  assume (forall <A, B> o: Ref, f_85: (Field A B) ::
                    { newPMask[o, f_85] }
                    Unfolding1Heap[null, strange#sm(r_1)][o, f_85] || Unfolding1Heap[null, strange#sm(r_1)][o, f_85] ==> newPMask[o, f_85]
                  );
                  Unfolding1Heap := Unfolding1Heap[null, strange#sm(r_1):=newPMask];
                }
                assume state(Unfolding1Heap, Unfolding1Mask);
            }
            assume state(Unfolding1Heap, Unfolding1Mask);
          
          // -- Free assumptions (inhale module)
            UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=UnfoldingHeap[null, strange#sm(r_1)][r_1, f_7:=true]];
            UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=UnfoldingHeap[null, strange#sm(r_1)][r_1, next:=true]];
            if (UnfoldingHeap[r_1, next] != null) {
              UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=UnfoldingHeap[null, strange#sm(r_1)][UnfoldingHeap[r_1, next], f_7:=true]];
              UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=UnfoldingHeap[null, strange#sm(r_1)][UnfoldingHeap[r_1, next], next:=true]];
              havoc newPMask;
              assume (forall <A, B> o_26: Ref, f_29: (Field A B) ::
                { newPMask[o_26, f_29] }
                UnfoldingHeap[null, strange#sm(r_1)][o_26, f_29] || UnfoldingHeap[null, strange#sm(r_1)][o_26, f_29] ==> newPMask[o_26, f_29]
              );
              UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=newPMask];
            }
            assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, strange#sm(r_1):=Heap[null, strange#sm(r_1)][r_1, f_7:=true]];
          Heap := Heap[null, strange#sm(r_1):=Heap[null, strange#sm(r_1)][r_1, next:=true]];
          if (Heap[r_1, next] != null) {
            Heap := Heap[null, strange#sm(r_1):=Heap[null, strange#sm(r_1)][Heap[r_1, next], f_7:=true]];
            Heap := Heap[null, strange#sm(r_1):=Heap[null, strange#sm(r_1)][Heap[r_1, next], next:=true]];
            havoc newPMask;
            assume (forall <A, B> o_11: Ref, f_3: (Field A B) ::
              { newPMask[o_11, f_3] }
              Heap[null, strange#sm(r_1)][o_11, f_3] || Heap[null, strange#sm(r_1)][o_11, f_3] ==> newPMask[o_11, f_3]
            );
            Heap := Heap[null, strange#sm(r_1):=newPMask];
          }
          assume state(Heap, Mask);
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume strange#trigger(UnfoldingHeap, strange(r_1));
        assume UnfoldingHeap[null, strange(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[r_1, next], f_7]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[r_1, next], next]), UnfoldingHeap[null, strange(r_1)])) else EmptyFrame))));
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, strange(r_1):=UnfoldingMask[null, strange(r_1)] - perm];
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[r_1, next] != null) {
          perm := FullPerm;
          assume UnfoldingHeap[r_1, next] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[r_1, next], f_7:=UnfoldingMask[UnfoldingHeap[r_1, next], f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume UnfoldingHeap[r_1, next] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[r_1, next], next:=UnfoldingMask[UnfoldingHeap[r_1, next], next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, strange(r_1):=UnfoldingMask[null, strange(r_1)] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(strange(r_1), UnfoldingHeap[null, strange(r_1)], strange(r_1), UnfoldingHeap[null, strange(r_1)]);
          assume state(UnfoldingHeap, UnfoldingMask);
          
          // -- Free assumptions (inhale module)
            UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=UnfoldingHeap[null, strange#sm(r_1)][r_1, f_7:=true]];
            UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=UnfoldingHeap[null, strange#sm(r_1)][r_1, next:=true]];
            if (UnfoldingHeap[r_1, next] != null) {
              UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=UnfoldingHeap[null, strange#sm(r_1)][UnfoldingHeap[r_1, next], f_7:=true]];
              UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=UnfoldingHeap[null, strange#sm(r_1)][UnfoldingHeap[r_1, next], next:=true]];
              havoc newPMask;
              assume (forall <A, B> o_35: Ref, f_17: (Field A B) ::
                { newPMask[o_35, f_17] }
                UnfoldingHeap[null, strange#sm(r_1)][o_35, f_17] || UnfoldingHeap[null, strange#sm(r_1)][o_35, f_17] ==> newPMask[o_35, f_17]
              );
              UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=newPMask];
            }
            assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate deeperfalse
// ==================================================

type PredicateType_deeperfalse;
function  deeperfalse(r_1: Ref): Field PredicateType_deeperfalse FrameType;
function  deeperfalse#sm(r_1: Ref): Field PredicateType_deeperfalse PMaskType;
axiom (forall r_1: Ref ::
  { PredicateMaskField(deeperfalse(r_1)) }
  PredicateMaskField(deeperfalse(r_1)) == deeperfalse#sm(r_1)
);
axiom (forall r_1: Ref ::
  { deeperfalse(r_1) }
  IsPredicateField(deeperfalse(r_1))
);
axiom (forall r_1: Ref ::
  { deeperfalse(r_1) }
  getPredWandId(deeperfalse(r_1)) == 3
);
function  deeperfalse#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  deeperfalse#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, r2: Ref ::
  { deeperfalse(r_1), deeperfalse(r2) }
  deeperfalse(r_1) == deeperfalse(r2) ==> r_1 == r2
);
axiom (forall r_1: Ref, r2: Ref ::
  { deeperfalse#sm(r_1), deeperfalse#sm(r2) }
  deeperfalse#sm(r_1) == deeperfalse#sm(r2) ==> r_1 == r2
);

axiom (forall Heap: HeapType, r_1: Ref ::
  { deeperfalse#trigger(Heap, deeperfalse(r_1)) }
  deeperfalse#everUsed(deeperfalse(r_1))
);

procedure deeperfalse#definedness(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newPMask: PMaskType;
  
  // -- Check definedness of predicate body of deeperfalse
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[r_1, $allocated];
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, next:=Mask[r_1, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of r.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access r.next (unfolding.vpr@120.1--122.2) [184208]"}
        HasDirectPerm(Mask, r_1, next);
    assume Heap[r_1, next] != null;
    
    // -- Check definedness of acc(valid(r.next), write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access r.next (unfolding.vpr@120.1--122.2) [184209]"}
        HasDirectPerm(Mask, r_1, next);
    perm := FullPerm;
    Mask := Mask[null, valid(Heap[r_1, next]):=Mask[null, valid(Heap[r_1, next])] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (unfolding acc(valid(r.next), write) in false)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid#trigger(UnfoldingHeap, valid(UnfoldingHeap[r_1, next]));
      assume UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] == CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[r_1, next], f_7]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[r_1, next], next]), FrameFragment((if UnfoldingHeap[UnfoldingHeap[r_1, next], next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[UnfoldingHeap[r_1, next], next])] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access valid(r.next) (unfolding.vpr@120.1--122.2) [184210]"}
          perm <= UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])];
      }
      UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] - perm];
      perm := FullPerm;
      assume UnfoldingHeap[r_1, next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[r_1, next], f_7:=UnfoldingMask[UnfoldingHeap[r_1, next], f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume UnfoldingHeap[r_1, next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[r_1, next], next:=UnfoldingMask[UnfoldingHeap[r_1, next], next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[UnfoldingHeap[r_1, next], next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[UnfoldingHeap[r_1, next], next]):=UnfoldingMask[null, valid(UnfoldingHeap[UnfoldingHeap[r_1, next], next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])], valid(UnfoldingHeap[UnfoldingHeap[r_1, next], next]), UnfoldingHeap[null, valid(UnfoldingHeap[UnfoldingHeap[r_1, next], next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access r.next (unfolding.vpr@120.1--122.2) [184211]"}
        HasDirectPerm(UnfoldingMask, r_1, next);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(Heap[r_1, next]):=Heap[null, valid#sm(Heap[r_1, next])][Heap[r_1, next], f_7:=true]];
        Heap := Heap[null, valid#sm(Heap[r_1, next]):=Heap[null, valid#sm(Heap[r_1, next])][Heap[r_1, next], next:=true]];
        if (Heap[Heap[r_1, next], next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_1: Ref, f_11: (Field A B) ::
            { newPMask[o_1, f_11] }
            Heap[null, valid#sm(Heap[r_1, next])][o_1, f_11] || Heap[null, valid#sm(Heap[Heap[r_1, next], next])][o_1, f_11] ==> newPMask[o_1, f_11]
          );
          Heap := Heap[null, valid#sm(Heap[r_1, next]):=newPMask];
        }
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid#trigger(UnfoldingHeap, valid(UnfoldingHeap[r_1, next]));
      assume UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] == CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[r_1, next], f_7]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[r_1, next], next]), FrameFragment((if UnfoldingHeap[UnfoldingHeap[r_1, next], next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[UnfoldingHeap[r_1, next], next])] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] - perm];
      perm := FullPerm;
      assume UnfoldingHeap[r_1, next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[r_1, next], f_7:=UnfoldingMask[UnfoldingHeap[r_1, next], f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume UnfoldingHeap[r_1, next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[r_1, next], next:=UnfoldingMask[UnfoldingHeap[r_1, next], next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[UnfoldingHeap[r_1, next], next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[UnfoldingHeap[r_1, next], next]):=UnfoldingMask[null, valid(UnfoldingHeap[UnfoldingHeap[r_1, next], next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])], valid(UnfoldingHeap[UnfoldingHeap[r_1, next], next]), UnfoldingHeap[null, valid(UnfoldingHeap[UnfoldingHeap[r_1, next], next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assume false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t1
// ==================================================

procedure t1(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newPMask: PMaskType;
  var i: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: i := (unfolding acc(valid(r), write) in r.f) -- unfolding.vpr@14.5--14.58
    
    // -- Check definedness of (unfolding acc(valid(r), write) in r.f)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid#trigger(UnfoldingHeap, valid(r_1));
      assume UnfoldingHeap[null, valid(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access valid(r) (unfolding.vpr@14.5--14.58) [184212]"}
          perm <= UnfoldingMask[null, valid(r_1)];
      }
      UnfoldingMask := UnfoldingMask[null, valid(r_1):=UnfoldingMask[null, valid(r_1)] - perm];
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[r_1, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(r_1), UnfoldingHeap[null, valid(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access r.f (unfolding.vpr@14.5--14.58) [184213]"}
        HasDirectPerm(UnfoldingMask, r_1, f_7);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, f_7:=true]];
        Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, next:=true]];
        if (Heap[r_1, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_12: Ref, f_9: (Field A B) ::
            { newPMask[o_12, f_9] }
            Heap[null, valid#sm(r_1)][o_12, f_9] || Heap[null, valid#sm(Heap[r_1, next])][o_12, f_9] ==> newPMask[o_12, f_9]
          );
          Heap := Heap[null, valid#sm(r_1):=newPMask];
        }
        assume state(Heap, Mask);
    i := Heap[r_1, f_7];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t2
// ==================================================

procedure t2(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var newPMask: PMaskType;
  var i: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    assume r_1 != null;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: i := (unfolding acc(valid(r), write) in r.f) -- unfolding.vpr@21.5--21.58
    
    // -- Check definedness of (unfolding acc(valid(r), write) in r.f)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid#trigger(UnfoldingHeap, valid(r_1));
      assume UnfoldingHeap[null, valid(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access valid(r) (unfolding.vpr@21.5--21.58) [184214]"}
          perm <= UnfoldingMask[null, valid(r_1)];
      }
      UnfoldingMask := UnfoldingMask[null, valid(r_1):=UnfoldingMask[null, valid(r_1)] - perm];
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[r_1, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(r_1), UnfoldingHeap[null, valid(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access r.f (unfolding.vpr@21.5--21.58) [184215]"}
        HasDirectPerm(UnfoldingMask, r_1, f_7);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, f_7:=true]];
        Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, next:=true]];
        if (Heap[r_1, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_22: Ref, f_24: (Field A B) ::
            { newPMask[o_22, f_24] }
            Heap[null, valid#sm(r_1)][o_22, f_24] || Heap[null, valid#sm(Heap[r_1, next])][o_22, f_24] ==> newPMask[o_22, f_24]
          );
          Heap := Heap[null, valid#sm(r_1):=newPMask];
        }
        assume state(Heap, Mask);
    i := Heap[r_1, f_7];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t3
// ==================================================

procedure t3(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  var i: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: i := (unfolding acc(valid(r), write) in
  //     (unfolding acc(valid(r), write) in r.f)) -- unfolding.vpr@28.5--28.96
    
    // -- Check definedness of (unfolding acc(valid(r), write) in (unfolding acc(valid(r), write) in r.f))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid#trigger(UnfoldingHeap, valid(r_1));
      assume UnfoldingHeap[null, valid(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access valid(r) (unfolding.vpr@28.5--28.96) [184216]"}
          perm <= UnfoldingMask[null, valid(r_1)];
      }
      UnfoldingMask := UnfoldingMask[null, valid(r_1):=UnfoldingMask[null, valid(r_1)] - perm];
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[r_1, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(r_1), UnfoldingHeap[null, valid(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      Unfolding1Heap := UnfoldingHeap;
      Unfolding1Mask := UnfoldingMask;
      assume valid#trigger(Unfolding1Heap, valid(r_1));
      assume Unfolding1Heap[null, valid(r_1)] == CombineFrames(FrameFragment(Unfolding1Heap[r_1, f_7]), CombineFrames(FrameFragment(Unfolding1Heap[r_1, next]), FrameFragment((if Unfolding1Heap[r_1, next] != null then Unfolding1Heap[null, valid(Unfolding1Heap[r_1, next])] else EmptyFrame))));
      ExhaleWellDef0Mask := Unfolding1Mask;
      ExhaleWellDef0Heap := Unfolding1Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access valid(r) (unfolding.vpr@28.5--28.96) [184217]"}
          perm <= Unfolding1Mask[null, valid(r_1)];
      }
      Unfolding1Mask := Unfolding1Mask[null, valid(r_1):=Unfolding1Mask[null, valid(r_1)] - perm];
      perm := FullPerm;
      assume r_1 != null;
      Unfolding1Mask := Unfolding1Mask[r_1, f_7:=Unfolding1Mask[r_1, f_7] + perm];
      assume state(Unfolding1Heap, Unfolding1Mask);
      perm := FullPerm;
      assume r_1 != null;
      Unfolding1Mask := Unfolding1Mask[r_1, next:=Unfolding1Mask[r_1, next] + perm];
      assume state(Unfolding1Heap, Unfolding1Mask);
      if (Unfolding1Heap[r_1, next] != null) {
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, valid(Unfolding1Heap[r_1, next]):=Unfolding1Mask[null, valid(Unfolding1Heap[r_1, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(r_1), Unfolding1Heap[null, valid(r_1)], valid(Unfolding1Heap[r_1, next]), Unfolding1Heap[null, valid(Unfolding1Heap[r_1, next])]);
        assume state(Unfolding1Heap, Unfolding1Mask);
      }
      assume state(Unfolding1Heap, Unfolding1Mask);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access r.f (unfolding.vpr@28.5--28.96) [184218]"}
        HasDirectPerm(Unfolding1Mask, r_1, f_7);
      
      // -- Free assumptions (exp module)
        UnfoldingHeap := UnfoldingHeap[null, valid#sm(r_1):=UnfoldingHeap[null, valid#sm(r_1)][r_1, f_7:=true]];
        UnfoldingHeap := UnfoldingHeap[null, valid#sm(r_1):=UnfoldingHeap[null, valid#sm(r_1)][r_1, next:=true]];
        if (UnfoldingHeap[r_1, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_3: Ref, f_12: (Field A B) ::
            { newPMask[o_3, f_12] }
            UnfoldingHeap[null, valid#sm(r_1)][o_3, f_12] || UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next])][o_3, f_12] ==> newPMask[o_3, f_12]
          );
          UnfoldingHeap := UnfoldingHeap[null, valid#sm(r_1):=newPMask];
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, f_7:=true]];
        Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, next:=true]];
        if (Heap[r_1, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_46: Ref, f_35: (Field A B) ::
            { newPMask[o_46, f_35] }
            Heap[null, valid#sm(r_1)][o_46, f_35] || Heap[null, valid#sm(Heap[r_1, next])][o_46, f_35] ==> newPMask[o_46, f_35]
          );
          Heap := Heap[null, valid#sm(r_1):=newPMask];
        }
        assume state(Heap, Mask);
        Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, f_7:=true]];
        Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, next:=true]];
        if (Heap[r_1, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_41: Ref, f_25: (Field A B) ::
            { newPMask[o_41, f_25] }
            Heap[null, valid#sm(r_1)][o_41, f_25] || Heap[null, valid#sm(Heap[r_1, next])][o_41, f_25] ==> newPMask[o_41, f_25]
          );
          Heap := Heap[null, valid#sm(r_1):=newPMask];
        }
        assume state(Heap, Mask);
    i := Heap[r_1, f_7];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t4
// ==================================================

procedure t4(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  var i: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, deeper(r_1):=Mask[null, deeper(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: i := (unfolding acc(deeper(r), write) in (r.next == null ? 0 : r.next.f)) -- unfolding.vpr@44.5--44.87
    
    // -- Check definedness of (unfolding acc(deeper(r), write) in (r.next == null ? 0 : r.next.f))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume deeper#trigger(UnfoldingHeap, deeper(r_1));
      assume UnfoldingHeap[null, deeper(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, deeper(UnfoldingHeap[r_1, next])] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access deeper(r) (unfolding.vpr@44.5--44.87) [184219]"}
          perm <= UnfoldingMask[null, deeper(r_1)];
      }
      UnfoldingMask := UnfoldingMask[null, deeper(r_1):=UnfoldingMask[null, deeper(r_1)] - perm];
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[r_1, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, deeper(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, deeper(UnfoldingHeap[r_1, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(deeper(r_1), UnfoldingHeap[null, deeper(r_1)], deeper(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, deeper(UnfoldingHeap[r_1, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
        
        // -- Execute unfolding (for extra information)
          Unfolding1Heap := UnfoldingHeap;
          Unfolding1Mask := UnfoldingMask;
          assume deeper#trigger(Unfolding1Heap, deeper(Unfolding1Heap[r_1, next]));
          assume Unfolding1Heap[null, deeper(Unfolding1Heap[r_1, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[r_1, next], f_7]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[r_1, next], next]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[r_1, next], next] != null then Unfolding1Heap[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next])] else EmptyFrame))));
          ExhaleWellDef0Mask := Unfolding1Mask;
          ExhaleWellDef0Heap := Unfolding1Heap;
          perm := FullPerm;
          Unfolding1Mask := Unfolding1Mask[null, deeper(Unfolding1Heap[r_1, next]):=Unfolding1Mask[null, deeper(Unfolding1Heap[r_1, next])] - perm];
          perm := FullPerm;
          assume Unfolding1Heap[r_1, next] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[r_1, next], f_7:=Unfolding1Mask[Unfolding1Heap[r_1, next], f_7] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          perm := FullPerm;
          assume Unfolding1Heap[r_1, next] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[r_1, next], next:=Unfolding1Mask[Unfolding1Heap[r_1, next], next] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          if (Unfolding1Heap[Unfolding1Heap[r_1, next], next] != null) {
            perm := FullPerm;
            Unfolding1Mask := Unfolding1Mask[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=Unfolding1Mask[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(deeper(Unfolding1Heap[r_1, next]), Unfolding1Heap[null, deeper(Unfolding1Heap[r_1, next])], deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next]), Unfolding1Heap[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next])]);
            assume state(Unfolding1Heap, Unfolding1Mask);
            
            // -- Free assumptions (inhale module)
              Unfolding1Heap := Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next])][Unfolding1Heap[Unfolding1Heap[r_1, next], next], f_7:=true]];
              Unfolding1Heap := Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next])][Unfolding1Heap[Unfolding1Heap[r_1, next], next], next:=true]];
              if (Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next] != null) {
                havoc newPMask;
                assume (forall <A, B> o_55: Ref, f_36: (Field A B) ::
                  { newPMask[o_55, f_36] }
                  Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next])][o_55, f_36] || Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next])][o_55, f_36] ==> newPMask[o_55, f_36]
                );
                Unfolding1Heap := Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=newPMask];
              }
              assume state(Unfolding1Heap, Unfolding1Mask);
          }
          assume state(Unfolding1Heap, Unfolding1Mask);
        
        // -- Free assumptions (inhale module)
          UnfoldingHeap := UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next]):=UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next])][UnfoldingHeap[r_1, next], f_7:=true]];
          UnfoldingHeap := UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next]):=UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next])][UnfoldingHeap[r_1, next], next:=true]];
          if (UnfoldingHeap[UnfoldingHeap[r_1, next], next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_34: Ref, f_44: (Field A B) ::
              { newPMask[o_34, f_44] }
              UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next])][o_34, f_44] || UnfoldingHeap[null, deeper#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next])][o_34, f_44] ==> newPMask[o_34, f_44]
            );
            UnfoldingHeap := UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next]):=newPMask];
          }
          assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access r.next (unfolding.vpr@44.5--44.87) [184220]"}
        HasDirectPerm(UnfoldingMask, r_1, next);
      if (UnfoldingHeap[r_1, next] == null) {
      } else {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access r.next (unfolding.vpr@44.5--44.87) [184221]"}
          HasDirectPerm(UnfoldingMask, r_1, next);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access r.next.f (unfolding.vpr@44.5--44.87) [184222]"}
          HasDirectPerm(UnfoldingMask, UnfoldingHeap[r_1, next], f_7);
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, deeper#sm(r_1):=Heap[null, deeper#sm(r_1)][r_1, f_7:=true]];
        Heap := Heap[null, deeper#sm(r_1):=Heap[null, deeper#sm(r_1)][r_1, next:=true]];
        if (Heap[r_1, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_42: Ref, f_26: (Field A B) ::
            { newPMask[o_42, f_26] }
            Heap[null, deeper#sm(r_1)][o_42, f_26] || Heap[null, deeper#sm(Heap[r_1, next])][o_42, f_26] ==> newPMask[o_42, f_26]
          );
          Heap := Heap[null, deeper#sm(r_1):=newPMask];
        }
        assume state(Heap, Mask);
    i := (if Heap[r_1, next] == null then 0 else Heap[Heap[r_1, next], f_7]);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t5
// ==================================================

procedure t5(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  var Unfolding2Heap: HeapType;
  var Unfolding2Mask: MaskType;
  var i: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, deeper(r_1):=Mask[null, deeper(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: i := (unfolding acc(deeper(r), write) in
  //     (r.next == null ?
  //       0 :
  //       (unfolding acc(deeper(r.next), write) in r.next.f))) -- unfolding.vpr@50.5--50.117
    
    // -- Check definedness of (unfolding acc(deeper(r), write) in (r.next == null ? 0 : (unfolding acc(deeper(r.next), write) in r.next.f)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume deeper#trigger(UnfoldingHeap, deeper(r_1));
      assume UnfoldingHeap[null, deeper(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, deeper(UnfoldingHeap[r_1, next])] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access deeper(r) (unfolding.vpr@50.5--50.117) [184223]"}
          perm <= UnfoldingMask[null, deeper(r_1)];
      }
      UnfoldingMask := UnfoldingMask[null, deeper(r_1):=UnfoldingMask[null, deeper(r_1)] - perm];
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[r_1, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, deeper(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, deeper(UnfoldingHeap[r_1, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(deeper(r_1), UnfoldingHeap[null, deeper(r_1)], deeper(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, deeper(UnfoldingHeap[r_1, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
        
        // -- Execute unfolding (for extra information)
          Unfolding1Heap := UnfoldingHeap;
          Unfolding1Mask := UnfoldingMask;
          assume deeper#trigger(Unfolding1Heap, deeper(Unfolding1Heap[r_1, next]));
          assume Unfolding1Heap[null, deeper(Unfolding1Heap[r_1, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[r_1, next], f_7]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[r_1, next], next]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[r_1, next], next] != null then Unfolding1Heap[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next])] else EmptyFrame))));
          ExhaleWellDef0Mask := Unfolding1Mask;
          ExhaleWellDef0Heap := Unfolding1Heap;
          perm := FullPerm;
          Unfolding1Mask := Unfolding1Mask[null, deeper(Unfolding1Heap[r_1, next]):=Unfolding1Mask[null, deeper(Unfolding1Heap[r_1, next])] - perm];
          perm := FullPerm;
          assume Unfolding1Heap[r_1, next] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[r_1, next], f_7:=Unfolding1Mask[Unfolding1Heap[r_1, next], f_7] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          perm := FullPerm;
          assume Unfolding1Heap[r_1, next] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[r_1, next], next:=Unfolding1Mask[Unfolding1Heap[r_1, next], next] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          if (Unfolding1Heap[Unfolding1Heap[r_1, next], next] != null) {
            perm := FullPerm;
            Unfolding1Mask := Unfolding1Mask[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=Unfolding1Mask[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(deeper(Unfolding1Heap[r_1, next]), Unfolding1Heap[null, deeper(Unfolding1Heap[r_1, next])], deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next]), Unfolding1Heap[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next])]);
            assume state(Unfolding1Heap, Unfolding1Mask);
            
            // -- Free assumptions (inhale module)
              Unfolding1Heap := Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next])][Unfolding1Heap[Unfolding1Heap[r_1, next], next], f_7:=true]];
              Unfolding1Heap := Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next])][Unfolding1Heap[Unfolding1Heap[r_1, next], next], next:=true]];
              if (Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next] != null) {
                havoc newPMask;
                assume (forall <A, B> o_43: Ref, f_13: (Field A B) ::
                  { newPMask[o_43, f_13] }
                  Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next])][o_43, f_13] || Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next])][o_43, f_13] ==> newPMask[o_43, f_13]
                );
                Unfolding1Heap := Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=newPMask];
              }
              assume state(Unfolding1Heap, Unfolding1Mask);
          }
          assume state(Unfolding1Heap, Unfolding1Mask);
        
        // -- Free assumptions (inhale module)
          UnfoldingHeap := UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next]):=UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next])][UnfoldingHeap[r_1, next], f_7:=true]];
          UnfoldingHeap := UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next]):=UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next])][UnfoldingHeap[r_1, next], next:=true]];
          if (UnfoldingHeap[UnfoldingHeap[r_1, next], next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_13: Ref, f_45: (Field A B) ::
              { newPMask[o_13, f_45] }
              UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next])][o_13, f_45] || UnfoldingHeap[null, deeper#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next])][o_13, f_45] ==> newPMask[o_13, f_45]
            );
            UnfoldingHeap := UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next]):=newPMask];
          }
          assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access r.next (unfolding.vpr@50.5--50.117) [184224]"}
        HasDirectPerm(UnfoldingMask, r_1, next);
      if (UnfoldingHeap[r_1, next] == null) {
      } else {
        Unfolding1Heap := UnfoldingHeap;
        Unfolding1Mask := UnfoldingMask;
        assume deeper#trigger(Unfolding1Heap, deeper(Unfolding1Heap[r_1, next]));
        assume Unfolding1Heap[null, deeper(Unfolding1Heap[r_1, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[r_1, next], f_7]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[r_1, next], next]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[r_1, next], next] != null then Unfolding1Heap[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next])] else EmptyFrame))));
        ExhaleWellDef0Mask := Unfolding1Mask;
        ExhaleWellDef0Heap := Unfolding1Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assignment might fail. There might be insufficient permission to access deeper(r.next) (unfolding.vpr@50.5--50.117) [184225]"}
            perm <= Unfolding1Mask[null, deeper(Unfolding1Heap[r_1, next])];
        }
        Unfolding1Mask := Unfolding1Mask[null, deeper(Unfolding1Heap[r_1, next]):=Unfolding1Mask[null, deeper(Unfolding1Heap[r_1, next])] - perm];
        perm := FullPerm;
        assume Unfolding1Heap[r_1, next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[r_1, next], f_7:=Unfolding1Mask[Unfolding1Heap[r_1, next], f_7] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := FullPerm;
        assume Unfolding1Heap[r_1, next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[r_1, next], next:=Unfolding1Mask[Unfolding1Heap[r_1, next], next] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        if (Unfolding1Heap[Unfolding1Heap[r_1, next], next] != null) {
          perm := FullPerm;
          Unfolding1Mask := Unfolding1Mask[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=Unfolding1Mask[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(deeper(Unfolding1Heap[r_1, next]), Unfolding1Heap[null, deeper(Unfolding1Heap[r_1, next])], deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next]), Unfolding1Heap[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next])]);
          assume state(Unfolding1Heap, Unfolding1Mask);
          
          // -- Execute unfolding (for extra information)
            Unfolding2Heap := Unfolding1Heap;
            Unfolding2Mask := Unfolding1Mask;
            assume deeper#trigger(Unfolding2Heap, deeper(Unfolding2Heap[Unfolding2Heap[r_1, next], next]));
            assume Unfolding2Heap[null, deeper(Unfolding2Heap[Unfolding2Heap[r_1, next], next])] == CombineFrames(FrameFragment(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], f_7]), CombineFrames(FrameFragment(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next]), FrameFragment((if Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next] != null then Unfolding2Heap[null, deeper(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next])] else EmptyFrame))));
            ExhaleWellDef0Mask := Unfolding2Mask;
            ExhaleWellDef0Heap := Unfolding2Heap;
            perm := FullPerm;
            Unfolding2Mask := Unfolding2Mask[null, deeper(Unfolding2Heap[Unfolding2Heap[r_1, next], next]):=Unfolding2Mask[null, deeper(Unfolding2Heap[Unfolding2Heap[r_1, next], next])] - perm];
            perm := FullPerm;
            assume Unfolding2Heap[Unfolding2Heap[r_1, next], next] != null;
            Unfolding2Mask := Unfolding2Mask[Unfolding2Heap[Unfolding2Heap[r_1, next], next], f_7:=Unfolding2Mask[Unfolding2Heap[Unfolding2Heap[r_1, next], next], f_7] + perm];
            assume state(Unfolding2Heap, Unfolding2Mask);
            perm := FullPerm;
            assume Unfolding2Heap[Unfolding2Heap[r_1, next], next] != null;
            Unfolding2Mask := Unfolding2Mask[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next:=Unfolding2Mask[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next] + perm];
            assume state(Unfolding2Heap, Unfolding2Mask);
            if (Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next] != null) {
              perm := FullPerm;
              Unfolding2Mask := Unfolding2Mask[null, deeper(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next]):=Unfolding2Mask[null, deeper(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(deeper(Unfolding2Heap[Unfolding2Heap[r_1, next], next]), Unfolding2Heap[null, deeper(Unfolding2Heap[Unfolding2Heap[r_1, next], next])], deeper(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next]), Unfolding2Heap[null, deeper(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next])]);
              assume state(Unfolding2Heap, Unfolding2Mask);
              
              // -- Free assumptions (inhale module)
                Unfolding2Heap := Unfolding2Heap[null, deeper#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next]):=Unfolding2Heap[null, deeper#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next])][Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next], f_7:=true]];
                Unfolding2Heap := Unfolding2Heap[null, deeper#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next]):=Unfolding2Heap[null, deeper#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next])][Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next], next:=true]];
                if (Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next], next] != null) {
                  havoc newPMask;
                  assume (forall <A, B> o_14: Ref, f_51: (Field A B) ::
                    { newPMask[o_14, f_51] }
                    Unfolding2Heap[null, deeper#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next])][o_14, f_51] || Unfolding2Heap[null, deeper#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next], next])][o_14, f_51] ==> newPMask[o_14, f_51]
                  );
                  Unfolding2Heap := Unfolding2Heap[null, deeper#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[r_1, next], next], next]):=newPMask];
                }
                assume state(Unfolding2Heap, Unfolding2Mask);
            }
            assume state(Unfolding2Heap, Unfolding2Mask);
          
          // -- Free assumptions (inhale module)
            Unfolding1Heap := Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next])][Unfolding1Heap[Unfolding1Heap[r_1, next], next], f_7:=true]];
            Unfolding1Heap := Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next])][Unfolding1Heap[Unfolding1Heap[r_1, next], next], next:=true]];
            if (Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_47: Ref, f_41: (Field A B) ::
                { newPMask[o_47, f_41] }
                Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next])][o_47, f_41] || Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next])][o_47, f_41] ==> newPMask[o_47, f_41]
              );
              Unfolding1Heap := Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=newPMask];
            }
            assume state(Unfolding1Heap, Unfolding1Mask);
        }
        assume state(Unfolding1Heap, Unfolding1Mask);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access r.next (unfolding.vpr@50.5--50.117) [184226]"}
          HasDirectPerm(Unfolding1Mask, r_1, next);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access r.next (unfolding.vpr@50.5--50.117) [184227]"}
          HasDirectPerm(Unfolding1Mask, r_1, next);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access r.next.f (unfolding.vpr@50.5--50.117) [184228]"}
          HasDirectPerm(Unfolding1Mask, Unfolding1Heap[r_1, next], f_7);
        
        // -- Free assumptions (exp module)
          UnfoldingHeap := UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next]):=UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next])][UnfoldingHeap[r_1, next], f_7:=true]];
          UnfoldingHeap := UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next]):=UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next])][UnfoldingHeap[r_1, next], next:=true]];
          if (UnfoldingHeap[UnfoldingHeap[r_1, next], next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_44: Ref, f_14: (Field A B) ::
              { newPMask[o_44, f_14] }
              UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next])][o_44, f_14] || UnfoldingHeap[null, deeper#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next])][o_44, f_14] ==> newPMask[o_44, f_14]
            );
            UnfoldingHeap := UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next]):=newPMask];
          }
          assume state(UnfoldingHeap, UnfoldingMask);
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, deeper#sm(r_1):=Heap[null, deeper#sm(r_1)][r_1, f_7:=true]];
        Heap := Heap[null, deeper#sm(r_1):=Heap[null, deeper#sm(r_1)][r_1, next:=true]];
        if (Heap[r_1, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_28: Ref, f_42: (Field A B) ::
            { newPMask[o_28, f_42] }
            Heap[null, deeper#sm(r_1)][o_28, f_42] || Heap[null, deeper#sm(Heap[r_1, next])][o_28, f_42] ==> newPMask[o_28, f_42]
          );
          Heap := Heap[null, deeper#sm(r_1):=newPMask];
        }
        assume state(Heap, Mask);
        Heap := Heap[null, deeper#sm(Heap[r_1, next]):=Heap[null, deeper#sm(Heap[r_1, next])][Heap[r_1, next], f_7:=true]];
        Heap := Heap[null, deeper#sm(Heap[r_1, next]):=Heap[null, deeper#sm(Heap[r_1, next])][Heap[r_1, next], next:=true]];
        if (Heap[Heap[r_1, next], next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_76: Ref, f_34: (Field A B) ::
            { newPMask[o_76, f_34] }
            Heap[null, deeper#sm(Heap[r_1, next])][o_76, f_34] || Heap[null, deeper#sm(Heap[Heap[r_1, next], next])][o_76, f_34] ==> newPMask[o_76, f_34]
          );
          Heap := Heap[null, deeper#sm(Heap[r_1, next]):=newPMask];
        }
        assume state(Heap, Mask);
    i := (if Heap[r_1, next] == null then 0 else Heap[Heap[r_1, next], f_7]);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t6
// ==================================================

procedure t6(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  var i: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, deeper(r_1):=Mask[null, deeper(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: i := (unfolding acc(deeper(r), write) in
  //     (r.next == null ? 0 : (r.next.next == null ? 0 : r.next.next.f))) -- unfolding.vpr@57.5--57.122
    
    // -- Check definedness of (unfolding acc(deeper(r), write) in (r.next == null ? 0 : (r.next.next == null ? 0 : r.next.next.f)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume deeper#trigger(UnfoldingHeap, deeper(r_1));
      assume UnfoldingHeap[null, deeper(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, deeper(UnfoldingHeap[r_1, next])] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access deeper(r) (unfolding.vpr@57.5--57.122) [184229]"}
          perm <= UnfoldingMask[null, deeper(r_1)];
      }
      UnfoldingMask := UnfoldingMask[null, deeper(r_1):=UnfoldingMask[null, deeper(r_1)] - perm];
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[r_1, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, deeper(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, deeper(UnfoldingHeap[r_1, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(deeper(r_1), UnfoldingHeap[null, deeper(r_1)], deeper(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, deeper(UnfoldingHeap[r_1, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
        
        // -- Execute unfolding (for extra information)
          Unfolding1Heap := UnfoldingHeap;
          Unfolding1Mask := UnfoldingMask;
          assume deeper#trigger(Unfolding1Heap, deeper(Unfolding1Heap[r_1, next]));
          assume Unfolding1Heap[null, deeper(Unfolding1Heap[r_1, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[r_1, next], f_7]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[r_1, next], next]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[r_1, next], next] != null then Unfolding1Heap[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next])] else EmptyFrame))));
          ExhaleWellDef0Mask := Unfolding1Mask;
          ExhaleWellDef0Heap := Unfolding1Heap;
          perm := FullPerm;
          Unfolding1Mask := Unfolding1Mask[null, deeper(Unfolding1Heap[r_1, next]):=Unfolding1Mask[null, deeper(Unfolding1Heap[r_1, next])] - perm];
          perm := FullPerm;
          assume Unfolding1Heap[r_1, next] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[r_1, next], f_7:=Unfolding1Mask[Unfolding1Heap[r_1, next], f_7] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          perm := FullPerm;
          assume Unfolding1Heap[r_1, next] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[r_1, next], next:=Unfolding1Mask[Unfolding1Heap[r_1, next], next] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          if (Unfolding1Heap[Unfolding1Heap[r_1, next], next] != null) {
            perm := FullPerm;
            Unfolding1Mask := Unfolding1Mask[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=Unfolding1Mask[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(deeper(Unfolding1Heap[r_1, next]), Unfolding1Heap[null, deeper(Unfolding1Heap[r_1, next])], deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next]), Unfolding1Heap[null, deeper(Unfolding1Heap[Unfolding1Heap[r_1, next], next])]);
            assume state(Unfolding1Heap, Unfolding1Mask);
            
            // -- Free assumptions (inhale module)
              Unfolding1Heap := Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next])][Unfolding1Heap[Unfolding1Heap[r_1, next], next], f_7:=true]];
              Unfolding1Heap := Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next])][Unfolding1Heap[Unfolding1Heap[r_1, next], next], next:=true]];
              if (Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next] != null) {
                havoc newPMask;
                assume (forall <A, B> o_29: Ref, f_81: (Field A B) ::
                  { newPMask[o_29, f_81] }
                  Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next])][o_29, f_81] || Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[r_1, next], next], next])][o_29, f_81] ==> newPMask[o_29, f_81]
                );
                Unfolding1Heap := Unfolding1Heap[null, deeper#sm(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=newPMask];
              }
              assume state(Unfolding1Heap, Unfolding1Mask);
          }
          assume state(Unfolding1Heap, Unfolding1Mask);
        
        // -- Free assumptions (inhale module)
          UnfoldingHeap := UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next]):=UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next])][UnfoldingHeap[r_1, next], f_7:=true]];
          UnfoldingHeap := UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next]):=UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next])][UnfoldingHeap[r_1, next], next:=true]];
          if (UnfoldingHeap[UnfoldingHeap[r_1, next], next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_51: Ref, f_46: (Field A B) ::
              { newPMask[o_51, f_46] }
              UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next])][o_51, f_46] || UnfoldingHeap[null, deeper#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next])][o_51, f_46] ==> newPMask[o_51, f_46]
            );
            UnfoldingHeap := UnfoldingHeap[null, deeper#sm(UnfoldingHeap[r_1, next]):=newPMask];
          }
          assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access r.next (unfolding.vpr@57.5--57.122) [184230]"}
        HasDirectPerm(UnfoldingMask, r_1, next);
      if (UnfoldingHeap[r_1, next] == null) {
      } else {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access r.next (unfolding.vpr@57.5--57.122) [184231]"}
          HasDirectPerm(UnfoldingMask, r_1, next);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access r.next.next (unfolding.vpr@57.5--57.122) [184232]"}
          HasDirectPerm(UnfoldingMask, UnfoldingHeap[r_1, next], next);
        if (UnfoldingHeap[UnfoldingHeap[r_1, next], next] == null) {
        } else {
          assert {:msg "  Assignment might fail. There might be insufficient permission to access r.next (unfolding.vpr@57.5--57.122) [184233]"}
            HasDirectPerm(UnfoldingMask, r_1, next);
          assert {:msg "  Assignment might fail. There might be insufficient permission to access r.next.next (unfolding.vpr@57.5--57.122) [184234]"}
            HasDirectPerm(UnfoldingMask, UnfoldingHeap[r_1, next], next);
          assert {:msg "  Assignment might fail. There might be insufficient permission to access r.next.next.f (unfolding.vpr@57.5--57.122) [184235]"}
            HasDirectPerm(UnfoldingMask, UnfoldingHeap[UnfoldingHeap[r_1, next], next], f_7);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, deeper#sm(r_1):=Heap[null, deeper#sm(r_1)][r_1, f_7:=true]];
        Heap := Heap[null, deeper#sm(r_1):=Heap[null, deeper#sm(r_1)][r_1, next:=true]];
        if (Heap[r_1, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_77: Ref, f_52: (Field A B) ::
            { newPMask[o_77, f_52] }
            Heap[null, deeper#sm(r_1)][o_77, f_52] || Heap[null, deeper#sm(Heap[r_1, next])][o_77, f_52] ==> newPMask[o_77, f_52]
          );
          Heap := Heap[null, deeper#sm(r_1):=newPMask];
        }
        assume state(Heap, Mask);
    i := (if Heap[r_1, next] == null then 0 else (if Heap[Heap[r_1, next], next] == null then 0 else Heap[Heap[Heap[r_1, next], next], f_7]));
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t7
// ==================================================

procedure t7(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, strange(r_1):=Mask[null, strange(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert false -- unfolding.vpr@76.4--76.16
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (unfolding.vpr@76.11--76.16) [184236]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t8
// ==================================================

procedure t8(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, strange(r_1):=Mask[null, strange(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert (unfolding acc(strange(r), write) in false) -- unfolding.vpr@83.3--83.39
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (unfolding acc(strange(r), write) in false)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume strange#trigger(UnfoldingHeap, strange(r_1));
      assume UnfoldingHeap[null, strange(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[r_1, next], f_7]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[r_1, next], next]), UnfoldingHeap[null, strange(r_1)])) else EmptyFrame))));
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access strange(r) (unfolding.vpr@83.10--83.39) [184237]"}
          perm <= UnfoldingMask[null, strange(r_1)];
      }
      UnfoldingMask := UnfoldingMask[null, strange(r_1):=UnfoldingMask[null, strange(r_1)] - perm];
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[r_1, next] != null) {
        perm := FullPerm;
        assume UnfoldingHeap[r_1, next] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[r_1, next], f_7:=UnfoldingMask[UnfoldingHeap[r_1, next], f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[r_1, next] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[r_1, next], next:=UnfoldingMask[UnfoldingHeap[r_1, next], next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, strange(r_1):=UnfoldingMask[null, strange(r_1)] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(strange(r_1), UnfoldingHeap[null, strange(r_1)], strange(r_1), UnfoldingHeap[null, strange(r_1)]);
        assume state(UnfoldingHeap, UnfoldingMask);
        
        // -- Execute unfolding (for extra information)
          Unfolding1Heap := UnfoldingHeap;
          Unfolding1Mask := UnfoldingMask;
          assume strange#trigger(Unfolding1Heap, strange(r_1));
          assume Unfolding1Heap[null, strange(r_1)] == CombineFrames(FrameFragment(Unfolding1Heap[r_1, f_7]), CombineFrames(FrameFragment(Unfolding1Heap[r_1, next]), FrameFragment((if Unfolding1Heap[r_1, next] != null then CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[r_1, next], f_7]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[r_1, next], next]), Unfolding1Heap[null, strange(r_1)])) else EmptyFrame))));
          ExhaleWellDef1Mask := Unfolding1Mask;
          ExhaleWellDef1Heap := Unfolding1Heap;
          perm := FullPerm;
          Unfolding1Mask := Unfolding1Mask[null, strange(r_1):=Unfolding1Mask[null, strange(r_1)] - perm];
          perm := FullPerm;
          assume r_1 != null;
          Unfolding1Mask := Unfolding1Mask[r_1, f_7:=Unfolding1Mask[r_1, f_7] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          perm := FullPerm;
          assume r_1 != null;
          Unfolding1Mask := Unfolding1Mask[r_1, next:=Unfolding1Mask[r_1, next] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          if (Unfolding1Heap[r_1, next] != null) {
            perm := FullPerm;
            assume Unfolding1Heap[r_1, next] != null;
            Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[r_1, next], f_7:=Unfolding1Mask[Unfolding1Heap[r_1, next], f_7] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            perm := FullPerm;
            assume Unfolding1Heap[r_1, next] != null;
            Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[r_1, next], next:=Unfolding1Mask[Unfolding1Heap[r_1, next], next] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            perm := FullPerm;
            Unfolding1Mask := Unfolding1Mask[null, strange(r_1):=Unfolding1Mask[null, strange(r_1)] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(strange(r_1), Unfolding1Heap[null, strange(r_1)], strange(r_1), Unfolding1Heap[null, strange(r_1)]);
            assume state(Unfolding1Heap, Unfolding1Mask);
            
            // -- Free assumptions (inhale module)
              Unfolding1Heap := Unfolding1Heap[null, strange#sm(r_1):=Unfolding1Heap[null, strange#sm(r_1)][r_1, f_7:=true]];
              Unfolding1Heap := Unfolding1Heap[null, strange#sm(r_1):=Unfolding1Heap[null, strange#sm(r_1)][r_1, next:=true]];
              if (Unfolding1Heap[r_1, next] != null) {
                Unfolding1Heap := Unfolding1Heap[null, strange#sm(r_1):=Unfolding1Heap[null, strange#sm(r_1)][Unfolding1Heap[r_1, next], f_7:=true]];
                Unfolding1Heap := Unfolding1Heap[null, strange#sm(r_1):=Unfolding1Heap[null, strange#sm(r_1)][Unfolding1Heap[r_1, next], next:=true]];
                havoc newPMask;
                assume (forall <A, B> o_63: Ref, f_86: (Field A B) ::
                  { newPMask[o_63, f_86] }
                  Unfolding1Heap[null, strange#sm(r_1)][o_63, f_86] || Unfolding1Heap[null, strange#sm(r_1)][o_63, f_86] ==> newPMask[o_63, f_86]
                );
                Unfolding1Heap := Unfolding1Heap[null, strange#sm(r_1):=newPMask];
              }
              assume state(Unfolding1Heap, Unfolding1Mask);
          }
          assume state(Unfolding1Heap, Unfolding1Mask);
        
        // -- Free assumptions (inhale module)
          UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=UnfoldingHeap[null, strange#sm(r_1)][r_1, f_7:=true]];
          UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=UnfoldingHeap[null, strange#sm(r_1)][r_1, next:=true]];
          if (UnfoldingHeap[r_1, next] != null) {
            UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=UnfoldingHeap[null, strange#sm(r_1)][UnfoldingHeap[r_1, next], f_7:=true]];
            UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=UnfoldingHeap[null, strange#sm(r_1)][UnfoldingHeap[r_1, next], next:=true]];
            havoc newPMask;
            assume (forall <A, B> o_78: Ref, f_49: (Field A B) ::
              { newPMask[o_78, f_49] }
              UnfoldingHeap[null, strange#sm(r_1)][o_78, f_49] || UnfoldingHeap[null, strange#sm(r_1)][o_78, f_49] ==> newPMask[o_78, f_49]
            );
            UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=newPMask];
          }
          assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, strange#sm(r_1):=Heap[null, strange#sm(r_1)][r_1, f_7:=true]];
        Heap := Heap[null, strange#sm(r_1):=Heap[null, strange#sm(r_1)][r_1, next:=true]];
        if (Heap[r_1, next] != null) {
          Heap := Heap[null, strange#sm(r_1):=Heap[null, strange#sm(r_1)][Heap[r_1, next], f_7:=true]];
          Heap := Heap[null, strange#sm(r_1):=Heap[null, strange#sm(r_1)][Heap[r_1, next], next:=true]];
          havoc newPMask;
          assume (forall <A, B> o_79: Ref, f_87: (Field A B) ::
            { newPMask[o_79, f_87] }
            Heap[null, strange#sm(r_1)][o_79, f_87] || Heap[null, strange#sm(r_1)][o_79, f_87] ==> newPMask[o_79, f_87]
          );
          Heap := Heap[null, strange#sm(r_1):=newPMask];
        }
        assume state(Heap, Mask);
    assert {:msg "  Assert might fail. Assertion false might not hold. (unfolding.vpr@83.10--83.39) [184238]"}
      false;
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, strange#sm(r_1):=Heap[null, strange#sm(r_1)][r_1, f_7:=true]];
      Heap := Heap[null, strange#sm(r_1):=Heap[null, strange#sm(r_1)][r_1, next:=true]];
      if (Heap[r_1, next] != null) {
        Heap := Heap[null, strange#sm(r_1):=Heap[null, strange#sm(r_1)][Heap[r_1, next], f_7:=true]];
        Heap := Heap[null, strange#sm(r_1):=Heap[null, strange#sm(r_1)][Heap[r_1, next], next:=true]];
        havoc newPMask;
        assume (forall <A, B> o_80: Ref, f_88: (Field A B) ::
          { newPMask[o_80, f_88] }
          Heap[null, strange#sm(r_1)][o_80, f_88] || Heap[null, strange#sm(r_1)][o_80, f_88] ==> newPMask[o_80, f_88]
        );
        Heap := Heap[null, strange#sm(r_1):=newPMask];
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t9
// ==================================================

procedure t9(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, strange(r_1):=Mask[null, strange(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: unfold acc(strange(r), write) -- unfolding.vpr@89.3--89.20
    assume strange#trigger(Heap, strange(r_1));
    assume Heap[null, strange(r_1)] == CombineFrames(FrameFragment(Heap[r_1, f_7]), CombineFrames(FrameFragment(Heap[r_1, next]), FrameFragment((if Heap[r_1, next] != null then CombineFrames(FrameFragment(Heap[Heap[r_1, next], f_7]), CombineFrames(FrameFragment(Heap[Heap[r_1, next], next]), Heap[null, strange(r_1)])) else EmptyFrame))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding strange(r) might fail. There might be insufficient permission to access strange(r) (unfolding.vpr@89.3--89.20) [184241]"}
        perm <= Mask[null, strange(r_1)];
    }
    Mask := Mask[null, strange(r_1):=Mask[null, strange(r_1)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, strange(r_1))) {
        havoc newVersion;
        Heap := Heap[null, strange(r_1):=newVersion];
      }
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, next:=Mask[r_1, next] + perm];
    assume state(Heap, Mask);
    if (Heap[r_1, next] != null) {
      perm := FullPerm;
      assume Heap[r_1, next] != null;
      Mask := Mask[Heap[r_1, next], f_7:=Mask[Heap[r_1, next], f_7] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume Heap[r_1, next] != null;
      Mask := Mask[Heap[r_1, next], next:=Mask[Heap[r_1, next], next] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      Mask := Mask[null, strange(r_1):=Mask[null, strange(r_1)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(strange(r_1), Heap[null, strange(r_1)], strange(r_1), Heap[null, strange(r_1)]);
      assume state(Heap, Mask);
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume strange#trigger(UnfoldingHeap, strange(r_1));
        assume UnfoldingHeap[null, strange(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[r_1, next], f_7]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[r_1, next], next]), UnfoldingHeap[null, strange(r_1)])) else EmptyFrame))));
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, strange(r_1):=UnfoldingMask[null, strange(r_1)] - perm];
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[r_1, next] != null) {
          perm := FullPerm;
          assume UnfoldingHeap[r_1, next] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[r_1, next], f_7:=UnfoldingMask[UnfoldingHeap[r_1, next], f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume UnfoldingHeap[r_1, next] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[r_1, next], next:=UnfoldingMask[UnfoldingHeap[r_1, next], next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, strange(r_1):=UnfoldingMask[null, strange(r_1)] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(strange(r_1), UnfoldingHeap[null, strange(r_1)], strange(r_1), UnfoldingHeap[null, strange(r_1)]);
          assume state(UnfoldingHeap, UnfoldingMask);
          
          // -- Free assumptions (inhale module)
            UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=UnfoldingHeap[null, strange#sm(r_1)][r_1, f_7:=true]];
            UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=UnfoldingHeap[null, strange#sm(r_1)][r_1, next:=true]];
            if (UnfoldingHeap[r_1, next] != null) {
              UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=UnfoldingHeap[null, strange#sm(r_1)][UnfoldingHeap[r_1, next], f_7:=true]];
              UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=UnfoldingHeap[null, strange#sm(r_1)][UnfoldingHeap[r_1, next], next:=true]];
              havoc newPMask;
              assume (forall <A, B> o_82: Ref, f_70: (Field A B) ::
                { newPMask[o_82, f_70] }
                UnfoldingHeap[null, strange#sm(r_1)][o_82, f_70] || UnfoldingHeap[null, strange#sm(r_1)][o_82, f_70] ==> newPMask[o_82, f_70]
              );
              UnfoldingHeap := UnfoldingHeap[null, strange#sm(r_1):=newPMask];
            }
            assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Free assumptions (inhale module)
        Heap := Heap[null, strange#sm(r_1):=Heap[null, strange#sm(r_1)][r_1, f_7:=true]];
        Heap := Heap[null, strange#sm(r_1):=Heap[null, strange#sm(r_1)][r_1, next:=true]];
        if (Heap[r_1, next] != null) {
          Heap := Heap[null, strange#sm(r_1):=Heap[null, strange#sm(r_1)][Heap[r_1, next], f_7:=true]];
          Heap := Heap[null, strange#sm(r_1):=Heap[null, strange#sm(r_1)][Heap[r_1, next], next:=true]];
          havoc newPMask;
          assume (forall <A, B> o_81: Ref, f_57: (Field A B) ::
            { newPMask[o_81, f_57] }
            Heap[null, strange#sm(r_1)][o_81, f_57] || Heap[null, strange#sm(r_1)][o_81, f_57] ==> newPMask[o_81, f_57]
          );
          Heap := Heap[null, strange#sm(r_1):=newPMask];
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert r.next == null -- unfolding.vpr@91.3--91.24
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of r.next == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access r.next (unfolding.vpr@91.10--91.24) [184247]"}
        HasDirectPerm(ExhaleWellDef0Mask, r_1, next);
    assert {:msg "  Assert might fail. Assertion r.next == null might not hold. (unfolding.vpr@91.10--91.24) [184248]"}
      Heap[r_1, next] == null;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t10
// ==================================================

procedure t10(r_1: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newPMask: PMaskType;
  var j_9: int;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleHeap: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    PostMask := PostMask[null, valid(r_1):=PostMask[null, valid(r_1)] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (unfolding acc(valid(r), write) in r.f > 2)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume valid#trigger(UnfoldingHeap, valid(r_1));
      assume UnfoldingHeap[null, valid(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access valid(r) (unfolding.vpr@96.11--96.59) [184249]"}
          perm <= UnfoldingMask[null, valid(r_1)];
      }
      UnfoldingMask := UnfoldingMask[null, valid(r_1):=UnfoldingMask[null, valid(r_1)] - perm];
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[r_1, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(r_1), UnfoldingHeap[null, valid(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (unfolding.vpr@96.11--96.59) [184250]"}
        HasDirectPerm(UnfoldingMask, r_1, f_7);
      
      // -- Free assumptions (exp module)
        PostHeap := PostHeap[null, valid#sm(r_1):=PostHeap[null, valid#sm(r_1)][r_1, f_7:=true]];
        PostHeap := PostHeap[null, valid#sm(r_1):=PostHeap[null, valid#sm(r_1)][r_1, next:=true]];
        if (PostHeap[r_1, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_83: Ref, f_89: (Field A B) ::
            { newPMask[o_83, f_89] }
            PostHeap[null, valid#sm(r_1)][o_83, f_89] || PostHeap[null, valid#sm(PostHeap[r_1, next])][o_83, f_89] ==> newPMask[o_83, f_89]
          );
          PostHeap := PostHeap[null, valid#sm(r_1):=newPMask];
        }
        assume state(PostHeap, PostMask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume valid#trigger(UnfoldingHeap, valid(r_1));
      assume UnfoldingHeap[null, valid(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, valid(r_1):=UnfoldingMask[null, valid(r_1)] - perm];
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[r_1, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(r_1), UnfoldingHeap[null, valid(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assume PostHeap[r_1, f_7] > 2;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: j := i -- unfolding.vpr@98.3--98.19
    j_9 := i;
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(valid(r), write) -- unfolding.vpr@99.3--99.18
    assume valid#trigger(Heap, valid(r_1));
    assume Heap[null, valid(r_1)] == CombineFrames(FrameFragment(Heap[r_1, f_7]), CombineFrames(FrameFragment(Heap[r_1, next]), FrameFragment((if Heap[r_1, next] != null then Heap[null, valid(Heap[r_1, next])] else EmptyFrame))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(r) might fail. There might be insufficient permission to access valid(r) (unfolding.vpr@99.3--99.18) [184253]"}
        perm <= Mask[null, valid(r_1)];
    }
    Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid(r_1))) {
        havoc newVersion;
        Heap := Heap[null, valid(r_1):=newVersion];
      }
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, next:=Mask[r_1, next] + perm];
    assume state(Heap, Mask);
    if (Heap[r_1, next] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[r_1, next]):=Mask[null, valid(Heap[r_1, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(r_1), Heap[null, valid(r_1)], valid(Heap[r_1, next]), Heap[null, valid(Heap[r_1, next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: r.f := 3 -- unfolding.vpr@100.3--100.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access r.f (unfolding.vpr@100.3--100.11) [184257]"}
      FullPerm == Mask[r_1, f_7];
    Heap := Heap[r_1, f_7:=3];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(valid(r), write) -- unfolding.vpr@101.3--101.16
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(r) might fail. There might be insufficient permission to access r.f (unfolding.vpr@101.3--101.16) [184260]"}
        perm <= Mask[r_1, f_7];
    }
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(r) might fail. There might be insufficient permission to access r.next (unfolding.vpr@101.3--101.16) [184262]"}
        perm <= Mask[r_1, next];
    }
    Mask := Mask[r_1, next:=Mask[r_1, next] - perm];
    if (Heap[r_1, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(r) might fail. There might be insufficient permission to access valid(r.next) (unfolding.vpr@101.3--101.16) [184264]"}
          perm <= Mask[null, valid(Heap[r_1, next])];
      }
      Mask := Mask[null, valid(Heap[r_1, next]):=Mask[null, valid(Heap[r_1, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(valid(r_1), Heap[null, valid(r_1)], valid(Heap[r_1, next]), Heap[null, valid(Heap[r_1, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume valid#trigger(Heap, valid(r_1));
    assume Heap[null, valid(r_1)] == CombineFrames(FrameFragment(Heap[r_1, f_7]), CombineFrames(FrameFragment(Heap[r_1, next]), FrameFragment((if Heap[r_1, next] != null then Heap[null, valid(Heap[r_1, next])] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, valid(r_1))) {
      Heap := Heap[null, valid#sm(r_1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, valid(r_1):=freshVersion];
    }
    Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, f_7:=true]];
    Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, next:=true]];
    if (Heap[r_1, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_84: Ref, f_71: (Field A B) ::
        { newPMask[o_84, f_71] }
        Heap[null, valid#sm(r_1)][o_84, f_71] || Heap[null, valid#sm(Heap[r_1, next])][o_84, f_71] ==> newPMask[o_84, f_71]
      );
      Heap := Heap[null, valid#sm(r_1):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: while (j > 0) -- unfolding.vpr@102.3--109.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        
        // -- Execute definedness check of acc(valid(r), write) && (unfolding acc(valid(r), write) in r.f > 2) without enforcing the checks (e.g., to gain more information)
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume valid#trigger(UnfoldingHeap, valid(r_1));
          assume UnfoldingHeap[null, valid(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] else EmptyFrame))));
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant acc(valid(r), write) && (unfolding acc(valid(r), write) in r.f > 2) might not hold on entry. There might be insufficient permission to access valid(r) (unfolding.vpr@103.15--103.63) [184266]"}
              perm <= UnfoldingMask[null, valid(r_1)];
          }
          UnfoldingMask := UnfoldingMask[null, valid(r_1):=UnfoldingMask[null, valid(r_1)] - perm];
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[r_1, next] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(valid(r_1), UnfoldingHeap[null, valid(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, f_7:=true]];
            Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, next:=true]];
            if (Heap[r_1, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_85: Ref, f_60: (Field A B) ::
                { newPMask[o_85, f_60] }
                Heap[null, valid#sm(r_1)][o_85, f_60] || Heap[null, valid#sm(Heap[r_1, next])][o_85, f_60] ==> newPMask[o_85, f_60]
              );
              Heap := Heap[null, valid#sm(r_1):=newPMask];
            }
            assume state(Heap, Mask);
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(valid(r), write) && (unfolding acc(valid(r), write) in r.f > 2) might not hold on entry. There might be insufficient permission to access valid(r) (unfolding.vpr@103.15--103.63) [184267]"}
            perm <= Mask[null, valid(r_1)];
        }
        Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] - perm];
        
        // -- Execute unfolding (for extra information)
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume valid#trigger(UnfoldingHeap, valid(r_1));
          assume UnfoldingHeap[null, valid(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] else EmptyFrame))));
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant acc(valid(r), write) && (unfolding acc(valid(r), write) in r.f > 2) might not hold on entry. There might be insufficient permission to access valid(r) (unfolding.vpr@103.15--103.63) [184268]"}
              perm <= UnfoldingMask[null, valid(r_1)];
          }
          UnfoldingMask := UnfoldingMask[null, valid(r_1):=UnfoldingMask[null, valid(r_1)] - perm];
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[r_1, next] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(valid(r_1), UnfoldingHeap[null, valid(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Loop invariant acc(valid(r), write) && (unfolding acc(valid(r), write) in r.f > 2) might not hold on entry. Assertion r.f > 2 might not hold. (unfolding.vpr@103.15--103.63) [184269]"}
          Heap[r_1, f_7] > 2;
        
        // -- Free assumptions (exhale module)
          Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, f_7:=true]];
          Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, next:=true]];
          if (Heap[r_1, next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_69: Ref, f_90: (Field A B) ::
              { newPMask[o_69, f_90] }
              Heap[null, valid#sm(r_1)][o_69, f_90] || Heap[null, valid#sm(Heap[r_1, next])][o_69, f_90] ==> newPMask[o_69, f_90]
            );
            Heap := Heap[null, valid#sm(r_1):=newPMask];
          }
          assume state(Heap, Mask);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc j_9;
    
    // -- Check definedness of invariant
      if (*) {
        perm := FullPerm;
        Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] + perm];
        assume state(Heap, Mask);
        
        // -- Check definedness of (unfolding acc(valid(r), write) in r.f > 2)
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume valid#trigger(UnfoldingHeap, valid(r_1));
          assume UnfoldingHeap[null, valid(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] else EmptyFrame))));
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access valid(r) (unfolding.vpr@103.15--103.63) [184270]"}
              perm <= UnfoldingMask[null, valid(r_1)];
          }
          UnfoldingMask := UnfoldingMask[null, valid(r_1):=UnfoldingMask[null, valid(r_1)] - perm];
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[r_1, next] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(valid(r_1), UnfoldingHeap[null, valid(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (unfolding.vpr@103.15--103.63) [184271]"}
            HasDirectPerm(UnfoldingMask, r_1, f_7);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, f_7:=true]];
            Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, next:=true]];
            if (Heap[r_1, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_86: Ref, f_91: (Field A B) ::
                { newPMask[o_86, f_91] }
                Heap[null, valid#sm(r_1)][o_86, f_91] || Heap[null, valid#sm(Heap[r_1, next])][o_86, f_91] ==> newPMask[o_86, f_91]
              );
              Heap := Heap[null, valid#sm(r_1):=newPMask];
            }
            assume state(Heap, Mask);
        
        // -- Execute unfolding (for extra information)
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume valid#trigger(UnfoldingHeap, valid(r_1));
          assume UnfoldingHeap[null, valid(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] else EmptyFrame))));
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, valid(r_1):=UnfoldingMask[null, valid(r_1)] - perm];
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[r_1, next] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(valid(r_1), UnfoldingHeap[null, valid(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
        assume Heap[r_1, f_7] > 2;
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
        perm := FullPerm;
        Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] + perm];
        assume state(Heap, Mask);
        
        // -- Execute unfolding (for extra information)
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume valid#trigger(UnfoldingHeap, valid(r_1));
          assume UnfoldingHeap[null, valid(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] else EmptyFrame))));
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, valid(r_1):=UnfoldingMask[null, valid(r_1)] - perm];
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[r_1, next] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(valid(r_1), UnfoldingHeap[null, valid(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
        assume Heap[r_1, f_7] > 2;
        
        // -- Free assumptions (inhale module)
          Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, f_7:=true]];
          Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, next:=true]];
          if (Heap[r_1, next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_87: Ref, f_61: (Field A B) ::
              { newPMask[o_87, f_61] }
              Heap[null, valid#sm(r_1)][o_87, f_61] || Heap[null, valid#sm(Heap[r_1, next])][o_87, f_61] ==> newPMask[o_87, f_61]
            );
            Heap := Heap[null, valid#sm(r_1):=newPMask];
          }
          assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Execute definedness check of acc(valid(r), write) && (unfolding acc(valid(r), write) in r.f > 2) without enforcing the checks (e.g., to gain more information)
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume valid#trigger(UnfoldingHeap, valid(r_1));
          assume UnfoldingHeap[null, valid(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] else EmptyFrame))));
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  An internal error occurred. There might be insufficient permission to access valid(r) (unfolding.vpr@103.15--103.63) [184272]"}
              perm <= UnfoldingMask[null, valid(r_1)];
          }
          UnfoldingMask := UnfoldingMask[null, valid(r_1):=UnfoldingMask[null, valid(r_1)] - perm];
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[r_1, next] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(valid(r_1), UnfoldingHeap[null, valid(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, f_7:=true]];
            Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, next:=true]];
            if (Heap[r_1, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_88: Ref, f_78: (Field A B) ::
                { newPMask[o_88, f_78] }
                Heap[null, valid#sm(r_1)][o_88, f_78] || Heap[null, valid#sm(Heap[r_1, next])][o_88, f_78] ==> newPMask[o_88, f_78]
              );
              Heap := Heap[null, valid#sm(r_1):=newPMask];
            }
            assume state(Heap, Mask);
        // Check and assume guard
        assume j_9 > 0;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: j := j - 1 -- unfolding.vpr@105.5--105.15
            j_9 := j_9 - 1;
            assume state(Heap, Mask);
          
          // -- Translating statement: unfold acc(valid(r), write) -- unfolding.vpr@106.5--106.20
            assume valid#trigger(Heap, valid(r_1));
            assume Heap[null, valid(r_1)] == CombineFrames(FrameFragment(Heap[r_1, f_7]), CombineFrames(FrameFragment(Heap[r_1, next]), FrameFragment((if Heap[r_1, next] != null then Heap[null, valid(Heap[r_1, next])] else EmptyFrame))));
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Unfolding valid(r) might fail. There might be insufficient permission to access valid(r) (unfolding.vpr@106.5--106.20) [184273]"}
                perm <= Mask[null, valid(r_1)];
            }
            Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] - perm];
            
            // -- Update version of predicate
              if (!HasDirectPerm(Mask, null, valid(r_1))) {
                havoc newVersion;
                Heap := Heap[null, valid(r_1):=newVersion];
              }
            perm := FullPerm;
            assume r_1 != null;
            Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
            assume state(Heap, Mask);
            perm := FullPerm;
            assume r_1 != null;
            Mask := Mask[r_1, next:=Mask[r_1, next] + perm];
            assume state(Heap, Mask);
            if (Heap[r_1, next] != null) {
              perm := FullPerm;
              Mask := Mask[null, valid(Heap[r_1, next]):=Mask[null, valid(Heap[r_1, next])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(r_1), Heap[null, valid(r_1)], valid(Heap[r_1, next]), Heap[null, valid(Heap[r_1, next])]);
              assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: r.f := r.f + 1 -- unfolding.vpr@107.5--107.19
            
            // -- Check definedness of r.f + 1
              assert {:msg "  Assignment might fail. There might be insufficient permission to access r.f (unfolding.vpr@107.5--107.19) [184274]"}
                HasDirectPerm(Mask, r_1, f_7);
            assert {:msg "  Assignment might fail. There might be insufficient permission to access r.f (unfolding.vpr@107.5--107.19) [184275]"}
              FullPerm == Mask[r_1, f_7];
            Heap := Heap[r_1, f_7:=Heap[r_1, f_7] + 1];
            assume state(Heap, Mask);
          
          // -- Translating statement: fold acc(valid(r), write) -- unfolding.vpr@108.5--108.18
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Folding valid(r) might fail. There might be insufficient permission to access r.f (unfolding.vpr@108.5--108.18) [184276]"}
                perm <= Mask[r_1, f_7];
            }
            Mask := Mask[r_1, f_7:=Mask[r_1, f_7] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Folding valid(r) might fail. There might be insufficient permission to access r.next (unfolding.vpr@108.5--108.18) [184277]"}
                perm <= Mask[r_1, next];
            }
            Mask := Mask[r_1, next:=Mask[r_1, next] - perm];
            if (Heap[r_1, next] != null) {
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Folding valid(r) might fail. There might be insufficient permission to access valid(r.next) (unfolding.vpr@108.5--108.18) [184278]"}
                  perm <= Mask[null, valid(Heap[r_1, next])];
              }
              Mask := Mask[null, valid(Heap[r_1, next]):=Mask[null, valid(Heap[r_1, next])] - perm];
              
              // -- Record predicate instance information
                assume InsidePredicate(valid(r_1), Heap[null, valid(r_1)], valid(Heap[r_1, next]), Heap[null, valid(Heap[r_1, next])]);
            }
            perm := FullPerm;
            Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume valid#trigger(Heap, valid(r_1));
            assume Heap[null, valid(r_1)] == CombineFrames(FrameFragment(Heap[r_1, f_7]), CombineFrames(FrameFragment(Heap[r_1, next]), FrameFragment((if Heap[r_1, next] != null then Heap[null, valid(Heap[r_1, next])] else EmptyFrame))));
            if (!HasDirectPerm(Mask, null, valid(r_1))) {
              Heap := Heap[null, valid#sm(r_1):=ZeroPMask];
              havoc freshVersion;
              Heap := Heap[null, valid(r_1):=freshVersion];
            }
            Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, f_7:=true]];
            Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, next:=true]];
            if (Heap[r_1, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_89: Ref, f_92: (Field A B) ::
                { newPMask[o_89, f_92] }
                Heap[null, valid#sm(r_1)][o_89, f_92] || Heap[null, valid#sm(Heap[r_1, next])][o_89, f_92] ==> newPMask[o_89, f_92]
              );
              Heap := Heap[null, valid#sm(r_1):=newPMask];
            }
            assume state(Heap, Mask);
            assume state(Heap, Mask);
        // Exhale invariant
        
        // -- Execute definedness check of acc(valid(r), write) && (unfolding acc(valid(r), write) in r.f > 2) without enforcing the checks (e.g., to gain more information)
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume valid#trigger(UnfoldingHeap, valid(r_1));
          assume UnfoldingHeap[null, valid(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] else EmptyFrame))));
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant acc(valid(r), write) && (unfolding acc(valid(r), write) in r.f > 2) might not be preserved. There might be insufficient permission to access valid(r) (unfolding.vpr@103.15--103.63) [184279]"}
              perm <= UnfoldingMask[null, valid(r_1)];
          }
          UnfoldingMask := UnfoldingMask[null, valid(r_1):=UnfoldingMask[null, valid(r_1)] - perm];
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[r_1, next] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(valid(r_1), UnfoldingHeap[null, valid(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, f_7:=true]];
            Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, next:=true]];
            if (Heap[r_1, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_90: Ref, f_93: (Field A B) ::
                { newPMask[o_90, f_93] }
                Heap[null, valid#sm(r_1)][o_90, f_93] || Heap[null, valid#sm(Heap[r_1, next])][o_90, f_93] ==> newPMask[o_90, f_93]
              );
              Heap := Heap[null, valid#sm(r_1):=newPMask];
            }
            assume state(Heap, Mask);
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(valid(r), write) && (unfolding acc(valid(r), write) in r.f > 2) might not be preserved. There might be insufficient permission to access valid(r) (unfolding.vpr@103.15--103.63) [184280]"}
            perm <= Mask[null, valid(r_1)];
        }
        Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] - perm];
        
        // -- Execute unfolding (for extra information)
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume valid#trigger(UnfoldingHeap, valid(r_1));
          assume UnfoldingHeap[null, valid(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] else EmptyFrame))));
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant acc(valid(r), write) && (unfolding acc(valid(r), write) in r.f > 2) might not be preserved. There might be insufficient permission to access valid(r) (unfolding.vpr@103.15--103.63) [184281]"}
              perm <= UnfoldingMask[null, valid(r_1)];
          }
          UnfoldingMask := UnfoldingMask[null, valid(r_1):=UnfoldingMask[null, valid(r_1)] - perm];
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume r_1 != null;
          UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[r_1, next] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(valid(r_1), UnfoldingHeap[null, valid(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Loop invariant acc(valid(r), write) && (unfolding acc(valid(r), write) in r.f > 2) might not be preserved. Assertion r.f > 2 might not hold. (unfolding.vpr@103.15--103.63) [184282]"}
          Heap[r_1, f_7] > 2;
        
        // -- Free assumptions (exhale module)
          Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, f_7:=true]];
          Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, next:=true]];
          if (Heap[r_1, next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_91: Ref, f_79: (Field A B) ::
              { newPMask[o_91, f_79] }
              Heap[null, valid#sm(r_1)][o_91, f_79] || Heap[null, valid#sm(Heap[r_1, next])][o_91, f_79] ==> newPMask[o_91, f_79]
            );
            Heap := Heap[null, valid#sm(r_1):=newPMask];
          }
          assume state(Heap, Mask);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(j_9 > 0);
      assume state(Heap, Mask);
      perm := FullPerm;
      Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] + perm];
      assume state(Heap, Mask);
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume valid#trigger(UnfoldingHeap, valid(r_1));
        assume UnfoldingHeap[null, valid(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] else EmptyFrame))));
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(r_1):=UnfoldingMask[null, valid(r_1)] - perm];
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[r_1, next] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(valid(r_1), UnfoldingHeap[null, valid(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      assume Heap[r_1, f_7] > 2;
      
      // -- Free assumptions (inhale module)
        Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, f_7:=true]];
        Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, next:=true]];
        if (Heap[r_1, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_64: Ref, f_94: (Field A B) ::
            { newPMask[o_64, f_94] }
            Heap[null, valid#sm(r_1)][o_64, f_94] || Heap[null, valid#sm(Heap[r_1, next])][o_64, f_94] ==> newPMask[o_64, f_94]
          );
          Heap := Heap[null, valid#sm(r_1):=newPMask];
        }
        assume state(Heap, Mask);
      assume state(Heap, Mask);
      
      // -- Execute definedness check of acc(valid(r), write) && (unfolding acc(valid(r), write) in r.f > 2) without enforcing the checks (e.g., to gain more information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume valid#trigger(UnfoldingHeap, valid(r_1));
        assume UnfoldingHeap[null, valid(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] else EmptyFrame))));
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  An internal error occurred. There might be insufficient permission to access valid(r) (unfolding.vpr@103.15--103.63) [184283]"}
            perm <= UnfoldingMask[null, valid(r_1)];
        }
        UnfoldingMask := UnfoldingMask[null, valid(r_1):=UnfoldingMask[null, valid(r_1)] - perm];
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[r_1, next] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(valid(r_1), UnfoldingHeap[null, valid(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, f_7:=true]];
          Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, next:=true]];
          if (Heap[r_1, next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_92: Ref, f_68: (Field A B) ::
              { newPMask[o_92, f_68] }
              Heap[null, valid#sm(r_1)][o_92, f_68] || Heap[null, valid#sm(Heap[r_1, next])][o_92, f_68] ==> newPMask[o_92, f_68]
            );
            Heap := Heap[null, valid#sm(r_1):=newPMask];
          }
          assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of t10 might not hold. There might be insufficient permission to access valid(r) (unfolding.vpr@96.11--96.59) [184284]"}
        perm <= Mask[null, valid(r_1)];
    }
    Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] - perm];
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume valid#trigger(UnfoldingHeap, valid(r_1));
      assume UnfoldingHeap[null, valid(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] else EmptyFrame))));
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of t10 might not hold. There might be insufficient permission to access valid(r) (unfolding.vpr@96.11--96.59) [184285]"}
          perm <= UnfoldingMask[null, valid(r_1)];
      }
      UnfoldingMask := UnfoldingMask[null, valid(r_1):=UnfoldingMask[null, valid(r_1)] - perm];
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[r_1, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(r_1), UnfoldingHeap[null, valid(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assert {:msg "  Postcondition of t10 might not hold. Assertion r.f > 2 might not hold. (unfolding.vpr@96.11--96.59) [184286]"}
      Heap[r_1, f_7] > 2;
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, f_7:=true]];
      Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, next:=true]];
      if (Heap[r_1, next] != null) {
        havoc newPMask;
        assume (forall <A, B> o_68: Ref, f_58: (Field A B) ::
          { newPMask[o_68, f_58] }
          Heap[null, valid#sm(r_1)][o_68, f_58] || Heap[null, valid#sm(Heap[r_1, next])][o_68, f_58] ==> newPMask[o_68, f_58]
        );
        Heap := Heap[null, valid#sm(r_1):=newPMask];
      }
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method t11
// ==================================================

procedure t11(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var newPMask: PMaskType;
  var newVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    assume r_1 != null;
    PostMask := PostMask[r_1, f_7:=PostMask[r_1, f_7] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of r.f > 2
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (unfolding.vpr@114.11--114.30) [184287]"}
        HasDirectPerm(PostMask, r_1, f_7);
    assume PostHeap[r_1, f_7] > 2;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: t10(r, 0) -- unfolding.vpr@116.3--116.11
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method t10 might not hold. There might be insufficient permission to access valid(r) (unfolding.vpr@116.3--116.11) [184288]"}
          perm <= Mask[null, valid(r_1)];
      }
      Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] + perm];
      assume state(Heap, Mask);
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume valid#trigger(UnfoldingHeap, valid(r_1));
        assume UnfoldingHeap[null, valid(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] else EmptyFrame))));
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(r_1):=UnfoldingMask[null, valid(r_1)] - perm];
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[r_1, next] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(valid(r_1), UnfoldingHeap[null, valid(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      assume Heap[r_1, f_7] > 2;
      
      // -- Free assumptions (inhale module)
        Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, f_7:=true]];
        Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, next:=true]];
        if (Heap[r_1, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_93: Ref, f_95: (Field A B) ::
            { newPMask[o_93, f_95] }
            Heap[null, valid#sm(r_1)][o_93, f_95] || Heap[null, valid#sm(Heap[r_1, next])][o_93, f_95] ==> newPMask[o_93, f_95]
          );
          Heap := Heap[null, valid#sm(r_1):=newPMask];
        }
        assume state(Heap, Mask);
      assume state(Heap, Mask);
      
      // -- Execute definedness check of acc(valid(r), write) && (unfolding acc(valid(r), write) in r.f > 2) without enforcing the checks (e.g., to gain more information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume valid#trigger(UnfoldingHeap, valid(r_1));
        assume UnfoldingHeap[null, valid(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), FrameFragment((if UnfoldingHeap[r_1, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])] else EmptyFrame))));
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  An internal error occurred. There might be insufficient permission to access valid(r) (unfolding.vpr@96.11--96.59) [184289]"}
            perm <= UnfoldingMask[null, valid(r_1)];
        }
        UnfoldingMask := UnfoldingMask[null, valid(r_1):=UnfoldingMask[null, valid(r_1)] - perm];
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, f_7:=UnfoldingMask[r_1, f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[r_1, next] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(valid(r_1), UnfoldingHeap[null, valid(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, f_7:=true]];
          Heap := Heap[null, valid#sm(r_1):=Heap[null, valid#sm(r_1)][r_1, next:=true]];
          if (Heap[r_1, next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_65: Ref, f_96: (Field A B) ::
              { newPMask[o_65, f_96] }
              Heap[null, valid#sm(r_1)][o_65, f_96] || Heap[null, valid#sm(Heap[r_1, next])][o_65, f_96] ==> newPMask[o_65, f_96]
            );
            Heap := Heap[null, valid#sm(r_1):=newPMask];
          }
          assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(valid(r), write) -- unfolding.vpr@117.3--117.18
    assume valid#trigger(Heap, valid(r_1));
    assume Heap[null, valid(r_1)] == CombineFrames(FrameFragment(Heap[r_1, f_7]), CombineFrames(FrameFragment(Heap[r_1, next]), FrameFragment((if Heap[r_1, next] != null then Heap[null, valid(Heap[r_1, next])] else EmptyFrame))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(r) might fail. There might be insufficient permission to access valid(r) (unfolding.vpr@117.3--117.18) [184292]"}
        perm <= Mask[null, valid(r_1)];
    }
    Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid(r_1))) {
        havoc newVersion;
        Heap := Heap[null, valid(r_1):=newVersion];
      }
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, next:=Mask[r_1, next] + perm];
    assume state(Heap, Mask);
    if (Heap[r_1, next] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[r_1, next]):=Mask[null, valid(Heap[r_1, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(r_1), Heap[null, valid(r_1)], valid(Heap[r_1, next]), Heap[null, valid(Heap[r_1, next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of t11 might not hold. There might be insufficient permission to access r.f (unfolding.vpr@114.11--114.30) [184296]"}
        perm <= Mask[r_1, f_7];
    }
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] - perm];
    assert {:msg "  Postcondition of t11 might not hold. Assertion r.f > 2 might not hold. (unfolding.vpr@114.11--114.30) [184297]"}
      Heap[r_1, f_7] > 2;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method t12
// ==================================================

procedure t12(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, deeperfalse(r_1):=Mask[null, deeperfalse(r_1)] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (unfolding acc(deeperfalse(r), write) in true)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume deeperfalse#trigger(UnfoldingHeap, deeperfalse(r_1));
      assume UnfoldingHeap[null, deeperfalse(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access deeperfalse(r) (unfolding.vpr@125.12--125.67) [184298]"}
          perm <= UnfoldingMask[null, deeperfalse(r_1)];
      }
      UnfoldingMask := UnfoldingMask[null, deeperfalse(r_1):=UnfoldingMask[null, deeperfalse(r_1)] - perm];
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[r_1, next] != null;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(deeperfalse(r_1), UnfoldingHeap[null, deeperfalse(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
      assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Execute unfolding (for extra information)
        Unfolding1Heap := UnfoldingHeap;
        Unfolding1Mask := UnfoldingMask;
        assume valid#trigger(Unfolding1Heap, valid(Unfolding1Heap[r_1, next]));
        assume Unfolding1Heap[null, valid(Unfolding1Heap[r_1, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[r_1, next], f_7]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[r_1, next], next]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[r_1, next], next] != null then Unfolding1Heap[null, valid(Unfolding1Heap[Unfolding1Heap[r_1, next], next])] else EmptyFrame))));
        ExhaleWellDef0Mask := Unfolding1Mask;
        ExhaleWellDef0Heap := Unfolding1Heap;
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, valid(Unfolding1Heap[r_1, next]):=Unfolding1Mask[null, valid(Unfolding1Heap[r_1, next])] - perm];
        perm := FullPerm;
        assume Unfolding1Heap[r_1, next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[r_1, next], f_7:=Unfolding1Mask[Unfolding1Heap[r_1, next], f_7] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := FullPerm;
        assume Unfolding1Heap[r_1, next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[r_1, next], next:=Unfolding1Mask[Unfolding1Heap[r_1, next], next] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        if (Unfolding1Heap[Unfolding1Heap[r_1, next], next] != null) {
          perm := FullPerm;
          Unfolding1Mask := Unfolding1Mask[null, valid(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=Unfolding1Mask[null, valid(Unfolding1Heap[Unfolding1Heap[r_1, next], next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(valid(Unfolding1Heap[r_1, next]), Unfolding1Heap[null, valid(Unfolding1Heap[r_1, next])], valid(Unfolding1Heap[Unfolding1Heap[r_1, next], next]), Unfolding1Heap[null, valid(Unfolding1Heap[Unfolding1Heap[r_1, next], next])]);
          assume state(Unfolding1Heap, Unfolding1Mask);
        }
        assume state(Unfolding1Heap, Unfolding1Mask);
      assume false;
      
      // -- Free assumptions (inhale module)
        UnfoldingHeap := UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next]):=UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next])][UnfoldingHeap[r_1, next], f_7:=true]];
        UnfoldingHeap := UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next]):=UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next])][UnfoldingHeap[r_1, next], next:=true]];
        if (UnfoldingHeap[UnfoldingHeap[r_1, next], next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_94: Ref, f_97: (Field A B) ::
            { newPMask[o_94, f_97] }
            UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next])][o_94, f_97] || UnfoldingHeap[null, valid#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next])][o_94, f_97] ==> newPMask[o_94, f_97]
          );
          UnfoldingHeap := UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next]):=newPMask];
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, deeperfalse#sm(r_1):=Heap[null, deeperfalse#sm(r_1)][r_1, next:=true]];
        havoc newPMask;
        assume (forall <A, B> o_95: Ref, f_98: (Field A B) ::
          { newPMask[o_95, f_98] }
          Heap[null, deeperfalse#sm(r_1)][o_95, f_98] || Heap[null, valid#sm(Heap[r_1, next])][o_95, f_98] ==> newPMask[o_95, f_98]
        );
        Heap := Heap[null, deeperfalse#sm(r_1):=newPMask];
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume deeperfalse#trigger(UnfoldingHeap, deeperfalse(r_1));
      assume UnfoldingHeap[null, deeperfalse(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, deeperfalse(r_1):=UnfoldingMask[null, deeperfalse(r_1)] - perm];
      perm := FullPerm;
      assume r_1 != null;
      UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[r_1, next] != null;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(deeperfalse(r_1), UnfoldingHeap[null, deeperfalse(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
      assume state(UnfoldingHeap, UnfoldingMask);
      assume false;
      
      // -- Free assumptions (inhale module)
        UnfoldingHeap := UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next]):=UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next])][UnfoldingHeap[r_1, next], f_7:=true]];
        UnfoldingHeap := UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next]):=UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next])][UnfoldingHeap[r_1, next], next:=true]];
        if (UnfoldingHeap[UnfoldingHeap[r_1, next], next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_96: Ref, f_99: (Field A B) ::
            { newPMask[o_96, f_99] }
            UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next])][o_96, f_99] || UnfoldingHeap[null, valid#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next])][o_96, f_99] ==> newPMask[o_96, f_99]
          );
          UnfoldingHeap := UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next]):=newPMask];
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    assume false;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of t12 might not hold. Assertion false might not hold. (unfolding.vpr@126.11--126.16) [184299]"}
      false;
}

// ==================================================
// Translation of method t13
// ==================================================

procedure t13(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, deeperfalse(r_1):=Mask[null, deeperfalse(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    assume false;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: t12(r) -- unfolding.vpr@134.3--134.9
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      
      // -- Execute definedness check of acc(deeperfalse(r), write) && (unfolding acc(deeperfalse(r), write) in true) without enforcing the checks (e.g., to gain more information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume deeperfalse#trigger(UnfoldingHeap, deeperfalse(r_1));
        assume UnfoldingHeap[null, deeperfalse(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method t12 might not hold. There might be insufficient permission to access deeperfalse(r) (unfolding.vpr@134.3--134.9) [184300]"}
            perm <= UnfoldingMask[null, deeperfalse(r_1)];
        }
        UnfoldingMask := UnfoldingMask[null, deeperfalse(r_1):=UnfoldingMask[null, deeperfalse(r_1)] - perm];
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume UnfoldingHeap[r_1, next] != null;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(deeperfalse(r_1), UnfoldingHeap[null, deeperfalse(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
        
        // -- Execute unfolding (for extra information)
          Unfolding1Heap := UnfoldingHeap;
          Unfolding1Mask := UnfoldingMask;
          assume valid#trigger(Unfolding1Heap, valid(Unfolding1Heap[r_1, next]));
          assume Unfolding1Heap[null, valid(Unfolding1Heap[r_1, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[r_1, next], f_7]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[r_1, next], next]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[r_1, next], next] != null then Unfolding1Heap[null, valid(Unfolding1Heap[Unfolding1Heap[r_1, next], next])] else EmptyFrame))));
          ExhaleWellDef0Mask := Unfolding1Mask;
          ExhaleWellDef0Heap := Unfolding1Heap;
          perm := FullPerm;
          Unfolding1Mask := Unfolding1Mask[null, valid(Unfolding1Heap[r_1, next]):=Unfolding1Mask[null, valid(Unfolding1Heap[r_1, next])] - perm];
          perm := FullPerm;
          assume Unfolding1Heap[r_1, next] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[r_1, next], f_7:=Unfolding1Mask[Unfolding1Heap[r_1, next], f_7] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          perm := FullPerm;
          assume Unfolding1Heap[r_1, next] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[r_1, next], next:=Unfolding1Mask[Unfolding1Heap[r_1, next], next] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          if (Unfolding1Heap[Unfolding1Heap[r_1, next], next] != null) {
            perm := FullPerm;
            Unfolding1Mask := Unfolding1Mask[null, valid(Unfolding1Heap[Unfolding1Heap[r_1, next], next]):=Unfolding1Mask[null, valid(Unfolding1Heap[Unfolding1Heap[r_1, next], next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(valid(Unfolding1Heap[r_1, next]), Unfolding1Heap[null, valid(Unfolding1Heap[r_1, next])], valid(Unfolding1Heap[Unfolding1Heap[r_1, next], next]), Unfolding1Heap[null, valid(Unfolding1Heap[Unfolding1Heap[r_1, next], next])]);
            assume state(Unfolding1Heap, Unfolding1Mask);
          }
          assume state(Unfolding1Heap, Unfolding1Mask);
        assume false;
        
        // -- Free assumptions (inhale module)
          UnfoldingHeap := UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next]):=UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next])][UnfoldingHeap[r_1, next], f_7:=true]];
          UnfoldingHeap := UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next]):=UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next])][UnfoldingHeap[r_1, next], next:=true]];
          if (UnfoldingHeap[UnfoldingHeap[r_1, next], next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_97: Ref, f_100: (Field A B) ::
              { newPMask[o_97, f_100] }
              UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next])][o_97, f_100] || UnfoldingHeap[null, valid#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next])][o_97, f_100] ==> newPMask[o_97, f_100]
            );
            UnfoldingHeap := UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next]):=newPMask];
          }
          assume state(UnfoldingHeap, UnfoldingMask);
        assume state(UnfoldingHeap, UnfoldingMask);
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, deeperfalse#sm(r_1):=Heap[null, deeperfalse#sm(r_1)][r_1, next:=true]];
          havoc newPMask;
          assume (forall <A, B> o_98: Ref, f_101: (Field A B) ::
            { newPMask[o_98, f_101] }
            Heap[null, deeperfalse#sm(r_1)][o_98, f_101] || Heap[null, valid#sm(Heap[r_1, next])][o_98, f_101] ==> newPMask[o_98, f_101]
          );
          Heap := Heap[null, deeperfalse#sm(r_1):=newPMask];
          assume state(Heap, Mask);
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method t12 might not hold. There might be insufficient permission to access deeperfalse(r) (unfolding.vpr@134.3--134.9) [184301]"}
          perm <= Mask[null, deeperfalse(r_1)];
      }
      Mask := Mask[null, deeperfalse(r_1):=Mask[null, deeperfalse(r_1)] - perm];
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := ExhaleWellDef0Heap;
        UnfoldingMask := ExhaleWellDef0Mask;
        assume deeperfalse#trigger(UnfoldingHeap, deeperfalse(r_1));
        assume UnfoldingHeap[null, deeperfalse(r_1)] == CombineFrames(FrameFragment(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
        ExhaleWellDef1Mask := UnfoldingMask;
        ExhaleWellDef1Heap := UnfoldingHeap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method t12 might not hold. There might be insufficient permission to access deeperfalse(r) (unfolding.vpr@134.3--134.9) [184302]"}
            perm <= UnfoldingMask[null, deeperfalse(r_1)];
        }
        UnfoldingMask := UnfoldingMask[null, deeperfalse(r_1):=UnfoldingMask[null, deeperfalse(r_1)] - perm];
        perm := FullPerm;
        assume r_1 != null;
        UnfoldingMask := UnfoldingMask[r_1, next:=UnfoldingMask[r_1, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume UnfoldingHeap[r_1, next] != null;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[r_1, next]):=UnfoldingMask[null, valid(UnfoldingHeap[r_1, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(deeperfalse(r_1), UnfoldingHeap[null, deeperfalse(r_1)], valid(UnfoldingHeap[r_1, next]), UnfoldingHeap[null, valid(UnfoldingHeap[r_1, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume false;
        
        // -- Free assumptions (inhale module)
          UnfoldingHeap := UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next]):=UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next])][UnfoldingHeap[r_1, next], f_7:=true]];
          UnfoldingHeap := UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next]):=UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next])][UnfoldingHeap[r_1, next], next:=true]];
          if (UnfoldingHeap[UnfoldingHeap[r_1, next], next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_99: Ref, f_75: (Field A B) ::
              { newPMask[o_99, f_75] }
              UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next])][o_99, f_75] || UnfoldingHeap[null, valid#sm(UnfoldingHeap[UnfoldingHeap[r_1, next], next])][o_99, f_75] ==> newPMask[o_99, f_75]
            );
            UnfoldingHeap := UnfoldingHeap[null, valid#sm(UnfoldingHeap[r_1, next]):=newPMask];
          }
          assume state(UnfoldingHeap, UnfoldingMask);
        assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Free assumptions (exhale module)
        Heap := Heap[null, deeperfalse#sm(r_1):=Heap[null, deeperfalse#sm(r_1)][r_1, next:=true]];
        havoc newPMask;
        assume (forall <A, B> o_100: Ref, f_102: (Field A B) ::
          { newPMask[o_100, f_102] }
          Heap[null, deeperfalse#sm(r_1)][o_100, f_102] || Heap[null, valid#sm(Heap[r_1, next])][o_100, f_102] ==> newPMask[o_100, f_102]
        );
        Heap := Heap[null, deeperfalse#sm(r_1):=newPMask];
        assume state(Heap, Mask);
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      assume false;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of t13 might not hold. Assertion false might not hold. (unfolding.vpr@132.11--132.16) [184303]"}
      false;
}