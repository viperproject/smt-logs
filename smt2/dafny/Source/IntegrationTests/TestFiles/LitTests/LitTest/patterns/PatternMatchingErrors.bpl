// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatchingErrors.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatchingErrors-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatchingErrors.dfy

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

function Tclass._System.___hFunc3(Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hFunc3: TyTag;

// Tclass._System.___hFunc3 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tag(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
       == Tagclass._System.___hFunc3
     && TagFamily(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
       == tytagFamily$_#Func3);

function Tclass._System.___hFunc3_0(Ty) : Ty;

// Tclass._System.___hFunc3 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hFunc3_0(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T0);

function Tclass._System.___hFunc3_1(Ty) : Ty;

// Tclass._System.___hFunc3 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hFunc3_1(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T1);

function Tclass._System.___hFunc3_2(Ty) : Ty;

// Tclass._System.___hFunc3 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hFunc3_2(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T2);

function Tclass._System.___hFunc3_3(Ty) : Ty;

// Tclass._System.___hFunc3 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hFunc3_3(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $IsBox(bx, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R)));

function Handle3([Heap,Box,Box,Box]Box, [Heap,Box,Box,Box]bool, [Heap,Box,Box,Box]Set)
   : HandleType;

function Apply3(Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box) : Box;

function Requires3(Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box) : bool;

function Reads3(Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box) : Set;

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { Apply3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2) } 
  Apply3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2)
     == h[heap, bx0, bx1, bx2]);

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { Requires3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2) } 
  r[heap, bx0, bx1, bx2]
     ==> Requires3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2));

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx: Box :: 
  { Set#IsMember(Reads3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2), bx) } 
  Set#IsMember(Reads3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2), bx)
     == Set#IsMember(rd[heap, bx0, bx1, bx2], bx));

function {:inline} Requires3#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box)
   : bool
{
  true
}

function {:inline} Reads3#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box)
   : bool
{
  true
}

// frame axiom for Reads3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Reads3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Requires3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Requires3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Requires3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Requires3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Requires3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Requires3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Apply3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Apply3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Apply3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Apply3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Apply3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Apply3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// empty-reads property for Reads3 
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { Reads3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2), $IsGoodHeap(heap) } 
    { Reads3(t0, t1, t2, t3, heap, f, bx0, bx1, bx2) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
     ==> (Set#Equal(Reads3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2), Set#Empty(): Set)
       <==> Set#Equal(Reads3(t0, t1, t2, t3, heap, f, bx0, bx1, bx2), Set#Empty(): Set)));

// empty-reads property for Requires3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { Requires3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2), $IsGoodHeap(heap) } 
    { Requires3(t0, t1, t2, t3, heap, f, bx0, bx1, bx2) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && Set#Equal(Reads3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2), Set#Empty(): Set)
     ==> Requires3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2)
       == Requires3(t0, t1, t2, t3, heap, f, bx0, bx1, bx2));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty :: 
  { $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3)) } 
  $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
     <==> (forall h: Heap, bx0: Box, bx1: Box, bx2: Box :: 
      { Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2) } 
      $IsGoodHeap(h)
           && 
          $IsBox(bx0, t0)
           && $IsBox(bx1, t1)
           && $IsBox(bx2, t2)
           && Requires3(t0, t1, t2, t3, h, f, bx0, bx1, bx2)
         ==> $IsBox(Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2), t3)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, u0: Ty, u1: Ty, u2: Ty, u3: Ty :: 
  { $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3)), $Is(f, Tclass._System.___hFunc3(u0, u1, u2, u3)) } 
  $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall bx: Box :: 
        { $IsBox(bx, u0) } { $IsBox(bx, t0) } 
        $IsBox(bx, u0) ==> $IsBox(bx, t0))
       && (forall bx: Box :: 
        { $IsBox(bx, u1) } { $IsBox(bx, t1) } 
        $IsBox(bx, u1) ==> $IsBox(bx, t1))
       && (forall bx: Box :: 
        { $IsBox(bx, u2) } { $IsBox(bx, t2) } 
        $IsBox(bx, u2) ==> $IsBox(bx, t2))
       && (forall bx: Box :: 
        { $IsBox(bx, t3) } { $IsBox(bx, u3) } 
        $IsBox(bx, t3) ==> $IsBox(bx, u3))
     ==> $Is(f, Tclass._System.___hFunc3(u0, u1, u2, u3)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc3(t0, t1, t2, t3), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc3(t0, t1, t2, t3), h)
       <==> (forall bx0: Box, bx1: Box, bx2: Box :: 
        { Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2) } 
          { Reads3(t0, t1, t2, t3, h, f, bx0, bx1, bx2) } 
        $IsBox(bx0, t0)
             && $IsAllocBox(bx0, t0, h)
             && 
            $IsBox(bx1, t1)
             && $IsAllocBox(bx1, t1, h)
             && 
            $IsBox(bx2, t2)
             && $IsAllocBox(bx2, t2, h)
             && Requires3(t0, t1, t2, t3, h, f, bx0, bx1, bx2)
           ==> (forall r: ref :: 
            { Set#IsMember(Reads3(t0, t1, t2, t3, h, f, bx0, bx1, bx2), $Box(r)) } 
            r != null && Set#IsMember(Reads3(t0, t1, t2, t3, h, f, bx0, bx1, bx2), $Box(r))
               ==> $Unbox(read(h, r, alloc)): bool))));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc3(t0, t1, t2, t3), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc3(t0, t1, t2, t3), h)
     ==> (forall bx0: Box, bx1: Box, bx2: Box :: 
      { Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2) } 
      $IsAllocBox(bx0, t0, h)
           && $IsAllocBox(bx1, t1, h)
           && $IsAllocBox(bx2, t2, h)
           && Requires3(t0, t1, t2, t3, h, f, bx0, bx1, bx2)
         ==> $IsAllocBox(Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2), t3, h)));

function Tclass._System.___hPartialFunc3(Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hPartialFunc3: TyTag;

// Tclass._System.___hPartialFunc3 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tag(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
       == Tagclass._System.___hPartialFunc3
     && TagFamily(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
       == tytagFamily$_#PartialFunc3);

function Tclass._System.___hPartialFunc3_0(Ty) : Ty;

// Tclass._System.___hPartialFunc3 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hPartialFunc3_0(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T0);

function Tclass._System.___hPartialFunc3_1(Ty) : Ty;

// Tclass._System.___hPartialFunc3 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hPartialFunc3_1(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T1);

function Tclass._System.___hPartialFunc3_2(Ty) : Ty;

// Tclass._System.___hPartialFunc3 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hPartialFunc3_2(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T2);

function Tclass._System.___hPartialFunc3_3(Ty) : Ty;

// Tclass._System.___hPartialFunc3 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hPartialFunc3_3(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R)));

// $Is axiom for subset type _System._#PartialFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     <==> $Is(f#0, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box :: 
        $IsBox(x0#0, #$T0) && $IsBox(x1#0, #$T1) && $IsBox(x2#0, #$T2)
           ==> Set#Equal(Reads3(#$T0, #$T1, #$T2, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0), Set#Empty(): Set)));

// $IsAlloc axiom for subset type _System._#PartialFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R), $h));

function Tclass._System.___hTotalFunc3(Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hTotalFunc3: TyTag;

// Tclass._System.___hTotalFunc3 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tag(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
       == Tagclass._System.___hTotalFunc3
     && TagFamily(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
       == tytagFamily$_#TotalFunc3);

function Tclass._System.___hTotalFunc3_0(Ty) : Ty;

// Tclass._System.___hTotalFunc3 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hTotalFunc3_0(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T0);

function Tclass._System.___hTotalFunc3_1(Ty) : Ty;

// Tclass._System.___hTotalFunc3 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hTotalFunc3_1(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T1);

function Tclass._System.___hTotalFunc3_2(Ty) : Ty;

// Tclass._System.___hTotalFunc3 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hTotalFunc3_2(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T2);

function Tclass._System.___hTotalFunc3_3(Ty) : Ty;

// Tclass._System.___hTotalFunc3 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hTotalFunc3_3(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R)));

// $Is axiom for subset type _System._#TotalFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box :: 
        $IsBox(x0#0, #$T0) && $IsBox(x1#0, #$T1) && $IsBox(x2#0, #$T2)
           ==> Requires3(#$T0, #$T1, #$T2, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0)));

// $IsAlloc axiom for subset type _System._#TotalFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R), $h));

function Tclass._System.___hFunc4(Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hFunc4: TyTag;

// Tclass._System.___hFunc4 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tag(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == Tagclass._System.___hFunc4
     && TagFamily(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == tytagFamily$_#Func4);

function Tclass._System.___hFunc4_0(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_0(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T0);

function Tclass._System.___hFunc4_1(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_1(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T1);

function Tclass._System.___hFunc4_2(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_2(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T2);

function Tclass._System.___hFunc4_3(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_3(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T3);

function Tclass._System.___hFunc4_4(Ty) : Ty;

// Tclass._System.___hFunc4 injectivity 4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hFunc4_4(Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $IsBox(bx, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R)));

function Handle4([Heap,Box,Box,Box,Box]Box, [Heap,Box,Box,Box,Box]bool, [Heap,Box,Box,Box,Box]Set)
   : HandleType;

function Apply4(Ty, Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box, Box) : Box;

function Requires4(Ty, Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box, Box) : bool;

function Reads4(Ty, Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box, Box) : Set;

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { Apply4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3) } 
  Apply4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3)
     == h[heap, bx0, bx1, bx2, bx3]);

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { Requires4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3) } 
  r[heap, bx0, bx1, bx2, bx3]
     ==> Requires4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3));

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box, 
    bx: Box :: 
  { Set#IsMember(Reads4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3), bx) } 
  Set#IsMember(Reads4(t0, t1, t2, t3, t4, heap, Handle4(h, r, rd), bx0, bx1, bx2, bx3), bx)
     == Set#IsMember(rd[heap, bx0, bx1, bx2, bx3], bx));

function {:inline} Requires4#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box)
   : bool
{
  true
}

function {:inline} Reads4#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box)
   : bool
{
  true
}

// frame axiom for Reads4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Reads4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Requires4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Requires4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Requires4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Requires4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Requires4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Requires4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Apply4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Apply4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Apply4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// frame axiom for Apply4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { $HeapSucc(h0, h1), Apply4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall o: ref, fld: Field :: 
        o != null
             && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply4(t0, t1, t2, t3, t4, h0, f, bx0, bx1, bx2, bx3)
       == Apply4(t0, t1, t2, t3, t4, h1, f, bx0, bx1, bx2, bx3));

// empty-reads property for Reads4 
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { Reads4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3), $IsGoodHeap(heap) } 
    { Reads4(t0, t1, t2, t3, t4, heap, f, bx0, bx1, bx2, bx3) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
     ==> (Set#Equal(Reads4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3), Set#Empty(): Set)
       <==> Set#Equal(Reads4(t0, t1, t2, t3, t4, heap, f, bx0, bx1, bx2, bx3), Set#Empty(): Set)));

// empty-reads property for Requires4
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx3: Box :: 
  { Requires4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3), $IsGoodHeap(heap) } 
    { Requires4(t0, t1, t2, t3, t4, heap, f, bx0, bx1, bx2, bx3) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $IsBox(bx3, t3)
       && $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && Set#Equal(Reads4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3), Set#Empty(): Set)
     ==> Requires4(t0, t1, t2, t3, t4, $OneHeap, f, bx0, bx1, bx2, bx3)
       == Requires4(t0, t1, t2, t3, t4, heap, f, bx0, bx1, bx2, bx3));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, t4: Ty :: 
  { $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4)) } 
  $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
     <==> (forall h: Heap, bx0: Box, bx1: Box, bx2: Box, bx3: Box :: 
      { Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3) } 
      $IsGoodHeap(h)
           && 
          $IsBox(bx0, t0)
           && $IsBox(bx1, t1)
           && $IsBox(bx2, t2)
           && $IsBox(bx3, t3)
           && Requires4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3)
         ==> $IsBox(Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3), t4)));

axiom (forall f: HandleType, 
    t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    t4: Ty, 
    u0: Ty, 
    u1: Ty, 
    u2: Ty, 
    u3: Ty, 
    u4: Ty :: 
  { $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4)), $Is(f, Tclass._System.___hFunc4(u0, u1, u2, u3, u4)) } 
  $Is(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4))
       && (forall bx: Box :: 
        { $IsBox(bx, u0) } { $IsBox(bx, t0) } 
        $IsBox(bx, u0) ==> $IsBox(bx, t0))
       && (forall bx: Box :: 
        { $IsBox(bx, u1) } { $IsBox(bx, t1) } 
        $IsBox(bx, u1) ==> $IsBox(bx, t1))
       && (forall bx: Box :: 
        { $IsBox(bx, u2) } { $IsBox(bx, t2) } 
        $IsBox(bx, u2) ==> $IsBox(bx, t2))
       && (forall bx: Box :: 
        { $IsBox(bx, u3) } { $IsBox(bx, t3) } 
        $IsBox(bx, u3) ==> $IsBox(bx, t3))
       && (forall bx: Box :: 
        { $IsBox(bx, t4) } { $IsBox(bx, u4) } 
        $IsBox(bx, t4) ==> $IsBox(bx, u4))
     ==> $Is(f, Tclass._System.___hFunc4(u0, u1, u2, u3, u4)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, t4: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4), h)
       <==> (forall bx0: Box, bx1: Box, bx2: Box, bx3: Box :: 
        { Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3) } 
          { Reads4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3) } 
        $IsBox(bx0, t0)
             && $IsAllocBox(bx0, t0, h)
             && 
            $IsBox(bx1, t1)
             && $IsAllocBox(bx1, t1, h)
             && 
            $IsBox(bx2, t2)
             && $IsAllocBox(bx2, t2, h)
             && 
            $IsBox(bx3, t3)
             && $IsAllocBox(bx3, t3, h)
             && Requires4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3)
           ==> (forall r: ref :: 
            { Set#IsMember(Reads4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3), $Box(r)) } 
            r != null
                 && Set#IsMember(Reads4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3), $Box(r))
               ==> $Unbox(read(h, r, alloc)): bool))));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, t4: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc4(t0, t1, t2, t3, t4), h)
     ==> (forall bx0: Box, bx1: Box, bx2: Box, bx3: Box :: 
      { Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3) } 
      $IsAllocBox(bx0, t0, h)
           && $IsAllocBox(bx1, t1, h)
           && $IsAllocBox(bx2, t2, h)
           && $IsAllocBox(bx3, t3, h)
           && Requires4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3)
         ==> $IsAllocBox(Apply4(t0, t1, t2, t3, t4, h, f, bx0, bx1, bx2, bx3), t4, h)));

