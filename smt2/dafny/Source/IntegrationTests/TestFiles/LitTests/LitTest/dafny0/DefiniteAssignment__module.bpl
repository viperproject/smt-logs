// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment-@PROC@.smt2 /normalizeNames:0 /emitDebugInformation:1 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy

const $$Language$Dafny: bool
uses {
axiom $$Language$Dafny;
}

type Ty;

type Bv0 = int;

const unique TBool: Ty
uses {
axiom Tag(TBool) == TagBool;
}

const unique TChar: Ty
uses {
axiom Tag(TChar) == TagChar;
}

const unique TInt: Ty
uses {
axiom Tag(TInt) == TagInt;
}

const unique TReal: Ty
uses {
axiom Tag(TReal) == TagReal;
}

const unique TORDINAL: Ty
uses {
axiom Tag(TORDINAL) == TagORDINAL;
}

revealed function TBitvector(int) : Ty;

axiom (forall w: int :: { TBitvector(w) } Inv0_TBitvector(TBitvector(w)) == w);

revealed function TSet(Ty) : Ty;

axiom (forall t: Ty :: { TSet(t) } Inv0_TSet(TSet(t)) == t);

axiom (forall t: Ty :: { TSet(t) } Tag(TSet(t)) == TagSet);

revealed function TISet(Ty) : Ty;

axiom (forall t: Ty :: { TISet(t) } Inv0_TISet(TISet(t)) == t);

axiom (forall t: Ty :: { TISet(t) } Tag(TISet(t)) == TagISet);

revealed function TMultiSet(Ty) : Ty;

axiom (forall t: Ty :: { TMultiSet(t) } Inv0_TMultiSet(TMultiSet(t)) == t);

axiom (forall t: Ty :: { TMultiSet(t) } Tag(TMultiSet(t)) == TagMultiSet);

revealed function TSeq(Ty) : Ty;

axiom (forall t: Ty :: { TSeq(t) } Inv0_TSeq(TSeq(t)) == t);

axiom (forall t: Ty :: { TSeq(t) } Tag(TSeq(t)) == TagSeq);

revealed function TMap(Ty, Ty) : Ty;

axiom (forall t: Ty, u: Ty :: { TMap(t, u) } Inv0_TMap(TMap(t, u)) == t);

axiom (forall t: Ty, u: Ty :: { TMap(t, u) } Inv1_TMap(TMap(t, u)) == u);

axiom (forall t: Ty, u: Ty :: { TMap(t, u) } Tag(TMap(t, u)) == TagMap);

revealed function TIMap(Ty, Ty) : Ty;

axiom (forall t: Ty, u: Ty :: { TIMap(t, u) } Inv0_TIMap(TIMap(t, u)) == t);

axiom (forall t: Ty, u: Ty :: { TIMap(t, u) } Inv1_TIMap(TIMap(t, u)) == u);

axiom (forall t: Ty, u: Ty :: { TIMap(t, u) } Tag(TIMap(t, u)) == TagIMap);

revealed function Inv0_TBitvector(Ty) : int;

revealed function Inv0_TSet(Ty) : Ty;

revealed function Inv0_TISet(Ty) : Ty;

revealed function Inv0_TSeq(Ty) : Ty;

revealed function Inv0_TMultiSet(Ty) : Ty;

revealed function Inv0_TMap(Ty) : Ty;

revealed function Inv1_TMap(Ty) : Ty;

revealed function Inv0_TIMap(Ty) : Ty;

revealed function Inv1_TIMap(Ty) : Ty;

type TyTag;

revealed function Tag(Ty) : TyTag;

const unique TagBool: TyTag;

const unique TagChar: TyTag;

const unique TagInt: TyTag;

const unique TagReal: TyTag;

const unique TagORDINAL: TyTag;

const unique TagSet: TyTag;

const unique TagISet: TyTag;

const unique TagMultiSet: TyTag;

const unique TagSeq: TyTag;

const unique TagMap: TyTag;

const unique TagIMap: TyTag;

const unique TagClass: TyTag;

type TyTagFamily;

revealed function TagFamily(Ty) : TyTagFamily;

revealed function {:identity} Lit<T>(x: T) : T
uses {
axiom (forall<T> x: T :: {:identity} { Lit(x): T } Lit(x): T == x);
}

axiom (forall<T> x: T :: { $Box(Lit(x)) } $Box(Lit(x)) == Lit($Box(x)));

revealed function {:identity} LitInt(x: int) : int
uses {
axiom (forall x: int :: {:identity} { LitInt(x): int } LitInt(x): int == x);
}

axiom (forall x: int :: { $Box(LitInt(x)) } $Box(LitInt(x)) == Lit($Box(x)));

revealed function {:identity} LitReal(x: real) : real
uses {
axiom (forall x: real :: {:identity} { LitReal(x): real } LitReal(x): real == x);
}

axiom (forall x: real :: { $Box(LitReal(x)) } $Box(LitReal(x)) == Lit($Box(x)));

revealed function {:inline} char#IsChar(n: int) : bool
{
  (0 <= n && n < 55296) || (57344 <= n && n < 1114112)
}

type char;

revealed function char#FromInt(int) : char;

