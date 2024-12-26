// 
// Translation of Viper program.
// 
// Date:         2024-12-26 20:20:34
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0011.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0011-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

const unique b_94: Field NormalField bool;
axiom !IsPredicateField(b_94);
axiom !IsWandField(b_94);
const unique c_10: Field NormalField Ref;
axiom !IsPredicateField(c_10);
axiom !IsWandField(c_10);
const unique d_3: Field NormalField Ref;
axiom !IsPredicateField(d_3);
axiom !IsWandField(d_3);
const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of method succeeds1
// ==================================================

procedure succeeds1(k: Perm, x: Ref) returns (r_1: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    assume NoPerm < k;
    assume state(Heap, Mask);
    perm := k;
    assert {:msg "  Contract might not be well-formed. Fraction k might be negative. (0011.vpr@11.12--11.53) [205481]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, c_10:=Mask[x, c_10] + perm];
    assume state(Heap, Mask);
    perm := k;
    assert {:msg "  Contract might not be well-formed. Fraction k might be negative. (0011.vpr@11.12--11.53) [205482]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, d_3:=Mask[x, d_3] + perm];
    assume state(Heap, Mask);
    perm := k;
    assert {:msg "  Contract might not be well-formed. Fraction k might be negative. (0011.vpr@11.12--11.53) [205483]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, b_94:=Mask[x, b_94] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of x.c != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.c (0011.vpr@12.12--12.38) [205484]"}
        HasDirectPerm(Mask, x, c_10);
    assume Heap[x, c_10] != null;
    
    // -- Check definedness of x.d != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.d (0011.vpr@12.12--12.38) [205485]"}
        HasDirectPerm(Mask, x, d_3);
    assume Heap[x, d_3] != null;
    assume state(Heap, Mask);
    
    // -- Check definedness of x.b == (x.c == x.d)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.b (0011.vpr@13.12--13.31) [205486]"}
        HasDirectPerm(Mask, x, b_94);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.c (0011.vpr@13.12--13.31) [205487]"}
        HasDirectPerm(Mask, x, c_10);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.d (0011.vpr@13.12--13.31) [205488]"}
        HasDirectPerm(Mask, x, d_3);
    assume Heap[x, b_94] == (Heap[x, c_10] == Heap[x, d_3]);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x.c.f, 1 / 2)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.c (0011.vpr@14.12--14.46) [205489]"}
        HasDirectPerm(Mask, x, c_10);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0011.vpr@14.12--14.46) [205490]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[x, c_10] != null;
    Mask := Mask[Heap[x, c_10], f_7:=Mask[Heap[x, c_10], f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x.d.f, 1 / 2)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.d (0011.vpr@14.12--14.46) [205491]"}
        HasDirectPerm(Mask, x, d_3);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0011.vpr@14.12--14.46) [205492]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[x, d_3] != null;
    Mask := Mask[Heap[x, d_3], f_7:=Mask[Heap[x, d_3], f_7] + perm];
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
    perm := k;
    assert {:msg "  Contract might not be well-formed. Fraction k might be negative. (0011.vpr@15.11--15.52) [205493]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    PostMask := PostMask[x, c_10:=PostMask[x, c_10] + perm];
    assume state(PostHeap, PostMask);
    perm := k;
    assert {:msg "  Contract might not be well-formed. Fraction k might be negative. (0011.vpr@15.11--15.52) [205494]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    PostMask := PostMask[x, d_3:=PostMask[x, d_3] + perm];
    assume state(PostHeap, PostMask);
    perm := k;
    assert {:msg "  Contract might not be well-formed. Fraction k might be negative. (0011.vpr@15.11--15.52) [205495]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    PostMask := PostMask[x, b_94:=PostMask[x, b_94] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.c != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.c (0011.vpr@16.11--16.37) [205496]"}
        HasDirectPerm(PostMask, x, c_10);
    assume PostHeap[x, c_10] != null;
    
    // -- Check definedness of x.d != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.d (0011.vpr@16.11--16.37) [205497]"}
        HasDirectPerm(PostMask, x, d_3);
    assume PostHeap[x, d_3] != null;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.b
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.b (0011.vpr@17.11--17.29) [205498]"}
        HasDirectPerm(PostMask, x, b_94);
    if (PostHeap[x, b_94]) {
      
      // -- Check definedness of acc(x.d.f, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.d (0011.vpr@17.11--17.29) [205499]"}
          HasDirectPerm(PostMask, x, d_3);
      perm := FullPerm;
      assume PostHeap[x, d_3] != null;
      PostMask := PostMask[PostHeap[x, d_3], f_7:=PostMask[PostHeap[x, d_3], f_7] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    assume r_1;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: if (x.b) -- 0011.vpr@20.3--22.4
    
    // -- Check definedness of x.b
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access x.b (0011.vpr@20.7--20.10) [205500]"}
        HasDirectPerm(Mask, x, b_94);
    if (Heap[x, b_94]) {
      
      // -- Translating statement: assert acc(x.c.f, write) -- 0011.vpr@21.5--21.22
        AssertHeap := Heap;
        AssertMask := Mask;
        ExhaleWellDef0Heap := AssertHeap;
        ExhaleWellDef0Mask := AssertMask;
        
        // -- Check definedness of acc(x.c.f, write)
          assert {:msg "  Assert might fail. There might be insufficient permission to access x.c (0011.vpr@21.12--21.22) [205501]"}
            HasDirectPerm(ExhaleWellDef0Mask, x, c_10);
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access x.c.f (0011.vpr@21.12--21.22) [205503]"}
            perm <= AssertMask[AssertHeap[x, c_10], f_7];
        }
        AssertMask := AssertMask[AssertHeap[x, c_10], f_7:=AssertMask[AssertHeap[x, c_10], f_7] - perm];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: r := (x.b ? x.c == x.d : true) -- 0011.vpr@24.3--24.31
    
    // -- Check definedness of (x.b ? x.c == x.d : true)
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.b (0011.vpr@24.3--24.31) [205504]"}
        HasDirectPerm(Mask, x, b_94);
      if (Heap[x, b_94]) {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access x.c (0011.vpr@24.3--24.31) [205505]"}
          HasDirectPerm(Mask, x, c_10);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access x.d (0011.vpr@24.3--24.31) [205506]"}
          HasDirectPerm(Mask, x, d_3);
      }
    r_1 := !Heap[x, b_94] || Heap[x, c_10] == Heap[x, d_3];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := k;
    assert {:msg "  Postcondition of succeeds1 might not hold. Fraction k might be negative. (0011.vpr@15.11--15.52) [205507]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of succeeds1 might not hold. There might be insufficient permission to access x.c (0011.vpr@15.11--15.52) [205508]"}
        perm <= Mask[x, c_10];
    }
    Mask := Mask[x, c_10:=Mask[x, c_10] - perm];
    perm := k;
    assert {:msg "  Postcondition of succeeds1 might not hold. Fraction k might be negative. (0011.vpr@15.11--15.52) [205509]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of succeeds1 might not hold. There might be insufficient permission to access x.d (0011.vpr@15.11--15.52) [205510]"}
        perm <= Mask[x, d_3];
    }
    Mask := Mask[x, d_3:=Mask[x, d_3] - perm];
    perm := k;
    assert {:msg "  Postcondition of succeeds1 might not hold. Fraction k might be negative. (0011.vpr@15.11--15.52) [205511]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of succeeds1 might not hold. There might be insufficient permission to access x.b (0011.vpr@15.11--15.52) [205512]"}
        perm <= Mask[x, b_94];
    }
    Mask := Mask[x, b_94:=Mask[x, b_94] - perm];
    assert {:msg "  Postcondition of succeeds1 might not hold. Assertion x.c != null might not hold. (0011.vpr@16.11--16.37) [205513]"}
      Heap[x, c_10] != null;
    assert {:msg "  Postcondition of succeeds1 might not hold. Assertion x.d != null might not hold. (0011.vpr@16.11--16.37) [205514]"}
      Heap[x, d_3] != null;
    if (Heap[x, b_94]) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of succeeds1 might not hold. There might be insufficient permission to access x.d.f (0011.vpr@17.11--17.29) [205515]"}
          perm <= Mask[Heap[x, d_3], f_7];
      }
      Mask := Mask[Heap[x, d_3], f_7:=Mask[Heap[x, d_3], f_7] - perm];
    }
    assert {:msg "  Postcondition of succeeds1 might not hold. Assertion r == true might not hold. (0011.vpr@18.11--18.20) [205516]"}
      r_1;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method succeeds2