function Tclass._System.___hPartialFunc4(Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hPartialFunc4: TyTag;

// Tclass._System.___hPartialFunc4 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tag(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == Tagclass._System.___hPartialFunc4
     && TagFamily(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == tytagFamily$_#PartialFunc4);

function Tclass._System.___hPartialFunc4_0(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_0(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T0);

function Tclass._System.___hPartialFunc4_1(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_1(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T1);

function Tclass._System.___hPartialFunc4_2(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_2(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T2);

function Tclass._System.___hPartialFunc4_3(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_3(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T3);

function Tclass._System.___hPartialFunc4_4(Ty) : Ty;

// Tclass._System.___hPartialFunc4 injectivity 4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hPartialFunc4_4(Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, 
        Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R)));

// $Is axiom for subset type _System._#PartialFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     <==> $Is(f#0, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box, x3#0: Box :: 
        $IsBox(x0#0, #$T0)
             && $IsBox(x1#0, #$T1)
             && $IsBox(x2#0, #$T2)
             && $IsBox(x3#0, #$T3)
           ==> Set#Equal(Reads4(#$T0, #$T1, #$T2, #$T3, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0, x3#0), 
            Set#Empty(): Set)));

// $IsAlloc axiom for subset type _System._#PartialFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h));

function Tclass._System.___hTotalFunc4(Ty, Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hTotalFunc4: TyTag;

// Tclass._System.___hTotalFunc4 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tag(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == Tagclass._System.___hTotalFunc4
     && TagFamily(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       == tytagFamily$_#TotalFunc4);

function Tclass._System.___hTotalFunc4_0(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_0(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T0);

function Tclass._System.___hTotalFunc4_1(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_1(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T1);

function Tclass._System.___hTotalFunc4_2(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_2(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T2);

function Tclass._System.___hTotalFunc4_3(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_3(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$T3);

function Tclass._System.___hTotalFunc4_4(Ty) : Ty;

// Tclass._System.___hTotalFunc4 injectivity 4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R) } 
  Tclass._System.___hTotalFunc4_4(Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, 
        Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R)));

// $Is axiom for subset type _System._#TotalFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box, x3#0: Box :: 
        $IsBox(x0#0, #$T0)
             && $IsBox(x1#0, #$T1)
             && $IsBox(x2#0, #$T2)
             && $IsBox(x3#0, #$T3)
           ==> Requires4(#$T0, #$T1, #$T2, #$T3, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0, x3#0)));

// $IsAlloc axiom for subset type _System._#TotalFunc4
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$T3: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc4(#$T0, #$T1, #$T2, #$T3, #$R), $h));

const unique class._module.__default: ClassName;

// function declaration for _module._default.F
function _module.__default.F(xs#0: DatatypeType) : int
uses {
// definition axiom for _module.__default.F (revealed)
axiom {:id "id0"} 1 <= $FunctionContextHeight
   ==> (forall xs#0: DatatypeType :: 
    { _module.__default.F(xs#0) } 
    _module.__default.F#canCall(xs#0)
         || (1 < $FunctionContextHeight && $Is(xs#0, Tclass._module.List(TInt)))
       ==> _module.__default.F(xs#0)
         == (if _module.List.Nil_q(xs#0)
           then 8
           else (var rest#0 := _module.List.tail(_module.List.tail(xs#0)); 
            (var y#0 := $Unbox(_module.List.head(_module.List.tail(xs#0))): int; 
              (var x#0 := $Unbox(_module.List.head(xs#0)): int; LitInt(5))))));
// definition axiom for _module.__default.F for all literals (revealed)
axiom {:id "id1"} 1 <= $FunctionContextHeight
   ==> (forall xs#0: DatatypeType :: 
    {:weight 3} { _module.__default.F(Lit(xs#0)) } 
    _module.__default.F#canCall(Lit(xs#0))
         || (1 < $FunctionContextHeight && $Is(xs#0, Tclass._module.List(TInt)))
       ==> _module.__default.F(Lit(xs#0))
         == (if _module.List.Nil_q(Lit(xs#0))
           then 8
           else (var rest#2 := Lit(_module.List.tail(Lit(_module.List.tail(Lit(xs#0))))); 
            (var y#2 := LitInt($Unbox(_module.List.head(Lit(_module.List.tail(Lit(xs#0))))): int); 
              (var x#2 := LitInt($Unbox(_module.List.head(Lit(xs#0))): int); LitInt(5))))));
}

function _module.__default.F#canCall(xs#0: DatatypeType) : bool;

function Tclass._module.List(Ty) : Ty;

const unique Tagclass._module.List: TyTag;

// Tclass._module.List Tag
axiom (forall _module.List$T: Ty :: 
  { Tclass._module.List(_module.List$T) } 
  Tag(Tclass._module.List(_module.List$T)) == Tagclass._module.List
     && TagFamily(Tclass._module.List(_module.List$T)) == tytagFamily$List);

function Tclass._module.List_0(Ty) : Ty;

// Tclass._module.List injectivity 0
axiom (forall _module.List$T: Ty :: 
  { Tclass._module.List(_module.List$T) } 
  Tclass._module.List_0(Tclass._module.List(_module.List$T)) == _module.List$T);

// Box/unbox axiom for Tclass._module.List
axiom (forall _module.List$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.List(_module.List$T)) } 
  $IsBox(bx, Tclass._module.List(_module.List$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.List(_module.List$T)));

function _module.__default.F#requires(DatatypeType) : bool;

// #requires axiom for _module.__default.F
axiom (forall xs#0: DatatypeType :: 
  { _module.__default.F#requires(xs#0) } 
  $Is(xs#0, Tclass._module.List(TInt))
     ==> _module.__default.F#requires(xs#0) == true);

procedure {:verboseName "F (well-formedness)"} CheckWellformed$$_module.__default.F(xs#0: DatatypeType where $Is(xs#0, Tclass._module.List(TInt)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "F (well-formedness)"} CheckWellformed$$_module.__default.F(xs#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: int;
  var _mcc#1#0: DatatypeType;
  var _mcc#2#0: int;
  var _mcc#3#0: DatatypeType;
  var rest#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var y#Z#0: int;
  var let#1#0#0: int;
  var x#Z#0: int;
  var let#2#0#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
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
        if (xs#0 == #_module.List.Nil())
        {
            assume {:id "id10"} _module.__default.F(xs#0) == LitInt(8);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.F(xs#0), TInt);
            return;
        }
        else if (xs#0 == #_module.List.Cons($Box(_mcc#0#0), _mcc#1#0))
        {
            assume $Is(_mcc#1#0, Tclass._module.List(TInt));
            if (_mcc#1#0 == #_module.List.Cons($Box(_mcc#2#0), _mcc#3#0))
            {
                assume $Is(_mcc#3#0, Tclass._module.List(TInt));
                havoc rest#Z#0;
                assume {:id "id3"} let#0#0#0 == _mcc#3#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#0#0#0, Tclass._module.List(TInt));
                assume {:id "id4"} rest#Z#0 == let#0#0#0;
                havoc y#Z#0;
                assume {:id "id5"} let#1#0#0 == _mcc#2#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#1#0#0, TInt);
                assume {:id "id6"} y#Z#0 == let#1#0#0;
                havoc x#Z#0;
                assume {:id "id7"} let#2#0#0 == _mcc#0#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#2#0#0, TInt);
                assume {:id "id8"} x#Z#0 == let#2#0#0;
                assume {:id "id9"} _module.__default.F(xs#0) == LitInt(5);
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.F(xs#0), TInt);
                return;
            }
            else if (_mcc#1#0 == #_module.List.Nil())
            {
                assert {:id "id2"} false;
            }
            else
            {
                assume false;
            }
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



procedure {:verboseName "N (well-formedness)"} CheckWellFormed$$_module.__default.N(xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(TInt))
         && $IsAlloc(xs#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(xs#0))
   returns (r#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "N (call)"} Call$$_module.__default.N(xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(TInt))
         && $IsAlloc(xs#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(xs#0))
   returns (r#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "N (correctness)"} Impl$$_module.__default.N(xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(TInt))
         && $IsAlloc(xs#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(xs#0))
   returns (r#0: int, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "N (correctness)"} Impl$$_module.__default.N(xs#0: DatatypeType) returns (r#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _mcc#0#0_0: int;
  var _mcc#1#0_0: DatatypeType;
  var _mcc#2#0_0_0: int;
  var _mcc#3#0_0_0: DatatypeType;
  var zs#0_0_0: DatatypeType;
  var let#0_0_0#0#0: DatatypeType;
  var z#0_0_0: int;
  var let#0_0_1#0#0: int;
  var y#0_0_0: int;
  var let#0_0_2#0#0: int;

    // AddMethodImpl: N, Impl$$_module.__default.N
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    assume true;
    havoc _mcc#0#0_0, _mcc#1#0_0;
    if (xs#0 == #_module.List.Nil())
    {
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatchingErrors.dfy(24,17)
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatchingErrors.dfy(24,17)
        assume true;
        assume true;
        r#0 := LitInt(0);
        return;
    }
    else if (xs#0 == #_module.List.Cons($Box(_mcc#0#0_0), _mcc#1#0_0))
    {
        assume $Is(_mcc#1#0_0, Tclass._module.List(TInt))
           && $IsAlloc(_mcc#1#0_0, Tclass._module.List(TInt), $Heap);
        assume true;
        havoc _mcc#2#0_0_0, _mcc#3#0_0_0;
        if (_mcc#1#0_0 == #_module.List.Cons($Box(_mcc#2#0_0_0), _mcc#3#0_0_0))
        {
            assume $Is(_mcc#3#0_0_0, Tclass._module.List(TInt))
               && $IsAlloc(_mcc#3#0_0_0, Tclass._module.List(TInt), $Heap);
            havoc zs#0_0_0;
            assume $Is(zs#0_0_0, Tclass._module.List(TInt))
               && $IsAlloc(zs#0_0_0, Tclass._module.List(TInt), $Heap);
            assume {:id "id12"} let#0_0_0#0#0 == _mcc#3#0_0_0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_0#0#0, Tclass._module.List(TInt));
            assume {:id "id13"} zs#0_0_0 == let#0_0_0#0#0;
            havoc z#0_0_0;
            assume {:id "id14"} let#0_0_1#0#0 == _mcc#2#0_0_0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_1#0#0, TInt);
            assume {:id "id15"} z#0_0_0 == let#0_0_1#0#0;
            havoc y#0_0_0;
            assume {:id "id16"} let#0_0_2#0#0 == _mcc#0#0_0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_2#0#0, TInt);
            assume {:id "id17"} y#0_0_0 == let#0_0_2#0#0;
            // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatchingErrors.dfy(23,34)
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatchingErrors.dfy(23,34)
            assume true;
            assume true;
            r#0 := z#0_0_0;
            return;
        }
        else if (_mcc#1#0_0 == #_module.List.Nil())
        {
            assert {:id "id11"} false;
        }
        else
        {
            assume false;
        }
    }
    else
    {
        assume false;
    }
}



procedure {:verboseName "U (well-formedness)"} CheckWellFormed$$_module.__default.U(d#0: real);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "U (call)"} Call$$_module.__default.U(d#0: real);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "U (correctness)"} Impl$$_module.__default.U(d#0: real) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "U (correctness)"} Impl$$_module.__default.U(d#0: real) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: U, Impl$$_module.__default.U
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatchingErrors.dfy(31,3)
    assume true;
    assert {:id "id20"} {:error "missing case in match statement: not all possibilities for selector of type real have been covered"} d#0 == LitReal(15e0);
}



function Tclass._module.Tree() : Ty
uses {
// Tclass._module.Tree Tag
axiom Tag(Tclass._module.Tree()) == Tagclass._module.Tree
   && TagFamily(Tclass._module.Tree()) == tytagFamily$Tree;
}

const unique Tagclass._module.Tree: TyTag;

// Box/unbox axiom for Tclass._module.Tree
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Tree()) } 
  $IsBox(bx, Tclass._module.Tree())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Tree()));

procedure {:verboseName "TreeTest (well-formedness)"} CheckWellFormed$$_module.__default.TreeTest(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Tree())
         && $IsAlloc(t#0, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(t#0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TreeTest (call)"} Call$$_module.__default.TreeTest(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Tree())
         && $IsAlloc(t#0, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(t#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TreeTest (correctness)"} Impl$$_module.__default.TreeTest(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Tree())
         && $IsAlloc(t#0, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(t#0))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TreeTest (correctness)"} Impl$$_module.__default.TreeTest(t#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _mcc#0#0_0: DatatypeType;
  var _mcc#1#0_0: bool;
  var _mcc#2#0_0: DatatypeType;
  var _mcc#6#0_0_0: DatatypeType;
  var _mcc#7#0_0_0: bool;
  var _mcc#8#0_0_0: DatatypeType;
  var a#0_1_0#0#0: DatatypeType;
  var a#0_1_0#1#0: bool;
  var a#0_1_0#2#0: DatatypeType;

    // AddMethodImpl: TreeTest, Impl$$_module.__default.TreeTest
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    assume true;
    havoc _mcc#0#0_0, _mcc#1#0_0, _mcc#2#0_0;
    if (t#0 == #_module.Tree.Branch(_mcc#0#0_0, _mcc#1#0_0, _mcc#2#0_0))
    {
        assume $Is(_mcc#0#0_0, Tclass._module.Tree());
        assume $Is(_mcc#2#0_0, Tclass._module.Tree());
        assume true;
        havoc _mcc#6#0_0_0, _mcc#7#0_0_0, _mcc#8#0_0_0;
        if (_mcc#0#0_0 == #_module.Tree.Leaf())
        {
            assume true;
            havoc a#0_1_0#0#0, a#0_1_0#1#0, a#0_1_0#2#0;
            if (_mcc#2#0_0 == #_module.Tree.Leaf())
            {
            }
            else if (_mcc#2#0_0 == #_module.Tree.Branch(a#0_1_0#0#0, a#0_1_0#1#0, a#0_1_0#2#0))
            {
                assert {:id "id23"} false;
            }
            else
            {
                assume false;
            }
        }
        else if (_mcc#0#0_0 == #_module.Tree.Branch(_mcc#6#0_0_0, _mcc#7#0_0_0, _mcc#8#0_0_0))
        {
            assume $Is(_mcc#6#0_0_0, Tclass._module.Tree());
            assume $Is(_mcc#8#0_0_0, Tclass._module.Tree());
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatchingErrors.dfy(40,3)
            assume true;
            assert {:id "id22"} {:error "missing case in match statement: Branch(Branch(_, c: bool, _), _, _) (not all possibilities for constant 'c' have been covered)"} _mcc#7#0_0_0 == Lit(true);
        }
        else
        {
            assume false;
        }
    }
    else if (t#0 == #_module.Tree.Leaf())
    {
        assert {:id "id21"} false;
    }
    else
    {
        assume false;
    }
}



// function declaration for _module._default.GetNat
function _module.__default.GetNat(dt#0: DatatypeType) : int
uses {
// consequence axiom for _module.__default.GetNat
axiom 1 <= $FunctionContextHeight
   ==> (forall dt#0: DatatypeType :: 
    { _module.__default.GetNat(dt#0) } 
    _module.__default.GetNat#canCall(dt#0)
         || (1 < $FunctionContextHeight && $Is(dt#0, Tclass._module.Dt()))
       ==> LitInt(0) <= _module.__default.GetNat(dt#0));
// definition axiom for _module.__default.GetNat (revealed)
axiom {:id "id24"} 1 <= $FunctionContextHeight
   ==> (forall dt#0: DatatypeType :: 
    { _module.__default.GetNat(dt#0) } 
    _module.__default.GetNat#canCall(dt#0)
         || (1 < $FunctionContextHeight && $Is(dt#0, Tclass._module.Dt()))
       ==> _module.Dt.Make_q(dt#0)
         && _module.__default.GetNat(dt#0) == (var y#0 := _module.Dt.d(dt#0); y#0));
// definition axiom for _module.__default.GetNat for all literals (revealed)
axiom {:id "id25"} 1 <= $FunctionContextHeight
   ==> (forall dt#0: DatatypeType :: 
    {:weight 3} { _module.__default.GetNat(Lit(dt#0)) } 
    _module.__default.GetNat#canCall(Lit(dt#0))
         || (1 < $FunctionContextHeight && $Is(dt#0, Tclass._module.Dt()))
       ==> _module.Dt.Make_q(Lit(dt#0))
         && _module.__default.GetNat(Lit(dt#0))
           == (var y#2 := LitInt(_module.Dt.d(Lit(dt#0))); y#2));
}

function _module.__default.GetNat#canCall(dt#0: DatatypeType) : bool;

function Tclass._module.Dt() : Ty
uses {
// Tclass._module.Dt Tag
axiom Tag(Tclass._module.Dt()) == Tagclass._module.Dt
   && TagFamily(Tclass._module.Dt()) == tytagFamily$Dt;
}

const unique Tagclass._module.Dt: TyTag;

// Box/unbox axiom for Tclass._module.Dt
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Dt()) } 
  $IsBox(bx, Tclass._module.Dt())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Dt()));

function _module.__default.GetNat#requires(DatatypeType) : bool;

// #requires axiom for _module.__default.GetNat
axiom (forall dt#0: DatatypeType :: 
  { _module.__default.GetNat#requires(dt#0) } 
  $Is(dt#0, Tclass._module.Dt())
     ==> _module.__default.GetNat#requires(dt#0) == true);

procedure {:verboseName "GetNat (well-formedness)"} CheckWellformed$$_module.__default.GetNat(dt#0: DatatypeType where $Is(dt#0, Tclass._module.Dt()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GetNat (well-formedness)"} CheckWellformed$$_module.__default.GetNat(dt#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: int;
  var y#Z#0: int;
  var let#0#0#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume LitInt(0) <= _module.__default.GetNat(dt#0);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (dt#0 == #_module.Dt.Make(_mcc#0#0))
        {
            havoc y#Z#0;
            assume {:id "id26"} let#0#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, TInt);
            assume {:id "id27"} y#Z#0 == let#0#0#0;
            assert {:id "id28"} $Is(y#Z#0, Tclass._System.nat());
            assume {:id "id29"} _module.__default.GetNat(dt#0) == y#Z#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.GetNat(dt#0), Tclass._System.nat());
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.BigStep
function _module.__default.BigStep($ly: LayerType, c#0: DatatypeType, s#0: int, t#0: int) : bool
uses {
// definition axiom for _module.__default.BigStep (revealed)
axiom {:id "id30"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, c#0: DatatypeType, s#0: int, t#0: int :: 
    { _module.__default.BigStep($LS($ly), c#0, s#0, t#0) } 
    _module.__default.BigStep#canCall(c#0, s#0, t#0)
         || (1 < $FunctionContextHeight && $Is(c#0, Tclass._module.cmd()))
       ==> (!_module.cmd.Inc_q(c#0)
           ==> (_module.cmd.Seq_q(c#0)
               ==> (var c1#1 := _module.cmd._h1(c#0); 
                (var c0#1 := _module.cmd._h0(c#0); 
                  (forall s'#2: int :: 
                    { _module.__default.BigStep($ly, c1#1, s'#2, t#0) } 
                      { _module.__default.BigStep($ly, c0#1, s#0, s'#2) } 
                    _module.__default.BigStep#canCall(c0#1, s#0, s'#2)
                       && (_module.__default.BigStep($ly, c0#1, s#0, s'#2)
                         ==> _module.__default.BigStep#canCall(c1#1, s'#2, t#0))))))
             && (!_module.cmd.Seq_q(c#0)
               ==> (var body#1 := _module.cmd._h2(c#0); 
                s#0 != t#0
                   ==> (forall s'#3: int :: 
                    { _module.__default.BigStep($ly, c#0, s'#3, t#0) } 
                      { _module.__default.BigStep($ly, body#1, s#0, s'#3) } 
                    _module.__default.BigStep#canCall(body#1, s#0, s'#3)
                       && (_module.__default.BigStep($ly, body#1, s#0, s'#3)
                         ==> _module.__default.BigStep#canCall(c#0, s'#3, t#0))))))
         && _module.__default.BigStep($LS($ly), c#0, s#0, t#0)
           == (if _module.cmd.Inc_q(c#0)
             then t#0 == s#0 + 1
             else (if _module.cmd.Seq_q(c#0)
               then (var c1#0 := _module.cmd._h1(c#0); 
                (var c0#0 := _module.cmd._h0(c#0); 
                  (exists s'#0: int :: 
                    { _module.__default.BigStep($ly, c1#0, s'#0, t#0) } 
                      { _module.__default.BigStep($ly, c0#0, s#0, s'#0) } 
                    _module.__default.BigStep($ly, c0#0, s#0, s'#0)
                       && _module.__default.BigStep($ly, c1#0, s'#0, t#0))))
               else (var body#0 := _module.cmd._h2(c#0); 
                s#0 == t#0
                   || (exists s'#1: int :: 
                    { _module.__default.BigStep($ly, c#0, s'#1, t#0) } 
                      { _module.__default.BigStep($ly, body#0, s#0, s'#1) } 
                    _module.__default.BigStep($ly, body#0, s#0, s'#1)
                       && _module.__default.BigStep($ly, c#0, s'#1, t#0))))));
}

function _module.__default.BigStep#canCall(c#0: DatatypeType, s#0: int, t#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, c#0: DatatypeType, s#0: int, t#0: int :: 
  { _module.__default.BigStep($LS($ly), c#0, s#0, t#0) } 
  _module.__default.BigStep($LS($ly), c#0, s#0, t#0)
     == _module.__default.BigStep($ly, c#0, s#0, t#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, c#0: DatatypeType, s#0: int, t#0: int :: 
  { _module.__default.BigStep(AsFuelBottom($ly), c#0, s#0, t#0) } 
  _module.__default.BigStep($ly, c#0, s#0, t#0)
     == _module.__default.BigStep($LZ, c#0, s#0, t#0));

function Tclass._module.cmd() : Ty
uses {
// Tclass._module.cmd Tag
axiom Tag(Tclass._module.cmd()) == Tagclass._module.cmd
   && TagFamily(Tclass._module.cmd()) == tytagFamily$cmd;
}

const unique Tagclass._module.cmd: TyTag;

// Box/unbox axiom for Tclass._module.cmd
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.cmd()) } 
  $IsBox(bx, Tclass._module.cmd())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.cmd()));

function _module.__default.BigStep#requires(LayerType, DatatypeType, int, int) : bool;

// #requires axiom for _module.__default.BigStep
axiom (forall $ly: LayerType, c#0: DatatypeType, s#0: int, t#0: int :: 
  { _module.__default.BigStep#requires($ly, c#0, s#0, t#0) } 
  $Is(c#0, Tclass._module.cmd())
     ==> _module.__default.BigStep#requires($ly, c#0, s#0, t#0) == true);

// 1st prefix predicate axiom for _module.__default.BigStep_h
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, c#0: DatatypeType, s#0: int, t#0: int :: 
    { _module.__default.BigStep($LS($ly), c#0, s#0, t#0) } 
    $Is(c#0, Tclass._module.cmd())
         && _module.__default.BigStep($LS($ly), c#0, s#0, t#0)
       ==> (exists _k#0: Box :: 
        { _module.__default.BigStep_h($LS($ly), _k#0, c#0, s#0, t#0) } 
        _module.__default.BigStep_h($LS($ly), _k#0, c#0, s#0, t#0)));

// 2nd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, c#0: DatatypeType, s#0: int, t#0: int :: 
    { _module.__default.BigStep($LS($ly), c#0, s#0, t#0) } 
    $Is(c#0, Tclass._module.cmd())
         && (exists _k#0: Box :: 
          { _module.__default.BigStep_h($LS($ly), _k#0, c#0, s#0, t#0) } 
          _module.__default.BigStep_h($LS($ly), _k#0, c#0, s#0, t#0))
       ==> _module.__default.BigStep($LS($ly), c#0, s#0, t#0));

// 3rd prefix predicate axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, c#0: DatatypeType, s#0: int, t#0: int, _k#0: Box :: 
    { _module.__default.BigStep_h($ly, _k#0, c#0, s#0, t#0) } 
    $Is(c#0, Tclass._module.cmd()) && _k#0 == ORD#FromNat(0)
       ==> !_module.__default.BigStep_h($ly, _k#0, c#0, s#0, t#0));

// targeted prefix predicate monotonicity axiom
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, 
      c#0: DatatypeType, 
      s#0: int, 
      t#0: int, 
      _k#0: Box, 
      _m: Box, 
      _limit: Box :: 
    { _module.__default.BigStep_h($ly, _k#0, c#0, s#0, t#0), ORD#LessThanLimit(_k#0, _limit), ORD#LessThanLimit(_m, _limit) } 
    ORD#Less(_k#0, _m)
       ==> 
      _module.__default.BigStep_h($ly, _k#0, c#0, s#0, t#0)
       ==> _module.__default.BigStep_h($ly, _m, c#0, s#0, t#0));

procedure {:verboseName "BigStep (well-formedness)"} CheckWellformed$$_module.__default.BigStep(c#0: DatatypeType where $Is(c#0, Tclass._module.cmd()), s#0: int, t#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.BigStep#
function _module.__default.BigStep_h($ly: LayerType, _k#0: Box, c#0: DatatypeType, s#0: int, t#0: int) : bool
uses {
// definition axiom for _module.__default.BigStep_h (revealed)
axiom {:id "id40"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, c#0: DatatypeType, s#0: int, t#0: int :: 
    { _module.__default.BigStep_h($LS($ly), _k#0, c#0, s#0, t#0) } 
    _module.__default.BigStep_h#canCall(_k#0, c#0, s#0, t#0)
         || (2 < $FunctionContextHeight && $Is(c#0, Tclass._module.cmd()))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          !_module.cmd.Inc_q(c#0)
           ==> (_module.cmd.Seq_q(c#0)
               ==> (var c1#3 := _module.cmd._h1(c#0); 
                (var c0#3 := _module.cmd._h0(c#0); 
                  (forall s'#10: int :: 
                    { _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c1#3, s'#10, t#0) } 
                      { _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c0#3, s#0, s'#10) } 
                    _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c0#3, s#0, s'#10)
                       && (_module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c0#3, s#0, s'#10)
                         ==> _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c1#3, s'#10, t#0))))))
             && (!_module.cmd.Seq_q(c#0)
               ==> (var body#3 := _module.cmd._h2(c#0); 
                s#0 != t#0
                   ==> (forall s'#11: int :: 
                    { _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#11, t#0) } 
                      { _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), body#3, s#0, s'#11) } 
                    _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), body#3, s#0, s'#11)
                       && (_module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), body#3, s#0, s'#11)
                         ==> _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#11, t#0))))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.cmd.Inc_q(c#0)
             then t#0 == s#0 + 1
             else (if _module.cmd.Seq_q(c#0)
               then (var c1#4 := _module.cmd._h1(c#0); 
                (var c0#4 := _module.cmd._h0(c#0); 
                  (exists s'#12: int :: 
                    { _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c1#4, s'#12, t#0) } 
                      { _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c0#4, s#0, s'#12) } 
                    _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c0#4, s#0, s'#12)
                       && _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c1#4, s'#12, t#0))))
               else (var body#4 := _module.cmd._h2(c#0); 
                s#0 == t#0
                   || (exists s'#13: int :: 
                    { _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#13, t#0) } 
                      { _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), body#4, s#0, s'#13) } 
                    _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), body#4, s#0, s'#13)
                       && _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#13, t#0))))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#0: Box :: 
            { _module.__default.BigStep_h($ly, _k'#0, c#0, s#0, t#0) } 
            ORD#LessThanLimit(_k'#0, _k#0)
               ==> _module.__default.BigStep_h#canCall(_k'#0, c#0, s#0, t#0)))
         && _module.__default.BigStep_h($LS($ly), _k#0, c#0, s#0, t#0)
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.cmd.Inc_q(c#0)
                 then t#0 == s#0 + 1
                 else (if _module.cmd.Seq_q(c#0)
                   then (var c1#2 := _module.cmd._h1(c#0); 
                    (var c0#2 := _module.cmd._h0(c#0); 
                      (exists s'#8: int :: 
                        { _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c1#2, s'#8, t#0) } 
                          { _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c0#2, s#0, s'#8) } 
                        _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c0#2, s#0, s'#8)
                           && _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c1#2, s'#8, t#0))))
                   else (var body#2 := _module.cmd._h2(c#0); 
                    s#0 == t#0
                       || (exists s'#9: int :: 
                        { _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#9, t#0) } 
                          { _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), body#2, s#0, s'#9) } 
                        _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), body#2, s#0, s'#9)
                           && _module.__default.BigStep_h($ly, ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#9, t#0))))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (exists _k'#0: Box :: 
                { _module.__default.BigStep_h($ly, _k'#0, c#0, s#0, t#0) } 
                ORD#LessThanLimit(_k'#0, _k#0)
                   && _module.__default.BigStep_h($ly, _k'#0, c#0, s#0, t#0)))));
// definition axiom for _module.__default.BigStep_h for decreasing-related literals (revealed)
axiom {:id "id41"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, c#0: DatatypeType, s#0: int, t#0: int :: 
    {:weight 3} { _module.__default.BigStep_h($LS($ly), Lit(_k#0), c#0, s#0, t#0) } 
    _module.__default.BigStep_h#canCall(Lit(_k#0), c#0, s#0, t#0)
         || (2 < $FunctionContextHeight && $Is(c#0, Tclass._module.cmd()))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          !_module.cmd.Inc_q(c#0)
           ==> (_module.cmd.Seq_q(c#0)
               ==> (var c1#6 := _module.cmd._h1(c#0); 
                (var c0#6 := _module.cmd._h0(c#0); 
                  (forall s'#16: int :: 
                    { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c1#6, s'#16, t#0) } 
                      { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#0, s'#16) } 
                    _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#0, s'#16)
                       && (_module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#0, s'#16)
                         ==> _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c1#6, s'#16, t#0))))))
             && (!_module.cmd.Seq_q(c#0)
               ==> (var body#6 := _module.cmd._h2(c#0); 
                s#0 != t#0
                   ==> (forall s'#17: int :: 
                    { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#17, t#0) } 
                      { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#0, s'#17) } 
                    _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#0, s'#17)
                       && (_module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#0, s'#17)
                         ==> _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#17, t#0))))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.cmd.Inc_q(c#0)
             then t#0 == s#0 + 1
             else (if _module.cmd.Seq_q(c#0)
               then (var c1#7 := _module.cmd._h1(c#0); 
                (var c0#7 := _module.cmd._h0(c#0); 
                  (exists s'#18: int :: 
                    { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c1#7, s'#18, t#0) } 
                      { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c0#7, s#0, s'#18) } 
                    _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c0#7, s#0, s'#18)
                       && _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c1#7, s'#18, t#0))))
               else (var body#7 := _module.cmd._h2(c#0); 
                s#0 == t#0
                   || (exists s'#19: int :: 
                    { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#19, t#0) } 
                      { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), body#7, s#0, s'#19) } 
                    _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), body#7, s#0, s'#19)
                       && _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#19, t#0))))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#1: Box :: 
            { _module.__default.BigStep_h($LS($ly), _k'#1, c#0, s#0, t#0) } 
            ORD#LessThanLimit(_k'#1, _k#0)
               ==> _module.__default.BigStep_h#canCall(_k'#1, c#0, s#0, t#0)))
         && _module.__default.BigStep_h($LS($ly), Lit(_k#0), c#0, s#0, t#0)
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.cmd.Inc_q(c#0)
                 then t#0 == s#0 + 1
                 else (if _module.cmd.Seq_q(c#0)
                   then (var c1#5 := _module.cmd._h1(c#0); 
                    (var c0#5 := _module.cmd._h0(c#0); 
                      (exists s'#14: int :: 
                        { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c1#5, s'#14, t#0) } 
                          { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c0#5, s#0, s'#14) } 
                        _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c0#5, s#0, s'#14)
                           && _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c1#5, s'#14, t#0))))
                   else (var body#5 := _module.cmd._h2(c#0); 
                    s#0 == t#0
                       || (exists s'#15: int :: 
                        { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#15, t#0) } 
                          { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), body#5, s#0, s'#15) } 
                        _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), body#5, s#0, s'#15)
                           && _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#15, t#0))))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (exists _k'#1: Box :: 
                { _module.__default.BigStep_h($LS($ly), _k'#1, c#0, s#0, t#0) } 
                ORD#LessThanLimit(_k'#1, _k#0)
                   && _module.__default.BigStep_h($LS($ly), _k'#1, c#0, s#0, t#0)))));
// definition axiom for _module.__default.BigStep_h for all literals (revealed)
axiom {:id "id42"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, _k#0: Box, c#0: DatatypeType, s#0: int, t#0: int :: 
    {:weight 3} { _module.__default.BigStep_h($LS($ly), Lit(_k#0), Lit(c#0), LitInt(s#0), LitInt(t#0)) } 
    _module.__default.BigStep_h#canCall(Lit(_k#0), Lit(c#0), LitInt(s#0), LitInt(t#0))
         || (2 < $FunctionContextHeight && $Is(c#0, Tclass._module.cmd()))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          !Lit(_module.cmd.Inc_q(Lit(c#0)))
           ==> (Lit(_module.cmd.Seq_q(Lit(c#0)))
               ==> (var c1#9 := Lit(_module.cmd._h1(Lit(c#0))); 
                (var c0#9 := Lit(_module.cmd._h0(Lit(c#0))); 
                  (forall s'#22: int :: 
                    { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c1#9, s'#22, t#0) } 
                      { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c0#9, s#0, s'#22) } 
                    _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c0#9, LitInt(s#0), s'#22)
                       && (_module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c0#9, LitInt(s#0), s'#22)
                         ==> _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c1#9, s'#22, LitInt(t#0)))))))
             && (!Lit(_module.cmd.Seq_q(Lit(c#0)))
               ==> (var body#9 := Lit(_module.cmd._h2(Lit(c#0))); 
                LitInt(s#0) != LitInt(t#0)
                   ==> (forall s'#23: int :: 
                    { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#23, t#0) } 
                      { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), body#9, s#0, s'#23) } 
                    _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), body#9, LitInt(s#0), s'#23)
                       && (_module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), body#9, LitInt(s#0), s'#23)
                         ==> _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), Lit(c#0), s'#23, LitInt(t#0)))))))
         && (
          (0 < ORD#Offset(_k#0)
           ==> (if _module.cmd.Inc_q(Lit(c#0))
             then LitInt(t#0) == LitInt(s#0 + 1)
             else (if _module.cmd.Seq_q(Lit(c#0))
               then (var c1#10 := Lit(_module.cmd._h1(Lit(c#0))); 
                (var c0#10 := Lit(_module.cmd._h0(Lit(c#0))); 
                  (exists s'#24: int :: 
                    { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c1#10, s'#24, t#0) } 
                      { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c0#10, s#0, s'#24) } 
                    _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c0#10, LitInt(s#0), s'#24)
                       && _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c1#10, s'#24, LitInt(t#0)))))
               else (var body#10 := Lit(_module.cmd._h2(Lit(c#0))); 
                LitInt(s#0) == LitInt(t#0)
                   || (exists s'#25: int :: 
                    { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#25, t#0) } 
                      { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), body#10, s#0, s'#25) } 
                    _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), body#10, LitInt(s#0), s'#25)
                       && _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), Lit(c#0), s'#25, LitInt(t#0)))))))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#2: Box :: 
            { _module.__default.BigStep_h($LS($ly), _k'#2, c#0, s#0, t#0) } 
            ORD#LessThanLimit(_k'#2, _k#0)
               ==> _module.__default.BigStep_h#canCall(_k'#2, c#0, s#0, t#0)))
         && _module.__default.BigStep_h($LS($ly), Lit(_k#0), Lit(c#0), LitInt(s#0), LitInt(t#0))
           == ((0 < ORD#Offset(_k#0)
               ==> (if _module.cmd.Inc_q(Lit(c#0))
                 then LitInt(t#0) == LitInt(s#0 + 1)
                 else (if _module.cmd.Seq_q(Lit(c#0))
                   then (var c1#8 := Lit(_module.cmd._h1(Lit(c#0))); 
                    (var c0#8 := Lit(_module.cmd._h0(Lit(c#0))); 
                      (exists s'#20: int :: 
                        { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c1#8, s'#20, t#0) } 
                          { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c0#8, s#0, s'#20) } 
                        _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c0#8, LitInt(s#0), s'#20)
                           && _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c1#8, s'#20, LitInt(t#0)))))
                   else (var body#8 := Lit(_module.cmd._h2(Lit(c#0))); 
                    LitInt(s#0) == LitInt(t#0)
                       || (exists s'#21: int :: 
                        { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), c#0, s'#21, t#0) } 
                          { _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), body#8, s#0, s'#21) } 
                        _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), body#8, LitInt(s#0), s'#21)
                           && _module.__default.BigStep_h($LS($ly), ORD#Minus(_k#0, ORD#FromNat(1)), Lit(c#0), s'#21, LitInt(t#0)))))))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (exists _k'#2: Box :: 
                { _module.__default.BigStep_h($LS($ly), _k'#2, c#0, s#0, t#0) } 
                ORD#LessThanLimit(_k'#2, _k#0)
                   && _module.__default.BigStep_h($LS($ly), _k'#2, c#0, s#0, t#0)))));
}

function _module.__default.BigStep_h#canCall(_k#0: Box, c#0: DatatypeType, s#0: int, t#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, c#0: DatatypeType, s#0: int, t#0: int :: 
  { _module.__default.BigStep_h($LS($ly), _k#0, c#0, s#0, t#0) } 
  _module.__default.BigStep_h($LS($ly), _k#0, c#0, s#0, t#0)
     == _module.__default.BigStep_h($ly, _k#0, c#0, s#0, t#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, _k#0: Box, c#0: DatatypeType, s#0: int, t#0: int :: 
  { _module.__default.BigStep_h(AsFuelBottom($ly), _k#0, c#0, s#0, t#0) } 
  _module.__default.BigStep_h($ly, _k#0, c#0, s#0, t#0)
     == _module.__default.BigStep_h($LZ, _k#0, c#0, s#0, t#0));

function _module.__default.BigStep_h#requires(LayerType, Box, DatatypeType, int, int) : bool;

// #requires axiom for _module.__default.BigStep_h
axiom (forall $ly: LayerType, _k#0: Box, c#0: DatatypeType, s#0: int, t#0: int :: 
  { _module.__default.BigStep_h#requires($ly, _k#0, c#0, s#0, t#0) } 
  $Is(c#0, Tclass._module.cmd())
     ==> _module.__default.BigStep_h#requires($ly, _k#0, c#0, s#0, t#0) == true);

procedure {:verboseName "BadMonotonic1 (well-formedness)"} CheckWellFormed$$_module.__default.BadMonotonic1(c#0: DatatypeType
       where $Is(c#0, Tclass._module.cmd())
         && $IsAlloc(c#0, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#0), 
    s#0: int, 
    t#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BadMonotonic1 (call)"} Call$$_module.__default.BadMonotonic1(c#0: DatatypeType
       where $Is(c#0, Tclass._module.cmd())
         && $IsAlloc(c#0, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#0), 
    s#0: int, 
    t#0: int);
  // user-defined preconditions
  requires {:id "id45"} _module.__default.BigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.BigStep($LS($LZ), c#0, s#0, t#0)
       || (_module.cmd.Inc_q(c#0) ==> t#0 == s#0 + 1);
  requires {:id "id46"} _module.__default.BigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.BigStep($LS($LZ), c#0, s#0, t#0)
       || (!_module.cmd.Inc_q(c#0)
         ==> 
        _module.cmd.Seq_q(c#0)
         ==> (var c1#0 := _module.cmd._h1(c#0); 
          (var c0#0 := _module.cmd._h0(c#0); 
            (exists s'#0: int :: 
              { _module.__default.BigStep($LS($LZ), c1#0, s'#0, t#0) } 
                { _module.__default.BigStep($LS($LZ), c0#0, s#0, s'#0) } 
              _module.__default.BigStep($LS($LZ), c0#0, s#0, s'#0)
                 && _module.__default.BigStep($LS($LZ), c1#0, s'#0, t#0)))));
  requires {:id "id47"} _module.__default.BigStep#canCall(c#0, s#0, t#0)
     ==> _module.__default.BigStep($LS($LZ), c#0, s#0, t#0)
       || (!_module.cmd.Inc_q(c#0)
         ==> 
        !_module.cmd.Seq_q(c#0)
         ==> (var body#0 := _module.cmd._h2(c#0); 
          s#0 == t#0
             || (exists s'#1: int :: 
              { _module.__default.BigStep($LS($LS($LZ)), c#0, s'#1, t#0) } 
                { _module.__default.BigStep($LS($LS($LZ)), body#0, s#0, s'#1) } 
              _module.__default.BigStep($LS($LS($LZ)), body#0, s#0, s'#1)
                 && _module.__default.BigStep($LS($LS($LZ)), c#0, s'#1, t#0))));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id48"} s#0 == t#0;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "BadMonotonic1# (co-call)"} CoCall$$_module.__default.BadMonotonic1_h(_k#0: Box, 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.cmd())
         && $IsAlloc(c#1, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#1), 
    s#1: int, 
    t#1: int);
  // user-defined preconditions
  requires {:id "id49"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (0 < ORD#Offset(_k#0) ==> _module.cmd.Inc_q(c#1) ==> t#1 == s#1 + 1);
  requires {:id "id50"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (0 < ORD#Offset(_k#0)
         ==> 
        !_module.cmd.Inc_q(c#1)
         ==> 
        _module.cmd.Seq_q(c#1)
         ==> (var c1#2 := _module.cmd._h1(c#1); 
          (var c0#2 := _module.cmd._h0(c#1); 
            (exists s'#4: int :: 
              { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#2, s'#4, t#1) } 
                { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#2, s#1, s'#4) } 
              _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#2, s#1, s'#4)
                 && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#2, s'#4, t#1)))));
  requires {:id "id51"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (0 < ORD#Offset(_k#0)
         ==> 
        !_module.cmd.Inc_q(c#1)
         ==> 
        !_module.cmd.Seq_q(c#1)
         ==> (var body#2 := _module.cmd._h2(c#1); 
          s#1 == t#1
             || (exists s'#5: int :: 
              { _module.__default.BigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#5, t#1) } 
                { _module.__default.BigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), body#2, s#1, s'#5) } 
              _module.__default.BigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), body#2, s#1, s'#5)
                 && _module.__default.BigStep_h($LS($LS($LZ)), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#5, t#1))));
  requires {:id "id52"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     ==> _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (exists _k'#0: Box :: 
          { _module.__default.BigStep_h($LS($LZ), _k'#0, c#1, s#1, t#1) } 
          ORD#LessThanLimit(_k'#0, _k#0)
             && _module.__default.BigStep_h($LS($LZ), _k'#0, c#1, s#1, t#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id53"} s#1 == t#1;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "BadMonotonic1# (correctness)"} Impl$$_module.__default.BadMonotonic1_h(_k#0: Box, 
    c#1: DatatypeType
       where $Is(c#1, Tclass._module.cmd())
         && $IsAlloc(c#1, Tclass._module.cmd(), $Heap)
         && $IsA#_module.cmd(c#1), 
    s#1: int, 
    t#1: int)
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id54"} _module.__default.BigStep_h#canCall(_k#0, c#1, s#1, t#1)
     && 
    _module.__default.BigStep_h($LS($LZ), _k#0, c#1, s#1, t#1)
     && 
    (0 < ORD#Offset(_k#0)
       ==> (if _module.cmd.Inc_q(c#1)
         then t#1 == s#1 + 1
         else (if _module.cmd.Seq_q(c#1)
           then (var c1#5 := _module.cmd._h1(c#1); 
            (var c0#5 := _module.cmd._h0(c#1); 
              (exists s'#10: int :: 
                { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#5, s'#10, t#1) } 
                  { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#5, s#1, s'#10) } 
                _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#5, s#1, s'#10)
                   && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#5, s'#10, t#1))))
           else (var body#5 := _module.cmd._h2(c#1); 
            s#1 == t#1
               || (exists s'#11: int :: 
                { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#11, t#1) } 
                  { _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#5, s#1, s'#11) } 
                _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#5, s#1, s'#11)
                   && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#11, t#1))))))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (exists _k'#1: Box :: 
        { _module.__default.BigStep_h($LS($LZ), _k'#1, c#1, s#1, t#1) } 
        ORD#LessThanLimit(_k'#1, _k#0)
           && _module.__default.BigStep_h($LS($LZ), _k'#1, c#1, s#1, t#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id55"} s#1 == t#1;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BadMonotonic1# (correctness)"} Impl$$_module.__default.BadMonotonic1_h(_k#0: Box, c#1: DatatypeType, s#1: int, t#1: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#2#0: DatatypeType;
  var body#6: DatatypeType;
  var let#0_0_0#0#0: DatatypeType;
  var s'#12: int;
  var s'#13: int;
  var ##_k#0: Box;
  var ##c#1: DatatypeType;
  var ##s#1: int;
  var ##t#1: int;
  var ##_k#1: Box;
  var ##c#2: DatatypeType;
  var ##s#2: int;
  var ##t#2: int;
  var _k##0: Box;
  var c##0: DatatypeType;
  var s##0: int;
  var t##0: int;
  var _k##1: Box;
  var c##1: DatatypeType;
  var s##1: int;
  var t##1: int;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var c1#6: DatatypeType;
  var let#0_1_0#0#0: DatatypeType;
  var c0#6: DatatypeType;
  var let#0_1_1#0#0: DatatypeType;
  var s'#14: int;
  var s'#15: int;
  var ##_k#2: Box;
  var ##c#3: DatatypeType;
  var ##s#3: int;
  var ##t#3: int;
  var ##_k#3: Box;
  var ##c#4: DatatypeType;
  var ##s#4: int;
  var ##t#4: int;
  var _k##2: Box;
  var c##2: DatatypeType;
  var s##2: int;
  var t##2: int;
  var _k##3: Box;
  var c##3: DatatypeType;
  var s##3: int;
  var t##3: int;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: BadMonotonic1#, Impl$$_module.__default.BadMonotonic1_h
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.cmd(c#1);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#c0#0: DatatypeType, $ih#s0#0: int, $ih#t0#0: int :: 
      { _module.__default.BigStep_h($LS($LZ), $ih#_k0#0, $ih#c0#0, $ih#s0#0, $ih#t0#0) } 
      $Is($ih#c0#0, Tclass._module.cmd())
           && _module.__default.BigStep_h($LS($LZ), $ih#_k0#0, $ih#c0#0, $ih#s0#0, $ih#t0#0)
           && (ORD#Less($ih#_k0#0, _k#0)
             || ($ih#_k0#0 == _k#0
               && (DtRank($ih#c0#0) < DtRank(c#1)
                 || (DtRank($ih#c0#0) == DtRank(c#1)
                   && ((0 <= $ih#s0#0 && $ih#s0#0 < s#1)
                     || ($ih#s0#0 == s#1 && 0 <= $ih#t0#0 && $ih#t0#0 < t#1))))))
         ==> $ih#s0#0 == $ih#t0#0);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatchingErrors.dfy(76,1)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
        assume true;
        havoc _mcc#2#0;
        havoc _mcc#0#0, _mcc#1#0;
        if (c#1 == #_module.cmd.Inc())
        {
        }
        else if (c#1 == #_module.cmd.Seq(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.cmd())
               && $IsAlloc(_mcc#0#0, Tclass._module.cmd(), $Heap);
            assume $Is(_mcc#1#0, Tclass._module.cmd())
               && $IsAlloc(_mcc#1#0, Tclass._module.cmd(), $Heap);
            havoc c1#6;
            assume $Is(c1#6, Tclass._module.cmd()) && $IsAlloc(c1#6, Tclass._module.cmd(), $Heap);
            assume {:id "id70"} let#0_1_0#0#0 == _mcc#1#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_1_0#0#0, Tclass._module.cmd());
            assume {:id "id71"} c1#6 == let#0_1_0#0#0;
            havoc c0#6;
            assume $Is(c0#6, Tclass._module.cmd()) && $IsAlloc(c0#6, Tclass._module.cmd(), $Heap);
            assume {:id "id72"} let#0_1_1#0#0 == _mcc#0#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_1_1#0#0, Tclass._module.cmd());
            assume {:id "id73"} c0#6 == let#0_1_1#0#0;
            // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatchingErrors.dfy(80,12)
            havoc s'#15;
            if (true)
            {
                assert {:id "id74"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assert {:id "id75"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                ##_k#2 := ORD#Minus(_k#0, ORD#FromNat(1));
                // assume allocatedness for argument to function
                assume $IsAlloc(##_k#2, TORDINAL, $Heap);
                ##c#3 := c0#6;
                // assume allocatedness for argument to function
                assume $IsAlloc(##c#3, Tclass._module.cmd(), $Heap);
                ##s#3 := s#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##s#3, TInt, $Heap);
                ##t#3 := s'#15;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#3, TInt, $Heap);
                assume _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#1, s'#15);
                if (_module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#1, s'#15))
                {
                    assert {:id "id76"} ORD#IsNat(Lit(ORD#FromNat(1)));
                    assert {:id "id77"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                    ##_k#3 := ORD#Minus(_k#0, ORD#FromNat(1));
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##_k#3, TORDINAL, $Heap);
                    ##c#4 := c1#6;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##c#4, Tclass._module.cmd(), $Heap);
                    ##s#4 := s'#15;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#4, TInt, $Heap);
                    ##t#4 := t#1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#4, TInt, $Heap);
                    assume _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c1#6, s'#15, t#1);
                }

                assume _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#1, s'#15)
                   && (_module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#1, s'#15)
                     ==> _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c1#6, s'#15, t#1));
            }

            assert {:id "id78"} ($Is(LitInt(0), TInt)
                 && 
                _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#1, LitInt(0))
                 && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#6, LitInt(0), t#1))
               || (exists $as#s'0_1_0#0: int :: 
                _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#1, $as#s'0_1_0#0)
                   && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#6, $as#s'0_1_0#0, t#1));
            havoc s'#14;
            assume {:id "id79"} _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c0#6, s#1, s'#14)
               && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c1#6, s'#14, t#1);
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatchingErrors.dfy(81,18)
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id80"} ORD#IsNat(Lit(ORD#FromNat(1)));
            assert {:id "id81"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            _k##2 := ORD#Minus(_k#0, ORD#FromNat(1));
            assume true;
            // ProcessCallStmt: CheckSubrange
            c##2 := c0#6;
            assume true;
            // ProcessCallStmt: CheckSubrange
            s##2 := s#1;
            assume true;
            // ProcessCallStmt: CheckSubrange
            t##2 := s'#14;
            call {:id "id82"} CoCall$$_module.__default.BadMonotonic1_h(_k##2, c##2, s##2, t##2);
            // TrCallStmt: After ProcessCallStmt
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatchingErrors.dfy(82,18)
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id83"} ORD#IsNat(Lit(ORD#FromNat(1)));
            assert {:id "id84"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            _k##3 := ORD#Minus(_k#0, ORD#FromNat(1));
            assume true;
            // ProcessCallStmt: CheckSubrange
            c##3 := c1#6;
            assume true;
            // ProcessCallStmt: CheckSubrange
            s##3 := s'#14;
            assume true;
            // ProcessCallStmt: CheckSubrange
            t##3 := t#1;
            call {:id "id85"} CoCall$$_module.__default.BadMonotonic1_h(_k##3, c##3, s##3, t##3);
            // TrCallStmt: After ProcessCallStmt
        }
        else if (c#1 == #_module.cmd.Repeat(_mcc#2#0))
        {
            assume $Is(_mcc#2#0, Tclass._module.cmd())
               && $IsAlloc(_mcc#2#0, Tclass._module.cmd(), $Heap);
            havoc body#6;
            assume $Is(body#6, Tclass._module.cmd())
               && $IsAlloc(body#6, Tclass._module.cmd(), $Heap);
            assume {:id "id56"} let#0_0_0#0#0 == _mcc#2#0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_0#0#0, Tclass._module.cmd());
            assume {:id "id57"} body#6 == let#0_0_0#0#0;
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatchingErrors.dfy(84,5)
            assume true;
            if (s#1 == t#1)
            {
            }
            else
            {
                // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatchingErrors.dfy(86,14)
                havoc s'#13;
                if (true)
                {
                    assert {:id "id58"} ORD#IsNat(Lit(ORD#FromNat(1)));
                    assert {:id "id59"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                    ##_k#0 := ORD#Minus(_k#0, ORD#FromNat(1));
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##_k#0, TORDINAL, $Heap);
                    ##c#1 := body#6;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##c#1, Tclass._module.cmd(), $Heap);
                    ##s#1 := s#1;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##s#1, TInt, $Heap);
                    ##t#1 := s'#13;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#1, TInt, $Heap);
                    assume _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#1, s'#13);
                    if (_module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#1, s'#13))
                    {
                        assert {:id "id60"} ORD#IsNat(Lit(ORD#FromNat(1)));
                        assert {:id "id61"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                        ##_k#1 := ORD#Minus(_k#0, ORD#FromNat(1));
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##_k#1, TORDINAL, $Heap);
                        ##c#2 := c#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##c#2, Tclass._module.cmd(), $Heap);
                        ##s#2 := s'#13;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##s#2, TInt, $Heap);
                        ##t#2 := t#1;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##t#2, TInt, $Heap);
                        assume _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#13, t#1);
                    }

                    assume _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#1, s'#13)
                       && (_module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#1, s'#13)
                         ==> _module.__default.BigStep_h#canCall(ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#13, t#1));
                }

                assert {:id "id62"} ($Is(LitInt(0), TInt)
                     && 
                    _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#1, LitInt(0))
                     && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, LitInt(0), t#1))
                   || (exists $as#s'0_0_1_0#0: int :: 
                    _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#1, $as#s'0_0_1_0#0)
                       && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, $as#s'0_0_1_0#0, t#1));
                havoc s'#12;
                assume {:id "id63"} _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), body#6, s#1, s'#12)
                   && _module.__default.BigStep_h($LS($LZ), ORD#Minus(_k#0, ORD#FromNat(1)), c#1, s'#12, t#1);
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatchingErrors.dfy(87,20)
                // TrCallStmt: Before ProcessCallStmt
                assert {:id "id64"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assert {:id "id65"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                assume true;
                // ProcessCallStmt: CheckSubrange
                _k##0 := ORD#Minus(_k#0, ORD#FromNat(1));
                assume true;
                // ProcessCallStmt: CheckSubrange
                c##0 := body#6;
                assume true;
                // ProcessCallStmt: CheckSubrange
                s##0 := s#1;
                assume true;
                // ProcessCallStmt: CheckSubrange
                t##0 := s'#12;
                call {:id "id66"} CoCall$$_module.__default.BadMonotonic1_h(_k##0, c##0, s##0, t##0);
                // TrCallStmt: After ProcessCallStmt
                // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatchingErrors.dfy(88,20)
                // TrCallStmt: Before ProcessCallStmt
                assert {:id "id67"} ORD#IsNat(Lit(ORD#FromNat(1)));
                assert {:id "id68"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(_k#0);
                assume true;
                // ProcessCallStmt: CheckSubrange
                _k##1 := ORD#Minus(_k#0, ORD#FromNat(1));
                assume true;
                // ProcessCallStmt: CheckSubrange
                c##1 := c#1;
                assume true;
                // ProcessCallStmt: CheckSubrange
                s##1 := s'#12;
                assume true;
                // ProcessCallStmt: CheckSubrange
                t##1 := t#1;
                call {:id "id69"} CoCall$$_module.__default.BadMonotonic1_h(_k##1, c##1, s##1, t##1);
                // TrCallStmt: After ProcessCallStmt
            }
        }
        else
        {
            assume false;
        }
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatchingErrors.dfy(76,1)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#2: Box, c#2: DatatypeType, s#2: int, t#2: int :: 
          { _module.__default.BigStep_h($LS($LZ), _k'#2, c#2, s#2, t#2) } 
          $Is(c#2, Tclass._module.cmd())
               && 
              ORD#Less(_k'#2, _k#0)
               && _module.__default.BigStep_h($LS($LZ), _k'#2, c#2, s#2, t#2)
             ==> s#2 == t#2);
    }
}



procedure {:verboseName "PostTest (well-formedness)"} CheckWellFormed$$_module.__default.PostTest(xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(TInt))
         && $IsAlloc(xs#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(xs#0))
   returns (r#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PostTest (call)"} Call$$_module.__default.PostTest(xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(TInt))
         && $IsAlloc(xs#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(xs#0))
   returns (r#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id87"} r#0 == LitInt(0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PostTest (correctness)"} Impl$$_module.__default.PostTest(xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(TInt))
         && $IsAlloc(xs#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(xs#0))
   returns (r#0: int, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id88"} r#0 == LitInt(0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PostTest (correctness)"} Impl$$_module.__default.PostTest(xs#0: DatatypeType) returns (r#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _mcc#0#0_0: int;
  var _mcc#1#0_0: DatatypeType;
  var _mcc#2#0_0_0: int;
  var _mcc#3#0_0_0: DatatypeType;
  var zs#0_0_0: DatatypeType;
  var let#0_0_0#0#0: DatatypeType;
  var z#0_0_0: int;
  var let#0_0_1#0#0: int;
  var y#0_0_0: int;
  var let#0_0_2#0#0: int;
  var y#0_1_0: int;
  var let#0_1_0#0#0: int;

    // AddMethodImpl: PostTest, Impl$$_module.__default.PostTest
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    assume true;
    havoc _mcc#0#0_0, _mcc#1#0_0;
    if (xs#0 == #_module.List.Nil())
    {
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatchingErrors.dfy(101,17)
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatchingErrors.dfy(101,17)
        assume true;
        assume true;
        r#0 := LitInt(0);
        return;
    }
    else if (xs#0 == #_module.List.Cons($Box(_mcc#0#0_0), _mcc#1#0_0))
    {
        assume $Is(_mcc#1#0_0, Tclass._module.List(TInt))
           && $IsAlloc(_mcc#1#0_0, Tclass._module.List(TInt), $Heap);
        assume true;
        havoc _mcc#2#0_0_0, _mcc#3#0_0_0;
        if (_mcc#1#0_0 == #_module.List.Nil())
        {
            havoc y#0_1_0;
            assume {:id "id96"} let#0_1_0#0#0 == _mcc#0#0_0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_1_0#0#0, TInt);
            assume {:id "id97"} y#0_1_0 == let#0_1_0#0#0;
            // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatchingErrors.dfy(100,26)
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatchingErrors.dfy(100,26)
            assume true;
            assume true;
            r#0 := LitInt(0);
            return;
        }
        else if (_mcc#1#0_0 == #_module.List.Cons($Box(_mcc#2#0_0_0), _mcc#3#0_0_0))
        {
            assume $Is(_mcc#3#0_0_0, Tclass._module.List(TInt))
               && $IsAlloc(_mcc#3#0_0_0, Tclass._module.List(TInt), $Heap);
            havoc zs#0_0_0;
            assume $Is(zs#0_0_0, Tclass._module.List(TInt))
               && $IsAlloc(zs#0_0_0, Tclass._module.List(TInt), $Heap);
            assume {:id "id89"} let#0_0_0#0#0 == _mcc#3#0_0_0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_0#0#0, Tclass._module.List(TInt));
            assume {:id "id90"} zs#0_0_0 == let#0_0_0#0#0;
            havoc z#0_0_0;
            assume {:id "id91"} let#0_0_1#0#0 == _mcc#2#0_0_0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_1#0#0, TInt);
            assume {:id "id92"} z#0_0_0 == let#0_0_1#0#0;
            havoc y#0_0_0;
            assume {:id "id93"} let#0_0_2#0#0 == _mcc#0#0_0;
            assume true;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0_0_2#0#0, TInt);
            assume {:id "id94"} y#0_0_0 == let#0_0_2#0#0;
            // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatchingErrors.dfy(99,34)
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/PatternMatchingErrors.dfy(99,34)
            assume true;
            assume true;
            r#0 := z#0_0_0;
            return;
        }
        else
        {
            assume false;
        }
    }
    else
    {
        assume false;
    }
}



// Constructor function declaration
function #_module.List.Nil() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.List.Nil()) == ##_module.List.Nil;
// Constructor literal
axiom #_module.List.Nil() == Lit(#_module.List.Nil());
}

const unique ##_module.List.Nil: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.List.Nil()) == ##_module.List.Nil;
}

function _module.List.Nil_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.List.Nil_q(d) } 
  _module.List.Nil_q(d) <==> DatatypeCtorId(d) == ##_module.List.Nil);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.List.Nil_q(d) } 
  _module.List.Nil_q(d) ==> d == #_module.List.Nil());

// Constructor $Is
axiom (forall _module.List$T: Ty :: 
  { $Is(#_module.List.Nil(), Tclass._module.List(_module.List$T)) } 
  $Is(#_module.List.Nil(), Tclass._module.List(_module.List$T)));

// Constructor $IsAlloc
axiom (forall _module.List$T: Ty, $h: Heap :: 
  { $IsAlloc(#_module.List.Nil(), Tclass._module.List(_module.List$T), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#_module.List.Nil(), Tclass._module.List(_module.List$T), $h));

// Constructor function declaration
function #_module.List.Cons(Box, DatatypeType) : DatatypeType;

const unique ##_module.List.Cons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: Box, a#4#1#0: DatatypeType :: 
  { #_module.List.Cons(a#4#0#0, a#4#1#0) } 
  DatatypeCtorId(#_module.List.Cons(a#4#0#0, a#4#1#0)) == ##_module.List.Cons);
}

function _module.List.Cons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.List.Cons_q(d) } 
  _module.List.Cons_q(d) <==> DatatypeCtorId(d) == ##_module.List.Cons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.List.Cons_q(d) } 
  _module.List.Cons_q(d)
     ==> (exists a#5#0#0: Box, a#5#1#0: DatatypeType :: 
      d == #_module.List.Cons(a#5#0#0, a#5#1#0)));

// Constructor $Is
axiom (forall _module.List$T: Ty, a#6#0#0: Box, a#6#1#0: DatatypeType :: 
  { $Is(#_module.List.Cons(a#6#0#0, a#6#1#0), Tclass._module.List(_module.List$T)) } 
  $Is(#_module.List.Cons(a#6#0#0, a#6#1#0), Tclass._module.List(_module.List$T))
     <==> $IsBox(a#6#0#0, _module.List$T)
       && $Is(a#6#1#0, Tclass._module.List(_module.List$T)));

// Constructor $IsAlloc
axiom (forall _module.List$T: Ty, a#6#0#0: Box, a#6#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#_module.List.Cons(a#6#0#0, a#6#1#0), Tclass._module.List(_module.List$T), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.List.Cons(a#6#0#0, a#6#1#0), Tclass._module.List(_module.List$T), $h)
       <==> $IsAllocBox(a#6#0#0, _module.List$T, $h)
         && $IsAlloc(a#6#1#0, Tclass._module.List(_module.List$T), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.List$T: Ty, $h: Heap :: 
  { $IsAllocBox(_module.List.head(d), _module.List$T, $h) } 
  $IsGoodHeap($h)
       && 
      _module.List.Cons_q(d)
       && $IsAlloc(d, Tclass._module.List(_module.List$T), $h)
     ==> $IsAllocBox(_module.List.head(d), _module.List$T, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.List$T: Ty, $h: Heap :: 
  { $IsAlloc(_module.List.tail(d), Tclass._module.List(_module.List$T), $h) } 
  $IsGoodHeap($h)
       && 
      _module.List.Cons_q(d)
       && $IsAlloc(d, Tclass._module.List(_module.List$T), $h)
     ==> $IsAlloc(_module.List.tail(d), Tclass._module.List(_module.List$T), $h));

// Constructor literal
axiom (forall a#7#0#0: Box, a#7#1#0: DatatypeType :: 
  { #_module.List.Cons(Lit(a#7#0#0), Lit(a#7#1#0)) } 
  #_module.List.Cons(Lit(a#7#0#0), Lit(a#7#1#0))
     == Lit(#_module.List.Cons(a#7#0#0, a#7#1#0)));

function _module.List.head(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#8#0#0: Box, a#8#1#0: DatatypeType :: 
  { #_module.List.Cons(a#8#0#0, a#8#1#0) } 
  _module.List.head(#_module.List.Cons(a#8#0#0, a#8#1#0)) == a#8#0#0);

// Inductive rank
axiom (forall a#9#0#0: Box, a#9#1#0: DatatypeType :: 
  { #_module.List.Cons(a#9#0#0, a#9#1#0) } 
  BoxRank(a#9#0#0) < DtRank(#_module.List.Cons(a#9#0#0, a#9#1#0)));

function _module.List.tail(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#10#0#0: Box, a#10#1#0: DatatypeType :: 
  { #_module.List.Cons(a#10#0#0, a#10#1#0) } 
  _module.List.tail(#_module.List.Cons(a#10#0#0, a#10#1#0)) == a#10#1#0);

// Inductive rank
axiom (forall a#11#0#0: Box, a#11#1#0: DatatypeType :: 
  { #_module.List.Cons(a#11#0#0, a#11#1#0) } 
  DtRank(a#11#1#0) < DtRank(#_module.List.Cons(a#11#0#0, a#11#1#0)));

// Depth-one case-split function
function $IsA#_module.List(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.List(d) } 
  $IsA#_module.List(d) ==> _module.List.Nil_q(d) || _module.List.Cons_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.List$T: Ty, d: DatatypeType :: 
  { _module.List.Cons_q(d), $Is(d, Tclass._module.List(_module.List$T)) } 
    { _module.List.Nil_q(d), $Is(d, Tclass._module.List(_module.List$T)) } 
  $Is(d, Tclass._module.List(_module.List$T))
     ==> _module.List.Nil_q(d) || _module.List.Cons_q(d));

// Datatype extensional equality declaration
function _module.List#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.List.Nil
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.List#Equal(a, b), _module.List.Nil_q(a) } 
    { _module.List#Equal(a, b), _module.List.Nil_q(b) } 
  _module.List.Nil_q(a) && _module.List.Nil_q(b) ==> _module.List#Equal(a, b));

// Datatype extensional equality definition: #_module.List.Cons
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.List#Equal(a, b), _module.List.Cons_q(a) } 
    { _module.List#Equal(a, b), _module.List.Cons_q(b) } 
  _module.List.Cons_q(a) && _module.List.Cons_q(b)
     ==> (_module.List#Equal(a, b)
       <==> _module.List.head(a) == _module.List.head(b)
         && _module.List#Equal(_module.List.tail(a), _module.List.tail(b))));

// Datatype extensionality axiom: _module.List
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.List#Equal(a, b) } 
  _module.List#Equal(a, b) <==> a == b);

const unique class._module.List: ClassName;

// Constructor function declaration
function #_module.Tree.Leaf() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Tree.Leaf()) == ##_module.Tree.Leaf;
// Constructor $Is
axiom $Is(#_module.Tree.Leaf(), Tclass._module.Tree());
// Constructor literal
axiom #_module.Tree.Leaf() == Lit(#_module.Tree.Leaf());
}

const unique ##_module.Tree.Leaf: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Tree.Leaf()) == ##_module.Tree.Leaf;
}

function _module.Tree.Leaf_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Tree.Leaf_q(d) } 
  _module.Tree.Leaf_q(d) <==> DatatypeCtorId(d) == ##_module.Tree.Leaf);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Tree.Leaf_q(d) } 
  _module.Tree.Leaf_q(d) ==> d == #_module.Tree.Leaf());

// Constructor function declaration
function #_module.Tree.Branch(DatatypeType, bool, DatatypeType) : DatatypeType;

const unique ##_module.Tree.Branch: DtCtorId
uses {
// Constructor identifier
axiom (forall a#16#0#0: DatatypeType, a#16#1#0: bool, a#16#2#0: DatatypeType :: 
  { #_module.Tree.Branch(a#16#0#0, a#16#1#0, a#16#2#0) } 
  DatatypeCtorId(#_module.Tree.Branch(a#16#0#0, a#16#1#0, a#16#2#0))
     == ##_module.Tree.Branch);
}

function _module.Tree.Branch_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Tree.Branch_q(d) } 
  _module.Tree.Branch_q(d) <==> DatatypeCtorId(d) == ##_module.Tree.Branch);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Tree.Branch_q(d) } 
  _module.Tree.Branch_q(d)
     ==> (exists a#17#0#0: DatatypeType, a#17#1#0: bool, a#17#2#0: DatatypeType :: 
      d == #_module.Tree.Branch(a#17#0#0, a#17#1#0, a#17#2#0)));

// Constructor $Is
axiom (forall a#18#0#0: DatatypeType, a#18#1#0: bool, a#18#2#0: DatatypeType :: 
  { $Is(#_module.Tree.Branch(a#18#0#0, a#18#1#0, a#18#2#0), Tclass._module.Tree()) } 
  $Is(#_module.Tree.Branch(a#18#0#0, a#18#1#0, a#18#2#0), Tclass._module.Tree())
     <==> $Is(a#18#0#0, Tclass._module.Tree())
       && $Is(a#18#1#0, TBool)
       && $Is(a#18#2#0, Tclass._module.Tree()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Tree.left(d), Tclass._module.Tree(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Tree.Branch_q(d)
       && $IsAlloc(d, Tclass._module.Tree(), $h)
     ==> $IsAlloc(_module.Tree.left(d), Tclass._module.Tree(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Tree.b(d), TBool, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Tree.Branch_q(d)
       && $IsAlloc(d, Tclass._module.Tree(), $h)
     ==> $IsAlloc(_module.Tree.b(d), TBool, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Tree.right(d), Tclass._module.Tree(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Tree.Branch_q(d)
       && $IsAlloc(d, Tclass._module.Tree(), $h)
     ==> $IsAlloc(_module.Tree.right(d), Tclass._module.Tree(), $h));

// Constructor literal
axiom (forall a#19#0#0: DatatypeType, a#19#1#0: bool, a#19#2#0: DatatypeType :: 
  { #_module.Tree.Branch(Lit(a#19#0#0), Lit(a#19#1#0), Lit(a#19#2#0)) } 
  #_module.Tree.Branch(Lit(a#19#0#0), Lit(a#19#1#0), Lit(a#19#2#0))
     == Lit(#_module.Tree.Branch(a#19#0#0, a#19#1#0, a#19#2#0)));

function _module.Tree.left(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#20#0#0: DatatypeType, a#20#1#0: bool, a#20#2#0: DatatypeType :: 
  { #_module.Tree.Branch(a#20#0#0, a#20#1#0, a#20#2#0) } 
  _module.Tree.left(#_module.Tree.Branch(a#20#0#0, a#20#1#0, a#20#2#0))
     == a#20#0#0);

// Inductive rank
axiom (forall a#21#0#0: DatatypeType, a#21#1#0: bool, a#21#2#0: DatatypeType :: 
  { #_module.Tree.Branch(a#21#0#0, a#21#1#0, a#21#2#0) } 
  DtRank(a#21#0#0) < DtRank(#_module.Tree.Branch(a#21#0#0, a#21#1#0, a#21#2#0)));

function _module.Tree.b(DatatypeType) : bool;

// Constructor injectivity
axiom (forall a#22#0#0: DatatypeType, a#22#1#0: bool, a#22#2#0: DatatypeType :: 
  { #_module.Tree.Branch(a#22#0#0, a#22#1#0, a#22#2#0) } 
  _module.Tree.b(#_module.Tree.Branch(a#22#0#0, a#22#1#0, a#22#2#0)) == a#22#1#0);

function _module.Tree.right(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#23#0#0: DatatypeType, a#23#1#0: bool, a#23#2#0: DatatypeType :: 
  { #_module.Tree.Branch(a#23#0#0, a#23#1#0, a#23#2#0) } 
  _module.Tree.right(#_module.Tree.Branch(a#23#0#0, a#23#1#0, a#23#2#0))
     == a#23#2#0);

// Inductive rank
axiom (forall a#24#0#0: DatatypeType, a#24#1#0: bool, a#24#2#0: DatatypeType :: 
  { #_module.Tree.Branch(a#24#0#0, a#24#1#0, a#24#2#0) } 
  DtRank(a#24#2#0) < DtRank(#_module.Tree.Branch(a#24#0#0, a#24#1#0, a#24#2#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Tree(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Tree())
     ==> $IsAlloc(d, Tclass._module.Tree(), $h));

// Depth-one case-split function
function $IsA#_module.Tree(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Tree(d) } 
  $IsA#_module.Tree(d) ==> _module.Tree.Leaf_q(d) || _module.Tree.Branch_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Tree.Branch_q(d), $Is(d, Tclass._module.Tree()) } 
    { _module.Tree.Leaf_q(d), $Is(d, Tclass._module.Tree()) } 
  $Is(d, Tclass._module.Tree())
     ==> _module.Tree.Leaf_q(d) || _module.Tree.Branch_q(d));

// Datatype extensional equality declaration
function _module.Tree#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Tree.Leaf
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Tree#Equal(a, b), _module.Tree.Leaf_q(a) } 
    { _module.Tree#Equal(a, b), _module.Tree.Leaf_q(b) } 
  _module.Tree.Leaf_q(a) && _module.Tree.Leaf_q(b) ==> _module.Tree#Equal(a, b));

// Datatype extensional equality definition: #_module.Tree.Branch
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Tree#Equal(a, b), _module.Tree.Branch_q(a) } 
    { _module.Tree#Equal(a, b), _module.Tree.Branch_q(b) } 
  _module.Tree.Branch_q(a) && _module.Tree.Branch_q(b)
     ==> (_module.Tree#Equal(a, b)
       <==> _module.Tree#Equal(_module.Tree.left(a), _module.Tree.left(b))
         && _module.Tree.b(a) == _module.Tree.b(b)
         && _module.Tree#Equal(_module.Tree.right(a), _module.Tree.right(b))));

// Datatype extensionality axiom: _module.Tree
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Tree#Equal(a, b) } 
  _module.Tree#Equal(a, b) <==> a == b);

const unique class._module.Tree: ClassName;

// Constructor function declaration
function #_module.Dt.Make(int) : DatatypeType;

const unique ##_module.Dt.Make: DtCtorId
uses {
// Constructor identifier
axiom (forall a#25#0#0: int :: 
  { #_module.Dt.Make(a#25#0#0) } 
  DatatypeCtorId(#_module.Dt.Make(a#25#0#0)) == ##_module.Dt.Make);
}

function _module.Dt.Make_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Dt.Make_q(d) } 
  _module.Dt.Make_q(d) <==> DatatypeCtorId(d) == ##_module.Dt.Make);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Dt.Make_q(d) } 
  _module.Dt.Make_q(d)
     ==> (exists a#26#0#0: int :: d == #_module.Dt.Make(a#26#0#0)));

// Constructor $Is
axiom (forall a#27#0#0: int :: 
  { $Is(#_module.Dt.Make(a#27#0#0), Tclass._module.Dt()) } 
  $Is(#_module.Dt.Make(a#27#0#0), Tclass._module.Dt()) <==> $Is(a#27#0#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Dt.d(d), TInt, $h) } 
  $IsGoodHeap($h) && _module.Dt.Make_q(d) && $IsAlloc(d, Tclass._module.Dt(), $h)
     ==> $IsAlloc(_module.Dt.d(d), TInt, $h));

// Constructor literal
axiom (forall a#28#0#0: int :: 
  { #_module.Dt.Make(LitInt(a#28#0#0)) } 
  #_module.Dt.Make(LitInt(a#28#0#0)) == Lit(#_module.Dt.Make(a#28#0#0)));

function _module.Dt.d(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#29#0#0: int :: 
  { #_module.Dt.Make(a#29#0#0) } 
  _module.Dt.d(#_module.Dt.Make(a#29#0#0)) == a#29#0#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Dt(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Dt())
     ==> $IsAlloc(d, Tclass._module.Dt(), $h));

// Depth-one case-split function
function $IsA#_module.Dt(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Dt(d) } 
  $IsA#_module.Dt(d) ==> _module.Dt.Make_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Dt.Make_q(d), $Is(d, Tclass._module.Dt()) } 
  $Is(d, Tclass._module.Dt()) ==> _module.Dt.Make_q(d));

// Datatype extensional equality declaration
function _module.Dt#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Dt.Make
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Dt#Equal(a, b) } 
  _module.Dt#Equal(a, b) <==> _module.Dt.d(a) == _module.Dt.d(b));

// Datatype extensionality axiom: _module.Dt
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Dt#Equal(a, b) } 
  _module.Dt#Equal(a, b) <==> a == b);

const unique class._module.Dt: ClassName;

// Constructor function declaration
function #_module.cmd.Inc() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.cmd.Inc()) == ##_module.cmd.Inc;
// Constructor $Is
axiom $Is(#_module.cmd.Inc(), Tclass._module.cmd());
// Constructor literal
axiom #_module.cmd.Inc() == Lit(#_module.cmd.Inc());
}

const unique ##_module.cmd.Inc: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.cmd.Inc()) == ##_module.cmd.Inc;
}

function _module.cmd.Inc_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.cmd.Inc_q(d) } 
  _module.cmd.Inc_q(d) <==> DatatypeCtorId(d) == ##_module.cmd.Inc);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.cmd.Inc_q(d) } 
  _module.cmd.Inc_q(d) ==> d == #_module.cmd.Inc());

// Constructor function declaration
function #_module.cmd.Seq(DatatypeType, DatatypeType) : DatatypeType;

const unique ##_module.cmd.Seq: DtCtorId
uses {
// Constructor identifier
axiom (forall a#34#0#0: DatatypeType, a#34#1#0: DatatypeType :: 
  { #_module.cmd.Seq(a#34#0#0, a#34#1#0) } 
  DatatypeCtorId(#_module.cmd.Seq(a#34#0#0, a#34#1#0)) == ##_module.cmd.Seq);
}

function _module.cmd.Seq_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.cmd.Seq_q(d) } 
  _module.cmd.Seq_q(d) <==> DatatypeCtorId(d) == ##_module.cmd.Seq);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.cmd.Seq_q(d) } 
  _module.cmd.Seq_q(d)
     ==> (exists a#35#0#0: DatatypeType, a#35#1#0: DatatypeType :: 
      d == #_module.cmd.Seq(a#35#0#0, a#35#1#0)));

// Constructor $Is
axiom (forall a#36#0#0: DatatypeType, a#36#1#0: DatatypeType :: 
  { $Is(#_module.cmd.Seq(a#36#0#0, a#36#1#0), Tclass._module.cmd()) } 
  $Is(#_module.cmd.Seq(a#36#0#0, a#36#1#0), Tclass._module.cmd())
     <==> $Is(a#36#0#0, Tclass._module.cmd()) && $Is(a#36#1#0, Tclass._module.cmd()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.cmd._h0(d), Tclass._module.cmd(), $h) } 
  $IsGoodHeap($h) && _module.cmd.Seq_q(d) && $IsAlloc(d, Tclass._module.cmd(), $h)
     ==> $IsAlloc(_module.cmd._h0(d), Tclass._module.cmd(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.cmd._h1(d), Tclass._module.cmd(), $h) } 
  $IsGoodHeap($h) && _module.cmd.Seq_q(d) && $IsAlloc(d, Tclass._module.cmd(), $h)
     ==> $IsAlloc(_module.cmd._h1(d), Tclass._module.cmd(), $h));

// Constructor literal
axiom (forall a#37#0#0: DatatypeType, a#37#1#0: DatatypeType :: 
  { #_module.cmd.Seq(Lit(a#37#0#0), Lit(a#37#1#0)) } 
  #_module.cmd.Seq(Lit(a#37#0#0), Lit(a#37#1#0))
     == Lit(#_module.cmd.Seq(a#37#0#0, a#37#1#0)));

function _module.cmd._h0(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#38#0#0: DatatypeType, a#38#1#0: DatatypeType :: 
  { #_module.cmd.Seq(a#38#0#0, a#38#1#0) } 
  _module.cmd._h0(#_module.cmd.Seq(a#38#0#0, a#38#1#0)) == a#38#0#0);

// Inductive rank
axiom (forall a#39#0#0: DatatypeType, a#39#1#0: DatatypeType :: 
  { #_module.cmd.Seq(a#39#0#0, a#39#1#0) } 
  DtRank(a#39#0#0) < DtRank(#_module.cmd.Seq(a#39#0#0, a#39#1#0)));

function _module.cmd._h1(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#40#0#0: DatatypeType, a#40#1#0: DatatypeType :: 
  { #_module.cmd.Seq(a#40#0#0, a#40#1#0) } 
  _module.cmd._h1(#_module.cmd.Seq(a#40#0#0, a#40#1#0)) == a#40#1#0);

// Inductive rank
axiom (forall a#41#0#0: DatatypeType, a#41#1#0: DatatypeType :: 
  { #_module.cmd.Seq(a#41#0#0, a#41#1#0) } 
  DtRank(a#41#1#0) < DtRank(#_module.cmd.Seq(a#41#0#0, a#41#1#0)));

// Constructor function declaration
function #_module.cmd.Repeat(DatatypeType) : DatatypeType;

const unique ##_module.cmd.Repeat: DtCtorId
uses {
// Constructor identifier
axiom (forall a#42#0#0: DatatypeType :: 
  { #_module.cmd.Repeat(a#42#0#0) } 
  DatatypeCtorId(#_module.cmd.Repeat(a#42#0#0)) == ##_module.cmd.Repeat);
}

function _module.cmd.Repeat_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.cmd.Repeat_q(d) } 
  _module.cmd.Repeat_q(d) <==> DatatypeCtorId(d) == ##_module.cmd.Repeat);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.cmd.Repeat_q(d) } 
  _module.cmd.Repeat_q(d)
     ==> (exists a#43#0#0: DatatypeType :: d == #_module.cmd.Repeat(a#43#0#0)));

// Constructor $Is
axiom (forall a#44#0#0: DatatypeType :: 
  { $Is(#_module.cmd.Repeat(a#44#0#0), Tclass._module.cmd()) } 
  $Is(#_module.cmd.Repeat(a#44#0#0), Tclass._module.cmd())
     <==> $Is(a#44#0#0, Tclass._module.cmd()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.cmd._h2(d), Tclass._module.cmd(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.cmd.Repeat_q(d)
       && $IsAlloc(d, Tclass._module.cmd(), $h)
     ==> $IsAlloc(_module.cmd._h2(d), Tclass._module.cmd(), $h));

// Constructor literal
axiom (forall a#45#0#0: DatatypeType :: 
  { #_module.cmd.Repeat(Lit(a#45#0#0)) } 
  #_module.cmd.Repeat(Lit(a#45#0#0)) == Lit(#_module.cmd.Repeat(a#45#0#0)));

function _module.cmd._h2(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#46#0#0: DatatypeType :: 
  { #_module.cmd.Repeat(a#46#0#0) } 
  _module.cmd._h2(#_module.cmd.Repeat(a#46#0#0)) == a#46#0#0);

// Inductive rank
axiom (forall a#47#0#0: DatatypeType :: 
  { #_module.cmd.Repeat(a#47#0#0) } 
  DtRank(a#47#0#0) < DtRank(#_module.cmd.Repeat(a#47#0#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.cmd(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.cmd())
     ==> $IsAlloc(d, Tclass._module.cmd(), $h));

// Depth-one case-split function
function $IsA#_module.cmd(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.cmd(d) } 
  $IsA#_module.cmd(d)
     ==> _module.cmd.Inc_q(d) || _module.cmd.Seq_q(d) || _module.cmd.Repeat_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.cmd.Repeat_q(d), $Is(d, Tclass._module.cmd()) } 
    { _module.cmd.Seq_q(d), $Is(d, Tclass._module.cmd()) } 
    { _module.cmd.Inc_q(d), $Is(d, Tclass._module.cmd()) } 
  $Is(d, Tclass._module.cmd())
     ==> _module.cmd.Inc_q(d) || _module.cmd.Seq_q(d) || _module.cmd.Repeat_q(d));

// Datatype extensional equality declaration
function _module.cmd#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.cmd.Inc
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.cmd#Equal(a, b), _module.cmd.Inc_q(a) } 
    { _module.cmd#Equal(a, b), _module.cmd.Inc_q(b) } 
  _module.cmd.Inc_q(a) && _module.cmd.Inc_q(b) ==> _module.cmd#Equal(a, b));

// Datatype extensional equality definition: #_module.cmd.Seq
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.cmd#Equal(a, b), _module.cmd.Seq_q(a) } 
    { _module.cmd#Equal(a, b), _module.cmd.Seq_q(b) } 
  _module.cmd.Seq_q(a) && _module.cmd.Seq_q(b)
     ==> (_module.cmd#Equal(a, b)
       <==> _module.cmd#Equal(_module.cmd._h0(a), _module.cmd._h0(b))
         && _module.cmd#Equal(_module.cmd._h1(a), _module.cmd._h1(b))));

// Datatype extensional equality definition: #_module.cmd.Repeat
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.cmd#Equal(a, b), _module.cmd.Repeat_q(a) } 
    { _module.cmd#Equal(a, b), _module.cmd.Repeat_q(b) } 
  _module.cmd.Repeat_q(a) && _module.cmd.Repeat_q(b)
     ==> (_module.cmd#Equal(a, b)
       <==> _module.cmd#Equal(_module.cmd._h2(a), _module.cmd._h2(b))));

// Datatype extensionality axiom: _module.cmd
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.cmd#Equal(a, b) } 
  _module.cmd#Equal(a, b) <==> a == b);

const unique class._module.cmd: ClassName;

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

const unique tytagFamily$_#Func3: TyTagFamily;

const unique tytagFamily$_#PartialFunc3: TyTagFamily;

const unique tytagFamily$_#TotalFunc3: TyTagFamily;

const unique tytagFamily$_#Func4: TyTagFamily;

const unique tytagFamily$_#PartialFunc4: TyTagFamily;

const unique tytagFamily$_#TotalFunc4: TyTagFamily;

const unique tytagFamily$List: TyTagFamily;

const unique tytagFamily$Tree: TyTagFamily;

const unique tytagFamily$Dt: TyTagFamily;

const unique tytagFamily$cmd: TyTagFamily;