axiom (forall n: int :: 
  { char#FromInt(n) } 
  char#IsChar(n) ==> char#ToInt(char#FromInt(n)) == n);

revealed function char#ToInt(char) : int;

axiom (forall ch: char :: 
  { char#ToInt(ch) } 
  char#FromInt(char#ToInt(ch)) == ch && char#IsChar(char#ToInt(ch)));

revealed function char#Plus(char, char) : char;

axiom (forall a: char, b: char :: 
  { char#Plus(a, b) } 
  char#Plus(a, b) == char#FromInt(char#ToInt(a) + char#ToInt(b)));

revealed function char#Minus(char, char) : char;

axiom (forall a: char, b: char :: 
  { char#Minus(a, b) } 
  char#Minus(a, b) == char#FromInt(char#ToInt(a) - char#ToInt(b)));

type ref;

const null: ref;

type Box;

const $ArbitraryBoxValue: Box;

revealed function $Box<T>(T) : Box;

revealed function $Unbox<T>(Box) : T;

axiom (forall<T> x: T :: { $Box(x) } $Unbox($Box(x)) == x);

axiom (forall<T> x: Box :: { $Unbox(x): T } $Box($Unbox(x): T) == x);

revealed function $IsBox(Box, Ty) : bool;

revealed function $IsAllocBox(Box, Ty, Heap) : bool;

axiom (forall bx: Box :: 
  { $IsBox(bx, TInt) } 
  $IsBox(bx, TInt) ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, TInt));

axiom (forall bx: Box :: 
  { $IsBox(bx, TReal) } 
  $IsBox(bx, TReal)
     ==> $Box($Unbox(bx): real) == bx && $Is($Unbox(bx): real, TReal));

axiom (forall bx: Box :: 
  { $IsBox(bx, TBool) } 
  $IsBox(bx, TBool)
     ==> $Box($Unbox(bx): bool) == bx && $Is($Unbox(bx): bool, TBool));

axiom (forall bx: Box :: 
  { $IsBox(bx, TChar) } 
  $IsBox(bx, TChar)
     ==> $Box($Unbox(bx): char) == bx && $Is($Unbox(bx): char, TChar));

axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(0)) } 
  $IsBox(bx, TBitvector(0))
     ==> $Box($Unbox(bx): Bv0) == bx && $Is($Unbox(bx): Bv0, TBitvector(0)));

axiom (forall bx: Box, t: Ty :: 
  { $IsBox(bx, TSet(t)) } 
  $IsBox(bx, TSet(t))
     ==> $Box($Unbox(bx): Set) == bx && $Is($Unbox(bx): Set, TSet(t)));

axiom (forall bx: Box, t: Ty :: 
  { $IsBox(bx, TISet(t)) } 
  $IsBox(bx, TISet(t))
     ==> $Box($Unbox(bx): ISet) == bx && $Is($Unbox(bx): ISet, TISet(t)));

axiom (forall bx: Box, t: Ty :: 
  { $IsBox(bx, TMultiSet(t)) } 
  $IsBox(bx, TMultiSet(t))
     ==> $Box($Unbox(bx): MultiSet) == bx && $Is($Unbox(bx): MultiSet, TMultiSet(t)));

axiom (forall bx: Box, t: Ty :: 
  { $IsBox(bx, TSeq(t)) } 
  $IsBox(bx, TSeq(t))
     ==> $Box($Unbox(bx): Seq) == bx && $Is($Unbox(bx): Seq, TSeq(t)));

axiom (forall bx: Box, s: Ty, t: Ty :: 
  { $IsBox(bx, TMap(s, t)) } 
  $IsBox(bx, TMap(s, t))
     ==> $Box($Unbox(bx): Map) == bx && $Is($Unbox(bx): Map, TMap(s, t)));

axiom (forall bx: Box, s: Ty, t: Ty :: 
  { $IsBox(bx, TIMap(s, t)) } 
  $IsBox(bx, TIMap(s, t))
     ==> $Box($Unbox(bx): IMap) == bx && $Is($Unbox(bx): IMap, TIMap(s, t)));

axiom (forall<T> v: T, t: Ty :: 
  { $IsBox($Box(v), t) } 
  $IsBox($Box(v), t) <==> $Is(v, t));

axiom (forall<T> v: T, t: Ty, h: Heap :: 
  { $IsAllocBox($Box(v), t, h) } 
  $IsAllocBox($Box(v), t, h) <==> $IsAlloc(v, t, h));

revealed function $Is<T>(T, Ty) : bool;

axiom (forall v: int :: { $Is(v, TInt) } $Is(v, TInt));

axiom (forall v: real :: { $Is(v, TReal) } $Is(v, TReal));

axiom (forall v: bool :: { $Is(v, TBool) } $Is(v, TBool));

axiom (forall v: char :: { $Is(v, TChar) } $Is(v, TChar));

axiom (forall v: ORDINAL :: { $Is(v, TORDINAL) } $Is(v, TORDINAL));

axiom (forall v: Bv0 :: { $Is(v, TBitvector(0)) } $Is(v, TBitvector(0)));

axiom (forall v: Set, t0: Ty :: 
  { $Is(v, TSet(t0)) } 
  $Is(v, TSet(t0))
     <==> (forall bx: Box :: 
      { Set#IsMember(v, bx) } 
      Set#IsMember(v, bx) ==> $IsBox(bx, t0)));

axiom (forall v: ISet, t0: Ty :: 
  { $Is(v, TISet(t0)) } 
  $Is(v, TISet(t0)) <==> (forall bx: Box :: { v[bx] } v[bx] ==> $IsBox(bx, t0)));

axiom (forall v: MultiSet, t0: Ty :: 
  { $Is(v, TMultiSet(t0)) } 
  $Is(v, TMultiSet(t0))
     <==> (forall bx: Box :: 
      { MultiSet#Multiplicity(v, bx) } 
      0 < MultiSet#Multiplicity(v, bx) ==> $IsBox(bx, t0)));

axiom (forall v: MultiSet, t0: Ty :: 
  { $Is(v, TMultiSet(t0)) } 
  $Is(v, TMultiSet(t0)) ==> $IsGoodMultiSet(v));

axiom (forall v: Seq, t0: Ty :: 
  { $Is(v, TSeq(t0)) } 
  $Is(v, TSeq(t0))
     <==> (forall i: int :: 
      { Seq#Index(v, i) } 
      0 <= i && i < Seq#Length(v) ==> $IsBox(Seq#Index(v, i), t0)));

axiom (forall v: Map, t0: Ty, t1: Ty :: 
  { $Is(v, TMap(t0, t1)) } 
  $Is(v, TMap(t0, t1))
     <==> (forall bx: Box :: 
      { Map#Elements(v)[bx] } { Set#IsMember(Map#Domain(v), bx) } 
      Set#IsMember(Map#Domain(v), bx)
         ==> $IsBox(Map#Elements(v)[bx], t1) && $IsBox(bx, t0)));

axiom (forall v: Map, t0: Ty, t1: Ty :: 
  { $Is(v, TMap(t0, t1)) } 
  $Is(v, TMap(t0, t1))
     ==> $Is(Map#Domain(v), TSet(t0))
       && $Is(Map#Values(v), TSet(t1))
       && $Is(Map#Items(v), TSet(Tclass._System.Tuple2(t0, t1))));

axiom (forall v: IMap, t0: Ty, t1: Ty :: 
  { $Is(v, TIMap(t0, t1)) } 
  $Is(v, TIMap(t0, t1))
     <==> (forall bx: Box :: 
      { IMap#Elements(v)[bx] } { IMap#Domain(v)[bx] } 
      IMap#Domain(v)[bx] ==> $IsBox(IMap#Elements(v)[bx], t1) && $IsBox(bx, t0)));

axiom (forall v: IMap, t0: Ty, t1: Ty :: 
  { $Is(v, TIMap(t0, t1)) } 
  $Is(v, TIMap(t0, t1))
     ==> $Is(IMap#Domain(v), TISet(t0))
       && $Is(IMap#Values(v), TISet(t1))
       && $Is(IMap#Items(v), TISet(Tclass._System.Tuple2(t0, t1))));

revealed function $IsAlloc<T>(T, Ty, Heap) : bool;

axiom (forall h: Heap, v: int :: { $IsAlloc(v, TInt, h) } $IsAlloc(v, TInt, h));

axiom (forall h: Heap, v: real :: { $IsAlloc(v, TReal, h) } $IsAlloc(v, TReal, h));

axiom (forall h: Heap, v: bool :: { $IsAlloc(v, TBool, h) } $IsAlloc(v, TBool, h));

axiom (forall h: Heap, v: char :: { $IsAlloc(v, TChar, h) } $IsAlloc(v, TChar, h));

axiom (forall h: Heap, v: ORDINAL :: 
  { $IsAlloc(v, TORDINAL, h) } 
  $IsAlloc(v, TORDINAL, h));

axiom (forall v: Bv0, h: Heap :: 
  { $IsAlloc(v, TBitvector(0), h) } 
  $IsAlloc(v, TBitvector(0), h));

axiom (forall v: Set, t0: Ty, h: Heap :: 
  { $IsAlloc(v, TSet(t0), h) } 
  $IsAlloc(v, TSet(t0), h)
     <==> (forall bx: Box :: 
      { Set#IsMember(v, bx) } 
      Set#IsMember(v, bx) ==> $IsAllocBox(bx, t0, h)));

axiom (forall v: ISet, t0: Ty, h: Heap :: 
  { $IsAlloc(v, TISet(t0), h) } 
  $IsAlloc(v, TISet(t0), h)
     <==> (forall bx: Box :: { v[bx] } v[bx] ==> $IsAllocBox(bx, t0, h)));

axiom (forall v: MultiSet, t0: Ty, h: Heap :: 
  { $IsAlloc(v, TMultiSet(t0), h) } 
  $IsAlloc(v, TMultiSet(t0), h)
     <==> (forall bx: Box :: 
      { MultiSet#Multiplicity(v, bx) } 
      0 < MultiSet#Multiplicity(v, bx) ==> $IsAllocBox(bx, t0, h)));

axiom (forall v: Seq, t0: Ty, h: Heap :: 
  { $IsAlloc(v, TSeq(t0), h) } 
  $IsAlloc(v, TSeq(t0), h)
     <==> (forall i: int :: 
      { Seq#Index(v, i) } 
      0 <= i && i < Seq#Length(v) ==> $IsAllocBox(Seq#Index(v, i), t0, h)));

axiom (forall v: Map, t0: Ty, t1: Ty, h: Heap :: 
  { $IsAlloc(v, TMap(t0, t1), h) } 
  $IsAlloc(v, TMap(t0, t1), h)
     <==> (forall bx: Box :: 
      { Map#Elements(v)[bx] } { Set#IsMember(Map#Domain(v), bx) } 
      Set#IsMember(Map#Domain(v), bx)
         ==> $IsAllocBox(Map#Elements(v)[bx], t1, h) && $IsAllocBox(bx, t0, h)));

axiom (forall v: IMap, t0: Ty, t1: Ty, h: Heap :: 
  { $IsAlloc(v, TIMap(t0, t1), h) } 
  $IsAlloc(v, TIMap(t0, t1), h)
     <==> (forall bx: Box :: 
      { IMap#Elements(v)[bx] } { IMap#Domain(v)[bx] } 
      IMap#Domain(v)[bx]
         ==> $IsAllocBox(IMap#Elements(v)[bx], t1, h) && $IsAllocBox(bx, t0, h)));

revealed function $AlwaysAllocated(Ty) : bool;

axiom (forall ty: Ty :: 
  { $AlwaysAllocated(ty) } 
  $AlwaysAllocated(ty)
     ==> (forall h: Heap, v: Box :: 
      { $IsAllocBox(v, ty, h) } 
      $IsBox(v, ty) ==> $IsAllocBox(v, ty, h)));

revealed function $OlderTag(Heap) : bool;

type ClassName;

const unique class._System.int: ClassName;

const unique class._System.bool: ClassName;

const unique class._System.set: ClassName;

const unique class._System.seq: ClassName;

const unique class._System.multiset: ClassName;

revealed function Tclass._System.object?() : Ty
uses {
// Tclass._System.object? Tag
axiom Tag(Tclass._System.object?()) == Tagclass._System.object?
   && TagFamily(Tclass._System.object?()) == tytagFamily$object;
}

revealed function Tclass._System.Tuple2(Ty, Ty) : Ty;

revealed function dtype(ref) : Ty;

revealed function TypeTuple(a: ClassName, b: ClassName) : ClassName;

revealed function TypeTupleCar(ClassName) : ClassName;

revealed function TypeTupleCdr(ClassName) : ClassName;

axiom (forall a: ClassName, b: ClassName :: 
  { TypeTuple(a, b) } 
  TypeTupleCar(TypeTuple(a, b)) == a && TypeTupleCdr(TypeTuple(a, b)) == b);

type HandleType;

revealed function SetRef_to_SetBox(s: [ref]bool) : Set;

axiom (forall s: [ref]bool, bx: Box :: 
  { Set#IsMember(SetRef_to_SetBox(s), bx) } 
  Set#IsMember(SetRef_to_SetBox(s), bx) == s[$Unbox(bx): ref]);

axiom (forall s: [ref]bool :: 
  { SetRef_to_SetBox(s) } 
  $Is(SetRef_to_SetBox(s), TSet(Tclass._System.object?())));

revealed function Apply1(Ty, Ty, Heap, HandleType, Box) : Box;

type DatatypeType;

type DtCtorId;

revealed function DatatypeCtorId(DatatypeType) : DtCtorId;

revealed function DtRank(DatatypeType) : int;

revealed function BoxRank(Box) : int;

axiom (forall d: DatatypeType :: { BoxRank($Box(d)) } BoxRank($Box(d)) == DtRank(d));

type ORDINAL = Box;

revealed function ORD#IsNat(ORDINAL) : bool;

revealed function ORD#Offset(ORDINAL) : int;

axiom (forall o: ORDINAL :: { ORD#Offset(o) } 0 <= ORD#Offset(o));

revealed function {:inline} ORD#IsLimit(o: ORDINAL) : bool
{
  ORD#Offset(o) == 0
}

revealed function {:inline} ORD#IsSucc(o: ORDINAL) : bool
{
  0 < ORD#Offset(o)
}

revealed function ORD#FromNat(int) : ORDINAL;

axiom (forall n: int :: 
  { ORD#FromNat(n) } 
  0 <= n ==> ORD#IsNat(ORD#FromNat(n)) && ORD#Offset(ORD#FromNat(n)) == n);

axiom (forall o: ORDINAL :: 
  { ORD#Offset(o) } { ORD#IsNat(o) } 
  ORD#IsNat(o) ==> o == ORD#FromNat(ORD#Offset(o)));

revealed function ORD#Less(ORDINAL, ORDINAL) : bool;

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Less(o, p) } 
  (ORD#Less(o, p) ==> o != p)
     && (ORD#IsNat(o) && !ORD#IsNat(p) ==> ORD#Less(o, p))
     && (ORD#IsNat(o) && ORD#IsNat(p)
       ==> ORD#Less(o, p) == (ORD#Offset(o) < ORD#Offset(p)))
     && (ORD#Less(o, p) && ORD#IsNat(p) ==> ORD#IsNat(o)));

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Less(o, p), ORD#Less(p, o) } 
  ORD#Less(o, p) || o == p || ORD#Less(p, o));

axiom (forall o: ORDINAL, p: ORDINAL, r: ORDINAL :: 
  { ORD#Less(o, p), ORD#Less(p, r) } { ORD#Less(o, p), ORD#Less(o, r) } 
  ORD#Less(o, p) && ORD#Less(p, r) ==> ORD#Less(o, r));

revealed function ORD#LessThanLimit(ORDINAL, ORDINAL) : bool;

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#LessThanLimit(o, p) } 
  ORD#LessThanLimit(o, p) == ORD#Less(o, p));

revealed function ORD#Plus(ORDINAL, ORDINAL) : ORDINAL;

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Plus(o, p) } 
  (ORD#IsNat(ORD#Plus(o, p)) ==> ORD#IsNat(o) && ORD#IsNat(p))
     && (ORD#IsNat(p)
       ==> ORD#IsNat(ORD#Plus(o, p)) == ORD#IsNat(o)
         && ORD#Offset(ORD#Plus(o, p)) == ORD#Offset(o) + ORD#Offset(p)));

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Plus(o, p) } 
  (o == ORD#Plus(o, p) || ORD#Less(o, ORD#Plus(o, p)))
     && (p == ORD#Plus(o, p) || ORD#Less(p, ORD#Plus(o, p))));

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Plus(o, p) } 
  (o == ORD#FromNat(0) ==> ORD#Plus(o, p) == p)
     && (p == ORD#FromNat(0) ==> ORD#Plus(o, p) == o));

revealed function ORD#Minus(ORDINAL, ORDINAL) : ORDINAL;

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Minus(o, p) } 
  ORD#IsNat(p) && ORD#Offset(p) <= ORD#Offset(o)
     ==> ORD#IsNat(ORD#Minus(o, p)) == ORD#IsNat(o)
       && ORD#Offset(ORD#Minus(o, p)) == ORD#Offset(o) - ORD#Offset(p));

axiom (forall o: ORDINAL, p: ORDINAL :: 
  { ORD#Minus(o, p) } 
  ORD#IsNat(p) && ORD#Offset(p) <= ORD#Offset(o)
     ==> (p == ORD#FromNat(0) && ORD#Minus(o, p) == o)
       || (p != ORD#FromNat(0) && ORD#Less(ORD#Minus(o, p), o)));

axiom (forall o: ORDINAL, m: int, n: int :: 
  { ORD#Plus(ORD#Plus(o, ORD#FromNat(m)), ORD#FromNat(n)) } 
  0 <= m && 0 <= n
     ==> ORD#Plus(ORD#Plus(o, ORD#FromNat(m)), ORD#FromNat(n))
       == ORD#Plus(o, ORD#FromNat(m + n)));

axiom (forall o: ORDINAL, m: int, n: int :: 
  { ORD#Minus(ORD#Minus(o, ORD#FromNat(m)), ORD#FromNat(n)) } 
  0 <= m && 0 <= n && m + n <= ORD#Offset(o)
     ==> ORD#Minus(ORD#Minus(o, ORD#FromNat(m)), ORD#FromNat(n))
       == ORD#Minus(o, ORD#FromNat(m + n)));

axiom (forall o: ORDINAL, m: int, n: int :: 
  { ORD#Minus(ORD#Plus(o, ORD#FromNat(m)), ORD#FromNat(n)) } 
  0 <= m && 0 <= n && n <= ORD#Offset(o) + m
     ==> (0 <= m - n
         ==> ORD#Minus(ORD#Plus(o, ORD#FromNat(m)), ORD#FromNat(n))
           == ORD#Plus(o, ORD#FromNat(m - n)))
       && (m - n <= 0
         ==> ORD#Minus(ORD#Plus(o, ORD#FromNat(m)), ORD#FromNat(n))
           == ORD#Minus(o, ORD#FromNat(n - m))));

axiom (forall o: ORDINAL, m: int, n: int :: 
  { ORD#Plus(ORD#Minus(o, ORD#FromNat(m)), ORD#FromNat(n)) } 
  0 <= m && 0 <= n && n <= ORD#Offset(o) + m
     ==> (0 <= m - n
         ==> ORD#Plus(ORD#Minus(o, ORD#FromNat(m)), ORD#FromNat(n))
           == ORD#Minus(o, ORD#FromNat(m - n)))
       && (m - n <= 0
         ==> ORD#Plus(ORD#Minus(o, ORD#FromNat(m)), ORD#FromNat(n))
           == ORD#Plus(o, ORD#FromNat(n - m))));

const $ModuleContextHeight: int;

const $FunctionContextHeight: int;

type LayerType;

const $LZ: LayerType;

revealed function $LS(LayerType) : LayerType;

revealed function AsFuelBottom(LayerType) : LayerType;

revealed function AtLayer<A>([LayerType]A, LayerType) : A;

axiom (forall<A> f: [LayerType]A, ly: LayerType :: 
  { AtLayer(f, ly) } 
  AtLayer(f, ly) == f[ly]);

axiom (forall<A> f: [LayerType]A, ly: LayerType :: 
  { AtLayer(f, $LS(ly)) } 
  AtLayer(f, $LS(ly)) == AtLayer(f, ly));

type Field;

revealed function FDim(Field) : int
uses {
axiom FDim(alloc) == 0;
}

revealed function IndexField(int) : Field;

axiom (forall i: int :: { IndexField(i) } FDim(IndexField(i)) == 1);

revealed function IndexField_Inverse(Field) : int;

axiom (forall i: int :: { IndexField(i) } IndexField_Inverse(IndexField(i)) == i);

revealed function MultiIndexField(Field, int) : Field;

axiom (forall f: Field, i: int :: 
  { MultiIndexField(f, i) } 
  FDim(MultiIndexField(f, i)) == FDim(f) + 1);

revealed function MultiIndexField_Inverse0(Field) : Field;

revealed function MultiIndexField_Inverse1(Field) : int;

axiom (forall f: Field, i: int :: 
  { MultiIndexField(f, i) } 
  MultiIndexField_Inverse0(MultiIndexField(f, i)) == f
     && MultiIndexField_Inverse1(MultiIndexField(f, i)) == i);

revealed function DeclType(Field) : ClassName;

type NameFamily;

revealed function DeclName(Field) : NameFamily
uses {
axiom DeclName(alloc) == allocName;
}

revealed function FieldOfDecl(ClassName, NameFamily) : Field;

axiom (forall cl: ClassName, nm: NameFamily :: 
  { FieldOfDecl(cl, nm): Field } 
  DeclType(FieldOfDecl(cl, nm): Field) == cl
     && DeclName(FieldOfDecl(cl, nm): Field) == nm);

revealed function $IsGhostField(Field) : bool
uses {
axiom $IsGhostField(alloc);
}

axiom (forall h: Heap, k: Heap :: 
  { $HeapSuccGhost(h, k) } 
  $HeapSuccGhost(h, k)
     ==> $HeapSucc(h, k)
       && (forall o: ref, f: Field :: 
        { read(k, o, f) } 
        !$IsGhostField(f) ==> read(h, o, f) == read(k, o, f)));

axiom (forall<T> h: Heap, k: Heap, v: T, t: Ty :: 
  { $HeapSucc(h, k), $IsAlloc(v, t, h) } 
  $HeapSucc(h, k) ==> $IsAlloc(v, t, h) ==> $IsAlloc(v, t, k));

axiom (forall h: Heap, k: Heap, bx: Box, t: Ty :: 
  { $HeapSucc(h, k), $IsAllocBox(bx, t, h) } 
  $HeapSucc(h, k) ==> $IsAllocBox(bx, t, h) ==> $IsAllocBox(bx, t, k));

const unique alloc: Field;

const unique allocName: NameFamily;

revealed function _System.array.Length(a: ref) : int;

axiom (forall o: ref :: { _System.array.Length(o) } 0 <= _System.array.Length(o));

revealed function Int(x: real) : int
uses {
axiom (forall x: real :: { Int(x): int } Int(x): int == int(x));
}

revealed function Real(x: int) : real
uses {
axiom (forall x: int :: { Real(x): real } Real(x): real == real(x));
}

axiom (forall i: int :: { Int(Real(i)) } Int(Real(i)) == i);

revealed function {:inline} _System.real.Floor(x: real) : int
{
  Int(x)
}

type Heap = [ref][Field]Box;

revealed function {:inline} read(H: Heap, r: ref, f: Field) : Box
{
  H[r][f]
}

revealed function {:inline} update(H: Heap, r: ref, f: Field, v: Box) : Heap
{
  H[r := H[r][f := v]]
}

revealed function $IsGoodHeap(Heap) : bool;

revealed function $IsHeapAnchor(Heap) : bool;

var $Heap: Heap where $IsGoodHeap($Heap) && $IsHeapAnchor($Heap);

const $OneHeap: Heap
uses {
axiom $IsGoodHeap($OneHeap);
}

revealed function $HeapSucc(Heap, Heap) : bool;

axiom (forall h: Heap, r: ref, f: Field, x: Box :: 
  { update(h, r, f, x) } 
  $IsGoodHeap(update(h, r, f, x)) ==> $HeapSucc(h, update(h, r, f, x)));

axiom (forall a: Heap, b: Heap, c: Heap :: 
  { $HeapSucc(a, b), $HeapSucc(b, c) } 
  a != c ==> $HeapSucc(a, b) && $HeapSucc(b, c) ==> $HeapSucc(a, c));

axiom (forall h: Heap, k: Heap :: 
  { $HeapSucc(h, k) } 
  $HeapSucc(h, k)
     ==> (forall o: ref :: 
      { read(k, o, alloc) } 
      $Unbox(read(h, o, alloc)) ==> $Unbox(read(k, o, alloc))));

revealed function $HeapSuccGhost(Heap, Heap) : bool;

procedure $YieldHavoc(this: ref, rds: Set, nw: Set);
  modifies $Heap;
  ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc))
       ==> 
      $o == this || Set#IsMember(rds, $Box($o)) || Set#IsMember(nw, $Box($o))
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
  ensures $HeapSucc(old($Heap), $Heap);



procedure $IterHavoc0(this: ref, rds: Set, modi: Set);
  modifies $Heap;
  ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc))
       ==> 
      Set#IsMember(rds, $Box($o)) && !Set#IsMember(modi, $Box($o)) && $o != this
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f));
  ensures $HeapSucc(old($Heap), $Heap);



procedure $IterHavoc1(this: ref, modi: Set, nw: Set);
  modifies $Heap;
  ensures (forall $o: ref, $f: Field :: 
    { read($Heap, $o, $f) } 
    $o != null && $Unbox(read(old($Heap), $o, alloc))
       ==> read($Heap, $o, $f) == read(old($Heap), $o, $f)
         || $o == this
         || Set#IsMember(modi, $Box($o))
         || Set#IsMember(nw, $Box($o)));
  ensures $HeapSucc(old($Heap), $Heap);



procedure $IterCollectNewObjects(prevHeap: Heap, newHeap: Heap, this: ref, NW: Field) returns (s: Set);
  ensures (forall bx: Box :: 
    { Set#IsMember(s, bx) } 
    Set#IsMember(s, bx)
       <==> Set#IsMember($Unbox(read(newHeap, this, NW)): Set, bx)
         || (
          $Unbox(bx) != null
           && !$Unbox(read(prevHeap, $Unbox(bx): ref, alloc))
           && $Unbox(read(newHeap, $Unbox(bx): ref, alloc))));



type Set;

revealed function Set#Card(s: Set) : int;

axiom (forall s: Set :: { Set#Card(s) } 0 <= Set#Card(s));

revealed function Set#Empty() : Set;

revealed function Set#IsMember(s: Set, o: Box) : bool;

axiom (forall o: Box :: 
  { Set#IsMember(Set#Empty(), o) } 
  !Set#IsMember(Set#Empty(), o));

axiom (forall s: Set :: 
  { Set#Card(s) } 
  (Set#Card(s) == 0 <==> s == Set#Empty())
     && (Set#Card(s) != 0
       ==> (exists x: Box :: { Set#IsMember(s, x) } Set#IsMember(s, x))));

revealed function Set#UnionOne(s: Set, o: Box) : Set;

axiom (forall a: Set, x: Box, o: Box :: 
  { Set#IsMember(Set#UnionOne(a, x), o) } 
  Set#IsMember(Set#UnionOne(a, x), o) <==> o == x || Set#IsMember(a, o));

axiom (forall a: Set, x: Box :: 
  { Set#UnionOne(a, x) } 
  Set#IsMember(Set#UnionOne(a, x), x));

axiom (forall a: Set, x: Box, y: Box :: 
  { Set#UnionOne(a, x), Set#IsMember(a, y) } 
  Set#IsMember(a, y) ==> Set#IsMember(Set#UnionOne(a, x), y));

axiom (forall a: Set, x: Box :: 
  { Set#Card(Set#UnionOne(a, x)) } 
  Set#IsMember(a, x) ==> Set#Card(Set#UnionOne(a, x)) == Set#Card(a));

axiom (forall a: Set, x: Box :: 
  { Set#Card(Set#UnionOne(a, x)) } 
  !Set#IsMember(a, x) ==> Set#Card(Set#UnionOne(a, x)) == Set#Card(a) + 1);

revealed function Set#Union(a: Set, b: Set) : Set;

axiom (forall a: Set, b: Set, o: Box :: 
  { Set#IsMember(Set#Union(a, b), o) } 
  Set#IsMember(Set#Union(a, b), o) <==> Set#IsMember(a, o) || Set#IsMember(b, o));

axiom (forall a: Set, b: Set, y: Box :: 
  { Set#Union(a, b), Set#IsMember(a, y) } 
  Set#IsMember(a, y) ==> Set#IsMember(Set#Union(a, b), y));

axiom (forall a: Set, b: Set, y: Box :: 
  { Set#Union(a, b), Set#IsMember(b, y) } 
  Set#IsMember(b, y) ==> Set#IsMember(Set#Union(a, b), y));

axiom (forall a: Set, b: Set :: 
  { Set#Union(a, b) } 
  Set#Disjoint(a, b)
     ==> Set#Difference(Set#Union(a, b), a) == b
       && Set#Difference(Set#Union(a, b), b) == a);

revealed function Set#Intersection(a: Set, b: Set) : Set;

axiom (forall a: Set, b: Set, o: Box :: 
  { Set#IsMember(Set#Intersection(a, b), o) } 
  Set#IsMember(Set#Intersection(a, b), o)
     <==> Set#IsMember(a, o) && Set#IsMember(b, o));

axiom (forall a: Set, b: Set :: 
  { Set#Union(Set#Union(a, b), b) } 
  Set#Union(Set#Union(a, b), b) == Set#Union(a, b));

axiom (forall a: Set, b: Set :: 
  { Set#Union(a, Set#Union(a, b)) } 
  Set#Union(a, Set#Union(a, b)) == Set#Union(a, b));

axiom (forall a: Set, b: Set :: 
  { Set#Intersection(Set#Intersection(a, b), b) } 
  Set#Intersection(Set#Intersection(a, b), b) == Set#Intersection(a, b));

axiom (forall a: Set, b: Set :: 
  { Set#Intersection(a, Set#Intersection(a, b)) } 
  Set#Intersection(a, Set#Intersection(a, b)) == Set#Intersection(a, b));

axiom (forall a: Set, b: Set :: 
  { Set#Card(Set#Union(a, b)) } { Set#Card(Set#Intersection(a, b)) } 
  Set#Card(Set#Union(a, b)) + Set#Card(Set#Intersection(a, b))
     == Set#Card(a) + Set#Card(b));

revealed function Set#Difference(a: Set, b: Set) : Set;

axiom (forall a: Set, b: Set, o: Box :: 
  { Set#IsMember(Set#Difference(a, b), o) } 
  Set#IsMember(Set#Difference(a, b), o)
     <==> Set#IsMember(a, o) && !Set#IsMember(b, o));

axiom (forall a: Set, b: Set, y: Box :: 
  { Set#Difference(a, b), Set#IsMember(b, y) } 
  Set#IsMember(b, y) ==> !Set#IsMember(Set#Difference(a, b), y));

axiom (forall a: Set, b: Set :: 
  { Set#Card(Set#Difference(a, b)) } 
  Set#Card(Set#Difference(a, b))
         + Set#Card(Set#Difference(b, a))
         + Set#Card(Set#Intersection(a, b))
       == Set#Card(Set#Union(a, b))
     && Set#Card(Set#Difference(a, b)) == Set#Card(a) - Set#Card(Set#Intersection(a, b)));

revealed function Set#Subset(a: Set, b: Set) : bool;

axiom (forall a: Set, b: Set :: 
  { Set#Subset(a, b) } 
  Set#Subset(a, b)
     <==> (forall o: Box :: 
      { Set#IsMember(a, o) } { Set#IsMember(b, o) } 
      Set#IsMember(a, o) ==> Set#IsMember(b, o)));

revealed function Set#Equal(a: Set, b: Set) : bool;

axiom (forall a: Set, b: Set :: 
  { Set#Equal(a, b) } 
  Set#Equal(a, b)
     <==> (forall o: Box :: 
      { Set#IsMember(a, o) } { Set#IsMember(b, o) } 
      Set#IsMember(a, o) <==> Set#IsMember(b, o)));

axiom (forall a: Set, b: Set :: { Set#Equal(a, b) } Set#Equal(a, b) ==> a == b);

revealed function Set#Disjoint(a: Set, b: Set) : bool;

axiom (forall a: Set, b: Set :: 
  { Set#Disjoint(a, b) } 
  Set#Disjoint(a, b)
     <==> (forall o: Box :: 
      { Set#IsMember(a, o) } { Set#IsMember(b, o) } 
      !Set#IsMember(a, o) || !Set#IsMember(b, o)));

revealed function Set#FromBoogieMap([Box]bool) : Set;

axiom (forall m: [Box]bool, bx: Box :: 
  { Set#IsMember(Set#FromBoogieMap(m), bx) } 
  Set#IsMember(Set#FromBoogieMap(m), bx) == m[bx]);

type ISet = [Box]bool;

revealed function ISet#Empty() : ISet;

axiom (forall o: Box :: { ISet#Empty()[o] } !ISet#Empty()[o]);

revealed function ISet#FromSet(Set) : ISet;

axiom (forall s: Set, bx: Box :: 
  { ISet#FromSet(s)[bx] } 
  ISet#FromSet(s)[bx] == Set#IsMember(s, bx));

revealed function ISet#UnionOne(ISet, Box) : ISet;

axiom (forall a: ISet, x: Box, o: Box :: 
  { ISet#UnionOne(a, x)[o] } 
  ISet#UnionOne(a, x)[o] <==> o == x || a[o]);

axiom (forall a: ISet, x: Box :: { ISet#UnionOne(a, x) } ISet#UnionOne(a, x)[x]);

axiom (forall a: ISet, x: Box, y: Box :: 
  { ISet#UnionOne(a, x), a[y] } 
  a[y] ==> ISet#UnionOne(a, x)[y]);

revealed function ISet#Union(ISet, ISet) : ISet;

axiom (forall a: ISet, b: ISet, o: Box :: 
  { ISet#Union(a, b)[o] } 
  ISet#Union(a, b)[o] <==> a[o] || b[o]);

axiom (forall a: ISet, b: ISet, y: Box :: 
  { ISet#Union(a, b), a[y] } 
  a[y] ==> ISet#Union(a, b)[y]);

axiom (forall a: ISet, b: ISet, y: Box :: 
  { ISet#Union(a, b), b[y] } 
  b[y] ==> ISet#Union(a, b)[y]);

axiom (forall a: ISet, b: ISet :: 
  { ISet#Union(a, b) } 
  ISet#Disjoint(a, b)
     ==> ISet#Difference(ISet#Union(a, b), a) == b
       && ISet#Difference(ISet#Union(a, b), b) == a);

revealed function ISet#Intersection(ISet, ISet) : ISet;

axiom (forall a: ISet, b: ISet, o: Box :: 
  { ISet#Intersection(a, b)[o] } 
  ISet#Intersection(a, b)[o] <==> a[o] && b[o]);

axiom (forall a: ISet, b: ISet :: 
  { ISet#Union(ISet#Union(a, b), b) } 
  ISet#Union(ISet#Union(a, b), b) == ISet#Union(a, b));

axiom (forall a: ISet, b: ISet :: 
  { ISet#Union(a, ISet#Union(a, b)) } 
  ISet#Union(a, ISet#Union(a, b)) == ISet#Union(a, b));

axiom (forall a: ISet, b: ISet :: 
  { ISet#Intersection(ISet#Intersection(a, b), b) } 
  ISet#Intersection(ISet#Intersection(a, b), b) == ISet#Intersection(a, b));

axiom (forall a: ISet, b: ISet :: 
  { ISet#Intersection(a, ISet#Intersection(a, b)) } 
  ISet#Intersection(a, ISet#Intersection(a, b)) == ISet#Intersection(a, b));

revealed function ISet#Difference(ISet, ISet) : ISet;

axiom (forall a: ISet, b: ISet, o: Box :: 
  { ISet#Difference(a, b)[o] } 
  ISet#Difference(a, b)[o] <==> a[o] && !b[o]);

axiom (forall a: ISet, b: ISet, y: Box :: 
  { ISet#Difference(a, b), b[y] } 
  b[y] ==> !ISet#Difference(a, b)[y]);

revealed function ISet#Subset(ISet, ISet) : bool;

axiom (forall a: ISet, b: ISet :: 
  { ISet#Subset(a, b) } 
  ISet#Subset(a, b) <==> (forall o: Box :: { a[o] } { b[o] } a[o] ==> b[o]));

revealed function ISet#Equal(ISet, ISet) : bool;

axiom (forall a: ISet, b: ISet :: 
  { ISet#Equal(a, b) } 
  ISet#Equal(a, b) <==> (forall o: Box :: { a[o] } { b[o] } a[o] <==> b[o]));

axiom (forall a: ISet, b: ISet :: { ISet#Equal(a, b) } ISet#Equal(a, b) ==> a == b);

revealed function ISet#Disjoint(ISet, ISet) : bool;

axiom (forall a: ISet, b: ISet :: 
  { ISet#Disjoint(a, b) } 
  ISet#Disjoint(a, b) <==> (forall o: Box :: { a[o] } { b[o] } !a[o] || !b[o]));

revealed function Math#min(a: int, b: int) : int;

axiom (forall a: int, b: int :: { Math#min(a, b) } a <= b <==> Math#min(a, b) == a);

axiom (forall a: int, b: int :: { Math#min(a, b) } b <= a <==> Math#min(a, b) == b);

axiom (forall a: int, b: int :: 
  { Math#min(a, b) } 
  Math#min(a, b) == a || Math#min(a, b) == b);

revealed function Math#clip(a: int) : int;

axiom (forall a: int :: { Math#clip(a) } 0 <= a ==> Math#clip(a) == a);

axiom (forall a: int :: { Math#clip(a) } a < 0 ==> Math#clip(a) == 0);

type MultiSet;

revealed function MultiSet#Multiplicity(m: MultiSet, o: Box) : int;

revealed function MultiSet#UpdateMultiplicity(m: MultiSet, o: Box, n: int) : MultiSet;

axiom (forall m: MultiSet, o: Box, n: int, p: Box :: 
  { MultiSet#Multiplicity(MultiSet#UpdateMultiplicity(m, o, n), p) } 
  0 <= n
     ==> (o == p ==> MultiSet#Multiplicity(MultiSet#UpdateMultiplicity(m, o, n), p) == n)
       && (o != p
         ==> MultiSet#Multiplicity(MultiSet#UpdateMultiplicity(m, o, n), p)
           == MultiSet#Multiplicity(m, p)));

revealed function $IsGoodMultiSet(ms: MultiSet) : bool;

axiom (forall ms: MultiSet :: 
  { $IsGoodMultiSet(ms) } 
  $IsGoodMultiSet(ms)
     <==> (forall bx: Box :: 
      { MultiSet#Multiplicity(ms, bx) } 
      0 <= MultiSet#Multiplicity(ms, bx)
         && MultiSet#Multiplicity(ms, bx) <= MultiSet#Card(ms)));

revealed function MultiSet#Card(m: MultiSet) : int;

axiom (forall s: MultiSet :: { MultiSet#Card(s) } 0 <= MultiSet#Card(s));

axiom (forall s: MultiSet, x: Box, n: int :: 
  { MultiSet#Card(MultiSet#UpdateMultiplicity(s, x, n)) } 
  0 <= n
     ==> MultiSet#Card(MultiSet#UpdateMultiplicity(s, x, n))
       == MultiSet#Card(s) - MultiSet#Multiplicity(s, x) + n);

revealed function MultiSet#Empty() : MultiSet;

axiom (forall o: Box :: 
  { MultiSet#Multiplicity(MultiSet#Empty(), o) } 
  MultiSet#Multiplicity(MultiSet#Empty(), o) == 0);

axiom (forall s: MultiSet :: 
  { MultiSet#Card(s) } 
  (MultiSet#Card(s) == 0 <==> s == MultiSet#Empty())
     && (MultiSet#Card(s) != 0
       ==> (exists x: Box :: 
        { MultiSet#Multiplicity(s, x) } 
        0 < MultiSet#Multiplicity(s, x))));

revealed function MultiSet#Singleton(o: Box) : MultiSet;

axiom (forall r: Box, o: Box :: 
  { MultiSet#Multiplicity(MultiSet#Singleton(r), o) } 
  (MultiSet#Multiplicity(MultiSet#Singleton(r), o) == 1 <==> r == o)
     && (MultiSet#Multiplicity(MultiSet#Singleton(r), o) == 0 <==> r != o));

axiom (forall r: Box :: 
  { MultiSet#Singleton(r) } 
  MultiSet#Singleton(r) == MultiSet#UnionOne(MultiSet#Empty(), r));

revealed function MultiSet#UnionOne(m: MultiSet, o: Box) : MultiSet;

axiom (forall a: MultiSet, x: Box, o: Box :: 
  { MultiSet#Multiplicity(MultiSet#UnionOne(a, x), o) } 
  0 < MultiSet#Multiplicity(MultiSet#UnionOne(a, x), o)
     <==> o == x || 0 < MultiSet#Multiplicity(a, o));

axiom (forall a: MultiSet, x: Box :: 
  { MultiSet#UnionOne(a, x) } 
  MultiSet#Multiplicity(MultiSet#UnionOne(a, x), x)
     == MultiSet#Multiplicity(a, x) + 1);

axiom (forall a: MultiSet, x: Box, y: Box :: 
  { MultiSet#UnionOne(a, x), MultiSet#Multiplicity(a, y) } 
  0 < MultiSet#Multiplicity(a, y)
     ==> 0 < MultiSet#Multiplicity(MultiSet#UnionOne(a, x), y));

axiom (forall a: MultiSet, x: Box, y: Box :: 
  { MultiSet#UnionOne(a, x), MultiSet#Multiplicity(a, y) } 
  x != y
     ==> MultiSet#Multiplicity(a, y) == MultiSet#Multiplicity(MultiSet#UnionOne(a, x), y));

axiom (forall a: MultiSet, x: Box :: 
  { MultiSet#Card(MultiSet#UnionOne(a, x)) } 
  MultiSet#Card(MultiSet#UnionOne(a, x)) == MultiSet#Card(a) + 1);

revealed function MultiSet#Union(a: MultiSet, b: MultiSet) : MultiSet;

axiom (forall a: MultiSet, b: MultiSet, o: Box :: 
  { MultiSet#Multiplicity(MultiSet#Union(a, b), o) } 
  MultiSet#Multiplicity(MultiSet#Union(a, b), o)
     == MultiSet#Multiplicity(a, o) + MultiSet#Multiplicity(b, o));

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Card(MultiSet#Union(a, b)) } 
  MultiSet#Card(MultiSet#Union(a, b)) == MultiSet#Card(a) + MultiSet#Card(b));

revealed function MultiSet#Intersection(a: MultiSet, b: MultiSet) : MultiSet;

axiom (forall a: MultiSet, b: MultiSet, o: Box :: 
  { MultiSet#Multiplicity(MultiSet#Intersection(a, b), o) } 
  MultiSet#Multiplicity(MultiSet#Intersection(a, b), o)
     == Math#min(MultiSet#Multiplicity(a, o), MultiSet#Multiplicity(b, o)));

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Intersection(MultiSet#Intersection(a, b), b) } 
  MultiSet#Intersection(MultiSet#Intersection(a, b), b)
     == MultiSet#Intersection(a, b));

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Intersection(a, MultiSet#Intersection(a, b)) } 
  MultiSet#Intersection(a, MultiSet#Intersection(a, b))
     == MultiSet#Intersection(a, b));

revealed function MultiSet#Difference(a: MultiSet, b: MultiSet) : MultiSet;

axiom (forall a: MultiSet, b: MultiSet, o: Box :: 
  { MultiSet#Multiplicity(MultiSet#Difference(a, b), o) } 
  MultiSet#Multiplicity(MultiSet#Difference(a, b), o)
     == Math#clip(MultiSet#Multiplicity(a, o) - MultiSet#Multiplicity(b, o)));

axiom (forall a: MultiSet, b: MultiSet, y: Box :: 
  { MultiSet#Difference(a, b), MultiSet#Multiplicity(b, y), MultiSet#Multiplicity(a, y) } 
  MultiSet#Multiplicity(a, y) <= MultiSet#Multiplicity(b, y)
     ==> MultiSet#Multiplicity(MultiSet#Difference(a, b), y) == 0);

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Card(MultiSet#Difference(a, b)) } 
  MultiSet#Card(MultiSet#Difference(a, b))
         + MultiSet#Card(MultiSet#Difference(b, a))
         + 2 * MultiSet#Card(MultiSet#Intersection(a, b))
       == MultiSet#Card(MultiSet#Union(a, b))
     && MultiSet#Card(MultiSet#Difference(a, b))
       == MultiSet#Card(a) - MultiSet#Card(MultiSet#Intersection(a, b)));

revealed function MultiSet#Subset(a: MultiSet, b: MultiSet) : bool;

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Subset(a, b) } 
  MultiSet#Subset(a, b)
     <==> (forall o: Box :: 
      { MultiSet#Multiplicity(a, o) } { MultiSet#Multiplicity(b, o) } 
      MultiSet#Multiplicity(a, o) <= MultiSet#Multiplicity(b, o)));

revealed function MultiSet#Equal(a: MultiSet, b: MultiSet) : bool;

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Equal(a, b) } 
  MultiSet#Equal(a, b)
     <==> (forall o: Box :: 
      { MultiSet#Multiplicity(a, o) } { MultiSet#Multiplicity(b, o) } 
      MultiSet#Multiplicity(a, o) == MultiSet#Multiplicity(b, o)));

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Equal(a, b) } 
  MultiSet#Equal(a, b) ==> a == b);

revealed function MultiSet#Disjoint(a: MultiSet, b: MultiSet) : bool;

axiom (forall a: MultiSet, b: MultiSet :: 
  { MultiSet#Disjoint(a, b) } 
  MultiSet#Disjoint(a, b)
     <==> (forall o: Box :: 
      { MultiSet#Multiplicity(a, o) } { MultiSet#Multiplicity(b, o) } 
      MultiSet#Multiplicity(a, o) == 0 || MultiSet#Multiplicity(b, o) == 0));

revealed function MultiSet#FromSet(s: Set) : MultiSet;

axiom (forall s: Set, a: Box :: 
  { MultiSet#Multiplicity(MultiSet#FromSet(s), a) } 
  (MultiSet#Multiplicity(MultiSet#FromSet(s), a) == 0 <==> !Set#IsMember(s, a))
     && (MultiSet#Multiplicity(MultiSet#FromSet(s), a) == 1 <==> Set#IsMember(s, a)));

axiom (forall s: Set :: 
  { MultiSet#Card(MultiSet#FromSet(s)) } 
  MultiSet#Card(MultiSet#FromSet(s)) == Set#Card(s));

revealed function MultiSet#FromSeq(s: Seq) : MultiSet
uses {
axiom MultiSet#FromSeq(Seq#Empty()) == MultiSet#Empty();
}

axiom (forall s: Seq :: { MultiSet#FromSeq(s) } $IsGoodMultiSet(MultiSet#FromSeq(s)));

axiom (forall s: Seq :: 
  { MultiSet#Card(MultiSet#FromSeq(s)) } 
  MultiSet#Card(MultiSet#FromSeq(s)) == Seq#Length(s));

axiom (forall s: Seq, v: Box :: 
  { MultiSet#FromSeq(Seq#Build(s, v)) } 
  MultiSet#FromSeq(Seq#Build(s, v)) == MultiSet#UnionOne(MultiSet#FromSeq(s), v));

axiom (forall a: Seq, b: Seq :: 
  { MultiSet#FromSeq(Seq#Append(a, b)) } 
  MultiSet#FromSeq(Seq#Append(a, b))
     == MultiSet#Union(MultiSet#FromSeq(a), MultiSet#FromSeq(b)));

axiom (forall s: Seq, i: int, v: Box, x: Box :: 
  { MultiSet#Multiplicity(MultiSet#FromSeq(Seq#Update(s, i, v)), x) } 
  0 <= i && i < Seq#Length(s)
     ==> MultiSet#Multiplicity(MultiSet#FromSeq(Seq#Update(s, i, v)), x)
       == MultiSet#Multiplicity(MultiSet#Union(MultiSet#Difference(MultiSet#FromSeq(s), MultiSet#Singleton(Seq#Index(s, i))), 
          MultiSet#Singleton(v)), 
        x));

axiom (forall s: Seq, x: Box :: 
  { MultiSet#Multiplicity(MultiSet#FromSeq(s), x) } 
  (exists i: int :: 
      { Seq#Index(s, i) } 
      0 <= i && i < Seq#Length(s) && x == Seq#Index(s, i))
     <==> 0 < MultiSet#Multiplicity(MultiSet#FromSeq(s), x));

type Seq;

revealed function Seq#Length(s: Seq) : int;

axiom (forall s: Seq :: { Seq#Length(s) } 0 <= Seq#Length(s));

revealed function Seq#Empty() : Seq
uses {
axiom Seq#Length(Seq#Empty()) == 0;
}

axiom (forall s: Seq :: { Seq#Length(s) } Seq#Length(s) == 0 ==> s == Seq#Empty());

revealed function Seq#Build(s: Seq, val: Box) : Seq;

revealed function Seq#Build_inv0(s: Seq) : Seq;

revealed function Seq#Build_inv1(s: Seq) : Box;

axiom (forall s: Seq, val: Box :: 
  { Seq#Build(s, val) } 
  Seq#Build_inv0(Seq#Build(s, val)) == s
     && Seq#Build_inv1(Seq#Build(s, val)) == val);

axiom (forall s: Seq, v: Box :: 
  { Seq#Build(s, v) } 
  Seq#Length(Seq#Build(s, v)) == 1 + Seq#Length(s));

axiom (forall s: Seq, i: int, v: Box :: 
  { Seq#Index(Seq#Build(s, v), i) } 
  (i == Seq#Length(s) ==> Seq#Index(Seq#Build(s, v), i) == v)
     && (i != Seq#Length(s) ==> Seq#Index(Seq#Build(s, v), i) == Seq#Index(s, i)));

axiom (forall s0: Seq, s1: Seq :: 
  { Seq#Length(Seq#Append(s0, s1)) } 
  Seq#Length(Seq#Append(s0, s1)) == Seq#Length(s0) + Seq#Length(s1));

revealed function Seq#Index(s: Seq, i: int) : Box;

axiom (forall s0: Seq, s1: Seq, n: int :: 
  { Seq#Index(Seq#Append(s0, s1), n) } 
  (n < Seq#Length(s0) ==> Seq#Index(Seq#Append(s0, s1), n) == Seq#Index(s0, n))
     && (Seq#Length(s0) <= n
       ==> Seq#Index(Seq#Append(s0, s1), n) == Seq#Index(s1, n - Seq#Length(s0))));

revealed function Seq#Update(s: Seq, i: int, val: Box) : Seq;

axiom (forall s: Seq, i: int, v: Box :: 
  { Seq#Length(Seq#Update(s, i, v)) } 
  0 <= i && i < Seq#Length(s) ==> Seq#Length(Seq#Update(s, i, v)) == Seq#Length(s));

axiom (forall s: Seq, i: int, v: Box, n: int :: 
  { Seq#Index(Seq#Update(s, i, v), n) } 
  0 <= n && n < Seq#Length(s)
     ==> (i == n ==> Seq#Index(Seq#Update(s, i, v), n) == v)
       && (i != n ==> Seq#Index(Seq#Update(s, i, v), n) == Seq#Index(s, n)));

revealed function Seq#Append(s0: Seq, s1: Seq) : Seq;

revealed function Seq#Contains(s: Seq, val: Box) : bool;

axiom (forall s: Seq, x: Box :: 
  { Seq#Contains(s, x) } 
  Seq#Contains(s, x)
     <==> (exists i: int :: 
      { Seq#Index(s, i) } 
      0 <= i && i < Seq#Length(s) && Seq#Index(s, i) == x));

axiom (forall x: Box :: 
  { Seq#Contains(Seq#Empty(), x) } 
  !Seq#Contains(Seq#Empty(), x));

axiom (forall s0: Seq, s1: Seq, x: Box :: 
  { Seq#Contains(Seq#Append(s0, s1), x) } 
  Seq#Contains(Seq#Append(s0, s1), x)
     <==> Seq#Contains(s0, x) || Seq#Contains(s1, x));

axiom (forall s: Seq, v: Box, x: Box :: 
  { Seq#Contains(Seq#Build(s, v), x) } 
  Seq#Contains(Seq#Build(s, v), x) <==> v == x || Seq#Contains(s, x));

axiom (forall s: Seq, n: int, x: Box :: 
  { Seq#Contains(Seq#Take(s, n), x) } 
  Seq#Contains(Seq#Take(s, n), x)
     <==> (exists i: int :: 
      { Seq#Index(s, i) } 
      0 <= i && i < n && i < Seq#Length(s) && Seq#Index(s, i) == x));

axiom (forall s: Seq, n: int, x: Box :: 
  { Seq#Contains(Seq#Drop(s, n), x) } 
  Seq#Contains(Seq#Drop(s, n), x)
     <==> (exists i: int :: 
      { Seq#Index(s, i) } 
      0 <= n && n <= i && i < Seq#Length(s) && Seq#Index(s, i) == x));

revealed function Seq#Equal(s0: Seq, s1: Seq) : bool;

axiom (forall s0: Seq, s1: Seq :: 
  { Seq#Equal(s0, s1) } 
  Seq#Equal(s0, s1)
     <==> Seq#Length(s0) == Seq#Length(s1)
       && (forall j: int :: 
        { Seq#Index(s0, j) } { Seq#Index(s1, j) } 
        0 <= j && j < Seq#Length(s0) ==> Seq#Index(s0, j) == Seq#Index(s1, j)));

axiom (forall a: Seq, b: Seq :: { Seq#Equal(a, b) } Seq#Equal(a, b) ==> a == b);

revealed function Seq#SameUntil(s0: Seq, s1: Seq, n: int) : bool;

axiom (forall s0: Seq, s1: Seq, n: int :: 
  { Seq#SameUntil(s0, s1, n) } 
  Seq#SameUntil(s0, s1, n)
     <==> (forall j: int :: 
      { Seq#Index(s0, j) } { Seq#Index(s1, j) } 
      0 <= j && j < n ==> Seq#Index(s0, j) == Seq#Index(s1, j)));

revealed function Seq#Take(s: Seq, howMany: int) : Seq;

axiom (forall s: Seq, n: int :: 
  { Seq#Length(Seq#Take(s, n)) } 
  0 <= n && n <= Seq#Length(s) ==> Seq#Length(Seq#Take(s, n)) == n);

axiom (forall s: Seq, n: int, j: int :: 
  {:weight 25} { Seq#Index(Seq#Take(s, n), j) } { Seq#Index(s, j), Seq#Take(s, n) } 
  0 <= j && j < n && j < Seq#Length(s)
     ==> Seq#Index(Seq#Take(s, n), j) == Seq#Index(s, j));

revealed function Seq#Drop(s: Seq, howMany: int) : Seq;

axiom (forall s: Seq, n: int :: 
  { Seq#Length(Seq#Drop(s, n)) } 
  0 <= n && n <= Seq#Length(s) ==> Seq#Length(Seq#Drop(s, n)) == Seq#Length(s) - n);

axiom (forall s: Seq, n: int, j: int :: 
  {:weight 25} { Seq#Index(Seq#Drop(s, n), j) } 
  0 <= n && 0 <= j && j < Seq#Length(s) - n
     ==> Seq#Index(Seq#Drop(s, n), j) == Seq#Index(s, j + n));

axiom (forall s: Seq, n: int, k: int :: 
  {:weight 25} { Seq#Index(s, k), Seq#Drop(s, n) } 
  0 <= n && n <= k && k < Seq#Length(s)
     ==> Seq#Index(Seq#Drop(s, n), k - n) == Seq#Index(s, k));

axiom (forall s: Seq, t: Seq, n: int :: 
  { Seq#Take(Seq#Append(s, t), n) } { Seq#Drop(Seq#Append(s, t), n) } 
  n == Seq#Length(s)
     ==> Seq#Take(Seq#Append(s, t), n) == s && Seq#Drop(Seq#Append(s, t), n) == t);

axiom (forall s: Seq, i: int, v: Box, n: int :: 
  { Seq#Take(Seq#Update(s, i, v), n) } 
  0 <= i && i < n && n <= Seq#Length(s)
     ==> Seq#Take(Seq#Update(s, i, v), n) == Seq#Update(Seq#Take(s, n), i, v));

axiom (forall s: Seq, i: int, v: Box, n: int :: 
  { Seq#Take(Seq#Update(s, i, v), n) } 
  n <= i && i < Seq#Length(s)
     ==> Seq#Take(Seq#Update(s, i, v), n) == Seq#Take(s, n));

axiom (forall s: Seq, i: int, v: Box, n: int :: 
  { Seq#Drop(Seq#Update(s, i, v), n) } 
  0 <= n && n <= i && i < Seq#Length(s)
     ==> Seq#Drop(Seq#Update(s, i, v), n) == Seq#Update(Seq#Drop(s, n), i - n, v));

axiom (forall s: Seq, i: int, v: Box, n: int :: 
  { Seq#Drop(Seq#Update(s, i, v), n) } 
  0 <= i && i < n && n <= Seq#Length(s)
     ==> Seq#Drop(Seq#Update(s, i, v), n) == Seq#Drop(s, n));

axiom (forall s: Seq, v: Box, n: int :: 
  { Seq#Drop(Seq#Build(s, v), n) } 
  0 <= n && n <= Seq#Length(s)
     ==> Seq#Drop(Seq#Build(s, v), n) == Seq#Build(Seq#Drop(s, n), v));

axiom (forall s: Seq, n: int :: { Seq#Drop(s, n) } n == 0 ==> Seq#Drop(s, n) == s);

axiom (forall s: Seq, n: int :: 
  { Seq#Take(s, n) } 
  n == 0 ==> Seq#Take(s, n) == Seq#Empty());

axiom (forall s: Seq, m: int, n: int :: 
  { Seq#Drop(Seq#Drop(s, m), n) } 
  0 <= m && 0 <= n && m + n <= Seq#Length(s)
     ==> Seq#Drop(Seq#Drop(s, m), n) == Seq#Drop(s, m + n));

axiom (forall s: Seq, bx: Box, t: Ty :: 
  { $Is(Seq#Build(s, bx), TSeq(t)) } 
  $Is(s, TSeq(t)) && $IsBox(bx, t) ==> $Is(Seq#Build(s, bx), TSeq(t)));

revealed function Seq#Create(ty: Ty, heap: Heap, len: int, init: HandleType) : Seq;

axiom (forall ty: Ty, heap: Heap, len: int, init: HandleType :: 
  { Seq#Length(Seq#Create(ty, heap, len, init): Seq) } 
  $IsGoodHeap(heap) && 0 <= len
     ==> Seq#Length(Seq#Create(ty, heap, len, init): Seq) == len);

axiom (forall ty: Ty, heap: Heap, len: int, init: HandleType, i: int :: 
  { Seq#Index(Seq#Create(ty, heap, len, init), i) } 
  $IsGoodHeap(heap) && 0 <= i && i < len
     ==> Seq#Index(Seq#Create(ty, heap, len, init), i)
       == Apply1(TInt, ty, heap, init, $Box(i)));

revealed function Seq#FromArray(h: Heap, a: ref) : Seq;

axiom (forall h: Heap, a: ref :: 
  { Seq#Length(Seq#FromArray(h, a)) } 
  Seq#Length(Seq#FromArray(h, a)) == _System.array.Length(a));

axiom (forall h: Heap, a: ref :: 
  { Seq#FromArray(h, a) } 
  (forall i: int :: 
    { read(h, a, IndexField(i)) } { Seq#Index(Seq#FromArray(h, a): Seq, i) } 
    0 <= i && i < Seq#Length(Seq#FromArray(h, a))
       ==> Seq#Index(Seq#FromArray(h, a), i) == read(h, a, IndexField(i))));

axiom (forall h0: Heap, h1: Heap, a: ref :: 
  { Seq#FromArray(h1, a), $HeapSucc(h0, h1) } 
  $IsGoodHeap(h0) && $IsGoodHeap(h1) && $HeapSucc(h0, h1) && h0[a] == h1[a]
     ==> Seq#FromArray(h0, a) == Seq#FromArray(h1, a));

axiom (forall h: Heap, i: int, v: Box, a: ref :: 
  { Seq#FromArray(update(h, a, IndexField(i), v), a) } 
  0 <= i && i < _System.array.Length(a)
     ==> Seq#FromArray(update(h, a, IndexField(i), v), a)
       == Seq#Update(Seq#FromArray(h, a), i, v));

axiom (forall h: Heap, a: ref, n0: int, n1: int :: 
  { Seq#Take(Seq#FromArray(h, a), n0), Seq#Take(Seq#FromArray(h, a), n1) } 
  n0 + 1 == n1 && 0 <= n0 && n1 <= _System.array.Length(a)
     ==> Seq#Take(Seq#FromArray(h, a), n1)
       == Seq#Build(Seq#Take(Seq#FromArray(h, a), n0), read(h, a, IndexField(n0): Field)));

revealed function Seq#Rank(Seq) : int;

axiom (forall s: Seq, i: int :: 
  { DtRank($Unbox(Seq#Index(s, i)): DatatypeType) } 
  0 <= i && i < Seq#Length(s)
     ==> DtRank($Unbox(Seq#Index(s, i)): DatatypeType) < Seq#Rank(s));

axiom (forall s: Seq, i: int :: 
  { Seq#Rank(Seq#Drop(s, i)) } 
  0 < i && i <= Seq#Length(s) ==> Seq#Rank(Seq#Drop(s, i)) < Seq#Rank(s));

axiom (forall s: Seq, i: int :: 
  { Seq#Rank(Seq#Take(s, i)) } 
  0 <= i && i < Seq#Length(s) ==> Seq#Rank(Seq#Take(s, i)) < Seq#Rank(s));

axiom (forall s: Seq, i: int, j: int :: 
  { Seq#Rank(Seq#Append(Seq#Take(s, i), Seq#Drop(s, j))) } 
  0 <= i && i < j && j <= Seq#Length(s)
     ==> Seq#Rank(Seq#Append(Seq#Take(s, i), Seq#Drop(s, j))) < Seq#Rank(s));

type Map;

revealed function Map#Domain(Map) : Set;

revealed function Map#Elements(Map) : [Box]Box;

revealed function Map#Card(Map) : int;

axiom (forall m: Map :: { Map#Card(m) } 0 <= Map#Card(m));

axiom (forall m: Map :: { Map#Card(m) } Map#Card(m) == 0 <==> m == Map#Empty());

axiom (forall m: Map :: 
  { Map#Domain(m) } 
  m == Map#Empty() || (exists k: Box :: Set#IsMember(Map#Domain(m), k)));

axiom (forall m: Map :: 
  { Map#Values(m) } 
  m == Map#Empty() || (exists v: Box :: Set#IsMember(Map#Values(m), v)));

axiom (forall m: Map :: 
  { Map#Items(m) } 
  m == Map#Empty()
     || (exists k: Box, v: Box :: 
      Set#IsMember(Map#Items(m), $Box(#_System._tuple#2._#Make2(k, v)))));

axiom (forall m: Map :: 
  { Set#Card(Map#Domain(m)) } { Map#Card(m) } 
  Set#Card(Map#Domain(m)) == Map#Card(m));

axiom (forall m: Map :: 
  { Set#Card(Map#Values(m)) } { Map#Card(m) } 
  Set#Card(Map#Values(m)) <= Map#Card(m));

axiom (forall m: Map :: 
  { Set#Card(Map#Items(m)) } { Map#Card(m) } 
  Set#Card(Map#Items(m)) == Map#Card(m));

revealed function Map#Values(Map) : Set;

axiom (forall m: Map, v: Box :: 
  { Set#IsMember(Map#Values(m), v) } 
  Set#IsMember(Map#Values(m), v)
     == (exists u: Box :: 
      { Set#IsMember(Map#Domain(m), u) } { Map#Elements(m)[u] } 
      Set#IsMember(Map#Domain(m), u) && v == Map#Elements(m)[u]));

revealed function Map#Items(Map) : Set;

revealed function #_System._tuple#2._#Make2(Box, Box) : DatatypeType;

revealed function _System.Tuple2._0(DatatypeType) : Box;

revealed function _System.Tuple2._1(DatatypeType) : Box;

axiom (forall m: Map, item: Box :: 
  { Set#IsMember(Map#Items(m), item) } 
  Set#IsMember(Map#Items(m), item)
     <==> Set#IsMember(Map#Domain(m), _System.Tuple2._0($Unbox(item)))
       && Map#Elements(m)[_System.Tuple2._0($Unbox(item))]
         == _System.Tuple2._1($Unbox(item)));

revealed function Map#Empty() : Map;

axiom (forall u: Box :: 
  { Set#IsMember(Map#Domain(Map#Empty(): Map), u) } 
  !Set#IsMember(Map#Domain(Map#Empty(): Map), u));

revealed function Map#Glue(Set, [Box]Box, Ty) : Map;

axiom (forall a: Set, b: [Box]Box, t: Ty :: 
  { Map#Domain(Map#Glue(a, b, t)) } 
  Map#Domain(Map#Glue(a, b, t)) == a);

axiom (forall a: Set, b: [Box]Box, t: Ty :: 
  { Map#Elements(Map#Glue(a, b, t)) } 
  Map#Elements(Map#Glue(a, b, t)) == b);

axiom (forall a: Set, b: [Box]Box, t0: Ty, t1: Ty :: 
  { Map#Glue(a, b, TMap(t0, t1)) } 
  (forall bx: Box :: Set#IsMember(a, bx) ==> $IsBox(bx, t0) && $IsBox(b[bx], t1))
     ==> $Is(Map#Glue(a, b, TMap(t0, t1)), TMap(t0, t1)));

revealed function Map#Build(Map, Box, Box) : Map;

axiom (forall m: Map, u: Box, u': Box, v: Box :: 
  { Set#IsMember(Map#Domain(Map#Build(m, u, v)), u') } 
    { Map#Elements(Map#Build(m, u, v))[u'] } 
  (u' == u
       ==> Set#IsMember(Map#Domain(Map#Build(m, u, v)), u')
         && Map#Elements(Map#Build(m, u, v))[u'] == v)
     && (u' != u
       ==> Set#IsMember(Map#Domain(Map#Build(m, u, v)), u')
           == Set#IsMember(Map#Domain(m), u')
         && Map#Elements(Map#Build(m, u, v))[u'] == Map#Elements(m)[u']));

axiom (forall m: Map, u: Box, v: Box :: 
  { Map#Card(Map#Build(m, u, v)) } 
  Set#IsMember(Map#Domain(m), u) ==> Map#Card(Map#Build(m, u, v)) == Map#Card(m));

axiom (forall m: Map, u: Box, v: Box :: 
  { Map#Card(Map#Build(m, u, v)) } 
  !Set#IsMember(Map#Domain(m), u)
     ==> Map#Card(Map#Build(m, u, v)) == Map#Card(m) + 1);

revealed function Map#Merge(Map, Map) : Map;

axiom (forall m: Map, n: Map :: 
  { Map#Domain(Map#Merge(m, n)) } 
  Map#Domain(Map#Merge(m, n)) == Set#Union(Map#Domain(m), Map#Domain(n)));

axiom (forall m: Map, n: Map, u: Box :: 
  { Map#Elements(Map#Merge(m, n))[u] } 
  Set#IsMember(Map#Domain(Map#Merge(m, n)), u)
     ==> (!Set#IsMember(Map#Domain(n), u)
         ==> Map#Elements(Map#Merge(m, n))[u] == Map#Elements(m)[u])
       && (Set#IsMember(Map#Domain(n), u)
         ==> Map#Elements(Map#Merge(m, n))[u] == Map#Elements(n)[u]));

revealed function Map#Subtract(Map, Set) : Map;

axiom (forall m: Map, s: Set :: 
  { Map#Domain(Map#Subtract(m, s)) } 
  Map#Domain(Map#Subtract(m, s)) == Set#Difference(Map#Domain(m), s));

axiom (forall m: Map, s: Set, u: Box :: 
  { Map#Elements(Map#Subtract(m, s))[u] } 
  Set#IsMember(Map#Domain(Map#Subtract(m, s)), u)
     ==> Map#Elements(Map#Subtract(m, s))[u] == Map#Elements(m)[u]);

revealed function Map#Equal(Map, Map) : bool;

axiom (forall m: Map, m': Map :: 
  { Map#Equal(m, m') } 
  Map#Equal(m, m')
     <==> (forall u: Box :: 
        Set#IsMember(Map#Domain(m), u) == Set#IsMember(Map#Domain(m'), u))
       && (forall u: Box :: 
        Set#IsMember(Map#Domain(m), u) ==> Map#Elements(m)[u] == Map#Elements(m')[u]));

axiom (forall m: Map, m': Map :: { Map#Equal(m, m') } Map#Equal(m, m') ==> m == m');

revealed function Map#Disjoint(Map, Map) : bool;

axiom (forall m: Map, m': Map :: 
  { Map#Disjoint(m, m') } 
  Map#Disjoint(m, m')
     <==> (forall o: Box :: 
      { Set#IsMember(Map#Domain(m), o) } { Set#IsMember(Map#Domain(m'), o) } 
      !Set#IsMember(Map#Domain(m), o) || !Set#IsMember(Map#Domain(m'), o)));

type IMap;

revealed function IMap#Domain(IMap) : ISet;

revealed function IMap#Elements(IMap) : [Box]Box;

axiom (forall m: IMap :: 
  { IMap#Domain(m) } 
  m == IMap#Empty() || (exists k: Box :: IMap#Domain(m)[k]));

axiom (forall m: IMap :: 
  { IMap#Values(m) } 
  m == IMap#Empty() || (exists v: Box :: IMap#Values(m)[v]));

axiom (forall m: IMap :: 
  { IMap#Items(m) } 
  m == IMap#Empty()
     || (exists k: Box, v: Box :: IMap#Items(m)[$Box(#_System._tuple#2._#Make2(k, v))]));

axiom (forall m: IMap :: 
  { IMap#Domain(m) } 
  m == IMap#Empty() <==> IMap#Domain(m) == ISet#Empty());

axiom (forall m: IMap :: 
  { IMap#Values(m) } 
  m == IMap#Empty() <==> IMap#Values(m) == ISet#Empty());

axiom (forall m: IMap :: 
  { IMap#Items(m) } 
  m == IMap#Empty() <==> IMap#Items(m) == ISet#Empty());

revealed function IMap#Values(IMap) : ISet;

axiom (forall m: IMap, v: Box :: 
  { IMap#Values(m)[v] } 
  IMap#Values(m)[v]
     == (exists u: Box :: 
      { IMap#Domain(m)[u] } { IMap#Elements(m)[u] } 
      IMap#Domain(m)[u] && v == IMap#Elements(m)[u]));

revealed function IMap#Items(IMap) : ISet;

axiom (forall m: IMap, item: Box :: 
  { IMap#Items(m)[item] } 
  IMap#Items(m)[item]
     <==> IMap#Domain(m)[_System.Tuple2._0($Unbox(item))]
       && IMap#Elements(m)[_System.Tuple2._0($Unbox(item))]
         == _System.Tuple2._1($Unbox(item)));

revealed function IMap#Empty() : IMap;

axiom (forall u: Box :: 
  { IMap#Domain(IMap#Empty(): IMap)[u] } 
  !IMap#Domain(IMap#Empty(): IMap)[u]);

revealed function IMap#Glue([Box]bool, [Box]Box, Ty) : IMap;

axiom (forall a: [Box]bool, b: [Box]Box, t: Ty :: 
  { IMap#Domain(IMap#Glue(a, b, t)) } 
  IMap#Domain(IMap#Glue(a, b, t)) == a);

axiom (forall a: [Box]bool, b: [Box]Box, t: Ty :: 
  { IMap#Elements(IMap#Glue(a, b, t)) } 
  IMap#Elements(IMap#Glue(a, b, t)) == b);

axiom (forall a: [Box]bool, b: [Box]Box, t0: Ty, t1: Ty :: 
  { IMap#Glue(a, b, TIMap(t0, t1)) } 
  (forall bx: Box :: a[bx] ==> $IsBox(bx, t0) && $IsBox(b[bx], t1))
     ==> $Is(IMap#Glue(a, b, TIMap(t0, t1)), TIMap(t0, t1)));

revealed function IMap#Build(IMap, Box, Box) : IMap;

axiom (forall m: IMap, u: Box, u': Box, v: Box :: 
  { IMap#Domain(IMap#Build(m, u, v))[u'] } 
    { IMap#Elements(IMap#Build(m, u, v))[u'] } 
  (u' == u
       ==> IMap#Domain(IMap#Build(m, u, v))[u']
         && IMap#Elements(IMap#Build(m, u, v))[u'] == v)
     && (u' != u
       ==> IMap#Domain(IMap#Build(m, u, v))[u'] == IMap#Domain(m)[u']
         && IMap#Elements(IMap#Build(m, u, v))[u'] == IMap#Elements(m)[u']));

revealed function IMap#Equal(IMap, IMap) : bool;

axiom (forall m: IMap, m': IMap :: 
  { IMap#Equal(m, m') } 
  IMap#Equal(m, m')
     <==> (forall u: Box :: IMap#Domain(m)[u] == IMap#Domain(m')[u])
       && (forall u: Box :: 
        IMap#Domain(m)[u] ==> IMap#Elements(m)[u] == IMap#Elements(m')[u]));

axiom (forall m: IMap, m': IMap :: 
  { IMap#Equal(m, m') } 
  IMap#Equal(m, m') ==> m == m');

revealed function IMap#Merge(IMap, IMap) : IMap;

axiom (forall m: IMap, n: IMap :: 
  { IMap#Domain(IMap#Merge(m, n)) } 
  IMap#Domain(IMap#Merge(m, n)) == ISet#Union(IMap#Domain(m), IMap#Domain(n)));

axiom (forall m: IMap, n: IMap, u: Box :: 
  { IMap#Elements(IMap#Merge(m, n))[u] } 
  IMap#Domain(IMap#Merge(m, n))[u]
     ==> (!IMap#Domain(n)[u]
         ==> IMap#Elements(IMap#Merge(m, n))[u] == IMap#Elements(m)[u])
       && (IMap#Domain(n)[u]
         ==> IMap#Elements(IMap#Merge(m, n))[u] == IMap#Elements(n)[u]));

revealed function IMap#Subtract(IMap, Set) : IMap;

axiom (forall m: IMap, s: Set :: 
  { IMap#Domain(IMap#Subtract(m, s)) } 
  IMap#Domain(IMap#Subtract(m, s))
     == ISet#Difference(IMap#Domain(m), ISet#FromSet(s)));

axiom (forall m: IMap, s: Set, u: Box :: 
  { IMap#Elements(IMap#Subtract(m, s))[u] } 
  IMap#Domain(IMap#Subtract(m, s))[u]
     ==> IMap#Elements(IMap#Subtract(m, s))[u] == IMap#Elements(m)[u]);

revealed function INTERNAL_add_boogie(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: 
  { INTERNAL_add_boogie(x, y): int } 
  INTERNAL_add_boogie(x, y): int == x + y);
}

revealed function INTERNAL_sub_boogie(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: 
  { INTERNAL_sub_boogie(x, y): int } 
  INTERNAL_sub_boogie(x, y): int == x - y);
}

revealed function INTERNAL_mul_boogie(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: 
  { INTERNAL_mul_boogie(x, y): int } 
  INTERNAL_mul_boogie(x, y): int == x * y);
}

revealed function INTERNAL_div_boogie(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: 
  { INTERNAL_div_boogie(x, y): int } 
  INTERNAL_div_boogie(x, y): int == x div y);
}

revealed function INTERNAL_mod_boogie(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: 
  { INTERNAL_mod_boogie(x, y): int } 
  INTERNAL_mod_boogie(x, y): int == x mod y);
}

revealed function {:never_pattern true} INTERNAL_lt_boogie(x: int, y: int) : bool
uses {
axiom (forall x: int, y: int :: 
  {:never_pattern true} { INTERNAL_lt_boogie(x, y): bool } 
  INTERNAL_lt_boogie(x, y): bool == (x < y));
}

revealed function {:never_pattern true} INTERNAL_le_boogie(x: int, y: int) : bool
uses {
axiom (forall x: int, y: int :: 
  {:never_pattern true} { INTERNAL_le_boogie(x, y): bool } 
  INTERNAL_le_boogie(x, y): bool == (x <= y));
}

revealed function {:never_pattern true} INTERNAL_gt_boogie(x: int, y: int) : bool
uses {
axiom (forall x: int, y: int :: 
  {:never_pattern true} { INTERNAL_gt_boogie(x, y): bool } 
  INTERNAL_gt_boogie(x, y): bool == (x > y));
}

revealed function {:never_pattern true} INTERNAL_ge_boogie(x: int, y: int) : bool
uses {
axiom (forall x: int, y: int :: 
  {:never_pattern true} { INTERNAL_ge_boogie(x, y): bool } 
  INTERNAL_ge_boogie(x, y): bool == (x >= y));
}

revealed function Mul(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: { Mul(x, y): int } Mul(x, y): int == x * y);
}

revealed function Div(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: { Div(x, y): int } Div(x, y): int == x div y);
}

revealed function Mod(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: { Mod(x, y): int } Mod(x, y): int == x mod y);
}

revealed function Add(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: { Add(x, y): int } Add(x, y): int == x + y);
}

revealed function Sub(x: int, y: int) : int
uses {
axiom (forall x: int, y: int :: { Sub(x, y): int } Sub(x, y): int == x - y);
}

function Tclass._System.nat() : Ty
uses {
// Tclass._System.nat Tag
axiom Tag(Tclass._System.nat()) == Tagclass._System.nat
   && TagFamily(Tclass._System.nat()) == tytagFamily$nat;
}

const unique Tagclass._System.nat: TyTag;

// Box/unbox axiom for Tclass._System.nat
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._System.nat()) } 
  $IsBox(bx, Tclass._System.nat())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._System.nat()));

// $Is axiom for subset type _System.nat
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._System.nat()) } 
  $Is(x#0, Tclass._System.nat()) <==> LitInt(0) <= x#0);

// $IsAlloc axiom for subset type _System.nat
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._System.nat(), $h) } 
  $IsAlloc(x#0, Tclass._System.nat(), $h));

const unique class._System.object?: ClassName;

const unique Tagclass._System.object?: TyTag;

// Box/unbox axiom for Tclass._System.object?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._System.object?()) } 
  $IsBox(bx, Tclass._System.object?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._System.object?()));

// $Is axiom for trait object
axiom (forall $o: ref :: 
  { $Is($o, Tclass._System.object?()) } 
  $Is($o, Tclass._System.object?()));

// $IsAlloc axiom for trait object
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._System.object?(), $h) } 
  $IsAlloc($o, Tclass._System.object?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$_System.object(ty: Ty) : bool;

function Tclass._System.object() : Ty
uses {
// Tclass._System.object Tag
axiom Tag(Tclass._System.object()) == Tagclass._System.object
   && TagFamily(Tclass._System.object()) == tytagFamily$object;
}

const unique Tagclass._System.object: TyTag;

// Box/unbox axiom for Tclass._System.object
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._System.object()) } 
  $IsBox(bx, Tclass._System.object())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._System.object()));

// $Is axiom for non-null type _System.object
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._System.object()) } { $Is(c#0, Tclass._System.object?()) } 
  $Is(c#0, Tclass._System.object())
     <==> $Is(c#0, Tclass._System.object?()) && c#0 != null);

// $IsAlloc axiom for non-null type _System.object
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._System.object(), $h) } 
    { $IsAlloc(c#0, Tclass._System.object?(), $h) } 
  $IsAlloc(c#0, Tclass._System.object(), $h)
     <==> $IsAlloc(c#0, Tclass._System.object?(), $h));

const unique class._System.array?: ClassName;

function Tclass._System.array?(Ty) : Ty;

const unique Tagclass._System.array?: TyTag;

// Tclass._System.array? Tag
axiom (forall _System.array$arg: Ty :: 
  { Tclass._System.array?(_System.array$arg) } 
  Tag(Tclass._System.array?(_System.array$arg)) == Tagclass._System.array?
     && TagFamily(Tclass._System.array?(_System.array$arg)) == tytagFamily$array);

function Tclass._System.array?_0(Ty) : Ty;

// Tclass._System.array? injectivity 0
axiom (forall _System.array$arg: Ty :: 
  { Tclass._System.array?(_System.array$arg) } 
  Tclass._System.array?_0(Tclass._System.array?(_System.array$arg))
     == _System.array$arg);

// Box/unbox axiom for Tclass._System.array?
axiom (forall _System.array$arg: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.array?(_System.array$arg)) } 
  $IsBox(bx, Tclass._System.array?(_System.array$arg))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._System.array?(_System.array$arg)));

// array.: Type axiom
axiom (forall _System.array$arg: Ty, $h: Heap, $o: ref, $i0: int :: 
  { read($h, $o, IndexField($i0)), Tclass._System.array?(_System.array$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array?(_System.array$arg)
       && 
      0 <= $i0
       && $i0 < _System.array.Length($o)
     ==> $IsBox(read($h, $o, IndexField($i0)), _System.array$arg));

// array.: Allocation axiom
axiom (forall _System.array$arg: Ty, $h: Heap, $o: ref, $i0: int :: 
  { read($h, $o, IndexField($i0)), Tclass._System.array?(_System.array$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array?(_System.array$arg)
       && 
      0 <= $i0
       && $i0 < _System.array.Length($o)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, IndexField($i0)), _System.array$arg, $h));

// $Is axiom for array type array
axiom (forall _System.array$arg: Ty, $o: ref :: 
  { $Is($o, Tclass._System.array?(_System.array$arg)) } 
  $Is($o, Tclass._System.array?(_System.array$arg))
     <==> $o == null || dtype($o) == Tclass._System.array?(_System.array$arg));

// $IsAlloc axiom for array type array
axiom (forall _System.array$arg: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._System.array?(_System.array$arg), $h) } 
  $IsAlloc($o, Tclass._System.array?(_System.array$arg), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// array.Length: Type axiom
axiom (forall _System.array$arg: Ty, $o: ref :: 
  { _System.array.Length($o), Tclass._System.array?(_System.array$arg) } 
  $o != null && dtype($o) == Tclass._System.array?(_System.array$arg)
     ==> $Is(_System.array.Length($o), TInt));

// array.Length: Allocation axiom
axiom (forall _System.array$arg: Ty, $h: Heap, $o: ref :: 
  { _System.array.Length($o), $Unbox(read($h, $o, alloc)): bool, Tclass._System.array?(_System.array$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array?(_System.array$arg)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_System.array.Length($o), TInt, $h));

function Tclass._System.array(Ty) : Ty;

const unique Tagclass._System.array: TyTag;

// Tclass._System.array Tag
axiom (forall _System.array$arg: Ty :: 
  { Tclass._System.array(_System.array$arg) } 
  Tag(Tclass._System.array(_System.array$arg)) == Tagclass._System.array
     && TagFamily(Tclass._System.array(_System.array$arg)) == tytagFamily$array);

function Tclass._System.array_0(Ty) : Ty;

// Tclass._System.array injectivity 0
axiom (forall _System.array$arg: Ty :: 
  { Tclass._System.array(_System.array$arg) } 
  Tclass._System.array_0(Tclass._System.array(_System.array$arg))
     == _System.array$arg);

// Box/unbox axiom for Tclass._System.array
axiom (forall _System.array$arg: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.array(_System.array$arg)) } 
  $IsBox(bx, Tclass._System.array(_System.array$arg))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._System.array(_System.array$arg)));

// $Is axiom for non-null type _System.array
axiom (forall _System.array$arg: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._System.array(_System.array$arg)) } 
    { $Is(c#0, Tclass._System.array?(_System.array$arg)) } 
  $Is(c#0, Tclass._System.array(_System.array$arg))
     <==> $Is(c#0, Tclass._System.array?(_System.array$arg)) && c#0 != null);

// $IsAlloc axiom for non-null type _System.array
axiom (forall _System.array$arg: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._System.array(_System.array$arg), $h) } 
    { $IsAlloc(c#0, Tclass._System.array?(_System.array$arg), $h) } 
  $IsAlloc(c#0, Tclass._System.array(_System.array$arg), $h)
     <==> $IsAlloc(c#0, Tclass._System.array?(_System.array$arg), $h));

function Tclass._System.___hFunc1(Ty, Ty) : Ty;

const unique Tagclass._System.___hFunc1: TyTag;

// Tclass._System.___hFunc1 Tag
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc1(#$T0, #$R) } 
  Tag(Tclass._System.___hFunc1(#$T0, #$R)) == Tagclass._System.___hFunc1
     && TagFamily(Tclass._System.___hFunc1(#$T0, #$R)) == tytagFamily$_#Func1);

function Tclass._System.___hFunc1_0(Ty) : Ty;

// Tclass._System.___hFunc1 injectivity 0
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc1(#$T0, #$R) } 
  Tclass._System.___hFunc1_0(Tclass._System.___hFunc1(#$T0, #$R)) == #$T0);

function Tclass._System.___hFunc1_1(Ty) : Ty;

// Tclass._System.___hFunc1 injectivity 1
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc1(#$T0, #$R) } 
  Tclass._System.___hFunc1_1(Tclass._System.___hFunc1(#$T0, #$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hFunc1
axiom (forall #$T0: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc1(#$T0, #$R)) } 
  $IsBox(bx, Tclass._System.___hFunc1(#$T0, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc1(#$T0, #$R)));

function Handle1([Heap,Box]Box, [Heap,Box]bool, [Heap,Box]Set) : HandleType;

function Requires1(Ty, Ty, Heap, HandleType, Box) : bool;

function Reads1(Ty, Ty, Heap, HandleType, Box) : Set;

axiom (forall t0: Ty, 
    t1: Ty, 
    heap: Heap, 
    h: [Heap,Box]Box, 
    r: [Heap,Box]bool, 
    rd: [Heap,Box]Set, 
    bx0: Box :: 
  { Apply1(t0, t1, heap, Handle1(h, r, rd), bx0) } 
  Apply1(t0, t1, heap, Handle1(h, r, rd), bx0) == h[heap, bx0]);

axiom (forall t0: Ty, 
    t1: Ty, 
    heap: Heap, 
    h: [Heap,Box]Box, 
    r: [Heap,Box]bool, 
    rd: [Heap,Box]Set, 
    bx0: Box :: 
  { Requires1(t0, t1, heap, Handle1(h, r, rd), bx0) } 
  r[heap, bx0] ==> Requires1(t0, t1, heap, Handle1(h, r, rd), bx0));

axiom (forall t0: Ty, 
    t1: Ty, 
    heap: Heap, 
    h: [Heap,Box]Box, 
    r: [Heap,Box]bool, 
    rd: [Heap,Box]Set, 
    bx0: Box, 
    bx: Box :: 
  { Set#IsMember(Reads1(t0, t1, heap, Handle1(h, r, rd), bx0), bx) } 
  Set#IsMember(Reads1(t0, t1, heap, Handle1(h, r, rd), bx0), bx)
     == Set#IsMember(rd[heap, bx0], bx));

function {:inline} Requires1#canCall(t0: Ty, t1: Ty, heap: Heap, f: HandleType, bx0: Box) : bool
{
  true
}

function {:inline} Reads1#canCall(t0: Ty, t1: Ty, heap: Heap, f: HandleType, bx0: Box) : bool
{
  true
}

// frame axiom for Reads1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Reads1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h0, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads1(t0, t1, h0, f, bx0) == Reads1(t0, t1, h1, f, bx0));

// frame axiom for Reads1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Reads1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h1, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads1(t0, t1, h0, f, bx0) == Reads1(t0, t1, h1, f, bx0));

// frame axiom for Requires1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Requires1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h0, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires1(t0, t1, h0, f, bx0) == Requires1(t0, t1, h1, f, bx0));

// frame axiom for Requires1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Requires1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h1, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires1(t0, t1, h0, f, bx0) == Requires1(t0, t1, h1, f, bx0));

// frame axiom for Apply1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Apply1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h0, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply1(t0, t1, h0, f, bx0) == Apply1(t0, t1, h1, f, bx0));

// frame axiom for Apply1
axiom (forall t0: Ty, t1: Ty, h0: Heap, h1: Heap, f: HandleType, bx0: Box :: 
  { $HeapSucc(h0, h1), Apply1(t0, t1, h1, f, bx0) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads1(t0, t1, h1, f, bx0), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply1(t0, t1, h0, f, bx0) == Apply1(t0, t1, h1, f, bx0));

// empty-reads property for Reads1 
axiom (forall t0: Ty, t1: Ty, heap: Heap, f: HandleType, bx0: Box :: 
  { Reads1(t0, t1, $OneHeap, f, bx0), $IsGoodHeap(heap) } 
    { Reads1(t0, t1, heap, f, bx0) } 
  $IsGoodHeap(heap) && $IsBox(bx0, t0) && $Is(f, Tclass._System.___hFunc1(t0, t1))
     ==> (Set#Equal(Reads1(t0, t1, $OneHeap, f, bx0), Set#Empty(): Set)
       <==> Set#Equal(Reads1(t0, t1, heap, f, bx0), Set#Empty(): Set)));

// empty-reads property for Requires1
axiom (forall t0: Ty, t1: Ty, heap: Heap, f: HandleType, bx0: Box :: 
  { Requires1(t0, t1, $OneHeap, f, bx0), $IsGoodHeap(heap) } 
    { Requires1(t0, t1, heap, f, bx0) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $Is(f, Tclass._System.___hFunc1(t0, t1))
       && Set#Equal(Reads1(t0, t1, $OneHeap, f, bx0), Set#Empty(): Set)
     ==> Requires1(t0, t1, $OneHeap, f, bx0) == Requires1(t0, t1, heap, f, bx0));

axiom (forall f: HandleType, t0: Ty, t1: Ty :: 
  { $Is(f, Tclass._System.___hFunc1(t0, t1)) } 
  $Is(f, Tclass._System.___hFunc1(t0, t1))
     <==> (forall h: Heap, bx0: Box :: 
      { Apply1(t0, t1, h, f, bx0) } 
      $IsGoodHeap(h) && $IsBox(bx0, t0) && Requires1(t0, t1, h, f, bx0)
         ==> $IsBox(Apply1(t0, t1, h, f, bx0), t1)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, u0: Ty, u1: Ty :: 
  { $Is(f, Tclass._System.___hFunc1(t0, t1)), $Is(f, Tclass._System.___hFunc1(u0, u1)) } 
  $Is(f, Tclass._System.___hFunc1(t0, t1))
       && (forall bx: Box :: 
        { $IsBox(bx, u0) } { $IsBox(bx, t0) } 
        $IsBox(bx, u0) ==> $IsBox(bx, t0))
       && (forall bx: Box :: 
        { $IsBox(bx, t1) } { $IsBox(bx, u1) } 
        $IsBox(bx, t1) ==> $IsBox(bx, u1))
     ==> $Is(f, Tclass._System.___hFunc1(u0, u1)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc1(t0, t1), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc1(t0, t1), h)
       <==> (forall bx0: Box :: 
        { Apply1(t0, t1, h, f, bx0) } { Reads1(t0, t1, h, f, bx0) } 
        $IsBox(bx0, t0) && $IsAllocBox(bx0, t0, h) && Requires1(t0, t1, h, f, bx0)
           ==> (forall r: ref :: 
            { Set#IsMember(Reads1(t0, t1, h, f, bx0), $Box(r)) } 
            r != null && Set#IsMember(Reads1(t0, t1, h, f, bx0), $Box(r))
               ==> $Unbox(read(h, r, alloc)): bool))));

axiom (forall f: HandleType, t0: Ty, t1: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc1(t0, t1), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc1(t0, t1), h)
     ==> (forall bx0: Box :: 
      { Apply1(t0, t1, h, f, bx0) } 
      $IsAllocBox(bx0, t0, h) && Requires1(t0, t1, h, f, bx0)
         ==> $IsAllocBox(Apply1(t0, t1, h, f, bx0), t1, h)));

function Tclass._System.___hPartialFunc1(Ty, Ty) : Ty;

const unique Tagclass._System.___hPartialFunc1: TyTag;

// Tclass._System.___hPartialFunc1 Tag
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc1(#$T0, #$R) } 
  Tag(Tclass._System.___hPartialFunc1(#$T0, #$R))
       == Tagclass._System.___hPartialFunc1
     && TagFamily(Tclass._System.___hPartialFunc1(#$T0, #$R))
       == tytagFamily$_#PartialFunc1);

function Tclass._System.___hPartialFunc1_0(Ty) : Ty;

// Tclass._System.___hPartialFunc1 injectivity 0
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc1(#$T0, #$R) } 
  Tclass._System.___hPartialFunc1_0(Tclass._System.___hPartialFunc1(#$T0, #$R))
     == #$T0);

function Tclass._System.___hPartialFunc1_1(Ty) : Ty;

// Tclass._System.___hPartialFunc1 injectivity 1
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc1(#$T0, #$R) } 
  Tclass._System.___hPartialFunc1_1(Tclass._System.___hPartialFunc1(#$T0, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc1
axiom (forall #$T0: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc1(#$T0, #$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc1(#$T0, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hPartialFunc1(#$T0, #$R)));

// $Is axiom for subset type _System._#PartialFunc1
axiom (forall #$T0: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R))
     <==> $Is(f#0, Tclass._System.___hFunc1(#$T0, #$R))
       && (forall x0#0: Box :: 
        $IsBox(x0#0, #$T0)
           ==> Set#Equal(Reads1(#$T0, #$R, $OneHeap, f#0, x0#0), Set#Empty(): Set)));

// $IsAlloc axiom for subset type _System._#PartialFunc1
axiom (forall #$T0: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc1(#$T0, #$R), $h));

function Tclass._System.___hTotalFunc1(Ty, Ty) : Ty;

const unique Tagclass._System.___hTotalFunc1: TyTag;

// Tclass._System.___hTotalFunc1 Tag
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc1(#$T0, #$R) } 
  Tag(Tclass._System.___hTotalFunc1(#$T0, #$R)) == Tagclass._System.___hTotalFunc1
     && TagFamily(Tclass._System.___hTotalFunc1(#$T0, #$R)) == tytagFamily$_#TotalFunc1);

function Tclass._System.___hTotalFunc1_0(Ty) : Ty;

// Tclass._System.___hTotalFunc1 injectivity 0
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc1(#$T0, #$R) } 
  Tclass._System.___hTotalFunc1_0(Tclass._System.___hTotalFunc1(#$T0, #$R))
     == #$T0);

function Tclass._System.___hTotalFunc1_1(Ty) : Ty;

// Tclass._System.___hTotalFunc1 injectivity 1
axiom (forall #$T0: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc1(#$T0, #$R) } 
  Tclass._System.___hTotalFunc1_1(Tclass._System.___hTotalFunc1(#$T0, #$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc1
axiom (forall #$T0: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc1(#$T0, #$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc1(#$T0, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hTotalFunc1(#$T0, #$R)));

// $Is axiom for subset type _System._#TotalFunc1
axiom (forall #$T0: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc1(#$T0, #$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc1(#$T0, #$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R))
       && (forall x0#0: Box :: 
        $IsBox(x0#0, #$T0) ==> Requires1(#$T0, #$R, $OneHeap, f#0, x0#0)));

// $IsAlloc axiom for subset type _System._#TotalFunc1
axiom (forall #$T0: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc1(#$T0, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc1(#$T0, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc1(#$T0, #$R), $h));

function Tclass._System.___hFunc0(Ty) : Ty;

const unique Tagclass._System.___hFunc0: TyTag;

// Tclass._System.___hFunc0 Tag
axiom (forall #$R: Ty :: 
  { Tclass._System.___hFunc0(#$R) } 
  Tag(Tclass._System.___hFunc0(#$R)) == Tagclass._System.___hFunc0
     && TagFamily(Tclass._System.___hFunc0(#$R)) == tytagFamily$_#Func0);

function Tclass._System.___hFunc0_0(Ty) : Ty;

// Tclass._System.___hFunc0 injectivity 0
axiom (forall #$R: Ty :: 
  { Tclass._System.___hFunc0(#$R) } 
  Tclass._System.___hFunc0_0(Tclass._System.___hFunc0(#$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hFunc0
axiom (forall #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc0(#$R)) } 
  $IsBox(bx, Tclass._System.___hFunc0(#$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc0(#$R)));

function Handle0([Heap]Box, [Heap]bool, [Heap]Set) : HandleType;

function Apply0(Ty, Heap, HandleType) : Box;

function Requires0(Ty, Heap, HandleType) : bool;

function Reads0(Ty, Heap, HandleType) : Set;

axiom (forall t0: Ty, heap: Heap, h: [Heap]Box, r: [Heap]bool, rd: [Heap]Set :: 
  { Apply0(t0, heap, Handle0(h, r, rd)) } 
  Apply0(t0, heap, Handle0(h, r, rd)) == h[heap]);

axiom (forall t0: Ty, heap: Heap, h: [Heap]Box, r: [Heap]bool, rd: [Heap]Set :: 
  { Requires0(t0, heap, Handle0(h, r, rd)) } 
  r[heap] ==> Requires0(t0, heap, Handle0(h, r, rd)));

axiom (forall t0: Ty, heap: Heap, h: [Heap]Box, r: [Heap]bool, rd: [Heap]Set, bx: Box :: 
  { Set#IsMember(Reads0(t0, heap, Handle0(h, r, rd)), bx) } 
  Set#IsMember(Reads0(t0, heap, Handle0(h, r, rd)), bx)
     == Set#IsMember(rd[heap], bx));

function {:inline} Requires0#canCall(t0: Ty, heap: Heap, f: HandleType) : bool
{
  true
}

function {:inline} Reads0#canCall(t0: Ty, heap: Heap, f: HandleType) : bool
{
  true
}

// frame axiom for Reads0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Reads0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h0, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads0(t0, h0, f) == Reads0(t0, h1, f));

// frame axiom for Reads0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Reads0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h1, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads0(t0, h0, f) == Reads0(t0, h1, f));

// frame axiom for Requires0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Requires0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h0, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires0(t0, h0, f) == Requires0(t0, h1, f));

// frame axiom for Requires0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Requires0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h1, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires0(t0, h0, f) == Requires0(t0, h1, f));

// frame axiom for Apply0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Apply0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h0, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply0(t0, h0, f) == Apply0(t0, h1, f));

// frame axiom for Apply0
axiom (forall t0: Ty, h0: Heap, h1: Heap, f: HandleType :: 
  { $HeapSucc(h0, h1), Apply0(t0, h1, f) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads0(t0, h1, f), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply0(t0, h0, f) == Apply0(t0, h1, f));

// empty-reads property for Reads0 
axiom (forall t0: Ty, heap: Heap, f: HandleType :: 
  { Reads0(t0, $OneHeap, f), $IsGoodHeap(heap) } { Reads0(t0, heap, f) } 
  $IsGoodHeap(heap) && $Is(f, Tclass._System.___hFunc0(t0))
     ==> (Set#Equal(Reads0(t0, $OneHeap, f), Set#Empty(): Set)
       <==> Set#Equal(Reads0(t0, heap, f), Set#Empty(): Set)));

// empty-reads property for Requires0
axiom (forall t0: Ty, heap: Heap, f: HandleType :: 
  { Requires0(t0, $OneHeap, f), $IsGoodHeap(heap) } { Requires0(t0, heap, f) } 
  $IsGoodHeap(heap)
       && $Is(f, Tclass._System.___hFunc0(t0))
       && Set#Equal(Reads0(t0, $OneHeap, f), Set#Empty(): Set)
     ==> Requires0(t0, $OneHeap, f) == Requires0(t0, heap, f));

axiom (forall f: HandleType, t0: Ty :: 
  { $Is(f, Tclass._System.___hFunc0(t0)) } 
  $Is(f, Tclass._System.___hFunc0(t0))
     <==> (forall h: Heap :: 
      { Apply0(t0, h, f) } 
      $IsGoodHeap(h) && Requires0(t0, h, f) ==> $IsBox(Apply0(t0, h, f), t0)));

axiom (forall f: HandleType, t0: Ty, u0: Ty :: 
  { $Is(f, Tclass._System.___hFunc0(t0)), $Is(f, Tclass._System.___hFunc0(u0)) } 
  $Is(f, Tclass._System.___hFunc0(t0))
       && (forall bx: Box :: 
        { $IsBox(bx, t0) } { $IsBox(bx, u0) } 
        $IsBox(bx, t0) ==> $IsBox(bx, u0))
     ==> $Is(f, Tclass._System.___hFunc0(u0)));

axiom (forall f: HandleType, t0: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc0(t0), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc0(t0), h)
       <==> Requires0(t0, h, f)
         ==> (forall r: ref :: 
          { Set#IsMember(Reads0(t0, h, f), $Box(r)) } 
          r != null && Set#IsMember(Reads0(t0, h, f), $Box(r))
             ==> $Unbox(read(h, r, alloc)): bool)));

axiom (forall f: HandleType, t0: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc0(t0), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc0(t0), h)
     ==> 
    Requires0(t0, h, f)
     ==> $IsAllocBox(Apply0(t0, h, f), t0, h));

function Tclass._System.___hPartialFunc0(Ty) : Ty;

const unique Tagclass._System.___hPartialFunc0: TyTag;

// Tclass._System.___hPartialFunc0 Tag
axiom (forall #$R: Ty :: 
  { Tclass._System.___hPartialFunc0(#$R) } 
  Tag(Tclass._System.___hPartialFunc0(#$R)) == Tagclass._System.___hPartialFunc0
     && TagFamily(Tclass._System.___hPartialFunc0(#$R)) == tytagFamily$_#PartialFunc0);

function Tclass._System.___hPartialFunc0_0(Ty) : Ty;

// Tclass._System.___hPartialFunc0 injectivity 0
axiom (forall #$R: Ty :: 
  { Tclass._System.___hPartialFunc0(#$R) } 
  Tclass._System.___hPartialFunc0_0(Tclass._System.___hPartialFunc0(#$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc0
axiom (forall #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc0(#$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc0(#$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hPartialFunc0(#$R)));

// $Is axiom for subset type _System._#PartialFunc0
axiom (forall #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc0(#$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc0(#$R))
     <==> $Is(f#0, Tclass._System.___hFunc0(#$R))
       && Set#Equal(Reads0(#$R, $OneHeap, f#0), Set#Empty(): Set));

// $IsAlloc axiom for subset type _System._#PartialFunc0
axiom (forall #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc0(#$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc0(#$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc0(#$R), $h));

function Tclass._System.___hTotalFunc0(Ty) : Ty;

const unique Tagclass._System.___hTotalFunc0: TyTag;

// Tclass._System.___hTotalFunc0 Tag
axiom (forall #$R: Ty :: 
  { Tclass._System.___hTotalFunc0(#$R) } 
  Tag(Tclass._System.___hTotalFunc0(#$R)) == Tagclass._System.___hTotalFunc0
     && TagFamily(Tclass._System.___hTotalFunc0(#$R)) == tytagFamily$_#TotalFunc0);

function Tclass._System.___hTotalFunc0_0(Ty) : Ty;

// Tclass._System.___hTotalFunc0 injectivity 0
axiom (forall #$R: Ty :: 
  { Tclass._System.___hTotalFunc0(#$R) } 
  Tclass._System.___hTotalFunc0_0(Tclass._System.___hTotalFunc0(#$R)) == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc0
axiom (forall #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc0(#$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc0(#$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hTotalFunc0(#$R)));

// $Is axiom for subset type _System._#TotalFunc0
axiom (forall #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc0(#$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc0(#$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc0(#$R)) && Requires0(#$R, $OneHeap, f#0));

// $IsAlloc axiom for subset type _System._#TotalFunc0
axiom (forall #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc0(#$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc0(#$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc0(#$R), $h));

const unique ##_System._tuple#2._#Make2: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box, a#0#1#0: Box :: 
  { #_System._tuple#2._#Make2(a#0#0#0, a#0#1#0) } 
  DatatypeCtorId(#_System._tuple#2._#Make2(a#0#0#0, a#0#1#0))
     == ##_System._tuple#2._#Make2);
}

function _System.Tuple2.___hMake2_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _System.Tuple2.___hMake2_q(d) } 
  _System.Tuple2.___hMake2_q(d)
     <==> DatatypeCtorId(d) == ##_System._tuple#2._#Make2);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _System.Tuple2.___hMake2_q(d) } 
  _System.Tuple2.___hMake2_q(d)
     ==> (exists a#1#0#0: Box, a#1#1#0: Box :: 
      d == #_System._tuple#2._#Make2(a#1#0#0, a#1#1#0)));

const unique Tagclass._System.Tuple2: TyTag;

// Tclass._System.Tuple2 Tag
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty :: 
  { Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1) } 
  Tag(Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
       == Tagclass._System.Tuple2
     && TagFamily(Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
       == tytagFamily$_tuple#2);

function Tclass._System.Tuple2_0(Ty) : Ty;

// Tclass._System.Tuple2 injectivity 0
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty :: 
  { Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1) } 
  Tclass._System.Tuple2_0(Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
     == _System._tuple#2$T0);

function Tclass._System.Tuple2_1(Ty) : Ty;

// Tclass._System.Tuple2 injectivity 1
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty :: 
  { Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1) } 
  Tclass._System.Tuple2_1(Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
     == _System._tuple#2$T1);

// Box/unbox axiom for Tclass._System.Tuple2
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1)) } 
  $IsBox(bx, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1)));

// Constructor $Is
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty, a#2#0#0: Box, a#2#1#0: Box :: 
  { $Is(#_System._tuple#2._#Make2(a#2#0#0, a#2#1#0), 
      Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1)) } 
  $Is(#_System._tuple#2._#Make2(a#2#0#0, a#2#1#0), 
      Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
     <==> $IsBox(a#2#0#0, _System._tuple#2$T0) && $IsBox(a#2#1#0, _System._tuple#2$T1));

// Constructor $IsAlloc
axiom (forall _System._tuple#2$T0: Ty, 
    _System._tuple#2$T1: Ty, 
    a#2#0#0: Box, 
    a#2#1#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#_System._tuple#2._#Make2(a#2#0#0, a#2#1#0), 
      Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_System._tuple#2._#Make2(a#2#0#0, a#2#1#0), 
        Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), 
        $h)
       <==> $IsAllocBox(a#2#0#0, _System._tuple#2$T0, $h)
         && $IsAllocBox(a#2#1#0, _System._tuple#2$T1, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#2$T0: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple2._0(d), _System._tuple#2$T0, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple2.___hMake2_q(d)
       && (exists _System._tuple#2$T1: Ty :: 
        { $IsAlloc(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), $h) } 
        $IsAlloc(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), $h))
     ==> $IsAllocBox(_System.Tuple2._0(d), _System._tuple#2$T0, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#2$T1: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple2._1(d), _System._tuple#2$T1, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple2.___hMake2_q(d)
       && (exists _System._tuple#2$T0: Ty :: 
        { $IsAlloc(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), $h) } 
        $IsAlloc(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1), $h))
     ==> $IsAllocBox(_System.Tuple2._1(d), _System._tuple#2$T1, $h));

// Constructor literal
axiom (forall a#3#0#0: Box, a#3#1#0: Box :: 
  { #_System._tuple#2._#Make2(Lit(a#3#0#0), Lit(a#3#1#0)) } 
  #_System._tuple#2._#Make2(Lit(a#3#0#0), Lit(a#3#1#0))
     == Lit(#_System._tuple#2._#Make2(a#3#0#0, a#3#1#0)));

// Constructor injectivity
axiom (forall a#4#0#0: Box, a#4#1#0: Box :: 
  { #_System._tuple#2._#Make2(a#4#0#0, a#4#1#0) } 
  _System.Tuple2._0(#_System._tuple#2._#Make2(a#4#0#0, a#4#1#0)) == a#4#0#0);

// Inductive rank
axiom (forall a#5#0#0: Box, a#5#1#0: Box :: 
  { #_System._tuple#2._#Make2(a#5#0#0, a#5#1#0) } 
  BoxRank(a#5#0#0) < DtRank(#_System._tuple#2._#Make2(a#5#0#0, a#5#1#0)));

// Constructor injectivity
axiom (forall a#6#0#0: Box, a#6#1#0: Box :: 
  { #_System._tuple#2._#Make2(a#6#0#0, a#6#1#0) } 
  _System.Tuple2._1(#_System._tuple#2._#Make2(a#6#0#0, a#6#1#0)) == a#6#1#0);

// Inductive rank
axiom (forall a#7#0#0: Box, a#7#1#0: Box :: 
  { #_System._tuple#2._#Make2(a#7#0#0, a#7#1#0) } 
  BoxRank(a#7#1#0) < DtRank(#_System._tuple#2._#Make2(a#7#0#0, a#7#1#0)));

// Depth-one case-split function
function $IsA#_System.Tuple2(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_System.Tuple2(d) } 
  $IsA#_System.Tuple2(d) ==> _System.Tuple2.___hMake2_q(d));

// Questionmark data type disjunctivity
axiom (forall _System._tuple#2$T0: Ty, _System._tuple#2$T1: Ty, d: DatatypeType :: 
  { _System.Tuple2.___hMake2_q(d), $Is(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1)) } 
  $Is(d, Tclass._System.Tuple2(_System._tuple#2$T0, _System._tuple#2$T1))
     ==> _System.Tuple2.___hMake2_q(d));

// Datatype extensional equality declaration
function _System.Tuple2#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_System._tuple#2._#Make2
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple2#Equal(a, b) } 
  _System.Tuple2#Equal(a, b)
     <==> _System.Tuple2._0(a) == _System.Tuple2._0(b)
       && _System.Tuple2._1(a) == _System.Tuple2._1(b));

// Datatype extensionality axiom: _System._tuple#2
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple2#Equal(a, b) } 
  _System.Tuple2#Equal(a, b) <==> a == b);

const unique class._System.Tuple2: ClassName;

// Constructor function declaration
function #_System._tuple#0._#Make0() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_System._tuple#0._#Make0()) == ##_System._tuple#0._#Make0;
// Constructor $Is
axiom $Is(#_System._tuple#0._#Make0(), Tclass._System.Tuple0());
// Constructor literal
axiom #_System._tuple#0._#Make0() == Lit(#_System._tuple#0._#Make0());
}

const unique ##_System._tuple#0._#Make0: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_System._tuple#0._#Make0()) == ##_System._tuple#0._#Make0;
}

function _System.Tuple0.___hMake0_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _System.Tuple0.___hMake0_q(d) } 
  _System.Tuple0.___hMake0_q(d)
     <==> DatatypeCtorId(d) == ##_System._tuple#0._#Make0);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _System.Tuple0.___hMake0_q(d) } 
  _System.Tuple0.___hMake0_q(d) ==> d == #_System._tuple#0._#Make0());

function Tclass._System.Tuple0() : Ty
uses {
// Tclass._System.Tuple0 Tag
axiom Tag(Tclass._System.Tuple0()) == Tagclass._System.Tuple0
   && TagFamily(Tclass._System.Tuple0()) == tytagFamily$_tuple#0;
}

const unique Tagclass._System.Tuple0: TyTag;

// Box/unbox axiom for Tclass._System.Tuple0
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._System.Tuple0()) } 
  $IsBox(bx, Tclass._System.Tuple0())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._System.Tuple0()));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._System.Tuple0(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._System.Tuple0())
     ==> $IsAlloc(d, Tclass._System.Tuple0(), $h));

// Depth-one case-split function
function $IsA#_System.Tuple0(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_System.Tuple0(d) } 
  $IsA#_System.Tuple0(d) ==> _System.Tuple0.___hMake0_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _System.Tuple0.___hMake0_q(d), $Is(d, Tclass._System.Tuple0()) } 
  $Is(d, Tclass._System.Tuple0()) ==> _System.Tuple0.___hMake0_q(d));

// Datatype extensional equality declaration
function _System.Tuple0#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_System._tuple#0._#Make0
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple0#Equal(a, b) } 
  _System.Tuple0#Equal(a, b));

// Datatype extensionality axiom: _System._tuple#0
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple0#Equal(a, b) } 
  _System.Tuple0#Equal(a, b) <==> a == b);

const unique class._System.Tuple0: ClassName;

const unique class._module.__default: ClassName;

procedure {:verboseName "M0 (well-formedness)"} CheckWellFormed$$_module.__default.M0(_module._default.M0$G: Ty, 
    x#0: int, 
    a#0: Box
       where $IsBox(a#0, _module._default.M0$G)
         && $IsAllocBox(a#0, _module._default.M0$G, $Heap), 
    b#0: Box
       where $IsBox(b#0, _module._default.M0$G)
         && $IsAllocBox(b#0, _module._default.M0$G, $Heap))
   returns (y#0: Box
       where $IsBox(y#0, _module._default.M0$G)
         && $IsAllocBox(y#0, _module._default.M0$G, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M0 (call)"} Call$$_module.__default.M0(_module._default.M0$G: Ty, 
    x#0: int, 
    a#0: Box
       where $IsBox(a#0, _module._default.M0$G)
         && $IsAllocBox(a#0, _module._default.M0$G, $Heap), 
    b#0: Box
       where $IsBox(b#0, _module._default.M0$G)
         && $IsAllocBox(b#0, _module._default.M0$G, $Heap))
   returns (y#0: Box
       where $IsBox(y#0, _module._default.M0$G)
         && $IsAllocBox(y#0, _module._default.M0$G, $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id57"} Lit(true);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M0 (correctness)"} Impl$$_module.__default.M0(_module._default.M0$G: Ty, 
    x#0: int, 
    a#0: Box
       where $IsBox(a#0, _module._default.M0$G)
         && $IsAllocBox(a#0, _module._default.M0$G, $Heap), 
    b#0: Box
       where $IsBox(b#0, _module._default.M0$G)
         && $IsAllocBox(b#0, _module._default.M0$G, $Heap))
   returns (defass#y#0: bool, 
    y#0: Box
       where defass#y#0
         ==> $IsBox(y#0, _module._default.M0$G)
           && $IsAllocBox(y#0, _module._default.M0$G, $Heap), 
    $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id58"} Lit(true);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M0 (correctness)"} Impl$$_module.__default.M0(_module._default.M0$G: Ty, x#0: int, a#0: Box, b#0: Box)
   returns (defass#y#0: bool, y#0: Box, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: M0, Impl$$_module.__default.M0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(38,3)
    assume true;
    if (x#0 < 10)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(39,7)
        assume true;
        assume true;
        y#0 := a#0;
        defass#y#0 := true;
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(40,10)
        assume true;
        if (x#0 < 100)
        {
            // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(41,5)
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(41,5)
            assume true;
            assume true;
            y#0 := b#0;
            defass#y#0 := true;
            assert {:id "id61"} defass#y#0;
            return;
        }
        else
        {
        }
    }

    assert {:id "id62"} defass#y#0;
}



procedure {:verboseName "M1 (well-formedness)"} CheckWellFormed$$_module.__default.M1(_module._default.M1$G: Ty, 
    x#0: int, 
    a#0: Box
       where $IsBox(a#0, _module._default.M1$G)
         && $IsAllocBox(a#0, _module._default.M1$G, $Heap), 
    b#0: Box
       where $IsBox(b#0, _module._default.M1$G)
         && $IsAllocBox(b#0, _module._default.M1$G, $Heap))
   returns (y#0: Box
       where $IsBox(y#0, _module._default.M1$G)
         && $IsAllocBox(y#0, _module._default.M1$G, $Heap), 
    z#0: Box
       where $IsBox(z#0, _module._default.M1$G)
         && $IsAllocBox(z#0, _module._default.M1$G, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M1 (call)"} Call$$_module.__default.M1(_module._default.M1$G: Ty, 
    x#0: int, 
    a#0: Box
       where $IsBox(a#0, _module._default.M1$G)
         && $IsAllocBox(a#0, _module._default.M1$G, $Heap), 
    b#0: Box
       where $IsBox(b#0, _module._default.M1$G)
         && $IsAllocBox(b#0, _module._default.M1$G, $Heap))
   returns (y#0: Box
       where $IsBox(y#0, _module._default.M1$G)
         && $IsAllocBox(y#0, _module._default.M1$G, $Heap), 
    z#0: Box
       where $IsBox(z#0, _module._default.M1$G)
         && $IsAllocBox(z#0, _module._default.M1$G, $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id64"} Lit(true);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M1 (correctness)"} Impl$$_module.__default.M1(_module._default.M1$G: Ty, 
    x#0: int, 
    a#0: Box
       where $IsBox(a#0, _module._default.M1$G)
         && $IsAllocBox(a#0, _module._default.M1$G, $Heap), 
    b#0: Box
       where $IsBox(b#0, _module._default.M1$G)
         && $IsAllocBox(b#0, _module._default.M1$G, $Heap))
   returns (defass#y#0: bool, 
    y#0: Box
       where defass#y#0
         ==> $IsBox(y#0, _module._default.M1$G)
           && $IsAllocBox(y#0, _module._default.M1$G, $Heap), 
    defass#z#0: bool, 
    z#0: Box
       where defass#z#0
         ==> $IsBox(z#0, _module._default.M1$G)
           && $IsAllocBox(z#0, _module._default.M1$G, $Heap), 
    $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id65"} Lit(true);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M1 (correctness)"} Impl$$_module.__default.M1(_module._default.M1$G: Ty, x#0: int, a#0: Box, b#0: Box)
   returns (defass#y#0: bool, y#0: Box, defass#z#0: bool, z#0: Box, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0_0: Box;
  var $rhs#0_1: Box;
  var defass#i#1_1_0_0: bool;
  var i#1_1_0_0: Box
     where defass#i#1_1_0_0
       ==> $IsBox(i#1_1_0_0, _module._default.M1$G)
         && $IsAllocBox(i#1_1_0_0, _module._default.M1$G, $Heap);
  var defass#j#1_1_0_0: bool;
  var j#1_1_0_0: Box
     where defass#j#1_1_0_0
       ==> $IsBox(j#1_1_0_0, _module._default.M1$G)
         && $IsAllocBox(j#1_1_0_0, _module._default.M1$G, $Heap);
  var $rhs#1_1_0_0: Box;
  var $rhs#1_1_0_1: Box;
  var $rhs#1_1_0_2: Box;
  var $rhs#1_1_0_3: Box;
  var defass#i#1_1_1_0_0: bool;
  var i#1_1_1_0_0: Box
     where defass#i#1_1_1_0_0
       ==> $IsBox(i#1_1_1_0_0, _module._default.M1$G)
         && $IsAllocBox(i#1_1_1_0_0, _module._default.M1$G, $Heap);
  var defass#j#1_1_1_0_0: bool;
  var j#1_1_1_0_0: Box
     where defass#j#1_1_1_0_0
       ==> $IsBox(j#1_1_1_0_0, _module._default.M1$G)
         && $IsAllocBox(j#1_1_1_0_0, _module._default.M1$G, $Heap);
  var $rhs#1_1_1_0_0: Box;
  var $rhs#1_1_1_0_1: Box;

    // AddMethodImpl: M1, Impl$$_module.__default.M1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(50,3)
    assume true;
    if (x#0 < 10)
    {
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(51,10)
        assume true;
        assume true;
        assume true;
        $rhs#0_0 := a#0;
        assume true;
        $rhs#0_1 := a#0;
        z#0 := $rhs#0_0;
        defass#z#0 := true;
        y#0 := $rhs#0_1;
        defass#y#0 := true;
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(52,10)
        assume true;
        if (x#0 < 20)
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(53,7)
            assume true;
            assert {:id "id70"} defass#z#0;
            assume true;
            y#0 := z#0;
            defass#y#0 := true;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(54,7)
            assume true;
            assume true;
            z#0 := a#0;
            defass#z#0 := true;
        }
        else
        {
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(55,10)
            assume true;
            if (x#0 < 30)
            {
                // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(56,14)
                assume true;
                assume true;
                assume true;
                $rhs#1_1_0_0 := a#0;
                assume true;
                $rhs#1_1_0_1 := b#0;
                i#1_1_0_0 := $rhs#1_1_0_0;
                defass#i#1_1_0_0 := true;
                j#1_1_0_0 := $rhs#1_1_0_1;
                defass#j#1_1_0_0 := true;
                // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(57,10)
                assume true;
                assume true;
                assert {:id "id77"} defass#i#1_1_0_0;
                assume true;
                $rhs#1_1_0_2 := i#1_1_0_0;
                assert {:id "id79"} defass#j#1_1_0_0;
                assume true;
                $rhs#1_1_0_3 := j#1_1_0_0;
                y#0 := $rhs#1_1_0_2;
                defass#y#0 := true;
                z#0 := $rhs#1_1_0_3;
                defass#z#0 := true;
            }
            else
            {
                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(58,10)
                assume true;
                if (x#0 < 40)
                {
                    havoc i#1_1_1_0_0 /* where defass#i#1_1_1_0_0
                       ==> $IsBox(i#1_1_1_0_0, _module._default.M1$G)
                         && $IsAllocBox(i#1_1_1_0_0, _module._default.M1$G, $Heap) */, j#1_1_1_0_0 /* where defass#j#1_1_1_0_0
                       ==> $IsBox(j#1_1_1_0_0, _module._default.M1$G)
                         && $IsAllocBox(j#1_1_1_0_0, _module._default.M1$G, $Heap) */;
                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(60,7)
                    assume true;
                    assume true;
                    i#1_1_1_0_0 := a#0;
                    defass#i#1_1_1_0_0 := true;
                    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(61,10)
                    assume true;
                    assume true;
                    assert {:id "id84"} defass#i#1_1_1_0_0;
                    assume true;
                    $rhs#1_1_1_0_0 := i#1_1_1_0_0;
                    assert {:id "id86"} defass#j#1_1_1_0_0;
                    assume true;
                    $rhs#1_1_1_0_1 := j#1_1_1_0_0;
                    y#0 := $rhs#1_1_1_0_0;
                    defass#y#0 := true;
                    z#0 := $rhs#1_1_1_0_1;
                    defass#z#0 := true;
                }
                else
                {
                    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(62,10)
                    assume true;
                    if (x#0 < 100)
                    {
                        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(63,7)
                        assume true;
                        assume true;
                        z#0 := a#0;
                        defass#z#0 := true;
                        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(64,5)
                        assert {:id "id91"} defass#y#0;
                        assert {:id "id92"} defass#z#0;
                        return;
                    }
                    else
                    {
                        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(66,7)
                        assume true;
                        assume true;
                        y#0 := b#0;
                        defass#y#0 := true;
                    }
                }
            }
        }
    }

    assert {:id "id94"} defass#y#0;
    assert {:id "id95"} defass#z#0;
}



// function declaration for _module._default.F
function _module.__default.F() : ref
uses {
// consequence axiom for _module.__default.F
axiom 1 <= $FunctionContextHeight
   ==> 
  _module.__default.F#canCall() || 1 < $FunctionContextHeight
   ==> $Is(_module.__default.F(), Tclass._module.C());
// alloc consequence axiom for _module.__default.F
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap :: 
    { $IsAlloc(_module.__default.F(), Tclass._module.C(), $Heap) } 
    (_module.__default.F#canCall() || 1 < $FunctionContextHeight)
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.F(), Tclass._module.C(), $Heap));
}

function _module.__default.F#canCall() : bool;

function Tclass._module.C() : Ty
uses {
// Tclass._module.C Tag
axiom Tag(Tclass._module.C()) == Tagclass._module.C
   && TagFamily(Tclass._module.C()) == tytagFamily$C;
}

const unique Tagclass._module.C: TyTag;

// Box/unbox axiom for Tclass._module.C
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.C()) } 
  $IsBox(bx, Tclass._module.C())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.C()));

function _module.__default.F#requires() : bool
uses {
// #requires axiom for _module.__default.F
axiom _module.__default.F#requires() == true;
}

procedure {:verboseName "F (well-formedness)"} CheckWellformed$$_module.__default.F();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Main (well-formedness)"} CheckWellFormed$$_module.__default.Main();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Main (call)"} Call$$_module.__default.Main();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.NonNullC() : Ty
uses {
// Tclass._module.NonNullC Tag
axiom Tag(Tclass._module.NonNullC()) == Tagclass._module.NonNullC
   && TagFamily(Tclass._module.NonNullC()) == tytagFamily$NonNullC;
}

const unique Tagclass._module.NonNullC: TyTag;

// Box/unbox axiom for Tclass._module.NonNullC
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.NonNullC()) } 
  $IsBox(bx, Tclass._module.NonNullC())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.NonNullC()));

function Tclass._module.C?() : Ty
uses {
// Tclass._module.C? Tag
axiom Tag(Tclass._module.C?()) == Tagclass._module.C?
   && TagFamily(Tclass._module.C?()) == tytagFamily$C;
}

const unique Tagclass._module.C?: TyTag;

// Box/unbox axiom for Tclass._module.C?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.C?()) } 
  $IsBox(bx, Tclass._module.C?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.C?()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var c#0: ref
     where $Is(c#0, Tclass._module.NonNullC())
       && $IsAlloc(c#0, Tclass._module.NonNullC(), $Heap);
  var $nw: ref;
  var y#0: ref
     where $Is(y#0, Tclass._module.NonNullC())
       && $IsAlloc(y#0, Tclass._module.NonNullC(), $Heap);
  var $rhs##0: ref;
  var x##0: int;
  var a##0: ref;
  var b##0: ref;
  var $tmp##0: Box;
  var newtype$check#0: ref;

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(78,19)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.C?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    assert {:id "id96"} $Is($nw, Tclass._module.NonNullC());
    c#0 := $nw;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(79,24)
    assume true;
    // TrCallStmt: Adding lhs with type NonNullC
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := LitInt(102);
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := c#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##0 := c#0;
    call {:id "id98"} $tmp##0 := Call$$_module.__default.M0(Tclass._module.NonNullC(), x##0, $Box(a##0), $Box(b##0));
    havoc $rhs##0;
    assume $rhs##0 == $Unbox($tmp##0): ref;
    // TrCallStmt: After ProcessCallStmt
    y#0 := $rhs##0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(80,3)
    newtype$check#0 := null;
    assume true;
    assert {:id "id100"} y#0 != null;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(81,3)
    assert {:id "id101"} {:subsumption 0} y#0 != null;
    assume true;
    assume true;
}



procedure {:verboseName "DontForgetHavoc (well-formedness)"} CheckWellFormed$$_module.__default.DontForgetHavoc(_module._default.DontForgetHavoc$G: Ty, 
    a#0: Box
       where $IsBox(a#0, _module._default.DontForgetHavoc$G)
         && $IsAllocBox(a#0, _module._default.DontForgetHavoc$G, $Heap), 
    h#0: int)
   returns (k#0: Box
       where $IsBox(k#0, _module._default.DontForgetHavoc$G)
         && $IsAllocBox(k#0, _module._default.DontForgetHavoc$G, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DontForgetHavoc (call)"} Call$$_module.__default.DontForgetHavoc(_module._default.DontForgetHavoc$G: Ty, 
    a#0: Box
       where $IsBox(a#0, _module._default.DontForgetHavoc$G)
         && $IsAllocBox(a#0, _module._default.DontForgetHavoc$G, $Heap), 
    h#0: int)
   returns (k#0: Box
       where $IsBox(k#0, _module._default.DontForgetHavoc$G)
         && $IsAllocBox(k#0, _module._default.DontForgetHavoc$G, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "DontForgetHavoc (correctness)"} Impl$$_module.__default.DontForgetHavoc(_module._default.DontForgetHavoc$G: Ty, 
    a#0: Box
       where $IsBox(a#0, _module._default.DontForgetHavoc$G)
         && $IsAllocBox(a#0, _module._default.DontForgetHavoc$G, $Heap), 
    h#0: int)
   returns (defass#k#0: bool, 
    k#0: Box
       where defass#k#0
         ==> $IsBox(k#0, _module._default.DontForgetHavoc$G)
           && $IsAllocBox(k#0, _module._default.DontForgetHavoc$G, $Heap), 
    $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DontForgetHavoc (correctness)"} Impl$$_module.__default.DontForgetHavoc(_module._default.DontForgetHavoc$G: Ty, a#0: Box, h#0: int)
   returns (defass#k#0: bool, k#0: Box, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0: Box
     where $IsBox(x#0, _module._default.DontForgetHavoc$G)
       && $IsAllocBox(x#0, _module._default.DontForgetHavoc$G, $Heap);
  var defass#y#0: bool;
  var y#0: Box
     where defass#y#0
       ==> $IsBox(y#0, _module._default.DontForgetHavoc$G)
         && $IsAllocBox(y#0, _module._default.DontForgetHavoc$G, $Heap);
  var z#0: Box
     where $IsBox(z#0, _module._default.DontForgetHavoc$G)
       && $IsAllocBox(z#0, _module._default.DontForgetHavoc$G, $Heap);
  var $rhs#0: Box;
  var $rhs#1: Box where $IsBox($rhs#1, _module._default.DontForgetHavoc$G);
  var $rhs#2: Box;

    // AddMethodImpl: DontForgetHavoc, Impl$$_module.__default.DontForgetHavoc
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(86,21)
    assume true;
    assume true;
    assume true;
    assume true;
    $rhs#0 := a#0;
    havoc $rhs#1 /* where $IsBox($rhs#1, _module._default.DontForgetHavoc$G) */;
    assume true;
    $rhs#2 := a#0;
    x#0 := $rhs#0;
    y#0 := $rhs#1;
    z#0 := $rhs#2;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(87,3)
    assume true;
    if (h#0 < 10)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(88,7)
        assume true;
        assume true;
        k#0 := x#0;
        defass#k#0 := true;
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(89,10)
        assume true;
        if (h#0 < 20)
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(90,7)
            assume true;
            assert {:id "id108"} defass#y#0;
            assume true;
            k#0 := y#0;
            defass#k#0 := true;
        }
        else
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(92,7)
            assume true;
            havoc z#0;
            // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(93,5)
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(93,5)
            assume true;
            assume true;
            k#0 := z#0;
            defass#k#0 := true;
            assert {:id "id111"} defass#k#0;
            return;
        }
    }

    assert {:id "id112"} defass#k#0;
}



procedure {:verboseName "OtherAssignments (well-formedness)"} CheckWellFormed$$_module.__default.OtherAssignments(_module._default.OtherAssignments$G: Ty, 
    a#0: Box
       where $IsBox(a#0, _module._default.OtherAssignments$G)
         && $IsAllocBox(a#0, _module._default.OtherAssignments$G, $Heap), 
    h#0: int)
   returns (k#0: Box
       where $IsBox(k#0, _module._default.OtherAssignments$G)
         && $IsAllocBox(k#0, _module._default.OtherAssignments$G, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "OtherAssignments (call)"} Call$$_module.__default.OtherAssignments(_module._default.OtherAssignments$G: Ty, 
    a#0: Box
       where $IsBox(a#0, _module._default.OtherAssignments$G)
         && $IsAllocBox(a#0, _module._default.OtherAssignments$G, $Heap), 
    h#0: int)
   returns (k#0: Box
       where $IsBox(k#0, _module._default.OtherAssignments$G)
         && $IsAllocBox(k#0, _module._default.OtherAssignments$G, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "OtherAssignments (correctness)"} Impl$$_module.__default.OtherAssignments(_module._default.OtherAssignments$G: Ty, 
    a#0: Box
       where $IsBox(a#0, _module._default.OtherAssignments$G)
         && $IsAllocBox(a#0, _module._default.OtherAssignments$G, $Heap), 
    h#0: int)
   returns (defass#k#0: bool, 
    k#0: Box
       where defass#k#0
         ==> $IsBox(k#0, _module._default.OtherAssignments$G)
           && $IsAllocBox(k#0, _module._default.OtherAssignments$G, $Heap), 
    $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "OtherAssignments (correctness)"} Impl$$_module.__default.OtherAssignments(_module._default.OtherAssignments$G: Ty, a#0: Box, h#0: int)
   returns (defass#k#0: bool, k#0: Box, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#e0#0: bool;
  var e0#0: Box
     where defass#e0#0
       ==> $IsBox(e0#0, _module._default.OtherAssignments$G)
         && $IsAllocBox(e0#0, _module._default.OtherAssignments$G, $Heap);
  var defass#e1#0: bool;
  var e1#0: Box
     where defass#e1#0
       ==> $IsBox(e1#0, _module._default.OtherAssignments$G)
         && $IsAllocBox(e1#0, _module._default.OtherAssignments$G, $Heap);
  var e0#1: Box;
  var defass#x#0: bool;
  var x#0: Box
     where defass#x#0
       ==> $IsBox(x#0, _module._default.OtherAssignments$G)
         && $IsAllocBox(x#0, _module._default.OtherAssignments$G, $Heap);
  var defass#y#0: bool;
  var y#0: Box
     where defass#y#0
       ==> $IsBox(y#0, _module._default.OtherAssignments$G)
         && $IsAllocBox(y#0, _module._default.OtherAssignments$G, $Heap);
  var defass#z#0: bool;
  var z#0: Box
     where defass#z#0
       ==> $IsBox(z#0, _module._default.OtherAssignments$G)
         && $IsAllocBox(z#0, _module._default.OtherAssignments$G, $Heap);
  var x#1: Box;
  var y#1: Box;
  var z#1: Box;

    // AddMethodImpl: OtherAssignments, Impl$$_module.__default.OtherAssignments
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc e0#0 /* where defass#e0#0
       ==> $IsBox(e0#0, _module._default.OtherAssignments$G)
         && $IsAllocBox(e0#0, _module._default.OtherAssignments$G, $Heap) */, e1#0 /* where defass#e1#0
       ==> $IsBox(e1#0, _module._default.OtherAssignments$G)
         && $IsAllocBox(e1#0, _module._default.OtherAssignments$G, $Heap) */;
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(99,6)
    havoc e0#1;
    if ($IsBox(e0#1, _module._default.OtherAssignments$G)
       && $IsAllocBox(e0#1, _module._default.OtherAssignments$G, $Heap))
    {
        assert {:id "id113"} defass#e1#0;
        assume true;
    }

    assert {:id "id114"} ($IsBox(e1#0, _module._default.OtherAssignments$G) && e1#0 == e1#0)
       || (exists $as#e00#0: Box :: 
        $IsBox($as#e00#0, _module._default.OtherAssignments$G) && $as#e00#0 == e1#0);
    defass#e0#0 := true;
    havoc e0#0;
    assume {:id "id115"} e0#0 == e1#0;
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(100,21)
    havoc x#1;
    havoc y#1;
    havoc z#1;
    if ($IsBox(x#1, _module._default.OtherAssignments$G)
       && $IsAllocBox(x#1, _module._default.OtherAssignments$G, $Heap)
       && 
      $IsBox(y#1, _module._default.OtherAssignments$G)
       && $IsAllocBox(y#1, _module._default.OtherAssignments$G, $Heap)
       && 
      $IsBox(z#1, _module._default.OtherAssignments$G)
       && $IsAllocBox(z#1, _module._default.OtherAssignments$G, $Heap))
    {
        if (x#1 == z#1)
        {
        }

        assume true;
    }

    assert {:id "id116"} (exists $as#y0#0: Box :: 
        $IsBox($as#y0#0, _module._default.OtherAssignments$G)
           && $IsAllocBox($as#y0#0, _module._default.OtherAssignments$G, $Heap)
           && 
          $IsBox(a#0, _module._default.OtherAssignments$G)
           && $IsBox(a#0, _module._default.OtherAssignments$G)
           && 
          a#0 == a#0
           && a#0 == a#0)
       || 
      (exists $as#x0#0: Box, $as#y0#0: Box :: 
        $IsBox($as#x0#0, _module._default.OtherAssignments$G)
           && $IsAllocBox($as#x0#0, _module._default.OtherAssignments$G, $Heap)
           && 
          $IsBox($as#y0#0, _module._default.OtherAssignments$G)
           && $IsAllocBox($as#y0#0, _module._default.OtherAssignments$G, $Heap)
           && 
          $IsBox(a#0, _module._default.OtherAssignments$G)
           && 
          $as#x0#0 == a#0
           && a#0 == a#0)
       || 
      (exists $as#y0#0: Box :: 
        $IsBox($as#y0#0, _module._default.OtherAssignments$G)
           && $IsAllocBox($as#y0#0, _module._default.OtherAssignments$G, $Heap)
           && 
          $IsBox(a#0, _module._default.OtherAssignments$G)
           && $IsBox(a#0, _module._default.OtherAssignments$G)
           && 
          a#0 == a#0
           && a#0 == a#0)
       || 
      (exists $as#x0#0: Box, $as#y0#0: Box :: 
        $IsBox($as#x0#0, _module._default.OtherAssignments$G)
           && $IsAllocBox($as#x0#0, _module._default.OtherAssignments$G, $Heap)
           && 
          $IsBox($as#y0#0, _module._default.OtherAssignments$G)
           && $IsAllocBox($as#y0#0, _module._default.OtherAssignments$G, $Heap)
           && 
          $IsBox($as#x0#0, _module._default.OtherAssignments$G)
           && 
          $as#x0#0 == $as#x0#0
           && $as#x0#0 == a#0)
       || 
      (exists $as#y0#0: Box, $as#z0#0: Box :: 
        $IsBox($as#y0#0, _module._default.OtherAssignments$G)
           && $IsAllocBox($as#y0#0, _module._default.OtherAssignments$G, $Heap)
           && 
          $IsBox($as#z0#0, _module._default.OtherAssignments$G)
           && $IsAllocBox($as#z0#0, _module._default.OtherAssignments$G, $Heap)
           && 
          $IsBox($as#z0#0, _module._default.OtherAssignments$G)
           && 
          $as#z0#0 == $as#z0#0
           && $as#z0#0 == a#0)
       || (exists $as#x0#0: Box, $as#y0#0: Box, $as#z0#0: Box :: 
        $IsBox($as#x0#0, _module._default.OtherAssignments$G)
           && $IsAllocBox($as#x0#0, _module._default.OtherAssignments$G, $Heap)
           && 
          $IsBox($as#y0#0, _module._default.OtherAssignments$G)
           && $IsAllocBox($as#y0#0, _module._default.OtherAssignments$G, $Heap)
           && $IsBox($as#z0#0, _module._default.OtherAssignments$G)
           && 
          $as#x0#0 == $as#z0#0
           && $as#z0#0 == a#0);
    defass#x#0 := true;
    defass#y#0 := true;
    defass#z#0 := true;
    havoc x#0, y#0, z#0;
    assume {:id "id117"} x#0 == z#0 && z#0 == a#0;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(102,3)
    assume true;
    if (h#0 < 10)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(103,7)
        assume true;
        assert {:id "id118"} defass#x#0;
        assume true;
        k#0 := x#0;
        defass#k#0 := true;
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(104,10)
        assume true;
        if (h#0 < 20)
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(105,7)
            assume true;
            assert {:id "id120"} defass#y#0;
            assume true;
            k#0 := y#0;
            defass#k#0 := true;
        }
        else
        {
            // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(107,5)
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(107,5)
            assume true;
            assert {:id "id122"} defass#z#0;
            assume true;
            k#0 := z#0;
            defass#k#0 := true;
            assert {:id "id124"} defass#k#0;
            return;
        }
    }

    assert {:id "id125"} defass#k#0;
}



procedure {:verboseName "OtherAssignments' (well-formedness)"} CheckWellFormed$$_module.__default.OtherAssignments_k(_module._default.OtherAssignments'$G: Ty);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "OtherAssignments' (call)"} Call$$_module.__default.OtherAssignments_k(_module._default.OtherAssignments'$G: Ty);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "OtherAssignments' (correctness)"} Impl$$_module.__default.OtherAssignments_k(_module._default.OtherAssignments'$G: Ty) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "OtherAssignments' (correctness)"} Impl$$_module.__default.OtherAssignments_k(_module._default.OtherAssignments'$G: Ty) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var e0#0: Box
     where $IsBox(e0#0, _module._default.OtherAssignments'$G)
       && $IsAllocBox(e0#0, _module._default.OtherAssignments'$G, $Heap);
  var e1#0: Box
     where $IsBox(e1#0, _module._default.OtherAssignments'$G)
       && $IsAllocBox(e1#0, _module._default.OtherAssignments'$G, $Heap);
  var e0#1: Box;

    // AddMethodImpl: OtherAssignments', Impl$$_module.__default.OtherAssignments_k
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc e0#0 /* where $IsBox(e0#0, _module._default.OtherAssignments'$G)
       && $IsAllocBox(e0#0, _module._default.OtherAssignments'$G, $Heap) */, e1#0 /* where $IsBox(e1#0, _module._default.OtherAssignments'$G)
       && $IsAllocBox(e1#0, _module._default.OtherAssignments'$G, $Heap) */;
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(112,6)
    havoc e0#1;
    if ($IsBox(e0#1, _module._default.OtherAssignments'$G)
       && $IsAllocBox(e0#1, _module._default.OtherAssignments'$G, $Heap))
    {
        assume true;
    }

    assert {:id "id126"} ($IsBox(e1#0, _module._default.OtherAssignments'$G) && e1#0 == e1#0)
       || (exists $as#e00#0: Box :: 
        $IsBox($as#e00#0, _module._default.OtherAssignments'$G) && $as#e00#0 == e1#0);
    havoc e0#0;
    assume {:id "id127"} e0#0 == e1#0;
}



procedure {:verboseName "Callee (well-formedness)"} CheckWellFormed$$_module.__default.Callee(_module._default.Callee$G: Ty, 
    a#0: Box
       where $IsBox(a#0, _module._default.Callee$G)
         && $IsAllocBox(a#0, _module._default.Callee$G, $Heap))
   returns (x#0: Box
       where $IsBox(x#0, _module._default.Callee$G)
         && $IsAllocBox(x#0, _module._default.Callee$G, $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.Callee$G)
         && $IsAllocBox(y#0, _module._default.Callee$G, $Heap), 
    z#0: Box
       where $IsBox(z#0, _module._default.Callee$G)
         && $IsAllocBox(z#0, _module._default.Callee$G, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Callee (call)"} Call$$_module.__default.Callee(_module._default.Callee$G: Ty, 
    a#0: Box
       where $IsBox(a#0, _module._default.Callee$G)
         && $IsAllocBox(a#0, _module._default.Callee$G, $Heap))
   returns (x#0: Box
       where $IsBox(x#0, _module._default.Callee$G)
         && $IsAllocBox(x#0, _module._default.Callee$G, $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.Callee$G)
         && $IsAllocBox(y#0, _module._default.Callee$G, $Heap), 
    z#0: Box
       where $IsBox(z#0, _module._default.Callee$G)
         && $IsAllocBox(z#0, _module._default.Callee$G, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Callee (correctness)"} Impl$$_module.__default.Callee(_module._default.Callee$G: Ty, 
    a#0: Box
       where $IsBox(a#0, _module._default.Callee$G)
         && $IsAllocBox(a#0, _module._default.Callee$G, $Heap))
   returns (defass#x#0: bool, 
    x#0: Box
       where defass#x#0
         ==> $IsBox(x#0, _module._default.Callee$G)
           && $IsAllocBox(x#0, _module._default.Callee$G, $Heap), 
    defass#y#0: bool, 
    y#0: Box
       where defass#y#0
         ==> $IsBox(y#0, _module._default.Callee$G)
           && $IsAllocBox(y#0, _module._default.Callee$G, $Heap), 
    defass#z#0: bool, 
    z#0: Box
       where defass#z#0
         ==> $IsBox(z#0, _module._default.Callee$G)
           && $IsAllocBox(z#0, _module._default.Callee$G, $Heap), 
    $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Callee (correctness)"} Impl$$_module.__default.Callee(_module._default.Callee$G: Ty, a#0: Box)
   returns (defass#x#0: bool, 
    x#0: Box, 
    defass#y#0: bool, 
    y#0: Box, 
    defass#z#0: bool, 
    z#0: Box, 
    $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: Box;
  var $rhs#1: Box;
  var $rhs#2: Box;

    // AddMethodImpl: Callee, Impl$$_module.__default.Callee
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(115,3)
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(115,3)
    assume true;
    assume true;
    assume true;
    assume true;
    $rhs#0 := a#0;
    assume true;
    $rhs#1 := a#0;
    assume true;
    $rhs#2 := a#0;
    x#0 := $rhs#0;
    defass#x#0 := true;
    y#0 := $rhs#1;
    defass#y#0 := true;
    z#0 := $rhs#2;
    defass#z#0 := true;
    assert {:id "id134"} defass#x#0;
    assert {:id "id135"} defass#y#0;
    assert {:id "id136"} defass#z#0;
    return;

    assert {:id "id137"} defass#x#0;
    assert {:id "id138"} defass#y#0;
    assert {:id "id139"} defass#z#0;
}



procedure {:verboseName "Caller (well-formedness)"} CheckWellFormed$$_module.__default.Caller(_module._default.Caller$G: Ty, 
    g#0: Box
       where $IsBox(g#0, _module._default.Caller$G)
         && $IsAllocBox(g#0, _module._default.Caller$G, $Heap))
   returns (k#0: Box
       where $IsBox(k#0, _module._default.Caller$G)
         && $IsAllocBox(k#0, _module._default.Caller$G, $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Caller (call)"} Call$$_module.__default.Caller(_module._default.Caller$G: Ty, 
    g#0: Box
       where $IsBox(g#0, _module._default.Caller$G)
         && $IsAllocBox(g#0, _module._default.Caller$G, $Heap))
   returns (k#0: Box
       where $IsBox(k#0, _module._default.Caller$G)
         && $IsAllocBox(k#0, _module._default.Caller$G, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Caller (correctness)"} Impl$$_module.__default.Caller(_module._default.Caller$G: Ty, 
    g#0: Box
       where $IsBox(g#0, _module._default.Caller$G)
         && $IsAllocBox(g#0, _module._default.Caller$G, $Heap))
   returns (defass#k#0: bool, 
    k#0: Box
       where defass#k#0
         ==> $IsBox(k#0, _module._default.Caller$G)
           && $IsAllocBox(k#0, _module._default.Caller$G, $Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Caller (correctness)"} Impl$$_module.__default.Caller(_module._default.Caller$G: Ty, g#0: Box)
   returns (defass#k#0: bool, k#0: Box, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#a#0: bool;
  var a#0: Box
     where defass#a#0
       ==> $IsBox(a#0, _module._default.Caller$G)
         && $IsAllocBox(a#0, _module._default.Caller$G, $Heap);
  var defass#b#0: bool;
  var b#0: Box
     where defass#b#0
       ==> $IsBox(b#0, _module._default.Caller$G)
         && $IsAllocBox(b#0, _module._default.Caller$G, $Heap);
  var defass#c#0: bool;
  var c#0: Box
     where defass#c#0
       ==> $IsBox(c#0, _module._default.Caller$G)
         && $IsAllocBox(c#0, _module._default.Caller$G, $Heap);
  var $rhs##0: Box;
  var $rhs##1: Box;
  var $rhs##2: Box;
  var a##0: Box;

    // AddMethodImpl: Caller, Impl$$_module.__default.Caller
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(119,30)
    assume true;
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type G
    // TrCallStmt: Adding lhs with type G
    // TrCallStmt: Adding lhs with type G
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := g#0;
    call {:id "id140"} $rhs##0, $rhs##1, $rhs##2 := Call$$_module.__default.Callee(_module._default.Caller$G, a##0);
    // TrCallStmt: After ProcessCallStmt
    a#0 := $rhs##0;
    defass#a#0 := true;
    b#0 := $rhs##1;
    defass#b#0 := true;
    c#0 := $rhs##2;
    defass#c#0 := true;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(120,3)
    if (*)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(121,7)
        assume true;
        assert {:id "id144"} defass#a#0;
        assume true;
        k#0 := a#0;
        defass#k#0 := true;
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(122,10)
        if (*)
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(123,7)
            assume true;
            assert {:id "id146"} defass#b#0;
            assume true;
            k#0 := b#0;
            defass#k#0 := true;
        }
        else
        {
            // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(125,5)
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(125,5)
            assume true;
            assert {:id "id148"} defass#c#0;
            assume true;
            k#0 := c#0;
            defass#k#0 := true;
            assert {:id "id150"} defass#k#0;
            return;
        }
    }

    assert {:id "id151"} defass#k#0;
}



procedure {:verboseName "GM (well-formedness)"} CheckWellFormed$$_module.__default.GM(_module._default.GM$G: Ty)
   returns (g#0: Box
       where $IsBox(g#0, _module._default.GM$G)
         && $IsAllocBox(g#0, _module._default.GM$G, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GM (call)"} Call$$_module.__default.GM(_module._default.GM$G: Ty)
   returns (g#0: Box
       where $IsBox(g#0, _module._default.GM$G)
         && $IsAllocBox(g#0, _module._default.GM$G, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



procedure {:verboseName "GM (correctness)"} Impl$$_module.__default.GM(_module._default.GM$G: Ty)
   returns (defass#g#0: bool, 
    g#0: Box
       where defass#g#0
         ==> $IsBox(g#0, _module._default.GM$G)
           && $IsAllocBox(g#0, _module._default.GM$G, $Heap), 
    $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GM (correctness)"} Impl$$_module.__default.GM(_module._default.GM$G: Ty)
   returns (defass#g#0: bool, g#0: Box, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#a#0: bool;
  var a#0: Box
     where defass#a#0
       ==> $IsBox(a#0, _module._default.GM$G)
         && $IsAllocBox(a#0, _module._default.GM$G, $Heap);
  var defass#b#0: bool;
  var b#0: Box
     where defass#b#0
       ==> $IsBox(b#0, _module._default.GM$G)
         && $IsAllocBox(b#0, _module._default.GM$G, $Heap);

    // AddMethodImpl: GM, Impl$$_module.__default.GM
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc a#0 /* where defass#a#0
       ==> $IsBox(a#0, _module._default.GM$G)
         && $IsAllocBox(a#0, _module._default.GM$G, $Heap) */, b#0 /* where defass#b#0
       ==> $IsBox(b#0, _module._default.GM$G)
         && $IsAllocBox(b#0, _module._default.GM$G, $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(132,5)
    assume true;
    assert {:id "id152"} defass#b#0;
    assume true;
    a#0 := b#0;
    defass#a#0 := true;
    assert {:id "id154"} defass#g#0;
}



procedure {:verboseName "MM (well-formedness)"} CheckWellFormed$$_module.__default.MM(_module._default.MM$G: Ty, 
    x#0: int, 
    g#0: Box
       where $IsBox(g#0, _module._default.MM$G)
         && $IsAllocBox(g#0, _module._default.MM$G, $Heap))
   returns (vv#0: Box
       where $IsBox(vv#0, _module._default.MM$G)
         && $IsAllocBox(vv#0, _module._default.MM$G, $Heap), 
    ww#0: Box
       where $IsBox(ww#0, _module._default.MM$G)
         && $IsAllocBox(ww#0, _module._default.MM$G, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MM (call)"} Call$$_module.__default.MM(_module._default.MM$G: Ty, 
    x#0: int, 
    g#0: Box
       where $IsBox(g#0, _module._default.MM$G)
         && $IsAllocBox(g#0, _module._default.MM$G, $Heap))
   returns (vv#0: Box
       where $IsBox(vv#0, _module._default.MM$G)
         && $IsAllocBox(vv#0, _module._default.MM$G, $Heap), 
    ww#0: Box
       where $IsBox(ww#0, _module._default.MM$G)
         && $IsAllocBox(ww#0, _module._default.MM$G, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MM (correctness)"} Impl$$_module.__default.MM(_module._default.MM$G: Ty, 
    x#0: int, 
    g#0: Box
       where $IsBox(g#0, _module._default.MM$G)
         && $IsAllocBox(g#0, _module._default.MM$G, $Heap))
   returns (defass#vv#0: bool, 
    vv#0: Box
       where defass#vv#0
         ==> $IsBox(vv#0, _module._default.MM$G)
           && $IsAllocBox(vv#0, _module._default.MM$G, $Heap), 
    defass#ww#0: bool, 
    ww#0: Box
       where defass#ww#0
         ==> $IsBox(ww#0, _module._default.MM$G)
           && $IsAllocBox(ww#0, _module._default.MM$G, $Heap), 
    $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MM (correctness)"} Impl$$_module.__default.MM(_module._default.MM$G: Ty, x#0: int, g#0: Box)
   returns (defass#vv#0: bool, vv#0: Box, defass#ww#0: bool, ww#0: Box, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: Box
     where $IsBox(a#0, _module._default.MM$G)
       && $IsAllocBox(a#0, _module._default.MM$G, $Heap);
  var b#0: Box
     where $IsBox(b#0, _module._default.MM$G)
       && $IsAllocBox(b#0, _module._default.MM$G, $Heap);
  var c#0_0: Box
     where $IsBox(c#0_0, _module._default.MM$G)
       && $IsAllocBox(c#0_0, _module._default.MM$G, $Heap);
  var v#0: Box
     where $IsBox(v#0, _module._default.MM$G)
       && $IsAllocBox(v#0, _module._default.MM$G, $Heap);
  var defass#w#0: bool;
  var w#0: Box
     where defass#w#0
       ==> $IsBox(w#0, _module._default.MM$G)
         && $IsAllocBox(w#0, _module._default.MM$G, $Heap);

    // AddMethodImpl: MM, Impl$$_module.__default.MM
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc a#0 /* where $IsBox(a#0, _module._default.MM$G)
       && $IsAllocBox(a#0, _module._default.MM$G, $Heap) */, b#0 /* where $IsBox(b#0, _module._default.MM$G)
       && $IsAllocBox(b#0, _module._default.MM$G, $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(138,5)
    assume true;
    assume true;
    a#0 := b#0;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(139,3)
    assume true;
    if (x#0 < 10)
    {
        push;
        havoc c#0_0 /* where $IsBox(c#0_0, _module._default.MM$G)
           && $IsAllocBox(c#0_0, _module._default.MM$G, $Heap) */;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(141,7)
        assume true;
        assume true;
        a#0 := c#0_0;
        pop;
    }
    else
    {
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(143,12)
    assume true;
    assume true;
    v#0 := g#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(144,5)
    assume true;
    havoc v#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(145,6)
    assume true;
    assume true;
    vv#0 := v#0;
    defass#vv#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(146,12)
    assume true;
    havoc w#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(147,5)
    assume true;
    havoc w#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(148,6)
    assume true;
    assert {:id "id159"} defass#w#0;
    assume true;
    ww#0 := w#0;
    defass#ww#0 := true;
    assert {:id "id161"} defass#vv#0;
    assert {:id "id162"} defass#ww#0;
}



procedure {:verboseName "Loop (well-formedness)"} CheckWellFormed$$_module.__default.Loop(_module._default.Loop$G: Ty, 
    a#0: Box
       where $IsBox(a#0, _module._default.Loop$G)
         && $IsAllocBox(a#0, _module._default.Loop$G, $Heap), 
    b#0: Box
       where $IsBox(b#0, _module._default.Loop$G)
         && $IsAllocBox(b#0, _module._default.Loop$G, $Heap), 
    n#0: int where LitInt(0) <= n#0, 
    k#0: int)
   returns (g#0: Box
       where $IsBox(g#0, _module._default.Loop$G)
         && $IsAllocBox(g#0, _module._default.Loop$G, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Loop (call)"} Call$$_module.__default.Loop(_module._default.Loop$G: Ty, 
    a#0: Box
       where $IsBox(a#0, _module._default.Loop$G)
         && $IsAllocBox(a#0, _module._default.Loop$G, $Heap), 
    b#0: Box
       where $IsBox(b#0, _module._default.Loop$G)
         && $IsAllocBox(b#0, _module._default.Loop$G, $Heap), 
    n#0: int where LitInt(0) <= n#0, 
    k#0: int)
   returns (g#0: Box
       where $IsBox(g#0, _module._default.Loop$G)
         && $IsAllocBox(g#0, _module._default.Loop$G, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Loop (correctness)"} Impl$$_module.__default.Loop(_module._default.Loop$G: Ty, 
    a#0: Box
       where $IsBox(a#0, _module._default.Loop$G)
         && $IsAllocBox(a#0, _module._default.Loop$G, $Heap), 
    b#0: Box
       where $IsBox(b#0, _module._default.Loop$G)
         && $IsAllocBox(b#0, _module._default.Loop$G, $Heap), 
    n#0: int where LitInt(0) <= n#0, 
    k#0: int)
   returns (defass#g#0: bool, 
    g#0: Box
       where defass#g#0
         ==> $IsBox(g#0, _module._default.Loop$G)
           && $IsAllocBox(g#0, _module._default.Loop$G, $Heap), 
    $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Loop (correctness)"} Impl$$_module.__default.Loop(_module._default.Loop$G: Ty, a#0: Box, b#0: Box, n#0: int, k#0: int)
   returns (defass#g#0: bool, g#0: Box, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#w#0: bool;
  var w#0: Box
     where defass#w#0
       ==> $IsBox(w#0, _module._default.Loop$G)
         && $IsAllocBox(w#0, _module._default.Loop$G, $Heap);
  var defass#x#0: bool;
  var x#0: Box
     where defass#x#0
       ==> $IsBox(x#0, _module._default.Loop$G)
         && $IsAllocBox(x#0, _module._default.Loop$G, $Heap);
  var defass#y#0: bool;
  var y#0: Box
     where defass#y#0
       ==> $IsBox(y#0, _module._default.Loop$G)
         && $IsAllocBox(y#0, _module._default.Loop$G, $Heap);
  var defass#z#0: bool;
  var z#0: Box
     where defass#z#0
       ==> $IsBox(z#0, _module._default.Loop$G)
         && $IsAllocBox(z#0, _module._default.Loop$G, $Heap);
  var $rhs#0: Box;
  var $rhs#1: Box;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var preLoop$loop#0$defass#x#0: bool;
  var preLoop$loop#0$defass#z#0: bool;
  var preLoop$loop#0$defass#y#0: bool;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var $rhs#3_1_0: Box;
  var $rhs#3_1_1: Box;
  var defass#lw#3_0: bool;
  var lw#3_0: Box
     where defass#lw#3_0
       ==> $IsBox(lw#3_0, _module._default.Loop$G)
         && $IsAllocBox(lw#3_0, _module._default.Loop$G, $Heap);
  var defass#lx#3_0: bool;
  var lx#3_0: Box
     where defass#lx#3_0
       ==> $IsBox(lx#3_0, _module._default.Loop$G)
         && $IsAllocBox(lx#3_0, _module._default.Loop$G, $Heap);
  var defass#t#0: bool;
  var t#0: Box
     where defass#t#0
       ==> $IsBox(t#0, _module._default.Loop$G)
         && $IsAllocBox(t#0, _module._default.Loop$G, $Heap);
  var defass#t#1: bool;
  var t#1: Box
     where defass#t#1
       ==> $IsBox(t#1, _module._default.Loop$G)
         && $IsAllocBox(t#1, _module._default.Loop$G, $Heap);
  var $PreLoopHeap$loop#1: Heap;
  var $decr_init$loop#10: int;
  var $w$loop#1: bool;
  var $decr$loop#10: int;

    // AddMethodImpl: Loop, Impl$$_module.__default.Loop
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc w#0 /* where defass#w#0
       ==> $IsBox(w#0, _module._default.Loop$G)
         && $IsAllocBox(w#0, _module._default.Loop$G, $Heap) */, x#0 /* where defass#x#0
       ==> $IsBox(x#0, _module._default.Loop$G)
         && $IsAllocBox(x#0, _module._default.Loop$G, $Heap) */, y#0 /* where defass#y#0
       ==> $IsBox(y#0, _module._default.Loop$G)
         && $IsAllocBox(y#0, _module._default.Loop$G, $Heap) */, z#0 /* where defass#z#0
       ==> $IsBox(z#0, _module._default.Loop$G)
         && $IsAllocBox(z#0, _module._default.Loop$G, $Heap) */;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(193,8)
    assume true;
    assume true;
    assume true;
    $rhs#0 := a#0;
    assume true;
    $rhs#1 := a#0;
    w#0 := $rhs#0;
    defass#w#0 := true;
    x#0 := $rhs#1;
    defass#x#0 := true;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(194,3)
    assume true;
    if (k#0 < 100)
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(195,7)
        assume true;
        assume true;
        z#0 := a#0;
        defass#z#0 := true;
        pop;
    }
    else
    {
    }

    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(197,3)
    if (*)
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(197,12)
        assume true;
        assume true;
        y#0 := a#0;
        defass#y#0 := true;
        pop;
    }
    else
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(197,29)
        assume true;
        assume true;
        y#0 := b#0;
        defass#y#0 := true;
        pop;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(198,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(199,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    preLoop$loop#0$defass#x#0 := defass#x#0;
    preLoop$loop#0$defass#z#0 := defass#z#0;
    preLoop$loop#0$defass#y#0 := defass#y#0;
    $decr_init$loop#00 := n#0 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id173"} $w$loop#0 ==> 4 < i#0 ==> y#0 == a#0;
      free invariant true;
      invariant {:id "id176"} $w$loop#0 ==> y#0 == b#0 || i#0 <= n#0;
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o]);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant preLoop$loop#0$defass#x#0 ==> defass#x#0;
      free invariant preLoop$loop#0$defass#z#0 ==> defass#z#0;
      free invariant preLoop$loop#0$defass#y#0 ==> defass#y#0;
      free invariant n#0 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (4 < i#0)
            {
                assert {:id "id171"} defass#y#0;
            }

            assume true;
            assume {:id "id172"} 4 < i#0 ==> y#0 == a#0;
            assert {:id "id174"} defass#y#0;
            if (y#0 != b#0)
            {
            }

            assume true;
            assume {:id "id175"} y#0 == b#0 || i#0 <= n#0;
            assume true;
            assume false;
        }

        assume true;
        if (n#0 <= i#0)
        {
            break;
        }

        $decr$loop#00 := n#0 - i#0;
        push;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(203,5)
        assume true;
        if (i#0 == LitInt(4))
        {
            push;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(204,9)
            assume true;
            assume true;
            y#0 := a#0;
            defass#y#0 := true;
            pop;
        }
        else
        {
        }

        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(206,5)
        assert {:id "id178"} LitInt(2) != 0;
        assume true;
        if (Mod(i#0, LitInt(2)) == LitInt(0))
        {
            push;
            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(207,12)
            assume true;
            assume true;
            assume true;
            $rhs#3_1_0 := b#0;
            assume true;
            $rhs#3_1_1 := b#0;
            x#0 := $rhs#3_1_0;
            defass#x#0 := true;
            z#0 := $rhs#3_1_1;
            defass#z#0 := true;
            pop;
        }
        else
        {
        }

        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(209,12)
        assume true;
        assert {:id "id183"} defass#w#0;
        assume true;
        lw#3_0 := w#0;
        defass#lw#3_0 := true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(210,12)
        assume true;
        assert {:id "id185"} defass#x#0;
        assume true;
        lx#3_0 := x#0;
        defass#lx#3_0 := true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(211,7)
        assume true;
        assume true;
        i#0 := i#0 + 1;
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(199,3)
        assert {:id "id188"} 0 <= $decr$loop#00 || n#0 - i#0 == $decr$loop#00;
        assert {:id "id189"} n#0 - i#0 < $decr$loop#00;
        assume true;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(213,5)
    assume true;
    assert {:id "id190"} defass#w#0;
    assume true;
    g#0 := w#0;
    defass#g#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(214,5)
    assume true;
    assert {:id "id192"} defass#x#0;
    assume true;
    g#0 := x#0;
    defass#g#0 := true;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(215,3)
    assume true;
    if (k#0 < 100)
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(216,7)
        assume true;
        assert {:id "id194"} defass#z#0;
        assume true;
        g#0 := z#0;
        defass#g#0 := true;
        pop;
    }
    else
    {
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(218,5)
    assume true;
    havoc g#0;
    push;
    havoc t#0 /* where defass#t#0
       ==> $IsBox(t#0, _module._default.Loop$G)
         && $IsAllocBox(t#0, _module._default.Loop$G, $Heap) */;
    pop;
    push;
    havoc t#1 /* where defass#t#1
       ==> $IsBox(t#1, _module._default.Loop$G)
         && $IsAllocBox(t#1, _module._default.Loop$G, $Heap) */;
    pop;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(222,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#1 := $Heap;
    $decr_init$loop#10 := i#0 - 0;
    havoc $w$loop#1;
    while (true)
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#1[$o]);
      free invariant $HeapSucc($PreLoopHeap$loop#1, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#1, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#1, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant i#0 - 0 <= $decr_init$loop#10;
    {
        if (!$w$loop#1)
        {
            assume true;
            assume false;
        }

        assume true;
        if (i#0 <= 0)
        {
            break;
        }

        $decr$loop#10 := i#0 - 0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(223,7)
        assume true;
        assume true;
        i#0 := i#0 - 1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(222,3)
        assert {:id "id197"} 0 <= $decr$loop#10 || i#0 - 0 == $decr$loop#10;
        assert {:id "id198"} i#0 - 0 < $decr$loop#10;
    }

    assert {:id "id199"} defass#g#0;
}



// function declaration for _module._default.Two
function _module.__default.Two(_module._default.Two$T: Ty, t#0: Box) : DatatypeType
uses {
// consequence axiom for _module.__default.Two
axiom 0 <= $FunctionContextHeight
   ==> (forall _module._default.Two$T: Ty, t#0: Box :: 
    { _module.__default.Two(_module._default.Two$T, t#0) } 
    _module.__default.Two#canCall(_module._default.Two$T, t#0)
         || (0 < $FunctionContextHeight && $IsBox(t#0, _module._default.Two$T))
       ==> $Is(_module.__default.Two(_module._default.Two$T, t#0), 
        Tclass._System.Tuple2(_module._default.Two$T, _module._default.Two$T)));
// alloc consequence axiom for _module.__default.Two
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module._default.Two$T: Ty, t#0: Box :: 
    { $IsAlloc(_module.__default.Two(_module._default.Two$T, t#0), 
        Tclass._System.Tuple2(_module._default.Two$T, _module._default.Two$T), 
        $Heap) } 
    (_module.__default.Two#canCall(_module._default.Two$T, t#0)
           || (0 < $FunctionContextHeight
             && 
            $IsBox(t#0, _module._default.Two$T)
             && $IsAllocBox(t#0, _module._default.Two$T, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.Two(_module._default.Two$T, t#0), 
        Tclass._System.Tuple2(_module._default.Two$T, _module._default.Two$T), 
        $Heap));
// definition axiom for _module.__default.Two (revealed)
axiom {:id "id200"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.Two$T: Ty, t#0: Box :: 
    { _module.__default.Two(_module._default.Two$T, t#0) } 
    _module.__default.Two#canCall(_module._default.Two$T, t#0)
         || (0 < $FunctionContextHeight && $IsBox(t#0, _module._default.Two$T))
       ==> _module.__default.Two(_module._default.Two$T, t#0)
         == #_System._tuple#2._#Make2(t#0, t#0));
// definition axiom for _module.__default.Two for all literals (revealed)
axiom {:id "id201"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.Two$T: Ty, t#0: Box :: 
    {:weight 3} { _module.__default.Two(_module._default.Two$T, Lit(t#0)) } 
    _module.__default.Two#canCall(_module._default.Two$T, Lit(t#0))
         || (0 < $FunctionContextHeight && $IsBox(t#0, _module._default.Two$T))
       ==> _module.__default.Two(_module._default.Two$T, Lit(t#0))
         == Lit(#_System._tuple#2._#Make2(Lit(t#0), Lit(t#0))));
}

function _module.__default.Two#canCall(_module._default.Two$T: Ty, t#0: Box) : bool;

function _module.__default.Two#requires(Ty, Box) : bool;

// #requires axiom for _module.__default.Two
axiom (forall _module._default.Two$T: Ty, t#0: Box :: 
  { _module.__default.Two#requires(_module._default.Two$T, t#0) } 
  $IsBox(t#0, _module._default.Two$T)
     ==> _module.__default.Two#requires(_module._default.Two$T, t#0) == true);

procedure {:verboseName "Two (well-formedness)"} CheckWellformed$$_module.__default.Two(_module._default.Two$T: Ty, t#0: Box where $IsBox(t#0, _module._default.Two$T));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TwoMethod (well-formedness)"} CheckWellFormed$$_module.__default.TwoMethod(_module._default.TwoMethod$T: Ty, 
    t#0: Box
       where $IsBox(t#0, _module._default.TwoMethod$T)
         && $IsAllocBox(t#0, _module._default.TwoMethod$T, $Heap))
   returns (a#0: Box
       where $IsBox(a#0, _module._default.TwoMethod$T)
         && $IsAllocBox(a#0, _module._default.TwoMethod$T, $Heap), 
    b#0: Box
       where $IsBox(b#0, _module._default.TwoMethod$T)
         && $IsAllocBox(b#0, _module._default.TwoMethod$T, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TwoMethod (call)"} Call$$_module.__default.TwoMethod(_module._default.TwoMethod$T: Ty, 
    t#0: Box
       where $IsBox(t#0, _module._default.TwoMethod$T)
         && $IsAllocBox(t#0, _module._default.TwoMethod$T, $Heap))
   returns (a#0: Box
       where $IsBox(a#0, _module._default.TwoMethod$T)
         && $IsAllocBox(a#0, _module._default.TwoMethod$T, $Heap), 
    b#0: Box
       where $IsBox(b#0, _module._default.TwoMethod$T)
         && $IsAllocBox(b#0, _module._default.TwoMethod$T, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TwoMethod (correctness)"} Impl$$_module.__default.TwoMethod(_module._default.TwoMethod$T: Ty, 
    t#0: Box
       where $IsBox(t#0, _module._default.TwoMethod$T)
         && $IsAllocBox(t#0, _module._default.TwoMethod$T, $Heap))
   returns (defass#a#0: bool, 
    a#0: Box
       where defass#a#0
         ==> $IsBox(a#0, _module._default.TwoMethod$T)
           && $IsAllocBox(a#0, _module._default.TwoMethod$T, $Heap), 
    defass#b#0: bool, 
    b#0: Box
       where defass#b#0
         ==> $IsBox(b#0, _module._default.TwoMethod$T)
           && $IsAllocBox(b#0, _module._default.TwoMethod$T, $Heap), 
    $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TwoMethod (correctness)"} Impl$$_module.__default.TwoMethod(_module._default.TwoMethod$T: Ty, t#0: Box)
   returns (defass#a#0: bool, a#0: Box, defass#b#0: bool, b#0: Box, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: Box;
  var $rhs#1: Box;

    // AddMethodImpl: TwoMethod, Impl$$_module.__default.TwoMethod
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(236,8)
    assume true;
    assume true;
    assume true;
    $rhs#0 := t#0;
    assume true;
    $rhs#1 := t#0;
    a#0 := $rhs#0;
    defass#a#0 := true;
    b#0 := $rhs#1;
    defass#b#0 := true;
    assert {:id "id207"} defass#a#0;
    assert {:id "id208"} defass#b#0;
}



procedure {:verboseName "UnderscoresAndPatterns0 (well-formedness)"} CheckWellFormed$$_module.__default.UnderscoresAndPatterns0(_module._default.UnderscoresAndPatterns0$T: Ty, 
    tt#0: Box
       where $IsBox(tt#0, _module._default.UnderscoresAndPatterns0$T)
         && $IsAllocBox(tt#0, _module._default.UnderscoresAndPatterns0$T, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "UnderscoresAndPatterns0 (call)"} Call$$_module.__default.UnderscoresAndPatterns0(_module._default.UnderscoresAndPatterns0$T: Ty, 
    tt#0: Box
       where $IsBox(tt#0, _module._default.UnderscoresAndPatterns0$T)
         && $IsAllocBox(tt#0, _module._default.UnderscoresAndPatterns0$T, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "UnderscoresAndPatterns0 (correctness)"} Impl$$_module.__default.UnderscoresAndPatterns0(_module._default.UnderscoresAndPatterns0$T: Ty, 
    tt#0: Box
       where $IsBox(tt#0, _module._default.UnderscoresAndPatterns0$T)
         && $IsAllocBox(tt#0, _module._default.UnderscoresAndPatterns0$T, $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "UnderscoresAndPatterns0 (correctness)"} Impl$$_module.__default.UnderscoresAndPatterns0(_module._default.UnderscoresAndPatterns0$T: Ty, tt#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#a#0: bool;
  var a#0: Box
     where defass#a#0
       ==> $IsBox(a#0, _module._default.UnderscoresAndPatterns0$T)
         && $IsAllocBox(a#0, _module._default.UnderscoresAndPatterns0$T, $Heap);
  var defass#b#0: bool;
  var b#0: Box
     where defass#b#0
       ==> $IsBox(b#0, _module._default.UnderscoresAndPatterns0$T)
         && $IsAllocBox(b#0, _module._default.UnderscoresAndPatterns0$T, $Heap);
  var defass#a'#0: bool;
  var a'#0: Box
     where defass#a'#0
       ==> $IsBox(a'#0, _module._default.UnderscoresAndPatterns0$T)
         && $IsAllocBox(a'#0, _module._default.UnderscoresAndPatterns0$T, $Heap);
  var defass#b'#0: bool;
  var b'#0: Box
     where defass#b'#0
       ==> $IsBox(b'#0, _module._default.UnderscoresAndPatterns0$T)
         && $IsAllocBox(b'#0, _module._default.UnderscoresAndPatterns0$T, $Heap);

    // AddMethodImpl: UnderscoresAndPatterns0, Impl$$_module.__default.UnderscoresAndPatterns0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc a#0 /* where defass#a#0
       ==> $IsBox(a#0, _module._default.UnderscoresAndPatterns0$T)
         && $IsAllocBox(a#0, _module._default.UnderscoresAndPatterns0$T, $Heap) */, b#0 /* where defass#b#0
       ==> $IsBox(b#0, _module._default.UnderscoresAndPatterns0$T)
         && $IsAllocBox(b#0, _module._default.UnderscoresAndPatterns0$T, $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(242,10)
    assume true;
    assert {:id "id209"} defass#a#0;
    assume true;
    a'#0 := a#0;
    defass#a'#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(243,10)
    assume true;
    assert {:id "id211"} defass#b#0;
    assume true;
    b'#0 := b#0;
    defass#b'#0 := true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(244,3)
    assert {:id "id213"} defass#a'#0;
    assume true;
    assume true;
    assert {:id "id214"} defass#b'#0;
    assume true;
    assume true;
}



procedure {:verboseName "UnderscoresAndPatterns1 (well-formedness)"} CheckWellFormed$$_module.__default.UnderscoresAndPatterns1(_module._default.UnderscoresAndPatterns1$T: Ty, 
    tt#0: Box
       where $IsBox(tt#0, _module._default.UnderscoresAndPatterns1$T)
         && $IsAllocBox(tt#0, _module._default.UnderscoresAndPatterns1$T, $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "UnderscoresAndPatterns1 (call)"} Call$$_module.__default.UnderscoresAndPatterns1(_module._default.UnderscoresAndPatterns1$T: Ty, 
    tt#0: Box
       where $IsBox(tt#0, _module._default.UnderscoresAndPatterns1$T)
         && $IsAllocBox(tt#0, _module._default.UnderscoresAndPatterns1$T, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "UnderscoresAndPatterns1 (correctness)"} Impl$$_module.__default.UnderscoresAndPatterns1(_module._default.UnderscoresAndPatterns1$T: Ty, 
    tt#0: Box
       where $IsBox(tt#0, _module._default.UnderscoresAndPatterns1$T)
         && $IsAllocBox(tt#0, _module._default.UnderscoresAndPatterns1$T, $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "UnderscoresAndPatterns1 (correctness)"} Impl$$_module.__default.UnderscoresAndPatterns1(_module._default.UnderscoresAndPatterns1$T: Ty, tt#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: Box;
  var b#0: Box;
  var let#0#0#0: DatatypeType;
  var ##t#0: Box;
  var defass#a'#0: bool;
  var a'#0: Box
     where defass#a'#0
       ==> $IsBox(a'#0, _module._default.UnderscoresAndPatterns1$T)
         && $IsAllocBox(a'#0, _module._default.UnderscoresAndPatterns1$T, $Heap);
  var defass#b'#0: bool;
  var b'#0: Box
     where defass#b'#0
       ==> $IsBox(b'#0, _module._default.UnderscoresAndPatterns1$T)
         && $IsAllocBox(b'#0, _module._default.UnderscoresAndPatterns1$T, $Heap);

    // AddMethodImpl: UnderscoresAndPatterns1, Impl$$_module.__default.UnderscoresAndPatterns1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc a#0;
    assume $IsBox(a#0, _module._default.UnderscoresAndPatterns1$T)
       && $IsAllocBox(a#0, _module._default.UnderscoresAndPatterns1$T, $Heap);
    havoc b#0;
    assume $IsBox(b#0, _module._default.UnderscoresAndPatterns1$T)
       && $IsAllocBox(b#0, _module._default.UnderscoresAndPatterns1$T, $Heap);
    ##t#0 := tt#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##t#0, _module._default.UnderscoresAndPatterns1$T, $Heap);
    assume _module.__default.Two#canCall(_module._default.UnderscoresAndPatterns1$T, tt#0);
    assume _System.Tuple2.___hMake2_q(_module.__default.Two(_module._default.UnderscoresAndPatterns1$T, tt#0));
    assume {:id "id215"} let#0#0#0
       == _module.__default.Two(_module._default.UnderscoresAndPatterns1$T, tt#0);
    assume _module.__default.Two#canCall(_module._default.UnderscoresAndPatterns1$T, tt#0);
    assume _module.__default.Two#canCall(_module._default.UnderscoresAndPatterns1$T, tt#0);
    // CheckWellformedWithResult: any expression
    assume $Is(let#0#0#0, 
      Tclass._System.Tuple2(_module._default.UnderscoresAndPatterns1$T, 
        _module._default.UnderscoresAndPatterns1$T));
    assume _System.Tuple2.___hMake2_q(let#0#0#0);
    assume {:id "id216"} #_System._tuple#2._#Make2(a#0, b#0) == let#0#0#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(250,10)
    assume true;
    assume true;
    a'#0 := b#0;
    defass#a'#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(251,10)
    assume true;
    assume true;
    b'#0 := b#0;
    defass#b'#0 := true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(252,3)
    assert {:id "id219"} defass#a'#0;
    assume true;
    assume true;
    assert {:id "id220"} defass#b'#0;
    assume true;
    assume true;
}



procedure {:verboseName "UnderscoresAndPatterns2 (well-formedness)"} CheckWellFormed$$_module.__default.UnderscoresAndPatterns2(_module._default.UnderscoresAndPatterns2$T: Ty, 
    tt#0: Box
       where $IsBox(tt#0, _module._default.UnderscoresAndPatterns2$T)
         && $IsAllocBox(tt#0, _module._default.UnderscoresAndPatterns2$T, $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "UnderscoresAndPatterns2 (call)"} Call$$_module.__default.UnderscoresAndPatterns2(_module._default.UnderscoresAndPatterns2$T: Ty, 
    tt#0: Box
       where $IsBox(tt#0, _module._default.UnderscoresAndPatterns2$T)
         && $IsAllocBox(tt#0, _module._default.UnderscoresAndPatterns2$T, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "UnderscoresAndPatterns2 (correctness)"} Impl$$_module.__default.UnderscoresAndPatterns2(_module._default.UnderscoresAndPatterns2$T: Ty, 
    tt#0: Box
       where $IsBox(tt#0, _module._default.UnderscoresAndPatterns2$T)
         && $IsAllocBox(tt#0, _module._default.UnderscoresAndPatterns2$T, $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "UnderscoresAndPatterns2 (correctness)"} Impl$$_module.__default.UnderscoresAndPatterns2(_module._default.UnderscoresAndPatterns2$T: Ty, tt#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _v0#0: Box;
  var b#0: Box;
  var let#0#0#0: DatatypeType;
  var ##t#0: Box;
  var defass#a'#0: bool;
  var a'#0: Box
     where defass#a'#0
       ==> $IsBox(a'#0, _module._default.UnderscoresAndPatterns2$T)
         && $IsAllocBox(a'#0, _module._default.UnderscoresAndPatterns2$T, $Heap);
  var defass#b'#0: bool;
  var b'#0: Box
     where defass#b'#0
       ==> $IsBox(b'#0, _module._default.UnderscoresAndPatterns2$T)
         && $IsAllocBox(b'#0, _module._default.UnderscoresAndPatterns2$T, $Heap);

    // AddMethodImpl: UnderscoresAndPatterns2, Impl$$_module.__default.UnderscoresAndPatterns2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc _v0#0;
    assume $IsBox(_v0#0, _module._default.UnderscoresAndPatterns2$T)
       && $IsAllocBox(_v0#0, _module._default.UnderscoresAndPatterns2$T, $Heap);
    havoc b#0;
    assume $IsBox(b#0, _module._default.UnderscoresAndPatterns2$T)
       && $IsAllocBox(b#0, _module._default.UnderscoresAndPatterns2$T, $Heap);
    ##t#0 := tt#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##t#0, _module._default.UnderscoresAndPatterns2$T, $Heap);
    assume _module.__default.Two#canCall(_module._default.UnderscoresAndPatterns2$T, tt#0);
    assume _System.Tuple2.___hMake2_q(_module.__default.Two(_module._default.UnderscoresAndPatterns2$T, tt#0));
    assume {:id "id221"} let#0#0#0
       == _module.__default.Two(_module._default.UnderscoresAndPatterns2$T, tt#0);
    assume _module.__default.Two#canCall(_module._default.UnderscoresAndPatterns2$T, tt#0);
    assume _module.__default.Two#canCall(_module._default.UnderscoresAndPatterns2$T, tt#0);
    // CheckWellformedWithResult: any expression
    assume $Is(let#0#0#0, 
      Tclass._System.Tuple2(_module._default.UnderscoresAndPatterns2$T, 
        _module._default.UnderscoresAndPatterns2$T));
    assume _System.Tuple2.___hMake2_q(let#0#0#0);
    assume {:id "id222"} #_System._tuple#2._#Make2(_v0#0, b#0) == let#0#0#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(258,10)
    assume true;
    assume true;
    a'#0 := b#0;
    defass#a'#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(259,10)
    assume true;
    assume true;
    b'#0 := b#0;
    defass#b'#0 := true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(260,3)
    assert {:id "id225"} defass#a'#0;
    assume true;
    assume true;
    assert {:id "id226"} defass#b'#0;
    assume true;
    assume true;
}



procedure {:verboseName "UnderscoresAndPatterns3 (well-formedness)"} CheckWellFormed$$_module.__default.UnderscoresAndPatterns3(_module._default.UnderscoresAndPatterns3$T: Ty, 
    tt#0: Box
       where $IsBox(tt#0, _module._default.UnderscoresAndPatterns3$T)
         && $IsAllocBox(tt#0, _module._default.UnderscoresAndPatterns3$T, $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "UnderscoresAndPatterns3 (call)"} Call$$_module.__default.UnderscoresAndPatterns3(_module._default.UnderscoresAndPatterns3$T: Ty, 
    tt#0: Box
       where $IsBox(tt#0, _module._default.UnderscoresAndPatterns3$T)
         && $IsAllocBox(tt#0, _module._default.UnderscoresAndPatterns3$T, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "UnderscoresAndPatterns3 (correctness)"} Impl$$_module.__default.UnderscoresAndPatterns3(_module._default.UnderscoresAndPatterns3$T: Ty, 
    tt#0: Box
       where $IsBox(tt#0, _module._default.UnderscoresAndPatterns3$T)
         && $IsAllocBox(tt#0, _module._default.UnderscoresAndPatterns3$T, $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "UnderscoresAndPatterns3 (correctness)"} Impl$$_module.__default.UnderscoresAndPatterns3(_module._default.UnderscoresAndPatterns3$T: Ty, tt#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#_v1#0: bool;
  var _v1#0: Box
     where defass#_v1#0
       ==> $IsBox(_v1#0, _module._default.UnderscoresAndPatterns3$T)
         && $IsAllocBox(_v1#0, _module._default.UnderscoresAndPatterns3$T, $Heap);
  var defass#b#0: bool;
  var b#0: Box
     where defass#b#0
       ==> $IsBox(b#0, _module._default.UnderscoresAndPatterns3$T)
         && $IsAllocBox(b#0, _module._default.UnderscoresAndPatterns3$T, $Heap);
  var $rhs##0: Box;
  var $rhs##1: Box;
  var t##0: Box;
  var defass#b'#0: bool;
  var b'#0: Box
     where defass#b'#0
       ==> $IsBox(b'#0, _module._default.UnderscoresAndPatterns3$T)
         && $IsAllocBox(b'#0, _module._default.UnderscoresAndPatterns3$T, $Heap);

    // AddMethodImpl: UnderscoresAndPatterns3, Impl$$_module.__default.UnderscoresAndPatterns3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(265,27)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type T
    // TrCallStmt: Adding lhs with type T
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    t##0 := tt#0;
    call {:id "id227"} $rhs##0, $rhs##1 := Call$$_module.__default.TwoMethod(_module._default.UnderscoresAndPatterns3$T, t##0);
    // TrCallStmt: After ProcessCallStmt
    _v1#0 := $rhs##0;
    defass#_v1#0 := true;
    b#0 := $rhs##1;
    defass#b#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(266,10)
    assume true;
    assert {:id "id230"} defass#b#0;
    assume true;
    b'#0 := b#0;
    defass#b'#0 := true;
}



const unique class._module.MyClass?: ClassName;

function Tclass._module.MyClass?(Ty) : Ty;

const unique Tagclass._module.MyClass?: TyTag;

// Tclass._module.MyClass? Tag
axiom (forall _module.MyClass$G: Ty :: 
  { Tclass._module.MyClass?(_module.MyClass$G) } 
  Tag(Tclass._module.MyClass?(_module.MyClass$G)) == Tagclass._module.MyClass?
     && TagFamily(Tclass._module.MyClass?(_module.MyClass$G)) == tytagFamily$MyClass);

function Tclass._module.MyClass?_0(Ty) : Ty;

// Tclass._module.MyClass? injectivity 0
axiom (forall _module.MyClass$G: Ty :: 
  { Tclass._module.MyClass?(_module.MyClass$G) } 
  Tclass._module.MyClass?_0(Tclass._module.MyClass?(_module.MyClass$G))
     == _module.MyClass$G);

// Box/unbox axiom for Tclass._module.MyClass?
axiom (forall _module.MyClass$G: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.MyClass?(_module.MyClass$G)) } 
  $IsBox(bx, Tclass._module.MyClass?(_module.MyClass$G))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.MyClass?(_module.MyClass$G)));

// $Is axiom for class MyClass
axiom (forall _module.MyClass$G: Ty, $o: ref :: 
  { $Is($o, Tclass._module.MyClass?(_module.MyClass$G)) } 
  $Is($o, Tclass._module.MyClass?(_module.MyClass$G))
     <==> $o == null || dtype($o) == Tclass._module.MyClass?(_module.MyClass$G));

// $IsAlloc axiom for class MyClass
axiom (forall _module.MyClass$G: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.MyClass?(_module.MyClass$G), $h) } 
  $IsAlloc($o, Tclass._module.MyClass?(_module.MyClass$G), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function _module.MyClass.x(_module.MyClass$G: Ty, this: ref) : Box
uses {
// MyClass.x: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.MyClass$G: Ty, $o: ref :: 
    { _module.MyClass.x(_module.MyClass$G, $o) } 
    $o != null && dtype($o) == Tclass._module.MyClass?(_module.MyClass$G)
       ==> $IsBox(_module.MyClass.x(_module.MyClass$G, $o), _module.MyClass$G));
// MyClass.x: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.MyClass$G: Ty, $h: Heap, $o: ref :: 
    { _module.MyClass.x(_module.MyClass$G, $o), $Unbox(read($h, $o, alloc)): bool } 
    $IsGoodHeap($h)
         && 
        $o != null
         && dtype($o) == Tclass._module.MyClass?(_module.MyClass$G)
         && $Unbox(read($h, $o, alloc)): bool
       ==> $IsAllocBox(_module.MyClass.x(_module.MyClass$G, $o), _module.MyClass$G, $h));
}

const _module.MyClass.y: Field
uses {
axiom FDim(_module.MyClass.y) == 0
   && FieldOfDecl(class._module.MyClass?, field$y) == _module.MyClass.y
   && !$IsGhostField(_module.MyClass.y);
}

// MyClass.y: Type axiom
axiom (forall _module.MyClass$G: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.MyClass.y), Tclass._module.MyClass?(_module.MyClass$G) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.MyClass?(_module.MyClass$G)
     ==> $IsBox(read($h, $o, _module.MyClass.y), _module.MyClass$G));

// MyClass.y: Allocation axiom
axiom (forall _module.MyClass$G: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.MyClass.y), Tclass._module.MyClass?(_module.MyClass$G) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.MyClass?(_module.MyClass$G)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, _module.MyClass.y), _module.MyClass$G, $h));

const _module.MyClass.oxA: Field
uses {
axiom FDim(_module.MyClass.oxA) == 0
   && FieldOfDecl(class._module.MyClass?, field$oxA) == _module.MyClass.oxA
   && $IsGhostField(_module.MyClass.oxA);
}

// MyClass.oxA: Type axiom
axiom (forall _module.MyClass$G: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.MyClass.oxA), Tclass._module.MyClass?(_module.MyClass$G) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.MyClass?(_module.MyClass$G)
     ==> $IsBox(read($h, $o, _module.MyClass.oxA), _module.MyClass$G));

// MyClass.oxA: Allocation axiom
axiom (forall _module.MyClass$G: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.MyClass.oxA), Tclass._module.MyClass?(_module.MyClass$G) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.MyClass?(_module.MyClass$G)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, _module.MyClass.oxA), _module.MyClass$G, $h));

function _module.MyClass.oxB(_module.MyClass$G: Ty, this: ref) : Box
uses {
// MyClass.oxB: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.MyClass$G: Ty, $o: ref :: 
    { _module.MyClass.oxB(_module.MyClass$G, $o) } 
    $o != null && dtype($o) == Tclass._module.MyClass?(_module.MyClass$G)
       ==> $IsBox(_module.MyClass.oxB(_module.MyClass$G, $o), _module.MyClass$G));
// MyClass.oxB: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.MyClass$G: Ty, $h: Heap, $o: ref :: 
    { _module.MyClass.oxB(_module.MyClass$G, $o), $Unbox(read($h, $o, alloc)): bool } 
    $IsGoodHeap($h)
         && 
        $o != null
         && dtype($o) == Tclass._module.MyClass?(_module.MyClass$G)
         && $Unbox(read($h, $o, alloc)): bool
       ==> $IsAllocBox(_module.MyClass.oxB(_module.MyClass$G, $o), _module.MyClass$G, $h));
}

procedure {:verboseName "MyClass.C0 (well-formedness)"} CheckWellFormed$$_module.MyClass.C0(_module.MyClass$G: Ty) returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



function Tclass._module.MyClass(Ty) : Ty;

const unique Tagclass._module.MyClass: TyTag;

// Tclass._module.MyClass Tag
axiom (forall _module.MyClass$G: Ty :: 
  { Tclass._module.MyClass(_module.MyClass$G) } 
  Tag(Tclass._module.MyClass(_module.MyClass$G)) == Tagclass._module.MyClass
     && TagFamily(Tclass._module.MyClass(_module.MyClass$G)) == tytagFamily$MyClass);

function Tclass._module.MyClass_0(Ty) : Ty;

// Tclass._module.MyClass injectivity 0
axiom (forall _module.MyClass$G: Ty :: 
  { Tclass._module.MyClass(_module.MyClass$G) } 
  Tclass._module.MyClass_0(Tclass._module.MyClass(_module.MyClass$G))
     == _module.MyClass$G);

// Box/unbox axiom for Tclass._module.MyClass
axiom (forall _module.MyClass$G: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.MyClass(_module.MyClass$G)) } 
  $IsBox(bx, Tclass._module.MyClass(_module.MyClass$G))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.MyClass(_module.MyClass$G)));

procedure {:verboseName "MyClass.C0 (call)"} Call$$_module.MyClass.C0(_module.MyClass$G: Ty)
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.MyClass(_module.MyClass$G))
         && $IsAlloc(this, Tclass._module.MyClass(_module.MyClass$G), $Heap));
  modifies $Heap;
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MyClass.C0 (correctness)"} Impl$$_module.MyClass.C0(_module.MyClass$G: Ty) returns (this: ref, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MyClass.C0 (correctness)"} Impl$$_module.MyClass.C0(_module.MyClass$G: Ty) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.x: Box;
  var this.y: Box;
  var this.oxA: Box;
  var this.oxB: Box;
  var defass#this.x: bool;
  var defass#this.y: bool;

    // AddMethodImpl: C0, Impl$$_module.MyClass.C0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(10,3)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(11,7)
    assume true;
    assert {:id "id232"} defass#this.y;
    assume true;
    this.x := this.y;
    defass#this.x := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(12,12)
    assume true;
    assert {:id "id234"} defass#this.x;
    assume true;
    this.y := this.x;
    defass#this.y := true;
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(10,3)
    assert {:id "id236"} defass#this.x;
    assert {:id "id237"} defass#this.y;
    assume this != null && $Is(this, Tclass._module.MyClass?(_module.MyClass$G));
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume _module.MyClass.x(_module.MyClass$G, this) == this.x;
    assume read($Heap, this, _module.MyClass.y) == this.y;
    assume read($Heap, this, _module.MyClass.oxA) == this.oxA;
    assume _module.MyClass.oxB(_module.MyClass$G, this) == this.oxB;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(10,3)
}



procedure {:verboseName "MyClass.C1 (well-formedness)"} CheckWellFormed$$_module.MyClass.C1(_module.MyClass$G: Ty, 
    g#0: Box
       where $IsBox(g#0, _module.MyClass$G) && $IsAllocBox(g#0, _module.MyClass$G, $Heap))
   returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MyClass.C1 (call)"} Call$$_module.MyClass.C1(_module.MyClass$G: Ty, 
    g#0: Box
       where $IsBox(g#0, _module.MyClass$G) && $IsAllocBox(g#0, _module.MyClass$G, $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.MyClass(_module.MyClass$G))
         && $IsAlloc(this, Tclass._module.MyClass(_module.MyClass$G), $Heap));
  modifies $Heap;
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MyClass.C1 (correctness)"} Impl$$_module.MyClass.C1(_module.MyClass$G: Ty, 
    g#0: Box
       where $IsBox(g#0, _module.MyClass$G) && $IsAllocBox(g#0, _module.MyClass$G, $Heap))
   returns (this: ref, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MyClass.C1 (correctness)"} Impl$$_module.MyClass.C1(_module.MyClass$G: Ty, g#0: Box) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.x: Box;
  var this.y: Box;
  var this.oxA: Box;
  var this.oxB: Box;
  var defass#this.x: bool;
  var defass#this.y: bool;

    // AddMethodImpl: C1, Impl$$_module.MyClass.C1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(16,3)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(17,7)
    assume true;
    assume true;
    this.x := g#0;
    defass#this.x := true;
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(16,3)
    assert {:id "id239"} defass#this.x;
    assert {:id "id240"} defass#this.y;
    assume this != null && $Is(this, Tclass._module.MyClass?(_module.MyClass$G));
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume _module.MyClass.x(_module.MyClass$G, this) == this.x;
    assume read($Heap, this, _module.MyClass.y) == this.y;
    assume read($Heap, this, _module.MyClass.oxA) == this.oxA;
    assume _module.MyClass.oxB(_module.MyClass$G, this) == this.oxB;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(16,3)
}



procedure {:verboseName "MyClass.C2 (well-formedness)"} CheckWellFormed$$_module.MyClass.C2(_module.MyClass$G: Ty, 
    g#0: Box
       where $IsBox(g#0, _module.MyClass$G) && $IsAllocBox(g#0, _module.MyClass$G, $Heap))
   returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MyClass.C2 (call)"} Call$$_module.MyClass.C2(_module.MyClass$G: Ty, 
    g#0: Box
       where $IsBox(g#0, _module.MyClass$G) && $IsAllocBox(g#0, _module.MyClass$G, $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.MyClass(_module.MyClass$G))
         && $IsAlloc(this, Tclass._module.MyClass(_module.MyClass$G), $Heap));
  modifies $Heap;
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MyClass.C2 (correctness)"} Impl$$_module.MyClass.C2(_module.MyClass$G: Ty, 
    g#0: Box
       where $IsBox(g#0, _module.MyClass$G) && $IsAllocBox(g#0, _module.MyClass$G, $Heap))
   returns (this: ref, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MyClass.C2 (correctness)"} Impl$$_module.MyClass.C2(_module.MyClass$G: Ty, g#0: Box) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.x: Box;
  var this.y: Box;
  var this.oxA: Box;
  var this.oxB: Box;
  var defass#this.x: bool;
  var defass#this.y: bool;

    // AddMethodImpl: C2, Impl$$_module.MyClass.C2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(21,3)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(22,7)
    assume true;
    assume true;
    this.x := g#0;
    defass#this.x := true;
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(21,3)
    assert {:id "id242"} defass#this.x;
    assert {:id "id243"} defass#this.y;
    assume this != null && $Is(this, Tclass._module.MyClass?(_module.MyClass$G));
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume _module.MyClass.x(_module.MyClass$G, this) == this.x;
    assume read($Heap, this, _module.MyClass.y) == this.y;
    assume read($Heap, this, _module.MyClass.oxA) == this.oxA;
    assume _module.MyClass.oxB(_module.MyClass$G, this) == this.oxB;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(21,3)
}



procedure {:verboseName "MyClass.C3 (well-formedness)"} CheckWellFormed$$_module.MyClass.C3(_module.MyClass$G: Ty, 
    g#0: Box
       where $IsBox(g#0, _module.MyClass$G) && $IsAllocBox(g#0, _module.MyClass$G, $Heap))
   returns (this: ref);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MyClass.C3 (call)"} Call$$_module.MyClass.C3(_module.MyClass$G: Ty, 
    g#0: Box
       where $IsBox(g#0, _module.MyClass$G) && $IsAllocBox(g#0, _module.MyClass$G, $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.MyClass(_module.MyClass$G))
         && $IsAlloc(this, Tclass._module.MyClass(_module.MyClass$G), $Heap));
  modifies $Heap;
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MyClass.C3 (correctness)"} Impl$$_module.MyClass.C3(_module.MyClass$G: Ty, 
    g#0: Box
       where $IsBox(g#0, _module.MyClass$G) && $IsAllocBox(g#0, _module.MyClass$G, $Heap))
   returns (this: ref, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MyClass.C3 (correctness)"} Impl$$_module.MyClass.C3(_module.MyClass$G: Ty, g#0: Box) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.x: Box;
  var this.y: Box;
  var this.oxA: Box;
  var this.oxB: Box;
  var defass#this.x: bool;
  var defass#this.y: bool;

    // AddMethodImpl: C3, Impl$$_module.MyClass.C3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(25,3)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(26,7)
    assume true;
    assume true;
    this.y := g#0;
    defass#this.y := true;
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(25,3)
    assert {:id "id245"} defass#this.x;
    assert {:id "id246"} defass#this.y;
    assume this != null && $Is(this, Tclass._module.MyClass?(_module.MyClass$G));
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume _module.MyClass.x(_module.MyClass$G, this) == this.x;
    assume read($Heap, this, _module.MyClass.y) == this.y;
    assume read($Heap, this, _module.MyClass.oxA) == this.oxA;
    assume _module.MyClass.oxB(_module.MyClass$G, this) == this.oxB;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(25,3)
}



procedure {:verboseName "MyClass.C4 (well-formedness)"} CheckWellFormed$$_module.MyClass.C4(_module.MyClass$G: Ty, 
    g#0: Box
       where $IsBox(g#0, _module.MyClass$G) && $IsAllocBox(g#0, _module.MyClass$G, $Heap))
   returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MyClass.C4 (call)"} Call$$_module.MyClass.C4(_module.MyClass$G: Ty, 
    g#0: Box
       where $IsBox(g#0, _module.MyClass$G) && $IsAllocBox(g#0, _module.MyClass$G, $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.MyClass(_module.MyClass$G))
         && $IsAlloc(this, Tclass._module.MyClass(_module.MyClass$G), $Heap));
  modifies $Heap;
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MyClass.C4 (correctness)"} Impl$$_module.MyClass.C4(_module.MyClass$G: Ty, 
    g#0: Box
       where $IsBox(g#0, _module.MyClass$G) && $IsAllocBox(g#0, _module.MyClass$G, $Heap))
   returns (this: ref, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MyClass.C4 (correctness)"} Impl$$_module.MyClass.C4(_module.MyClass$G: Ty, g#0: Box) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.x: Box;
  var this.y: Box;
  var this.oxA: Box;
  var this.oxB: Box;
  var defass#this.x: bool;
  var defass#this.y: bool;

    // AddMethodImpl: C4, Impl$$_module.MyClass.C4
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(29,3)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(30,12)
    assume true;
    havoc this.y;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(31,7)
    assume true;
    assert {:id "id247"} defass#this.y;
    assume true;
    this.x := this.y;
    defass#this.x := true;
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(29,3)
    assert {:id "id249"} defass#this.x;
    assert {:id "id250"} defass#this.y;
    assume this != null && $Is(this, Tclass._module.MyClass?(_module.MyClass$G));
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume _module.MyClass.x(_module.MyClass$G, this) == this.x;
    assume read($Heap, this, _module.MyClass.y) == this.y;
    assume read($Heap, this, _module.MyClass.oxA) == this.oxA;
    assume _module.MyClass.oxB(_module.MyClass$G, this) == this.oxB;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(29,3)
}



// $Is axiom for non-null type _module.MyClass
axiom (forall _module.MyClass$G: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._module.MyClass(_module.MyClass$G)) } 
    { $Is(c#0, Tclass._module.MyClass?(_module.MyClass$G)) } 
  $Is(c#0, Tclass._module.MyClass(_module.MyClass$G))
     <==> $Is(c#0, Tclass._module.MyClass?(_module.MyClass$G)) && c#0 != null);

// $IsAlloc axiom for non-null type _module.MyClass
axiom (forall _module.MyClass$G: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.MyClass(_module.MyClass$G), $h) } 
    { $IsAlloc(c#0, Tclass._module.MyClass?(_module.MyClass$G), $h) } 
  $IsAlloc(c#0, Tclass._module.MyClass(_module.MyClass$G), $h)
     <==> $IsAlloc(c#0, Tclass._module.MyClass?(_module.MyClass$G), $h));

const unique class._module.C?: ClassName;

// $Is axiom for class C
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.C?()) } 
  $Is($o, Tclass._module.C?()) <==> $o == null || dtype($o) == Tclass._module.C?());

// $IsAlloc axiom for class C
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.C?(), $h) } 
  $IsAlloc($o, Tclass._module.C?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.C.u: Field
uses {
axiom FDim(_module.C.u) == 0
   && FieldOfDecl(class._module.C?, field$u) == _module.C.u
   && !$IsGhostField(_module.C.u);
}

// C.u: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.C.u)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.C?()
     ==> $Is($Unbox(read($h, $o, _module.C.u)): int, TInt));

// C.u: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.C.u)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.C?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.C.u)): int, TInt, $h));

// $Is axiom for non-null type _module.C
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.C()) } { $Is(c#0, Tclass._module.C?()) } 
  $Is(c#0, Tclass._module.C()) <==> $Is(c#0, Tclass._module.C?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.C
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.C(), $h) } 
    { $IsAlloc(c#0, Tclass._module.C?(), $h) } 
  $IsAlloc(c#0, Tclass._module.C(), $h)
     <==> $IsAlloc(c#0, Tclass._module.C?(), $h));

procedure {:verboseName "NonNullC (well-formedness)"} CheckWellFormed$$_module.NonNullC(c#0: ref);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NonNullC (well-formedness)"} CheckWellFormed$$_module.NonNullC(c#0: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var newtype$check#0: ref;
  var newtype$check#1: ref;
  var newtype$check#2: ref;


    // AddWellformednessCheck for subset type NonNullC
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assume $Is(c#0, Tclass._module.C?());
        newtype$check#0 := null;
        assume {:id "id251"} c#0 != null;
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        assume _module.__default.F#canCall();
        newtype$check#1 := _module.__default.F();
        newtype$check#2 := _module.__default.F();
        assume _module.__default.F#canCall();
        assert {:id "id252"} _module.__default.F() != null;
        assume false;
    }
}



// $Is axiom for subset type _module.NonNullC
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.NonNullC()) } 
  $Is(c#0, Tclass._module.NonNullC())
     <==> $Is(c#0, Tclass._module.C?()) && c#0 != null);

// $IsAlloc axiom for subset type _module.NonNullC
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.NonNullC(), $h) } 
  $IsAlloc(c#0, Tclass._module.NonNullC(), $h)
     <==> $IsAlloc(c#0, Tclass._module.C?(), $h));

const unique class._module.Iter?: ClassName;

function Tclass._module.Iter?(Ty) : Ty;

const unique Tagclass._module.Iter?: TyTag;

// Tclass._module.Iter? Tag
axiom (forall _module.Iter$G: Ty :: 
  { Tclass._module.Iter?(_module.Iter$G) } 
  Tag(Tclass._module.Iter?(_module.Iter$G)) == Tagclass._module.Iter?
     && TagFamily(Tclass._module.Iter?(_module.Iter$G)) == tytagFamily$Iter);

function Tclass._module.Iter?_0(Ty) : Ty;

// Tclass._module.Iter? injectivity 0
axiom (forall _module.Iter$G: Ty :: 
  { Tclass._module.Iter?(_module.Iter$G) } 
  Tclass._module.Iter?_0(Tclass._module.Iter?(_module.Iter$G)) == _module.Iter$G);

// Box/unbox axiom for Tclass._module.Iter?
axiom (forall _module.Iter$G: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Iter?(_module.Iter$G)) } 
  $IsBox(bx, Tclass._module.Iter?(_module.Iter$G))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.Iter?(_module.Iter$G)));

// $Is axiom for iterator Iter
axiom (forall _module.Iter$G: Ty, $o: ref :: 
  { $Is($o, Tclass._module.Iter?(_module.Iter$G)) } 
  $Is($o, Tclass._module.Iter?(_module.Iter$G))
     <==> $o == null || dtype($o) == Tclass._module.Iter?(_module.Iter$G));

// $IsAlloc axiom for iterator Iter
axiom (forall _module.Iter$G: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Iter?(_module.Iter$G), $h) } 
  $IsAlloc($o, Tclass._module.Iter?(_module.Iter$G), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function _module.Iter.n(ref) : int;

// Iter.n: Type axiom
axiom (forall _module.Iter$G: Ty, $o: ref :: 
  { _module.Iter.n($o), Tclass._module.Iter?(_module.Iter$G) } 
  $o != null && dtype($o) == Tclass._module.Iter?(_module.Iter$G)
     ==> $Is(_module.Iter.n($o), Tclass._System.nat()));

// Iter.n: Allocation axiom
axiom (forall _module.Iter$G: Ty, $h: Heap, $o: ref :: 
  { _module.Iter.n($o), $Unbox(read($h, $o, alloc)): bool, Tclass._module.Iter?(_module.Iter$G) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Iter?(_module.Iter$G)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.Iter.n($o), Tclass._System.nat(), $h));

function _module.Iter.g(ref) : Box;

// Iter.g: Type axiom
axiom (forall _module.Iter$G: Ty, $o: ref :: 
  { _module.Iter.g($o), Tclass._module.Iter?(_module.Iter$G) } 
  $o != null && dtype($o) == Tclass._module.Iter?(_module.Iter$G)
     ==> $IsBox(_module.Iter.g($o), _module.Iter$G));

// Iter.g: Allocation axiom
axiom (forall _module.Iter$G: Ty, $h: Heap, $o: ref :: 
  { _module.Iter.g($o), $Unbox(read($h, $o, alloc)): bool, Tclass._module.Iter?(_module.Iter$G) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Iter?(_module.Iter$G)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(_module.Iter.g($o), _module.Iter$G, $h));

const _module.Iter.y: Field
uses {
axiom FDim(_module.Iter.y) == 0
   && FieldOfDecl(class._module.Iter?, field$y) == _module.Iter.y
   && !$IsGhostField(_module.Iter.y);
}

// Iter.y: Type axiom
axiom (forall _module.Iter$G: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.Iter.y), Tclass._module.Iter?(_module.Iter$G) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Iter?(_module.Iter$G)
     ==> $IsBox(read($h, $o, _module.Iter.y), _module.Iter$G));

// Iter.y: Allocation axiom
axiom (forall _module.Iter$G: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.Iter.y), Tclass._module.Iter?(_module.Iter$G) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Iter?(_module.Iter$G)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, _module.Iter.y), _module.Iter$G, $h));

const _module.Iter.ug: Field
uses {
axiom FDim(_module.Iter.ug) == 0
   && FieldOfDecl(class._module.Iter?, field$ug) == _module.Iter.ug
   && $IsGhostField(_module.Iter.ug);
}

// Iter.ug: Type axiom
axiom (forall _module.Iter$G: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.Iter.ug), Tclass._module.Iter?(_module.Iter$G) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Iter?(_module.Iter$G)
     ==> $IsBox(read($h, $o, _module.Iter.ug), _module.Iter$G));

// Iter.ug: Allocation axiom
axiom (forall _module.Iter$G: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.Iter.ug), Tclass._module.Iter?(_module.Iter$G) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Iter?(_module.Iter$G)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, _module.Iter.ug), _module.Iter$G, $h));

const _module.Iter.z: Field
uses {
axiom FDim(_module.Iter.z) == 0
   && FieldOfDecl(class._module.Iter?, field$z) == _module.Iter.z
   && !$IsGhostField(_module.Iter.z);
}

// Iter.z: Type axiom
axiom (forall _module.Iter$G: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.Iter.z), Tclass._module.Iter?(_module.Iter$G) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Iter?(_module.Iter$G)
     ==> $IsBox(read($h, $o, _module.Iter.z), _module.Iter$G));

// Iter.z: Allocation axiom
axiom (forall _module.Iter$G: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.Iter.z), Tclass._module.Iter?(_module.Iter$G) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Iter?(_module.Iter$G)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, _module.Iter.z), _module.Iter$G, $h));

const _module.Iter.ys: Field
uses {
axiom FDim(_module.Iter.ys) == 0
   && FieldOfDecl(class._module.Iter?, field$ys) == _module.Iter.ys
   && $IsGhostField(_module.Iter.ys);
}

// Iter.ys: Type axiom
axiom (forall _module.Iter$G: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Iter.ys)): Seq, Tclass._module.Iter?(_module.Iter$G) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Iter?(_module.Iter$G)
     ==> $Is($Unbox(read($h, $o, _module.Iter.ys)): Seq, TSeq(_module.Iter$G)));

// Iter.ys: Allocation axiom
axiom (forall _module.Iter$G: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Iter.ys)): Seq, Tclass._module.Iter?(_module.Iter$G) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Iter?(_module.Iter$G)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Iter.ys)): Seq, TSeq(_module.Iter$G), $h));

const _module.Iter.ugs: Field
uses {
axiom FDim(_module.Iter.ugs) == 0
   && FieldOfDecl(class._module.Iter?, field$ugs) == _module.Iter.ugs
   && $IsGhostField(_module.Iter.ugs);
}

// Iter.ugs: Type axiom
axiom (forall _module.Iter$G: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Iter.ugs)): Seq, Tclass._module.Iter?(_module.Iter$G) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Iter?(_module.Iter$G)
     ==> $Is($Unbox(read($h, $o, _module.Iter.ugs)): Seq, TSeq(_module.Iter$G)));

// Iter.ugs: Allocation axiom
axiom (forall _module.Iter$G: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Iter.ugs)): Seq, Tclass._module.Iter?(_module.Iter$G) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Iter?(_module.Iter$G)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Iter.ugs)): Seq, TSeq(_module.Iter$G), $h));

const _module.Iter.zs: Field
uses {
axiom FDim(_module.Iter.zs) == 0
   && FieldOfDecl(class._module.Iter?, field$zs) == _module.Iter.zs
   && $IsGhostField(_module.Iter.zs);
}

// Iter.zs: Type axiom
axiom (forall _module.Iter$G: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Iter.zs)): Seq, Tclass._module.Iter?(_module.Iter$G) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Iter?(_module.Iter$G)
     ==> $Is($Unbox(read($h, $o, _module.Iter.zs)): Seq, TSeq(_module.Iter$G)));

// Iter.zs: Allocation axiom
axiom (forall _module.Iter$G: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Iter.zs)): Seq, Tclass._module.Iter?(_module.Iter$G) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Iter?(_module.Iter$G)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Iter.zs)): Seq, TSeq(_module.Iter$G), $h));

function _module.Iter.__reads(ref) : Set;

// Iter._reads: Type axiom
axiom (forall _module.Iter$G: Ty, $o: ref :: 
  { _module.Iter.__reads($o), Tclass._module.Iter?(_module.Iter$G) } 
  $o != null && dtype($o) == Tclass._module.Iter?(_module.Iter$G)
     ==> $Is(_module.Iter.__reads($o), TSet(Tclass._System.object?())));

// Iter._reads: Allocation axiom
axiom (forall _module.Iter$G: Ty, $h: Heap, $o: ref :: 
  { _module.Iter.__reads($o), $Unbox(read($h, $o, alloc)): bool, Tclass._module.Iter?(_module.Iter$G) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Iter?(_module.Iter$G)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.Iter.__reads($o), TSet(Tclass._System.object?()), $h));

function _module.Iter.__modifies(ref) : Set;

// Iter._modifies: Type axiom
axiom (forall _module.Iter$G: Ty, $o: ref :: 
  { _module.Iter.__modifies($o), Tclass._module.Iter?(_module.Iter$G) } 
  $o != null && dtype($o) == Tclass._module.Iter?(_module.Iter$G)
     ==> $Is(_module.Iter.__modifies($o), TSet(Tclass._System.object?())));

// Iter._modifies: Allocation axiom
axiom (forall _module.Iter$G: Ty, $h: Heap, $o: ref :: 
  { _module.Iter.__modifies($o), $Unbox(read($h, $o, alloc)): bool, Tclass._module.Iter?(_module.Iter$G) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Iter?(_module.Iter$G)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.Iter.__modifies($o), TSet(Tclass._System.object?()), $h));

const _module.Iter.__new: Field
uses {
axiom FDim(_module.Iter.__new) == 0
   && FieldOfDecl(class._module.Iter?, field$_new) == _module.Iter.__new
   && $IsGhostField(_module.Iter.__new);
}

// Iter._new: Type axiom
axiom (forall _module.Iter$G: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Iter.__new)): Set, Tclass._module.Iter?(_module.Iter$G) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Iter?(_module.Iter$G)
     ==> $Is($Unbox(read($h, $o, _module.Iter.__new)): Set, TSet(Tclass._System.object?())));

// Iter._new: Allocation axiom
axiom (forall _module.Iter$G: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Iter.__new)): Set, Tclass._module.Iter?(_module.Iter$G) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Iter?(_module.Iter$G)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Iter.__new)): Set, 
      TSet(Tclass._System.object?()), 
      $h));

function _module.Iter.__decreases0(ref) : int;

// Iter._decreases0: Type axiom
axiom (forall _module.Iter$G: Ty, $o: ref :: 
  { _module.Iter.__decreases0($o), Tclass._module.Iter?(_module.Iter$G) } 
  $o != null && dtype($o) == Tclass._module.Iter?(_module.Iter$G)
     ==> $Is(_module.Iter.__decreases0($o), TInt));

// Iter._decreases0: Allocation axiom
axiom (forall _module.Iter$G: Ty, $h: Heap, $o: ref :: 
  { _module.Iter.__decreases0($o), $Unbox(read($h, $o, alloc)): bool, Tclass._module.Iter?(_module.Iter$G) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Iter?(_module.Iter$G)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.Iter.__decreases0($o), TInt, $h));

function _module.Iter.__decreases1(ref) : Box;

// Iter._decreases1: Type axiom
axiom (forall _module.Iter$G: Ty, $o: ref :: 
  { _module.Iter.__decreases1($o), Tclass._module.Iter?(_module.Iter$G) } 
  $o != null && dtype($o) == Tclass._module.Iter?(_module.Iter$G)
     ==> $IsBox(_module.Iter.__decreases1($o), _module.Iter$G));

// Iter._decreases1: Allocation axiom
axiom (forall _module.Iter$G: Ty, $h: Heap, $o: ref :: 
  { _module.Iter.__decreases1($o), $Unbox(read($h, $o, alloc)): bool, Tclass._module.Iter?(_module.Iter$G) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Iter?(_module.Iter$G)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(_module.Iter.__decreases1($o), _module.Iter$G, $h));

procedure {:verboseName "Iter._ctor (well-formedness)"} CheckWellFormed$$_module.Iter.__ctor(_module.Iter$G: Ty, 
    n#0: int where LitInt(0) <= n#0, 
    g#0: Box
       where $IsBox(g#0, _module.Iter$G) && $IsAllocBox(g#0, _module.Iter$G, $Heap))
   returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



function Tclass._module.Iter(Ty) : Ty;

const unique Tagclass._module.Iter: TyTag;

// Tclass._module.Iter Tag
axiom (forall _module.Iter$G: Ty :: 
  { Tclass._module.Iter(_module.Iter$G) } 
  Tag(Tclass._module.Iter(_module.Iter$G)) == Tagclass._module.Iter
     && TagFamily(Tclass._module.Iter(_module.Iter$G)) == tytagFamily$Iter);

function Tclass._module.Iter_0(Ty) : Ty;

// Tclass._module.Iter injectivity 0
axiom (forall _module.Iter$G: Ty :: 
  { Tclass._module.Iter(_module.Iter$G) } 
  Tclass._module.Iter_0(Tclass._module.Iter(_module.Iter$G)) == _module.Iter$G);

// Box/unbox axiom for Tclass._module.Iter
axiom (forall _module.Iter$G: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Iter(_module.Iter$G)) } 
  $IsBox(bx, Tclass._module.Iter(_module.Iter$G))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.Iter(_module.Iter$G)));

procedure {:verboseName "Iter._ctor (call)"} Call$$_module.Iter.__ctor(_module.Iter$G: Ty, 
    n#0: int where LitInt(0) <= n#0, 
    g#0: Box
       where $IsBox(g#0, _module.Iter$G) && $IsAllocBox(g#0, _module.Iter$G, $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Iter(_module.Iter$G))
         && $IsAlloc(this, Tclass._module.Iter(_module.Iter$G), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id264"} _module.Iter.n(this) == n#0;
  free ensures true;
  ensures {:id "id265"} _module.Iter.g(this) == g#0;
  free ensures true;
  ensures {:id "id266"} Seq#Equal($Unbox(read($Heap, this, _module.Iter.ys)): Seq, Seq#Empty(): Seq);
  free ensures true;
  ensures {:id "id267"} Seq#Equal($Unbox(read($Heap, this, _module.Iter.ugs)): Seq, Seq#Empty(): Seq);
  free ensures true;
  ensures {:id "id268"} Seq#Equal($Unbox(read($Heap, this, _module.Iter.zs)): Seq, Seq#Empty(): Seq);
  free ensures _module.Iter.Valid#canCall(_module.Iter$G, $Heap, this);
  ensures {:id "id269"} _module.Iter.Valid(_module.Iter$G, $Heap, this);
  free ensures true;
  ensures {:id "id270"} Set#Equal(_module.Iter.__reads(this), Set#Empty(): Set);
  free ensures true;
  ensures {:id "id271"} Set#Equal(_module.Iter.__modifies(this), Set#Empty(): Set);
  free ensures true;
  ensures {:id "id272"} Set#Equal($Unbox(read($Heap, this, _module.Iter.__new)): Set, Set#Empty(): Set);
  free ensures true;
  ensures {:id "id273"} _module.Iter.__decreases0(this) == n#0;
  free ensures true;
  ensures {:id "id274"} _module.Iter.__decreases1(this) == g#0;
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// function declaration for _module.Iter.Valid
function _module.Iter.Valid(_module.Iter$G: Ty, $heap: Heap, this: ref) : bool;

function _module.Iter.Valid#canCall(_module.Iter$G: Ty, $heap: Heap, this: ref) : bool;

// frame axiom for _module.Iter.Valid
axiom (forall _module.Iter$G: Ty, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Iter.Valid(_module.Iter$G, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Iter(_module.Iter$G))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (
            $o == this
             || Set#IsMember(_module.Iter.__reads(this), $Box($o))
             || Set#IsMember($Unbox(read($h0, this, _module.Iter.__new)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Iter.Valid(_module.Iter$G, $h0, this)
       == _module.Iter.Valid(_module.Iter$G, $h1, this));

function _module.Iter.Valid#requires(Ty, Heap, ref) : bool;

// #requires axiom for _module.Iter.Valid
axiom (forall _module.Iter$G: Ty, $Heap: Heap, this: ref :: 
  { _module.Iter.Valid#requires(_module.Iter$G, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Iter(_module.Iter$G))
       && $IsAlloc(this, Tclass._module.Iter(_module.Iter$G), $Heap)
     ==> _module.Iter.Valid#requires(_module.Iter$G, $Heap, this) == true);

procedure {:verboseName "Iter.Valid (well-formedness)"} CheckWellformed$$_module.Iter.Valid(_module.Iter$G: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Iter(_module.Iter$G))
         && $IsAlloc(this, Tclass._module.Iter(_module.Iter$G), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Iter.Valid (well-formedness)"} CheckWellformed$$_module.Iter.Valid(_module.Iter$G: Ty, this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember(_module.Iter.__reads(this), $Box($o))
           || Set#IsMember($Unbox(read($Heap, this, _module.Iter.__new)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.Iter.__new];
    assert {:id "id275"} b$reqreads#0;
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assume false;
    }
}



procedure {:verboseName "Iter.MoveNext (call)"} Call$$_module.Iter.MoveNext(_module.Iter$G: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Iter(_module.Iter$G))
         && $IsAlloc(this, Tclass._module.Iter(_module.Iter$G), $Heap))
   returns (more#0: bool);
  // user-defined preconditions
  requires {:id "id276"} _module.Iter.Valid(_module.Iter$G, $Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id277"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.Iter.__new)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Iter.__new)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.Iter.__new)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Iter.__new)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id278"} !Set#IsMember($Unbox(read($Heap, this, _module.Iter.__new)): Set, $Box(null));
  free ensures more#0 ==> _module.Iter.Valid#canCall(_module.Iter$G, $Heap, this);
  ensures {:id "id279"} more#0 ==> _module.Iter.Valid(_module.Iter$G, $Heap, this);
  free ensures true;
  ensures {:id "id280"} Seq#Equal($Unbox(read($Heap, this, _module.Iter.ys)): Seq, 
    (if more#0
       then Seq#Append($Unbox(read(old($Heap), this, _module.Iter.ys)): Seq, 
        Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.Iter.y)))
       else $Unbox(read(old($Heap), this, _module.Iter.ys)): Seq));
  free ensures true;
  ensures {:id "id281"} Seq#Equal($Unbox(read($Heap, this, _module.Iter.ugs)): Seq, 
    (if more#0
       then Seq#Append($Unbox(read(old($Heap), this, _module.Iter.ugs)): Seq, 
        Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.Iter.ug)))
       else $Unbox(read(old($Heap), this, _module.Iter.ugs)): Seq));
  free ensures true;
  ensures {:id "id282"} Seq#Equal($Unbox(read($Heap, this, _module.Iter.zs)): Seq, 
    (if more#0
       then Seq#Append($Unbox(read(old($Heap), this, _module.Iter.zs)): Seq, 
        Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.Iter.z)))
       else $Unbox(read(old($Heap), this, _module.Iter.zs)): Seq));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == this
         || Set#IsMember(_module.Iter.__modifies(this), $Box($o))
         || Set#IsMember($Unbox(read(old($Heap), this, _module.Iter.__new)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// $Is axiom for non-null type _module.Iter
axiom (forall _module.Iter$G: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._module.Iter(_module.Iter$G)) } 
    { $Is(c#0, Tclass._module.Iter?(_module.Iter$G)) } 
  $Is(c#0, Tclass._module.Iter(_module.Iter$G))
     <==> $Is(c#0, Tclass._module.Iter?(_module.Iter$G)) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Iter
axiom (forall _module.Iter$G: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Iter(_module.Iter$G), $h) } 
    { $IsAlloc(c#0, Tclass._module.Iter?(_module.Iter$G), $h) } 
  $IsAlloc(c#0, Tclass._module.Iter(_module.Iter$G), $h)
     <==> $IsAlloc(c#0, Tclass._module.Iter?(_module.Iter$G), $h));

procedure {:verboseName "Iter (well-formedness)"} CheckWellFormed$$_module.Iter(_module.Iter$G: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Iter(_module.Iter$G))
         && $IsAlloc(this, Tclass._module.Iter(_module.Iter$G), $Heap), 
    n#0: int where LitInt(0) <= n#0, 
    g#0: Box
       where $IsBox(g#0, _module.Iter$G) && $IsAllocBox(g#0, _module.Iter$G, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Iter (correctness)"} Impl$$_module.Iter(_module.Iter$G: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Iter(_module.Iter$G))
         && $IsAlloc(this, Tclass._module.Iter(_module.Iter$G), $Heap), 
    n#0: int where LitInt(0) <= n#0, 
    g#0: Box
       where $IsBox(g#0, _module.Iter$G) && $IsAllocBox(g#0, _module.Iter$G, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Iter (correctness)"} Impl$$_module.Iter(_module.Iter$G: Ty, this: ref, n#0: int, g#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _yieldCount#0: int
     where _yieldCount#0 == Seq#Length($Unbox(read($Heap, this, _module.Iter.ys)): Seq)
       && _yieldCount#0 == Seq#Length($Unbox(read($Heap, this, _module.Iter.ugs)): Seq)
       && _yieldCount#0 == Seq#Length($Unbox(read($Heap, this, _module.Iter.zs)): Seq);
  var $_OldIterHeap: Heap
     where $IsGoodHeap($_OldIterHeap) && $HeapSucc($_OldIterHeap, $Heap);
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $decr_init$loop#01: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var $decr$loop#01: int;
  var $obj0: ref;
  var $obj1: ref;
  var $obj2: ref;
  var $rhs#0_0_0: Box;
  var $rhs#0_0_1: Box;
  var $rhs#0_0_2: Box;
  var $rhs#0_1_0_0: Box;
  var $rhs#0_1_0_1: Box;
  var $rhs#0_1_1_0_0_0: Box;
  var $rhs#0_1_1_0_0_1: Box;
  var $rhs#0_1_1_0_1_0: Box;
  var $rhs#0_1_1_0_0: Box;

    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    assume {:id "id295"} _module.Iter.n(this) == n#0;
    assume {:id "id296"} _module.Iter.g(this) == g#0;
    assume {:id "id297"} Seq#Equal($Unbox(read($Heap, this, _module.Iter.ys)): Seq, Seq#Empty(): Seq);
    assume {:id "id298"} Seq#Equal($Unbox(read($Heap, this, _module.Iter.ugs)): Seq, Seq#Empty(): Seq);
    assume {:id "id299"} Seq#Equal($Unbox(read($Heap, this, _module.Iter.zs)): Seq, Seq#Empty(): Seq);
    assume {:id "id300"} _module.Iter.Valid(_module.Iter$G, $Heap, this);
    assume {:id "id301"} Set#Equal(_module.Iter.__reads(this), Set#Empty(): Set);
    assume {:id "id302"} Set#Equal(_module.Iter.__modifies(this), Set#Empty(): Set);
    assume {:id "id303"} Set#Equal($Unbox(read($Heap, this, _module.Iter.__new)): Set, Set#Empty(): Set);
    assume {:id "id304"} _module.Iter.__decreases0(this) == n#0;
    assume {:id "id305"} _module.Iter.__decreases1(this) == g#0;
    assume _yieldCount#0 == 0;
    call $YieldHavoc(this, _module.Iter.__reads(this), $Unbox(read($Heap, this, _module.Iter.__new)): Set);
    $_OldIterHeap := $Heap;
    havoc i#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(163,5)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(164,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := _yieldCount#0;
    $decr_init$loop#01 := _module.Iter.n(this) - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == this);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      invariant (forall $o: ref :: 
          { $o != null } 
          Set#IsMember($Unbox(read($Heap, this, _module.Iter.__new)): Set, $Box($o))
             ==> $o != null)
         && (forall $o: ref :: 
          { Set#IsMember($Unbox(read($Heap, this, _module.Iter.__new)): Set, $Box($o)) } 
          Set#IsMember($Unbox(read($Heap, this, _module.Iter.__new)): Set, $Box($o))
             ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
      free invariant _yieldCount#0 >= $decr_init$loop#00
         && (_yieldCount#0 == $decr_init$loop#00
           ==> _module.Iter.n(this) - i#0 <= $decr_init$loop#01);
    {
        if (!$w$loop#0)
        {
            assume true;
            assume true;
            assume false;
        }

        assume true;
        if (_module.Iter.n(this) <= i#0)
        {
            break;
        }

        $decr$loop#00 := _yieldCount#0;
        $decr$loop#01 := _module.Iter.n(this) - i#0;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(166,5)
        assert {:id "id307"} LitInt(17) != 0;
        assume true;
        if (Mod(i#0, LitInt(17)) == LitInt(0))
        {
            push;
            // ----- yield statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(167,7)
            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(167,7)
            assume true;
            $obj0 := this;
            assert {:id "id308"} $_ModifiesFrame[$obj0, _module.Iter.y];
            assume true;
            $obj1 := this;
            assert {:id "id309"} $_ModifiesFrame[$obj1, _module.Iter.ug];
            assume true;
            $obj2 := this;
            assert {:id "id310"} $_ModifiesFrame[$obj2, _module.Iter.z];
            assume true;
            $rhs#0_0_0 := _module.Iter.g(this);
            assume true;
            $rhs#0_0_1 := _module.Iter.g(this);
            assume true;
            $rhs#0_0_2 := _module.Iter.g(this);
            $Heap := update($Heap, $obj0, _module.Iter.y, $rhs#0_0_0);
            assume $IsGoodHeap($Heap);
            $Heap := update($Heap, $obj1, _module.Iter.ug, $rhs#0_0_1);
            assume $IsGoodHeap($Heap);
            $Heap := update($Heap, $obj2, _module.Iter.z, $rhs#0_0_2);
            assume $IsGoodHeap($Heap);
            $Heap := update($Heap, 
              this, 
              _module.Iter.ys, 
              $Box(Seq#Append($Unbox(read($Heap, this, _module.Iter.ys)): Seq, 
                  Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.Iter.y)))));
            $Heap := update($Heap, 
              this, 
              _module.Iter.ugs, 
              $Box(Seq#Append($Unbox(read($Heap, this, _module.Iter.ugs)): Seq, 
                  Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.Iter.ug)))));
            $Heap := update($Heap, 
              this, 
              _module.Iter.zs, 
              $Box(Seq#Append($Unbox(read($Heap, this, _module.Iter.zs)): Seq, 
                  Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.Iter.z)))));
            _yieldCount#0 := _yieldCount#0 + 1;
            assume _yieldCount#0 == Seq#Length($Unbox(read($Heap, this, _module.Iter.ys)): Seq)
               && _yieldCount#0 == Seq#Length($Unbox(read($Heap, this, _module.Iter.ugs)): Seq)
               && _yieldCount#0 == Seq#Length($Unbox(read($Heap, this, _module.Iter.zs)): Seq);
            assume $IsGoodHeap($Heap);
            call $YieldHavoc(this, _module.Iter.__reads(this), $Unbox(read($Heap, this, _module.Iter.__new)): Set);
            $_OldIterHeap := $Heap;
            // ----- yield statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(168,7)
            $Heap := update($Heap, 
              this, 
              _module.Iter.ys, 
              $Box(Seq#Append($Unbox(read($Heap, this, _module.Iter.ys)): Seq, 
                  Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.Iter.y)))));
            $Heap := update($Heap, 
              this, 
              _module.Iter.ugs, 
              $Box(Seq#Append($Unbox(read($Heap, this, _module.Iter.ugs)): Seq, 
                  Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.Iter.ug)))));
            $Heap := update($Heap, 
              this, 
              _module.Iter.zs, 
              $Box(Seq#Append($Unbox(read($Heap, this, _module.Iter.zs)): Seq, 
                  Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.Iter.z)))));
            _yieldCount#0 := _yieldCount#0 + 1;
            assume _yieldCount#0 == Seq#Length($Unbox(read($Heap, this, _module.Iter.ys)): Seq)
               && _yieldCount#0 == Seq#Length($Unbox(read($Heap, this, _module.Iter.ugs)): Seq)
               && _yieldCount#0 == Seq#Length($Unbox(read($Heap, this, _module.Iter.zs)): Seq);
            assume $IsGoodHeap($Heap);
            call $YieldHavoc(this, _module.Iter.__reads(this), $Unbox(read($Heap, this, _module.Iter.__new)): Set);
            $_OldIterHeap := $Heap;
            pop;
        }
        else
        {
            push;
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(169,12)
            assert {:id "id317"} LitInt(2) != 0;
            assume true;
            if (i#0 == Div(_module.Iter.n(this), LitInt(2)))
            {
                push;
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(170,9)
                assume true;
                assert {:id "id318"} $_ModifiesFrame[this, _module.Iter.y];
                assume true;
                $rhs#0_1_0_0 := _module.Iter.g(this);
                $Heap := update($Heap, this, _module.Iter.y, $rhs#0_1_0_0);
                assume $IsGoodHeap($Heap);
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(171,9)
                assume true;
                assert {:id "id321"} $_ModifiesFrame[this, _module.Iter.z];
                assume true;
                $rhs#0_1_0_1 := read($Heap, this, _module.Iter.y);
                $Heap := update($Heap, this, _module.Iter.z, $rhs#0_1_0_1);
                assume $IsGoodHeap($Heap);
                // ----- yield statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(172,7)
                $Heap := update($Heap, 
                  this, 
                  _module.Iter.ys, 
                  $Box(Seq#Append($Unbox(read($Heap, this, _module.Iter.ys)): Seq, 
                      Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.Iter.y)))));
                $Heap := update($Heap, 
                  this, 
                  _module.Iter.ugs, 
                  $Box(Seq#Append($Unbox(read($Heap, this, _module.Iter.ugs)): Seq, 
                      Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.Iter.ug)))));
                $Heap := update($Heap, 
                  this, 
                  _module.Iter.zs, 
                  $Box(Seq#Append($Unbox(read($Heap, this, _module.Iter.zs)): Seq, 
                      Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.Iter.z)))));
                _yieldCount#0 := _yieldCount#0 + 1;
                assume _yieldCount#0 == Seq#Length($Unbox(read($Heap, this, _module.Iter.ys)): Seq)
                   && _yieldCount#0 == Seq#Length($Unbox(read($Heap, this, _module.Iter.ugs)): Seq)
                   && _yieldCount#0 == Seq#Length($Unbox(read($Heap, this, _module.Iter.zs)): Seq);
                assume $IsGoodHeap($Heap);
                call $YieldHavoc(this, _module.Iter.__reads(this), $Unbox(read($Heap, this, _module.Iter.__new)): Set);
                $_OldIterHeap := $Heap;
                // ----- yield statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(173,7)
                $Heap := update($Heap, 
                  this, 
                  _module.Iter.ys, 
                  $Box(Seq#Append($Unbox(read($Heap, this, _module.Iter.ys)): Seq, 
                      Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.Iter.y)))));
                $Heap := update($Heap, 
                  this, 
                  _module.Iter.ugs, 
                  $Box(Seq#Append($Unbox(read($Heap, this, _module.Iter.ugs)): Seq, 
                      Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.Iter.ug)))));
                $Heap := update($Heap, 
                  this, 
                  _module.Iter.zs, 
                  $Box(Seq#Append($Unbox(read($Heap, this, _module.Iter.zs)): Seq, 
                      Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.Iter.z)))));
                _yieldCount#0 := _yieldCount#0 + 1;
                assume _yieldCount#0 == Seq#Length($Unbox(read($Heap, this, _module.Iter.ys)): Seq)
                   && _yieldCount#0 == Seq#Length($Unbox(read($Heap, this, _module.Iter.ugs)): Seq)
                   && _yieldCount#0 == Seq#Length($Unbox(read($Heap, this, _module.Iter.zs)): Seq);
                assume $IsGoodHeap($Heap);
                call $YieldHavoc(this, _module.Iter.__reads(this), $Unbox(read($Heap, this, _module.Iter.__new)): Set);
                $_OldIterHeap := $Heap;
                pop;
            }
            else
            {
                push;
                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(174,12)
                assert {:id "id324"} LitInt(11) != 0;
                assume true;
                if (i#0 == Mod(_module.Iter.n(this), LitInt(11)))
                {
                    push;
                    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(175,7)
                    if (*)
                    {
                        push;
                        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(176,15)
                        assume true;
                        $obj0 := this;
                        assert {:id "id325"} $_ModifiesFrame[$obj0, _module.Iter.ug];
                        assume true;
                        $obj1 := this;
                        assert {:id "id326"} $_ModifiesFrame[$obj1, _module.Iter.y];
                        assume true;
                        $rhs#0_1_1_0_0_0 := _module.Iter.g(this);
                        assume true;
                        $rhs#0_1_1_0_0_1 := _module.Iter.g(this);
                        $Heap := update($Heap, $obj0, _module.Iter.ug, $rhs#0_1_1_0_0_0);
                        assume $IsGoodHeap($Heap);
                        $Heap := update($Heap, $obj1, _module.Iter.y, $rhs#0_1_1_0_0_1);
                        assume $IsGoodHeap($Heap);
                        // ----- yield statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(177,9)
                        $Heap := update($Heap, 
                          this, 
                          _module.Iter.ys, 
                          $Box(Seq#Append($Unbox(read($Heap, this, _module.Iter.ys)): Seq, 
                              Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.Iter.y)))));
                        $Heap := update($Heap, 
                          this, 
                          _module.Iter.ugs, 
                          $Box(Seq#Append($Unbox(read($Heap, this, _module.Iter.ugs)): Seq, 
                              Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.Iter.ug)))));
                        $Heap := update($Heap, 
                          this, 
                          _module.Iter.zs, 
                          $Box(Seq#Append($Unbox(read($Heap, this, _module.Iter.zs)): Seq, 
                              Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.Iter.z)))));
                        _yieldCount#0 := _yieldCount#0 + 1;
                        assume _yieldCount#0 == Seq#Length($Unbox(read($Heap, this, _module.Iter.ys)): Seq)
                           && _yieldCount#0 == Seq#Length($Unbox(read($Heap, this, _module.Iter.ugs)): Seq)
                           && _yieldCount#0 == Seq#Length($Unbox(read($Heap, this, _module.Iter.zs)): Seq);
                        assume $IsGoodHeap($Heap);
                        call $YieldHavoc(this, _module.Iter.__reads(this), $Unbox(read($Heap, this, _module.Iter.__new)): Set);
                        $_OldIterHeap := $Heap;
                        pop;
                    }
                    else
                    {
                        push;
                        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(179,11)
                        assume true;
                        assert {:id "id331"} $_ModifiesFrame[this, _module.Iter.y];
                        assume true;
                        $rhs#0_1_1_0_1_0 := _module.Iter.g(this);
                        $Heap := update($Heap, this, _module.Iter.y, $rhs#0_1_1_0_1_0);
                        assume $IsGoodHeap($Heap);
                        // ----- yield statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(180,9)
                        $Heap := update($Heap, 
                          this, 
                          _module.Iter.ys, 
                          $Box(Seq#Append($Unbox(read($Heap, this, _module.Iter.ys)): Seq, 
                              Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.Iter.y)))));
                        $Heap := update($Heap, 
                          this, 
                          _module.Iter.ugs, 
                          $Box(Seq#Append($Unbox(read($Heap, this, _module.Iter.ugs)): Seq, 
                              Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.Iter.ug)))));
                        $Heap := update($Heap, 
                          this, 
                          _module.Iter.zs, 
                          $Box(Seq#Append($Unbox(read($Heap, this, _module.Iter.zs)): Seq, 
                              Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.Iter.z)))));
                        _yieldCount#0 := _yieldCount#0 + 1;
                        assume _yieldCount#0 == Seq#Length($Unbox(read($Heap, this, _module.Iter.ys)): Seq)
                           && _yieldCount#0 == Seq#Length($Unbox(read($Heap, this, _module.Iter.ugs)): Seq)
                           && _yieldCount#0 == Seq#Length($Unbox(read($Heap, this, _module.Iter.zs)): Seq);
                        assume $IsGoodHeap($Heap);
                        call $YieldHavoc(this, _module.Iter.__reads(this), $Unbox(read($Heap, this, _module.Iter.__new)): Set);
                        $_OldIterHeap := $Heap;
                        pop;
                    }

                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(182,9)
                    assume true;
                    assert {:id "id334"} $_ModifiesFrame[this, _module.Iter.y];
                    assert {:id "id335"} LitInt(2) != 0;
                    if (Mod(i#0, LitInt(2)) == LitInt(0))
                    {
                    }
                    else
                    {
                    }

                    assume true;
                    $rhs#0_1_1_0_0 := (if Mod(i#0, LitInt(2)) == LitInt(0)
                       then read($Heap, this, _module.Iter.y)
                       else read($Heap, this, _module.Iter.y));
                    $Heap := update($Heap, this, _module.Iter.y, $rhs#0_1_1_0_0);
                    assume $IsGoodHeap($Heap);
                    pop;
                }
                else
                {
                }

                pop;
            }

            pop;
        }

        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(184,7)
        assume true;
        assume true;
        i#0 := i#0 + 1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(164,3)
        assert {:id "id339"} 0 <= $decr$loop#01
           || _yieldCount#0 > $decr$loop#00
           || _module.Iter.n(this) - i#0 == $decr$loop#01;
        assert {:id "id340"} _yieldCount#0 > $decr$loop#00
           || (_yieldCount#0 == $decr$loop#00 && _module.Iter.n(this) - i#0 < $decr$loop#01);
    }
}



const unique class._module.Regression213?: ClassName;

function Tclass._module.Regression213?() : Ty
uses {
// Tclass._module.Regression213? Tag
axiom Tag(Tclass._module.Regression213?()) == Tagclass._module.Regression213?
   && TagFamily(Tclass._module.Regression213?()) == tytagFamily$Regression213;
}

const unique Tagclass._module.Regression213?: TyTag;

// Box/unbox axiom for Tclass._module.Regression213?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Regression213?()) } 
  $IsBox(bx, Tclass._module.Regression213?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.Regression213?()));

// $Is axiom for class Regression213
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Regression213?()) } 
  $Is($o, Tclass._module.Regression213?())
     <==> $o == null || dtype($o) == Tclass._module.Regression213?());

// $IsAlloc axiom for class Regression213
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Regression213?(), $h) } 
  $IsAlloc($o, Tclass._module.Regression213?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

procedure {:verboseName "Regression213.A (well-formedness)"} CheckWellFormed$$_module.Regression213.A() returns (this: ref);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



function Tclass._module.Regression213() : Ty
uses {
// Tclass._module.Regression213 Tag
axiom Tag(Tclass._module.Regression213()) == Tagclass._module.Regression213
   && TagFamily(Tclass._module.Regression213()) == tytagFamily$Regression213;
}

const unique Tagclass._module.Regression213: TyTag;

// Box/unbox axiom for Tclass._module.Regression213
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Regression213()) } 
  $IsBox(bx, Tclass._module.Regression213())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.Regression213()));

procedure {:verboseName "Regression213.A (call)"} Call$$_module.Regression213.A()
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Regression213())
         && $IsAlloc(this, Tclass._module.Regression213(), $Heap));
  modifies $Heap;
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Regression213.A (correctness)"} Impl$$_module.Regression213.A() returns (this: ref, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Regression213.B (well-formedness)"} CheckWellFormed$$_module.Regression213.B() returns (this: ref);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Regression213.B (call)"} Call$$_module.Regression213.B()
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Regression213())
         && $IsAlloc(this, Tclass._module.Regression213(), $Heap));
  modifies $Heap;
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Regression213.B (correctness)"} Impl$$_module.Regression213.B() returns (this: ref, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Regression213.C (well-formedness)"} CheckWellFormed$$_module.Regression213.C() returns (this: ref);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Regression213.C (call)"} Call$$_module.Regression213.C()
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Regression213())
         && $IsAlloc(this, Tclass._module.Regression213(), $Heap));
  modifies $Heap;
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Regression213.C (correctness)"} Impl$$_module.Regression213.C() returns (this: ref, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Regression213.C (correctness)"} Impl$$_module.Regression213.C() returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#f#0: bool;
  var f#0: ref
     where defass#f#0
       ==> $Is(f#0, Tclass._System.object())
         && $IsAlloc(f#0, Tclass._System.object(), $Heap);
  var defass#g#0: bool;
  var g#0: ref
     where defass#g#0
       ==> $Is(g#0, Tclass._System.object())
         && $IsAlloc(g#0, Tclass._System.object(), $Heap);

    // AddMethodImpl: C, Impl$$_module.Regression213.C
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(279,19)
    havoc f#0 /* where defass#f#0
       ==> $Is(f#0, Tclass._System.object())
         && $IsAlloc(f#0, Tclass._System.object(), $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(281,11)
    assume true;
    assert {:id "id341"} defass#f#0;
    assume true;
    g#0 := f#0;
    defass#g#0 := true;
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(279,19)
    assume this != null && $Is(this, Tclass._module.Regression213?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(279,19)
}



procedure {:verboseName "Regression213.D (well-formedness)"} CheckWellFormed$$_module.Regression213.D() returns (this: ref);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Regression213.D (call)"} Call$$_module.Regression213.D()
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Regression213())
         && $IsAlloc(this, Tclass._module.Regression213(), $Heap));
  modifies $Heap;
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Regression213.D (correctness)"} Impl$$_module.Regression213.D() returns (this: ref, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Regression213.D (correctness)"} Impl$$_module.Regression213.D() returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#f#0: bool;
  var f#0: ref
     where defass#f#0
       ==> $Is(f#0, Tclass._System.object())
         && $IsAlloc(f#0, Tclass._System.object(), $Heap);
  var defass#g#0: bool;
  var g#0: ref
     where defass#g#0
       ==> $Is(g#0, Tclass._System.object())
         && $IsAlloc(g#0, Tclass._System.object(), $Heap);

    // AddMethodImpl: D, Impl$$_module.Regression213.D
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(283,19)
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(283,19)
    assume this != null && $Is(this, Tclass._module.Regression213?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(283,19)
    havoc f#0 /* where defass#f#0
       ==> $Is(f#0, Tclass._System.object())
         && $IsAlloc(f#0, Tclass._System.object(), $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(286,11)
    assume true;
    assert {:id "id343"} defass#f#0;
    assume true;
    g#0 := f#0;
    defass#g#0 := true;
}



procedure {:verboseName "Regression213.M (well-formedness)"} CheckWellFormed$$_module.Regression213.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Regression213())
         && $IsAlloc(this, Tclass._module.Regression213(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Regression213.M (call)"} Call$$_module.Regression213.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Regression213())
         && $IsAlloc(this, Tclass._module.Regression213(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Regression213.M (correctness)"} Impl$$_module.Regression213.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Regression213())
         && $IsAlloc(this, Tclass._module.Regression213(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Regression213.N (well-formedness)"} CheckWellFormed$$_module.Regression213.N(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Regression213())
         && $IsAlloc(this, Tclass._module.Regression213(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Regression213.N (call)"} Call$$_module.Regression213.N(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Regression213())
         && $IsAlloc(this, Tclass._module.Regression213(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Regression213.N (correctness)"} Impl$$_module.Regression213.N(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Regression213())
         && $IsAlloc(this, Tclass._module.Regression213(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Regression213.N (correctness)"} Impl$$_module.Regression213.N(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#f#0: bool;
  var f#0: ref
     where defass#f#0
       ==> $Is(f#0, Tclass._System.object())
         && $IsAlloc(f#0, Tclass._System.object(), $Heap);
  var defass#g#0: bool;
  var g#0: ref
     where defass#g#0
       ==> $Is(g#0, Tclass._System.object())
         && $IsAlloc(g#0, Tclass._System.object(), $Heap);

    // AddMethodImpl: N, Impl$$_module.Regression213.N
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc f#0 /* where defass#f#0
       ==> $Is(f#0, Tclass._System.object())
         && $IsAlloc(f#0, Tclass._System.object(), $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/DefiniteAssignment.dfy(294,11)
    assume true;
    assert {:id "id345"} defass#f#0;
    assume true;
    g#0 := f#0;
    defass#g#0 := true;
}



// $Is axiom for non-null type _module.Regression213
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Regression213()) } 
    { $Is(c#0, Tclass._module.Regression213?()) } 
  $Is(c#0, Tclass._module.Regression213())
     <==> $Is(c#0, Tclass._module.Regression213?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Regression213
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Regression213(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Regression213?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Regression213(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Regression213?(), $h));

const unique class.AssignSuchThat.__default: ClassName;

const unique class.AssignSuchThat.D: ClassName;

const unique class.AssignSuchThatReference.__default: ClassName;

const unique class.AssignSuchThatReference.D?: ClassName;

function Tclass.AssignSuchThatReference.D?() : Ty
uses {
// Tclass.AssignSuchThatReference.D? Tag
axiom Tag(Tclass.AssignSuchThatReference.D?()) == Tagclass.AssignSuchThatReference.D?
   && TagFamily(Tclass.AssignSuchThatReference.D?()) == tytagFamily$D;
}

const unique Tagclass.AssignSuchThatReference.D?: TyTag;

// Box/unbox axiom for Tclass.AssignSuchThatReference.D?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.AssignSuchThatReference.D?()) } 
  $IsBox(bx, Tclass.AssignSuchThatReference.D?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.AssignSuchThatReference.D?()));

// $Is axiom for trait D
axiom (forall $o: ref :: 
  { $Is($o, Tclass.AssignSuchThatReference.D?()) } 
  $Is($o, Tclass.AssignSuchThatReference.D?())
     <==> $o == null || implements$AssignSuchThatReference.D(dtype($o)));

// $IsAlloc axiom for trait D
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.AssignSuchThatReference.D?(), $h) } 
  $IsAlloc($o, Tclass.AssignSuchThatReference.D?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function implements$AssignSuchThatReference.D(ty: Ty) : bool;

function AssignSuchThatReference.D.x(this: ref) : int;

// D.x: Type axiom
axiom (forall $o: ref :: 
  { AssignSuchThatReference.D.x($o) } 
  $o != null && $Is($o, Tclass.AssignSuchThatReference.D?())
     ==> $Is(AssignSuchThatReference.D.x($o), TInt));

// D.x: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { AssignSuchThatReference.D.x($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && $Is($o, Tclass.AssignSuchThatReference.D?())
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(AssignSuchThatReference.D.x($o), TInt, $h));

function Tclass.AssignSuchThatReference.D() : Ty
uses {
// Tclass.AssignSuchThatReference.D Tag
axiom Tag(Tclass.AssignSuchThatReference.D()) == Tagclass.AssignSuchThatReference.D
   && TagFamily(Tclass.AssignSuchThatReference.D()) == tytagFamily$D;
}

const unique Tagclass.AssignSuchThatReference.D: TyTag;

// Box/unbox axiom for Tclass.AssignSuchThatReference.D
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.AssignSuchThatReference.D()) } 
  $IsBox(bx, Tclass.AssignSuchThatReference.D())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.AssignSuchThatReference.D()));

// $Is axiom for non-null type AssignSuchThatReference.D
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.AssignSuchThatReference.D()) } 
    { $Is(c#0, Tclass.AssignSuchThatReference.D?()) } 
  $Is(c#0, Tclass.AssignSuchThatReference.D())
     <==> $Is(c#0, Tclass.AssignSuchThatReference.D?()) && c#0 != null);

// $IsAlloc axiom for non-null type AssignSuchThatReference.D
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.AssignSuchThatReference.D(), $h) } 
    { $IsAlloc(c#0, Tclass.AssignSuchThatReference.D?(), $h) } 
  $IsAlloc(c#0, Tclass.AssignSuchThatReference.D(), $h)
     <==> $IsAlloc(c#0, Tclass.AssignSuchThatReference.D?(), $h));

const unique class.LetSuchThat.__default: ClassName;

// function declaration for LetSuchThat._default.Bad
function LetSuchThat.__default.Bad() : int;

function LetSuchThat.__default.Bad#canCall() : bool;

function LetSuchThat.__default.Bad#requires() : bool;

// #requires axiom for LetSuchThat.__default.Bad
axiom (forall $Heap: Heap :: 
  { LetSuchThat.__default.Bad#requires(), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap) ==> LetSuchThat.__default.Bad#requires() == true);

function $let#0_c() : Box;

function $let#0$canCall() : bool
uses {
axiom $let#0$canCall() ==> $IsBox($let#0_c(), Tclass.LetSuchThat.C()) && Lit(true);
}

function Tclass.LetSuchThat.C() : Ty;

// definition axiom for LetSuchThat.__default.Bad (revealed)
axiom {:id "id347"} (forall $Heap: Heap :: 
  { LetSuchThat.__default.Bad(), $IsGoodHeap($Heap) } 
  LetSuchThat.__default.Bad#canCall() || $IsGoodHeap($Heap)
     ==> $let#0$canCall()
       && LetSuchThat.__default.Bad() == (var c#4 := $let#0_c(); LitInt(5)));

// definition axiom for LetSuchThat.__default.Bad for all literals (revealed)
axiom {:id "id348"} (forall $Heap: Heap :: 
  {:weight 3} { LetSuchThat.__default.Bad(), $IsGoodHeap($Heap) } 
  LetSuchThat.__default.Bad#canCall() || $IsGoodHeap($Heap)
     ==> $let#0$canCall()
       && LetSuchThat.__default.Bad() == (var c#5 := $let#0_c(); LitInt(5)));

// function declaration for LetSuchThat._default.Good
function LetSuchThat.__default.Good(y#0: Box) : int;

function LetSuchThat.__default.Good#canCall(y#0: Box) : bool;

function LetSuchThat.__default.Good#requires(Box) : bool;

// #requires axiom for LetSuchThat.__default.Good
axiom (forall $Heap: Heap, y#0: Box :: 
  { LetSuchThat.__default.Good#requires(y#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap) && $IsBox(y#0, Tclass.LetSuchThat.C())
     ==> LetSuchThat.__default.Good#requires(y#0) == true);

function $let#3_c() : Box;

function $let#3$canCall() : bool
uses {
axiom $let#3$canCall() ==> $IsBox($let#3_c(), Tclass.LetSuchThat.C()) && Lit(true);
}

// definition axiom for LetSuchThat.__default.Good (revealed)
axiom {:id "id349"} (forall $Heap: Heap, y#0: Box :: 
  { LetSuchThat.__default.Good(y#0), $IsGoodHeap($Heap) } 
  LetSuchThat.__default.Good#canCall(y#0)
       || ($IsGoodHeap($Heap) && $IsBox(y#0, Tclass.LetSuchThat.C()))
     ==> $let#3$canCall()
       && LetSuchThat.__default.Good(y#0) == (var c#4 := $let#3_c(); LitInt(5)));

// definition axiom for LetSuchThat.__default.Good for all literals (revealed)
axiom {:id "id350"} (forall $Heap: Heap, y#0: Box :: 
  {:weight 3} { LetSuchThat.__default.Good(Lit(y#0)), $IsGoodHeap($Heap) } 
  LetSuchThat.__default.Good#canCall(Lit(y#0))
       || ($IsGoodHeap($Heap) && $IsBox(y#0, Tclass.LetSuchThat.C()))
     ==> $let#3$canCall()
       && LetSuchThat.__default.Good(Lit(y#0)) == (var c#5 := $let#3_c(); LitInt(5)));

const unique class.LetSuchThat.C: ClassName;

const unique class.NonEmpty.__default: ClassName;

const unique class.NonEmpty.MyClass?: ClassName;

function Tclass.NonEmpty.MyClass?(Ty) : Ty;

const unique Tagclass.NonEmpty.MyClass?: TyTag;

// Tclass.NonEmpty.MyClass? Tag
axiom (forall NonEmpty.MyClass$G: Ty :: 
  { Tclass.NonEmpty.MyClass?(NonEmpty.MyClass$G) } 
  Tag(Tclass.NonEmpty.MyClass?(NonEmpty.MyClass$G)) == Tagclass.NonEmpty.MyClass?
     && TagFamily(Tclass.NonEmpty.MyClass?(NonEmpty.MyClass$G)) == tytagFamily$MyClass);

function Tclass.NonEmpty.MyClass?_0(Ty) : Ty;

// Tclass.NonEmpty.MyClass? injectivity 0
axiom (forall NonEmpty.MyClass$G: Ty :: 
  { Tclass.NonEmpty.MyClass?(NonEmpty.MyClass$G) } 
  Tclass.NonEmpty.MyClass?_0(Tclass.NonEmpty.MyClass?(NonEmpty.MyClass$G))
     == NonEmpty.MyClass$G);

// Box/unbox axiom for Tclass.NonEmpty.MyClass?
axiom (forall NonEmpty.MyClass$G: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.NonEmpty.MyClass?(NonEmpty.MyClass$G)) } 
  $IsBox(bx, Tclass.NonEmpty.MyClass?(NonEmpty.MyClass$G))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.NonEmpty.MyClass?(NonEmpty.MyClass$G)));

// $Is axiom for class MyClass
axiom (forall NonEmpty.MyClass$G: Ty, $o: ref :: 
  { $Is($o, Tclass.NonEmpty.MyClass?(NonEmpty.MyClass$G)) } 
  $Is($o, Tclass.NonEmpty.MyClass?(NonEmpty.MyClass$G))
     <==> $o == null || dtype($o) == Tclass.NonEmpty.MyClass?(NonEmpty.MyClass$G));

// $IsAlloc axiom for class MyClass
axiom (forall NonEmpty.MyClass$G: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.NonEmpty.MyClass?(NonEmpty.MyClass$G), $h) } 
  $IsAlloc($o, Tclass.NonEmpty.MyClass?(NonEmpty.MyClass$G), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function NonEmpty.MyClass.x(NonEmpty.MyClass$G: Ty, this: ref) : Box;

// MyClass.x: Type axiom
axiom (forall NonEmpty.MyClass$G: Ty, $o: ref :: 
  { NonEmpty.MyClass.x(NonEmpty.MyClass$G, $o) } 
  $o != null && dtype($o) == Tclass.NonEmpty.MyClass?(NonEmpty.MyClass$G)
     ==> $IsBox(NonEmpty.MyClass.x(NonEmpty.MyClass$G, $o), NonEmpty.MyClass$G));

// MyClass.x: Allocation axiom
axiom (forall NonEmpty.MyClass$G: Ty, $h: Heap, $o: ref :: 
  { NonEmpty.MyClass.x(NonEmpty.MyClass$G, $o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.NonEmpty.MyClass?(NonEmpty.MyClass$G)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(NonEmpty.MyClass.x(NonEmpty.MyClass$G, $o), NonEmpty.MyClass$G, $h));

const NonEmpty.MyClass.y: Field
uses {
axiom FDim(NonEmpty.MyClass.y) == 0
   && FieldOfDecl(class.NonEmpty.MyClass?, field$y) == NonEmpty.MyClass.y
   && !$IsGhostField(NonEmpty.MyClass.y);
}

// MyClass.y: Type axiom
axiom (forall NonEmpty.MyClass$G: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, NonEmpty.MyClass.y), Tclass.NonEmpty.MyClass?(NonEmpty.MyClass$G) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.NonEmpty.MyClass?(NonEmpty.MyClass$G)
     ==> $IsBox(read($h, $o, NonEmpty.MyClass.y), NonEmpty.MyClass$G));

// MyClass.y: Allocation axiom
axiom (forall NonEmpty.MyClass$G: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, NonEmpty.MyClass.y), Tclass.NonEmpty.MyClass?(NonEmpty.MyClass$G) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.NonEmpty.MyClass?(NonEmpty.MyClass$G)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, NonEmpty.MyClass.y), NonEmpty.MyClass$G, $h));

const NonEmpty.MyClass.oxA: Field
uses {
axiom FDim(NonEmpty.MyClass.oxA) == 0
   && FieldOfDecl(class.NonEmpty.MyClass?, field$oxA) == NonEmpty.MyClass.oxA
   && $IsGhostField(NonEmpty.MyClass.oxA);
}

// MyClass.oxA: Type axiom
axiom (forall NonEmpty.MyClass$G: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, NonEmpty.MyClass.oxA), Tclass.NonEmpty.MyClass?(NonEmpty.MyClass$G) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.NonEmpty.MyClass?(NonEmpty.MyClass$G)
     ==> $IsBox(read($h, $o, NonEmpty.MyClass.oxA), NonEmpty.MyClass$G));

// MyClass.oxA: Allocation axiom
axiom (forall NonEmpty.MyClass$G: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, NonEmpty.MyClass.oxA), Tclass.NonEmpty.MyClass?(NonEmpty.MyClass$G) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.NonEmpty.MyClass?(NonEmpty.MyClass$G)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, NonEmpty.MyClass.oxA), NonEmpty.MyClass$G, $h));

function NonEmpty.MyClass.oxB(NonEmpty.MyClass$G: Ty, this: ref) : Box;

// MyClass.oxB: Type axiom
axiom (forall NonEmpty.MyClass$G: Ty, $o: ref :: 
  { NonEmpty.MyClass.oxB(NonEmpty.MyClass$G, $o) } 
  $o != null && dtype($o) == Tclass.NonEmpty.MyClass?(NonEmpty.MyClass$G)
     ==> $IsBox(NonEmpty.MyClass.oxB(NonEmpty.MyClass$G, $o), NonEmpty.MyClass$G));

// MyClass.oxB: Allocation axiom
axiom (forall NonEmpty.MyClass$G: Ty, $h: Heap, $o: ref :: 
  { NonEmpty.MyClass.oxB(NonEmpty.MyClass$G, $o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.NonEmpty.MyClass?(NonEmpty.MyClass$G)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(NonEmpty.MyClass.oxB(NonEmpty.MyClass$G, $o), NonEmpty.MyClass$G, $h));

function Tclass.NonEmpty.MyClass(Ty) : Ty;

const unique Tagclass.NonEmpty.MyClass: TyTag;

// Tclass.NonEmpty.MyClass Tag
axiom (forall NonEmpty.MyClass$G: Ty :: 
  { Tclass.NonEmpty.MyClass(NonEmpty.MyClass$G) } 
  Tag(Tclass.NonEmpty.MyClass(NonEmpty.MyClass$G)) == Tagclass.NonEmpty.MyClass
     && TagFamily(Tclass.NonEmpty.MyClass(NonEmpty.MyClass$G)) == tytagFamily$MyClass);

function Tclass.NonEmpty.MyClass_0(Ty) : Ty;

// Tclass.NonEmpty.MyClass injectivity 0
axiom (forall NonEmpty.MyClass$G: Ty :: 
  { Tclass.NonEmpty.MyClass(NonEmpty.MyClass$G) } 
  Tclass.NonEmpty.MyClass_0(Tclass.NonEmpty.MyClass(NonEmpty.MyClass$G))
     == NonEmpty.MyClass$G);

// Box/unbox axiom for Tclass.NonEmpty.MyClass
axiom (forall NonEmpty.MyClass$G: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.NonEmpty.MyClass(NonEmpty.MyClass$G)) } 
  $IsBox(bx, Tclass.NonEmpty.MyClass(NonEmpty.MyClass$G))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.NonEmpty.MyClass(NonEmpty.MyClass$G)));

// $Is axiom for non-null type NonEmpty.MyClass
axiom (forall NonEmpty.MyClass$G: Ty, c#0: ref :: 
  { $Is(c#0, Tclass.NonEmpty.MyClass(NonEmpty.MyClass$G)) } 
    { $Is(c#0, Tclass.NonEmpty.MyClass?(NonEmpty.MyClass$G)) } 
  $Is(c#0, Tclass.NonEmpty.MyClass(NonEmpty.MyClass$G))
     <==> $Is(c#0, Tclass.NonEmpty.MyClass?(NonEmpty.MyClass$G)) && c#0 != null);

// $IsAlloc axiom for non-null type NonEmpty.MyClass
axiom (forall NonEmpty.MyClass$G: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.NonEmpty.MyClass(NonEmpty.MyClass$G), $h) } 
    { $IsAlloc(c#0, Tclass.NonEmpty.MyClass?(NonEmpty.MyClass$G), $h) } 
  $IsAlloc(c#0, Tclass.NonEmpty.MyClass(NonEmpty.MyClass$G), $h)
     <==> $IsAlloc(c#0, Tclass.NonEmpty.MyClass?(NonEmpty.MyClass$G), $h));

const unique class.Regression.__default: ClassName;

const unique class.Regression.Class?: ClassName;

function Tclass.Regression.Class?() : Ty
uses {
// Tclass.Regression.Class? Tag
axiom Tag(Tclass.Regression.Class?()) == Tagclass.Regression.Class?
   && TagFamily(Tclass.Regression.Class?()) == tytagFamily$Class;
}

const unique Tagclass.Regression.Class?: TyTag;

// Box/unbox axiom for Tclass.Regression.Class?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Regression.Class?()) } 
  $IsBox(bx, Tclass.Regression.Class?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.Regression.Class?()));

// $Is axiom for class Class
axiom (forall $o: ref :: 
  { $Is($o, Tclass.Regression.Class?()) } 
  $Is($o, Tclass.Regression.Class?())
     <==> $o == null || dtype($o) == Tclass.Regression.Class?());

// $IsAlloc axiom for class Class
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.Regression.Class?(), $h) } 
  $IsAlloc($o, Tclass.Regression.Class?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass.Regression.Class() : Ty
uses {
// Tclass.Regression.Class Tag
axiom Tag(Tclass.Regression.Class()) == Tagclass.Regression.Class
   && TagFamily(Tclass.Regression.Class()) == tytagFamily$Class;
}

const unique Tagclass.Regression.Class: TyTag;

// Box/unbox axiom for Tclass.Regression.Class
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Regression.Class()) } 
  $IsBox(bx, Tclass.Regression.Class())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.Regression.Class()));

// $Is axiom for non-null type Regression.Class
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.Regression.Class()) } 
    { $Is(c#0, Tclass.Regression.Class?()) } 
  $Is(c#0, Tclass.Regression.Class())
     <==> $Is(c#0, Tclass.Regression.Class?()) && c#0 != null);

// $IsAlloc axiom for non-null type Regression.Class
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.Regression.Class(), $h) } 
    { $IsAlloc(c#0, Tclass.Regression.Class?(), $h) } 
  $IsAlloc(c#0, Tclass.Regression.Class(), $h)
     <==> $IsAlloc(c#0, Tclass.Regression.Class?(), $h));

// Constructor function declaration
function #Regression.D.Small(Box, Box, Box, Box) : DatatypeType;

const unique ##Regression.D.Small: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box, a#0#1#0: Box, a#0#2#0: Box, a#0#3#0: Box :: 
  { #Regression.D.Small(a#0#0#0, a#0#1#0, a#0#2#0, a#0#3#0) } 
  DatatypeCtorId(#Regression.D.Small(a#0#0#0, a#0#1#0, a#0#2#0, a#0#3#0))
     == ##Regression.D.Small);
}

function Regression.D.Small_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Regression.D.Small_q(d) } 
  Regression.D.Small_q(d) <==> DatatypeCtorId(d) == ##Regression.D.Small);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Regression.D.Small_q(d) } 
  Regression.D.Small_q(d)
     ==> (exists a#1#0#0: Box, a#1#1#0: Box, a#1#2#0: Box, a#1#3#0: Box :: 
      d == #Regression.D.Small(a#1#0#0, a#1#1#0, a#1#2#0, a#1#3#0)));

function Tclass.Regression.D(Ty, Ty) : Ty;

const unique Tagclass.Regression.D: TyTag;

// Tclass.Regression.D Tag
axiom (forall Regression.D$X: Ty, Regression.D$Y: Ty :: 
  { Tclass.Regression.D(Regression.D$X, Regression.D$Y) } 
  Tag(Tclass.Regression.D(Regression.D$X, Regression.D$Y))
       == Tagclass.Regression.D
     && TagFamily(Tclass.Regression.D(Regression.D$X, Regression.D$Y)) == tytagFamily$D);

function Tclass.Regression.D_0(Ty) : Ty;

// Tclass.Regression.D injectivity 0
axiom (forall Regression.D$X: Ty, Regression.D$Y: Ty :: 
  { Tclass.Regression.D(Regression.D$X, Regression.D$Y) } 
  Tclass.Regression.D_0(Tclass.Regression.D(Regression.D$X, Regression.D$Y))
     == Regression.D$X);

function Tclass.Regression.D_1(Ty) : Ty;

// Tclass.Regression.D injectivity 1
axiom (forall Regression.D$X: Ty, Regression.D$Y: Ty :: 
  { Tclass.Regression.D(Regression.D$X, Regression.D$Y) } 
  Tclass.Regression.D_1(Tclass.Regression.D(Regression.D$X, Regression.D$Y))
     == Regression.D$Y);

// Box/unbox axiom for Tclass.Regression.D
axiom (forall Regression.D$X: Ty, Regression.D$Y: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.Regression.D(Regression.D$X, Regression.D$Y)) } 
  $IsBox(bx, Tclass.Regression.D(Regression.D$X, Regression.D$Y))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.Regression.D(Regression.D$X, Regression.D$Y)));

// Constructor $Is
axiom (forall Regression.D$X: Ty, 
    Regression.D$Y: Ty, 
    a#2#0#0: Box, 
    a#2#1#0: Box, 
    a#2#2#0: Box, 
    a#2#3#0: Box :: 
  { $Is(#Regression.D.Small(a#2#0#0, a#2#1#0, a#2#2#0, a#2#3#0), 
      Tclass.Regression.D(Regression.D$X, Regression.D$Y)) } 
  $Is(#Regression.D.Small(a#2#0#0, a#2#1#0, a#2#2#0, a#2#3#0), 
      Tclass.Regression.D(Regression.D$X, Regression.D$Y))
     <==> $IsBox(a#2#0#0, Regression.D$X)
       && $IsBox(a#2#1#0, Regression.D$X)
       && $IsBox(a#2#2#0, Regression.D$X)
       && $IsBox(a#2#3#0, Regression.D$X));

// Constructor $IsAlloc
axiom (forall Regression.D$X: Ty, 
    Regression.D$Y: Ty, 
    a#2#0#0: Box, 
    a#2#1#0: Box, 
    a#2#2#0: Box, 
    a#2#3#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#Regression.D.Small(a#2#0#0, a#2#1#0, a#2#2#0, a#2#3#0), 
      Tclass.Regression.D(Regression.D$X, Regression.D$Y), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#Regression.D.Small(a#2#0#0, a#2#1#0, a#2#2#0, a#2#3#0), 
        Tclass.Regression.D(Regression.D$X, Regression.D$Y), 
        $h)
       <==> $IsAllocBox(a#2#0#0, Regression.D$X, $h)
         && $IsAllocBox(a#2#1#0, Regression.D$X, $h)
         && $IsAllocBox(a#2#2#0, Regression.D$X, $h)
         && $IsAllocBox(a#2#3#0, Regression.D$X, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Regression.D$X: Ty, $h: Heap :: 
  { $IsAllocBox(Regression.D._h2(d), Regression.D$X, $h) } 
  $IsGoodHeap($h)
       && 
      Regression.D.Small_q(d)
       && (exists Regression.D$Y: Ty :: 
        { $IsAlloc(d, Tclass.Regression.D(Regression.D$X, Regression.D$Y), $h) } 
        $IsAlloc(d, Tclass.Regression.D(Regression.D$X, Regression.D$Y), $h))
     ==> $IsAllocBox(Regression.D._h2(d), Regression.D$X, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Regression.D$X: Ty, $h: Heap :: 
  { $IsAllocBox(Regression.D._h3(d), Regression.D$X, $h) } 
  $IsGoodHeap($h)
       && 
      Regression.D.Small_q(d)
       && (exists Regression.D$Y: Ty :: 
        { $IsAlloc(d, Tclass.Regression.D(Regression.D$X, Regression.D$Y), $h) } 
        $IsAlloc(d, Tclass.Regression.D(Regression.D$X, Regression.D$Y), $h))
     ==> $IsAllocBox(Regression.D._h3(d), Regression.D$X, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Regression.D$X: Ty, $h: Heap :: 
  { $IsAllocBox(Regression.D._h4(d), Regression.D$X, $h) } 
  $IsGoodHeap($h)
       && 
      Regression.D.Small_q(d)
       && (exists Regression.D$Y: Ty :: 
        { $IsAlloc(d, Tclass.Regression.D(Regression.D$X, Regression.D$Y), $h) } 
        $IsAlloc(d, Tclass.Regression.D(Regression.D$X, Regression.D$Y), $h))
     ==> $IsAllocBox(Regression.D._h4(d), Regression.D$X, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Regression.D$X: Ty, $h: Heap :: 
  { $IsAllocBox(Regression.D._h5(d), Regression.D$X, $h) } 
  $IsGoodHeap($h)
       && 
      Regression.D.Small_q(d)
       && (exists Regression.D$Y: Ty :: 
        { $IsAlloc(d, Tclass.Regression.D(Regression.D$X, Regression.D$Y), $h) } 
        $IsAlloc(d, Tclass.Regression.D(Regression.D$X, Regression.D$Y), $h))
     ==> $IsAllocBox(Regression.D._h5(d), Regression.D$X, $h));

// Constructor literal
axiom (forall a#3#0#0: Box, a#3#1#0: Box, a#3#2#0: Box, a#3#3#0: Box :: 
  { #Regression.D.Small(Lit(a#3#0#0), Lit(a#3#1#0), Lit(a#3#2#0), Lit(a#3#3#0)) } 
  #Regression.D.Small(Lit(a#3#0#0), Lit(a#3#1#0), Lit(a#3#2#0), Lit(a#3#3#0))
     == Lit(#Regression.D.Small(a#3#0#0, a#3#1#0, a#3#2#0, a#3#3#0)));

function Regression.D._h2(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#4#0#0: Box, a#4#1#0: Box, a#4#2#0: Box, a#4#3#0: Box :: 
  { #Regression.D.Small(a#4#0#0, a#4#1#0, a#4#2#0, a#4#3#0) } 
  Regression.D._h2(#Regression.D.Small(a#4#0#0, a#4#1#0, a#4#2#0, a#4#3#0))
     == a#4#0#0);

// Inductive rank
axiom (forall a#5#0#0: Box, a#5#1#0: Box, a#5#2#0: Box, a#5#3#0: Box :: 
  { #Regression.D.Small(a#5#0#0, a#5#1#0, a#5#2#0, a#5#3#0) } 
  BoxRank(a#5#0#0)
     < DtRank(#Regression.D.Small(a#5#0#0, a#5#1#0, a#5#2#0, a#5#3#0)));

function Regression.D._h3(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#6#0#0: Box, a#6#1#0: Box, a#6#2#0: Box, a#6#3#0: Box :: 
  { #Regression.D.Small(a#6#0#0, a#6#1#0, a#6#2#0, a#6#3#0) } 
  Regression.D._h3(#Regression.D.Small(a#6#0#0, a#6#1#0, a#6#2#0, a#6#3#0))
     == a#6#1#0);

// Inductive rank
axiom (forall a#7#0#0: Box, a#7#1#0: Box, a#7#2#0: Box, a#7#3#0: Box :: 
  { #Regression.D.Small(a#7#0#0, a#7#1#0, a#7#2#0, a#7#3#0) } 
  BoxRank(a#7#1#0)
     < DtRank(#Regression.D.Small(a#7#0#0, a#7#1#0, a#7#2#0, a#7#3#0)));

function Regression.D._h4(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#8#0#0: Box, a#8#1#0: Box, a#8#2#0: Box, a#8#3#0: Box :: 
  { #Regression.D.Small(a#8#0#0, a#8#1#0, a#8#2#0, a#8#3#0) } 
  Regression.D._h4(#Regression.D.Small(a#8#0#0, a#8#1#0, a#8#2#0, a#8#3#0))
     == a#8#2#0);

// Inductive rank
axiom (forall a#9#0#0: Box, a#9#1#0: Box, a#9#2#0: Box, a#9#3#0: Box :: 
  { #Regression.D.Small(a#9#0#0, a#9#1#0, a#9#2#0, a#9#3#0) } 
  BoxRank(a#9#2#0)
     < DtRank(#Regression.D.Small(a#9#0#0, a#9#1#0, a#9#2#0, a#9#3#0)));

function Regression.D._h5(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#10#0#0: Box, a#10#1#0: Box, a#10#2#0: Box, a#10#3#0: Box :: 
  { #Regression.D.Small(a#10#0#0, a#10#1#0, a#10#2#0, a#10#3#0) } 
  Regression.D._h5(#Regression.D.Small(a#10#0#0, a#10#1#0, a#10#2#0, a#10#3#0))
     == a#10#3#0);

// Inductive rank
axiom (forall a#11#0#0: Box, a#11#1#0: Box, a#11#2#0: Box, a#11#3#0: Box :: 
  { #Regression.D.Small(a#11#0#0, a#11#1#0, a#11#2#0, a#11#3#0) } 
  BoxRank(a#11#3#0)
     < DtRank(#Regression.D.Small(a#11#0#0, a#11#1#0, a#11#2#0, a#11#3#0)));

// Constructor function declaration
function #Regression.D.Large(Box, Box) : DatatypeType;

const unique ##Regression.D.Large: DtCtorId
uses {
// Constructor identifier
axiom (forall a#12#0#0: Box, a#12#1#0: Box :: 
  { #Regression.D.Large(a#12#0#0, a#12#1#0) } 
  DatatypeCtorId(#Regression.D.Large(a#12#0#0, a#12#1#0)) == ##Regression.D.Large);
}

function Regression.D.Large_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Regression.D.Large_q(d) } 
  Regression.D.Large_q(d) <==> DatatypeCtorId(d) == ##Regression.D.Large);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Regression.D.Large_q(d) } 
  Regression.D.Large_q(d)
     ==> (exists a#13#0#0: Box, a#13#1#0: Box :: 
      d == #Regression.D.Large(a#13#0#0, a#13#1#0)));

// Constructor $Is
axiom (forall Regression.D$X: Ty, Regression.D$Y: Ty, a#14#0#0: Box, a#14#1#0: Box :: 
  { $Is(#Regression.D.Large(a#14#0#0, a#14#1#0), 
      Tclass.Regression.D(Regression.D$X, Regression.D$Y)) } 
  $Is(#Regression.D.Large(a#14#0#0, a#14#1#0), 
      Tclass.Regression.D(Regression.D$X, Regression.D$Y))
     <==> $IsBox(a#14#0#0, Regression.D$X) && $IsBox(a#14#1#0, Regression.D$Y));

// Constructor $IsAlloc
axiom (forall Regression.D$X: Ty, Regression.D$Y: Ty, a#14#0#0: Box, a#14#1#0: Box, $h: Heap :: 
  { $IsAlloc(#Regression.D.Large(a#14#0#0, a#14#1#0), 
      Tclass.Regression.D(Regression.D$X, Regression.D$Y), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#Regression.D.Large(a#14#0#0, a#14#1#0), 
        Tclass.Regression.D(Regression.D$X, Regression.D$Y), 
        $h)
       <==> $IsAllocBox(a#14#0#0, Regression.D$X, $h)
         && $IsAllocBox(a#14#1#0, Regression.D$Y, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Regression.D$X: Ty, $h: Heap :: 
  { $IsAllocBox(Regression.D._h6(d), Regression.D$X, $h) } 
  $IsGoodHeap($h)
       && 
      Regression.D.Large_q(d)
       && (exists Regression.D$Y: Ty :: 
        { $IsAlloc(d, Tclass.Regression.D(Regression.D$X, Regression.D$Y), $h) } 
        $IsAlloc(d, Tclass.Regression.D(Regression.D$X, Regression.D$Y), $h))
     ==> $IsAllocBox(Regression.D._h6(d), Regression.D$X, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Regression.D$Y: Ty, $h: Heap :: 
  { $IsAllocBox(Regression.D._h7(d), Regression.D$Y, $h) } 
  $IsGoodHeap($h)
       && 
      Regression.D.Large_q(d)
       && (exists Regression.D$X: Ty :: 
        { $IsAlloc(d, Tclass.Regression.D(Regression.D$X, Regression.D$Y), $h) } 
        $IsAlloc(d, Tclass.Regression.D(Regression.D$X, Regression.D$Y), $h))
     ==> $IsAllocBox(Regression.D._h7(d), Regression.D$Y, $h));

// Constructor literal
axiom (forall a#15#0#0: Box, a#15#1#0: Box :: 
  { #Regression.D.Large(Lit(a#15#0#0), Lit(a#15#1#0)) } 
  #Regression.D.Large(Lit(a#15#0#0), Lit(a#15#1#0))
     == Lit(#Regression.D.Large(a#15#0#0, a#15#1#0)));

function Regression.D._h6(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#16#0#0: Box, a#16#1#0: Box :: 
  { #Regression.D.Large(a#16#0#0, a#16#1#0) } 
  Regression.D._h6(#Regression.D.Large(a#16#0#0, a#16#1#0)) == a#16#0#0);

// Inductive rank
axiom (forall a#17#0#0: Box, a#17#1#0: Box :: 
  { #Regression.D.Large(a#17#0#0, a#17#1#0) } 
  BoxRank(a#17#0#0) < DtRank(#Regression.D.Large(a#17#0#0, a#17#1#0)));

function Regression.D._h7(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#18#0#0: Box, a#18#1#0: Box :: 
  { #Regression.D.Large(a#18#0#0, a#18#1#0) } 
  Regression.D._h7(#Regression.D.Large(a#18#0#0, a#18#1#0)) == a#18#1#0);

// Inductive rank
axiom (forall a#19#0#0: Box, a#19#1#0: Box :: 
  { #Regression.D.Large(a#19#0#0, a#19#1#0) } 
  BoxRank(a#19#1#0) < DtRank(#Regression.D.Large(a#19#0#0, a#19#1#0)));

// Depth-one case-split function
function $IsA#Regression.D(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#Regression.D(d) } 
  $IsA#Regression.D(d) ==> Regression.D.Small_q(d) || Regression.D.Large_q(d));

// Questionmark data type disjunctivity
axiom (forall Regression.D$X: Ty, Regression.D$Y: Ty, d: DatatypeType :: 
  { Regression.D.Large_q(d), $Is(d, Tclass.Regression.D(Regression.D$X, Regression.D$Y)) } 
    { Regression.D.Small_q(d), $Is(d, Tclass.Regression.D(Regression.D$X, Regression.D$Y)) } 
  $Is(d, Tclass.Regression.D(Regression.D$X, Regression.D$Y))
     ==> Regression.D.Small_q(d) || Regression.D.Large_q(d));

// Datatype extensional equality declaration
function Regression.D#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #Regression.D.Small
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Regression.D#Equal(a, b), Regression.D.Small_q(a) } 
    { Regression.D#Equal(a, b), Regression.D.Small_q(b) } 
  Regression.D.Small_q(a) && Regression.D.Small_q(b)
     ==> (Regression.D#Equal(a, b)
       <==> Regression.D._h2(a) == Regression.D._h2(b)
         && Regression.D._h3(a) == Regression.D._h3(b)
         && Regression.D._h4(a) == Regression.D._h4(b)
         && Regression.D._h5(a) == Regression.D._h5(b)));

// Datatype extensional equality definition: #Regression.D.Large
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Regression.D#Equal(a, b), Regression.D.Large_q(a) } 
    { Regression.D#Equal(a, b), Regression.D.Large_q(b) } 
  Regression.D.Large_q(a) && Regression.D.Large_q(b)
     ==> (Regression.D#Equal(a, b)
       <==> Regression.D._h6(a) == Regression.D._h6(b)
         && Regression.D._h7(a) == Regression.D._h7(b)));

// Datatype extensionality axiom: Regression.D
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Regression.D#Equal(a, b) } 
  Regression.D#Equal(a, b) <==> a == b);

const unique class.Regression.D: ClassName;

const unique class.Regression.Opaque: ClassName;

// Constructor function declaration
function #Regression.E.Little(Box, Box, Box) : DatatypeType;

const unique ##Regression.E.Little: DtCtorId
uses {
// Constructor identifier
axiom (forall a#20#0#0: Box, a#20#1#0: Box, a#20#2#0: Box :: 
  { #Regression.E.Little(a#20#0#0, a#20#1#0, a#20#2#0) } 
  DatatypeCtorId(#Regression.E.Little(a#20#0#0, a#20#1#0, a#20#2#0))
     == ##Regression.E.Little);
}

function Regression.E.Little_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Regression.E.Little_q(d) } 
  Regression.E.Little_q(d) <==> DatatypeCtorId(d) == ##Regression.E.Little);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Regression.E.Little_q(d) } 
  Regression.E.Little_q(d)
     ==> (exists a#21#0#0: Box, a#21#1#0: Box, a#21#2#0: Box :: 
      d == #Regression.E.Little(a#21#0#0, a#21#1#0, a#21#2#0)));

function Tclass.Regression.E(Ty) : Ty;

const unique Tagclass.Regression.E: TyTag;

// Tclass.Regression.E Tag
axiom (forall Regression.E$Z: Ty :: 
  { Tclass.Regression.E(Regression.E$Z) } 
  Tag(Tclass.Regression.E(Regression.E$Z)) == Tagclass.Regression.E
     && TagFamily(Tclass.Regression.E(Regression.E$Z)) == tytagFamily$E);

function Tclass.Regression.E_0(Ty) : Ty;

// Tclass.Regression.E injectivity 0
axiom (forall Regression.E$Z: Ty :: 
  { Tclass.Regression.E(Regression.E$Z) } 
  Tclass.Regression.E_0(Tclass.Regression.E(Regression.E$Z)) == Regression.E$Z);

// Box/unbox axiom for Tclass.Regression.E
axiom (forall Regression.E$Z: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.Regression.E(Regression.E$Z)) } 
  $IsBox(bx, Tclass.Regression.E(Regression.E$Z))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.Regression.E(Regression.E$Z)));

function Tclass.Regression.Opaque() : Ty;

// Constructor $Is
axiom (forall Regression.E$Z: Ty, a#22#0#0: Box, a#22#1#0: Box, a#22#2#0: Box :: 
  { $Is(#Regression.E.Little(a#22#0#0, a#22#1#0, a#22#2#0), 
      Tclass.Regression.E(Regression.E$Z)) } 
  $Is(#Regression.E.Little(a#22#0#0, a#22#1#0, a#22#2#0), 
      Tclass.Regression.E(Regression.E$Z))
     <==> $IsBox(a#22#0#0, Tclass.Regression.Opaque())
       && $IsBox(a#22#1#0, Tclass.Regression.Opaque())
       && $IsBox(a#22#2#0, Tclass.Regression.Opaque()));

// Constructor $IsAlloc
axiom (forall Regression.E$Z: Ty, a#22#0#0: Box, a#22#1#0: Box, a#22#2#0: Box, $h: Heap :: 
  { $IsAlloc(#Regression.E.Little(a#22#0#0, a#22#1#0, a#22#2#0), 
      Tclass.Regression.E(Regression.E$Z), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#Regression.E.Little(a#22#0#0, a#22#1#0, a#22#2#0), 
        Tclass.Regression.E(Regression.E$Z), 
        $h)
       <==> $IsAllocBox(a#22#0#0, Tclass.Regression.Opaque(), $h)
         && $IsAllocBox(a#22#1#0, Tclass.Regression.Opaque(), $h)
         && $IsAllocBox(a#22#2#0, Tclass.Regression.Opaque(), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAllocBox(Regression.E._h8(d), Tclass.Regression.Opaque(), $h) } 
  $IsGoodHeap($h)
       && 
      Regression.E.Little_q(d)
       && (exists Regression.E$Z: Ty :: 
        { $IsAlloc(d, Tclass.Regression.E(Regression.E$Z), $h) } 
        $IsAlloc(d, Tclass.Regression.E(Regression.E$Z), $h))
     ==> $IsAllocBox(Regression.E._h8(d), Tclass.Regression.Opaque(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAllocBox(Regression.E._h9(d), Tclass.Regression.Opaque(), $h) } 
  $IsGoodHeap($h)
       && 
      Regression.E.Little_q(d)
       && (exists Regression.E$Z: Ty :: 
        { $IsAlloc(d, Tclass.Regression.E(Regression.E$Z), $h) } 
        $IsAlloc(d, Tclass.Regression.E(Regression.E$Z), $h))
     ==> $IsAllocBox(Regression.E._h9(d), Tclass.Regression.Opaque(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAllocBox(Regression.E._h10(d), Tclass.Regression.Opaque(), $h) } 
  $IsGoodHeap($h)
       && 
      Regression.E.Little_q(d)
       && (exists Regression.E$Z: Ty :: 
        { $IsAlloc(d, Tclass.Regression.E(Regression.E$Z), $h) } 
        $IsAlloc(d, Tclass.Regression.E(Regression.E$Z), $h))
     ==> $IsAllocBox(Regression.E._h10(d), Tclass.Regression.Opaque(), $h));

// Constructor literal
axiom (forall a#23#0#0: Box, a#23#1#0: Box, a#23#2#0: Box :: 
  { #Regression.E.Little(Lit(a#23#0#0), Lit(a#23#1#0), Lit(a#23#2#0)) } 
  #Regression.E.Little(Lit(a#23#0#0), Lit(a#23#1#0), Lit(a#23#2#0))
     == Lit(#Regression.E.Little(a#23#0#0, a#23#1#0, a#23#2#0)));

function Regression.E._h8(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#24#0#0: Box, a#24#1#0: Box, a#24#2#0: Box :: 
  { #Regression.E.Little(a#24#0#0, a#24#1#0, a#24#2#0) } 
  Regression.E._h8(#Regression.E.Little(a#24#0#0, a#24#1#0, a#24#2#0)) == a#24#0#0);

function Regression.E._h9(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#25#0#0: Box, a#25#1#0: Box, a#25#2#0: Box :: 
  { #Regression.E.Little(a#25#0#0, a#25#1#0, a#25#2#0) } 
  Regression.E._h9(#Regression.E.Little(a#25#0#0, a#25#1#0, a#25#2#0)) == a#25#1#0);

function Regression.E._h10(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#26#0#0: Box, a#26#1#0: Box, a#26#2#0: Box :: 
  { #Regression.E.Little(a#26#0#0, a#26#1#0, a#26#2#0) } 
  Regression.E._h10(#Regression.E.Little(a#26#0#0, a#26#1#0, a#26#2#0))
     == a#26#2#0);

// Constructor function declaration
function #Regression.E.Big(Box) : DatatypeType;

const unique ##Regression.E.Big: DtCtorId
uses {
// Constructor identifier
axiom (forall a#27#0#0: Box :: 
  { #Regression.E.Big(a#27#0#0) } 
  DatatypeCtorId(#Regression.E.Big(a#27#0#0)) == ##Regression.E.Big);
}

function Regression.E.Big_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Regression.E.Big_q(d) } 
  Regression.E.Big_q(d) <==> DatatypeCtorId(d) == ##Regression.E.Big);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Regression.E.Big_q(d) } 
  Regression.E.Big_q(d)
     ==> (exists a#28#0#0: Box :: d == #Regression.E.Big(a#28#0#0)));

// Constructor $Is
axiom (forall Regression.E$Z: Ty, a#29#0#0: Box :: 
  { $Is(#Regression.E.Big(a#29#0#0), Tclass.Regression.E(Regression.E$Z)) } 
  $Is(#Regression.E.Big(a#29#0#0), Tclass.Regression.E(Regression.E$Z))
     <==> $IsBox(a#29#0#0, Regression.E$Z));

// Constructor $IsAlloc
axiom (forall Regression.E$Z: Ty, a#29#0#0: Box, $h: Heap :: 
  { $IsAlloc(#Regression.E.Big(a#29#0#0), Tclass.Regression.E(Regression.E$Z), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#Regression.E.Big(a#29#0#0), Tclass.Regression.E(Regression.E$Z), $h)
       <==> $IsAllocBox(a#29#0#0, Regression.E$Z, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Regression.E$Z: Ty, $h: Heap :: 
  { $IsAllocBox(Regression.E._h11(d), Regression.E$Z, $h) } 
  $IsGoodHeap($h)
       && 
      Regression.E.Big_q(d)
       && $IsAlloc(d, Tclass.Regression.E(Regression.E$Z), $h)
     ==> $IsAllocBox(Regression.E._h11(d), Regression.E$Z, $h));

// Constructor literal
axiom (forall a#30#0#0: Box :: 
  { #Regression.E.Big(Lit(a#30#0#0)) } 
  #Regression.E.Big(Lit(a#30#0#0)) == Lit(#Regression.E.Big(a#30#0#0)));

function Regression.E._h11(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#31#0#0: Box :: 
  { #Regression.E.Big(a#31#0#0) } 
  Regression.E._h11(#Regression.E.Big(a#31#0#0)) == a#31#0#0);

// Inductive rank
axiom (forall a#32#0#0: Box :: 
  { #Regression.E.Big(a#32#0#0) } 
  BoxRank(a#32#0#0) < DtRank(#Regression.E.Big(a#32#0#0)));

// Depth-one case-split function
function $IsA#Regression.E(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#Regression.E(d) } 
  $IsA#Regression.E(d) ==> Regression.E.Little_q(d) || Regression.E.Big_q(d));

// Questionmark data type disjunctivity
axiom (forall Regression.E$Z: Ty, d: DatatypeType :: 
  { Regression.E.Big_q(d), $Is(d, Tclass.Regression.E(Regression.E$Z)) } 
    { Regression.E.Little_q(d), $Is(d, Tclass.Regression.E(Regression.E$Z)) } 
  $Is(d, Tclass.Regression.E(Regression.E$Z))
     ==> Regression.E.Little_q(d) || Regression.E.Big_q(d));

// Datatype extensional equality declaration
function Regression.E#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #Regression.E.Little
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Regression.E#Equal(a, b), Regression.E.Little_q(a) } 
    { Regression.E#Equal(a, b), Regression.E.Little_q(b) } 
  Regression.E.Little_q(a) && Regression.E.Little_q(b)
     ==> (Regression.E#Equal(a, b)
       <==> Regression.E._h8(a) == Regression.E._h8(b)
         && Regression.E._h9(a) == Regression.E._h9(b)
         && Regression.E._h10(a) == Regression.E._h10(b)));

// Datatype extensional equality definition: #Regression.E.Big
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Regression.E#Equal(a, b), Regression.E.Big_q(a) } 
    { Regression.E#Equal(a, b), Regression.E.Big_q(b) } 
  Regression.E.Big_q(a) && Regression.E.Big_q(b)
     ==> (Regression.E#Equal(a, b) <==> Regression.E._h11(a) == Regression.E._h11(b)));

// Datatype extensionality axiom: Regression.E
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Regression.E#Equal(a, b) } 
  Regression.E#Equal(a, b) <==> a == b);

const unique class.Regression.E: ClassName;

const unique class.AdditionalTests.__default: ClassName;

const unique class.AdditionalTests.GGG: ClassName;

const unique tytagFamily$nat: TyTagFamily;

const unique tytagFamily$object: TyTagFamily;

const unique tytagFamily$array: TyTagFamily;

const unique tytagFamily$_#Func1: TyTagFamily;

const unique tytagFamily$_#PartialFunc1: TyTagFamily;

const unique tytagFamily$_#TotalFunc1: TyTagFamily;

const unique tytagFamily$_#Func0: TyTagFamily;

const unique tytagFamily$_#PartialFunc0: TyTagFamily;

const unique tytagFamily$_#TotalFunc0: TyTagFamily;

const unique tytagFamily$_tuple#2: TyTagFamily;

const unique tytagFamily$_tuple#0: TyTagFamily;

const unique tytagFamily$C: TyTagFamily;

const unique tytagFamily$NonNullC: TyTagFamily;

const unique tytagFamily$MyClass: TyTagFamily;

const unique tytagFamily$Iter: TyTagFamily;

const unique tytagFamily$Regression213: TyTagFamily;

const unique tytagFamily$D: TyTagFamily;

const unique tytagFamily$Class: TyTagFamily;

const unique tytagFamily$E: TyTagFamily;

const unique field$y: NameFamily;

const unique field$oxA: NameFamily;

const unique field$u: NameFamily;

const unique field$ug: NameFamily;

const unique field$z: NameFamily;

const unique field$ys: NameFamily;

const unique field$ugs: NameFamily;

const unique field$zs: NameFamily;

const unique field$_new: NameFamily;
