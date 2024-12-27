// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/OrPatterns.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/OrPatterns-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/OrPatterns.dfy

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

const BaseFuel_Lists.List.Length: LayerType;

const StartFuel_Lists.List.Length: LayerType;

const StartFuelAssert_Lists.List.Length: LayerType;

const unique class._module.__default: ClassName;

procedure {:verboseName "Main (well-formedness)"} CheckWellFormed$$_module.__default.Main();
  free requires 1 == $FunctionContextHeight;
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
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.Enum() : Ty
uses {
// Tclass._module.Enum Tag
axiom Tag(Tclass._module.Enum()) == Tagclass._module.Enum
   && TagFamily(Tclass._module.Enum()) == tytagFamily$Enum;
}

const unique Tagclass._module.Enum: TyTag;

// Box/unbox axiom for Tclass._module.Enum
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Enum()) } 
  $IsBox(bx, Tclass._module.Enum())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Enum()));

function Tclass.Lists.List(Ty) : Ty;

const unique Tagclass.Lists.List: TyTag;

// Tclass.Lists.List Tag
axiom (forall Lists.List$T: Ty :: 
  { Tclass.Lists.List(Lists.List$T) } 
  Tag(Tclass.Lists.List(Lists.List$T)) == Tagclass.Lists.List
     && TagFamily(Tclass.Lists.List(Lists.List$T)) == tytagFamily$List);

function Tclass.Lists.List_0(Ty) : Ty;

// Tclass.Lists.List injectivity 0
axiom (forall Lists.List$T: Ty :: 
  { Tclass.Lists.List(Lists.List$T) } 
  Tclass.Lists.List_0(Tclass.Lists.List(Lists.List$T)) == Lists.List$T);

// Box/unbox axiom for Tclass.Lists.List
axiom (forall Lists.List$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.Lists.List(Lists.List$T)) } 
  $IsBox(bx, Tclass.Lists.List(Lists.List$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.Lists.List(Lists.List$T)));

function Tclass.TestVariables.DT() : Ty
uses {
// Tclass.TestVariables.DT Tag
axiom Tag(Tclass.TestVariables.DT()) == Tagclass.TestVariables.DT
   && TagFamily(Tclass.TestVariables.DT()) == tytagFamily$DT;
}

const unique Tagclass.TestVariables.DT: TyTag;