// ==================================================

procedure succeeds2(k: Perm, x: Ref) returns (r_1: bool)
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
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    assume NoPerm < k;
    assume state(Heap, Mask);
    perm := k;
    assert {:msg "  Contract might not be well-formed. Fraction k might be negative. (0011.vpr@29.12--29.53) [205517]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, c_10:=Mask[x, c_10] + perm];
    assume state(Heap, Mask);
    perm := k;
    assert {:msg "  Contract might not be well-formed. Fraction k might be negative. (0011.vpr@29.12--29.53) [205518]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, d_3:=Mask[x, d_3] + perm];
    assume state(Heap, Mask);
    perm := k;
    assert {:msg "  Contract might not be well-formed. Fraction k might be negative. (0011.vpr@29.12--29.53) [205519]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, b_94:=Mask[x, b_94] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of x.c != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.c (0011.vpr@30.12--30.38) [205520]"}
        HasDirectPerm(Mask, x, c_10);
    assume Heap[x, c_10] != null;
    
    // -- Check definedness of x.d != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.d (0011.vpr@30.12--30.38) [205521]"}
        HasDirectPerm(Mask, x, d_3);
    assume Heap[x, d_3] != null;
    assume state(Heap, Mask);
    
    // -- Check definedness of x.b == (x.c == x.d)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.b (0011.vpr@31.12--31.31) [205522]"}
        HasDirectPerm(Mask, x, b_94);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.c (0011.vpr@31.12--31.31) [205523]"}
        HasDirectPerm(Mask, x, c_10);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.d (0011.vpr@31.12--31.31) [205524]"}
        HasDirectPerm(Mask, x, d_3);
    assume Heap[x, b_94] == (Heap[x, c_10] == Heap[x, d_3]);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x.c.f, k)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.c (0011.vpr@32.12--32.39) [205525]"}
        HasDirectPerm(Mask, x, c_10);
    perm := k;
    assert {:msg "  Contract might not be well-formed. Fraction k might be negative. (0011.vpr@32.12--32.39) [205526]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[x, c_10] != null;
    Mask := Mask[Heap[x, c_10], f_7:=Mask[Heap[x, c_10], f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x.d.f, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.d (0011.vpr@32.12--32.39) [205527]"}
        HasDirectPerm(Mask, x, d_3);
    perm := FullPerm;
    assume Heap[x, d_3] != null;
    Mask := Mask[Heap[x, d_3], f_7:=Mask[Heap[x, d_3], f_7] + perm];
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
    perm := k;
    assert {:msg "  Contract might not be well-formed. Fraction k might be negative. (0011.vpr@33.11--33.52) [205528]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    PostMask := PostMask[x, c_10:=PostMask[x, c_10] + perm];
    assume state(PostHeap, PostMask);
    perm := k;
    assert {:msg "  Contract might not be well-formed. Fraction k might be negative. (0011.vpr@33.11--33.52) [205529]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    PostMask := PostMask[x, d_3:=PostMask[x, d_3] + perm];
    assume state(PostHeap, PostMask);
    perm := k;
    assert {:msg "  Contract might not be well-formed. Fraction k might be negative. (0011.vpr@33.11--33.52) [205530]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    PostMask := PostMask[x, b_94:=PostMask[x, b_94] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.c != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.c (0011.vpr@34.11--34.37) [205531]"}
        HasDirectPerm(PostMask, x, c_10);
    assume PostHeap[x, c_10] != null;
    
    // -- Check definedness of x.d != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.d (0011.vpr@34.11--34.37) [205532]"}
        HasDirectPerm(PostMask, x, d_3);
    assume PostHeap[x, d_3] != null;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(x.c.f, k)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.c (0011.vpr@35.11--35.38) [205533]"}
        HasDirectPerm(PostMask, x, c_10);
    perm := k;
    assert {:msg "  Contract might not be well-formed. Fraction k might be negative. (0011.vpr@35.11--35.38) [205534]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> PostHeap[x, c_10] != null;
    PostMask := PostMask[PostHeap[x, c_10], f_7:=PostMask[PostHeap[x, c_10], f_7] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(x.d.f, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.d (0011.vpr@35.11--35.38) [205535]"}
        HasDirectPerm(PostMask, x, d_3);
    perm := FullPerm;
    assume PostHeap[x, d_3] != null;
    PostMask := PostMask[PostHeap[x, d_3], f_7:=PostMask[PostHeap[x, d_3], f_7] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.b
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.b (0011.vpr@36.11--36.33) [205536]"}
        HasDirectPerm(PostMask, x, b_94);
    if (PostHeap[x, b_94]) {
      
      // -- Check definedness of x.c.f == x.d.f
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.c (0011.vpr@36.11--36.33) [205537]"}
          HasDirectPerm(PostMask, x, c_10);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.c.f (0011.vpr@36.11--36.33) [205538]"}
          HasDirectPerm(PostMask, PostHeap[x, c_10], f_7);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.d (0011.vpr@36.11--36.33) [205539]"}
          HasDirectPerm(PostMask, x, d_3);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.d.f (0011.vpr@36.11--36.33) [205540]"}
          HasDirectPerm(PostMask, PostHeap[x, d_3], f_7);
      assume PostHeap[PostHeap[x, c_10], f_7] == PostHeap[PostHeap[x, d_3], f_7];
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := k;
    assert {:msg "  Postcondition of succeeds2 might not hold. Fraction k might be negative. (0011.vpr@33.11--33.52) [205541]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of succeeds2 might not hold. There might be insufficient permission to access x.c (0011.vpr@33.11--33.52) [205542]"}
        perm <= Mask[x, c_10];
    }
    Mask := Mask[x, c_10:=Mask[x, c_10] - perm];
    perm := k;
    assert {:msg "  Postcondition of succeeds2 might not hold. Fraction k might be negative. (0011.vpr@33.11--33.52) [205543]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of succeeds2 might not hold. There might be insufficient permission to access x.d (0011.vpr@33.11--33.52) [205544]"}
        perm <= Mask[x, d_3];
    }
    Mask := Mask[x, d_3:=Mask[x, d_3] - perm];
    perm := k;
    assert {:msg "  Postcondition of succeeds2 might not hold. Fraction k might be negative. (0011.vpr@33.11--33.52) [205545]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of succeeds2 might not hold. There might be insufficient permission to access x.b (0011.vpr@33.11--33.52) [205546]"}
        perm <= Mask[x, b_94];
    }
    Mask := Mask[x, b_94:=Mask[x, b_94] - perm];
    assert {:msg "  Postcondition of succeeds2 might not hold. Assertion x.c != null might not hold. (0011.vpr@34.11--34.37) [205547]"}
      Heap[x, c_10] != null;
    assert {:msg "  Postcondition of succeeds2 might not hold. Assertion x.d != null might not hold. (0011.vpr@34.11--34.37) [205548]"}
      Heap[x, d_3] != null;
    perm := k;
    assert {:msg "  Postcondition of succeeds2 might not hold. Fraction k might be negative. (0011.vpr@35.11--35.38) [205549]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of succeeds2 might not hold. There might be insufficient permission to access x.c.f (0011.vpr@35.11--35.38) [205550]"}
        perm <= Mask[Heap[x, c_10], f_7];
    }
    Mask := Mask[Heap[x, c_10], f_7:=Mask[Heap[x, c_10], f_7] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of succeeds2 might not hold. There might be insufficient permission to access x.d.f (0011.vpr@35.11--35.38) [205551]"}
        perm <= Mask[Heap[x, d_3], f_7];
    }
    Mask := Mask[Heap[x, d_3], f_7:=Mask[Heap[x, d_3], f_7] - perm];
    if (Heap[x, b_94]) {
      assert {:msg "  Postcondition of succeeds2 might not hold. Assertion x.c.f == x.d.f might not hold. (0011.vpr@36.11--36.33) [205552]"}
        Heap[Heap[x, c_10], f_7] == Heap[Heap[x, d_3], f_7];
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method fails0
// ==================================================

procedure fails0(k: Perm, b1: bool, x: Ref) returns ()
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
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0011.vpr@40.12--40.42) [205553]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0011.vpr@40.12--40.42) [205554]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
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
    assume x != null;
    PostMask := PostMask[x, f_7:=PostMask[x, f_7] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume x != null;
    PostMask := PostMask[x, f_7:=PostMask[x, f_7] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of fails0 might not hold. There might be insufficient permission to access x.f (0011.vpr@41.11--41.19) [205555]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of fails0 might not hold. There might be insufficient permission to access x.f (0011.vpr@43.11--43.19) [205556]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method fails1
// ==================================================

procedure fails1(k: Perm, x: Ref) returns (r_1: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    assume NoPerm < k;
    assume state(Heap, Mask);
    perm := k;
    assert {:msg "  Contract might not be well-formed. Fraction k might be negative. (0011.vpr@48.12--48.53) [205557]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, c_10:=Mask[x, c_10] + perm];
    assume state(Heap, Mask);
    perm := k;
    assert {:msg "  Contract might not be well-formed. Fraction k might be negative. (0011.vpr@48.12--48.53) [205558]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, d_3:=Mask[x, d_3] + perm];
    assume state(Heap, Mask);
    perm := k;
    assert {:msg "  Contract might not be well-formed. Fraction k might be negative. (0011.vpr@48.12--48.53) [205559]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, b_94:=Mask[x, b_94] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of x.c != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.c (0011.vpr@49.12--49.38) [205560]"}
        HasDirectPerm(Mask, x, c_10);
    assume Heap[x, c_10] != null;
    
    // -- Check definedness of x.d != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.d (0011.vpr@49.12--49.38) [205561]"}
        HasDirectPerm(Mask, x, d_3);
    assume Heap[x, d_3] != null;
    assume state(Heap, Mask);
    
    // -- Check definedness of x.b == (x.c == x.d)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.b (0011.vpr@50.12--50.31) [205562]"}
        HasDirectPerm(Mask, x, b_94);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.c (0011.vpr@50.12--50.31) [205563]"}
        HasDirectPerm(Mask, x, c_10);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.d (0011.vpr@50.12--50.31) [205564]"}
        HasDirectPerm(Mask, x, d_3);
    assume Heap[x, b_94] == (Heap[x, c_10] == Heap[x, d_3]);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x.c.f, 1 / 2)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.c (0011.vpr@51.12--51.46) [205565]"}
        HasDirectPerm(Mask, x, c_10);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0011.vpr@51.12--51.46) [205566]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[x, c_10] != null;
    Mask := Mask[Heap[x, c_10], f_7:=Mask[Heap[x, c_10], f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x.d.f, 1 / 2)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.d (0011.vpr@51.12--51.46) [205567]"}
        HasDirectPerm(Mask, x, d_3);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0011.vpr@51.12--51.46) [205568]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[x, d_3] != null;
    Mask := Mask[Heap[x, d_3], f_7:=Mask[Heap[x, d_3], f_7] + perm];
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
    perm := k;
    assert {:msg "  Contract might not be well-formed. Fraction k might be negative. (0011.vpr@52.11--52.52) [205569]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    PostMask := PostMask[x, c_10:=PostMask[x, c_10] + perm];
    assume state(PostHeap, PostMask);
    perm := k;
    assert {:msg "  Contract might not be well-formed. Fraction k might be negative. (0011.vpr@52.11--52.52) [205570]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    PostMask := PostMask[x, d_3:=PostMask[x, d_3] + perm];
    assume state(PostHeap, PostMask);
    perm := k;
    assert {:msg "  Contract might not be well-formed. Fraction k might be negative. (0011.vpr@52.11--52.52) [205571]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    PostMask := PostMask[x, b_94:=PostMask[x, b_94] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.c != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.c (0011.vpr@53.11--53.37) [205572]"}
        HasDirectPerm(PostMask, x, c_10);
    assume PostHeap[x, c_10] != null;
    
    // -- Check definedness of x.d != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.d (0011.vpr@53.11--53.37) [205573]"}
        HasDirectPerm(PostMask, x, d_3);
    assume PostHeap[x, d_3] != null;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.b
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.b (0011.vpr@54.11--54.29) [205574]"}
        HasDirectPerm(PostMask, x, b_94);
    if (PostHeap[x, b_94]) {
      
      // -- Check definedness of acc(x.d.f, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.d (0011.vpr@54.11--54.29) [205575]"}
          HasDirectPerm(PostMask, x, d_3);
      perm := FullPerm;
      assume PostHeap[x, d_3] != null;
      PostMask := PostMask[PostHeap[x, d_3], f_7:=PostMask[PostHeap[x, d_3], f_7] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.b
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.b (0011.vpr@56.11--56.29) [205576]"}
        HasDirectPerm(PostMask, x, b_94);
    if (PostHeap[x, b_94]) {
      
      // -- Check definedness of acc(x.c.f, write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.c (0011.vpr@56.11--56.29) [205577]"}
          HasDirectPerm(PostMask, x, c_10);
      perm := FullPerm;
      assume PostHeap[x, c_10] != null;
      PostMask := PostMask[PostHeap[x, c_10], f_7:=PostMask[PostHeap[x, c_10], f_7] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    assume r_1;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: if (x.b) -- 0011.vpr@59.3--61.4
    
    // -- Check definedness of x.b
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access x.b (0011.vpr@59.7--59.10) [205578]"}
        HasDirectPerm(Mask, x, b_94);
    if (Heap[x, b_94]) {
      
      // -- Translating statement: assert acc(x.c.f, write) -- 0011.vpr@60.5--60.22
        AssertHeap := Heap;
        AssertMask := Mask;
        ExhaleWellDef0Heap := AssertHeap;
        ExhaleWellDef0Mask := AssertMask;
        
        // -- Check definedness of acc(x.c.f, write)
          assert {:msg "  Assert might fail. There might be insufficient permission to access x.c (0011.vpr@60.12--60.22) [205579]"}
            HasDirectPerm(ExhaleWellDef0Mask, x, c_10);
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access x.c.f (0011.vpr@60.12--60.22) [205581]"}
            perm <= AssertMask[AssertHeap[x, c_10], f_7];
        }
        AssertMask := AssertMask[AssertHeap[x, c_10], f_7:=AssertMask[AssertHeap[x, c_10], f_7] - perm];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: r := (x.b ? x.c == x.d : true) -- 0011.vpr@63.3--63.31
    
    // -- Check definedness of (x.b ? x.c == x.d : true)
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.b (0011.vpr@63.3--63.31) [205582]"}
        HasDirectPerm(Mask, x, b_94);
      if (Heap[x, b_94]) {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access x.c (0011.vpr@63.3--63.31) [205583]"}
          HasDirectPerm(Mask, x, c_10);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access x.d (0011.vpr@63.3--63.31) [205584]"}
          HasDirectPerm(Mask, x, d_3);
      }
    r_1 := !Heap[x, b_94] || Heap[x, c_10] == Heap[x, d_3];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := k;
    assert {:msg "  Postcondition of fails1 might not hold. Fraction k might be negative. (0011.vpr@52.11--52.52) [205585]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of fails1 might not hold. There might be insufficient permission to access x.c (0011.vpr@52.11--52.52) [205586]"}
        perm <= Mask[x, c_10];
    }
    Mask := Mask[x, c_10:=Mask[x, c_10] - perm];
    perm := k;
    assert {:msg "  Postcondition of fails1 might not hold. Fraction k might be negative. (0011.vpr@52.11--52.52) [205587]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of fails1 might not hold. There might be insufficient permission to access x.d (0011.vpr@52.11--52.52) [205588]"}
        perm <= Mask[x, d_3];
    }
    Mask := Mask[x, d_3:=Mask[x, d_3] - perm];
    perm := k;
    assert {:msg "  Postcondition of fails1 might not hold. Fraction k might be negative. (0011.vpr@52.11--52.52) [205589]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of fails1 might not hold. There might be insufficient permission to access x.b (0011.vpr@52.11--52.52) [205590]"}
        perm <= Mask[x, b_94];
    }
    Mask := Mask[x, b_94:=Mask[x, b_94] - perm];
    assert {:msg "  Postcondition of fails1 might not hold. Assertion x.c != null might not hold. (0011.vpr@53.11--53.37) [205591]"}
      Heap[x, c_10] != null;
    assert {:msg "  Postcondition of fails1 might not hold. Assertion x.d != null might not hold. (0011.vpr@53.11--53.37) [205592]"}
      Heap[x, d_3] != null;
    if (Heap[x, b_94]) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of fails1 might not hold. There might be insufficient permission to access x.d.f (0011.vpr@54.11--54.29) [205593]"}
          perm <= Mask[Heap[x, d_3], f_7];
      }
      Mask := Mask[Heap[x, d_3], f_7:=Mask[Heap[x, d_3], f_7] - perm];
    }
    if (Heap[x, b_94]) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of fails1 might not hold. There might be insufficient permission to access x.c.f (0011.vpr@56.11--56.29) [205594]"}
          perm <= Mask[Heap[x, c_10], f_7];
      }
      Mask := Mask[Heap[x, c_10], f_7:=Mask[Heap[x, c_10], f_7] - perm];
    }
    assert {:msg "  Postcondition of fails1 might not hold. Assertion r == true might not hold. (0011.vpr@57.11--57.20) [205595]"}
      r_1;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method fails2
// ==================================================

procedure fails2(k: Perm, x: Ref) returns (r_1: bool)
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
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    assume NoPerm < k;
    assume state(Heap, Mask);
    perm := k;
    assert {:msg "  Contract might not be well-formed. Fraction k might be negative. (0011.vpr@68.12--68.53) [205596]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, c_10:=Mask[x, c_10] + perm];
    assume state(Heap, Mask);
    perm := k;
    assert {:msg "  Contract might not be well-formed. Fraction k might be negative. (0011.vpr@68.12--68.53) [205597]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, d_3:=Mask[x, d_3] + perm];
    assume state(Heap, Mask);
    perm := k;
    assert {:msg "  Contract might not be well-formed. Fraction k might be negative. (0011.vpr@68.12--68.53) [205598]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, b_94:=Mask[x, b_94] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of x.c != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.c (0011.vpr@69.12--69.38) [205599]"}
        HasDirectPerm(Mask, x, c_10);
    assume Heap[x, c_10] != null;
    
    // -- Check definedness of x.d != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.d (0011.vpr@69.12--69.38) [205600]"}
        HasDirectPerm(Mask, x, d_3);
    assume Heap[x, d_3] != null;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x.c.f, k)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.c (0011.vpr@70.12--70.39) [205601]"}
        HasDirectPerm(Mask, x, c_10);
    perm := k;
    assert {:msg "  Contract might not be well-formed. Fraction k might be negative. (0011.vpr@70.12--70.39) [205602]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[x, c_10] != null;
    Mask := Mask[Heap[x, c_10], f_7:=Mask[Heap[x, c_10], f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x.d.f, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.d (0011.vpr@70.12--70.39) [205603]"}
        HasDirectPerm(Mask, x, d_3);
    perm := FullPerm;
    assume Heap[x, d_3] != null;
    Mask := Mask[Heap[x, d_3], f_7:=Mask[Heap[x, d_3], f_7] + perm];
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
    perm := k;
    assert {:msg "  Contract might not be well-formed. Fraction k might be negative. (0011.vpr@71.11--71.52) [205604]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    PostMask := PostMask[x, c_10:=PostMask[x, c_10] + perm];
    assume state(PostHeap, PostMask);
    perm := k;
    assert {:msg "  Contract might not be well-formed. Fraction k might be negative. (0011.vpr@71.11--71.52) [205605]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    PostMask := PostMask[x, d_3:=PostMask[x, d_3] + perm];
    assume state(PostHeap, PostMask);
    perm := k;
    assert {:msg "  Contract might not be well-formed. Fraction k might be negative. (0011.vpr@71.11--71.52) [205606]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    PostMask := PostMask[x, b_94:=PostMask[x, b_94] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.c != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.c (0011.vpr@72.11--72.37) [205607]"}
        HasDirectPerm(PostMask, x, c_10);
    assume PostHeap[x, c_10] != null;
    
    // -- Check definedness of x.d != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.d (0011.vpr@72.11--72.37) [205608]"}
        HasDirectPerm(PostMask, x, d_3);
    assume PostHeap[x, d_3] != null;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(x.c.f, k)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.c (0011.vpr@73.11--73.38) [205609]"}
        HasDirectPerm(PostMask, x, c_10);
    perm := k;
    assert {:msg "  Contract might not be well-formed. Fraction k might be negative. (0011.vpr@73.11--73.38) [205610]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> PostHeap[x, c_10] != null;
    PostMask := PostMask[PostHeap[x, c_10], f_7:=PostMask[PostHeap[x, c_10], f_7] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(x.d.f, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.d (0011.vpr@73.11--73.38) [205611]"}
        HasDirectPerm(PostMask, x, d_3);
    perm := FullPerm;
    assume PostHeap[x, d_3] != null;
    PostMask := PostMask[PostHeap[x, d_3], f_7:=PostMask[PostHeap[x, d_3], f_7] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.b == (x.c.f == x.d.f)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.b (0011.vpr@75.11--75.34) [205612]"}
        HasDirectPerm(PostMask, x, b_94);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.c (0011.vpr@75.11--75.34) [205613]"}
        HasDirectPerm(PostMask, x, c_10);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.c.f (0011.vpr@75.11--75.34) [205614]"}
        HasDirectPerm(PostMask, PostHeap[x, c_10], f_7);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.d (0011.vpr@75.11--75.34) [205615]"}
        HasDirectPerm(PostMask, x, d_3);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.d.f (0011.vpr@75.11--75.34) [205616]"}
        HasDirectPerm(PostMask, PostHeap[x, d_3], f_7);
    assume PostHeap[x, b_94] == (PostHeap[PostHeap[x, c_10], f_7] == PostHeap[PostHeap[x, d_3], f_7]);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := k;
    assert {:msg "  Postcondition of fails2 might not hold. Fraction k might be negative. (0011.vpr@71.11--71.52) [205617]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of fails2 might not hold. There might be insufficient permission to access x.c (0011.vpr@71.11--71.52) [205618]"}
        perm <= Mask[x, c_10];
    }
    Mask := Mask[x, c_10:=Mask[x, c_10] - perm];
    perm := k;
    assert {:msg "  Postcondition of fails2 might not hold. Fraction k might be negative. (0011.vpr@71.11--71.52) [205619]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of fails2 might not hold. There might be insufficient permission to access x.d (0011.vpr@71.11--71.52) [205620]"}
        perm <= Mask[x, d_3];
    }
    Mask := Mask[x, d_3:=Mask[x, d_3] - perm];
    perm := k;
    assert {:msg "  Postcondition of fails2 might not hold. Fraction k might be negative. (0011.vpr@71.11--71.52) [205621]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of fails2 might not hold. There might be insufficient permission to access x.b (0011.vpr@71.11--71.52) [205622]"}
        perm <= Mask[x, b_94];
    }
    Mask := Mask[x, b_94:=Mask[x, b_94] - perm];
    assert {:msg "  Postcondition of fails2 might not hold. Assertion x.c != null might not hold. (0011.vpr@72.11--72.37) [205623]"}
      Heap[x, c_10] != null;
    assert {:msg "  Postcondition of fails2 might not hold. Assertion x.d != null might not hold. (0011.vpr@72.11--72.37) [205624]"}
      Heap[x, d_3] != null;
    perm := k;
    assert {:msg "  Postcondition of fails2 might not hold. Fraction k might be negative. (0011.vpr@73.11--73.38) [205625]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of fails2 might not hold. There might be insufficient permission to access x.c.f (0011.vpr@73.11--73.38) [205626]"}
        perm <= Mask[Heap[x, c_10], f_7];
    }
    Mask := Mask[Heap[x, c_10], f_7:=Mask[Heap[x, c_10], f_7] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of fails2 might not hold. There might be insufficient permission to access x.d.f (0011.vpr@73.11--73.38) [205627]"}
        perm <= Mask[Heap[x, d_3], f_7];
    }
    Mask := Mask[Heap[x, d_3], f_7:=Mask[Heap[x, d_3], f_7] - perm];
    assert {:msg "  Postcondition of fails2 might not hold. Assertion x.b == (x.c.f == x.d.f) might not hold. (0011.vpr@75.11--75.34) [205628]"}
      Heap[x, b_94] == (Heap[Heap[x, c_10], f_7] == Heap[Heap[x, d_3], f_7]);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}