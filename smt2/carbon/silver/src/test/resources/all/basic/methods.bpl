// 
// Translation of Viper program.
// 
// Date:         2025-01-13 18:20:39
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/basic/methods.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/basic/methods-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o: Ref, f: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o, f] }
  Heap[o, $allocated] ==> Heap[Heap[o, f], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_1: Ref, f_2: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_1, f_2] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_1, f_2) ==> Heap[o_1, f_2] == ExhaleHeap[o_1, f_2]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f), ExhaleHeap[null, PredicateMaskField(pm_f)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsPredicateField(pm_f) ==> Heap[null, PredicateMaskField(pm_f)] == ExhaleHeap[null, PredicateMaskField(pm_f)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsPredicateField(pm_f) ==> (forall <A, B> o2: Ref, f_2: (Field A B) ::
    { ExhaleHeap[o2, f_2] }
    Heap[null, PredicateMaskField(pm_f)][o2, f_2] ==> Heap[o2, f_2] == ExhaleHeap[o2, f_2]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f), ExhaleHeap[null, WandMaskField(pm_f)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsWandField(pm_f) ==> Heap[null, WandMaskField(pm_f)] == ExhaleHeap[null, WandMaskField(pm_f)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsWandField(pm_f) ==> (forall <A, B> o2: Ref, f_2: (Field A B) ::
    { ExhaleHeap[o2, f_2] }
    Heap[null, WandMaskField(pm_f)][o2, f_2] ==> Heap[o2, f_2] == ExhaleHeap[o2, f_2]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_1: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_1, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_1, $allocated] ==> ExhaleHeap[o_1, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o: Ref, f_3: (Field A B), v: B ::
  { Heap[o, f_3:=v] }
  succHeap(Heap, Heap[o, f_3:=v])
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

// ==================================================
// Translation of method t1
// ==================================================

procedure t1() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_n: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var n: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: n := t3(-1) -- methods.vpr@10.5--10.16
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_n := -1;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method t3 might not hold. Assertion -1 > 0 might not hold. (methods.vpr@10.5--10.16) [186394]"}
        arg_n > 0;
    
    // -- Havocing target variables
      havoc n;
    
    // -- Inhaling postcondition
      assume n > 0;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t2
// ==================================================

procedure t2() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var n: int;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: n := -10 -- methods.vpr@14.5--14.22
    n := -10;
    assume state(Heap, Mask);
  
  // -- Translating statement: n := t3(1) -- methods.vpr@15.5--15.15
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
    
    // -- Havocing target variables
      havoc n;
    
    // -- Inhaling postcondition
      assume n > 0;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert n > 0 -- methods.vpr@16.5--16.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion n > 0 might not hold. (methods.vpr@16.12--16.17) [186395]"}
      n > 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- methods.vpr@18.5--18.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (methods.vpr@18.12--18.17) [186396]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t3
// ==================================================

procedure t3(n: int) returns (r_1: int)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume n > 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    assume r_1 > 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: r := n -- methods.vpr@25.5--25.11
    r_1 := n;
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of t3 might not hold. Assertion r > 0 might not hold. (methods.vpr@23.13--23.18) [186397]"}
      r_1 > 0;
}

// ==================================================
// Translation of method t4
// ==================================================

procedure t4() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var a_2: Ref;
  var b_24: Ref;
  var c: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[a_2, $allocated];
    assume Heap[b_24, $allocated];
    assume Heap[c, $allocated];
  
  // -- Translating statement: a, b := t4b() -- methods.vpr@34.5--34.18
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc a_2, b_24;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume Heap[a_2, $allocated];
    assume Heap[b_24, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: c := new() -- methods.vpr@35.5--35.15
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    c := freshObj;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a != c -- methods.vpr@36.5--36.18
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion a != c might not hold. (methods.vpr@36.12--36.18) [186398]"}
      a_2 != c;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a != b -- methods.vpr@38.5--38.18
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion a != b might not hold. (methods.vpr@38.12--38.18) [186399]"}
      a_2 != b_24;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t4c
// ==================================================

procedure t4c() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var a_2: Ref;
  var b_24: Ref;
  var c: Ref;
  var freshObj: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[a_2, $allocated];
    assume Heap[b_24, $allocated];
    assume Heap[c, $allocated];
  
  // -- Translating statement: c := new() -- methods.vpr@46.5--46.15
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    c := freshObj;
    assume state(Heap, Mask);
  
  // -- Translating statement: a, b := t4b() -- methods.vpr@47.5--47.18
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc a_2, b_24;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume Heap[a_2, $allocated];
    assume Heap[b_24, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a != c -- methods.vpr@49.5--49.18
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion a != c might not hold. (methods.vpr@49.12--49.18) [186400]"}
      a_2 != c;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t4b
// ==================================================

procedure t4b() returns (a_2: Ref, b_24: Ref)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
}

// ==================================================
// Translation of method t5_a
// ==================================================

procedure t5_a(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of r.f == 2
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (methods.vpr@58.15--58.23) [186401]"}
        HasDirectPerm(Mask, r_1, f_7);
    assume Heap[r_1, f_7] == 2;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
}

// ==================================================
// Translation of method t5_b
// ==================================================

procedure t5_b(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    assume r_1 != null;
    assume state(Heap, Mask);
    
    // -- Check definedness of r.f == 2
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (methods.vpr@65.15--65.23) [186402]"}
        HasDirectPerm(Mask, r_1, f_7);
    assume Heap[r_1, f_7] == 2;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
}

// ==================================================
// Translation of method t6_a
// ==================================================

procedure t6_a(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    
    // -- Check definedness of r.f == 2
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (methods.vpr@71.13--71.21) [186403]"}
        HasDirectPerm(PostMask, r_1, f_7);
    assume PostHeap[r_1, f_7] == 2;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- methods.vpr@73.12--73.17
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of t6_a might not hold. Assertion r.f == 2 might not hold. (methods.vpr@71.13--71.21) [186404]"}
      Heap[r_1, f_7] == 2;
}

// ==================================================
// Translation of method t6_b
// ==================================================

procedure t6_b(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    assume r_1 != null;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of r.f == 2
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (methods.vpr@79.13--79.21) [186405]"}
        HasDirectPerm(PostMask, r_1, f_7);
    assume PostHeap[r_1, f_7] == 2;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- methods.vpr@81.12--81.17
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of t6_b might not hold. Assertion r != null might not hold. (methods.vpr@77.13--77.22) [186406]"}
      r_1 != null;
    assert {:msg "  Postcondition of t6_b might not hold. Assertion r.f == 2 might not hold. (methods.vpr@79.13--79.21) [186407]"}
      Heap[r_1, f_7] == 2;
}

// ==================================================
// Translation of method t7
// ==================================================

procedure t7(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var wildcard: real where wildcard > NoPerm;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: r.f := 2 -- methods.vpr@87.5--87.13
    assert {:msg "  Assignment might fail. There might be insufficient permission to access r.f (methods.vpr@87.5--87.13) [186408]"}
      FullPerm == Mask[r_1, f_7];
    Heap := Heap[r_1, f_7:=2];
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(r.f, wildcard) -- methods.vpr@88.5--88.30
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Exhale might fail. There might be insufficient permission to access r.f (methods.vpr@88.12--88.30) [186409]"}
      Mask[r_1, f_7] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[r_1, f_7];
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] - wildcard];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert r.f == 2 -- methods.vpr@89.5--89.22
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of r.f == 2
      assert {:msg "  Assert might fail. There might be insufficient permission to access r.f (methods.vpr@89.12--89.22) [186410]"}
        HasDirectPerm(ExhaleWellDef0Mask, r_1, f_7);
    assert {:msg "  Assert might fail. Assertion r.f == 2 might not hold. (methods.vpr@89.12--89.22) [186411]"}
      Heap[r_1, f_7] == 2;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t8
// ==================================================

procedure t8(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    assume r_1 != null;
    PostMask := PostMask[r_1, f_7:=PostMask[r_1, f_7] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: r.f := 2 -- methods.vpr@96.5--96.13
    assert {:msg "  Assignment might fail. There might be insufficient permission to access r.f (methods.vpr@96.5--96.13) [186412]"}
      FullPerm == Mask[r_1, f_7];
    Heap := Heap[r_1, f_7:=2];
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(r.f, write) -- methods.vpr@97.5--97.27
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access r.f (methods.vpr@97.12--97.27) [186414]"}
        perm <= Mask[r_1, f_7];
    }
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(r.f, write) -- methods.vpr@98.5--98.27
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert r.f == 2 -- methods.vpr@100.5--100.22
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of r.f == 2
      assert {:msg "  Assert might fail. There might be insufficient permission to access r.f (methods.vpr@100.12--100.22) [186416]"}
        HasDirectPerm(ExhaleWellDef0Mask, r_1, f_7);
    assert {:msg "  Assert might fail. Assertion r.f == 2 might not hold. (methods.vpr@100.12--100.22) [186417]"}
      Heap[r_1, f_7] == 2;
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of t8 might not hold. There might be insufficient permission to access r.f (methods.vpr@94.13--94.28) [186418]"}
        perm <= Mask[r_1, f_7];
    }
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method t9
// ==================================================

procedure t9(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    assume r_1 != null;
    PostMask := PostMask[r_1, f_7:=PostMask[r_1, f_7] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: r.f := 2 -- methods.vpr@107.5--107.13
    assert {:msg "  Assignment might fail. There might be insufficient permission to access r.f (methods.vpr@107.5--107.13) [186419]"}
      FullPerm == Mask[r_1, f_7];
    Heap := Heap[r_1, f_7:=2];
    assume state(Heap, Mask);
  
  // -- Translating statement: t8(r) -- methods.vpr@108.5--108.10
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method t8 might not hold. There might be insufficient permission to access r.f (methods.vpr@108.5--108.10) [186420]"}
          perm <= Mask[r_1, f_7];
      }
      Mask := Mask[r_1, f_7:=Mask[r_1, f_7] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      assume r_1 != null;
      Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert r.f == 2 -- methods.vpr@110.5--110.22
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of r.f == 2
      assert {:msg "  Assert might fail. There might be insufficient permission to access r.f (methods.vpr@110.12--110.22) [186421]"}
        HasDirectPerm(ExhaleWellDef0Mask, r_1, f_7);
    assert {:msg "  Assert might fail. Assertion r.f == 2 might not hold. (methods.vpr@110.12--110.22) [186422]"}
      Heap[r_1, f_7] == 2;
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of t9 might not hold. There might be insufficient permission to access r.f (methods.vpr@105.13--105.28) [186423]"}
        perm <= Mask[r_1, f_7];
    }
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method t10
// ==================================================

procedure t10(r_1: Ref, o_193: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
    assume Heap[o_193, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume o_193 != null;
    Mask := Mask[o_193, f_7:=Mask[o_193, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    assume r_1 != null;
    PostMask := PostMask[r_1, f_7:=PostMask[r_1, f_7] + perm];
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume o_193 != null;
    PostMask := PostMask[o_193, f_7:=PostMask[o_193, f_7] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: r.f := 2 -- methods.vpr@117.5--117.13
    assert {:msg "  Assignment might fail. There might be insufficient permission to access r.f (methods.vpr@117.5--117.13) [186424]"}
      FullPerm == Mask[r_1, f_7];
    Heap := Heap[r_1, f_7:=2];
    assume state(Heap, Mask);
  
  // -- Translating statement: o.f := 2 -- methods.vpr@118.5--118.13
    assert {:msg "  Assignment might fail. There might be insufficient permission to access o.f (methods.vpr@118.5--118.13) [186425]"}
      FullPerm == Mask[o_193, f_7];
    Heap := Heap[o_193, f_7:=2];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert o != r -- methods.vpr@119.5--119.18
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion o != r might not hold. (methods.vpr@119.12--119.18) [186426]"}
      o_193 != r_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: t9(o) -- methods.vpr@120.5--120.10
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method t9 might not hold. There might be insufficient permission to access o.f (methods.vpr@120.5--120.10) [186427]"}
          perm <= Mask[o_193, f_7];
      }
      Mask := Mask[o_193, f_7:=Mask[o_193, f_7] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      assume o_193 != null;
      Mask := Mask[o_193, f_7:=Mask[o_193, f_7] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert r.f == 2 -- methods.vpr@121.5--121.22
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of r.f == 2
      assert {:msg "  Assert might fail. There might be insufficient permission to access r.f (methods.vpr@121.12--121.22) [186428]"}
        HasDirectPerm(ExhaleWellDef0Mask, r_1, f_7);
    assert {:msg "  Assert might fail. Assertion r.f == 2 might not hold. (methods.vpr@121.12--121.22) [186429]"}
      Heap[r_1, f_7] == 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert o.f == 2 -- methods.vpr@123.5--123.22
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of o.f == 2
      assert {:msg "  Assert might fail. There might be insufficient permission to access o.f (methods.vpr@123.12--123.22) [186430]"}
        HasDirectPerm(ExhaleWellDef0Mask, o_193, f_7);
    assert {:msg "  Assert might fail. Assertion o.f == 2 might not hold. (methods.vpr@123.12--123.22) [186431]"}
      Heap[o_193, f_7] == 2;
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of t10 might not hold. There might be insufficient permission to access r.f (methods.vpr@115.13--115.47) [186432]"}
        perm <= Mask[r_1, f_7];
    }
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of t10 might not hold. There might be insufficient permission to access o.f (methods.vpr@115.13--115.47) [186433]"}
        perm <= Mask[o_193, f_7];
    }
    Mask := Mask[o_193, f_7:=Mask[o_193, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method t11
// ==================================================

procedure t11() returns (r_1: Ref)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x: Ref;
  var y: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Translating statement: x := t11() -- methods.vpr@130.5--130.15
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc x;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume Heap[x, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: y := new() -- methods.vpr@131.5--131.15
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    y := freshObj;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert x != y -- methods.vpr@132.5--132.18
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion x != y might not hold. (methods.vpr@132.12--132.18) [186434]"}
      x != y;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method bodyless
// ==================================================

procedure bodyless() returns (r_1: int)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    assume 0 <= r_1;
    assume r_1 < 10;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- <no position>
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of bodyless might not hold. Assertion 0 <= r might not hold. (methods.vpr@137.13--137.29) [186435]"}
      0 <= r_1;
    assert {:msg "  Postcondition of bodyless might not hold. Assertion r < 10 might not hold. (methods.vpr@137.13--137.29) [186436]"}
      r_1 < 10;
}

// ==================================================
// Translation of method testBodyless
// ==================================================

procedure testBodyless() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var x: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: x := bodyless() -- methods.vpr@142.5--142.20
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
    
    // -- Havocing target variables
      havoc x;
    
    // -- Inhaling postcondition
      assume 0 <= x;
      assume x < 10;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert 0 <= x && x < 10 -- methods.vpr@143.5--143.28
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion 0 <= x might not hold. (methods.vpr@143.12--143.28) [186437]"}
      0 <= x;
    assert {:msg "  Assert might fail. Assertion x < 10 might not hold. (methods.vpr@143.12--143.28) [186438]"}
      x < 10;
    assume state(Heap, Mask);
}