// Box/unbox axiom for Tclass.TestVariables.DT
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.TestVariables.DT()) } 
  $IsBox(bx, Tclass.TestVariables.DT())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.TestVariables.DT()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a0#0: DatatypeType
     where $Is(a0#0, Tclass.Lists.List(TInt))
       && $IsAlloc(a0#0, Tclass.Lists.List(TInt), $Heap);
  var ##l#0: DatatypeType;
  var ##l#1: DatatypeType;
  var ##l#2: DatatypeType;
  var a1#0: DatatypeType
     where $Is(a1#0, Tclass.Lists.List(TInt))
       && $IsAlloc(a1#0, Tclass.Lists.List(TInt), $Heap);
  var ##l#3: DatatypeType;
  var ##l#4: DatatypeType;
  var ##l#5: DatatypeType;
  var a2#0: DatatypeType
     where $Is(a2#0, Tclass.Lists.List(TInt))
       && $IsAlloc(a2#0, Tclass.Lists.List(TInt), $Heap);
  var ##l#6: DatatypeType;
  var ##l#7: DatatypeType;
  var ##l#8: DatatypeType;
  var a3#0: DatatypeType
     where $Is(a3#0, Tclass.Lists.List(TInt))
       && $IsAlloc(a3#0, Tclass.Lists.List(TInt), $Heap);
  var ##l#9: DatatypeType;
  var ##l#10: DatatypeType;
  var ##l#11: DatatypeType;
  var b0#0: int;
  var $rhs##0: int;
  var dt##0: DatatypeType;
  var b1#0: int;
  var $rhs##1: int;
  var dt##1: DatatypeType;
  var b2#0: int;
  var $rhs##2: int;
  var dt##2: DatatypeType;
  var b3#0: int;
  var $rhs##3: int;
  var dt##3: DatatypeType;
  var b4#0: int;
  var ##dt#0: DatatypeType;
  var b5#0: int;
  var ##dt#1: DatatypeType;
  var b6#0: int;
  var ##dt#2: DatatypeType;
  var b7#0: int;
  var ##dt#3: DatatypeType;

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    // initialize fuel constant
    assume StartFuel_Lists.List.Length
       == $LS($LS($LS($LS($LS(BaseFuel_Lists.List.Length)))));
    assume StartFuelAssert_Lists.List.Length
       == $LS($LS($LS($LS($LS($LS(BaseFuel_Lists.List.Length))))));
    assume AsFuelBottom(BaseFuel_Lists.List.Length) == BaseFuel_Lists.List.Length;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/OrPatterns.dfy(104,3)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(Lit(#_module.Enum.One())), Tclass._module.Enum(), $Heap);
    assume _module.Enum.Even#canCall(Lit(#_module.Enum.One()));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(Lit(#_module.Enum.One())), Tclass._module.Enum(), $Heap);
    assume _module.Enum.Even_k#canCall(Lit(#_module.Enum.One()));
    if (Lit(_module.Enum.Even(Lit(#_module.Enum.One())))
       == Lit(_module.Enum.Even_k(Lit(#_module.Enum.One()))))
    {
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(Lit(#_module.Enum.One())), Tclass._module.Enum(), $Heap);
        assume _module.Enum.Even_k#canCall(Lit(#_module.Enum.One()));
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(Lit(#_module.Enum.One())), Tclass._module.Enum(), $Heap);
        assume _module.Enum.Even_k_k#canCall(Lit(#_module.Enum.One()));
    }

    if (Lit(_module.Enum.Even(Lit(#_module.Enum.One())))
         == Lit(_module.Enum.Even_k(Lit(#_module.Enum.One())))
       && Lit(_module.Enum.Even_k(Lit(#_module.Enum.One())))
         == Lit(_module.Enum.Even_k_k(Lit(#_module.Enum.One()))))
    {
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(Lit(#_module.Enum.One())), Tclass._module.Enum(), $Heap);
        assume _module.Enum.Even_k_k#canCall(Lit(#_module.Enum.One()));
    }

    assume _module.Enum.Even#canCall(Lit(#_module.Enum.One()))
       && _module.Enum.Even_k#canCall(Lit(#_module.Enum.One()))
       && (Lit(_module.Enum.Even(Lit(#_module.Enum.One())))
           == Lit(_module.Enum.Even_k(Lit(#_module.Enum.One())))
         ==> _module.Enum.Even_k#canCall(Lit(#_module.Enum.One()))
           && _module.Enum.Even_k_k#canCall(Lit(#_module.Enum.One()))
           && (Lit(_module.Enum.Even_k(Lit(#_module.Enum.One())))
               == Lit(_module.Enum.Even_k_k(Lit(#_module.Enum.One())))
             ==> _module.Enum.Even_k_k#canCall(Lit(#_module.Enum.One()))));
    if (!(
      Lit(_module.Enum.Even(Lit(#_module.Enum.One())))
         == Lit(_module.Enum.Even_k(Lit(#_module.Enum.One())))
       && Lit(_module.Enum.Even_k(Lit(#_module.Enum.One())))
         == Lit(_module.Enum.Even_k_k(Lit(#_module.Enum.One())))
       && Lit(_module.Enum.Even_k_k(Lit(#_module.Enum.One()))) == Lit(false)))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/OrPatterns.dfy(105,3)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(Lit(#_module.Enum.Two())), Tclass._module.Enum(), $Heap);
    assume _module.Enum.Even#canCall(Lit(#_module.Enum.Two()));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(Lit(#_module.Enum.Two())), Tclass._module.Enum(), $Heap);
    assume _module.Enum.Even_k#canCall(Lit(#_module.Enum.Two()));
    if (Lit(_module.Enum.Even(Lit(#_module.Enum.Two())))
       == Lit(_module.Enum.Even_k(Lit(#_module.Enum.Two()))))
    {
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(Lit(#_module.Enum.Two())), Tclass._module.Enum(), $Heap);
        assume _module.Enum.Even_k#canCall(Lit(#_module.Enum.Two()));
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(Lit(#_module.Enum.Two())), Tclass._module.Enum(), $Heap);
        assume _module.Enum.Even_k_k#canCall(Lit(#_module.Enum.Two()));
    }

    if (Lit(_module.Enum.Even(Lit(#_module.Enum.Two())))
         == Lit(_module.Enum.Even_k(Lit(#_module.Enum.Two())))
       && Lit(_module.Enum.Even_k(Lit(#_module.Enum.Two())))
         == Lit(_module.Enum.Even_k_k(Lit(#_module.Enum.Two()))))
    {
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(Lit(#_module.Enum.Two())), Tclass._module.Enum(), $Heap);
        assume _module.Enum.Even_k_k#canCall(Lit(#_module.Enum.Two()));
    }

    assume _module.Enum.Even#canCall(Lit(#_module.Enum.Two()))
       && _module.Enum.Even_k#canCall(Lit(#_module.Enum.Two()))
       && (Lit(_module.Enum.Even(Lit(#_module.Enum.Two())))
           == Lit(_module.Enum.Even_k(Lit(#_module.Enum.Two())))
         ==> _module.Enum.Even_k#canCall(Lit(#_module.Enum.Two()))
           && _module.Enum.Even_k_k#canCall(Lit(#_module.Enum.Two()))
           && (Lit(_module.Enum.Even_k(Lit(#_module.Enum.Two())))
               == Lit(_module.Enum.Even_k_k(Lit(#_module.Enum.Two())))
             ==> _module.Enum.Even_k_k#canCall(Lit(#_module.Enum.Two()))));
    if (!(
      Lit(_module.Enum.Even(Lit(#_module.Enum.Two())))
         == Lit(_module.Enum.Even_k(Lit(#_module.Enum.Two())))
       && Lit(_module.Enum.Even_k(Lit(#_module.Enum.Two())))
         == Lit(_module.Enum.Even_k_k(Lit(#_module.Enum.Two())))
       && Lit(_module.Enum.Even_k_k(Lit(#_module.Enum.Two()))) == Lit(true)))
    {
        assume true;
        assume false;
    }

    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/OrPatterns.dfy(106,3)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(Lit(#_module.Enum.Three())), Tclass._module.Enum(), $Heap);
    assume _module.Enum.Even#canCall(Lit(#_module.Enum.Three()));
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(Lit(#_module.Enum.Three())), Tclass._module.Enum(), $Heap);
    assume _module.Enum.Even_k#canCall(Lit(#_module.Enum.Three()));
    if (Lit(_module.Enum.Even(Lit(#_module.Enum.Three())))
       == Lit(_module.Enum.Even_k(Lit(#_module.Enum.Three()))))
    {
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(Lit(#_module.Enum.Three())), Tclass._module.Enum(), $Heap);
        assume _module.Enum.Even_k#canCall(Lit(#_module.Enum.Three()));
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(Lit(#_module.Enum.Three())), Tclass._module.Enum(), $Heap);
        assume _module.Enum.Even_k_k#canCall(Lit(#_module.Enum.Three()));
    }

    if (Lit(_module.Enum.Even(Lit(#_module.Enum.Three())))
         == Lit(_module.Enum.Even_k(Lit(#_module.Enum.Three())))
       && Lit(_module.Enum.Even_k(Lit(#_module.Enum.Three())))
         == Lit(_module.Enum.Even_k_k(Lit(#_module.Enum.Three()))))
    {
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(Lit(#_module.Enum.Three())), Tclass._module.Enum(), $Heap);
        assume _module.Enum.Even_k_k#canCall(Lit(#_module.Enum.Three()));
    }

    assume _module.Enum.Even#canCall(Lit(#_module.Enum.Three()))
       && _module.Enum.Even_k#canCall(Lit(#_module.Enum.Three()))
       && (Lit(_module.Enum.Even(Lit(#_module.Enum.Three())))
           == Lit(_module.Enum.Even_k(Lit(#_module.Enum.Three())))
         ==> _module.Enum.Even_k#canCall(Lit(#_module.Enum.Three()))
           && _module.Enum.Even_k_k#canCall(Lit(#_module.Enum.Three()))
           && (Lit(_module.Enum.Even_k(Lit(#_module.Enum.Three())))
               == Lit(_module.Enum.Even_k_k(Lit(#_module.Enum.Three())))
             ==> _module.Enum.Even_k_k#canCall(Lit(#_module.Enum.Three()))));
    if (!(
      Lit(_module.Enum.Even(Lit(#_module.Enum.Three())))
         == Lit(_module.Enum.Even_k(Lit(#_module.Enum.Three())))
       && Lit(_module.Enum.Even_k(Lit(#_module.Enum.Three())))
         == Lit(_module.Enum.Even_k_k(Lit(#_module.Enum.Three())))
       && Lit(_module.Enum.Even_k_k(Lit(#_module.Enum.Three()))) == Lit(false)))
    {
        assume true;
        assume false;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/OrPatterns.dfy(108,10)
    assume true;
    assume true;
    a0#0 := Lit(#Lists.List.Cons($Box(LitInt(0)), 
        Lit(#Lists.List.Cons($Box(LitInt(0)), Lit(#Lists.List.Cons($Box(LitInt(0)), Lit(#Lists.List.Nil())))))));
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/OrPatterns.dfy(109,3)
    ##l#0 := a0#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##l#0, Tclass.Lists.List(TInt), $Heap);
    assert {:id "id105"} {:subsumption 0} Lists.List.Length(TInt, StartFuelAssert_Lists.List.Length, ##l#0) == LitInt(3);
    assume Lists.__default.ContainsOne#canCall(a0#0);
    ##l#1 := a0#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##l#1, Tclass.Lists.List(TInt), $Heap);
    assert {:id "id106"} {:subsumption 0} Lists.List.Length(TInt, StartFuelAssert_Lists.List.Length, ##l#1) == LitInt(3);
    assume Lists.__default.ContainsOne_k#canCall(a0#0);
    if (Lists.__default.ContainsOne(a0#0) == Lists.__default.ContainsOne_k(a0#0))
    {
        ##l#2 := a0#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##l#2, Tclass.Lists.List(TInt), $Heap);
        assert {:id "id107"} {:subsumption 0} Lists.List.Length(TInt, StartFuelAssert_Lists.List.Length, ##l#2) == LitInt(3);
        assume Lists.__default.ContainsOne_k#canCall(a0#0);
    }

    assume Lists.__default.ContainsOne#canCall(a0#0)
       && Lists.__default.ContainsOne_k#canCall(a0#0)
       && (Lists.__default.ContainsOne(a0#0) == Lists.__default.ContainsOne_k(a0#0)
         ==> Lists.__default.ContainsOne_k#canCall(a0#0));
    if (!(Lists.__default.ContainsOne(a0#0) == Lists.__default.ContainsOne_k(a0#0)
       && Lists.__default.ContainsOne_k(a0#0) == Lit(false)))
    {
        assume true;
        assume false;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/OrPatterns.dfy(110,10)
    assume true;
    assume true;
    a1#0 := Lit(#Lists.List.Cons($Box(LitInt(1)), 
        Lit(#Lists.List.Cons($Box(LitInt(0)), Lit(#Lists.List.Cons($Box(LitInt(0)), Lit(#Lists.List.Nil())))))));
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/OrPatterns.dfy(111,3)
    ##l#3 := a1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##l#3, Tclass.Lists.List(TInt), $Heap);
    assert {:id "id109"} {:subsumption 0} Lists.List.Length(TInt, StartFuelAssert_Lists.List.Length, ##l#3) == LitInt(3);
    assume Lists.__default.ContainsOne#canCall(a1#0);
    ##l#4 := a1#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##l#4, Tclass.Lists.List(TInt), $Heap);
    assert {:id "id110"} {:subsumption 0} Lists.List.Length(TInt, StartFuelAssert_Lists.List.Length, ##l#4) == LitInt(3);
    assume Lists.__default.ContainsOne_k#canCall(a1#0);
    if (Lists.__default.ContainsOne(a1#0) == Lists.__default.ContainsOne_k(a1#0))
    {
        ##l#5 := a1#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##l#5, Tclass.Lists.List(TInt), $Heap);
        assert {:id "id111"} {:subsumption 0} Lists.List.Length(TInt, StartFuelAssert_Lists.List.Length, ##l#5) == LitInt(3);
        assume Lists.__default.ContainsOne_k#canCall(a1#0);
    }

    assume Lists.__default.ContainsOne#canCall(a1#0)
       && Lists.__default.ContainsOne_k#canCall(a1#0)
       && (Lists.__default.ContainsOne(a1#0) == Lists.__default.ContainsOne_k(a1#0)
         ==> Lists.__default.ContainsOne_k#canCall(a1#0));
    if (!(Lists.__default.ContainsOne(a1#0) == Lists.__default.ContainsOne_k(a1#0)
       && Lists.__default.ContainsOne_k(a1#0) == Lit(true)))
    {
        assume true;
        assume false;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/OrPatterns.dfy(112,10)
    assume true;
    assume true;
    a2#0 := Lit(#Lists.List.Cons($Box(LitInt(0)), 
        Lit(#Lists.List.Cons($Box(LitInt(1)), Lit(#Lists.List.Cons($Box(LitInt(0)), Lit(#Lists.List.Nil())))))));
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/OrPatterns.dfy(113,3)
    ##l#6 := a2#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##l#6, Tclass.Lists.List(TInt), $Heap);
    assert {:id "id113"} {:subsumption 0} Lists.List.Length(TInt, StartFuelAssert_Lists.List.Length, ##l#6) == LitInt(3);
    assume Lists.__default.ContainsOne#canCall(a2#0);
    ##l#7 := a2#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##l#7, Tclass.Lists.List(TInt), $Heap);
    assert {:id "id114"} {:subsumption 0} Lists.List.Length(TInt, StartFuelAssert_Lists.List.Length, ##l#7) == LitInt(3);
    assume Lists.__default.ContainsOne_k#canCall(a2#0);
    if (Lists.__default.ContainsOne(a2#0) == Lists.__default.ContainsOne_k(a2#0))
    {
        ##l#8 := a2#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##l#8, Tclass.Lists.List(TInt), $Heap);
        assert {:id "id115"} {:subsumption 0} Lists.List.Length(TInt, StartFuelAssert_Lists.List.Length, ##l#8) == LitInt(3);
        assume Lists.__default.ContainsOne_k#canCall(a2#0);
    }

    assume Lists.__default.ContainsOne#canCall(a2#0)
       && Lists.__default.ContainsOne_k#canCall(a2#0)
       && (Lists.__default.ContainsOne(a2#0) == Lists.__default.ContainsOne_k(a2#0)
         ==> Lists.__default.ContainsOne_k#canCall(a2#0));
    if (!(Lists.__default.ContainsOne(a2#0) == Lists.__default.ContainsOne_k(a2#0)
       && Lists.__default.ContainsOne_k(a2#0) == Lit(true)))
    {
        assume true;
        assume false;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/OrPatterns.dfy(114,10)
    assume true;
    assume true;
    a3#0 := Lit(#Lists.List.Cons($Box(LitInt(0)), 
        Lit(#Lists.List.Cons($Box(LitInt(0)), Lit(#Lists.List.Cons($Box(LitInt(1)), Lit(#Lists.List.Nil())))))));
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/OrPatterns.dfy(115,3)
    ##l#9 := a3#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##l#9, Tclass.Lists.List(TInt), $Heap);
    assert {:id "id117"} {:subsumption 0} Lists.List.Length(TInt, StartFuelAssert_Lists.List.Length, ##l#9) == LitInt(3);
    assume Lists.__default.ContainsOne#canCall(a3#0);
    ##l#10 := a3#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##l#10, Tclass.Lists.List(TInt), $Heap);
    assert {:id "id118"} {:subsumption 0} Lists.List.Length(TInt, StartFuelAssert_Lists.List.Length, ##l#10) == LitInt(3);
    assume Lists.__default.ContainsOne_k#canCall(a3#0);
    if (Lists.__default.ContainsOne(a3#0) == Lists.__default.ContainsOne_k(a3#0))
    {
        ##l#11 := a3#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##l#11, Tclass.Lists.List(TInt), $Heap);
        assert {:id "id119"} {:subsumption 0} Lists.List.Length(TInt, StartFuelAssert_Lists.List.Length, ##l#11) == LitInt(3);
        assume Lists.__default.ContainsOne_k#canCall(a3#0);
    }

    assume Lists.__default.ContainsOne#canCall(a3#0)
       && Lists.__default.ContainsOne_k#canCall(a3#0)
       && (Lists.__default.ContainsOne(a3#0) == Lists.__default.ContainsOne_k(a3#0)
         ==> Lists.__default.ContainsOne_k#canCall(a3#0));
    if (!(Lists.__default.ContainsOne(a3#0) == Lists.__default.ContainsOne_k(a3#0)
       && Lists.__default.ContainsOne_k(a3#0) == Lit(true)))
    {
        assume true;
        assume false;
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/OrPatterns.dfy(117,14)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    dt##0 := Lit(#TestVariables.DT.A());
    call {:id "id120"} $rhs##0 := Call$$TestVariables.__default.M(dt##0);
    // TrCallStmt: After ProcessCallStmt
    b0#0 := $rhs##0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/OrPatterns.dfy(118,14)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    dt##1 := Lit(#TestVariables.DT.B());
    call {:id "id122"} $rhs##1 := Call$$TestVariables.__default.M(dt##1);
    // TrCallStmt: After ProcessCallStmt
    b1#0 := $rhs##1;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/OrPatterns.dfy(119,15)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    dt##2 := Lit(#TestVariables.DT.A());
    call {:id "id124"} $rhs##2 := Call$$TestVariables.__default.M2(dt##2);
    // TrCallStmt: After ProcessCallStmt
    b2#0 := $rhs##2;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/OrPatterns.dfy(120,15)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    dt##3 := Lit(#TestVariables.DT.B());
    call {:id "id126"} $rhs##3 := Call$$TestVariables.__default.M2(dt##3);
    // TrCallStmt: After ProcessCallStmt
    b3#0 := $rhs##3;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/OrPatterns.dfy(121,10)
    assume true;
    ##dt#0 := Lit(#TestVariables.DT.A());
    // assume allocatedness for argument to function
    assume $IsAlloc(##dt#0, Tclass.TestVariables.DT(), $Heap);
    assume TestVariables.__default.F#canCall(Lit(#TestVariables.DT.A()));
    assume TestVariables.__default.F#canCall(Lit(#TestVariables.DT.A()));
    b4#0 := LitInt(TestVariables.__default.F(Lit(#TestVariables.DT.A())));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/OrPatterns.dfy(122,10)
    assume true;
    ##dt#1 := Lit(#TestVariables.DT.B());
    // assume allocatedness for argument to function
    assume $IsAlloc(##dt#1, Tclass.TestVariables.DT(), $Heap);
    assume TestVariables.__default.F#canCall(Lit(#TestVariables.DT.B()));
    assume TestVariables.__default.F#canCall(Lit(#TestVariables.DT.B()));
    b5#0 := LitInt(TestVariables.__default.F(Lit(#TestVariables.DT.B())));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/OrPatterns.dfy(123,10)
    assume true;
    ##dt#2 := Lit(#TestVariables.DT.A());
    // assume allocatedness for argument to function
    assume $IsAlloc(##dt#2, Tclass.TestVariables.DT(), $Heap);
    assume TestVariables.__default.F2#canCall(Lit(#TestVariables.DT.A()));
    assume TestVariables.__default.F2#canCall(Lit(#TestVariables.DT.A()));
    b6#0 := LitInt(TestVariables.__default.F2(Lit(#TestVariables.DT.A())));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/OrPatterns.dfy(124,10)
    assume true;
    ##dt#3 := Lit(#TestVariables.DT.B());
    // assume allocatedness for argument to function
    assume $IsAlloc(##dt#3, Tclass.TestVariables.DT(), $Heap);
    assume TestVariables.__default.F2#canCall(Lit(#TestVariables.DT.B()));
    assume TestVariables.__default.F2#canCall(Lit(#TestVariables.DT.B()));
    b7#0 := LitInt(TestVariables.__default.F2(Lit(#TestVariables.DT.B())));
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/OrPatterns.dfy(125,3)
    if (LitInt(1) == b0#0)
    {
    }

    if (LitInt(1) == b0#0 && b0#0 == b1#0)
    {
    }

    if (LitInt(1) == b0#0 && b0#0 == b1#0 && b1#0 == b2#0)
    {
    }

    if (LitInt(1) == b0#0 && b0#0 == b1#0 && b1#0 == b2#0 && b2#0 == b3#0)
    {
    }

    if (LitInt(1) == b0#0
       && b0#0 == b1#0
       && b1#0 == b2#0
       && b2#0 == b3#0
       && b3#0 == b4#0)
    {
    }

    if (LitInt(1) == b0#0
       && b0#0 == b1#0
       && b1#0 == b2#0
       && b2#0 == b3#0
       && b3#0 == b4#0
       && b4#0 == b5#0)
    {
    }

    if (LitInt(1) == b0#0
       && b0#0 == b1#0
       && b1#0 == b2#0
       && b2#0 == b3#0
       && b3#0 == b4#0
       && b4#0 == b5#0
       && b5#0 == b6#0)
    {
    }

    assume true;
    if (!(
      LitInt(1) == b0#0
       && b0#0 == b1#0
       && b1#0 == b2#0
       && b2#0 == b3#0
       && b3#0 == b4#0
       && b4#0 == b5#0
       && b5#0 == b6#0
       && b6#0 == b7#0))
    {
        assume true;
        assume false;
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/OrPatterns.dfy(127,19)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id132"} Call$$MoreOrTests.__default.Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/patterns/OrPatterns.dfy(129,3)
    assume true;
}



// Constructor function declaration
function #_module.Enum.One() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Enum.One()) == ##_module.Enum.One;
// Constructor $Is
axiom $Is(#_module.Enum.One(), Tclass._module.Enum());
// Constructor literal
axiom #_module.Enum.One() == Lit(#_module.Enum.One());
}

const unique ##_module.Enum.One: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Enum.One()) == ##_module.Enum.One;
}

function _module.Enum.One_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Enum.One_q(d) } 
  _module.Enum.One_q(d) <==> DatatypeCtorId(d) == ##_module.Enum.One);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Enum.One_q(d) } 
  _module.Enum.One_q(d) ==> d == #_module.Enum.One());

// Constructor function declaration
function #_module.Enum.Two() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Enum.Two()) == ##_module.Enum.Two;
// Constructor $Is
axiom $Is(#_module.Enum.Two(), Tclass._module.Enum());
// Constructor literal
axiom #_module.Enum.Two() == Lit(#_module.Enum.Two());
}

const unique ##_module.Enum.Two: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Enum.Two()) == ##_module.Enum.Two;
}

function _module.Enum.Two_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Enum.Two_q(d) } 
  _module.Enum.Two_q(d) <==> DatatypeCtorId(d) == ##_module.Enum.Two);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Enum.Two_q(d) } 
  _module.Enum.Two_q(d) ==> d == #_module.Enum.Two());

// Constructor function declaration
function #_module.Enum.Three() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Enum.Three()) == ##_module.Enum.Three;
// Constructor $Is
axiom $Is(#_module.Enum.Three(), Tclass._module.Enum());
// Constructor literal
axiom #_module.Enum.Three() == Lit(#_module.Enum.Three());
}

const unique ##_module.Enum.Three: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Enum.Three()) == ##_module.Enum.Three;
}

function _module.Enum.Three_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Enum.Three_q(d) } 
  _module.Enum.Three_q(d) <==> DatatypeCtorId(d) == ##_module.Enum.Three);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Enum.Three_q(d) } 
  _module.Enum.Three_q(d) ==> d == #_module.Enum.Three());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Enum(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Enum())
     ==> $IsAlloc(d, Tclass._module.Enum(), $h));

// Depth-one case-split function
function $IsA#_module.Enum(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Enum(d) } 
  $IsA#_module.Enum(d)
     ==> _module.Enum.One_q(d) || _module.Enum.Two_q(d) || _module.Enum.Three_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Enum.Three_q(d), $Is(d, Tclass._module.Enum()) } 
    { _module.Enum.Two_q(d), $Is(d, Tclass._module.Enum()) } 
    { _module.Enum.One_q(d), $Is(d, Tclass._module.Enum()) } 
  $Is(d, Tclass._module.Enum())
     ==> _module.Enum.One_q(d) || _module.Enum.Two_q(d) || _module.Enum.Three_q(d));

// Datatype extensional equality declaration
function _module.Enum#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Enum.One
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Enum#Equal(a, b), _module.Enum.One_q(a) } 
    { _module.Enum#Equal(a, b), _module.Enum.One_q(b) } 
  _module.Enum.One_q(a) && _module.Enum.One_q(b) ==> _module.Enum#Equal(a, b));

// Datatype extensional equality definition: #_module.Enum.Two
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Enum#Equal(a, b), _module.Enum.Two_q(a) } 
    { _module.Enum#Equal(a, b), _module.Enum.Two_q(b) } 
  _module.Enum.Two_q(a) && _module.Enum.Two_q(b) ==> _module.Enum#Equal(a, b));

// Datatype extensional equality definition: #_module.Enum.Three
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Enum#Equal(a, b), _module.Enum.Three_q(a) } 
    { _module.Enum#Equal(a, b), _module.Enum.Three_q(b) } 
  _module.Enum.Three_q(a) && _module.Enum.Three_q(b) ==> _module.Enum#Equal(a, b));

// Datatype extensionality axiom: _module.Enum
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Enum#Equal(a, b) } 
  _module.Enum#Equal(a, b) <==> a == b);

const unique class._module.Enum: ClassName;

// function declaration for _module.Enum.Even
function _module.Enum.Even(this: DatatypeType) : bool
uses {
// definition axiom for _module.Enum.Even (revealed)
axiom {:id "id133"} 0 <= $FunctionContextHeight
   ==> (forall this: DatatypeType :: 
    { _module.Enum.Even(this) } 
    _module.Enum.Even#canCall(this)
         || (0 < $FunctionContextHeight && $Is(this, Tclass._module.Enum()))
       ==> _module.Enum.Even(this) == _module.Enum.Two_q(this));
// definition axiom for _module.Enum.Even for all literals (revealed)
axiom {:id "id134"} 0 <= $FunctionContextHeight
   ==> (forall this: DatatypeType :: 
    {:weight 3} { _module.Enum.Even(Lit(this)) } 
    _module.Enum.Even#canCall(Lit(this))
         || (0 < $FunctionContextHeight && $Is(this, Tclass._module.Enum()))
       ==> _module.Enum.Even(Lit(this)) == Lit(_module.Enum.Two_q(Lit(this))));
}

function _module.Enum.Even#canCall(this: DatatypeType) : bool;

function _module.Enum.Even#requires(DatatypeType) : bool;

// #requires axiom for _module.Enum.Even
axiom (forall this: DatatypeType :: 
  { _module.Enum.Even#requires(this) } 
  $Is(this, Tclass._module.Enum()) ==> _module.Enum.Even#requires(this) == true);

procedure {:verboseName "Enum.Even (well-formedness)"} CheckWellformed$$_module.Enum.Even(this: DatatypeType
       where $Is(this, Tclass._module.Enum()) && $IsAlloc(this, Tclass._module.Enum(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.Enum.Even'
function _module.Enum.Even_k(this: DatatypeType) : bool
uses {
// definition axiom for _module.Enum.Even_k (revealed)
axiom {:id "id136"} 0 <= $FunctionContextHeight
   ==> (forall this: DatatypeType :: 
    { _module.Enum.Even_k(this) } 
    _module.Enum.Even_k#canCall(this)
         || (0 < $FunctionContextHeight && $Is(this, Tclass._module.Enum()))
       ==> _module.Enum.Even_k(this)
         == (if _module.Enum.One_q(this)
           then false
           else (if _module.Enum.Two_q(this) then true else false)));
// definition axiom for _module.Enum.Even_k for all literals (revealed)
axiom {:id "id137"} 0 <= $FunctionContextHeight
   ==> (forall this: DatatypeType :: 
    {:weight 3} { _module.Enum.Even_k(Lit(this)) } 
    _module.Enum.Even_k#canCall(Lit(this))
         || (0 < $FunctionContextHeight && $Is(this, Tclass._module.Enum()))
       ==> _module.Enum.Even_k(Lit(this))
         == (if _module.Enum.One_q(Lit(this))
           then false
           else (if _module.Enum.Two_q(Lit(this)) then true else false)));
}

function _module.Enum.Even_k#canCall(this: DatatypeType) : bool;

function _module.Enum.Even_k#requires(DatatypeType) : bool;

// #requires axiom for _module.Enum.Even_k
axiom (forall this: DatatypeType :: 
  { _module.Enum.Even_k#requires(this) } 
  $Is(this, Tclass._module.Enum()) ==> _module.Enum.Even_k#requires(this) == true);

procedure {:verboseName "Enum.Even' (well-formedness)"} CheckWellformed$$_module.Enum.Even_k(this: DatatypeType
       where $Is(this, Tclass._module.Enum()) && $IsAlloc(this, Tclass._module.Enum(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.Enum.Even''
function _module.Enum.Even_k_k(this: DatatypeType) : bool
uses {
// definition axiom for _module.Enum.Even_k_k (revealed)
axiom {:id "id141"} 0 <= $FunctionContextHeight
   ==> (forall this: DatatypeType :: 
    { _module.Enum.Even_k_k(this) } 
    _module.Enum.Even_k_k#canCall(this)
         || (0 < $FunctionContextHeight && $Is(this, Tclass._module.Enum()))
       ==> _module.Enum.Even_k_k(this)
         == (if _module.Enum.One_q(this)
           then false
           else (if _module.Enum.Two_q(this) then true else false)));
// definition axiom for _module.Enum.Even_k_k for all literals (revealed)
axiom {:id "id142"} 0 <= $FunctionContextHeight
   ==> (forall this: DatatypeType :: 
    {:weight 3} { _module.Enum.Even_k_k(Lit(this)) } 
    _module.Enum.Even_k_k#canCall(Lit(this))
         || (0 < $FunctionContextHeight && $Is(this, Tclass._module.Enum()))
       ==> _module.Enum.Even_k_k(Lit(this))
         == (if _module.Enum.One_q(Lit(this))
           then false
           else (if _module.Enum.Two_q(Lit(this)) then true else false)));
}

function _module.Enum.Even_k_k#canCall(this: DatatypeType) : bool;

function _module.Enum.Even_k_k#requires(DatatypeType) : bool;

// #requires axiom for _module.Enum.Even_k_k
axiom (forall this: DatatypeType :: 
  { _module.Enum.Even_k_k#requires(this) } 
  $Is(this, Tclass._module.Enum())
     ==> _module.Enum.Even_k_k#requires(this) == true);

procedure {:verboseName "Enum.Even'' (well-formedness)"} CheckWellformed$$_module.Enum.Even_k_k(this: DatatypeType
       where $Is(this, Tclass._module.Enum()) && $IsAlloc(this, Tclass._module.Enum(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Enum.EvenOk (well-formedness)"} CheckWellFormed$$_module.Enum.EvenOk(this: DatatypeType
       where $Is(this, Tclass._module.Enum()) && $IsAlloc(this, Tclass._module.Enum(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Enum.EvenOk (call)"} Call$$_module.Enum.EvenOk(this: DatatypeType
       where $Is(this, Tclass._module.Enum()) && $IsAlloc(this, Tclass._module.Enum(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Enum.Even#canCall(this)
     && _module.Enum.Even_k#canCall(this)
     && (_module.Enum.Even(this) == _module.Enum.Even_k(this)
       ==> _module.Enum.Even_k#canCall(this) && _module.Enum.Even_k_k#canCall(this));
  ensures {:id "id147"} _module.Enum.Even(this) == _module.Enum.Even_k(this);
  ensures {:id "id148"} _module.Enum.Even_k(this) == _module.Enum.Even_k_k(this);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Enum.EvenOk (correctness)"} Impl$$_module.Enum.EvenOk(this: DatatypeType
       where $Is(this, Tclass._module.Enum()) && $IsAlloc(this, Tclass._module.Enum(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Enum.Even#canCall(this)
     && _module.Enum.Even_k#canCall(this)
     && (_module.Enum.Even(this) == _module.Enum.Even_k(this)
       ==> _module.Enum.Even_k#canCall(this) && _module.Enum.Even_k_k#canCall(this));
  ensures {:id "id149"} _module.Enum.Even(this) == _module.Enum.Even_k(this);
  ensures {:id "id150"} _module.Enum.Even_k(this) == _module.Enum.Even_k_k(this);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Enum.EvenOk (correctness)"} Impl$$_module.Enum.EvenOk(this: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: EvenOk, Impl$$_module.Enum.EvenOk
    // initialize fuel constant
    assume StartFuel_Lists.List.Length
       == $LS($LS($LS($LS($LS(BaseFuel_Lists.List.Length)))));
    assume StartFuelAssert_Lists.List.Length
       == $LS($LS($LS($LS($LS($LS(BaseFuel_Lists.List.Length))))));
    assume AsFuelBottom(BaseFuel_Lists.List.Length) == BaseFuel_Lists.List.Length;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



const unique class.Constants.__default: ClassName;

function Constants.__default.ONE() : int
uses {
axiom Constants.__default.ONE(): int == LitInt(1);
// _default.ONE: Type axiom
axiom $Is(Constants.__default.ONE(), TInt);
}

// _default.ONE: Allocation axiom
axiom (forall $h: Heap :: 
  { $IsAlloc(Constants.__default.ONE(), TInt, $h) } 
  $IsGoodHeap($h) ==> $IsAlloc(Constants.__default.ONE(), TInt, $h));

function Constants.__default.TWO() : int
uses {
axiom Constants.__default.TWO(): int == LitInt(2);
// _default.TWO: Type axiom
axiom $Is(Constants.__default.TWO(), TInt);
}

// _default.TWO: Allocation axiom
axiom (forall $h: Heap :: 
  { $IsAlloc(Constants.__default.TWO(), TInt, $h) } 
  $IsGoodHeap($h) ==> $IsAlloc(Constants.__default.TWO(), TInt, $h));

const unique class.Lists.__default: ClassName;

// function declaration for Lists._default.ContainsOne
function Lists.__default.ContainsOne(l#0: DatatypeType) : bool;

function Lists.__default.ContainsOne#canCall(l#0: DatatypeType) : bool;

function Lists.__default.ContainsOne#requires(DatatypeType) : bool;

// #requires axiom for Lists.__default.ContainsOne
axiom (forall l#0: DatatypeType :: 
  { Lists.__default.ContainsOne#requires(l#0) } 
  $Is(l#0, Tclass.Lists.List(TInt))
     ==> Lists.__default.ContainsOne#requires(l#0)
       == 
      (Lists.List.Length(TInt, StartFuelAssert_Lists.List.Length, l#0)
       == LitInt(3)));

// definition axiom for Lists.__default.ContainsOne (revealed)
axiom {:id "id151"} (forall l#0: DatatypeType :: 
  { Lists.__default.ContainsOne(l#0) } 
  Lists.__default.ContainsOne#canCall(l#0)
       || ($Is(l#0, Tclass.Lists.List(TInt))
         && Lists.List.Length(TInt, StartFuelAssert_Lists.List.Length, l#0) == LitInt(3))
     ==> Lists.__default.ContainsOne(l#0)
       == (
        $Unbox(Lists.List.car(l#0)): int == LitInt(1)
         || $Unbox(Lists.List.car(Lists.List.cdr(l#0))): int == LitInt(1)
         || $Unbox(Lists.List.car(Lists.List.cdr(Lists.List.cdr(l#0)))): int == LitInt(1)));

// definition axiom for Lists.__default.ContainsOne for all literals (revealed)
axiom {:id "id152"} (forall l#0: DatatypeType :: 
  {:weight 3} { Lists.__default.ContainsOne(Lit(l#0)) } 
  Lists.__default.ContainsOne#canCall(Lit(l#0))
       || ($Is(l#0, Tclass.Lists.List(TInt))
         && LitInt(Lists.List.Length(TInt, StartFuelAssert_Lists.List.Length, Lit(l#0)))
           == LitInt(3))
     ==> Lists.__default.ContainsOne(Lit(l#0))
       == (
        LitInt($Unbox(Lists.List.car(Lit(l#0))): int) == LitInt(1)
         || LitInt($Unbox(Lists.List.car(Lit(Lists.List.cdr(Lit(l#0))))): int) == LitInt(1)
         || LitInt($Unbox(Lists.List.car(Lit(Lists.List.cdr(Lit(Lists.List.cdr(Lit(l#0))))))): int)
           == LitInt(1)));

// function declaration for Lists._default.ContainsOne'
function Lists.__default.ContainsOne_k(l#0: DatatypeType) : bool;

function Lists.__default.ContainsOne_k#canCall(l#0: DatatypeType) : bool;

function Lists.__default.ContainsOne_k#requires(DatatypeType) : bool;

// #requires axiom for Lists.__default.ContainsOne_k
axiom (forall l#0: DatatypeType :: 
  { Lists.__default.ContainsOne_k#requires(l#0) } 
  $Is(l#0, Tclass.Lists.List(TInt))
     ==> Lists.__default.ContainsOne_k#requires(l#0)
       == 
      (Lists.List.Length(TInt, StartFuelAssert_Lists.List.Length, l#0)
       == LitInt(3)));

// definition axiom for Lists.__default.ContainsOne_k (revealed)
axiom {:id "id153"} (forall l#0: DatatypeType :: 
  { Lists.__default.ContainsOne_k(l#0) } 
  Lists.__default.ContainsOne_k#canCall(l#0)
       || ($Is(l#0, Tclass.Lists.List(TInt))
         && Lists.List.Length(TInt, StartFuelAssert_Lists.List.Length, l#0) == LitInt(3))
     ==> Lists.__default.ContainsOne_k(l#0)
       == (if $Unbox(Lists.List.car(l#0)): int == LitInt(1)
         then (if $Unbox(Lists.List.car(Lists.List.cdr(l#0))): int == LitInt(1)
           then (if $Unbox(Lists.List.car(Lists.List.cdr(Lists.List.cdr(l#0)))): int == LitInt(1)
             then true
             else true)
           else (if $Unbox(Lists.List.car(Lists.List.cdr(Lists.List.cdr(l#0)))): int == LitInt(1)
             then true
             else true))
         else (if $Unbox(Lists.List.car(Lists.List.cdr(l#0))): int == LitInt(1)
           then (if $Unbox(Lists.List.car(Lists.List.cdr(Lists.List.cdr(l#0)))): int == LitInt(1)
             then true
             else true)
           else (if $Unbox(Lists.List.car(Lists.List.cdr(Lists.List.cdr(l#0)))): int == LitInt(1)
             then true
             else false))));

// definition axiom for Lists.__default.ContainsOne_k for all literals (revealed)
axiom {:id "id154"} (forall l#0: DatatypeType :: 
  {:weight 3} { Lists.__default.ContainsOne_k(Lit(l#0)) } 
  Lists.__default.ContainsOne_k#canCall(Lit(l#0))
       || ($Is(l#0, Tclass.Lists.List(TInt))
         && LitInt(Lists.List.Length(TInt, StartFuelAssert_Lists.List.Length, Lit(l#0)))
           == LitInt(3))
     ==> Lists.__default.ContainsOne_k(Lit(l#0))
       == (if LitInt($Unbox(Lists.List.car(Lit(l#0))): int) == LitInt(1)
         then (if LitInt($Unbox(Lists.List.car(Lit(Lists.List.cdr(Lit(l#0))))): int) == LitInt(1)
           then (if LitInt($Unbox(Lists.List.car(Lit(Lists.List.cdr(Lit(Lists.List.cdr(Lit(l#0))))))): int)
               == LitInt(1)
             then true
             else true)
           else (if LitInt($Unbox(Lists.List.car(Lit(Lists.List.cdr(Lit(Lists.List.cdr(Lit(l#0))))))): int)
               == LitInt(1)
             then true
             else true))
         else (if LitInt($Unbox(Lists.List.car(Lit(Lists.List.cdr(Lit(l#0))))): int) == LitInt(1)
           then (if LitInt($Unbox(Lists.List.car(Lit(Lists.List.cdr(Lit(Lists.List.cdr(Lit(l#0))))))): int)
               == LitInt(1)
             then true
             else true)
           else (if LitInt($Unbox(Lists.List.car(Lit(Lists.List.cdr(Lit(Lists.List.cdr(Lit(l#0))))))): int)
               == LitInt(1)
             then true
             else false))));

// Constructor function declaration
function #Lists.List.Nil() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#Lists.List.Nil()) == ##Lists.List.Nil;
// Constructor literal
axiom #Lists.List.Nil() == Lit(#Lists.List.Nil());
}

const unique ##Lists.List.Nil: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#Lists.List.Nil()) == ##Lists.List.Nil;
}

function Lists.List.Nil_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Lists.List.Nil_q(d) } 
  Lists.List.Nil_q(d) <==> DatatypeCtorId(d) == ##Lists.List.Nil);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Lists.List.Nil_q(d) } 
  Lists.List.Nil_q(d) ==> d == #Lists.List.Nil());

// Constructor $Is
axiom (forall Lists.List$T: Ty :: 
  { $Is(#Lists.List.Nil(), Tclass.Lists.List(Lists.List$T)) } 
  $Is(#Lists.List.Nil(), Tclass.Lists.List(Lists.List$T)));

// Constructor $IsAlloc
axiom (forall Lists.List$T: Ty, $h: Heap :: 
  { $IsAlloc(#Lists.List.Nil(), Tclass.Lists.List(Lists.List$T), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#Lists.List.Nil(), Tclass.Lists.List(Lists.List$T), $h));

// Constructor function declaration
function #Lists.List.Cons(Box, DatatypeType) : DatatypeType;

const unique ##Lists.List.Cons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: Box, a#4#1#0: DatatypeType :: 
  { #Lists.List.Cons(a#4#0#0, a#4#1#0) } 
  DatatypeCtorId(#Lists.List.Cons(a#4#0#0, a#4#1#0)) == ##Lists.List.Cons);
}

function Lists.List.Cons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { Lists.List.Cons_q(d) } 
  Lists.List.Cons_q(d) <==> DatatypeCtorId(d) == ##Lists.List.Cons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { Lists.List.Cons_q(d) } 
  Lists.List.Cons_q(d)
     ==> (exists a#5#0#0: Box, a#5#1#0: DatatypeType :: 
      d == #Lists.List.Cons(a#5#0#0, a#5#1#0)));

// Constructor $Is
axiom (forall Lists.List$T: Ty, a#6#0#0: Box, a#6#1#0: DatatypeType :: 
  { $Is(#Lists.List.Cons(a#6#0#0, a#6#1#0), Tclass.Lists.List(Lists.List$T)) } 
  $Is(#Lists.List.Cons(a#6#0#0, a#6#1#0), Tclass.Lists.List(Lists.List$T))
     <==> $IsBox(a#6#0#0, Lists.List$T) && $Is(a#6#1#0, Tclass.Lists.List(Lists.List$T)));

// Constructor $IsAlloc
axiom (forall Lists.List$T: Ty, a#6#0#0: Box, a#6#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#Lists.List.Cons(a#6#0#0, a#6#1#0), Tclass.Lists.List(Lists.List$T), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#Lists.List.Cons(a#6#0#0, a#6#1#0), Tclass.Lists.List(Lists.List$T), $h)
       <==> $IsAllocBox(a#6#0#0, Lists.List$T, $h)
         && $IsAlloc(a#6#1#0, Tclass.Lists.List(Lists.List$T), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Lists.List$T: Ty, $h: Heap :: 
  { $IsAllocBox(Lists.List.car(d), Lists.List$T, $h) } 
  $IsGoodHeap($h)
       && 
      Lists.List.Cons_q(d)
       && $IsAlloc(d, Tclass.Lists.List(Lists.List$T), $h)
     ==> $IsAllocBox(Lists.List.car(d), Lists.List$T, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, Lists.List$T: Ty, $h: Heap :: 
  { $IsAlloc(Lists.List.cdr(d), Tclass.Lists.List(Lists.List$T), $h) } 
  $IsGoodHeap($h)
       && 
      Lists.List.Cons_q(d)
       && $IsAlloc(d, Tclass.Lists.List(Lists.List$T), $h)
     ==> $IsAlloc(Lists.List.cdr(d), Tclass.Lists.List(Lists.List$T), $h));

// Constructor literal
axiom (forall a#7#0#0: Box, a#7#1#0: DatatypeType :: 
  { #Lists.List.Cons(Lit(a#7#0#0), Lit(a#7#1#0)) } 
  #Lists.List.Cons(Lit(a#7#0#0), Lit(a#7#1#0))
     == Lit(#Lists.List.Cons(a#7#0#0, a#7#1#0)));

function Lists.List.car(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#8#0#0: Box, a#8#1#0: DatatypeType :: 
  { #Lists.List.Cons(a#8#0#0, a#8#1#0) } 
  Lists.List.car(#Lists.List.Cons(a#8#0#0, a#8#1#0)) == a#8#0#0);

// Inductive rank
axiom (forall a#9#0#0: Box, a#9#1#0: DatatypeType :: 
  { #Lists.List.Cons(a#9#0#0, a#9#1#0) } 
  BoxRank(a#9#0#0) < DtRank(#Lists.List.Cons(a#9#0#0, a#9#1#0)));

function Lists.List.cdr(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#10#0#0: Box, a#10#1#0: DatatypeType :: 
  { #Lists.List.Cons(a#10#0#0, a#10#1#0) } 
  Lists.List.cdr(#Lists.List.Cons(a#10#0#0, a#10#1#0)) == a#10#1#0);

// Inductive rank
axiom (forall a#11#0#0: Box, a#11#1#0: DatatypeType :: 
  { #Lists.List.Cons(a#11#0#0, a#11#1#0) } 
  DtRank(a#11#1#0) < DtRank(#Lists.List.Cons(a#11#0#0, a#11#1#0)));

// Depth-one case-split function
function $IsA#Lists.List(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#Lists.List(d) } 
  $IsA#Lists.List(d) ==> Lists.List.Nil_q(d) || Lists.List.Cons_q(d));

// Questionmark data type disjunctivity
axiom (forall Lists.List$T: Ty, d: DatatypeType :: 
  { Lists.List.Cons_q(d), $Is(d, Tclass.Lists.List(Lists.List$T)) } 
    { Lists.List.Nil_q(d), $Is(d, Tclass.Lists.List(Lists.List$T)) } 
  $Is(d, Tclass.Lists.List(Lists.List$T))
     ==> Lists.List.Nil_q(d) || Lists.List.Cons_q(d));

// Datatype extensional equality declaration
function Lists.List#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #Lists.List.Nil
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Lists.List#Equal(a, b), Lists.List.Nil_q(a) } 
    { Lists.List#Equal(a, b), Lists.List.Nil_q(b) } 
  Lists.List.Nil_q(a) && Lists.List.Nil_q(b) ==> Lists.List#Equal(a, b));

// Datatype extensional equality definition: #Lists.List.Cons
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Lists.List#Equal(a, b), Lists.List.Cons_q(a) } 
    { Lists.List#Equal(a, b), Lists.List.Cons_q(b) } 
  Lists.List.Cons_q(a) && Lists.List.Cons_q(b)
     ==> (Lists.List#Equal(a, b)
       <==> Lists.List.car(a) == Lists.List.car(b)
         && Lists.List#Equal(Lists.List.cdr(a), Lists.List.cdr(b))));

// Datatype extensionality axiom: Lists.List
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { Lists.List#Equal(a, b) } 
  Lists.List#Equal(a, b) <==> a == b);

const unique class.Lists.List: ClassName;

// function declaration for Lists.List.Length
function Lists.List.Length(Lists.List$T: Ty, $ly: LayerType, this: DatatypeType) : int;

function Lists.List.Length#canCall(Lists.List$T: Ty, this: DatatypeType) : bool;

// layer synonym axiom
axiom (forall Lists.List$T: Ty, $ly: LayerType, this: DatatypeType :: 
  { Lists.List.Length(Lists.List$T, $LS($ly), this) } 
  Lists.List.Length(Lists.List$T, $LS($ly), this)
     == Lists.List.Length(Lists.List$T, $ly, this));

// fuel synonym axiom
axiom (forall Lists.List$T: Ty, $ly: LayerType, this: DatatypeType :: 
  { Lists.List.Length(Lists.List$T, AsFuelBottom($ly), this) } 
  Lists.List.Length(Lists.List$T, $ly, this)
     == Lists.List.Length(Lists.List$T, $LZ, this));

// consequence axiom for Lists.List.Length
axiom (forall Lists.List$T: Ty, $ly: LayerType, this: DatatypeType :: 
  { Lists.List.Length(Lists.List$T, $ly, this) } 
  Lists.List.Length#canCall(Lists.List$T, this)
       || $Is(this, Tclass.Lists.List(Lists.List$T))
     ==> LitInt(0) <= Lists.List.Length(Lists.List$T, $ly, this));

function Lists.List.Length#requires(Ty, LayerType, DatatypeType) : bool;

// #requires axiom for Lists.List.Length
axiom (forall Lists.List$T: Ty, $ly: LayerType, this: DatatypeType :: 
  { Lists.List.Length#requires(Lists.List$T, $ly, this) } 
  $Is(this, Tclass.Lists.List(Lists.List$T))
     ==> Lists.List.Length#requires(Lists.List$T, $ly, this) == true);

// definition axiom for Lists.List.Length (revealed)
axiom {:id "id155"} (forall Lists.List$T: Ty, $ly: LayerType, this: DatatypeType :: 
  { Lists.List.Length(Lists.List$T, $LS($ly), this) } 
  Lists.List.Length#canCall(Lists.List$T, this)
       || $Is(this, Tclass.Lists.List(Lists.List$T))
     ==> (!Lists.List.Nil_q(this)
         ==> (var t#5 := Lists.List.cdr(this); Lists.List.Length#canCall(Lists.List$T, t#5)))
       && Lists.List.Length(Lists.List$T, $LS($ly), this)
         == (if Lists.List.Nil_q(this)
           then 0
           else (var t#4 := Lists.List.cdr(this); 1 + Lists.List.Length(Lists.List$T, $ly, t#4))));

// definition axiom for Lists.List.Length for all literals (revealed)
axiom {:id "id156"} (forall Lists.List$T: Ty, $ly: LayerType, this: DatatypeType :: 
  {:weight 3} { Lists.List.Length(Lists.List$T, $LS($ly), Lit(this)) } 
  Lists.List.Length#canCall(Lists.List$T, Lit(this))
       || $Is(this, Tclass.Lists.List(Lists.List$T))
     ==> (!Lit(Lists.List.Nil_q(Lit(this)))
         ==> (var t#7 := Lit(Lists.List.cdr(Lit(this))); 
          Lists.List.Length#canCall(Lists.List$T, t#7)))
       && Lists.List.Length(Lists.List$T, $LS($ly), Lit(this))
         == (if Lists.List.Nil_q(Lit(this))
           then 0
           else (var t#6 := Lit(Lists.List.cdr(Lit(this))); 
            LitInt(1 + Lists.List.Length(Lists.List$T, $LS($ly), t#6)))));

const unique class.TestVariables.__default: ClassName;

procedure {:verboseName "TestVariables.M (well-formedness)"} CheckWellFormed$$TestVariables.__default.M(dt#0: DatatypeType
       where $Is(dt#0, Tclass.TestVariables.DT())
         && $IsAlloc(dt#0, Tclass.TestVariables.DT(), $Heap)
         && $IsA#TestVariables.DT(dt#0))
   returns (j#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestVariables.M (call)"} Call$$TestVariables.__default.M(dt#0: DatatypeType
       where $Is(dt#0, Tclass.TestVariables.DT())
         && $IsAlloc(dt#0, Tclass.TestVariables.DT(), $Heap)
         && $IsA#TestVariables.DT(dt#0))
   returns (j#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestVariables.M2 (well-formedness)"} CheckWellFormed$$TestVariables.__default.M2(dt#0: DatatypeType
       where $Is(dt#0, Tclass.TestVariables.DT())
         && $IsAlloc(dt#0, Tclass.TestVariables.DT(), $Heap)
         && $IsA#TestVariables.DT(dt#0))
   returns (j#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestVariables.M2 (call)"} Call$$TestVariables.__default.M2(dt#0: DatatypeType
       where $Is(dt#0, Tclass.TestVariables.DT())
         && $IsAlloc(dt#0, Tclass.TestVariables.DT(), $Heap)
         && $IsA#TestVariables.DT(dt#0))
   returns (j#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// function declaration for TestVariables._default.F
function TestVariables.__default.F(dt#0: DatatypeType) : int;

function TestVariables.__default.F#canCall(dt#0: DatatypeType) : bool;

function TestVariables.__default.F#requires(DatatypeType) : bool;

// #requires axiom for TestVariables.__default.F
axiom (forall $Heap: Heap, dt#0: DatatypeType :: 
  { TestVariables.__default.F#requires(dt#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap) && $Is(dt#0, Tclass.TestVariables.DT())
     ==> TestVariables.__default.F#requires(dt#0) == true);

// definition axiom for TestVariables.__default.F (revealed)
axiom {:id "id157"} (forall $Heap: Heap, dt#0: DatatypeType :: 
  { TestVariables.__default.F(dt#0), $IsGoodHeap($Heap) } 
  TestVariables.__default.F#canCall(dt#0)
       || ($IsGoodHeap($Heap) && $Is(dt#0, Tclass.TestVariables.DT()))
     ==> TestVariables.__default.F(dt#0)
       == (if TestVariables.DT.A_q(dt#0)
         then (var x#8 := $Unbox(Apply1(TInt, 
                TInt, 
                $Heap, 
                Lit(AtLayer((lambda $l#20#ly#0: LayerType :: 
                      Handle1((lambda $l#20#heap#0: Heap, $l#20#y#0: Box :: $Box($Unbox($l#20#y#0): int)), 
                        (lambda $l#20#heap#0: Heap, $l#20#y#0: Box :: $IsBox($l#20#y#0, TInt)), 
                        (lambda $l#20#heap#0: Heap, $l#20#y#0: Box :: 
                          SetRef_to_SetBox((lambda $l#20#o#0: ref :: false))))), 
                    $LS($LZ))), 
                $Box(LitInt(1)))): int; 
          x#8)
         else (if TestVariables.DT.B_q(dt#0)
           then (var x#9 := $Unbox(Apply1(TInt, 
                  TInt, 
                  $Heap, 
                  Lit(AtLayer((lambda $l#21#ly#0: LayerType :: 
                        Handle1((lambda $l#21#heap#0: Heap, $l#21#y#0: Box :: $Box($Unbox($l#21#y#0): int)), 
                          (lambda $l#21#heap#0: Heap, $l#21#y#0: Box :: $IsBox($l#21#y#0, TInt)), 
                          (lambda $l#21#heap#0: Heap, $l#21#y#0: Box :: 
                            SetRef_to_SetBox((lambda $l#21#o#0: ref :: false))))), 
                      $LS($LZ))), 
                  $Box(LitInt(1)))): int; 
            x#9)
           else 0)));

// definition axiom for TestVariables.__default.F for all literals (revealed)
axiom {:id "id158"} (forall $Heap: Heap, dt#0: DatatypeType :: 
  {:weight 3} { TestVariables.__default.F(Lit(dt#0)), $IsGoodHeap($Heap) } 
  TestVariables.__default.F#canCall(Lit(dt#0))
       || ($IsGoodHeap($Heap) && $Is(dt#0, Tclass.TestVariables.DT()))
     ==> TestVariables.__default.F(Lit(dt#0))
       == (if TestVariables.DT.A_q(Lit(dt#0))
         then (var x#12 := $Unbox(Apply1(TInt, 
                TInt, 
                $Heap, 
                Lit(AtLayer((lambda $l#26#ly#0: LayerType :: 
                      Handle1((lambda $l#26#heap#0: Heap, $l#26#y#0: Box :: $Box($Unbox($l#26#y#0): int)), 
                        (lambda $l#26#heap#0: Heap, $l#26#y#0: Box :: $IsBox($l#26#y#0, TInt)), 
                        (lambda $l#26#heap#0: Heap, $l#26#y#0: Box :: 
                          SetRef_to_SetBox((lambda $l#26#o#0: ref :: false))))), 
                    $LS($LZ))), 
                $Box(LitInt(1)))): int; 
          x#12)
         else (if TestVariables.DT.B_q(Lit(dt#0))
           then (var x#13 := $Unbox(Apply1(TInt, 
                  TInt, 
                  $Heap, 
                  Lit(AtLayer((lambda $l#27#ly#0: LayerType :: 
                        Handle1((lambda $l#27#heap#0: Heap, $l#27#y#0: Box :: $Box($Unbox($l#27#y#0): int)), 
                          (lambda $l#27#heap#0: Heap, $l#27#y#0: Box :: $IsBox($l#27#y#0, TInt)), 
                          (lambda $l#27#heap#0: Heap, $l#27#y#0: Box :: 
                            SetRef_to_SetBox((lambda $l#27#o#0: ref :: false))))), 
                      $LS($LZ))), 
                  $Box(LitInt(1)))): int; 
            x#13)
           else 0)));

// function declaration for TestVariables._default.F2
function TestVariables.__default.F2(dt#0: DatatypeType) : int;

function TestVariables.__default.F2#canCall(dt#0: DatatypeType) : bool;

function TestVariables.__default.F2#requires(DatatypeType) : bool;

// #requires axiom for TestVariables.__default.F2
axiom (forall $Heap: Heap, dt#0: DatatypeType :: 
  { TestVariables.__default.F2#requires(dt#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap) && $Is(dt#0, Tclass.TestVariables.DT())
     ==> TestVariables.__default.F2#requires(dt#0) == true);

// definition axiom for TestVariables.__default.F2 (revealed)
axiom {:id "id159"} (forall $Heap: Heap, dt#0: DatatypeType :: 
  { TestVariables.__default.F2(dt#0), $IsGoodHeap($Heap) } 
  TestVariables.__default.F2#canCall(dt#0)
       || ($IsGoodHeap($Heap) && $Is(dt#0, Tclass.TestVariables.DT()))
     ==> TestVariables.__default.F2(dt#0)
       == (if TestVariables.DT.A_q(dt#0)
         then (var x#8 := $Unbox(Apply1(TInt, 
                TInt, 
                $Heap, 
                Lit(AtLayer((lambda $l#20#ly#0: LayerType :: 
                      Handle1((lambda $l#20#heap#0: Heap, $l#20#y#0: Box :: $Box($Unbox($l#20#y#0): int)), 
                        (lambda $l#20#heap#0: Heap, $l#20#y#0: Box :: $IsBox($l#20#y#0, TInt)), 
                        (lambda $l#20#heap#0: Heap, $l#20#y#0: Box :: 
                          SetRef_to_SetBox((lambda $l#20#o#0: ref :: false))))), 
                    $LS($LZ))), 
                $Box(LitInt(1)))): int; 
          x#8)
         else (if TestVariables.DT.B_q(dt#0)
           then (var x#9 := $Unbox(Apply1(TInt, 
                  TInt, 
                  $Heap, 
                  Lit(AtLayer((lambda $l#21#ly#0: LayerType :: 
                        Handle1((lambda $l#21#heap#0: Heap, $l#21#y#0: Box :: $Box($Unbox($l#21#y#0): int)), 
                          (lambda $l#21#heap#0: Heap, $l#21#y#0: Box :: $IsBox($l#21#y#0, TInt)), 
                          (lambda $l#21#heap#0: Heap, $l#21#y#0: Box :: 
                            SetRef_to_SetBox((lambda $l#21#o#0: ref :: false))))), 
                      $LS($LZ))), 
                  $Box(LitInt(1)))): int; 
            x#9)
           else 0)));

// definition axiom for TestVariables.__default.F2 for all literals (revealed)
axiom {:id "id160"} (forall $Heap: Heap, dt#0: DatatypeType :: 
  {:weight 3} { TestVariables.__default.F2(Lit(dt#0)), $IsGoodHeap($Heap) } 
  TestVariables.__default.F2#canCall(Lit(dt#0))
       || ($IsGoodHeap($Heap) && $Is(dt#0, Tclass.TestVariables.DT()))
     ==> TestVariables.__default.F2(Lit(dt#0))
       == (if TestVariables.DT.A_q(Lit(dt#0))
         then (var x#12 := $Unbox(Apply1(TInt, 
                TInt, 
                $Heap, 
                Lit(AtLayer((lambda $l#26#ly#0: LayerType :: 
                      Handle1((lambda $l#26#heap#0: Heap, $l#26#y#0: Box :: $Box($Unbox($l#26#y#0): int)), 
                        (lambda $l#26#heap#0: Heap, $l#26#y#0: Box :: $IsBox($l#26#y#0, TInt)), 
                        (lambda $l#26#heap#0: Heap, $l#26#y#0: Box :: 
                          SetRef_to_SetBox((lambda $l#26#o#0: ref :: false))))), 
                    $LS($LZ))), 
                $Box(LitInt(1)))): int; 
          x#12)
         else (if TestVariables.DT.B_q(Lit(dt#0))
           then (var x#13 := $Unbox(Apply1(TInt, 
                  TInt, 
                  $Heap, 
                  Lit(AtLayer((lambda $l#27#ly#0: LayerType :: 
                        Handle1((lambda $l#27#heap#0: Heap, $l#27#y#0: Box :: $Box($Unbox($l#27#y#0): int)), 
                          (lambda $l#27#heap#0: Heap, $l#27#y#0: Box :: $IsBox($l#27#y#0, TInt)), 
                          (lambda $l#27#heap#0: Heap, $l#27#y#0: Box :: 
                            SetRef_to_SetBox((lambda $l#27#o#0: ref :: false))))), 
                      $LS($LZ))), 
                  $Box(LitInt(1)))): int; 
            x#13)
           else 0)));

// Constructor function declaration
function #TestVariables.DT.A() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#TestVariables.DT.A()) == ##TestVariables.DT.A;
// Constructor $Is
axiom $Is(#TestVariables.DT.A(), Tclass.TestVariables.DT());
// Constructor literal
axiom #TestVariables.DT.A() == Lit(#TestVariables.DT.A());
}

const unique ##TestVariables.DT.A: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#TestVariables.DT.A()) == ##TestVariables.DT.A;
}

function TestVariables.DT.A_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TestVariables.DT.A_q(d) } 
  TestVariables.DT.A_q(d) <==> DatatypeCtorId(d) == ##TestVariables.DT.A);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TestVariables.DT.A_q(d) } 
  TestVariables.DT.A_q(d) ==> d == #TestVariables.DT.A());

// Constructor function declaration
function #TestVariables.DT.B() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#TestVariables.DT.B()) == ##TestVariables.DT.B;
// Constructor $Is
axiom $Is(#TestVariables.DT.B(), Tclass.TestVariables.DT());
// Constructor literal
axiom #TestVariables.DT.B() == Lit(#TestVariables.DT.B());
}

const unique ##TestVariables.DT.B: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#TestVariables.DT.B()) == ##TestVariables.DT.B;
}

function TestVariables.DT.B_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TestVariables.DT.B_q(d) } 
  TestVariables.DT.B_q(d) <==> DatatypeCtorId(d) == ##TestVariables.DT.B);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TestVariables.DT.B_q(d) } 
  TestVariables.DT.B_q(d) ==> d == #TestVariables.DT.B());

// Constructor function declaration
function #TestVariables.DT.C() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#TestVariables.DT.C()) == ##TestVariables.DT.C;
// Constructor $Is
axiom $Is(#TestVariables.DT.C(), Tclass.TestVariables.DT());
// Constructor literal
axiom #TestVariables.DT.C() == Lit(#TestVariables.DT.C());
}

const unique ##TestVariables.DT.C: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#TestVariables.DT.C()) == ##TestVariables.DT.C;
}

function TestVariables.DT.C_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TestVariables.DT.C_q(d) } 
  TestVariables.DT.C_q(d) <==> DatatypeCtorId(d) == ##TestVariables.DT.C);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TestVariables.DT.C_q(d) } 
  TestVariables.DT.C_q(d) ==> d == #TestVariables.DT.C());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.TestVariables.DT(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.TestVariables.DT())
     ==> $IsAlloc(d, Tclass.TestVariables.DT(), $h));

// Depth-one case-split function
function $IsA#TestVariables.DT(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#TestVariables.DT(d) } 
  $IsA#TestVariables.DT(d)
     ==> TestVariables.DT.A_q(d) || TestVariables.DT.B_q(d) || TestVariables.DT.C_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { TestVariables.DT.C_q(d), $Is(d, Tclass.TestVariables.DT()) } 
    { TestVariables.DT.B_q(d), $Is(d, Tclass.TestVariables.DT()) } 
    { TestVariables.DT.A_q(d), $Is(d, Tclass.TestVariables.DT()) } 
  $Is(d, Tclass.TestVariables.DT())
     ==> TestVariables.DT.A_q(d) || TestVariables.DT.B_q(d) || TestVariables.DT.C_q(d));

// Datatype extensional equality declaration
function TestVariables.DT#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #TestVariables.DT.A
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TestVariables.DT#Equal(a, b), TestVariables.DT.A_q(a) } 
    { TestVariables.DT#Equal(a, b), TestVariables.DT.A_q(b) } 
  TestVariables.DT.A_q(a) && TestVariables.DT.A_q(b)
     ==> TestVariables.DT#Equal(a, b));

// Datatype extensional equality definition: #TestVariables.DT.B
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TestVariables.DT#Equal(a, b), TestVariables.DT.B_q(a) } 
    { TestVariables.DT#Equal(a, b), TestVariables.DT.B_q(b) } 
  TestVariables.DT.B_q(a) && TestVariables.DT.B_q(b)
     ==> TestVariables.DT#Equal(a, b));

// Datatype extensional equality definition: #TestVariables.DT.C
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TestVariables.DT#Equal(a, b), TestVariables.DT.C_q(a) } 
    { TestVariables.DT#Equal(a, b), TestVariables.DT.C_q(b) } 
  TestVariables.DT.C_q(a) && TestVariables.DT.C_q(b)
     ==> TestVariables.DT#Equal(a, b));

// Datatype extensionality axiom: TestVariables.DT
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TestVariables.DT#Equal(a, b) } 
  TestVariables.DT#Equal(a, b) <==> a == b);

const unique class.TestVariables.DT: ClassName;

const unique class.MoreOrTests.__default: ClassName;

procedure {:verboseName "MoreOrTests.Test (well-formedness)"} CheckWellFormed$$MoreOrTests.__default.Test();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MoreOrTests.Test (call)"} Call$$MoreOrTests.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// Constructor function declaration
function #MoreOrTests.Dt.A() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#MoreOrTests.Dt.A()) == ##MoreOrTests.Dt.A;
// Constructor $Is
axiom $Is(#MoreOrTests.Dt.A(), Tclass.MoreOrTests.Dt());
// Constructor literal
axiom #MoreOrTests.Dt.A() == Lit(#MoreOrTests.Dt.A());
}

const unique ##MoreOrTests.Dt.A: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#MoreOrTests.Dt.A()) == ##MoreOrTests.Dt.A;
}

function MoreOrTests.Dt.A_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { MoreOrTests.Dt.A_q(d) } 
  MoreOrTests.Dt.A_q(d) <==> DatatypeCtorId(d) == ##MoreOrTests.Dt.A);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { MoreOrTests.Dt.A_q(d) } 
  MoreOrTests.Dt.A_q(d) ==> d == #MoreOrTests.Dt.A());

function Tclass.MoreOrTests.Dt() : Ty
uses {
// Tclass.MoreOrTests.Dt Tag
axiom Tag(Tclass.MoreOrTests.Dt()) == Tagclass.MoreOrTests.Dt
   && TagFamily(Tclass.MoreOrTests.Dt()) == tytagFamily$Dt;
}

const unique Tagclass.MoreOrTests.Dt: TyTag;

// Box/unbox axiom for Tclass.MoreOrTests.Dt
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.MoreOrTests.Dt()) } 
  $IsBox(bx, Tclass.MoreOrTests.Dt())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.MoreOrTests.Dt()));

// Constructor function declaration
function #MoreOrTests.Dt.B() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#MoreOrTests.Dt.B()) == ##MoreOrTests.Dt.B;
// Constructor $Is
axiom $Is(#MoreOrTests.Dt.B(), Tclass.MoreOrTests.Dt());
// Constructor literal
axiom #MoreOrTests.Dt.B() == Lit(#MoreOrTests.Dt.B());
}

const unique ##MoreOrTests.Dt.B: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#MoreOrTests.Dt.B()) == ##MoreOrTests.Dt.B;
}

function MoreOrTests.Dt.B_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { MoreOrTests.Dt.B_q(d) } 
  MoreOrTests.Dt.B_q(d) <==> DatatypeCtorId(d) == ##MoreOrTests.Dt.B);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { MoreOrTests.Dt.B_q(d) } 
  MoreOrTests.Dt.B_q(d) ==> d == #MoreOrTests.Dt.B());

// Constructor function declaration
function #MoreOrTests.Dt.C() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#MoreOrTests.Dt.C()) == ##MoreOrTests.Dt.C;
// Constructor $Is
axiom $Is(#MoreOrTests.Dt.C(), Tclass.MoreOrTests.Dt());
// Constructor literal
axiom #MoreOrTests.Dt.C() == Lit(#MoreOrTests.Dt.C());
}

const unique ##MoreOrTests.Dt.C: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#MoreOrTests.Dt.C()) == ##MoreOrTests.Dt.C;
}

function MoreOrTests.Dt.C_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { MoreOrTests.Dt.C_q(d) } 
  MoreOrTests.Dt.C_q(d) <==> DatatypeCtorId(d) == ##MoreOrTests.Dt.C);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { MoreOrTests.Dt.C_q(d) } 
  MoreOrTests.Dt.C_q(d) ==> d == #MoreOrTests.Dt.C());

// Constructor function declaration
function #MoreOrTests.Dt.D() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#MoreOrTests.Dt.D()) == ##MoreOrTests.Dt.D;
// Constructor $Is
axiom $Is(#MoreOrTests.Dt.D(), Tclass.MoreOrTests.Dt());
// Constructor literal
axiom #MoreOrTests.Dt.D() == Lit(#MoreOrTests.Dt.D());
}

const unique ##MoreOrTests.Dt.D: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#MoreOrTests.Dt.D()) == ##MoreOrTests.Dt.D;
}

function MoreOrTests.Dt.D_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { MoreOrTests.Dt.D_q(d) } 
  MoreOrTests.Dt.D_q(d) <==> DatatypeCtorId(d) == ##MoreOrTests.Dt.D);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { MoreOrTests.Dt.D_q(d) } 
  MoreOrTests.Dt.D_q(d) ==> d == #MoreOrTests.Dt.D());

// Constructor function declaration
function #MoreOrTests.Dt.E() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#MoreOrTests.Dt.E()) == ##MoreOrTests.Dt.E;
// Constructor $Is
axiom $Is(#MoreOrTests.Dt.E(), Tclass.MoreOrTests.Dt());
// Constructor literal
axiom #MoreOrTests.Dt.E() == Lit(#MoreOrTests.Dt.E());
}

const unique ##MoreOrTests.Dt.E: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#MoreOrTests.Dt.E()) == ##MoreOrTests.Dt.E;
}

function MoreOrTests.Dt.E_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { MoreOrTests.Dt.E_q(d) } 
  MoreOrTests.Dt.E_q(d) <==> DatatypeCtorId(d) == ##MoreOrTests.Dt.E);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { MoreOrTests.Dt.E_q(d) } 
  MoreOrTests.Dt.E_q(d) ==> d == #MoreOrTests.Dt.E());

// Constructor function declaration
function #MoreOrTests.Dt.F() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#MoreOrTests.Dt.F()) == ##MoreOrTests.Dt.F;
// Constructor $Is
axiom $Is(#MoreOrTests.Dt.F(), Tclass.MoreOrTests.Dt());
// Constructor literal
axiom #MoreOrTests.Dt.F() == Lit(#MoreOrTests.Dt.F());
}

const unique ##MoreOrTests.Dt.F: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#MoreOrTests.Dt.F()) == ##MoreOrTests.Dt.F;
}

function MoreOrTests.Dt.F_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { MoreOrTests.Dt.F_q(d) } 
  MoreOrTests.Dt.F_q(d) <==> DatatypeCtorId(d) == ##MoreOrTests.Dt.F);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { MoreOrTests.Dt.F_q(d) } 
  MoreOrTests.Dt.F_q(d) ==> d == #MoreOrTests.Dt.F());

// Constructor function declaration
function #MoreOrTests.Dt.G() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#MoreOrTests.Dt.G()) == ##MoreOrTests.Dt.G;
// Constructor $Is
axiom $Is(#MoreOrTests.Dt.G(), Tclass.MoreOrTests.Dt());
// Constructor literal
axiom #MoreOrTests.Dt.G() == Lit(#MoreOrTests.Dt.G());
}

const unique ##MoreOrTests.Dt.G: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#MoreOrTests.Dt.G()) == ##MoreOrTests.Dt.G;
}

function MoreOrTests.Dt.G_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { MoreOrTests.Dt.G_q(d) } 
  MoreOrTests.Dt.G_q(d) <==> DatatypeCtorId(d) == ##MoreOrTests.Dt.G);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { MoreOrTests.Dt.G_q(d) } 
  MoreOrTests.Dt.G_q(d) ==> d == #MoreOrTests.Dt.G());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.MoreOrTests.Dt(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.MoreOrTests.Dt())
     ==> $IsAlloc(d, Tclass.MoreOrTests.Dt(), $h));

// Depth-one case-split function
function $IsA#MoreOrTests.Dt(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#MoreOrTests.Dt(d) } 
  $IsA#MoreOrTests.Dt(d)
     ==> MoreOrTests.Dt.A_q(d)
       || MoreOrTests.Dt.B_q(d)
       || MoreOrTests.Dt.C_q(d)
       || MoreOrTests.Dt.D_q(d)
       || MoreOrTests.Dt.E_q(d)
       || MoreOrTests.Dt.F_q(d)
       || MoreOrTests.Dt.G_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { MoreOrTests.Dt.G_q(d), $Is(d, Tclass.MoreOrTests.Dt()) } 
    { MoreOrTests.Dt.F_q(d), $Is(d, Tclass.MoreOrTests.Dt()) } 
    { MoreOrTests.Dt.E_q(d), $Is(d, Tclass.MoreOrTests.Dt()) } 
    { MoreOrTests.Dt.D_q(d), $Is(d, Tclass.MoreOrTests.Dt()) } 
    { MoreOrTests.Dt.C_q(d), $Is(d, Tclass.MoreOrTests.Dt()) } 
    { MoreOrTests.Dt.B_q(d), $Is(d, Tclass.MoreOrTests.Dt()) } 
    { MoreOrTests.Dt.A_q(d), $Is(d, Tclass.MoreOrTests.Dt()) } 
  $Is(d, Tclass.MoreOrTests.Dt())
     ==> MoreOrTests.Dt.A_q(d)
       || MoreOrTests.Dt.B_q(d)
       || MoreOrTests.Dt.C_q(d)
       || MoreOrTests.Dt.D_q(d)
       || MoreOrTests.Dt.E_q(d)
       || MoreOrTests.Dt.F_q(d)
       || MoreOrTests.Dt.G_q(d));

// Datatype extensional equality declaration
function MoreOrTests.Dt#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #MoreOrTests.Dt.A
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MoreOrTests.Dt#Equal(a, b), MoreOrTests.Dt.A_q(a) } 
    { MoreOrTests.Dt#Equal(a, b), MoreOrTests.Dt.A_q(b) } 
  MoreOrTests.Dt.A_q(a) && MoreOrTests.Dt.A_q(b) ==> MoreOrTests.Dt#Equal(a, b));

// Datatype extensional equality definition: #MoreOrTests.Dt.B
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MoreOrTests.Dt#Equal(a, b), MoreOrTests.Dt.B_q(a) } 
    { MoreOrTests.Dt#Equal(a, b), MoreOrTests.Dt.B_q(b) } 
  MoreOrTests.Dt.B_q(a) && MoreOrTests.Dt.B_q(b) ==> MoreOrTests.Dt#Equal(a, b));

// Datatype extensional equality definition: #MoreOrTests.Dt.C
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MoreOrTests.Dt#Equal(a, b), MoreOrTests.Dt.C_q(a) } 
    { MoreOrTests.Dt#Equal(a, b), MoreOrTests.Dt.C_q(b) } 
  MoreOrTests.Dt.C_q(a) && MoreOrTests.Dt.C_q(b) ==> MoreOrTests.Dt#Equal(a, b));

// Datatype extensional equality definition: #MoreOrTests.Dt.D
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MoreOrTests.Dt#Equal(a, b), MoreOrTests.Dt.D_q(a) } 
    { MoreOrTests.Dt#Equal(a, b), MoreOrTests.Dt.D_q(b) } 
  MoreOrTests.Dt.D_q(a) && MoreOrTests.Dt.D_q(b) ==> MoreOrTests.Dt#Equal(a, b));

// Datatype extensional equality definition: #MoreOrTests.Dt.E
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MoreOrTests.Dt#Equal(a, b), MoreOrTests.Dt.E_q(a) } 
    { MoreOrTests.Dt#Equal(a, b), MoreOrTests.Dt.E_q(b) } 
  MoreOrTests.Dt.E_q(a) && MoreOrTests.Dt.E_q(b) ==> MoreOrTests.Dt#Equal(a, b));

// Datatype extensional equality definition: #MoreOrTests.Dt.F
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MoreOrTests.Dt#Equal(a, b), MoreOrTests.Dt.F_q(a) } 
    { MoreOrTests.Dt#Equal(a, b), MoreOrTests.Dt.F_q(b) } 
  MoreOrTests.Dt.F_q(a) && MoreOrTests.Dt.F_q(b) ==> MoreOrTests.Dt#Equal(a, b));

// Datatype extensional equality definition: #MoreOrTests.Dt.G
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MoreOrTests.Dt#Equal(a, b), MoreOrTests.Dt.G_q(a) } 
    { MoreOrTests.Dt#Equal(a, b), MoreOrTests.Dt.G_q(b) } 
  MoreOrTests.Dt.G_q(a) && MoreOrTests.Dt.G_q(b) ==> MoreOrTests.Dt#Equal(a, b));

// Datatype extensionality axiom: MoreOrTests.Dt
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { MoreOrTests.Dt#Equal(a, b) } 
  MoreOrTests.Dt#Equal(a, b) <==> a == b);

const unique class.MoreOrTests.Dt: ClassName;

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

const unique tytagFamily$Enum: TyTagFamily;

const unique tytagFamily$List: TyTagFamily;

const unique tytagFamily$DT: TyTagFamily;

const unique tytagFamily$Dt: TyTagFamily;